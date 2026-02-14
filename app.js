const state = {
    scanner: null,
    scanning: false,
    processing: false
};

const settings = {
    apiBaseUrl: ((window.APP_CONFIG && window.APP_CONFIG.API_BASE_URL) || "/api").replace(/\/+$/, ""),
    requestTimeoutMs: Number((window.APP_CONFIG && window.APP_CONFIG.REQUEST_TIMEOUT_MS) || 9000)
};

let dom;

document.addEventListener("DOMContentLoaded", () => {
    dom = {
        scannerRoot: document.getElementById("scanner"),
        statusText: document.getElementById("status-text"),
        startBtn: document.getElementById("start-btn"),
        stopBtn: document.getElementById("stop-btn"),
        resetBtn: document.getElementById("reset-btn"),
        manualInput: document.getElementById("manual-input"),
        barcodeValue: document.getElementById("barcode-value"),
        productCard: document.getElementById("product-card"),
        productImage: document.getElementById("product-image"),
        productName: document.getElementById("product-name"),
        productCode: document.getElementById("product-code"),
        unitPrice: document.getElementById("unit-price"),
        priceUnit: document.getElementById("price-unit"),
        charList: document.getElementById("char-list"),
        errorText: document.getElementById("error-text")
    };

    bindEvents();
    setMode("idle");
    setStatus("Ready to scan");
    registerServiceWorker();
});

function bindEvents() {
    dom.startBtn.addEventListener("click", () => {
        void startScanning();
    });

    dom.stopBtn.addEventListener("click", () => {
        void stopScanning(true);
    });

    dom.resetBtn.addEventListener("click", () => {
        void resetAndScan();
    });

    dom.manualInput.addEventListener("keydown", (event) => {
        if (event.key !== "Enter") {
            return;
        }

        event.preventDefault();
        const manualCode = dom.manualInput.value.trim();
        if (!manualCode) {
            return;
        }

        void submitCode(manualCode);
    });
}

async function submitCode(code) {
    if (state.processing) {
        return;
    }

    state.processing = true;

    try {
        if (state.scanning) {
            await stopScanning(false);
        }
        await processBarcode(code);
        setMode("result");
    } finally {
        state.processing = false;
    }
}

async function startScanning() {
    if (state.scanning || state.processing) {
        return;
    }

    clearMessage();
    setStatus("Opening camera...");

    try {
        if (!window.Html5Qrcode) {
            throw new Error("Scanner library could not load.");
        }

        if (!state.scanner) {
            state.scanner = new Html5Qrcode("scanner");
        }

        const cameraId = await chooseCamera();

        await state.scanner.start(
            cameraId ? { deviceId: { exact: cameraId } } : { facingMode: "environment" },
            {
                fps: 10,
                qrbox: (viewfinderWidth, viewfinderHeight) => {
                    const edge = Math.floor(Math.min(viewfinderWidth, viewfinderHeight) * 0.72);
                    return { width: edge, height: edge };
                },
                aspectRatio: 1
            },
            (decodedText) => {
                if (state.processing) {
                    return;
                }
                void submitCode(decodedText);
            },
            () => {}
        );

        state.scanning = true;
        setMode("scanning");
        setStatus("Scanning in progress...");
    } catch (error) {
        console.error("Camera start error:", error);
        setMode("idle");
        setStatus("Camera error", true);

        const httpsRequired = window.location.protocol !== "https:" && window.location.hostname !== "localhost";
        if (httpsRequired) {
            showError("Camera requires HTTPS or localhost.");
        } else {
            showError("Camera could not start. Check browser permission.");
        }
    }
}

async function stopScanning(setIdleMode) {
    if (!state.scanner || !state.scanning) {
        if (setIdleMode) {
            setMode("idle");
            setStatus("Ready to scan");
        }
        return;
    }

    try {
        await state.scanner.stop();
    } catch (error) {
        console.warn("Scanner stop warning:", error);
    }

    state.scanning = false;
    if (setIdleMode) {
        setMode("idle");
        setStatus("Scanner stopped");
    }
}

async function resetAndScan() {
    clearMessage();
    dom.manualInput.value = "";
    dom.barcodeValue.textContent = "-";
    dom.productCard.hidden = true;
    setStatus("Reset complete. Opening camera...");
    await startScanning();
}

async function processBarcode(rawCode) {
    const barcode = String(rawCode || "").trim();
    if (!barcode) {
        showError("Barcode is empty.");
        return;
    }

    dom.barcodeValue.textContent = barcode;
    dom.productCard.hidden = true;
    clearMessage();
    setStatus("Loading product...");

    try {
        const product = await fetchProduct(barcode);
        renderProduct(product, barcode);
        setStatus("Product loaded");
    } catch (error) {
        console.error("Product fetch error:", error);
        setStatus("Request failed", true);
        showError(error.message || "Could not load product from server.");
    }
}

async function fetchProduct(barcode) {
    const controller = new AbortController();
    const timeoutId = setTimeout(() => controller.abort(), settings.requestTimeoutMs);
    const url = `${settings.apiBaseUrl}/products/${encodeURIComponent(barcode)}`;

    try {
        const response = await fetch(url, {
            headers: { "Accept": "application/json" },
            signal: controller.signal
        });

        if (response.status === 404) {
            throw new Error("Product not found.");
        }

        if (!response.ok) {
            throw new Error(`Server returned status ${response.status}.`);
        }

        return await response.json();
    } catch (error) {
        if (error.name === "AbortError") {
            throw new Error("Server timeout. Try again.");
        }
        throw error;
    } finally {
        clearTimeout(timeoutId);
    }
}

function renderProduct(product, scannedBarcode) {
    const productName = product.name || "Unnamed product";
    const barcode = product.barcode || scannedBarcode;
    const imageUrl = product.image_url || "https://placehold.co/700x700?text=No+Image";
    const unit = product.unit || "unit";
    const currency = product.currency || "TRY";

    dom.productName.textContent = productName;
    dom.productCode.textContent = `Code: ${barcode}`;
    dom.productImage.src = imageUrl;
    dom.productImage.alt = `${productName} image`;
    dom.productImage.onerror = () => {
        dom.productImage.onerror = null;
        dom.productImage.src = "https://placehold.co/700x700?text=No+Image";
    };

    dom.unitPrice.textContent = formatMoney(product.unit_price, currency);
    dom.priceUnit.textContent = `per ${unit}`;

    renderCharacteristics(product);
    dom.productCard.hidden = false;
    clearMessage();
}

function renderCharacteristics(product) {
    const entries = collectCharacteristicEntries(product);
    dom.charList.innerHTML = "";

    if (entries.length === 0) {
        addCharacteristic("Info", "No characteristics available");
        return;
    }

    for (const entry of entries) {
        addCharacteristic(entry.key, entry.value);
    }
}

function collectCharacteristicEntries(product) {
    const entries = [];
    const seen = new Set();

    const pushEntry = (key, value) => {
        if (!value && value !== 0) {
            return;
        }
        const normalizedKey = String(key).toLowerCase();
        if (seen.has(normalizedKey)) {
            return;
        }
        seen.add(normalizedKey);
        entries.push({
            key: humanizeKey(key),
            value: String(value)
        });
    };

    if (product.characteristics && typeof product.characteristics === "object" && !Array.isArray(product.characteristics)) {
        for (const pair of Object.entries(product.characteristics)) {
            pushEntry(pair[0], pair[1]);
        }
    }

    pushEntry("dimensions", product.dimensions);
    pushEntry("bulb", product.bulb);
    pushEntry("stock", product.stock);
    pushEntry("features", product.features);

    return entries;
}

function addCharacteristic(key, value) {
    const item = document.createElement("li");
    item.className = "char-item";

    const keyEl = document.createElement("span");
    keyEl.className = "char-key";
    keyEl.textContent = key;

    const valueEl = document.createElement("span");
    valueEl.className = "char-value";
    valueEl.textContent = value;

    item.appendChild(keyEl);
    item.appendChild(valueEl);
    dom.charList.appendChild(item);
}

function formatMoney(value, currency) {
    if (value === null || value === undefined || value === "") {
        return "-";
    }

    const parsed = Number(value);
    if (Number.isNaN(parsed)) {
        return String(value);
    }

    return new Intl.NumberFormat("tr-TR", {
        style: "currency",
        currency: currency || "TRY"
    }).format(parsed);
}

function humanizeKey(key) {
    return String(key)
        .replace(/[_-]+/g, " ")
        .replace(/([a-z])([A-Z])/g, "$1 $2")
        .trim()
        .replace(/\b\w/g, (char) => char.toUpperCase());
}

async function chooseCamera() {
    try {
        const cameras = await Html5Qrcode.getCameras();
        if (!Array.isArray(cameras) || cameras.length === 0) {
            return null;
        }

        const backCamera = cameras.find((camera) => /(back|rear|environment|arka)/i.test(camera.label));
        return (backCamera || cameras[0]).id;
    } catch (error) {
        console.warn("Camera enumeration warning:", error);
        return null;
    }
}

function setMode(mode) {
    if (mode === "scanning") {
        dom.startBtn.style.display = "none";
        dom.stopBtn.style.display = "inline-flex";
        dom.resetBtn.style.display = "none";
        return;
    }

    if (mode === "result") {
        dom.startBtn.style.display = "none";
        dom.stopBtn.style.display = "none";
        dom.resetBtn.style.display = "inline-flex";
        return;
    }

    dom.startBtn.style.display = "inline-flex";
    dom.stopBtn.style.display = "none";
    dom.resetBtn.style.display = "none";
}

function setStatus(message, isError) {
    dom.statusText.textContent = message;
    dom.statusText.dataset.state = isError ? "error" : "ok";
}

function showError(message) {
    dom.errorText.textContent = message;
}

function clearMessage() {
    dom.errorText.textContent = "";
}

function registerServiceWorker() {
    if (!("serviceWorker" in navigator)) {
        return;
    }

    navigator.serviceWorker.register("./sw.js").catch((error) => {
        console.warn("Service worker registration warning:", error);
    });
}
