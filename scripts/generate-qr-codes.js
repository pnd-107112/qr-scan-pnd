/**
 * Генерация QR-кодов для товаров и HTML-шаблона для печати.
 * Layout из DOCX или расчёт по формуле (TANEX TW-2348).
 *
 * npm run generate-qr
 */
const fs = require("node:fs");
const path = require("node:path");
const QRCode = require("qrcode");
const { getLayout } = require("./layout-tanex");

const projectRoot = path.resolve(__dirname, "..");
const inputPath = path.join(projectRoot, "data", "products.api.json");
const qrDir = path.join(projectRoot, "qr_codes");
const htmlPath = path.join(projectRoot, "qr_print.html");

if (!fs.existsSync(inputPath)) {
    console.error(`Файл не найден: ${inputPath}`);
    process.exit(1);
}

const products = JSON.parse(fs.readFileSync(inputPath, "utf8"));
if (!Array.isArray(products)) {
    console.error("products.api.json должен содержать массив.");
    process.exit(1);
}

if (!fs.existsSync(qrDir)) {
    fs.mkdirSync(qrDir, { recursive: true });
}

async function generateQrImages() {
    console.log(`Генерация ${products.length} QR-кодов...`);

    for (let i = 0; i < products.length; i++) {
        const p = products[i];
        const barcode = String(p.barcode || "").trim();
        if (!barcode) continue;

        const filename = `${barcode.replace(/[/\\?*:|"]/g, "-")}.png`;
        const filepath = path.join(qrDir, filename);

        await QRCode.toFile(filepath, barcode, {
            width: 120,
            margin: 2,
            color: { dark: "#000000", light: "#ffffff" }
        });

        if ((i + 1) % 50 === 0) {
            console.log(`  ${i + 1}/${products.length}`);
        }
    }

    console.log(`QR-коды сохранены в ${qrDir}`);
}

function generateHtml(layout) {
    const { cols, rows, cellWmm, cellHmm, startXmm, startYmm, stepXmm, stepYmm, qrSizeMm } = layout;

    const pages = [];
    let currentPage = [];
    let row = [];
    let rowCount = 0;

    products.forEach((p) => {
        const barcode = String(p.barcode || "").trim();
        if (!barcode) return;

        const filename = `${barcode.replace(/[/\\?*:|"]/g, "-")}.png`;
        const qrPath = `qr_codes/${filename}`;
        const name = (p.name || "").slice(0, 25);

        row.push(`
            <div class="cell">
                <img src="${qrPath}" alt="${barcode}" class="qr" />
                <div class="barcode">${escapeHtml(barcode)}</div>
                <div class="name">${escapeHtml(name)}</div>
            </div>
        `);

        if (row.length >= cols) {
            currentPage.push(`<div class="row">${row.join("")}</div>`);
            row = [];
            rowCount++;
            if (rowCount >= rows) {
                pages.push(`<div class="page">${currentPage.join("")}</div>`);
                currentPage = [];
                rowCount = 0;
            }
        }
    });

    if (row.length > 0) {
        currentPage.push(`<div class="row">${row.join("")}</div>`);
        rowCount++;
    }
    if (currentPage.length > 0) {
        pages.push(`<div class="page">${currentPage.join("")}</div>`);
    }

    const rowsHtml = pages;

    const html = `<!DOCTYPE html>
<html lang="tr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>QR Kodları</title>
    <style>
        * { box-sizing: border-box; }
        body { margin: 0; padding: 10px; font-family: Arial, sans-serif; }
        @media print {
            @page { size: A4; margin: 0; }
            body { margin: 0; padding: 0; }
            .page {
                width: 210mm;
                padding: ${startYmm}mm ${startXmm}mm 0 ${startXmm}mm;
                margin: 0;
                page-break-after: always;
            }
            .page:last-child { page-break-after: auto; }
            .page { page-break-inside: avoid; }
        }
        .page {
            display: block;
            padding: ${startYmm}mm ${startXmm}mm 0 ${startXmm}mm;
            width: 210mm;
        }
        .row {
            display: flex;
            flex-wrap: nowrap;
            gap: 0;
            margin: 0;
            height: ${stepYmm}mm;
            min-height: ${stepYmm}mm;
            flex-shrink: 0;
        }
        .cell {
            width: ${stepXmm}mm;
            min-width: ${stepXmm}mm;
            height: ${stepYmm}mm;
            padding: 0;
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            flex-shrink: 0;
            text-align: center;
            border: 1px dashed #ddd;
            flex-shrink: 0;
        }
        @media print {
            .cell { border: none; }
            .print-hint { display: none; }
        }
        .print-hint { font-size: 12px; color: #444; margin-bottom: 10px; padding: 8px 12px; background: #f5f5f5; border-radius: 8px; }
        .qr {
            width: ${qrSizeMm}mm;
            height: ${qrSizeMm}mm;
            image-rendering: pixelated;
            image-rendering: crisp-edges;
        }
        .barcode {
            font-weight: bold;
            font-size: 6px;
            margin-top: 0.5mm;
            word-break: break-all;
            line-height: 1.1;
        }
        .name {
            font-size: 5px;
            color: #333;
            margin-top: 0.3mm;
            overflow: hidden;
            text-overflow: ellipsis;
            white-space: nowrap;
            max-width: 100%;
        }
    </style>
</head>
<body>
<div class="print-hint">Yazdırırken: Diğer ayarlar → «Üstbilgi ve altbilgi»yi kaldırın. <button type="button" onclick="window.print()" style="margin-left:10px;padding:6px 14px;background:#3f5634;color:#fff;border:none;border-radius:6px;cursor:pointer;font-weight:600">Yazdır</button></div>
${rowsHtml.join("")}
</body>
</html>`;

    fs.writeFileSync(htmlPath, html, "utf8");
    console.log(`HTML для печати: ${htmlPath}`);
}

function escapeHtml(s) {
    return String(s)
        .replace(/&/g, "&amp;")
        .replace(/</g, "&lt;")
        .replace(/>/g, "&gt;")
        .replace(/"/g, "&quot;");
}

async function main() {
    const layout = await getLayout();
    console.log("Layout:", JSON.stringify(layout, null, 2));

    await generateQrImages();
    generateHtml(layout);
    console.log("\nHazır. qr_print.html dosyasını tarayıcıda açıp Ctrl+P ile yazdırın.");
}

main().catch((err) => {
    console.error(err);
    process.exit(1);
});
