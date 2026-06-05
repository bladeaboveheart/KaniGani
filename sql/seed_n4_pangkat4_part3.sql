INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('91f69392-b4da-4eb2-9b47-9cf3b96a0bb2', 'Somewhat', false) ON CONFLICT DO NOTHING;
INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('91f69392-b4da-4eb2-9b47-9cf3b96a0bb2', 'Slightly', false) ON CONFLICT DO NOTHING;
INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES ('91f69392-b4da-4eb2-9b47-9cf3b96a0bb2', 'こころもち', NULL, true) ON CONFLICT DO NOTHING;
INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('91f69392-b4da-4eb2-9b47-9cf3b96a0bb2', '何事も心持ち次だいだと思うんだよね。', 'Saya pikir itu semua tergantung pada bagaimana perasaan Anda tentang hal itu.') ON CONFLICT DO NOTHING;
INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('91f69392-b4da-4eb2-9b47-9cf3b96a0bb2', '今日あった男に心持ちほねっぽいねって言われたんだけど、何なのアイツ。', 'Seorang pria yang kutemui hari ini bilang padaku aku agak kurus, ada apa dengan itu?!') ON CONFLICT DO NOTHING;
INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('91f69392-b4da-4eb2-9b47-9cf3b96a0bb2', 'あの子は、心持ちのよい素直な子です。', 'Dia adalah anak yang menyenangkan dan jujur.') ON CONFLICT DO NOTHING;
INSERT INTO public.items (id, type, character, slug, level, rank_id, meaning_mnemonic, description) VALUES ('667ab294-f50b-4cfa-84d3-7535689d49ed', 'vocabulary', '昼休み', '昼休み', 2, 'a7b8c90d-1e2f-3a4b-5c6d-7e8f9a0b1c2d', 'Ingat bagaimana Anda mengetahui bahwa 休み berarti "istirahat?" Saat Anda istirahat di siang hari, itulah istirahat makan siang Anda! Atau kalau tidak lapar, istirahat siang saja.', 'Ingat bagaimana Anda mengetahui bahwa 休み berarti "istirahat?" Saat Anda istirahat di siang hari, itulah istirahat makan siang Anda! Atau kalau tidak lapar, istirahat siang saja.') ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, character = EXCLUDED.character, slug = EXCLUDED.slug, level = EXCLUDED.level, rank_id = EXCLUDED.rank_id, meaning_mnemonic = EXCLUDED.meaning_mnemonic, description = EXCLUDED.description;
INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('667ab294-f50b-4cfa-84d3-7535689d49ed', 'Istirahat Makan Siang', true) ON CONFLICT DO NOTHING;
INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('667ab294-f50b-4cfa-84d3-7535689d49ed', 'Noon Break', false) ON CONFLICT DO NOTHING;
INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES ('667ab294-f50b-4cfa-84d3-7535689d49ed', 'ひるやすみ', NULL, true) ON CONFLICT DO NOTHING;
INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('667ab294-f50b-4cfa-84d3-7535689d49ed', '大変だ！あと五分で昼休みだ。', 'Ya ampun! Istirahat makan siang lima menit lagi.') ON CONFLICT DO NOTHING;
INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('667ab294-f50b-4cfa-84d3-7535689d49ed', '今日の昼休みに食べたカツどんは、大変美味しかったです。', 'Katsudon yang saya makan hari ini saat istirahat makan siang sangat lezat.') ON CONFLICT DO NOTHING;
INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('667ab294-f50b-4cfa-84d3-7535689d49ed', '昼休みにゆかたに着がえるつもりです。', 'Aku akan mengganti yukata saat istirahat siang.') ON CONFLICT DO NOTHING;
INSERT INTO public.items (id, type, character, slug, level, rank_id, meaning_mnemonic, description) VALUES ('c97ca745-c2a5-4a31-93c6-33a8a8fd5fd4', 'vocabulary', '家事', '家事', 2, 'a7b8c90d-1e2f-3a4b-5c6d-7e8f9a0b1c2d', 'Satu-satunya tindakan yang harus Anda lakukan di rumah saya adalah pekerjaan rumah dan tugas-tugas saya. Ini bukan hotel. Bergeraklah! Bersihkan piringku!', 'Satu-satunya tindakan yang harus Anda lakukan di rumah saya adalah pekerjaan rumah dan tugas-tugas saya. Ini bukan hotel. Bergeraklah! Bersihkan piringku!') ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, character = EXCLUDED.character, slug = EXCLUDED.slug, level = EXCLUDED.level, rank_id = EXCLUDED.rank_id, meaning_mnemonic = EXCLUDED.meaning_mnemonic, description = EXCLUDED.description;
INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('c97ca745-c2a5-4a31-93c6-33a8a8fd5fd4', 'Pekerjaan rumah tangga', true) ON CONFLICT DO NOTHING;
INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('c97ca745-c2a5-4a31-93c6-33a8a8fd5fd4', 'Chores', false) ON CONFLICT DO NOTHING;
INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES ('c97ca745-c2a5-4a31-93c6-33a8a8fd5fd4', 'かじ', NULL, true) ON CONFLICT DO NOTHING;
INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('c97ca745-c2a5-4a31-93c6-33a8a8fd5fd4', '家事、本当にめんどくさいけど、がんばる。', 'Pekerjaan rumah tangga memang menyebalkan, tapi aku akan melakukan yang terbaik.') ON CONFLICT DO NOTHING;
INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('c97ca745-c2a5-4a31-93c6-33a8a8fd5fd4', '主人はいつもわたしにばかり家事をおし付けてくるから本当にこまります。', 'Suami saya menyuruh saya mengerjakan pekerjaan rumah sepanjang waktu dan saya sama sekali tidak senang dengan hal itu.') ON CONFLICT DO NOTHING;
INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('c97ca745-c2a5-4a31-93c6-33a8a8fd5fd4', '家事全般が苦手なんですよね。', 'Aku buruk dalam semua pekerjaan rumah.') ON CONFLICT DO NOTHING;
INSERT INTO public.items (id, type, character, slug, level, rank_id, meaning_mnemonic, description) VALUES ('8d82afb0-012e-4a25-ab8f-1778e8a7f133', 'vocabulary', '品物', '品物', 2, 'a7b8c90d-1e2f-3a4b-5c6d-7e8f9a0b1c2d', 'Barang produk adalah segala jenis barang umum. Ini sespesifik mungkin ketika Anda membicarakan hal-hal seperti ini.', 'Barang produk adalah segala jenis barang umum. Ini sespesifik mungkin ketika Anda membicarakan hal-hal seperti ini.') ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, character = EXCLUDED.character, slug = EXCLUDED.slug, level = EXCLUDED.level, rank_id = EXCLUDED.rank_id, meaning_mnemonic = EXCLUDED.meaning_mnemonic, description = EXCLUDED.description;
INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('8d82afb0-012e-4a25-ab8f-1778e8a7f133', 'Barang', true) ON CONFLICT DO NOTHING;
INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('8d82afb0-012e-4a25-ab8f-1778e8a7f133', 'Article', false) ON CONFLICT DO NOTHING;
INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('8d82afb0-012e-4a25-ab8f-1778e8a7f133', 'Item', false) ON CONFLICT DO NOTHING;
INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('8d82afb0-012e-4a25-ab8f-1778e8a7f133', 'Thing', false) ON CONFLICT DO NOTHING;
INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES ('8d82afb0-012e-4a25-ab8f-1778e8a7f133', 'しなもの', NULL, true) ON CONFLICT DO NOTHING;
INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('8d82afb0-012e-4a25-ab8f-1778e8a7f133', 'こちらのツイートへ、ほしい品物の名前を書いて返信してください。', 'Silakan tulis nama barang yang Anda inginkan dan balas tweet ini.') ON CONFLICT DO NOTHING;
INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('8d82afb0-012e-4a25-ab8f-1778e8a7f133', 'この時間のスーパーには、品物がほとんど無い。', 'Hampir tidak ada barang di toko kelontong saat ini.') ON CONFLICT DO NOTHING;
INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('8d82afb0-012e-4a25-ab8f-1778e8a7f133', '品物が到着次第、ご連絡差し上げます。', 'Segera setelah barang tiba, saya akan menghubungi Anda.') ON CONFLICT DO NOTHING;

-- 5. Insert Kanji-to-Radical Prerequisites
INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '5a266cd1-fd58-4cf0-bc14-aa168899c508', id FROM public.items WHERE type = 'radical' AND slug = 'blue' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.kanji_radicals (kanji_id, radical_id)
SELECT '5a266cd1-fd58-4cf0-bc14-aa168899c508', id FROM public.items WHERE type = 'radical' AND slug = 'blue' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '784e2a30-6fa1-4bbb-b719-9f381b929111', id FROM public.items WHERE type = 'radical' AND slug = 'woman' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.kanji_radicals (kanji_id, radical_id)
SELECT '784e2a30-6fa1-4bbb-b719-9f381b929111', id FROM public.items WHERE type = 'radical' AND slug = 'woman' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '784e2a30-6fa1-4bbb-b719-9f381b929111', id FROM public.items WHERE type = 'radical' AND slug = 'city' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.kanji_radicals (kanji_id, radical_id)
SELECT '784e2a30-6fa1-4bbb-b719-9f381b929111', id FROM public.items WHERE type = 'radical' AND slug = 'city' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '703d794e-798c-43a9-b73b-e19968f7ef93', id FROM public.items WHERE type = 'radical' AND slug = 'woman' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.kanji_radicals (kanji_id, radical_id)
SELECT '703d794e-798c-43a9-b73b-e19968f7ef93', id FROM public.items WHERE type = 'radical' AND slug = 'woman' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '703d794e-798c-43a9-b73b-e19968f7ef93', id FROM public.items WHERE type = 'radical' AND slug = 'jet' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.kanji_radicals (kanji_id, radical_id)
SELECT '703d794e-798c-43a9-b73b-e19968f7ef93', id FROM public.items WHERE type = 'radical' AND slug = 'jet' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '64d6561c-ea2f-448d-b69b-9325a7a27310', id FROM public.items WHERE type = 'radical' AND slug = 'rice-paddy' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.kanji_radicals (kanji_id, radical_id)
SELECT '64d6561c-ea2f-448d-b69b-9325a7a27310', id FROM public.items WHERE type = 'radical' AND slug = 'rice-paddy' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '64d6561c-ea2f-448d-b69b-9325a7a27310', id FROM public.items WHERE type = 'radical' AND slug = 'heart' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.kanji_radicals (kanji_id, radical_id)
SELECT '64d6561c-ea2f-448d-b69b-9325a7a27310', id FROM public.items WHERE type = 'radical' AND slug = 'heart' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '41630936-df8f-4972-bfd4-d03503307c39', id FROM public.items WHERE type = 'radical' AND slug = 'fingers' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.kanji_radicals (kanji_id, radical_id)
SELECT '41630936-df8f-4972-bfd4-d03503307c39', id FROM public.items WHERE type = 'radical' AND slug = 'fingers' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '41630936-df8f-4972-bfd4-d03503307c39', id FROM public.items WHERE type = 'radical' AND slug = 'temple' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.kanji_radicals (kanji_id, radical_id)
SELECT '41630936-df8f-4972-bfd4-d03503307c39', id FROM public.items WHERE type = 'radical' AND slug = 'temple' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '4b11e285-2c7b-40ce-8d1c-dc9b15eea18b', id FROM public.items WHERE type = 'radical' AND slug = 'tent' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.kanji_radicals (kanji_id, radical_id)
SELECT '4b11e285-2c7b-40ce-8d1c-dc9b15eea18b', id FROM public.items WHERE type = 'radical' AND slug = 'tent' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '4b11e285-2c7b-40ce-8d1c-dc9b15eea18b', id FROM public.items WHERE type = 'radical' AND slug = 'lantern' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.kanji_radicals (kanji_id, radical_id)
SELECT '4b11e285-2c7b-40ce-8d1c-dc9b15eea18b', id FROM public.items WHERE type = 'radical' AND slug = 'lantern' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '0d6a927b-b81a-48eb-9ad6-eca2e289c754', id FROM public.items WHERE type = 'radical' AND slug = 'yurt' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.kanji_radicals (kanji_id, radical_id)
SELECT '0d6a927b-b81a-48eb-9ad6-eca2e289c754', id FROM public.items WHERE type = 'radical' AND slug = 'yurt' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '0d6a927b-b81a-48eb-9ad6-eca2e289c754', id FROM public.items WHERE type = 'radical' AND slug = 'stool' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.kanji_radicals (kanji_id, radical_id)
SELECT '0d6a927b-b81a-48eb-9ad6-eca2e289c754', id FROM public.items WHERE type = 'radical' AND slug = 'stool' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT 'e922fc78-d5c4-42dc-938a-d758e852e91c', id FROM public.items WHERE type = 'radical' AND slug = 'rice-paddy' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.kanji_radicals (kanji_id, radical_id)
SELECT 'e922fc78-d5c4-42dc-938a-d758e852e91c', id FROM public.items WHERE type = 'radical' AND slug = 'rice-paddy' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT 'e922fc78-d5c4-42dc-938a-d758e852e91c', id FROM public.items WHERE type = 'radical' AND slug = 'jammed-in' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.kanji_radicals (kanji_id, radical_id)
SELECT 'e922fc78-d5c4-42dc-938a-d758e852e91c', id FROM public.items WHERE type = 'radical' AND slug = 'jammed-in' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT 'fbd67782-0b46-40d8-b965-442611010a20', id FROM public.items WHERE type = 'radical' AND slug = 'loiter' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.kanji_radicals (kanji_id, radical_id)
SELECT 'fbd67782-0b46-40d8-b965-442611010a20', id FROM public.items WHERE type = 'radical' AND slug = 'loiter' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT 'fbd67782-0b46-40d8-b965-442611010a20', id FROM public.items WHERE type = 'radical' AND slug = 'temple' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.kanji_radicals (kanji_id, radical_id)
SELECT 'fbd67782-0b46-40d8-b965-442611010a20', id FROM public.items WHERE type = 'radical' AND slug = 'temple' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT 'b3cc1beb-bcec-47cf-a0ca-843bc906056d', id FROM public.items WHERE type = 'radical' AND slug = 'stand' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.kanji_radicals (kanji_id, radical_id)
SELECT 'b3cc1beb-bcec-47cf-a0ca-843bc906056d', id FROM public.items WHERE type = 'radical' AND slug = 'stand' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT 'b3cc1beb-bcec-47cf-a0ca-843bc906056d', id FROM public.items WHERE type = 'radical' AND slug = 'sun' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.kanji_radicals (kanji_id, radical_id)
SELECT 'b3cc1beb-bcec-47cf-a0ca-843bc906056d', id FROM public.items WHERE type = 'radical' AND slug = 'sun' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '6034ce0d-13b2-4a67-8ee9-3929271f7ca2', id FROM public.items WHERE type = 'radical' AND slug = 'tsunami' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.kanji_radicals (kanji_id, radical_id)
SELECT '6034ce0d-13b2-4a67-8ee9-3929271f7ca2', id FROM public.items WHERE type = 'radical' AND slug = 'tsunami' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '6034ce0d-13b2-4a67-8ee9-3929271f7ca2', id FROM public.items WHERE type = 'radical' AND slug = 'gun' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.kanji_radicals (kanji_id, radical_id)
SELECT '6034ce0d-13b2-4a67-8ee9-3929271f7ca2', id FROM public.items WHERE type = 'radical' AND slug = 'gun' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '6034ce0d-13b2-4a67-8ee9-3929271f7ca2', id FROM public.items WHERE type = 'radical' AND slug = 'window' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.kanji_radicals (kanji_id, radical_id)
SELECT '6034ce0d-13b2-4a67-8ee9-3929271f7ca2', id FROM public.items WHERE type = 'radical' AND slug = 'window' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT 'b401f4fd-5fa3-4789-b55c-afeb84890183', id FROM public.items WHERE type = 'radical' AND slug = 'heavy' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.kanji_radicals (kanji_id, radical_id)
SELECT 'b401f4fd-5fa3-4789-b55c-afeb84890183', id FROM public.items WHERE type = 'radical' AND slug = 'heavy' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '688007ab-616f-4f11-ac69-e74e9a9a1663', id FROM public.items WHERE type = 'radical' AND slug = 'prison' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.kanji_radicals (kanji_id, radical_id)
SELECT '688007ab-616f-4f11-ac69-e74e9a9a1663', id FROM public.items WHERE type = 'radical' AND slug = 'prison' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '688007ab-616f-4f11-ac69-e74e9a9a1663', id FROM public.items WHERE type = 'radical' AND slug = 'wolverine' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.kanji_radicals (kanji_id, radical_id)
SELECT '688007ab-616f-4f11-ac69-e74e9a9a1663', id FROM public.items WHERE type = 'radical' AND slug = 'wolverine' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '688007ab-616f-4f11-ac69-e74e9a9a1663', id FROM public.items WHERE type = 'radical' AND slug = 'heart' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.kanji_radicals (kanji_id, radical_id)
SELECT '688007ab-616f-4f11-ac69-e74e9a9a1663', id FROM public.items WHERE type = 'radical' AND slug = 'heart' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '938e39ed-5ecf-40d3-a5fa-8930fe34d891', id FROM public.items WHERE type = 'radical' AND slug = 'products' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.kanji_radicals (kanji_id, radical_id)
SELECT '938e39ed-5ecf-40d3-a5fa-8930fe34d891', id FROM public.items WHERE type = 'radical' AND slug = 'products' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '6c07217c-ef8f-425b-8d83-797a673bbfa0', id FROM public.items WHERE type = 'radical' AND slug = 'say' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.kanji_radicals (kanji_id, radical_id)
SELECT '6c07217c-ef8f-425b-8d83-797a673bbfa0', id FROM public.items WHERE type = 'radical' AND slug = 'say' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '6c07217c-ef8f-425b-8d83-797a673bbfa0', id FROM public.items WHERE type = 'radical' AND slug = 'cross' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.kanji_radicals (kanji_id, radical_id)
SELECT '6c07217c-ef8f-425b-8d83-797a673bbfa0', id FROM public.items WHERE type = 'radical' AND slug = 'cross' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '3351cb4f-ef0e-4f15-b6a8-03ddafadd269', id FROM public.items WHERE type = 'radical' AND slug = 'scooter' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.kanji_radicals (kanji_id, radical_id)
SELECT '3351cb4f-ef0e-4f15-b6a8-03ddafadd269', id FROM public.items WHERE type = 'radical' AND slug = 'scooter' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '3351cb4f-ef0e-4f15-b6a8-03ddafadd269', id FROM public.items WHERE type = 'radical' AND slug = 'horns' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.kanji_radicals (kanji_id, radical_id)
SELECT '3351cb4f-ef0e-4f15-b6a8-03ddafadd269', id FROM public.items WHERE type = 'radical' AND slug = 'horns' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '3351cb4f-ef0e-4f15-b6a8-03ddafadd269', id FROM public.items WHERE type = 'radical' AND slug = 'heaven' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.kanji_radicals (kanji_id, radical_id)
SELECT '3351cb4f-ef0e-4f15-b6a8-03ddafadd269', id FROM public.items WHERE type = 'radical' AND slug = 'heaven' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '3087dcce-faf8-43b9-9cb3-7312cc09b718', id FROM public.items WHERE type = 'radical' AND slug = 'flag' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.kanji_radicals (kanji_id, radical_id)
SELECT '3087dcce-faf8-43b9-9cb3-7312cc09b718', id FROM public.items WHERE type = 'radical' AND slug = 'flag' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '3087dcce-faf8-43b9-9cb3-7312cc09b718', id FROM public.items WHERE type = 'radical' AND slug = 'ground' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.kanji_radicals (kanji_id, radical_id)
SELECT '3087dcce-faf8-43b9-9cb3-7312cc09b718', id FROM public.items WHERE type = 'radical' AND slug = 'ground' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '3087dcce-faf8-43b9-9cb3-7312cc09b718', id FROM public.items WHERE type = 'radical' AND slug = 'private' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.kanji_radicals (kanji_id, radical_id)
SELECT '3087dcce-faf8-43b9-9cb3-7312cc09b718', id FROM public.items WHERE type = 'radical' AND slug = 'private' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '3087dcce-faf8-43b9-9cb3-7312cc09b718', id FROM public.items WHERE type = 'radical' AND slug = 'dirt' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.kanji_radicals (kanji_id, radical_id)
SELECT '3087dcce-faf8-43b9-9cb3-7312cc09b718', id FROM public.items WHERE type = 'radical' AND slug = 'dirt' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '8583e778-cc4a-4a2f-8e73-73190b71cfd2', id FROM public.items WHERE type = 'radical' AND slug = 'sun' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.kanji_radicals (kanji_id, radical_id)
SELECT '8583e778-cc4a-4a2f-8e73-73190b71cfd2', id FROM public.items WHERE type = 'radical' AND slug = 'sun' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '8583e778-cc4a-4a2f-8e73-73190b71cfd2', id FROM public.items WHERE type = 'radical' AND slug = 'center' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.kanji_radicals (kanji_id, radical_id)
SELECT '8583e778-cc4a-4a2f-8e73-73190b71cfd2', id FROM public.items WHERE type = 'radical' AND slug = 'center' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '2896f5bc-7f14-44ea-bb53-1adbc0ee50f1', id FROM public.items WHERE type = 'radical' AND slug = 'roof' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.kanji_radicals (kanji_id, radical_id)
SELECT '2896f5bc-7f14-44ea-bb53-1adbc0ee50f1', id FROM public.items WHERE type = 'radical' AND slug = 'roof' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '2896f5bc-7f14-44ea-bb53-1adbc0ee50f1', id FROM public.items WHERE type = 'radical' AND slug = 'ground' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.kanji_radicals (kanji_id, radical_id)
SELECT '2896f5bc-7f14-44ea-bb53-1adbc0ee50f1', id FROM public.items WHERE type = 'radical' AND slug = 'ground' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '2896f5bc-7f14-44ea-bb53-1adbc0ee50f1', id FROM public.items WHERE type = 'radical' AND slug = 'private' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.kanji_radicals (kanji_id, radical_id)
SELECT '2896f5bc-7f14-44ea-bb53-1adbc0ee50f1', id FROM public.items WHERE type = 'radical' AND slug = 'private' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '2896f5bc-7f14-44ea-bb53-1adbc0ee50f1', id FROM public.items WHERE type = 'radical' AND slug = 'dirt' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.kanji_radicals (kanji_id, radical_id)
SELECT '2896f5bc-7f14-44ea-bb53-1adbc0ee50f1', id FROM public.items WHERE type = 'radical' AND slug = 'dirt' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT 'fdaecbbd-e695-4093-8ba2-70f12f7d6c87', id FROM public.items WHERE type = 'radical' AND slug = 'table' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.kanji_radicals (kanji_id, radical_id)
SELECT 'fdaecbbd-e695-4093-8ba2-70f12f7d6c87', id FROM public.items WHERE type = 'radical' AND slug = 'table' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT 'fdaecbbd-e695-4093-8ba2-70f12f7d6c87', id FROM public.items WHERE type = 'radical' AND slug = 'slide' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.kanji_radicals (kanji_id, radical_id)
SELECT 'fdaecbbd-e695-4093-8ba2-70f12f7d6c87', id FROM public.items WHERE type = 'radical' AND slug = 'slide' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT 'fdaecbbd-e695-4093-8ba2-70f12f7d6c87', id FROM public.items WHERE type = 'radical' AND slug = 'insect' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.kanji_radicals (kanji_id, radical_id)
SELECT 'fdaecbbd-e695-4093-8ba2-70f12f7d6c87', id FROM public.items WHERE type = 'radical' AND slug = 'insect' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '1b2c4b31-02d3-4649-9a03-63c4f867664e', id FROM public.items WHERE type = 'radical' AND slug = 'yoga' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.kanji_radicals (kanji_id, radical_id)
SELECT '1b2c4b31-02d3-4649-9a03-63c4f867664e', id FROM public.items WHERE type = 'radical' AND slug = 'yoga' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '1b2c4b31-02d3-4649-9a03-63c4f867664e', id FROM public.items WHERE type = 'radical' AND slug = 'brush' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.kanji_radicals (kanji_id, radical_id)
SELECT '1b2c4b31-02d3-4649-9a03-63c4f867664e', id FROM public.items WHERE type = 'radical' AND slug = 'brush' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '444afba2-a4e4-447d-8e80-0296fca6614e', id FROM public.items WHERE type = 'radical' AND slug = 'stone' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.kanji_radicals (kanji_id, radical_id)
SELECT '444afba2-a4e4-447d-8e80-0296fca6614e', id FROM public.items WHERE type = 'radical' AND slug = 'stone' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '444afba2-a4e4-447d-8e80-0296fca6614e', id FROM public.items WHERE type = 'radical' AND slug = 'lantern' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.kanji_radicals (kanji_id, radical_id)
SELECT '444afba2-a4e4-447d-8e80-0296fca6614e', id FROM public.items WHERE type = 'radical' AND slug = 'lantern' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '13832f40-886f-4950-af11-4a417e28513f', id FROM public.items WHERE type = 'radical' AND slug = 'spring' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.kanji_radicals (kanji_id, radical_id)
SELECT '13832f40-886f-4950-af11-4a417e28513f', id FROM public.items WHERE type = 'radical' AND slug = 'spring' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '13832f40-886f-4950-af11-4a417e28513f', id FROM public.items WHERE type = 'radical' AND slug = 'sun' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.kanji_radicals (kanji_id, radical_id)
SELECT '13832f40-886f-4950-af11-4a417e28513f', id FROM public.items WHERE type = 'radical' AND slug = 'sun' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT 'b969a549-ccf0-40e8-bb6d-77d83f9d5986', id FROM public.items WHERE type = 'radical' AND slug = 'grain' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.kanji_radicals (kanji_id, radical_id)
SELECT 'b969a549-ccf0-40e8-bb6d-77d83f9d5986', id FROM public.items WHERE type = 'radical' AND slug = 'grain' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT 'b969a549-ccf0-40e8-bb6d-77d83f9d5986', id FROM public.items WHERE type = 'radical' AND slug = 'fire' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.kanji_radicals (kanji_id, radical_id)
SELECT 'b969a549-ccf0-40e8-bb6d-77d83f9d5986', id FROM public.items WHERE type = 'radical' AND slug = 'fire' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '0d7f8c33-ef38-4053-8c75-79604c984584', id FROM public.items WHERE type = 'radical' AND slug = 'flowers' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.kanji_radicals (kanji_id, radical_id)
SELECT '0d7f8c33-ef38-4053-8c75-79604c984584', id FROM public.items WHERE type = 'radical' AND slug = 'flowers' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '0d7f8c33-ef38-4053-8c75-79604c984584', id FROM public.items WHERE type = 'radical' AND slug = 'hat' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.kanji_radicals (kanji_id, radical_id)
SELECT '0d7f8c33-ef38-4053-8c75-79604c984584', id FROM public.items WHERE type = 'radical' AND slug = 'hat' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '0d7f8c33-ef38-4053-8c75-79604c984584', id FROM public.items WHERE type = 'radical' AND slug = 'angel' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.kanji_radicals (kanji_id, radical_id)
SELECT '0d7f8c33-ef38-4053-8c75-79604c984584', id FROM public.items WHERE type = 'radical' AND slug = 'angel' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT 'ee941b70-396e-4a52-a8e8-e02125aac2c0', id FROM public.items WHERE type = 'radical' AND slug = 'tsunami' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.kanji_radicals (kanji_id, radical_id)
SELECT 'ee941b70-396e-4a52-a8e8-e02125aac2c0', id FROM public.items WHERE type = 'radical' AND slug = 'tsunami' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT 'ee941b70-396e-4a52-a8e8-e02125aac2c0', id FROM public.items WHERE type = 'radical' AND slug = 'sheep' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.kanji_radicals (kanji_id, radical_id)
SELECT 'ee941b70-396e-4a52-a8e8-e02125aac2c0', id FROM public.items WHERE type = 'radical' AND slug = 'sheep' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT 'a210c5a5-c45b-49b2-99b4-1b244cf978a6', id FROM public.items WHERE type = 'radical' AND slug = 'shrimp' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.kanji_radicals (kanji_id, radical_id)
SELECT 'a210c5a5-c45b-49b2-99b4-1b244cf978a6', id FROM public.items WHERE type = 'radical' AND slug = 'shrimp' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT 'a210c5a5-c45b-49b2-99b4-1b244cf978a6', id FROM public.items WHERE type = 'radical' AND slug = 'sun' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.kanji_radicals (kanji_id, radical_id)
SELECT 'a210c5a5-c45b-49b2-99b4-1b244cf978a6', id FROM public.items WHERE type = 'radical' AND slug = 'sun' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT 'a210c5a5-c45b-49b2-99b4-1b244cf978a6', id FROM public.items WHERE type = 'radical' AND slug = 'ground' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.kanji_radicals (kanji_id, radical_id)
SELECT 'a210c5a5-c45b-49b2-99b4-1b244cf978a6', id FROM public.items WHERE type = 'radical' AND slug = 'ground' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '0c5449bc-67db-4653-9b37-1b0d3be05cf4', id FROM public.items WHERE type = 'radical' AND slug = 'roof' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.kanji_radicals (kanji_id, radical_id)
SELECT '0c5449bc-67db-4653-9b37-1b0d3be05cf4', id FROM public.items WHERE type = 'radical' AND slug = 'roof' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '0c5449bc-67db-4653-9b37-1b0d3be05cf4', id FROM public.items WHERE type = 'radical' AND slug = 'pig' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.kanji_radicals (kanji_id, radical_id)
SELECT '0c5449bc-67db-4653-9b37-1b0d3be05cf4', id FROM public.items WHERE type = 'radical' AND slug = 'pig' LIMIT 1 ON CONFLICT DO NOTHING;

-- 6. Insert Vocab-to-Kanji Prerequisites
INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('4ac7ed2c-7c5d-41d8-beba-949996056a48', '5a266cd1-fd58-4cf0-bc14-aa168899c508') ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('4ac7ed2c-7c5d-41d8-beba-949996056a48', '5a266cd1-fd58-4cf0-bc14-aa168899c508') ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('2de571df-82ea-4631-a59e-cb5f5034e70f', '5a266cd1-fd58-4cf0-bc14-aa168899c508') ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('2de571df-82ea-4631-a59e-cb5f5034e70f', '5a266cd1-fd58-4cf0-bc14-aa168899c508') ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '2de571df-82ea-4631-a59e-cb5f5034e70f', id FROM public.items WHERE type = 'kanji' AND character = '年' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id)
SELECT '2de571df-82ea-4631-a59e-cb5f5034e70f', id FROM public.items WHERE type = 'kanji' AND character = '年' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('7e1b6c62-b878-48ba-8a0d-d831656e6ac2', 'b3cc1beb-bcec-47cf-a0ca-843bc906056d') ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('7e1b6c62-b878-48ba-8a0d-d831656e6ac2', 'b3cc1beb-bcec-47cf-a0ca-843bc906056d') ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('af43a8e6-a451-48d1-8f5d-77f635a8eb2e', '784e2a30-6fa1-4bbb-b719-9f381b929111') ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('af43a8e6-a451-48d1-8f5d-77f635a8eb2e', '784e2a30-6fa1-4bbb-b719-9f381b929111') ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('af43a8e6-a451-48d1-8f5d-77f635a8eb2e', '703d794e-798c-43a9-b73b-e19968f7ef93') ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('af43a8e6-a451-48d1-8f5d-77f635a8eb2e', '703d794e-798c-43a9-b73b-e19968f7ef93') ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('5d6bb009-b0c9-4c4e-8857-460d5357d230', '703d794e-798c-43a9-b73b-e19968f7ef93') ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('5d6bb009-b0c9-4c4e-8857-460d5357d230', '703d794e-798c-43a9-b73b-e19968f7ef93') ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('711830bf-31e8-471d-b4d8-9d1245f68243', '784e2a30-6fa1-4bbb-b719-9f381b929111') ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('711830bf-31e8-471d-b4d8-9d1245f68243', '784e2a30-6fa1-4bbb-b719-9f381b929111') ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('c6ce1a4f-5743-4f24-9fe1-09c46feccf56', '64d6561c-ea2f-448d-b69b-9325a7a27310') ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('c6ce1a4f-5743-4f24-9fe1-09c46feccf56', '64d6561c-ea2f-448d-b69b-9325a7a27310') ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('0818692d-addf-4cd0-9bb3-8dd236f25a39', '6034ce0d-13b2-4a67-8ee9-3929271f7ca2') ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('0818692d-addf-4cd0-9bb3-8dd236f25a39', '6034ce0d-13b2-4a67-8ee9-3929271f7ca2') ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('aa67a689-2d32-466b-8742-f710e33a5a51', '6034ce0d-13b2-4a67-8ee9-3929271f7ca2') ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('aa67a689-2d32-466b-8742-f710e33a5a51', '6034ce0d-13b2-4a67-8ee9-3929271f7ca2') ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT 'aa67a689-2d32-466b-8742-f710e33a5a51', id FROM public.items WHERE type = 'kanji' AND character = '外' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id)
SELECT 'aa67a689-2d32-466b-8742-f710e33a5a51', id FROM public.items WHERE type = 'kanji' AND character = '外' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('0476d57c-ff02-456e-b677-b2fb57a384ef', '0d7f8c33-ef38-4053-8c75-79604c984584') ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('0476d57c-ff02-456e-b677-b2fb57a384ef', '0d7f8c33-ef38-4053-8c75-79604c984584') ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('37ddac37-596a-462b-b5a9-aa811c6aa834', '0d7f8c33-ef38-4053-8c75-79604c984584') ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('37ddac37-596a-462b-b5a9-aa811c6aa834', '0d7f8c33-ef38-4053-8c75-79604c984584') ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '37ddac37-596a-462b-b5a9-aa811c6aa834', id FROM public.items WHERE type = 'kanji' AND character = '色' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id)
SELECT '37ddac37-596a-462b-b5a9-aa811c6aa834', id FROM public.items WHERE type = 'kanji' AND character = '色' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('1d06972c-7cb1-4467-b3e2-1d78b0243088', '0c5449bc-67db-4653-9b37-1b0d3be05cf4') ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('1d06972c-7cb1-4467-b3e2-1d78b0243088', '0c5449bc-67db-4653-9b37-1b0d3be05cf4') ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '5cd35e1c-c874-4c77-a028-91c92e3b9cc8', id FROM public.items WHERE type = 'kanji' AND character = '作' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id)
SELECT '5cd35e1c-c874-4c77-a028-91c92e3b9cc8', id FROM public.items WHERE type = 'kanji' AND character = '作' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('5cd35e1c-c874-4c77-a028-91c92e3b9cc8', '0c5449bc-67db-4653-9b37-1b0d3be05cf4') ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('5cd35e1c-c874-4c77-a028-91c92e3b9cc8', '0c5449bc-67db-4653-9b37-1b0d3be05cf4') ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('d193252c-883f-46c8-b977-876cd0e7e01f', '444afba2-a4e4-447d-8e80-0296fca6614e') ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('d193252c-883f-46c8-b977-876cd0e7e01f', '444afba2-a4e4-447d-8e80-0296fca6614e') ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT 'd193252c-883f-46c8-b977-876cd0e7e01f', id FROM public.items WHERE type = 'kanji' AND character = '究' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id)
SELECT 'd193252c-883f-46c8-b977-876cd0e7e01f', id FROM public.items WHERE type = 'kanji' AND character = '究' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('7c5f057e-2637-4c04-a4b0-69d32c314564', '444afba2-a4e4-447d-8e80-0296fca6614e') ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('7c5f057e-2637-4c04-a4b0-69d32c314564', '444afba2-a4e4-447d-8e80-0296fca6614e') ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '7c5f057e-2637-4c04-a4b0-69d32c314564', id FROM public.items WHERE type = 'kanji' AND character = '究' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id)
SELECT '7c5f057e-2637-4c04-a4b0-69d32c314564', id FROM public.items WHERE type = 'kanji' AND character = '究' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('7c5f057e-2637-4c04-a4b0-69d32c314564', '2896f5bc-7f14-44ea-bb53-1adbc0ee50f1') ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('7c5f057e-2637-4c04-a4b0-69d32c314564', '2896f5bc-7f14-44ea-bb53-1adbc0ee50f1') ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('e35b69bb-a1b0-45b0-bc46-b65e0daf27fe', '3087dcce-faf8-43b9-9cb3-7312cc09b718') ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('e35b69bb-a1b0-45b0-bc46-b65e0daf27fe', '3087dcce-faf8-43b9-9cb3-7312cc09b718') ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '7b1fa2da-b701-421b-a308-39576b28490e', id FROM public.items WHERE type = 'kanji' AND character = '肉' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id)
SELECT '7b1fa2da-b701-421b-a308-39576b28490e', id FROM public.items WHERE type = 'kanji' AND character = '肉' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('7b1fa2da-b701-421b-a308-39576b28490e', '3087dcce-faf8-43b9-9cb3-7312cc09b718') ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('7b1fa2da-b701-421b-a308-39576b28490e', '3087dcce-faf8-43b9-9cb3-7312cc09b718') ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('57ef3aab-3b8b-4c5c-b5fa-8e96d8196a3f', '0d7f8c33-ef38-4053-8c75-79604c984584') ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('57ef3aab-3b8b-4c5c-b5fa-8e96d8196a3f', '0d7f8c33-ef38-4053-8c75-79604c984584') ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('57ef3aab-3b8b-4c5c-b5fa-8e96d8196a3f', '3087dcce-faf8-43b9-9cb3-7312cc09b718') ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('57ef3aab-3b8b-4c5c-b5fa-8e96d8196a3f', '3087dcce-faf8-43b9-9cb3-7312cc09b718') ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '43fba0f6-2b6f-4c31-b178-2eb2e6e30835', id FROM public.items WHERE type = 'kanji' AND character = '名' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id)
SELECT '43fba0f6-2b6f-4c31-b178-2eb2e6e30835', id FROM public.items WHERE type = 'kanji' AND character = '名' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '43fba0f6-2b6f-4c31-b178-2eb2e6e30835', id FROM public.items WHERE type = 'kanji' AND character = '古' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id)
SELECT '43fba0f6-2b6f-4c31-b178-2eb2e6e30835', id FROM public.items WHERE type = 'kanji' AND character = '古' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('43fba0f6-2b6f-4c31-b178-2eb2e6e30835', '3087dcce-faf8-43b9-9cb3-7312cc09b718') ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('43fba0f6-2b6f-4c31-b178-2eb2e6e30835', '3087dcce-faf8-43b9-9cb3-7312cc09b718') ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT 'b0457fb6-e5df-49a3-b9da-251adc5de64b', id FROM public.items WHERE type = 'kanji' AND character = '今' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id)
SELECT 'b0457fb6-e5df-49a3-b9da-251adc5de64b', id FROM public.items WHERE type = 'kanji' AND character = '今' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('b0457fb6-e5df-49a3-b9da-251adc5de64b', '0d6a927b-b81a-48eb-9ad6-eca2e289c754') ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('b0457fb6-e5df-49a3-b9da-251adc5de64b', '0d6a927b-b81a-48eb-9ad6-eca2e289c754') ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '10d2e96b-dde9-428a-8348-cf18553a4f97', id FROM public.items WHERE type = 'kanji' AND character = '毎' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id)
SELECT '10d2e96b-dde9-428a-8348-cf18553a4f97', id FROM public.items WHERE type = 'kanji' AND character = '毎' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('10d2e96b-dde9-428a-8348-cf18553a4f97', '0d6a927b-b81a-48eb-9ad6-eca2e289c754') ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('10d2e96b-dde9-428a-8348-cf18553a4f97', '0d6a927b-b81a-48eb-9ad6-eca2e289c754') ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('6eb818a1-cf04-4d86-ab0e-4a17f44c57c8', '0d6a927b-b81a-48eb-9ad6-eca2e289c754') ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('6eb818a1-cf04-4d86-ab0e-4a17f44c57c8', '0d6a927b-b81a-48eb-9ad6-eca2e289c754') ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('362f8fee-1221-4b8f-9fd5-19e7be6f5fa0', 'fbd67782-0b46-40d8-b965-442611010a20') ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('362f8fee-1221-4b8f-9fd5-19e7be6f5fa0', 'fbd67782-0b46-40d8-b965-442611010a20') ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('9cb950d3-9c14-4e0a-9f12-c198c77029af', 'fbd67782-0b46-40d8-b965-442611010a20') ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('9cb950d3-9c14-4e0a-9f12-c198c77029af', 'fbd67782-0b46-40d8-b965-442611010a20') ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('ea500731-2875-415d-ac33-87e3a076e779', '41630936-df8f-4972-bfd4-d03503307c39') ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('ea500731-2875-415d-ac33-87e3a076e779', '41630936-df8f-4972-bfd4-d03503307c39') ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT 'e6efce58-f31c-440c-b1f3-a39a45739406', id FROM public.items WHERE type = 'kanji' AND character = '金' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id)
SELECT 'e6efce58-f31c-440c-b1f3-a39a45739406', id FROM public.items WHERE type = 'kanji' AND character = '金' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('e6efce58-f31c-440c-b1f3-a39a45739406', '41630936-df8f-4972-bfd4-d03503307c39') ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('e6efce58-f31c-440c-b1f3-a39a45739406', '41630936-df8f-4972-bfd4-d03503307c39') ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT 'f2fd495e-66d9-47d5-bab8-ae3648536dcb', id FROM public.items WHERE type = 'kanji' AND character = '気' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id)
SELECT 'f2fd495e-66d9-47d5-bab8-ae3648536dcb', id FROM public.items WHERE type = 'kanji' AND character = '気' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('f2fd495e-66d9-47d5-bab8-ae3648536dcb', '41630936-df8f-4972-bfd4-d03503307c39') ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('f2fd495e-66d9-47d5-bab8-ae3648536dcb', '41630936-df8f-4972-bfd4-d03503307c39') ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '712bd47a-1255-4b17-970d-109e7a8c9b4e', id FROM public.items WHERE type = 'kanji' AND character = '世' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id)