/**
 * GET /api/health
 * Проверка доступности API и Supabase.
 */
export async function onRequestGet(context) {
    const { env } = context;
    const supabaseUrl = env.SUPABASE_URL;
    const supabaseKey = env.SUPABASE_SERVICE_KEY;

    if (!supabaseUrl || !supabaseKey) {
        return jsonResponse(500, {
            status: "error",
            message: "Supabase not configured (SUPABASE_URL, SUPABASE_SERVICE_KEY)"
        });
    }

    try {
        const res = await fetch(`${supabaseUrl}/rest/v1/products?select=id&limit=1`, {
            headers: {
                apikey: supabaseKey,
                Authorization: `Bearer ${supabaseKey}`,
                Accept: "application/json"
            }
        });

        if (!res.ok) {
            throw new Error(`Supabase returned ${res.status}`);
        }

        return jsonResponse(200, {
            status: "ok",
            supabase: "connected"
        });
    } catch (error) {
        return jsonResponse(503, {
            status: "error",
            message: error.message || "Supabase unreachable"
        });
    }
}

function jsonResponse(status, body) {
    return new Response(JSON.stringify(body), {
        status,
        headers: {
            "Content-Type": "application/json; charset=utf-8",
            "Cache-Control": "no-store"
        }
    });
}
