-- RPC для массового upsert товаров (barcode_norm — generated, поэтому через функцию).
-- Вызов из API: POST /rest/v1/rpc/upsert_products_from_json, body: { "items": [ {...}, ... ] }

create or replace function public.upsert_products_from_json(items jsonb)
returns jsonb
language plpgsql
security definer
as $$
declare
  r jsonb;
  rec jsonb;
  b text;
  n text;
  img text;
  up numeric;
  lp numeric;
  cur text;
  u text;
  ch jsonb;
  sr int;
  cnt int := 0;
begin
  for rec in select * from jsonb_array_elements(items)
  loop
    b := nullif(trim(rec->>'barcode'), '');
    if b is null then continue; end if;

    n := nullif(trim(rec->>'name'), '');
    n := coalesce(n, b, 'Unnamed');

    img := rec->>'image_url';
    if img = '' then img := null; end if;

    up := (rec->>'unit_price')::numeric;
    if up is null then up := 0; end if;

    lp := (rec->>'list_price')::numeric;

    cur := nullif(trim(rec->>'currency'), '');
    cur := coalesce(cur, 'TRY');

    u := nullif(trim(rec->>'unit'), '');
    u := coalesce(u, 'adet');

    ch := rec->'characteristics';
    if ch is null or jsonb_typeof(ch) != 'object' then ch := '{}'::jsonb; end if;

    sr := (rec->>'source_row')::int;

    insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
    values (b, n, img, up, lp, cur, u, ch, sr)
    on conflict (barcode_norm) do update set
      barcode = excluded.barcode,
      name = excluded.name,
      image_url = excluded.image_url,
      unit_price = excluded.unit_price,
      list_price = excluded.list_price,
      currency = excluded.currency,
      unit = excluded.unit,
      characteristics = excluded.characteristics,
      source_row = excluded.source_row;

    cnt := cnt + 1;
  end loop;

  return jsonb_build_object('ok', true, 'count', cnt);
end;
$$;
