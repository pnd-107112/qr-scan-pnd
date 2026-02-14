const fs = require("node:fs");
const http = require("node:http");
const path = require("node:path");

const PORT = Number(process.env.PORT || 8080);
const HOST = process.env.HOST || "0.0.0.0";
const ROOT_DIR = __dirname;
const DATA_FILE = resolveDataFile();

const MIME_TYPES = {
    ".css": "text/css; charset=utf-8",
    ".docx": "application/vnd.openxmlformats-officedocument.wordprocessingml.document",
    ".emf": "application/octet-stream",
    ".html": "text/html; charset=utf-8",
    ".jpeg": "image/jpeg",
    ".jpg": "image/jpeg",
    ".js": "text/javascript; charset=utf-8",
    ".json": "application/json; charset=utf-8",
    ".png": "image/png",
    ".svg": "image/svg+xml",
    ".webp": "image/webp",
    ".webmanifest": "application/manifest+json; charset=utf-8",
    ".xlsx": "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet",
    ".xml": "application/xml; charset=utf-8"
};

let products = loadProducts();

const server = http.createServer((req, res) => {
    addCorsHeaders(res);

    if (req.method === "OPTIONS") {
        res.writeHead(204);
        res.end();
        return;
    }

    const requestUrl = new URL(req.url, `http://${req.headers.host}`);
    const pathname = decodeURIComponent(requestUrl.pathname);

    if (req.method === "GET" && pathname === "/api/health") {
        sendJson(res, 200, {
            status: "ok",
            products_loaded: products.length
        });
        return;
    }

    if (req.method === "GET" && pathname.startsWith("/api/products/")) {
        const barcode = pathname.replace("/api/products/", "").trim();
        if (!barcode) {
            sendJson(res, 400, { error: "Barcode is required." });
            return;
        }

        const product = findProductByBarcode(barcode);
        if (!product) {
            sendJson(res, 404, { error: "Product not found." });
            return;
        }

        sendJson(res, 200, product);
        return;
    }

    if (req.method === "GET" && pathname === "/api/reload") {
        products = loadProducts();
        sendJson(res, 200, {
            status: "reloaded",
            products_loaded: products.length
        });
        return;
    }

    if (req.method === "GET") {
        serveStatic(pathname, res);
        return;
    }

    sendJson(res, 405, { error: "Method not allowed." });
});

server.listen(PORT, HOST, () => {
    console.log(`Server listening on http://${HOST}:${PORT}`);
    console.log(`Products loaded: ${products.length}`);
    console.log(`Data file: ${DATA_FILE}`);
});

function loadProducts() {
    try {
        const raw = fs.readFileSync(DATA_FILE, "utf8");
        const parsed = JSON.parse(raw);
        if (!Array.isArray(parsed)) {
            throw new Error("products.sample.json must contain an array.");
        }
        return parsed;
    } catch (error) {
        console.error("Failed to read sample products:", error.message);
        return [];
    }
}

function resolveDataFile() {
    const fromEnv = process.env.PRODUCTS_FILE ? path.resolve(process.env.PRODUCTS_FILE) : null;
    const candidates = [
        fromEnv,
        path.join(ROOT_DIR, "data", "products.api.json"),
        path.join(ROOT_DIR, "data", "products.sample.json")
    ].filter(Boolean);

    for (const candidate of candidates) {
        if (fs.existsSync(candidate)) {
            return candidate;
        }
    }

    return candidates[0];
}

function findProductByBarcode(inputBarcode) {
    const normalizedInput = normalizeBarcode(inputBarcode);
    return products.find((product) => normalizeBarcode(product.barcode) === normalizedInput) || null;
}

function normalizeBarcode(value) {
    return String(value || "")
        .toLowerCase()
        .replace(/[\s_-]+/g, "");
}

function addCorsHeaders(res) {
    res.setHeader("Access-Control-Allow-Origin", "*");
    res.setHeader("Access-Control-Allow-Headers", "Content-Type");
    res.setHeader("Access-Control-Allow-Methods", "GET,OPTIONS");
}

function sendJson(res, statusCode, payload) {
    const body = JSON.stringify(payload);
    res.writeHead(statusCode, {
        "Content-Type": "application/json; charset=utf-8",
        "Cache-Control": "no-store",
        "Content-Length": Buffer.byteLength(body)
    });
    res.end(body);
}

function serveStatic(pathname, res) {
    const targetPath = pathname === "/" ? "/index.html" : pathname;
    const safePath = path.normalize(path.join(ROOT_DIR, targetPath));
    if (!safePath.startsWith(ROOT_DIR)) {
        sendText(res, 403, "Forbidden");
        return;
    }

    fs.readFile(safePath, (error, data) => {
        if (error) {
            sendText(res, 404, "Not found");
            return;
        }

        const extension = path.extname(safePath).toLowerCase();
        const contentType = MIME_TYPES[extension] || "application/octet-stream";
        res.writeHead(200, { "Content-Type": contentType });
        res.end(data);
    });
}

function sendText(res, statusCode, message) {
    const body = String(message);
    res.writeHead(statusCode, {
        "Content-Type": "text/plain; charset=utf-8",
        "Content-Length": Buffer.byteLength(body)
    });
    res.end(body);
}
