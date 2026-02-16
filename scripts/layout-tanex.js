/**
 * Layout для этикеток TANEX TW-2348 (A4, 48 labels, 35×35 mm, 6×8).
 * Сначала пытается прочитать геометрию из DOCX, иначе — расчёт по формуле + калибровка.
 *
 * Зафиксированные калибровки (проверено печатью):
 * - QR: 20 mm
 * - Отступ сверху: 6 mm (0.15 + 0.15 + 0.3 cm)
 *
 * Возвращает: { cols, rows, cellWmm, cellHmm, startXmm, startYmm, stepXmm, stepYmm, paddingMm, innerWmm, innerHmm, qrSizeMm }
 */
const fs = require("fs");
const path = require("path");
const JSZip = require("jszip");

const DXA_PER_MM = 56.7;
function dxaToMm(dxa) {
    return Math.round((dxa / DXA_PER_MM) * 100) / 100;
}

/**
 * Извлечь геометрию из DOCX (первая таблица).
 */
async function parseDocxLayout(docxPath) {
    const buf = fs.readFileSync(docxPath);
    const zip = await JSZip.loadAsync(buf);
    const docEntry = zip.file("word/document.xml");
    if (!docEntry) return null;

    const xml = await docEntry.async("string");

    const res = { source: "docx" };

    // Page size (sectPr → pgSz)
    const pgSz = xml.match(/<w:pgSz[^>]*w:w="(\d+)"[^>]*w:h="(\d+)"/) || xml.match(/<w:pgSz[^>]*w:h="(\d+)"[^>]*w:w="(\d+)"/);
    if (pgSz) {
        const w = parseInt(pgSz[1], 10);
        const h = parseInt(pgSz[2], 10);
        res.pageWidthMm = dxaToMm(w);
        res.pageHeightMm = dxaToMm(h);
    }

    // Table position (tblPr → tblp)
    const tblp = xml.match(/<w:tblp[^>]*w:tblpX="(\d+)"[^>]*w:tblpY="(\d+)"/) || xml.match(/<w:tblp[^>]*w:tblpY="(\d+)"[^>]*w:tblpX="(\d+)"/);
    if (tblp) {
        res.startXmm = dxaToMm(parseInt(tblp[1], 10));
        res.startYmm = dxaToMm(parseInt(tblp[2], 10));
    }

    // Grid columns and rows
    const gridCols = [...xml.matchAll(/<w:gridCol\s+w:w="(\d+)"/g)];
    const rowCount = (xml.match(/<w:tr>/g) || []).length;
    if (gridCols.length) {
        res.cols = gridCols.length;
        res.columnWidthsMm = gridCols.map((m) => dxaToMm(parseInt(m[1], 10)));
        res.cellWmm = res.columnWidthsMm[0];
    }
    res.rows = rowCount > 0 ? rowCount : 8;

    // Row heights (trHeight)
    const trHeights = [...xml.matchAll(/<w:trHeight[^>]*w:val="(\d+)"[^>]*\/?>/g)];
    if (trHeights.length) {
        const heights = trHeights.map((m) => parseInt(m[1], 10));
        res.rowHeightsMm = [...new Set(heights)].map(dxaToMm);
        res.cellHmm = res.rowHeightsMm[0];
    }

    // Cell margins (tblCellMar or tcMar)
    const marTop = xml.match(/<w:top[^>]*w:w="(\d+)"/);
    const marLeft = xml.match(/<w:(?:start|left)[^>]*w:w="(\d+)"/);
    const padDxa = marTop ? parseInt(marTop[1], 10) : marLeft ? parseInt(marLeft[1], 10) : 0;
    res.paddingMm = dxaToMm(padDxa);

    return res;
}

/**
 * Расчёт layout по формуле A4 + калибровка.
 */
function formulaLayout(calibration = {}) {
    const {
        offsetX = 0,
        offsetY = 0,
        gapX = 0,
        gapY = 0,
        startXmm: calStartX,
        startYmm: calStartY
    } = calibration;

    const A4_W = 210;
    const A4_H = 297;
    const cellW = 35;
    const cellH = 35;
    const cols = 6;
    const rows = 8;

    const gridW = cols * cellW + (cols - 1) * gapX;
    const gridH = rows * cellH + (rows - 1) * gapY;
    const startXmm = calStartX !== undefined ? calStartX : (A4_W - gridW) / 2 + offsetX;
    const startYmm = calStartY !== undefined ? calStartY : (A4_H - gridH) / 2 + offsetY;

    return {
        source: "formula",
        cols,
        rows,
        cellWmm: cellW,
        cellHmm: cellH,
        startXmm,
        startYmm,
        stepXmm: cellW + gapX,
        stepYmm: cellH + gapY,
        paddingMm: 0,
        pageWidthMm: A4_W,
        pageHeightMm: A4_H
    };
}

/**
 * Нормализовать layout и вычислить inner + qrScale.
 */
function normalizeLayout(raw) {
    const cols = raw.cols ?? 6;
    const rows = raw.rows ?? 8;
    const cellWmm = raw.cellWmm ?? 35;
    const cellHmm = raw.cellHmm ?? 35;
    const paddingMm = raw.paddingMm ?? 0;
    const stepXmm = raw.stepXmm ?? cellWmm;
    const stepYmm = raw.stepYmm ?? cellHmm;
    const startXmm = raw.startXmm ?? 0;
    const topOffsetExtraMm = 6; // зафиксировано: 0.15 + 0.15 + 0.3 cm
    const startYmm = (raw.startYmm ?? 0) + topOffsetExtraMm;

    const innerWmm = Math.max(0, cellWmm - 2 * paddingMm);
    const innerHmm = Math.max(0, cellHmm - 2 * paddingMm);
    const qrSizeMm = 20;

    return {
        cols,
        rows,
        cellWmm,
        cellHmm,
        startXmm,
        startYmm,
        stepXmm,
        stepYmm,
        paddingMm,
        innerWmm,
        innerHmm,
        qrSizeMm
    };
}

/**
 * Получить layout для этикеток TANEX TW-2348.
 *
 * @param {Object} options
 * @param {string} [options.docxPath] — путь к barcode_baski_sablon.docx
 * @param {number} [options.tableIndex] — индекс таблицы (0 по умолчанию)
 * @param {number} [options.offsetX] — калибровка X (мм)
 * @param {number} [options.offsetY] — калибровка Y (мм)
 * @param {number} [options.gapX] — зазор между столбцами (мм)
 * @param {number} [options.gapY] — зазор между рядами (мм)
 * @param {number} [options.startXmm] — явный startX (переопределяет расчёт)
 * @param {number} [options.startYmm] — явный startY (переопределяет расчёт)
 * @returns {Promise<Object>} layout
 */
async function getLayout(options = {}) {
    const projectRoot = path.resolve(__dirname, "..");
    const docxPath = options.docxPath ?? path.join(projectRoot, "barcode_baski_sablon.docx");

    let raw = null;

    if (fs.existsSync(docxPath)) {
        raw = await parseDocxLayout(docxPath);
        if (raw) {
            raw.stepXmm = raw.columnWidthsMm?.[0] ?? raw.cellWmm;
            raw.stepYmm = raw.rowHeightsMm?.[0] ?? raw.cellHmm;
            raw.cols = raw.cols ?? 6;
            raw.rows = raw.rows ?? 8;
        }
    }

    if (!raw) {
        raw = formulaLayout({
            offsetX: options.offsetX,
            offsetY: options.offsetY,
            gapX: options.gapX,
            gapY: options.gapY,
            startXmm: options.startXmm,
            startYmm: options.startYmm
        });
    } else {
        raw.startXmm = options.startXmm ?? raw.startXmm ?? 0;
        raw.startYmm = options.startYmm ?? raw.startYmm ?? 0;
    }

    return normalizeLayout(raw);
}

// CLI: node layout-tanex.js [--offsetX=0] [--offsetY=0] [--gapX=0] [--gapY=0]
if (require.main === module) {
    const args = process.argv.slice(2);
    const opts = {};
    args.forEach((a) => {
        const m = a.match(/^--(\w+)=([\d.-]+)$/);
        if (m) opts[m[1]] = parseFloat(m[2]);
    });
    getLayout(opts).then((l) => console.log(JSON.stringify(l, null, 2)));
}

module.exports = { getLayout, parseDocxLayout, formulaLayout, normalizeLayout };
