-- ============================================================
-- KaniGani Seed Data: N4 - Pangkat 6
-- Generated automatically with translated Indonesian content
-- ============================================================

-- 1. Clean up existing items in this rank
DELETE FROM public.items WHERE rank_id = 'c90d1e2f-3a4b-5c6d-7e8f-9a0b1c2d3e4f';

-- 2. Insert Radicals
INSERT INTO public.items (id, type, character, slug, level, rank_id, description) VALUES ('45bebcec-c42e-4524-9d31-c3f38138ab61', 'radical', '魚', 'fish', 2, 'c90d1e2f-3a4b-5c6d-7e8f-9a0b1c2d3e4f', 'Di penjara di sawah mereka sedang merebus sesuatu. Menurutmu apa itu? Ikan! Apa yang lebih baik dengan nasi? Apa yang mudah ditemukan sehingga menjadikannya makanan penjara yang murah? Ikan, tentu saja!') ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, character = EXCLUDED.character, slug = EXCLUDED.slug, level = EXCLUDED.level, rank_id = EXCLUDED.rank_id, description = EXCLUDED.description;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('45bebcec-c42e-4524-9d31-c3f38138ab61', 'Ikan', true) ON CONFLICT DO NOTHING;

INSERT INTO public.items (id, type, character, slug, level, rank_id, description) VALUES ('78825fc7-930a-4d0e-8bc0-de73d69225bc', 'radical', '易', 'easy', 2, 'c90d1e2f-3a4b-5c6d-7e8f-9a0b1c2d3e4f', 'Jika Anda memiliki sayap, terbang menuju matahari akan mudah. Jika Anda mencoba mencapainya dengan tubuh manusia tak bersayap, hal itu tidak akan mudah.') ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, character = EXCLUDED.character, slug = EXCLUDED.slug, level = EXCLUDED.level, rank_id = EXCLUDED.rank_id, description = EXCLUDED.description;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('78825fc7-930a-4d0e-8bc0-de73d69225bc', 'Mudah', true) ON CONFLICT DO NOTHING;

INSERT INTO public.items (id, type, character, slug, level, rank_id, description) VALUES ('7059d9ce-ff87-4c15-a29a-25e8536edc2d', 'radical', '無', 'nothing', 2, 'c90d1e2f-3a4b-5c6d-7e8f-9a0b1c2d3e4f', 'Ada banyak kandang yang mendidih. Tapi Anda melihat ke dalam kandang dan di sana... tidak ada apa-apa. Anda merebus apa pun yang ada di sana hingga habis!') ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, character = EXCLUDED.character, slug = EXCLUDED.slug, level = EXCLUDED.level, rank_id = EXCLUDED.rank_id, description = EXCLUDED.description;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('7059d9ce-ff87-4c15-a29a-25e8536edc2d', 'Tidak ada', true) ON CONFLICT DO NOTHING;

INSERT INTO public.items (id, type, character, slug, level, rank_id, description) VALUES ('92401ce3-8e61-4965-8125-0df48bb89b45', 'radical', '首', 'neck', 2, 'c90d1e2f-3a4b-5c6d-7e8f-9a0b1c2d3e4f', 'Ada beberapa tanduk di tanah yang Anda inginkan untuk diri Anda sendiri. Anda mengambilnya dan menempelkannya ke leher Anda. Bayangkan tanduk ini mencuat di leher Anda. Tidak ada yang bisa menggorok leher Anda sekarang karena leher Anda terlindungi.') ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, character = EXCLUDED.character, slug = EXCLUDED.slug, level = EXCLUDED.level, rank_id = EXCLUDED.rank_id, description = EXCLUDED.description;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('92401ce3-8e61-4965-8125-0df48bb89b45', 'Leher', true) ON CONFLICT DO NOTHING;

INSERT INTO public.items (id, type, character, slug, level, rank_id, description) VALUES ('1849a3bd-1300-4582-9c74-a5b315fd029d', 'radical', '隹', 'turkey', 2, 'c90d1e2f-3a4b-5c6d-7e8f-9a0b1c2d3e4f', 'Ini tampak seperti puncak dari burung yang radikal, tetapi tidak sepenuhnya. Ini semacam atasan radikal yang tampak bodoh. Burung apa yang bodoh, begitu bodohnya sehingga ia memandang ke langit untuk menenggelamkan dirinya dengan mulut terbuka? Seekor kalkun.') ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, character = EXCLUDED.character, slug = EXCLUDED.slug, level = EXCLUDED.level, rank_id = EXCLUDED.rank_id, description = EXCLUDED.description;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('1849a3bd-1300-4582-9c74-a5b315fd029d', 'Turki', true) ON CONFLICT DO NOTHING;

INSERT INTO public.items (id, type, character, slug, level, rank_id, description) VALUES ('0a73a5bd-d9eb-43e9-b831-e4f0da5ba54a', 'radical', '罒', 'net', 2, 'c90d1e2f-3a4b-5c6d-7e8f-9a0b1c2d3e4f', 'Ini adalah jaring yang dibentangkan di atas air. Bayangkan semua ikan yang bisa Anda tangkap di jaring ini!') ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, character = EXCLUDED.character, slug = EXCLUDED.slug, level = EXCLUDED.level, rank_id = EXCLUDED.rank_id, description = EXCLUDED.description;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('0a73a5bd-d9eb-43e9-b831-e4f0da5ba54a', 'Bersih', true) ON CONFLICT DO NOTHING;

INSERT INTO public.items (id, type, character, slug, level, rank_id, description) VALUES ('34a686ed-b54b-49f8-8207-8cbf5937adfc', 'radical', '竹', 'bamboo', 2, 'c90d1e2f-3a4b-5c6d-7e8f-9a0b1c2d3e4f', 'Lihat seberapa tinggi batangnya dengan tanaman kecil yang lebat di bagian atasnya? Bentuknya seperti bambu, jika Anda menggunakan imajinasi Anda.') ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, character = EXCLUDED.character, slug = EXCLUDED.slug, level = EXCLUDED.level, rank_id = EXCLUDED.rank_id, description = EXCLUDED.description;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('34a686ed-b54b-49f8-8207-8cbf5937adfc', 'Bambu', true) ON CONFLICT DO NOTHING;

INSERT INTO public.items (id, type, character, slug, level, rank_id, description) VALUES ('922e3d1a-c835-4ec4-a312-d272fe972e5a', 'radical', '合', 'suit', 2, 'c90d1e2f-3a4b-5c6d-7e8f-9a0b1c2d3e4f', 'Anda menemukan topi di tanah dengan mulut sebagai desain di bagian depan. Anda pikir itu terlihat aneh, tetapi ketika Anda memakainya, Anda merasa itu cocok untuk Anda. Bayangkan diri Anda merasa tidak begitu yakin dengan topi ini pada awalnya. Tapi begitu Anda memakainya, Anda merasa terkejut.') ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, character = EXCLUDED.character, slug = EXCLUDED.slug, level = EXCLUDED.level, rank_id = EXCLUDED.rank_id, description = EXCLUDED.description;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('922e3d1a-c835-4ec4-a312-d272fe972e5a', 'Setelan', true) ON CONFLICT DO NOTHING;

INSERT INTO public.items (id, type, character, slug, level, rank_id, description) VALUES ('24b92233-3a6c-4990-895c-9758ec1da1ee', 'radical', '欠', 'lack', 2, 'c90d1e2f-3a4b-5c6d-7e8f-9a0b1c2d3e4f', 'Ada seseorang di penjara. Mengapa orang ini dipenjara? Karena mereka kekurangan hal-hal yang dibutuhkan manusia untuk berada di dekat manusia lain. Jika Anda kekurangan sesuatu (kebaikan, pengendalian diri, dll.), Anda mungkin melakukan sesuatu yang membuat orang lain memenjarakan Anda. Berusahalah untuk memperbaiki kekuranganmu agar hal ini tidak menimpamu.') ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, character = EXCLUDED.character, slug = EXCLUDED.slug, level = EXCLUDED.level, rank_id = EXCLUDED.rank_id, description = EXCLUDED.description;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('24b92233-3a6c-4990-895c-9758ec1da1ee', 'Kekurangan', true) ON CONFLICT DO NOTHING;

INSERT INTO public.items (id, type, character, slug, level, rank_id, description) VALUES ('71df06c3-f0a4-46c0-9cc3-c5293a586479', 'radical', '反', 'anti', 2, 'c90d1e2f-3a4b-5c6d-7e8f-9a0b1c2d3e4f', 'Radikal ini sama dengan kanji. Artinya anti.

Kalau-kalau Anda tidak ingat ini, inilah arti mnemonik kanji: Bangku ada di tebing. Jika seseorang memiliki bangku jauh di dalam tebing, kemungkinan besar mereka anti masyarakat, bersembunyi seperti itu.') ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, character = EXCLUDED.character, slug = EXCLUDED.slug, level = EXCLUDED.level, rank_id = EXCLUDED.rank_id, description = EXCLUDED.description;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('71df06c3-f0a4-46c0-9cc3-c5293a586479', 'Anti', true) ON CONFLICT DO NOTHING;

INSERT INTO public.items (id, type, character, slug, level, rank_id, description) VALUES ('9ef0aa3b-ae90-483d-aee3-d236ea567ee1', 'radical', '代', 'substitute', 2, 'c90d1e2f-3a4b-5c6d-7e8f-9a0b1c2d3e4f', 'Radikal ini sama dengan kanji. Artinya pengganti.') ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, character = EXCLUDED.character, slug = EXCLUDED.slug, level = EXCLUDED.level, rank_id = EXCLUDED.rank_id, description = EXCLUDED.description;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('9ef0aa3b-ae90-483d-aee3-d236ea567ee1', 'Pengganti', true) ON CONFLICT DO NOTHING;

INSERT INTO public.items (id, type, character, slug, level, rank_id, description) VALUES ('525ed076-9b58-44e5-bf90-7724be757837', 'radical', '音', 'sound', 2, 'c90d1e2f-3a4b-5c6d-7e8f-9a0b1c2d3e4f', 'Radikal ini sama dengan kanji. Artinya suara.') ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, character = EXCLUDED.character, slug = EXCLUDED.slug, level = EXCLUDED.level, rank_id = EXCLUDED.rank_id, description = EXCLUDED.description;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('525ed076-9b58-44e5-bf90-7724be757837', 'Suara', true) ON CONFLICT DO NOTHING;

INSERT INTO public.items (id, type, character, slug, level, rank_id, description) VALUES ('58fb8b39-add1-4932-bd23-21df7b429307', 'radical', '[Paku]', 'spikes', 2, 'c90d1e2f-3a4b-5c6d-7e8f-9a0b1c2d3e4f', 'Di tanah ada banyak paku yang keluar. Anda tidak ingin menginjaknya sekarang, bukan?') ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, character = EXCLUDED.character, slug = EXCLUDED.slug, level = EXCLUDED.level, rank_id = EXCLUDED.rank_id, description = EXCLUDED.description;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('58fb8b39-add1-4932-bd23-21df7b429307', 'Paku', true) ON CONFLICT DO NOTHING;

INSERT INTO public.items (id, type, character, slug, level, rank_id, description) VALUES ('1e28af7c-8fff-4a55-9b55-5d3eaf7898ce', 'radical', '[Cina]', 'chinese', 2, 'c90d1e2f-3a4b-5c6d-7e8f-9a0b1c2d3e4f', 'Mengapa suamimu memasukkan bunga ke dalam mulutnya? Itu karena dia orang Cina. Itu hanya sesuatu yang mereka lakukan di sana, Anda jelaskan. Teh adalah air bunga, ini tidak aneh. Orang Tiongkok baru berpikir untuk melakukannya terlebih dahulu.') ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, character = EXCLUDED.character, slug = EXCLUDED.slug, level = EXCLUDED.level, rank_id = EXCLUDED.rank_id, description = EXCLUDED.description;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('1e28af7c-8fff-4a55-9b55-5d3eaf7898ce', 'Cina', true) ON CONFLICT DO NOTHING;

INSERT INTO public.items (id, type, character, slug, level, rank_id, description) VALUES ('00e4c5c0-fe1d-4da5-9eff-2ffca2476eba', 'radical', '艮', 'root', 2, 'c90d1e2f-3a4b-5c6d-7e8f-9a0b1c2d3e4f', 'Jika matahari terbit dan Anda menendang tanah, akarnya akan tercabut. Akar mencoba muncul saat matahari cerah. Namun jika Anda menendang terlalu keras, akarnya akan membuat Anda tersandung, jadi berhati-hatilah!') ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, character = EXCLUDED.character, slug = EXCLUDED.slug, level = EXCLUDED.level, rank_id = EXCLUDED.rank_id, description = EXCLUDED.description;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('00e4c5c0-fe1d-4da5-9eff-2ffca2476eba', 'Akar', true) ON CONFLICT DO NOTHING;

INSERT INTO public.items (id, type, character, slug, level, rank_id, description) VALUES ('42fb8b31-1af3-4813-95c8-f301f276b00a', 'radical', '馬', 'horse', 2, 'c90d1e2f-3a4b-5c6d-7e8f-9a0b1c2d3e4f', 'Jangan bingung membedakan radikal ini dengan radikal 鳥 burung. Kelihatannya mirip, dengan sayap di bawah dan bentuk di atas, namun tidak ada bulu yang mencuat di atas kepalanya serta memiliki leher yang panjang dan tebal. Jadi meskipun ia bergerak cepat seperti mempunyai sayap, ia bukanlah burung, melainkan kuda.') ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, character = EXCLUDED.character, slug = EXCLUDED.slug, level = EXCLUDED.level, rank_id = EXCLUDED.rank_id, description = EXCLUDED.description;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('42fb8b31-1af3-4813-95c8-f301f276b00a', 'Kuda', true) ON CONFLICT DO NOTHING;

INSERT INTO public.items (id, type, character, slug, level, rank_id, description) VALUES ('6cb70e07-7631-41f2-814c-6db231f546d0', 'radical', '見', 'see', 2, 'c90d1e2f-3a4b-5c6d-7e8f-9a0b1c2d3e4f', 'Ada bola mata di atas beberapa kaki. Ketika mata Anda tertuju pada suatu tempat (dalam hal ini pada kaki), mata Anda melihat hal-hal tersebut. Itu sebabnya cara radikal ini lihat.') ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, character = EXCLUDED.character, slug = EXCLUDED.slug, level = EXCLUDED.level, rank_id = EXCLUDED.rank_id, description = EXCLUDED.description;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('6cb70e07-7631-41f2-814c-6db231f546d0', 'Lihat', true) ON CONFLICT DO NOTHING;

INSERT INTO public.items (id, type, character, slug, level, rank_id, description) VALUES ('27b3db4c-725f-4b5d-89aa-a0cd19804293', 'radical', '[Beruang]', 'bear', 2, 'c90d1e2f-3a4b-5c6d-7e8f-9a0b1c2d3e4f', 'Ini terlihat seperti huruf "B" yang berarti beruang. B untuk Beruang! Huruf B juga terlihat agak mirip beruang jika dipikir-pikir.') ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, character = EXCLUDED.character, slug = EXCLUDED.slug, level = EXCLUDED.level, rank_id = EXCLUDED.rank_id, description = EXCLUDED.description;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('27b3db4c-725f-4b5d-89aa-a0cd19804293', 'Beruang', true) ON CONFLICT DO NOTHING;

INSERT INTO public.items (id, type, character, slug, level, rank_id, description) VALUES ('0e6a63b8-27f0-4d74-9ab9-2b7a15fdc0a8', 'radical', '正', 'correct', 2, 'c90d1e2f-3a4b-5c6d-7e8f-9a0b1c2d3e4f', 'Radikal ini sama dengan kanji. Artinya benar.') ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, character = EXCLUDED.character, slug = EXCLUDED.slug, level = EXCLUDED.level, rank_id = EXCLUDED.rank_id, description = EXCLUDED.description;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('0e6a63b8-27f0-4d74-9ab9-2b7a15fdc0a8', 'Benar', true) ON CONFLICT DO NOTHING;

INSERT INTO public.items (id, type, character, slug, level, rank_id, description) VALUES ('add2c0f2-3ff1-4c1f-8f22-c10340296768', 'radical', '頁', 'geoduck', 2, 'c90d1e2f-3a4b-5c6d-7e8f-9a0b1c2d3e4f', 'Radikal ini terdiri dari kerang dengan daun di atasnya. Apa itu? Geoduck yang misterius. Ini adalah makhluk mirip kerang yang sangat berbeda. Jika Anda tidak tahu apa itu geoduck, carilah. Ini cukup aneh. Ia mempunyai tonjolan panjang berbentuk daun yang keluar dari badan cangkangnya.') ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, character = EXCLUDED.character, slug = EXCLUDED.slug, level = EXCLUDED.level, rank_id = EXCLUDED.rank_id, description = EXCLUDED.description;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('add2c0f2-3ff1-4c1f-8f22-c10340296768', 'Geoduck', true) ON CONFLICT DO NOTHING;

INSERT INTO public.items (id, type, character, slug, level, rank_id, description) VALUES ('b206c040-2051-490a-81b2-0757993e22b0', 'radical', '[Cumi]', 'squid', 2, 'c90d1e2f-3a4b-5c6d-7e8f-9a0b1c2d3e4f', 'Lihat bentuk cumi-cumi di sini? Ada kepalanya, badannya, dan tentakelnya (dua). Sangat mirip cumi-cumi jika Anda bertanya kepada saya!') ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, character = EXCLUDED.character, slug = EXCLUDED.slug, level = EXCLUDED.level, rank_id = EXCLUDED.rank_id, description = EXCLUDED.description;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('b206c040-2051-490a-81b2-0757993e22b0', 'Cumi', true) ON CONFLICT DO NOTHING;

-- 3. Insert Kanjis
INSERT INTO public.items (id, type, character, slug, level, rank_id, meaning_mnemonic, reading_mnemonic) VALUES ('19e7d17e-44ce-4cf2-a7f1-b348ce0b10d6', 'kanji', '魚', '魚', 2, 'c90d1e2f-3a4b-5c6d-7e8f-9a0b1c2d3e4f', 'Ikan radikal dan ikan kanji sama persis!', 'Anda menangkap ikan. Saat Anda menariknya keluar dari air, ia mulai berteriak dan menunjuk: "PERGI!" (ぎょ). "PERGI GYO GYO GYO!" Ada kapal pesiar besar yang datang menuju perahu nelayan kecil Anda. Pantas saja ikan itu berteriak PERGI padamu.') ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, character = EXCLUDED.character, slug = EXCLUDED.slug, level = EXCLUDED.level, rank_id = EXCLUDED.rank_id, meaning_mnemonic = EXCLUDED.meaning_mnemonic, reading_mnemonic = EXCLUDED.reading_mnemonic;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('19e7d17e-44ce-4cf2-a7f1-b348ce0b10d6', 'Ikan', true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES ('19e7d17e-44ce-4cf2-a7f1-b348ce0b10d6', 'ぎょ', 'onyomi', true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES ('19e7d17e-44ce-4cf2-a7f1-b348ce0b10d6', 'さかな', 'kunyomi', false) ON CONFLICT DO NOTHING;

INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES ('19e7d17e-44ce-4cf2-a7f1-b348ce0b10d6', 'うお', 'kunyomi', false) ON CONFLICT DO NOTHING;

INSERT INTO public.items (id, type, character, slug, level, rank_id, meaning_mnemonic, reading_mnemonic) VALUES ('c786e4af-48e8-4569-acee-32a37cbc5e8a', 'kanji', '場', '場', 2, 'c90d1e2f-3a4b-5c6d-7e8f-9a0b1c2d3e4f', 'Kotoran memudahkan untuk mengidentifikasi lokasi Anda. Jika Anda mengetahuinya, Anda bisa pergi dari satu tempat ke tempat lain.', 'Mengetahui lokasi Anda dari tanah adalah suatu prestasi! Siapa yang mengajarimu itu? Itu adalah Jourm (じょう), buruh tani lokal yang besar. Meskipun agak aneh, dia benar-benar mengetahui kotorannya dan dapat memberi tahu Anda dari mana asal kotoran tersebut.') ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, character = EXCLUDED.character, slug = EXCLUDED.slug, level = EXCLUDED.level, rank_id = EXCLUDED.rank_id, meaning_mnemonic = EXCLUDED.meaning_mnemonic, reading_mnemonic = EXCLUDED.reading_mnemonic;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('c786e4af-48e8-4569-acee-32a37cbc5e8a', 'Lokasi', true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('c786e4af-48e8-4569-acee-32a37cbc5e8a', 'Place', false) ON CONFLICT DO NOTHING;

INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES ('c786e4af-48e8-4569-acee-32a37cbc5e8a', 'じょう', 'onyomi', true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES ('c786e4af-48e8-4569-acee-32a37cbc5e8a', 'ば', 'kunyomi', false) ON CONFLICT DO NOTHING;

INSERT INTO public.items (id, type, character, slug, level, rank_id, meaning_mnemonic, reading_mnemonic) VALUES ('1d863db0-dce1-4675-99b7-fe2ff8a83bd4', 'kanji', '開', '開', 2, 'c90d1e2f-3a4b-5c6d-7e8f-9a0b1c2d3e4f', 'Sebuah gerbang dengan lentera terbuka untuk Anda. Itu nyaman, karena di luar cukup gelap dan Anda mungkin tidak akan melihat gerbang yang terbuka tanpa bantuan lentera.', 'Gerbang terbuka ini berada di dalam air, jadi Anda memerlukan kayak (かい) untuk masuk. Untungnya, Anda membawa kayak untuk berjaga-jaga.') ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, character = EXCLUDED.character, slug = EXCLUDED.slug, level = EXCLUDED.level, rank_id = EXCLUDED.rank_id, meaning_mnemonic = EXCLUDED.meaning_mnemonic, reading_mnemonic = EXCLUDED.reading_mnemonic;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('1d863db0-dce1-4675-99b7-fe2ff8a83bd4', 'Buka', true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES ('1d863db0-dce1-4675-99b7-fe2ff8a83bd4', 'かい', 'onyomi', true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES ('1d863db0-dce1-4675-99b7-fe2ff8a83bd4', 'あ', 'kunyomi', false) ON CONFLICT DO NOTHING;

INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES ('1d863db0-dce1-4675-99b7-fe2ff8a83bd4', 'ひら', 'kunyomi', false) ON CONFLICT DO NOTHING;

INSERT INTO public.items (id, type, character, slug, level, rank_id, meaning_mnemonic, reading_mnemonic) VALUES ('44e904c6-78be-4597-908b-258583fb22ea', 'kanji', '無', '無', 2, 'c90d1e2f-3a4b-5c6d-7e8f-9a0b1c2d3e4f', 'Kanji Nothing Radical dan Nothing Kanji sama persis! Wah!', 'Tidak ada yang bisa melenguh (む) seperti sapi yang bisa melenguh. Sapi adalah yang terbaik dalam hal melenguh. Itu faktanya.') ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, character = EXCLUDED.character, slug = EXCLUDED.slug, level = EXCLUDED.level, rank_id = EXCLUDED.rank_id, meaning_mnemonic = EXCLUDED.meaning_mnemonic, reading_mnemonic = EXCLUDED.reading_mnemonic;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('44e904c6-78be-4597-908b-258583fb22ea', 'Tidak ada', true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES ('44e904c6-78be-4597-908b-258583fb22ea', 'む', 'onyomi', true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES ('44e904c6-78be-4597-908b-258583fb22ea', 'ぶ', 'onyomi', true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES ('44e904c6-78be-4597-908b-258583fb22ea', 'な', 'kunyomi', false) ON CONFLICT DO NOTHING;

INSERT INTO public.items (id, type, character, slug, level, rank_id, meaning_mnemonic, reading_mnemonic) VALUES ('35b3e5d3-3529-4ab3-8e7d-63363cbfa9f3', 'kanji', '道', '道', 2, 'c90d1e2f-3a4b-5c6d-7e8f-9a0b1c2d3e4f', 'Arahkan leher skuter ke jalan! Skuter hanya dimaksudkan untuk berkendara di jalan raya dan jalan setapak, dan jika Anda salah jalan, kemungkinan besar leher Anda akan patah!', 'Untuk mengingat bacaan どう kita menggunakan kata "donat".

Anda menempuh jalan ini begitu cepat sehingga Anda tidak melihat donat raksasa (どう) yang meluncur ke arah Anda hingga menit terakhir. Anda menabraknya, dan Anda serta donatnya terjatuh. Ah, lehermu!') ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, character = EXCLUDED.character, slug = EXCLUDED.slug, level = EXCLUDED.level, rank_id = EXCLUDED.rank_id, meaning_mnemonic = EXCLUDED.meaning_mnemonic, reading_mnemonic = EXCLUDED.reading_mnemonic;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('35b3e5d3-3529-4ab3-8e7d-63363cbfa9f3', 'Jalan', true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('35b3e5d3-3529-4ab3-8e7d-63363cbfa9f3', 'Street', false) ON CONFLICT DO NOTHING;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('35b3e5d3-3529-4ab3-8e7d-63363cbfa9f3', 'Path', false) ON CONFLICT DO NOTHING;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('35b3e5d3-3529-4ab3-8e7d-63363cbfa9f3', 'Way', false) ON CONFLICT DO NOTHING;

INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES ('35b3e5d3-3529-4ab3-8e7d-63363cbfa9f3', 'どう', 'onyomi', true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES ('35b3e5d3-3529-4ab3-8e7d-63363cbfa9f3', 'みち', 'kunyomi', false) ON CONFLICT DO NOTHING;

INSERT INTO public.items (id, type, character, slug, level, rank_id, meaning_mnemonic, reading_mnemonic) VALUES ('d05f740a-4d9f-47df-a59f-6bb57738d210', 'kanji', '着', '着', 2, 'c90d1e2f-3a4b-5c6d-7e8f-9a0b1c2d3e4f', 'Ada domba tepat di depan mata Anda, karena mereka menyukai apa yang Anda kenakan. Fakta yang jarang diketahui adalah domba adalah fashionista, dan mereka datang setiap hari untuk mengagumi gaya Anda. Domba-domba ini sangat bergaya sehingga mereka memakai ekornya ke satu sisi - dengan gaya terkini (lihat domba radikal - ekornya menyapu dengan gaya ke kiri!).', 'Semakin banyak domba yang datang setiap hari untuk mengagumi pakaian yang Anda kenakan. Anda menggunakan papan kapur (ちゃく) untuk menghitung berapa banyak domba yang datang setiap hari.') ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, character = EXCLUDED.character, slug = EXCLUDED.slug, level = EXCLUDED.level, rank_id = EXCLUDED.rank_id, meaning_mnemonic = EXCLUDED.meaning_mnemonic, reading_mnemonic = EXCLUDED.reading_mnemonic;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('d05f740a-4d9f-47df-a59f-6bb57738d210', 'Pakai', true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('d05f740a-4d9f-47df-a59f-6bb57738d210', 'Arrive', false) ON CONFLICT DO NOTHING;

INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES ('d05f740a-4d9f-47df-a59f-6bb57738d210', 'ちゃく', 'onyomi', true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES ('d05f740a-4d9f-47df-a59f-6bb57738d210', 'き', 'kunyomi', false) ON CONFLICT DO NOTHING;

INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES ('d05f740a-4d9f-47df-a59f-6bb57738d210', 'つ', 'kunyomi', false) ON CONFLICT DO NOTHING;

INSERT INTO public.items (id, type, character, slug, level, rank_id, meaning_mnemonic, reading_mnemonic) VALUES ('c63e8920-cfa1-438a-afe1-dc483ca1c692', 'kanji', '運', '運', 2, 'c90d1e2f-3a4b-5c6d-7e8f-9a0b1c2d3e4f', 'Saat mengendarai skuter, Anda membenturkan dahi Anda ke mobil di depan. Skutermu rusak, jadi kamu harus membawanya pulang. Anda memerlukan banyak keberuntungan untuk membawa skuter itu pulang dengan selamat.', 'Saat Anda membawa skuter, keberuntungan Anda berubah, dan hujan mulai turun, jadi Anda mengeluarkan payung Anda (うん). Sekarang Anda memegang skuter, dahi, dan payung.') ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, character = EXCLUDED.character, slug = EXCLUDED.slug, level = EXCLUDED.level, rank_id = EXCLUDED.rank_id, meaning_mnemonic = EXCLUDED.meaning_mnemonic, reading_mnemonic = EXCLUDED.reading_mnemonic;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('c63e8920-cfa1-438a-afe1-dc483ca1c692', 'Bawa', true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('c63e8920-cfa1-438a-afe1-dc483ca1c692', 'Luck', false) ON CONFLICT DO NOTHING;

INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES ('c63e8920-cfa1-438a-afe1-dc483ca1c692', 'うん', 'onyomi', true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES ('c63e8920-cfa1-438a-afe1-dc483ca1c692', 'はこ', 'kunyomi', false) ON CONFLICT DO NOTHING;

INSERT INTO public.items (id, type, character, slug, level, rank_id, meaning_mnemonic, reading_mnemonic) VALUES ('9e16675c-c30f-408b-87c7-90ffd2ce7aee', 'kanji', '集', '集', 2, 'c90d1e2f-3a4b-5c6d-7e8f-9a0b1c2d3e4f', 'Anda mengejar kalkun ke atas pohon untuk mengambilnya. Setidaknya, Anda akan melakukannya setelah Anda mengumpulkan cukup banyak kalkun di satu pohon ini.', 'Setelah Anda mengumpulkan cukup banyak kalkun, Anda akan mengubahnya menjadi sepatu (しゅう). Mungkin bahkan dua sepatu, tapi itu berarti mengumpulkan lebih banyak kalkun!') ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, character = EXCLUDED.character, slug = EXCLUDED.slug, level = EXCLUDED.level, rank_id = EXCLUDED.rank_id, meaning_mnemonic = EXCLUDED.meaning_mnemonic, reading_mnemonic = EXCLUDED.reading_mnemonic;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('9e16675c-c30f-408b-87c7-90ffd2ce7aee', 'Kumpulkan', true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('9e16675c-c30f-408b-87c7-90ffd2ce7aee', 'Gather', false) ON CONFLICT DO NOTHING;

INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES ('9e16675c-c30f-408b-87c7-90ffd2ce7aee', 'しゅう', 'onyomi', true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES ('9e16675c-c30f-408b-87c7-90ffd2ce7aee', 'あつ', 'kunyomi', false) ON CONFLICT DO NOTHING;

INSERT INTO public.items (id, type, character, slug, level, rank_id, meaning_mnemonic, reading_mnemonic) VALUES ('7363769c-76c8-4a6c-9bf5-9446e9863e7d', 'kanji', '朝', '朝', 2, 'c90d1e2f-3a4b-5c6d-7e8f-9a0b1c2d3e4f', 'Ada sebuah salib yang mencuat di bagian atas matahari dan sebuah salib lain yang mencuat di bagian bawah. Bulan berada di sebelah kanan. Itu karena saat itu pagi hari, yaitu saat matahari dan bulan berganti posisi. Salib tersebut memastikan matahari tetap tinggi di langit sepanjang hari.', 'Setiap pagi Anda minum bir Asahi (あさ) untuk sarapan.') ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, character = EXCLUDED.character, slug = EXCLUDED.slug, level = EXCLUDED.level, rank_id = EXCLUDED.rank_id, meaning_mnemonic = EXCLUDED.meaning_mnemonic, reading_mnemonic = EXCLUDED.reading_mnemonic;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('7363769c-76c8-4a6c-9bf5-9446e9863e7d', 'Pagi', true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES ('7363769c-76c8-4a6c-9bf5-9446e9863e7d', 'ちょう', 'onyomi', false) ON CONFLICT DO NOTHING;

INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES ('7363769c-76c8-4a6c-9bf5-9446e9863e7d', 'あさ', 'kunyomi', true) ON CONFLICT DO NOTHING;

INSERT INTO public.items (id, type, character, slug, level, rank_id, meaning_mnemonic, reading_mnemonic) VALUES ('206bb8b1-7845-472a-9141-7874d9d3fe70', 'kanji', '買', '買', 2, 'c90d1e2f-3a4b-5c6d-7e8f-9a0b1c2d3e4f', 'Ada beberapa kerang di jaring yang bisa Anda beli. Anda tidak bisa begitu saja membeli kerang yang lepas. Anda hanya dapat membeli yang ada di jaring, dikantongi, dan siap untuk uang Anda.', 'Anda memutuskan untuk membeli kerang sebanyak yang Anda bisa muat di mobil Anda (か). Anda terus membeli sampai mobil Anda penuh dengan kerang sebelum Anda berhenti. Mobil benar-benar merupakan satuan ukuran yang realistis.') ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, character = EXCLUDED.character, slug = EXCLUDED.slug, level = EXCLUDED.level, rank_id = EXCLUDED.rank_id, meaning_mnemonic = EXCLUDED.meaning_mnemonic, reading_mnemonic = EXCLUDED.reading_mnemonic;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('206bb8b1-7845-472a-9141-7874d9d3fe70', 'Beli', true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES ('206bb8b1-7845-472a-9141-7874d9d3fe70', 'ばい', 'onyomi', false) ON CONFLICT DO NOTHING;

INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES ('206bb8b1-7845-472a-9141-7874d9d3fe70', 'か', 'kunyomi', true) ON CONFLICT DO NOTHING;

INSERT INTO public.items (id, type, character, slug, level, rank_id, meaning_mnemonic, reading_mnemonic) VALUES ('901f758c-9c9b-45a9-ab14-f3f8debeda32', 'kanji', '答', '答', 2, 'c90d1e2f-3a4b-5c6d-7e8f-9a0b1c2d3e4f', '“Apakah baju bambu itu cocok untukku?” Anda bertanya... tetapi tidak ada yang akan menjawab.', 'Anda mengeluarkan seperempat (こた) dan menawarkannya kepada siapa pun yang mau memberi Anda jawaban.') ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, character = EXCLUDED.character, slug = EXCLUDED.slug, level = EXCLUDED.level, rank_id = EXCLUDED.rank_id, meaning_mnemonic = EXCLUDED.meaning_mnemonic, reading_mnemonic = EXCLUDED.reading_mnemonic;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('901f758c-9c9b-45a9-ab14-f3f8debeda32', 'Jawab', true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('901f758c-9c9b-45a9-ab14-f3f8debeda32', 'Response', false) ON CONFLICT DO NOTHING;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('901f758c-9c9b-45a9-ab14-f3f8debeda32', 'Reply', false) ON CONFLICT DO NOTHING;

INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES ('901f758c-9c9b-45a9-ab14-f3f8debeda32', 'とう', 'onyomi', false) ON CONFLICT DO NOTHING;

INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES ('901f758c-9c9b-45a9-ab14-f3f8debeda32', 'こた', 'kunyomi', true) ON CONFLICT DO NOTHING;

INSERT INTO public.items (id, type, character, slug, level, rank_id, meaning_mnemonic, reading_mnemonic) VALUES ('c7ad89de-5bd3-4cda-973d-2fe9b9bbd084', 'kanji', '飲', '飲', 2, 'c90d1e2f-3a4b-5c6d-7e8f-9a0b1c2d3e4f', 'Anda bisa makan sepuasnya, tetapi Anda masih kekurangan minuman. Anda tidak bisa hidup hanya dengan makan, Anda juga harus minum!', 'Anda putus asa untuk minum dan memasukkan rumput laut nori (の) ke dalam blender, mencoba membuat minuman Anda sendiri.') ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, character = EXCLUDED.character, slug = EXCLUDED.slug, level = EXCLUDED.level, rank_id = EXCLUDED.rank_id, meaning_mnemonic = EXCLUDED.meaning_mnemonic, reading_mnemonic = EXCLUDED.reading_mnemonic;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('c7ad89de-5bd3-4cda-973d-2fe9b9bbd084', 'Minum', true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES ('c7ad89de-5bd3-4cda-973d-2fe9b9bbd084', 'いん', 'onyomi', false) ON CONFLICT DO NOTHING;

INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES ('c7ad89de-5bd3-4cda-973d-2fe9b9bbd084', 'の', 'kunyomi', true) ON CONFLICT DO NOTHING;

INSERT INTO public.items (id, type, character, slug, level, rank_id, meaning_mnemonic, reading_mnemonic) VALUES ('9f10178e-ad44-4fb9-91f3-afc3a465c3f2', 'kanji', '飯', '飯', 2, 'c90d1e2f-3a4b-5c6d-7e8f-9a0b1c2d3e4f', 'Jika Anda anti-makan, makanan Anda hanya akan ada di depan Anda, tidak dimakan. Makanan dimaksudkan untuk dimakan! Berhentilah mencoba berpuasa dan makanlah.', 'Saat Anda menatap makanannya, Han (はん) Solo muncul di hadapan Anda dan menggigitnya! Inilah yang terjadi jika Anda tidak memakan makanan Anda, maka orang lain akan memakannya.') ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, character = EXCLUDED.character, slug = EXCLUDED.slug, level = EXCLUDED.level, rank_id = EXCLUDED.rank_id, meaning_mnemonic = EXCLUDED.meaning_mnemonic, reading_mnemonic = EXCLUDED.reading_mnemonic;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('9f10178e-ad44-4fb9-91f3-afc3a465c3f2', 'Makan', true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('9f10178e-ad44-4fb9-91f3-afc3a465c3f2', 'Food', false) ON CONFLICT DO NOTHING;

INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES ('9f10178e-ad44-4fb9-91f3-afc3a465c3f2', 'はん', 'onyomi', true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES ('9f10178e-ad44-4fb9-91f3-afc3a465c3f2', 'めし', 'kunyomi', false) ON CONFLICT DO NOTHING;

INSERT INTO public.items (id, type, character, slug, level, rank_id, meaning_mnemonic, reading_mnemonic) VALUES ('ef0f7c9f-a157-449a-98e2-6f19e9405160', 'kanji', '貸', '貸', 2, 'c90d1e2f-3a4b-5c6d-7e8f-9a0b1c2d3e4f', 'Anda mengganti beberapa kerang sebagai jaminan sehingga teman Anda akan meminjamkan sejumlah uang. Biasanya dia akan meminta sesuatu yang lebih berharga, tapi Anda telah meyakinkan dia untuk mengganti kerang tersebut dengan apa yang biasanya dia ambil sebagai jaminan saat meminjamkan kepada orang lain.', 'Kamu ingin temanmu meminjamkan sejumlah uang agar kamu bisa membeli mobil sendiri (か). Anda membutuhkan uang dan mobil lebih banyak daripada kebutuhan tumpukan kerang ini, jadi Anda dengan senang hati menjadikannya sebagai jaminan atas pinjaman tersebut.') ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, character = EXCLUDED.character, slug = EXCLUDED.slug, level = EXCLUDED.level, rank_id = EXCLUDED.rank_id, meaning_mnemonic = EXCLUDED.meaning_mnemonic, reading_mnemonic = EXCLUDED.reading_mnemonic;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('ef0f7c9f-a157-449a-98e2-6f19e9405160', 'Pinjamkan', true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES ('ef0f7c9f-a157-449a-98e2-6f19e9405160', 'たい', 'onyomi', false) ON CONFLICT DO NOTHING;

INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES ('ef0f7c9f-a157-449a-98e2-6f19e9405160', 'か', 'kunyomi', true) ON CONFLICT DO NOTHING;

INSERT INTO public.items (id, type, character, slug, level, rank_id, meaning_mnemonic, reading_mnemonic) VALUES ('50e8d3c1-8493-43d8-9818-5feb496eff04', 'kanji', '意', '意', 2, 'c90d1e2f-3a4b-5c6d-7e8f-9a0b1c2d3e4f', 'Suara hatimu memberiku gambaran. Debaran jantung yang berdebar-debar secara metodis membuatku kesurupan yang memberiku ide-ide hebat. Itu suara yang sangat inspiratif, suara hati. Ini memberi saya ide. 

Alternatifnya, Anda bisa melihat kanji ini dan melihat kata "berdiri" yang radikal dan sesuatu yang (hampir) tampak seperti kanji untuk "berpikir". Saat Anda berdiri dan berpikir, Anda memunculkan ide Anda sendiri!', 'Hati seekor elang (い) sangat kuat. Orang yang mengetahui hal ini mungkin mempunyai ide untuk menjadikan elang botak sebagai simbol Amerika Serikat. Elang selalu terbang berkeliling dan melakukan sesuatu, sehingga hati mereka sangat kuat.') ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, character = EXCLUDED.character, slug = EXCLUDED.slug, level = EXCLUDED.level, rank_id = EXCLUDED.rank_id, meaning_mnemonic = EXCLUDED.meaning_mnemonic, reading_mnemonic = EXCLUDED.reading_mnemonic;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('50e8d3c1-8493-43d8-9818-5feb496eff04', 'Ide', true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES ('50e8d3c1-8493-43d8-9818-5feb496eff04', 'い', 'onyomi', true) ON CONFLICT DO NOTHING;

INSERT INTO public.items (id, type, character, slug, level, rank_id, meaning_mnemonic, reading_mnemonic) VALUES ('ea1148d3-f9cf-47f9-872f-a2b43578ad7c', 'kanji', '新', '新', 2, 'c90d1e2f-3a4b-5c6d-7e8f-9a0b1c2d3e4f', 'Ada pohon berdiri yang Anda ambil kapaknya. Anda akan menebang pohon ini agar pohon baru tumbuh.', 'Anda menebang pohon itu untuk memberi ruang bagi pohon baru, tetapi pohon itu tumbang menimpa tulang kering Anda (しん).') ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, character = EXCLUDED.character, slug = EXCLUDED.slug, level = EXCLUDED.level, rank_id = EXCLUDED.rank_id, meaning_mnemonic = EXCLUDED.meaning_mnemonic, reading_mnemonic = EXCLUDED.reading_mnemonic;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('ea1148d3-f9cf-47f9-872f-a2b43578ad7c', 'Baru', true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES ('ea1148d3-f9cf-47f9-872f-a2b43578ad7c', 'しん', 'onyomi', true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES ('ea1148d3-f9cf-47f9-872f-a2b43578ad7c', 'あたら', 'kunyomi', false) ON CONFLICT DO NOTHING;

INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES ('ea1148d3-f9cf-47f9-872f-a2b43578ad7c', 'あら', 'kunyomi', false) ON CONFLICT DO NOTHING;

INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES ('ea1148d3-f9cf-47f9-872f-a2b43578ad7c', 'にい', 'kunyomi', false) ON CONFLICT DO NOTHING;

INSERT INTO public.items (id, type, character, slug, level, rank_id, meaning_mnemonic, reading_mnemonic) VALUES ('8933b29b-c11e-4437-9272-989711ed315c', 'kanji', '業', '業', 2, 'c90d1e2f-3a4b-5c6d-7e8f-9a0b1c2d3e4f', 'Jika seekor domba mengalami kesulitan saat mencoba memakan ikan yang memiliki duri di siripnya, maka domba tersebut mungkin tidak ada gunanya mencoba memakannya. Bukankah domba biasanya makan rumput dan sejenisnya? Apa yang dilakukan domba ini saat mencoba memakan ikan yang siripnya berduri? Bisnis konyol apa ini.', 'Apa ini? Domba juga mencoba memakan pangsit gyoza (ぎょう)! Di manakah kegilaan domba ini akan berakhir? Ikan bersirip spikey pertama dan sekarang gyoza? Ini adalah bisnis yang gila.') ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, character = EXCLUDED.character, slug = EXCLUDED.slug, level = EXCLUDED.level, rank_id = EXCLUDED.rank_id, meaning_mnemonic = EXCLUDED.meaning_mnemonic, reading_mnemonic = EXCLUDED.reading_mnemonic;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('8933b29b-c11e-4437-9272-989711ed315c', 'Bisnis', true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES ('8933b29b-c11e-4437-9272-989711ed315c', 'ぎょう', 'onyomi', true) ON CONFLICT DO NOTHING;

INSERT INTO public.items (id, type, character, slug, level, rank_id, meaning_mnemonic, reading_mnemonic) VALUES ('b4f9321a-5247-4750-b429-bbfb0588679a', 'kanji', '楽', '楽', 2, 'c90d1e2f-3a4b-5c6d-7e8f-9a0b1c2d3e4f', 'Pohon es putih adalah pohon ajaib. Saat Anda memakan bunga esnya, ini memberi Anda kenyamanan, kemudahan, dan kesenangan yang luar biasa.', 'Anda menginginkan lebih dari ini. Anda mengumpulkan sebanyak yang Anda bisa, dan membuat seluruh rak (らく) di toko Anda dengan pohon ini. Anda segera terjual habis, dan harus mengisi ulang rak Anda.') ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, character = EXCLUDED.character, slug = EXCLUDED.slug, level = EXCLUDED.level, rank_id = EXCLUDED.rank_id, meaning_mnemonic = EXCLUDED.meaning_mnemonic, reading_mnemonic = EXCLUDED.reading_mnemonic;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('b4f9321a-5247-4750-b429-bbfb0588679a', 'Kenyamanan', true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('b4f9321a-5247-4750-b429-bbfb0588679a', 'Ease', false) ON CONFLICT DO NOTHING;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('b4f9321a-5247-4750-b429-bbfb0588679a', 'Pleasure', false) ON CONFLICT DO NOTHING;

INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES ('b4f9321a-5247-4750-b429-bbfb0588679a', 'らく', 'onyomi', true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES ('b4f9321a-5247-4750-b429-bbfb0588679a', 'がく', 'onyomi', true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES ('b4f9321a-5247-4750-b429-bbfb0588679a', 'たの', 'kunyomi', false) ON CONFLICT DO NOTHING;

INSERT INTO public.items (id, type, character, slug, level, rank_id, meaning_mnemonic, reading_mnemonic) VALUES ('a26ace0c-d99d-4484-89e9-d8088364d42e', 'kanji', '試', '試', 2, 'c90d1e2f-3a4b-5c6d-7e8f-9a0b1c2d3e4f', 'Jika Anda ingin menyampaikan sesuatu pada upacara pekerja konstruksi, Anda harus berusaha sangat keras. Konstruksinya keras, jadi jika Anda ingin didengarkan, Anda harus berusaha lebih keras daripada mengebor, menghancurkan, menggali, dan membagikan penghargaan.', 'Anda mencoba menarik perhatian mereka satu-satunya cara yang Anda tahu caranya, dengan mengangkat seekor domba (し) di atas kepala Anda. Domba baas dan tiba-tiba semuanya sunyi, semua mata tertuju padamu. Yah, mereka berada di atas domba.') ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, character = EXCLUDED.character, slug = EXCLUDED.slug, level = EXCLUDED.level, rank_id = EXCLUDED.rank_id, meaning_mnemonic = EXCLUDED.meaning_mnemonic, reading_mnemonic = EXCLUDED.reading_mnemonic;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('a26ace0c-d99d-4484-89e9-d8088364d42e', 'Coba', true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('a26ace0c-d99d-4484-89e9-d8088364d42e', 'Attempt', false) ON CONFLICT DO NOTHING;

INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES ('a26ace0c-d99d-4484-89e9-d8088364d42e', 'し', 'onyomi', true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES ('a26ace0c-d99d-4484-89e9-d8088364d42e', 'こころ', 'kunyomi', false) ON CONFLICT DO NOTHING;

INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES ('a26ace0c-d99d-4484-89e9-d8088364d42e', 'ため', 'kunyomi', false) ON CONFLICT DO NOTHING;

INSERT INTO public.items (id, type, character, slug, level, rank_id, meaning_mnemonic, reading_mnemonic) VALUES ('b42f7713-8e9f-4404-947e-da6a8b8b15ea', 'kanji', '漢', '漢', 2, 'c90d1e2f-3a4b-5c6d-7e8f-9a0b1c2d3e4f', 'Tsunami melanda Tiongkok kuno dan membentuk negara Tiongkok yang sekarang kita kenal sebagai... Tiongkok!', 'Anda melihat lebih dekat ke Tiongkok dan menyadari bahwa perbatasannya semakin sempit, meskipun tsunami telah berlalu. Anda melihat lebih dekat dan melihat bangsa Mongol, dipimpin oleh Jenghis Khan (かん) bergerak untuk menaklukkan semua orang Tionghoa yang tinggal di Tiongkok!') ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, character = EXCLUDED.character, slug = EXCLUDED.slug, level = EXCLUDED.level, rank_id = EXCLUDED.rank_id, meaning_mnemonic = EXCLUDED.meaning_mnemonic, reading_mnemonic = EXCLUDED.reading_mnemonic;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('b42f7713-8e9f-4404-947e-da6a8b8b15ea', 'Cina', true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('b42f7713-8e9f-4404-947e-da6a8b8b15ea', 'China', false) ON CONFLICT DO NOTHING;

INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES ('b42f7713-8e9f-4404-947e-da6a8b8b15ea', 'かん', 'onyomi', true) ON CONFLICT DO NOTHING;

INSERT INTO public.items (id, type, character, slug, level, rank_id, meaning_mnemonic, reading_mnemonic) VALUES ('3b8e0019-bc3d-4e1f-a369-f7aa0b3cd865', 'kanji', '歌', '歌', 2, 'c90d1e2f-3a4b-5c6d-7e8f-9a0b1c2d3e4f', 'Jika Anda tidak memiliki cincin bibir (atau dua dalam hal ini), itu akan memudahkan Anda menyanyikan sebuah lagu.', 'Anda menyanyikan sebuah lagu dengan semua cincin bibir di mulut Anda dan Anda terdengar buruk. Anda berada di pinggir jalan sambil bernyanyi. Orang-orang panik. Akhirnya, seseorang mendatangi Anda dengan mobilnya (か).') ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, character = EXCLUDED.character, slug = EXCLUDED.slug, level = EXCLUDED.level, rank_id = EXCLUDED.rank_id, meaning_mnemonic = EXCLUDED.meaning_mnemonic, reading_mnemonic = EXCLUDED.reading_mnemonic;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('3b8e0019-bc3d-4e1f-a369-f7aa0b3cd865', 'Lagu', true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('3b8e0019-bc3d-4e1f-a369-f7aa0b3cd865', 'Sing', false) ON CONFLICT DO NOTHING;

INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES ('3b8e0019-bc3d-4e1f-a369-f7aa0b3cd865', 'か', 'onyomi', true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES ('3b8e0019-bc3d-4e1f-a369-f7aa0b3cd865', 'うた', 'kunyomi', false) ON CONFLICT DO NOTHING;

INSERT INTO public.items (id, type, character, slug, level, rank_id, meaning_mnemonic, reading_mnemonic) VALUES ('a21cc683-fea2-4efe-b5f8-8ffaf2802b7b', 'kanji', '銀', '銀', 2, 'c90d1e2f-3a4b-5c6d-7e8f-9a0b1c2d3e4f', 'Pada akar emas ada perak. Emas pada dasarnya hanyalah perak yang naik levelnya. Itu sebabnya emas menempati urutan pertama, dan perak menempati urutan kedua. Jika Anda menggaruk emas dengan baik, Anda akan menemukan bahwa pada akarnya, ada perak yang tersembunyi di bawahnya.', 'Jika kamu ingin berburu perak untuk dirimu sendiri, yang kamu butuhkan hanyalah seekor babi guinea (ぎん). Babi Guinea bisa mencium bau perak, jadi ambillah sepasang dan lepaskan di hutan dan mereka akan membawa Anda langsung ke sana.') ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, character = EXCLUDED.character, slug = EXCLUDED.slug, level = EXCLUDED.level, rank_id = EXCLUDED.rank_id, meaning_mnemonic = EXCLUDED.meaning_mnemonic, reading_mnemonic = EXCLUDED.reading_mnemonic;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('a21cc683-fea2-4efe-b5f8-8ffaf2802b7b', 'Perak', true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES ('a21cc683-fea2-4efe-b5f8-8ffaf2802b7b', 'ぎん', 'onyomi', true) ON CONFLICT DO NOTHING;

INSERT INTO public.items (id, type, character, slug, level, rank_id, meaning_mnemonic, reading_mnemonic) VALUES ('da8281c8-9a17-4a75-abb3-51dd4c832548', 'kanji', '駅', '駅', 2, 'c90d1e2f-3a4b-5c6d-7e8f-9a0b1c2d3e4f', 'Seekor kuda dan udang duduk bersebelahan. Mereka berdua berada di stasiun kereta, menunggu kereta datang dan membawa mereka pulang.', 'Kereta berhenti di stasiun. Mereka berjalan ke pintu kereta, tapi tidak terbuka. "Mungkin kunci (えき) bisa membantu?" tanya kepala stasiun sambil berjalan untuk membuka pintu kereta.') ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, character = EXCLUDED.character, slug = EXCLUDED.slug, level = EXCLUDED.level, rank_id = EXCLUDED.rank_id, meaning_mnemonic = EXCLUDED.meaning_mnemonic, reading_mnemonic = EXCLUDED.reading_mnemonic;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('da8281c8-9a17-4a75-abb3-51dd4c832548', 'Stasiun', true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('da8281c8-9a17-4a75-abb3-51dd4c832548', 'Train Station', false) ON CONFLICT DO NOTHING;

INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES ('da8281c8-9a17-4a75-abb3-51dd4c832548', 'えき', 'onyomi', true) ON CONFLICT DO NOTHING;

INSERT INTO public.items (id, type, character, slug, level, rank_id, meaning_mnemonic, reading_mnemonic) VALUES ('f988c828-230b-4aa1-b963-ed48fe194f50', 'kanji', '質', '質', 2, 'c90d1e2f-3a4b-5c6d-7e8f-9a0b1c2d3e4f', 'Anda harus menggunakan dua sumbu untuk membuka kerang tersebut. Tampaknya ini berlebihan, tetapi ini perlu. Kerang khusus ini berkualitas sangat tinggi sehingga tidak mudah dibuka.', 'Anda akhirnya membuka semua kerang dan mengagumi kualitasnya, saat shih tzu (しつ) Anda melompat ke atas meja dan melahapnya. TIDAK! Anda mencoba mengejar anjing kecil itu, tetapi sudah terlambat. Mereka sudah pergi.') ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, character = EXCLUDED.character, slug = EXCLUDED.slug, level = EXCLUDED.level, rank_id = EXCLUDED.rank_id, meaning_mnemonic = EXCLUDED.meaning_mnemonic, reading_mnemonic = EXCLUDED.reading_mnemonic;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('f988c828-230b-4aa1-b963-ed48fe194f50', 'Kualitas', true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES ('f988c828-230b-4aa1-b963-ed48fe194f50', 'しつ', 'onyomi', true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES ('f988c828-230b-4aa1-b963-ed48fe194f50', 'しち', 'onyomi', true) ON CONFLICT DO NOTHING;

INSERT INTO public.items (id, type, character, slug, level, rank_id, meaning_mnemonic, reading_mnemonic) VALUES ('3956736e-d1d0-4b6f-9dce-3e0f4caeb275', 'kanji', '親', '親', 2, 'c90d1e2f-3a4b-5c6d-7e8f-9a0b1c2d3e4f', 'Jika Anda melihat pohon yang ingin Anda tempati untuk beristirahat saat mendaki, orang tua yang baik akan berdiri di bawah pohon tersebut bersama Anda. Ini adalah orang tua yang baik dan perhatian yang dapat melihat bahwa Anda lelah dan ingin bersantai dengan berdiri di bawah naungan pohon ini.', 'Begitu Anda semakin dekat dengan pohon itu, Anda dan orang tua Anda melihat bahwa pohon itu memiliki akar-akar yang cukup gila. Selagi berjalan ke tempat teduh, kamu berhasil membenturkan tulang keringmu (しん) pada salah satu akar ini. Tulang kering Anda sudah sakit karena terlalu banyak berjalan, dan ini hanyalah pelengkap.') ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, character = EXCLUDED.character, slug = EXCLUDED.slug, level = EXCLUDED.level, rank_id = EXCLUDED.rank_id, meaning_mnemonic = EXCLUDED.meaning_mnemonic, reading_mnemonic = EXCLUDED.reading_mnemonic;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('3956736e-d1d0-4b6f-9dce-3e0f4caeb275', 'Induk', true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES ('3956736e-d1d0-4b6f-9dce-3e0f4caeb275', 'しん', 'onyomi', true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES ('3956736e-d1d0-4b6f-9dce-3e0f4caeb275', 'おや', 'kunyomi', false) ON CONFLICT DO NOTHING;

INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES ('3956736e-d1d0-4b6f-9dce-3e0f4caeb275', 'した', 'kunyomi', false) ON CONFLICT DO NOTHING;

INSERT INTO public.items (id, type, character, slug, level, rank_id, meaning_mnemonic, reading_mnemonic) VALUES ('41fa46b3-40b5-4306-a2ac-2a7baebdd747', 'kanji', '館', '館', 2, 'c90d1e2f-3a4b-5c6d-7e8f-9a0b1c2d3e4f', 'Makan di atap ini adalah seekor beruang, yang berarti Anda tahu bahwa ini adalah bangunan umum. Undang-undang menyatakan bahwa semua beruang diperbolehkan makan di atap gedung-gedung publik. Setidaknya di Jepang, saya tidak tahu di mana beruang seharusnya makan, di mana pun Anda berasal.', 'Semua bangunan umum harus memenuhi kebutuhan beruang berkat hukum monumental yang disahkan oleh Jenghis Khan (かん). Jenghis Khan tahu bahwa beruang tidak diperlakukan dengan baik oleh manusia, jadi dia memastikan semua bangunan umum setidaknya sebagian dapat diakses oleh beruang.') ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, character = EXCLUDED.character, slug = EXCLUDED.slug, level = EXCLUDED.level, rank_id = EXCLUDED.rank_id, meaning_mnemonic = EXCLUDED.meaning_mnemonic, reading_mnemonic = EXCLUDED.reading_mnemonic;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('41fa46b3-40b5-4306-a2ac-2a7baebdd747', 'Gedung Umum', true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES ('41fa46b3-40b5-4306-a2ac-2a7baebdd747', 'かん', 'onyomi', true) ON CONFLICT DO NOTHING;

INSERT INTO public.items (id, type, character, slug, level, rank_id, meaning_mnemonic, reading_mnemonic) VALUES ('8858f6c5-587c-426d-b948-a106c31748ef', 'kanji', '題', '題', 2, 'c90d1e2f-3a4b-5c6d-7e8f-9a0b1c2d3e4f', 'Jika Anda menggunakan matahari, Anda dapat menemukan geoduck yang tepat. Itulah topik kuliah hari ini.', 'Topik kita sebenarnya kebanyakan tentang penggunaan matahari untuk melihat berbagai warna pewarna (だい) di dalam air.') ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, character = EXCLUDED.character, slug = EXCLUDED.slug, level = EXCLUDED.level, rank_id = EXCLUDED.rank_id, meaning_mnemonic = EXCLUDED.meaning_mnemonic, reading_mnemonic = EXCLUDED.reading_mnemonic;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('8858f6c5-587c-426d-b948-a106c31748ef', 'Topik', true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES ('8858f6c5-587c-426d-b948-a106c31748ef', 'だい', 'onyomi', true) ON CONFLICT DO NOTHING;

INSERT INTO public.items (id, type, character, slug, level, rank_id, meaning_mnemonic, reading_mnemonic) VALUES ('c686146c-ca8b-45ee-ba89-8ccf3cbb8ec8', 'kanji', '験', '験', 2, 'c90d1e2f-3a4b-5c6d-7e8f-9a0b1c2d3e4f', 'Seekor kuda dan cumi-cumi sedang ujian.', 'Tes ini diawasi oleh Ken (けん) sang samurai.') ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, character = EXCLUDED.character, slug = EXCLUDED.slug, level = EXCLUDED.level, rank_id = EXCLUDED.rank_id, meaning_mnemonic = EXCLUDED.meaning_mnemonic, reading_mnemonic = EXCLUDED.reading_mnemonic;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('c686146c-ca8b-45ee-ba89-8ccf3cbb8ec8', 'Tes', true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES ('c686146c-ca8b-45ee-ba89-8ccf3cbb8ec8', 'けん', 'onyomi', true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES ('c686146c-ca8b-45ee-ba89-8ccf3cbb8ec8', 'ため', 'kunyomi', false) ON CONFLICT DO NOTHING;

INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES ('c686146c-ca8b-45ee-ba89-8ccf3cbb8ec8', 'ためし', 'kunyomi', false) ON CONFLICT DO NOTHING;

INSERT INTO public.items (id, type, character, slug, level, rank_id, meaning_mnemonic, reading_mnemonic) VALUES ('34cdb410-a8c5-472f-ac5f-badd2600fabd', 'kanji', '曜', '曜', 2, 'c90d1e2f-3a4b-5c6d-7e8f-9a0b1c2d3e4f', 'Saat matahari terbit di atas perbukitan, serigala ganas mengintai seekor kalkun di pagi hari kerja. Serigala berburu kalkun untuk mencari nafkah, tetapi pada akhir pekan, dia suka bermain raket di gym setempat. Itu sebabnya kalkun diburu pada hari kerja.', 'Namun serigala ini memiliki selera yang aneh. Ia suka mengubah kalkunnya menjadi yogurt kalkun (よう). Setelah berburu setiap hari kerja, serigala menghabiskan malamnya dengan mengubah daging kalkun menjadi yogurt kalkun yang aneh, kental dan kental.') ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, character = EXCLUDED.character, slug = EXCLUDED.slug, level = EXCLUDED.level, rank_id = EXCLUDED.rank_id, meaning_mnemonic = EXCLUDED.meaning_mnemonic, reading_mnemonic = EXCLUDED.reading_mnemonic;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('34cdb410-a8c5-472f-ac5f-badd2600fabd', 'Hari kerja', true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('34cdb410-a8c5-472f-ac5f-badd2600fabd', 'Day Of The Week', false) ON CONFLICT DO NOTHING;

INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES ('34cdb410-a8c5-472f-ac5f-badd2600fabd', 'よう', 'onyomi', true) ON CONFLICT DO NOTHING;

-- 4. Insert Vocabularies
INSERT INTO public.items (id, type, character, slug, level, rank_id, meaning_mnemonic, description) VALUES ('86fd0a89-d0d7-4e77-86b3-d55db41d5ceb', 'vocabulary', '魚', '魚', 2, 'c90d1e2f-3a4b-5c6d-7e8f-9a0b1c2d3e4f', 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.', 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.') ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, character = EXCLUDED.character, slug = EXCLUDED.slug, level = EXCLUDED.level, rank_id = EXCLUDED.rank_id, meaning_mnemonic = EXCLUDED.meaning_mnemonic, description = EXCLUDED.description;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('86fd0a89-d0d7-4e77-86b3-d55db41d5ceb', 'Ikan', true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES ('86fd0a89-d0d7-4e77-86b3-d55db41d5ceb', 'さかな', NULL, true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('86fd0a89-d0d7-4e77-86b3-d55db41d5ceb', '魚はすきですが、生魚はにが手です。', 'Saya suka ikan, tapi saya tidak suka yang mentah.') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('86fd0a89-d0d7-4e77-86b3-d55db41d5ceb', 'バランスのいいちょう食をとるために、いつもグラノーラと魚を食べます。', 'Saya selalu makan granola dan ikan untuk sarapan yang seimbang.') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('86fd0a89-d0d7-4e77-86b3-d55db41d5ceb', 'もう絶対にメキシコの軽トラの積み荷から魚を買うもんか。', 'Saya tidak akan pernah lagi membeli ikan dari belakang truk pickup di Meksiko.') ON CONFLICT DO NOTHING;

INSERT INTO public.items (id, type, character, slug, level, rank_id, meaning_mnemonic, description) VALUES ('d91f1587-1a60-4548-9965-57c75a2b4331', 'vocabulary', '金魚', '金魚', 2, 'c90d1e2f-3a4b-5c6d-7e8f-9a0b1c2d3e4f', 'Ikan emas sebenarnya hanya berwarna emas, tetapi tetap disebut ikan mas.', 'Ikan emas sebenarnya hanya berwarna emas, tetapi tetap disebut ikan mas.') ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, character = EXCLUDED.character, slug = EXCLUDED.slug, level = EXCLUDED.level, rank_id = EXCLUDED.rank_id, meaning_mnemonic = EXCLUDED.meaning_mnemonic, description = EXCLUDED.description;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('d91f1587-1a60-4548-9965-57c75a2b4331', 'Ikan mas', true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES ('d91f1587-1a60-4548-9965-57c75a2b4331', 'きんぎょ', NULL, true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('d91f1587-1a60-4548-9965-57c75a2b4331', 'これは、五年前の夏まつりの金魚すくいですくった金魚です。', 'Saya mengambil ikan mas ini di tempat menyendok ikan mas selama festival musim panas lima tahun lalu.') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('d91f1587-1a60-4548-9965-57c75a2b4331', '金魚もかぜをひくんですか？', 'Bisakah ikan mas masuk angin juga?') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('d91f1587-1a60-4548-9965-57c75a2b4331', '金魚は、三秒間しか記憶がないので、自分たちがお城に住んでいることに気がつく度に驚いています。', 'Ikan mas hanya memiliki ingatan tiga detik sehingga mereka selalu terkejut saat menyadari bahwa mereka tinggal di kastil.') ON CONFLICT DO NOTHING;

INSERT INTO public.items (id, type, character, slug, level, rank_id, meaning_mnemonic, description) VALUES ('c9507151-60c5-4727-92f0-a8527ee5689d', 'vocabulary', '海魚', '海魚', 2, 'c90d1e2f-3a4b-5c6d-7e8f-9a0b1c2d3e4f', 'Ikan laut hanyalah ikan laut. Mereka juga merupakan jenis ikan yang paling enak.', 'Ikan laut hanyalah ikan laut. Mereka juga merupakan jenis ikan yang paling enak.') ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, character = EXCLUDED.character, slug = EXCLUDED.slug, level = EXCLUDED.level, rank_id = EXCLUDED.rank_id, meaning_mnemonic = EXCLUDED.meaning_mnemonic, description = EXCLUDED.description;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('c9507151-60c5-4727-92f0-a8527ee5689d', 'Ikan Laut', true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('c9507151-60c5-4727-92f0-a8527ee5689d', 'Saltwater Fish', false) ON CONFLICT DO NOTHING;

INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES ('c9507151-60c5-4727-92f0-a8527ee5689d', 'かいぎょ', NULL, true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES ('c9507151-60c5-4727-92f0-a8527ee5689d', 'うみざかな', NULL, false) ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('c9507151-60c5-4727-92f0-a8527ee5689d', 'さけは海魚ですか？それとも川魚ですか？', 'Apakah salmon termasuk ikan air asin? Atau apakah itu ikan air tawar?') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('c9507151-60c5-4727-92f0-a8527ee5689d', '海中には、色とりどりの海魚がおよいでいました。', 'Di laut banyak sekali ikan laut berwarna-warni berenang-renang.') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('c9507151-60c5-4727-92f0-a8527ee5689d', '水族館には沢山の種類の海魚がいますが、スタッフは僕達に一匹も食べてはいけませんと言いました。', 'Ada berbagai macam ikan air asin di akuarium, tapi staf mengatakan kami tidak diperbolehkan memakannya.') ON CONFLICT DO NOTHING;

INSERT INTO public.items (id, type, character, slug, level, rank_id, meaning_mnemonic, description) VALUES ('18233e59-a6a0-4b8f-9e55-5255ff080eb1', 'vocabulary', '入場', '入場', 2, 'c90d1e2f-3a4b-5c6d-7e8f-9a0b1c2d3e4f', 'Lokasi dari mana Anda masuk adalah tempat Anda masuk. Ini ada hubungannya dengan hal-hal seperti "biaya masuk" dan "tidak diizinkan masuk", dll.', 'Lokasi dari mana Anda masuk adalah tempat Anda masuk. Ini ada hubungannya dengan hal-hal seperti "biaya masuk" dan "tidak diizinkan masuk", dll.') ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, character = EXCLUDED.character, slug = EXCLUDED.slug, level = EXCLUDED.level, rank_id = EXCLUDED.rank_id, meaning_mnemonic = EXCLUDED.meaning_mnemonic, description = EXCLUDED.description;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('18233e59-a6a0-4b8f-9e55-5255ff080eb1', 'Pintu masuk', true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('18233e59-a6a0-4b8f-9e55-5255ff080eb1', 'Admission', false) ON CONFLICT DO NOTHING;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('18233e59-a6a0-4b8f-9e55-5255ff080eb1', 'Entering', false) ON CONFLICT DO NOTHING;

INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES ('18233e59-a6a0-4b8f-9e55-5255ff080eb1', 'にゅうじょう', NULL, true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('18233e59-a6a0-4b8f-9e55-5255ff080eb1', '会場に入場するには、チケットが必ようです。', 'Anda memerlukan tiket untuk memasuki venue.') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('18233e59-a6a0-4b8f-9e55-5255ff080eb1', 'さいしゅう入場時かんは午後五時です。', 'Penerimaan terakhir adalah jam 5 sore.') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('18233e59-a6a0-4b8f-9e55-5255ff080eb1', 'ちくしょう！「確実な死への部屋」への入場門が塞がれている。', 'Brengsek! Pintu masuk ke "Ruang Kematian Tertentu" diblokir.') ON CONFLICT DO NOTHING;

INSERT INTO public.items (id, type, character, slug, level, rank_id, meaning_mnemonic, description) VALUES ('1acf32de-b889-464e-9416-1b2fc2a12ea3', 'vocabulary', '工場', '工場', 2, 'c90d1e2f-3a4b-5c6d-7e8f-9a0b1c2d3e4f', 'Lokasi konstruksi adalah pabrik. Pabrik adalah tempat di mana Anda atau mesin melakukan banyak konstruksi!', 'Lokasi konstruksi adalah pabrik. Pabrik adalah tempat di mana Anda atau mesin melakukan banyak konstruksi!') ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, character = EXCLUDED.character, slug = EXCLUDED.slug, level = EXCLUDED.level, rank_id = EXCLUDED.rank_id, meaning_mnemonic = EXCLUDED.meaning_mnemonic, description = EXCLUDED.description;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('1acf32de-b889-464e-9416-1b2fc2a12ea3', 'Pabrik', true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES ('1acf32de-b889-464e-9416-1b2fc2a12ea3', 'こうじょう', NULL, true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES ('1acf32de-b889-464e-9416-1b2fc2a12ea3', 'こうば', NULL, false) ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('1acf32de-b889-464e-9416-1b2fc2a12ea3', 'トヨタの工場に行きたいんですけど、何で行くのがべんりですか。', 'Saya ingin pergi ke pabrik Toyota - jalur mana yang paling nyaman?') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('1acf32de-b889-464e-9416-1b2fc2a12ea3', '毎ばん、ベーコン工場のせじょうをするのは、わたしの主人の役目です。', 'Tugas suamiku adalah mengunci pabrik daging setiap malam.') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('1acf32de-b889-464e-9416-1b2fc2a12ea3', '私が働きたいと思う唯一の工場は、クッキー工場です。', 'Satu-satunya pabrik tempat saya ingin bekerja adalah pabrik pembuat kue.') ON CONFLICT DO NOTHING;

INSERT INTO public.items (id, type, character, slug, level, rank_id, meaning_mnemonic, description) VALUES ('c0157a8e-c3c9-4fef-85ab-032dee84d1e1', 'vocabulary', '朝', '朝', 2, 'c90d1e2f-3a4b-5c6d-7e8f-9a0b1c2d3e4f', 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.', 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.') ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, character = EXCLUDED.character, slug = EXCLUDED.slug, level = EXCLUDED.level, rank_id = EXCLUDED.rank_id, meaning_mnemonic = EXCLUDED.meaning_mnemonic, description = EXCLUDED.description;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('c0157a8e-c3c9-4fef-85ab-032dee84d1e1', 'Pagi', true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES ('c0157a8e-c3c9-4fef-85ab-032dee84d1e1', 'あさ', NULL, true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('c0157a8e-c3c9-4fef-85ab-032dee84d1e1', '朝のあいさつをしてください。', 'Tolong ucapkan salam pagi.') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('c0157a8e-c3c9-4fef-85ab-032dee84d1e1', '朝は毎日、トロトロの半じゅく目玉やきを食べます。', 'Setiap pagi saya makan telur segar dan telur mata sapi.') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('c0157a8e-c3c9-4fef-85ab-032dee84d1e1', '明日の朝は早起きをしなくてはいけません。だって、Xboxをプレイしまくるという長い一日が待っているから。', 'Saya harus bangun pagi-pagi besok pagi karena saya harus bermain Xbox seharian yang panjang.') ON CONFLICT DO NOTHING;

INSERT INTO public.items (id, type, character, slug, level, rank_id, meaning_mnemonic, description) VALUES ('af732d29-b023-41e6-98df-4f1d84f133be', 'vocabulary', '朝ごはん', '朝ごはん', 2, 'c90d1e2f-3a4b-5c6d-7e8f-9a0b1c2d3e4f', 'ごはん adalah makanan atau santapan (mungkin nanti Anda akan mempelajari kanjinya, tetapi biasanya tidak digunakan, jadi Anda mempelajarinya dengan cara ini sekarang). Apa makanan pagimu? Itu sarapan (jangan bingung dengan sarapan kedua, hobbit).', 'ごはん adalah makanan atau santapan (mungkin nanti Anda akan mempelajari kanjinya, tetapi biasanya tidak digunakan, jadi Anda mempelajarinya dengan cara ini sekarang). Apa makanan pagimu? Itu sarapan (jangan bingung dengan sarapan kedua, hobbit).') ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, character = EXCLUDED.character, slug = EXCLUDED.slug, level = EXCLUDED.level, rank_id = EXCLUDED.rank_id, meaning_mnemonic = EXCLUDED.meaning_mnemonic, description = EXCLUDED.description;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('af732d29-b023-41e6-98df-4f1d84f133be', 'Sarapan', true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES ('af732d29-b023-41e6-98df-4f1d84f133be', 'あさごはん', NULL, true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('af732d29-b023-41e6-98df-4f1d84f133be', '朝ごはんにパンとたまごをたべた。', 'Saya makan roti dan telur untuk sarapan.') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('af732d29-b023-41e6-98df-4f1d84f133be', '朝ごはんにはベーコンに決まってるだろ？こんな当たり前のことも分からないのか。', 'Tentu saja sarapan harus ada bacon! Mengapa kamu tidak dapat memahami sesuatu yang begitu jelas?') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('af732d29-b023-41e6-98df-4f1d84f133be', '滅茶苦茶お腹が空いていて、朝ごはんに腐った卵を６つも食べてしまったこと、今までにある？', 'Pernahkah Anda merasa sangat lapar sehingga Anda makan enam butir telur busuk untuk sarapan?') ON CONFLICT DO NOTHING;

INSERT INTO public.items (id, type, character, slug, level, rank_id, meaning_mnemonic, description) VALUES ('2c9dd4ff-b049-4642-b96c-8c1808b6d9df', 'vocabulary', '朝日', '朝日', 2, 'c90d1e2f-3a4b-5c6d-7e8f-9a0b1c2d3e4f', 'Matahari pagi bukan hanya matahari pagi, tapi matahari terbit juga (karena saat itulah matahari terbit kan?).', 'Matahari pagi bukan hanya matahari pagi, tapi matahari terbit juga (karena saat itulah matahari terbit kan?).') ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, character = EXCLUDED.character, slug = EXCLUDED.slug, level = EXCLUDED.level, rank_id = EXCLUDED.rank_id, meaning_mnemonic = EXCLUDED.meaning_mnemonic, description = EXCLUDED.description;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('2c9dd4ff-b049-4642-b96c-8c1808b6d9df', 'Matahari Pagi', true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('2c9dd4ff-b049-4642-b96c-8c1808b6d9df', 'Rising Sun', false) ON CONFLICT DO NOTHING;

INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES ('2c9dd4ff-b049-4642-b96c-8c1808b6d9df', 'あさひ', NULL, true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('2c9dd4ff-b049-4642-b96c-8c1808b6d9df', '明日の朝、一しょに山にのぼって朝日を見ませんか？', 'Maukah kamu mendaki gunung bersamaku besok pagi untuk melihat matahari pagi?') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('2c9dd4ff-b049-4642-b96c-8c1808b6d9df', 'どうしてあの朝日の絵をかべから外してしまったんですか？', 'Mengapa Anda memotret matahari terbit dari dinding?') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('2c9dd4ff-b049-4642-b96c-8c1808b6d9df', '日本は「日出ずる国」として知られているが、それは「朝日国旗」に見事に描写されている。', 'Jepang dikenal sebagai "Negeri Matahari Terbit", yang digambarkan dengan sangat baik pada bendera "Matahari Terbit".') ON CONFLICT DO NOTHING;

INSERT INTO public.items (id, type, character, slug, level, rank_id, meaning_mnemonic, description) VALUES ('41741139-6c48-4208-9cc3-7138d78cfe2c', 'vocabulary', '答え', '答え', 2, 'c90d1e2f-3a4b-5c6d-7e8f-9a0b1c2d3e4f', 'Anda dapat menebak ini adalah versi kata benda dari kanji tersebut karena hiragana yang menonjol di dalamnya bukanlah bunyi yang berhubungan dengan う atau bunyi yang berhubungan dengan い. Jadi, apa versi kata benda jawabannya? Itu juga jawabannya.', 'Anda dapat menebak ini adalah versi kata benda dari kanji tersebut karena hiragana yang menonjol di dalamnya bukanlah bunyi yang berhubungan dengan う atau bunyi yang berhubungan dengan い. Jadi, apa versi kata benda jawabannya? Itu juga jawabannya.') ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, character = EXCLUDED.character, slug = EXCLUDED.slug, level = EXCLUDED.level, rank_id = EXCLUDED.rank_id, meaning_mnemonic = EXCLUDED.meaning_mnemonic, description = EXCLUDED.description;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('41741139-6c48-4208-9cc3-7138d78cfe2c', 'Jawab', true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('41741139-6c48-4208-9cc3-7138d78cfe2c', 'Reply', false) ON CONFLICT DO NOTHING;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('41741139-6c48-4208-9cc3-7138d78cfe2c', 'Response', false) ON CONFLICT DO NOTHING;

INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES ('41741139-6c48-4208-9cc3-7138d78cfe2c', 'こたえ', NULL, true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('41741139-6c48-4208-9cc3-7138d78cfe2c', '答えは、１、２、３、４から、一番いいものを一つえらんでください。', 'Silakan pilih jawaban terbaik diantara 1, 2, 3, dan 4.') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('41741139-6c48-4208-9cc3-7138d78cfe2c', '山口さんの答えは、いつも通りでした。', 'Respons Pak Yamaguchi sama seperti biasanya.') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('41741139-6c48-4208-9cc3-7138d78cfe2c', 'テストの最初の質問の答え、何て書いた？「名前をここに書きなさい」ってやつだよ。自分の名前を書き込んだ？それとも「名前」ってそこに書いた？', 'Apa yang Anda tulis sebagai jawaban untuk pertanyaan pertama tes tersebut? Yang bertuliskan, "Tulis Nama Di Sini." Apakah Anda mencantumkan nama Anda sendiri atau hanya menulis "nama?"') ON CONFLICT DO NOTHING;

INSERT INTO public.items (id, type, character, slug, level, rank_id, meaning_mnemonic, description) VALUES ('dc3ef421-18f2-40b2-a668-a7e35743d07f', 'vocabulary', '答える', '答える', 2, 'c90d1e2f-3a4b-5c6d-7e8f-9a0b1c2d3e4f', 'Kata ini terdiri dari kanji dengan hiragana ditempelkan. Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanji sendiri artinya menjawab, jadi versi verbanya artinya menjawab.', 'Kata ini terdiri dari kanji dengan hiragana ditempelkan. Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanji sendiri artinya menjawab, jadi versi verbanya artinya menjawab.') ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, character = EXCLUDED.character, slug = EXCLUDED.slug, level = EXCLUDED.level, rank_id = EXCLUDED.rank_id, meaning_mnemonic = EXCLUDED.meaning_mnemonic, description = EXCLUDED.description;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('dc3ef421-18f2-40b2-a668-a7e35743d07f', 'Untuk Menjawab', true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('dc3ef421-18f2-40b2-a668-a7e35743d07f', 'To Reply', false) ON CONFLICT DO NOTHING;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('dc3ef421-18f2-40b2-a668-a7e35743d07f', 'To Respond', false) ON CONFLICT DO NOTHING;

INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES ('dc3ef421-18f2-40b2-a668-a7e35743d07f', 'こたえる', NULL, true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('dc3ef421-18f2-40b2-a668-a7e35743d07f', 'このもんだいに、じしょをつかって答えてください。', 'Tolong jawab pertanyaan ini menggunakan kamus.') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('dc3ef421-18f2-40b2-a668-a7e35743d07f', 'どうしてしつもんに答えられないの？', 'Mengapa Anda tidak bisa menjawab pertanyaan saya?') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('dc3ef421-18f2-40b2-a668-a7e35743d07f', '面接官に今までに嘘をついたことがあるかどうか聞かれた時に、何て答えればいいのか分からなかったよ。', 'Saya tidak tahu bagaimana menjawabnya ketika pewawancara bertanya apakah saya pernah berbohong sebelumnya.') ON CONFLICT DO NOTHING;

INSERT INTO public.items (id, type, character, slug, level, rank_id, meaning_mnemonic, description) VALUES ('4c5c4174-2796-4356-b09a-58d4be585f39', 'vocabulary', '買う', '買う', 2, 'c90d1e2f-3a4b-5c6d-7e8f-9a0b1c2d3e4f', 'Kata ini terdiri dari kanji dengan hiragana ditempelkan. Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanjinya sendiri artinya membeli jadi bentuk kata kerjanya adalah membeli.', 'Kata ini terdiri dari kanji dengan hiragana ditempelkan. Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanjinya sendiri artinya membeli jadi bentuk kata kerjanya adalah membeli.') ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, character = EXCLUDED.character, slug = EXCLUDED.slug, level = EXCLUDED.level, rank_id = EXCLUDED.rank_id, meaning_mnemonic = EXCLUDED.meaning_mnemonic, description = EXCLUDED.description;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('4c5c4174-2796-4356-b09a-58d4be585f39', 'Untuk Membeli', true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES ('4c5c4174-2796-4356-b09a-58d4be585f39', 'かう', NULL, true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('4c5c4174-2796-4356-b09a-58d4be585f39', 'トイレットペーパーと肉とやさいとしょうゆを同じ日に買いたいです。', 'Saya ingin membeli tisu toilet, daging, sayuran, dan kecap di hari yang sama.') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('4c5c4174-2796-4356-b09a-58d4be585f39', 'どうしてそのスマホを買うことにしたんですか？', 'Mengapa Anda akhirnya membeli ponsel pintar?') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('4c5c4174-2796-4356-b09a-58d4be585f39', 'コウイチのボブルヘッド人形を買うために、長い行列ができていた。', 'Ada antrean panjang orang yang menunggu untuk membeli bobblehead Koichi.') ON CONFLICT DO NOTHING;

INSERT INTO public.items (id, type, character, slug, level, rank_id, meaning_mnemonic, description) VALUES ('74d4091b-2242-4c8b-b1a9-d3240823e8e0', 'vocabulary', '道', '道', 2, 'c90d1e2f-3a4b-5c6d-7e8f-9a0b1c2d3e4f', 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna. 

Namun, jangan bingung membedakannya dengan kata 〜道. Yang ini tidak ada tanda 〜 di awal, artinya tidak melekat pada kata lain. Kata ini hanyalah jalan lama. Itu punya arti tersendiri!', 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna. 

Namun, jangan bingung membedakannya dengan kata 〜道. Yang ini tidak ada tanda 〜 di awal, artinya tidak melekat pada kata lain. Kata ini hanyalah jalan lama. Itu punya arti tersendiri!') ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, character = EXCLUDED.character, slug = EXCLUDED.slug, level = EXCLUDED.level, rank_id = EXCLUDED.rank_id, meaning_mnemonic = EXCLUDED.meaning_mnemonic, description = EXCLUDED.description;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('74d4091b-2242-4c8b-b1a9-d3240823e8e0', 'Jalan', true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('74d4091b-2242-4c8b-b1a9-d3240823e8e0', 'Street', false) ON CONFLICT DO NOTHING;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('74d4091b-2242-4c8b-b1a9-d3240823e8e0', 'Path', false) ON CONFLICT DO NOTHING;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('74d4091b-2242-4c8b-b1a9-d3240823e8e0', 'Way', false) ON CONFLICT DO NOTHING;

INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES ('74d4091b-2242-4c8b-b1a9-d3240823e8e0', 'みち', NULL, true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('74d4091b-2242-4c8b-b1a9-d3240823e8e0', '男の人が、交番で道をたずねています。', 'Seorang pria mampir ke pos polisi untuk mencari petunjuk arah.') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('74d4091b-2242-4c8b-b1a9-d3240823e8e0', 'ほら、千里の道も一歩からって言うでしょ？', 'Katanya perjalanan seribu mil dimulai dengan satu langkah, bukan?') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('74d4091b-2242-4c8b-b1a9-d3240823e8e0', 'この道を車で20分ぐらい行けば、未確認動物ビッグフットが目撃された場所に辿り着くよ。', 'Berkendaralah menyusuri jalan ini selama sekitar dua puluh menit dan Anda akan sampai di tempat di mana makhluk tak dikenal terlihat.') ON CONFLICT DO NOTHING;

INSERT INTO public.items (id, type, character, slug, level, rank_id, meaning_mnemonic, description) VALUES ('7878f9f9-1791-485e-b86b-dd6e7c7c6af8', 'vocabulary', '歩道', '歩道', 2, 'c90d1e2f-3a4b-5c6d-7e8f-9a0b1c2d3e4f', 'Jalan yang kamu lalui adalah trotoar... setidaknya aku berharap di situlah kamu berjalan.', 'Jalan yang kamu lalui adalah trotoar... setidaknya aku berharap di situlah kamu berjalan.') ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, character = EXCLUDED.character, slug = EXCLUDED.slug, level = EXCLUDED.level, rank_id = EXCLUDED.rank_id, meaning_mnemonic = EXCLUDED.meaning_mnemonic, description = EXCLUDED.description;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('7878f9f9-1791-485e-b86b-dd6e7c7c6af8', 'Trotoar', true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('7878f9f9-1791-485e-b86b-dd6e7c7c6af8', 'Footpath', false) ON CONFLICT DO NOTHING;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('7878f9f9-1791-485e-b86b-dd6e7c7c6af8', 'Pavement', false) ON CONFLICT DO NOTHING;

INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES ('7878f9f9-1791-485e-b86b-dd6e7c7c6af8', 'ほどう', NULL, true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('7878f9f9-1791-485e-b86b-dd6e7c7c6af8', 'どうして自てん車が歩道を走ってはいけないんですか？', 'Mengapa sepeda tidak bisa berjalan di trotoar?') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('7878f9f9-1791-485e-b86b-dd6e7c7c6af8', 'まもなくうごく歩道がおわりますので、足元にごちゅういください。', 'Anda mendekati ujung jalan yang bergerak. Harap perhatikan langkah Anda.') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('7878f9f9-1791-485e-b86b-dd6e7c7c6af8', '自転車は、忙しい車道じゃなく、歩道を走るべきだ。', 'Sepeda sebaiknya dikendarai di trotoar, bukan di jalanan kota yang sibuk.') ON CONFLICT DO NOTHING;

INSERT INTO public.items (id, type, character, slug, level, rank_id, meaning_mnemonic, description) VALUES ('a8467005-e7e7-4564-b08a-9d27541c7502', 'vocabulary', '〜道', '〜道', 2, 'c90d1e2f-3a4b-5c6d-7e8f-9a0b1c2d3e4f', 'Ini adalah kata yang ditempelkan di akhir berbagai kata lainnya. Pikirkan "jalan" sebagai cara atau metode untuk melakukan sesuatu. Misalnya, どう dalam Judo adalah "cara" yang lembut. Ada banyak kata yang diakhiri dengan 道, dan Anda akan melihatnya nanti. Untuk saat ini, ketahuilah bahwa ini berarti metode atau cara.', 'Ini adalah kata yang ditempelkan di akhir berbagai kata lainnya. Pikirkan "jalan" sebagai cara atau metode untuk melakukan sesuatu. Misalnya, どう dalam Judo adalah "cara" yang lembut. Ada banyak kata yang diakhiri dengan 道, dan Anda akan melihatnya nanti. Untuk saat ini, ketahuilah bahwa ini berarti metode atau cara.') ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, character = EXCLUDED.character, slug = EXCLUDED.slug, level = EXCLUDED.level, rank_id = EXCLUDED.rank_id, meaning_mnemonic = EXCLUDED.meaning_mnemonic, description = EXCLUDED.description;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('a8467005-e7e7-4564-b08a-9d27541c7502', 'Metode', true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('a8467005-e7e7-4564-b08a-9d27541c7502', 'Way', false) ON CONFLICT DO NOTHING;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('a8467005-e7e7-4564-b08a-9d27541c7502', 'Style', false) ON CONFLICT DO NOTHING;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('a8467005-e7e7-4564-b08a-9d27541c7502', 'Way Of', false) ON CONFLICT DO NOTHING;

INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES ('a8467005-e7e7-4564-b08a-9d27541c7502', 'どう', NULL, true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('a8467005-e7e7-4564-b08a-9d27541c7502', '先生が、じゅう道のルールややり方を教えます。', 'Guru akan mengajarkan aturan dan metode Judo.') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('a8467005-e7e7-4564-b08a-9d27541c7502', '北海道で、けん道をきわめるつもりです。', 'Aku akan menguasai ilmu pedang di Hokkaido.') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('a8467005-e7e7-4564-b08a-9d27541c7502', '武士道と騎士道の違いについて説明してください。', 'Bisakah Anda menjelaskan perbedaan antara bushido dan ksatria?') ON CONFLICT DO NOTHING;

INSERT INTO public.items (id, type, character, slug, level, rank_id, meaning_mnemonic, description) VALUES ('351f20d0-ab0e-4499-a546-79b175c89b6d', 'vocabulary', '楽しい', '楽しい', 2, 'c90d1e2f-3a4b-5c6d-7e8f-9a0b1c2d3e4f', 'Ini adalah kanji tunggal dengan い di akhir, artinya Anda tahu itu mungkin kata sifat. Apa bentuk kata sifat kesenangan? Ya, bisa dibilang itu "menyenangkan", tapi sayangnya bukan itu tujuan kita di sini. Dalam hal ini, kata ini sedikit lebih polos. Itu hanya berarti kesenangan.', 'Ini adalah kanji tunggal dengan い di akhir, artinya Anda tahu itu mungkin kata sifat. Apa bentuk kata sifat kesenangan? Ya, bisa dibilang itu "menyenangkan", tapi sayangnya bukan itu tujuan kita di sini. Dalam hal ini, kata ini sedikit lebih polos. Itu hanya berarti kesenangan.') ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, character = EXCLUDED.character, slug = EXCLUDED.slug, level = EXCLUDED.level, rank_id = EXCLUDED.rank_id, meaning_mnemonic = EXCLUDED.meaning_mnemonic, description = EXCLUDED.description;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('351f20d0-ab0e-4499-a546-79b175c89b6d', 'Menyenangkan', true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES ('351f20d0-ab0e-4499-a546-79b175c89b6d', 'たのしい', NULL, true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('351f20d0-ab0e-4499-a546-79b175c89b6d', 'このゲームは、とても楽しくて、おも白いです。', 'Game ini sungguh seru dan menarik.') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('351f20d0-ab0e-4499-a546-79b175c89b6d', 'テレビを見ながら食べる方が、しゃべりながら食べるより楽しいよ。', 'Lebih asyik makan sambil nonton TV dibandingkan makan sambil ngobrol.') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('351f20d0-ab0e-4499-a546-79b175c89b6d', '飛行機から飛び降りるって、物凄く楽しいよ！', 'Melompat keluar dari pesawat sungguh menyenangkan!') ON CONFLICT DO NOTHING;

INSERT INTO public.items (id, type, character, slug, level, rank_id, meaning_mnemonic, description) VALUES ('66e41b9d-20e2-4a8e-ae85-512b87c7d8b1', 'vocabulary', '音楽', '音楽', 2, 'c90d1e2f-3a4b-5c6d-7e8f-9a0b1c2d3e4f', 'Apa suara kenikmatannya? Suara apa yang membuatmu nyaman? Bagi kebanyakan orang, itu adalah musik yang bagus. Pastikan Anda tidak memakai Bieber... itu akan seperti 不音楽 atau semacamnya... nak, nak.', 'Apa suara kenikmatannya? Suara apa yang membuatmu nyaman? Bagi kebanyakan orang, itu adalah musik yang bagus. Pastikan Anda tidak memakai Bieber... itu akan seperti 不音楽 atau semacamnya... nak, nak.') ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, character = EXCLUDED.character, slug = EXCLUDED.slug, level = EXCLUDED.level, rank_id = EXCLUDED.rank_id, meaning_mnemonic = EXCLUDED.meaning_mnemonic, description = EXCLUDED.description;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('66e41b9d-20e2-4a8e-ae85-512b87c7d8b1', 'Musik', true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES ('66e41b9d-20e2-4a8e-ae85-512b87c7d8b1', 'おんがく', NULL, true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('66e41b9d-20e2-4a8e-ae85-512b87c7d8b1', 'べん強してから音楽をききます。', 'Saya akan mendengarkan musik setelah saya belajar.') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('66e41b9d-20e2-4a8e-ae85-512b87c7d8b1', '音楽をききながら仕ごとをすることはよくないと思いますか？', 'Apakah menurut Anda bekerja sambil mendengarkan musik tidak baik?') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('66e41b9d-20e2-4a8e-ae85-512b87c7d8b1', '違ったタイプの音楽が創りだされることはもう無いのかなって思ったりするんだよね。あなたは、人類は既に全ジャンルの音楽を全て創りだしちゃったと思う？', 'Saya ingin tahu apakah jenis musik lain akan dibuat. Apakah menurut Anda umat manusia telah menciptakan semua genre yang ada?') ON CONFLICT DO NOTHING;

INSERT INTO public.items (id, type, character, slug, level, rank_id, meaning_mnemonic, description) VALUES ('c700de8e-0dc8-4c83-aa28-a7a8d7c363c1', 'vocabulary', '楽', '楽', 2, 'c90d1e2f-3a4b-5c6d-7e8f-9a0b1c2d3e4f', 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.', 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.') ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, character = EXCLUDED.character, slug = EXCLUDED.slug, level = EXCLUDED.level, rank_id = EXCLUDED.rank_id, meaning_mnemonic = EXCLUDED.meaning_mnemonic, description = EXCLUDED.description;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('c700de8e-0dc8-4c83-aa28-a7a8d7c363c1', 'Kenyamanan', true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('c700de8e-0dc8-4c83-aa28-a7a8d7c363c1', 'Ease', false) ON CONFLICT DO NOTHING;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('c700de8e-0dc8-4c83-aa28-a7a8d7c363c1', 'Pleasure', false) ON CONFLICT DO NOTHING;

INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES ('c700de8e-0dc8-4c83-aa28-a7a8d7c363c1', 'らく', NULL, true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('c700de8e-0dc8-4c83-aa28-a7a8d7c363c1', 'あんたはそうやって楽することばっかり考えて！', 'Anda hanya berpikir untuk mengambil jalan keluar yang mudah!') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('c700de8e-0dc8-4c83-aa28-a7a8d7c363c1', 'このいすめっちゃ楽だわー。', 'Kursi ini sangat nyaman!') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('c700de8e-0dc8-4c83-aa28-a7a8d7c363c1', '私は愛犬トトと一緒にいる時が一番楽です。', 'Saya merasa paling nyaman saat bersama anjing saya, Toto.') ON CONFLICT DO NOTHING;

INSERT INTO public.items (id, type, character, slug, level, rank_id, meaning_mnemonic, description) VALUES ('f2b05d2a-466f-4095-923e-be3b51cb6fe8', 'vocabulary', '魚屋', '魚屋', 2, 'c90d1e2f-3a4b-5c6d-7e8f-9a0b1c2d3e4f', 'Toko ikan adalah toko ikan, tempat membeli ikan. Khususnya di Jepang, sangat penting.', 'Toko ikan adalah toko ikan, tempat membeli ikan. Khususnya di Jepang, sangat penting.') ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, character = EXCLUDED.character, slug = EXCLUDED.slug, level = EXCLUDED.level, rank_id = EXCLUDED.rank_id, meaning_mnemonic = EXCLUDED.meaning_mnemonic, description = EXCLUDED.description;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('f2b05d2a-466f-4095-923e-be3b51cb6fe8', 'Toko Ikan', true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('f2b05d2a-466f-4095-923e-be3b51cb6fe8', 'Fish Market', false) ON CONFLICT DO NOTHING;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('f2b05d2a-466f-4095-923e-be3b51cb6fe8', 'Fish Dealer', false) ON CONFLICT DO NOTHING;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('f2b05d2a-466f-4095-923e-be3b51cb6fe8', 'Fish Store', false) ON CONFLICT DO NOTHING;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('f2b05d2a-466f-4095-923e-be3b51cb6fe8', 'Fishmonger', false) ON CONFLICT DO NOTHING;

INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES ('f2b05d2a-466f-4095-923e-be3b51cb6fe8', 'さかなや', NULL, true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('f2b05d2a-466f-4095-923e-be3b51cb6fe8', '魚屋で金目だいを買ってきたの。', 'Kami pergi membeli ikan air tawar merah yang lezat di toko ikan.') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('f2b05d2a-466f-4095-923e-be3b51cb6fe8', 'この魚屋のゆかはすべりやすいから気を付けてね。', 'Lantai toko ikan ini sangat licin, jadi berhati-hatilah.') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('f2b05d2a-466f-4095-923e-be3b51cb6fe8', 'あの魚屋さんは百円おまけをしてくれた。', 'Toko ikan memberi saya diskon 100 yen.') ON CONFLICT DO NOTHING;

INSERT INTO public.items (id, type, character, slug, level, rank_id, meaning_mnemonic, description) VALUES ('9b374ece-9653-4e5c-af5f-e17ad2d78a58', 'vocabulary', '運転する', '運転する', 2, 'c90d1e2f-3a4b-5c6d-7e8f-9a0b1c2d3e4f', 'Sesuatu yang membawa rotasi (pikirkan roda!) adalah sebagian besar jenis kendaraan. Jadi, ini seperti mengatakan Anda sedang "membuat kendaraan" di sini... tapi itu tidak masuk akal. Apa yang Anda lakukan terhadap kendaraan? Anda mengendarainya. Itu sebabnya kata ini berarti mengemudi.', 'Sesuatu yang membawa rotasi (pikirkan roda!) adalah sebagian besar jenis kendaraan. Jadi, ini seperti mengatakan Anda sedang "membuat kendaraan" di sini... tapi itu tidak masuk akal. Apa yang Anda lakukan terhadap kendaraan? Anda mengendarainya. Itu sebabnya kata ini berarti mengemudi.') ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, character = EXCLUDED.character, slug = EXCLUDED.slug, level = EXCLUDED.level, rank_id = EXCLUDED.rank_id, meaning_mnemonic = EXCLUDED.meaning_mnemonic, description = EXCLUDED.description;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('9b374ece-9653-4e5c-af5f-e17ad2d78a58', 'Untuk Mengemudi', true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES ('9b374ece-9653-4e5c-af5f-e17ad2d78a58', 'うんてんする', NULL, true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('9b374ece-9653-4e5c-af5f-e17ad2d78a58', '休日には、とくにあてもなく運転するのがすきなんだ。', 'Saya sangat suka berkeliling tanpa tujuan ketika saya sedang berlibur.') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('9b374ece-9653-4e5c-af5f-e17ad2d78a58', '運転する時は、ぜっ対に後ろはふり返りません。サメと同じで、前しか見ないんです。', 'Saya tidak pernah melihat ke belakang ketika saya mengemudi. Saya seperti hiu—hanya melihat ke depan.') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('9b374ece-9653-4e5c-af5f-e17ad2d78a58', 'このフグモデルの車は最高だね！とても気に入ったよ。毎日運転するのが待ち遠しいよ。', 'Mobil model Fugu ini luar biasa! Saya menyukainya! Saya tidak sabar untuk mulai mengendarainya setiap hari.') ON CONFLICT DO NOTHING;

INSERT INTO public.items (id, type, character, slug, level, rank_id, meaning_mnemonic, description) VALUES ('558dd424-f34d-434e-94d3-62349baa5ea7', 'vocabulary', '運ぶ', '運ぶ', 2, 'c90d1e2f-3a4b-5c6d-7e8f-9a0b1c2d3e4f', 'Kata ini terdiri dari kanji dengan hiragana ditempelkan. Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanjinya sendiri artinya membawa jadi versi verbanya adalah membawa.', 'Kata ini terdiri dari kanji dengan hiragana ditempelkan. Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanjinya sendiri artinya membawa jadi versi verbanya adalah membawa.') ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, character = EXCLUDED.character, slug = EXCLUDED.slug, level = EXCLUDED.level, rank_id = EXCLUDED.rank_id, meaning_mnemonic = EXCLUDED.meaning_mnemonic, description = EXCLUDED.description;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('558dd424-f34d-434e-94d3-62349baa5ea7', 'Untuk Membawa', true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('558dd424-f34d-434e-94d3-62349baa5ea7', 'To Transport', false) ON CONFLICT DO NOTHING;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('558dd424-f34d-434e-94d3-62349baa5ea7', 'To Move', false) ON CONFLICT DO NOTHING;

INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES ('558dd424-f34d-434e-94d3-62349baa5ea7', 'はこぶ', NULL, true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('558dd424-f34d-434e-94d3-62349baa5ea7', 'あ、それから、つくえを運ぶのをわすれないでください。', 'Oh, dan jangan lupa memindahkan mejanya.') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('558dd424-f34d-434e-94d3-62349baa5ea7', '私の父親としての役目は、食べ物をテーブルに運んで、娘と一緒にお茶会をすることだ。', 'Tugasku sebagai seorang ayah adalah menyiapkan makanan di atas meja dan mengadakan pesta teh bersama putriku.') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('558dd424-f34d-434e-94d3-62349baa5ea7', 'この教科書を運ぶための鞄がほしい。', 'Saya ingin tas untuk membawa buku pelajaran ini.') ON CONFLICT DO NOTHING;

INSERT INTO public.items (id, type, character, slug, level, rank_id, meaning_mnemonic, description) VALUES ('72163200-1623-48fe-8dba-2fd1eff3691f', 'vocabulary', '運がいい', '運がいい', 2, 'c90d1e2f-3a4b-5c6d-7e8f-9a0b1c2d3e4f', 'Bagian いい berarti "baik". Jadi, bila apa yang Anda bawa bagus maka Anda beruntung. Anggap saja keberuntungan adalah benda fisik yang Anda bawa di tangan. Sekarang bayangkan diri Anda membawanya. Sekarang pikirkan dalam hati “yang saya bawa bagus, untung!”', 'Bagian いい berarti "baik". Jadi, bila apa yang Anda bawa bagus maka Anda beruntung. Anggap saja keberuntungan adalah benda fisik yang Anda bawa di tangan. Sekarang bayangkan diri Anda membawanya. Sekarang pikirkan dalam hati “yang saya bawa bagus, untung!”') ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, character = EXCLUDED.character, slug = EXCLUDED.slug, level = EXCLUDED.level, rank_id = EXCLUDED.rank_id, meaning_mnemonic = EXCLUDED.meaning_mnemonic, description = EXCLUDED.description;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('72163200-1623-48fe-8dba-2fd1eff3691f', 'Beruntung', true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES ('72163200-1623-48fe-8dba-2fd1eff3691f', 'うんがいい', NULL, true) ON CONFLICT DO NOTHING;

