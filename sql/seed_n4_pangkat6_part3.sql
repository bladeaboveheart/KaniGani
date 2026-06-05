INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('278e5ff6-e3ba-451e-a25d-ce1cc6da5775', 'ここまでは理解していただけたかと思うのですが。それでは、次の話題に移りましょうか。トマトは、原産地が南米なだけでなく、フグの一番好きな野菜でもあるってことは知っていましたか？', 'Saya harap Anda sudah mengerti sejauh ini. Baiklah, sekarang mari kita beralih ke topik berikutnya. Tahukah Anda bahwa tomat tidak hanya berasal dari Amerika Selatan tetapi juga merupakan sayuran favorit Fugu?') ON CONFLICT DO NOTHING;

INSERT INTO public.items (id, type, character, slug, level, rank_id, meaning_mnemonic, description) VALUES ('e2157a75-d8f4-4511-b626-1cfac32607f2', 'vocabulary', '旅館', '旅館', 2, 'c90d1e2f-3a4b-5c6d-7e8f-9a0b1c2d3e4f', 'Bangunan umum untuk melakukan perjalanan adalah tempat tinggal Anda selama melakukan perjalanan. Dulu, itu hanyalah sebuah penginapan atau semacamnya. Nah, ini menetapkan bahwa penginapan tersebut adalah penginapan Jepang atau hotel Jepang. Banyak orang bahkan hanya menyebutnya dengan nama Jepangnya: ryokan.', 'Bangunan umum untuk melakukan perjalanan adalah tempat tinggal Anda selama melakukan perjalanan. Dulu, itu hanyalah sebuah penginapan atau semacamnya. Nah, ini menetapkan bahwa penginapan tersebut adalah penginapan Jepang atau hotel Jepang. Banyak orang bahkan hanya menyebutnya dengan nama Jepangnya: ryokan.') ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, character = EXCLUDED.character, slug = EXCLUDED.slug, level = EXCLUDED.level, rank_id = EXCLUDED.rank_id, meaning_mnemonic = EXCLUDED.meaning_mnemonic, description = EXCLUDED.description;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('e2157a75-d8f4-4511-b626-1cfac32607f2', 'Penginapan Jepang', true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('e2157a75-d8f4-4511-b626-1cfac32607f2', 'Japanese Hotel', false) ON CONFLICT DO NOTHING;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('e2157a75-d8f4-4511-b626-1cfac32607f2', 'Inn', false) ON CONFLICT DO NOTHING;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('e2157a75-d8f4-4511-b626-1cfac32607f2', 'Ryokan', false) ON CONFLICT DO NOTHING;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('e2157a75-d8f4-4511-b626-1cfac32607f2', 'Japanese Style Inn', false) ON CONFLICT DO NOTHING;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('e2157a75-d8f4-4511-b626-1cfac32607f2', 'Japanese Style Hotel', false) ON CONFLICT DO NOTHING;

INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES ('e2157a75-d8f4-4511-b626-1cfac32607f2', 'りょかん', NULL, true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('e2157a75-d8f4-4511-b626-1cfac32607f2', '日本に旅行に行ったら旅館にとまってみたいです。', 'Ketika saya bepergian ke Jepang, saya ingin menginap di hotel bergaya Jepang.') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('e2157a75-d8f4-4511-b626-1cfac32607f2', '来月日本に旅行に行くんだけど、旅館とホテルとどっちにとまった方がいいと思う？', 'Saya akan bepergian ke Jepang bulan depan. Menurut Anda di mana saya harus tinggal: penginapan atau hotel bergaya Jepang?') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('e2157a75-d8f4-4511-b626-1cfac32607f2', '「なんでこの旅館、こんなにゴキブリが出るの？」「最近雨ばっかり降ってるからじゃない？」', '“Kenapa banyak sekali kecoa di penginapan Jepang ini?” "Saya pikir itu karena banyaknya hujan yang kita alami."') ON CONFLICT DO NOTHING;

INSERT INTO public.items (id, type, character, slug, level, rank_id, meaning_mnemonic, description) VALUES ('db3e24fa-42e5-4f78-b5da-5087d2aad024', 'vocabulary', '本館', '本館', 2, 'c90d1e2f-3a4b-5c6d-7e8f-9a0b1c2d3e4f', 'Salah satu arti 本 adalah main (yang kami gunakan di sini). Bangunan umum utama adalah bangunan utama.', 'Salah satu arti 本 adalah main (yang kami gunakan di sini). Bangunan umum utama adalah bangunan utama.') ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, character = EXCLUDED.character, slug = EXCLUDED.slug, level = EXCLUDED.level, rank_id = EXCLUDED.rank_id, meaning_mnemonic = EXCLUDED.meaning_mnemonic, description = EXCLUDED.description;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('db3e24fa-42e5-4f78-b5da-5087d2aad024', 'Gedung Utama', true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES ('db3e24fa-42e5-4f78-b5da-5087d2aad024', 'ほんかん', NULL, true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('db3e24fa-42e5-4f78-b5da-5087d2aad024', '本館には、ようじ教室の部屋がへいせつされています。', 'Bangunan utama memiliki ruang kelas untuk anak-anak prasekolah.') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('db3e24fa-42e5-4f78-b5da-5087d2aad024', '本館のれきしをゼロから教える本を作ります。', 'Kami akan membuat buku yang mengajarkan sejarah bangunan utama dari awal.') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('db3e24fa-42e5-4f78-b5da-5087d2aad024', 'あの百貨店の本館で働いている店員は、別館で働いている人たちに比べて、なんか働かされてるって感じだった。愛想がやけに悪いっていうかさ。', 'Banyak orang yang bekerja di gedung utama department store bertindak seolah-olah ada yang memaksa mereka untuk bekerja, dibandingkan dengan mereka yang bekerja di gedung tambahan. Mereka mempunyai sikap yang sangat buruk.') ON CONFLICT DO NOTHING;

INSERT INTO public.items (id, type, character, slug, level, rank_id, meaning_mnemonic, description) VALUES ('ef3a6afb-f68b-4147-a9fb-ca043056789f', 'vocabulary', '駅', '駅', 2, 'c90d1e2f-3a4b-5c6d-7e8f-9a0b1c2d3e4f', 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna. Biasanya ini mengacu pada stasiun kereta api tertentu, tetapi bisa juga stasiun apa saja.', 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna. Biasanya ini mengacu pada stasiun kereta api tertentu, tetapi bisa juga stasiun apa saja.') ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, character = EXCLUDED.character, slug = EXCLUDED.slug, level = EXCLUDED.level, rank_id = EXCLUDED.rank_id, meaning_mnemonic = EXCLUDED.meaning_mnemonic, description = EXCLUDED.description;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('ef3a6afb-f68b-4147-a9fb-ca043056789f', 'Stasiun', true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('ef3a6afb-f68b-4147-a9fb-ca043056789f', 'Train Station', false) ON CONFLICT DO NOTHING;

INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES ('ef3a6afb-f68b-4147-a9fb-ca043056789f', 'えき', NULL, true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('ef3a6afb-f68b-4147-a9fb-ca043056789f', '新宿駅でおりて下さい。', 'Silakan turun dari kereta di Stasiun Shinjuku.') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('ef3a6afb-f68b-4147-a9fb-ca043056789f', '上野駅の駅の前にはコウイチが一億円かけて出店したトーフグやきぎょうざの店があります。', 'Ada toko stiker pot Tofugu di depan Stasiun Ueno yang dibuka Koichi dengan harga seratus juta yen.') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('ef3a6afb-f68b-4147-a9fb-ca043056789f', 'ようやく直接お話することができてよかったです。まさか駅でバッタリお会いするなんて思ってもいませんでしたよ。', 'Senang akhirnya bisa berbicara langsung dengan Anda. Aku tidak pernah menyangka akan bertemu denganmu di stasiun.') ON CONFLICT DO NOTHING;

INSERT INTO public.items (id, type, character, slug, level, rank_id, meaning_mnemonic, description) VALUES ('6187031c-6840-479f-9cd5-9868f7d52e02', 'vocabulary', '駅前', '駅前', 2, 'c90d1e2f-3a4b-5c6d-7e8f-9a0b1c2d3e4f', 'Bagian depan stasiun adalah bagian depan stasiun. Omong-omong, kata ini bagus untuk memberi tahu orang-orang di mana Anda ingin bertemu.', 'Bagian depan stasiun adalah bagian depan stasiun. Omong-omong, kata ini bagus untuk memberi tahu orang-orang di mana Anda ingin bertemu.') ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, character = EXCLUDED.character, slug = EXCLUDED.slug, level = EXCLUDED.level, rank_id = EXCLUDED.rank_id, meaning_mnemonic = EXCLUDED.meaning_mnemonic, description = EXCLUDED.description;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('6187031c-6840-479f-9cd5-9868f7d52e02', 'Depan Stasiun', true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('6187031c-6840-479f-9cd5-9868f7d52e02', 'In Front Of Station', false) ON CONFLICT DO NOTHING;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('6187031c-6840-479f-9cd5-9868f7d52e02', 'Front Of The Station', false) ON CONFLICT DO NOTHING;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('6187031c-6840-479f-9cd5-9868f7d52e02', 'In Front Of The Station', false) ON CONFLICT DO NOTHING;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('6187031c-6840-479f-9cd5-9868f7d52e02', 'Station Front', false) ON CONFLICT DO NOTHING;

INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES ('6187031c-6840-479f-9cd5-9868f7d52e02', 'えきまえ', NULL, true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('6187031c-6840-479f-9cd5-9868f7d52e02', '駅前のマンションをさがしています。', 'Saya mencari apartemen di depan stasiun.') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('6187031c-6840-479f-9cd5-9868f7d52e02', 'せんきょの期間は多くのせいじ家が駅前でスピーチをする。', 'Pada masa pemilu, banyak politisi yang berpidato di depan stasiun radio.') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('6187031c-6840-479f-9cd5-9868f7d52e02', 'なんで私に、駅前で撮ったこんな変な自撮り写メを送ってきたの？', 'Mengapa kamu mengirimkan foto selfie aneh yang diambil di depan stasiun kepadaku?') ON CONFLICT DO NOTHING;

INSERT INTO public.items (id, type, character, slug, level, rank_id, meaning_mnemonic, description) VALUES ('85afc5b6-66c9-480f-afe0-067edd80e2e2', 'vocabulary', '駅員', '駅員', 2, 'c90d1e2f-3a4b-5c6d-7e8f-9a0b1c2d3e4f', 'Anggota stasiun kereta api adalah seseorang yang bekerja di stasiun kereta api. Mereka adalah pegawai stasiun kereta api. Jangan ragu untuk bertanya kepada mereka apakah Anda memerlukan bantuan untuk mengetahui arah mana yang harus Anda latih.', 'Anggota stasiun kereta api adalah seseorang yang bekerja di stasiun kereta api. Mereka adalah pegawai stasiun kereta api. Jangan ragu untuk bertanya kepada mereka apakah Anda memerlukan bantuan untuk mengetahui arah mana yang harus Anda latih.') ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, character = EXCLUDED.character, slug = EXCLUDED.slug, level = EXCLUDED.level, rank_id = EXCLUDED.rank_id, meaning_mnemonic = EXCLUDED.meaning_mnemonic, description = EXCLUDED.description;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('85afc5b6-66c9-480f-afe0-067edd80e2e2', 'Pegawai Stasiun Kereta', true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('85afc5b6-66c9-480f-afe0-067edd80e2e2', 'Train Station Staff', false) ON CONFLICT DO NOTHING;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('85afc5b6-66c9-480f-afe0-067edd80e2e2', 'Train Station Attendant', false) ON CONFLICT DO NOTHING;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('85afc5b6-66c9-480f-afe0-067edd80e2e2', 'Station Attendant', false) ON CONFLICT DO NOTHING;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('85afc5b6-66c9-480f-afe0-067edd80e2e2', 'Station Employee', false) ON CONFLICT DO NOTHING;

INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES ('85afc5b6-66c9-480f-afe0-067edd80e2e2', 'えきいん', NULL, true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('85afc5b6-66c9-480f-afe0-067edd80e2e2', 'その駅員の黒目は普通の人よりも大きいと思います。', 'Menurutku, iris mata petugas stasiun kereta lebih besar daripada kebanyakan orang.') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('85afc5b6-66c9-480f-afe0-067edd80e2e2', 'この駅の駅員は、みんなお昼に一杯二百八十円のかけそばを食べる。', 'Semua pegawai stasiun di sini makan semangkuk kake soba seharga 280 yen untuk makan siang.') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('85afc5b6-66c9-480f-afe0-067edd80e2e2', 'あの駅員、こう見えてすっごくお金持ちなのよ。', 'Anda tidak dapat mengetahuinya hanya dengan melihatnya, tetapi petugas stasiun itu adalah orang yang sangat kaya.') ON CONFLICT DO NOTHING;

INSERT INTO public.items (id, type, character, slug, level, rank_id, meaning_mnemonic, description) VALUES ('3a2a8f68-62a9-434e-a132-9204ac16c7bc', 'vocabulary', '駅長', '駅長', 2, 'c90d1e2f-3a4b-5c6d-7e8f-9a0b1c2d3e4f', 'Kata ini menggunakan 長 dengan cara yang sama seperti 社長, yang artinya seperti "bos" atau "manajer". Jadi, ini 長 bos stasiunnya, kan? Apa yang kamu sebut orang seperti itu? Anda menyebut mereka kepala stasiun (kecuali jika Anda ingin dilempar ke kereta).', 'Kata ini menggunakan 長 dengan cara yang sama seperti 社長, yang artinya seperti "bos" atau "manajer". Jadi, ini 長 bos stasiunnya, kan? Apa yang kamu sebut orang seperti itu? Anda menyebut mereka kepala stasiun (kecuali jika Anda ingin dilempar ke kereta).') ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, character = EXCLUDED.character, slug = EXCLUDED.slug, level = EXCLUDED.level, rank_id = EXCLUDED.rank_id, meaning_mnemonic = EXCLUDED.meaning_mnemonic, description = EXCLUDED.description;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('3a2a8f68-62a9-434e-a132-9204ac16c7bc', 'Kepala Stasiun', true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('3a2a8f68-62a9-434e-a132-9204ac16c7bc', 'Stationmaster', false) ON CONFLICT DO NOTHING;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('3a2a8f68-62a9-434e-a132-9204ac16c7bc', 'Train Station Master', false) ON CONFLICT DO NOTHING;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('3a2a8f68-62a9-434e-a132-9204ac16c7bc', 'Train Stationmaster', false) ON CONFLICT DO NOTHING;

INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES ('3a2a8f68-62a9-434e-a132-9204ac16c7bc', 'えきちょう', NULL, true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('3a2a8f68-62a9-434e-a132-9204ac16c7bc', 'すきなアイドルが一日駅長にえらばれました。', 'Idola favoritku terpilih menjadi master stasiun kereta satu hari.') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('3a2a8f68-62a9-434e-a132-9204ac16c7bc', '駅長と川田さんは親友だからこっそりと切ぷ代をわり引してもらっているんだって。', 'Karena kepala stasiun dan Pak Kawada adalah teman baik, kudengar dia diam-diam mendapat diskon tarif.') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('3a2a8f68-62a9-434e-a132-9204ac16c7bc', 'うわっ！あの駅長、今電車に唾はかなかったか？お前、見たか？', 'Astaga! Apakah kepala stasiun baru saja meludahi kereta? Apakah kamu melihatnya?') ON CONFLICT DO NOTHING;

INSERT INTO public.items (id, type, character, slug, level, rank_id, meaning_mnemonic, description) VALUES ('3d2b2c10-2255-489e-869c-eaf68c7cf365', 'vocabulary', '飯', '飯', 2, 'c90d1e2f-3a4b-5c6d-7e8f-9a0b1c2d3e4f', 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna. Ini juga mengacu pada nasi, karena Anda harus makan nasi setiap kali makan, jadi pada dasarnya ini identik dengan "makanan" itu sendiri.

Kata ini mempunyai kesan sedikit kasar sehingga sering digunakan dalam situasi informal.', 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna. Ini juga mengacu pada nasi, karena Anda harus makan nasi setiap kali makan, jadi pada dasarnya ini identik dengan "makanan" itu sendiri.

Kata ini mempunyai kesan sedikit kasar sehingga sering digunakan dalam situasi informal.') ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, character = EXCLUDED.character, slug = EXCLUDED.slug, level = EXCLUDED.level, rank_id = EXCLUDED.rank_id, meaning_mnemonic = EXCLUDED.meaning_mnemonic, description = EXCLUDED.description;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('3d2b2c10-2255-489e-869c-eaf68c7cf365', 'Makan', true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('3d2b2c10-2255-489e-869c-eaf68c7cf365', 'Cooked Rice', false) ON CONFLICT DO NOTHING;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('3d2b2c10-2255-489e-869c-eaf68c7cf365', 'Food', false) ON CONFLICT DO NOTHING;

INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES ('3d2b2c10-2255-489e-869c-eaf68c7cf365', 'めし', NULL, true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('3d2b2c10-2255-489e-869c-eaf68c7cf365', 'しまった！飯をたくのをわすれてた。', 'Oh tidak. Aku lupa memasak nasi.') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('3d2b2c10-2255-489e-869c-eaf68c7cf365', 'コウイチは三度の飯よりトーフグの仕事をするのが好きです。', 'Koichi lebih memilih bekerja untuk Tofugu daripada makan.') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('3d2b2c10-2255-489e-869c-eaf68c7cf365', 'あそこの飯は本当に臭かったぜ。二度と塀の中には戻りたくねえな。', 'Itu tadi makanan yang sangat berbau busuk! Saya tidak pernah ingin kembali ke penjara.') ON CONFLICT DO NOTHING;

INSERT INTO public.items (id, type, character, slug, level, rank_id, meaning_mnemonic, description) VALUES ('cb688c12-b70b-4a43-85dc-c42c3b75621c', 'vocabulary', 'ご飯', 'ご飯', 2, 'c90d1e2f-3a4b-5c6d-7e8f-9a0b1c2d3e4f', 'Tanda ご membuat kata ini lebih sopan dan mewah. Ketika berbicara tentang makanan, menyenangkan untuk melakukan hal-hal itu. Kata ini memiliki arti yang sama dengan kanji (makanan) yang membuatnya menjadi makanan, namun juga mengacu pada nasi yang dimasak. Jadi, "Ayo makan ご飯" bisa berarti "ayo makan nasimu" dan "ayo makan makananmu". Sebenarnya, karena sebagian besar makanan Jepang disajikan dengan nasi, Anda bisa melihat bagaimana tumpang tindihnya terjadi.', 'Tanda ご membuat kata ini lebih sopan dan mewah. Ketika berbicara tentang makanan, menyenangkan untuk melakukan hal-hal itu. Kata ini memiliki arti yang sama dengan kanji (makanan) yang membuatnya menjadi makanan, namun juga mengacu pada nasi yang dimasak. Jadi, "Ayo makan ご飯" bisa berarti "ayo makan nasimu" dan "ayo makan makananmu". Sebenarnya, karena sebagian besar makanan Jepang disajikan dengan nasi, Anda bisa melihat bagaimana tumpang tindihnya terjadi.') ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, character = EXCLUDED.character, slug = EXCLUDED.slug, level = EXCLUDED.level, rank_id = EXCLUDED.rank_id, meaning_mnemonic = EXCLUDED.meaning_mnemonic, description = EXCLUDED.description;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('cb688c12-b70b-4a43-85dc-c42c3b75621c', 'Makan', true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('cb688c12-b70b-4a43-85dc-c42c3b75621c', 'Cooked Rice', false) ON CONFLICT DO NOTHING;

INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES ('cb688c12-b70b-4a43-85dc-c42c3b75621c', 'ごはん', NULL, true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('cb688c12-b70b-4a43-85dc-c42c3b75621c', '最近わたしたち、ご飯を食べるタイミングが合わなくてすれちがってばかりだよね。', 'Akhir-akhir ini kita belum bisa mengatur waktu makan dengan tepat, bukan?') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('cb688c12-b70b-4a43-85dc-c42c3b75621c', 'しまった！ご飯こぼしちゃった。', 'Brengsek! Aku baru saja menumpahkan nasiku.') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('cb688c12-b70b-4a43-85dc-c42c3b75621c', 'どうしてコウイチのデスクの引き出しには乾いたご飯の塊が入っているの？', 'Mengapa ada segumpal besar nasi kering di laci meja Koichi?') ON CONFLICT DO NOTHING;

INSERT INTO public.items (id, type, character, slug, level, rank_id, meaning_mnemonic, description) VALUES ('db5b294f-f7ce-4940-b76c-c17e616047f8', 'vocabulary', '新品', '新品', 2, 'c90d1e2f-3a4b-5c6d-7e8f-9a0b1c2d3e4f', 'Produk baru adalah sesuatu yang baru atau barang baru. Saya suka melihat-lihat toko untuk mencari barang baru karena menarik!', 'Produk baru adalah sesuatu yang baru atau barang baru. Saya suka melihat-lihat toko untuk mencari barang baru karena menarik!') ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, character = EXCLUDED.character, slug = EXCLUDED.slug, level = EXCLUDED.level, rank_id = EXCLUDED.rank_id, meaning_mnemonic = EXCLUDED.meaning_mnemonic, description = EXCLUDED.description;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('db5b294f-f7ce-4940-b76c-c17e616047f8', 'Baru', true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('db5b294f-f7ce-4940-b76c-c17e616047f8', 'New Item', false) ON CONFLICT DO NOTHING;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('db5b294f-f7ce-4940-b76c-c17e616047f8', 'New Product', false) ON CONFLICT DO NOTHING;

INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES ('db5b294f-f7ce-4940-b76c-c17e616047f8', 'しんぴん', NULL, true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('db5b294f-f7ce-4940-b76c-c17e616047f8', '線路に新品のそろばんを落としてしまいました。', 'Saya menjatuhkan sempoa baru saya ke rel kereta.') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('db5b294f-f7ce-4940-b76c-c17e616047f8', '新品のジーパンになっとうをこぼしてしまって、テンションめっちゃ下がってます。', 'Aku menumpahkan kacang kedelai yang difermentasi ke jeans baruku dan itu merusak moodku.') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('db5b294f-f7ce-4940-b76c-c17e616047f8', '「新しいパソコンを買ったんだって？」「うーん。新品ではないんだけどね。ビエトのお下がりだよ。」', '"Aku dengar kamu membeli komputer baru." “Yah, ini bukan barang baru. Ini adalah warisan dari Viet.”') ON CONFLICT DO NOTHING;

INSERT INTO public.items (id, type, character, slug, level, rank_id, meaning_mnemonic, description) VALUES ('95e44842-9883-4d18-a5e4-75f436d86c56', 'vocabulary', '図書館', '図書館', 2, 'c90d1e2f-3a4b-5c6d-7e8f-9a0b1c2d3e4f', 'Sebuah bangunan umum di mana semua hal tertulis digambarkan sedemikian rupa sehingga Anda dapat menemukan hal-hal tertulis tersebut? Kedengarannya seperti perpustakaan bagi saya!', 'Sebuah bangunan umum di mana semua hal tertulis digambarkan sedemikian rupa sehingga Anda dapat menemukan hal-hal tertulis tersebut? Kedengarannya seperti perpustakaan bagi saya!') ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, character = EXCLUDED.character, slug = EXCLUDED.slug, level = EXCLUDED.level, rank_id = EXCLUDED.rank_id, meaning_mnemonic = EXCLUDED.meaning_mnemonic, description = EXCLUDED.description;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('95e44842-9883-4d18-a5e4-75f436d86c56', 'Perpustakaan', true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES ('95e44842-9883-4d18-a5e4-75f436d86c56', 'としょかん', NULL, true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('95e44842-9883-4d18-a5e4-75f436d86c56', '図書館から、電子書せきをかりることもできるって知っていましたか。', 'Tahukah Anda bahwa Anda bahkan bisa meminjam eBook dari perpustakaan?') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('95e44842-9883-4d18-a5e4-75f436d86c56', 'この図書館のトイレは、ここを真っ直ぐ行ったところの一番おくにあります。', 'Jika lurus saja, Anda akan melihat kamar mandi perpustakaan di ujung lorong depan ini.') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('95e44842-9883-4d18-a5e4-75f436d86c56', '「年末年始のお休みいつからいつまでなの？一緒に図書館に行こうよ。」「十二月三十日から五日間だけど、図書館も閉まってるはずだよ。」', '“Kapan liburan Tahun Barumu? Aku ingin pergi ke perpustakaan bersamamu.” “Saya mendapat libur lima hari mulai tanggal 30 Desember, tapi saya khawatir perpustakaan juga akan tutup.”') ON CONFLICT DO NOTHING;

INSERT INTO public.items (id, type, character, slug, level, rank_id, meaning_mnemonic, description) VALUES ('6c2dd6e6-a299-4327-9018-dfc90fd54c65', 'vocabulary', '着ける', '着ける', 2, 'c90d1e2f-3a4b-5c6d-7e8f-9a0b1c2d3e4f', 'Kata kerja lain untuk kanji ini! Gila! Aku tahu, aku minta maaf. Yang sebelumnya adalah: 着る (memakai), 着く (tiba), dan sekarang 着ける (memakai / memakai). Setidaknya mirip dengan 着る, kan? Dalam hal ini, kata ini seperti 付ける, yang artinya "melampirkan". Ini digunakan untuk benda-benda yang Anda "pasang" ke tubuh Anda untuk dipakai, seperti aksesoris, atau masker wajah. Itu sebabnya ini untuk dipakai atau dipakai. Suaranya sama, kanjinya berbeda, idenya mirip.', 'Kata kerja lain untuk kanji ini! Gila! Aku tahu, aku minta maaf. Yang sebelumnya adalah: 着る (memakai), 着く (tiba), dan sekarang 着ける (memakai / memakai). Setidaknya mirip dengan 着る, kan? Dalam hal ini, kata ini seperti 付ける, yang artinya "melampirkan". Ini digunakan untuk benda-benda yang Anda "pasang" ke tubuh Anda untuk dipakai, seperti aksesoris, atau masker wajah. Itu sebabnya ini untuk dipakai atau dipakai. Suaranya sama, kanjinya berbeda, idenya mirip.') ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, character = EXCLUDED.character, slug = EXCLUDED.slug, level = EXCLUDED.level, rank_id = EXCLUDED.rank_id, meaning_mnemonic = EXCLUDED.meaning_mnemonic, description = EXCLUDED.description;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('6c2dd6e6-a299-4327-9018-dfc90fd54c65', 'Untuk Memakai', true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('6c2dd6e6-a299-4327-9018-dfc90fd54c65', 'To Wear', false) ON CONFLICT DO NOTHING;

INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES ('6c2dd6e6-a299-4327-9018-dfc90fd54c65', 'つける', NULL, true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('6c2dd6e6-a299-4327-9018-dfc90fd54c65', '久しぶりにイヤリングを着けてみた。', 'Saya memakai anting untuk pertama kalinya setelah sekian lama.') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('6c2dd6e6-a299-4327-9018-dfc90fd54c65', 'コウイチのしゅ味は、夜な夜な自分の部屋にこもって世界かく地のお面を着けてあそぶことです。', 'Koichi bersenang-senang dengan mengurung diri di kamarnya dan mengenakan topeng dari seluruh dunia setiap malam.') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('6c2dd6e6-a299-4327-9018-dfc90fd54c65', 'このお守りを肌身離さず身に着けると約束してくれないか？', 'Bisakah Anda berjanji kepada saya bahwa Anda akan memakai jimat keberuntungan ini sepanjang waktu?') ON CONFLICT DO NOTHING;

INSERT INTO public.items (id, type, character, slug, level, rank_id, meaning_mnemonic, description) VALUES ('5f84d8f7-d003-4eb7-bbd3-560864765a79', 'vocabulary', '朝ご飯', '朝ご飯', 2, 'c90d1e2f-3a4b-5c6d-7e8f-9a0b1c2d3e4f', 'Anda tahu bagaimana 晩ご飯 adalah "makan malam"? Ya, kata itu benar 12 jam yang lalu. Ini pagi hari dan di pagi hari makanan Anda adalah sarapan.', 'Anda tahu bagaimana 晩ご飯 adalah "makan malam"? Ya, kata itu benar 12 jam yang lalu. Ini pagi hari dan di pagi hari makanan Anda adalah sarapan.') ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, character = EXCLUDED.character, slug = EXCLUDED.slug, level = EXCLUDED.level, rank_id = EXCLUDED.rank_id, meaning_mnemonic = EXCLUDED.meaning_mnemonic, description = EXCLUDED.description;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('5f84d8f7-d003-4eb7-bbd3-560864765a79', 'Sarapan', true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES ('5f84d8f7-d003-4eb7-bbd3-560864765a79', 'あさごはん', NULL, true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('5f84d8f7-d003-4eb7-bbd3-560864765a79', '朝ご飯の美味しそうなにおいに鼻がひくひくしました。', 'Hidungku berkedut saat mencium aroma sarapan yang lezat.') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('5f84d8f7-d003-4eb7-bbd3-560864765a79', 'わが家の朝ご飯は、ご飯と味そしる、玉子やきに干し魚と決まっています。', 'Keluarga kami selalu menyantap nasi, sup miso, omelet, dan ikan kering untuk sarapan.') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('5f84d8f7-d003-4eb7-bbd3-560864765a79', '「ねぇ、さっきコウイチにサプライズ朝ごはんパーティーの事を教えたでしょ？」「えっ！サプライズだったなんて知らなかった！」', '"Apakah kamu baru saja memberi tahu Koichi tentang pesta sarapan kejutannya?" "Oh! Aku tidak tahu itu kejutan."') ON CONFLICT DO NOTHING;

INSERT INTO public.items (id, type, character, slug, level, rank_id, meaning_mnemonic, description) VALUES ('fcf7291c-f131-4085-8b1e-c995d68fdc45', 'vocabulary', '昼ご飯', '昼ご飯', 2, 'c90d1e2f-3a4b-5c6d-7e8f-9a0b1c2d3e4f', 'Makan siang adalah makanan yang dimakan pada siang hari. Makanan apa itu? Ini makan siang yang lezat dan lezat.', 'Makan siang adalah makanan yang dimakan pada siang hari. Makanan apa itu? Ini makan siang yang lezat dan lezat.') ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, character = EXCLUDED.character, slug = EXCLUDED.slug, level = EXCLUDED.level, rank_id = EXCLUDED.rank_id, meaning_mnemonic = EXCLUDED.meaning_mnemonic, description = EXCLUDED.description;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('fcf7291c-f131-4085-8b1e-c995d68fdc45', 'Makan siang', true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES ('fcf7291c-f131-4085-8b1e-c995d68fdc45', 'ひるごはん', NULL, true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('fcf7291c-f131-4085-8b1e-c995d68fdc45', 'かれったら、私と一しょに昼ご飯を食べている時に、他のかわいい女を見て鼻の下をのばしてたんだから。', 'Pacarku mulai ngiler saat melihat gadis cantik padahal kami sedang makan siang bersama.') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('fcf7291c-f131-4085-8b1e-c995d68fdc45', 'あ、まずい！昼ご飯はお好みやきにしようと思ってたのに、ソースが切れてるのわすれてた。', 'Oh tidak, aku berpikir untuk membuat okonomiyaki untuk makan siang, tapi aku lupa kalau sausnya habis.') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('fcf7291c-f131-4085-8b1e-c995d68fdc45', 'しまったぁ、またトーストを焦がしちゃったよ。最後の一枚だったのに。何か別のものを昼ご飯に探さなくちゃ。', 'Oh tidak, aku baru saja membakar roti panggangnya lagi. Itu adalah potongan terakhir. Sekarang aku harus mencari sesuatu yang lain untuk makan siang.') ON CONFLICT DO NOTHING;

INSERT INTO public.items (id, type, character, slug, level, rank_id, meaning_mnemonic, description) VALUES ('537d486f-6d70-4838-9766-de3165c4102f', 'vocabulary', '曜日', '曜日', 2, 'c90d1e2f-3a4b-5c6d-7e8f-9a0b1c2d3e4f', 'Hari kerja adalah hari dalam seminggu, seperti dalam "Senin" atau "Selasa". Anda akan mempelajarinya di level 18, tetapi pertama-tama Anda harus mempelajari 曜日 agar Anda siap.', 'Hari kerja adalah hari dalam seminggu, seperti dalam "Senin" atau "Selasa". Anda akan mempelajarinya di level 18, tetapi pertama-tama Anda harus mempelajari 曜日 agar Anda siap.') ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, character = EXCLUDED.character, slug = EXCLUDED.slug, level = EXCLUDED.level, rank_id = EXCLUDED.rank_id, meaning_mnemonic = EXCLUDED.meaning_mnemonic, description = EXCLUDED.description;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('537d486f-6d70-4838-9766-de3165c4102f', 'Hari Dalam Seminggu', true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('537d486f-6d70-4838-9766-de3165c4102f', 'Weekday', false) ON CONFLICT DO NOTHING;

INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES ('537d486f-6d70-4838-9766-de3165c4102f', 'ようび', NULL, true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('537d486f-6d70-4838-9766-de3165c4102f', '水曜日は、ネイティブが話すスピードで日本語を話す日にしませんか？', 'Mengapa kita tidak menjadikan hari Rabu sebagai hari untuk mencoba berbicara bahasa Jepang dengan kecepatan penutur asli?') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('537d486f-6d70-4838-9766-de3165c4102f', '今日って何曜日だっけ？', 'Hari apa dalam seminggu hari ini?') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('537d486f-6d70-4838-9766-de3165c4102f', '肝心なのは、この日本語の課題を金曜日までに終わらせなければならないということだ。', 'Intinya kita harus menyelesaikan tugas bahasa Jepang ini paling lambat hari Jumat.') ON CONFLICT DO NOTHING;

INSERT INTO public.items (id, type, character, slug, level, rank_id, meaning_mnemonic, description) VALUES ('0b9dfb3d-2656-4a8b-a355-95857788b072', 'vocabulary', '運', '運', 2, 'c90d1e2f-3a4b-5c6d-7e8f-9a0b1c2d3e4f', 'Ini mengambil arti keberuntungan dari kanji. Anggap saja seperti ini: Jika Anda "membawa", Anda akan menciptakan keberuntungan Anda sendiri. Sekarang tidak ada yang akan macam-macam denganmu, kanji gangstah. Anda membawa senjata dan mendapat banyak keberuntungan karenanya.', 'Ini mengambil arti keberuntungan dari kanji. Anggap saja seperti ini: Jika Anda "membawa", Anda akan menciptakan keberuntungan Anda sendiri. Sekarang tidak ada yang akan macam-macam denganmu, kanji gangstah. Anda membawa senjata dan mendapat banyak keberuntungan karenanya.') ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, character = EXCLUDED.character, slug = EXCLUDED.slug, level = EXCLUDED.level, rank_id = EXCLUDED.rank_id, meaning_mnemonic = EXCLUDED.meaning_mnemonic, description = EXCLUDED.description;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('0b9dfb3d-2656-4a8b-a355-95857788b072', 'Keberuntungan', true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES ('0b9dfb3d-2656-4a8b-a355-95857788b072', 'うん', NULL, true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('0b9dfb3d-2656-4a8b-a355-95857788b072', '運が良ければ、トーフグのコウイチに会えるかもね。', 'Jika beruntung, Anda mungkin bisa bertemu Koichi dari Tofugu.') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('0b9dfb3d-2656-4a8b-a355-95857788b072', 'たまたま運が良かっただけだよ。', 'Saya hanya beruntung.') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('0b9dfb3d-2656-4a8b-a355-95857788b072', 'こんなことで使い果たしたくはないけど、これで運を使い果たしちゃったかも。', 'Tapi aku mungkin kurang beruntung, dan aku tidak ingin menggunakannya untuk hal seperti ini.') ON CONFLICT DO NOTHING;

INSERT INTO public.items (id, type, character, slug, level, rank_id, meaning_mnemonic, description) VALUES ('65238981-75b4-4e4b-891e-63d3a629d5e6', 'vocabulary', '無力', '無力', 2, 'c90d1e2f-3a4b-5c6d-7e8f-9a0b1c2d3e4f', 'Ketika kekuatanmu tidak berarti apa-apa, kamu tidak berdaya.', 'Ketika kekuatanmu tidak berarti apa-apa, kamu tidak berdaya.') ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, character = EXCLUDED.character, slug = EXCLUDED.slug, level = EXCLUDED.level, rank_id = EXCLUDED.rank_id, meaning_mnemonic = EXCLUDED.meaning_mnemonic, description = EXCLUDED.description;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('65238981-75b4-4e4b-891e-63d3a629d5e6', 'Tak berdaya', true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('65238981-75b4-4e4b-891e-63d3a629d5e6', 'Powerlessness', false) ON CONFLICT DO NOTHING;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('65238981-75b4-4e4b-891e-63d3a629d5e6', 'Helplessness', false) ON CONFLICT DO NOTHING;

INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES ('65238981-75b4-4e4b-891e-63d3a629d5e6', 'むりょく', NULL, true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('65238981-75b4-4e4b-891e-63d3a629d5e6', '自分がどれだけちっぽけで無力な存ざいであるかを思い知らされました。', 'Itu membuat saya menyadari betapa kecil dan tidak berdayanya saya.') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('65238981-75b4-4e4b-891e-63d3a629d5e6', '「無力の証明」というゆうぎ王カードを手に入れました。', 'Saya mendapat Yu-Gi-Oh! kartu perdagangan yang disebut "Bukti Ketidakberdayaan".') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('65238981-75b4-4e4b-891e-63d3a629d5e6', '警察はそのストーカーに対して無力で何をすることもできず、結局彼女は殺されてしまった。', 'Polisi tidak berdaya melakukan apa pun terhadap penguntit tersebut dan pada akhirnya dia terbunuh.') ON CONFLICT DO NOTHING;

INSERT INTO public.items (id, type, character, slug, level, rank_id, meaning_mnemonic, description) VALUES ('34e3a369-55ce-4895-b0a8-c786966f452a', 'vocabulary', '無休', '無休', 2, 'c90d1e2f-3a4b-5c6d-7e8f-9a0b1c2d3e4f', 'Jika istirahat tidak berarti apa-apa maka tidak ada hari libur. Jika tidak ada hari libur, berarti suatu tempat selalu buka, nonstop.', 'Jika istirahat tidak berarti apa-apa maka tidak ada hari libur. Jika tidak ada hari libur, berarti suatu tempat selalu buka, nonstop.') ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, character = EXCLUDED.character, slug = EXCLUDED.slug, level = EXCLUDED.level, rank_id = EXCLUDED.rank_id, meaning_mnemonic = EXCLUDED.meaning_mnemonic, description = EXCLUDED.description;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('34e3a369-55ce-4895-b0a8-c786966f452a', 'Tidak Ada Hari Libur', true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('34e3a369-55ce-4895-b0a8-c786966f452a', 'Always Open', false) ON CONFLICT DO NOTHING;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('34e3a369-55ce-4895-b0a8-c786966f452a', 'Nonstop', false) ON CONFLICT DO NOTHING;

INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES ('34e3a369-55ce-4895-b0a8-c786966f452a', 'むきゅう', NULL, true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('34e3a369-55ce-4895-b0a8-c786966f452a', 'コウイチは大てい無休で働いている。', 'Koichi biasanya bekerja tanpa libur.') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('34e3a369-55ce-4895-b0a8-c786966f452a', 'カナとマミは、無休でワニカニの例文を作っています。', 'Kana dan Mami membuat contoh kalimat WaniKani tanpa ada jeda.') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('34e3a369-55ce-4895-b0a8-c786966f452a', 'トーフグのウェブサイトは、24時間年中無休で開いております。', 'Situs web Tofugu selalu buka, dua puluh empat jam sehari, setiap hari sepanjang tahun.') ON CONFLICT DO NOTHING;

INSERT INTO public.items (id, type, character, slug, level, rank_id, meaning_mnemonic, description) VALUES ('8017ff65-7b70-4d0f-9c56-32a4ffa1fed3', 'vocabulary', '無名', '無名', 2, 'c90d1e2f-3a4b-5c6d-7e8f-9a0b1c2d3e4f', 'Seseorang yang namanya "tidak ada" mencoba untuk tetap anonim atau tidak dikenal.', 'Seseorang yang namanya "tidak ada" mencoba untuk tetap anonim atau tidak dikenal.') ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, character = EXCLUDED.character, slug = EXCLUDED.slug, level = EXCLUDED.level, rank_id = EXCLUDED.rank_id, meaning_mnemonic = EXCLUDED.meaning_mnemonic, description = EXCLUDED.description;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('8017ff65-7b70-4d0f-9c56-32a4ffa1fed3', 'Anonim', true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('8017ff65-7b70-4d0f-9c56-32a4ffa1fed3', 'Unknown', false) ON CONFLICT DO NOTHING;

INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES ('8017ff65-7b70-4d0f-9c56-32a4ffa1fed3', 'むめい', NULL, true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('8017ff65-7b70-4d0f-9c56-32a4ffa1fed3', 'フグは、無名のまま死にたくないと思っている。', 'Fugu tidak ingin mati tanpa menyebut nama.') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('8017ff65-7b70-4d0f-9c56-32a4ffa1fed3', '若手のアーティストの中には、無名でも良い作品を作る人がたくさんいます。', 'Di kalangan seniman muda, banyak sekali seniman asing yang menghasilkan karya bagus.') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('8017ff65-7b70-4d0f-9c56-32a4ffa1fed3', 'アリアナ・グランデは自分の才能を少しも鼻にかけず、無名の新人歌手にも優しく接するらしいので、とても好感がもてます。', 'Saya mendengar bahwa Ariana Grande tidak terlalu menonjol meskipun memiliki bakatnya dan juga sangat baik kepada penyanyi yang tidak dikenal, jadi saya memiliki kesan yang baik tentangnya.') ON CONFLICT DO NOTHING;

INSERT INTO public.items (id, type, character, slug, level, rank_id, meaning_mnemonic, description) VALUES ('fc5e4a10-64eb-4850-b447-653f477f4d7c', 'vocabulary', '無事', '無事', 2, 'c90d1e2f-3a4b-5c6d-7e8f-9a0b1c2d3e4f', 'Tindakan di sekitar sini bukanlah apa-apa. Sama sekali tidak ada yang terjadi. Jika tidak terjadi apa-apa, berarti semuanya aman dan sehat bagi Anda.', 'Tindakan di sekitar sini bukanlah apa-apa. Sama sekali tidak ada yang terjadi. Jika tidak terjadi apa-apa, berarti semuanya aman dan sehat bagi Anda.') ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, character = EXCLUDED.character, slug = EXCLUDED.slug, level = EXCLUDED.level, rank_id = EXCLUDED.rank_id, meaning_mnemonic = EXCLUDED.meaning_mnemonic, description = EXCLUDED.description;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('fc5e4a10-64eb-4850-b447-653f477f4d7c', 'Aman Dan Sehat', true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('fc5e4a10-64eb-4850-b447-653f477f4d7c', 'Safe', false) ON CONFLICT DO NOTHING;

INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES ('fc5e4a10-64eb-4850-b447-653f477f4d7c', 'ぶじ', NULL, true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('fc5e4a10-64eb-4850-b447-653f477f4d7c', 'みなさんの無事をおいのりしています。', 'Kami berdoa untuk keselamatan Anda semua.') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('fc5e4a10-64eb-4850-b447-653f477f4d7c', '両親は、たいしょくして、平おん無事な生活を送っています。', 'Orang tua saya pensiun dan menjalani kehidupan mereka dengan aman dan damai.') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('fc5e4a10-64eb-4850-b447-653f477f4d7c', '本当に赤ん坊は私達の言葉が分からないと言い切れるんですか？もし私の双子ちゃんが、「お医者さんが今ママに、僕達がママの子宮から無事に出られるかどうかは、五分五分だって言ったみたいだね。」なんて話をしてたらどうするんですか？ああ、私の赤ちゃん、きっと先生の言葉に震え上がってるに違いないわ。', 'Apakah Anda yakin bayinya tidak mengerti bahasa kita? Bagaimana jika saudara kembar saya saat ini berbicara seperti, "Dokter memberi tahu ibu kami bahwa kami akan ragu apakah kami bisa keluar dari rahimnya dengan selamat." Aww... Dokter, mereka pasti ketakutan dengan apa yang Anda katakan.') ON CONFLICT DO NOTHING;

INSERT INTO public.items (id, type, character, slug, level, rank_id, meaning_mnemonic, description) VALUES ('5242b0e5-1994-4b5c-b5ba-65dfad6ce3ac', 'vocabulary', '無知', '無知', 2, 'c90d1e2f-3a4b-5c6d-7e8f-9a0b1c2d3e4f', 'Ketika Anda tidak tahu apa-apa (Jon Snow), Anda tidak tahu apa-apa. Ini adalah ketidaktahuan, ketidaktahuan.', 'Ketika Anda tidak tahu apa-apa (Jon Snow), Anda tidak tahu apa-apa. Ini adalah ketidaktahuan, ketidaktahuan.') ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, character = EXCLUDED.character, slug = EXCLUDED.slug, level = EXCLUDED.level, rank_id = EXCLUDED.rank_id, meaning_mnemonic = EXCLUDED.meaning_mnemonic, description = EXCLUDED.description;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('5242b0e5-1994-4b5c-b5ba-65dfad6ce3ac', 'Ketidaktahuan', true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('5242b0e5-1994-4b5c-b5ba-65dfad6ce3ac', 'Ignorant', false) ON CONFLICT DO NOTHING;

INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES ('5242b0e5-1994-4b5c-b5ba-65dfad6ce3ac', 'むち', NULL, true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('5242b0e5-1994-4b5c-b5ba-65dfad6ce3ac', '周りの人から、無知なくせに知ったかぶりをするやつだと思われていたらどうしようと心配です。', 'Saya khawatir orang-orang menganggap saya sebagai orang yang bodoh dan sok tahu.') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('5242b0e5-1994-4b5c-b5ba-65dfad6ce3ac', '無知が原因で、間ちがいをおかしてしまいました。', 'Saya melakukan kesalahan karena ketidaktahuan.') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('5242b0e5-1994-4b5c-b5ba-65dfad6ce3ac', '無知をさらけ出したからって恥ずかしがることなんか無いよ。あいつらこそ、自分たちの無知を隠していることを恥じるべきさ。', 'Anda tidak perlu malu pada diri sendiri setelah mengakui ketidaktahuan Anda. Mereka seharusnya malu pada diri mereka sendiri karena menyembunyikan ketidaktahuan mereka.') ON CONFLICT DO NOTHING;

INSERT INTO public.items (id, type, character, slug, level, rank_id, meaning_mnemonic, description) VALUES ('84cc504b-e05e-4779-b374-fedec3b18524', 'vocabulary', '無茶', '無茶', 2, 'c90d1e2f-3a4b-5c6d-7e8f-9a0b1c2d3e4f', 'Persediaan teh habis??? Itu tidak masuk akal! Bagi orang Amerika, saya membayangkan kata ini adalah "無コーヒー" sebagai gantinya. Mengerti?? Jika Anda seorang pecandu kafein, kata ini sangat masuk akal.', 'Persediaan teh habis??? Itu tidak masuk akal! Bagi orang Amerika, saya membayangkan kata ini adalah "無コーヒー" sebagai gantinya. Mengerti?? Jika Anda seorang pecandu kafein, kata ini sangat masuk akal.') ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, character = EXCLUDED.character, slug = EXCLUDED.slug, level = EXCLUDED.level, rank_id = EXCLUDED.rank_id, meaning_mnemonic = EXCLUDED.meaning_mnemonic, description = EXCLUDED.description;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('84cc504b-e05e-4779-b374-fedec3b18524', 'Tidak masuk akal', true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('84cc504b-e05e-4779-b374-fedec3b18524', 'Rash', false) ON CONFLICT DO NOTHING;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('84cc504b-e05e-4779-b374-fedec3b18524', 'Excessive', false) ON CONFLICT DO NOTHING;

INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES ('84cc504b-e05e-4779-b374-fedec3b18524', 'むちゃ', NULL, true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('84cc504b-e05e-4779-b374-fedec3b18524', 'こんなに車がビュンビュン通っていて横だん歩道もないのに、向こう側へわたるなんて、無茶だよ。', 'Tidak masuk akal untuk menyeberang jalan yang sibuk tanpa penyeberangan pejalan kaki.') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('84cc504b-e05e-4779-b374-fedec3b18524', 'ビエトは無茶なりょうのあわもりを飲んでいました。', 'Viet meminum awamori dalam jumlah berlebihan.') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('84cc504b-e05e-4779-b374-fedec3b18524', 'カレーソースでいっぱいのプールで泳ごうなんて、彼も無茶な決定をしたものだ。', 'Dia membuat keputusan gegabah untuk mencoba berenang di kolam yang berisi saus kari.') ON CONFLICT DO NOTHING;

INSERT INTO public.items (id, type, character, slug, level, rank_id, meaning_mnemonic, description) VALUES ('dd4c0ad6-9bbf-4869-9222-ebb366994a66', 'vocabulary', '無料', '無料', 2, 'c90d1e2f-3a4b-5c6d-7e8f-9a0b1c2d3e4f', 'Jika tidak ada biaya, maka gratis dan tanpa dipungut biaya!', 'Jika tidak ada biaya, maka gratis dan tanpa dipungut biaya!') ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, character = EXCLUDED.character, slug = EXCLUDED.slug, level = EXCLUDED.level, rank_id = EXCLUDED.rank_id, meaning_mnemonic = EXCLUDED.meaning_mnemonic, description = EXCLUDED.description;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('dd4c0ad6-9bbf-4869-9222-ebb366994a66', 'Gratis', true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('dd4c0ad6-9bbf-4869-9222-ebb366994a66', 'Without Charge', false) ON CONFLICT DO NOTHING;

INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES ('dd4c0ad6-9bbf-4869-9222-ebb366994a66', 'むりょう', NULL, true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('dd4c0ad6-9bbf-4869-9222-ebb366994a66', 'コストコで無料のサンプルを食べ歩くのが好きです。', 'Saya suka berjalan-jalan sambil makan sampel gratis di Costco.') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('dd4c0ad6-9bbf-4869-9222-ebb366994a66', 'ワニカニは、レベル三まで無料で利用できます。', 'WaniKani tersedia gratis hingga level tiga.') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('dd4c0ad6-9bbf-4869-9222-ebb366994a66', 'クリスマス、一人ぼっちで過ごしたくないんだけど、もう予定立てちゃった？もしまだなら、ポール・マッカートニーのチケットが二枚あるんだけど、無料で一枚プレゼントするよ。', 'Saya tidak ingin sendirian saat Natal, apakah Anda sudah membuat rencana? Jika tidak, saya punya dua tiket konser Paul McCartney dan saya bisa memberi Anda satu secara gratis.') ON CONFLICT DO NOTHING;

INSERT INTO public.items (id, type, character, slug, level, rank_id, meaning_mnemonic, description) VALUES ('6b06acb0-efe1-4a9e-a132-89e1314fcd47', 'vocabulary', '土曜日', '土曜日', 2, 'c90d1e2f-3a4b-5c6d-7e8f-9a0b1c2d3e4f', 'Ini adalah hari dalam seminggu. Anda tahu ini karena ada 曜日 di dalamnya. Tapi hari apa dalam seminggu ini? Hari bumi dalam seminggu adalah hari di mana Anda merasa dekat dengan bumi. Entah Anda mendapati Anda minum terlalu banyak pada hari Jumat, sehingga pada pagi hari ini Anda terbaring di tanah. Atau mungkin Anda hanya ingin tidur setelah begadang di hari Jumat. Apa pun yang terjadi, hari ini Anda berbaring dekat dengan bumi adalah hari Sabtu.', 'Ini adalah hari dalam seminggu. Anda tahu ini karena ada 曜日 di dalamnya. Tapi hari apa dalam seminggu ini? Hari bumi dalam seminggu adalah hari di mana Anda merasa dekat dengan bumi. Entah Anda mendapati Anda minum terlalu banyak pada hari Jumat, sehingga pada pagi hari ini Anda terbaring di tanah. Atau mungkin Anda hanya ingin tidur setelah begadang di hari Jumat. Apa pun yang terjadi, hari ini Anda berbaring dekat dengan bumi adalah hari Sabtu.') ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, character = EXCLUDED.character, slug = EXCLUDED.slug, level = EXCLUDED.level, rank_id = EXCLUDED.rank_id, meaning_mnemonic = EXCLUDED.meaning_mnemonic, description = EXCLUDED.description;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('6b06acb0-efe1-4a9e-a132-89e1314fcd47', 'Sabtu', true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES ('6b06acb0-efe1-4a9e-a132-89e1314fcd47', 'どようび', NULL, true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('6b06acb0-efe1-4a9e-a132-89e1314fcd47', '土曜日のつかれはもうすっかり取れました。', 'Saya benar-benar pulih dari kelelahan pada hari Sabtu.') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('6b06acb0-efe1-4a9e-a132-89e1314fcd47', '土曜日に、美人は得をするということを実感しました。', 'Pada hari Sabtu, saya benar-benar menyadari bahwa hidup itu mudah jika Anda adalah wanita yang cantik.') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('6b06acb0-efe1-4a9e-a132-89e1314fcd47', 'クソ上司に土曜日も働かなきゃいけないと言われた上に、風邪をひいてしまい、さらには彼女にも振られたよ。俺の人生はクソだ。', 'Bos saya yang bodoh baru saja mengatakan kepada saya bahwa saya harus bekerja pada hari Sabtu. Ditambah lagi, aku baru saja masuk angin. Dan terlebih lagi, pacarku mencampakkanku. Hidupku menyebalkan.') ON CONFLICT DO NOTHING;

INSERT INTO public.items (id, type, character, slug, level, rank_id, meaning_mnemonic, description) VALUES ('2d276e24-3b4e-4dd2-8c0c-4bc374749726', 'vocabulary', '日曜日', '日曜日', 2, 'c90d1e2f-3a4b-5c6d-7e8f-9a0b1c2d3e4f', 'Ini adalah hari dalam seminggu. Anda tahu ini karena ada 曜日 di dalamnya. Tapi hari apa dalam seminggu ini? Hari Minggu dalam seminggu adalah hari Minggu. Tidak ada yang lebih mudah dari itu bagi Anda. Beruntung!', 'Ini adalah hari dalam seminggu. Anda tahu ini karena ada 曜日 di dalamnya. Tapi hari apa dalam seminggu ini? Hari Minggu dalam seminggu adalah hari Minggu. Tidak ada yang lebih mudah dari itu bagi Anda. Beruntung!') ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, character = EXCLUDED.character, slug = EXCLUDED.slug, level = EXCLUDED.level, rank_id = EXCLUDED.rank_id, meaning_mnemonic = EXCLUDED.meaning_mnemonic, description = EXCLUDED.description;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('2d276e24-3b4e-4dd2-8c0c-4bc374749726', 'Minggu', true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES ('2d276e24-3b4e-4dd2-8c0c-4bc374749726', 'にちようび', NULL, true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('2d276e24-3b4e-4dd2-8c0c-4bc374749726', '日曜日、じゅ業参かんの後、親のみのこん親会があります。', 'Setelah hari orang tua pada hari Minggu, ada pertemuan khusus orang tua.') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('2d276e24-3b4e-4dd2-8c0c-4bc374749726', '日曜日に教会で、一人ずつ自こしょうかいをしました。', 'Kami memperkenalkan diri kami satu per satu di sebuah gereja pada hari Minggu.') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('2d276e24-3b4e-4dd2-8c0c-4bc374749726', '毎週日曜日は、彼女のサーモンとテニスをするとかアイスを食べるというようなことをする。', 'Pada hari Minggu, saya melakukan hal-hal seperti bermain tenis dan makan es krim bersama pacar saya, Salmon.') ON CONFLICT DO NOTHING;

INSERT INTO public.items (id, type, character, slug, level, rank_id, meaning_mnemonic, description) VALUES ('65e5bc50-59df-4d79-a8d7-61b00c2dc2c6', 'vocabulary', '月曜日', '月曜日', 2, 'c90d1e2f-3a4b-5c6d-7e8f-9a0b1c2d3e4f', 'Ini adalah hari dalam seminggu. Anda tahu ini karena ada 曜日 di dalamnya. Tapi hari apa dalam seminggu ini? Hari "bulan" dalam seminggu adalah Senin. Mengapa? Karena "Bulan" sebenarnya hanyalah "Senin", bukan?', 'Ini adalah hari dalam seminggu. Anda tahu ini karena ada 曜日 di dalamnya. Tapi hari apa dalam seminggu ini? Hari "bulan" dalam seminggu adalah Senin. Mengapa? Karena "Bulan" sebenarnya hanyalah "Senin", bukan?') ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, character = EXCLUDED.character, slug = EXCLUDED.slug, level = EXCLUDED.level, rank_id = EXCLUDED.rank_id, meaning_mnemonic = EXCLUDED.meaning_mnemonic, description = EXCLUDED.description;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('65e5bc50-59df-4d79-a8d7-61b00c2dc2c6', 'Senin', true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES ('65e5bc50-59df-4d79-a8d7-61b00c2dc2c6', 'げつようび', NULL, true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('65e5bc50-59df-4d79-a8d7-61b00c2dc2c6', '月曜日に、お風ろの水を止めるのを忘れてて、湯船からあふれて、家中水びたしになってしまったんだ。', 'Hari senin saya lupa mematikan bak mandi, airnya meluap, dan tempat kami kebanjiran.') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('65e5bc50-59df-4d79-a8d7-61b00c2dc2c6', '受験料は、月曜日までにふりこんでください。', 'Silakan membayar biaya ujian melalui bank Anda paling lambat hari Senin.') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('65e5bc50-59df-4d79-a8d7-61b00c2dc2c6', '月曜日、熱々のロマンスとか、ゾッとするホラーみたいな感じの楽しい映画をあなたと一緒に観たいなって思うんだけど、どうかな？', 'Pada hari Senin, saya ingin menonton beberapa film menyenangkan bersama Anda, seperti film romantis yang menarik atau film horor yang menegangkan. Bagaimana kedengarannya?') ON CONFLICT DO NOTHING;

INSERT INTO public.items (id, type, character, slug, level, rank_id, meaning_mnemonic, description) VALUES ('86d22caa-cd5c-4364-8d59-914b5394baf8', 'vocabulary', '木曜日', '木曜日', 2, 'c90d1e2f-3a4b-5c6d-7e8f-9a0b1c2d3e4f', 'Ini adalah hari dalam seminggu. Anda tahu ini karena ada 曜日 di dalamnya. Tapi hari apa dalam seminggu ini? Hari pohon dalam seminggu adalah Kamis. Hari pohon datang setelah hari air (yaitu hari Rabu, untuk Hari Air-Rabu!). Pohon membutuhkan air untuk tumbuh, itulah sebabnya pohon muncul tepat setelah air.', 'Ini adalah hari dalam seminggu. Anda tahu ini karena ada 曜日 di dalamnya. Tapi hari apa dalam seminggu ini? Hari pohon dalam seminggu adalah Kamis. Hari pohon datang setelah hari air (yaitu hari Rabu, untuk Hari Air-Rabu!). Pohon membutuhkan air untuk tumbuh, itulah sebabnya pohon muncul tepat setelah air.') ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, character = EXCLUDED.character, slug = EXCLUDED.slug, level = EXCLUDED.level, rank_id = EXCLUDED.rank_id, meaning_mnemonic = EXCLUDED.meaning_mnemonic, description = EXCLUDED.description;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('86d22caa-cd5c-4364-8d59-914b5394baf8', 'Kamis', true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES ('86d22caa-cd5c-4364-8d59-914b5394baf8', 'もくようび', NULL, true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('86d22caa-cd5c-4364-8d59-914b5394baf8', '木曜日に、ガスパイプにヒビが入ってしまったんだ。', 'Pipa gas retak pada hari Kamis.') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('86d22caa-cd5c-4364-8d59-914b5394baf8', '洗たくは、木曜日にしようと思ってます。', 'Saya pikir saya akan mencuci pakaian pada hari Kamis.') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('86d22caa-cd5c-4364-8d59-914b5394baf8', '木曜日に、雪だるまを作るとかかまくらを作るみたいな、何か楽しいことをしたくない？', 'Pada hari Kamis, apakah Anda ingin melakukan sesuatu yang menyenangkan seperti membuat manusia salju atau membuat igloo?') ON CONFLICT DO NOTHING;

INSERT INTO public.items (id, type, character, slug, level, rank_id, meaning_mnemonic, description) VALUES ('43f62f24-f58e-4998-8b4f-14d48f0a2e7c', 'vocabulary', '水曜日', '水曜日', 2, 'c90d1e2f-3a4b-5c6d-7e8f-9a0b1c2d3e4f', 'Ini adalah hari dalam seminggu. Anda tahu ini karena ada 曜日 di dalamnya. Tapi hari apa dalam seminggu ini? Hari air dalam seminggu adalah tempat air mengalir. Bayangkan seluruh minggu Anda sebagai sebuah bukit besar, dengan hari Rabu (hari punuk) berada di tengah-tengahnya. Punuk ini adalah sebuah bukit. Apa yang berasal dari bukit? Air! Itu sebabnya hari Air jatuh pada hari Rabu.', 'Ini adalah hari dalam seminggu. Anda tahu ini karena ada 曜日 di dalamnya. Tapi hari apa dalam seminggu ini? Hari air dalam seminggu adalah tempat air mengalir. Bayangkan seluruh minggu Anda sebagai sebuah bukit besar, dengan hari Rabu (hari punuk) berada di tengah-tengahnya. Punuk ini adalah sebuah bukit. Apa yang berasal dari bukit? Air! Itu sebabnya hari Air jatuh pada hari Rabu.') ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, character = EXCLUDED.character, slug = EXCLUDED.slug, level = EXCLUDED.level, rank_id = EXCLUDED.rank_id, meaning_mnemonic = EXCLUDED.meaning_mnemonic, description = EXCLUDED.description;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('43f62f24-f58e-4998-8b4f-14d48f0a2e7c', 'Rabu', true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES ('43f62f24-f58e-4998-8b4f-14d48f0a2e7c', 'すいようび', NULL, true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('43f62f24-f58e-4998-8b4f-14d48f0a2e7c', '水曜日にするべきことは、大きく分けて三つあります。', 'Kita bisa membagi apa yang harus kita lakukan pada hari Rabu menjadi tiga hal besar.') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('43f62f24-f58e-4998-8b4f-14d48f0a2e7c', '毎週水曜日は、学校の後プールに行って泳いでいます。', 'Setiap Rabu sepulang sekolah saya pergi ke kolam renang dan berenang.') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('43f62f24-f58e-4998-8b4f-14d48f0a2e7c', '水曜日の夜、彼はかなり酔っていて、トラックに轢かれてしまったんだ。', 'Dia mabuk berat pada Rabu malam dan ditabrak truk.') ON CONFLICT DO NOTHING;

INSERT INTO public.items (id, type, character, slug, level, rank_id, meaning_mnemonic, description) VALUES ('ea357904-909e-4d6f-ac72-20231957a932', 'vocabulary', '試みる', '試みる', 2, 'c90d1e2f-3a4b-5c6d-7e8f-9a0b1c2d3e4f', 'Kata ini terdiri dari kanji dengan hiragana ditempelkan. Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanjinya sendiri artinya mencoba jadi versi vocab verbanya adalah mencoba melakukan sesuatu atau mencoba sesuatu.

Kata kerja ini bersifat transitif, artinya mengambil objek langsung. Di sini, objek langsungnya adalah apa pun yang Anda coba lakukan.', 'Kata ini terdiri dari kanji dengan hiragana ditempelkan. Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanjinya sendiri artinya mencoba jadi versi vocab verbanya adalah mencoba melakukan sesuatu atau mencoba sesuatu.

Kata kerja ini bersifat transitif, artinya mengambil objek langsung. Di sini, objek langsungnya adalah apa pun yang Anda coba lakukan.') ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, character = EXCLUDED.character, slug = EXCLUDED.slug, level = EXCLUDED.level, rank_id = EXCLUDED.rank_id, meaning_mnemonic = EXCLUDED.meaning_mnemonic, description = EXCLUDED.description;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('ea357904-909e-4d6f-ac72-20231957a932', 'Mencoba Melakukan Sesuatu', true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('ea357904-909e-4d6f-ac72-20231957a932', 'To Attempt Something', false) ON CONFLICT DO NOTHING;

INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES ('ea357904-909e-4d6f-ac72-20231957a932', 'こころみる', NULL, true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('ea357904-909e-4d6f-ac72-20231957a932', 'ビエトに言われた方法を五度試みたんですが、ダメでした。', 'Saya sudah mencoba metode yang Viet ceritakan kepada saya sekitar lima kali, tetapi tidak pernah berhasil.') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('ea357904-909e-4d6f-ac72-20231957a932', 'ビエトの手下が、けいむ所からのだっ走を試みたらしい。', 'Rupanya pengikut Viet berusaha kabur dari penjara.') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('ea357904-909e-4d6f-ac72-20231957a932', 'トーフグは、常に新しい事を試みる人を探しています。', 'Tofugu mencari seseorang yang selalu mencoba melakukan sesuatu yang baru.') ON CONFLICT DO NOTHING;

INSERT INTO public.items (id, type, character, slug, level, rank_id, meaning_mnemonic, description) VALUES ('d03c4453-9cce-40e8-80f3-c127f82ac8b1', 'vocabulary', '試す', '試す', 2, 'c90d1e2f-3a4b-5c6d-7e8f-9a0b1c2d3e4f', 'Kata ini terdiri dari kanji dengan hiragana ditempelkan. Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanji sendiri artinya mencoba atau mencoba. Versi kosakata kata kerjanya adalah mencoba sesuatu atau mencoba sesuatu. Mengapa Anda tidak mencoba arti dari kata kerja ini, selagi Anda melakukannya?', 'Kata ini terdiri dari kanji dengan hiragana ditempelkan. Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanji sendiri artinya mencoba atau mencoba. Versi kosakata kata kerjanya adalah mencoba sesuatu atau mencoba sesuatu. Mengapa Anda tidak mencoba arti dari kata kerja ini, selagi Anda melakukannya?') ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, character = EXCLUDED.character, slug = EXCLUDED.slug, level = EXCLUDED.level, rank_id = EXCLUDED.rank_id, meaning_mnemonic = EXCLUDED.meaning_mnemonic, description = EXCLUDED.description;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('d03c4453-9cce-40e8-80f3-c127f82ac8b1', 'Untuk Mencoba Sesuatu', true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('d03c4453-9cce-40e8-80f3-c127f82ac8b1', 'To Give Something A Try', false) ON CONFLICT DO NOTHING;

INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES ('d03c4453-9cce-40e8-80f3-c127f82ac8b1', 'ためす', NULL, true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('d03c4453-9cce-40e8-80f3-c127f82ac8b1', 'この薬を試してみます。', 'Saya akan mencoba obat ini.') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('d03c4453-9cce-40e8-80f3-c127f82ac8b1', 'どのくらい速く日本語の早口言葉を言えるか、試してみようよ。', 'Mari kita coba melihat seberapa cepat kita bisa mengucapkan twister lidah Jepang.') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('d03c4453-9cce-40e8-80f3-c127f82ac8b1', '肘を舐めれるかどうかは分からないけど、試しにやってみるよ。', 'Saya tidak tahu apakah saya bisa menjilat siku saya, tapi saya akan mencobanya.') ON CONFLICT DO NOTHING;

INSERT INTO public.items (id, type, character, slug, level, rank_id, meaning_mnemonic, description) VALUES ('5d64171f-493f-4f9b-9c13-68ac88e2f2c0', 'vocabulary', '試食', '試食', 2, 'c90d1e2f-3a4b-5c6d-7e8f-9a0b1c2d3e4f', 'Silakan mencoba makan. Bagaimana percobaan kecil itu? Sampel kecil itu? Rasa kecil itu?', 'Silakan mencoba makan. Bagaimana percobaan kecil itu? Sampel kecil itu? Rasa kecil itu?') ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, character = EXCLUDED.character, slug = EXCLUDED.slug, level = EXCLUDED.level, rank_id = EXCLUDED.rank_id, meaning_mnemonic = EXCLUDED.meaning_mnemonic, description = EXCLUDED.description;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('5d64171f-493f-4f9b-9c13-68ac88e2f2c0', 'Contoh', true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('5d64171f-493f-4f9b-9c13-68ac88e2f2c0', 'Taste', false) ON CONFLICT DO NOTHING;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('5d64171f-493f-4f9b-9c13-68ac88e2f2c0', 'Food Sample', false) ON CONFLICT DO NOTHING;

INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES ('5d64171f-493f-4f9b-9c13-68ac88e2f2c0', 'ししょく', NULL, true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('5d64171f-493f-4f9b-9c13-68ac88e2f2c0', '文句を言う前に、試食してみてよ。', 'Cobalah sampelnya sebelum Anda mengeluhkannya.') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('5d64171f-493f-4f9b-9c13-68ac88e2f2c0', 'コウイチの昔なつかしいソフトクリームチーズ商店の試食会におよばれしました。', 'Saya diundang ke pesta sampel Emporium Krim Keju Sajian Lembut Jaman Dulu milik Koichi.') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('5d64171f-493f-4f9b-9c13-68ac88e2f2c0', 'スーパーで試食販売をしている人は、日本の食品業界では「マネキンさん」と呼ばれる。', 'Orang yang menawarkan sampel makanan di toko kelontong disebut "Ms. Mannequin" dalam industri makanan Jepang.') ON CONFLICT DO NOTHING;

INSERT INTO public.items (id, type, character, slug, level, rank_id, meaning_mnemonic, description) VALUES ('bf0353e1-27b4-4dd3-9a13-304befd08fc2', 'vocabulary', '体験', '体験', 2, 'c90d1e2f-3a4b-5c6d-7e8f-9a0b1c2d3e4f', 'Tubuh Anda menjalani tes dan setiap kali melewatinya, ia memperoleh lebih banyak pengalaman. Apa yang dialami tubuh Anda? Tes apa yang telah dilalui tubuh Anda?', 'Tubuh Anda menjalani tes dan setiap kali melewatinya, ia memperoleh lebih banyak pengalaman. Apa yang dialami tubuh Anda? Tes apa yang telah dilalui tubuh Anda?') ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, character = EXCLUDED.character, slug = EXCLUDED.slug, level = EXCLUDED.level, rank_id = EXCLUDED.rank_id, meaning_mnemonic = EXCLUDED.meaning_mnemonic, description = EXCLUDED.description;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('bf0353e1-27b4-4dd3-9a13-304befd08fc2', 'Pengalaman', true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES ('bf0353e1-27b4-4dd3-9a13-304befd08fc2', 'たいけん', NULL, true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('bf0353e1-27b4-4dd3-9a13-304befd08fc2', 'いねかり体験教室への応募者は、五百人に達しました。', 'Jumlah pendaftar kegiatan pengalaman memanen padi mencapai lima ratus.') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('bf0353e1-27b4-4dd3-9a13-304befd08fc2', '日本では戦争体験をした人の数が年々少なくなっています。', 'Di Jepang, jumlah orang yang mengalami perang terus menurun dari tahun ke tahun.') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('bf0353e1-27b4-4dd3-9a13-304befd08fc2', 'これは、コウイチ自身が日本へ留学した時の体験を元にした作品です。', 'Ini adalah cerita berdasarkan pengalaman Koichi sendiri saat dia belajar di luar negeri di Jepang.') ON CONFLICT DO NOTHING;

INSERT INTO public.items (id, type, character, slug, level, rank_id, meaning_mnemonic, description) VALUES ('8c1f02c0-8c07-4945-8be6-62d6ebce12b3', 'vocabulary', '試験', '試験', 2, 'c90d1e2f-3a4b-5c6d-7e8f-9a0b1c2d3e4f', 'Jika Anda mencoba suatu tes, Anda sedang mengikuti ujian. Ada banyak hal seperti ini di Jepang, jadi pastikan Anda mengetahui kata ini jika Anda ingin menyesuaikan diri dengan semua rengekan dan keluhan yang dilakukan siswa, terutama menjelang tahun terakhir sekolah menengah atas.', 'Jika Anda mencoba suatu tes, Anda sedang mengikuti ujian. Ada banyak hal seperti ini di Jepang, jadi pastikan Anda mengetahui kata ini jika Anda ingin menyesuaikan diri dengan semua rengekan dan keluhan yang dilakukan siswa, terutama menjelang tahun terakhir sekolah menengah atas.') ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, character = EXCLUDED.character, slug = EXCLUDED.slug, level = EXCLUDED.level, rank_id = EXCLUDED.rank_id, meaning_mnemonic = EXCLUDED.meaning_mnemonic, description = EXCLUDED.description;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('8c1f02c0-8c07-4945-8be6-62d6ebce12b3', 'Pemeriksaan', true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('8c1f02c0-8c07-4945-8be6-62d6ebce12b3', 'Test', false) ON CONFLICT DO NOTHING;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('8c1f02c0-8c07-4945-8be6-62d6ebce12b3', 'Experiment', false) ON CONFLICT DO NOTHING;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('8c1f02c0-8c07-4945-8be6-62d6ebce12b3', 'Exam', false) ON CONFLICT DO NOTHING;

INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES ('8c1f02c0-8c07-4945-8be6-62d6ebce12b3', 'しけん', NULL, true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('8c1f02c0-8c07-4945-8be6-62d6ebce12b3', 'おっと！明日試験だっけ？忘れるところだったよ。', 'Oh! Apakah besok hari ujian? Saya hampir melupakannya.') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('8c1f02c0-8c07-4945-8be6-62d6ebce12b3', '何度か試験してみたんですが、まだ一度も成功してないんですよ。', 'Kami melakukan beberapa tes, namun belum ada satupun yang berjalan dengan baik.') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('8c1f02c0-8c07-4945-8be6-62d6ebce12b3', '「ところで、試験はどうだった？」「パパ、その話はやめてよ。」', '“Ngomong-ngomong, bagaimana ujiannya?” "Berhenti membicarakan hal itu, Ayah."') ON CONFLICT DO NOTHING;

INSERT INTO public.items (id, type, character, slug, level, rank_id, meaning_mnemonic, description) VALUES ('3cae6aab-6142-470b-bf5a-491b4d3b06bc', 'vocabulary', '入学試験', '入学試験', 2, 'c90d1e2f-3a4b-5c6d-7e8f-9a0b1c2d3e4f', 'Untuk masuk sekolah (入学) Anda sedang mengikuti ujian (試験). Ujian apa yang harus Anda ambil untuk masuk ke sekolah? Bagaimana dengan ujian masuk? Yang Jepang cukup sulit. Kata lain untuk mereka adalah “ujian neraka”.', 'Untuk masuk sekolah (入学) Anda sedang mengikuti ujian (試験). Ujian apa yang harus Anda ambil untuk masuk ke sekolah? Bagaimana dengan ujian masuk? Yang Jepang cukup sulit. Kata lain untuk mereka adalah “ujian neraka”.') ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, character = EXCLUDED.character, slug = EXCLUDED.slug, level = EXCLUDED.level, rank_id = EXCLUDED.rank_id, meaning_mnemonic = EXCLUDED.meaning_mnemonic, description = EXCLUDED.description;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('3cae6aab-6142-470b-bf5a-491b4d3b06bc', 'Ujian Masuk', true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('3cae6aab-6142-470b-bf5a-491b4d3b06bc', 'Entrance Examination', false) ON CONFLICT DO NOTHING;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('3cae6aab-6142-470b-bf5a-491b4d3b06bc', 'Admission Test', false) ON CONFLICT DO NOTHING;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('3cae6aab-6142-470b-bf5a-491b4d3b06bc', 'Admission Exam', false) ON CONFLICT DO NOTHING;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('3cae6aab-6142-470b-bf5a-491b4d3b06bc', 'Admission Examination', false) ON CONFLICT DO NOTHING;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('3cae6aab-6142-470b-bf5a-491b4d3b06bc', 'Entrance Test', false) ON CONFLICT DO NOTHING;

INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES ('3cae6aab-6142-470b-bf5a-491b4d3b06bc', 'にゅうがくしけん', NULL, true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('3cae6aab-6142-470b-bf5a-491b4d3b06bc', '入学試験を終えた息子が、ニコニコしながら飛んで帰ってきました。', 'Anak saya terbang pulang ke rumah sambil tersenyum setelah menyelesaikan ujian masuk.') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('3cae6aab-6142-470b-bf5a-491b4d3b06bc', 'えーっ！入学試験代ってこんなにかかるの？は産しちゃうよ〜。', 'Apa? Biaya ujian masuknya semahal itu? Aku akan bangkrut!') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('3cae6aab-6142-470b-bf5a-491b4d3b06bc', 'ええっ！入学試験に落ちちゃったの？', 'Apa! Dia gagal dalam ujian masuk?') ON CONFLICT DO NOTHING;

INSERT INTO public.items (id, type, character, slug, level, rank_id, meaning_mnemonic, description) VALUES ('7c4f0978-0843-4ad4-bb6c-c97b91b947d2', 'vocabulary', '火曜日', '火曜日', 2, 'c90d1e2f-3a4b-5c6d-7e8f-9a0b1c2d3e4f', 'Ini adalah hari dalam seminggu. Anda tahu ini karena ada 曜日 di dalamnya. Tapi hari apa dalam seminggu ini? Hari kebakaran dalam seminggu adalah hari setelah hari terburuk dalam seminggu (Senin). Kamu membakar segalanya karena kamu sangat kesal dengan hari kemarin, sehingga menjadikan hari ini hari Selasa.', 'Ini adalah hari dalam seminggu. Anda tahu ini karena ada 曜日 di dalamnya. Tapi hari apa dalam seminggu ini? Hari kebakaran dalam seminggu adalah hari setelah hari terburuk dalam seminggu (Senin). Kamu membakar segalanya karena kamu sangat kesal dengan hari kemarin, sehingga menjadikan hari ini hari Selasa.') ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, character = EXCLUDED.character, slug = EXCLUDED.slug, level = EXCLUDED.level, rank_id = EXCLUDED.rank_id, meaning_mnemonic = EXCLUDED.meaning_mnemonic, description = EXCLUDED.description;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('7c4f0978-0843-4ad4-bb6c-c97b91b947d2', 'Selasa', true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES ('7c4f0978-0843-4ad4-bb6c-c97b91b947d2', 'かようび', NULL, true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('7c4f0978-0843-4ad4-bb6c-c97b91b947d2', 'ある晴れた火曜日の朝、家の花に水やりをしていると、白いひげを生やしたおじいさんに話しかけられました。', 'Pada suatu hari Selasa pagi yang cerah, seorang lelaki tua berjanggut putih mulai berbicara kepadaku saat aku sedang menyiram bunga.') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('7c4f0978-0843-4ad4-bb6c-c97b91b947d2', 'すみませんが、来週の月曜日と火曜日はいそがしいんです。', 'Maaf, tapi saya sibuk Senin dan Selasa depan.') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('7c4f0978-0843-4ad4-bb6c-c97b91b947d2', '火曜日は野球でコテンパにやられたよ。', 'Saya dimiliki dalam bisbol pada hari Selasa.') ON CONFLICT DO NOTHING;

INSERT INTO public.items (id, type, character, slug, level, rank_id, meaning_mnemonic, description) VALUES ('d8994d0e-a248-440c-8a10-1169a80d1a92', 'vocabulary', '金曜日', '金曜日', 2, 'c90d1e2f-3a4b-5c6d-7e8f-9a0b1c2d3e4f', 'Ini adalah hari dalam seminggu. Anda tahu ini karena ada 曜日 di dalamnya. Tapi hari apa dalam seminggu ini? Hari emas dalam seminggu adalah hari terhebat. Ini adalah hari yang membuat Anda merasa seperti emas karena ini adalah akhir hari kerja dan awal akhir pekan! Hari ini adalah hari Jumat.', 'Ini adalah hari dalam seminggu. Anda tahu ini karena ada 曜日 di dalamnya. Tapi hari apa dalam seminggu ini? Hari emas dalam seminggu adalah hari terhebat. Ini adalah hari yang membuat Anda merasa seperti emas karena ini adalah akhir hari kerja dan awal akhir pekan! Hari ini adalah hari Jumat.') ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, character = EXCLUDED.character, slug = EXCLUDED.slug, level = EXCLUDED.level, rank_id = EXCLUDED.rank_id, meaning_mnemonic = EXCLUDED.meaning_mnemonic, description = EXCLUDED.description;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('d8994d0e-a248-440c-8a10-1169a80d1a92', 'Jumat', true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES ('d8994d0e-a248-440c-8a10-1169a80d1a92', 'きんようび', NULL, true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('d8994d0e-a248-440c-8a10-1169a80d1a92', '金曜日に飲みに行く約束、忘れてないよね？', 'Anda belum lupa bahwa kami berencana pergi minum-minum pada Jumat malam, bukan?') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('d8994d0e-a248-440c-8a10-1169a80d1a92', 'ビエトは、毎週金曜日の夜に、情報のバックアップを作成します。', 'Viet membuat cadangan data kami setiap Jumat malam.') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('d8994d0e-a248-440c-8a10-1169a80d1a92', '「フグのコスチュームですが、いつ頃仕上がりますかねえ？」「金曜日の午後までにはできていると思います。」', '"Kapan kostum Fuguku siap?" “Ini akan siap pada Jumat sore.”') ON CONFLICT DO NOTHING;

INSERT INTO public.items (id, type, character, slug, level, rank_id, meaning_mnemonic, description) VALUES ('30af705c-7511-4684-876a-3e6be7fee734', 'vocabulary', '意外', '意外', 2, 'c90d1e2f-3a4b-5c6d-7e8f-9a0b1c2d3e4f', 'Sesuatu di luar gambaran normal Anda tentang cara kerja akan menjadi sesuatu yang tidak terduga atau mengejutkan bagi Anda.', 'Sesuatu di luar gambaran normal Anda tentang cara kerja akan menjadi sesuatu yang tidak terduga atau mengejutkan bagi Anda.') ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, character = EXCLUDED.character, slug = EXCLUDED.slug, level = EXCLUDED.level, rank_id = EXCLUDED.rank_id, meaning_mnemonic = EXCLUDED.meaning_mnemonic, description = EXCLUDED.description;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('30af705c-7511-4684-876a-3e6be7fee734', 'Tidak terduga', true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('30af705c-7511-4684-876a-3e6be7fee734', 'Surprising', false) ON CONFLICT DO NOTHING;

INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES ('30af705c-7511-4684-876a-3e6be7fee734', 'いがい', NULL, true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('30af705c-7511-4684-876a-3e6be7fee734', '意外にも、父はすぐにさん成してくれました。', 'Tanpa diduga, ayah saya langsung menyetujuinya.') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('30af705c-7511-4684-876a-3e6be7fee734', 'ゆですぎのやわらかいパスタをこのんで食べるのは、カナダの意外な文化でした。', 'Menyukai pasta lembut yang dimasak terlalu lama adalah aspek budaya Kanada yang tidak terduga.') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('30af705c-7511-4684-876a-3e6be7fee734', 'フグは物凄く走るの速いよ。海ではあまり良いスイマーじゃなかったってことと、大学に入るまで陸上での競技に出たことがなかったってのは、本当に意外だよ。', 'Fugu adalah pelari yang sangat cepat. Yang mengejutkan, ia tidak pernah pandai berenang di laut dan tidak pernah berlomba di darat hingga ia duduk di bangku kuliah.') ON CONFLICT DO NOTHING;

INSERT INTO public.items (id, type, character, slug, level, rank_id, meaning_mnemonic, description) VALUES ('8018511b-1fe9-4d73-b1c1-7e420cd3830a', 'vocabulary', '開始', '開始', 2, 'c90d1e2f-3a4b-5c6d-7e8f-9a0b1c2d3e4f', 'Terbukanya permulaan adalah permulaan atau permulaan.', 'Terbukanya permulaan adalah permulaan atau permulaan.') ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, character = EXCLUDED.character, slug = EXCLUDED.slug, level = EXCLUDED.level, rank_id = EXCLUDED.rank_id, meaning_mnemonic = EXCLUDED.meaning_mnemonic, description = EXCLUDED.description;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('8018511b-1fe9-4d73-b1c1-7e420cd3830a', 'Awal', true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('8018511b-1fe9-4d73-b1c1-7e420cd3830a', 'Beginning', false) ON CONFLICT DO NOTHING;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('8018511b-1fe9-4d73-b1c1-7e420cd3830a', 'Opening', false) ON CONFLICT DO NOTHING;

INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES ('8018511b-1fe9-4d73-b1c1-7e420cd3830a', 'かいし', NULL, true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('8018511b-1fe9-4d73-b1c1-7e420cd3830a', 'このゲームは、明日はいしん開始です。', 'Game ini akan dirilis besok.') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('8018511b-1fe9-4d73-b1c1-7e420cd3830a', '先行予やく受付を開始しました。', 'Kami sudah mulai menerima pre-order.') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('8018511b-1fe9-4d73-b1c1-7e420cd3830a', '現在、トーフグは枕業界で巻き返しを図っており、新しいモデルの枕の販売を開始した。', 'Tofugu saat ini masih berupaya mengejar pasar bantal, sehingga mereka mulai menjual model baru.') ON CONFLICT DO NOTHING;

INSERT INTO public.items (id, type, character, slug, level, rank_id, meaning_mnemonic, description) VALUES ('8eebdac1-d2d0-49cb-9d1b-e10eb719c51f', 'vocabulary', '質', '質', 2, 'c90d1e2f-3a4b-5c6d-7e8f-9a0b1c2d3e4f', 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.', 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.') ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, character = EXCLUDED.character, slug = EXCLUDED.slug, level = EXCLUDED.level, rank_id = EXCLUDED.rank_id, meaning_mnemonic = EXCLUDED.meaning_mnemonic, description = EXCLUDED.description;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('8eebdac1-d2d0-49cb-9d1b-e10eb719c51f', 'Kualitas', true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES ('8eebdac1-d2d0-49cb-9d1b-e10eb719c51f', 'しつ', NULL, true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('8eebdac1-d2d0-49cb-9d1b-e10eb719c51f', '外国語指導助手の質は人によって全然違うので、心配です。', 'Kualitas asisten guru bahasa asing berbeda-beda pada setiap orang dan saya mengkhawatirkan hal itu.') ON CONFLICT DO NOTHING;

INSERT INTO public.items (id, type, character, slug, level, rank_id, meaning_mnemonic, description) VALUES ('f7155bac-c45d-42a6-a50c-6257822b7f57', 'vocabulary', '質問', '質問', 2, 'c90d1e2f-3a4b-5c6d-7e8f-9a0b1c2d3e4f', 'Masalah kualitas patut dipertanyakan. Namun masalah kualitas rendah... jangan ajukan pertanyaan. Lagipula, ada pertanyaan-pertanyaan bodoh.', 'Masalah kualitas patut dipertanyakan. Namun masalah kualitas rendah... jangan ajukan pertanyaan. Lagipula, ada pertanyaan-pertanyaan bodoh.') ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, character = EXCLUDED.character, slug = EXCLUDED.slug, level = EXCLUDED.level, rank_id = EXCLUDED.rank_id, meaning_mnemonic = EXCLUDED.meaning_mnemonic, description = EXCLUDED.description;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('f7155bac-c45d-42a6-a50c-6257822b7f57', 'Pertanyaan', true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES ('f7155bac-c45d-42a6-a50c-6257822b7f57', 'しつもん', NULL, true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('f7155bac-c45d-42a6-a50c-6257822b7f57', '彼はある観客からの予想外の質問にたじろいだ。', 'Dia tersentak mendengar pertanyaan tak terduga dari seorang penonton.') ON CONFLICT DO NOTHING;

INSERT INTO public.items (id, type, character, slug, level, rank_id, meaning_mnemonic, description) VALUES ('74da44fc-b05f-4346-9624-a1d84581695e', 'vocabulary', '品質', '品質', 2, 'c90d1e2f-3a4b-5c6d-7e8f-9a0b1c2d3e4f', 'Kualitas suatu produk terletak pada kualitas materialnya. Jika bahannya tidak bagus maka produknya juga tidak bagus.', 'Kualitas suatu produk terletak pada kualitas materialnya. Jika bahannya tidak bagus maka produknya juga tidak bagus.') ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, character = EXCLUDED.character, slug = EXCLUDED.slug, level = EXCLUDED.level, rank_id = EXCLUDED.rank_id, meaning_mnemonic = EXCLUDED.meaning_mnemonic, description = EXCLUDED.description;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('74da44fc-b05f-4346-9624-a1d84581695e', 'Kualitas Bahan', true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('74da44fc-b05f-4346-9624-a1d84581695e', 'Item Quality', false) ON CONFLICT DO NOTHING;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('74da44fc-b05f-4346-9624-a1d84581695e', 'Product Quality', false) ON CONFLICT DO NOTHING;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('74da44fc-b05f-4346-9624-a1d84581695e', 'Quality', false) ON CONFLICT DO NOTHING;

INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES ('74da44fc-b05f-4346-9624-a1d84581695e', 'ひんしつ', NULL, true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('74da44fc-b05f-4346-9624-a1d84581695e', '彼女は品質管理マネージャーとして入社した。', 'Dia diangkat sebagai manajer kendali mutu.') ON CONFLICT DO NOTHING;

INSERT INTO public.items (id, type, character, slug, level, rank_id, meaning_mnemonic, description) VALUES ('5be30d12-b34d-4c65-80e2-89346314b4e2', 'vocabulary', '特質', '特質', 2, 'c90d1e2f-3a4b-5c6d-7e8f-9a0b1c2d3e4f', 'Kualitas khusus Anda adalah karakteristik atau sifat Anda.', 'Kualitas khusus Anda adalah karakteristik atau sifat Anda.') ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, character = EXCLUDED.character, slug = EXCLUDED.slug, level = EXCLUDED.level, rank_id = EXCLUDED.rank_id, meaning_mnemonic = EXCLUDED.meaning_mnemonic, description = EXCLUDED.description;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('5be30d12-b34d-4c65-80e2-89346314b4e2', 'Karakteristik', true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('5be30d12-b34d-4c65-80e2-89346314b4e2', 'Trait', false) ON CONFLICT DO NOTHING;

INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES ('5be30d12-b34d-4c65-80e2-89346314b4e2', 'とくしつ', NULL, true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('5be30d12-b34d-4c65-80e2-89346314b4e2', '笑いは人間だけの特質なのかな？それとも動物も笑うのかな？', 'Apakah tertawa merupakan ciri yang hanya dimiliki manusia, atau apakah hewan juga bisa tertawa?') ON CONFLICT DO NOTHING;

INSERT INTO public.items (id, type, character, slug, level, rank_id, meaning_mnemonic, description) VALUES ('2077fb59-fb65-4551-a929-df269d8efa71', 'vocabulary', '貸す', '貸す', 2, 'c90d1e2f-3a4b-5c6d-7e8f-9a0b1c2d3e4f', 'Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanjinya sendiri artinya meminjamkan jadi versi vocab verbanya adalah meminjamkan.', 'Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanjinya sendiri artinya meminjamkan jadi versi vocab verbanya adalah meminjamkan.') ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, character = EXCLUDED.character, slug = EXCLUDED.slug, level = EXCLUDED.level, rank_id = EXCLUDED.rank_id, meaning_mnemonic = EXCLUDED.meaning_mnemonic, description = EXCLUDED.description;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('2077fb59-fb65-4551-a929-df269d8efa71', 'Untuk Meminjamkan', true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('2077fb59-fb65-4551-a929-df269d8efa71', 'To Rent', false) ON CONFLICT DO NOTHING;

INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES ('2077fb59-fb65-4551-a929-df269d8efa71', 'かす', NULL, true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('2077fb59-fb65-4551-a929-df269d8efa71', '「君の車を貸してくれない？」「絶対にだめだよ。まだ免許持ってないじゃないか。」', '"Bisakah kamu meminjamkan mobilmu padaku?" “Sama sekali tidak. Anda belum memiliki lisensi.”') ON CONFLICT DO NOTHING;

INSERT INTO public.items (id, type, character, slug, level, rank_id, meaning_mnemonic, description) VALUES ('60594531-65ba-4412-93eb-decf7315c968', 'vocabulary', '貸し切り', '貸し切り', 2, 'c90d1e2f-3a4b-5c6d-7e8f-9a0b1c2d3e4f', 'Bila peminjamannya sudah dipotong, berarti barang tersebut sudah dipesan.', 'Bila peminjamannya sudah dipotong, berarti barang tersebut sudah dipesan.') ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, character = EXCLUDED.character, slug = EXCLUDED.slug, level = EXCLUDED.level, rank_id = EXCLUDED.rank_id, meaning_mnemonic = EXCLUDED.meaning_mnemonic, description = EXCLUDED.description;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('60594531-65ba-4412-93eb-decf7315c968', 'Dicadangkan', true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('60594531-65ba-4412-93eb-decf7315c968', 'Reservation', false) ON CONFLICT DO NOTHING;

INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES ('60594531-65ba-4412-93eb-decf7315c968', 'かしきり', NULL, true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('60594531-65ba-4412-93eb-decf7315c968', 'この宿には、貸し切りの温泉があります。', 'Penginapan ini memiliki sumber air panas yang dipesan.') ON CONFLICT DO NOTHING;

INSERT INTO public.items (id, type, character, slug, level, rank_id, meaning_mnemonic, description) VALUES ('de8247b6-04cb-4be4-8bc3-ad2fbe4b3e09', 'vocabulary', '貸し', '貸し', 2, 'c90d1e2f-3a4b-5c6d-7e8f-9a0b1c2d3e4f', 'Meminjamkan adalah 貸す. Ini adalah versi kata benda. Itu adalah sesuatu yang telah disewa, sebuah sewa.', 'Meminjamkan adalah 貸す. Ini adalah versi kata benda. Itu adalah sesuatu yang telah disewa, sebuah sewa.') ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, character = EXCLUDED.character, slug = EXCLUDED.slug, level = EXCLUDED.level, rank_id = EXCLUDED.rank_id, meaning_mnemonic = EXCLUDED.meaning_mnemonic, description = EXCLUDED.description;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('de8247b6-04cb-4be4-8bc3-ad2fbe4b3e09', 'Sewa', true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES ('de8247b6-04cb-4be4-8bc3-ad2fbe4b3e09', 'かし', NULL, true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('de8247b6-04cb-4be4-8bc3-ad2fbe4b3e09', 'これは私のじゃなくて、貸し自転車なんです。', 'Ini bukan milikku, ini sepeda sewaan.') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('de8247b6-04cb-4be4-8bc3-ad2fbe4b3e09', '今は貸し倉庫で寝泊まりしているんです。', 'Saya tinggal di gudang sewaan sekarang.') ON CONFLICT DO NOTHING;

INSERT INTO public.items (id, type, character, slug, level, rank_id, meaning_mnemonic, description) VALUES ('f0d873bd-f654-49af-86da-510ec87dc5fb', 'vocabulary', '有意', '有意', 2, 'c90d1e2f-3a4b-5c6d-7e8f-9a0b1c2d3e4f', 'Jika Anda punya ide, itu artinya Anda penting. Anda memiliki arti penting. Mereka yang tidak punya ide hanyalah lelucon besar dan tidak bisa berbuat apa-apa.', 'Jika Anda punya ide, itu artinya Anda penting. Anda memiliki arti penting. Mereka yang tidak punya ide hanyalah lelucon besar dan tidak bisa berbuat apa-apa.') ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, character = EXCLUDED.character, slug = EXCLUDED.slug, level = EXCLUDED.level, rank_id = EXCLUDED.rank_id, meaning_mnemonic = EXCLUDED.meaning_mnemonic, description = EXCLUDED.description;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('f0d873bd-f654-49af-86da-510ec87dc5fb', 'Signifikansi', true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES ('f0d873bd-f654-49af-86da-510ec87dc5fb', 'ゆうい', NULL, true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('f0d873bd-f654-49af-86da-510ec87dc5fb', '卒論のための研究で、統計学的に有意な値を導けなかったんです。', 'Penelitian untuk tesis kelulusan saya tidak signifikan secara statistik.') ON CONFLICT DO NOTHING;

INSERT INTO public.items (id, type, character, slug, level, rank_id, meaning_mnemonic, description) VALUES ('5ac174a5-5e19-43e0-910b-5c69364daae4', 'vocabulary', '北海道', '北海道', 2, 'c90d1e2f-3a4b-5c6d-7e8f-9a0b1c2d3e4f', 'Jalan laut utara adalah jalan yang Anda lalui untuk menuju laut utara. Sebenarnya itu adalah wilayah Jepang. Daerah itu dikenal sebagai Hokkaido. Ini adalah tempat yang sangat bagus, pastikan untuk mengunjunginya jika Anda bisa untuk menikmati makanan laut segar di sekitar.', 'Jalan laut utara adalah jalan yang Anda lalui untuk menuju laut utara. Sebenarnya itu adalah wilayah Jepang. Daerah itu dikenal sebagai Hokkaido. Ini adalah tempat yang sangat bagus, pastikan untuk mengunjunginya jika Anda bisa untuk menikmati makanan laut segar di sekitar.') ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, character = EXCLUDED.character, slug = EXCLUDED.slug, level = EXCLUDED.level, rank_id = EXCLUDED.rank_id, meaning_mnemonic = EXCLUDED.meaning_mnemonic, description = EXCLUDED.description;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('5ac174a5-5e19-43e0-910b-5c69364daae4', 'Hokkaido', true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('5ac174a5-5e19-43e0-910b-5c69364daae4', 'Hokkaidou', false) ON CONFLICT DO NOTHING;

INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES ('5ac174a5-5e19-43e0-910b-5c69364daae4', 'ほっかいどう', NULL, true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('5ac174a5-5e19-43e0-910b-5c69364daae4', 'ぼくは、北海道で雪合戦をしたことがあります。', 'Saya pernah ikut pertandingan bola salju di Hokkaido.') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('5ac174a5-5e19-43e0-910b-5c69364daae4', '北海道についたどー！本もののすしを食べるどー！', 'Saya telah tiba di Hokkaido! Saatnya makan sushi asli!') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('5ac174a5-5e19-43e0-910b-5c69364daae4', '北海道のお土産といえば、何が有名でしょうか。', 'Ngomong-ngomong soal oleh-oleh Hokkaido, apa yang terkenal?') ON CONFLICT DO NOTHING;

INSERT INTO public.items (id, type, character, slug, level, rank_id, meaning_mnemonic, description) VALUES ('0d32e8b8-8e63-4730-9a9b-dc7d277b72ba', 'vocabulary', '新年', '新年', 2, 'c90d1e2f-3a4b-5c6d-7e8f-9a0b1c2d3e4f', 'Tahun baru adalah tahun baru. Semoga Anda pernah/memiliki/sedang mengalami hal yang baik, tergantung kapan Anda membaca ini.', 'Tahun baru adalah tahun baru. Semoga Anda pernah/memiliki/sedang mengalami hal yang baik, tergantung kapan Anda membaca ini.') ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, character = EXCLUDED.character, slug = EXCLUDED.slug, level = EXCLUDED.level, rank_id = EXCLUDED.rank_id, meaning_mnemonic = EXCLUDED.meaning_mnemonic, description = EXCLUDED.description;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('0d32e8b8-8e63-4730-9a9b-dc7d277b72ba', 'Tahun Baru', true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES ('0d32e8b8-8e63-4730-9a9b-dc7d277b72ba', 'しんねん', NULL, true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('0d32e8b8-8e63-4730-9a9b-dc7d277b72ba', '新年、明けましておめでとうございます。', 'Selamat tahun baru!') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('0d32e8b8-8e63-4730-9a9b-dc7d277b72ba', '新年のほうふはもう決めましたか？', 'Apakah kamu sudah menentukan resolusi tahun barumu?') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('0d32e8b8-8e63-4730-9a9b-dc7d277b72ba', '新年の挨拶に、親戚の家を回りました。', 'Kami berkeliling ke rumah kerabat kami untuk saling bertukar ucapan selamat tahun baru.') ON CONFLICT DO NOTHING;

INSERT INTO public.items (id, type, character, slug, level, rank_id, meaning_mnemonic, description) VALUES ('8e62b6b8-8174-46d7-8c7d-cb466065d2b1', 'vocabulary', '立ち飲み', '立ち飲み', 2, 'c90d1e2f-3a4b-5c6d-7e8f-9a0b1c2d3e4f', 'Artinya sama dengan kanji. Saat Anda berdiri dan minum, Anda berdiri dan minum. Atau malah minum sambil berdiri.', 'Artinya sama dengan kanji. Saat Anda berdiri dan minum, Anda berdiri dan minum. Atau malah minum sambil berdiri.') ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, character = EXCLUDED.character, slug = EXCLUDED.slug, level = EXCLUDED.level, rank_id = EXCLUDED.rank_id, meaning_mnemonic = EXCLUDED.meaning_mnemonic, description = EXCLUDED.description;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('8e62b6b8-8174-46d7-8c7d-cb466065d2b1', 'Berdiri Dan Minum', true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('8e62b6b8-8174-46d7-8c7d-cb466065d2b1', 'Drinking While Standing', false) ON CONFLICT DO NOTHING;

INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES ('8e62b6b8-8174-46d7-8c7d-cb466065d2b1', 'たちのみ', NULL, true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('8e62b6b8-8174-46d7-8c7d-cb466065d2b1', '夏には、テラスせきで立ち飲みもできます。', 'Di musim panas Anda dapat berdiri dan minum di teras.') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('8e62b6b8-8174-46d7-8c7d-cb466065d2b1', '東京の新ばしえき近辺には立ち飲み屋がたくさんあります。', 'Ada banyak bar stand-and-drink di dekat Stasiun Shinbashi di Tokyo.') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('8e62b6b8-8174-46d7-8c7d-cb466065d2b1', '昨日、あの立ち飲み屋の後、誰かとやった？', 'Apakah Anda melakukan tindakan apa pun tadi malam setelah meninggalkan standing bar?') ON CONFLICT DO NOTHING;

