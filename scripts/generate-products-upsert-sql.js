const fs = require("node:fs");
const path = require("node:path");

const projectRoot = path.resolve(__dirname, "..");
const inputPath = path.join(projectRoot, "data", "products.api.json");
const outputPath = path.join(projectRoot, "data", "products.upsert.sql");

/**
 * Если задан IMAGE_URL_PREFIX (например для Supabase Storage), заменяет
 * /product_images/xxx на https://...supabase.co/storage/v1/object/public/product_images/xxx
 */
const imageUrlPrefix = process.env.IMAGE_URL_PREFIX?.replace(/\/+$/, "") || null;

if (!fs.existsSync(inputPath)) {
    console.error(`Input file not found: ${inputPath}`);
    process.exit(1);
}

const products = JSON.parse(fs.readFileSync(inputPath, "utf8"));
if (!Array.isArray(products)) {
    console.error("Input JSON must be an array.");
    process.exit(1);
}

const lines = [];
lines.push("-- Generated file. Do not edit manually.");
lines.push("-- Source: data/products.api.json");
lines.push("");
lines.push("begin;");
lines.push("");

for (const product of products) {
    const characteristics = JSON.stringify(product.characteristics || {});
    let imageUrl = product.image_url;
    if (imageUrlPrefix && imageUrl && String(imageUrl).startsWith("/product_images/")) {
        const filename = imageUrl.replace(/^\/product_images\/?/, "");
        imageUrl = `${imageUrlPrefix}/${filename}`;
    }
    const name = product.name && String(product.name).trim() ? product.name : (product.barcode || "Unnamed product");

    lines.push(
        "insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)",
    );
    lines.push(
        `values (${sqlText(product.barcode)}, ${sqlText(name)}, ${sqlText(imageUrl)}, ${sqlNumber(product.unit_price)}, ${sqlNumber(product.list_price)}, ${sqlText(product.currency || "TRY")}, ${sqlText(product.unit || "adet")}, ${sqlJson(characteristics)}, ${sqlInteger(product.source_row)})`,
    );
    lines.push("on conflict (barcode_norm) do update set");
    lines.push("    barcode = excluded.barcode,");
    lines.push("    name = excluded.name,");
    lines.push("    image_url = excluded.image_url,");
    lines.push("    unit_price = excluded.unit_price,");
    lines.push("    list_price = excluded.list_price,");
    lines.push("    currency = excluded.currency,");
    lines.push("    unit = excluded.unit,");
    lines.push("    characteristics = excluded.characteristics,");
    lines.push("    source_row = excluded.source_row;");
    lines.push("");
}

lines.push("commit;");
lines.push("");

fs.writeFileSync(outputPath, lines.join("\n"), "utf8");
console.log(`Wrote ${products.length} upsert statements to ${outputPath}`);

function sqlText(value) {
    if (value === null || value === undefined || value === "") {
        return "null";
    }
    const escaped = String(value).replace(/'/g, "''");
    return `'${escaped}'`;
}

function sqlNumber(value) {
    if (value === null || value === undefined || value === "") {
        return "null";
    }
    const parsed = Number(value);
    if (Number.isNaN(parsed)) {
        return "null";
    }
    return String(parsed);
}

function sqlInteger(value) {
    if (value === null || value === undefined || value === "") {
        return "null";
    }
    const parsed = Number.parseInt(value, 10);
    if (Number.isNaN(parsed)) {
        return "null";
    }
    return String(parsed);
}

function sqlJson(jsonText) {
    const escaped = String(jsonText).replace(/'/g, "''");
    return `'${escaped}'::jsonb`;
}
