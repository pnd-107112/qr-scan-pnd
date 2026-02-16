# Pandora Scan Mobile MVP

Mobile-first barcode scanner that reads product data from server API and shows:

- Product photo (`image_url`)
- Product characteristics (`characteristics` object)
- Unit price (`unit_price` + `unit`)

## Run locally

1. Start server:

```bash
node server.js
```

2. Open app:

```text
http://localhost:8080
```

## Build product data from Excel

Run:

```powershell
powershell -NoProfile -ExecutionPolicy Bypass -File .\scripts\export-products-from-xlsx.ps1
```

Generated artifacts:

- `data/products.full.json` (all rows with barcodes)
- `data/products.api.json` (deduplicated by barcode, used by API)
- `data/products.duplicates.json` (duplicate barcode report)
- `product_images/*` (extracted image files from workbook)
- `data/products.upsert.sql` (optional SQL upsert file for Postgres/Supabase, generated separately)

Notes:

- The script auto-detects the latest `.xlsx` in the project root.
- API uses `data/products.api.json` automatically when it exists.

## API endpoints

- `GET /api/health`
- `GET /api/products/{barcode}`
- `GET /api/reload` (reloads currently active data file)

### Example response

```json
{
  "barcode": "KEMER-123",
  "name": "ATLAS LINER SARKIT",
  "image_url": "https://example.com/images/KEMER-123.jpg",
  "unit_price": 21000,
  "currency": "TRY",
  "unit": "adet",
  "characteristics": {
    "dimensions": "Uzunluk: 95 cm, Cap: 6 cm, Yukseklik: 150 cm",
    "bulb": "DS LED",
    "stock": "VAR"
  }
}
```

## Data source switch

- Frontend API base URL is set in `config.js`:

```js
window.APP_CONFIG = {
  API_BASE_URL: "/api",
  REQUEST_TIMEOUT_MS: 9000
};
```

- When you move data to another server, update `API_BASE_URL` (for example `https://api.your-domain.com/api`).
- If needed, backend data file can be forced with environment variable:

```bash
set PRODUCTS_FILE=C:\path\to\products.api.json
```

## Postgres or Supabase import

1. Create table and indexes from `db/schema.sql`.
2. Generate upsert SQL from current API JSON:

```bash
node .\scripts\generate-products-upsert-sql.js
```

3. Run `data/products.upsert.sql` in SQL editor.

## Deploy (Cloudflare Pages + Supabase)

Рекомендуемый стек: **Cloudflare Pages** (frontend + API) + **Supabase** (Postgres + Storage).

Подробный план: **[deploy/DEPLOYMENT.md](deploy/DEPLOYMENT.md)**.

Кратко:

1. **Supabase** — создать проект, выполнить `db/schema.sql`, bucket `product_images`.
2. **Cloudflare Pages** — подключить Git, задать `SUPABASE_URL`, `SUPABASE_SERVICE_KEY`.
3. **Images** — загрузить `product_images/` в Storage (`scripts/upload-images-to-supabase.js`).
4. **Данные** — сгенерировать SQL с `IMAGE_URL_PREFIX`, выполнить upsert.

Pages Functions (`functions/api/`) обслуживают `/api/health` и `/api/products/:barcode`.

## QR-коды для печати

Генерация QR-кодов и HTML-шаблона для печати этикеток:

```powershell
npm run generate-qr
```

Создаёт:
- `qr_codes/` — PNG с QR-кодами (содержат штрихкод)
- `qr_print.html` — сетка для печати (4 колонки)

Открой `qr_print.html` в браузере → Ctrl+P для печати.

### Layout TANEX TW-2348

**Зафиксированные настройки:** QR 20 mm, отступ сверху 6 mm.

Генератор автоматически подстраивает этикетки под лист:

1. **При наличии** `barcode_baski_sablon.docx` — геометрия читается из Word (размер страницы, таблица, ячейки, отступы).
2. **Без DOCX** — расчёт по формуле A4 (6×8, 35×35 мм) с калибровкой.

Калибровка через параметры:

```powershell
node scripts/layout-tanex.js --offsetX=0 --offsetY=0 --gapX=0 --gapY=0
```

Вывод layout можно передать в generate-qr или подстроить через `getLayout({ offsetX, offsetY, gapX, gapY, startXmm, startYmm })` в `scripts/layout-tanex.js`.

## Обновление данных и добавление новых продуктов

### Вариант A: Данные из Excel (.xlsx)

**1. Подготовьте Excel-файл**
- Положите `.xlsx` в корень проекта (рядом с `package.json`).
- Обязательные колонки: `barcode`, `name`, `image_url` или вложенные картинки.
- Для цен: `unit_price`, `currency` (TRY), `unit` (adet).
- Для характеристик: колонки `dimensions`, `bulb`, `stock` и др. — попадут в `characteristics`.

**2. Экспорт в JSON**

```powershell
powershell -NoProfile -ExecutionPolicy Bypass -File .\scripts\export-products-from-xlsx.ps1
```

**3. Результат**
- `data/products.api.json` — основной файл для API (дубли по штрихкоду удаляются).
- `data/products.full.json` — все строки.
- `product_images/` — извлечённые картинки.

**4. Для Supabase**
- Сгенерировать SQL:
  ```powershell
  node .\scripts\generate-products-upsert-sql.js
  ```
- Загрузить картинки: `node .\scripts\upload-images-to-supabase.js`
- Выполнить `data/products.upsert.sql` в SQL Editor.

**5. Обновить QR-коды**

```powershell
npm run generate-qr
```

---

### Вариант B: Ручное редактирование JSON

**1. Откройте** `data/products.api.json`.

**2. Формат одного продукта:**

```json
{
  "barcode": "PND1234-A",
  "name": "Ürün adı",
  "image_url": "https://...",
  "unit_price": 21000,
  "currency": "TRY",
  "unit": "adet",
  "characteristics": {
    "dimensions": "...",
    "bulb": "DS LED"
  }
}
```

**3. Добавьте** новые объекты в массив или измените существующие.

**4. Сохраните файл.**

**5. Перезагрузите данные**
- Локальный сервер: `GET /api/reload` или перезапуск `node server.js`.
- Vercel/Cloudflare: после push в Git данные обновятся из `data/products.api.json`.

**6. Обновите QR-коды (если печатаете этикетки):**

```powershell
npm run generate-qr
```

---

### Краткая шпаргалка

| Действие | Команда |
|----------|---------|
| Обновить из Excel | `powershell -NoProfile -ExecutionPolicy Bypass -File .\scripts\export-products-from-xlsx.ps1` |
| Сгенерировать SQL для Supabase | `node .\scripts\generate-products-upsert-sql.js` |
| Загрузить картинки в Supabase | `node .\scripts\upload-images-to-supabase.js` |
| Сгенерировать QR-этикетки | `npm run generate-qr` |

## Notes for production

- Use HTTPS for camera access on mobile.
- Keep barcodes unique in database, or use `barcode + variant`.
- Store images in object storage (S3/R2/Supabase Storage) and save only URL in DB.
