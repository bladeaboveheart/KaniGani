INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('29dbc308-3598-45c9-ba78-49da368547f4', 'それは、ボットによる自動的なツイートですよ。', 'Itu adalah tweet otomatis yang dibuat oleh bot.') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('29dbc308-3598-45c9-ba78-49da368547f4', 'この電車のドアは、自動的には開きません。', 'Pintu kereta ini tidak terbuka secara otomatis.') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('29dbc308-3598-45c9-ba78-49da368547f4', 'もし誰かがあなたの家に侵入したら、この機械が自動的に警備会社に通報します。', 'Jika seseorang membobol rumah Anda, mesin ini secara otomatis akan mengirimkan pesan ke perusahaan keamanan.') ON CONFLICT DO NOTHING;

INSERT INTO public.items (id, type, character, slug, level, rank_id, meaning_mnemonic, description) VALUES ('86bf558b-cfeb-44af-b43a-7bbebcd283f6', 'vocabulary', '食堂', '食堂', 2, 'b8c90d1e-2f3a-4b5c-6d7e-8f9a0b1c2d3e', 'Ruang makan adalah ruangan besar tempat Anda makan. Di ruangan besar manakah Anda makan? Bagaimana dengan kafetaria, ruang makan, atau restoran?', 'Ruang makan adalah ruangan besar tempat Anda makan. Di ruangan besar manakah Anda makan? Bagaimana dengan kafetaria, ruang makan, atau restoran?') ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, character = EXCLUDED.character, slug = EXCLUDED.slug, level = EXCLUDED.level, rank_id = EXCLUDED.rank_id, meaning_mnemonic = EXCLUDED.meaning_mnemonic, description = EXCLUDED.description;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('86bf558b-cfeb-44af-b43a-7bbebcd283f6', 'Kafetaria', true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('86bf558b-cfeb-44af-b43a-7bbebcd283f6', 'Dining Hall', false) ON CONFLICT DO NOTHING;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('86bf558b-cfeb-44af-b43a-7bbebcd283f6', 'Diner', false) ON CONFLICT DO NOTHING;

INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES ('86bf558b-cfeb-44af-b43a-7bbebcd283f6', 'しょくどう', NULL, true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('86bf558b-cfeb-44af-b43a-7bbebcd283f6', 'この食堂の店主は、古くさい男で、男は家庭のことに干渉すべきではないと主ちょうするんです。', 'Pemilik restoran ini sangat kuno sehingga dia bersikeras bahwa laki-laki tidak boleh ikut campur dalam urusan rumah tangga.') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('86bf558b-cfeb-44af-b43a-7bbebcd283f6', 'さっきトーフグ食堂に行ったんだけど、無名の歌手が無料のワンマンライブをしてたよ。', 'Saat saya pergi ke ruang makan Tofugu beberapa waktu lalu, ada live music gratis dari beberapa penyanyi yang tidak saya kenal.') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('86bf558b-cfeb-44af-b43a-7bbebcd283f6', 'お昼ごはん、食堂で食べない？もしよければ、私二限目のクラスが無いから、席取っておけるよ。', 'Apakah Anda ingin makan siang di kafetaria? Kalau begitu, aku tidak punya kelas jam pelajaran kedua, jadi aku bisa mencarikan tempat duduk untuk kami.') ON CONFLICT DO NOTHING;

INSERT INTO public.items (id, type, character, slug, level, rank_id, meaning_mnemonic, description) VALUES ('b18fa4a1-d4c6-40d0-bd22-04377bcc0d0a', 'vocabulary', '借用', '借用', 2, 'b8c90d1e-2f3a-4b5c-6d7e-8f9a0b1c2d3e', 'Tugas meminjam sesuatu adalah ketika Anda sedang meminjam sesuatu. Itu juga ketika Anda mendapatkan pinjaman.', 'Tugas meminjam sesuatu adalah ketika Anda sedang meminjam sesuatu. Itu juga ketika Anda mendapatkan pinjaman.') ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, character = EXCLUDED.character, slug = EXCLUDED.slug, level = EXCLUDED.level, rank_id = EXCLUDED.rank_id, meaning_mnemonic = EXCLUDED.meaning_mnemonic, description = EXCLUDED.description;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('b18fa4a1-d4c6-40d0-bd22-04377bcc0d0a', 'Meminjam', true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('b18fa4a1-d4c6-40d0-bd22-04377bcc0d0a', 'Loan', false) ON CONFLICT DO NOTHING;

INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES ('b18fa4a1-d4c6-40d0-bd22-04377bcc0d0a', 'しゃくよう', NULL, true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('b18fa4a1-d4c6-40d0-bd22-04377bcc0d0a', 'これで、借用金が百万円に達してしまった。', 'Hutang saya sekarang mencapai satu juta yen.') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('b18fa4a1-d4c6-40d0-bd22-04377bcc0d0a', 'ちゃんと借用証を書いてくれるんだったら、お金をかしてもいいよ。', 'Jika Anda menulis surat utang kepada saya, saya tidak keberatan meminjamkan sejumlah uang kepada Anda.') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('b18fa4a1-d4c6-40d0-bd22-04377bcc0d0a', '日本語には、別の言語から借用された言葉がたくさんあります。', 'Dalam bahasa Jepang, ada banyak kata yang dipinjam dari bahasa lain.') ON CONFLICT DO NOTHING;

INSERT INTO public.items (id, type, character, slug, level, rank_id, meaning_mnemonic, description) VALUES ('00cc340a-6f0b-40e3-87d4-fb4fd2c61f59', 'vocabulary', '借りる', '借りる', 2, 'b8c90d1e-2f3a-4b5c-6d7e-8f9a0b1c2d3e', 'Kata ini terdiri dari kanji dengan hiragana ditempelkan. Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanjinya sendiri artinya meminjam jadi versi vocab verbanya adalah meminjam.', 'Kata ini terdiri dari kanji dengan hiragana ditempelkan. Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanjinya sendiri artinya meminjam jadi versi vocab verbanya adalah meminjam.') ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, character = EXCLUDED.character, slug = EXCLUDED.slug, level = EXCLUDED.level, rank_id = EXCLUDED.rank_id, meaning_mnemonic = EXCLUDED.meaning_mnemonic, description = EXCLUDED.description;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('00cc340a-6f0b-40e3-87d4-fb4fd2c61f59', 'Untuk Meminjam', true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES ('00cc340a-6f0b-40e3-87d4-fb4fd2c61f59', 'かりる', NULL, true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('00cc340a-6f0b-40e3-87d4-fb4fd2c61f59', 'アクを取りたいので、ちょっとお玉を借りてもいいですか？', 'Saya ingin membuang sampah dari atas, jadi bolehkah saya meminjam sendok Anda sebentar?') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('00cc340a-6f0b-40e3-87d4-fb4fd2c61f59', 'クリステンのルーズリーフ、一枚借りたよ。', 'Aku meminjam salah satu lembar kertas lepasmu, Kristen.') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('00cc340a-6f0b-40e3-87d4-fb4fd2c61f59', '「ごめんね。君から借りていた恋愛小説をなくしちゃったんだ。」「気にしないでいいよ。それはもう必要ないから。彼女ができたんだ。」', '"Maaf aku kehilangan novel roman yang kupinjam darimu." "Jangan khawatir. Lagipula aku tidak membutuhkannya lagi. Aku punya pacar sekarang."') ON CONFLICT DO NOTHING;

INSERT INTO public.items (id, type, character, slug, level, rank_id, meaning_mnemonic, description) VALUES ('4f6c382c-a190-497d-9f3c-cdbd7f13a149', 'vocabulary', '借金', '借金', 2, 'b8c90d1e-2f3a-4b5c-6d7e-8f9a0b1c2d3e', 'Uang (dan emas) yang Anda pinjam adalah hutang Anda. Pastikan untuk membayarnya kembali sebelum yakuza datang menjemput Anda.', 'Uang (dan emas) yang Anda pinjam adalah hutang Anda. Pastikan untuk membayarnya kembali sebelum yakuza datang menjemput Anda.') ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, character = EXCLUDED.character, slug = EXCLUDED.slug, level = EXCLUDED.level, rank_id = EXCLUDED.rank_id, meaning_mnemonic = EXCLUDED.meaning_mnemonic, description = EXCLUDED.description;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('4f6c382c-a190-497d-9f3c-cdbd7f13a149', 'Hutang', true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES ('4f6c382c-a190-497d-9f3c-cdbd7f13a149', 'しゃっきん', NULL, true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('4f6c382c-a190-497d-9f3c-cdbd7f13a149', '新しいけいけんをしてみたくて、借金を作りました。', 'Saya ingin mendapat pengalaman baru, jadi saya berhutang.') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('4f6c382c-a190-497d-9f3c-cdbd7f13a149', 'コウイチは、ビエトに五千万円借金している。', 'Koichi berhutang pada Viet 50.000.000 yen.') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('4f6c382c-a190-497d-9f3c-cdbd7f13a149', '失敬、失敬、通らせて。借金取りに追われているんだ。', 'Permisi, permisi. Saya mencoba untuk lewat sini. Saya melarikan diri dari penagih utang.') ON CONFLICT DO NOTHING;

INSERT INTO public.items (id, type, character, slug, level, rank_id, meaning_mnemonic, description) VALUES ('915c6b47-cad1-4506-a119-c510bc1352d4', 'vocabulary', '借家', '借家', 2, 'b8c90d1e-2f3a-4b5c-6d7e-8f9a0b1c2d3e', 'Ketika Anda meminjam rumah, Anda menyewa rumah. Juga, ini adalah rumah yang disewakan.', 'Ketika Anda meminjam rumah, Anda menyewa rumah. Juga, ini adalah rumah yang disewakan.') ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, character = EXCLUDED.character, slug = EXCLUDED.slug, level = EXCLUDED.level, rank_id = EXCLUDED.rank_id, meaning_mnemonic = EXCLUDED.meaning_mnemonic, description = EXCLUDED.description;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('915c6b47-cad1-4506-a119-c510bc1352d4', 'Menyewa Rumah', true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('915c6b47-cad1-4506-a119-c510bc1352d4', 'House For Rent', false) ON CONFLICT DO NOTHING;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('915c6b47-cad1-4506-a119-c510bc1352d4', 'Rented House', false) ON CONFLICT DO NOTHING;

INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES ('915c6b47-cad1-4506-a119-c510bc1352d4', 'しゃくや', NULL, true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES ('915c6b47-cad1-4506-a119-c510bc1352d4', 'しゃっか', NULL, false) ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('915c6b47-cad1-4506-a119-c510bc1352d4', '借家をたん保にお金を借りることは出来ませんよ。', 'Anda tidak bisa meminjam uang untuk rumah kontrakan.') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('915c6b47-cad1-4506-a119-c510bc1352d4', '借家けんって、単じゅんに、「借家するけん利」のことでしょう？', '"Hak Penyewa" berarti Anda berhak menyewa rumah, bukan?') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('915c6b47-cad1-4506-a119-c510bc1352d4', '家を買う代わりに借家を借りる提案をサーモンに切り出そうとしてるんだけど、彼女、その話題には触れないようにしてるみたいなんだよね。', 'Saya mencoba berbicara dengan Salmon tentang menyewa rumah daripada membelinya, tapi dia terus mengabaikan masalah tersebut.') ON CONFLICT DO NOTHING;

INSERT INTO public.items (id, type, character, slug, level, rank_id, meaning_mnemonic, description) VALUES ('005c4063-11f5-463d-9031-b59176114736', 'vocabulary', '借り手', '借り手', 2, 'b8c90d1e-2f3a-4b5c-6d7e-8f9a0b1c2d3e', 'Tangan yang meminjam adalah peminjam.', 'Tangan yang meminjam adalah peminjam.') ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, character = EXCLUDED.character, slug = EXCLUDED.slug, level = EXCLUDED.level, rank_id = EXCLUDED.rank_id, meaning_mnemonic = EXCLUDED.meaning_mnemonic, description = EXCLUDED.description;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('005c4063-11f5-463d-9031-b59176114736', 'Peminjam', true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('005c4063-11f5-463d-9031-b59176114736', 'Tenant', false) ON CONFLICT DO NOTHING;

INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES ('005c4063-11f5-463d-9031-b59176114736', 'かりて', NULL, true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('005c4063-11f5-463d-9031-b59176114736', 'そうは言っても、借り手が見つからない可能性もありますよね？', 'Terlepas dari apa yang Anda katakan, masih ada kemungkinan kami tidak dapat menemukan penyewa, bukan?') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('005c4063-11f5-463d-9031-b59176114736', 'コウイチが昔住んでいた部屋だと言ったら、すぐに借り手が見つかりました。', 'Saat kami mengiklankan bahwa Koichi pernah tinggal di sini, rumah itu langsung hilang.') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('005c4063-11f5-463d-9031-b59176114736', 'あのマンションは、幽霊屋敷であるという評判のせいで借り手がつかない。', 'Apartemen itu masih belum ada penghuninya karena dikabarkan berhantu.') ON CONFLICT DO NOTHING;

INSERT INTO public.items (id, type, character, slug, level, rank_id, meaning_mnemonic, description) VALUES ('ba78b94f-76bf-4e0c-a8ff-87a09cbeaae2', 'vocabulary', '自動車', '自動車', 2, 'b8c90d1e-2f3a-4b5c-6d7e-8f9a0b1c2d3e', 'Anda tahu bahwa 自動 itu otomatis. Lalu apa itu mobil matic? Itu adalah mobil, atau sekadar mobil.', 'Anda tahu bahwa 自動 itu otomatis. Lalu apa itu mobil matic? Itu adalah mobil, atau sekadar mobil.') ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, character = EXCLUDED.character, slug = EXCLUDED.slug, level = EXCLUDED.level, rank_id = EXCLUDED.rank_id, meaning_mnemonic = EXCLUDED.meaning_mnemonic, description = EXCLUDED.description;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('ba78b94f-76bf-4e0c-a8ff-87a09cbeaae2', 'Mobil', true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('ba78b94f-76bf-4e0c-a8ff-87a09cbeaae2', 'Car', false) ON CONFLICT DO NOTHING;

INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES ('ba78b94f-76bf-4e0c-a8ff-87a09cbeaae2', 'じどうしゃ', NULL, true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('ba78b94f-76bf-4e0c-a8ff-87a09cbeaae2', 'あの自動車ディーラーにうら切られた気分です。', 'Saya merasa dikhianati oleh dealer mobil itu.') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('ba78b94f-76bf-4e0c-a8ff-87a09cbeaae2', '新しい自動車を買うために、お金をためるようにしています。', 'Kami mencoba menyisihkan sejumlah uang untuk membeli mobil baru.') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('ba78b94f-76bf-4e0c-a8ff-87a09cbeaae2', '自動車の運転免許を失くしてしまいました。', 'Saya kehilangan SIM saya.') ON CONFLICT DO NOTHING;

INSERT INTO public.items (id, type, character, slug, level, rank_id, meaning_mnemonic, description) VALUES ('d64b3106-ea20-4f86-992c-d841cef9c57a', 'vocabulary', '通う', '通う', 2, 'b8c90d1e-2f3a-4b5c-6d7e-8f9a0b1c2d3e', 'Kata ini terdiri dari kanji dengan hiragana ditempelkan. Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanji artinya melewati tapi kita sudah tahu kata 通る yang artinya melewati. Kata ini memiliki arti melewati yang berbeda, seperti bagaimana Anda melewati aula sekolah Anda setiap hari. Namun kami tidak mengatakan harus lulus sekolah, kami mengatakan harus bersekolah, atau pulang pergi ke sekolah.', 'Kata ini terdiri dari kanji dengan hiragana ditempelkan. Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanji artinya melewati tapi kita sudah tahu kata 通る yang artinya melewati. Kata ini memiliki arti melewati yang berbeda, seperti bagaimana Anda melewati aula sekolah Anda setiap hari. Namun kami tidak mengatakan harus lulus sekolah, kami mengatakan harus bersekolah, atau pulang pergi ke sekolah.') ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, character = EXCLUDED.character, slug = EXCLUDED.slug, level = EXCLUDED.level, rank_id = EXCLUDED.rank_id, meaning_mnemonic = EXCLUDED.meaning_mnemonic, description = EXCLUDED.description;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('d64b3106-ea20-4f86-992c-d841cef9c57a', 'Untuk Bepergian', true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('d64b3106-ea20-4f86-992c-d841cef9c57a', 'To Attend', false) ON CONFLICT DO NOTHING;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('d64b3106-ea20-4f86-992c-d841cef9c57a', 'To Go Back And Forth', false) ON CONFLICT DO NOTHING;

INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES ('d64b3106-ea20-4f86-992c-d841cef9c57a', 'かよう', NULL, true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('d64b3106-ea20-4f86-992c-d841cef9c57a', 'えっ、北海道からおきなわまで毎日通ってるの？', 'Apa!? Apakah Anda bolak-balik antara Hokkaido dan Okinawa setiap hari?') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('d64b3106-ea20-4f86-992c-d841cef9c57a', 'コウイチは、トーフグのオフィスまでハーレーで通っています。', 'Koichi pulang pergi ke kantor Tofugu dengan Harley-Davidson.') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('d64b3106-ea20-4f86-992c-d841cef9c57a', '私の妹は、四月からトーフグ学園に通うことになります。', 'Adik perempuanku akan bersekolah di Akademi Tofugu mulai bulan April.') ON CONFLICT DO NOTHING;

INSERT INTO public.items (id, type, character, slug, level, rank_id, meaning_mnemonic, description) VALUES ('92e538d1-b3c8-4c0e-9ef5-5db63f23fa78', 'vocabulary', '動き', '動き', 2, 'b8c90d1e-2f3a-4b5c-6d7e-8f9a0b1c2d3e', 'Ini adalah versi kata benda dari gerakan kanji. Jadi itu berarti gerakan.', 'Ini adalah versi kata benda dari gerakan kanji. Jadi itu berarti gerakan.') ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, character = EXCLUDED.character, slug = EXCLUDED.slug, level = EXCLUDED.level, rank_id = EXCLUDED.rank_id, meaning_mnemonic = EXCLUDED.meaning_mnemonic, description = EXCLUDED.description;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('92e538d1-b3c8-4c0e-9ef5-5db63f23fa78', 'Gerakan', true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('92e538d1-b3c8-4c0e-9ef5-5db63f23fa78', 'Activity', false) ON CONFLICT DO NOTHING;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('92e538d1-b3c8-4c0e-9ef5-5db63f23fa78', 'Trend', false) ON CONFLICT DO NOTHING;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('92e538d1-b3c8-4c0e-9ef5-5db63f23fa78', 'Development', false) ON CONFLICT DO NOTHING;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('92e538d1-b3c8-4c0e-9ef5-5db63f23fa78', 'Change', false) ON CONFLICT DO NOTHING;

INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES ('92e538d1-b3c8-4c0e-9ef5-5db63f23fa78', 'うごき', NULL, true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('92e538d1-b3c8-4c0e-9ef5-5db63f23fa78', 'ヤクザのまやくがらみの動きが知りたいなら、ビエトと話をしに行ったらいいよ。', 'Jika Anda ingin tahu tentang aktivitas yakuza yang berhubungan dengan narkoba, Anda harus berbicara dengan Viet.') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('92e538d1-b3c8-4c0e-9ef5-5db63f23fa78', 'コウイチとビエトは、今週は市場の動きのかんさつ方ほうを学んでいます。', 'Koichi dan Viet sedang mempelajari cara memantau tren pasar minggu ini.') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('92e538d1-b3c8-4c0e-9ef5-5db63f23fa78', 'あの人、何だか動きが不自然ですね。', 'Gerakan orang itu sedikit tidak wajar.') ON CONFLICT DO NOTHING;

INSERT INTO public.items (id, type, character, slug, level, rank_id, meaning_mnemonic, description) VALUES ('118e1e54-8a89-4d69-aa91-854b641ab884', 'vocabulary', '教え', '教え', 2, 'b8c90d1e-2f3a-4b5c-6d7e-8f9a0b1c2d3e', 'Ini adalah versi kata benda dari pengajaran kanji. Jadi artinya mengajar.', 'Ini adalah versi kata benda dari pengajaran kanji. Jadi artinya mengajar.') ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, character = EXCLUDED.character, slug = EXCLUDED.slug, level = EXCLUDED.level, rank_id = EXCLUDED.rank_id, meaning_mnemonic = EXCLUDED.meaning_mnemonic, description = EXCLUDED.description;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('118e1e54-8a89-4d69-aa91-854b641ab884', 'Mengajar', true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('118e1e54-8a89-4d69-aa91-854b641ab884', 'Instruction', false) ON CONFLICT DO NOTHING;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('118e1e54-8a89-4d69-aa91-854b641ab884', 'Teachings', false) ON CONFLICT DO NOTHING;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('118e1e54-8a89-4d69-aa91-854b641ab884', 'Lesson', false) ON CONFLICT DO NOTHING;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('118e1e54-8a89-4d69-aa91-854b641ab884', 'Doctrine', false) ON CONFLICT DO NOTHING;

INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES ('118e1e54-8a89-4d69-aa91-854b641ab884', 'おしえ', NULL, true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('118e1e54-8a89-4d69-aa91-854b641ab884', 'あなたは、父さんの教えをしっかりまもって生きるのよ。', 'Anda menjaga ajaran ayah saya tetap hidup dan sehat.') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('118e1e54-8a89-4d69-aa91-854b641ab884', 'それはすばらしい教えですね。', 'Ini merupakan pelajaran yang sangat bagus, bukan?') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('118e1e54-8a89-4d69-aa91-854b641ab884', '君の教えに従うと、ろくなことがない。', 'Ketika saya mengikuti ajaran Anda, tidak ada yang berjalan dengan baik.') ON CONFLICT DO NOTHING;

INSERT INTO public.items (id, type, character, slug, level, rank_id, meaning_mnemonic, description) VALUES ('be17af5c-f540-4448-9d17-bb18a63d1f71', 'vocabulary', '病む', '病む', 2, 'b8c90d1e-2f3a-4b5c-6d7e-8f9a0b1c2d3e', 'Kata ini terdiri dari kanji dengan hiragana ditempelkan. Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanjinya sendiri artinya sakit, jadi versi verbanya adalah menjadi sakit. Ini juga dapat digunakan untuk meredakan flu atau penyakit lainnya.', 'Kata ini terdiri dari kanji dengan hiragana ditempelkan. Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanjinya sendiri artinya sakit, jadi versi verbanya adalah menjadi sakit. Ini juga dapat digunakan untuk meredakan flu atau penyakit lainnya.') ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, character = EXCLUDED.character, slug = EXCLUDED.slug, level = EXCLUDED.level, rank_id = EXCLUDED.rank_id, meaning_mnemonic = EXCLUDED.meaning_mnemonic, description = EXCLUDED.description;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('be17af5c-f540-4448-9d17-bb18a63d1f71', 'Menjadi Sakit', true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('be17af5c-f540-4448-9d17-bb18a63d1f71', 'To Fall Ill', false) ON CONFLICT DO NOTHING;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('be17af5c-f540-4448-9d17-bb18a63d1f71', 'To Be Ill', false) ON CONFLICT DO NOTHING;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('be17af5c-f540-4448-9d17-bb18a63d1f71', 'To Come Down With', false) ON CONFLICT DO NOTHING;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('be17af5c-f540-4448-9d17-bb18a63d1f71', 'To Suffer From', false) ON CONFLICT DO NOTHING;

INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES ('be17af5c-f540-4448-9d17-bb18a63d1f71', 'やむ', NULL, true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('be17af5c-f540-4448-9d17-bb18a63d1f71', 'あっぱくめんせつって、終わった後、ほんと病むよな。', 'Wawancara stres membuat Anda merasa sangat mual setelahnya, setujukah Anda?') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('be17af5c-f540-4448-9d17-bb18a63d1f71', 'しょく場の同りょうは、仕事のストレスが原いんで病んでしまいました。', 'Rekan kerja saya jatuh sakit karena stres terkait pekerjaan.') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('be17af5c-f540-4448-9d17-bb18a63d1f71', 'まさかアイツが心を病むなんてな。', 'Saya tidak pernah menyangka dia akan sakit jiwa.') ON CONFLICT DO NOTHING;

INSERT INTO public.items (id, type, character, slug, level, rank_id, meaning_mnemonic, description) VALUES ('2628a235-5ab7-4f36-aaa5-bb5145fb429b', 'vocabulary', '会員', '会員', 2, 'b8c90d1e-2f3a-4b5c-6d7e-8f9a0b1c2d3e', 'Jika Anda bertemu cukup banyak anggota, Anda sendiri akan menjadi anggota!', 'Jika Anda bertemu cukup banyak anggota, Anda sendiri akan menjadi anggota!') ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, character = EXCLUDED.character, slug = EXCLUDED.slug, level = EXCLUDED.level, rank_id = EXCLUDED.rank_id, meaning_mnemonic = EXCLUDED.meaning_mnemonic, description = EXCLUDED.description;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('2628a235-5ab7-4f36-aaa5-bb5145fb429b', 'Anggota', true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('2628a235-5ab7-4f36-aaa5-bb5145fb429b', 'Membership', false) ON CONFLICT DO NOTHING;

INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES ('2628a235-5ab7-4f36-aaa5-bb5145fb429b', 'かいいん', NULL, true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('2628a235-5ab7-4f36-aaa5-bb5145fb429b', 'あの会員はかなり心配しょうのようなんです。', 'Anggota itu nampaknya sangat khawatir.') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('2628a235-5ab7-4f36-aaa5-bb5145fb429b', '見えないかもしれませんが、そこにもう一人小さな会員がいるんですよ。', 'Anda mungkin tidak dapat melihatnya, tetapi ada satu anggota kecil lagi di sana.') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('2628a235-5ab7-4f36-aaa5-bb5145fb429b', '会員カードはお持ちですか。', 'Apakah Anda memiliki kartu anggota?') ON CONFLICT DO NOTHING;

INSERT INTO public.items (id, type, character, slug, level, rank_id, meaning_mnemonic, description) VALUES ('caff2aa0-fdd9-4bbd-898d-41c5685dee04', 'vocabulary', '入院', '入院', 2, 'b8c90d1e-2f3a-4b5c-6d7e-8f9a0b1c2d3e', 'Jika Anda berakhir dalam situasi di mana Anda harus masuk institusi, itu disebut rawat inap. Mudah-mudahan Anda tidak berada di sana terlalu lama.', 'Jika Anda berakhir dalam situasi di mana Anda harus masuk institusi, itu disebut rawat inap. Mudah-mudahan Anda tidak berada di sana terlalu lama.') ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, character = EXCLUDED.character, slug = EXCLUDED.slug, level = EXCLUDED.level, rank_id = EXCLUDED.rank_id, meaning_mnemonic = EXCLUDED.meaning_mnemonic, description = EXCLUDED.description;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('caff2aa0-fdd9-4bbd-898d-41c5685dee04', 'Rawat Inap', true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('caff2aa0-fdd9-4bbd-898d-41c5685dee04', 'Hospital Admission', false) ON CONFLICT DO NOTHING;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('caff2aa0-fdd9-4bbd-898d-41c5685dee04', 'Admission To A Hospital', false) ON CONFLICT DO NOTHING;

INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES ('caff2aa0-fdd9-4bbd-898d-41c5685dee04', 'にゅういん', NULL, true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('caff2aa0-fdd9-4bbd-898d-41c5685dee04', '病じょうがあっ化し、入院する事になりました。', 'Kondisinya memburuk dan mereka memutuskan dia dirawat di rumah sakit.') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('caff2aa0-fdd9-4bbd-898d-41c5685dee04', '入院中は、たいくつであくびが止まらなかったよ。', 'Ketika saya dirawat di rumah sakit, saya sangat bosan sehingga saya tidak bisa berhenti menguap.') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('caff2aa0-fdd9-4bbd-898d-41c5685dee04', '今度、乳癌で入院することになったんです。', 'Saya akan segera dirawat di rumah sakit karena kanker payudara.') ON CONFLICT DO NOTHING;

INSERT INTO public.items (id, type, character, slug, level, rank_id, meaning_mnemonic, description) VALUES ('95748772-51bb-43c0-a9a5-a3ce17fcd284', 'vocabulary', '文字通り', '文字通り', 2, 'b8c90d1e-2f3a-4b5c-6d7e-8f9a0b1c2d3e', 'Ingat bagaimana Anda mempelajari kata 文字 dan 通り? Ya, "jalan" yang terbuat dari "huruf" secara harfiah sesuai dengan hurufnya. Mengedip.', 'Ingat bagaimana Anda mempelajari kata 文字 dan 通り? Ya, "jalan" yang terbuat dari "huruf" secara harfiah sesuai dengan hurufnya. Mengedip.') ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, character = EXCLUDED.character, slug = EXCLUDED.slug, level = EXCLUDED.level, rank_id = EXCLUDED.rank_id, meaning_mnemonic = EXCLUDED.meaning_mnemonic, description = EXCLUDED.description;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('95748772-51bb-43c0-a9a5-a3ce17fcd284', 'Harfiah', true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('95748772-51bb-43c0-a9a5-a3ce17fcd284', 'Literally', false) ON CONFLICT DO NOTHING;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('95748772-51bb-43c0-a9a5-a3ce17fcd284', 'To The Letter', false) ON CONFLICT DO NOTHING;

INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES ('95748772-51bb-43c0-a9a5-a3ce17fcd284', 'もじどおり', NULL, true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('95748772-51bb-43c0-a9a5-a3ce17fcd284', 'かれは文字通り、「天才」です。', 'Dia benar-benar jenius.') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('95748772-51bb-43c0-a9a5-a3ce17fcd284', 'トーフグの社いんになるには、文字通りとうふとフグが好物でなければならない。', 'Untuk menjadi karyawan di Tofugu, Anda harus menyukai tahu dan fugu.') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('95748772-51bb-43c0-a9a5-a3ce17fcd284', 'ツンデレとは、文字通り「人前ではツンツンしているけど二人の時はデレデレすること」です。', '"Tsundere" secara harafiah berarti, "bertingkah dingin di depan umum namun bersikap penuh kasih sayang secara pribadi".') ON CONFLICT DO NOTHING;

INSERT INTO public.items (id, type, character, slug, level, rank_id, meaning_mnemonic, description) VALUES ('8fd13dc2-2123-4b95-96fb-e9d678ac6c2c', 'vocabulary', '学問', '学問', 2, 'b8c90d1e-2f3a-4b5c-6d7e-8f9a0b1c2d3e', 'Bagaimana caramu mengatasi masalah belajarmu? Dengan sedikit tambahan sekolah, belajar, dan belajar.', 'Bagaimana caramu mengatasi masalah belajarmu? Dengan sedikit tambahan sekolah, belajar, dan belajar.') ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, character = EXCLUDED.character, slug = EXCLUDED.slug, level = EXCLUDED.level, rank_id = EXCLUDED.rank_id, meaning_mnemonic = EXCLUDED.meaning_mnemonic, description = EXCLUDED.description;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('8fd13dc2-2123-4b95-96fb-e9d678ac6c2c', 'Sekolah', true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('8fd13dc2-2123-4b95-96fb-e9d678ac6c2c', 'Study', false) ON CONFLICT DO NOTHING;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('8fd13dc2-2123-4b95-96fb-e9d678ac6c2c', 'Learning', false) ON CONFLICT DO NOTHING;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('8fd13dc2-2123-4b95-96fb-e9d678ac6c2c', 'Scholarship', false) ON CONFLICT DO NOTHING;

INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES ('8fd13dc2-2123-4b95-96fb-e9d678ac6c2c', 'がくもん', NULL, true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('8fd13dc2-2123-4b95-96fb-e9d678ac6c2c', '学問と文学は切っても切れない関係にある。', 'Beasiswa selalu dikaitkan dengan sastra.') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('8fd13dc2-2123-4b95-96fb-e9d678ac6c2c', 'こ人てきには、大学って学問する所じゃなくて、「大そつ」っていうしかくを取りに行くための所だと思ってるんだよね。', 'Menurut saya pribadi, universitas bukanlah tempat untuk belajar, melainkan tempat untuk memperoleh kualifikasi “gelar universitas”.') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('8fd13dc2-2123-4b95-96fb-e9d678ac6c2c', '学問を疎かにしてはいけない。', 'Anda tidak boleh mengabaikan studi Anda.') ON CONFLICT DO NOTHING;

INSERT INTO public.items (id, type, character, slug, level, rank_id, meaning_mnemonic, description) VALUES ('021902cc-6a06-453b-b132-4d2bd6c1fea5', 'vocabulary', '行動', '行動', 2, 'b8c90d1e-2f3a-4b5c-6d7e-8f9a0b1c2d3e', 'Saat Anda bergerak, Anda sebenarnya melakukan suatu tindakan. Perilaku saat Anda pergi dan beraktivitas inilah yang menentukan apa yang orang pikirkan tentang Anda.', 'Saat Anda bergerak, Anda sebenarnya melakukan suatu tindakan. Perilaku saat Anda pergi dan beraktivitas inilah yang menentukan apa yang orang pikirkan tentang Anda.') ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, character = EXCLUDED.character, slug = EXCLUDED.slug, level = EXCLUDED.level, rank_id = EXCLUDED.rank_id, meaning_mnemonic = EXCLUDED.meaning_mnemonic, description = EXCLUDED.description;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('021902cc-6a06-453b-b132-4d2bd6c1fea5', 'Tindakan', true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('021902cc-6a06-453b-b132-4d2bd6c1fea5', 'Conduct', false) ON CONFLICT DO NOTHING;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('021902cc-6a06-453b-b132-4d2bd6c1fea5', 'Behaviour', false) ON CONFLICT DO NOTHING;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('021902cc-6a06-453b-b132-4d2bd6c1fea5', 'Behavior', false) ON CONFLICT DO NOTHING;

INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES ('021902cc-6a06-453b-b132-4d2bd6c1fea5', 'こうどう', NULL, true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('021902cc-6a06-453b-b132-4d2bd6c1fea5', 'これはあなたの行動がまねいたけっかです。', 'Ini adalah akibat dari kelakuanmu.') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('021902cc-6a06-453b-b132-4d2bd6c1fea5', 'いつもコウイチの行動パターンは決まっている。', 'Pola perilaku Koichi selalu sama.') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('021902cc-6a06-453b-b132-4d2bd6c1fea5', 'あの人は発言と行動が一致していないからいつも惑わされて困る。', 'Apa yang mereka katakan dan apa yang mereka lakukan tidak sesuai, sehingga saya selalu kesulitan dan bingung.') ON CONFLICT DO NOTHING;

INSERT INTO public.items (id, type, character, slug, level, rank_id, meaning_mnemonic, description) VALUES ('4effd724-ed9a-485e-beb4-19c817f0982b', 'vocabulary', '通す', '通す', 2, 'b8c90d1e-2f3a-4b5c-6d7e-8f9a0b1c2d3e', 'Kata ini terdiri dari kanji dengan hiragana ditempelkan. Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Anda sudah mengetahui bahwa 通る artinya lulus, namun ini sedikit berbeda. Bukan kamu yang lewat, Sue (す) yang lewat. Jadi, kamu harus membiarkan Sue lewat. Dengan kata lain, verba ini bersifat transitif, artinya mempunyai objek. Itu sebabnya artinya membiarkan sesuatu berlalu atau melewati sesuatu.

Cara menerjemahkan kata kerja ini ke dalam bahasa Inggris banyak berubah tergantung pada kata benda yang dipasangkannya. Misalnya 火を通す secara harfiah berarti "membiarkan api melewatinya", dan berarti "memanaskan". 針に糸を通す secara harfiah berarti "memasukkan benang ke dalam jarum", jadi berarti "memasukkan benang ke dalam jarum".', 'Kata ini terdiri dari kanji dengan hiragana ditempelkan. Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Anda sudah mengetahui bahwa 通る artinya lulus, namun ini sedikit berbeda. Bukan kamu yang lewat, Sue (す) yang lewat. Jadi, kamu harus membiarkan Sue lewat. Dengan kata lain, verba ini bersifat transitif, artinya mempunyai objek. Itu sebabnya artinya membiarkan sesuatu berlalu atau melewati sesuatu.

Cara menerjemahkan kata kerja ini ke dalam bahasa Inggris banyak berubah tergantung pada kata benda yang dipasangkannya. Misalnya 火を通す secara harfiah berarti "membiarkan api melewatinya", dan berarti "memanaskan". 針に糸を通す secara harfiah berarti "memasukkan benang ke dalam jarum", jadi berarti "memasukkan benang ke dalam jarum".') ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, character = EXCLUDED.character, slug = EXCLUDED.slug, level = EXCLUDED.level, rank_id = EXCLUDED.rank_id, meaning_mnemonic = EXCLUDED.meaning_mnemonic, description = EXCLUDED.description;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('4effd724-ed9a-485e-beb4-19c817f0982b', 'Membiarkan Sesuatu Lewat', true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('4effd724-ed9a-485e-beb4-19c817f0982b', 'To Put Something Through', false) ON CONFLICT DO NOTHING;

INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES ('4effd724-ed9a-485e-beb4-19c817f0982b', 'とおす', NULL, true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('4effd724-ed9a-485e-beb4-19c817f0982b', 'ガラスは光を通します。', 'Kaca memungkinkan cahaya melewatinya.') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('4effd724-ed9a-485e-beb4-19c817f0982b', 'お肉には、しっかり火を通してください。', 'Harap panaskan daging secara menyeluruh.') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('4effd724-ed9a-485e-beb4-19c817f0982b', '針に糸を通すのは難しい。', 'Memasang benang pada jarum itu sulit.') ON CONFLICT DO NOTHING;

INSERT INTO public.items (id, type, character, slug, level, rank_id, meaning_mnemonic, description) VALUES ('76f33938-fafb-49a3-84e1-5ab78cfd18de', 'vocabulary', '大学院', '大学院', 2, 'b8c90d1e-2f3a-4b5c-6d7e-8f9a0b1c2d3e', 'Ingat bagaimana Anda mengetahui bahwa 大学 berarti "perguruan tinggi?" Nah, institusi yang Anda tuju setelah kuliah adalah sekolah pascasarjana!', 'Ingat bagaimana Anda mengetahui bahwa 大学 berarti "perguruan tinggi?" Nah, institusi yang Anda tuju setelah kuliah adalah sekolah pascasarjana!') ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, character = EXCLUDED.character, slug = EXCLUDED.slug, level = EXCLUDED.level, rank_id = EXCLUDED.rank_id, meaning_mnemonic = EXCLUDED.meaning_mnemonic, description = EXCLUDED.description;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('76f33938-fafb-49a3-84e1-5ab78cfd18de', 'Sekolah Pascasarjana', true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('76f33938-fafb-49a3-84e1-5ab78cfd18de', 'Grad School', false) ON CONFLICT DO NOTHING;

INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES ('76f33938-fafb-49a3-84e1-5ab78cfd18de', 'だいがくいん', NULL, true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('76f33938-fafb-49a3-84e1-5ab78cfd18de', '大学院をそつぎょうしたんだけど、仕事が見つからないんだ。', 'Saya lulus dari sekolah pascasarjana, tetapi saya tidak dapat menemukan pekerjaan.') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('76f33938-fafb-49a3-84e1-5ab78cfd18de', 'この大学院の自どうはん売きは、つめたい飲み物しか売っていません。', 'Anda hanya dapat membeli minuman dingin dari mesin penjual otomatis di sekolah pascasarjana ini.') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('76f33938-fafb-49a3-84e1-5ab78cfd18de', '私は大学院進学を考えております。', 'Saya sedang berpikir untuk melanjutkan sekolah pascasarjana.') ON CONFLICT DO NOTHING;

INSERT INTO public.items (id, type, character, slug, level, rank_id, meaning_mnemonic, description) VALUES ('d83113f3-557e-441f-ab30-db9b8a226da8', 'vocabulary', '大学院生', '大学院生', 2, 'b8c90d1e-2f3a-4b5c-6d7e-8f9a0b1c2d3e', 'Ingat bagaimana Anda mengetahui bahwa 大学院 berarti "sekolah pascasarjana" dan 大学生 berarti "mahasiswa?" Hancurkan mereka bersama-sama dan Anda akan mendapatkan mahasiswa pascasarjana!', 'Ingat bagaimana Anda mengetahui bahwa 大学院 berarti "sekolah pascasarjana" dan 大学生 berarti "mahasiswa?" Hancurkan mereka bersama-sama dan Anda akan mendapatkan mahasiswa pascasarjana!') ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, character = EXCLUDED.character, slug = EXCLUDED.slug, level = EXCLUDED.level, rank_id = EXCLUDED.rank_id, meaning_mnemonic = EXCLUDED.meaning_mnemonic, description = EXCLUDED.description;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('d83113f3-557e-441f-ab30-db9b8a226da8', 'Mahasiswa Pascasarjana', true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('d83113f3-557e-441f-ab30-db9b8a226da8', 'Grad Student', false) ON CONFLICT DO NOTHING;

INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES ('d83113f3-557e-441f-ab30-db9b8a226da8', 'だいがくいんせい', NULL, true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('d83113f3-557e-441f-ab30-db9b8a226da8', 'この大学院生は、えんげいが上手だ。', 'Mahasiswa pascasarjana ini punya jempol hijau.') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('d83113f3-557e-441f-ab30-db9b8a226da8', 'あのまんるいホームランを打ったせん手、げん役の大学院生らしいよ。', 'Pemain yang berhasil mencapai grand slam itu rupanya adalah mahasiswa pascasarjana sebenarnya.') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('d83113f3-557e-441f-ab30-db9b8a226da8', '大学院生ってどんなことをするんですか？', 'Hal-hal apa saja yang dilakukan mahasiswa pascasarjana?') ON CONFLICT DO NOTHING;

INSERT INTO public.items (id, type, character, slug, level, rank_id, meaning_mnemonic, description) VALUES ('09e5444c-9bf6-48b0-aa8d-b64bed32d856', 'vocabulary', '食料品', '食料品', 2, 'b8c90d1e-2f3a-4b5c-6d7e-8f9a0b1c2d3e', 'Produk yang Anda bayar untuk dimakan nanti adalah bahan makanan Anda. Beli sekarang, makan nanti, enak!', 'Produk yang Anda bayar untuk dimakan nanti adalah bahan makanan Anda. Beli sekarang, makan nanti, enak!') ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, character = EXCLUDED.character, slug = EXCLUDED.slug, level = EXCLUDED.level, rank_id = EXCLUDED.rank_id, meaning_mnemonic = EXCLUDED.meaning_mnemonic, description = EXCLUDED.description;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('09e5444c-9bf6-48b0-aa8d-b64bed32d856', 'Bahan makanan', true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('09e5444c-9bf6-48b0-aa8d-b64bed32d856', 'Foodstuff', false) ON CONFLICT DO NOTHING;

INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES ('09e5444c-9bf6-48b0-aa8d-b64bed32d856', 'しょくりょうひん', NULL, true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('09e5444c-9bf6-48b0-aa8d-b64bed32d856', '食料品コーナーで働いている人たちが、ちん上げを要求しているらしいよ。', 'Saya mendengar bahwa para pekerja di bagian toko kelontong menuntut upah yang lebih tinggi.') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('09e5444c-9bf6-48b0-aa8d-b64bed32d856', '「サーモン、万が一にそなえて、食料品を買っておかなくちゃ。」「フグ、買わなくても大丈夫よ！食料品ならここにあるじゃない。」「え、どこに？」「食料にこまったら共食いすればいいだけじゃない。」', '“Salmon, kita harus membeli beberapa bahan makanan jika terjadi keadaan darurat.” “Fugu, kita tidak perlu membelinya. Kita punya makanan di sini!” "Di mana?" “Jika kita kesulitan dengan makanan, kita hanya perlu memangsa satu sama lain.”') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('09e5444c-9bf6-48b0-aa8d-b64bed32d856', '食料品売場はどこにありますか。', 'Bisakah Anda memberi tahu saya di mana bagian toko kelontong berada?') ON CONFLICT DO NOTHING;

INSERT INTO public.items (id, type, character, slug, level, rank_id, meaning_mnemonic, description) VALUES ('65d2c1fb-32d3-4c85-b558-9bb66f8e036e', 'vocabulary', '来週', '来週', 2, 'b8c90d1e-2f3a-4b5c-6d7e-8f9a0b1c2d3e', 'Minggu depan adalah minggu depan. Ini bukan minggu lalu atau minggu ini, ini minggu berikutnya!', 'Minggu depan adalah minggu depan. Ini bukan minggu lalu atau minggu ini, ini minggu berikutnya!') ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, character = EXCLUDED.character, slug = EXCLUDED.slug, level = EXCLUDED.level, rank_id = EXCLUDED.rank_id, meaning_mnemonic = EXCLUDED.meaning_mnemonic, description = EXCLUDED.description;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('65d2c1fb-32d3-4c85-b558-9bb66f8e036e', 'Minggu Depan', true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES ('65d2c1fb-32d3-4c85-b558-9bb66f8e036e', 'らいしゅう', NULL, true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('65d2c1fb-32d3-4c85-b558-9bb66f8e036e', '来週の日よう日にレストランに行きます。', 'Saya akan pergi ke restoran Minggu depan.') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('65d2c1fb-32d3-4c85-b558-9bb66f8e036e', '来週はどれぐらい雪がふるかな？', 'Aku ingin tahu berapa banyak salju yang akan kita dapatkan minggu depan.') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('65d2c1fb-32d3-4c85-b558-9bb66f8e036e', '飲み会は来週に延期になりました。', 'Pesta minum ditunda hingga minggu depan.') ON CONFLICT DO NOTHING;

INSERT INTO public.items (id, type, character, slug, level, rank_id, meaning_mnemonic, description) VALUES ('7d7bb37d-160d-4e7d-8096-31a1f4ca8005', 'vocabulary', '転がす', '転がす', 2, 'b8c90d1e-2f3a-4b5c-6d7e-8f9a0b1c2d3e', 'Kata ini terdiri dari kanji dengan hiragana ditempelkan. Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanjinya sendiri artinya berputar, dan versi kata kerjanya adalah saat Anda membuat sesuatu berputar. Anda menggulungnya. Itu sebabnya kata kerjanya adalah menggulung sesuatu.

Ini adalah kata kerja transitif. Itu berarti Anda menggulingkan sesuatu yang lain, seperti bola. Atau, jika Anda kumbang kotoran, buang air besar. 💩 Jangan bingung dengan 転がる, yang bersifat intransitif, seperti banyak kata kerja yang berakhiran がる.', 'Kata ini terdiri dari kanji dengan hiragana ditempelkan. Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanjinya sendiri artinya berputar, dan versi kata kerjanya adalah saat Anda membuat sesuatu berputar. Anda menggulungnya. Itu sebabnya kata kerjanya adalah menggulung sesuatu.

Ini adalah kata kerja transitif. Itu berarti Anda menggulingkan sesuatu yang lain, seperti bola. Atau, jika Anda kumbang kotoran, buang air besar. 💩 Jangan bingung dengan 転がる, yang bersifat intransitif, seperti banyak kata kerja yang berakhiran がる.') ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, character = EXCLUDED.character, slug = EXCLUDED.slug, level = EXCLUDED.level, rank_id = EXCLUDED.rank_id, meaning_mnemonic = EXCLUDED.meaning_mnemonic, description = EXCLUDED.description;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('7d7bb37d-160d-4e7d-8096-31a1f4ca8005', 'Untuk Menggulung Sesuatu', true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('7d7bb37d-160d-4e7d-8096-31a1f4ca8005', 'To Turn Something Over', false) ON CONFLICT DO NOTHING;

INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES ('7d7bb37d-160d-4e7d-8096-31a1f4ca8005', 'ころがす', NULL, true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('7d7bb37d-160d-4e7d-8096-31a1f4ca8005', 'カンジュースを転がした。', 'Saya menggulung sekaleng jus.') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('7d7bb37d-160d-4e7d-8096-31a1f4ca8005', '赤ちゃんは人形をおして転がすのが好きだ。', 'Bayi suka mendorong boneka untuk membalikkannya.') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('7d7bb37d-160d-4e7d-8096-31a1f4ca8005', 'Dung beetleは、フンを転がすことから「フンコロガシ」と言います。', 'Kumbang kotoran disebut “penggulung kotoran” karena mereka menggulung kotoran.') ON CONFLICT DO NOTHING;

INSERT INTO public.items (id, type, character, slug, level, rank_id, meaning_mnemonic, description) VALUES ('f90e33d8-c504-4d20-9623-733f86114038', 'vocabulary', '終える', '終える', 2, 'b8c90d1e-2f3a-4b5c-6d7e-8f9a0b1c2d3e', 'Kata ini terdiri dari kanji dengan hiragana ditempelkan. Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanjinya sendiri artinya selesai, jadi versi verbanya adalah menyelesaikan sesuatu atau mengakhiri sesuatu.

Ini adalah kata kerja transitif, artinya Anda menyelesaikan sesuatu, misalnya seharian bekerja!

Anda perlu membedakan ini dari 終わる, yaitu ketika sesuatu berakhir dengan sendirinya. 終える adalah tentang saat kamu mengakhiri sesuatu. Ingatlah seperti ini: Orang Kanada selalu mengakhiri kalimatnya dengan "eh" え, bukan? Begitulah cara Anda mengetahui bahwa mereka mengakhiri kalimatnya. Dengarkan saja "eh", ya?', 'Kata ini terdiri dari kanji dengan hiragana ditempelkan. Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanjinya sendiri artinya selesai, jadi versi verbanya adalah menyelesaikan sesuatu atau mengakhiri sesuatu.

Ini adalah kata kerja transitif, artinya Anda menyelesaikan sesuatu, misalnya seharian bekerja!

Anda perlu membedakan ini dari 終わる, yaitu ketika sesuatu berakhir dengan sendirinya. 終える adalah tentang saat kamu mengakhiri sesuatu. Ingatlah seperti ini: Orang Kanada selalu mengakhiri kalimatnya dengan "eh" え, bukan? Begitulah cara Anda mengetahui bahwa mereka mengakhiri kalimatnya. Dengarkan saja "eh", ya?') ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, character = EXCLUDED.character, slug = EXCLUDED.slug, level = EXCLUDED.level, rank_id = EXCLUDED.rank_id, meaning_mnemonic = EXCLUDED.meaning_mnemonic, description = EXCLUDED.description;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('f90e33d8-c504-4d20-9623-733f86114038', 'Untuk Menyelesaikan Sesuatu', true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('f90e33d8-c504-4d20-9623-733f86114038', 'To End Something', false) ON CONFLICT DO NOTHING;

INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES ('f90e33d8-c504-4d20-9623-733f86114038', 'おえる', NULL, true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('f90e33d8-c504-4d20-9623-733f86114038', '五時には仕事を終えて会社を出たい。', 'Saya ingin menyelesaikan pekerjaan dan meninggalkan kantor pada pukul lima.') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('f90e33d8-c504-4d20-9623-733f86114038', '王女はケーキを食べ終えるとすぐに、お茶を飲んだ。', 'Segera setelah sang putri menghabiskan kuenya, dia minum teh.') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('f90e33d8-c504-4d20-9623-733f86114038', 'ほとんどの魚は水中で一生を終える。', 'Kebanyakan ikan menghabiskan seluruh hidupnya di air.') ON CONFLICT DO NOTHING;

INSERT INTO public.items (id, type, character, slug, level, rank_id, meaning_mnemonic, description) VALUES ('4a7051c1-3335-40e5-a0d5-6b9096087c1f', 'vocabulary', '帰す', '帰す', 2, 'b8c90d1e-2f3a-4b5c-6d7e-8f9a0b1c2d3e', 'Hiragana diakhiri dengan bunyi う, sehingga Anda tahu bahwa ini adalah kata kerja. Kanji sendiri artinya kembali, dan verba ini bersifat transitif artinya mengambil objek langsung. Anda mengirim seseorang kembali. Anda mengirim mereka pulang. Dan beritahu mereka untuk tidak pernah mendekatimu lagi. Jadi ini berarti mengirim seseorang kembali atau mengirim seseorang pulang.

Faktanya, sebagian besar kata kerja yang diakhiri dengan す bersifat transitif. Untuk membantu Anda mengingat hal itu, pikirkan untuk menuntut (す) seseorang untuk memastikan mereka pulang!', 'Hiragana diakhiri dengan bunyi う, sehingga Anda tahu bahwa ini adalah kata kerja. Kanji sendiri artinya kembali, dan verba ini bersifat transitif artinya mengambil objek langsung. Anda mengirim seseorang kembali. Anda mengirim mereka pulang. Dan beritahu mereka untuk tidak pernah mendekatimu lagi. Jadi ini berarti mengirim seseorang kembali atau mengirim seseorang pulang.

Faktanya, sebagian besar kata kerja yang diakhiri dengan す bersifat transitif. Untuk membantu Anda mengingat hal itu, pikirkan untuk menuntut (す) seseorang untuk memastikan mereka pulang!') ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, character = EXCLUDED.character, slug = EXCLUDED.slug, level = EXCLUDED.level, rank_id = EXCLUDED.rank_id, meaning_mnemonic = EXCLUDED.meaning_mnemonic, description = EXCLUDED.description;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('4a7051c1-3335-40e5-a0d5-6b9096087c1f', 'Untuk Mengirim Seseorang Kembali', true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('4a7051c1-3335-40e5-a0d5-6b9096087c1f', 'To Send Someone Home', false) ON CONFLICT DO NOTHING;

INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES ('4a7051c1-3335-40e5-a0d5-6b9096087c1f', 'かえす', NULL, true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('4a7051c1-3335-40e5-a0d5-6b9096087c1f', '今日は少し早く運転手を帰した。', 'Saya mengirim sopir saya pulang sedikit lebih awal hari ini.') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('4a7051c1-3335-40e5-a0d5-6b9096087c1f', '作業が全部終わらないと帰してもらえないよ。', 'Mereka tidak akan mengirim Anda pulang kecuali Anda menyelesaikan semua pekerjaan.') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('4a7051c1-3335-40e5-a0d5-6b9096087c1f', 'この魚を早く海に帰してあげたいんです。', 'Saya ingin mengirim ikan ini kembali ke laut secepatnya.') ON CONFLICT DO NOTHING;

-- 5. Insert Kanji-to-Radical Prerequisites
INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT 'bc93a2b8-1daa-48bd-9ae1-f78b955b7ebe', id FROM public.items WHERE type = 'radical' AND slug = 'scooter' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.kanji_radicals (kanji_id, radical_id)
SELECT 'bc93a2b8-1daa-48bd-9ae1-f78b955b7ebe', id FROM public.items WHERE type = 'radical' AND slug = 'scooter' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT 'bc93a2b8-1daa-48bd-9ae1-f78b955b7ebe', id FROM public.items WHERE type = 'radical' AND slug = 'mama' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.kanji_radicals (kanji_id, radical_id)
SELECT 'bc93a2b8-1daa-48bd-9ae1-f78b955b7ebe', id FROM public.items WHERE type = 'radical' AND slug = 'mama' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT 'bc93a2b8-1daa-48bd-9ae1-f78b955b7ebe', id FROM public.items WHERE type = 'radical' AND slug = 'task' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.kanji_radicals (kanji_id, radical_id)
SELECT 'bc93a2b8-1daa-48bd-9ae1-f78b955b7ebe', id FROM public.items WHERE type = 'radical' AND slug = 'task' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '98974473-5024-43b4-ab78-6627b76653c6', id FROM public.items WHERE type = 'radical' AND slug = 'mouth' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.kanji_radicals (kanji_id, radical_id)
SELECT '98974473-5024-43b4-ab78-6627b76653c6', id FROM public.items WHERE type = 'radical' AND slug = 'mouth' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '98974473-5024-43b4-ab78-6627b76653c6', id FROM public.items WHERE type = 'radical' AND slug = 'shellfish' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.kanji_radicals (kanji_id, radical_id)
SELECT '98974473-5024-43b4-ab78-6627b76653c6', id FROM public.items WHERE type = 'radical' AND slug = 'shellfish' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '527bfdcb-65ed-4326-b100-b20052901594', id FROM public.items WHERE type = 'radical' AND slug = 'pope' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.kanji_radicals (kanji_id, radical_id)
SELECT '527bfdcb-65ed-4326-b100-b20052901594', id FROM public.items WHERE type = 'radical' AND slug = 'pope' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '527bfdcb-65ed-4326-b100-b20052901594', id FROM public.items WHERE type = 'radical' AND slug = 'ground' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.kanji_radicals (kanji_id, radical_id)
SELECT '527bfdcb-65ed-4326-b100-b20052901594', id FROM public.items WHERE type = 'radical' AND slug = 'ground' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '527bfdcb-65ed-4326-b100-b20052901594', id FROM public.items WHERE type = 'radical' AND slug = 'fins' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.kanji_radicals (kanji_id, radical_id)
SELECT '527bfdcb-65ed-4326-b100-b20052901594', id FROM public.items WHERE type = 'radical' AND slug = 'fins' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT 'faaea376-668c-409a-ba35-e6294442da75', id FROM public.items WHERE type = 'radical' AND slug = 'knife' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.kanji_radicals (kanji_id, radical_id)
SELECT 'faaea376-668c-409a-ba35-e6294442da75', id FROM public.items WHERE type = 'radical' AND slug = 'knife' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT 'faaea376-668c-409a-ba35-e6294442da75', id FROM public.items WHERE type = 'radical' AND slug = 'wolverine' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.kanji_radicals (kanji_id, radical_id)
SELECT 'faaea376-668c-409a-ba35-e6294442da75', id FROM public.items WHERE type = 'radical' AND slug = 'wolverine' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT 'faaea376-668c-409a-ba35-e6294442da75', id FROM public.items WHERE type = 'radical' AND slug = 'forehead' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.kanji_radicals (kanji_id, radical_id)
SELECT 'faaea376-668c-409a-ba35-e6294442da75', id FROM public.items WHERE type = 'radical' AND slug = 'forehead' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT 'faaea376-668c-409a-ba35-e6294442da75', id FROM public.items WHERE type = 'radical' AND slug = 'towel' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.kanji_radicals (kanji_id, radical_id)
SELECT 'faaea376-668c-409a-ba35-e6294442da75', id FROM public.items WHERE type = 'radical' AND slug = 'towel' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '8c46c30e-d57d-476c-90d9-8f1cb10d2a40', id FROM public.items WHERE type = 'radical' AND slug = 'run' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.kanji_radicals (kanji_id, radical_id)
SELECT '8c46c30e-d57d-476c-90d9-8f1cb10d2a40', id FROM public.items WHERE type = 'radical' AND slug = 'run' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '8c46c30e-d57d-476c-90d9-8f1cb10d2a40', id FROM public.items WHERE type = 'radical' AND slug = 'oneself' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.kanji_radicals (kanji_id, radical_id)
SELECT '8c46c30e-d57d-476c-90d9-8f1cb10d2a40', id FROM public.items WHERE type = 'radical' AND slug = 'oneself' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT 'cfdfb0cb-f43c-4099-a978-07c07b913d11', id FROM public.items WHERE type = 'radical' AND slug = 'rice' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.kanji_radicals (kanji_id, radical_id)
SELECT 'cfdfb0cb-f43c-4099-a978-07c07b913d11', id FROM public.items WHERE type = 'radical' AND slug = 'rice' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT 'cfdfb0cb-f43c-4099-a978-07c07b913d11', id FROM public.items WHERE type = 'radical' AND slug = 'ladle' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.kanji_radicals (kanji_id, radical_id)
SELECT 'cfdfb0cb-f43c-4099-a978-07c07b913d11', id FROM public.items WHERE type = 'radical' AND slug = 'ladle' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT 'ce3999fb-43fa-4bb0-a261-b85d5c6533ff', id FROM public.items WHERE type = 'radical' AND slug = 'cow' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.kanji_radicals (kanji_id, radical_id)
SELECT 'ce3999fb-43fa-4bb0-a261-b85d5c6533ff', id FROM public.items WHERE type = 'radical' AND slug = 'cow' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT 'ce3999fb-43fa-4bb0-a261-b85d5c6533ff', id FROM public.items WHERE type = 'radical' AND slug = 'temple' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.kanji_radicals (kanji_id, radical_id)
SELECT 'ce3999fb-43fa-4bb0-a261-b85d5c6533ff', id FROM public.items WHERE type = 'radical' AND slug = 'temple' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT 'cf7cafe5-5fea-4b93-b8c2-c66998a2a067', id FROM public.items WHERE type = 'radical' AND slug = 'building' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.kanji_radicals (kanji_id, radical_id)
SELECT 'cf7cafe5-5fea-4b93-b8c2-c66998a2a067', id FROM public.items WHERE type = 'radical' AND slug = 'building' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT 'cf7cafe5-5fea-4b93-b8c2-c66998a2a067', id FROM public.items WHERE type = 'radical' AND slug = 'roof' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.kanji_radicals (kanji_id, radical_id)
SELECT 'cf7cafe5-5fea-4b93-b8c2-c66998a2a067', id FROM public.items WHERE type = 'radical' AND slug = 'roof' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT 'cf7cafe5-5fea-4b93-b8c2-c66998a2a067', id FROM public.items WHERE type = 'radical' AND slug = 'origin' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.kanji_radicals (kanji_id, radical_id)
SELECT 'cf7cafe5-5fea-4b93-b8c2-c66998a2a067', id FROM public.items WHERE type = 'radical' AND slug = 'origin' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '75045e9f-2cae-486d-9474-a7265b072fb0', id FROM public.items WHERE type = 'radical' AND slug = 'sick' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.kanji_radicals (kanji_id, radical_id)
SELECT '75045e9f-2cae-486d-9474-a7265b072fb0', id FROM public.items WHERE type = 'radical' AND slug = 'sick' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '75045e9f-2cae-486d-9474-a7265b072fb0', id FROM public.items WHERE type = 'radical' AND slug = 'dynamite' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.kanji_radicals (kanji_id, radical_id)
SELECT '75045e9f-2cae-486d-9474-a7265b072fb0', id FROM public.items WHERE type = 'radical' AND slug = 'dynamite' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '5b5be093-c2ed-427b-9304-3a941cf29524', id FROM public.items WHERE type = 'radical' AND slug = 'thread' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.kanji_radicals (kanji_id, radical_id)
SELECT '5b5be093-c2ed-427b-9304-3a941cf29524', id FROM public.items WHERE type = 'radical' AND slug = 'thread' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '5b5be093-c2ed-427b-9304-3a941cf29524', id FROM public.items WHERE type = 'radical' AND slug = 'clan' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.kanji_radicals (kanji_id, radical_id)
SELECT '5b5be093-c2ed-427b-9304-3a941cf29524', id FROM public.items WHERE type = 'radical' AND slug = 'clan' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '436deb91-e160-4d80-95ae-e03178a87100', id FROM public.items WHERE type = 'radical' AND slug = 'direction' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.kanji_radicals (kanji_id, radical_id)
SELECT '436deb91-e160-4d80-95ae-e03178a87100', id FROM public.items WHERE type = 'radical' AND slug = 'direction' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '436deb91-e160-4d80-95ae-e03178a87100', id FROM public.items WHERE type = 'radical' AND slug = 'gun' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.kanji_radicals (kanji_id, radical_id)
SELECT '436deb91-e160-4d80-95ae-e03178a87100', id FROM public.items WHERE type = 'radical' AND slug = 'gun' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '436deb91-e160-4d80-95ae-e03178a87100', id FROM public.items WHERE type = 'radical' AND slug = 'tofu' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.kanji_radicals (kanji_id, radical_id)
SELECT '436deb91-e160-4d80-95ae-e03178a87100', id FROM public.items WHERE type = 'radical' AND slug = 'tofu' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '5761edf2-76f0-4d4e-a61c-ae1ba2815755', id FROM public.items WHERE type = 'radical' AND slug = 'leaf' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.kanji_radicals (kanji_id, radical_id)
SELECT '5761edf2-76f0-4d4e-a61c-ae1ba2815755', id FROM public.items WHERE type = 'radical' AND slug = 'leaf' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '5761edf2-76f0-4d4e-a61c-ae1ba2815755', id FROM public.items WHERE type = 'radical' AND slug = 'eye' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.kanji_radicals (kanji_id, radical_id)
SELECT '5761edf2-76f0-4d4e-a61c-ae1ba2815755', id FROM public.items WHERE type = 'radical' AND slug = 'eye' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '5761edf2-76f0-4d4e-a61c-ae1ba2815755', id FROM public.items WHERE type = 'radical' AND slug = 'winter' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.kanji_radicals (kanji_id, radical_id)
SELECT '5761edf2-76f0-4d4e-a61c-ae1ba2815755', id FROM public.items WHERE type = 'radical' AND slug = 'winter' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT 'c04bd75e-f6dc-4f5b-a919-e43c0a8e45a6', id FROM public.items WHERE type = 'radical' AND slug = 'leader' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.kanji_radicals (kanji_id, radical_id)
SELECT 'c04bd75e-f6dc-4f5b-a919-e43c0a8e45a6', id FROM public.items WHERE type = 'radical' AND slug = 'leader' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT 'c04bd75e-f6dc-4f5b-a919-e43c0a8e45a6', id FROM public.items WHERE type = 'radical' AND slug = 'long-ago' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.kanji_radicals (kanji_id, radical_id)
SELECT 'c04bd75e-f6dc-4f5b-a919-e43c0a8e45a6', id FROM public.items WHERE type = 'radical' AND slug = 'long-ago' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT 'c3d32c5b-e2fe-4769-b7a0-c74276c08d3c', id FROM public.items WHERE type = 'radical' AND slug = 'excuse' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.kanji_radicals (kanji_id, radical_id)
SELECT 'c3d32c5b-e2fe-4769-b7a0-c74276c08d3c', id FROM public.items WHERE type = 'radical' AND slug = 'excuse' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT 'c3d32c5b-e2fe-4769-b7a0-c74276c08d3c', id FROM public.items WHERE type = 'radical' AND slug = 'power' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.kanji_radicals (kanji_id, radical_id)
SELECT 'c3d32c5b-e2fe-4769-b7a0-c74276c08d3c', id FROM public.items WHERE type = 'radical' AND slug = 'power' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '4f337b47-9a7f-4f29-80ce-8ee55c3376a0', id FROM public.items WHERE type = 'radical' AND slug = 'king' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.kanji_radicals (kanji_id, radical_id)
SELECT '4f337b47-9a7f-4f29-80ce-8ee55c3376a0', id FROM public.items WHERE type = 'radical' AND slug = 'king' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '4f337b47-9a7f-4f29-80ce-8ee55c3376a0', id FROM public.items WHERE type = 'radical' AND slug = 'village' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.kanji_radicals (kanji_id, radical_id)
SELECT '4f337b47-9a7f-4f29-80ce-8ee55c3376a0', id FROM public.items WHERE type = 'radical' AND slug = 'village' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT 'e45c1e79-76e5-49f4-931e-e5cfddf00ea2', id FROM public.items WHERE type = 'radical' AND slug = 'heavy' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.kanji_radicals (kanji_id, radical_id)
SELECT 'e45c1e79-76e5-49f4-931e-e5cfddf00ea2', id FROM public.items WHERE type = 'radical' AND slug = 'heavy' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT 'e45c1e79-76e5-49f4-931e-e5cfddf00ea2', id FROM public.items WHERE type = 'radical' AND slug = 'power' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.kanji_radicals (kanji_id, radical_id)
SELECT 'e45c1e79-76e5-49f4-931e-e5cfddf00ea2', id FROM public.items WHERE type = 'radical' AND slug = 'power' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT 'fb26eede-689e-4023-bcb0-8356bcebbab2', id FROM public.items WHERE type = 'radical' AND slug = 'gate' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.kanji_radicals (kanji_id, radical_id)
SELECT 'fb26eede-689e-4023-bcb0-8356bcebbab2', id FROM public.items WHERE type = 'radical' AND slug = 'gate' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT 'fb26eede-689e-4023-bcb0-8356bcebbab2', id FROM public.items WHERE type = 'radical' AND slug = 'mouth' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.kanji_radicals (kanji_id, radical_id)
SELECT 'fb26eede-689e-4023-bcb0-8356bcebbab2', id FROM public.items WHERE type = 'radical' AND slug = 'mouth' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '36b4bc5d-c5d5-4c76-8800-a223ccfcf285', id FROM public.items WHERE type = 'radical' AND slug = 'bow' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.kanji_radicals (kanji_id, radical_id)
SELECT '36b4bc5d-c5d5-4c76-8800-a223ccfcf285', id FROM public.items WHERE type = 'radical' AND slug = 'bow' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '36b4bc5d-c5d5-4c76-8800-a223ccfcf285', id FROM public.items WHERE type = 'radical' AND slug = 'private' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.kanji_radicals (kanji_id, radical_id)
SELECT '36b4bc5d-c5d5-4c76-8800-a223ccfcf285', id FROM public.items WHERE type = 'radical' AND slug = 'private' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '36b4bc5d-c5d5-4c76-8800-a223ccfcf285', id FROM public.items WHERE type = 'radical' AND slug = 'insect' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.kanji_radicals (kanji_id, radical_id)
SELECT '36b4bc5d-c5d5-4c76-8800-a223ccfcf285', id FROM public.items WHERE type = 'radical' AND slug = 'insect' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '9ef4b3ce-5a9b-4f69-8910-dfbb343a65a0', id FROM public.items WHERE type = 'radical' AND slug = 'teacher' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.kanji_radicals (kanji_id, radical_id)
SELECT '9ef4b3ce-5a9b-4f69-8910-dfbb343a65a0', id FROM public.items WHERE type = 'radical' AND slug = 'teacher' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '9ef4b3ce-5a9b-4f69-8910-dfbb343a65a0', id FROM public.items WHERE type = 'radical' AND slug = 'winter' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.kanji_radicals (kanji_id, radical_id)
SELECT '9ef4b3ce-5a9b-4f69-8910-dfbb343a65a0', id FROM public.items WHERE type = 'radical' AND slug = 'winter' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '248de31e-896c-4634-8530-8548c9525be1', id FROM public.items WHERE type = 'radical' AND slug = 'village' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.kanji_radicals (kanji_id, radical_id)
SELECT '248de31e-896c-4634-8530-8548c9525be1', id FROM public.items WHERE type = 'radical' AND slug = 'village' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '248de31e-896c-4634-8530-8548c9525be1', id FROM public.items WHERE type = 'radical' AND slug = 'beforehand' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.kanji_radicals (kanji_id, radical_id)
SELECT '248de31e-896c-4634-8530-8548c9525be1', id FROM public.items WHERE type = 'radical' AND slug = 'beforehand' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '69927f04-0a86-404d-bca7-3eb9fde99aa1', id FROM public.items WHERE type = 'radical' AND slug = 'thread' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.kanji_radicals (kanji_id, radical_id)
SELECT '69927f04-0a86-404d-bca7-3eb9fde99aa1', id FROM public.items WHERE type = 'radical' AND slug = 'thread' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '69927f04-0a86-404d-bca7-3eb9fde99aa1', id FROM public.items WHERE type = 'radical' AND slug = 'winter' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.kanji_radicals (kanji_id, radical_id)
SELECT '69927f04-0a86-404d-bca7-3eb9fde99aa1', id FROM public.items WHERE type = 'radical' AND slug = 'winter' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '69927f04-0a86-404d-bca7-3eb9fde99aa1', id FROM public.items WHERE type = 'radical' AND slug = 'two' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.kanji_radicals (kanji_id, radical_id)
SELECT '69927f04-0a86-404d-bca7-3eb9fde99aa1', id FROM public.items WHERE type = 'radical' AND slug = 'two' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT 'ee2ed68a-ee9d-4afe-b903-517bcf35c340', id FROM public.items WHERE type = 'radical' AND slug = 'asia' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.kanji_radicals (kanji_id, radical_id)
SELECT 'ee2ed68a-ee9d-4afe-b903-517bcf35c340', id FROM public.items WHERE type = 'radical' AND slug = 'asia' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT 'ee2ed68a-ee9d-4afe-b903-517bcf35c340', id FROM public.items WHERE type = 'radical' AND slug = 'heart' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.kanji_radicals (kanji_id, radical_id)
SELECT 'ee2ed68a-ee9d-4afe-b903-517bcf35c340', id FROM public.items WHERE type = 'radical' AND slug = 'heart' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '9af70324-f30c-464d-b003-0c3832406374', id FROM public.items WHERE type = 'radical' AND slug = 'direction' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.kanji_radicals (kanji_id, radical_id)
SELECT '9af70324-f30c-464d-b003-0c3832406374', id FROM public.items WHERE type = 'radical' AND slug = 'direction' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '9af70324-f30c-464d-b003-0c3832406374', id FROM public.items WHERE type = 'radical' AND slug = 'gun' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.kanji_radicals (kanji_id, radical_id)
SELECT '9af70324-f30c-464d-b003-0c3832406374', id FROM public.items WHERE type = 'radical' AND slug = 'gun' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '9af70324-f30c-464d-b003-0c3832406374', id FROM public.items WHERE type = 'radical' AND slug = 'arrow' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.kanji_radicals (kanji_id, radical_id)
SELECT '9af70324-f30c-464d-b003-0c3832406374', id FROM public.items WHERE type = 'radical' AND slug = 'arrow' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '917add9d-33b0-4843-96c2-b5327f4f21c3', id FROM public.items WHERE type = 'radical' AND slug = 'car' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.kanji_radicals (kanji_id, radical_id)
SELECT '917add9d-33b0-4843-96c2-b5327f4f21c3', id FROM public.items WHERE type = 'radical' AND slug = 'car' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '917add9d-33b0-4843-96c2-b5327f4f21c3', id FROM public.items WHERE type = 'radical' AND slug = 'cloud' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.kanji_radicals (kanji_id, radical_id)
SELECT '917add9d-33b0-4843-96c2-b5327f4f21c3', id FROM public.items WHERE type = 'radical' AND slug = 'cloud' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '957310e3-5b90-4355-96b4-5d96d1d9ddbe', id FROM public.items WHERE type = 'radical' AND slug = 'scooter' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.kanji_radicals (kanji_id, radical_id)
SELECT '957310e3-5b90-4355-96b4-5d96d1d9ddbe', id FROM public.items WHERE type = 'radical' AND slug = 'scooter' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '957310e3-5b90-4355-96b4-5d96d1d9ddbe', id FROM public.items WHERE type = 'radical' AND slug = 'circumference' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.kanji_radicals (kanji_id, radical_id)
SELECT '957310e3-5b90-4355-96b4-5d96d1d9ddbe', id FROM public.items WHERE type = 'radical' AND slug = 'circumference' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '4b4703e7-2ddb-48ef-9add-d50191e413fb', id FROM public.items WHERE type = 'radical' AND slug = 'black' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.kanji_radicals (kanji_id, radical_id)
SELECT '4b4703e7-2ddb-48ef-9add-d50191e413fb', id FROM public.items WHERE type = 'radical' AND slug = 'black' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT 'fd190c3d-cb77-4874-bd42-625ee539b1e7', id FROM public.items WHERE type = 'radical' AND slug = 'feathers' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.kanji_radicals (kanji_id, radical_id)
SELECT 'fd190c3d-cb77-4874-bd42-625ee539b1e7', id FROM public.items WHERE type = 'radical' AND slug = 'feathers' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT 'fd190c3d-cb77-4874-bd42-625ee539b1e7', id FROM public.items WHERE type = 'radical' AND slug = 'white' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.kanji_radicals (kanji_id, radical_id)
SELECT 'fd190c3d-cb77-4874-bd42-625ee539b1e7', id FROM public.items WHERE type = 'radical' AND slug = 'white' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '873bb149-ca22-4c23-acf4-fe8a3a849556', id FROM public.items WHERE type = 'radical' AND slug = 'viking' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.kanji_radicals (kanji_id, radical_id)
SELECT '873bb149-ca22-4c23-acf4-fe8a3a849556', id FROM public.items WHERE type = 'radical' AND slug = 'viking' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '873bb149-ca22-4c23-acf4-fe8a3a849556', id FROM public.items WHERE type = 'radical' AND slug = 'mouth' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.kanji_radicals (kanji_id, radical_id)
SELECT '873bb149-ca22-4c23-acf4-fe8a3a849556', id FROM public.items WHERE type = 'radical' AND slug = 'mouth' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '873bb149-ca22-4c23-acf4-fe8a3a849556', id FROM public.items WHERE type = 'radical' AND slug = 'dirt' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.kanji_radicals (kanji_id, radical_id)
SELECT '873bb149-ca22-4c23-acf4-fe8a3a849556', id FROM public.items WHERE type = 'radical' AND slug = 'dirt' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT 'bcc6738d-d6b9-4585-948d-6591a871f6b9', id FROM public.items WHERE type = 'radical' AND slug = 'bird' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.kanji_radicals (kanji_id, radical_id)
SELECT 'bcc6738d-d6b9-4585-948d-6591a871f6b9', id FROM public.items WHERE type = 'radical' AND slug = 'bird' LIMIT 1 ON CONFLICT DO NOTHING;

-- 6. Insert Vocab-to-Kanji Prerequisites
INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('a9f8c478-67fb-4d53-939f-598548f40caf', '5761edf2-76f0-4d4e-a61c-ae1ba2815755') ON CONFLICT DO NOTHING;

INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('a9f8c478-67fb-4d53-939f-598548f40caf', '5761edf2-76f0-4d4e-a61c-ae1ba2815755') ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('78d7cf35-93bb-4e4b-906a-33d9063221db', '5761edf2-76f0-4d4e-a61c-ae1ba2815755') ON CONFLICT DO NOTHING;

INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('78d7cf35-93bb-4e4b-906a-33d9063221db', '5761edf2-76f0-4d4e-a61c-ae1ba2815755') ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '78d7cf35-93bb-4e4b-906a-33d9063221db', id FROM public.items WHERE type = 'kanji' AND character = '休' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id)
SELECT '78d7cf35-93bb-4e4b-906a-33d9063221db', id FROM public.items WHERE type = 'kanji' AND character = '休' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('5409148b-976a-492e-92a4-6d237ce22b5a', '5b5be093-c2ed-427b-9304-3a941cf29524') ON CONFLICT DO NOTHING;

INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('5409148b-976a-492e-92a4-6d237ce22b5a', '5b5be093-c2ed-427b-9304-3a941cf29524') ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '09e8b29a-7f20-4980-b870-b0f0c2ee4fc8', id FROM public.items WHERE type = 'kanji' AND character = '手' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id)
SELECT '09e8b29a-7f20-4980-b870-b0f0c2ee4fc8', id FROM public.items WHERE type = 'kanji' AND character = '手' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('09e8b29a-7f20-4980-b870-b0f0c2ee4fc8', '5b5be093-c2ed-427b-9304-3a941cf29524') ON CONFLICT DO NOTHING;

INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('09e8b29a-7f20-4980-b870-b0f0c2ee4fc8', '5b5be093-c2ed-427b-9304-3a941cf29524') ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('6b277049-30b8-4d0b-ad8a-a9ae4c8b1498', 'bc93a2b8-1daa-48bd-9ae1-f78b955b7ebe') ON CONFLICT DO NOTHING;

INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('6b277049-30b8-4d0b-ad8a-a9ae4c8b1498', 'bc93a2b8-1daa-48bd-9ae1-f78b955b7ebe') ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('ea673baf-394d-4015-b943-1a6ae6c2c9da', '36b4bc5d-c5d5-4c76-8800-a223ccfcf285') ON CONFLICT DO NOTHING;

INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('ea673baf-394d-4015-b943-1a6ae6c2c9da', '36b4bc5d-c5d5-4c76-8800-a223ccfcf285') ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('f18d3198-02e4-472c-87a8-6988f61ac94e', '36b4bc5d-c5d5-4c76-8800-a223ccfcf285') ON CONFLICT DO NOTHING;

INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('f18d3198-02e4-472c-87a8-6988f61ac94e', '36b4bc5d-c5d5-4c76-8800-a223ccfcf285') ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT 'f18d3198-02e4-472c-87a8-6988f61ac94e', id FROM public.items WHERE type = 'kanji' AND character = '力' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id)
SELECT 'f18d3198-02e4-472c-87a8-6988f61ac94e', id FROM public.items WHERE type = 'kanji' AND character = '力' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('b56dfc09-3bee-44e8-a8e9-5d8d446c2f20', '9ef4b3ce-5a9b-4f69-8910-dfbb343a65a0') ON CONFLICT DO NOTHING;

INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('b56dfc09-3bee-44e8-a8e9-5d8d446c2f20', '9ef4b3ce-5a9b-4f69-8910-dfbb343a65a0') ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('e6547c0d-432c-4a6a-8d41-64bd02bac8d4', '9ef4b3ce-5a9b-4f69-8910-dfbb343a65a0') ON CONFLICT DO NOTHING;

INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('e6547c0d-432c-4a6a-8d41-64bd02bac8d4', '9ef4b3ce-5a9b-4f69-8910-dfbb343a65a0') ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT 'e6547c0d-432c-4a6a-8d41-64bd02bac8d4', id FROM public.items WHERE type = 'kanji' AND character = '室' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id)
SELECT 'e6547c0d-432c-4a6a-8d41-64bd02bac8d4', id FROM public.items WHERE type = 'kanji' AND character = '室' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '8c869abf-369c-4d27-98ae-97b25c6eb6d4', id FROM public.items WHERE type = 'kanji' AND character = '心' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id)
SELECT '8c869abf-369c-4d27-98ae-97b25c6eb6d4', id FROM public.items WHERE type = 'kanji' AND character = '心' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('8c869abf-369c-4d27-98ae-97b25c6eb6d4', '4f337b47-9a7f-4f29-80ce-8ee55c3376a0') ON CONFLICT DO NOTHING;

INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('8c869abf-369c-4d27-98ae-97b25c6eb6d4', '4f337b47-9a7f-4f29-80ce-8ee55c3376a0') ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '8c869abf-369c-4d27-98ae-97b25c6eb6d4', id FROM public.items WHERE type = 'kanji' AND character = '学' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id)
SELECT '8c869abf-369c-4d27-98ae-97b25c6eb6d4', id FROM public.items WHERE type = 'kanji' AND character = '学' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT 'a7e79eda-66bc-4dbb-bb41-0aabd985cfb0', id FROM public.items WHERE type = 'kanji' AND character = '地' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id)
SELECT 'a7e79eda-66bc-4dbb-bb41-0aabd985cfb0', id FROM public.items WHERE type = 'kanji' AND character = '地' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('a7e79eda-66bc-4dbb-bb41-0aabd985cfb0', '4f337b47-9a7f-4f29-80ce-8ee55c3376a0') ON CONFLICT DO NOTHING;

INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('a7e79eda-66bc-4dbb-bb41-0aabd985cfb0', '4f337b47-9a7f-4f29-80ce-8ee55c3376a0') ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '36a7a780-1e95-49b5-9c4f-cdda9c2129c3', id FROM public.items WHERE type = 'kanji' AND character = '先' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id)
SELECT '36a7a780-1e95-49b5-9c4f-cdda9c2129c3', id FROM public.items WHERE type = 'kanji' AND character = '先' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('36a7a780-1e95-49b5-9c4f-cdda9c2129c3', '957310e3-5b90-4355-96b4-5d96d1d9ddbe') ON CONFLICT DO NOTHING;

INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('36a7a780-1e95-49b5-9c4f-cdda9c2129c3', '957310e3-5b90-4355-96b4-5d96d1d9ddbe') ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT 'ec533f91-8fde-4690-bb90-24494030f6cf', id FROM public.items WHERE type = 'kanji' AND character = '今' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id)
SELECT 'ec533f91-8fde-4690-bb90-24494030f6cf', id FROM public.items WHERE type = 'kanji' AND character = '今' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('ec533f91-8fde-4690-bb90-24494030f6cf', '957310e3-5b90-4355-96b4-5d96d1d9ddbe') ON CONFLICT DO NOTHING;

INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('ec533f91-8fde-4690-bb90-24494030f6cf', '957310e3-5b90-4355-96b4-5d96d1d9ddbe') ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('ed3f195c-710e-4d81-9a62-a2467054dabb', 'bcc6738d-d6b9-4585-948d-6591a871f6b9') ON CONFLICT DO NOTHING;

INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('ed3f195c-710e-4d81-9a62-a2467054dabb', 'bcc6738d-d6b9-4585-948d-6591a871f6b9') ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '276aeffc-d636-4a89-88b3-12a018185743', id FROM public.items WHERE type = 'kanji' AND character = '白' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id)
SELECT '276aeffc-d636-4a89-88b3-12a018185743', id FROM public.items WHERE type = 'kanji' AND character = '白' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('276aeffc-d636-4a89-88b3-12a018185743', 'bcc6738d-d6b9-4585-948d-6591a871f6b9') ON CONFLICT DO NOTHING;

INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('276aeffc-d636-4a89-88b3-12a018185743', 'bcc6738d-d6b9-4585-948d-6591a871f6b9') ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('5318b8e0-ed63-4c0f-bbad-30bd170c838a', '4b4703e7-2ddb-48ef-9add-d50191e413fb') ON CONFLICT DO NOTHING;

INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('5318b8e0-ed63-4c0f-bbad-30bd170c838a', '4b4703e7-2ddb-48ef-9add-d50191e413fb') ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('2dbfa41f-f876-4f8d-bfbb-2068190046d4', '4b4703e7-2ddb-48ef-9add-d50191e413fb') ON CONFLICT DO NOTHING;

INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('2dbfa41f-f876-4f8d-bfbb-2068190046d4', '4b4703e7-2ddb-48ef-9add-d50191e413fb') ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '2dbfa41f-f876-4f8d-bfbb-2068190046d4', id FROM public.items WHERE type = 'kanji' AND character = '人' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id)
SELECT '2dbfa41f-f876-4f8d-bfbb-2068190046d4', id FROM public.items WHERE type = 'kanji' AND character = '人' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('89b7a6c5-64ad-4f3e-8fc7-a5863a3530e0', '8c46c30e-d57d-476c-90d9-8f1cb10d2a40') ON CONFLICT DO NOTHING;

INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('89b7a6c5-64ad-4f3e-8fc7-a5863a3530e0', '8c46c30e-d57d-476c-90d9-8f1cb10d2a40') ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('608840be-6960-43b6-ac4f-aa7858f2b531', '75045e9f-2cae-486d-9474-a7265b072fb0') ON CONFLICT DO NOTHING;

INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('608840be-6960-43b6-ac4f-aa7858f2b531', '75045e9f-2cae-486d-9474-a7265b072fb0') ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('608840be-6960-43b6-ac4f-aa7858f2b531', 'cf7cafe5-5fea-4b93-b8c2-c66998a2a067') ON CONFLICT DO NOTHING;

INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('608840be-6960-43b6-ac4f-aa7858f2b531', 'cf7cafe5-5fea-4b93-b8c2-c66998a2a067') ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '3f2a4052-deac-4271-9d80-6c4f9ae7755b', id FROM public.items WHERE type = 'kanji' AND character = '学' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id)
SELECT '3f2a4052-deac-4271-9d80-6c4f9ae7755b', id FROM public.items WHERE type = 'kanji' AND character = '学' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('3f2a4052-deac-4271-9d80-6c4f9ae7755b', 'cf7cafe5-5fea-4b93-b8c2-c66998a2a067') ON CONFLICT DO NOTHING;

INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('3f2a4052-deac-4271-9d80-6c4f9ae7755b', 'cf7cafe5-5fea-4b93-b8c2-c66998a2a067') ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('3a4c8808-8c1c-47aa-9a57-2a7bfde67ece', '69927f04-0a86-404d-bca7-3eb9fde99aa1') ON CONFLICT DO NOTHING;

INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('3a4c8808-8c1c-47aa-9a57-2a7bfde67ece', '69927f04-0a86-404d-bca7-3eb9fde99aa1') ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('0f3d9bc1-1165-4a7c-99db-f188d5aad8ef', 'fd190c3d-cb77-4874-bd42-625ee539b1e7') ON CONFLICT DO NOTHING;

INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('0f3d9bc1-1165-4a7c-99db-f188d5aad8ef', 'fd190c3d-cb77-4874-bd42-625ee539b1e7') ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('4ff8bc1a-c163-455f-bcbb-b591c1cd992c', '917add9d-33b0-4843-96c2-b5327f4f21c3') ON CONFLICT DO NOTHING;

INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('4ff8bc1a-c163-455f-bcbb-b591c1cd992c', '917add9d-33b0-4843-96c2-b5327f4f21c3') ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT 'cfcf6ee3-0504-49d2-b9bc-12a53d47dae9', id FROM public.items WHERE type = 'kanji' AND character = '自' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id)
SELECT 'cfcf6ee3-0504-49d2-b9bc-12a53d47dae9', id FROM public.items WHERE type = 'kanji' AND character = '自' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('cfcf6ee3-0504-49d2-b9bc-12a53d47dae9', '917add9d-33b0-4843-96c2-b5327f4f21c3') ON CONFLICT DO NOTHING;

INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('cfcf6ee3-0504-49d2-b9bc-12a53d47dae9', '917add9d-33b0-4843-96c2-b5327f4f21c3') ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT 'cfcf6ee3-0504-49d2-b9bc-12a53d47dae9', id FROM public.items WHERE type = 'kanji' AND character = '車' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id)
SELECT 'cfcf6ee3-0504-49d2-b9bc-12a53d47dae9', id FROM public.items WHERE type = 'kanji' AND character = '車' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('24000326-7a95-4323-9b4b-91cf65944039', '917add9d-33b0-4843-96c2-b5327f4f21c3') ON CONFLICT DO NOTHING;

INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('24000326-7a95-4323-9b4b-91cf65944039', '917add9d-33b0-4843-96c2-b5327f4f21c3') ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '24000326-7a95-4323-9b4b-91cf65944039', id FROM public.items WHERE type = 'kanji' AND character = '送' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id)
SELECT '24000326-7a95-4323-9b4b-91cf65944039', id FROM public.items WHERE type = 'kanji' AND character = '送' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('72ef1c94-317f-4cf8-97e1-28b53af102f8', '75045e9f-2cae-486d-9474-a7265b072fb0') ON CONFLICT DO NOTHING;

INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('72ef1c94-317f-4cf8-97e1-28b53af102f8', '75045e9f-2cae-486d-9474-a7265b072fb0') ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '72ef1c94-317f-4cf8-97e1-28b53af102f8', id FROM public.items WHERE type = 'kanji' AND character = '気' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id)
SELECT '72ef1c94-317f-4cf8-97e1-28b53af102f8', id FROM public.items WHERE type = 'kanji' AND character = '気' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('29abbfa5-6174-4dd2-9e65-3020e596c304', '75045e9f-2cae-486d-9474-a7265b072fb0') ON CONFLICT DO NOTHING;

INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('29abbfa5-6174-4dd2-9e65-3020e596c304', '75045e9f-2cae-486d-9474-a7265b072fb0') ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('5b0641d3-03ca-4c0c-8595-ebae47eab200', '75045e9f-2cae-486d-9474-a7265b072fb0') ON CONFLICT DO NOTHING;

INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('5b0641d3-03ca-4c0c-8595-ebae47eab200', '75045e9f-2cae-486d-9474-a7265b072fb0') ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '5b0641d3-03ca-4c0c-8595-ebae47eab200', id FROM public.items WHERE type = 'kanji' AND character = '人' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id)
SELECT '5b0641d3-03ca-4c0c-8595-ebae47eab200', id FROM public.items WHERE type = 'kanji' AND character = '人' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('4b016019-8a63-4f5a-ad49-c91e209a8860', 'ce3999fb-43fa-4bb0-a261-b85d5c6533ff') ON CONFLICT DO NOTHING;

INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('4b016019-8a63-4f5a-ad49-c91e209a8860', 'ce3999fb-43fa-4bb0-a261-b85d5c6533ff') ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '4b016019-8a63-4f5a-ad49-c91e209a8860', id FROM public.items WHERE type = 'kanji' AND character = '別' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id)
SELECT '4b016019-8a63-4f5a-ad49-c91e209a8860', id FROM public.items WHERE type = 'kanji' AND character = '別' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('5e6c9354-f9c6-4b6d-a660-e997ecad8010', 'ce3999fb-43fa-4bb0-a261-b85d5c6533ff') ON CONFLICT DO NOTHING;

INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('5e6c9354-f9c6-4b6d-a660-e997ecad8010', 'ce3999fb-43fa-4bb0-a261-b85d5c6533ff') ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('322c7a94-871f-4f87-92cc-1aba6d3061a9', 'c3d32c5b-e2fe-4769-b7a0-c74276c08d3c') ON CONFLICT DO NOTHING;

INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('322c7a94-871f-4f87-92cc-1aba6d3061a9', 'c3d32c5b-e2fe-4769-b7a0-c74276c08d3c') ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('322c7a94-871f-4f87-92cc-1aba6d3061a9', '36b4bc5d-c5d5-4c76-8800-a223ccfcf285') ON CONFLICT DO NOTHING;

INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('322c7a94-871f-4f87-92cc-1aba6d3061a9', '36b4bc5d-c5d5-4c76-8800-a223ccfcf285') ON CONFLICT DO NOTHING;

