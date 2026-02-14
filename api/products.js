/**
 * GET /api/products?barcode=xxx
 * Vercel Serverless Function — товар по штрихкоду из Supabase.
 */
export default async function handler(req, res) {
    if (req.method !== "GET") {
        res.setHeader("Allow", "GET");
        return res.status(405).json({ error: "Method not allowed" });
    }

    const barcode = (req.query?.barcode || "").trim();
    if (!barcode) {
        return res.status(400).json({ error: "Barcode is required." });
    }

    const supabaseUrl = process.env.SUPABASE_URL;
    const supabaseKey = process.env.SUPABASE_SERVICE_KEY;

    if (!supabaseUrl || !supabaseKey) {
        return res.status(500).json({ error: "API not configured." });
    }

    const barcodeNorm = String(barcode).toLowerCase().replace(/[\s_-]+/g, "");
    const url = `${supabaseUrl}/rest/v1/products?barcode_norm=eq.${encodeURIComponent(barcodeNorm)}&select=*&limit=1`;

    try {
        const r = await fetch(url, {
            headers: {
                apikey: supabaseKey,
                Authorization: `Bearer ${supabaseKey}`,
                Accept: "application/json",
                "Accept-Profile": "public",
                "Content-Profile": "public"
            }
        });

        if (!r.ok) throw new Error(`Supabase returned ${r.status}`);

        const rows = await r.json();
        const product = Array.isArray(rows) && rows.length > 0 ? rows[0] : null;

        if (!product) {
            return res.status(404).json({ error: "Product not found." });
        }

        res.setHeader("Cache-Control", "no-store");
        res.status(200).json({
            barcode: product.barcode,
            name: product.name,
            image_url: product.image_url || "https://placehold.co/700x700?text=No+Image",
            unit_price: product.unit_price,
            list_price: product.list_price ?? null,
            currency: product.currency || "TRY",
            unit: product.unit || "adet",
            characteristics: product.characteristics || {}
        });
    } catch (err) {
        res.setHeader("Cache-Control", "no-store");
        res.status(500).json({
            error: err.message || "Failed to fetch product."
        });
    }
}
