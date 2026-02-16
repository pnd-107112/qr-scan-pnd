const state = {
    scanner: null,
    scanning: false,
    processing: false,
    scannedList: []
};

function normBarcode(s) {
    return String(s || "").toLowerCase().replace(/[\s_-]+/g, "");
}

const settings = {
    apiBaseUrl: ((window.APP_CONFIG && window.APP_CONFIG.API_BASE_URL) || "/api").replace(/\/+$/, ""),
    requestTimeoutMs: Number((window.APP_CONFIG && window.APP_CONFIG.REQUEST_TIMEOUT_MS) || 9000)
};

let dom;

document.addEventListener("DOMContentLoaded", () => {
    dom = {
        scannerPanel: document.getElementById("scanner-panel"),
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
        listPrice: document.getElementById("list-price"),
        listPriceUnit: document.getElementById("list-price-unit"),
        charList: document.getElementById("char-list"),
        errorText: document.getElementById("error-text"),
        shareWhatsappBtn: document.getElementById("share-whatsapp-btn"),
        scannedListSection: document.getElementById("scanned-list-section"),
        scannedListToggle: document.getElementById("scanned-list-toggle"),
        scannedListBody: document.getElementById("scanned-list-body"),
        scannedList: document.getElementById("scanned-list"),
        sendTeklifBtn: document.getElementById("send-teklif-btn")
    };

    bindEvents();
    setMode("idle");
    setStatus("Taramaya hazır");
    registerServiceWorker();
    const adminBtn = document.getElementById("admin-btn");
    if (adminBtn && window.electronAPI && window.electronAPI.openAdmin) {
        adminBtn.style.display = "inline-flex";
        adminBtn.addEventListener("click", () => window.electronAPI.openAdmin());
    }
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

    if (dom.shareWhatsappBtn) {
        dom.shareWhatsappBtn.addEventListener("click", () => void shareViaWhatsApp());
    }
    if (dom.scannedListToggle) {
        dom.scannedListToggle.addEventListener("click", () => {
            dom.scannedListSection.classList.toggle("collapsed");
            const expanded = !dom.scannedListSection.classList.contains("collapsed");
            dom.scannedListToggle.setAttribute("aria-expanded", expanded);
        });
    }
    if (dom.sendTeklifBtn) {
        dom.sendTeklifBtn.addEventListener("click", () => void sendTeklifWhatsApp());
    }
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
    setStatus("Kamera açılıyor...");

    try {
        if (!window.Html5Qrcode) {
            throw new Error("Tarayıcı kütüphanesi yüklenemedi.");
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
        expandScanner();
        setMode("scanning");
        setStatus("Tarama devam ediyor...");
    } catch (error) {
        console.error("Camera start error:", error);
        collapseScanner();
        setMode("idle");
        setStatus("Kamera hatası", true);

        const httpsRequired = window.location.protocol !== "https:" && window.location.hostname !== "localhost";
        if (httpsRequired) {
            showError("Kamera için HTTPS veya localhost gerekir.");
        } else {
            showError("Kamera başlatılamadı. Tarayıcı iznini kontrol edin.");
        }
    }
}

async function stopScanning(setIdleMode) {
    if (!state.scanner || !state.scanning) {
        if (setIdleMode) {
            setMode("idle");
            setStatus("Taramaya hazır");
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
        collapseScanner();
        setMode("idle");
        setStatus("Tarama durduruldu");
    }
}

async function resetAndScan() {
    clearMessage();
    dom.manualInput.value = "";
    dom.barcodeValue.textContent = "-";
    dom.productCard.hidden = true;
    setStatus("Sıfırlandı. Kamera açılıyor...");
    await startScanning();
}

async function processBarcode(rawCode) {
    const barcode = String(rawCode || "").trim();
    if (!barcode) {
        showError("Barkod boş.");
        return;
    }

    dom.barcodeValue.textContent = barcode;
    dom.productCard.hidden = true;
    clearMessage();
    setStatus("Ürün yükleniyor...");

    try {
        const product = await fetchProduct(barcode);
        renderProduct(product, barcode);
        addToScannedList(product);
        setStatus("Ürün yüklendi");
        collapseScanner();
    } catch (error) {
        console.error("Product fetch error:", error);
        setStatus("İstek başarısız", true);
        showError(error.message || "Ürün sunucudan yüklenemedi.");
        collapseScanner();
    }
}

function expandScanner() {
    if (dom.scannerPanel) dom.scannerPanel.classList.add("scanner-panel--expanded");
}

function collapseScanner() {
    if (dom.scannerPanel) dom.scannerPanel.classList.remove("scanner-panel--expanded");
}

async function fetchProduct(barcode) {
    const controller = new AbortController();
    const timeoutId = setTimeout(() => controller.abort(), settings.requestTimeoutMs);
    const url = `${settings.apiBaseUrl}/products?barcode=${encodeURIComponent(barcode)}`;

    try {
        const response = await fetch(url, {
            headers: { "Accept": "application/json" },
            signal: controller.signal
        });

        if (response.status === 404) {
            throw new Error("Ürün bulunamadı.");
        }

        if (!response.ok) {
            throw new Error(`Sunucu hata kodu: ${response.status}.`);
        }

        return await response.json();
    } catch (error) {
        if (error.name === "AbortError") {
            throw new Error("Sunucu zaman aşımı. Tekrar deneyin.");
        }
        throw error;
    } finally {
        clearTimeout(timeoutId);
    }
}

function renderProduct(product, scannedBarcode) {
    const productName = product.name || "İsimsiz ürün";
    const barcode = product.barcode || scannedBarcode;
    const imageUrl = product.image_url || "https://placehold.co/700x700?text=Görsel+Yok";
    const unit = product.unit || "adet";
    const currency = product.currency || "TRY";

    dom.productName.textContent = productName;
    dom.productCode.textContent = `Kod: ${barcode}`;
    dom.productImage.src = imageUrl;
    dom.productImage.alt = `${productName} image`;
    dom.productImage.onerror = () => {
        dom.productImage.onerror = null;
        dom.productImage.src = "https://placehold.co/700x700?text=Görsel+Yok";
    };

    dom.unitPrice.textContent = formatMoney(product.unit_price, currency);
    dom.priceUnit.textContent = `${unit} başına`;
    dom.listPrice.textContent = formatMoney(product.list_price, currency);
    dom.listPriceUnit.textContent = `${unit} başına`;

    renderCharacteristics(product);
    state.currentProduct = product;
    if (dom.shareWhatsappBtn) dom.shareWhatsappBtn.style.display = "inline-flex";
    dom.productCard.hidden = false;
    clearMessage();
}

function addToScannedList(product) {
    const key = normBarcode(product.barcode);
    if (!key) return;
    const exists = state.scannedList.some((p) => normBarcode(p.barcode) === key);
    if (exists) return;
    state.scannedList.push({ ...product });
    renderScannedList();
}

function removeFromScannedList(barcode) {
    const key = normBarcode(barcode);
    state.scannedList = state.scannedList.filter((p) => normBarcode(p.barcode) !== key);
    renderScannedList();
}

function renderScannedList() {
    if (!dom.scannedList) return;
    dom.scannedList.innerHTML = "";
    const list = state.scannedList;
    list.forEach((p) => {
        const li = document.createElement("li");
        li.className = "scanned-item";
        li.dataset.barcode = p.barcode || "";

        const btnSil = document.createElement("button");
        btnSil.type = "button";
        btnSil.className = "scanned-item-btn-sil";
        btnSil.textContent = "SİL";
        btnSil.addEventListener("click", () => removeFromScannedList(p.barcode));

        const img = document.createElement("img");
        img.className = "scanned-item-thumb";
        img.alt = p.name || p.barcode || "";
        const imgUrl = p.image_url ? getAbsoluteImageUrl(p.image_url) : "https://placehold.co/48x48?text=—";
        img.src = imgUrl;
        img.onerror = () => { img.src = "https://placehold.co/48x48?text=—"; };

        const code = document.createElement("span");
        code.className = "scanned-item-code";
        code.textContent = p.barcode || "—";

        li.appendChild(btnSil);
        li.appendChild(img);
        li.appendChild(code);
        dom.scannedList.appendChild(li);
    });
    if (dom.sendTeklifBtn) dom.sendTeklifBtn.disabled = list.length === 0;
}

function buildTeklifXlsxBlob() {
    const XLSX = window.XLSX;
    if (!XLSX) return null;
    const rows = [
        ["Barkod", "Ürün Adı", "Mimari iskontolu fiyat", "Satış Fiyatı", "Birim"]
    ];
    const currency = "TRY";
    state.scannedList.forEach((p) => {
        rows.push([
            p.barcode || "",
            p.name || "",
            Number(p.unit_price) || 0,
            Number(p.list_price) || 0,
            p.unit || "adet"
        ]);
    });
    const ws = XLSX.utils.aoa_to_sheet(rows);
    const wb = XLSX.utils.book_new();
    XLSX.utils.book_append_sheet(wb, ws, "Fiyat Teklifi");
    const buf = XLSX.write(wb, { type: "array", bookType: "xlsx" });
    return new Blob([buf], { type: "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet" });
}

async function sendTeklifWhatsApp() {
    if (state.scannedList.length === 0) return;
    const blob = buildTeklifXlsxBlob();
    if (!blob) {
        showError("Excel oluşturulamadı. Sayfa yenileyin.");
        return;
    }
    const fileName = "Pandora_Aydinlatma_Fiyat_Teklifi.xlsx";
    const file = new File([blob], fileName, { type: blob.type });
    const text = "Pandora Aydınlatma — Fiyat teklifi (" + state.scannedList.length + " ürün)";

    if (navigator.share) {
        try {
            await navigator.share({
                text,
                files: [file]
            });
            return;
        } catch (err) {
            if (err.name !== "AbortError") console.warn("Share failed:", err);
        }
    }

    const a = document.createElement("a");
    a.href = URL.createObjectURL(blob);
    a.download = fileName;
    a.click();
    URL.revokeObjectURL(a.href);
    window.open("https://api.whatsapp.com/send?text=" + encodeURIComponent(text), "_blank", "noopener");
}

function buildWhatsAppShareText(product, currency, unit) {
    const name = product.name || product.barcode || "Ürün";
    const code = product.barcode || "-";
    const unitPrice = formatMoney(product.unit_price, currency);
    const listPrice = formatMoney(product.list_price, currency);
    return [
        "Pandora — " + name,
        "Kod: " + code,
        "Mimari iskontolu fiyat: " + unitPrice + " (" + (product.unit || unit) + " başına)",
        "Satış Fiyatı: " + listPrice + " (" + (product.unit || unit) + " başına)"
    ].join("\n");
}

function getAbsoluteImageUrl(imageUrl) {
    if (!imageUrl || imageUrl.startsWith("data:")) return imageUrl;
    if (imageUrl.startsWith("http://") || imageUrl.startsWith("https://")) return imageUrl;
    return window.location.origin + (imageUrl.startsWith("/") ? imageUrl : "/" + imageUrl);
}

function buildShareImage(product, currency, unit) {
    return new Promise((resolve) => {
        const name = product.name || product.barcode || "Ürün";
        const code = product.barcode || "-";
        const unitPrice = formatMoney(product.unit_price, currency);
        const listPrice = formatMoney(product.list_price, currency);
        const imgSrc = product.image_url ? getAbsoluteImageUrl(product.image_url) : null;

        const w = 400;
        const imgH = 220;
        const pad = 16;
        const textH = 100;
        const h = imgH + textH + pad * 2;

        const canvas = document.createElement("canvas");
        canvas.width = w;
        canvas.height = h;
        const ctx = canvas.getContext("2d");
        if (!ctx) { resolve(null); return; }

        ctx.fillStyle = "#fff";
        ctx.fillRect(0, 0, w, h);

        if (imgSrc) {
            const img = new Image();
            img.crossOrigin = "anonymous";
            img.onload = () => {
                try {
                    ctx.drawImage(img, 0, 0, w, imgH);
                } catch (_) { /* tainted */ }
                drawText();
            };
            img.onerror = drawText;
            img.src = imgSrc;

            function drawText() {
                ctx.fillStyle = "#1a1a1a";
                ctx.font = "bold 14px system-ui, sans-serif";
                ctx.fillText(name.length > 45 ? name.slice(0, 42) + "…" : name, pad, imgH + pad + 16);
                ctx.font = "12px system-ui, sans-serif";
                ctx.fillStyle = "#555";
                ctx.fillText("Kod: " + code, pad, imgH + pad + 34);
                ctx.fillText("Mimari iskontolu: " + unitPrice, pad, imgH + pad + 52);
                ctx.fillText("Satış Fiyatı: " + listPrice, pad, imgH + pad + 70);
                ctx.strokeStyle = "#e0e0e0";
                ctx.strokeRect(0, 0, w, h);
                try {
                    canvas.toBlob((blob) => resolve(blob || null), "image/png", 0.92);
                } catch (_) { resolve(null); }
            }
        } else {
            ctx.fillStyle = "#1a1a1a";
            ctx.font = "bold 14px system-ui, sans-serif";
            ctx.fillText(name.length > 45 ? name.slice(0, 42) + "…" : name, pad, pad + 24);
            ctx.font = "12px system-ui, sans-serif";
            ctx.fillStyle = "#555";
            ctx.fillText("Kod: " + code, pad, pad + 44);
            ctx.fillText("Mimari iskontolu: " + unitPrice, pad, pad + 62);
            ctx.fillText("Satış Fiyatı: " + listPrice, pad, pad + 80);
            ctx.strokeStyle = "#e0e0e0";
            ctx.strokeRect(0, 0, w, h);
            try {
                canvas.toBlob((blob) => resolve(blob || null), "image/png", 0.92);
            } catch (_) { resolve(null); }
        }
    });
}

async function shareViaWhatsApp() {
    const product = state.currentProduct;
    if (!product) return;

    const currency = product.currency || "TRY";
    const unit = product.unit || "adet";
    const waText = buildWhatsAppShareText(product, currency, unit);

    let imageBlob = null;
    try {
        imageBlob = await buildShareImage(product, currency, unit);
    } catch (_) { /* ignore */ }

    if (navigator.share && imageBlob) {
        try {
            const file = new File([imageBlob], "pandora-urun.png", { type: "image/png" });
            await navigator.share({
                text: waText,
                files: [file]
            });
            return;
        } catch (err) {
            if (err.name !== "AbortError") {
                console.warn("Share failed:", err);
            }
        }
    }

    if (navigator.share && !imageBlob) {
        try {
            await navigator.share({
                text: waText,
                title: product.name || "Pandora Ürün"
            });
            return;
        } catch (_) { /* fallback */ }
    }

    const waUrl = "https://api.whatsapp.com/send?text=" + encodeURIComponent(waText);
    if (imageBlob) {
        const a = document.createElement("a");
        a.href = URL.createObjectURL(imageBlob);
        a.download = "pandora-urun-" + (product.barcode || "urun") + ".png";
        a.click();
        URL.revokeObjectURL(a.href);
    }
    window.open(waUrl, "_blank", "noopener");
}

function renderCharacteristics(product) {
    const entries = collectCharacteristicEntries(product);
    dom.charList.innerHTML = "";

    if (entries.length === 0) {
        addCharacteristic("Bilgi", "Özellik bulunamadı");
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

const TR_KEYS = {
    dimensions: "Boyutlar",
    bulb: "Ampul",
    stock: "Stok",
    features: "Özellikler",
    info: "Bilgi"
};

function humanizeKey(key) {
    const k = String(key).toLowerCase().replace(/[_-]+/g, " ");
    if (TR_KEYS[k]) return TR_KEYS[k];
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
