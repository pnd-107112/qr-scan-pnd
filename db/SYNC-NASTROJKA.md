# Настройка «Sunucuya gönder» — по шагам

## Шаг 1. Секрет (один раз придумай)

Придумай длинный пароль, например: `MoySecret2025PandoraSync`.  
Его нужно будет вписать в двух местах (Vercel и Electron).

---

## Шаг 2. Vercel

1. Зайди на https://vercel.com → свой проект (qr-scan-pnd или как он у тебя называется).
2. **Settings** → **Environment Variables**.
3. Добавь переменную:
   - **Name:** `SYNC_SECRET`
   - **Value:** тот самый секрет (например `MoySecret2025PandoraSync`).
4. Сохрани (Save). При необходимости задеплой заново.

---

## Шаг 3. Supabase (SQL один раз)

1. Зайди на https://supabase.com/dashboard → открой свой проект.
2. Слева меню → **SQL Editor**.
3. Нажми **New query**.
4. Открой на компе файл `db/upsert_products_rpc.sql` (в Cursor/блокноте), скопируй **весь** текст из файла.
5. Вставь в окно запроса в Supabase и нажми **Run** (или Ctrl+Enter).  
   Должно быть сообщение вроде «Success» без ошибок.

---

## Шаг 4. Electron (один раз)

1. В папке проекта `qr_scanPND` (там, где лежит `package.json`) создай файл с именем **`.env`**.
2. Открой его и вставь две строки (подставь свой URL и свой секрет):

```
SYNC_API_URL=https://qr-scan-pnd.vercel.app
SYNC_SECRET=MoySecret2025PandoraSync
```

3. Сохрани файл. При запуске Electron этот файл подхватывается автоматически.
4. Запускай приложение как обычно: `npm run electron`.

---

## Как пользоваться

1. Открой приложение Electron.
2. Зайди в **Veri Yönetimi** (админка).
3. При необходимости загрузи Excel: **1. Yeni veri yükle** → выбрать файл → **Uygula**.
4. Нажми **6. Sunucuya gönder** → кнопку **Verileri sunucuya yükle**.
5. Должно появиться сообщение вроде «N ürün sunucuya yüklendi». После этого сайт и приложение показывают данные из Supabase.

---

## Если что-то не работает

- **«SYNC_API_URL ve SYNC_SECRET ortam değişkenleri gerekli»** — не заданы переменные при запуске Electron (сделай шаг 4).
- **«Invalid sync secret»** — на Vercel введён другой SYNC_SECRET, чем при запуске Electron; сделай одинаково.
- **Ошибка от Supabase** — проверь, что в Supabase в SQL Editor выполнен скрипт из шага 3.
