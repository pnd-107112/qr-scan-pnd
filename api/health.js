/**
 * GET /api/health
 * Vercel Serverless Function — проверка Supabase.
 */
export default async function handler(req, res) {
    if (req.method !== "GET") {
        res.setHeader("Allow", "GET");
        return res.status(405).json({ error: "Method not allowed" });
    }

    const supabaseUrl = process.env.SUPABASE_URL;
    const supabaseKey = process.env.SUPABASE_SERVICE_KEY;

    if (!supabaseUrl || !supabaseKey) {
        return res.status(500).json({
            status: "error",
            message: "Supabase not configured (SUPABASE_URL, SUPABASE_SERVICE_KEY)"
        });
    }

    try {
        const r = await fetch(`${supabaseUrl}/rest/v1/products?select=id&limit=1`, {
            headers: {
                apikey: supabaseKey,
                Authorization: `Bearer ${supabaseKey}`,
                Accept: "application/json"
            }
        });
        if (!r.ok) throw new Error(`Supabase returned ${r.status}`);
        res.setHeader("Cache-Control", "no-store");
        return res.status(200).json({ status: "ok", supabase: "connected" });
    } catch (err) {
        res.setHeader("Cache-Control", "no-store");
        return res.status(503).json({
            status: "error",
            message: err.message || "Supabase unreachable"
        });
    }
}
