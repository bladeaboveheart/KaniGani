INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('d1dd8f1c-6ec5-4ce7-acfd-666b7eb32686', 'Skies', false) ON CONFLICT DO NOTHING;
INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES ('d1dd8f1c-6ec5-4ce7-acfd-666b7eb32686', 'おおぞら', NULL, true) ON CONFLICT DO NOTHING;
INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('d1dd8f1c-6ec5-4ce7-acfd-666b7eb32686', '大空を見ていたら、いやな気もちがふきとんだ。', 'Perasaan tidak enak itu lenyap saat aku melihat ke langit.') ON CONFLICT DO NOTHING;
INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('d1dd8f1c-6ec5-4ce7-acfd-666b7eb32686', 'アイリちゃんは大空にうかぶお星さまになったんだよ。', 'Airi menjadi bintang di cakrawala.') ON CONFLICT DO NOTHING;
INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('d1dd8f1c-6ec5-4ce7-acfd-666b7eb32686', '鷲が大空を悠々と飛んでいた。', 'Elang terbang dengan santai di angkasa.') ON CONFLICT DO NOTHING;
INSERT INTO public.items (id, type, character, slug, level, rank_id, meaning_mnemonic, description) VALUES ('498fae4a-ce0b-49ce-b608-391c32a37159', 'vocabulary', '火事', '火事', 2, 'f6a7b8c9-0d1e-2f3a-4b5c-6d7e8f9a0b1c', 'Api adalah sesuatu yang membuat lebih banyak api. Pada dasarnya api adalah api.', 'Api adalah sesuatu yang membuat lebih banyak api. Pada dasarnya api adalah api.') ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, character = EXCLUDED.character, slug = EXCLUDED.slug, level = EXCLUDED.level, rank_id = EXCLUDED.rank_id, meaning_mnemonic = EXCLUDED.meaning_mnemonic, description = EXCLUDED.description;
INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('498fae4a-ce0b-49ce-b608-391c32a37159', 'Api', true) ON CONFLICT DO NOTHING;
INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES ('498fae4a-ce0b-49ce-b608-391c32a37159', 'かじ', NULL, true) ON CONFLICT DO NOTHING;
INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('498fae4a-ce0b-49ce-b608-391c32a37159', '火事があった場所は、アパートの五かいです。', 'Kebakaran terjadi di lantai lima apartemen tersebut.') ON CONFLICT DO NOTHING;
INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('498fae4a-ce0b-49ce-b608-391c32a37159', '何か臭うんだけど。もしかして、火事じゃない？', 'Aku mencium sesuatu yang aneh! Mungkin kebakaran?') ON CONFLICT DO NOTHING;
INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('498fae4a-ce0b-49ce-b608-391c32a37159', '昨日、家が火事になる夢を見たんです。', 'Kemarin saya bermimpi rumah saya terbakar.') ON CONFLICT DO NOTHING;
INSERT INTO public.items (id, type, character, slug, level, rank_id, meaning_mnemonic, description) VALUES ('ad63dff0-0171-4162-a3bb-376817fb03a0', 'vocabulary', '見事', '見事', 2, 'f6a7b8c9-0d1e-2f3a-4b5c-6d7e8f9a0b1c', 'Setiap hal yang Anda lihat sungguh indah. Anda sudah melihatnya, jadi tentu saja itu luar biasa. Matamu begitu indah sehingga membuat segalanya mencerminkan dirimu. Dan kamu cantik.', 'Setiap hal yang Anda lihat sungguh indah. Anda sudah melihatnya, jadi tentu saja itu luar biasa. Matamu begitu indah sehingga membuat segalanya mencerminkan dirimu. Dan kamu cantik.') ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, character = EXCLUDED.character, slug = EXCLUDED.slug, level = EXCLUDED.level, rank_id = EXCLUDED.rank_id, meaning_mnemonic = EXCLUDED.meaning_mnemonic, description = EXCLUDED.description;
INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('ad63dff0-0171-4162-a3bb-376817fb03a0', 'Luar biasa', true) ON CONFLICT DO NOTHING;
INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('ad63dff0-0171-4162-a3bb-376817fb03a0', 'Magnificent', false) ON CONFLICT DO NOTHING;
INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('ad63dff0-0171-4162-a3bb-376817fb03a0', 'Beautiful', false) ON CONFLICT DO NOTHING;
INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('ad63dff0-0171-4162-a3bb-376817fb03a0', 'Admirable', false) ON CONFLICT DO NOTHING;
INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('ad63dff0-0171-4162-a3bb-376817fb03a0', 'Praiseworthy Act', false) ON CONFLICT DO NOTHING;
INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES ('ad63dff0-0171-4162-a3bb-376817fb03a0', 'みごと', NULL, true) ON CONFLICT DO NOTHING;
INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('ad63dff0-0171-4162-a3bb-376817fb03a0', '見事なまつの木ですね。', 'Itu pohon pinus yang indah, bukan?') ON CONFLICT DO NOTHING;
INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('ad63dff0-0171-4162-a3bb-376817fb03a0', 'お見事！いやー、実に見事なシュートだった！', 'Bagus sekali! Wow, itu adalah pemotretan yang indah!') ON CONFLICT DO NOTHING;
INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('ad63dff0-0171-4162-a3bb-376817fb03a0', '気持ちいいぐらい見事にフラれたよ。', 'Dia menolakku dengan sangat jelas.') ON CONFLICT DO NOTHING;
INSERT INTO public.items (id, type, character, slug, level, rank_id, meaning_mnemonic, description) VALUES ('9b916fea-69b4-4fe7-85e5-06bca11d623d', 'vocabulary', '近代的', '近代的', 2, 'f6a7b8c9-0d1e-2f3a-4b5c-6d7e8f9a0b1c', 'Sesuatu yang mendekati masa itu sangat kontemporer. Tetapi jika sepertinya itu berasal dari periode yang tidak dekat dengan tempat Anda berada... buanglah! Tidaklah cukup modern untuk menyentuh tangan Anda!', 'Sesuatu yang mendekati masa itu sangat kontemporer. Tetapi jika sepertinya itu berasal dari periode yang tidak dekat dengan tempat Anda berada... buanglah! Tidaklah cukup modern untuk menyentuh tangan Anda!') ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, character = EXCLUDED.character, slug = EXCLUDED.slug, level = EXCLUDED.level, rank_id = EXCLUDED.rank_id, meaning_mnemonic = EXCLUDED.meaning_mnemonic, description = EXCLUDED.description;
INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('9b916fea-69b4-4fe7-85e5-06bca11d623d', 'Modern', true) ON CONFLICT DO NOTHING;
INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('9b916fea-69b4-4fe7-85e5-06bca11d623d', 'Contemporary', false) ON CONFLICT DO NOTHING;
INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES ('9b916fea-69b4-4fe7-85e5-06bca11d623d', 'きんだいてき', NULL, true) ON CONFLICT DO NOTHING;
INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('9b916fea-69b4-4fe7-85e5-06bca11d623d', '近代的なデザインが気に入りました。', 'Saya suka desain kontemporer.') ON CONFLICT DO NOTHING;
INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('9b916fea-69b4-4fe7-85e5-06bca11d623d', 'とても近代的な建物ですね。', 'Ini bangunan yang sangat kontemporer, bukan?') ON CONFLICT DO NOTHING;
INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('9b916fea-69b4-4fe7-85e5-06bca11d623d', '最近のプリクラはちょっと近代的になりすぎていると思う。', 'Menurutku purikura agak terlalu modern saat ini.') ON CONFLICT DO NOTHING;
INSERT INTO public.items (id, type, character, slug, level, rank_id, meaning_mnemonic, description) VALUES ('f683e2b9-97cb-41cf-98dd-d7280300b665', 'vocabulary', '知る', '知る', 2, 'f6a7b8c9-0d1e-2f3a-4b5c-6d7e8f9a0b1c', 'Kata ini terdiri dari kanji dengan hiragana ditempelkan. Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanjinya sendiri artinya tahu, jadi versi verbanya artinya tahu. Kata ini juga bisa merujuk pada bagaimana seseorang mengetahui sesuatu, jadi ini juga berarti mempelajari atau mencari tahu.', 'Kata ini terdiri dari kanji dengan hiragana ditempelkan. Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanjinya sendiri artinya tahu, jadi versi verbanya artinya tahu. Kata ini juga bisa merujuk pada bagaimana seseorang mengetahui sesuatu, jadi ini juga berarti mempelajari atau mencari tahu.') ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, character = EXCLUDED.character, slug = EXCLUDED.slug, level = EXCLUDED.level, rank_id = EXCLUDED.rank_id, meaning_mnemonic = EXCLUDED.meaning_mnemonic, description = EXCLUDED.description;
INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('f683e2b9-97cb-41cf-98dd-d7280300b665', 'Untuk Mengetahui', true) ON CONFLICT DO NOTHING;
INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('f683e2b9-97cb-41cf-98dd-d7280300b665', 'To Learn', false) ON CONFLICT DO NOTHING;
INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('f683e2b9-97cb-41cf-98dd-d7280300b665', 'To Find Out', false) ON CONFLICT DO NOTHING;
INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES ('f683e2b9-97cb-41cf-98dd-d7280300b665', 'しる', NULL, true) ON CONFLICT DO NOTHING;
INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('f683e2b9-97cb-41cf-98dd-d7280300b665', 'ルーターのさいきどうの仕方を知っていますか？', 'Apakah Anda tahu cara me-reboot router?') ON CONFLICT DO NOTHING;
INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('f683e2b9-97cb-41cf-98dd-d7280300b665', 'あなたも知っているように、コウイチはロボットです。', 'Seperti yang kalian ketahui, Koichi adalah robot.') ON CONFLICT DO NOTHING;
INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('f683e2b9-97cb-41cf-98dd-d7280300b665', '新聞で白黒ダートルの発見を知った。', 'Saya mengetahui tentang penemuan durtle hitam putih di surat kabar.') ON CONFLICT DO NOTHING;
INSERT INTO public.items (id, type, character, slug, level, rank_id, meaning_mnemonic, description) VALUES ('025651b5-e70c-45b5-ae99-5033fada3e35', 'vocabulary', '生物', '生物', 2, 'f6a7b8c9-0d1e-2f3a-4b5c-6d7e8f9a0b1c', 'Makhluk hidup adalah makhluk hidup, makhluk, atau organisme.', 'Makhluk hidup adalah makhluk hidup, makhluk, atau organisme.') ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, character = EXCLUDED.character, slug = EXCLUDED.slug, level = EXCLUDED.level, rank_id = EXCLUDED.rank_id, meaning_mnemonic = EXCLUDED.meaning_mnemonic, description = EXCLUDED.description;
INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('025651b5-e70c-45b5-ae99-5033fada3e35', 'Makhluk Hidup', true) ON CONFLICT DO NOTHING;
INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('025651b5-e70c-45b5-ae99-5033fada3e35', 'Creature', false) ON CONFLICT DO NOTHING;
INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('025651b5-e70c-45b5-ae99-5033fada3e35', 'Organism', false) ON CONFLICT DO NOTHING;
INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES ('025651b5-e70c-45b5-ae99-5033fada3e35', 'せいぶつ', NULL, true) ON CONFLICT DO NOTHING;
INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('025651b5-e70c-45b5-ae99-5033fada3e35', 'かわらでなぞの生物を発見した。', 'Makhluk misterius ditemukan di dasar sungai yang kering.') ON CONFLICT DO NOTHING;
INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('025651b5-e70c-45b5-ae99-5033fada3e35', '地きゅう上でもっとも大きい生物はシロナガスクジラではなく、シロナガスフグです。', 'Makhluk hidup terbesar di planet ini bukanlah paus biru, melainkan ikan buntal biru.') ON CONFLICT DO NOTHING;
INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('025651b5-e70c-45b5-ae99-5033fada3e35', 'こないだの生物の授業のノート、見せてくれないかな。', 'Bisakah saya melihat catatan Anda kemarin di Bio?') ON CONFLICT DO NOTHING;
INSERT INTO public.items (id, type, character, slug, level, rank_id, meaning_mnemonic, description) VALUES ('facbc165-cc56-4322-911a-0e66405c3697', 'vocabulary', '生物学', '生物学', 2, 'f6a7b8c9-0d1e-2f3a-4b5c-6d7e8f9a0b1c', 'Ingat bagaimana 生物 berarti "makhluk hidup?" Nah, ketika Anda mempelajari makhluk hidup, Anda sedang mempelajari biologi.', 'Ingat bagaimana 生物 berarti "makhluk hidup?" Nah, ketika Anda mempelajari makhluk hidup, Anda sedang mempelajari biologi.') ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, character = EXCLUDED.character, slug = EXCLUDED.slug, level = EXCLUDED.level, rank_id = EXCLUDED.rank_id, meaning_mnemonic = EXCLUDED.meaning_mnemonic, description = EXCLUDED.description;
INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('facbc165-cc56-4322-911a-0e66405c3697', 'Biologi', true) ON CONFLICT DO NOTHING;
INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES ('facbc165-cc56-4322-911a-0e66405c3697', 'せいぶつがく', NULL, true) ON CONFLICT DO NOTHING;
INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('facbc165-cc56-4322-911a-0e66405c3697', 'わたしの一番すきな科目は生物学と生化学です。', 'Dua mata pelajaran favorit saya adalah biologi dan biokimia.') ON CONFLICT DO NOTHING;
INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('facbc165-cc56-4322-911a-0e66405c3697', '川田さんのお兄さんは生物学をせんもんとする学者さんです。', 'Kakak laki-laki Ibu Kawada adalah seorang sarjana yang berspesialisasi dalam biologi.') ON CONFLICT DO NOTHING;
INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('facbc165-cc56-4322-911a-0e66405c3697', 'デザイナーになりたいなら、生物学も学んだ方がいい。', 'Jika Anda ingin menjadi seorang desainer, Anda juga harus belajar biologi.') ON CONFLICT DO NOTHING;
INSERT INTO public.items (id, type, character, slug, level, rank_id, meaning_mnemonic, description) VALUES ('7fecaa55-49fd-4a46-ba3c-5e3f24b8ee3f', 'vocabulary', '使用', '使用', 2, 'f6a7b8c9-0d1e-2f3a-4b5c-6d7e8f9a0b1c', 'Sesuatu yang Anda gunakan, yang ada gunanya, sudah... ya, ada gunanya. Anda bahkan dapat menggunakannya untuk aplikasi praktis.', 'Sesuatu yang Anda gunakan, yang ada gunanya, sudah... ya, ada gunanya. Anda bahkan dapat menggunakannya untuk aplikasi praktis.') ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, character = EXCLUDED.character, slug = EXCLUDED.slug, level = EXCLUDED.level, rank_id = EXCLUDED.rank_id, meaning_mnemonic = EXCLUDED.meaning_mnemonic, description = EXCLUDED.description;
INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('7fecaa55-49fd-4a46-ba3c-5e3f24b8ee3f', 'Gunakan', true) ON CONFLICT DO NOTHING;
INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('7fecaa55-49fd-4a46-ba3c-5e3f24b8ee3f', 'Application', false) ON CONFLICT DO NOTHING;
INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('7fecaa55-49fd-4a46-ba3c-5e3f24b8ee3f', 'Employment', false) ON CONFLICT DO NOTHING;
INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES ('7fecaa55-49fd-4a46-ba3c-5e3f24b8ee3f', 'しよう', NULL, true) ON CONFLICT DO NOTHING;
INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('7fecaa55-49fd-4a46-ba3c-5e3f24b8ee3f', 'このクーポンの使用の仕方が分かりません。', 'Saya tidak tahu cara menggunakan kupon ini.') ON CONFLICT DO NOTHING;
INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('7fecaa55-49fd-4a46-ba3c-5e3f24b8ee3f', '明日、九時から会ぎ室を使用したいんですが、空いていますか？', 'Saya ingin menggunakan ruang pertemuan jam sembilan besok. Apa ada?') ON CONFLICT DO NOTHING;
INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('7fecaa55-49fd-4a46-ba3c-5e3f24b8ee3f', '「へー！使用人って被雇用者のことも言うんだ。てっきり召使いって意味だと思ってた。」「そうだよ。使用者も、利用者だけじゃなくて雇用主って意味もあるしね。」', '"Oh! Shiyounin digunakan untuk pegawai juga? Aku selalu mengira itu hanya berarti pelayan." "Yup. Dan shiyousha bukan hanya berarti pengguna, tapi majikan juga."') ON CONFLICT DO NOTHING;
INSERT INTO public.items (id, type, character, slug, level, rank_id, meaning_mnemonic, description) VALUES ('e7f3e8cb-f347-4386-8392-3c73c38c6b4e', 'vocabulary', '空手', '空手', 2, 'f6a7b8c9-0d1e-2f3a-4b5c-6d7e8f9a0b1c', 'Apa yang bisa kamu lakukan dengan tangan kosong? Karate, itulah yang terjadi. Karate dipraktekkan tanpa senjata, jadi dengan tangan kosong!', 'Apa yang bisa kamu lakukan dengan tangan kosong? Karate, itulah yang terjadi. Karate dipraktekkan tanpa senjata, jadi dengan tangan kosong!') ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, character = EXCLUDED.character, slug = EXCLUDED.slug, level = EXCLUDED.level, rank_id = EXCLUDED.rank_id, meaning_mnemonic = EXCLUDED.meaning_mnemonic, description = EXCLUDED.description;
INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('e7f3e8cb-f347-4386-8392-3c73c38c6b4e', 'Karate', true) ON CONFLICT DO NOTHING;
INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES ('e7f3e8cb-f347-4386-8392-3c73c38c6b4e', 'からて', NULL, true) ON CONFLICT DO NOTHING;
INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('e7f3e8cb-f347-4386-8392-3c73c38c6b4e', '大学では空手をやっているんですか。', 'Apakah Anda melakukan karate di universitas?') ON CONFLICT DO NOTHING;
INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('e7f3e8cb-f347-4386-8392-3c73c38c6b4e', 'その女の子は空手の先生になりたいと思っていた。', 'Gadis itu ingin menjadi guru karate.') ON CONFLICT DO NOTHING;
INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('e7f3e8cb-f347-4386-8392-3c73c38c6b4e', '子どもでも大人でも空手を学ぶことができます。', 'Baik anak-anak maupun orang dewasa bisa belajar karate.') ON CONFLICT DO NOTHING;

-- 5. Insert Kanji-to-Radical Prerequisites
INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '67eadd98-7f40-4d2e-b64b-38f22ce62572', id FROM public.items WHERE type = 'radical' AND slug = 'samurai' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.kanji_radicals (kanji_id, radical_id)
SELECT '67eadd98-7f40-4d2e-b64b-38f22ce62572', id FROM public.items WHERE type = 'radical' AND slug = 'samurai' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '67eadd98-7f40-4d2e-b64b-38f22ce62572', id FROM public.items WHERE type = 'radical' AND slug = 'forehead' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.kanji_radicals (kanji_id, radical_id)
SELECT '67eadd98-7f40-4d2e-b64b-38f22ce62572', id FROM public.items WHERE type = 'radical' AND slug = 'forehead' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '67eadd98-7f40-4d2e-b64b-38f22ce62572', id FROM public.items WHERE type = 'radical' AND slug = 'legs' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.kanji_radicals (kanji_id, radical_id)
SELECT '67eadd98-7f40-4d2e-b64b-38f22ce62572', id FROM public.items WHERE type = 'radical' AND slug = 'legs' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '42b6568f-aa17-4f17-bfb4-2b3a48433d7c', id FROM public.items WHERE type = 'radical' AND slug = 'leader' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.kanji_radicals (kanji_id, radical_id)
SELECT '42b6568f-aa17-4f17-bfb4-2b3a48433d7c', id FROM public.items WHERE type = 'radical' AND slug = 'leader' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '42b6568f-aa17-4f17-bfb4-2b3a48433d7c', id FROM public.items WHERE type = 'radical' AND slug = 'master' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.kanji_radicals (kanji_id, radical_id)
SELECT '42b6568f-aa17-4f17-bfb4-2b3a48433d7c', id FROM public.items WHERE type = 'radical' AND slug = 'master' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT 'b6529f1a-cab2-4a58-90a9-c822d4efdc01', id FROM public.items WHERE type = 'radical' AND slug = 'cage' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.kanji_radicals (kanji_id, radical_id)
SELECT 'b6529f1a-cab2-4a58-90a9-c822d4efdc01', id FROM public.items WHERE type = 'radical' AND slug = 'cage' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT 'b6529f1a-cab2-4a58-90a9-c822d4efdc01', id FROM public.items WHERE type = 'radical' AND slug = 'arrow' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.kanji_radicals (kanji_id, radical_id)
SELECT 'b6529f1a-cab2-4a58-90a9-c822d4efdc01', id FROM public.items WHERE type = 'radical' AND slug = 'arrow' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT 'b38ad39e-d67b-4b18-a9bf-105ac160e1d5', id FROM public.items WHERE type = 'radical' AND slug = 'flowers' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.kanji_radicals (kanji_id, radical_id)
SELECT 'b38ad39e-d67b-4b18-a9bf-105ac160e1d5', id FROM public.items WHERE type = 'radical' AND slug = 'flowers' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT 'b38ad39e-d67b-4b18-a9bf-105ac160e1d5', id FROM public.items WHERE type = 'radical' AND slug = 'leader' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.kanji_radicals (kanji_id, radical_id)
SELECT 'b38ad39e-d67b-4b18-a9bf-105ac160e1d5', id FROM public.items WHERE type = 'radical' AND slug = 'leader' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT 'b38ad39e-d67b-4b18-a9bf-105ac160e1d5', id FROM public.items WHERE type = 'radical' AND slug = 'spoon' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.kanji_radicals (kanji_id, radical_id)
SELECT 'b38ad39e-d67b-4b18-a9bf-105ac160e1d5', id FROM public.items WHERE type = 'radical' AND slug = 'spoon' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '89a2bbf9-1a3a-4934-951a-364053cf745e', id FROM public.items WHERE type = 'radical' AND slug = 'red' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.kanji_radicals (kanji_id, radical_id)
SELECT '89a2bbf9-1a3a-4934-951a-364053cf745e', id FROM public.items WHERE type = 'radical' AND slug = 'red' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT 'ad4d64e6-2a2f-4b55-9e15-24af7813ea05', id FROM public.items WHERE type = 'radical' AND slug = 'rice-paddy' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.kanji_radicals (kanji_id, radical_id)
SELECT 'ad4d64e6-2a2f-4b55-9e15-24af7813ea05', id FROM public.items WHERE type = 'radical' AND slug = 'rice-paddy' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT 'ad4d64e6-2a2f-4b55-9e15-24af7813ea05', id FROM public.items WHERE type = 'radical' AND slug = 'street' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.kanji_radicals (kanji_id, radical_id)
SELECT 'ad4d64e6-2a2f-4b55-9e15-24af7813ea05', id FROM public.items WHERE type = 'radical' AND slug = 'street' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '82d9838e-e69f-42bc-89f0-f350cb69cd80', id FROM public.items WHERE type = 'radical' AND slug = 'run' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.kanji_radicals (kanji_id, radical_id)
SELECT '82d9838e-e69f-42bc-89f0-f350cb69cd80', id FROM public.items WHERE type = 'radical' AND slug = 'run' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '01c8dd0a-0b59-4686-be52-3931ed685a0a', id FROM public.items WHERE type = 'radical' AND slug = 'hole' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.kanji_radicals (kanji_id, radical_id)
SELECT '01c8dd0a-0b59-4686-be52-3931ed685a0a', id FROM public.items WHERE type = 'radical' AND slug = 'hole' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '01c8dd0a-0b59-4686-be52-3931ed685a0a', id FROM public.items WHERE type = 'radical' AND slug = 'nine' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.kanji_radicals (kanji_id, radical_id)
SELECT '01c8dd0a-0b59-4686-be52-3931ed685a0a', id FROM public.items WHERE type = 'radical' AND slug = 'nine' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT 'de069c67-164d-4e06-a30f-18621f79d8ee', id FROM public.items WHERE type = 'radical' AND slug = 'mouth' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.kanji_radicals (kanji_id, radical_id)
SELECT 'de069c67-164d-4e06-a30f-18621f79d8ee', id FROM public.items WHERE type = 'radical' AND slug = 'mouth' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT 'de069c67-164d-4e06-a30f-18621f79d8ee', id FROM public.items WHERE type = 'radical' AND slug = 'treasure' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.kanji_radicals (kanji_id, radical_id)
SELECT 'de069c67-164d-4e06-a30f-18621f79d8ee', id FROM public.items WHERE type = 'radical' AND slug = 'treasure' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT 'de069c67-164d-4e06-a30f-18621f79d8ee', id FROM public.items WHERE type = 'radical' AND slug = 'ice' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.kanji_radicals (kanji_id, radical_id)
SELECT 'de069c67-164d-4e06-a30f-18621f79d8ee', id FROM public.items WHERE type = 'radical' AND slug = 'ice' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT 'ff696f0b-b6f6-4685-8004-601d91c8f0aa', id FROM public.items WHERE type = 'radical' AND slug = 'horns' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.kanji_radicals (kanji_id, radical_id)
SELECT 'ff696f0b-b6f6-4685-8004-601d91c8f0aa', id FROM public.items WHERE type = 'radical' AND slug = 'horns' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT 'ff696f0b-b6f6-4685-8004-601d91c8f0aa', id FROM public.items WHERE type = 'radical' AND slug = 'bow' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.kanji_radicals (kanji_id, radical_id)
SELECT 'ff696f0b-b6f6-4685-8004-601d91c8f0aa', id FROM public.items WHERE type = 'radical' AND slug = 'bow' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT 'ff696f0b-b6f6-4685-8004-601d91c8f0aa', id FROM public.items WHERE type = 'radical' AND slug = 'stick' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.kanji_radicals (kanji_id, radical_id)
SELECT 'ff696f0b-b6f6-4685-8004-601d91c8f0aa', id FROM public.items WHERE type = 'radical' AND slug = 'stick' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT 'ff696f0b-b6f6-4685-8004-601d91c8f0aa', id FROM public.items WHERE type = 'radical' AND slug = 'slide' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.kanji_radicals (kanji_id, radical_id)
SELECT 'ff696f0b-b6f6-4685-8004-601d91c8f0aa', id FROM public.items WHERE type = 'radical' AND slug = 'slide' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT 'beff3cb4-e80b-4463-a409-64041fdd34c3', id FROM public.items WHERE type = 'radical' AND slug = 'cross' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.kanji_radicals (kanji_id, radical_id)
SELECT 'beff3cb4-e80b-4463-a409-64041fdd34c3', id FROM public.items WHERE type = 'radical' AND slug = 'cross' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT 'beff3cb4-e80b-4463-a409-64041fdd34c3', id FROM public.items WHERE type = 'radical' AND slug = 'mouth' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.kanji_radicals (kanji_id, radical_id)
SELECT 'beff3cb4-e80b-4463-a409-64041fdd34c3', id FROM public.items WHERE type = 'radical' AND slug = 'mouth' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT 'beff3cb4-e80b-4463-a409-64041fdd34c3', id FROM public.items WHERE type = 'radical' AND slug = 'wolverine' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.kanji_radicals (kanji_id, radical_id)
SELECT 'beff3cb4-e80b-4463-a409-64041fdd34c3', id FROM public.items WHERE type = 'radical' AND slug = 'wolverine' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '5116cf11-bdc1-4109-b3c8-6a40c74745bc', id FROM public.items WHERE type = 'radical' AND slug = 'coffin' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.kanji_radicals (kanji_id, radical_id)
SELECT '5116cf11-bdc1-4109-b3c8-6a40c74745bc', id FROM public.items WHERE type = 'radical' AND slug = 'coffin' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '5116cf11-bdc1-4109-b3c8-6a40c74745bc', id FROM public.items WHERE type = 'radical' AND slug = 'sun' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.kanji_radicals (kanji_id, radical_id)
SELECT '5116cf11-bdc1-4109-b3c8-6a40c74745bc', id FROM public.items WHERE type = 'radical' AND slug = 'sun' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT 'c4b9cee7-cd7f-408c-ab21-0894e799432e', id FROM public.items WHERE type = 'radical' AND slug = 'sun' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.kanji_radicals (kanji_id, radical_id)
SELECT 'c4b9cee7-cd7f-408c-ab21-0894e799432e', id FROM public.items WHERE type = 'radical' AND slug = 'sun' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT 'c4b9cee7-cd7f-408c-ab21-0894e799432e', id FROM public.items WHERE type = 'radical' AND slug = 'moon' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.kanji_radicals (kanji_id, radical_id)
SELECT 'c4b9cee7-cd7f-408c-ab21-0894e799432e', id FROM public.items WHERE type = 'radical' AND slug = 'moon' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '24dd1da3-bdde-449e-aee6-a9315ffb59e6', id FROM public.items WHERE type = 'radical' AND slug = 'arrow' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.kanji_radicals (kanji_id, radical_id)
SELECT '24dd1da3-bdde-449e-aee6-a9315ffb59e6', id FROM public.items WHERE type = 'radical' AND slug = 'arrow' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '24dd1da3-bdde-449e-aee6-a9315ffb59e6', id FROM public.items WHERE type = 'radical' AND slug = 'mouth' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.kanji_radicals (kanji_id, radical_id)
SELECT '24dd1da3-bdde-449e-aee6-a9315ffb59e6', id FROM public.items WHERE type = 'radical' AND slug = 'mouth' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '30622d15-a410-4970-b21f-2a15eb29d597', id FROM public.items WHERE type = 'radical' AND slug = 'cow' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.kanji_radicals (kanji_id, radical_id)
SELECT '30622d15-a410-4970-b21f-2a15eb29d597', id FROM public.items WHERE type = 'radical' AND slug = 'cow' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '30622d15-a410-4970-b21f-2a15eb29d597', id FROM public.items WHERE type = 'radical' AND slug = 'wing' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.kanji_radicals (kanji_id, radical_id)
SELECT '30622d15-a410-4970-b21f-2a15eb29d597', id FROM public.items WHERE type = 'radical' AND slug = 'wing' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT 'eb8d68d2-054f-4a19-ad6b-ebc075408b01', id FROM public.items WHERE type = 'radical' AND slug = 'white' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.kanji_radicals (kanji_id, radical_id)
SELECT 'eb8d68d2-054f-4a19-ad6b-ebc075408b01', id FROM public.items WHERE type = 'radical' AND slug = 'white' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT 'eb8d68d2-054f-4a19-ad6b-ebc075408b01', id FROM public.items WHERE type = 'radical' AND slug = 'pool' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.kanji_radicals (kanji_id, radical_id)
SELECT 'eb8d68d2-054f-4a19-ad6b-ebc075408b01', id FROM public.items WHERE type = 'radical' AND slug = 'pool' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '2871ccf9-b0d7-42cf-9d17-ea46b49ee525', id FROM public.items WHERE type = 'radical' AND slug = 'leader' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.kanji_radicals (kanji_id, radical_id)
SELECT '2871ccf9-b0d7-42cf-9d17-ea46b49ee525', id FROM public.items WHERE type = 'radical' AND slug = 'leader' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '2871ccf9-b0d7-42cf-9d17-ea46b49ee525', id FROM public.items WHERE type = 'radical' AND slug = 'ground' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.kanji_radicals (kanji_id, radical_id)
SELECT '2871ccf9-b0d7-42cf-9d17-ea46b49ee525', id FROM public.items WHERE type = 'radical' AND slug = 'ground' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '2871ccf9-b0d7-42cf-9d17-ea46b49ee525', id FROM public.items WHERE type = 'radical' AND slug = 'history' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.kanji_radicals (kanji_id, radical_id)
SELECT '2871ccf9-b0d7-42cf-9d17-ea46b49ee525', id FROM public.items WHERE type = 'radical' AND slug = 'history' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '2737017b-d685-4d11-aa96-9c56df70a678', id FROM public.items WHERE type = 'radical' AND slug = 'woman' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.kanji_radicals (kanji_id, radical_id)
SELECT '2737017b-d685-4d11-aa96-9c56df70a678', id FROM public.items WHERE type = 'radical' AND slug = 'woman' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '2737017b-d685-4d11-aa96-9c56df70a678', id FROM public.items WHERE type = 'radical' AND slug = 'machine' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.kanji_radicals (kanji_id, radical_id)
SELECT '2737017b-d685-4d11-aa96-9c56df70a678', id FROM public.items WHERE type = 'radical' AND slug = 'machine' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '8c042927-b9b3-479c-b23c-9e7f3e863f74', id FROM public.items WHERE type = 'radical' AND slug = 'leaf' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.kanji_radicals (kanji_id, radical_id)
SELECT '8c042927-b9b3-479c-b23c-9e7f3e863f74', id FROM public.items WHERE type = 'radical' AND slug = 'leaf' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '8c042927-b9b3-479c-b23c-9e7f3e863f74', id FROM public.items WHERE type = 'radical' AND slug = 'rice-paddy' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.kanji_radicals (kanji_id, radical_id)
SELECT '8c042927-b9b3-479c-b23c-9e7f3e863f74', id FROM public.items WHERE type = 'radical' AND slug = 'rice-paddy' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '8c042927-b9b3-479c-b23c-9e7f3e863f74', id FROM public.items WHERE type = 'radical' AND slug = 'box' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.kanji_radicals (kanji_id, radical_id)
SELECT '8c042927-b9b3-479c-b23c-9e7f3e863f74', id FROM public.items WHERE type = 'radical' AND slug = 'box' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '8cda590f-6f3c-48a3-b737-5d0cdcf10442', id FROM public.items WHERE type = 'radical' AND slug = 'mouth' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.kanji_radicals (kanji_id, radical_id)
SELECT '8cda590f-6f3c-48a3-b737-5d0cdcf10442', id FROM public.items WHERE type = 'radical' AND slug = 'mouth' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '8cda590f-6f3c-48a3-b737-5d0cdcf10442', id FROM public.items WHERE type = 'radical' AND slug = 'jet' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.kanji_radicals (kanji_id, radical_id)
SELECT '8cda590f-6f3c-48a3-b737-5d0cdcf10442', id FROM public.items WHERE type = 'radical' AND slug = 'jet' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT 'ce725efa-3022-4eee-a8d3-d0990ae72985', id FROM public.items WHERE type = 'radical' AND slug = 'roof' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.kanji_radicals (kanji_id, radical_id)
SELECT 'ce725efa-3022-4eee-a8d3-d0990ae72985', id FROM public.items WHERE type = 'radical' AND slug = 'roof' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT 'ce725efa-3022-4eee-a8d3-d0990ae72985', id FROM public.items WHERE type = 'radical' AND slug = 'legs' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.kanji_radicals (kanji_id, radical_id)
SELECT 'ce725efa-3022-4eee-a8d3-d0990ae72985', id FROM public.items WHERE type = 'radical' AND slug = 'legs' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT 'ce725efa-3022-4eee-a8d3-d0990ae72985', id FROM public.items WHERE type = 'radical' AND slug = 'construction' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.kanji_radicals (kanji_id, radical_id)
SELECT 'ce725efa-3022-4eee-a8d3-d0990ae72985', id FROM public.items WHERE type = 'radical' AND slug = 'construction' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT 'f0f62569-831a-4828-82ad-6e5a3422ca56', id FROM public.items WHERE type = 'radical' AND slug = 'lid' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.kanji_radicals (kanji_id, radical_id)
SELECT 'f0f62569-831a-4828-82ad-6e5a3422ca56', id FROM public.items WHERE type = 'radical' AND slug = 'lid' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT 'f0f62569-831a-4828-82ad-6e5a3422ca56', id FROM public.items WHERE type = 'radical' AND slug = 'leader' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.kanji_radicals (kanji_id, radical_id)
SELECT 'f0f62569-831a-4828-82ad-6e5a3422ca56', id FROM public.items WHERE type = 'radical' AND slug = 'leader' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT 'f0f62569-831a-4828-82ad-6e5a3422ca56', id FROM public.items WHERE type = 'radical' AND slug = 'winter' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.kanji_radicals (kanji_id, radical_id)
SELECT 'f0f62569-831a-4828-82ad-6e5a3422ca56', id FROM public.items WHERE type = 'radical' AND slug = 'winter' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT 'f0f62569-831a-4828-82ad-6e5a3422ca56', id FROM public.items WHERE type = 'radical' AND slug = 'drop' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.kanji_radicals (kanji_id, radical_id)
SELECT 'f0f62569-831a-4828-82ad-6e5a3422ca56', id FROM public.items WHERE type = 'radical' AND slug = 'drop' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '0e245655-2560-4142-a1dc-0a699f18db39', id FROM public.items WHERE type = 'radical' AND slug = 'canopy' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.kanji_radicals (kanji_id, radical_id)
SELECT '0e245655-2560-4142-a1dc-0a699f18db39', id FROM public.items WHERE type = 'radical' AND slug = 'canopy' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '0e245655-2560-4142-a1dc-0a699f18db39', id FROM public.items WHERE type = 'radical' AND slug = 'fortune' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.kanji_radicals (kanji_id, radical_id)
SELECT '0e245655-2560-4142-a1dc-0a699f18db39', id FROM public.items WHERE type = 'radical' AND slug = 'fortune' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '6eb5c8a5-d257-4288-9252-00ded7d1ccad', id FROM public.items WHERE type = 'radical' AND slug = 'stop' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.kanji_radicals (kanji_id, radical_id)
SELECT '6eb5c8a5-d257-4288-9252-00ded7d1ccad', id FROM public.items WHERE type = 'radical' AND slug = 'stop' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '6eb5c8a5-d257-4288-9252-00ded7d1ccad', id FROM public.items WHERE type = 'radical' AND slug = 'small' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.kanji_radicals (kanji_id, radical_id)
SELECT '6eb5c8a5-d257-4288-9252-00ded7d1ccad', id FROM public.items WHERE type = 'radical' AND slug = 'small' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '6eb5c8a5-d257-4288-9252-00ded7d1ccad', id FROM public.items WHERE type = 'radical' AND slug = 'slide' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.kanji_radicals (kanji_id, radical_id)
SELECT '6eb5c8a5-d257-4288-9252-00ded7d1ccad', id FROM public.items WHERE type = 'radical' AND slug = 'slide' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '89647fd1-d5c6-4ab4-88eb-3d00b816567c', id FROM public.items WHERE type = 'radical' AND slug = 'tsunami' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.kanji_radicals (kanji_id, radical_id)
SELECT '89647fd1-d5c6-4ab4-88eb-3d00b816567c', id FROM public.items WHERE type = 'radical' AND slug = 'tsunami' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '89647fd1-d5c6-4ab4-88eb-3d00b816567c', id FROM public.items WHERE type = 'radical' AND slug = 'master' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.kanji_radicals (kanji_id, radical_id)
SELECT '89647fd1-d5c6-4ab4-88eb-3d00b816567c', id FROM public.items WHERE type = 'radical' AND slug = 'master' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '289af712-8b72-4233-a415-310633928bef', id FROM public.items WHERE type = 'radical' AND slug = 'lid' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.kanji_radicals (kanji_id, radical_id)
SELECT '289af712-8b72-4233-a415-310633928bef', id FROM public.items WHERE type = 'radical' AND slug = 'lid' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '289af712-8b72-4233-a415-310633928bef', id FROM public.items WHERE type = 'radical' AND slug = 'mouth' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.kanji_radicals (kanji_id, radical_id)
SELECT '289af712-8b72-4233-a415-310633928bef', id FROM public.items WHERE type = 'radical' AND slug = 'mouth' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '289af712-8b72-4233-a415-310633928bef', id FROM public.items WHERE type = 'radical' AND slug = 'small' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.kanji_radicals (kanji_id, radical_id)
SELECT '289af712-8b72-4233-a415-310633928bef', id FROM public.items WHERE type = 'radical' AND slug = 'small' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT 'bee201af-4449-4bb7-aeaf-20800d42f440', id FROM public.items WHERE type = 'radical' AND slug = 'flowers' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.kanji_radicals (kanji_id, radical_id)
SELECT 'bee201af-4449-4bb7-aeaf-20800d42f440', id FROM public.items WHERE type = 'radical' AND slug = 'flowers' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT 'bee201af-4449-4bb7-aeaf-20800d42f440', id FROM public.items WHERE type = 'radical' AND slug = 'center' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.kanji_radicals (kanji_id, radical_id)
SELECT 'bee201af-4449-4bb7-aeaf-20800d42f440', id FROM public.items WHERE type = 'radical' AND slug = 'center' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '6220bf2d-345c-4972-a039-428012fb6391', id FROM public.items WHERE type = 'radical' AND slug = 'moon' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.kanji_radicals (kanji_id, radical_id)
SELECT '6220bf2d-345c-4972-a039-428012fb6391', id FROM public.items WHERE type = 'radical' AND slug = 'moon' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '6220bf2d-345c-4972-a039-428012fb6391', id FROM public.items WHERE type = 'radical' AND slug = 'stamp' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.kanji_radicals (kanji_id, radical_id)
SELECT '6220bf2d-345c-4972-a039-428012fb6391', id FROM public.items WHERE type = 'radical' AND slug = 'stamp' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '6220bf2d-345c-4972-a039-428012fb6391', id FROM public.items WHERE type = 'radical' AND slug = 'stool' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.kanji_radicals (kanji_id, radical_id)
SELECT '6220bf2d-345c-4972-a039-428012fb6391', id FROM public.items WHERE type = 'radical' AND slug = 'stool' LIMIT 1 ON CONFLICT DO NOTHING;

-- 6. Insert Vocab-to-Kanji Prerequisites
INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('4eac7be8-986c-4ddd-8f71-0800c4e73f12', 'ad4d64e6-2a2f-4b55-9e15-24af7813ea05') ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('4eac7be8-986c-4ddd-8f71-0800c4e73f12', 'ad4d64e6-2a2f-4b55-9e15-24af7813ea05') ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('21cf4a39-8aab-4c80-a8cf-4e04f73d2b46', 'b38ad39e-d67b-4b18-a9bf-105ac160e1d5') ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('21cf4a39-8aab-4c80-a8cf-4e04f73d2b46', 'b38ad39e-d67b-4b18-a9bf-105ac160e1d5') ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('9dfb878a-be94-4738-90b3-ea0fc0f8799a', 'b38ad39e-d67b-4b18-a9bf-105ac160e1d5') ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('9dfb878a-be94-4738-90b3-ea0fc0f8799a', 'b38ad39e-d67b-4b18-a9bf-105ac160e1d5') ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '9dfb878a-be94-4738-90b3-ea0fc0f8799a', id FROM public.items WHERE type = 'kanji' AND character = '火' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id)
SELECT '9dfb878a-be94-4738-90b3-ea0fc0f8799a', id FROM public.items WHERE type = 'kanji' AND character = '火' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('2421763d-64af-4cc8-97df-c46b3ebc17f1', 'b38ad39e-d67b-4b18-a9bf-105ac160e1d5') ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('2421763d-64af-4cc8-97df-c46b3ebc17f1', 'b38ad39e-d67b-4b18-a9bf-105ac160e1d5') ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '2421763d-64af-4cc8-97df-c46b3ebc17f1', id FROM public.items WHERE type = 'kanji' AND character = '見' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id)
SELECT '2421763d-64af-4cc8-97df-c46b3ebc17f1', id FROM public.items WHERE type = 'kanji' AND character = '見' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('9b376ace-a649-48a8-a45e-99f3be315581', '89a2bbf9-1a3a-4934-951a-364053cf745e') ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('9b376ace-a649-48a8-a45e-99f3be315581', '89a2bbf9-1a3a-4934-951a-364053cf745e') ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('d04aadb6-c5bd-4b26-adcf-02aa13c3088e', '89a2bbf9-1a3a-4934-951a-364053cf745e') ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('d04aadb6-c5bd-4b26-adcf-02aa13c3088e', '89a2bbf9-1a3a-4934-951a-364053cf745e') ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('92673caf-92fc-4a73-ac71-46df0fdb7f70', 'ce725efa-3022-4eee-a8d3-d0990ae72985') ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('92673caf-92fc-4a73-ac71-46df0fdb7f70', 'ce725efa-3022-4eee-a8d3-d0990ae72985') ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '92673caf-92fc-4a73-ac71-46df0fdb7f70', id FROM public.items WHERE type = 'kanji' AND character = '気' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id)
SELECT '92673caf-92fc-4a73-ac71-46df0fdb7f70', id FROM public.items WHERE type = 'kanji' AND character = '気' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('9feb5d6d-afe8-4c34-91dc-56f6007ecd47', 'ce725efa-3022-4eee-a8d3-d0990ae72985') ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('9feb5d6d-afe8-4c34-91dc-56f6007ecd47', 'ce725efa-3022-4eee-a8d3-d0990ae72985') ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('1068a532-579e-491d-82d8-d2dce7b73142', 'de069c67-164d-4e06-a30f-18621f79d8ee') ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('1068a532-579e-491d-82d8-d2dce7b73142', 'de069c67-164d-4e06-a30f-18621f79d8ee') ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('67ecb7a3-0a3a-4abb-9b91-84be40f62164', '67eadd98-7f40-4d2e-b64b-38f22ce62572') ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('67ecb7a3-0a3a-4abb-9b91-84be40f62164', '67eadd98-7f40-4d2e-b64b-38f22ce62572') ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('0fcabe62-7fc9-41ce-9b35-67d87bd78ec3', '67eadd98-7f40-4d2e-b64b-38f22ce62572') ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('0fcabe62-7fc9-41ce-9b35-67d87bd78ec3', '67eadd98-7f40-4d2e-b64b-38f22ce62572') ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '0fcabe62-7fc9-41ce-9b35-67d87bd78ec3', id FROM public.items WHERE type = 'kanji' AND character = '上' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id)
SELECT '0fcabe62-7fc9-41ce-9b35-67d87bd78ec3', id FROM public.items WHERE type = 'kanji' AND character = '上' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('969ade5e-79d2-46ff-ae8e-a759e06a3146', '67eadd98-7f40-4d2e-b64b-38f22ce62572') ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('969ade5e-79d2-46ff-ae8e-a759e06a3146', '67eadd98-7f40-4d2e-b64b-38f22ce62572') ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '969ade5e-79d2-46ff-ae8e-a759e06a3146', id FROM public.items WHERE type = 'kanji' AND character = '切' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id)
SELECT '969ade5e-79d2-46ff-ae8e-a759e06a3146', id FROM public.items WHERE type = 'kanji' AND character = '切' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('a107dfa5-5ba3-490c-896a-dba43dbe5720', '67eadd98-7f40-4d2e-b64b-38f22ce62572') ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('a107dfa5-5ba3-490c-896a-dba43dbe5720', '67eadd98-7f40-4d2e-b64b-38f22ce62572') ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT 'a107dfa5-5ba3-490c-896a-dba43dbe5720', id FROM public.items WHERE type = 'kanji' AND character = '手' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id)
SELECT 'a107dfa5-5ba3-490c-896a-dba43dbe5720', id FROM public.items WHERE type = 'kanji' AND character = '手' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('b9964ad4-1029-4922-a8ac-652fedf32c90', 'ff696f0b-b6f6-4685-8004-601d91c8f0aa') ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('b9964ad4-1029-4922-a8ac-652fedf32c90', 'ff696f0b-b6f6-4685-8004-601d91c8f0aa') ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '62384156-5fd7-4f0e-93b4-5d451bb07ede', id FROM public.items WHERE type = 'kanji' AND character = '兄' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id)
SELECT '62384156-5fd7-4f0e-93b4-5d451bb07ede', id FROM public.items WHERE type = 'kanji' AND character = '兄' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('62384156-5fd7-4f0e-93b4-5d451bb07ede', 'ff696f0b-b6f6-4685-8004-601d91c8f0aa') ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('62384156-5fd7-4f0e-93b4-5d451bb07ede', 'ff696f0b-b6f6-4685-8004-601d91c8f0aa') ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('1e04297f-c98e-4cff-8bee-6e654116fe51', '82d9838e-e69f-42bc-89f0-f350cb69cd80') ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('1e04297f-c98e-4cff-8bee-6e654116fe51', '82d9838e-e69f-42bc-89f0-f350cb69cd80') ON CONFLICT DO NOTHING;