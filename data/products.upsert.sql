-- Generated file. Do not edit manually.
-- Source: data/products.api.json

begin;

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('KEMER-123', 'ATLAS LİNER SARKIT', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/KEMER-123-r2.png', 21000, 30000, 'TRY', 'adet', '{"dimensions":"UZUNLUK:95 CM \nÇAP: 6 CM \nYÜKSEKLİK: 150 CM","features":"METAL  VE CAM MALZEMEDEN ÜRETİLMİŞTİR.\nPİRİNÇ ESKİTME RENK OLUP,ŞEFFAF CAMDAN OLUŞMAKTADIR.\n3000 K IŞIK RENGİNE SAHİPTİR\nDERİ RENGİ : KAHVE ,SİYAH VE TABADIR","bulb":"DS LED","stock":"VAR"}'::jsonb, 2)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('KEMER-124', 'ATLAS LİNER SARKIT', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/KEMER-124-r3.png', 23000, 32500, 'TRY', 'adet', '{"dimensions":"UZUNLUK:110 CM \nÇAP: 6 CM \nYÜKSEKLİK: 150 CM","features":"METAL  VE CAM MALZEMEDEN ÜRETİLMİŞTİR. PİRİNÇ ESKİTME RENK OLUP,ŞEFFAF CAMDAN OLUŞMAKTADIR.\n3000 K IŞIK RENGİNE SAHİPTİR\nDERİ RENGİ : KAHVE ,SİYAH VE TABADIR","bulb":"DS LED","stock":"VAR"}'::jsonb, 3)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('KEMER-125', 'ATLAS LİNER SARKIT', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/KEMER-125-r4.png', 26000, 37500, 'TRY', 'adet', '{"dimensions":"UZUNLUK:125 CM \nÇAP: 6 CM \nYÜKSEKLİK: 150 CM","features":"METAL  VE CAM MALZEMEDEN ÜRETİLMİŞTİR.\nPİRİNÇ ESKİTME RENK OLUP,ŞEFFAF CAMDAN OLUŞMAKTADIR.\n3000 K IŞIK RENGİNE SAHİPTİR\nDERİ RENGİ : KAHVE ,SİYAH VE TABADIR","bulb":"COB LED","stock":"VAR"}'::jsonb, 4)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('CAM-123', 'SUN LIGHT TEKLİ SARKIT', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/CAM-123-r5.png', 4680, 5850, 'TRY', 'adet', '{"dimensions":"25 Q","features":"ÜRÜN CAM VE METAL MALZEMEDEN OLUŞMAKTADIR.\nFÜME-FÜME\nBAL-ESKİTME\nŞEFFAF-KROM  RENKLERİNDE DİRÇ","bulb":"COB LED","stock":"VAR"}'::jsonb, 5)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('CAM-124', 'SUN LIGHT TEKLİ SARKIT', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/CAM-124-r6.png', 5720, 7150, 'TRY', 'adet', '{"dimensions":"30 Q","features":"ÜRÜN CAM VE METAL MALZEMEDEN OLUŞMAKTADIR.\nFÜME-FÜME\nBAL-ESKİTME\nŞEFFAF-KROM  RENKLERİNDE DİRÇ","bulb":"COB LED","stock":"VAR"}'::jsonb, 6)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1729', 'LİZ SARKIT/PENDANT', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1729-r7.png', 11793.6, 14742, 'TRY', 'adet', '{"dimensions":"60 CM","features":"AHŞAP  MALZEME CNS KESİM TASARIM \nNATUREL AHŞAP RENK OLUP,\n3000 K IŞIK RENGİNE SAHİPTİR\nSTOKLARLA SINIRLIDIR","bulb":"COB LED","stock":"VAR"}'::jsonb, 7)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1699-A', 'SHADOW SARKIT /PENDANT', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1699-A-r9.png', 8299.2, 10374, 'TRY', 'adet', '{"dimensions":"16X48 CM","features":"ÜRÜN CAM MAZLEMEDEN ÜRETİLMEKTEDİR. \nÜRÜN KENDİNDEN LEDLİDİR.","bulb":"DS LED","stock":"VAR"}'::jsonb, 9)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1699-B', 'SHADOW SARKIT /PENDANT', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1699-B-r10.png', 9391.2, 11739, 'TRY', 'adet', '{"dimensions":"18X48 CM","features":"ÜRÜN CAM MAZLEMEDEN ÜRETİLMEKTEDİR. \nÜRÜN KENDİNDEN LEDLİDİR.","bulb":"DS LED","stock":"VAR"}'::jsonb, 10)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1699-C', 'SHADOW SARKIT /PENDANT', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1699-C-r11.png', 9828, 12285, 'TRY', 'adet', '{"dimensions":"18X70 CM","features":"ÜRÜN CAM MAZLEMEDEN ÜRETİLMEKTEDİR. \nÜRÜN KENDİNDEN LEDLİDİR.","bulb":"DS LED","stock":"VAR"}'::jsonb, 11)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1717', 'FLOS CAM SARKIT', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1717-r12.png', 18127.2, 22659, 'TRY', 'adet', '{"features":"ÜRÜN CAM MAZLEMEDEN ÜRETİLMEKTEDİR. \nÜRÜN KENDİNDEN LEDLİDİR.","bulb":"DS LED","stock":"VAR"}'::jsonb, 12)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1692', 'DEW SARKIT/PENDANT', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1692-r14.png', 16380, 20475, 'TRY', 'adet', '{"dimensions":"300x5 cm","features":"Deri kumaş ve cam  malzemeden üretilmiştir.\n7 Cam bulunmaktadır. 8 cm ,10 cm,12 cm,15 cm ölçülerindedir. Siyah Deri 300 cm en 5 cmdir.\nFüme Cam","bulb":"DS LED","stock":"VAR"}'::jsonb, 14)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1692-L', 'DEW LAMBADER', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1692-L-r16.png', 24024, 30030, 'TRY', 'adet', '{"features":"Deri kumaş ve cam  malzemeden üretilmiştir.\n14 Cam bulunmaktadır. 8 cm ,10 cm,12 cm,15 cm ölçülerindedir. Siyah Deri 300 cm en 5 cmdir.\nFüme Cam","bulb":"DS LED","stock":"VAR"}'::jsonb, 16)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1698', 'GALAKSY SARKIT/PENDANT', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1698-r17.png', 24024, 30030, 'TRY', 'adet', '{"dimensions":"200x10 cm","features":"AKRİLİK VE METAL MALZEMEDEN ÜRETİLMİŞTİR. 10  CM ÇAPINDA \n22 ADET TOPTAN OLUŞMAKTADIR.\n80 W \n3000 KELVİN GÜNIŞIĞI \nMAX 400 CM KADAR ÜRETİLMEKTEDİR.","bulb":"DS LED","stock":"VAR"}'::jsonb, 17)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1706', 'CLOUD SARKIT / PENDANT', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1706-r20.png', 8736, 10920, 'TRY', 'adet', '{"dimensions":"Q:45 cm\nLed 3 Renk","features":"AKRİLİK VE METALAMALZEMEDEN ÜRETİLMİŞTİR.","bulb":"DS LED","stock":"VAR"}'::jsonb, 20)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1693', 'RANDOM SARKIT/PENDANT', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1693-r21.png', 5460, 6825, 'TRY', 'adet', '{"dimensions":"28 Q","features":"Amorf şekil  cam  malzemeden üretilmiştir.\nRenk seçenekleri Bal, Füme , Şeffaf","bulb":"G9","stock":"YOK"}'::jsonb, 21)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1693-F', 'RANDOM LAMBADER/FLOOR LAMP', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1693-F-r22.png', 28392, 35490, 'TRY', 'adet', '{"dimensions":"165X40 CM","features":"Amorf şekil  cam  ve metal gövdeden oluşmaktadır.\nRenk seçenekleri Bal, Füme , Şeffaf","bulb":"E14","stock":"YOK"}'::jsonb, 22)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1694', '87 SARKIT/PENDANT', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1694-r23.png', 10920, 13650, 'TRY', 'adet', '{"dimensions":"H:80\nQ:30","features":"El YAPIMI Cam  malzemeden üretilmiştir.\nRenk seçenekleri BEYAZ","bulb":"DS LED","stock":"VAR"}'::jsonb, 23)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1695', 'ORIJIN DERİ SARKIT/PENDANT', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1695-r25.png', 6552, 8190, 'TRY', 'adet', '{"dimensions":"H:115 CM \nQ: 15 CM","features":"Deri kumaş ve Cam Kristal malzemeden üretilmiştir.\nSiyah Deri\nKahve Deri\nBeyaz Deri","bulb":"G9 LED","stock":"YOK"}'::jsonb, 25)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1857-A', 'MOON LIGHT YUVARLAK SARKIT/PENDANT', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1857-A-r26.png', 10046.4, 12558, 'TRY', 'adet', '{"dimensions":"30 Q","features":"ÜRÜN CAM MALZEMEDEN OLUŞMAKTADIR \nAÇIK KAHVE RENGİ \nLED\n3000 K IŞIK RENGİ","bulb":"DS LED","stock":"VAR"}'::jsonb, 26)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1857- B', 'MOON LIGHT YUVARLAK SARKIT/PENDANT', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1857--B-r27.png', 14414.4, 18018, 'TRY', 'adet', '{"dimensions":"40 Q","features":"ÜRÜN CAM MALZEMEDEN OLUŞMAKTADIR \nAÇIK KAHVE RENGİ \nLED\n3000 K IŞIK RENGİ","bulb":"DS LED","stock":"VAR"}'::jsonb, 27)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1858-A', 'MOON LIGHT YUVARLAK SARKIT/PENDANT', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1858-A-r28.png', 10046.4, 12558, 'TRY', 'adet', '{"dimensions":"30 Q","features":"ÜRÜN CAM MALZEMEDEN OLUŞMAKTADIR \nAÇIK KAHVE RENGİ \nLED\n3000 K IŞIK RENGİ","bulb":"DS LED","stock":"VAR"}'::jsonb, 28)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1858-B', 'MOON LIGHT YUVARLAK SARKIT/PENDANT', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1858-B-r29.png', 14414.4, 18018, 'TRY', 'adet', '{"dimensions":"40 Q","features":"ÜRÜN CAM MALZEMEDEN OLUŞMAKTADIR \nAÇIK KAHVE RENGİ \nLED\n3000 K IŞIK RENGİ","bulb":"DS LED","stock":"VAR"}'::jsonb, 29)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1859-A', 'MOON LIGHT LİNER SARKIT/PENDANT', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1859-A-r30.png', 10920, 13650, 'TRY', 'adet', '{"dimensions":"55X15 CM","features":"ÜRÜN CAM MALZEMEDEN OLUŞMAKTADIR \nAÇIK KAHVE RENGİ \nLED\n3000 K IŞIK RENGİ","bulb":"DS LED","stock":"VAR"}'::jsonb, 30)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1859-B', 'MOON LIGHT LİNER SARKIT/PENDANT', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1859-B-r31.png', 13104, 16380, 'TRY', 'adet', '{"dimensions":"80X15 CM","features":"ÜRÜN CAM MALZEMEDEN OLUŞMAKTADIR \nAÇIK KAHVE RENGİ \nLED\n3000 K IŞIK RENGİ","bulb":"DS LED","stock":"VAR"}'::jsonb, 31)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1860-A', 'WOLF ARMATÜR', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1860-A-r32.png', 6879.6, 8599.5, 'TRY', 'adet', '{"dimensions":"28 Q","features":"ÜRÜN CAM MALZEMEDEN OLUŞMAKTADIR \nSİYAH KASA - FÜME CAM \n3000 K GÜNIŞIĞI","bulb":"DS LED","stock":"VAR"}'::jsonb, 32)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1860-B', 'WOLF ARMATÜR', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1860-B-r33.png', 4586.4, 5733, 'TRY', 'adet', '{"dimensions":"20 Q","features":"ÜRÜN CAM MALZEMEDEN OLUŞMAKTADIR \nSİYAH KASA - FÜME CAM \n3000 K GÜNIŞIĞI","bulb":"DS LED","stock":"VAR"}'::jsonb, 33)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1696', 'OCHRE SARKIT/PENDANT', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1696-r34.png', 6552, 8190, 'TRY', 'adet', '{"dimensions":"20 Q","features":"Cam Kristal malzemeden üretilmiştir.","bulb":"G9 LED","stock":"YOK"}'::jsonb, 34)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1697', 'MİRA AVİZE/CHANDELIER', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1697-r35.png', 26208, 32760, 'TRY', 'adet', '{"dimensions":"80X50 CM","features":"Ürün metal tel malzemeden üretilmiş olup,kapsül ledler ve kristal taştan üretilmektedir. Renk krom şeffaf","bulb":"LED","stock":"VAR"}'::jsonb, 35)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1247', 'VIBIA COSMOC SARKIT/PENDANT', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1247-r40.png', 19656, 24570, 'TRY', 'adet', '{"dimensions":"60X 120 CM","features":"POLİKARBON  malzemeden üretilmiştir.\n İstenilen  renk üretilmektedir.","bulb":"DS LED","stock":"VAR"}'::jsonb, 40)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1746', 'KOSMİ APLİK', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1746-r43.png', 4732, 5915, 'TRY', 'adet', '{"dimensions":"40 Q","features":"METAL MALZEMEDEN ÜRETİLMİŞTİR.","bulb":"G9","stock":"YOK"}'::jsonb, 43)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1747', 'PARED APLİK', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1747-r44.png', 4076.8, 5096, 'TRY', 'adet', '{"dimensions":"30X50X10 CM","features":"METAL MALZEMEDEN ÜRETİLMİŞTİR.","bulb":"G9","stock":"YOK"}'::jsonb, 44)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1748', 'LAMPARA APLİK', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1748-r45.png', 4804.8, 6006, 'TRY', 'adet', '{"dimensions":"35X35X11 CM","features":"METAL VE HASIR MALZEMEDEN ÜRETİLMİŞTİR.","bulb":"E27","stock":"YOK"}'::jsonb, 45)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1749', 'MODO APLİK', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1749-r46.png', 1747.2, 2184, 'TRY', 'adet', '{"dimensions":"18X80 CM","features":"METAL VE CAM MALZEMEDEN ÜRETİLMİŞTİR.","bulb":"E27","stock":"YOK"}'::jsonb, 46)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1750', 'SİDE APLİK', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1750-r47.png', 3931.2, 4914, 'TRY', 'adet', '{"dimensions":"35X35X30","features":"METAL MALZEMEDEN ÜRETİLMİŞTİR.","bulb":"E27","stock":"YOK"}'::jsonb, 47)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1751', 'NEGLO APLİK', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1751-r48.png', 2620.8, 3276, 'TRY', 'adet', '{"dimensions":"25X20 30 CM","features":"METAL MALZEMEDEN ÜRETİLMİŞTİR.","bulb":"E27","stock":"YOK"}'::jsonb, 48)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1752-1', 'FUT APLİK', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1752-1-r49.png', 2038.4, 2548, 'TRY', 'adet', '{"dimensions":"50X15X18 CM","features":"METAL MALZEMEDEN ÜRETİLMİŞTİR.","bulb":"E14","stock":"YOK"}'::jsonb, 49)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1752-2', 'FUT APLİK', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1752-2-r50.png', 2038.4, 2548, 'TRY', 'adet', '{"dimensions":"25X15X25  CM","features":"METAL MALZEMEDEN ÜRETİLMİŞTİR.","bulb":"E14","stock":"YOK"}'::jsonb, 50)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1753', 'MERCUR APLİK', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1753-r51.png', 4804.8, 6006, 'TRY', 'adet', '{"dimensions":"40X15X28 CM","features":"METAL VE İCİ DOLU CAM MALZEMEDEN ÜRETİLMİŞTİR.","bulb":"E14","stock":"YOK"}'::jsonb, 51)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1854-A', 'KNIT SARKIT/PENDANT', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1854-A-r52.png', 14560, 18200, 'TRY', 'adet', '{"dimensions":"D:45 CM \nH: 28 CM","features":"Ürün akrilik ve kumaş  malzemeden üretilmektedir.\ntek renktir\nPOWER LED 50 W\nRENK: BEJ","bulb":"DS LED","stock":"VAR"}'::jsonb, 52)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1854-B', 'KNIT SARKIT/PENDANT', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1854-B-r53.png', 16016, 20020, 'TRY', 'adet', '{"dimensions":"D:45 CM \nH: 35 CM","features":"Ürün akrilik ve kumaş  malzemeden üretilmektedir.\ntek renktir\nPOWER LED 60 W\nRENK: BEJ","bulb":"DS LED","stock":"VAR"}'::jsonb, 53)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1854-C', 'KNIT SARKIT/PENDANT', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1854-C-r54.png', 26208, 32760, 'TRY', 'adet', '{"dimensions":"D:65 CM \nH: 39 CM","features":"Ürün akrilik ve kumaş  malzemeden üretilmektedir.\ntek renktir\nPOWER LED 80 W\nRENK: BEJ","bulb":"DS LED","stock":"VAR"}'::jsonb, 54)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1854-D', 'KNIT SARKIT/PENDANT', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1854-D-r55.png', 17472, 21840, 'TRY', 'adet', '{"dimensions":"D:45 CM \nH: 44 CM","features":"Ürün akrilik ve kumaş  malzemeden üretilmektedir.\ntek renktir\nPOWER LED 60 W\nRENK: BEJ","bulb":"DS LED","stock":"VAR"}'::jsonb, 55)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1854-E', 'KNIT PLAFONYER /PENDANT', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1854-E-r56.png', 14560, 18200, 'TRY', 'adet', '{"dimensions":"D:45 CM \nH: 33,5 CM","features":"Ürün akrilik ve kumaş  malzemeden üretilmektedir.\ntek renktir\nPOWER LED 50 W\nRENK: BEJ","bulb":"DS LED","stock":"VAR"}'::jsonb, 56)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1854-F', 'KNIT PLAFONYER /PENDANT', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1854-F-r57.png', 16016, 20020, 'TRY', 'adet', '{"dimensions":"D:45 CM \nH: 41,5 CM","features":"Ürün akrilik ve kumaş  malzemeden üretilmektedir.\ntek renktir\nPOWER LED 60 W\nRENK: BEJ","bulb":"DS LED","stock":"VAR"}'::jsonb, 57)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1854-G', 'KNIT PLAFONYER /PENDANT', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1854-G-r58.png', 17472, 21840, 'TRY', 'adet', '{"dimensions":"D:45 CM \nH: 50 CM","features":"Ürün akrilik ve kumaş  malzemeden üretilmektedir.\ntek renktir\nPOWER LED 80 W\nRENK: BEJ","bulb":"DS LED","stock":"VAR"}'::jsonb, 58)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1854-T1', 'KNIT YER LAMBASI', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1854-T1-r59.png', 18928, 23660, 'TRY', 'adet', '{"dimensions":"D:45 CM \nH: 37,5 CM","features":"Ürün akrilik ve kumaş  malzemeden üretilmektedir.\ntek renktir\nPOWER LED 50 W\nRENK: BEJ","bulb":"DS LED","stock":"VAR"}'::jsonb, 59)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1854-T2', 'KNIT YER LAMBASI', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1854-T2-r60.png', 18928, 23660, 'TRY', 'adet', '{"dimensions":"D:45 CM \nH: 45 CM","features":"Ürün akrilik ve kumaş  malzemeden üretilmektedir.\ntek renktir\nPOWER LED 60 W\nRENK: BEJ","bulb":"DS LED","stock":"VAR"}'::jsonb, 60)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1854-T3', 'KNIT YER LAMBASI', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1854-T3-r61.png', 18928, 23660, 'TRY', 'adet', '{"dimensions":"D:45 CM \nH: 54 CM","features":"Ürün akrilik ve kumaş  malzemeden üretilmektedir.\ntek renktir\nPOWER LED 80 W\nRENK: BEJ","bulb":"DS LED","stock":"VAR"}'::jsonb, 61)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1854-T4', 'KNIT YER LAMBASI', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1854-T4-r62.png', 27664, 34580, 'TRY', 'adet', '{"dimensions":"D:65 CM \nH: 50 CM","features":"Ürün akrilik ve kumaş  malzemeden üretilmektedir.\ntek renktir\nPOWER LED 80 W\nRENK: BEJ","bulb":"DS LED","stock":"VAR"}'::jsonb, 62)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1854-L', 'KNIT LAMDER/FLOOR LAMP', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1854-L-r63.png', 20384, 25480, 'TRY', 'adet', '{"dimensions":"D:45 CM \nH:177 CM","features":"Ürün akrilik ve kumaş  malzemeden üretilmektedir.\ntek renktir\nPOWER LED 50 W\nRENK: BEJ","bulb":"DS LED","stock":"VAR"}'::jsonb, 63)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1271', 'MESHMATIC SARKIT/PENDANT', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1271-r64.png', 13104, 16380, 'TRY', 'adet', '{"dimensions":"40 Q","features":"Ürün metal malzemeden üretilmektedir.\nBakır,krom,eskitme renkleri mevcuttur.","bulb":"DS LED","stock":"VAR"}'::jsonb, 64)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1272', 'MESHMATIC SARKIT/PENDANT', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1272-r65.png', 22276.8, 27846, 'TRY', 'adet', '{"dimensions":"60 Q","features":"Ürün metal malzemeden üretilmektedir.\nBakır,krom,eskitme renkleri mevcuttur.","bulb":"DS LED","stock":"VAR"}'::jsonb, 65)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1273', 'MESHMATIC SARKIT/PENDANT', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1273-r66.png', 53508, 66885, 'TRY', 'adet', '{"dimensions":"90 Q","features":"Ürün metal malzemeden üretilmektedir.\nBakır,krom,eskitme renkleri mevcuttur.","bulb":"DS LED","stock":"VAR"}'::jsonb, 66)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1647', 'SPOKES SARKIT/PENDANT', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1647-r67.png', 9360, 11700, 'TRY', 'adet', '{"dimensions":"38X38 CM","features":"Ürün metal malzemeden üretilmektedir.\nSiyah , Beyaz,Bakır,Krom,Eskitme renkleri mevcuttur","bulb":"LED","stock":"VAR"}'::jsonb, 67)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1856-A', 'İSKANDINAV WABİ SABİ SARKIT/PENDANT', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1856-A-r71.png', 9027.2, 11284, 'TRY', 'adet', '{"dimensions":"50 Q","features":"Malzeme\nPolyestr\n Renk: GRİ","bulb":"E27","stock":"YOK"}'::jsonb, 71)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1856-B', 'İSKANDINAV WABİ SABİ SARKIT/PENDANT', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1856-B-r72.png', 10920, 13650, 'TRY', 'adet', '{"dimensions":"60 Q","features":"Malzeme\nPolyestr\n Renk: GRİ","bulb":"E27","stock":"YOK"}'::jsonb, 72)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1856-C', 'İSKANDINAV WABİ SABİ SARKIT/PENDANT', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1856-C-r73.png', 20238.4, 25298, 'TRY', 'adet', '{"dimensions":"80 Q","features":"Malzeme\nPolyestr\n Renk: GRİ","bulb":"E27","stock":"YOK"}'::jsonb, 73)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1737-A', 'RENOVA SARKIT', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1737-A-r74.png', 3822, 4777.5, 'TRY', 'adet', '{"dimensions":"D:18  CM","features":"ÜRÜN CAM MALZEMEDEN ÜRETİLMEKTEDİR. \nFÜME RENK","bulb":"DS LED","stock":"VAR"}'::jsonb, 74)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1737-B', 'RENOVA SARKIT', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1737-B-r75.png', 3822, 4777.5, 'TRY', 'adet', '{"dimensions":"20 Q","features":"ÜRÜN CAM MALZEMEDEN ÜRETİLMEKTEDİR. \nFÜME RENK","bulb":"DS LED","stock":"VAR"}'::jsonb, 75)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1737-C', 'RENOVA SARKIT', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1737-C-r76.png', 5096, 6370, 'TRY', 'adet', '{"dimensions":"30 Q","features":"ÜRÜN CAM MALZEMEDEN ÜRETİLMEKTEDİR. \nFÜME RENK","bulb":"DS LED","stock":"VAR"}'::jsonb, 76)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1737-D', 'RENOVA SARKIT', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1737-D-r77.png', 3822, 4777.5, 'TRY', 'adet', '{"dimensions":"30 Q","features":"ÜRÜN CAM MALZEMEDEN ÜRETİLMEKTEDİR. \nBAL RENK","bulb":"DS LED","stock":"VAR"}'::jsonb, 77)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND173O-A', 'BUĞU SARKIT /PENDANT', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND173O-A-r78.png', 6988.8, 8736, 'TRY', 'adet', '{"dimensions":"D:32,5X42 CM","features":"ÜRÜN CAM MALZEMEDEN ÜRETİLMEKTEDİR.","bulb":"DS LED","stock":"VAR"}'::jsonb, 78)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1730-B', 'BUĞU SARKIT /PENDANT', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1730-B-r79.png', 6988.8, 8736, 'TRY', 'adet', '{"dimensions":"D:325 X 55 CM","features":"ÜRÜN CAM MALZEMEDEN ÜRETİLMEKTEDİR.","bulb":"DS LED","stock":"VAR"}'::jsonb, 79)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1730-C', 'BUĞU SARKIT /PENDANT', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1730-C-r80.png', 7280, 9100, 'TRY', 'adet', '{"dimensions":"D:32,5X60 CM","features":"ÜRÜN CAM MALZEMEDEN ÜRETİLMEKTEDİR.","bulb":"DS LED","stock":"VAR"}'::jsonb, 80)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1738-A', 'DEK ABAJUR', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1738-A-r81.png', 9100, 11375, 'TRY', 'adet', '{"dimensions":"M 33 CM","features":"ÜRÜN CAM MALZEMEDEN ÜRETİLMEKTEDİR.\nFÜME BAL RENKTİR","bulb":"DS LED","stock":"VAR"}'::jsonb, 81)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1738-B', 'DEK ABAJUR', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1738-B-r82.png', 9100, 11375, 'TRY', 'adet', '{"dimensions":"33 CM","features":"ÜRÜN CAM MALZEMEDEN ÜRETİLMEKTEDİR.\nFÜME ŞEFFAF RENKTİR","bulb":"DS LED","stock":"VAR"}'::jsonb, 82)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1739', 'OKTAVYA ABAJUR', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1739-r83.png', 0, 0, 'TRY', 'adet', '{"dimensions":"26X40 CM","features":"ÜRÜN CAM MALZEMEDEN ÜRETİLMEKTEDİR.\nAMBER  ŞEFFAF RENKTİR","bulb":"E27","stock":"YOK"}'::jsonb, 83)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND132-A', 'COFFEI SARKIT', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND132-A-r84.png', 6442.8, 8053.5, 'TRY', 'adet', '{"dimensions":"Ø-23 CM XH24 CM","features":"ÜRÜN CAM MALZEMEDEN ÜRETİLMEKTEDİR.\nBAL -PİRİNÇ RENKTİR.","bulb":"DS LED","stock":"VAR"}'::jsonb, 84)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1328-B', 'COFFEI SARKIT', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1328-B-r85.png', 6770.4, 8463, 'TRY', 'adet', '{"dimensions":"33 CM","features":"ÜRÜN CAM MALZEMEDEN ÜRETİLMEKTEDİR.\nBAL -PİRİNÇ RENKTİR.","bulb":"DS LED","stock":"VAR"}'::jsonb, 85)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1328-B/A', 'COFFEI SARKIT', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1328-B-A-r86.png', 6770.4, 8463, 'TRY', 'adet', '{"dimensions":"33 CM","features":"ÜRÜN CAM MALZEMEDEN ÜRETİLMEKTEDİR.\nFÜME -PİRİNÇ RENKTİR.","bulb":"DS LED","stock":"VAR"}'::jsonb, 86)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1328-C', 'COFFEI ABAJUR', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1328-C-r87.png', 6188, 7735, 'TRY', 'adet', '{"dimensions":"23 CM","features":"ÜRÜN CAM MALZEMEDEN ÜRETİLMEKTEDİR.\nFÜME -PİRİNÇ RENKTİR.","bulb":"DS LED","stock":"VAR"}'::jsonb, 87)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1328-D', 'COFFEI LAMBADER', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1328-D-r88.png', 12558, 15697.5, 'TRY', 'adet', '{"dimensions":"33X145 CM","features":"ÜRÜN CAM MALZEMEDEN ÜRETİLMEKTEDİR.\nFÜME -PİRİNÇ \nBAL-PİRİNÇ RENKLERİ MEVCUT","bulb":"DS LED","stock":"VAR"}'::jsonb, 88)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1743', 'ŞAPKA LAMBADER', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1743-r89.png', 13832, 17290, 'TRY', 'adet', '{"dimensions":"140X40X40 CM","features":"ÜRÜN MERMER VE METAL MALZEMEDEN ÜRETİLMEKTEDİR.","bulb":"E14","stock":"YOK"}'::jsonb, 89)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1744', 'ŞAPKA KONİ LAMBADER', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1744-r90.png', 12376, 15470, 'TRY', 'adet', '{"dimensions":"140X40X40 CM","features":"ÜRÜN MERMER VE METAL MALZEMEDEN ÜRETİLMEKTEDİR.","bulb":"G9","stock":"YOK"}'::jsonb, 90)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1745', 'MODO LAMBADER 2L', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1745-r91.png', 12740, 15925, 'TRY', 'adet', '{"dimensions":"155X18X40 CM","features":"ÜRÜN MERMER VE METAL MALZEMEDEN ÜRETİLMEKTEDİR.","bulb":"E14","stock":"YOK"}'::jsonb, 91)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1731', 'SPOT LAMBADER /FLOOR LAMP', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1731-r92.png', 12230.4, 15288, 'TRY', 'adet', '{"dimensions":"160X40 CM","features":"MERMER VE METAL MALZEMEDEN ÜRETİLMEKTEDİR. YÖNLENDİRİLEBİLİR 3 KAFADAN OLUŞMAKTADIR.","bulb":"GU10","stock":"VAR"}'::jsonb, 92)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1742', 'SEHPA LAMBADER', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1742-r93.png', 18200, 22750, 'TRY', 'adet', '{"dimensions":"133 X 40 CM","features":"ÜRÜN MERMER VE METAL MALZEMEDEN ÜRETİLMEKTEDİR.","bulb":"GU10","stock":"YOK"}'::jsonb, 93)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1741', 'CHIL SARKIT', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1741-r95.png', 6552, 8190, 'TRY', 'adet', '{"dimensions":"28 CM","features":"MERMER VE METAL MALZEMEDEN ÜRETİLMEKTEDİR. ŞEFFAF PİRİNÇ RENK","bulb":"DSLED","stock":"VAR"}'::jsonb, 95)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1740-A', 'GRAND SARKIT', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1740-A-r96.png', 3931.2, 4914, 'TRY', 'adet', '{"dimensions":"23 X 13 CM","features":"ÜRÜN CAM MAZLEMEDEN ÜRETİLMEKTEDİR. \nÜRÜN KENDİNDEN LEDLİDİR.","bulb":"DSLED","stock":"VAR"}'::jsonb, 96)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1740-B', 'GRAND SARKIT', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1740-B-r97.png', 4368, 5460, 'TRY', 'adet', '{"dimensions":"16 X 17 CM","features":"ÜRÜN CAM MAZLEMEDEN ÜRETİLMEKTEDİR. \nÜRÜN KENDİNDEN LEDLİDİR.","bulb":"DSLED","stock":"VAR"}'::jsonb, 97)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1740-C', 'GRAND SARKIT', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1740-C-r98.png', 5241.6, 6552, 'TRY', 'adet', '{"dimensions":"28 X 10 CM","features":"ÜRÜN CAM MAZLEMEDEN ÜRETİLMEKTEDİR. \nÜRÜN KENDİNDEN LEDLİDİR.","bulb":"DSLED","stock":"VAR"}'::jsonb, 98)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1732', 'SPOT LAMBADER 2 /FLOOR LAMP', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1732-r99.png', 7571.2, 9464, 'TRY', 'adet', '{"dimensions":"160X32 CM","features":"MERMER VE METAL MALZEMEDEN ÜRETİLMEKTEDİR. YÖNLENDİRİLEBİLİR METAL ŞAPKADAN OLUŞMAKTADIR.","bulb":"E27","stock":"YOK"}'::jsonb, 99)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1756', 'YU APLİK', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1756-r100.png', 5824, 7280, 'TRY', 'adet', '{"dimensions":"41X28X14 CM","features":"CAM VE METAL MALZEMEDEN ÜRETİLMEKTEDİR. YÖNLENDİRİLEBİLİR METAL ŞAPKADAN OLUŞMAKTADIR.","bulb":"LED","stock":"VAR"}'::jsonb, 100)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1757', 'IP APLİK', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1757-r101.png', 6497.4, 8121.75, 'TRY', 'adet', '{"dimensions":"50X7X10 CM","features":"MERMER GÖRÜNÜM AKRİLİK MALZEMEDEN ÜRETİLMİŞTİRÇ METAL GÖVDESİ MEVCUTTUR.RENK ESKİTME DİR","bulb":"LED","stock":"VAR"}'::jsonb, 101)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1758', 'Q APLİK', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1758-r102.png', 7280, 9100, 'TRY', 'adet', '{"dimensions":"43X16,5X4,5 CM","features":"MERMER GÖRÜNÜM AKRİLİK MALZEMEDEN ÜRETİLMİŞTİRÇ METAL GÖVDESİ MEVCUTTUR.RENK ESKİTME DİR","bulb":"LED","stock":"VAR"}'::jsonb, 102)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1393-W', 'OBLUX APLİK/ WALL', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1393-W-r103.png', 8444.8, 10556, 'TRY', 'adet', '{"dimensions":"Q :30 \nH: 59 Cm \nALT :8,5 \nORTA: 9 CM","features":"MERMER  VE METAL MALZMEDEN ÜRETİLMEKTEDİR.","bulb":"G9","stock":"LED"}'::jsonb, 103)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1648', 'VERONA SARKIT/PENDANT', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1648-r104.png', 7800, 9750, 'TRY', 'adet', '{"dimensions":"20x20 CM","features":"Onyx mermer ve metal malzemeden oluşmaktadır.\nÜRÜN TEKLİDİR","bulb":"LED","stock":"VAR"}'::jsonb, 104)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1649', 'ONYX SARKIT/PENDANT', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1649-r107.png', 5678.4, 7098, 'TRY', 'adet', '{"dimensions":"30 Q","features":"ONYX MERMER MALZEMEDEN OLUŞMAKTADIR.İÇ KISIMLARINDAN ŞERİT LED KULLANILMIŞTIR.","bulb":"LED","stock":"VAR"}'::jsonb, 107)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1702', 'FOX MARBLE  SARKIT/PENDANT', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1702-r112.png', 48672, 60840, 'TRY', 'adet', '{"dimensions":"ROZANS 60 Q\nMERMER\n9L \n H 160cm","features":"ONYX MERMER MALZEMEDEN OLUŞMAKTADIR.İÇ KISIMLARINDAN ŞERİT LED KULLANILMIŞTIR. IŞIK RENGİ GÜN IŞIĞIDIR.","bulb":"LED","stock":"VAR"}'::jsonb, 112)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1703', 'ROT MARBLE
SARKIT/PENDANT', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1703-r113.png', 41184, 51480, 'TRY', 'adet', '{"dimensions":"ROZANS 90X37 CM \nMERMER\n7L \n H 160cm","features":"ONYX MERMER MALZEMEDEN OLUŞMAKTADIR.İÇ KISIMLARINDAN ŞERİT LED KULLANILMIŞTIR. IŞIK RENGİ GÜN IŞIĞIDIR.","bulb":"LED","stock":"VAR"}'::jsonb, 113)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1704', 'TOR MARBLE
SARKIT/PENDANT', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1704-r114.png', 47424, 59280, 'TRY', 'adet', '{"dimensions":"ROZANS 80X30 \nMERMER\n7L \n H 160cm\nMermer çap 8 cm","features":"ONYX MERMER MALZEMEDEN OLUŞMAKTADIR.İÇ KISIMLARINDAN ŞERİT LED KULLANILMIŞTIR. IŞIK RENGİ GÜN IŞIĞIDIR.","bulb":"LED","stock":"VAR"}'::jsonb, 114)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1650', 'LOPI APLİK/WALL', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1650-r115.png', 9828, 12285, 'TRY', 'adet', '{"dimensions":"64X14X18","features":"ÜRÜN METAL VE PLEXİ GLAS MALZEMEDEN ÜRETİLMİŞTİR.\nYÜKSEKLİK 64 CM\nEN 14 CM\nDERİNLİK 18 CM","bulb":"LED","stock":"VAR"}'::jsonb, 115)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1651', 'JENGA APLİK/WALL', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1651-r116.png', 3931.2, 4914, 'TRY', 'adet', '{"dimensions":"YÜKSEKLİK : 50 cm","features":"ÜRÜN METAL VE PLEXİ GLAS MALZEMEDEN ÜRETİLMİŞTİR.\nYEŞİL MERMER GÖRÜNÜM\nSİYAH MERMER GÖRÜNÜM\nBEYAZ MERMER GÖRÜNÜM  \nSİYAH-BEYAZ DÜZ RENKLERİ MEVCUTTUR","bulb":"LED","stock":"VAR"}'::jsonb, 116)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1652', 'NOSA APLİK /WALL', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1652-r117.png', 8299.2, 10374, 'TRY', 'adet', '{"dimensions":"YÜKSEKLİK : 75 CM","features":"METAL VE CAM MALZEMEDEN ÜRETİLMEKTEDİR.\n3 ADET 8 Q GLOB CAM BULUNMAKTADIR.","bulb":"G9","stock":"YOK"}'::jsonb, 117)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1653', 'CIRQUE SARKIT/PENDANT', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1653-r118.png', 8386.56, 10483.2, 'TRY', 'adet', '{"dimensions":"25x75 cm","features":"METAL VE CAM MALZEMEDEN ÜRETİLMEKTEDİR.\nTEKLİ SATILMAKTADIR.\n2L-3L YATAY VERSİYONLARI YAPILABİLİR.","bulb":"LED","stock":"VAR"}'::jsonb, 118)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1654', 'EDİE APLİK/WALL', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1654-r119.png', 4076.8, 5096, 'TRY', 'adet', '{"dimensions":"Yükseklik: 14 cm Genişlik: 6 cm","features":"METAL VE CAM MALZEMEDEN ÜRETİLMEKTEDİR.","bulb":"E14","stock":"YOK"}'::jsonb, 119)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1655', 'MERİDIAN SARKIT/PENDANT', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1655-r120.png', 10337.6, 12922, 'TRY', 'adet', '{"dimensions":"20 Q","features":"METAL MERMER VE CAM MALZEMEDEN ÜRETİLMEKTEDİR.","bulb":"E14","stock":"YOK"}'::jsonb, 120)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1656', 'BRACE APLİK/WALL', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1656-r122.png', 8008, 10010, 'TRY', 'adet', '{"dimensions":"45X15 CM","features":"METAL VE MERMER  MALZEMEDEN ÜRETİLMEKTEDİR.","bulb":"LED","stock":"VAR"}'::jsonb, 122)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1657', 'BERAN APLİK/WALL', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1657-r124.png', 10920, 13650, 'TRY', 'adet', '{"dimensions":"33 Q","features":"METAL VE ONYX MERMER  MALZEMEDEN ÜRETİLMEKTEDİR.","bulb":"LED","stock":"VAR"}'::jsonb, 124)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1338/1', 'GEMPA SARKIT/PENDANT', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1338-1-r125.png', 5532.8, 6916, 'TRY', 'adet', '{"dimensions":"30 CM","features":"ÜRÜN CAM VE  MERMER MALZEMEDEN OLUŞMAKTADIR. PİRİNÇ KAPLAMA RENK GÖVCE ŞEFFAF VE BUZ BEYEAZ CAM MERMER BEYAZ  RENKTİR","bulb":"LED","stock":"VAR"}'::jsonb, 125)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1338/2', 'GEMPA SARKIT/PENDANT', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1338-2-r126.png', 9464, 11830, 'TRY', 'adet', '{"dimensions":"60 CM","features":"ÜRÜN CAM VE  MERMER MALZEMEDEN OLUŞMAKTADIR. PİRİNÇ KAPLAMA RENK GÖVCE ŞEFFAF VE BUZ BEYEAZ CAM MERMER BEYAZ  RENKTİR","bulb":"LED","stock":"VAR"}'::jsonb, 126)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1338/3', 'GEMPA SARKIT/PENDANT', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1338-3-r127.png', 13104, 16380, 'TRY', 'adet', '{"dimensions":"90 CM","features":"ÜRÜN CAM VE  MERMER MALZEMEDEN OLUŞMAKTADIR. PİRİNÇ KAPLAMA RENK GÖVCE ŞEFFAF VE BUZ BEYEAZ CAM MERMER BEYAZ  RENKTİR","bulb":"LED","stock":"VAR"}'::jsonb, 127)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1338/4', 'GEMPA SARKIT LİNER FORM/PENDANT', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1338-4-r128.png', 16744, 20930, 'TRY', 'adet', '{"dimensions":"140 CM","features":"ÜRÜN CAM VE  MERMER MALZEMEDEN OLUŞMAKTADIR. PİRİNÇ KAPLAMA RENK GÖVCE ŞEFFAF VE BUZ BEYEAZ CAM MERMER BEYAZ  RENKTİR","bulb":"LED","stock":"VAR"}'::jsonb, 128)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1254', 'PAU SARKIT /PENDANT', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1254-r129.png', 2730, 3412.5, 'TRY', 'adet', '{"dimensions":"25 Q","features":"METAL MALZEMEDEN OLUŞMAKTADIR.\nRAL KODUNA GÖRE İSTENİLEN RENK BOYANMAKTADIR.","bulb":"E27","stock":"YOK"}'::jsonb, 129)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1254/W', 'PAU APLİK/WALL', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1254-W-r130.png', 1856.4, 2320.5, 'TRY', 'adet', '{"dimensions":"ROZANS : 17 CM\nYÜKSEKLİK : 35 CM","features":"METAL MALZEMEDEN OLUŞMAKTADIR.\nRAL KODUNA GÖRE İSTENİLEN RENK BOYANMAKTADIR.","bulb":"E14","stock":"YOK"}'::jsonb, 130)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1310/W', 'GALERİA APLİK/WALL', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1310-W-r131.png', 8008, 10010, 'TRY', 'adet', '{"dimensions":"13 x 14  \nYÜKSEKLİK 62 cm","features":"ÜRÜN MERMER VE METAL MALZEMEDEN ÜRETİLMEKTEDİR.","bulb":"E14","stock":"YOK"}'::jsonb, 131)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1658', 'PİN APLİK / WALL', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1658-r132.png', 4368, 5460, 'TRY', 'adet', '{"dimensions":"30 Q","features":"ÜRÜN  BETON MALZEMEDEN ÜRETİLMEKTEDİR.\nBETON GÖRÜNÜM SİYAH VE BEYAZ TON OLARAK","bulb":"LED","stock":"VAR"}'::jsonb, 132)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1659', 'GREGG SARKIT', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1659-r133.png', 3640, 4550, 'TRY', 'adet', '{"dimensions":"15 Q","features":"CAM MALZEMEDEN ÜRETİLMEKTEDİR.","bulb":"E27","stock":"YOK"}'::jsonb, 133)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1344/A', 'BRASS SARKIT', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1344-A-r137.png', 2912, 3640, 'TRY', 'adet', '{"dimensions":"16X31 CM","features":"METAL VE PLEXİ GLAS MALZEMEDEN ÜRETİLMEKTEDİR.","bulb":"LED","stock":"VAR"}'::jsonb, 137)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1344/B', 'BRASS SARKIT', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1344-B-r138.png', 4056, 5070, 'TRY', 'adet', '{"dimensions":"23X28 CM","features":"METAL VE PLEXİ GLAS MALZEMEDEN ÜRETİLMEKTEDİR.","bulb":"LED","stock":"VAR"}'::jsonb, 138)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1344/C', 'BRASS SARKIT', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1344-C-r139.png', 4264, 5330, 'TRY', 'adet', '{"dimensions":"40X13 CM","features":"METAL VE PLEXİ GLAS MALZEMEDEN ÜRETİLMEKTEDİR.","bulb":"LED","stock":"VAR"}'::jsonb, 139)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1688', 'MAFSALLI SPOT', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1688-r140.jpeg', 2574, 3217.5, 'TRY', 'adet', '{"features":"METAL MALZEMEDEN ÜRETİLMEKTEDİR.","bulb":"GU10","stock":"YOK"}'::jsonb, 140)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1689', 'KATERİNA APLİK', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1689-r141.jpeg', 6240, 7800, 'TRY', 'adet', '{"dimensions":"34x11 cm","features":"METAL  VE PLEXİ MALZEMEDEN ÜRETİLMEKTEDİR.","bulb":"LED","stock":"VAR"}'::jsonb, 141)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1690', 'TRİPOT MASA LAMBASI', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1690-r142.jpeg', 8580, 10725, 'TRY', 'adet', '{"dimensions":"Çap 30\nH:50 cm","features":"METAL  VE AHŞAP MALZEMEDEN ÜRETİLMEKTEDİR.","bulb":"2xE14","stock":"YOK"}'::jsonb, 142)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1763', 'FİLE SARKIT', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1763-r143.png', 5824, 7280, 'TRY', 'adet', '{"dimensions":"54X25 CM","features":"AKRilik malzemeden üretilmiştir. Süt beyazı renginde altın detaylı \nDS LED \n3000K","bulb":"LED","stock":"VAR"}'::jsonb, 143)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1336', 'LOFT SARKIT KÜÇÜK/PENDANT', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1336-r144.png', 6240, 7800, 'TRY', 'adet', '{"dimensions":"ÖLÇÜLER \n 20 Q","features":"Alüminyum  malzemeden üretilmiştir.\n İstenilen  renk üretilmektedir.","bulb":"LED","stock":"VAR"}'::jsonb, 144)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1661', 'PARİS SARKIT/PENDANT', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1661-r146.png', 5096, 6370, 'TRY', 'adet', '{"dimensions":"ÖLÇÜLER","features":"ÜRÜN METAL MALZEMEDEN OLUŞMAKTADIR.","bulb":"LED","stock":"VAR"}'::jsonb, 146)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1314', 'CIRCLE RING 9 L 
SARKIT/PENDANT', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1314-r147.png', 28600, 35750, 'TRY', 'adet', '{"dimensions":"ÖLÇÜLER \n30 Q\n40 Q\n50 Q\n60 Q\n80  Q","features":"Ürün Alüminyum malzemeden üretilmektedir.\nKAPLAMA RENKLERİ EN FAZLA 80 CM KADAR YAPILMAKTADIR.\n80 Q  1 ADET \n60 Q 2 ADET\n50 Q 2 ADET \n40 Q 2 ADET \n30 Q 2 ADET \nÜRÜN ÖLÇEKLENDİRİLEBİLİR İSTENİLEN RENKLER ÜRETİLEBİLMEKTEDİR. BOYALI OLARAK","bulb":"LED","stock":"VAR"}'::jsonb, 147)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND131-B', 'CIRCLE  RING 5 L 
SARKIT/PENDANT', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND131-B-r149.png', 19656, 24570, 'TRY', 'adet', '{"dimensions":"120 CM","features":"Ürün Alüminyum malzemeden üretilmektedir.\nKAPLAMA RENKLERİ EN FAZLA 80 CM KADAR YAPILMAKTADIR.\n80 Q  1 ADET \n60 Q 2 ADET\n40 Q 1 ADET \n30 Q 2 ADET \nÜRÜN ÖLÇEKLENDİRİLEBİLİR İSTENİLEN RENKLER ÜRETİLEBİLMEKTEDİR. BOYALI OLARAK","bulb":"LED","stock":"VAR"}'::jsonb, 149)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1443-W', 'CLIPS APLİK/WALL', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1443-W-r150.png', 12579.84, 15724.8, 'TRY', 'adet', '{"dimensions":"135X88 CM","bulb":"G9","stock":"YOK"}'::jsonb, 150)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1222', 'MEX SARKIT', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1222-r151.png', 5096, 6370, 'TRY', 'adet', '{"dimensions":"Ölçüler\n 15 cm     \n120 cm   \nKelvin\n3000","features":"12 W\nMateryal\nMetal Kasa\nAkrilik Malzeme","bulb":"DS LED","stock":"VAR"}'::jsonb, 151)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1662', 'VİP SARKIT 1L /PENDANT', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1662-r154.png', 1747.2, 2184, 'TRY', 'adet', '{"dimensions":"82X3,5","features":"METAL MALZEMEDEN OLUŞMAKTADIR. İÇİ DOLU PLEXİ KULLANILMIŞTIR.\nRAL KODUNA GÖRE İSTENİLEN RENK BOYANMAKTADIR. KAPLAMA RENKLERİ MEVCUTTUR","bulb":"G9 LED","stock":"VAR"}'::jsonb, 154)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1223', 'SEZAR SARKIT/PENDANT', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1223-r157.png', 16016, 20020, 'TRY', 'adet', '{"dimensions":"70 Q","features":"Metal gövde/Silikon PVC\n1x 40W LED PRİNÇ VE PLATİN KAPLAMA RENK ALTERNATİFİYLE","bulb":"LED","stock":"VAR"}'::jsonb, 157)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1223-A', 'SEZAR SARKIT/PENDANT', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1223-A-r159.png', 16016, 20020, 'TRY', 'adet', '{"dimensions":"120X30","features":"Metal gövde/Silikon PVC\n1x 60W LED PRİNÇ VE PLATİN KAPLAMA RENK ALTERNATİFİYLE\n3000 K","bulb":"LED","stock":"VAR"}'::jsonb, 159)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1223-W', 'SEZAR 
APLİK/WALL', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1223-W-r161.png', 4950.4, 6188, 'TRY', 'adet', '{"dimensions":"W:15\n L:61 \nH:12","features":"Metal gövde/Silikon PVC\n1x 13 W LED PRİNÇ VE PLATİN KAPLAMA RENK ALTERNATİFİYLE","bulb":"LED","stock":"VAR"}'::jsonb, 161)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1663', 'LEATA SARKIT/PENDANT', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1663-r162.png', 2912, 3640, 'TRY', 'adet', '{"dimensions":"Q:20 CM","features":"Ürün plexi ve metal \nmalzemeden oluşmaktadır. \nPleksi glas","bulb":"E27","stock":"var"}'::jsonb, 162)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1216', 'PERA  1L 
SARKIT /PENDANT', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1216-r167.png', 5824, 7280, 'TRY', 'adet', '{"dimensions":"Ölçüler\n60 cm     120 cm","features":"2 FARKLI FORM BULUNMAKTADIR.\nMETAL GÖVDE VE CAM GÖVDE OLARAK 2 SEÇENEKLİDİR.\nÜrün tekli olarak satılmaktadır\nCAM ve METAL  malzemeden oluşmaktadır.\nKendinden ledlidir. \n 10 cm     120 cm","bulb":"LED","stock":"var"}'::jsonb, 167)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1216-2L', 'PERA  2L 
SARKIT /PENDANT', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1216-2L-r169.png', 13832, 17290, 'TRY', 'adet', '{"dimensions":"Ölçüler\n 70 cm     120 cm","features":"METAL GÖVDE VE CAM GÖVDE OLARAK 2 SEÇENEKLİDİR.\nWatt\n2x10w\n Kelvin 3000\nRenk\nAntik\nMateryal\nMetal Kasa\nAkrilik Malzeme","bulb":"samsung SMD Led","stock":"VAR"}'::jsonb, 169)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1216-3L', 'PERA
 SARKIT  3 L', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1216-3L-r170.png', 22568, 28210, 'TRY', 'adet', '{"dimensions":"Ölçüler\n 77 cm     120 cm","features":"METAL GÖVDE VE CAM GÖVDE OLARAK 2 SEÇENEKLİDİR.Materyal\nMetal Kasa\nAkrilik Malzeme\nDuy Tipi\nSamsung SMD Led\nWatt\n3 x 10w\nKelvin\n3000\nPİRİNÇ\nAntik","bulb":"samsung SMD Led","stock":"var"}'::jsonb, 170)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1216-6L', 'PERA SARKIT  6 L', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1216-6L-r171.png', 42952, 53690, 'TRY', 'adet', '{"dimensions":"Ölçüler\n 105 cm     180 cm","features":"METAL GÖVDE VE CAM GÖVDE OLARAK 2 SEÇENEKLİDİR\nMateryal\nMetal Kasa\nAkrilik Malzeme\nDuy Tipi\nSamsung SMD Led\nWatt\n6 x 10w\nKelvin\n3000\nPİRİNÇ\nAntik","bulb":"samsung SMD Led","stock":"var"}'::jsonb, 171)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1260-W', 'PERCH APLİK/WALL LAMP', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1260-W-r172.png', 7134.4, 8918, 'TRY', 'adet', '{"dimensions":"20 X 50 CM","features":"Akrilik malzemeden üretilmiştir. Süt beyazı renginde altın detaylı \nDS LED \n3000K","bulb":"LED","stock":"var"}'::jsonb, 172)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1260-A', 'PERCH TEKLİ SARKIT/PENDANT', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1260-A-r173.png', 9464, 11830, 'TRY', 'adet', '{"dimensions":"22X135 CM","features":"Akrilik malzemeden üretilmiştir. Süt beyazı renginde altın detaylı \nDS LED \n3000K","bulb":"LED","stock":"var"}'::jsonb, 173)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1260-C', 'PERCH 3 L SARKIT/PENDANT', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1260-C-r174.png', 16016, 20020, 'TRY', 'adet', '{"dimensions":"60X135 CM","features":"Akrilik malzemeden üretilmiştir. Süt beyazı renginde altın detaylı \nDS LED \n3000K","bulb":"LED","stock":"var"}'::jsonb, 174)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1260-D', 'PERCH 5 L SARKIT/PENDANT', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1260-D-r175.png', 25480, 31850, 'TRY', 'adet', '{"dimensions":"90X135 CM","features":"Akrilik malzemeden üretilmiştir. Süt beyazı renginde altın detaylı \nDS LED \n3000K","bulb":"LED","stock":"PND1324"}'::jsonb, 175)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1687', 'ITALO APLİK/ WALL', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1687-r176.png', 6697.6, 8372, 'TRY', 'adet', '{"dimensions":"50 Q","features":"Metal malzeme ve kristal taş\n malzemeden oluşmaktadır.","bulb":"E14","stock":"YOK"}'::jsonb, 176)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1413', 'PALMİYE AVİZE', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1413-r180.png', 76440, 95550, 'TRY', 'adet', '{"dimensions":"90X60 cm","features":"Pirinç malzeme ve kristal taş\n malzemeden oluşmaktadır.","bulb":"E14","stock":"YOK"}'::jsonb, 180)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1413-2', 'PALMİYE 2 KATLI  AVİZE', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1413-2-r181.png', 130000, 162500, 'TRY', 'adet', '{"dimensions":"80X90 CM","features":"Pirinç malzeme ve kristal taş\n malzemeden oluşmaktadır.","bulb":"E14","stock":"YOK"}'::jsonb, 181)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1413-W', 'PALMİYE APLIK/WALL', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1413-W-r182.png', 41496, 51870, 'TRY', 'adet', '{"dimensions":"Q 50\nH 20 \nderinlik 35","features":"Pirinç malzeme ve kristal taş\n malzemeden oluşmaktadır.","bulb":"E14","stock":"YOK"}'::jsonb, 182)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1419', 'ALLURE AVİZE/CHANDELIER', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1419-r183.png', 57512, 71890, 'TRY', 'adet', '{"dimensions":"220X70X20 CM","features":"METAL VE CAM MALZEMEDEN OLUŞMAKTADIR.","bulb":"LED","stock":"VAR"}'::jsonb, 183)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1406-A', 'FLORAL AVİZE/CHANDELIER', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1406-A-r184.png', 14560, 18200, 'TRY', 'adet', '{"dimensions":"75X25 CM","features":"METAL VE CAM MALZEMEDEN OLUŞMAKTADIR.","bulb":"G4","stock":"YOK"}'::jsonb, 184)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1406-B', 'FLORAL AVİZE/CHANDELIER', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1406-B-r185.png', 34216, 42770, 'TRY', 'adet', '{"dimensions":"60 Q","features":"METAL VE CAM MALZEMEDEN OLUŞMAKTADIR.","bulb":"G4","stock":"YOK"}'::jsonb, 185)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1406-C', 'FLORAL AVİZE/CHANDELIER', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1406-C-r186.png', 43680, 54600, 'TRY', 'adet', '{"dimensions":"65 X 80 CM","features":"METAL VE CAM MALZEMEDEN OLUŞMAKTADIR.","bulb":"G4","stock":"YOK"}'::jsonb, 186)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1408', 'DROPS AVİZE/CHANDELIER', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1408-r187.png', 26936, 33670, 'TRY', 'adet', '{"dimensions":"100X80 CM","features":"METAL VE KRİSTAL TAŞ KULLANILMIŞTIR.\nİSTENİLEN RENK BOYA YAPILABİLİR","bulb":"G9","stock":"YOK"}'::jsonb, 187)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1418', 'BIRD AVİZE/CHANDELIER', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1418-r188.png', 25480, 31850, 'TRY', 'adet', '{"dimensions":"100X40 CM","features":"METAL VE CAM MALZEMEDEN OLUŞMAKTADIR.","bulb":"G9","stock":"YOK"}'::jsonb, 188)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1619', 'GILT AVİZE/CHANDELIER', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1619-r189.png', 10920, 13650, 'TRY', 'adet', '{"dimensions":"80X90 CM","features":"METAL VE KUMAŞ MALZEMEDEN OLUŞMAKTADIR.","bulb":"E14","stock":"YOK"}'::jsonb, 189)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1424', 'TULIP SARKIT/PENDANT', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1424-r190.png', 40040, 50050, 'TRY', 'adet', '{"dimensions":"50X130 CM","features":"METAL VE PORSELEN CAM  MALZEMEDEN OLUŞMAKTADIR.","bulb":"SPOT LED","stock":"YOK"}'::jsonb, 190)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1346-W', 'CRACK APLİK/WALL', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1346-W-r191.png', 5532.8, 6916, 'TRY', 'adet', '{"dimensions":"40X25 CM","features":"PASLANMAZ  VE PORSELEN CAM  MALZEMEDEN OLUŞMAKTADIR.","bulb":"E14","stock":"YOK"}'::jsonb, 191)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1346', 'CRACK SARKIT/PENDANT', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1346-r192.png', 16016, 20020, 'TRY', 'adet', '{"dimensions":"50X25 CM","features":"PASLANMAZ  VE PORSELEN CAM  MALZEMEDEN OLUŞMAKTADIR.","bulb":"E14","stock":"YOK"}'::jsonb, 192)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1701', 'YENILAY AVİZE/CHANDELIER', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1701-r193.png', 34944, 43680, 'TRY', 'adet', '{"dimensions":"Q:65 CM H:100 CM","features":"ÜRÜN CAM METAL VE PASLANMAZ MALZEMEDEN ÜRETİLMEKTEDİR.TESİSAT ALTIN RENGİ, CAMLAR ŞEFFAFTIR","bulb":"E14","stock":"YOK"}'::jsonb, 193)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1705-W1', 'MARINAL APLİK/ WALL', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1705-W1-r195.png', 6760, 8450, 'TRY', 'adet', '{"dimensions":"24 X 40 X10","features":"METAL MALZEME VE KRİSTAL CAM MALZEMEDEN OLUŞMAKTADIR ÜRÜNDE 7 ADET CAM KULLANILMIŞTIR.İSTENİLEN RENK KAPLAMA YAPILMAKTADIR.","bulb":"E14","stock":"VAR"}'::jsonb, 195)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1705-W2', 'MARINAL APLİK/ WALL', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1705-W2-r196.png', 8840, 11050, 'TRY', 'adet', '{"dimensions":"24 X 40 X10","features":"METAL MALZEME VE KRİSTAL CAM MALZEMEDEN OLUŞMAKTADIR ÜRÜNDE 7 ADET CAM KULLANILMIŞTIR.İSTENİLEN RENK KAPLAMA YAPILMAKTADIR.","bulb":"E14","stock":"VAR"}'::jsonb, 196)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1705', 'MARIYAL YUVARLAK FORM AVİZE/CHANDELIER', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1705-r197.png', 39000, 48750, 'TRY', 'adet', '{"dimensions":"Q: 80","features":"METAL MALZEME VE KRİSTAL CAM MALZEMEDEN OLUŞMAKTADIR .İSTENİLEN RENK KAPLAMA YAPILMAKTADIR.","bulb":"E14","stock":"YOK"}'::jsonb, 197)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1705-B', 'MARIYAL LİNER FORM AVİZE/CHANDELIER', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1705-B-r198.png', 33800, 42250, 'TRY', 'adet', '{"dimensions":"95 X 30 cm","features":"METAL MALZEME VE KRİSTAL CAM MALZEMEDEN OLUŞMAKTADIR .İSTENİLEN RENK KAPLAMA YAPILMAKTADIR.","bulb":"E14","stock":"YOK"}'::jsonb, 198)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1705-C', 'MARIYAL 2 KATLI  AVİZE/CHANDELIER', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1705-C-r199.png', 46800, 58500, 'TRY', 'adet', '{"dimensions":"60 X 30 cm\n40X30 CM","features":"METAL MALZEME VE KRİSTAL CAM MALZEMEDEN OLUŞMAKTADIR .İSTENİLEN RENK KAPLAMA YAPILMAKTADIR.","bulb":"E14","stock":"YOK"}'::jsonb, 199)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1705-D', 'MARIYAL AVİZE/CHANDELIER', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1705-D-r200.png', 23400, 29250, 'TRY', 'adet', '{"dimensions":"40 x40 x50 cm","features":"METAL MALZEME VE KRİSTAL CAM MALZEMEDEN OLUŞMAKTADIR .İSTENİLEN RENK KAPLAMA YAPILMAKTADIR.","bulb":"E14","stock":"YOK"}'::jsonb, 200)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1705-E', 'MARIYAL AVİZE/CHANDELIER', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1705-E-r201.png', 31200, 39000, 'TRY', 'adet', '{"dimensions":"50x50x45 cm","features":"METAL MALZEME VE KRİSTAL CAM MALZEMEDEN OLUŞMAKTADIR .İSTENİLEN RENK KAPLAMA YAPILMAKTADIR.","bulb":"E14","stock":"YOK"}'::jsonb, 201)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1364-W', 'ARCACHO APLİK/WALL', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1364-W-r202.png', 3203.2, 4004, 'TRY', 'adet', '{"dimensions":"22X9 CM","features":"METAL VE CAM MALZEMEDEN ÜRETİLMEKTEDİR\nESKİTME,BAKIR,KROM,ALTIN RENK SEÇENEKLERİ MEVCUT","bulb":"G9","stock":"YOK"}'::jsonb, 202)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1364-W2', 'ARCACHO 3L APLİK/WALL', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1364-W2-r203.png', 9609.6, 12012, 'TRY', 'adet', '{"dimensions":"26X22X9 CM","features":"METAL VE CAM MALZEMEDEN ÜRETİLMEKTEDİR\nESKİTME,BAKIR,KROM,ALTIN RENK SEÇENEKLERİ MEVCUT","bulb":"G9","stock":"YOK"}'::jsonb, 203)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1364', 'ARCACHO AVİZE/CHANDELIER', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1364-r204.png', 54600, 68250, 'TRY', 'adet', '{"dimensions":"80X21 CM","features":"METAL VE CAM MALZEMEDEN ÜRETİLMEKTEDİR\nESKİTME,BAKIR,KROM,ALTIN RENK SEÇENEKLERİ MEVCUT","bulb":"G9","stock":"YOK"}'::jsonb, 204)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1364-II', 'ARCACHO 2 KATLI  AVİZE/CHANDELIER', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1364-r207.png', 127400, 159250, 'TRY', 'adet', '{"dimensions":"150X105 CM","features":"METAL VE CAM MALZEMEDEN ÜRETİLMEKTEDİR\nESKİTME,BAKIR,KROM,ALTIN RENK SEÇENEKLERİ MEVCUT","bulb":"G9","stock":"YOK"}'::jsonb, 207)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1281-I', 'CHAIN SARKIT 2 L /PENDANT', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1281-r208.png', 54600, 68250, 'TRY', 'adet', '{"dimensions":"85X30 CM","features":"METAL MALZEMEDEN ÜRETİLMİŞTİR.\nİSTENİLEN RENK BOYA VE KAPLAMA YAPILMAKTADIR.","bulb":"LED","stock":"YOK"}'::jsonb, 208)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1252-W', 'LAVANTA APLİK/WALL', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1252-W-r210.png', 5720, 7150, 'TRY', 'adet', '{"dimensions":"49 X 24 CM","features":"Alüminyum  malzemeden üretilmiştir.\n İstenilen  renk üretilmektedir.","bulb":"E14","stock":"YOK"}'::jsonb, 210)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1251-W', 'MERCAN APLİK/WALL', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1251-W-r211.png', 5720, 7150, 'TRY', 'adet', '{"dimensions":"Boyutlar \nToplam yükseklik 55 cm \nGövde: 33 X 23 CM\nŞapka: 25X18x14","features":"Alüminyum  malzemeden üretilmiştir.\n İstenilen  renk üretilmektedir.","bulb":"1","stock":"YOK"}'::jsonb, 211)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1250-W', 'KÜP APLİK/WALL', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1250-W-r212.jpeg', 4368, 5460, 'TRY', 'adet', '{"dimensions":"ÖLÇÜLER \n60 CM -17 CM","features":"Alüminyum  malzemeden üretilmiştir.\n İstenilen  renk üretilmektedir.","bulb":"G9 MAX \n20 W","stock":"YOK"}'::jsonb, 212)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND-1249W3', 'YELPAZE  3 L APLİK/WALL', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND-1249W3-r213.png', 8008, 10010, 'TRY', 'adet', '{"dimensions":"ÖLÇÜLER \n83 X 34 CM","features":"Alüminyum  malzemeden üretilmiştir.\n İstenilen  renk üretilmektedir.","bulb":"G9 MAX \n20 W","stock":"YOK"}'::jsonb, 213)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND-1398W', 'YELPAZE  2 L APLİK/WALL', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND-1398W-r214.png', 6988.8, 8736, 'TRY', 'adet', '{"dimensions":"ÖLÇÜLER \n87 X 37 CM","features":"Alüminyum  malzemeden üretilmiştir.\n İstenilen  renk üretilmektedir.","bulb":"G9 MAX \n20 W","stock":"YOK"}'::jsonb, 214)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND-1249W', 'YELPAZE  APLİK/WALL', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND-1249W-r215.png', 3640, 4550, 'TRY', 'adet', '{"dimensions":"ÖLÇÜLER \n37 X 33 CM","features":"Alüminyum  malzemeden üretilmiştir.\n İstenilen  renk üretilmektedir.","bulb":"G9 MAX \n20 W","stock":"YOK"}'::jsonb, 215)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND-1249W2', 'YELPAZE  2 L APLİK/WALL', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND-1249W2-r216.png', 5096, 6370, 'TRY', 'adet', '{"dimensions":"ÖLÇÜLER \n37 X 33 CM","features":"Alüminyum  malzemeden üretilmiştir.\n İstenilen  renk üretilmektedir.","bulb":"G9 MAX \n20 W","stock":"YOK"}'::jsonb, 216)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1249L', 'YELPAZE  
LAMBADER  / FLOORLAMP', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1249L-r217.jpeg', 18200, 22750, 'TRY', 'adet', '{"dimensions":"ÖLÇÜLER \n175  CM","features":"Alüminyum  malzemeden üretilmiştir.\n İstenilen  renk üretilmektedir.","bulb":"G9\nMAX \n20 W X4","stock":"YOK"}'::jsonb, 217)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1249L1', 'YELPAZE  
LAMBADER  / FLOORLAMP', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1249L1-r218.png', 18200, 22750, 'TRY', 'adet', '{"dimensions":"160 CM","features":"Alüminyum  malzemeden üretilmiştir.\n İstenilen  renk üretilmektedir.","bulb":"E14X 3","stock":"YOK"}'::jsonb, 218)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1249-S', 'YELPAZE  SARKIT /PENDANT', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1249-S-r219.png', 12376, 15470, 'TRY', 'adet', '{"dimensions":"60 Q","features":"Alüminyum  malzemeden üretilmiştir.\n İstenilen  renk üretilmektedir.","bulb":"E27\nMAX \n40 W","stock":"YOK"}'::jsonb, 219)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1664', 'YAPRAK  SERİP APLİK/WALL', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1664-r220.jpeg', 18928, 23660, 'TRY', 'adet', '{"dimensions":"ÖLÇÜLER \n55 X 50  CM","features":"Pirinç ve cam  malzemeden üretilmiştir.\n İstenilen  renk üretilmektedir.","bulb":"G9\nMAX \n20 W","stock":"YOK"}'::jsonb, 220)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1664/W', 'YAPRAK  SERİP APLİK/WALL', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1664-W-r221.png', 19656, 24570, 'TRY', 'adet', '{"dimensions":"ÖLÇÜLER \n55 X 50  CM","features":"Pirinç ve cam  malzemeden üretilmiştir.\n İstenilen  renk üretilmektedir.","bulb":"G9\nMAX \n20 W","stock":"YOK"}'::jsonb, 221)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1665', 'LEAF APLİK/WALL', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1665-r223.jpeg', 13832, 17290, 'TRY', 'adet', '{"dimensions":"ÖLÇÜLER \n65 X 45 CM","features":"Pirinç   malzemeden üretilmiştir.\n İstenilen  renk üretilmektedir.","bulb":"E14","stock":"YOK"}'::jsonb, 223)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1270-W', 'AİDA 
APLİK/WALL', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1270-W-r224.jpeg', 6988.8, 8736, 'TRY', 'adet', '{"dimensions":"ÖLÇÜLER \n55 X 35 CM","features":"Alüminyum malzemeden üretilmiştir.\n İstenilen  renk üretilmektedir.","bulb":"G9X4","stock":"VAR"}'::jsonb, 224)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1394-W  1', 'PYSO APLİK/WALL', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1394-W-1-r225.png', 5678.4, 7098, 'TRY', 'adet', '{"dimensions":"17 Q","features":"ÜRÜN PİRİNÇ MALZEMEDEN ÜRETİLMİŞTİR. \nİSTENİLEN RENK KAPLAMA YAPILIR.","bulb":"G9","stock":"YOK"}'::jsonb, 225)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1394-W  2', 'PYSO APLİK/WALL', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1394-W-2-r226.png', 2147.6, 2684.5, 'TRY', 'adet', '{"features":"ÜRÜN METAL MALZEMEDEN ÜRETİLMİŞTİR. \nİSTENİLEN RENK KAPLAMA YAPILIR. DÖVME DESEN KULLANILMIŞTIR.","bulb":"G9","stock":"YOK"}'::jsonb, 226)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1394-W  3', 'PYSO APLİK/WALL', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1394-W-3-r227.png', 2730, 3412.5, 'TRY', 'adet', '{"features":"ÜRÜN METAL MALZEMEDEN ÜRETİLMİŞTİR. \nİSTENİLEN RENK KAPLAMA YAPILIR. DÖVME DESEN KULLANILMIŞTIR.","bulb":"G9","stock":"YOK"}'::jsonb, 227)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1669', 'FRANK
APLİK/ WALL', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1669-r228.png', 12376, 15470, 'TRY', 'adet', '{"dimensions":"ÖLÇÜLER \n55 X 35 CM","features":"METAL VE CAM  malzemeden üretilmiştir.\n İstenilen  renk üretilmektedir.","bulb":"E14","stock":"YOK"}'::jsonb, 228)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1286', 'PIPE BALL', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1286-r229.png', 1274, 1592.5, 'TRY', 'adet', '{"dimensions":"ÖLÇÜLER\n29X5 CM","features":"ÜRÜN METAL METAL MALZEMEDEN ÜRETİLMİŞTİR. \nİSTENİLEN RENK KAPLAMA YAPILIR.","bulb":"E27 X 1 \nMAX 20 W","stock":"YOK"}'::jsonb, 229)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1245-I', 'FREYA SARKIT/PENDANT', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1245-r230.png', 10400, 13000, 'TRY', 'adet', '{"dimensions":"ÖLÇÜLERC\n40 CM","features":"pirinç malzeme\nİSTENİLEN RENK KAPLAMA YAPILIR.","bulb":"E27 X 1 \nMAX 20 W","stock":"YOK"}'::jsonb, 230)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1374', 'SHINE SARKIT/PENDANT', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1374-r234.png', 5096, 6370, 'TRY', 'adet', '{"dimensions":"ÖLÇÜLER\n25X30 CM","features":"ÜRÜN POLİRETAN  ÜRETİLMİŞTİR. \nİSTENİLEN RENK KAPLAMA VE BOYA YAPILIR.","bulb":"E27 X 1 \nMAX 20 W","stock":"YOK"}'::jsonb, 234)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1381', 'SHINE SARKIT/PENDANT', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1381-r235.png', 9464, 11830, 'TRY', 'adet', '{"dimensions":"ÖLÇÜLER\n35X55 CM","features":"ÜRÜN POLİRETAN  ÜRETİLMİŞTİR. \nİSTENİLEN RENK KAPLAMA VE BOYA YAPILIR.","bulb":"E27 X 1 \nMAX 20 W","stock":"YOK"}'::jsonb, 235)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1412', 'POLIRETEN SARKIT/PENDANT', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1412-r236.png', 9464, 11830, 'TRY', 'adet', '{"dimensions":"ÖLÇÜLER\n55 CM","features":"ÜRÜN POLİRETAN  ÜRETİLMİŞTİR. \nİSTENİLEN RENK KAPLAMA VE BOYA YAPILIR.","bulb":"E27 X 1 \nMAX 20 W","stock":"YOK"}'::jsonb, 236)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1671', 'POLIRETEN  APLİK/WALL', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1671-r239.png', 6760, 8450, 'TRY', 'adet', '{"dimensions":"ÖLÇÜLER\n32X11 CM \nİÇ ÖLÇÜ\n19 Q","features":"ÜRÜN POLİRETEN VE GLOB CAM MALZEMEDEN  ÜRETİLMİŞTİR. \nİSTENİLEN RENK KAPLAMA VE BOYA YAPILIR.","bulb":"G9 X 1 \nMAX 10 W","stock":"YOK"}'::jsonb, 239)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1672', 'HENA POLIRETEN  APLİK/WALL', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1672-r240.png', 16016, 20020, 'TRY', 'adet', '{"dimensions":"ÖLÇÜLER\n70 Q","features":"ÜRÜN POLİRETEN VE GLOB CAM MALZEMEDEN  ÜRETİLMİŞTİR. \nİSTENİLEN RENK KAPLAMA VE BOYA YAPILIR.","bulb":"E27 X 1 \nMAX 20 W","stock":"YOK"}'::jsonb, 240)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1673', 'HENA POLIRETEN  APLİK/WALL', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1673-r244.png', 5460, 6825, 'TRY', 'adet', '{"dimensions":"ÖLÇÜLER \n34X24X20 CM","features":"ÜRÜN POLİRETEN VE GLOB CAM MALZEMEDEN  ÜRETİLMİŞTİR. \nİSTENİLEN RENK KAPLAMA VE BOYA YAPILIR.","bulb":"E27 X 1 \nMAX 20 W","stock":"YOK"}'::jsonb, 244)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1231W', 'BUTTERFLY APLİK /WALL', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1231W-r245.png', 2912, 3640, 'TRY', 'adet', '{"dimensions":"ÖLÇÜLER\n22X22","features":"ÜRÜN METAL VE PLEXİ GLASS MALZEMEDEN ÜRETİLMİŞTİR. \nKROM-BAKIR-GOLD RENKLERI MEVCUTTUR","bulb":"DS LED","stock":"VAR"}'::jsonb, 245)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1231', 'BUTTERFLY SARKIT/PENDANT', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1231-r246.png', 3494.4, 4368, 'TRY', 'adet', '{"dimensions":"ÖLÇÜLER\n17X24","features":"ÜRÜN METAL VE PLEXİ GLASS MALZEMEDEN ÜRETİLMİŞTİR. \nKROM-BAKIR-GOLD RENKLERI MEVCUTTUR","bulb":"DS LED","stock":"VAR"}'::jsonb, 246)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1231-5', 'BUTTERFLY 5 SARKIT/PENDANT', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1231-5-r247.png', 17472, 21840, 'TRY', 'adet', '{"dimensions":"ÖLÇÜLER\n35X100","features":"ÜRÜN METAL VE PLEXİ GLASS MALZEMEDEN ÜRETİLMİŞTİR. \nKROM-BAKIR-GOLD RENKLERI MEVCUTTUR","bulb":"DS LED","stock":"VAR"}'::jsonb, 247)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1231L', 'BUTTERFLY SARKIT/PENDANT', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1231L-r248.png', 13832, 17290, 'TRY', 'adet', '{"dimensions":"ÖLÇÜLER\n150X25","features":"ÜRÜN METAL VE PLEXİ GLASS MALZEMEDEN ÜRETİLMİŞTİR. \nKROM-BAKIR-GOLD RENKLERI MEVCUTTUR","bulb":"DS LED","stock":"VAR"}'::jsonb, 248)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1231T', 'BUTTERFLY 
ABAJUR/TABLE', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1231T-r249.png', 6552, 8190, 'TRY', 'adet', '{"dimensions":"ÖLÇÜLER\n18X41","features":"ÜRÜN METAL VE PLEXİ GLASS MALZEMEDEN ÜRETİLMİŞTİR. \nKROM-BAKIR-GOLD RENKLERI MEVCUTTUR","bulb":"DS LED","stock":"VAR"}'::jsonb, 249)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1210-T', 'ECLİPSE ABAJUR/ TABLE LAMP', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1210-T-r250.png', 8008, 10010, 'TRY', 'adet', '{"dimensions":"40X25 CM","features":"ÜRÜN METAL VE  PLEXİ  MALZEMEDENOLUŞMAKTADIR.","bulb":"LED","stock":"VAR"}'::jsonb, 250)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1210-1', 'ECLİPSE SARKIT/PENDANT', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1210-1-r251.png', 8008, 10010, 'TRY', 'adet', '{"dimensions":"18 Q","features":"ÜRÜN METAL VE  PLEXİ  MALZEMEDENOLUŞMAKTADIR.","bulb":"LED","stock":"VAR"}'::jsonb, 251)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1210-2', 'ECLİPSE SARKIT/PENDANT', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1210-2-r252.png', 9464, 11830, 'TRY', 'adet', '{"dimensions":"25 Q","features":"ÜRÜN METAL VE  PLEXİ  MALZEMEDENOLUŞMAKTADIR.","bulb":"LED","stock":"VAR"}'::jsonb, 252)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1274W', 'ERASMUS APLİK /WALL', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1274W-r253.png', 6988.8, 8736, 'TRY', 'adet', '{"dimensions":"Cam ölçüleri 20x15x10","features":"Ürün cam ve metal  malzemeden üretilmektedir.\nİstenilen renk kaplama ve boya yapılabilir.","bulb":"DS LED -E27 DUY SEÇENEKLERİYLE","stock":"var"}'::jsonb, 253)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1274', 'ERASMUS SARKIT /PENDANT', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1274-r254.png', 5824, 7280, 'TRY', 'adet', '{"dimensions":"Cam ölçüleri 20x15x10","features":"Ürün cam ve metal  malzemeden üretilmektedir.\nİstenilen renk kaplama ve boya yapılabilir.","bulb":"DS LED -E27 DUY SEÇENEKLERİYLE","stock":"var"}'::jsonb, 254)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1269W-1', 'GLOBO 
APLİK/WALL', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1269W-1-r257.png', 9464, 11830, 'TRY', 'adet', '{"dimensions":"55X30 CM","features":"ÜRÜN METAL VE İÇİ DOLU CAM MALZEMEDEN OLUŞMAKTADIR. İSTENİLEN RENK KAPLAMA VE BOYA YAPILA BİLİR.","bulb":"G9","stock":"YOK"}'::jsonb, 257)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1269W-2', 'GLOBO 
APLİK/WALL', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1269W-2-r258.png', 9464, 11830, 'TRY', 'adet', '{"dimensions":"25X28X35 CM","features":"ÜRÜN METAL VE İÇİ DOLU CAM MALZEMEDEN OLUŞMAKTADIR. İSTENİLEN RENK KAPLAMA VE BOYA YAPILA BİLİR.","bulb":"G9","stock":"YOK"}'::jsonb, 258)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1269W-3', 'GLOBO 
APLİK/WALL', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1269W-3-r259.png', 16016, 20020, 'TRY', 'adet', '{"dimensions":"80X26 CM","features":"ÜRÜN METAL VE İÇİ DOLU CAM MALZEMEDEN OLUŞMAKTADIR. İSTENİLEN RENK KAPLAMA VE BOYA YAPILA BİLİR.","bulb":"G9","stock":"YOK"}'::jsonb, 259)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1269-A/1', 'GLOBO
 SARKIT/PENDANT', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1269-A-1-r260.png', 18200, 22750, 'TRY', 'adet', '{"dimensions":"40 CM","features":"ÜRÜN METAL VE İÇİ DOLU CAM MALZEMEDEN OLUŞMAKTADIR. İSTENİLEN RENK KAPLAMA VE BOYA YAPILA BİLİR.","bulb":"E14","stock":"YOK"}'::jsonb, 260)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1269-A/2', 'GLOBO
 SARKIT/PENDANT', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1269-A-2-r261.png', 21112, 26390, 'TRY', 'adet', '{"dimensions":"60 CM","features":"ÜRÜN METAL VE İÇİ DOLU CAM MALZEMEDEN OLUŞMAKTADIR. İSTENİLEN RENK KAPLAMA VE BOYA YAPILA BİLİR.","bulb":"E14","stock":"YOK"}'::jsonb, 261)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1269-A/3', 'PND1269-A/3', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1269-A-3-r262.png', 19656, 24570, 'TRY', 'adet', '{"dimensions":"40X90 CM","features":"ÜRÜN METAL VE İÇİ DOLU CAM MALZEMEDEN OLUŞMAKTADIR. İSTENİLEN RENK KAPLAMA VE BOYA YAPILA BİLİR.","bulb":"E14","stock":"YOK"}'::jsonb, 262)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1269-B', 'GLOBO MASA ÜSTÜ
 SARKIT/PENDANT', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1269-B-r263.png', 24752, 30940, 'TRY', 'adet', '{"dimensions":"ÖLÇÜLER\n100X40 CM","features":"ÜRÜN METAL VE İÇİ DOLU CAM MALZEMEDEN OLUŞMAKTADIR. İSTENİLEN RENK KAPLAMA VE BOYA YAPILA BİLİR.","bulb":"G9","stock":"YOK"}'::jsonb, 263)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1269-C', 'GLOBO 
 SARKIT/PENDANT', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1269-C-r264.png', 32760, 40950, 'TRY', 'adet', '{"dimensions":"Q:60","features":"ÜRÜN METAL VE İÇİ DOLU CAM MALZEMEDEN OLUŞMAKTADIR. İSTENİLEN RENK KAPLAMA VE BOYA YAPILA BİLİR.","bulb":"G9","stock":"YOK"}'::jsonb, 264)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1269-T', 'GLOBO ABAJUR/TABLE LAMP', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1269-T-r265.png', 12376, 15470, 'TRY', 'adet', '{"dimensions":"ŞAPKA: 25 Q \nYÜKSEKLİK 50 CM","features":"ÜRÜN METAL VE  İÇİ DOLU  CAM MALZEMEDEN OLUŞMAKTADIR. İSTENİLEN RENK KAPLAMA VE BOYA YAPILA BİLİR. ALT KISIM MERMER DİR.","bulb":"G9","stock":"var"}'::jsonb, 265)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1269-L', 'GLOBO LAMBADER/FLOOR LAMP', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1269-L-r266.png', 26936, 33670, 'TRY', 'adet', '{"dimensions":"ŞAPKA: 46 Q \nYÜKSEKLİK160 CM","features":"ÜRÜN METAL VE  İÇİ DOLU  CAM MALZEMEDEN OLUŞMAKTADIR. İSTENİLEN RENK KAPLAMA VE BOYA YAPILA BİLİR. ALT KISIM MERMER DİR.","bulb":"G9","stock":"YOK"}'::jsonb, 266)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1269', 'GLOBO DRESUAR', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1269-r267.png', 43680, 54600, 'TRY', 'adet', '{"dimensions":"120X90X40 CM","features":"METAL MALZEME VE KRİSTAL CAMDAN ÜRETİLMEKTEDİR.İSTENİLEN RENK KAPLANA BİLİR\nCAMLARI HERRENK BOYANABİLİR","stock":"YOK"}'::jsonb, 267)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1258', 'BOMMA TEKLİ SARKIT', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1258-r268.png', 5678.4, 7098, 'TRY', 'adet', '{"dimensions":"Cam ölçüsü \n32x22","features":"Üfleme cam olup istenilen renk boyana bilir.","bulb":"E27","stock":"var"}'::jsonb, 268)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1217', 'BUBBLE LİNER SARKIT/PENDANT', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1217-r269.png', 20384, 25480, 'TRY', 'adet', '{"dimensions":"100X20 CM","features":"Ürün dış katı bal-füme-bakır  camdan\niçi ise buzlu camdan oluşmaktadır\ncam boyutu 25cm dir..","bulb":"E14","stock":"YOK"}'::jsonb, 269)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1265-W', 'BRITANNICA APLİK', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1265-W-r270.png', 32032, 40040, 'TRY', 'adet', '{"dimensions":"Height: 60 CM\nWidth: 30 CM\nDepth: 17CM","features":"ÜRÜN CAM ,PASLANMAZ VE KRİSTAL MALZEMEDEN ÜRETİLMEKTEDİR. \nRENK:TESİSAT ALTIN, CAM BAL VE FÜME \n\nMETALLER :ALTIN RENGİDİR.","bulb":"G9","stock":"YOK"}'::jsonb, 270)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1265-K', 'BRITANNICA AVİZE', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1265-K-r271.png', 145600, 182000, 'TRY', 'adet', '{"dimensions":"60 Q","features":"ÜRÜN CAM ,PASLANMAZ VE KRİSTAL MALZEMEDEN ÜRETİLMEKTEDİR. \nRENK:TESİSAT ALTIN, CAM BAL VE FÜME \n\nMETALLER :ALTIN RENGİDİR.","bulb":"G9","stock":"YOK"}'::jsonb, 271)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1265-B', 'BRITANNICA AVİZE LİNER FORM', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1265-B-r272.png', 291200, 364000, 'TRY', 'adet', '{"dimensions":"L:150 CM H:72 CM","features":"ÜRÜN CAM ,PASLANMAZ VE KRİSTAL MALZEMEDEN ÜRETİLMEKTEDİR. \nRENK:TESİSAT ALTIN, CAM BAL VE FÜME \n\nMETALLER :ALTIN RENGİDİR.","bulb":"G9","stock":"YOK"}'::jsonb, 272)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1342-W', 'SEDEF APLİK/WALL', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1342-W-r273.png', 13832, 17290, 'TRY', 'adet', '{"dimensions":"50X50 CM","features":"METAL VE GERÇEK SEDEF TAŞINDAN YAPILMAKYADIR.","bulb":"E14","stock":"YOK"}'::jsonb, 273)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1342', 'SEDEF AVİZE /CHANDELIER', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1342-r274.png', 91000, 113750, 'TRY', 'adet', '{"dimensions":"90 Q","features":"METAL VE GERÇEK SEDEF TAŞINDAN YAPILMAKYADIR.","bulb":"E14","stock":"YOK"}'::jsonb, 274)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1371', 'BUTTERFLIES SARKIT/PENDANT', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1371-r275.png', 32760, 40950, 'TRY', 'adet', '{"dimensions":"60X140 CM","features":"PASLANMAZ ROZANS ,KRİSTAL KELEBEK CAMDAN OLUŞMAKTADIR.","bulb":"SPOT LED","stock":"VAR"}'::jsonb, 275)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1596', 'KRİPTO SARKIT/PENDANT', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1596-r276.png', 5532.8, 6916, 'TRY', 'adet', '{"dimensions":"ÖLÇÜLER\n23 X 29","features":"ÜRÜN METAL  MALZEMEDEN ÜRETİLMİŞTİR. \nKİSTAL CAM KULLANILMIŞTIR.İSTENİLEN RENK KAPLAMA YAPILIR.","bulb":"LED","stock":"VAR"}'::jsonb, 276)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1686', 'ICEBERG STONE SARKIT/PENDANT', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1686-r277.png', 5096, 6370, 'TRY', 'adet', '{"features":"ÜRÜN METAL  MALZEMEDEN ÜRETİLMİŞTİR. \nKİSTAL CAM KULLANILMIŞTIR.İSTENİLEN RENK KAPLAMA YAPILIR.","bulb":"LED","stock":"VAR"}'::jsonb, 277)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1219', 'CAMBER SARKIT/PENDANT', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1219-r279.png', 4004, 5005, 'TRY', 'adet', '{"dimensions":"ÖLÇÜLER\n16 CM","features":"ÜRÜN METAL  MALZEMEDEN ÜRETİLMİŞTİR.","bulb":"E14","stock":"YOK"}'::jsonb, 279)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1404', 'NOON SARKIT/PENDANT', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1404-r282.png', 2184, 2730, 'TRY', 'adet', '{"dimensions":"20 Q","features":"ÜRÜN PLEKSİ VE METAL MALZEMEDEN OLUŞMAKTADIR","bulb":"LED","stock":"VAR"}'::jsonb, 282)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1404W', 'NOON APLİK/WALL', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1404W-r286.png', 4004, 5005, 'TRY', 'adet', '{"dimensions":"40 Q","features":"ÜRÜN PLEKSİ VE METAL MALZEMEDEN OLUŞMAKTADIR","bulb":"LED","stock":"var"}'::jsonb, 286)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1294A', 'VİKTOR SARKIT/PENDANT', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1294A-r288.png', 9464, 11830, 'TRY', 'adet', '{"dimensions":"30 Q \nRENK: SOMON","features":"ÜRÜN METAL VE  ÜFLEME CAM MALZEMEDEN OLUŞMAKTADIR.","bulb":"LED","stock":"VAR"}'::jsonb, 288)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1294B', 'VİKTOR SARKIT/PENDANT', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1294B-r289.png', 10192, 12740, 'TRY', 'adet', '{"dimensions":"25 X 50 CM\nRENK :YEŞİL","features":"ÜRÜN METAL VE  CAM MALZEMEDEN OLUŞMAKTADIR.","bulb":"LED","stock":"VAR"}'::jsonb, 289)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1294C', 'VİKTOR SARKIT/PENDANT', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1294C-r290.png', 9828, 12285, 'TRY', 'adet', '{"dimensions":"30 X 46 CM\nRENK :SİYAH","features":"ÜRÜN METAL VE  CAM MALZEMEDEN OLUŞMAKTADIR.","bulb":"LED","stock":"VAR"}'::jsonb, 290)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1272W', 'BLUM APLİK/WALL', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1272W-r291.png', 3276, 4095, 'TRY', 'adet', '{"dimensions":"30 X 40 CM","features":"ÜRÜN METAL VE  POLİRETEN MALZEMEDEN OLUŞMAKTADIR.","bulb":"LED","stock":"VAR"}'::jsonb, 291)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1272-L', 'BLUM LAMBADER/FLOOR LAMP', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1272-L-r293.png', 21112, 26390, 'TRY', 'adet', '{"dimensions":"30X164 CM","features":"ÜRÜN METAL VE  POLİRETEN MALZEMEDEN OLUŞMAKTADIR.","bulb":"LED","stock":"VAR"}'::jsonb, 293)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1410', 'HAT SARKIT/PENDANT', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1410-r294.png', 3276, 4095, 'TRY', 'adet', '{"dimensions":"25X30CM","features":"ÜRÜN CAM VE METAL MALZEMEDEN OLUŞMAKTADIR .İSTENİLEN RENK KAPLANABİLİR","bulb":"E27","stock":"YOK"}'::jsonb, 294)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1399-A', 'KATTY COLOR NEW SARKIT /PENDANT', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1399-A-r295.png', 5678.4, 7098, 'TRY', 'adet', '{"dimensions":"20 CM","features":"ÜRÜN CAM VE METAL MALZEMEDEN OLUŞMAKTADIR .RESİMDEKİ RENKLER MEVCUTTUR","bulb":"E27","stock":"YOK"}'::jsonb, 295)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1399-B', 'KATTY COLOR NEW SARKIT /PENDANT', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1399-B-r296.png', 5532.8, 6916, 'TRY', 'adet', '{"dimensions":"15 CM","features":"ÜRÜN CAM VE METAL MALZEMEDEN OLUŞMAKTADIR .RESİMDEKİ RENKLER MEVCUTTUR","bulb":"E27","stock":"YOK"}'::jsonb, 296)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1399-C', 'KATTY COLOR NEW SARKIT /PENDANT', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1399-C-r297.png', 5678.4, 7098, 'TRY', 'adet', '{"dimensions":"20 CM","features":"ÜRÜN CAM VE METAL MALZEMEDEN OLUŞMAKTADIR .RESİMDEKİ RENKLER MEVCUTTUR","bulb":"E27","stock":"YOK"}'::jsonb, 297)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1399-D', 'KATTY COLOR NEW SARKIT /PENDANT', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1399-D-r298.png', 5678.4, 7098, 'TRY', 'adet', '{"dimensions":"20 CM","features":"ÜRÜN CAM VE METAL MALZEMEDEN OLUŞMAKTADIR .RESİMDEKİ RENKLER MEVCUTTUR","bulb":"E27","stock":"YOK"}'::jsonb, 298)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1211-A', 'KATTY COLOR  SARKIT /PENDANT', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1211-A-r299.png', 6115.2, 7644, 'TRY', 'adet', '{"features":"ÜRÜN CAM VE METAL MALZEMEDEN OLUŞMAKTADIR .RESİMDEKİ RENKLER MEVCUTTUR","bulb":"E27","stock":"YOK"}'::jsonb, 299)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1211-B', 'KATTY COLOR  SARKIT /PENDANT', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1211-B-r300.png', 6552, 8190, 'TRY', 'adet', '{"features":"ÜRÜN CAM VE METAL MALZEMEDEN OLUŞMAKTADIR .RESİMDEKİ RENKLER MEVCUTTUR","bulb":"E27","stock":"YOK"}'::jsonb, 300)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1211-C', 'KATTY COLOR  SARKIT /PENDANT', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1211-C-r301.png', 6916, 8645, 'TRY', 'adet', '{"features":"ÜRÜN CAM VE METAL MALZEMEDEN OLUŞMAKTADIR .RESİMDEKİ RENKLER MEVCUTTUR","bulb":"E27","stock":"YOK"}'::jsonb, 301)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1237', 'KATTY COLOR SEHPA
renk alternatifli', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1237-r302.png', 18200, 22750, 'TRY', 'adet', '{"dimensions":"ÇAP :50 UZUNLUK:53 CM","features":"ÜRÜN CAM VE ALUMİNYUM  MALZEMEDEN OLUŞMAKTADIR .İSTENİLEN RENK ÜRETİLE BİLİR."}'::jsonb, 302)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1677', 'PLASS SARKIT SMALL TEKLİ/PENDANT', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1677-r304.png', 4004, 5005, 'TRY', 'adet', '{"dimensions":"30X20 CM","features":"ÜRÜN ÜFLEME CAM OLUP,İSTENİLEN RENK BOYANMAKTADIR.","bulb":"E27","stock":"YOK"}'::jsonb, 304)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1262', 'PILOVITI SARKIT/PENDANT', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1262-r318.png', 25480, 31850, 'TRY', 'adet', '{"dimensions":"140 Q","features":"METALA MALZEME ÜZERİ STATİK BOYA UYGULANMAKTADIR.\nRAL KODUNA GÖRE İSTENİLEN RENK BOYANMAKTADIR.","bulb":"E27","stock":"YOK"}'::jsonb, 318)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1227', 'CLOUD SARKIT SMALL', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1227-r319.png', 8164, 10205, 'TRY', 'adet', '{"dimensions":"35X20 CM","features":"HİPOALERJENİK POLYESTER FİBER  (PLEXİ),YANMAZ KORDON HALOJEN FREE ,OSRAM LED,RGB IŞIK (KUMANDALI 16 RENK,  SİYAH KORDON AÇMA KAPAMA DÜĞMESİ","bulb":"RGB","stock":"VAR"}'::jsonb, 319)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1226', 'CLOUD SARKIT FANUS', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1226-r322.png', 15600, 19500, 'TRY', 'adet', '{"dimensions":"50 CM","features":"HİPOALERJENİK POLYESTER FİBER  (PLEXİ),YANMAZ KORDON HALOJEN FREE ,OSRAM LED,RGB IŞIK (KUMANDALI 16 RENK,  SİYAH KORDON AÇMA KAPAMA DÜĞMESİ","bulb":"RGB","stock":"VAR"}'::jsonb, 322)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1676', 'ANGELA MASA LAMBASI/TABLE LAMP', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1676-r327.png', 4940, 6175, 'TRY', 'adet', '{"dimensions":"24X43 CM","features":"ÜRÜN METAL VE CAM MALZEMEDEN ÜRETİLMİŞTİR. \n\nİSTENİLEN RENK KAPLAMA YAPILIR.","bulb":"E27","stock":"YOK"}'::jsonb, 327)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1310', 'GALERIA APLİK/WALL', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1310-r329.jpeg', 4222.4, 5278, 'TRY', 'adet', '{"dimensions":"62X13 CM","features":"ÜRÜN METAL VE MERMER MALZEMEDEN ÜRETİLMİŞTİR. \n\nİSTENİLEN RENK KAPLAMA YAPILIR.","bulb":"E14","stock":"YOK"}'::jsonb, 329)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1347-W', 'KRİSTAL APLİK/WALL', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1347-W-r330.png', 8008, 10010, 'TRY', 'adet', '{"dimensions":"55X15 CM","features":"ÜRÜN METAL VE BONCUK MALZEMEDEN ÜRETİLMİŞTİR. \nKUMAŞ ŞAPKA KULLANILMIŞTIR\nİSTENİLEN RENK KAPLAMA YAPILIR.","bulb":"E14","stock":"YOK"}'::jsonb, 330)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1280', 'KATE  APLİK/WALL', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1280-r331.png', 12376, 15470, 'TRY', 'adet', '{"features":"ÜRÜN METAL VE DOĞAL QUARTZ MALZEMEDEN ÜRETİLMİŞTİR. \n\nİSTENİLEN RENK KAPLAMA YAPILIR.","bulb":"LED","stock":"VAR"}'::jsonb, 331)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1298', 'QUARTZ TAŞLI ARMATÜR', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1298-r332.png', 54600, 68250, 'TRY', 'adet', '{"dimensions":"Q: 50 CM \nH: 38 CM","features":"GERÇEK QUARTZ TAŞI KULLANILMIŞTIR. MEKAN AKSANLAR İSTENİLEN RENK ÜRETİLMEKTEDİR.","bulb":"LED","stock":"VAR"}'::jsonb, 332)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1280-V2', 'QUARTZ AVİZE', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1280-V2-r333.png', 65520, 81900, 'TRY', 'adet', '{"dimensions":"Q: 52 CM \nL: 9 CM","features":"GERÇEK QUARTZ TAŞI KULLANILMIŞTIR. MEKAN AKSANLAR İSTENİLEN RENK ÜRETİLMEKTEDİR.","bulb":"LED","stock":"VAR"}'::jsonb, 333)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1280-W', 'QUARTZ APLİK/WALL', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1280-W-r339.png', 16744, 20930, 'TRY', 'adet', '{"dimensions":"H:14 CM \nL: 46 CM","features":"GERÇEK QUARTZ TAŞI KULLANILMIŞTIR. MEKAN AKSANLAR İSTENİLEN RENK ÜRETİLMEKTEDİR.\nIŞIK RENGİ 3000K ,4000K,6500K","bulb":"LED","stock":"VAR"}'::jsonb, 339)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1326-L', 'KRİSTAL AVİZE LİNER/CHANDELIER', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1326-L-r344.png', 27664, 34580, 'TRY', 'adet', '{"dimensions":"110X50 CM","features":"METAL KASNAK ÜZERİNE BONCUK TAŞLARDAN OLUŞMAKTADIR.\nBAKIR,KROM,ALTIN,ESKİTME,SİYAH BOYA RENKLERİ MEVCUTTUR","bulb":"G9 LED","stock":"YOK"}'::jsonb, 344)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1326', 'KRİSTAL AVİZE /CHANDELIER', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1326-r345.png', 25480, 31850, 'TRY', 'adet', '{"dimensions":"Q:50 CM","features":"METAL KASNAK ÜZERİNE BONCUK TAŞLARDAN OLUŞMAKTADIR.\nBAKIR,KROM,ALTIN,ESKİTME,SİYAH BOYA RENKLERİ MEVCUTTUR","bulb":"G9 LED","stock":"YOK"}'::jsonb, 345)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1326-W', 'KRİSTAL AVİZE /CHANDELIER', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1326-W-r346.png', 6552, 8190, 'TRY', 'adet', '{"dimensions":"35X55 CM","features":"METAL KASNAK ÜZERİNE BONCUK TAŞLARDAN OLUŞMAKTADIR.\nBAKIR,KROM,ALTIN,ESKİTME,SİYAH BOYA RENKLERİ MEVCUTTUR","bulb":"G9 LED","stock":"YOK"}'::jsonb, 346)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1239', 'DOĞAL TAŞLI APLİK/WALL', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1239-r347.png', 6988.8, 8736, 'TRY', 'adet', '{"dimensions":"38X18 CM","features":"ÜRÜN METAL VE DOĞAL QUARTZ MALZEMEDEN ÜRETİLMİŞTİR. \n\nİSTENİLEN RENK KAPLAMA YAPILIR.","bulb":"G9","stock":"YOK"}'::jsonb, 347)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND 1218-W', 'MELT APLİK', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND-1218-W-r348.png', 5532.8, 6916, 'TRY', 'adet', '{"dimensions":"28X120 CM","features":"ÜRÜN AKRİLİK MALZEMEDEN ÜRETİLMİŞTİR\nRENK ALTERNATİFİ  BAKIR-KROM-ALTIN -FÜME","bulb":"E27X1","stock":"YOK"}'::jsonb, 348)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND 1218', 'MELT SARKIT/PENDANT', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND-1218-r349.png', 5532.8, 6916, 'TRY', 'adet', '{"dimensions":"28X120 CM","features":"ÜRÜN AKRİLİK VE CAM MALZEME ALTERNATİFİYLE ÜRETİLMİŞTİR\nRENK ALTERNATİFİ  BAKIR-KROM-ALTIN","bulb":"E27X1","stock":"YOK"}'::jsonb, 349)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND 1218-L', 'MELT LAMBADER/FLOOR LAMP', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND-1218-L-r352.png', 35672, 44590, 'TRY', 'adet', '{"features":"ÜRÜN AKRİLİK VE CAM MALZEME ALTERNATİFİYLE ÜRETİLMİŞTİR\nRENK ALTERNATİFİ  BAKIR-KROM-ALTIN","bulb":"E27","stock":"YOK"}'::jsonb, 352)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1427', 'BOB SARKIT', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1427-r353.png', 1820, 2275, 'TRY', 'adet', '{"dimensions":"24.5X18 CM","features":"ÜRÜN  METAL MALZEMEDEN ÜRETİLMEKTEDİR \nRENK ALTERNATİFİ RAL KODUNA GÖRE BOYANABİLİR.\nKABLO BOYLARI SİZLERE GÖRE BELİRLENEBİLİR.","bulb":"E27X1","stock":"YOK"}'::jsonb, 353)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1248', 'KARO APLİK/WALL', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1248-r355.png', 7072, 8840, 'TRY', 'adet', '{"dimensions":"32X45 CM","features":"PASLANMAZ MALZEME ÜZERİ KUMAŞ ŞAPKA KULLANILMIŞTIR.","bulb":"E27X1","stock":"YOK"}'::jsonb, 355)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1240-W', 'CUARDO APLİK/WALL', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1240-W-r356.png', 5096, 6370, 'TRY', 'adet', '{"dimensions":"30X42 CM","features":"METAL MALZEME ÜZERİ KUMAŞ ŞAPKA KULLANILMIŞTIR.","bulb":"E27X1","stock":"YOK"}'::jsonb, 356)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1240-M2', 'CUARDO MASA LAMBASI/TABEL LAMP', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1240-M2-r357.png', 8008, 10010, 'TRY', 'adet', '{"features":"METAL MALZEME ÜZERİ KUMAŞ ŞAPKA KULLANILMIŞTIR.","bulb":"E27X1","stock":"YOK"}'::jsonb, 357)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1240-M', 'CUARDO MASA LAMBASI/TABEL LAMP', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1240-M-r358.png', 5678.4, 7098, 'TRY', 'adet', '{"features":"METAL MALZEME ÜZERİ KUMAŞ ŞAPKA KULLANILMIŞTIR.","bulb":"E27X1","stock":"YOK"}'::jsonb, 358)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1255', 'MODO APLİK NEW /WALL', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1255-r359.png', 1820, 2275, 'TRY', 'adet', '{"dimensions":"30X23 CM","features":"METAL VE CAM MALZEME  OLUŞMAKTADIR. İSTENİLEN RENK KAPLAMA VE BOYA YAPILABİLİR","bulb":"E14X1","stock":"YOK"}'::jsonb, 359)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1257-W', 'MODO APLİK/WALL', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1257-W-r360.png', 1747.2, 2184, 'TRY', 'adet', '{"dimensions":"10 X13X48 CM","features":"METAL VE CAM MALZEME  OLUŞMAKTADIR. İSTENİLEN RENK KAPLAMA VE BOYA YAPILABİLİR\n2 ADET 15 Q CAM KULLANILMAKTADIR","bulb":"E14","stock":"YOK"}'::jsonb, 360)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1257', 'MODO SARKIT/PENDANT', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1257-r361.png', 15600, 19500, 'TRY', 'adet', '{"dimensions":"100X50 CM","features":"METAL VE CAM MALZEME  OLUŞMAKTADIR. İSTENİLEN RENK KAPLAMA VE BOYA YAPILABİLİR\n10 ADET 15 Q CAM KULLANILMAKTADIR","bulb":"E14X10","stock":"YOK"}'::jsonb, 361)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1257-A', 'MODO ARMATÜR/PENDANT', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1257-A-r362.png', 4004, 5005, 'TRY', 'adet', '{"dimensions":"40X50 CM","features":"METAL VE CAM MALZEME  OLUŞMAKTADIR. İSTENİLEN RENK KAPLAMA VE BOYA YAPILABİLİR\n5 ADET 15 Q CAM KULLANILMAKTADIR","bulb":"E14X5","stock":"YOK"}'::jsonb, 362)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1678', 'DAİRE MERMER APLİK/WALL', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1678-r363.png', 3640, 4550, 'TRY', 'adet', '{"dimensions":"DERİNLİK 7CM \nMERMER Q 20 CM\nMETAL DAHİL BİTMİŞ 23 CM","features":"METAL VE MERMER MALZEME  OLUŞMAKTADIR. İSTENİLEN RENK KAPLAMA VE BOYA YAPILABİLİR","bulb":"LED","stock":"VAR"}'::jsonb, 363)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1337', 'GENZA APLİK/WALL', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1337-r364.png', 1274, 1592.5, 'TRY', 'adet', '{"dimensions":"50X15 CM","features":"CAM VE METAL MALZEMEDEN ÜRETİLMEKTEDİR. BAKIR , KROM, ALTIN  KAPLAMA RENKLERİ YAPILABİLİP,İSTENİLEN RAL KODLARINA GÖRE ÜRETİLMEKTEDİR.","bulb":"E14","stock":"YOK"}'::jsonb, 364)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('DSASS', 'SPOT ARMATÜR', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/DSASS-r366.png', 3203.2, 4004, 'TRY', 'adet', '{"dimensions":"60 CM","features":"METAL MALZEMEDEN ÜRETİLMEKTEDİR. BAKIR , KROM, ALTIN , ESKİTME KAPLAMA RENKLERİ YAPILABİLİR.","bulb":"GU10","stock":"YOK"}'::jsonb, 366)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1244', 'EQUNINOX AVİZE', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1244-r367.png', 30680, 38350, 'TRY', 'adet', '{"dimensions":"54 X 72 CM","features":"CAM VE METAL MALZEMEDEN ÜRETİLMEKTEDİR. BELLİ BİR ÖLÇÜYE KADAR BAKIR , KROM, ALTIN  KAPLAMA RENKLERİ YAPILABİLİP,İSTENİLEN RAL KODLARINA GÖRE ÜRETİLMEKTEDİR.","bulb":"G4 LED","stock":"YOK"}'::jsonb, 367)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1245', 'EQUNINOX AVİZE', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1245-r369.png', 46800, 58500, 'TRY', 'adet', '{"dimensions":"160 CM","features":"CAM VE METAL MALZEMEDEN ÜRETİLMEKTEDİR. BELLİ BİR ÖLÇÜYE KADAR BAKIR , KROM, ALTIN  KAPLAMA RENKLERİ YAPILABİLİP,İSTENİLEN RAL KODLARINA GÖRE ÜRETİLMEKTEDİR.","bulb":"G4 LED","stock":"YOK"}'::jsonb, 369)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1682', 'MUSSEL SARKIT 10L', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1682-r373.png', 27664, 34580, 'TRY', 'adet', '{"dimensions":"60X120 CM","features":"MERMER GÖRÜNÜMLÜ CAM VE METAL MALZEMEDEN OLUŞMAKTADIR.","bulb":"E14","stock":"YOK"}'::jsonb, 373)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1683', 'FELIX 7 L', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1683-r375.png', 16120, 20150, 'TRY', 'adet', '{"dimensions":"60X120 CM","features":"MERMER GÖRÜNÜMLÜ CAM VE METAL MALZEMEDEN OLUŞMAKTADIR.","bulb":"E14","stock":"YOK"}'::jsonb, 375)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1684', 'EMILY 5 L', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1684-r376.png', 19656, 24570, 'TRY', 'adet', '{"dimensions":"60X120 CM","features":"MERMER GÖRÜNÜMLÜ CAM VE METAL MALZEMEDEN OLUŞMAKTADIR.","bulb":"E14","stock":"YOK"}'::jsonb, 376)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1264', 'PUL APLİK/WALL', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1264-r378.png', 4732, 5915, 'TRY', 'adet', '{"dimensions":"30 Q","features":"METAL MALZEME LAZER KESİM UYGULANMAKTADIR. İSTENİLEN RENK KAPLANA BİLİNİR","bulb":"G9","stock":"VAR"}'::jsonb, 378)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1264-T', 'PUL ABAJUR/TABLELAMP', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1264-T-r381.png', 7134.4, 8918, 'TRY', 'adet', '{"dimensions":"45X50 CM","features":"METAL MALZEME LAZER KESİM UYGULANMAKTADIR. İSTENİLEN RENK KAPLANA BİLİNİR","bulb":"G9","stock":"YOK"}'::jsonb, 381)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1430', 'GREEN BALL SARKIT/PENDANT', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1430-r382.png', 4368, 5460, 'TRY', 'adet', '{"dimensions":"20 Q","features":"CAM VE METAL MALZEMEDEN OLUŞMAKTADIR.TEKLİ OLARAK SATILMAKTADIR\nİSKENİLİRSE SAKSI OLARAKTA HAZIRLANMAKTADIR","bulb":"E27","stock":"YOK"}'::jsonb, 382)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1430 -W1', 'GREEN BALL APLİK/WALL', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1430--W1-r383.png', 3203.2, 4004, 'TRY', 'adet', '{"dimensions":"18X35CM","features":"CAM VE METAL MALZEMEDEN OLUŞMAKTADIR","bulb":"E27","stock":"YOK"}'::jsonb, 383)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1430 -W2', 'GREEN BALL APLİK/WALL', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1430--W2-r384.png', 5678.4, 7098, 'TRY', 'adet', '{"dimensions":"20X75CM","features":"CAM VE METAL MALZEMEDEN OLUŞMAKTADIR.1 SIRA GLOB CAM ALT KISMI SAKSI OLARAK ÜRETİLMEKTEDİR","bulb":"E27","stock":"YOK"}'::jsonb, 384)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1430 -W3', 'GREEN BALL APLİK/WALL', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1430--W3-r385.png', 5678.4, 7098, 'TRY', 'adet', '{"dimensions":"20X75CM","features":"CAM VE METAL MALZEMEDEN OLUŞMAKTADIR.2 ADET GLOB CAMDAN OLUŞMAKTADIR.","bulb":"E27","stock":"YOK"}'::jsonb, 385)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1341-W', 'YILAN APLİK / WALL', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1341-W-r386.png', 10192, 12740, 'TRY', 'adet', '{"dimensions":"90X29 CM","features":"POLİRETEN MALZEMEDEN ÜRETİLMİŞTİR.METAL ŞAPKADAN OLUŞMAKTADIR.\nBAKIR,ALTIN,KROM RENKLERİNDEN OLUŞMAKTADIR.","bulb":"E14","stock":"YOK"}'::jsonb, 386)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1436-A', 'CBC AVİZE/CHANDELIER', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1436-A-r388.png', 21840, 27300, 'TRY', 'adet', '{"dimensions":"122X83","bulb":"G9","stock":"YOK"}'::jsonb, 388)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1436-B', 'CBC AVİZE/CHANDELIER', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1436-B-r389.png', 25480, 31850, 'TRY', 'adet', '{"dimensions":"119 Q","features":"METAL VE GLOB CAM MALZEMEDEN ÜRETİLMİŞTİR\nİSTENİLEN RENK BOYA VE KAPLAMA YAPILMAKTADIR.","bulb":"G9","stock":"YOK"}'::jsonb, 389)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1718', 'MAYBE APLİK/WALL', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1718-r390.png', 6479.2, 8099, 'TRY', 'adet', '{"dimensions":"68X28X14 cm","features":"METAL VE CAM MALZEMEDEN ÜRETİLMİŞTİR\nİSTENİLEN RENK BOYA VE KAPLAMA YAPILMAKTADIR.","bulb":"E14","stock":"YOK"}'::jsonb, 390)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1719', 'ELISA APLİK /WALL', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1719-r391.png', 7061.6, 8827, 'TRY', 'adet', '{"dimensions":"75X12CM","features":"METAL VE CAM MALZEMEDEN ÜRETİLMİŞTİR\nİSTENİLEN RENK BOYA VE KAPLAMA YAPILMAKTADIR.","bulb":"DS LED","stock":"YOK"}'::jsonb, 391)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1720', 'KONİ APLİK', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1720-r392.png', 2730, 3412.5, 'TRY', 'adet', '{"dimensions":"27X11X16 CM","features":"METAL MALZEMEDEN OLUŞMAKTADIR.RAL KODUNA GÖRE BOYANABİLİR","bulb":"E14","stock":"YOK"}'::jsonb, 392)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1721', 'MEŞALE APLİK/WALL', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1721-r393.png', 1965.6, 2457, 'TRY', 'adet', '{"dimensions":"50X11X9X3,5 CM","features":"METAL VE İÇİ DOLU PLEXİ MALZEMEDEN OLUŞMAKTADIR.İSTENİL RENK KAPLANMAKTADIR","bulb":"G9","stock":"YOK"}'::jsonb, 393)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1722-W1', 'LORA APLİK/WALL', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1722-W1-r394.png', 1820, 2275, 'TRY', 'adet', '{"dimensions":"30X10X5 CM","features":"METAL VE İÇİ DOLU PLEXİ MALZEMEDEN OLUŞMAKTADIR.İSTENİL RENK KAPLANMAKTADIR","bulb":"G9","stock":"YOK"}'::jsonb, 394)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1722-W2', 'LORA APLİK/WALL', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1722-W2-r395.png', 1965.6, 2457, 'TRY', 'adet', '{"dimensions":"25x10x5 CM","features":"METAL VE İÇİ DOLU PLEXİ MALZEMEDEN OLUŞMAKTADIR.İSTENİL RENK KAPLANMAKTADIR","bulb":"G9,","stock":"YOK"}'::jsonb, 395)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1722', 'LORA AVİZE/CHANDELIER', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1722-r396.png', 36400, 45500, 'TRY', 'adet', '{"dimensions":"120X60 CM","features":"METAL VE İÇİ DOLU PLEXİ MALZEMEDEN OLUŞMAKTADIR.İSTENİL RENK KAPLANMAKTADIR","bulb":"G9","stock":"YOK"}'::jsonb, 396)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1723-W', 'LORA APLİK/WALL', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1723-W-r397.png', 4004, 5005, 'TRY', 'adet', '{"dimensions":"32X20 CM","features":"METAL VE İÇİ DOLU PLEXİ MALZEMEDEN OLUŞMAKTADIR.İSTENİL RENK KAPLANMAKTADIR","bulb":"G9","stock":"YOK"}'::jsonb, 397)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1724', 'LORA AVİZE/CHANDELIER', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1724-r398.png', 18200, 22750, 'TRY', 'adet', '{"dimensions":"80X80 CM","features":"METAL VE İÇİ DOLU PLEXİ MALZEMEDEN OLUŞMAKTADIR.İSTENİL RENK KAPLANMAKTADIR","bulb":"G9","stock":"YOK"}'::jsonb, 398)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1725', 'DESİ AVİZE/CHANDELIER', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1725-r399.png', 40040, 50050, 'TRY', 'adet', '{"dimensions":"100X60 CM","features":"METAL VE İÇİ DOLU PLEXİ MALZEMEDEN OLUŞMAKTADIR.İSTENİL RENK KAPLANMAKTADIR","bulb":"G9","stock":"YOK"}'::jsonb, 399)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1707-W', 'BOCKA APLİK/WALL', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1707-W-r400.png', 1601.6, 2002, 'TRY', 'adet', '{"dimensions":"40X10 CM","features":"METAL MALZEMEDEN ÜRETİLMİŞTİR.\nİSTENİLEN RENK BOYA VE KAPLAMA YAPILMAKTADIR.","bulb":"E27","stock":"YOK"}'::jsonb, 400)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1707', 'BOCKA SARKIT/PENDANT', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1707-r401.png', 9464, 11830, 'TRY', 'adet', '{"dimensions":"60 Q","features":"METAL MALZEMEDEN ÜRETİLMİŞTİR.\nİSTENİLEN RENK BOYA VE KAPLAMA YAPILMAKTADIR.","bulb":"E27","stock":"YOK"}'::jsonb, 401)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1309', 'KITAMI APLİK/WALL', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1309-r402.png', 6916, 8645, 'TRY', 'adet', '{"features":"METAL MALZEMEDEN ÜRETİLMİŞTİR.\nİSTENİLEN RENK BOYA VE KAPLAMA YAPILMAKTADIR.","bulb":"G4","stock":"YOK"}'::jsonb, 402)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1309-A', 'KITAMI SARKIT/PENDANT', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1309-A-r403.png', 18200, 22750, 'TRY', 'adet', '{"features":"METAL MALZEMEDEN ÜRETİLMİŞTİR.\nİSTENİLEN RENK BOYA VE KAPLAMA YAPILMAKTADIR.","bulb":"G4","stock":"YOK"}'::jsonb, 403)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1713-W', 'MATTEO APLİK/WALL', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1713-W-r404.png', 3858.4, 4823, 'TRY', 'adet', '{"dimensions":"30X30 CM","features":"METAL VE CAM MALZEMEDEN ÜRETİLMİŞTİR.\nİSTENİLEN RENK BOYA VE KAPLAMA YAPILMAKTADIR.","bulb":"YOK","stock":"YOK"}'::jsonb, 404)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1713', 'MATTEO SARKIT/PENDANT', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1713-r405.png', 6552, 8190, 'TRY', 'adet', '{"dimensions":"80X40 CM","features":"METAL VE CAM MALZEMEDEN ÜRETİLMİŞTİR.\nİSTENİLEN RENK BOYA VE KAPLAMA YAPILMAKTADIR.","bulb":"YOK","stock":"YOK"}'::jsonb, 405)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1276-W', 'STARY APLİK/WALL', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1276-W-r408.png', 9880, 12350, 'TRY', 'adet', '{"dimensions":"50X25X8 CM","features":"METAL VE CAM MALZEMEDEN ÜRETİLMİŞTİR.","bulb":"DS LED","stock":"VAR"}'::jsonb, 408)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1276-1', 'STARY SARKIT /CHANDELIER', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1276-1-r409.png', 14040, 17550, 'TRY', 'adet', '{"dimensions":"50X50X35 CM","features":"METAL VE CAM MALZEMEDEN ÜRETİLMİŞTİR.","bulb":"DS LED","stock":"VAR"}'::jsonb, 409)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1276-2', 'STARY SARKIT /CHANDELIER', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1276-2-r410.png', 14040, 17550, 'TRY', 'adet', '{"dimensions":"50X50 CM","features":"METAL VE CAM MALZEMEDEN ÜRETİLMİŞTİR.","bulb":"DS LED","stock":"VAR"}'::jsonb, 410)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1276-3', 'STARY SARKIT /CHANDELIER', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1276-3-r411.png', 14040, 17550, 'TRY', 'adet', '{"dimensions":"130X40 CM","features":"METAL VE CAM MALZEMEDEN ÜRETİLMİŞTİR.","bulb":"DS LED","stock":"VAR"}'::jsonb, 411)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1726-W', 'DORYA APLİK/WALL', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1726-W-r412.png', 6552, 8190, 'TRY', 'adet', '{"dimensions":"68X15CM","features":"KRİSTAL CAM MALZEME ÜZERİ METAL GÖVDEDEN OLUŞMAKTADIR.İSTENİLEN RENK KAPLANMAKTADIR.CAM RENK SEÇENEKLERİ: BAL,FÜME,ŞEFFAF","bulb":"E14","stock":"YOK"}'::jsonb, 412)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1726', 'DORYA AVİZE/CHANDELIER', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1726-r413.png', 21840, 27300, 'TRY', 'adet', '{"dimensions":"50X22CM","features":"KRİSTAL CAM MALZEME ÜZERİ METAL GÖVDEDEN OLUŞMAKTADIR.İSTENİLEN RENK KAPLANMAKTADIR.CAM RENK SEÇENEKLERİ: BAL,FÜME,ŞEFFAF","bulb":"E14","stock":"YOK"}'::jsonb, 413)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1667', 'GLEEN SARKIT LINER/PENDANT', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1667-r416.png', 29120, 36400, 'TRY', 'adet', '{"dimensions":"150X30 CM","features":"METAL VE CAM MALZEMEDEN ÜRETİLMİŞTİR.\nİSTENİLEN RENK BOYA VE KAPLAMA YAPILMAKTADIR.","bulb":"DS LED","stock":"VAR"}'::jsonb, 416)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1668', 'LINDA SARKIT/PENDANT', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1668-r418.png', 12958.4, 16198, 'TRY', 'adet', '{"dimensions":"Ø:35CM H:90CM","features":"METAL VE CAM MALZEMEDEN ÜRETİLMİŞTİR.\nŞEFFAF ÇİZGİLİ CAM KROM MEKANİZMA","bulb":"DS LED","stock":"VAR"}'::jsonb, 418)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1352-W', 'SARA ZİNCİR APLİK /WALL', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1352-W-r420.png', 4076.8, 5096, 'TRY', 'adet', '{"dimensions":"ÖLÇÜLER\n15 X 40 \n ZİNCİR DAHİL 65CM","features":"ÜRÜN METAL MALZEMEDEN ÜRETİLMİŞTİR. \nKUMAŞ ŞAPKA KULLANILMIŞTIR.\nİSTENİLEN RENK KAPLAMA YAPILIR.","bulb":"E14 X 1 \nMAX 20 W","stock":"YOK"}'::jsonb, 420)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1352-W   2', 'SARA ZİNCİR APLİK /WALL', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1352-W-2-r421.jpeg', 8590.4, 10738, 'TRY', 'adet', '{"dimensions":"ÖLÇÜLER\n55 X 50 CM","features":"ÜRÜN  METAL MALZEMEDEN ÜRETİLMİŞTİR. \nKUMAŞ ŞAPKA KULLANILMIŞTIR.\nİSTENİLEN RENK KAPLAMA YAPILIR.","bulb":"E14 X 2 \nMAX 20 W","stock":"YOK"}'::jsonb, 421)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1387', 'SARA ZİNCİR AVİZE / CHANDELIER', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1387-r422.jpeg', 24024, 30030, 'TRY', 'adet', '{"dimensions":"ÖLÇÜLER \n80 Q","features":"6 KOLLU \nÜRÜN METAL METAL MALZEMEDEN ÜRETİLMİŞTİR. \nKUMAŞ ŞAPKA KULLANILMIŞTIR.\nİSTENİLEN RENK KAPLAMA YAPILIR.","bulb":"E14\nMAX 20 W","stock":"YOK"}'::jsonb, 422)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1707-T1', 'LENA ABAJUR /
TABLE LAMP', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1707-T1-r426.png', 13832, 17290, 'TRY', 'adet', '{"dimensions":"ÖLÇÜLER \n60 X 40 CM\nALT TABLA\n45X15 CM\nŞAPKA \n61 X 24\nTOPLAM YÜKSEKLİK 72 CM","features":"Alüminyum malzemeden üretilmiştir.\nKumaş şapka kullanılmıştır.\n İstenilen  renk üretilmektedir.","bulb":"E72 \nMAX 40 W","stock":"VAR"}'::jsonb, 426)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1707-T2', 'LENA ABAJUR /
TABLE LAMP', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1707-T2-r427.jpeg', 34216, 42770, 'TRY', 'adet', '{"dimensions":"123X68X27,5 CM","features":"Alüminyum malzemeden üretilmiştir.\nKumaş şapka kullanılmıştır.\n İstenilen  renk üretilmektedir.","bulb":"E72 \nMAX 40 W","stock":"VAR"}'::jsonb, 427)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND-15545', 'Stella  
APLİK/WALL', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND-15545-r428.jpeg', 5200, 6500, 'TRY', 'adet', '{"dimensions":"ÖLÇÜLER\n110X30","features":"ÜRÜN METAL MALZEMEDEN OLUŞMAKTADIR. \nKUMAŞ ŞAPKA KULLANILMIŞTIR.","bulb":"E14","stock":"VAR"}'::jsonb, 428)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1335', 'GRACE 
APLİK/WALL', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1335-r429.png', 2756, 3445, 'TRY', 'adet', '{"dimensions":"ÖLÇÜLER\n60X 15 CM","features":"METAL MALZEMEDEN ÜRETİLMİŞTİR.\nİSTENİLEN RENK BOYA VE KAPLAMA YAPILMAKTADIR.","bulb":"G4","stock":"VAR"}'::jsonb, 429)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND-SNAKE', 'SNAKE 
APLİK/WALL', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND-SNAKE-r436.png', 10920, 13650, 'TRY', 'adet', '{"dimensions":"ÖLÇÜLER\n32x25x89cm","features":"ÜRÜN PİRİNÇ  MALZEMEDEN OLUŞMAKTADIR.","bulb":"E14","stock":"ÜRETİM"}'::jsonb, 436)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND-UAPL', 'DIEGO APLİK/WALL', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND-UAPL-r437.png', 2080, 2600, 'TRY', 'adet', '{"dimensions":"ÖLÇÜLER\n11X80 CM","features":"Materyal\nMetal ve\nCAM\nSİYAH-ESKİTME","bulb":"GU10-G9","stock":"VAR"}'::jsonb, 437)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1714', 'HERA SARKIT', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1714-r438.png', 13832, 17290, 'TRY', 'adet', '{"dimensions":"H:85 CM","features":"ÜRÜN METAL VE CAM DAN OLUŞMAKTADIR.\n5 ADET GLOB CAMDAN OLUŞMAKTADIR.\n H: 85 CM","bulb":"G9","stock":"yok"}'::jsonb, 438)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1714-P1', 'HERA SARKIT/PENDANT', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1714-P1-r441.png', 11648, 14560, 'TRY', 'adet', '{"dimensions":"60x30 CM","features":"ÜRÜN METAL VE CAM DAN OLUŞMAKTADIR.\n4 ADET GLOB CAMDAN OLUŞMAKTADIR.","bulb":"G9  X4","stock":"yok"}'::jsonb, 441)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1714-P2', 'HERA SARKIT/PENDANT', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1714-P2-r442.png', 13104, 16380, 'TRY', 'adet', '{"dimensions":"80x30  CM","features":"ÜRÜN METAL VE CAM DAN OLUŞMAKTADIR.\n4 ADET GLOB CAMDAN OLUŞMAKTADIR.","bulb":"G9  X4","stock":"yok"}'::jsonb, 442)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1714-P3', 'HERA SARKIT/PENDANT', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1714-P3-r443.png', 14560, 18200, 'TRY', 'adet', '{"dimensions":"90X30 CM","features":"ÜRÜN METAL VE CAM DAN OLUŞMAKTADIR.\n5 ADET GLOB CAMDAN OLUŞMAKTADIR.","bulb":"G9 X5","stock":"yok"}'::jsonb, 443)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1714-1', 'HERA RING SARKIT/PENDANT', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1714-1-r444.png', 28392, 35490, 'TRY', 'adet', '{"features":"ÜRÜN METAL,ALÜMİNYUM DÖKÜM  VE CAM DAN OLUŞMAKTADIR.\n24 GLOB CAM DAN OLUŞMAKTADIR.\nÇAP 80 CM DİR.","bulb":"G9","stock":"yok"}'::jsonb, 444)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1714-2', 'HERA SARKIT', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1714-2-r445.png', 56784, 70980, 'TRY', 'adet', '{"dimensions":"ÇAP  90 CM DİR.\n16 GLOB CAM ÇAP:70 CM DİR.","features":"ÜRÜN METAL,ALÜMİNYUM DÖKÜM  VE CAM DAN OLUŞMAKTADIR.\nTOPLAM: 40 ADET GLOB CAMDAN OLUŞMAKTADIR.ÜRÜN METAL,ALÜMİNYUM DÖKÜM  VE CAM DAN OLUŞMAKTADIR.\nTOPLAM: 40 ADET GLOB CAMDAN OLUŞMAKTADIR.","bulb":"G9","stock":"yok"}'::jsonb, 445)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1714-3', 'HERA SARKIT', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1714-3-r446.png', 78624, 98280, 'TRY', 'adet', '{"dimensions":"ÇAP  90 CM\n ÇAP:70 CM \nÇAP:50 CM DİR.","features":"ÜRÜN METAL,ALÜMİNYUM DÖKÜM  VE CAM DAN OLUŞMAKTADIR.\nTOPLAM: 40 ADET GLOB CAMDAN OLUŞMAKTADIR.ÜRÜN METAL,ALÜMİNYUM DÖKÜM  VE CAM DAN OLUŞMAKTADIR.\nTOPLAM: 40 ADET GLOB CAMDAN OLUŞMAKTADIR.","bulb":"G9","stock":"yok"}'::jsonb, 446)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1715', 'SERA SARKIT/PENDANT', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1715-r447.png', 19656, 24570, 'TRY', 'adet', '{"dimensions":"Q: 70 CM","features":"ÜRÜN ALÜMİNYUM DÖKÜM MALZEMEDEN  OLUŞMAKTADIR.\n8 ADET E14 DUY BULUNMAKTADIR.","bulb":"E14","stock":"YOK"}'::jsonb, 447)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1727', 'YAPRAK ARMATÜR', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1727-r449.png', 26208, 32760, 'TRY', 'adet', '{"dimensions":"70X 10 CM","features":"ÜRÜN ALÜMİNYUM DÖKÜM MALZEMEDEN  OLUŞMAKTADIR.\n\n8 ADET E14 DUY BULUNMAKTADIR.","bulb":"E14","stock":"YOK"}'::jsonb, 449)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1727-AP', 'YAPRAK APLİK /WALL', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1727-AP-r450.png', 3276, 4095, 'TRY', 'adet', '{"dimensions":"30X 10 CM","features":"ÜRÜN,ALÜMİNYUM DÖKÜM MALZEMEDEN OLUŞMAKTADIR.","bulb":"G9","stock":"YOK"}'::jsonb, 450)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1256', 'QBA SARKIT A', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1256-r452.png', 2548, 3185, 'TRY', 'adet', '{"dimensions":"Ölçüler\n 15 cm     120 cm","features":"Materyal\nMetal Kasa \nDuy Tipi\ngu-10\nWatt\n5W  \nLumen\n500\nKelvin\n3000","bulb":"GU10","stock":"VAR"}'::jsonb, 452)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1246', 'HEDGEHOG KİRPİ AVİZE/CHANDELIER', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1246-r454.png', 20384, 25480, 'TRY', 'adet', '{"dimensions":"70 Q","features":"ÜRÜN PRİNÇ MALZEMEDEN ÜRETİLMEKTEDİR.","bulb":"E14","stock":"var"}'::jsonb, 454)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1685', 'MORRIS APLİK/WALL', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1685-r455.png', 2329.6, 2912, 'TRY', 'adet', '{"dimensions":"Ölçüler\n 6 cm     61 cm","features":"Materyal\nMetal Kasa\nLumen\n1100\nKelvin\n3000\nRenk\nBeyaz\nSiyah","bulb":"samsung led\nWatt\n11W","stock":"VAR"}'::jsonb, 455)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1287', 'VERONICA 1
 SARKIT 3L/ PENDANT', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1287-r458.png', 3276, 4095, 'TRY', 'adet', '{"dimensions":"H: 100 CM","features":"ÜRÜN METAL VE CAM MALZEMEDEN ÜRETİLMEKTEDİR.İSTENİLEN RENK KAPLANIP, BOYANA BİLİR.","bulb":"G9","stock":"YOK"}'::jsonb, 458)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1288', 'VERONICA SARKIT/PENDANT', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1288-r460.png', 2402.4, 3003, 'TRY', 'adet', '{"dimensions":"H:85","features":"ÜRÜN METAL VE CAM MALZEMEDEN ÜRETİLMEKTEDİR.İSTENİLEN RENK KAPLANIP, BOYANA BİLİR.","bulb":"E14","stock":"YOK"}'::jsonb, 460)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1233', 'DIALLO 
CHANDELIER/AVİZE
SMALL', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1233-r463.png', 25480, 31850, 'TRY', 'adet', '{"dimensions":"75X100 CM","features":"ÜRÜN METAL VE  İÇİ BOŞ  CAM MALZEMEDEN OLUŞMAKTADIR. İSTENİLEN RENK KAPLAMA VE BOYA YAPILA BİLİR.","bulb":"E14","stock":"YOK"}'::jsonb, 463)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1425-W', 'SAIERSE APLİK/WALL', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1425-W-r464.png', 4149.6, 5187, 'TRY', 'adet', '{"dimensions":"30X60 CM","features":"ÜRÜN METAL MALZEMEDEN OLUŞMAKTADIR. İSTENİLEN RENK KAPLAMA VE BOYA YAPILA BİLİR.","bulb":"G9","stock":"YOK"}'::jsonb, 464)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1431-W1', 'WINKLE ZARF APLİK/WALL', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1431-W1-r465.png', 4004, 5005, 'TRY', 'adet', '{"dimensions":"38X10X13 CM","features":"ÜRÜN METAL MALZEMEDEN OLUŞMAKTADIR. İSTENİLEN RENK KAPLAMA VE BOYA YAPILA BİLİR.","bulb":"G9","stock":"YOK"}'::jsonb, 465)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1431-W2', 'WINKLE ZARF APLİK/WALL', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1431-W2-r466.png', 2912, 3640, 'TRY', 'adet', '{"dimensions":"40X12X8 CM","features":"ÜRÜN METAL MALZEMEDEN OLUŞMAKTADIR. İSTENİLEN RENK KAPLAMA VE BOYA YAPILA BİLİR.","bulb":"G9","stock":"YOK"}'::jsonb, 466)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1728', 'MAFSALLI APLİK', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1728-r467.png', 2730, 3412.5, 'TRY', 'adet', '{"features":"ÜRÜN METAL MALZEMEDEN OLUŞMAKTADIR. İSTENİLEN RENK KAPLAMA VE BOYA YAPILA BİLİR.","bulb":"E14","stock":"YOK"}'::jsonb, 467)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND-PETSO-1', 'PETSO APLİK/WALL', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND-PETSO-1-r468.jpeg', 1135.68, 1419.6, 'TRY', 'adet', '{"dimensions":"D: 12 CM \nCAM D:13 CM","features":"ÜRÜN METAL  MALZEMEDEN OLUŞMAKTADIR. İSTENİLEN RENK KAPLAMA VE BOYA YAPILA BİLİR.","bulb":"E14","stock":"YOK"}'::jsonb, 468)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND-PETSO-2', 'PETSO TABLE/MASA LAMBASI', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND-PETSO-2-r469.jpeg', 1426.88, 1783.6, 'TRY', 'adet', '{"dimensions":"D: 15 CM \nCAM D:20 CM \nH:63 CM","features":"ÜRÜN METAL  MALZEMEDEN OLUŞMAKTADIR. İSTENİLEN RENK KAPLAMA VE BOYA YAPILA BİLİR.","bulb":"E27","stock":"YOK"}'::jsonb, 469)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND-PETSO-3', 'MUSH TABLE / MASA LAMBASI', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND-PETSO-3-r470.png', 6552, 8190, 'TRY', 'adet', '{"dimensions":"D:30 CM\nH:45 CM","bulb":"E27","stock":"YOK"}'::jsonb, 470)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND-PETSO-4', 'TULU PENDANT/SARKIT', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND-PETSO-4-r471.png', 1674.4, 2093, 'TRY', 'adet', '{"dimensions":"D:45 CM \nH: 55 CM","features":"ÜRÜN METAL  MALZEMEDEN OLUŞMAKTADIR. \nİSTENİLEN RENK KAPLAMA VE BOYA YAPILA BİLİR\nCAM  ÖLÇÜSÜ: 8 CM DİR.","bulb":"G9","stock":"YOK"}'::jsonb, 471)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1380', 'BLOOM SARKIT/PENDANT
SMALL', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1380-r472.jpeg', 2620.8, 3276, 'TRY', 'adet', '{"dimensions":"D:40 CM \nH: 63 CM","features":"ÜRÜN METAL  MALZEMEDEN OLUŞMAKTADIR. \nİSTENİLEN RENK KAPLAMA VE BOYA YAPILA BİLİR\nCAM  ÖLÇÜSÜ: 8 CM DİR.","bulb":"G9","stock":"YOK"}'::jsonb, 472)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1378', 'DINGDONG SARKIT/PENDANT', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1378-r474.png', 5751.2, 7189, 'TRY', 'adet', '{"dimensions":"60 Q","features":"METAL  MALZEMEDEN OLUŞMAKTADIR. \nİSTENİLEN RENK KAPLAMA VE BOYA YAPILA BİLİR\nCAM  ÖLÇÜSÜ: 12 CM DİR.","bulb":"E14","stock":"YOK"}'::jsonb, 474)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1390-T', 'APLİKQA MASA LAMBASI/TABLE', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1390-T-r475.png', 946.4, 1183, 'TRY', 'adet', '{"dimensions":"20 X 60 CM","features":"METAL  MALZEMEDEN OLUŞMAKTADIR. \nİSTENİLEN RENK KAPLAMA VE BOYA YAPILA BİLİR\nCAM  ÖLÇÜSÜ:12 CM Q DİR.","bulb":"G9","stock":"YOK"}'::jsonb, 475)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND-V22', 'VIOLET SARKIT / PENDANT', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND-V22-r476.jpeg', 2111.2, 2639, 'TRY', 'adet', '{"dimensions":"D: 40 cm","features":"ÜRÜN METAL  MALZEMEDEN OLUŞMAKTADIR. \nİSTENİLEN RENK KAPLAMA VE BOYA YAPILA BİLİR\nCAM  ÖLÇÜSÜ: 8 CM DİR.","bulb":"G9","stock":"YOK"}'::jsonb, 476)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND-V23', 'RİXOS  APLİK/WALL', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND-V23-r477.png', 3276, 4095, 'TRY', 'adet', '{"dimensions":"D:  9 CM\nH: 55 CM","features":"ÜRÜN METAL  VE İÇİ DOLU PLEKSİ  MALZEMEDEN OLUŞMAKTADIR. \nİSTENİLEN RENK KAPLAMA VE BOYA YAPILA BİLİR","bulb":"DS LED","stock":"var"}'::jsonb, 477)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND-V24', 'ARORA 
APLİK/WALL', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND-V24-r478.jpeg', 1747.2, 2184, 'TRY', 'adet', '{"dimensions":"D: 8 CM \nH:53 CM \nCAM D: 25 CM","features":"ÜRÜN METAL  MALZEMEDEN OLUŞMAKTADIR. \nİSTENİLEN RENK KAPLAMA VE BOYA YAPILA BİLİR","bulb":"E27","stock":"var"}'::jsonb, 478)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND-V25', 'ARORA 
APLİK/WALL', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND-V25-r479.jpeg', 2038.4, 2548, 'TRY', 'adet', '{"dimensions":"D:  8 CM \nH: 75 CM\nCAM D: 25 CM","features":"ÜRÜN METAL  MALZEMEDEN OLUŞMAKTADIR. \nİSTENİLEN RENK KAPLAMA VE BOYA YAPILA BİLİR","bulb":"E27","stock":"YOK"}'::jsonb, 479)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1300', 'QENVA APLİK', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1300-r480.png', 9464, 11830, 'TRY', 'adet', '{"dimensions":"57X27 CM","features":"METAL VE PASLANMAZ MALZEMEDEN OLUŞMAKTADIR","bulb":"DS LED","stock":"VAR"}'::jsonb, 480)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND 1238W1', 'İSTİRİDYE SARKIT
CHANDELIER', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND-1238W1-r481.png', 2184, 2730, 'TRY', 'adet', '{"dimensions":"ÖLÇÜ\n20X21 CM","features":"ÜRÜN METAL  MALZEMEDEN OLUŞMAKTADIR. \nİSTENİLEN RENK KAPLAMA VE BOYA YAPILA BİLİR","bulb":"E14","stock":"YOK"}'::jsonb, 481)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND 1238W2', 'İSTİRİDYE SARKIT
CHANDELIER', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND-1238W2-r482.png', 4659.2, 5824, 'TRY', 'adet', '{"dimensions":"ÖLÇÜ\n50 X20 CM","features":"ÜRÜN METAL  MALZEMEDEN OLUŞMAKTADIR. \nİSTENİLEN RENK KAPLAMA VE BOYA YAPILA BİLİR","bulb":"E14","stock":"YOK"}'::jsonb, 482)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND 1238A', 'İSTİRİDYE SARKIT
CHANDELIER', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND-1238A-r483.png', 5532.8, 6916, 'TRY', 'adet', '{"dimensions":"ÖLÇÜ\n20X21 CM","features":"ÜRÜN METAL  MALZEMEDEN OLUŞMAKTADIR. \nİSTENİLEN RENK KAPLAMA VE BOYA YAPILA BİLİR","bulb":"E14","stock":"YOK"}'::jsonb, 483)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND 1238', 'İSTİRİDYE SARKIT
CHANDELIER', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND-1238-r484.png', 36400, 45500, 'TRY', 'adet', '{"dimensions":"65 Q","features":"ÜRÜN METAL  MALZEMEDEN OLUŞMAKTADIR. \nİSTENİLEN RENK KAPLAMA VE BOYA YAPILA BİLİR","bulb":"E14","stock":"YOK"}'::jsonb, 484)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1674', 'Vanessa 1
 APLİK/WALL', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1674-r487.jpeg', 6260.8, 7826, 'TRY', 'adet', '{"dimensions":"20 X 38 CM","features":"ÜRÜN METALVE ALMAN SHOT CAM  MALZEMEDEN OLUŞMAKTADIR. \nFÜME , BAL VE ŞEFFAF RENKLERİ MEVCUTTUR.","bulb":"E14","stock":"YOK"}'::jsonb, 487)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1691', 'MARCO
AVİZE/CHANDELIER', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1691-r492.png', 25480, 31850, 'TRY', 'adet', '{"dimensions":"35 Q","features":"ÜRÜN METALVE AKRİLİK MALZEMEDEN OLUŞMAKTADIR. \n ŞEFFAF RENK MEVCUTTUR.","bulb":"E14x4","stock":"var"}'::jsonb, 492)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1343', 'MONALIZA AVİZE/CHANDELIER', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1343-r495.png', 47320, 59150, 'TRY', 'adet', '{"dimensions":"80  Q","features":"ÜRÜN METAL VE  CAM MALZEMEDEN OLUŞMAKTADIR. \nBAKIR-KROM-ALTIN RENK MEVCUTTUR.","bulb":"G9","stock":"YOK"}'::jsonb, 495)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1411-W  1', 'MERVIN APLİK SMALL/WALL', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1411-W-1-r496.png', 9464, 11830, 'TRY', 'adet', '{"dimensions":"W. 25 | D. 12 | H. 40 CM","features":"CAM VE METAL MALZEMEDEN OLUŞMAKTADIR.\nİSTENİLEN RENK KAPLANMAKTADIR","bulb":"E14","stock":"YOK"}'::jsonb, 496)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1411-W2', 'MERVIN APLİK LARGE /WALL', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1411-W2-r497.png', 12376, 15470, 'TRY', 'adet', '{"dimensions":"W. 25 | D. 12 | H. 65 CM","features":"CAM VE METAL MALZEMEDEN OLUŞMAKTADIR.\nİSTENİLEN RENK KAPLANMAKTADIR","bulb":"E14","stock":"YOK"}'::jsonb, 497)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1411-W3', 'MERVIN APLİK LARGE /WALL', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1411-W3-r498.png', 13104, 16380, 'TRY', 'adet', '{"dimensions":"25X35X55 CM","features":"CAM VE METAL MALZEMEDEN OLUŞMAKTADIR.\nİSTENİLEN RENK KAPLANMAKTADIR","bulb":"E14","stock":"YOK"}'::jsonb, 498)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1411-I', 'MERVIN AVİZE/CHANDELIER', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1411-r499.png', 36400, 45500, 'TRY', 'adet', '{"dimensions":"ø 50 x H. 45 cm","features":"CAM VE METAL MALZEMEDEN OLUŞMAKTADIR.\nİSTENİLEN RENK KAPLANMAKTADIR","bulb":"E14","stock":"YOK"}'::jsonb, 499)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1411- II', 'MERVIN AVİZE/CHANDELIER', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1411-r501.png', 65520, 81900, 'TRY', 'adet', '{"dimensions":"Ø 95 | H. 45  CM","features":"CAM VE METAL MALZEMEDEN OLUŞMAKTADIR.\nİSTENİLEN RENK KAPLANMAKTADIR","bulb":"E14","stock":"YOK"}'::jsonb, 501)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1402-III', 'MERVIN LİNER FORM  AVİZE/CHANDELIER', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1402-r503.png', 58240, 72800, 'TRY', 'adet', '{"dimensions":"140 x 40 x H. 25 cm","features":"CAM VE METAL MALZEMEDEN OLUŞMAKTADIR.\nİSTENİLEN RENK KAPLANMAKTADIR","bulb":"E14","stock":"YOK"}'::jsonb, 503)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1218-A', 'BUBBLE COPPER 15 L LİNEER FORM', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1218-A-r505.jpeg', 20280, 25350, 'TRY', 'adet', '{"dimensions":"ÖLÇÜ\n100X20 C","features":"Ürün cam malzemeden oluşmaktadır. İstenilen renk veya Bakır-Altın-Krom-füme renk kaplama yapılabilir.","bulb":"G4*8 .20 W","stock":"YOK"}'::jsonb, 505)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1218-B', 'BUBBLE COPPER 10 L YUVARLAK FORM', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1218-B-r506.png', 13520, 16900, 'TRY', 'adet', '{"dimensions":"ÖLÇÜ\n45 Q","features":"Ürün cam malzemeden oluşmaktadır. İstenilen renk veya Bakır-Altın-Krom-füme renk kaplama yapılabilir.","bulb":"G4*10 .20 W","stock":"YOK"}'::jsonb, 506)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1335 W', 'SOFIA APLİK/WALL', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1335-W-r508.jpeg', 4004, 5005, 'TRY', 'adet', '{"dimensions":"15 Q","features":"ÜRÜN PASLANMAZ VE CAMDAN OLUŞMAKTADIR İSTENİLEN CAM RENGİ  ÜRETİLMEKTEDİR.","bulb":"G4","stock":"YOK"}'::jsonb, 508)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1266', 'SOFIA 3 L SARKIT/PENDANT', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1266-r510.png', 9464, 11830, 'TRY', 'adet', '{"dimensions":"15 Q\nKABLO BOYU:80 CM","features":"ÜRÜN PASLANMAZ VE CAMDAN OLUŞMAKTADIR İSTENİLEN CAM RENGİ  ÜRETİLMEKTEDİR.","bulb":"G4","stock":"YOK"}'::jsonb, 510)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1232', 'Mercy 12 L 
Sarkıt', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1232-r513.png', 23400, 29250, 'TRY', 'adet', '{"dimensions":"D: 40  Q","features":"ÜRÜN PASLANMAZ MALZEMEDEN OLUŞMAKTADIR. CAM KULLANILMIŞTIR.\n3 FARKLI TİP CAM FORMU VARDIR.","bulb":"G4","stock":"YOK"}'::jsonb, 513)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1232-LNR', 'Mercy 10 L
Sarkıt', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1232-LNR-r514.jpeg', 18200, 22750, 'TRY', 'adet', '{"dimensions":"H: 100 CM \nW:100 CM","features":"ÜRÜN PASLANMAZ MALZEMEDEN OLUŞMAKTADIR. CAM KULLANILMIŞTIR.\n3 FARKLI TİP CAM FORMU VARDIR.","bulb":"G4","stock":"YOK"}'::jsonb, 514)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1675', 'MERRY  3 L  
SARKIT', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1675-r515.jpeg', 5678.4, 7098, 'TRY', 'adet', '{"dimensions":"D:30 CM\nH:100 CM","features":"ÜRÜN METAL VE PASLANMAZ MALZEMEDEN OLUŞMAKTADIR. CAM KULLANILMIŞTIR.\nİSTENİLEN RENK BOYANABİLİR.","bulb":"G4","stock":"YOK"}'::jsonb, 515)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1306', 'LARA  AVİZE/CHANDELIER', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1306-r519.png', 3567.2, 4459, 'TRY', 'adet', '{"dimensions":"65 CM","features":"ÜRÜN METAL ÜZERİ CAM MALZEMEDEN OLUŞMAKTADIR 1 KOL 2 DUYU MEVCUTTUR.İSTENİLEN RENK ÜRETİLMETEDİR.","bulb":"G9","stock":"YOK"}'::jsonb, 519)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1303', 'LISSA SARKIT/PENDANT', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1303-r523.png', 8216, 10270, 'TRY', 'adet', '{"dimensions":"Ölçüler\nQ  22 cm   \n  120 cm","features":"Materyal\nMetal Kasa\nCam\nLumen600\nKelvin 3000\nRenk\nBal","bulb":"Samsung SMD Led\nWatt\n6w","stock":"var"}'::jsonb, 523)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1755-A', 'DIAZ TABLO APLİK/WALL', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1755-A-r526.png', 1528.8, 1911, 'TRY', 'adet', '{"dimensions":"Ölçüler\n35 cm     20 cm","features":"6W\nLümen 540lm\nLed Tipi SMD\nAlüminyum Gövde\nKoli Adedi 20\nKasa Renkleri:Gold-Krom-Saten-Siyah-Eskitme\nışık Renkler 300K Gün Işığı / 4000K Natural / 6500K Beyaz Işık","bulb":"Duy Tipi\nSamsung SMD Led\nWatt\n20w","stock":"var"}'::jsonb, 526)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1755-B', 'DIAZ TABLO APLİK/WALL', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1755-B-r527.png', 2184, 2730, 'TRY', 'adet', '{"dimensions":"Ölçüler\n50 cm     20 cm","features":"9W\nLümen 540lm\nLed Tipi SMD\nAlüminyum Gövde\nKoli Adedi 20\nKasa Renkleri:Gold-Krom-Saten-Siyah-Eskitme\nışık Renkler 300K Gün Işığı / 4000K Natural / 6500K Beyaz Işık","bulb":"Duy Tipi\nSamsung SMD Led\nWatt\n20w","stock":"var"}'::jsonb, 527)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1304-A', 'TURNA TABLO APLİK/WALL', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1304-A-r528.png', 2912, 3640, 'TRY', 'adet', '{"dimensions":"Ölçüler\n 40 cm     12 cm","features":"Materyal Metal Kasa Akrilik Malzeme  Lumen 1260 Kelvin 3000\nRenk\nKrom Rose Gold. Gold","bulb":"Duy Tipi\nSamsung SMD Led\nWatt\n8w","stock":"var"}'::jsonb, 528)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1304-B', 'TURNA TABLO APLİK/WALL', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1304-B-r529.png', 3640, 4550, 'TRY', 'adet', '{"dimensions":"Ölçüler\n 60 cm     12 cm","features":"Materyal Metal Kasa Akrilik Malzeme  Lumen 1260 Kelvin 3000\nRenk\nKrom Rose Gold. Gold","bulb":"Duy Tipi\nSamsung SMD Led\nWatt\n12w","stock":"var"}'::jsonb, 529)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1304-C', 'TURNA TABLO APLİK/WALL', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1304-C-r530.png', 4368, 5460, 'TRY', 'adet', '{"dimensions":"Ölçüler\n 80 cm     123 cm","features":"Materyal Metal Kasa Akrilik Malzeme  Lumen 1260 Kelvin 3000\nRenk\nKrom Rose Gold. Gold","bulb":"Samsung SMD Led\nWatt\n16w","stock":"VAR"}'::jsonb, 530)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND-BMBO15', 'BAMBU SARKIT', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND-BMBO15-r531.png', 4550, 5687.5, 'TRY', 'adet', '{"dimensions":"28 Q","features":"BAMBU MALZEMEDEN ÜRETİLMİŞTİR.","bulb":"E27","stock":"YOK"}'::jsonb, 531)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND-BMBO16', 'BAMBU SARKIT', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND-BMBO16-r532.png', 5824, 7280, 'TRY', 'adet', '{"dimensions":"38 Q","features":"HASIR MALZEMEDEN ÜRETİLMİŞTİR.","bulb":"E27","stock":"YOK"}'::jsonb, 532)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND-BMBO17', 'BAMBU SARKIT', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND-BMBO17-r533.png', 6734, 8417.5, 'TRY', 'adet', '{"dimensions":"45 Q","features":"HASIR MALZEMEDEN ÜRETİLMİŞTİR.","bulb":"E27","stock":"YOK"}'::jsonb, 533)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND-BMBO18', 'BAMBU SARKIT', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND-BMBO18-r534.png', 10010, 12512.5, 'TRY', 'adet', '{"dimensions":"60 Q","features":"HASIR MALZEMEDEN ÜRETİLMİŞTİR.","bulb":"E27","stock":"YOK"}'::jsonb, 534)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND-BMBO19', 'BAMBU SARKIT', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND-BMBO19-r535.png', 20020, 25025, 'TRY', 'adet', '{"dimensions":"80 Q","features":"HASIR MALZEMEDEN ÜRETİLMİŞTİR.","bulb":"E27","stock":"YOK"}'::jsonb, 535)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND-BMBO20', 'RATTAN KONİK SARKIT', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND-BMBO20-r536.png', 4368, 5460, 'TRY', 'adet', '{"dimensions":"30X42 CM","features":"RATTAN MAZLEMEDEN ÜRETİLMİŞTİR","bulb":"E27","stock":"YOK"}'::jsonb, 536)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND-BMBO21', 'RATTAN KONİK SARKIT', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND-BMBO21-r537.png', 7280, 9100, 'TRY', 'adet', '{"dimensions":"45X45 CM","features":"RATTAN MAZLEMEDEN ÜRETİLMİŞTİR","bulb":"E27","stock":"YOK"}'::jsonb, 537)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND-BMBO22', 'HASIR SARKIT', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND-BMBO22-r538.png', 988, 1235, 'TRY', 'adet', '{"dimensions":"Ölçüler\n25 cm  50 cm","features":"Materyal\nAhşap","bulb":"Duy Tipi\nE-27\nWatt\nMAKS. 40WATT","stock":"YOK"}'::jsonb, 538)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND-BMBO23', 'HASIR SARKIT', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND-BMBO23-r539.png', 1300, 1625, 'TRY', 'adet', '{"dimensions":"Ölçüler\n 35 cm     120 cm","features":"Materyal\nMetal Kasa\n\nRenk\nBambu","bulb":"Duy Tipi\nE-27\nWatt\nMAKS. 24 W","stock":"YOK"}'::jsonb, 539)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND-BMBO24', 'HASIR SARKIT', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND-BMBO24-r540.png', 1352, 1690, 'TRY', 'adet', '{"dimensions":"Ölçüler\n40 cm    47  cm","features":"Materyal\nAhşap","bulb":"Duy Tipi\nE-27\nWatt\nMAKS. 24 W"}'::jsonb, 540)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND-BMBO25', 'Helga Tekli Cam Sarkıt', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND-BMBO25-r541.png', 327.6, 409.5, 'TRY', 'adet', '{"dimensions":"CAM MALZEMEDEN YAPILMAKTADIR.","features":"Bal, füme, şeffaf, bal-füme , füme-pembe, cam renkleri bulunmaktadır. İstenilen renk boyanmaktadır/Honey, smoked, transparent, honey-smoked, smoked-pink, glass colors are available. The desired color is painted","bulb":"E27","stock":"var"}'::jsonb, 541)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1235', 'OCCO 6 LI SARKIT/PENDANT', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1235-r542.png', 12376, 15470, 'TRY', 'adet', '{"dimensions":"35 Q","features":"6 adet kristal cam toptan oluşur. Metak aksanlar krom metaldir.","bulb":"G4X6","stock":"YOK"}'::jsonb, 542)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1263', 'TYCHO ROUND/SARKIT
SUSPENSION', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1263-r547.png', 50960, 63700, 'TRY', 'adet', '{"dimensions":"12 L  YUVARLAK FORM SARKIT Dia:60 CM","features":"The product consists of metal overlay and crystal stripe glass.","bulb":"E14","stock":"var"}'::jsonb, 547)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1263-W', 'TYCHO ROUND WALL', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1263-W-r549.png', 4004, 5005, 'TRY', 'adet', '{"dimensions":"Dia:20 cm","features":"ÜRÜN METAL  VE  CAM MALZEMEDEN OLUŞMAKTADIR.\nİSTENİLEN RENK ÜRETİLMEKTEDİR","bulb":"E14","stock":"YOK"}'::jsonb, 549)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1402', 'Mcqueen Avize/Chandelier', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1402-r551.png', 50960, 63700, 'TRY', 'adet', '{"dimensions":"Dia:65 CM \nLengt:120 cm","features":"ÜRÜN METAL MALZEMEDEN OLUŞMAKTADIR. \nRENK:ALTIN BAKIR, KROM TALEBE GÖRE İSTENİLEN BOYA RENGİ DE YAPILABİLMEKTEDİR.","bulb":"G9","stock":"YOK"}'::jsonb, 551)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1708', 'OLIVER  METAL SARKIT', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1708-r552.png', 36400, 45500, 'TRY', 'adet', '{"dimensions":"40 Q","features":"PASLANMAZ MALZEMEDEN OLUŞMAKTADIR. KAPLAMA YAPILMAKTADIR.RENK:ALTIN BAKIR, KROM TALEBE GÖRE İSTENİLEN BOYA RENGİ DE YAPILABİLMEKTEDİR.","bulb":"E14 LED","stock":"YOK"}'::jsonb, 552)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1709', 'EMPIRE   80 CM ARMATUR SARKIT/CHANDELIER', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1709-r554.png', 41496, 51870, 'TRY', 'adet', '{"dimensions":"90 Q","features":"METAL MALZEMEDEN OLUŞMAKTADIR. KAPLAMA YAPILMAKTADIR.CAM ÇUBUKLAR KULLANILMIŞTIR. RENK:ALTIN BAKIR, KROM TALEBE GÖRE İSTENİLEN BOYA RENGİ DE YAPILABİLMEKTEDİR.","bulb":"E14","stock":"YOK"}'::jsonb, 554)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1710', 'HYPONIC AVİZE/CHANDELIER', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1710-r566.png', 56056, 70070, 'TRY', 'adet', '{"features":"METAL VE CAM MALZEMEDEN OLUŞMAKTADIR. RENK:ALTIN BAKIR, KROM TALEBE GÖRE İSTENİLEN BOYA RENGİ DE YAPILABİLMEKTEDİR.","bulb":"G9 LED AMPUL","stock":"var"}'::jsonb, 566)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1711', 'MAJESTIC
CHANDELIER', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1711-r567.png', 40040, 50050, 'TRY', 'adet', '{"dimensions":"DIA:80 60 40 CM","features":"METAL VE CAM MALZEMEDEN OLUŞMAKTADIR. RENK:ALTIN BAKIR, KROM TALEBE GÖRE İSTENİLEN BOYA RENGİ DE YAPILABİLMEKTEDİR.","bulb":"G9","stock":"var"}'::jsonb, 567)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1429', 'LUNA SARKIT/PENDANT', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1429-r569.png', 16016, 20020, 'TRY', 'adet', '{"dimensions":"35 Q","features":"KRİSTAL CAM MALZEMEMDEN ÜRETİLMEKTEDİR","bulb":"LED","stock":"Var"}'::jsonb, 569)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1429-A', 'LUNA APLİK', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1429-A-r570.png', 4222.4, 5278, 'TRY', 'adet', '{"dimensions":"25X16X15 CM","features":"KRİSTAL CAM MALZEMEMDEN ÜRETİLMEKTEDİR","bulb":"LED","stock":"Var"}'::jsonb, 570)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1325', 'GLAZE TAŞ AVİZE /CHANDELIER', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1325-r571.png', 50960, 63700, 'TRY', 'adet', '{"dimensions":"90X40X120 CM","features":"CAM MALZEMEDEN ÜRETİLMEKTEDİR.","bulb":"SPOTLED","stock":"VAR"}'::jsonb, 571)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1340', 'LEAF YAPRAK AVİZE/CHANDELIER', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1340-r572.png', 80080, 100100, 'TRY', 'adet', '{"dimensions":"80X130 CM","features":"ÖZEL ÜRETİM YAPRAK CAM VE PASLANMAZ MAZLEMEDEN ÜRETİLMEKTEDİR.ŞEFFAF VE BAL RENKLERİ MEVCUTTUR","bulb":"SPOTLED","stock":"VAR"}'::jsonb, 572)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND13668', 'WAWE BOZNUZ AVİZE/CHANDELIER', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND13668-r573.png', 94640, 118300, 'TRY', 'adet', '{"dimensions":"80X190 CM","features":"ÖZEL ÜRETİM BOYNUZ ŞEKLİNDE  CAM VE PASLANMAZ MAZLEMEDEN ÜRETİLMEKTEDİR.ŞEFFAF VE BAL RENKLERİ MEVCUTTUR","bulb":"SPOTLED","stock":"VAR"}'::jsonb, 573)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1259', 'WATERFALL', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1259-r574.png', 55328, 69160, 'TRY', 'adet', '{"dimensions":"60X30X120","features":"METAL VE CAM MALZEMEDEN ÜRETİLMEKTEDİR.","bulb":"G9","stock":"YOK"}'::jsonb, 574)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1284-W', 'TRIANGE APLİK/WALL', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1284-W-r575.png', 6115.2, 7644, 'TRY', 'adet', '{"features":"KRİSTAL ALMAN SHOT CAM VE METAL MALZEMEDEN ÜRETİLMEKTEDİR.İSTANİLEN RENK KAPLANA BİLİR","bulb":"G9","stock":"YOK"}'::jsonb, 575)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1284', 'TRIANGE AVİZE /CHANDELIER', null, 0, 0, 'TRY', 'adet', '{}'::jsonb, 576)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1291-A', 'MODO AVİZE MASA ÜSTÜ FORM', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1291-A-r579.png', 18200, 22750, 'TRY', 'adet', '{"dimensions":"35X90 CM","features":"METAL VE CAM MALZEMEDEN ÜRETİLMEKTEDİR.","bulb":"G9","stock":"YOK"}'::jsonb, 579)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1712', 'DONA AVİZE/CHANDELIER', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1712-r580.png', 27664, 34580, 'TRY', 'adet', '{"dimensions":"85 Q \n8+4","features":"METAL KOLLU AVİZE 8 + 4 KOLLU\nİSTENİLEN RENK BOYANA BİLİR.","bulb":"E14","stock":"YOK"}'::jsonb, 580)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1234', 'STAMP SANS AVİZE/CHANDELIER', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1234-r581.png', 138320, 172900, 'TRY', 'adet', '{"dimensions":"150 X90 CM","features":"PASLANMAZ MALZEME ROZANS \nÖZEL ÜRETİM ÇİFT RENK  CAM  \nBEYAZ BAKIR\nBEYAZ ALTIN  RENK SEÇENEKLERİYLE","bulb":"SPOT","stock":"VAR"}'::jsonb, 581)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND123-6', 'Close 6 L pendant/sarkıt', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND123-6-r584.png', 1266.72, 1583.4, 'TRY', 'adet', '{"dimensions":"METAL UZUNLUK 80 CM\nÜRÜN TOPLAM UZUNLUK:120 CM \n5*5  KARE PROFİL","features":"5*5  KARE PROFİL malzemeden üretilmiştir.13 ve 15 cm lık glob camlar kullanılmıştır. İSTENİLEN RENK YAPILA BİLİR.","bulb":"E27","stock":"var"}'::jsonb, 584)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1426-W3', 'PETRA APLİK 3 L', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1426-W3-r586.png', 3276, 4095, 'TRY', 'adet', '{"dimensions":"41 CM X 15 CM\nPİRİNÇ ROZANS","features":"METAL VE MERMER  MALZEMEDEN ÜRETİLMEKTEDİR.","bulb":"G9","stock":"YOK"}'::jsonb, 586)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1426-W5', 'PETRA APLİK 5 L', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1426-W5-r587.png', 5460, 6825, 'TRY', 'adet', '{"dimensions":"75 CM X 15 CM\nPİRİNÇ ROZANS","features":"METAL VE MERMER  MALZEMEDEN ÜRETİLMEKTEDİR.","bulb":"G9","stock":"YOK"}'::jsonb, 587)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1426-W7', 'PETRA APLİK 7 L', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1426-W7-r588.png', 7644, 9555, 'TRY', 'adet', '{"dimensions":"110 CM X 15 CM\nPİRİNÇ ROZANS","features":"METAL VE MERMER  MALZEMEDEN ÜRETİLMEKTEDİR.","bulb":"G9","stock":"YOK"}'::jsonb, 588)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1426', 'PETRA OVAL AVİZE /CHANDELIER', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1426-r589.png', 47320, 59150, 'TRY', 'adet', '{"dimensions":"100X\n42X17 CM","features":"METAL VE MERMER  MALZEMEDEN ÜRETİLMEKTEDİR.","bulb":"DS LED","stock":"VAR"}'::jsonb, 589)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1242', 'ÇAN SARKIT/PENDANT', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1242-r592.png', 25480, 31850, 'TRY', 'adet', '{"dimensions":"60X120 CM","features":"ÜRÜN PİRİNÇ MALZEMEDEN ÜRETİLMİŞTİR. \nİSTENİLEN RENK KAPLAMA YAPILIR.","bulb":"G9","stock":"YOK"}'::jsonb, 592)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1278', 'ATLANTİS AVİZE/CHANDELİER', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1278-r595.png', 123760, 154700, 'TRY', 'adet', '{"dimensions":"L:120cm\nW:40 cm\nL: 90cm","features":"ÜRÜN ZİNCİR  VE METAL MALZEMEDEN ÜRETİLMEKTEDİR.\nGOLD","bulb":"E14","stock":"VAR"}'::jsonb, 595)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1279', 'Pantheon Zincir Avize/Chandelier', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1279-r599.png', 276640, 345800, 'TRY', 'adet', '{"dimensions":"L:180cm; \nW: 40cm;\n H: 60cm","features":"PASLANMAZ ÜST KASNAK  VE\n ZİNCİR   MALZEMEDEN ÜRETİLMEKTEDİR.","bulb":"E14","stock":"YOK"}'::jsonb, 599)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1277', 'Stream   Zincir Avize/Chandelier', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1277-r600.jpeg', 32760, 40950, 'TRY', 'adet', '{"dimensions":"60 Q","features":"ÜRÜN ZİNCİR  VE METAL MALZEMEDEN ÜRETİLMEKTEDİR.","bulb":"E14","stock":"YOK"}'::jsonb, 600)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1277-W3', 'Atlantique
 Zincir Aplik/WALL', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1277-W3-r601.jpeg', 12376, 15470, 'TRY', 'adet', '{"dimensions":"Dia : 20 cm\n L:55 cm","features":"ÜRÜN ZİNCİR  VE METAL MALZEMEDEN ÜRETİLMEKTEDİR.","bulb":"E14","stock":"YOK"}'::jsonb, 601)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1277-W2', 'Stream 
 Zincir Aplik/WALL', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1277-W2-r602.png', 10920, 13650, 'TRY', 'adet', '{"dimensions":"32X35X10 CM","features":"ÜRÜN ZİNCİR  VE METAL MALZEMEDEN ÜRETİLMEKTEDİR.","bulb":"E14","stock":"YOK"}'::jsonb, 602)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1277-W1', 'Stream 
 Zincir Aplik/WALL', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1277-W1-r603.jpeg', 9464, 11830, 'TRY', 'adet', '{"dimensions":"35X24X10 CM","features":"ÜRÜN ZİNCİR  VE METAL MALZEMEDEN ÜRETİLMEKTEDİR.","bulb":"E14","stock":"YOK"}'::jsonb, 603)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1277-L', 'Antique  Lambader/florlamp', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1277-L-r606.jpeg', 65520, 81900, 'TRY', 'adet', '{"dimensions":"H :175  cm \nQ:35 cm","features":"ÜRÜN ZİNCİR  VE METAL MALZEMEDEN ÜRETİLMEKTEDİR.","bulb":"E14","stock":"var"}'::jsonb, 606)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1277-A', 'Alonora', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1277-A-r607.jpeg', 21112, 26390, 'TRY', 'adet', '{"dimensions":"50  Q","features":"ÜRÜN ZİNCİR  VE METAL MALZEMEDEN ÜRETİLMEKTEDİR.","bulb":"E14","stock":"var"}'::jsonb, 607)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1277-B', 'Alonora Avize', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1277-B-r608.jpeg', 26936, 33670, 'TRY', 'adet', '{"dimensions":"50  Q","features":"METAL MALZEMEDEN OLUŞMAKTADIR.","bulb":"E14","stock":"var"}'::jsonb, 608)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1292-1', 'RIKA APLİK 1 L/WALL', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1292-1-r610.png', 2839.2, 3549, 'TRY', 'adet', '{"dimensions":"20X8 CM","features":"AHŞAP VE METAL MALZEMEDEN OLUŞMAKTADIR.","bulb":"E27","stock":"YOK"}'::jsonb, 610)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1292-2', 'RIKA APLİK 2 L /WALL', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1292-2-r611.png', 5605.6, 7007, 'TRY', 'adet', '{"dimensions":"32X30","features":"AHŞAP VE METAL MALZEMEDEN OLUŞMAKTADIR.","bulb":"E27","stock":"YOK"}'::jsonb, 611)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1292-3', 'RIKA APLİK3 L /WALL', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1292-3-r612.png', 8372, 10465, 'TRY', 'adet', '{"dimensions":"60X30 CM","features":"AHŞAP VE METAL MALZEMEDEN OLUŞMAKTADIR.","bulb":"E27","stock":"YOK"}'::jsonb, 612)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1292-4', 'Selfie Cam 15 cm Sarkıt', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1292-4-r613.png', 182, 227.5, 'TRY', 'adet', '{"dimensions":"DİA:15 CM","features":"Coated globe glass \nGolden rose, gold, chrome,","bulb":"E28","stock":"var"}'::jsonb, 613)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1292-5', 'Selfie Cam 20 cm Sarkıt', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1292-5-r614.png', 254.8, 318.5, 'TRY', 'adet', '{"dimensions":"Dia : 20 cm","features":"Coated globe glass \nGolden rose, gold, chrome,","bulb":"E27","stock":"var"}'::jsonb, 614)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1292-6', 'Selfie Cam 25 cm Sarkıt', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1292-6-r615.png', 327.6, 409.5, 'TRY', 'adet', '{"dimensions":"Dia : 25 cm","features":"Coated globe glass \nGolden rose, gold, chrome,","bulb":"E28","stock":"var"}'::jsonb, 615)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1292-7', 'Selfie Cam 35 cm Sarkıt

Renk seçin : bakır, altın, kromSelfie Cam 30 cm Sarkıt', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1292-7-r616.png', 691.6, 864.5, 'TRY', 'adet', '{"dimensions":"Dia : 35 cm","features":"Coated globe glass \nGolden rose, gold, chrome,","bulb":"E28","stock":"var"}'::jsonb, 616)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1292-8', 'Selfie Cam 40 cm Sarkıt', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1292-8-r617.png', 859.04, 1073.8, 'TRY', 'adet', '{"dimensions":"Dia : 40 cm","features":"Coated globe glass \nGolden rose, gold, chrome,","bulb":"E27","stock":"var"}'::jsonb, 617)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1292-9', 'Selfie Cam 50 cm Sarkıt', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1292-9-r618.png', 1601.6, 2002, 'TRY', 'adet', '{"dimensions":"Dia : 50 cm","features":"Coated globe glass \nGolden rose, gold, chrome,","bulb":"E27","stock":"var"}'::jsonb, 618)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1292-10', 'Selfie2 Cam 20 cm Sarkıt

Renk seçin : bakır, altın, kromSelfie2 Cam 20 cm Sarkıt', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1292-10-r619.png', 291.2, 364, 'TRY', 'adet', '{"dimensions":"Çap 20 cm","features":"Ürün yarısınada kadar boyalı yarısı şeffafdır alt kısım açıktır. 3 ölçü ve 3 rengi bulunmaktadır. Bakır, altın ve krom","bulb":"1 adet E27 ampul","stock":"var"}'::jsonb, 619)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1292-11', 'Selfie2 Cam 30 cm Sarkıt

Renk seçin : bakır, altın, kromSelfie2 Cam 30 cm Sarkıt', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1292-11-r620.png', 495.04, 618.8, 'TRY', 'adet', '{"dimensions":"Çap 30 cm","features":"Ürün yarısınada kadar boyalı yarısı şeffafdır alt kısım açıktır. 3 ölçü ve 3 rengi bulunmaktadır. Bakır, altın ve krom","bulb":"1 adet E27 ampul","stock":"var"}'::jsonb, 620)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1292-12', 'Selfie2 Cam 40 cm Sarkıt

Renk seçin : bakır, altın, kromSelfie2 Cam 40 cm Sarkıt', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1292-12-r621.png', 749.84, 937.3, 'TRY', 'adet', '{"dimensions":"Çap 40 cm","features":"Ürün yarısınada kadar boyalı yarısı şeffafdır alt kısım açıktır. 3 ölçü ve 3 rengi bulunmaktadır. Bakır, altın ve krom","bulb":"1 adet E27 ampul","stock":"YOK"}'::jsonb, 621)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1428 -W', 'BRUBECK APLİK/WALL', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1428--W-r622.png', 3640, 4550, 'TRY', 'adet', '{"dimensions":"22X50X9 CM","features":"METAL MALZEMEDEN ÜRETİLMEKTEDİR.İSTENİLEN RENK KAPLAMA VE RAL KODUNA GÖRE BOYA YAPILMAKTADIR","bulb":"E14","stock":"YOK"}'::jsonb, 622)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1428', 'BRUBECK SARKIT/PENDANT', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1428-r623.png', 6988.8, 8736, 'TRY', 'adet', '{"dimensions":"20X30CM","features":"METAL MALZEMEDEN ÜRETİLMEKTEDİR.İSTENİLEN RENK KAPLAMA VE RAL KODUNA GÖRE BOYA YAPILMAKTADIR","bulb":"E14","stock":"YOK"}'::jsonb, 623)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1228-A', 'SPIDER 6 L SARKIT/PENDANT', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1228-A-r624.png', 12740, 15925, 'TRY', 'adet', '{"dimensions":"40 Q","features":"PASLANMAZ MALZEME 15 Q \n5 ADET ASİMETRİK \nTOPLARDAN OLUŞMAKTADIR.\nBAKIR,KROM,ALTIN,FÜME RENKLERİ MEVCUTTUR.","bulb":"E14","stock":"var"}'::jsonb, 624)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1228-15L', 'SPIDER 15 L SARKIT/PENDANT', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1228-15L-r625.png', 38220, 47775, 'TRY', 'adet', '{"dimensions":"45 Q","features":"PASLANMAZ MALZEME 15 Q \n5 ADET ASİMETRİK \nTOPLARDAN OLUŞMAKTADIR.\nBAKIR,KROM,ALTIN,FÜME RENKLERİ MEVCUTTUR.","bulb":"E14","stock":"var"}'::jsonb, 625)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1363-W', 'IKE APLİK/WALL', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1363-W-r626.png', 988, 1235, 'TRY', 'adet', '{"dimensions":"29X6 CM","features":"METAL KAPLAMA VE FIRIN BOYA YAPILMAKTADIR.","bulb":"GU10","stock":"YOK"}'::jsonb, 626)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1363', 'IKE 1 L SARKIT/PENDANT', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1363-r627.png', 1144, 1430, 'TRY', 'adet', '{"dimensions":"30X6 CM","features":"METAL KAPLAMA VE FIRIN BOYA YAPILMAKTADIR.","bulb":"GU10","stock":"YOK"}'::jsonb, 627)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1318', 'BOMP ABAJUR/TABLE', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1318-r630.png', 17472, 21840, 'TRY', 'adet', '{"dimensions":"28X47 CM","features":"METAL VE ÜFLEME CAM MALZEMEDEN ÜRETİLMEKTEDİR. CAM RENGİ İSTENİLEN RENK BOYANA BİLİR","bulb":"E27","stock":"YOK"}'::jsonb, 630)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1362', 'FANEUROPE LAMBADER/FLOOR LAMP', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1362-r632.png', 9464, 11830, 'TRY', 'adet', '{"dimensions":"160X33X20","features":"MERMER AYAK METAL GÖVDE GLOB CAMDAN OLUŞMAKTADIR. BAKIR,KROM,ALTIN,ESKİTME,GOLD KAPLAMA YAPILABİLİR.\nRAL  KODUNA GÖRE ÜRETİLEBİLİR","bulb":"E14","stock":"YOK"}'::jsonb, 632)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1308-W', 'LOL APLİK/WALL', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1308-W-r633.png', 2147.6, 2684.5, 'TRY', 'adet', '{"dimensions":"25X22X20 CM","features":"METAL VE ÜFLEME CAM MALZEMEDEN ÜRETİLMEKTEDİR. CAM RENGİ İSTENİLEN RENK BOYANA BİLİR","bulb":"E27","stock":"YOK"}'::jsonb, 633)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1308--1', 'LOL SARKIT/PENDANT', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1308--1-r634.png', 2730, 3412.5, 'TRY', 'adet', '{"dimensions":"20X30X30 CM","features":"METAL VE CAM MALZEMEDEN ÜRETİLMEKTEDİR. CAM RENGİ İSTENİLEN RENK KAPLANA BİLİR","bulb":"E27","stock":"YOK"}'::jsonb, 634)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1308--2', 'LOL SARKIT/PENDANT', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1308--2-r635.png', 3458, 4322.5, 'TRY', 'adet', '{"dimensions":"30X35X35 CM","features":"METAL VE CAM MALZEMEDEN ÜRETİLMEKTEDİR. CAM RENGİ İSTENİLEN RENK KAPLANA BİLİR","bulb":"E14","stock":"YOK"}'::jsonb, 635)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1309-1', 'LOL MASA LAMBASI 1 /TABLE', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1309-1-r636.png', 4076.8, 5096, 'TRY', 'adet', '{"dimensions":"28X25X30 CM","features":"METAL VE CAM MALZEMEDEN ÜRETİLMEKTEDİR. CAM RENGİ İSTENİLEN RENK KAPLANA BİLİR.\n30 Q","bulb":"E27","stock":"YOK"}'::jsonb, 636)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1309-2', 'LOL MASA LAMBASI 2 /TABLE', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1309-2-r637.png', 3858.4, 4823, 'TRY', 'adet', '{"dimensions":"17,5X25X17,5X38 CM","features":"METAL VE CAM MALZEMEDEN ÜRETİLMEKTEDİR. CAM RENGİ İSTENİLEN RENK KAPLANA BİLİR.\n20 Q","bulb":"E14","stock":"YOK"}'::jsonb, 637)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1309-3', 'LOL MASA LAMBASI 3 /TABLE', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1309-3-r638.png', 4222.4, 5278, 'TRY', 'adet', '{"dimensions":"53X32X45X20 CM","features":"METAL VE CAM MALZEMEDEN ÜRETİLMEKTEDİR. CAM RENGİ İSTENİLEN RENK KAPLANA BİLİR","bulb":"E14","stock":"YOK"}'::jsonb, 638)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1349-W', 'TWIN  APLİK/WALL', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1349-W-r639.png', 18200, 22750, 'TRY', 'adet', '{"dimensions":"47X24X53 CM","features":"METAL VE DÖKÜM MALZEMEDEN OLUŞMAKTADIR.KUMAŞ ŞAPKA KULLANILMAKTADIR.","bulb":"E14","stock":"YOK"}'::jsonb, 639)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1595-T', 'TWIN ABAJUR/TABLE', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1595-T-r640.png', 21112, 26390, 'TRY', 'adet', '{"dimensions":"28X45X85 CM","features":"METAL VE DÖKÜM MALZEMEDEN OLUŞMAKTADIR.KUMAŞ ŞAPKA KULLANILMAKTADIR.MERMER AYAK","bulb":"E27","stock":"YOK"}'::jsonb, 640)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1595', 'TWIN DRESUAR', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1595-r641.png', 57200, 71500, 'TRY', 'adet', '{"dimensions":"120X45X80 CM","features":"METAL VE DÖKÜM MALZEMEDEN OLUŞMAKTADIR.KUMAŞ ŞAPKA KULLANILMAKTADIR.MERMER AYAK","stock":"YOK"}'::jsonb, 641)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1619-L', 'VINGIL LAMBADER/FLOOR', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1619-L-r645.png', 8008, 10010, 'TRY', 'adet', '{"dimensions":"165X40X20 CM","features":"METAL MALZEME KUMAŞ ŞAPKADAN OLUŞMAKTADIR.","bulb":"E27","stock":"YOK"}'::jsonb, 645)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1619-L1', 'Chris Octopus 8L Sarkıt', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1619-L1-r646.png', 1601.6, 2002, 'TRY', 'adet', '{"dimensions":"Ürünün istenilen ölçülerde üretilebilmektedir ve istenilen renk kumaş kablodan yapılabilmektedir.","features":"Ürün istenilen renk kumaş kablodan yapılabilmektedir. Krom tesisat ve krom duy kullanılmıştır. Şeffaf, beyaz, retro.","bulb":"E27","stock":"YOK"}'::jsonb, 646)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1619-L2', 'Chris Octopus 6L Sarkıt', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1619-L2-r647.png', 1201.2, 1501.5, 'TRY', 'adet', '{"dimensions":"Ürünün istenilen ölçülerde üretilebilmektedir ve ince halat kablodan üretilmiştir","features":"Siyah rozans siyah duy  edison glop ampul","bulb":"E27","stock":"YOK"}'::jsonb, 647)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1619-L3', 'MONOLIZA APLK/WALL', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1619-L3-r648.jpeg', 218.4, 273, 'TRY', 'adet', '{"features":"ÜRÜN METAL MALZEMEDEN ÜRETİLMEKTEDİR. İSTENİLEN RENK BOYA VE KAPLAMA YAPILA BILIR.","bulb":"E14","stock":"var"}'::jsonb, 648)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1619-L4', 'PO 2 L APLİK/WALL', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1619-L4-r649.png', 538.72, 673.4, 'TRY', 'adet', '{"features":"ÜRÜN METAL MALZEMEDEN ÜRETİLMEKTEDİR. İSTENİLEN RENK BOYA VE KAPLAMA YAPILA BILIR.","bulb":"E14","stock":"var"}'::jsonb, 649)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1619-L5', 'PO APLİK/WALL', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1619-L5-r650.png', 269.36, 336.7, 'TRY', 'adet', '{"features":"ÜRÜN METAL MALZEMEDEN ÜRETİLMEKTEDİR. İSTENİLEN RENK BOYA VE KAPLAMA YAPILA BILIR.","bulb":"E14","stock":"var"}'::jsonb, 650)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1619-L6', 'TRE WALL/APLİK', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1619-L6-r651.png', 4513.6, 5642, 'TRY', 'adet', '{"features":"ÜRÜN METAL VE CAM MALZEMEDEN OLUŞMAKTADIR.\nİSTENİLEN RENK KAPLANMAKTADIR.","bulb":"E14","stock":"YOK"}'::jsonb, 651)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1660', 'VEKTOR APLİK/WALL', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1660-r652.png', 4076.8, 5096, 'TRY', 'adet', '{"dimensions":"37X18X15 CM","features":"ÜRÜN METAL VE KRİSTAL MALZEMEDEN OLUŞMAKTADIR.\nİSTENİLEN RENK KAPLANMAKTADIR.","bulb":"E14","stock":"YOK"}'::jsonb, 652)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1230', 'CADRE GLASS ARMATÜR/CEILING', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1230-r653.png', 21112, 26390, 'TRY', 'adet', '{"dimensions":"160X105X70 CM","features":"METAL MALZEMEDEN OLUŞMAKTADIR. İSTEDİĞİNİZ RENK BOYANMAKTADIR.","bulb":"E27","stock":"YOK"}'::jsonb, 653)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1230-W', 'CADRE  GLASS APLİK/WALL', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1230-W-r654.png', 2730, 3412.5, 'TRY', 'adet', '{"dimensions":"95X25X15 CM","features":"2 CAMLI METAL MALZEMEDEN OLUŞMAKTADIR. İSTEDİĞİNİZ RENK BOYANMAKTADIR.","bulb":"E27","stock":"YOK"}'::jsonb, 654)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1230-F', 'CADRE GLASS LAMBADER/FLOOR', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1230-F-r656.png', 10046.4, 12558, 'TRY', 'adet', '{"dimensions":"25X55 X165 CM","features":"METAL MALZEMEDEN OLUŞMAKTADIR. İSTEDİĞİNİZ RENK BOYANMAKTADIR.","bulb":"E27","stock":"YOK"}'::jsonb, 656)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1255-O1', 'ARIA AVİZE/CHANDELİER', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1255-O1-r657.png', 2256.8, 2821, 'TRY', 'adet', '{"dimensions":"50  Q","features":"METAL VE SHOT CAM DAN OLUŞMAKTADIR.","bulb":"LED","stock":"var"}'::jsonb, 657)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1255-O2', 'ARIA  AVİZE/CHANDELIER', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1255-O2-r658.png', 3276, 4095, 'TRY', 'adet', '{"dimensions":"80 Q","features":"YUVARLAK FORM\nMETAL VE SHOT CAM DAN OLUŞMAKTADIR.","bulb":"LED","stock":"var"}'::jsonb, 658)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1255-O3', 'ARIA  OVAL AVİZE/CHANDELIER', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1255-O3-r659.png', 5023.2, 6279, 'TRY', 'adet', '{"dimensions":"95 Q\n45 CM","bulb":"E27","stock":"var"}'::jsonb, 659)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1291', 'ROX ARMATÜR', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1291-r660.png', 3931.2, 4914, 'TRY', 'adet', '{"dimensions":"Q:15","features":"METAL MALZEME ROZANS \nKRİSTAL CAMDAN OLUŞMAKTADIR","bulb":"G9","stock":"YOK"}'::jsonb, 660)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1291 -W', 'ROX  1 L APLİK/WALL', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1291--W-r661.png', 5824, 7280, 'TRY', 'adet', '{"dimensions":"12X20 CM","features":"METAL MALZEME ROZANS \nKRİSTAL CAMDAN OLUŞMAKTADIR","bulb":"G9","stock":"YOK"}'::jsonb, 661)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1291 -W2', 'ROX  1 L APLİK/WALL', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1291--W2-r662.png', 6552, 8190, 'TRY', 'adet', '{"dimensions":"50X12 CM","features":"METAL MALZEME ROZANS \nKRİSTAL CAMDAN OLUŞMAKTADIR","bulb":"G9","stock":"YOK"}'::jsonb, 662)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1291 -W3', 'ROX  2 L APLİK/WALL', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1291--W3-r663.png', 9100, 11375, 'TRY', 'adet', '{"dimensions":"65X12 CM","features":"METAL MALZEME ROZANS \nKRİSTAL CAMDAN OLUŞMAKTADIR","bulb":"G9X2","stock":"YOK"}'::jsonb, 663)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1291 -W4', 'ROX  4 L APLİK/WALL', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1291--W4-r664.png', 18200, 22750, 'TRY', 'adet', '{"dimensions":"65 X20 CM","features":"METAL MALZEME ROZANS \nKRİSTAL CAMDAN OLUŞMAKTADIR","bulb":"G9X4","stock":"YOK"}'::jsonb, 664)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1291 -W5', 'ROX  2 L APLİK/WALL', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1291--W5-r665.png', 9464, 11830, 'TRY', 'adet', '{"dimensions":"30X22X15 CM","features":"METAL MALZEME ROZANS \nKRİSTAL CAMDAN OLUŞMAKTADIR","bulb":"G9X2","stock":"YOK"}'::jsonb, 665)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1291-1', 'ROX AVİZE /CHANDELIER', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1291-1-r670.jpeg', 47320, 59150, 'TRY', 'adet', '{"dimensions":"Q: 95 CM","features":"YUVARLAK FORM \n  18 adet cam kullanılmıştır","bulb":"G9X18","stock":"YOK"}'::jsonb, 670)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1291-2', 'ROX AVİZE /CHANDELIER', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1291-2-r671.png', 101920, 127400, 'TRY', 'adet', '{"dimensions":"Q: 80 CM","features":"METAL MALZEME ROZANS \nKRİSTAL CAMDAN OLUŞMAKTADIR","bulb":"G9X18","stock":"YOK"}'::jsonb, 671)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1333', 'LORIS SARKIT 20 L SARKIT/PENDANT', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1333-r672.png', 54600, 68250, 'TRY', 'adet', '{"dimensions":"Q: 60 CM\n38X6X120 CM","features":"METAL MALZEME ROZANS \nKRİSTAL CAMDAN OLUŞMAKTADIR","bulb":"G9X18","stock":"YOK"}'::jsonb, 672)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1417', 'INFINTY AVİZE/CHANDELIER', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1417-r674.png', 32760, 40950, 'TRY', 'adet', '{"dimensions":"55X77,5 CM","features":"METAL  VE KRİSTAL CAMLARLA DEKORE EDİLMİŞTİR.\nBAKIR,KROM,ALTIN VE RAL BOYA KODLARINA GÖRE ÜRETİLMEKTEDİR.","bulb":"E14","stock":"YOK"}'::jsonb, 674)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1319-W1', 'BALLET APLİK 1L /WALL', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1319-W1-r676.png', 2766.4, 3458, 'TRY', 'adet', '{"dimensions":"15 X 20 CM","features":"METAL PROFİLDEN OLUŞMAKTADIR.KUMAŞ ŞAPKALARLA DEKORE EDİLMİŞTİR.\nBAKIR,KROM,ALTIN VE RAL BOYA KODLARINA GÖRE ÜRETİLMEKTEDİR.","bulb":"E14","stock":"YOK"}'::jsonb, 676)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1319-W2', 'BALLET APLİK 2L /WALL', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1319-W2-r677.png', 5532.8, 6916, 'TRY', 'adet', '{"dimensions":"40X 20 CM","features":"METAL PROFİLDEN OLUŞMAKTADIR.KUMAŞ ŞAPKALARLA DEKORE EDİLMİŞTİR.\nBAKIR,KROM,ALTIN VE RAL BOYA KODLARINA GÖRE ÜRETİLMEKTEDİR.","bulb":"E14","stock":"YOK"}'::jsonb, 677)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1319-W3', 'BALLET APLİK 3 L /WALL', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1319-W3-r678.png', 8008, 10010, 'TRY', 'adet', '{"dimensions":"50X20 CM","features":"METAL PROFİLDEN OLUŞMAKTADIR.KUMAŞ ŞAPKALARLA DEKORE EDİLMİŞTİR.\nBAKIR,KROM,ALTIN VE RAL BOYA KODLARINA GÖRE ÜRETİLMEKTEDİR.","bulb":"E14","stock":"YOK"}'::jsonb, 678)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1319', 'BALLET ABAJUR/TABLE LAMP', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1319-r679.png', 6552, 8190, 'TRY', 'adet', '{"dimensions":"60X30","features":"METAL PROFİLDEN OLUŞMAKTADIR.KUMAŞ ŞAPKALARLA DEKORE EDİLMİŞTİR.\nBAKIR,KROM,ALTIN VE RAL BOYA KODLARINA GÖRE ÜRETİLMEKTEDİR.","bulb":"E14","stock":"YOK"}'::jsonb, 679)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1319-1', 'BALLET TEK KATLI  AVİZE/CHANDELIER', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1319-1-r680.png', 21112, 26390, 'TRY', 'adet', '{"dimensions":"50 Q","features":"METAL PROFİLDEN OLUŞMAKTADIR.KUMAŞ ŞAPKALARLA DEKORE EDİLMİŞTİR.\nBAKIR,KROM,ALTIN VE RAL BOYA KODLARINA GÖRE ÜRETİLMEKTEDİR.","bulb":"E14","stock":"YOK"}'::jsonb, 680)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1319-B', 'BALLET 2 KATLI  AVİZE/CHANDELIER', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1319-B-r682.png', 54600, 68250, 'TRY', 'adet', '{"dimensions":"95X100 CM","features":"METAL PROFİLDEN OLUŞMAKTADIR.KUMAŞ ŞAPKALARLA DEKORE EDİLMİŞTİR.\nBAKIR,KROM,ALTIN VE RAL BOYA KODLARINA GÖRE ÜRETİLMEKTEDİR.","bulb":"E14","stock":"YOK"}'::jsonb, 682)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1319-B2', 'BALLET  3 KATLI  AVİZE/CHANDELIER', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1319-B2-r683.png', 67704, 84630, 'TRY', 'adet', '{"dimensions":"100X105","features":"METAL PROFİLDEN OLUŞMAKTADIR.KUMAŞ ŞAPKALARLA DEKORE EDİLMİŞTİR.\nBAKIR,KROM,ALTIN VE RAL BOYA KODLARINA GÖRE ÜRETİLMEKTEDİR.","bulb":"E14","stock":"YOK"}'::jsonb, 683)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1328', 'LOTUS 1 L  SARKIT/PENDANT', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1328-r684.png', 5460, 6825, 'TRY', 'adet', '{"dimensions":"30X18X100 CM","features":"METAL MALZEME ROZANS \nKRİSTAL CAMDAN OLUŞMAKTADIR","bulb":"G9","stock":"YOK"}'::jsonb, 684)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1340-W', 'AOSONG APLİK/WALL', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1340-W-r685.png', 8736, 10920, 'TRY', 'adet', '{"dimensions":"90X23X10 CM","features":"METAL MALZEME CAM ÇUBUKLARDAN OLUŞMAKTADIR","stock":"YOK"}'::jsonb, 685)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1315', 'SMOKE SARKIT/PENDANT', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1315-r687.png', 3203.2, 4004, 'TRY', 'adet', '{"dimensions":"40X13 CM","features":"ÜRÜN METAL VE CAM MALZEMEDEN OLUŞMAKTADIR.","bulb":"E27","stock":"YOK"}'::jsonb, 687)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1401', 'THOR 10 L SARKIT/PENDANT', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1401-r689.png', 12958.4, 16198, 'TRY', 'adet', '{"dimensions":"45 Q","features":"ÜRÜN METAL VE CAM MALZEMEDEN OLUŞMAKTADIR.","bulb":"G9","stock":"YOK"}'::jsonb, 689)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1324-A', 'RETRO SARKIT/PENDANT', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1324-A-r690.png', 9900.8, 12376, 'TRY', 'adet', '{"dimensions":"D30*H36","features":"ÜRÜN CAM MALZEMEDEN OLUŞMAKTADIR.","bulb":"E27","stock":"YOK"}'::jsonb, 690)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1324-B', 'RETRO SARKIT/PENDANT', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1324-B-r691.png', 9900.8, 12376, 'TRY', 'adet', '{"dimensions":"D30*H32","features":"ÜRÜN CAM MALZEMEDEN OLUŞMAKTADIR.","bulb":"E27","stock":"YOK"}'::jsonb, 691)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1225', 'ROKKIE  TEKLİ SARKIT/PENDANT', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1225-r692.png', 946.4, 1183, 'TRY', 'adet', '{"dimensions":"22 Q","features":"METAL MALZEME  VE GLOB CAMDAN OLUŞMAKTADIR.\nBAKIR,KROM,ALTIN,ESKİTME  KAPLAMA \nRAL KODUNA GÖREDE BOYANMAKTADIR","bulb":"E14","stock":"YOK"}'::jsonb, 692)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1323', 'NEWTON TEKLİ SARKIT/PENDANT', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1323-r696.png', 2730, 3412.5, 'TRY', 'adet', '{"dimensions":"120X35X15 CM","features":"METAL MALZEME  VE GLOB CAMDAN OLUŞMAKTADIR.\nBAKIR,KROM,ALTIN,ESKİTME  KAPLAMA \nRAL KODUNA GÖREDE BOYANMAKTADIR","bulb":"E27","stock":"YOK"}'::jsonb, 696)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1317', 'HOOP TEKLİ SARKIT/PENDANT', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1317-r697.png', 2730, 3412.5, 'TRY', 'adet', '{"dimensions":"25X45X10 CM","features":"METAL MALZEME  VE GLOB CAMDAN OLUŞMAKTADIR.\nBAKIR,KROM,ALTIN,ESKİTME  KAPLAMA \nRAL KODUNA GÖREDE BOYANMAKTADIR","bulb":"E14","stock":"YOK"}'::jsonb, 697)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1331', 'ATOM SARKIT/PENDANT', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1331-r699.png', 12376, 15470, 'TRY', 'adet', '{"dimensions":"75X65 CM","features":"METAL MALZEMEDEN OLUŞMAKTADIR.\nBAKIR,KROM,ALTIN,ESKİTME  KAPLAMA \nRAL KODUNA GÖREDE BOYANMAKTADIR","bulb":"G9","stock":"YOK"}'::jsonb, 699)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1332-A', 'ALICE
 APLİK /WALL LAMP', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1332-A-r700.png', 6916, 8645, 'TRY', 'adet', '{"features":"Ürün metal malzeme üzeri kaplama yapılmaktadır. Bakır/copper , altın/gold , krom/chrome , füme/smoke  glas: bal/honey , beyaz/white , şeffaf /clear , füme/smoke","bulb":"E14","stock":"YOK"}'::jsonb, 700)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1716', 'Trans Şeffaf Cam Sarkıt 20 Cm', null, 2147.6, 2684.5, 'TRY', 'adet', '{"dimensions":"Dia : 20 cm","features":"Transparent or matte white glass","bulb":"E27","stock":"YOK"}'::jsonb, 701)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1681', 'RAIN DROP SARKIT/PENDANT', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1681-r705.png', 69888, 87360, 'TRY', 'adet', '{"dimensions":"150X50","features":"ÜRÜN METAL MALZEMEDEN OLUŞMAKTADIR\n56 SARKITDAN BULUNMAKTADIR","bulb":"LED","stock":"VAR"}'::jsonb, 705)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1423', 'DEVEKUŞU AVİZE /CHANDEIER', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1423-r707.png', 40040, 50050, 'TRY', 'adet', '{"dimensions":"70 Q","features":"ALUMİNYUM DÖKÜM MALZEMEDEN ÜRETİLMİŞTİR.KAPLAMA VE TÜĞ RENK ŞEÇENEKLERİMİZ<MEVCUTTUR.","bulb":"G9","stock":"YOK"}'::jsonb, 707)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1423-T', 'DEVEKUŞU ABAJUR/TABLE', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1423-T-r708.png', 14560, 18200, 'TRY', 'adet', '{"dimensions":"60 X 60 CM","features":"ALUMİNYUM DÖKÜM MALZEMEDEN ÜRETİLMİŞTİR.KAPLAMA VE TÜĞ RENK ŞEÇENEKLERİMİZ<MEVCUTTUR.","bulb":"G9","stock":"YOK"}'::jsonb, 708)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1423-F', 'DEVEKUŞU LAMBADER/FLOOR', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1423-F-r709.png', 41600, 52000, 'TRY', 'adet', '{"dimensions":"170X100 CM","features":"ALUMİNYUM DÖKÜM MALZEMEDEN ÜRETİLMİŞTİR.KAPLAMA VE TÜĞ RENK ŞEÇENEKLERİMİZ<MEVCUTTUR.","bulb":"G9","stock":"YOK"}'::jsonb, 709)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1321', 'ARTHUR  LAMBADER
BÜYÜK', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1321-r710.png', 13520, 16900, 'TRY', 'adet', '{"dimensions":"YÜKSEKLİK 190 CM  \nAYARLANABİLİR.\nGENİŞLİK 150 CM","features":"Ürün metal malzemeden oluşmaktadır. ESKİTME renk kaplama yapılmıştır. MERMER TABLA\nESKİTME VE KROM RENKLERİ MEVCUTTUR","bulb":"E27*1","stock":"YOK"}'::jsonb, 710)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1734', 'EMEL MASA LAMBASI', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1734-r712.png', 7571.2, 9464, 'TRY', 'adet', '{"dimensions":"30 Q","features":"ÜRÜN METAL VE CAM MALZEMEDEN ÜRETİLMEKTEDİR.BAL VE FÜME RENKLERİ MEVCUTTUR.","bulb":"E14","stock":"YOK"}'::jsonb, 712)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1735', 'NOSSA ABAJUR /TABLE', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1735-r713.png', 4732, 5915, 'TRY', 'adet', '{"dimensions":"56X15 CM","features":"METAL MALZEMEDEN ÜRETİLMİŞTİR. İSTENİLEN RENK KAPLANABİLİR.","bulb":"E14","stock":"YOK"}'::jsonb, 713)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1736-W', 'MODOS APLİK', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1736-W-r714.png', 3494.4, 4368, 'TRY', 'adet', '{"dimensions":"45X15 CM","features":"METAL VE CAM MALZEMEDEN ÜRETİLMİŞTİR. İSTENİLEN RENK KAPLANABİLİR. 5 ADET GLOB CAMDAN OLUŞMAKTADIR.","bulb":"E14","stock":"YOK"}'::jsonb, 714)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1736-T', 'MODOS MASA LAMBASI', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1736-T-r715.png', 4222.4, 5278, 'TRY', 'adet', '{"dimensions":"65X18 CM","features":"METAL VE CAM MALZEMEDEN ÜRETİLMİŞTİR. İSTENİLEN RENK KAPLANABİLİR. 5 ADET GLOB CAMDAN OLUŞMAKTADIR.","bulb":"E14","stock":"YOK"}'::jsonb, 715)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1736-L', 'MODOS LAMBADER', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1736-L-r716.png', 16744, 20930, 'TRY', 'adet', '{"dimensions":"15 X160 CM","features":"METAL CAM VE MERMER MALZEMEDEN ÜRETİLMİŞTİR. İSTENİLEN RENK KAPLANABİLİR. 5 ADET GLOB CAMDAN OLUŞMAKTADIR.","bulb":"E14","stock":"YOK"}'::jsonb, 716)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1331-W', 'QRATUS APLİK/WALL', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1331-W-r717.png', 5532.8, 6916, 'TRY', 'adet', '{"dimensions":"30X43 CM","features":"METAL MALZEMEDEN ÜRETİLİP, LAKE KAPLAMA UYGULANMAKTADIR. BAKIR,ALTIN,KROM FÜME KUMAŞ ŞAPKA RENFİ KARTELADAN SEÇİLEBİLİR.","bulb":"E14","stock":"YOK"}'::jsonb, 717)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1331-T', 'QRATUS ABAJUR/TABLE', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1331-T-r718.png', 6843.2, 8554, 'TRY', 'adet', '{"dimensions":"30X55 CM","features":"METAL MALZEMEDEN ÜRETİLİP, LAKE KAPLAMA UYGULANMAKTADIR. BAKIR,ALTIN,KROM FÜME KUMAŞ ŞAPKA RENFİ KARTELADAN SEÇİLEBİLİR.","bulb":"E14","stock":"YOK"}'::jsonb, 718)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1734-T', 'PND1734-T', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1734-T-r720.png', 4222.4, 5278, 'TRY', 'adet', '{"dimensions":"65X45 CM","features":"METAL MALZEMEDEN ÜRETİLİP, LAKE KAPLAMA UYGULANMAKTADIR. BAKIR,ALTIN,KROM FÜME KUMAŞ ŞAPKA RENFİ KARTELADAN SEÇİLEBİLİR.","bulb":"E14","stock":"YOK"}'::jsonb, 720)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1734-L', 'PND1734-L', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1734-L-r721.png', 10046.4, 12558, 'TRY', 'adet', '{"dimensions":"55X165 CM","features":"METAL MALZEMEDEN ÜRETİLİP, LAKE KAPLAMA UYGULANMAKTADIR. BAKIR,ALTIN,KROM FÜME KUMAŞ ŞAPKA RENFİ KARTELADAN SEÇİLEBİLİR.","bulb":"E14","stock":"YOK"}'::jsonb, 721)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1733', 'ABE APLİK', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1733-r722.jpeg', 9464, 11830, 'TRY', 'adet', '{"dimensions":"20x31x46cm","features":"METAL MALZEMEDEN ÜRETİLİP, LAKE KAPLAMA UYGULANMAKTADIR. BAKIR,ALTIN,KROM FÜME KUMAŞ ŞAPKA RENGİ KARTELADAN SEÇİLEBİLİR.","bulb":"E14","stock":"YOK"}'::jsonb, 722)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1285-W', 'TRAYON APLİK/WALL', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1285-W-r725.png', 6115.2, 7644, 'TRY', 'adet', '{"dimensions":"25X16 CM","features":"ALÜMİNYUM DÖKÜM MALZEDEN ÜRETİLMEKTEDİR. LAKE KAPLAMA BAKIR,KROM,ALTIN,FÜME KAPLANMAKTADIR.RAL KODUNA GÖRE BOYANABİLİR.ŞAPKA RENKLERİNİ KUMAŞ KARTELAMIZDAN SEÇEBİLİRSİNİZ.","bulb":"E14","stock":"YOK"}'::jsonb, 725)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1285-T', 'TRAYON ABAJUR/TABLE', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1285-T-r726.png', 8444.8, 10556, 'TRY', 'adet', '{"dimensions":"45X2CM","features":"ALÜMİNYUM DÖKÜM MALZEDEN ÜRETİLMEKTEDİR. LAKE KAPLAMA BAKIR,KROM,ALTIN,FÜME KAPLANMAKTADIR.RAL KODUNA GÖRE BOYANABİLİR.ŞAPKA RENKLERİNİ KUMAŞ KARTELAMIZDAN SEÇEBİLİRSİNİZ.","bulb":"E14","stock":"YOK"}'::jsonb, 726)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1312-W', 'PLACASA APLİK/WALL', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1312-W-r727.png', 8008, 10010, 'TRY', 'adet', '{"dimensions":"30 X 68 CM","features":"METAL PLAKA ŞEKLİNDE KESİLMİŞ METAL PARÖALARDAN OLUŞMAKTADIR.ESKİTME,BAKIR,ALTIN,KROM VE RAL KODLARINA GÖRE ÜRETİLMEKTEDİR.","bulb":"G9","stock":"YOK"}'::jsonb, 727)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1355-W', 'XINHX APLİK /WALL', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1355-W-r728.png', 8008, 10010, 'TRY', 'adet', '{"dimensions":"70X10 CM","features":"İÇİ DOLU CAM ÇUBUK VE LAZER KESİM METALDEN OLUŞMAKTADIR.ESKİTME,BAKIR,KROM KAPLAMA YAPILIP,RAL KODUNA GÖRE BOYANMAKTADIR.","bulb":"E14","stock":"YOK"}'::jsonb, 728)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1355-W2', 'XINHX APLİK /WALL', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1355-W2-r729.png', 7134.4, 8918, 'TRY', 'adet', '{"dimensions":"15X7,5X30 CM","features":"İÇİ DOLU CAM ÇUBUK VE LAZER KESİM METALDEN OLUŞMAKTADIR.ESKİTME,BAKIR,KROM KAPLAMA YAPILIP,RAL KODUNA GÖRE BOYANMAKTADIR.","bulb":"E14","stock":"YOK"}'::jsonb, 729)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1355', 'XINHX SARKIT', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1355-r730.png', 9464, 11830, 'TRY', 'adet', '{"dimensions":"25X18 CM","features":"İÇİ DOLU CAM ÇUBUK VE LAZER KESİM METALDEN OLUŞMAKTADIR.ESKİTME,BAKIR,KROM KAPLAMA YAPILIP,RAL KODUNA GÖRE BOYANMAKTADIR.","bulb":"E14","stock":"YOK"}'::jsonb, 730)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1433  -W', 'ANUOMY APLİK/WALL', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1433--W-r736.png', 2730, 3412.5, 'TRY', 'adet', '{"dimensions":"33X18X5 CM","features":"METAL MAZLEMEDEN OLUŞMAKTADIR.İSTENİLENRENK KAPLANMA BİLMEKTEDİR.","bulb":"E14","stock":"YOK"}'::jsonb, 736)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1433  -WA', 'RİXOS APLİK/WALL', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1433--WA-r737.png', 4222.4, 5278, 'TRY', 'adet', '{"dimensions":"55X10X30","features":"İÇİ DOLU PLEXİ VE  METALDEN OLUŞMAKTADIR\nİSTENİLEN RENK KAPLANABİLİR.","bulb":"G9","stock":"YOK"}'::jsonb, 737)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1617', 'GLASS APLİK/WALL', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1617-r738.png', 2620.8, 3276, 'TRY', 'adet', '{"dimensions":"34X14X13","features":"CAM VE METAL MALZEMEDEN ÜRETİLMEKTEDİR.\nİSTENİLEN RENK ÜRETİLMEKTEDİR.","bulb":"E14","stock":"YOK"}'::jsonb, 738)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1299-III', 'ENIGMA SARKIT/PENDANT', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1299-r739.png', 11356.8, 14196, 'TRY', 'adet', '{"dimensions":"50X19X25 CM","features":"METAL ÜSTÜ STATİK BOYA BEYAZ İÇİ GOLD VARAK BOYALI TEK RENKT","bulb":"LED","stock":"YOK"}'::jsonb, 739)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1680', 'TREY ŞARJLI MASA LAMBASI', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1680-r742.png', 2329.6, 2912, 'TRY', 'adet', '{"dimensions":"10 CM ÜST ÇAP\n7 CM ALT ÇAP\nYÜKSEKLİK 35 CM","features":"ÜRÜN METAL MALZEMEDEN OLUŞMAKTADIR\nAÇ KAPA SİSTEM","bulb":"SAMSUNG LED","stock":"94 SİYAH\n92 GÜMÜŞ\n96 GOLD\n90 PEMBE"}'::jsonb, 742)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1700', 'LUX LAMBADER/FLOOR LAMP', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1700-r743.png', 17472, 21840, 'TRY', 'adet', '{"dimensions":"200X200X45 CM","features":"ÜRÜN METAL MALZEMEDEN ÜRETİLMİŞTİR.KUMAŞ ŞAPKA KULLANILMIŞTIR.","bulb":"E27","stock":"YOK"}'::jsonb, 743)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1391- T', 'ŞARJLI MASA LAMBASI/TABLE LAMP', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1391--T-r746.png', 3494.4, 4368, 'TRY', 'adet', '{"dimensions":"12X28X11 X-CM","features":"ÜRÜN METAL MALZEMEDEN OLUŞMAKTADIR\nDOKUNMATIK SİSTEM","bulb":"LED","stock":"VAR"}'::jsonb, 746)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1392-T', 'ŞARJLI MASA LAMBASI/TABLE LAMP', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1392-T-r747.png', 3494.4, 4368, 'TRY', 'adet', '{"dimensions":"15X25 CM","features":"ÜRÜN METAL MALZEMEDEN OLUŞMAKTADIR\nDOKUNMATIK SİSTEM","bulb":"LED","stock":"VAR"}'::jsonb, 747)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1389-T', 'ŞARJLI MASA LAMBASI/TABLE LAMP', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1389-T-r748.png', 3494.4, 4368, 'TRY', 'adet', '{"dimensions":"9X28 CM","features":"ÜRÜN METAL MALZEMEDEN OLUŞMAKTADIR\nDOKUNMATIK SİSTEM","bulb":"LED","stock":"VAR"}'::jsonb, 748)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1400', 'ŞARJLI MASA LAMBASI', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1400-r749.png', 3494.4, 4368, 'TRY', 'adet', '{"dimensions":"38X10 CM","features":"METAL VE PLEKSİ MALZEMEDEN OLUŞMAKTADIR\nDOKUNMATIK SİSTEM","bulb":"LED","stock":"VAR"}'::jsonb, 749)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('PND1401-AA', 'MODOLAMP AVİZE
5 L', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/PND1401-AA-r750.jpeg', 26936, 33670, 'TRY', 'adet', '{"dimensions":"EN BÜYÜK ÇAP:90 Q \nEN KÜÇÜK ÇAP: 30 Q","features":"METAL VE CAM MALZEMEDEN ÜRETİLMİŞTİR. İSTENİLEN RENK KAPLANABİLİR.25 ADET GLOB CAMDAN OLUŞMAKTADIR.","bulb":"E27","stock":"ypk"}'::jsonb, 750)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('FS-468', 'TRAVERTER SUTUN', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/FS-468-r751.png', 13520, 16900, 'TRY', 'adet', '{"dimensions":"60X30 X30 CM","features":"DOĞAL TRAVERTEN MERMER MALZEMEDEN OLUŞMAKTADIR","stock":"YOK"}'::jsonb, 751)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('FS-467', 'TRAVERTER SUTUN', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/FS-467-r752.png', 14560, 18200, 'TRY', 'adet', '{"dimensions":"80X30 X30 CM","features":"DOĞAL TRAVERTEN MERMER MALZEMEDEN OLUŞMAKTADIR","stock":"YOK"}'::jsonb, 752)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('FS-469', 'TRAVERTER SUTUN', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/FS-469-r753.png', 16640, 20800, 'TRY', 'adet', '{"dimensions":"100X30 X30 CM","features":"DOĞAL TRAVERTEN MERMER MALZEMEDEN OLUŞMAKTADIR","stock":"YOK"}'::jsonb, 753)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('FS-451 SMALL', 'EVZA TRAVERTEN', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/FS-451-SMALL-r754.png', 5720, 7150, 'TRY', 'adet', '{"dimensions":"48,5X40 CM","features":"DOĞAL TRAVERTEN MERMER MALZEMEDEN OLUŞMAKTADIR","stock":"YOK"}'::jsonb, 754)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('FS-451 MEDIUM', 'EVZA TRAVERTEN', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/FS-451-MED-UM-r755.png', 6240, 7800, 'TRY', 'adet', '{"dimensions":"56X40 CM","features":"DOĞAL TRAVERTEN MERMER MALZEMEDEN OLUŞMAKTADIR","stock":"YOK"}'::jsonb, 755)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('FS-451 LARGE', 'EVZA TRAVERTEN', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/FS-451-LARGE-r756.png', 6760, 8450, 'TRY', 'adet', '{"dimensions":"66X40 CM","features":"DOĞAL TRAVERTEN MERMER MALZEMEDEN OLUŞMAKTADIR","stock":"YOK"}'::jsonb, 756)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('FS-435', 'EVZA TRAVERTEN SEHPA', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/FS-435-r757.png', 7280, 9100, 'TRY', 'adet', '{"dimensions":"40*40*50 CM","features":"DOĞAL TRAVERTEN MERMER MALZEMEDEN OLUŞMAKTADIR","stock":"YOK"}'::jsonb, 757)
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

insert into public.products (barcode, name, image_url, unit_price, list_price, currency, unit, characteristics, source_row)
values ('FS-434', 'EVZA TRAVERTEN SEHPA', 'https://lbsqeuraakdidbbjlhhs.supabase.co/storage/v1/object/public/product_images/FS-434-r758.png', 8840, 11050, 'TRY', 'adet', '{"dimensions":"40*40*60 CM","features":"DOĞAL TRAVERTEN MERMER MALZEMEDEN OLUŞMAKTADIR","stock":"YOK"}'::jsonb, 758)
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

commit;
