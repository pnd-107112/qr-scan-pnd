create extension if not exists pgcrypto;

create table if not exists public.products (
    id uuid primary key default gen_random_uuid(),
    barcode text not null,
    barcode_norm text generated always as (regexp_replace(lower(barcode), '[\s_-]+', '', 'g')) stored,
    name text not null,
    image_url text,
    unit_price numeric(12,2) not null,
    list_price numeric(12,2),
    currency text not null default 'TRY',
    unit text not null default 'adet',
    characteristics jsonb not null default '{}'::jsonb,
    source_row integer,
    created_at timestamptz not null default now(),
    updated_at timestamptz not null default now(),
    unique (barcode_norm)
);

create index if not exists products_characteristics_gin_idx on public.products using gin (characteristics);

create or replace function public.set_updated_at()
returns trigger
language plpgsql
as $$
begin
    new.updated_at = now();
    return new;
end;
$$;

drop trigger if exists trg_products_updated_at on public.products;
create trigger trg_products_updated_at
before update on public.products
for each row
execute function public.set_updated_at();
