/**
 * Excel parsing for product import
 */
const fs = require("fs");
const path = require("path");
const XLSX = require("xlsx");

const COL_MAP = {
    barcode: ["barcode", "Barkod", "barkod", "KOD", "kod"],
    name: ["name", "Name", "Ürün", "urun", "Ürün Adı"],
    unit_price: ["unit_price", "Mimari iskontolu fiyat", "unit_price", "Fiyat", "fiyat", "Price", "Birim Fiyat"],
    list_price: ["list_price", "Satış Fiyatı", "satış fiyatı", "list_price", "Liste Fiyatı"],
    currency: ["currency", "Para Birimi", "Currency"],
    unit: ["unit", "Birim", "Unit", "adet"],
    dimensions: ["dimensions", "Boyut", "dimensions"],
    bulb: ["bulb", "Ampul", "bulb"],
    stock: ["stock", "Stok", "stock"]
};

function findCol(ws, keys) {
    const range = XLSX.utils.decode_range(ws["!ref"] || "A1");
    for (let c = 0; c <= range.e.c; c++) {
        const addr = XLSX.utils.encode_cell({ r: 0, c });
        const val = (ws[addr] && ws[addr].v) ? String(ws[addr].v).trim().toLowerCase() : "";
        for (const k of keys) {
            if (val === k.toLowerCase()) return c;
        }
    }
    return -1;
}

function getCell(ws, row, col) {
    if (col < 0) return null;
    const addr = XLSX.utils.encode_cell({ r: row, c: col });
    const cell = ws[addr];
    if (!cell) return null;
    if (cell.t === "s" && cell.v != null) return cell.w || String(cell.v);
    if (typeof cell.v === "number") return cell.v;
    return cell.v != null ? String(cell.v).trim() : null;
}

async function parseExcel(filePath) {
    const buf = fs.readFileSync(filePath);
    const wb = XLSX.read(buf, { type: "buffer" });
    const sheetName = wb.SheetNames[0];
    const ws = wb.Sheets[sheetName];
    if (!ws) return [];

    const cols = {};
    for (const [key, keys] of Object.entries(COL_MAP)) {
        cols[key] = findCol(ws, keys);
    }
    if (cols.barcode < 0) throw new Error("Excel'de 'barcode' veya 'Barkod' sütunu bulunamadı");

    const range = XLSX.utils.decode_range(ws["!ref"] || "A1");
    const result = [];
    for (let r = 1; r <= range.e.r; r++) {
        const barcode = getCell(ws, r, cols.barcode);
        if (!barcode) continue;

        const name = getCell(ws, r, cols.name) || barcode;
        const unit_price = getCell(ws, r, cols.unit_price);
        const list_price = getCell(ws, r, cols.list_price);
        const numPrice = unit_price != null ? (typeof unit_price === "number" ? unit_price : parseFloat(String(unit_price).replace(",", "."))) : 0;
        const numListPrice = list_price != null ? (typeof list_price === "number" ? list_price : parseFloat(String(list_price).replace(",", "."))) : numPrice;

        const characteristics = {};
        if (cols.dimensions >= 0) {
            const v = getCell(ws, r, cols.dimensions);
            if (v) characteristics.dimensions = String(v);
        }
        if (cols.bulb >= 0) {
            const v = getCell(ws, r, cols.bulb);
            if (v) characteristics.bulb = String(v);
        }
        if (cols.stock >= 0) {
            const v = getCell(ws, r, cols.stock);
            if (v) characteristics.stock = String(v);
        }

        result.push({
            barcode: String(barcode).trim(),
            name: String(name).trim(),
            image_url: "",
            unit_price: isNaN(numPrice) ? 0 : numPrice,
            list_price: isNaN(numListPrice) ? (isNaN(numPrice) ? 0 : numPrice) : numListPrice,
            currency: getCell(ws, r, cols.currency) || "TRY",
            unit: getCell(ws, r, cols.unit) || "adet",
            characteristics
        });
    }
    return result;
}

module.exports = { parseExcel };
