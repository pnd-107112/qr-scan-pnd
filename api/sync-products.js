/**
 * POST /api/sync-products
 * Vercel Serverless — принять массив товаров из Electron и upsert в Supabase.
 * Body: { syncSecret: string, products: Array<{ barcode, name, image_url?, unit_price?, list_price?, currency?, unit?, characteristics? }> }
 * Env: SYNC_SECRET, SUPABASE_URL, SUPABASE_SERVICE_KEY
 */
export default async function handler(req, res) {
    if (req.method !== "POST") {
        res.setHeader("Allow", "POST");
        return res.status(405).json({ error: "Method not allowed" });
    }

    const secret = process.env.SYNC_SECRET;
    if (!secret) {
        return res.status(500).json({ error: "SYNC_SECRET not configured." });
    }

    const body = typeof req.body === "string" ? JSON.parse(req.body || "{}") : (req.body || {});
    if (body.syncSecret !== secret) {
        return res.status(401).json({ error: "Invalid sync secret." });
    }

    const raw = body.products;
    if (!Array.isArray(raw) || raw.length === 0) {
        return res.status(400).json({ error: "products array is required and must not be empty." });
    }

    const supabaseUrl = (process.env.SUPABASE_URL || "").replace(/\/+$/, "");
    const supabaseKey = process.env.SUPABASE_SERVICE_KEY;
    if (!supabaseUrl || !supabaseKey) {
        return res.status(500).json({ error: "Supabase not configured." });
    }

    const rows = raw.map((p) => {
        const barcode = String(p.barcode || "").trim();
        if (!barcode) return null;
        return {
            barcode,
            name: String(p.name || p.barcode || "").trim() || "Unnamed",
            image_url: p.image_url || null,
            unit_price: typeof p.unit_price === "number" ? p.unit_price : parseFloat(String(p.unit_price || "0").replace(",", ".")) || 0,
            list_price: p.list_price != null ? (typeof p.list_price === "number" ? p.list_price : parseFloat(String(p.list_price).replace(",", "."))) : null,
            currency: String(p.currency || "TRY").trim() || "TRY",
            unit: String(p.unit || "adet").trim() || "adet",
            characteristics: p.characteristics && typeof p.characteristics === "object" ? p.characteristics : {},
            source_row: p.source_row != null ? Number(p.source_row) : null
        };
    }).filter(Boolean);

    if (rows.length === 0) {
        return res.status(400).json({ error: "No valid products (barcode required)." });
    }

    const url = `${supabaseUrl}/rest/v1/rpc/upsert_products_from_json`;
    try {
        const r = await fetch(url, {
            method: "POST",
            headers: {
                apikey: supabaseKey,
                Authorization: `Bearer ${supabaseKey}`,
                "Content-Type": "application/json",
                Accept: "application/json",
                "Accept-Profile": "public",
                "Content-Profile": "public"
            },
            body: JSON.stringify({ items: rows })
        });

        if (!r.ok) {
            const errText = await r.text();
            throw new Error(errText || `Supabase ${r.status}`);
        }

        const data = await r.json().catch(() => ({}));
        const count = typeof data?.count === "number" ? data.count : rows.length;
        res.setHeader("Cache-Control", "no-store");
        return res.status(200).json({ ok: true, count });
    } catch (err) {
        res.setHeader("Cache-Control", "no-store");
        return res.status(500).json({ error: err.message || "Sync failed." });
    }
}
