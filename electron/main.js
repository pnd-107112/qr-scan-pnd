/**
 * Electron main process — Pandora Barkod Tarayıcı
 */
const { app, BrowserWindow, ipcMain, dialog } = require("electron");
const path = require("path");
const fs = require("fs");
const http = require("http");
const { spawn } = require("child_process");

const ROOT = app.isPackaged ? app.getAppPath() : path.join(__dirname, "..");
const DATA_FILE = path.join(ROOT, "data", "products.api.json");
const IMAGES_DIR = path.join(ROOT, "product_images");

let mainWindow = null;
let adminWindow = null;
let server = null;
let products = [];

function loadProducts() {
    try {
        const raw = fs.readFileSync(DATA_FILE, "utf8");
        products = JSON.parse(raw);
        if (!Array.isArray(products)) products = [];
    } catch {
        products = [];
    }
    return products;
}

function saveProducts(data) {
    const dir = path.dirname(DATA_FILE);
    if (!fs.existsSync(dir)) fs.mkdirSync(dir, { recursive: true });
    fs.writeFileSync(DATA_FILE, JSON.stringify(data, null, 2), "utf8");
    products = data;
}

function norm(s) {
    return String(s || "").toLowerCase().replace(/[\s_-]+/g, "");
}

function runQrGeneration() {
    return new Promise((resolve, reject) => {
        const scriptPath = path.join(ROOT, "scripts", "generate-qr-codes.js");
        if (!fs.existsSync(scriptPath)) {
            resolve({ ok: false, error: "QR script bulunamadı" });
            return;
        }
        const child = spawn(process.execPath, [scriptPath], { cwd: ROOT, stdio: "pipe" });
        let err = "";
        child.stderr.on("data", (d) => { err += d.toString(); });
        child.on("close", (code) => {
            if (code === 0) resolve({ ok: true });
            else reject(new Error(err || "QR oluşturulamadı"));
        });
        child.on("error", reject);
    });
}

function startServer() {
    const MIME = {
        ".css": "text/css; charset=utf-8",
        ".html": "text/html; charset=utf-8",
        ".js": "text/javascript; charset=utf-8",
        ".json": "application/json; charset=utf-8",
        ".png": "image/png",
        ".jpg": "image/jpeg",
        ".jpeg": "image/jpeg",
        ".webp": "image/webp",
        ".webmanifest": "application/manifest+json; charset=utf-8",
        ".svg": "image/svg+xml"
    };

    server = http.createServer((req, res) => {
        const url = new URL(req.url || "/", "http://localhost");
        const p = decodeURIComponent(url.pathname) || "/";

        if (req.method === "GET" && p === "/api/health") {
            res.writeHead(200, { "Content-Type": "application/json" });
            res.end(JSON.stringify({ status: "ok", products_loaded: products.length }));
            return;
        }
        if (req.method === "GET" && p.startsWith("/api/products")) {
            const barcode = (url.searchParams.get("barcode") || p.replace("/api/products", "").replace(/^\/\?/, "")).trim();
            const prod = products.find((x) => String(x.barcode || "").toLowerCase().replace(/[\s_-]+/g, "") === String(barcode).toLowerCase().replace(/[\s_-]+/g, ""));
            if (!prod) {
                res.writeHead(404, { "Content-Type": "application/json" });
                res.end(JSON.stringify({ error: "Ürün bulunamadı." }));
                return;
            }
            res.writeHead(200, { "Content-Type": "application/json" });
            res.end(JSON.stringify(prod));
            return;
        }

        const filePath = path.join(ROOT, p === "/" ? "index.html" : p);
        if (!filePath.startsWith(ROOT)) {
            res.writeHead(403);
            res.end();
            return;
        }
        fs.readFile(filePath, (err, data) => {
            if (err) {
                res.writeHead(404);
                res.end();
                return;
            }
            const ext = path.extname(filePath).toLowerCase();
            res.writeHead(200, { "Content-Type": MIME[ext] || "application/octet-stream" });
            res.end(data);
        });
    });
    server.listen(0, "127.0.0.1", () => {
        const port = server.address().port;
        process.env.APP_URL = `http://127.0.0.1:${port}`;
    });
}

function createMainWindow() {
    const baseUrl = process.env.APP_URL || "http://127.0.0.1:8080";
    mainWindow = new BrowserWindow({
        width: 900,
        height: 750,
        webPreferences: {
            nodeIntegration: false,
            contextIsolation: true,
            preload: path.join(__dirname, "preload.js")
        }
    });
    mainWindow.loadURL(baseUrl);
    mainWindow.on("closed", () => { mainWindow = null; });
}

function createAdminWindow() {
    adminWindow = new BrowserWindow({
        width: 520,
        height: 620,
        webPreferences: {
            nodeIntegration: false,
            contextIsolation: true,
            preload: path.join(__dirname, "preload.js")
        }
    });
    adminWindow.loadFile(path.join(ROOT, "admin.html"));
    adminWindow.on("closed", () => { adminWindow = null; });
}

ipcMain.handle("data:load", () => {
    loadProducts();
    return { ok: true, count: products.length };
});

ipcMain.handle("data:getProducts", () => products);

ipcMain.handle("data:getProductByBarcode", (_, barcode) => {
    loadProducts();
    const key = norm(barcode);
    if (!key) return null;
    const p = products.find((x) => norm(x.barcode) === key);
    return p ? { ...p } : null;
});

ipcMain.handle("data:loadFromFile", async (_, mode, options = {}) => {
    let filePath = options.filePath;
    if (!filePath) {
        const result = await dialog.showOpenDialog(adminWindow || mainWindow, {
            title: mode === "replace" ? "Yeni veri dosyası seç" : "Güncelleme dosyası seç",
            filters: [{ name: "JSON veya Excel", extensions: ["json", "xlsx"] }],
            properties: ["openFile"]
        });
        if (result.canceled || !result.filePaths[0]) return { ok: false, error: "Dosya seçilmedi" };
        filePath = result.filePaths[0];
    }
    const ext = path.extname(filePath).toLowerCase();
    const rawPercent = options.pricePercentChange;
    const pricePercent = rawPercent != null && rawPercent !== "" && !isNaN(Number(rawPercent)) ? Number(rawPercent) : null;
    const updatePricesOnly = mode === "update" && typeof pricePercent === "number";

    try {
        loadProducts();
        let data;
        if (ext === ".json") {
            const raw = fs.readFileSync(filePath, "utf8");
            data = JSON.parse(raw);
            if (!Array.isArray(data)) throw new Error("JSON bir dizi içermeli");
        } else if (ext === ".xlsx") {
            const dataService = require("./data-service");
            data = await dataService.parseExcel(filePath);
        } else {
            return { ok: false, error: "Desteklenen format: JSON, XLSX" };
        }

        if (mode === "replace") {
            if (!fs.existsSync(IMAGES_DIR)) fs.mkdirSync(IMAGES_DIR, { recursive: true });
            const list = fs.readdirSync(IMAGES_DIR);
            list.forEach((f) => fs.unlinkSync(path.join(IMAGES_DIR, f)));
            saveProducts(data);
            try {
                await runQrGeneration();
            } catch (qrErr) {
                return { ok: true, count: products.length, qrError: qrErr.message };
            }
            return { ok: true, count: products.length };
        }

        const map = new Map(products.map((p) => [norm(p.barcode), p]));
        data.forEach((p) => {
            const key = norm(p.barcode);
            if (!key) return;
            if (!map.has(key)) map.set(key, { ...p });
        });
        if (updatePricesOnly) {
            const mult = 1 + pricePercent / 100;
            for (const [k, p] of map) {
                const oldUnit = Number(p.unit_price) || 0;
                const newUnit = Math.round(oldUnit * mult * 100) / 100;
                const newList = p.list_price != null ? Math.round((Number(p.list_price) || 0) * mult * 100) / 100 : p.list_price;
                map.set(k, { ...p, unit_price: newUnit, list_price: newList });
            }
        } else {
            data.forEach((p) => {
                const key = norm(p.barcode);
                if (!key) return;
                const existing = map.get(key);
                if (existing) map.set(key, { ...existing, ...p });
            });
        }
        saveProducts(Array.from(map.values()));
        return { ok: true, count: products.length };
    } catch (e) {
        return { ok: false, error: e.message || "Dosya okunamadı" };
    }
});

ipcMain.handle("data:addProduct", async (_, product) => {
    const barcode = String(product.barcode || "").trim();
    if (!barcode) return { ok: false, error: "Barkod gerekli" };
    loadProducts();
    const key = barcode.toLowerCase().replace(/[\s_-]+/g, "");
    const idx = products.findIndex((p) => String(p.barcode || "").toLowerCase().replace(/[\s_-]+/g, "") === key);
    const item = {
        barcode,
        name: String(product.name || "").trim() || barcode,
        image_url: product.image_url || "",
        unit_price: Number(product.unit_price) || 0,
        currency: product.currency || "TRY",
        unit: product.unit || "adet",
        characteristics: product.characteristics || {}
    };
    if (idx >= 0) products[idx] = item;
    else products.push(item);
    saveProducts(products);
    return { ok: true };
});

ipcMain.handle("data:saveImage", async (_, { barcode, base64 }) => {
    if (!fs.existsSync(IMAGES_DIR)) fs.mkdirSync(IMAGES_DIR, { recursive: true });
    const safeName = String(barcode || "").replace(/[/\\?*:|"]/g, "-") + ".png";
    const buf = Buffer.from(base64, "base64");
    fs.writeFileSync(path.join(IMAGES_DIR, safeName), buf);
    return "/product_images/" + safeName;
});

ipcMain.handle("data:deleteProduct", async (_, barcode) => {
    const code = String(barcode || "").trim();
    if (!code) return { ok: false, error: "Barkod girin" };
    loadProducts();
    const key = code.toLowerCase().replace(/[\s_-]+/g, "");
    const before = products.length;
    products = products.filter((p) => String(p.barcode || "").toLowerCase().replace(/[\s_-]+/g, "") !== key);
    if (products.length === before) return { ok: false, error: "Ürün bulunamadı" };
    saveProducts(products);
    const imgPath = path.join(IMAGES_DIR, code.replace(/[/\\?*:|"]/g, "-") + ".png");
    if (fs.existsSync(imgPath)) fs.unlinkSync(imgPath);
    return { ok: true };
});

ipcMain.handle("dialog:openFile", async (_, opts) => {
    const r = await dialog.showOpenDialog(adminWindow || mainWindow, opts);
    return r.canceled ? null : r.filePaths[0];
});

app.whenReady().then(() => {
    loadProducts();
    startServer();
    const check = () => {
        if (process.env.APP_URL) {
            createMainWindow();
            return;
        }
        setTimeout(check, 100);
    };
    check();

    ipcMain.handle("openAdmin", () => {
        if (!adminWindow || adminWindow.isDestroyed()) createAdminWindow();
        else adminWindow.focus();
    });
    ipcMain.handle("focusScanner", () => {
        if (mainWindow && !mainWindow.isDestroyed()) mainWindow.focus();
    });
});

app.on("window-all-closed", () => {
    if (server) server.close();
    app.quit();
});
