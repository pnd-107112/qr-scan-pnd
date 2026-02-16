# Деплой на Vercel

Vercel даёт бесплатный домен `*.vercel.app`, который часто не блокируется провайдерами (в отличие от `*.pages.dev`).

---

## Шаг 1: Импорт из GitHub

1. Зайди на [vercel.com](https://vercel.com) и войди (через GitHub).
2. **Add New** → **Project**.
3. Выбери репозиторий `pnd-107112/qr-scan-pnd` → **Import**.

---

## Шаг 2: Настройки сборки

- **Framework Preset:** Other
- **Build Command:** оставь пустым
- **Output Directory:** оставь пустым (корень)
- **Install Command:** `npm install` (по умолчанию)

---

## Шаг 3: Environment Variables

В разделе **Environment Variables** добавь для **Production**:

| Name | Value |
|------|-------|
| `SUPABASE_URL` | `https://lbsqeuraakdidbbjlhhs.supabase.co` |
| `SUPABASE_SERVICE_KEY` | твой Secret key из Supabase |

---

## Шаг 4: Deploy

Нажми **Deploy**. Через 1–2 минуты сайт будет доступен по адресу:

```
https://qr-scan-pnd.vercel.app
```

(или `https://qr-scan-pnd-xxx.vercel.app` в зависимости от настроек)

---

## Проверка

- Сайт: `https://твой-проект.vercel.app`
- API: `https://твой-проект.vercel.app/api/health`
- Товар: `https://твой-проект.vercel.app/api/products/KEMER-123`

---

## Обновление

### Вариант A: через Git (если проект привязан к GitHub)

При каждом `git push` в `main` Vercel автоматически пересоберёт и задеплоит проект.

```bash
git add .
git commit -m "обновление"
git push origin main
```

### Вариант B: без Git (Vercel CLI)

1. Установи и войди в Vercel (один раз):

```bash
npm i -g vercel
vercel login
```

2. В папке проекта выполни:

```bash
vercel --prod
```

Если проект ещё не привязан, выполни сначала `vercel link` и выбери существующий проект (или создай новый), затем снова `vercel --prod`.
