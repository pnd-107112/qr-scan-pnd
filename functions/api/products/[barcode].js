/**
 * GET /api/products/:barcode
 * Получение товара по штрихкоду из Supabase.
 */
export async function onRequestGet(context) {
    const { env, params } = context;
    const barcode = params?.barcode?.trim();

    if (!barcode) {
        return jsonResponse(400, { error: "Barkod gerekli." });
    }

    const supabaseUrl = env.SUPABASE_URL;
    const supabaseKey = env.SUPABASE_SERVICE_KEY;

    if (!supabaseUrl || !supabaseKey) {
        return jsonResponse(500, { error: "API not configured." });
    }

    const barcodeNorm = normalizeBarcode(barcode);
    const url = `${supabaseUrl}/rest/v1/products?barcode_norm=eq.${encodeURIComponent(barcodeNorm)}&select=*&limit=1`;

    try {
        const res = await fetch(url, {
            headers: {
                apikey: supabaseKey,
                Authorization: `Bearer ${supabaseKey}`,
                Accept: "application/json",
                "Accept-Profile": "public",
                "Content-Profile": "public"
            }
        });

        if (!res.ok) {
            throw new Error(`Supabase returned ${res.status}`);
        }

        const rows = await res.json();
        const product = Array.isArray(rows) && rows.length > 0 ? rows[0] : null;

        if (!product) {
            return jsonResponse(404, { error: "Ürün bulunamadı." });
        }

        // Формат ответа, совместимый с текущим API
        const out = {
            barcode: product.barcode,
            name: product.name,
            image_url: product.image_url || "https://placehold.co/700x700?text=No+Image",
            unit_price: product.unit_price,
            list_price: product.list_price ?? null,
            currency: product.currency || "TRY",
            unit: product.unit || "adet",
            characteristics: product.characteristics || {}
        };

        return jsonResponse(200, out);
    } catch (error) {
        return jsonResponse(500, {
            error: error.message || "Failed to fetch product."
        });
    }
}

function normalizeBarcode(value) {
    return String(value || "")
        .toLowerCase()
        .replace(/[\s_-]+/g, "");
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
