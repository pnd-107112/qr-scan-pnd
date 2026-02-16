/**
 * Extract table/cell dimensions from barcode_baski_sablon.docx
 * Docx is a ZIP - we parse word/document.xml for tblPr, tcW, tcH, etc.
 *
 * npm run extract-docx
 */
const fs = require("fs");
const path = require("path");
const JSZip = require("jszip");

const projectRoot = path.resolve(__dirname, "..");
const docxPath = path.join(projectRoot, "barcode_baski_sablon.docx");

if (!fs.existsSync(docxPath)) {
    console.error("File not found:", docxPath);
    process.exit(1);
}

async function main() {
    const buf = fs.readFileSync(docxPath);
    const zip = await JSZip.loadAsync(buf);
    const docEntry = zip.file("word/document.xml");
    if (!docEntry) {
        console.error("word/document.xml not found in docx");
        process.exit(1);
    }
    const xml = await docEntry.async("string");

    // Word OOXML: tblW, tcW, tcH use twentieths of a point (dxa). 1 mm ≈ 56.7 dxa
    const DXA_PER_MM = 56.7;

    function dxaToMm(dxa) {
        return Math.round((dxa / DXA_PER_MM) * 10) / 10;
    }

    const results = {};

    // Table width (tblW - supports different attribute orders)
    const tblW = xml.match(/<w:tblW[^>]*w:val="(\d+)"/) || xml.match(/<w:tblW\s+w:val="(\d+)"[^>]*\/?>/);
    if (tblW) {
        results.tableWidthDxa = parseInt(tblW[1], 10);
        results.tableWidthMm = dxaToMm(results.tableWidthDxa);
    }

    // Grid columns (tblGrid)
    const gridCols = [...xml.matchAll(/<w:gridCol\s+w:w="(\d+)"/g)];
    if (gridCols.length) {
        results.gridColumns = gridCols.map((m) => parseInt(m[1], 10));
        results.columnWidthsMm = results.gridColumns.map((w) => dxaToMm(w));
    }

    // Row height (trHeight) - Word OOXML
    const trHeights = [...xml.matchAll(/<w:trHeight[^>]*w:val="(\d+)"[^>]*\/?>/g)];
    if (trHeights.length) {
        const heights = [...new Set(trHeights.map((m) => parseInt(m[1], 10)))];
        results.rowHeightsDxa = heights;
        results.rowHeightsMm = heights.map((h) => dxaToMm(h));
    }

    // Cell dimensions (tcW, tcH) - Word OOXML allows different attribute orders
    const tcWs = [...xml.matchAll(/<w:tcW[^>]*w:val="(\d+)"[^>]*\/?>/g)];
    const tcHs = [...xml.matchAll(/<w:tcH[^>]*w:val="(\d+)"[^>]*\/?>/g)];
    if (tcWs.length) {
        const widths = [...new Set(tcWs.map((m) => parseInt(m[1], 10)))];
        results.cellWidthsDxa = widths;
        results.cellWidthsMm = widths.map((w) => dxaToMm(w));
    }
    if (tcHs.length) {
        const heights = [...new Set(tcHs.map((m) => parseInt(m[1], 10)))];
        results.cellHeightsDxa = heights;
        results.cellHeightsMm = heights.map((h) => dxaToMm(h));
    }

    console.log(JSON.stringify(results, null, 2));
}

main().catch((err) => {
    console.error(err);
    process.exit(1);
});
