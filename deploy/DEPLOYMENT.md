# Деплой: Cloudflare Pages + Supabase

План деплоя стека **Cloudflare Pages + Supabase** для Pandora Scan Mobile. Бесплатный tier подходит для MVP.

---

## Архитектура

```
┌─────────────────────┐     HTTPS      ┌──────────────────────────┐
│   Cloudflare Pages  │ ◄────────────► │   Supabase (Postgres +   │
│   (статик + API)    │                │   Storage для картинок)  │
│                     │                │                          │
│  • index.html       │   Pages        │  • products table        │
│  • app.js, styles   │   Functions    │  • product_images bucket │
│  • /api/health      │   (Workers)    │  • REST API              │
│  • /api/products/*  │                │                          │
└─────────────────────┘                └──────────────────────────┘
         │
         │ HTTPS (камера работает)
         ▼
    Мобильный браузер
```

- **Cloudflare Pages** — хостинг статики и Pages Functions (API на Workers).
- **Supabase** — Postgres (products), Storage (изображения).

---

## Шаг 1: Supabase

### 1.1 Проект

1. [supabase.com](https://supabase.com) → New project.
2. Сохрани: **Project URL**, **anon public key**, **service_role key** (Settings → API).
3. Database → SQL Editor: выполни `db/schema.sql`.

### 1.2 Storage

1. Storage → Create bucket `product_images`.
2. Сделай bucket **public** (если нужен прямой доступ к картинкам).
3. Policies: разреши публичное чтение (или RLS по необходимости).

### 1.3 Импорт данных

После загрузки картинок (шаг 4) и генерации SQL с `IMAGE_URL_PREFIX` выполни `data/products.upsert.sql` в SQL Editor.

---

## Шаг 2: Cloudflare Pages

### 2.1 Репозиторий (рекомендуется)

1. Залить проект в GitHub.
2. [Cloudflare Dashboard](https://dash.cloudflare.com) → Workers & Pages → Create → Pages → Connect to Git.
3. Выбрать репозиторий.
4. **Build settings**:
   - Framework preset: **None**
   - Build command: *(оставить пустым)*
   - Build output directory: `/` (корень — статика уже готова).
5. **Environment variables** (Settings → Environment variables):
   | Name | Value | Encrypt |
   |------|-------|---------|
   | `SUPABASE_URL` | `https://YOUR_PROJECT.supabase.co` | Yes |
   | `SUPABASE_SERVICE_KEY` | service_role key из Supabase | Yes |

### 2.2 Через Wrangler CLI

```powershell
npm install -g wrangler
cd c:\Users\info\OneDrive\Masaüstü\qr_scanPND
wrangler pages project create pandora-scan
wrangler pages deploy . --project-name=pandora-scan
```

Секреты через Dashboard: Pages → Settings → Environment variables.

---

## Шаг 3: Настройка API

Pages Functions лежат в `functions/`:

- `functions/api/health.js` → `GET /api/health`
- `functions/api/products/[barcode].js` → `GET /api/products/:barcode`

Они обращаются к Supabase REST API. Переменные `SUPABASE_URL` и `SUPABASE_SERVICE_KEY` должны быть заданы в Cloudflare.

---

## Шаг 4: Картинки в Supabase Storage

Текущие `image_url` в JSON — локальные пути (`/product_images/...`). Нужно:

1. Загрузить папку `product_images/` в bucket `product_images`.
2. Обновить `image_url` в БД на:  
   `https://YOUR_PROJECT.supabase.co/storage/v1/object/public/product_images/FILENAME`

### Скрипт загрузки

```powershell
set SUPABASE_URL=https://YOUR_PROJECT.supabase.co
set SUPABASE_SERVICE_KEY=your_service_role_key
node scripts/upload-images-to-supabase.js
```

Используй `scripts/upload-images-to-supabase.js`. Требует:

- `SUPABASE_URL`, `SUPABASE_SERVICE_KEY` в `.env` или переменных окружения.
- Папка `product_images/` с файлами.

### Ручная загрузка

1. Supabase Dashboard → Storage → product_images → Upload.
2. После загрузки — SQL:

```sql
UPDATE products
SET image_url = 'https://YOUR_PROJECT.supabase.co/storage/v1/object/public/product_images/' || split_part(image_url, '/', 3)
WHERE image_url LIKE '/product_images/%';
```

(Подставь реальный project URL и при необходимости скорректируй путь.)

**Вариант: IMAGE_URL_PREFIX при генерации SQL**

После загрузки картинок сгенерируй upsert с полными URL:

```powershell
set IMAGE_URL_PREFIX=https://YOUR_PROJECT.supabase.co/storage/v1/object/public/product_images
node scripts/generate-products-upsert-sql.js
```

Затем выполни `data/products.upsert.sql` в Supabase SQL Editor.

---

## Шаг 5: config.js в production

Для production обнови `config.js` или задай `API_BASE_URL` при сборке:

- Локально / тот же origin: `API_BASE_URL: "/api"` (по умолчанию).
- Если API на другом домене: `API_BASE_URL: "https://your-api.example.com/api"`.

При деплое на Pages API и статика на одном домене, `/api` работает без изменений.

---

## Локальная разработка (Pages + Functions)

```powershell
npm install -g wrangler
wrangler pages dev . --compatibility-date=2024-01-01
```

В другом терминале задай `SUPABASE_URL` и `SUPABASE_SERVICE_KEY` (или через `.dev.vars` в корне проекта). Открой http://localhost:8788.

## Шаг 6: Проверка

1. Открыть `https://YOUR_PROJECT.pages.dev`.
2. `https://YOUR_PROJECT.pages.dev/api/health` — `{"status":"ok", ...}`.
3. `https://YOUR_PROJECT.pages.dev/api/products/KEMER-123` — JSON товара.
4. Сканировать штрихкод с телефона (HTTPS обязателен для камеры).

---

## Лимиты (Free tier, актуально на фев 2026)

| Сервис | Лимит |
|--------|-------|
| **Cloudflare Pages** | 500 builds/мес, unlimited requests |
| **Cloudflare Workers** (Pages Functions) | 100 000 req/день |
| **Supabase Free** | 500 MB DB, 1 GB Storage, 2 проекта |

---

## Обновление данных

1. Экспорт из Excel:  
   `powershell -File scripts/export-products-from-xlsx.ps1`
2. Генерация SQL:  
   `node scripts/generate-products-upsert-sql.js`
3. Выполнить `data/products.upsert.sql` в Supabase SQL Editor.
4. Загрузить новые картинки в Storage (если есть изменения).

---

## Troubleshooting

- **401 / 403 от Supabase** — проверь `SUPABASE_SERVICE_KEY` (service_role, не anon).
- **404 на /api/*** — Pages Functions в `functions/api/`, ветки в Git и деплой.
- **Камера не работает** — только HTTPS или localhost.
- **CORS** — API и фронт на одном домене, CORS не требуется.
