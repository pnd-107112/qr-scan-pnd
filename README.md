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

## Notes for production

- Use HTTPS for camera access on mobile.
- Keep barcodes unique in database, or use `barcode + variant`.
- Store images in object storage (S3/R2/Supabase Storage) and save only URL in DB.
