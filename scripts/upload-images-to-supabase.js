/**
 * Загрузка изображений из product_images/ в Supabase Storage.
 * Использует @supabase/supabase-js — корректно работает с ключами sb_secret_ и JWT.
 *
 * Использование:
 *   set SUPABASE_URL=https://YOUR_PROJECT.supabase.co
 *   set SUPABASE_SERVICE_KEY=your_secret_key (sb_secret_... или service_role JWT)
 *   npm install
 *   node scripts/upload-images-to-supabase.js
 */
const fs = require("node:fs");
const path = require("node:path");
const { createClient } = require("@supabase/supabase-js");

const projectRoot = path.resolve(__dirname, "..");
const imagesDir = path.join(projectRoot, "product_images");
const bucket = "product_images";

const supabaseUrl = process.env.SUPABASE_URL?.replace(/\/+$/, "");
const supabaseKey = process.env.SUPABASE_SERVICE_KEY;

if (!supabaseUrl || !supabaseKey) {
    console.error("Требуются переменные: SUPABASE_URL, SUPABASE_SERVICE_KEY");
    process.exit(1);
}

if (!fs.existsSync(imagesDir)) {
    console.error(`Папка не найдена: ${imagesDir}`);
    console.error("Сначала запустите export-products-from-xlsx.ps1 для извлечения изображений.");
    process.exit(1);
}

const supabase = createClient(supabaseUrl, supabaseKey);

const mimeTypes = {
    ".png": "image/png",
    ".jpg": "image/jpeg",
    ".jpeg": "image/jpeg",
    ".webp": "image/webp",
    ".gif": "image/gif"
};

async function uploadFile(filePath, objectPath) {
    const ext = path.extname(filePath).toLowerCase();
    const contentType = mimeTypes[ext] || "application/octet-stream";
    const body = fs.readFileSync(filePath);

    const { error } = await supabase.storage
        .from(bucket)
        .upload(objectPath, body, {
            contentType,
            upsert: true
        });

    if (error) {
        throw new Error(error.message);
    }
}

async function main() {
    const entries = fs.readdirSync(imagesDir, { withFileTypes: true });
    const files = entries
        .filter((e) => e.isFile())
        .map((e) => e.name)
        .filter((n) => Object.keys(mimeTypes).some((ext) => n.toLowerCase().endsWith(ext)));

    console.log(`Найдено ${files.length} изображений в ${imagesDir}`);

    let ok = 0;
    let fail = 0;

    for (let i = 0; i < files.length; i++) {
        const name = files[i];
        const filePath = path.join(imagesDir, name);

        try {
            await uploadFile(filePath, name);
            ok++;
            if ((i + 1) % 50 === 0) {
                console.log(`  загружено ${i + 1}/${files.length}`);
            }
        } catch (error) {
            fail++;
            console.error(`  ошибка ${name}: ${error.message}`);
        }
    }

    console.log(`Готово: ${ok} успешно, ${fail} ошибок`);

    if (ok > 0) {
        const base = `${supabaseUrl}/storage/v1/object/public/${bucket}`;
        console.log(`\nПубличный URL картинок: ${base}/<имя_файла>`);
        console.log("Обновите image_url в БД или используйте IMAGE_URL_PREFIX при генерации SQL:");
        console.log(`  set IMAGE_URL_PREFIX=${base}`);
        console.log("  node scripts/generate-products-upsert-sql.js");
    }

    process.exit(fail > 0 ? 1 : 0);
}

main();
