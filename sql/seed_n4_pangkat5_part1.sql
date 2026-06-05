-- ============================================================
-- KaniGani Seed Data: N4 - Pangkat 5
-- Generated automatically with translated Indonesian content
-- ============================================================

-- 1. Clean up existing items in this rank
DELETE FROM public.items WHERE rank_id = 'b8c90d1e-2f3a-4b5c-6d7e-8f9a0b1c2d3e';

-- 2. Insert Radicals
INSERT INTO public.items (id, type, character, slug, level, rank_id, description) VALUES ('5e8cde1e-d2bb-4e24-8746-dcf017d88552', 'radical', 'マ', 'mama', 2, 'b8c90d1e-2f3a-4b5c-6d7e-8f9a0b1c2d3e', 'Radikal ini sama seperti karakter katakana "ma" (マ). Jadi mari kita buat semuanya tetap sederhana dan jadikan mama yang radikal.') ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, character = EXCLUDED.character, slug = EXCLUDED.slug, level = EXCLUDED.level, rank_id = EXCLUDED.rank_id, description = EXCLUDED.description;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('5e8cde1e-d2bb-4e24-8746-dcf017d88552', 'Ibu', true) ON CONFLICT DO NOTHING;

INSERT INTO public.items (id, type, character, slug, level, rank_id, description) VALUES ('28e889ff-a473-4ebf-b2c1-5b4157c1ed13', 'radical', '貝', 'shellfish', 2, 'b8c90d1e-2f3a-4b5c-6d7e-8f9a0b1c2d3e', 'Ada mata raksasa di atas beberapa sirip. Bayangkan mata raksasa ini berada di atas kerang atau remis. Ia memiliki sirip-sirip kecil, yang berfungsi sebagai tempat berjalannya, menghindari setiap upaya Anda untuk menangkapnya. Itu sebabnya ini adalah kerang radikal.') ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, character = EXCLUDED.character, slug = EXCLUDED.slug, level = EXCLUDED.level, rank_id = EXCLUDED.rank_id, description = EXCLUDED.description;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('28e889ff-a473-4ebf-b2c1-5b4157c1ed13', 'Kerang', true) ON CONFLICT DO NOTHING;

INSERT INTO public.items (id, type, character, slug, level, rank_id, description) VALUES ('67be672c-65a4-4211-b252-1b9944ef2461', 'radical', '[Paus]', 'pope', 2, 'b8c90d1e-2f3a-4b5c-6d7e-8f9a0b1c2d3e', 'Seseorang memiliki mata juling. Itu harus menjadi seorang Katolik yang benar-benar taat. Siapa yang nomor satu di bidang itu? Itu adalah Paus.') ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, character = EXCLUDED.character, slug = EXCLUDED.slug, level = EXCLUDED.level, rank_id = EXCLUDED.rank_id, description = EXCLUDED.description;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('67be672c-65a4-4211-b252-1b9944ef2461', 'Paus', true) ON CONFLICT DO NOTHING;

INSERT INTO public.items (id, type, character, slug, level, rank_id, description) VALUES ('5cd2d4f0-576f-4f72-898b-17cadb621883', 'radical', '巾', 'towel', 2, 'b8c90d1e-2f3a-4b5c-6d7e-8f9a0b1c2d3e', 'Ada sesuatu yang menutupi tongkat itu. Itu handuk!! Bayangkan mengambil handuk basah dan menggantungnya di pagar atau tongkat agar tidak pengap dan kotor. Ini akan terlihat seperti ini.') ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, character = EXCLUDED.character, slug = EXCLUDED.slug, level = EXCLUDED.level, rank_id = EXCLUDED.rank_id, description = EXCLUDED.description;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('5cd2d4f0-576f-4f72-898b-17cadb621883', 'Handuk', true) ON CONFLICT DO NOTHING;

INSERT INTO public.items (id, type, character, slug, level, rank_id, description) VALUES ('d3361fd9-0f76-41f9-9968-4c72a807390c', 'radical', '己', 'oneself', 2, 'b8c90d1e-2f3a-4b5c-6d7e-8f9a0b1c2d3e', 'Ini terlihat seperti S.S terbalik untuk Self. Tapi itu terbalik karena Anda tidak ingin mencampuradukkan diri Anda dengan orang lain di luar sana, jadi Anda membaliknya. Itu sebabnya itu berarti diri sendiri. (Itu kamu!)

Orang radikal ini akan tampak seperti diri Anda sendiri, dirinya sendiri, dll., jadi ingatlah itu!') ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, character = EXCLUDED.character, slug = EXCLUDED.slug, level = EXCLUDED.level, rank_id = EXCLUDED.rank_id, description = EXCLUDED.description;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('d3361fd9-0f76-41f9-9968-4c72a807390c', 'Diri sendiri', true) ON CONFLICT DO NOTHING;

INSERT INTO public.items (id, type, character, slug, level, rank_id, description) VALUES ('edad34d3-d548-42f2-8a16-a394e6c822bb', 'radical', '米', 'rice', 2, 'b8c90d1e-2f3a-4b5c-6d7e-8f9a0b1c2d3e', 'Jangan bingung dengan sawah (田). Ini hanyalah beras mentah, seperti bulir yang tumbuh dari tanah saat beras masih mentah dan segar. Jika nasi sudah sangat matang, bagian atas batangnya akan terlihat seperti ini. Lihat daunnya yang panjang dengan sedikit jumbai nasi di atasnya? Itu sebabnya radikal ini disebut "beras".') ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, character = EXCLUDED.character, slug = EXCLUDED.slug, level = EXCLUDED.level, rank_id = EXCLUDED.rank_id, description = EXCLUDED.description;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('edad34d3-d548-42f2-8a16-a394e6c822bb', 'Beras', true) ON CONFLICT DO NOTHING;

INSERT INTO public.items (id, type, character, slug, level, rank_id, description) VALUES ('53f3131c-8a74-4bcd-9f96-05c61c9afe2f', 'radical', '斗', 'ladle', 2, 'b8c90d1e-2f3a-4b5c-6d7e-8f9a0b1c2d3e', 'Ada sendok yang menyendoki dua tetes cairan. Lihat bagian gagang dan sendok sendoknya? Bayangkan menyendok air ke dalam mulut Anda. MM.') ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, character = EXCLUDED.character, slug = EXCLUDED.slug, level = EXCLUDED.level, rank_id = EXCLUDED.rank_id, description = EXCLUDED.description;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('53f3131c-8a74-4bcd-9f96-05c61c9afe2f', 'sendok', true) ON CONFLICT DO NOTHING;

INSERT INTO public.items (id, type, character, slug, level, rank_id, description) VALUES ('7cd016f9-140c-4050-b262-95e6cf4d4330', 'radical', '阝', 'building', 2, 'b8c90d1e-2f3a-4b5c-6d7e-8f9a0b1c2d3e', 'Bentuk radikal ini seperti huruf B yang melengkung. Apa kepanjangan dari B? Bangunan! Kata radikal ini digunakan dalam banyak kanji untuk menandai bahwa itu adalah sebuah bangunan, atau ada hubungannya dengan bangunan.') ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, character = EXCLUDED.character, slug = EXCLUDED.slug, level = EXCLUDED.level, rank_id = EXCLUDED.rank_id, description = EXCLUDED.description;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('7cd016f9-140c-4050-b262-95e6cf4d4330', 'Bangunan', true) ON CONFLICT DO NOTHING;

INSERT INTO public.items (id, type, character, slug, level, rank_id, description) VALUES ('3f166059-62f8-4df9-8d8e-cffbec718837', 'radical', '疒', 'sick', 2, 'b8c90d1e-2f3a-4b5c-6d7e-8f9a0b1c2d3e', 'Ini adalah kanopi radikal dengan es mengalir di bagian belakang. Kalau nongkrong di kanopi yang dingin seperti ini pasti sakit. Bayangkan Anda sedang sakit dan sendirian di dalam kanopi yang dingin. Brrrr, oh tidak... ACHOO!') ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, character = EXCLUDED.character, slug = EXCLUDED.slug, level = EXCLUDED.level, rank_id = EXCLUDED.rank_id, description = EXCLUDED.description;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('3f166059-62f8-4df9-8d8e-cffbec718837', 'Sakit', true) ON CONFLICT DO NOTHING;

INSERT INTO public.items (id, type, character, slug, level, rank_id, description) VALUES ('526001e4-5062-4e83-9877-83d82c979924', 'radical', '丙', 'dynamite', 2, 'b8c90d1e-2f3a-4b5c-6d7e-8f9a0b1c2d3e', 'Bukankah radikal ini terlihat seperti alat pendorong dinamit kuno yang didorong untuk menyetel sekringnya? Itu membuat dinamit ini!') ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, character = EXCLUDED.character, slug = EXCLUDED.slug, level = EXCLUDED.level, rank_id = EXCLUDED.rank_id, description = EXCLUDED.description;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('526001e4-5062-4e83-9877-83d82c979924', 'Dinamit', true) ON CONFLICT DO NOTHING;

INSERT INTO public.items (id, type, character, slug, level, rank_id, description) VALUES ('ff214bf5-f762-4c16-84fb-66b6c476269f', 'radical', '糸', 'thread', 2, 'b8c90d1e-2f3a-4b5c-6d7e-8f9a0b1c2d3e', 'Ada sesuatu yang kecil di beberapa kotoran. Anda mencondongkan tubuh ke dalam, menariknya keluar dengan hati-hati, dan menyadari bahwa itu adalah seutas benang. Mengapa ada benang di kotoran kecil ini? Karena itu kotoran kucing. Dan kucing suka memakan benang saat Anda tidak melihat. Dan benang benang, tali hoodie, dan ekor tikus. Tapi kotoran ini hanya ada benang di dalamnya.') ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, character = EXCLUDED.character, slug = EXCLUDED.slug, level = EXCLUDED.level, rank_id = EXCLUDED.rank_id, description = EXCLUDED.description;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('ff214bf5-f762-4c16-84fb-66b6c476269f', 'Benang', true) ON CONFLICT DO NOTHING;

INSERT INTO public.items (id, type, character, slug, level, rank_id, description) VALUES ('068b6d2c-3ec1-4fad-a545-76e2f4eca3b0', 'radical', '氏', 'clan', 2, 'b8c90d1e-2f3a-4b5c-6d7e-8f9a0b1c2d3e', 'Ini terlihat seperti tamagotchi kecil atau (jika Anda bukan anak tahun 90an) bebek. Apa kesamaan yang dimiliki kedua makhluk ini? Mereka memiliki pengikut klan yang sangat gila. Dan orang-orang yang menikmatinya (permainan kecil-kecilan atau menonton bebek berkuak) membentuk klan yang berkumpul dan berbagi pengalaman. Anda termasuk dalam klan mana?') ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, character = EXCLUDED.character, slug = EXCLUDED.slug, level = EXCLUDED.level, rank_id = EXCLUDED.rank_id, description = EXCLUDED.description;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('068b6d2c-3ec1-4fad-a545-76e2f4eca3b0', 'Klan', true) ON CONFLICT DO NOTHING;

INSERT INTO public.items (id, type, character, slug, level, rank_id, description) VALUES ('3203dc22-7767-46d0-b19c-2b68714d4160', 'radical', '[Tahu]', 'tofu', 2, 'b8c90d1e-2f3a-4b5c-6d7e-8f9a0b1c2d3e', 'Lihat T dan F yang membentuk radikal ini? Huruf-huruf itu melambangkan tahu, balok tahu favorit kami.') ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, character = EXCLUDED.character, slug = EXCLUDED.slug, level = EXCLUDED.level, rank_id = EXCLUDED.rank_id, description = EXCLUDED.description;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('3203dc22-7767-46d0-b19c-2b68714d4160', 'Tahu', true) ON CONFLICT DO NOTHING;

INSERT INTO public.items (id, type, character, slug, level, rank_id, description) VALUES ('54e9f16f-477c-402a-90e6-532b346636fd', 'radical', '昔', 'long-ago', 2, 'b8c90d1e-2f3a-4b5c-6d7e-8f9a0b1c2d3e', 'Radikal ini sama dengan kanji. Artinya sudah lama sekali.') ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, character = EXCLUDED.character, slug = EXCLUDED.slug, level = EXCLUDED.level, rank_id = EXCLUDED.rank_id, description = EXCLUDED.description;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('54e9f16f-477c-402a-90e6-532b346636fd', 'Dahulu kala', true) ON CONFLICT DO NOTHING;

INSERT INTO public.items (id, type, character, slug, level, rank_id, description) VALUES ('1597cae0-00d6-43c6-8eb5-bcf359aec52f', 'radical', '免', 'excuse', 2, 'b8c90d1e-2f3a-4b5c-6d7e-8f9a0b1c2d3e', 'Radikal ini terdiri dari beberapa kaki yang membawa matahari keluar dari penjara. Kaki itu milikmu. Namun, ketika polisi menghentikan Anda, apa alasan Anda? Buatlah satu dan ucapkan dengan lantang, dimulai dengan, "Alasan saya adalah..."') ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, character = EXCLUDED.character, slug = EXCLUDED.slug, level = EXCLUDED.level, rank_id = EXCLUDED.rank_id, description = EXCLUDED.description;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('1597cae0-00d6-43c6-8eb5-bcf359aec52f', 'Permisi', true) ON CONFLICT DO NOTHING;

INSERT INTO public.items (id, type, character, slug, level, rank_id, description) VALUES ('cde9da29-32d2-4118-a46a-2ce7de38570b', 'radical', '里', 'village', 2, 'b8c90d1e-2f3a-4b5c-6d7e-8f9a0b1c2d3e', 'Ini adalah sawah dengan tanah di sekitarnya. Ini adalah tempat yang sempurna untuk mendirikan desa. Anda memiliki tempat untuk bertani dan tanah untuk ditinggali. Apa lagi yang Anda perlukan?') ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, character = EXCLUDED.character, slug = EXCLUDED.slug, level = EXCLUDED.level, rank_id = EXCLUDED.rank_id, description = EXCLUDED.description;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('cde9da29-32d2-4118-a46a-2ce7de38570b', 'Desa', true) ON CONFLICT DO NOTHING;

INSERT INTO public.items (id, type, character, slug, level, rank_id, description) VALUES ('9f88ea2e-8d45-4702-81ef-c3e1cd917131', 'radical', '孝', 'teacher', 2, 'b8c90d1e-2f3a-4b5c-6d7e-8f9a0b1c2d3e', 'Radikal ini terdiri dari peti mati dan anak-anak. Untuk menjauhkan seorang anak dari peti mati, mereka memerlukan guru yang baik untuk memastikan mereka tahu untuk tidak menempelkan garpu di stopkontak atau menari di lalu lintas. Itu sebabnya orang radikal ini adalah seorang guru.') ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, character = EXCLUDED.character, slug = EXCLUDED.slug, level = EXCLUDED.level, rank_id = EXCLUDED.rank_id, description = EXCLUDED.description;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('9f88ea2e-8d45-4702-81ef-c3e1cd917131', 'Guru', true) ON CONFLICT DO NOTHING;

INSERT INTO public.items (id, type, character, slug, level, rank_id, description) VALUES ('c9a58de4-7da8-4920-b8ae-e296ceec9cbf', 'radical', '予', 'beforehand', 2, 'b8c90d1e-2f3a-4b5c-6d7e-8f9a0b1c2d3e', 'Radikal ini sama dengan kanji. Artinya sebelumnya.') ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, character = EXCLUDED.character, slug = EXCLUDED.slug, level = EXCLUDED.level, rank_id = EXCLUDED.rank_id, description = EXCLUDED.description;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('c9a58de4-7da8-4920-b8ae-e296ceec9cbf', 'Sebelumnya', true) ON CONFLICT DO NOTHING;

INSERT INTO public.items (id, type, character, slug, level, rank_id, description) VALUES ('8c72ec7e-23af-4ab7-b8cc-50526a6edfc7', 'radical', '亜', 'asia', 2, 'b8c90d1e-2f3a-4b5c-6d7e-8f9a0b1c2d3e', 'Radikal ini terlihat seperti helikopter di darat. Atau petarung TIE dari atas (ke samping). Apa pun pilihannya, tidak apa-apa karena Anda tahu di mana helikopter dan pesawat tempur TIE dibuat: Asia! Saat ini sebagian besar pesawat dibuat di Asia, tahu?') ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, character = EXCLUDED.character, slug = EXCLUDED.slug, level = EXCLUDED.level, rank_id = EXCLUDED.rank_id, description = EXCLUDED.description;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('8c72ec7e-23af-4ab7-b8cc-50526a6edfc7', 'Asia', true) ON CONFLICT DO NOTHING;

INSERT INTO public.items (id, type, character, slug, level, rank_id, description) VALUES ('fe3d0baa-db0b-4624-b83d-1423c9a64385', 'radical', '云', 'cloud', 2, 'b8c90d1e-2f3a-4b5c-6d7e-8f9a0b1c2d3e', 'Ini adalah radikal untuk cloud. Lihat bagaimana awannya menggembung di bagian bawah tetapi memiliki dua garis di bagian atas? Itu karena ada pesawat yang terbang melewatinya. Jika manusia tidak menciptakan pesawat terbang, awan radikal ini mungkin terlihat berbeda. Benar-benar membuatmu berpikir, ya?') ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, character = EXCLUDED.character, slug = EXCLUDED.slug, level = EXCLUDED.level, rank_id = EXCLUDED.rank_id, description = EXCLUDED.description;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('fe3d0baa-db0b-4624-b83d-1423c9a64385', 'Awan', true) ON CONFLICT DO NOTHING;

INSERT INTO public.items (id, type, character, slug, level, rank_id, description) VALUES ('1c8a9570-a327-4bec-8c03-b9355481dae5', 'radical', '周', 'circumference', 2, 'b8c90d1e-2f3a-4b5c-6d7e-8f9a0b1c2d3e', 'Taruh sedikit kotoran di sekitar kepala dan mulut Anda untuk mengetahui lingkar kepala Anda. Saat Anda menarik kepala keluar, Anda akan mendapatkan bentuk kepala yang sempurna, sehingga pengukuran keliling menjadi mudah. Oh, dan kotoran di mulutmu? Itu hanya untuk rasanya.') ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, character = EXCLUDED.character, slug = EXCLUDED.slug, level = EXCLUDED.level, rank_id = EXCLUDED.rank_id, description = EXCLUDED.description;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('1c8a9570-a327-4bec-8c03-b9355481dae5', 'Keliling', true) ON CONFLICT DO NOTHING;

INSERT INTO public.items (id, type, character, slug, level, rank_id, description) VALUES ('6f8a3975-c270-4ff1-b8f2-290a829d0b15', 'radical', '黒', 'black', 2, 'b8c90d1e-2f3a-4b5c-6d7e-8f9a0b1c2d3e', 'Jika Anda merebus sebuah desa, semuanya akan menjadi hitam. Sebagian besar karena Anda adalah seorang pembunuh gila, namun terlebih lagi karena ketika Anda merebus sebuah desa, seluruh jalan akan meleleh dan melapisi segala sesuatunya dengan tar hitam. Bayangkan! Sepertinya Pompeii. (Oof, terlalu cepat?)') ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, character = EXCLUDED.character, slug = EXCLUDED.slug, level = EXCLUDED.level, rank_id = EXCLUDED.rank_id, description = EXCLUDED.description;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('6f8a3975-c270-4ff1-b8f2-290a829d0b15', 'Hitam', true) ON CONFLICT DO NOTHING;

INSERT INTO public.items (id, type, character, slug, level, rank_id, description) VALUES ('17370108-a9bc-4e6b-85ea-13313dce8a13', 'radical', '羽', 'feathers', 2, 'b8c90d1e-2f3a-4b5c-6d7e-8f9a0b1c2d3e', 'Radikal ini sudah terlihat seperti sepasang sayap bukan? Apa yang ada di sayap? Biasanya bulunya banyak.') ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, character = EXCLUDED.character, slug = EXCLUDED.slug, level = EXCLUDED.level, rank_id = EXCLUDED.rank_id, description = EXCLUDED.description;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('17370108-a9bc-4e6b-85ea-13313dce8a13', 'Bulu', true) ON CONFLICT DO NOTHING;

INSERT INTO public.items (id, type, character, slug, level, rank_id, description) VALUES ('863dd362-4402-4777-84b1-2adffdaf8e0e', 'radical', '[viking]', 'viking', 2, 'b8c90d1e-2f3a-4b5c-6d7e-8f9a0b1c2d3e', 'Ini adalah atap dengan tambahan paku/tanduk di atasnya. Siapa yang terkenal memiliki atap berduri, helm berduri, perahu berduri?! Bangsa Viking! Itu sebabnya ini disebut radikal Viking.') ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, character = EXCLUDED.character, slug = EXCLUDED.slug, level = EXCLUDED.level, rank_id = EXCLUDED.rank_id, description = EXCLUDED.description;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('863dd362-4402-4777-84b1-2adffdaf8e0e', 'viking', true) ON CONFLICT DO NOTHING;

INSERT INTO public.items (id, type, character, slug, level, rank_id, description) VALUES ('a7590e87-f71b-4a4f-a4f3-ba8aafcf0666', 'radical', '鳥', 'bird', 2, 'b8c90d1e-2f3a-4b5c-6d7e-8f9a0b1c2d3e', 'Lihat sayap keren di bawah? Lihat kepala dengan bulu rapi keluar dari atasnya? Ini adalah seekor burung. Tweet tweet!') ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, character = EXCLUDED.character, slug = EXCLUDED.slug, level = EXCLUDED.level, rank_id = EXCLUDED.rank_id, description = EXCLUDED.description;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('a7590e87-f71b-4a4f-a4f3-ba8aafcf0666', 'Burung', true) ON CONFLICT DO NOTHING;

-- 3. Insert Kanjis
INSERT INTO public.items (id, type, character, slug, level, rank_id, meaning_mnemonic, reading_mnemonic) VALUES ('bc93a2b8-1daa-48bd-9ae1-f78b955b7ebe', 'kanji', '通', '通', 2, 'b8c90d1e-2f3a-4b5c-6d7e-8f9a0b1c2d3e', 'Ada skuter bersama ibumu yang membawa tugas yang harus dia selesaikan. Anda melihatnya lewat, bergegas untuk menyelesaikan tugas itu.', 'Saat kamu melihat ibumu melewati rumah, dia berteriak, "KAMU HARUS MELAKUKAN TUGAS INI TERLALU (つう)!" Juga?! Oh tidak, sekarang kamu harus melakukannya juga. Ayo cepat!') ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, character = EXCLUDED.character, slug = EXCLUDED.slug, level = EXCLUDED.level, rank_id = EXCLUDED.rank_id, meaning_mnemonic = EXCLUDED.meaning_mnemonic, reading_mnemonic = EXCLUDED.reading_mnemonic;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('bc93a2b8-1daa-48bd-9ae1-f78b955b7ebe', 'Lewati', true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES ('bc93a2b8-1daa-48bd-9ae1-f78b955b7ebe', 'つう', 'onyomi', true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES ('bc93a2b8-1daa-48bd-9ae1-f78b955b7ebe', 'とお', 'kunyomi', false) ON CONFLICT DO NOTHING;

INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES ('bc93a2b8-1daa-48bd-9ae1-f78b955b7ebe', 'かよ', 'kunyomi', false) ON CONFLICT DO NOTHING;

INSERT INTO public.items (id, type, character, slug, level, rank_id, meaning_mnemonic, reading_mnemonic) VALUES ('98974473-5024-43b4-ab78-6627b76653c6', 'kanji', '員', '員', 2, 'b8c90d1e-2f3a-4b5c-6d7e-8f9a0b1c2d3e', 'Kerang bermulut merupakan anggota keluarga invertebrata. Ya, kerang memang punya mulut, lihatlah!', 'Jika Anda adalah anggota keluarga kerang yang sama, Anda bisa pergi ke penginapan khusus kerang (いん). Setiap spesies memiliki penginapan khusus anggota.') ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, character = EXCLUDED.character, slug = EXCLUDED.slug, level = EXCLUDED.level, rank_id = EXCLUDED.rank_id, meaning_mnemonic = EXCLUDED.meaning_mnemonic, reading_mnemonic = EXCLUDED.reading_mnemonic;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('98974473-5024-43b4-ab78-6627b76653c6', 'Anggota', true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES ('98974473-5024-43b4-ab78-6627b76653c6', 'いん', 'onyomi', true) ON CONFLICT DO NOTHING;

INSERT INTO public.items (id, type, character, slug, level, rank_id, meaning_mnemonic, reading_mnemonic) VALUES ('527bfdcb-65ed-4326-b100-b20052901594', 'kanji', '真', '真', 2, 'b8c90d1e-2f3a-4b5c-6d7e-8f9a0b1c2d3e', 'Jika Paus menghabiskan sepanjang hari menatap sirip di tanah, dia akan kehilangan kontak dengan kenyataan. Dia seharusnya fokus pada tugas kepausannya, tapi dia malah melihat sirip ikan yang dia jatuhkan, dan sekarang tidak bisa makan karena kotor. Paus konyol. Anda tidak bisa membiarkan hal ini membuat Anda kecewa. Ada hal lain yang harus kamu lakukan.', 'Anda melakukan yang terbaik untuk membawa Paus kembali ke dunia nyata ketika dia membentak dan menendang tulang kering Anda (しん). Aduh! Apa-apaan ini, Paus! Tapi dia sudah kembali menatap siripnya dan tulang keringmu berdenyut-denyut saat dia menendang.') ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, character = EXCLUDED.character, slug = EXCLUDED.slug, level = EXCLUDED.level, rank_id = EXCLUDED.rank_id, meaning_mnemonic = EXCLUDED.meaning_mnemonic, reading_mnemonic = EXCLUDED.reading_mnemonic;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('527bfdcb-65ed-4326-b100-b20052901594', 'Kenyataan', true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES ('527bfdcb-65ed-4326-b100-b20052901594', 'しん', 'onyomi', true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES ('527bfdcb-65ed-4326-b100-b20052901594', 'ま', 'kunyomi', false) ON CONFLICT DO NOTHING;

INSERT INTO public.items (id, type, character, slug, level, rank_id, meaning_mnemonic, reading_mnemonic) VALUES ('faaea376-668c-409a-ba35-e6294442da75', 'kanji', '帰', '帰', 2, 'b8c90d1e-2f3a-4b5c-6d7e-8f9a0b1c2d3e', 'Sebuah pisau tertancap di dahi Wolverine, dan dia membungkusnya dengan handuk untuk menghentikan pendarahan, tetapi dia benar-benar harus kembali ke rumah.', 'Wolverine ingin pulang, tapi dia tidak bisa menyetir sendiri karena ada pisau di keningnya dan banyak darah, jadi dia meminta temannya si gajah mobil (かえ) untuk mengantarnya. Gajah mobil hanyalah seekor gajah mutan yang memiliki mobil di punggungnya.') ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, character = EXCLUDED.character, slug = EXCLUDED.slug, level = EXCLUDED.level, rank_id = EXCLUDED.rank_id, meaning_mnemonic = EXCLUDED.meaning_mnemonic, reading_mnemonic = EXCLUDED.reading_mnemonic;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('faaea376-668c-409a-ba35-e6294442da75', 'Kembali', true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('faaea376-668c-409a-ba35-e6294442da75', 'Return Home', false) ON CONFLICT DO NOTHING;

INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES ('faaea376-668c-409a-ba35-e6294442da75', 'き', 'onyomi', false) ON CONFLICT DO NOTHING;

INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES ('faaea376-668c-409a-ba35-e6294442da75', 'かえ', 'kunyomi', true) ON CONFLICT DO NOTHING;

INSERT INTO public.items (id, type, character, slug, level, rank_id, meaning_mnemonic, reading_mnemonic) VALUES ('8c46c30e-d57d-476c-90d9-8f1cb10d2a40', 'kanji', '起', '起', 2, 'b8c90d1e-2f3a-4b5c-6d7e-8f9a0b1c2d3e', 'Bertemu dengan diri sendiri dalam mimpi dan Anda pasti akan terbangun.', 'Jika seseorang menabrak dirinya sendiri dan Anda tidak bangun, lihat saja pinggang Anda. Jika Anda mengenakan obi (お) Anda tahu itu mimpi dan pada akhirnya Anda akan terbangun. Jika Anda tidak mengenakan obi maka itu bukanlah mimpi dan Anda tidak perlu membangunkan apa pun.') ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, character = EXCLUDED.character, slug = EXCLUDED.slug, level = EXCLUDED.level, rank_id = EXCLUDED.rank_id, meaning_mnemonic = EXCLUDED.meaning_mnemonic, reading_mnemonic = EXCLUDED.reading_mnemonic;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('8c46c30e-d57d-476c-90d9-8f1cb10d2a40', 'Bangun', true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES ('8c46c30e-d57d-476c-90d9-8f1cb10d2a40', 'き', 'onyomi', false) ON CONFLICT DO NOTHING;

INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES ('8c46c30e-d57d-476c-90d9-8f1cb10d2a40', 'お', 'kunyomi', true) ON CONFLICT DO NOTHING;

INSERT INTO public.items (id, type, character, slug, level, rank_id, meaning_mnemonic, reading_mnemonic) VALUES ('cfdfb0cb-f43c-4099-a978-07c07b913d11', 'kanji', '料', '料', 2, 'b8c90d1e-2f3a-4b5c-6d7e-8f9a0b1c2d3e', 'Anda memiliki centong nasi yang khusus untuk membayar biaya beras. Setiap sendok sesuatu memiliki biaya tambahan, jadi ketika Anda menggunakan suatu bahan, ada biaya yang harus Anda bayar untuk bahan tersebut juga.', 'Suatu hari, sendok bayaran tiba-tiba seukuran baris (りょう) dayung perahu! Apa! Anda seharusnya membayar biaya sebesar perahu dayung sekarang?!') ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, character = EXCLUDED.character, slug = EXCLUDED.slug, level = EXCLUDED.level, rank_id = EXCLUDED.rank_id, meaning_mnemonic = EXCLUDED.meaning_mnemonic, reading_mnemonic = EXCLUDED.reading_mnemonic;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('cfdfb0cb-f43c-4099-a978-07c07b913d11', 'Biaya', true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('cfdfb0cb-f43c-4099-a978-07c07b913d11', 'Material', false) ON CONFLICT DO NOTHING;

INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES ('cfdfb0cb-f43c-4099-a978-07c07b913d11', 'りょう', 'onyomi', true) ON CONFLICT DO NOTHING;

INSERT INTO public.items (id, type, character, slug, level, rank_id, meaning_mnemonic, reading_mnemonic) VALUES ('ce3999fb-43fa-4bb0-a261-b85d5c6533ff', 'kanji', '特', '特', 2, 'b8c90d1e-2f3a-4b5c-6d7e-8f9a0b1c2d3e', 'Kuil sapi ini istimewa. Sapi ini pasti sangat penting sehingga seluruh kuil didedikasikan untuknya.', 'Sapi ini istimewa karena milik Tokugawa (とく) Ieyasu, senapan pertama Keshogunan Tokugawa dan pemersatu Jepang! Dia adalah tokoh super penting dalam sejarah Jepang. Anda benar-benar harus mencarinya dan membaca sedikit tentang dia (saat Anda mengikuti pelajaran ini).') ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, character = EXCLUDED.character, slug = EXCLUDED.slug, level = EXCLUDED.level, rank_id = EXCLUDED.rank_id, meaning_mnemonic = EXCLUDED.meaning_mnemonic, reading_mnemonic = EXCLUDED.reading_mnemonic;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('ce3999fb-43fa-4bb0-a261-b85d5c6533ff', 'Spesial', true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES ('ce3999fb-43fa-4bb0-a261-b85d5c6533ff', 'とく', 'onyomi', true) ON CONFLICT DO NOTHING;

INSERT INTO public.items (id, type, character, slug, level, rank_id, meaning_mnemonic, reading_mnemonic) VALUES ('cf7cafe5-5fea-4b93-b8c2-c66998a2a067', 'kanji', '院', '院', 2, 'b8c90d1e-2f3a-4b5c-6d7e-8f9a0b1c2d3e', 'Bangunan ini memiliki atap dan akan mengajarkanmu tentang asal muasal banyak hal. Itu sebuah institusi!', 'Institusi dimulai dari apa? Dalam (いん)!') ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, character = EXCLUDED.character, slug = EXCLUDED.slug, level = EXCLUDED.level, rank_id = EXCLUDED.rank_id, meaning_mnemonic = EXCLUDED.meaning_mnemonic, reading_mnemonic = EXCLUDED.reading_mnemonic;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('cf7cafe5-5fea-4b93-b8c2-c66998a2a067', 'Institusi', true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES ('cf7cafe5-5fea-4b93-b8c2-c66998a2a067', 'いん', 'onyomi', true) ON CONFLICT DO NOTHING;

INSERT INTO public.items (id, type, character, slug, level, rank_id, meaning_mnemonic, reading_mnemonic) VALUES ('75045e9f-2cae-486d-9474-a7265b072fb0', 'kanji', '病', '病', 2, 'b8c90d1e-2f3a-4b5c-6d7e-8f9a0b1c2d3e', 'Sebatang dinamit yang sakit akan sakit selamanya. Sayangnya tidak ada obat yang efektif untuk batang dinamit, jadi begitu tertular penyakit, mereka akan sakit selamanya.', 'Merasa gugup sepanjang waktu karena meledak secara spontan mungkin akan membuat Anda berkeringat banyak. Dan tahukah Anda apa penyebab berkeringat? B.O. (びょう). Anda akan menjadi dinamit yang bau. B.O. adalah bau yang sangat tidak sedap, dan sakit bukanlah alasan.') ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, character = EXCLUDED.character, slug = EXCLUDED.slug, level = EXCLUDED.level, rank_id = EXCLUDED.rank_id, meaning_mnemonic = EXCLUDED.meaning_mnemonic, reading_mnemonic = EXCLUDED.reading_mnemonic;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('75045e9f-2cae-486d-9474-a7265b072fb0', 'Sakit', true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('75045e9f-2cae-486d-9474-a7265b072fb0', 'Sickness', false) ON CONFLICT DO NOTHING;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('75045e9f-2cae-486d-9474-a7265b072fb0', 'Ill', false) ON CONFLICT DO NOTHING;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('75045e9f-2cae-486d-9474-a7265b072fb0', 'Illness', false) ON CONFLICT DO NOTHING;

INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES ('75045e9f-2cae-486d-9474-a7265b072fb0', 'びょう', 'onyomi', true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES ('75045e9f-2cae-486d-9474-a7265b072fb0', 'や', 'kunyomi', false) ON CONFLICT DO NOTHING;

INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES ('75045e9f-2cae-486d-9474-a7265b072fb0', 'やまい', 'kunyomi', false) ON CONFLICT DO NOTHING;

INSERT INTO public.items (id, type, character, slug, level, rank_id, meaning_mnemonic, reading_mnemonic) VALUES ('5b5be093-c2ed-427b-9304-3a941cf29524', 'kanji', '紙', '紙', 2, 'b8c90d1e-2f3a-4b5c-6d7e-8f9a0b1c2d3e', 'Benang yang mengikatmu dengan klanmu adalah kertas. Surat-suratmu, itu.', 'Anda memerlukan makalah khusus ini untuk membuktikan bahwa Anda bukan seorang Commi (かみ), alias Komunis. Atau itu kamu. Itu sangat tergantung ke mana Anda ingin pergi dan pada dekade apa saat ini.') ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, character = EXCLUDED.character, slug = EXCLUDED.slug, level = EXCLUDED.level, rank_id = EXCLUDED.rank_id, meaning_mnemonic = EXCLUDED.meaning_mnemonic, reading_mnemonic = EXCLUDED.reading_mnemonic;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('5b5be093-c2ed-427b-9304-3a941cf29524', 'Kertas', true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES ('5b5be093-c2ed-427b-9304-3a941cf29524', 'し', 'onyomi', false) ON CONFLICT DO NOTHING;

INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES ('5b5be093-c2ed-427b-9304-3a941cf29524', 'かみ', 'kunyomi', true) ON CONFLICT DO NOTHING;

INSERT INTO public.items (id, type, character, slug, level, rank_id, meaning_mnemonic, reading_mnemonic) VALUES ('436deb91-e160-4d80-95ae-e03178a87100', 'kanji', '旅', '旅', 2, 'b8c90d1e-2f3a-4b5c-6d7e-8f9a0b1c2d3e', 'Jika tahu di lingkungan sekitar Anda mengambil pistol dan mengarahkannya ke arah Anda, Anda mungkin ingin melakukan perjalanan. Tahu ini jelas ada yang salah. Jika ia mengambil pistol dan mengarahkannya ke arah Anda, mungkin sekarang saat yang tepat untuk pergi dan melakukan perjalanan yang telah Anda bicarakan.', 'Rencanamu tidak berhasil dan tahu itu ikut bepergian bersamamu. Dan sekarang dia mengenakan jubah hotelmu (りょ)! Kelihatannya sangat nyaman, terbungkus jubah. Itu bagian terbaik dari melakukan perjalanan, dan dia mencurinya dari Anda.') ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, character = EXCLUDED.character, slug = EXCLUDED.slug, level = EXCLUDED.level, rank_id = EXCLUDED.rank_id, meaning_mnemonic = EXCLUDED.meaning_mnemonic, reading_mnemonic = EXCLUDED.reading_mnemonic;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('436deb91-e160-4d80-95ae-e03178a87100', 'Perjalanan', true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('436deb91-e160-4d80-95ae-e03178a87100', 'Travel', false) ON CONFLICT DO NOTHING;

INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES ('436deb91-e160-4d80-95ae-e03178a87100', 'りょ', 'onyomi', true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES ('436deb91-e160-4d80-95ae-e03178a87100', 'たび', 'kunyomi', false) ON CONFLICT DO NOTHING;

INSERT INTO public.items (id, type, character, slug, level, rank_id, meaning_mnemonic, reading_mnemonic) VALUES ('5761edf2-76f0-4d4e-a61c-ae1ba2815755', 'kanji', '夏', '夏', 2, 'b8c90d1e-2f3a-4b5c-6d7e-8f9a0b1c2d3e', 'Daun mata hanya tumbuh di musim dingin. Namun, setiap daun lainnya akan melakukan hal sebaliknya, yaitu tumbuh di musim panas.', 'Sekarang musim panas! Apa yang kamu lakukan selama musim panas? Anda hanya duduk-duduk dengan simpul pengikat tali (なつ) favorit Anda berulang kali.') ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, character = EXCLUDED.character, slug = EXCLUDED.slug, level = EXCLUDED.level, rank_id = EXCLUDED.rank_id, meaning_mnemonic = EXCLUDED.meaning_mnemonic, reading_mnemonic = EXCLUDED.reading_mnemonic;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('5761edf2-76f0-4d4e-a61c-ae1ba2815755', 'Musim panas', true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES ('5761edf2-76f0-4d4e-a61c-ae1ba2815755', 'げ', 'onyomi', false) ON CONFLICT DO NOTHING;

INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES ('5761edf2-76f0-4d4e-a61c-ae1ba2815755', 'か', 'onyomi', false) ON CONFLICT DO NOTHING;

INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES ('5761edf2-76f0-4d4e-a61c-ae1ba2815755', 'が', 'onyomi', false) ON CONFLICT DO NOTHING;

INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES ('5761edf2-76f0-4d4e-a61c-ae1ba2815755', 'なつ', 'kunyomi', true) ON CONFLICT DO NOTHING;

INSERT INTO public.items (id, type, character, slug, level, rank_id, meaning_mnemonic, reading_mnemonic) VALUES ('c04bd75e-f6dc-4f5b-a919-e43c0a8e45a6', 'kanji', '借', '借', 2, 'b8c90d1e-2f3a-4b5c-6d7e-8f9a0b1c2d3e', 'Dahulu kala, seorang pemimpin hebat berpikir untuk meminjam sesuatu yang berharga dari Anda. Pemimpin ini tidak mengembalikan barang yang dipinjamnya, dan sekarang dia akan membayarnya.', 'Dalam kemarahan Anda, Anda memutuskan untuk menemukan pemimpin ini, mengambil kembali milik Anda, dan sebagai imbalannya, meminjam nyawa pemimpin tersebut. Jadi Anda menemukannya, menangkapnya, dan kemudian melemparkannya ke dalam gubuk tanah (しゃく) di mana Anda menyetrumnya dan melakukan hal-hal buruk lainnya padanya.') ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, character = EXCLUDED.character, slug = EXCLUDED.slug, level = EXCLUDED.level, rank_id = EXCLUDED.rank_id, meaning_mnemonic = EXCLUDED.meaning_mnemonic, reading_mnemonic = EXCLUDED.reading_mnemonic;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('c04bd75e-f6dc-4f5b-a919-e43c0a8e45a6', 'Pinjam', true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES ('c04bd75e-f6dc-4f5b-a919-e43c0a8e45a6', 'しゃく', 'onyomi', true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES ('c04bd75e-f6dc-4f5b-a919-e43c0a8e45a6', 'か', 'kunyomi', false) ON CONFLICT DO NOTHING;

INSERT INTO public.items (id, type, character, slug, level, rank_id, meaning_mnemonic, reading_mnemonic) VALUES ('c3d32c5b-e2fe-4769-b7a0-c74276c08d3c', 'kanji', '勉', '勉', 2, 'b8c90d1e-2f3a-4b5c-6d7e-8f9a0b1c2d3e', 'Maafkan saya, memiliki semua kekuatan ini memberikan banyak tekanan dan tenaga pada tubuh saya. Kekuatanku berasal dari pengerahan otot, jadi mohon maaf jika aku mulai berkeringat.', 'Maaf, sepertinya saya belum memperkenalkan diri. Nama saya Ben (べん) dan saya menggunakan tenaga otot yang kuat untuk menyelesaikan setiap tugas. Ben tahu apa yang Ben inginkan dan bagaimana cara mendapatkannya. Ingatlah itu, anak-anak.') ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, character = EXCLUDED.character, slug = EXCLUDED.slug, level = EXCLUDED.level, rank_id = EXCLUDED.rank_id, meaning_mnemonic = EXCLUDED.meaning_mnemonic, reading_mnemonic = EXCLUDED.reading_mnemonic;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('c3d32c5b-e2fe-4769-b7a0-c74276c08d3c', 'Pengerahan tenaga', true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES ('c3d32c5b-e2fe-4769-b7a0-c74276c08d3c', 'べん', 'onyomi', true) ON CONFLICT DO NOTHING;

INSERT INTO public.items (id, type, character, slug, level, rank_id, meaning_mnemonic, reading_mnemonic) VALUES ('4f337b47-9a7f-4f29-80ce-8ee55c3376a0', 'kanji', '理', '理', 2, 'b8c90d1e-2f3a-4b5c-6d7e-8f9a0b1c2d3e', 'Desa raja adalah alasan dia menjadi raja. Tanpa desa, tidak ada alasan untuk mempunyai raja.', 'Anda tidak dapat memiliki alasan tanpa re (り).') ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, character = EXCLUDED.character, slug = EXCLUDED.slug, level = EXCLUDED.level, rank_id = EXCLUDED.rank_id, meaning_mnemonic = EXCLUDED.meaning_mnemonic, reading_mnemonic = EXCLUDED.reading_mnemonic;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('4f337b47-9a7f-4f29-80ce-8ee55c3376a0', 'Alasan', true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES ('4f337b47-9a7f-4f29-80ce-8ee55c3376a0', 'り', 'onyomi', true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES ('4f337b47-9a7f-4f29-80ce-8ee55c3376a0', 'ことわり', 'kunyomi', false) ON CONFLICT DO NOTHING;

INSERT INTO public.items (id, type, character, slug, level, rank_id, meaning_mnemonic, reading_mnemonic) VALUES ('e45c1e79-76e5-49f4-931e-e5cfddf00ea2', 'kanji', '動', '動', 2, 'b8c90d1e-2f3a-4b5c-6d7e-8f9a0b1c2d3e', 'Ketika ada sesuatu yang berat, Anda membutuhkan banyak tenaga untuk memindahkannya. Itu tidak akan bergerak kecuali Anda menggunakan banyak tenaga. Benda itu berat dan kecuali Anda menggunakan semua kekuatan yang Anda punya, benda itu tidak akan bergerak.', 'Ingat berat 1 ton itu? Sebenarnya itu donat (どう). Donat yang sangat besar, seberat 1 ton. Ini sangat berat dan sulit untuk dipindahkan, tapi enak.') ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, character = EXCLUDED.character, slug = EXCLUDED.slug, level = EXCLUDED.level, rank_id = EXCLUDED.rank_id, meaning_mnemonic = EXCLUDED.meaning_mnemonic, reading_mnemonic = EXCLUDED.reading_mnemonic;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('e45c1e79-76e5-49f4-931e-e5cfddf00ea2', 'Pindahkan', true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES ('e45c1e79-76e5-49f4-931e-e5cfddf00ea2', 'どう', 'onyomi', true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES ('e45c1e79-76e5-49f4-931e-e5cfddf00ea2', 'うご', 'kunyomi', false) ON CONFLICT DO NOTHING;

INSERT INTO public.items (id, type, character, slug, level, rank_id, meaning_mnemonic, reading_mnemonic) VALUES ('fb26eede-689e-4023-bcb0-8356bcebbab2', 'kanji', '問', '問', 2, 'b8c90d1e-2f3a-4b5c-6d7e-8f9a0b1c2d3e', 'Jika Anda menemui mulut gerbang terlebih dahulu, Anda akan mendapat masalah. Menabrakkan mulutmu ke gerbang akan terasa sakit. Banyak. Masalah yang Anda hadapi sekarang adalah pergi ke rumah sakit dan menjahit mulut Anda kembali. Pertanyaannya adalah, bagaimana cara Anda pergi ke rumah sakit?', 'Alasan kamu pertama kali berlari ke gerbang ini adalah karena kamu dikejar monster (もん). Monster itu sendiri sudah menjadi masalah yang cukup besar, apalagi membenturkan mulutmu ke gerbang. Kamu jiwa yang malang dan malang.') ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, character = EXCLUDED.character, slug = EXCLUDED.slug, level = EXCLUDED.level, rank_id = EXCLUDED.rank_id, meaning_mnemonic = EXCLUDED.meaning_mnemonic, reading_mnemonic = EXCLUDED.reading_mnemonic;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('fb26eede-689e-4023-bcb0-8356bcebbab2', 'Masalah', true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('fb26eede-689e-4023-bcb0-8356bcebbab2', 'Question', false) ON CONFLICT DO NOTHING;

INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES ('fb26eede-689e-4023-bcb0-8356bcebbab2', 'もん', 'onyomi', true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES ('fb26eede-689e-4023-bcb0-8356bcebbab2', 'と', 'kunyomi', false) ON CONFLICT DO NOTHING;

INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES ('fb26eede-689e-4023-bcb0-8356bcebbab2', 'とん', 'kunyomi', false) ON CONFLICT DO NOTHING;

INSERT INTO public.items (id, type, character, slug, level, rank_id, meaning_mnemonic, reading_mnemonic) VALUES ('36b4bc5d-c5d5-4c76-8800-a223ccfcf285', 'kanji', '強', '強', 2, 'b8c90d1e-2f3a-4b5c-6d7e-8f9a0b1c2d3e', 'Anda memiliki busur pribadi yang terbuat dari serangga yang sangat kuat. Tubuh serangga sangat tahan lama, sehingga menghasilkan busur yang kuat. Kamu juga harus kuat untuk menggunakannya karena dibuat hanya untuk senjata yang kuat.', 'Anda memiliki busur kuat yang dibuat khusus untuk Anda di きょうと. きょうと terkenal dengan busurnya yang kuat, jadi jika Anda menginginkan yang lain, Anda tahu ke mana harus pergi.') ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, character = EXCLUDED.character, slug = EXCLUDED.slug, level = EXCLUDED.level, rank_id = EXCLUDED.rank_id, meaning_mnemonic = EXCLUDED.meaning_mnemonic, reading_mnemonic = EXCLUDED.reading_mnemonic;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('36b4bc5d-c5d5-4c76-8800-a223ccfcf285', 'Kuat', true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('36b4bc5d-c5d5-4c76-8800-a223ccfcf285', 'Strength', false) ON CONFLICT DO NOTHING;

INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES ('36b4bc5d-c5d5-4c76-8800-a223ccfcf285', 'きょう', 'onyomi', true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES ('36b4bc5d-c5d5-4c76-8800-a223ccfcf285', 'つよ', 'kunyomi', false) ON CONFLICT DO NOTHING;

INSERT INTO public.items (id, type, character, slug, level, rank_id, meaning_mnemonic, reading_mnemonic) VALUES ('9ef4b3ce-5a9b-4f69-8910-dfbb343a65a0', 'kanji', '教', '教', 2, 'b8c90d1e-2f3a-4b5c-6d7e-8f9a0b1c2d3e', 'Seorang guru di musim dingin paling bahagia karena mereka bisa mengajar! Anak-anak tidak bisa keluar dan bermain karena terlalu dingin. Mereka semua harus masuk dan tetap hangat saat guru mengajar!', 'Guru dapat mengajarkan banyak hal tentang Jepang di musim dingin dengan pergi ke きょうと. きょうと adalah tempat semua kuil tua dan sejarah Jepang berpusat. Dan sungguh indah saat turun salju.') ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, character = EXCLUDED.character, slug = EXCLUDED.slug, level = EXCLUDED.level, rank_id = EXCLUDED.rank_id, meaning_mnemonic = EXCLUDED.meaning_mnemonic, reading_mnemonic = EXCLUDED.reading_mnemonic;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('9ef4b3ce-5a9b-4f69-8910-dfbb343a65a0', 'Ajarkan', true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES ('9ef4b3ce-5a9b-4f69-8910-dfbb343a65a0', 'きょう', 'onyomi', true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES ('9ef4b3ce-5a9b-4f69-8910-dfbb343a65a0', 'おし', 'kunyomi', false) ON CONFLICT DO NOTHING;

INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES ('9ef4b3ce-5a9b-4f69-8910-dfbb343a65a0', 'おそ', 'kunyomi', false) ON CONFLICT DO NOTHING;

INSERT INTO public.items (id, type, character, slug, level, rank_id, meaning_mnemonic, reading_mnemonic) VALUES ('248de31e-896c-4634-8530-8548c9525be1', 'kanji', '野', '野', 2, 'b8c90d1e-2f3a-4b5c-6d7e-8f9a0b1c2d3e', 'Desa dahulunya (yang dulunya desa sebelum menjadi desa) adalah sebuah ladang.', 'Di lapangan ini, Yankees (や) biasa bermain.') ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, character = EXCLUDED.character, slug = EXCLUDED.slug, level = EXCLUDED.level, rank_id = EXCLUDED.rank_id, meaning_mnemonic = EXCLUDED.meaning_mnemonic, reading_mnemonic = EXCLUDED.reading_mnemonic;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('248de31e-896c-4634-8530-8548c9525be1', 'Bidang', true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES ('248de31e-896c-4634-8530-8548c9525be1', 'や', 'onyomi', true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES ('248de31e-896c-4634-8530-8548c9525be1', 'の', 'kunyomi', false) ON CONFLICT DO NOTHING;

INSERT INTO public.items (id, type, character, slug, level, rank_id, meaning_mnemonic, reading_mnemonic) VALUES ('69927f04-0a86-404d-bca7-3eb9fde99aa1', 'kanji', '終', '終', 2, 'b8c90d1e-2f3a-4b5c-6d7e-8f9a0b1c2d3e', 'Benang musim dingin terbelah dua ketika tahun berakhir. Setengahnya melambangkan tahun yang baru saja Anda jalani, dan setengahnya lagi melambangkan awal tahun baru, memotong setengah musim dingin dan mengakhiri tahun.', 'Tepat saat musim dingin berakhir, ambil kedua benang itu dan ikatkan ke dalam sepatumu (しゅう). Oh, kamu pikir ini hanya metafora? Bukan, itu benang asli, tapi sekarang secara teknis itu adalah tali sepatu.') ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, character = EXCLUDED.character, slug = EXCLUDED.slug, level = EXCLUDED.level, rank_id = EXCLUDED.rank_id, meaning_mnemonic = EXCLUDED.meaning_mnemonic, reading_mnemonic = EXCLUDED.reading_mnemonic;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('69927f04-0a86-404d-bca7-3eb9fde99aa1', 'Akhir', true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('69927f04-0a86-404d-bca7-3eb9fde99aa1', 'Finish', false) ON CONFLICT DO NOTHING;

INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES ('69927f04-0a86-404d-bca7-3eb9fde99aa1', 'しゅう', 'onyomi', true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES ('69927f04-0a86-404d-bca7-3eb9fde99aa1', 'おわ', 'kunyomi', false) ON CONFLICT DO NOTHING;

INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES ('69927f04-0a86-404d-bca7-3eb9fde99aa1', 'お', 'kunyomi', false) ON CONFLICT DO NOTHING;

INSERT INTO public.items (id, type, character, slug, level, rank_id, meaning_mnemonic, reading_mnemonic) VALUES ('ee2ed68a-ee9d-4afe-b903-517bcf35c340', 'kanji', '悪', '悪', 2, 'b8c90d1e-2f3a-4b5c-6d7e-8f9a0b1c2d3e', 'Di Asia mereka menganggap hati setiap orang otomatis buruk dan jahat.', 'Untungnya, orang-orang di Asia tahu cara menghilangkan kejahatan dari hati Anda dengan akupunktur (あく).') ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, character = EXCLUDED.character, slug = EXCLUDED.slug, level = EXCLUDED.level, rank_id = EXCLUDED.rank_id, meaning_mnemonic = EXCLUDED.meaning_mnemonic, reading_mnemonic = EXCLUDED.reading_mnemonic;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('ee2ed68a-ee9d-4afe-b903-517bcf35c340', 'Buruk', true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('ee2ed68a-ee9d-4afe-b903-517bcf35c340', 'Evil', false) ON CONFLICT DO NOTHING;

INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES ('ee2ed68a-ee9d-4afe-b903-517bcf35c340', 'あく', 'onyomi', true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES ('ee2ed68a-ee9d-4afe-b903-517bcf35c340', 'お', 'onyomi', false) ON CONFLICT DO NOTHING;

INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES ('ee2ed68a-ee9d-4afe-b903-517bcf35c340', 'わる', 'kunyomi', false) ON CONFLICT DO NOTHING;

INSERT INTO public.items (id, type, character, slug, level, rank_id, meaning_mnemonic, reading_mnemonic) VALUES ('9af70324-f30c-464d-b003-0c3832406374', 'kanji', '族', '族', 2, 'b8c90d1e-2f3a-4b5c-6d7e-8f9a0b1c2d3e', 'Jika seseorang sedang menuju ke arah Anda dengan membawa senjata, letakkan anak panah di busur Anda dan kumpulkan suku Anda di belakang Anda karena ini akan menjadi nyata! Orang bodoh bersenjata ini sedang menuju ke arah Anda dan dia bahkan tidak tahu apa yang akan Anda dan suku Anda lakukan padanya. Jika dia mendekat, kemungkinan besar Anda akan menembakkan panah itu tepat ke arahnya.', 'Ketika dia mulai mendekat, Anda melihat bahwa orang ini adalah anggota geng sepeda bosozoku (ぞく). Bosozoku berarti “suku lari” dan orang ini berlari ke arah Anda. Dengan pistol. Jadi kumpulkan sukumu sendiri di belakangmu dan bersiaplah untuk mempertahankan diri melawan anggota bosozoku ini.') ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, character = EXCLUDED.character, slug = EXCLUDED.slug, level = EXCLUDED.level, rank_id = EXCLUDED.rank_id, meaning_mnemonic = EXCLUDED.meaning_mnemonic, reading_mnemonic = EXCLUDED.reading_mnemonic;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('9af70324-f30c-464d-b003-0c3832406374', 'Suku', true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('9af70324-f30c-464d-b003-0c3832406374', 'Family', false) ON CONFLICT DO NOTHING;

INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES ('9af70324-f30c-464d-b003-0c3832406374', 'ぞく', 'onyomi', true) ON CONFLICT DO NOTHING;

INSERT INTO public.items (id, type, character, slug, level, rank_id, meaning_mnemonic, reading_mnemonic) VALUES ('917add9d-33b0-4843-96c2-b5327f4f21c3', 'kanji', '転', '転', 2, 'b8c90d1e-2f3a-4b5c-6d7e-8f9a0b1c2d3e', 'Jika mobil Anda menabrak awan, Anda akan berputar mengelilinginya, bukan langsung melewatinya. Awan sangat sulit untuk dilihat, jadi meskipun Anda berusaha untuk tidak melihatnya, Anda tetap berputar dalam lingkaran rapat di atas dan mengelilingi awan.', 'Anda harus berputar mengelilingi awan sepuluh (てん) kali sebelum awan itu menghilang dan Anda dapat melewatinya.') ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, character = EXCLUDED.character, slug = EXCLUDED.slug, level = EXCLUDED.level, rank_id = EXCLUDED.rank_id, meaning_mnemonic = EXCLUDED.meaning_mnemonic, reading_mnemonic = EXCLUDED.reading_mnemonic;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('917add9d-33b0-4843-96c2-b5327f4f21c3', 'Berputar', true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES ('917add9d-33b0-4843-96c2-b5327f4f21c3', 'てん', 'onyomi', true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES ('917add9d-33b0-4843-96c2-b5327f4f21c3', 'ころ', 'kunyomi', false) ON CONFLICT DO NOTHING;

INSERT INTO public.items (id, type, character, slug, level, rank_id, meaning_mnemonic, reading_mnemonic) VALUES ('957310e3-5b90-4355-96b4-5d96d1d9ddbe', 'kanji', '週', '週', 2, 'b8c90d1e-2f3a-4b5c-6d7e-8f9a0b1c2d3e', 'Gunakan skuter untuk berkeliling dunia dan itu akan memakan waktu seminggu penuh. Tujuh hari penuh!', 'Jika kamu ingin berlari selama seminggu, kamu memerlukan sepatu (しゅう). Sepatunya bagus juga, bukan sandal atau high heel atau boots. Sepatu yang kokoh dan berkualitas tinggi, sehingga Anda tidak terjatuh dari skuter dan melukai diri sendiri.') ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, character = EXCLUDED.character, slug = EXCLUDED.slug, level = EXCLUDED.level, rank_id = EXCLUDED.rank_id, meaning_mnemonic = EXCLUDED.meaning_mnemonic, reading_mnemonic = EXCLUDED.reading_mnemonic;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('957310e3-5b90-4355-96b4-5d96d1d9ddbe', 'Minggu', true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES ('957310e3-5b90-4355-96b4-5d96d1d9ddbe', 'しゅう', 'onyomi', true) ON CONFLICT DO NOTHING;

INSERT INTO public.items (id, type, character, slug, level, rank_id, meaning_mnemonic, reading_mnemonic) VALUES ('4b4703e7-2ddb-48ef-9add-d50191e413fb', 'kanji', '黒', '黒', 2, 'b8c90d1e-2f3a-4b5c-6d7e-8f9a0b1c2d3e', 'Hitam radikal dan hitam kanji sama persis.', 'Anda berada di ruangan yang benar-benar hitam. Tidak ada jalan keluar, dan Anda tidak dapat melihat. Ruangan mulai terisi cairan. Itu masuk ke mulutmu. Anda mencicipinya. Ini Coke (こく)! Mm, Coke yang enak.') ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, character = EXCLUDED.character, slug = EXCLUDED.slug, level = EXCLUDED.level, rank_id = EXCLUDED.rank_id, meaning_mnemonic = EXCLUDED.meaning_mnemonic, reading_mnemonic = EXCLUDED.reading_mnemonic;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('4b4703e7-2ddb-48ef-9add-d50191e413fb', 'Hitam', true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES ('4b4703e7-2ddb-48ef-9add-d50191e413fb', 'こく', 'onyomi', true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES ('4b4703e7-2ddb-48ef-9add-d50191e413fb', 'くろ', 'kunyomi', false) ON CONFLICT DO NOTHING;

INSERT INTO public.items (id, type, character, slug, level, rank_id, meaning_mnemonic, reading_mnemonic) VALUES ('fd190c3d-cb77-4874-bd42-625ee539b1e7', 'kanji', '習', '習', 2, 'b8c90d1e-2f3a-4b5c-6d7e-8f9a0b1c2d3e', 'Anda menemukan beberapa bulu putih dan ingin mempelajari lebih lanjut tentang dari mana asalnya dan terbuat dari apa.', 'Anda belajar bahwa Anda harus mengikat bulu putih ini ke sepatu Anda (しゅう). Anda melakukannya sebelum Anda mengetahui apa yang akan dilakukannya, dan kemudian tiba-tiba Anda melompat keluar dari gedung.') ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, character = EXCLUDED.character, slug = EXCLUDED.slug, level = EXCLUDED.level, rank_id = EXCLUDED.rank_id, meaning_mnemonic = EXCLUDED.meaning_mnemonic, reading_mnemonic = EXCLUDED.reading_mnemonic;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('fd190c3d-cb77-4874-bd42-625ee539b1e7', 'Pelajari', true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES ('fd190c3d-cb77-4874-bd42-625ee539b1e7', 'しゅう', 'onyomi', true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES ('fd190c3d-cb77-4874-bd42-625ee539b1e7', 'なら', 'kunyomi', false) ON CONFLICT DO NOTHING;

INSERT INTO public.items (id, type, character, slug, level, rank_id, meaning_mnemonic, reading_mnemonic) VALUES ('873bb149-ca22-4c23-acf4-fe8a3a849556', 'kanji', '堂', '堂', 2, 'b8c90d1e-2f3a-4b5c-6d7e-8f9a0b1c2d3e', 'Seorang Viking akan mengosongkan mulutnya dari semua kotoran di aula besar. Mereka semua berkumpul di semacam ruang publik dan membuang semua kotoran (secara harfiah dan kiasan) yang mereka punya.', 'Saat para Viking berkumpul untuk menumpahkan kotoran di aula mereka, mereka juga mengisi wajah mereka dengan donat (どう). Ah ya, orang Viking suka makan donat ketika mereka berbicara tentang sampah.') ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, character = EXCLUDED.character, slug = EXCLUDED.slug, level = EXCLUDED.level, rank_id = EXCLUDED.rank_id, meaning_mnemonic = EXCLUDED.meaning_mnemonic, reading_mnemonic = EXCLUDED.reading_mnemonic;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('873bb149-ca22-4c23-acf4-fe8a3a849556', 'Aula', true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('873bb149-ca22-4c23-acf4-fe8a3a849556', 'Public Chamber', false) ON CONFLICT DO NOTHING;

INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES ('873bb149-ca22-4c23-acf4-fe8a3a849556', 'どう', 'onyomi', true) ON CONFLICT DO NOTHING;

INSERT INTO public.items (id, type, character, slug, level, rank_id, meaning_mnemonic, reading_mnemonic) VALUES ('bcc6738d-d6b9-4585-948d-6591a871f6b9', 'kanji', '鳥', '鳥', 2, 'b8c90d1e-2f3a-4b5c-6d7e-8f9a0b1c2d3e', 'Radikal burung dan kanji burung itu sama!', 'Pikirkan tentang burung yang biasa-biasa saja, apa pun yang terlintas di benak Anda pertama kali baik-baik saja. Kemudian, burung kesayanganmu membengkak. Bentuk wajah, lalu tangan, mulailah merentangkan burung hingga meledak ke luar. Berlumuran darah dan bulu adalah Nyonya Chou (ちょう).') ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, character = EXCLUDED.character, slug = EXCLUDED.slug, level = EXCLUDED.level, rank_id = EXCLUDED.rank_id, meaning_mnemonic = EXCLUDED.meaning_mnemonic, reading_mnemonic = EXCLUDED.reading_mnemonic;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('bcc6738d-d6b9-4585-948d-6591a871f6b9', 'Burung', true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES ('bcc6738d-d6b9-4585-948d-6591a871f6b9', 'ちょう', 'onyomi', true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES ('bcc6738d-d6b9-4585-948d-6591a871f6b9', 'とり', 'kunyomi', false) ON CONFLICT DO NOTHING;

-- 4. Insert Vocabularies
INSERT INTO public.items (id, type, character, slug, level, rank_id, meaning_mnemonic, description) VALUES ('a9f8c478-67fb-4d53-939f-598548f40caf', 'vocabulary', '夏', '夏', 2, 'b8c90d1e-2f3a-4b5c-6d7e-8f9a0b1c2d3e', 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.', 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.') ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, character = EXCLUDED.character, slug = EXCLUDED.slug, level = EXCLUDED.level, rank_id = EXCLUDED.rank_id, meaning_mnemonic = EXCLUDED.meaning_mnemonic, description = EXCLUDED.description;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('a9f8c478-67fb-4d53-939f-598548f40caf', 'Musim panas', true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES ('a9f8c478-67fb-4d53-939f-598548f40caf', 'なつ', NULL, true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('a9f8c478-67fb-4d53-939f-598548f40caf', '今年の夏は、さく年よりもあついです。', 'Musim panas kali ini lebih panas dibandingkan tahun lalu.') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('a9f8c478-67fb-4d53-939f-598548f40caf', '近いうちに夏ワンピをかいに行きたいんだよね。', 'Saya ingin membeli beberapa gaun musim panas dalam waktu dekat.') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('a9f8c478-67fb-4d53-939f-598548f40caf', '夏にして楽しいことは三つだけだ。映画、ビデオゲーム、それから木彫の鴨を作ること。', 'Musim panas hanya baik untuk tiga hal. Film, video game, dan ukiran bebek.') ON CONFLICT DO NOTHING;

INSERT INTO public.items (id, type, character, slug, level, rank_id, meaning_mnemonic, description) VALUES ('78d7cf35-93bb-4e4b-906a-33d9063221db', 'vocabulary', '夏休み', '夏休み', 2, 'b8c90d1e-2f3a-4b5c-6d7e-8f9a0b1c2d3e', 'Anda tahu bahwa 夏 berarti musim panas dan 休 berarti istirahat. Apa itu "istirahat musim panas"? Ini liburan musim panas atau liburan musim panas.', 'Anda tahu bahwa 夏 berarti musim panas dan 休 berarti istirahat. Apa itu "istirahat musim panas"? Ini liburan musim panas atau liburan musim panas.') ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, character = EXCLUDED.character, slug = EXCLUDED.slug, level = EXCLUDED.level, rank_id = EXCLUDED.rank_id, meaning_mnemonic = EXCLUDED.meaning_mnemonic, description = EXCLUDED.description;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('78d7cf35-93bb-4e4b-906a-33d9063221db', 'Liburan Musim Panas', true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('78d7cf35-93bb-4e4b-906a-33d9063221db', 'Summer Break', false) ON CONFLICT DO NOTHING;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('78d7cf35-93bb-4e4b-906a-33d9063221db', 'Summer Holiday', false) ON CONFLICT DO NOTHING;

INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES ('78d7cf35-93bb-4e4b-906a-33d9063221db', 'なつやすみ', NULL, true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('78d7cf35-93bb-4e4b-906a-33d9063221db', '夏休みは、一ヶ月あります。', 'Liburan musim panas berlangsung selama satu bulan.') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('78d7cf35-93bb-4e4b-906a-33d9063221db', '夏休みにおきなわでダイビングをした時、しんじられないくらいたく山のしゅるいの魚を見ることができました！', 'Saya tidak percaya berbagai jenis ikan yang kami lihat saat menyelam di Okinawa selama liburan musim panas.') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('78d7cf35-93bb-4e4b-906a-33d9063221db', '小さいころ、夏休みに両親がディズニーランドに連れて行ってくれました。でも、帰り際、両親は何と私のことを忘れて帰ってしまったのです。あの時だけは、迷子になったことを嬉しく思いましたね。', 'Ketika saya masih kecil, orang tua saya membawa saya ke Disney Land untuk liburan musim panas, tapi mereka melupakan saya di sana ketika mereka pergi. Itulah satu-satunya saat aku bahagia karena tersesat.') ON CONFLICT DO NOTHING;

INSERT INTO public.items (id, type, character, slug, level, rank_id, meaning_mnemonic, description) VALUES ('5409148b-976a-492e-92a4-6d237ce22b5a', 'vocabulary', '紙', '紙', 2, 'b8c90d1e-2f3a-4b5c-6d7e-8f9a0b1c2d3e', 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.', 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.') ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, character = EXCLUDED.character, slug = EXCLUDED.slug, level = EXCLUDED.level, rank_id = EXCLUDED.rank_id, meaning_mnemonic = EXCLUDED.meaning_mnemonic, description = EXCLUDED.description;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('5409148b-976a-492e-92a4-6d237ce22b5a', 'Kertas', true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES ('5409148b-976a-492e-92a4-6d237ce22b5a', 'かみ', NULL, true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('5409148b-976a-492e-92a4-6d237ce22b5a', '紙とえんぴつとけしゴムをつくえに出してください。', 'Tolong letakkan beberapa kertas, pensil, dan penghapus di meja Anda.') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('5409148b-976a-492e-92a4-6d237ce22b5a', 'あたらしい紙をかうのがたのしみでしかたがない。', 'Saya sangat menantikan untuk membeli selembar kertas baru.') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('5409148b-976a-492e-92a4-6d237ce22b5a', '昨日、紙の切れ端に詩を書いている狼を見かけた。', 'Kemarin, saya melihat seekor serigala menulis puisi di selembar kertas.') ON CONFLICT DO NOTHING;

INSERT INTO public.items (id, type, character, slug, level, rank_id, meaning_mnemonic, description) VALUES ('09e8b29a-7f20-4980-b870-b0f0c2ee4fc8', 'vocabulary', '手紙', '手紙', 2, 'b8c90d1e-2f3a-4b5c-6d7e-8f9a0b1c2d3e', 'Kertas tangan adalah surat karena surat pada umumnya ditulis dengan tangan di atas kertas.

Jika Anda menginginkan gambar yang lebih gamblang, bayangkan menulis surat di tangan Anda, dan betapa sakitnya jika tangan Anda dipotong dan dikirimkan.', 'Kertas tangan adalah surat karena surat pada umumnya ditulis dengan tangan di atas kertas.

Jika Anda menginginkan gambar yang lebih gamblang, bayangkan menulis surat di tangan Anda, dan betapa sakitnya jika tangan Anda dipotong dan dikirimkan.') ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, character = EXCLUDED.character, slug = EXCLUDED.slug, level = EXCLUDED.level, rank_id = EXCLUDED.rank_id, meaning_mnemonic = EXCLUDED.meaning_mnemonic, description = EXCLUDED.description;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('09e8b29a-7f20-4980-b870-b0f0c2ee4fc8', 'Surat', true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES ('09e8b29a-7f20-4980-b870-b0f0c2ee4fc8', 'てがみ', NULL, true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('09e8b29a-7f20-4980-b870-b0f0c2ee4fc8', '外国に手紙を出しました。', 'Saya mengirim surat ke luar negeri.') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('09e8b29a-7f20-4980-b870-b0f0c2ee4fc8', 'その金正日からの手紙、ネットオークションに出しちゃえば？きっとだれかしらかうと思うよ。', 'Mengapa Anda tidak memasang surat dari Kim Jong Il untuk dilelang secara online? Saya pikir seseorang akan membelinya.') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('09e8b29a-7f20-4980-b870-b0f0c2ee4fc8', '私はコカコーラ宛に、心のこもった手紙を書いて、どうして彼らの製品にたくさん砂糖が入っているのかについて尋ねたいと思います。', 'Saya akan menulis surat yang sangat pedas kepada Coca-Cola dan bertanya mengapa ada begitu banyak gula dalam produk mereka.') ON CONFLICT DO NOTHING;

INSERT INTO public.items (id, type, character, slug, level, rank_id, meaning_mnemonic, description) VALUES ('6b277049-30b8-4d0b-ad8a-a9ae4c8b1498', 'vocabulary', '通る', '通る', 2, 'b8c90d1e-2f3a-4b5c-6d7e-8f9a0b1c2d3e', 'Kata ini terdiri dari kanji dengan hiragana ditempelkan. Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanjinya sendiri artinya melewati, jadi versi vocab verbanya bermakna hal-hal seperti melewati, melewati, bepergian, dan mampir.', 'Kata ini terdiri dari kanji dengan hiragana ditempelkan. Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanjinya sendiri artinya melewati, jadi versi vocab verbanya bermakna hal-hal seperti melewati, melewati, bepergian, dan mampir.') ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, character = EXCLUDED.character, slug = EXCLUDED.slug, level = EXCLUDED.level, rank_id = EXCLUDED.rank_id, meaning_mnemonic = EXCLUDED.meaning_mnemonic, description = EXCLUDED.description;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('6b277049-30b8-4d0b-ad8a-a9ae4c8b1498', 'Untuk Lulus', true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('6b277049-30b8-4d0b-ad8a-a9ae4c8b1498', 'To Pass Through', false) ON CONFLICT DO NOTHING;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('6b277049-30b8-4d0b-ad8a-a9ae4c8b1498', 'To Travel Along', false) ON CONFLICT DO NOTHING;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('6b277049-30b8-4d0b-ad8a-a9ae4c8b1498', 'To Stop By', false) ON CONFLICT DO NOTHING;

INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES ('6b277049-30b8-4d0b-ad8a-a9ae4c8b1498', 'とおる', NULL, true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('6b277049-30b8-4d0b-ad8a-a9ae4c8b1498', 'このみちは、ほそくて通りにくいです。', 'Jalan ini sempit dan sulit untuk dilalui.') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('6b277049-30b8-4d0b-ad8a-a9ae4c8b1498', '日本ごがペラペラになるなんてありえないと思うかもしれませんが、それはあたらしい言ごを学ぶだれもが通る道です。', 'Tampaknya mustahil untuk menjadi fasih berbahasa Jepang, tetapi setiap orang yang mempelajari bahasa baru juga mengalami hal yang sama.') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('6b277049-30b8-4d0b-ad8a-a9ae4c8b1498', 'お茶会のためのメープルシロップを買うために、カナダを通ってイギリスに行った。', 'Saya mampir ke Kanada dalam perjalanan ke Inggris untuk membeli sirup maple untuk pesta teh.') ON CONFLICT DO NOTHING;

INSERT INTO public.items (id, type, character, slug, level, rank_id, meaning_mnemonic, description) VALUES ('ea673baf-394d-4015-b943-1a6ae6c2c9da', 'vocabulary', '強い', '強い', 2, 'b8c90d1e-2f3a-4b5c-6d7e-8f9a0b1c2d3e', 'Ini adalah kanji tunggal dengan い di akhir, artinya Anda tahu itu mungkin kata sifat. Apa bentuk kata sifat dari kuat? Itu juga kuat.', 'Ini adalah kanji tunggal dengan い di akhir, artinya Anda tahu itu mungkin kata sifat. Apa bentuk kata sifat dari kuat? Itu juga kuat.') ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, character = EXCLUDED.character, slug = EXCLUDED.slug, level = EXCLUDED.level, rank_id = EXCLUDED.rank_id, meaning_mnemonic = EXCLUDED.meaning_mnemonic, description = EXCLUDED.description;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('ea673baf-394d-4015-b943-1a6ae6c2c9da', 'Kuat', true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES ('ea673baf-394d-4015-b943-1a6ae6c2c9da', 'つよい', NULL, true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('ea673baf-394d-4015-b943-1a6ae6c2c9da', 'この中で一ばん強いのはだれですか。', 'Siapa yang terkuat di antara orang-orang ini?') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('ea673baf-394d-4015-b943-1a6ae6c2c9da', 'クチバシと羽の色からさっするに、こいつはおそらくめちゃくちゃ強いカラスだね。', 'Dilihat dari bentuk paruh dan warna bulunya, ini mungkin burung gagak yang sangat kuat.') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('ea673baf-394d-4015-b943-1a6ae6c2c9da', '海流はとても強く、その猫を川まで運んだ。', 'Arus laut terlalu kuat untuk kucing dan ia terbawa arus.') ON CONFLICT DO NOTHING;

INSERT INTO public.items (id, type, character, slug, level, rank_id, meaning_mnemonic, description) VALUES ('f18d3198-02e4-472c-87a8-6988f61ac94e', 'vocabulary', '強力', '強力', 2, 'b8c90d1e-2f3a-4b5c-6d7e-8f9a0b1c2d3e', 'Anda memiliki kekuatan yang kuat. Anda kuat dan berkuasa. Rasakan kekuatanmu.', 'Anda memiliki kekuatan yang kuat. Anda kuat dan berkuasa. Rasakan kekuatanmu.') ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, character = EXCLUDED.character, slug = EXCLUDED.slug, level = EXCLUDED.level, rank_id = EXCLUDED.rank_id, meaning_mnemonic = EXCLUDED.meaning_mnemonic, description = EXCLUDED.description;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('f18d3198-02e4-472c-87a8-6988f61ac94e', 'Kekuatan', true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('f18d3198-02e4-472c-87a8-6988f61ac94e', 'Strong', false) ON CONFLICT DO NOTHING;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('f18d3198-02e4-472c-87a8-6988f61ac94e', 'Powerful', false) ON CONFLICT DO NOTHING;

INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES ('f18d3198-02e4-472c-87a8-6988f61ac94e', 'きょうりょく', NULL, true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('f18d3198-02e4-472c-87a8-6988f61ac94e', 'このボンドは、かなり強力なので気をつけてください。', 'Lem ini cukup kuat, jadi harap berhati-hati.') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('f18d3198-02e4-472c-87a8-6988f61ac94e', '強力なミニウォーターポンプの作り方をおしえてもらいました。', 'Saya diajari cara membuat pompa air mini yang bertenaga.') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('f18d3198-02e4-472c-87a8-6988f61ac94e', '彼女を見つめると、まるで十人力ぐらい強力になったように感じる。', 'Ketika saya melihatnya, saya merasa seolah-olah saya memiliki kekuatan sepuluh pria.') ON CONFLICT DO NOTHING;

INSERT INTO public.items (id, type, character, slug, level, rank_id, meaning_mnemonic, description) VALUES ('b56dfc09-3bee-44e8-a8e9-5d8d446c2f20', 'vocabulary', '教える', '教える', 2, 'b8c90d1e-2f3a-4b5c-6d7e-8f9a0b1c2d3e', 'Kata ini terdiri dari kanji dengan hiragana ditempelkan. Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanjinya sendiri artinya mengajar, jadi versi vocab verbanya artinya mengajar. Kata ini juga digunakan untuk mengatakan dalam pengertian yang lebih umum.', 'Kata ini terdiri dari kanji dengan hiragana ditempelkan. Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanjinya sendiri artinya mengajar, jadi versi vocab verbanya artinya mengajar. Kata ini juga digunakan untuk mengatakan dalam pengertian yang lebih umum.') ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, character = EXCLUDED.character, slug = EXCLUDED.slug, level = EXCLUDED.level, rank_id = EXCLUDED.rank_id, meaning_mnemonic = EXCLUDED.meaning_mnemonic, description = EXCLUDED.description;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('b56dfc09-3bee-44e8-a8e9-5d8d446c2f20', 'Untuk Mengajar', true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('b56dfc09-3bee-44e8-a8e9-5d8d446c2f20', 'To Tell', false) ON CONFLICT DO NOTHING;

INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES ('b56dfc09-3bee-44e8-a8e9-5d8d446c2f20', 'おしえる', NULL, true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('b56dfc09-3bee-44e8-a8e9-5d8d446c2f20', 'こたえ方を教えてください。', 'Tolong ajari saya bagaimana menjawabnya.') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('b56dfc09-3bee-44e8-a8e9-5d8d446c2f20', 'ワニカニで日本ごを教える人の中には、「鬼コーチ」はいないよね？', 'Tidak ada "pelatih setan" di antara orang-orang yang mengajar bahasa Jepang di WaniKani, bukan?') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('b56dfc09-3bee-44e8-a8e9-5d8d446c2f20', '皆さん、お早うございます。今日は、皆さんに、茄子を食べることの危険性について教えたいと思います。', 'Selamat pagi, kelas. Hari ini saya akan mengajari Anda tentang bahaya makan terong.') ON CONFLICT DO NOTHING;

INSERT INTO public.items (id, type, character, slug, level, rank_id, meaning_mnemonic, description) VALUES ('e6547c0d-432c-4a6a-8d41-64bd02bac8d4', 'vocabulary', '教室', '教室', 2, 'b8c90d1e-2f3a-4b5c-6d7e-8f9a0b1c2d3e', 'Ruang pengajaran hanyalah ruang kelas.', 'Ruang pengajaran hanyalah ruang kelas.') ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, character = EXCLUDED.character, slug = EXCLUDED.slug, level = EXCLUDED.level, rank_id = EXCLUDED.rank_id, meaning_mnemonic = EXCLUDED.meaning_mnemonic, description = EXCLUDED.description;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('e6547c0d-432c-4a6a-8d41-64bd02bac8d4', 'Ruang Kelas', true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES ('e6547c0d-432c-4a6a-8d41-64bd02bac8d4', 'きょうしつ', NULL, true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('e6547c0d-432c-4a6a-8d41-64bd02bac8d4', '学生は、教室ではじめに何をしますか。', 'Apa yang pertama kali akan dilakukan siswa di kelas?') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('e6547c0d-432c-4a6a-8d41-64bd02bac8d4', 'かれは教室でタバコをくわえたところを、先生に目げきされました。', 'Guru menyaksikan dia memasukkan rokok ke mulutnya di dalam kelas.') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('e6547c0d-432c-4a6a-8d41-64bd02bac8d4', '先生がいなくなったのはたったの五分間だけだったが、大学生たちは完璧に教室を滅茶苦茶にしてしまった。', 'Gurunya baru pergi selama lima menit, namun para mahasiswa telah mengobrak-abrik ruang kelas.') ON CONFLICT DO NOTHING;

INSERT INTO public.items (id, type, character, slug, level, rank_id, meaning_mnemonic, description) VALUES ('8c869abf-369c-4d27-98ae-97b25c6eb6d4', 'vocabulary', '心理学', '心理学', 2, 'b8c90d1e-2f3a-4b5c-6d7e-8f9a0b1c2d3e', 'Alasan hati Anda melakukan apa yang dilakukannya semuanya bersifat psikologis. Ilmu yang mempelajari hal tersebut adalah psikologi.', 'Alasan hati Anda melakukan apa yang dilakukannya semuanya bersifat psikologis. Ilmu yang mempelajari hal tersebut adalah psikologi.') ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, character = EXCLUDED.character, slug = EXCLUDED.slug, level = EXCLUDED.level, rank_id = EXCLUDED.rank_id, meaning_mnemonic = EXCLUDED.meaning_mnemonic, description = EXCLUDED.description;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('8c869abf-369c-4d27-98ae-97b25c6eb6d4', 'Psikologi', true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES ('8c869abf-369c-4d27-98ae-97b25c6eb6d4', 'しんりがく', NULL, true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('8c869abf-369c-4d27-98ae-97b25c6eb6d4', 'えいぎょうをするなら、心理学を学んだ方がいいよ。', 'Anda harus belajar psikologi jika Anda bekerja di bidang penjualan.') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('8c869abf-369c-4d27-98ae-97b25c6eb6d4', '心理学のせつ明によると「あい手にひどいことが言えるということは、その人にいぞんしてるということ」らしいです。', 'Menurut penjelasan psikologi, sepertinya ketika Anda bisa mengatakan sesuatu yang jahat kepada seseorang, Anda sebenarnya sedang bergantung pada mereka.') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('8c869abf-369c-4d27-98ae-97b25c6eb6d4', '私は大学で犯罪心理学を専攻していました。', 'Jurusan saya adalah psikologi kriminal di perguruan tinggi.') ON CONFLICT DO NOTHING;

INSERT INTO public.items (id, type, character, slug, level, rank_id, meaning_mnemonic, description) VALUES ('a7e79eda-66bc-4dbb-bb41-0aabd985cfb0', 'vocabulary', '地理', '地理', 2, 'b8c90d1e-2f3a-4b5c-6d7e-8f9a0b1c2d3e', 'Alasan bumi menjadi seperti ini adalah karena letak geografisnya. Meskipun mungkin tampak aneh bahwa geografi membawa nalar ke bumi, jika Anda menganggap geografi sebagai sebuah studi, maka Anda juga dapat memikirkan bagaimana Anda mencoba untuk mendapatkan nalar melalui hal tersebut.', 'Alasan bumi menjadi seperti ini adalah karena letak geografisnya. Meskipun mungkin tampak aneh bahwa geografi membawa nalar ke bumi, jika Anda menganggap geografi sebagai sebuah studi, maka Anda juga dapat memikirkan bagaimana Anda mencoba untuk mendapatkan nalar melalui hal tersebut.') ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, character = EXCLUDED.character, slug = EXCLUDED.slug, level = EXCLUDED.level, rank_id = EXCLUDED.rank_id, meaning_mnemonic = EXCLUDED.meaning_mnemonic, description = EXCLUDED.description;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('a7e79eda-66bc-4dbb-bb41-0aabd985cfb0', 'Geografi', true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES ('a7e79eda-66bc-4dbb-bb41-0aabd985cfb0', 'ちり', NULL, true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('a7e79eda-66bc-4dbb-bb41-0aabd985cfb0', '一人で地理のべん強をするのもすきですが、友だちとべん強する方がたのしいです。', 'Aku juga suka belajar geografi sendiri, tapi lebih asyik belajar bersama temanku.') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('a7e79eda-66bc-4dbb-bb41-0aabd985cfb0', 'アメリカ人の友人は地理が全くのにが手で、さい近まで日本が中国の首とだとおもっていたらしい。', 'Teman Amerika saya sama sekali tidak pandai geografi, jadi saya dengar dia dulu mengira Jepang adalah ibu kota Tiongkok hingga saat ini.') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('a7e79eda-66bc-4dbb-bb41-0aabd985cfb0', '俺たちが道に迷ったってどういうことだよ？お前、地理の先公じゃねえのかよ？', 'Apa maksudmu kita tersesat? Bukankah Anda seorang guru geografi?') ON CONFLICT DO NOTHING;

INSERT INTO public.items (id, type, character, slug, level, rank_id, meaning_mnemonic, description) VALUES ('36a7a780-1e95-49b5-9c4f-cdda9c2129c3', 'vocabulary', '先週', '先週', 2, 'b8c90d1e-2f3a-4b5c-6d7e-8f9a0b1c2d3e', 'Minggu sebelumnya adalah minggu lalu.', 'Minggu sebelumnya adalah minggu lalu.') ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, character = EXCLUDED.character, slug = EXCLUDED.slug, level = EXCLUDED.level, rank_id = EXCLUDED.rank_id, meaning_mnemonic = EXCLUDED.meaning_mnemonic, description = EXCLUDED.description;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('36a7a780-1e95-49b5-9c4f-cdda9c2129c3', 'Minggu Lalu', true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES ('36a7a780-1e95-49b5-9c4f-cdda9c2129c3', 'せんしゅう', NULL, true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('36a7a780-1e95-49b5-9c4f-cdda9c2129c3', '先週は学校はお休みでした。', 'Sekolah libur minggu lalu.') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('36a7a780-1e95-49b5-9c4f-cdda9c2129c3', '大きくなったねー。先週はまだあんなに小さかったのに。', 'Anda yakin telah berkembang pesat! Kamu masih kecil minggu lalu.') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('36a7a780-1e95-49b5-9c4f-cdda9c2129c3', '先週出席した経済相互援助会議で、喋る犬にインタビューされたんだが、あいつは本当に嫌なやつだった。', 'Saya diwawancarai oleh seekor anjing yang berbicara tentang konvensi Comecon yang saya hadiri minggu lalu. Dia sangat menghina.') ON CONFLICT DO NOTHING;

INSERT INTO public.items (id, type, character, slug, level, rank_id, meaning_mnemonic, description) VALUES ('ec533f91-8fde-4690-bb90-24494030f6cf', 'vocabulary', '今週', '今週', 2, 'b8c90d1e-2f3a-4b5c-6d7e-8f9a0b1c2d3e', 'Minggu sekarang adalah minggu ini.', 'Minggu sekarang adalah minggu ini.') ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, character = EXCLUDED.character, slug = EXCLUDED.slug, level = EXCLUDED.level, rank_id = EXCLUDED.rank_id, meaning_mnemonic = EXCLUDED.meaning_mnemonic, description = EXCLUDED.description;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('ec533f91-8fde-4690-bb90-24494030f6cf', 'Minggu Ini', true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES ('ec533f91-8fde-4690-bb90-24494030f6cf', 'こんしゅう', NULL, true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('ec533f91-8fde-4690-bb90-24494030f6cf', '今週は仕ごとがたくさんあります。', 'Ada banyak pekerjaan yang harus diselesaikan minggu ini.') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('ec533f91-8fde-4690-bb90-24494030f6cf', '今週の火よう日の午前十一じに、しぶ谷のハチ公前でまち合わせをしましょう。', 'Mari kita bertemu di depan patung Hachiko pada jam 11 pagi hari Selasa ini.') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('ec533f91-8fde-4690-bb90-24494030f6cf', '新しいゲームを４つ買ったので、今週はかなり忙しくなる。', 'Minggu ini akan sangat sibuk karena saya baru saja membeli empat video game baru.') ON CONFLICT DO NOTHING;

INSERT INTO public.items (id, type, character, slug, level, rank_id, meaning_mnemonic, description) VALUES ('ed3f195c-710e-4d81-9a62-a2467054dabb', 'vocabulary', '鳥', '鳥', 2, 'b8c90d1e-2f3a-4b5c-6d7e-8f9a0b1c2d3e', 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.', 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.') ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, character = EXCLUDED.character, slug = EXCLUDED.slug, level = EXCLUDED.level, rank_id = EXCLUDED.rank_id, meaning_mnemonic = EXCLUDED.meaning_mnemonic, description = EXCLUDED.description;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('ed3f195c-710e-4d81-9a62-a2467054dabb', 'Burung', true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES ('ed3f195c-710e-4d81-9a62-a2467054dabb', 'とり', NULL, true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('ed3f195c-710e-4d81-9a62-a2467054dabb', 'この公えんには、きれいな鳥がたくさんいます。', 'Ada banyak burung cantik di taman ini.') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('ed3f195c-710e-4d81-9a62-a2467054dabb', 'けさカーテンをあけたら、何もかもが鳥のふんにおおわれていました。', 'Saat saya membuka tirai pagi ini, semuanya tertutup kotoran burung.') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('ed3f195c-710e-4d81-9a62-a2467054dabb', '自分が鳥だったらいいのになと思うよ。だって、そうすればもう鳥みたいに歩いているとからかわれないだろうからね。', 'Saya berharap saya menjadi seekor burung karena saya tidak akan diolok-olok karena berjalan seperti burung.') ON CONFLICT DO NOTHING;

INSERT INTO public.items (id, type, character, slug, level, rank_id, meaning_mnemonic, description) VALUES ('276aeffc-d636-4a89-88b3-12a018185743', 'vocabulary', '白鳥', '白鳥', 2, 'b8c90d1e-2f3a-4b5c-6d7e-8f9a0b1c2d3e', 'Tentu saja ada banyak burung putih di luar sana, tetapi ada satu yang sangat menonjol jika Anda bertanya kepada saya. Burung itu adalah angsa. Besar, putih, dan megah.', 'Tentu saja ada banyak burung putih di luar sana, tetapi ada satu yang sangat menonjol jika Anda bertanya kepada saya. Burung itu adalah angsa. Besar, putih, dan megah.') ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, character = EXCLUDED.character, slug = EXCLUDED.slug, level = EXCLUDED.level, rank_id = EXCLUDED.rank_id, meaning_mnemonic = EXCLUDED.meaning_mnemonic, description = EXCLUDED.description;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('276aeffc-d636-4a89-88b3-12a018185743', 'Angsa', true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES ('276aeffc-d636-4a89-88b3-12a018185743', 'はくちょう', NULL, true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('276aeffc-d636-4a89-88b3-12a018185743', '自どりをするためだけに白鳥をみずうみから引きずり出すなんてひどすぎるよ。', 'Menarik angsa keluar dari danau hanya untuk berfoto selfie adalah tindakan yang terlalu kejam.') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('276aeffc-d636-4a89-88b3-12a018185743', '白ワインは魚りょうりに合うっていうけど、白鳥りょうりに合うワインは何か知っていますか？', 'Katanya anggur putih cocok dipadukan dengan ikan, tapi tahukah Anda jenis anggur apa yang cocok dipadukan dengan angsa?') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('276aeffc-d636-4a89-88b3-12a018185743', '白鳥はとても美しいが、汚らしい言葉遣いをする。', 'Angsa sangat cantik, tapi mereka menggunakan kata-kata kotor.') ON CONFLICT DO NOTHING;

INSERT INTO public.items (id, type, character, slug, level, rank_id, meaning_mnemonic, description) VALUES ('5318b8e0-ed63-4c0f-bbad-30bd170c838a', 'vocabulary', '黒い', '黒い', 2, 'b8c90d1e-2f3a-4b5c-6d7e-8f9a0b1c2d3e', 'Ini adalah kanji tunggal dengan い di akhir, artinya Anda tahu itu mungkin kata sifat. Apa bentuk kata sifat dari hitam? Warnanya juga hitam. Catatan Khusus: Versi kata benda hitam juga ada dalam bahasa Jepang. Itu hanya 黒 dengan pengucapan yang sama, tetapi tanpa い yang menjadikannya kata sifat-tastic.', 'Ini adalah kanji tunggal dengan い di akhir, artinya Anda tahu itu mungkin kata sifat. Apa bentuk kata sifat dari hitam? Warnanya juga hitam. Catatan Khusus: Versi kata benda hitam juga ada dalam bahasa Jepang. Itu hanya 黒 dengan pengucapan yang sama, tetapi tanpa い yang menjadikannya kata sifat-tastic.') ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, character = EXCLUDED.character, slug = EXCLUDED.slug, level = EXCLUDED.level, rank_id = EXCLUDED.rank_id, meaning_mnemonic = EXCLUDED.meaning_mnemonic, description = EXCLUDED.description;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('5318b8e0-ed63-4c0f-bbad-30bd170c838a', 'Hitam', true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES ('5318b8e0-ed63-4c0f-bbad-30bd170c838a', 'くろい', NULL, true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('5318b8e0-ed63-4c0f-bbad-30bd170c838a', 'その上の、黒いぼう子をとってください。', 'Bisakah kamu mengambilkanku topi hitam di atas sana?') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('5318b8e0-ed63-4c0f-bbad-30bd170c838a', 'あの黒ひげの男ははら黒いことで有名です。', 'Pria berjanggut hitam itu terkenal berhati hitam.') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('5318b8e0-ed63-4c0f-bbad-30bd170c838a', '私の一番好きなテレビ番組は、「黒い画面」です。この番組は、停電になった時だけ放送されます。', 'Saluran favorit saya di TV disebut "Layar Hitam". Itu hanya mengudara ketika listrik padam.') ON CONFLICT DO NOTHING;

INSERT INTO public.items (id, type, character, slug, level, rank_id, meaning_mnemonic, description) VALUES ('2dbfa41f-f876-4f8d-bfbb-2068190046d4', 'vocabulary', '黒人', '黒人', 2, 'b8c90d1e-2f3a-4b5c-6d7e-8f9a0b1c2d3e', 'Orang kulit hitam hanyalah orang kulit hitam, seperti 白人 adalah "orang kulit putih", tetapi warnanya berbeda.', 'Orang kulit hitam hanyalah orang kulit hitam, seperti 白人 adalah "orang kulit putih", tetapi warnanya berbeda.') ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, character = EXCLUDED.character, slug = EXCLUDED.slug, level = EXCLUDED.level, rank_id = EXCLUDED.rank_id, meaning_mnemonic = EXCLUDED.meaning_mnemonic, description = EXCLUDED.description;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('2dbfa41f-f876-4f8d-bfbb-2068190046d4', 'Orang Kulit Hitam', true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('2dbfa41f-f876-4f8d-bfbb-2068190046d4', 'Black People', false) ON CONFLICT DO NOTHING;

INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES ('2dbfa41f-f876-4f8d-bfbb-2068190046d4', 'こくじん', NULL, true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('2dbfa41f-f876-4f8d-bfbb-2068190046d4', 'なぜ未だに黒人をさべつする人がいるのか、りかいできません。', 'Saya tidak mengerti mengapa masih ada orang yang mendiskriminasi orang kulit hitam.') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('2dbfa41f-f876-4f8d-bfbb-2068190046d4', 'おれは黒人であいつは白人だけど、それがどうしたの？', 'Aku berkulit hitam, dia berkulit putih. Apa yang salah dengan itu?') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('2dbfa41f-f876-4f8d-bfbb-2068190046d4', 'ピーナッツバターは、ジョージ・ワシントン・カーヴァーという名の黒人によって発明された。', 'Selai kacang ditemukan oleh orang kulit hitam bernama George Washington Carver.') ON CONFLICT DO NOTHING;

INSERT INTO public.items (id, type, character, slug, level, rank_id, meaning_mnemonic, description) VALUES ('89b7a6c5-64ad-4f3e-8fc7-a5863a3530e0', 'vocabulary', '起きる', '起きる', 2, 'b8c90d1e-2f3a-4b5c-6d7e-8f9a0b1c2d3e', 'Kata ini terdiri dari kanji dengan hiragana ditempelkan. Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanjinya sendiri artinya bangun, jadi versi vocab verbanya adalah bangun atau to get up.

Kata ini juga memiliki arti sekunder yaitu terjadi. Anggap saja seperti ini: ketika suatu tindakan "bangun", maka tindakan tersebut juga terjadi.', 'Kata ini terdiri dari kanji dengan hiragana ditempelkan. Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanjinya sendiri artinya bangun, jadi versi vocab verbanya adalah bangun atau to get up.

Kata ini juga memiliki arti sekunder yaitu terjadi. Anggap saja seperti ini: ketika suatu tindakan "bangun", maka tindakan tersebut juga terjadi.') ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, character = EXCLUDED.character, slug = EXCLUDED.slug, level = EXCLUDED.level, rank_id = EXCLUDED.rank_id, meaning_mnemonic = EXCLUDED.meaning_mnemonic, description = EXCLUDED.description;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('89b7a6c5-64ad-4f3e-8fc7-a5863a3530e0', 'Untuk Bangun', true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('89b7a6c5-64ad-4f3e-8fc7-a5863a3530e0', 'To Get Up', false) ON CONFLICT DO NOTHING;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('89b7a6c5-64ad-4f3e-8fc7-a5863a3530e0', 'To Occur', false) ON CONFLICT DO NOTHING;

INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES ('89b7a6c5-64ad-4f3e-8fc7-a5863a3530e0', 'おきる', NULL, true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('89b7a6c5-64ad-4f3e-8fc7-a5863a3530e0', '父は、毎朝六時に起きます。', 'Ayah saya bangun jam enam setiap pagi.') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('89b7a6c5-64ad-4f3e-8fc7-a5863a3530e0', 'いつも朝起きるのめっちゃ早いですね。まだ四時ですよ。', 'Kamu selalu bangun pagi-pagi sekali! Ini masih jam 4 lho.') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('89b7a6c5-64ad-4f3e-8fc7-a5863a3530e0', '三段腹を無くすために、毎朝起きたらすぐに100回腹筋をします。', 'Saya melakukan 100 sit-up setiap pagi setelah bangun tidur untuk menghilangkan tiga bungkus saya.') ON CONFLICT DO NOTHING;

INSERT INTO public.items (id, type, character, slug, level, rank_id, meaning_mnemonic, description) VALUES ('608840be-6960-43b6-ac4f-aa7858f2b531', 'vocabulary', '病院', '病院', 2, 'b8c90d1e-2f3a-4b5c-6d7e-8f9a0b1c2d3e', 'Institusi sakit adalah tempat berobatnya orang sakit. Itu adalah rumah sakit.', 'Institusi sakit adalah tempat berobatnya orang sakit. Itu adalah rumah sakit.') ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, character = EXCLUDED.character, slug = EXCLUDED.slug, level = EXCLUDED.level, rank_id = EXCLUDED.rank_id, meaning_mnemonic = EXCLUDED.meaning_mnemonic, description = EXCLUDED.description;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('608840be-6960-43b6-ac4f-aa7858f2b531', 'Rumah Sakit', true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES ('608840be-6960-43b6-ac4f-aa7858f2b531', 'びょういん', NULL, true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('608840be-6960-43b6-ac4f-aa7858f2b531', '病院までタクシーで、千円ぐらいです。', 'Dibutuhkan sekitar seribu yen untuk sampai ke rumah sakit dengan taksi.') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('608840be-6960-43b6-ac4f-aa7858f2b531', 'この病院の院長は、九九もできない。', 'Kepala rumah sakit ini bahkan tidak bisa mengerjakan tabel perkaliannya.') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('608840be-6960-43b6-ac4f-aa7858f2b531', 'この病院で医者をすることには本当に嫌気が差すね。患者は馬鹿ばっかりなんだ。', 'Aku benci menjadi dokter di rumah sakit ini. Semua pasiennya idiot.') ON CONFLICT DO NOTHING;

INSERT INTO public.items (id, type, character, slug, level, rank_id, meaning_mnemonic, description) VALUES ('3f2a4052-deac-4271-9d80-6c4f9ae7755b', 'vocabulary', '学院', '学院', 2, 'b8c90d1e-2f3a-4b5c-6d7e-8f9a0b1c2d3e', 'Institusi studi adalah akademi. Di sanalah semua orang-orang mewah belajar.', 'Institusi studi adalah akademi. Di sanalah semua orang-orang mewah belajar.') ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, character = EXCLUDED.character, slug = EXCLUDED.slug, level = EXCLUDED.level, rank_id = EXCLUDED.rank_id, meaning_mnemonic = EXCLUDED.meaning_mnemonic, description = EXCLUDED.description;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('3f2a4052-deac-4271-9d80-6c4f9ae7755b', 'Akademi', true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('3f2a4052-deac-4271-9d80-6c4f9ae7755b', 'Institute', false) ON CONFLICT DO NOTHING;

INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES ('3f2a4052-deac-4271-9d80-6c4f9ae7755b', 'がくいん', NULL, true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('3f2a4052-deac-4271-9d80-6c4f9ae7755b', '2014年に、トーフグ学院をそつぎょうしました。', 'Saya lulus dari Akademi Tofugu pada tahun 2014.') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('3f2a4052-deac-4271-9d80-6c4f9ae7755b', 'かん西学院大学の多くの学生はざい学中にりゅう学をけいけんします。', 'Banyak mahasiswa dari Universitas Kwansei Gakuin belajar di luar negeri sambil kuliah.') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('3f2a4052-deac-4271-9d80-6c4f9ae7755b', 'やあ！こいつはワニカニ。あだ名はクラビゲーターだよ。トーフグ工業学院で働いてるんだ。', 'Hai! Orang ini adalah WaniKani alias si Crabigator. Dia bekerja di Institut Pendidikan Industri Tofugu.') ON CONFLICT DO NOTHING;

INSERT INTO public.items (id, type, character, slug, level, rank_id, meaning_mnemonic, description) VALUES ('3a4c8808-8c1c-47aa-9a57-2a7bfde67ece', 'vocabulary', '終わる', '終わる', 2, 'b8c90d1e-2f3a-4b5c-6d7e-8f9a0b1c2d3e', 'Kata ini terdiri dari kanji dengan hiragana ditempelkan. Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanji itu sendiri berarti akhir sehingga versi kata kerjanya adalah mengakhiri atau mengakhiri.

Ini adalah kata kerja intransitif, artinya terjadi dengan sendirinya. Sesuatu berakhir, tapi kamu tidak mengakhirinya.', 'Kata ini terdiri dari kanji dengan hiragana ditempelkan. Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanji itu sendiri berarti akhir sehingga versi kata kerjanya adalah mengakhiri atau mengakhiri.

Ini adalah kata kerja intransitif, artinya terjadi dengan sendirinya. Sesuatu berakhir, tapi kamu tidak mengakhirinya.') ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, character = EXCLUDED.character, slug = EXCLUDED.slug, level = EXCLUDED.level, rank_id = EXCLUDED.rank_id, meaning_mnemonic = EXCLUDED.meaning_mnemonic, description = EXCLUDED.description;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('3a4c8808-8c1c-47aa-9a57-2a7bfde67ece', 'Untuk Mengakhiri', true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('3a4c8808-8c1c-47aa-9a57-2a7bfde67ece', 'To Be Over', false) ON CONFLICT DO NOTHING;

INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES ('3a4c8808-8c1c-47aa-9a57-2a7bfde67ece', 'おわる', NULL, true) ON CONFLICT DO NOTHING;

