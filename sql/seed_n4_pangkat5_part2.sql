INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('3a4c8808-8c1c-47aa-9a57-2a7bfde67ece', '学校が終わったら、買い物に行きます。', 'Kalau sekolah sudah selesai, aku akan pergi berbelanja.') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('3a4c8808-8c1c-47aa-9a57-2a7bfde67ece', 'ギャンブルにまけて人生終わってしまった。', 'Hidupku berakhir ketika aku kehilangan semuanya karena perjudian.') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('3a4c8808-8c1c-47aa-9a57-2a7bfde67ece', 'おい、こら！引っ込んでろ！原子爆弾の解体が終わるまでは、私に近づくなと言っただろ。', 'Hei, kawan! Mundur! Sudah kubilang padamu untuk menjauh dariku sampai bom atom selesai dibongkar.') ON CONFLICT DO NOTHING;

INSERT INTO public.items (id, type, character, slug, level, rank_id, meaning_mnemonic, description) VALUES ('0f3d9bc1-1165-4a7c-99db-f188d5aad8ef', 'vocabulary', '習う', '習う', 2, 'b8c90d1e-2f3a-4b5c-6d7e-8f9a0b1c2d3e', 'Kata ini terdiri dari kanji dengan hiragana ditempelkan. Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanjinya sendiri artinya belajar, jadi versi vocab verbanya artinya belajar atau mengambil pelajaran pada suatu hal.', 'Kata ini terdiri dari kanji dengan hiragana ditempelkan. Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanjinya sendiri artinya belajar, jadi versi vocab verbanya artinya belajar atau mengambil pelajaran pada suatu hal.') ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, character = EXCLUDED.character, slug = EXCLUDED.slug, level = EXCLUDED.level, rank_id = EXCLUDED.rank_id, meaning_mnemonic = EXCLUDED.meaning_mnemonic, description = EXCLUDED.description;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('0f3d9bc1-1165-4a7c-99db-f188d5aad8ef', 'Untuk Belajar', true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('0f3d9bc1-1165-4a7c-99db-f188d5aad8ef', 'To Take Lessons In', false) ON CONFLICT DO NOTHING;

INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES ('0f3d9bc1-1165-4a7c-99db-f188d5aad8ef', 'ならう', NULL, true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('0f3d9bc1-1165-4a7c-99db-f188d5aad8ef', '日本に来てから、日本語を習いました。', 'Saya telah belajar bahasa Jepang sejak datang ke Jepang.') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('0f3d9bc1-1165-4a7c-99db-f188d5aad8ef', '姉は、ピアノを習っています。', 'Kakak perempuan saya sedang mengambil pelajaran piano.') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('0f3d9bc1-1165-4a7c-99db-f188d5aad8ef', '今日は、世界一のフグクッキーの作り方を習いに行くのよ。', 'Saya akan belajar cara membuat kue fugu terbaik dunia hari ini.') ON CONFLICT DO NOTHING;

INSERT INTO public.items (id, type, character, slug, level, rank_id, meaning_mnemonic, description) VALUES ('4ff8bc1a-c163-455f-bcbb-b591c1cd992c', 'vocabulary', '転がる', '転がる', 2, 'b8c90d1e-2f3a-4b5c-6d7e-8f9a0b1c2d3e', 'Anda tahu kanji di sini artinya berputar. Versi kata kerjanya serupa. Artinya berguling atau terjatuh. Ketika sesuatu melakukan hal-hal ini, ia berputar, bukan?', 'Anda tahu kanji di sini artinya berputar. Versi kata kerjanya serupa. Artinya berguling atau terjatuh. Ketika sesuatu melakukan hal-hal ini, ia berputar, bukan?') ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, character = EXCLUDED.character, slug = EXCLUDED.slug, level = EXCLUDED.level, rank_id = EXCLUDED.rank_id, meaning_mnemonic = EXCLUDED.meaning_mnemonic, description = EXCLUDED.description;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('4ff8bc1a-c163-455f-bcbb-b591c1cd992c', 'Untuk Menggulung', true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('4ff8bc1a-c163-455f-bcbb-b591c1cd992c', 'To Tumble', false) ON CONFLICT DO NOTHING;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('4ff8bc1a-c163-455f-bcbb-b591c1cd992c', 'To Lie Down', false) ON CONFLICT DO NOTHING;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('4ff8bc1a-c163-455f-bcbb-b591c1cd992c', 'To Be Scattered About', false) ON CONFLICT DO NOTHING;

INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES ('4ff8bc1a-c163-455f-bcbb-b591c1cd992c', 'ころがる', NULL, true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('4ff8bc1a-c163-455f-bcbb-b591c1cd992c', 'あんたのけいたいなら、その辺に転がってたわよ。', 'Ponselmu tertinggal di suatu tempat di sekitar sini.') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('4ff8bc1a-c163-455f-bcbb-b591c1cd992c', 'ダリンは、トーフグオフィスの前にフグの死体が転がっているのを発見しました。', 'Darin menemukan mayat ikan buntal tergeletak di depan kantor Tofugu.') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('4ff8bc1a-c163-455f-bcbb-b591c1cd992c', '転がる石？イギリスのロックバンド、ザ・ローリング・ストーンズのことですか？', 'Batu yang menggelinding? Apakah yang Anda maksud: band rock Inggris The Rolling Stones?') ON CONFLICT DO NOTHING;

INSERT INTO public.items (id, type, character, slug, level, rank_id, meaning_mnemonic, description) VALUES ('cfcf6ee3-0504-49d2-b9bc-12a53d47dae9', 'vocabulary', '自転車', '自転車', 2, 'b8c90d1e-2f3a-4b5c-6d7e-8f9a0b1c2d3e', 'Mobil yang bisa berputar sendiri. Anda mungkin mengira ini adalah mobil biasa, tetapi sepeda mungkin sudah diperkenalkan sebelum mobil ada, artinya mobil yang dapat berputar sendiri adalah sepedanya, bukan mobilnya. Bayangkan saja diri Anda sedang mengendarai sepeda, dan Anda bahkan tidak perlu mengayuh. Mereka berputar sendiri, tapi sekarang Anda melaju terlalu cepat dan itu menakutkan.', 'Mobil yang bisa berputar sendiri. Anda mungkin mengira ini adalah mobil biasa, tetapi sepeda mungkin sudah diperkenalkan sebelum mobil ada, artinya mobil yang dapat berputar sendiri adalah sepedanya, bukan mobilnya. Bayangkan saja diri Anda sedang mengendarai sepeda, dan Anda bahkan tidak perlu mengayuh. Mereka berputar sendiri, tapi sekarang Anda melaju terlalu cepat dan itu menakutkan.') ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, character = EXCLUDED.character, slug = EXCLUDED.slug, level = EXCLUDED.level, rank_id = EXCLUDED.rank_id, meaning_mnemonic = EXCLUDED.meaning_mnemonic, description = EXCLUDED.description;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('cfcf6ee3-0504-49d2-b9bc-12a53d47dae9', 'Sepeda', true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('cfcf6ee3-0504-49d2-b9bc-12a53d47dae9', 'Bike', false) ON CONFLICT DO NOTHING;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('cfcf6ee3-0504-49d2-b9bc-12a53d47dae9', 'Pushbike', false) ON CONFLICT DO NOTHING;

INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES ('cfcf6ee3-0504-49d2-b9bc-12a53d47dae9', 'じてんしゃ', NULL, true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('cfcf6ee3-0504-49d2-b9bc-12a53d47dae9', 'わたしは自転車で会社に行っています。', 'Saya berangkat kerja dengan sepeda.') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('cfcf6ee3-0504-49d2-b9bc-12a53d47dae9', '自転車を買ってあげるよ。お返しは要らないからね！', 'Aku akan membelikanmu sepeda baru, tanpa pamrih.') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('cfcf6ee3-0504-49d2-b9bc-12a53d47dae9', '「ごめん。てっきり君が僕の自転車を壊したのかと思ってたよ。」 「何それ！ひどい。私がそんなことするはずないでしょ。」', '"Maafkan aku. Kupikir pasti kaulah yang merusak sepedaku." "Apa? Mengerikan sekali. Kamu mengenalku lebih baik dari itu."') ON CONFLICT DO NOTHING;

INSERT INTO public.items (id, type, character, slug, level, rank_id, meaning_mnemonic, description) VALUES ('24000326-7a95-4323-9b4b-91cf65944039', 'vocabulary', '転送', '転送', 2, 'b8c90d1e-2f3a-4b5c-6d7e-8f9a0b1c2d3e', 'Jadi, Anda mengirimkan sesuatu yang berputar. Itu sedikit transfer/transmisi, melalui kabel. Pesan-pesan kecil yang berputar saat mereka melewati antrean untuk mencapai tujuan. Coba bayangkan ini terjadi dalam gerakan lambat, sampai ke ujung yang lain.', 'Jadi, Anda mengirimkan sesuatu yang berputar. Itu sedikit transfer/transmisi, melalui kabel. Pesan-pesan kecil yang berputar saat mereka melewati antrean untuk mencapai tujuan. Coba bayangkan ini terjadi dalam gerakan lambat, sampai ke ujung yang lain.') ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, character = EXCLUDED.character, slug = EXCLUDED.slug, level = EXCLUDED.level, rank_id = EXCLUDED.rank_id, meaning_mnemonic = EXCLUDED.meaning_mnemonic, description = EXCLUDED.description;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('24000326-7a95-4323-9b4b-91cf65944039', 'Perpindahan', true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('24000326-7a95-4323-9b4b-91cf65944039', 'Forwarding', false) ON CONFLICT DO NOTHING;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('24000326-7a95-4323-9b4b-91cf65944039', 'Transmission', false) ON CONFLICT DO NOTHING;

INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES ('24000326-7a95-4323-9b4b-91cf65944039', 'てんそう', NULL, true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('24000326-7a95-4323-9b4b-91cf65944039', 'そのメール、私にも転送してくれない？', 'Bisakah Anda meneruskan email itu kepada saya?') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('24000326-7a95-4323-9b4b-91cf65944039', '海外に住んでいる日本人は、よく日本のウェブサイトから物を買って、海外の住所に転送しています。', 'Orang Jepang yang tinggal di luar negeri sering kali membeli barang dari situs web Jepang dan meneruskannya ke alamat luar negeri.') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('24000326-7a95-4323-9b4b-91cf65944039', '郵便物をこちら住所の方へ転送して頂きたいんですが。', 'Bisakah Anda meneruskan surat saya ke alamat ini?') ON CONFLICT DO NOTHING;

INSERT INTO public.items (id, type, character, slug, level, rank_id, meaning_mnemonic, description) VALUES ('72ef1c94-317f-4cf8-97e1-28b53af102f8', 'vocabulary', '病気', '病気', 2, 'b8c90d1e-2f3a-4b5c-6d7e-8f9a0b1c2d3e', 'Jika energi Anda seperti penyakit, kemungkinan besar Anda sedang sakit.', 'Jika energi Anda seperti penyakit, kemungkinan besar Anda sedang sakit.') ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, character = EXCLUDED.character, slug = EXCLUDED.slug, level = EXCLUDED.level, rank_id = EXCLUDED.rank_id, meaning_mnemonic = EXCLUDED.meaning_mnemonic, description = EXCLUDED.description;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('72ef1c94-317f-4cf8-97e1-28b53af102f8', 'Sakit', true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('72ef1c94-317f-4cf8-97e1-28b53af102f8', 'Illness', false) ON CONFLICT DO NOTHING;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('72ef1c94-317f-4cf8-97e1-28b53af102f8', 'Sickness', false) ON CONFLICT DO NOTHING;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('72ef1c94-317f-4cf8-97e1-28b53af102f8', 'Disease', false) ON CONFLICT DO NOTHING;

INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES ('72ef1c94-317f-4cf8-97e1-28b53af102f8', 'びょうき', NULL, true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('72ef1c94-317f-4cf8-97e1-28b53af102f8', '母の病気は、まだよくなりません。', 'Penyakit ibu saya masih belum kunjung membaik.') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('72ef1c94-317f-4cf8-97e1-28b53af102f8', 'おしりからおならが止まらない病気にかかってしまい、外に出られなくなってしまいました。', 'Aku terkena penyakit yang membuatku selalu kentut, jadi aku belum bisa keluar rumah.') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('72ef1c94-317f-4cf8-97e1-28b53af102f8', '「先生、僕のママの病気、直せるの？」「やってみるけど、当てにしないでね。」', '“Bisakah dokter menyembuhkan penyakit ibuku?” "Aku akan mencobanya, tapi jangan mengandalkannya."') ON CONFLICT DO NOTHING;

INSERT INTO public.items (id, type, character, slug, level, rank_id, meaning_mnemonic, description) VALUES ('29abbfa5-6174-4dd2-9e65-3020e596c304', 'vocabulary', '〜病', '〜病', 2, 'b8c90d1e-2f3a-4b5c-6d7e-8f9a0b1c2d3e', 'Seperti yang mungkin bisa Anda bayangkan, ketika Anda menambahkan kanji sakit ke kata lain, Anda sedang mengatakan jenis penyakit apa itu; Anda menyebutkan penyakit apa itu.', 'Seperti yang mungkin bisa Anda bayangkan, ketika Anda menambahkan kanji sakit ke kata lain, Anda sedang mengatakan jenis penyakit apa itu; Anda menyebutkan penyakit apa itu.') ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, character = EXCLUDED.character, slug = EXCLUDED.slug, level = EXCLUDED.level, rank_id = EXCLUDED.rank_id, meaning_mnemonic = EXCLUDED.meaning_mnemonic, description = EXCLUDED.description;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('29abbfa5-6174-4dd2-9e65-3020e596c304', 'Penyakit', true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('29abbfa5-6174-4dd2-9e65-3020e596c304', 'Sickness', false) ON CONFLICT DO NOTHING;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('29abbfa5-6174-4dd2-9e65-3020e596c304', 'Illness', false) ON CONFLICT DO NOTHING;

INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES ('29abbfa5-6174-4dd2-9e65-3020e596c304', 'びょう', NULL, true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('29abbfa5-6174-4dd2-9e65-3020e596c304', 'メニエール病をわずらっているので、よくめまいが起きるんです。', 'Saya menderita penyakit Ménière sehingga sering pusing.') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('29abbfa5-6174-4dd2-9e65-3020e596c304', 'ぼくがワニカニレベル1から全ぜん進めないのはきっと外国語できない病にかかったからにちがいない。', 'Alasan aku belum bisa mencapai Level 1 di WaniKani pasti karena aku mengidap sindrom "tidak bisa belajar bahasa asing".') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('29abbfa5-6174-4dd2-9e65-3020e596c304', '彼の言ったことを大袈裟に考えないで。難病で苦しんでるなんて明らかに嘘なんだから。', 'Jangan mempermasalahkan apa yang dia katakan. Benar-benar bohong kalau dia menderita penyakit yang tidak bisa disembuhkan.') ON CONFLICT DO NOTHING;

INSERT INTO public.items (id, type, character, slug, level, rank_id, meaning_mnemonic, description) VALUES ('5b0641d3-03ca-4c0c-8595-ebae47eab200', 'vocabulary', '病人', '病人', 2, 'b8c90d1e-2f3a-4b5c-6d7e-8f9a0b1c2d3e', 'Orang yang sakit adalah orang yang sakit. Mereka juga seorang yang sabar, setidaknya kita bisa berharap demikian, demi mereka.', 'Orang yang sakit adalah orang yang sakit. Mereka juga seorang yang sabar, setidaknya kita bisa berharap demikian, demi mereka.') ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, character = EXCLUDED.character, slug = EXCLUDED.slug, level = EXCLUDED.level, rank_id = EXCLUDED.rank_id, meaning_mnemonic = EXCLUDED.meaning_mnemonic, description = EXCLUDED.description;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('5b0641d3-03ca-4c0c-8595-ebae47eab200', 'Orang Sakit', true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('5b0641d3-03ca-4c0c-8595-ebae47eab200', 'Patient', false) ON CONFLICT DO NOTHING;

INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES ('5b0641d3-03ca-4c0c-8595-ebae47eab200', 'びょうにん', NULL, true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('5b0641d3-03ca-4c0c-8595-ebae47eab200', 'うつったらいやだから、病人には近よりたくない。', 'Jika Anda tidak ingin tertular sesuatu, jangan mendekati orang sakit.') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('5b0641d3-03ca-4c0c-8595-ebae47eab200', 'うらないしに、前世は病人だったと言われました。', 'Peramal memberitahuku bahwa kehidupanku sebelumnya adalah sebagai orang sakit.') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('5b0641d3-03ca-4c0c-8595-ebae47eab200', '「調子はどうだい？」「絶好調だよ。」「それは良かった。病人からその言葉を聞けるとは思ってもみなかったがな。」', '"Bagaimana kabarmu?" "Tidak bisa lebih baik lagi." "Bagus. Tapi aku terkejut mendengarnya dari orang yang sakit."') ON CONFLICT DO NOTHING;

INSERT INTO public.items (id, type, character, slug, level, rank_id, meaning_mnemonic, description) VALUES ('4b016019-8a63-4f5a-ad49-c91e209a8860', 'vocabulary', '特別', '特別', 2, 'b8c90d1e-2f3a-4b5c-6d7e-8f9a0b1c2d3e', 'Sesuatu yang istimewa dan terpisah dari yang lain, ya, istimewa.', 'Sesuatu yang istimewa dan terpisah dari yang lain, ya, istimewa.') ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, character = EXCLUDED.character, slug = EXCLUDED.slug, level = EXCLUDED.level, rank_id = EXCLUDED.rank_id, meaning_mnemonic = EXCLUDED.meaning_mnemonic, description = EXCLUDED.description;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('4b016019-8a63-4f5a-ad49-c91e209a8860', 'Spesial', true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES ('4b016019-8a63-4f5a-ad49-c91e209a8860', 'とくべつ', NULL, true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('4b016019-8a63-4f5a-ad49-c91e209a8860', 'タランティーノの新作の、特別ゆう待けんをもらいました。', 'Saya mendapat kupon khusus untuk film Tarantino baru.') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('4b016019-8a63-4f5a-ad49-c91e209a8860', 'これがトーフグデザインの特別な車ですか。', 'Apakah ini mobil spesial rancangan Tofugu?') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('4b016019-8a63-4f5a-ad49-c91e209a8860', 'あの子って、特別かわいいわけではないのにモテるよね？', 'Meskipun dia tidak terlalu manis, dia sangat populer di kalangan laki-laki, ya?') ON CONFLICT DO NOTHING;

INSERT INTO public.items (id, type, character, slug, level, rank_id, meaning_mnemonic, description) VALUES ('5e6c9354-f9c6-4b6d-a660-e997ecad8010', 'vocabulary', '特に', '特に', 2, 'b8c90d1e-2f3a-4b5c-6d7e-8f9a0b1c2d3e', 'Ada sesuatu yang menuju (に) spesial. Benda itu sangat istimewa, bukan begitu?', 'Ada sesuatu yang menuju (に) spesial. Benda itu sangat istimewa, bukan begitu?') ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, character = EXCLUDED.character, slug = EXCLUDED.slug, level = EXCLUDED.level, rank_id = EXCLUDED.rank_id, meaning_mnemonic = EXCLUDED.meaning_mnemonic, description = EXCLUDED.description;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('5e6c9354-f9c6-4b6d-a660-e997ecad8010', 'Terutama', true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('5e6c9354-f9c6-4b6d-a660-e997ecad8010', 'Particularly', false) ON CONFLICT DO NOTHING;

INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES ('5e6c9354-f9c6-4b6d-a660-e997ecad8010', 'とくに', NULL, true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('5e6c9354-f9c6-4b6d-a660-e997ecad8010', '特に病院ではしずかにしなければいけません。', 'Anda harus diam, terutama di rumah sakit.') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('5e6c9354-f9c6-4b6d-a660-e997ecad8010', 'このメロンは特にかたいですね。まるでカボチャのようだ。', 'Melon ini sangat keras. Ini seperti labu.') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('5e6c9354-f9c6-4b6d-a660-e997ecad8010', '「お夕飯は何が食べたい？」「何でもいいよ。特にこだわりはないよ。」', '"Apa yang kamu inginkan untuk makan malam?" "Semuanya baik-baik saja. Aku tidak terlalu pilih-pilih."') ON CONFLICT DO NOTHING;

INSERT INTO public.items (id, type, character, slug, level, rank_id, meaning_mnemonic, description) VALUES ('322c7a94-871f-4f87-92cc-1aba6d3061a9', 'vocabulary', '勉強', '勉強', 2, 'b8c90d1e-2f3a-4b5c-6d7e-8f9a0b1c2d3e', 'Pengerahan tenaga Anda kuat. Anda mungkin berpikir ini berarti Anda bekerja keras atau semacamnya, tetapi itu berarti belajar (seperti belajar untuk ujian atau semacamnya). Jadi untuk ini, bayangkan saja diri Anda mengerahkan upaya yang sangat kuat untuk mengerjakan pekerjaan rumah Anda. Ini adalah studi Anda / apa yang Anda pelajari.', 'Pengerahan tenaga Anda kuat. Anda mungkin berpikir ini berarti Anda bekerja keras atau semacamnya, tetapi itu berarti belajar (seperti belajar untuk ujian atau semacamnya). Jadi untuk ini, bayangkan saja diri Anda mengerahkan upaya yang sangat kuat untuk mengerjakan pekerjaan rumah Anda. Ini adalah studi Anda / apa yang Anda pelajari.') ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, character = EXCLUDED.character, slug = EXCLUDED.slug, level = EXCLUDED.level, rank_id = EXCLUDED.rank_id, meaning_mnemonic = EXCLUDED.meaning_mnemonic, description = EXCLUDED.description;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('322c7a94-871f-4f87-92cc-1aba6d3061a9', 'Studi', true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('322c7a94-871f-4f87-92cc-1aba6d3061a9', 'Study', false) ON CONFLICT DO NOTHING;

INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES ('322c7a94-871f-4f87-92cc-1aba6d3061a9', 'べんきょう', NULL, true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('322c7a94-871f-4f87-92cc-1aba6d3061a9', 'ありがとうございます！勉強になります。', 'Terima kasih banyak. Saya telah belajar banyak dari Anda.') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('322c7a94-871f-4f87-92cc-1aba6d3061a9', '最近、だらけちゃってて、あんまりちゃんと勉強してないんだよね。', 'Aku malas dan jarang belajar akhir-akhir ini.') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('322c7a94-871f-4f87-92cc-1aba6d3061a9', '英語の勉強、頑張って下さいね。私も日本語をずっと勉強しているので苦労はよくわかります。', 'Pertahankan studi bahasa Inggris Anda. Saya juga selalu melatih bahasa Jepang saya, jadi saya tahu betapa sulitnya itu.') ON CONFLICT DO NOTHING;

INSERT INTO public.items (id, type, character, slug, level, rank_id, meaning_mnemonic, description) VALUES ('9988eb32-ad85-4f5c-9d25-976757a14e18', 'vocabulary', '旅', '旅', 2, 'b8c90d1e-2f3a-4b5c-6d7e-8f9a0b1c2d3e', 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.', 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.') ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, character = EXCLUDED.character, slug = EXCLUDED.slug, level = EXCLUDED.level, rank_id = EXCLUDED.rank_id, meaning_mnemonic = EXCLUDED.meaning_mnemonic, description = EXCLUDED.description;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('9988eb32-ad85-4f5c-9d25-976757a14e18', 'Perjalanan', true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('9988eb32-ad85-4f5c-9d25-976757a14e18', 'Travel', false) ON CONFLICT DO NOTHING;

INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES ('9988eb32-ad85-4f5c-9d25-976757a14e18', 'たび', NULL, true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('9988eb32-ad85-4f5c-9d25-976757a14e18', '世界中を旅するのがゆめです。', 'Impian saya adalah berkeliling dunia.') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('9988eb32-ad85-4f5c-9d25-976757a14e18', 'さいふとパスポートをぬすまれるは、ひ行きに乗りおくれるは、マジで最悪の旅だったよ。', 'Dompet dan paspor saya dicuri dan saya ketinggalan pesawat. Itu adalah perjalanan terburuk yang pernah ada.') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('9988eb32-ad85-4f5c-9d25-976757a14e18', '私はもうすっかり旅支度ができているよ。', 'Saya sudah bersiap untuk perjalanan kita.') ON CONFLICT DO NOTHING;

INSERT INTO public.items (id, type, character, slug, level, rank_id, meaning_mnemonic, description) VALUES ('b7844cd3-9d3e-45ab-8878-cda7b425eb87', 'vocabulary', '旅行', '旅行', 2, 'b8c90d1e-2f3a-4b5c-6d7e-8f9a0b1c2d3e', 'Saat Anda melakukan perjalanan, Anda sedang melakukan perjalanan. Ini adalah perjalanan. Anda harus mencoba melakukan ini sesekali! Mungkin perjalanan yang menyenangkan ke Jepang?', 'Saat Anda melakukan perjalanan, Anda sedang melakukan perjalanan. Ini adalah perjalanan. Anda harus mencoba melakukan ini sesekali! Mungkin perjalanan yang menyenangkan ke Jepang?') ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, character = EXCLUDED.character, slug = EXCLUDED.slug, level = EXCLUDED.level, rank_id = EXCLUDED.rank_id, meaning_mnemonic = EXCLUDED.meaning_mnemonic, description = EXCLUDED.description;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('b7844cd3-9d3e-45ab-8878-cda7b425eb87', 'Perjalanan', true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('b7844cd3-9d3e-45ab-8878-cda7b425eb87', 'Travel', false) ON CONFLICT DO NOTHING;

INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES ('b7844cd3-9d3e-45ab-8878-cda7b425eb87', 'りょこう', NULL, true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('b7844cd3-9d3e-45ab-8878-cda7b425eb87', '夏休みは、家族旅行でキューバに行く予定です。', 'Kami berencana pergi ke Kuba untuk perjalanan keluarga selama liburan musim panas.') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('b7844cd3-9d3e-45ab-8878-cda7b425eb87', '大学をそつ業する前に、東南アジアを旅行したいんだよね。', 'Saya ingin berkeliling Asia Tenggara sebelum lulus dari universitas.') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('b7844cd3-9d3e-45ab-8878-cda7b425eb87', '私の旅行の話を聞きたいのは分かるんだけど、それより、まずは私がいない間どうしてたのか教えてよ。', 'Saya tahu Anda ingin bertanya tentang perjalanan saya, tetapi pertama-tama, bagaimana kabar Anda selama saya pergi?') ON CONFLICT DO NOTHING;

INSERT INTO public.items (id, type, character, slug, level, rank_id, meaning_mnemonic, description) VALUES ('eedf6f4e-d83f-440a-b50e-a0ce8ec1693d', 'vocabulary', '店員', '店員', 2, 'b8c90d1e-2f3a-4b5c-6d7e-8f9a0b1c2d3e', 'Anggota toko adalah seseorang yang menjadi “anggota” (alias dipekerjakan oleh) toko. Ini adalah staf toko.', 'Anggota toko adalah seseorang yang menjadi “anggota” (alias dipekerjakan oleh) toko. Ini adalah staf toko.') ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, character = EXCLUDED.character, slug = EXCLUDED.slug, level = EXCLUDED.level, rank_id = EXCLUDED.rank_id, meaning_mnemonic = EXCLUDED.meaning_mnemonic, description = EXCLUDED.description;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('eedf6f4e-d83f-440a-b50e-a0ce8ec1693d', 'Staf Toko', true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('eedf6f4e-d83f-440a-b50e-a0ce8ec1693d', 'Store Staff', false) ON CONFLICT DO NOTHING;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('eedf6f4e-d83f-440a-b50e-a0ce8ec1693d', 'Store Employee', false) ON CONFLICT DO NOTHING;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('eedf6f4e-d83f-440a-b50e-a0ce8ec1693d', 'Shop Employee', false) ON CONFLICT DO NOTHING;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('eedf6f4e-d83f-440a-b50e-a0ce8ec1693d', 'Clerk', false) ON CONFLICT DO NOTHING;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('eedf6f4e-d83f-440a-b50e-a0ce8ec1693d', 'Shop Assistant', false) ON CONFLICT DO NOTHING;

INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES ('eedf6f4e-d83f-440a-b50e-a0ce8ec1693d', 'てんいん', NULL, true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('eedf6f4e-d83f-440a-b50e-a0ce8ec1693d', '昔、あの店員の弟に家庭教しのバイトで英語を教えていました。', 'Saya dulu mempunyai pekerjaan paruh waktu di mana saya mengajar bahasa Inggris kepada adik laki-laki pegawai itu.') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('eedf6f4e-d83f-440a-b50e-a0ce8ec1693d', 'あの店員さん、とってもお茶目だったね。', 'Pegawai toko itu benar-benar anak kecil, bukan?') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('eedf6f4e-d83f-440a-b50e-a0ce8ec1693d', 'えっと、レジの順番待ちの列に並んでいる時に、ある店員さんが「万引きです！捕まえて！」と叫ぶのが聞こえたので、彼を捕まえたんです。', 'Nah, ketika sedang berdiri di antrean kasir, saya mendengar salah satu penjual berteriak, "Pengutil! Tangkap dia!" jadi aku menangkapnya.') ON CONFLICT DO NOTHING;

INSERT INTO public.items (id, type, character, slug, level, rank_id, meaning_mnemonic, description) VALUES ('ab66f352-f448-4bd4-bec6-2c4401308a32', 'vocabulary', '社員', '社員', 2, 'b8c90d1e-2f3a-4b5c-6d7e-8f9a0b1c2d3e', 'Anggota perusahaan adalah karyawan dan staf.', 'Anggota perusahaan adalah karyawan dan staf.') ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, character = EXCLUDED.character, slug = EXCLUDED.slug, level = EXCLUDED.level, rank_id = EXCLUDED.rank_id, meaning_mnemonic = EXCLUDED.meaning_mnemonic, description = EXCLUDED.description;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('ab66f352-f448-4bd4-bec6-2c4401308a32', 'Karyawan', true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('ab66f352-f448-4bd4-bec6-2c4401308a32', 'Staff', false) ON CONFLICT DO NOTHING;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('ab66f352-f448-4bd4-bec6-2c4401308a32', 'Company Employee', false) ON CONFLICT DO NOTHING;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('ab66f352-f448-4bd4-bec6-2c4401308a32', 'Company Staff', false) ON CONFLICT DO NOTHING;

INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES ('ab66f352-f448-4bd4-bec6-2c4401308a32', 'しゃいん', NULL, true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('ab66f352-f448-4bd4-bec6-2c4401308a32', '全社員がコウイチと仲良くするためのイロハを心えている。', 'Semua staf tahu cara bergaul dengan Koichi.') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('ab66f352-f448-4bd4-bec6-2c4401308a32', 'れいの社員さんとは最近どうなの？仲直りはできた？', 'Bagaimana kabar karyawan itu akhir-akhir ini? Sudah bereskan semuanya?') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('ab66f352-f448-4bd4-bec6-2c4401308a32', 'この会社の社員は、全員奇抜で素晴らしい。', 'Karyawan di perusahaan ini semuanya aneh dan luar biasa.') ON CONFLICT DO NOTHING;

INSERT INTO public.items (id, type, character, slug, level, rank_id, meaning_mnemonic, description) VALUES ('9e02aec8-9340-4f2d-9c58-640f1c93ecc1', 'vocabulary', '会社員', '会社員', 2, 'b8c90d1e-2f3a-4b5c-6d7e-8f9a0b1c2d3e', 'Anggota "perusahaan" (会社) adalah seseorang yang bekerja di suatu perusahaan. Ini adalah karyawan perusahaan. Ada banyak hal seperti ini di Jepang. Kebanyakan dari mereka mabuk.', 'Anggota "perusahaan" (会社) adalah seseorang yang bekerja di suatu perusahaan. Ini adalah karyawan perusahaan. Ada banyak hal seperti ini di Jepang. Kebanyakan dari mereka mabuk.') ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, character = EXCLUDED.character, slug = EXCLUDED.slug, level = EXCLUDED.level, rank_id = EXCLUDED.rank_id, meaning_mnemonic = EXCLUDED.meaning_mnemonic, description = EXCLUDED.description;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('9e02aec8-9340-4f2d-9c58-640f1c93ecc1', 'Pegawai Perusahaan', true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('9e02aec8-9340-4f2d-9c58-640f1c93ecc1', 'Office Worker', false) ON CONFLICT DO NOTHING;

INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES ('9e02aec8-9340-4f2d-9c58-640f1c93ecc1', 'かいしゃいん', NULL, true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('9e02aec8-9340-4f2d-9c58-640f1c93ecc1', 'わたしの夫は、ごくふ通の会社員です。', 'Suami saya hanyalah seorang pekerja kantoran biasa.') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('9e02aec8-9340-4f2d-9c58-640f1c93ecc1', 'わたしたちはみんな、会社員である前に、一人の人間なんですよ。', 'Kita adalah manusia sebelum kita menjadi karyawan.') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('9e02aec8-9340-4f2d-9c58-640f1c93ecc1', 'あの会社員は麻薬所持で逮捕された。', 'Karyawan itu ditangkap karena kepemilikan narkoba.') ON CONFLICT DO NOTHING;

INSERT INTO public.items (id, type, character, slug, level, rank_id, meaning_mnemonic, description) VALUES ('a2068e37-69e9-4b57-8354-552ecb19970a', 'vocabulary', '動く', '動く', 2, 'b8c90d1e-2f3a-4b5c-6d7e-8f9a0b1c2d3e', 'Kata ini terdiri dari kanji dengan hiragana ditempelkan. Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanjinya sendiri artinya bergerak jadi versi vocab verbanya adalah bergerak.', 'Kata ini terdiri dari kanji dengan hiragana ditempelkan. Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanjinya sendiri artinya bergerak jadi versi vocab verbanya adalah bergerak.') ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, character = EXCLUDED.character, slug = EXCLUDED.slug, level = EXCLUDED.level, rank_id = EXCLUDED.rank_id, meaning_mnemonic = EXCLUDED.meaning_mnemonic, description = EXCLUDED.description;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('a2068e37-69e9-4b57-8354-552ecb19970a', 'Untuk Memindahkan', true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('a2068e37-69e9-4b57-8354-552ecb19970a', 'To Operate', false) ON CONFLICT DO NOTHING;

INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES ('a2068e37-69e9-4b57-8354-552ecb19970a', 'うごく', NULL, true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('a2068e37-69e9-4b57-8354-552ecb19970a', 'あそこで何か動いたよ。', 'Sesuatu berpindah ke sana.') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('a2068e37-69e9-4b57-8354-552ecb19970a', 'トーフグのサーバーは二十四時間動いているので、いつでもアクセスできますよ。', 'Server Tofugu beroperasi dua puluh empat jam sehari, sehingga selalu dapat diakses.') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('a2068e37-69e9-4b57-8354-552ecb19970a', 'くそ〜。パソコンが動かなくなっちゃったぜ。どうしてこうなったんだろう？！', 'Menembak! Komputer saya tidak berfungsi. Bagaimana ini bisa terjadi?!') ON CONFLICT DO NOTHING;

INSERT INTO public.items (id, type, character, slug, level, rank_id, meaning_mnemonic, description) VALUES ('0b2488bf-2941-4b16-b3ed-eb3b9bf97058', 'vocabulary', '動物', '動物', 2, 'b8c90d1e-2f3a-4b5c-6d7e-8f9a0b1c2d3e', 'Sesuatu yang bergerak... pikirkan tentang "benda" yang bergerak. Secara teknis bisa berupa banyak hal (alias apa saja pada dasarnya), namun dalam hal ini yang kita bicarakan adalah makhluk hidup yang bergerak. Kami tidak akan memasukkan manusia, karena manusia terlalu baik untuk disebut benda. Ini merujuk pada hewan saja.', 'Sesuatu yang bergerak... pikirkan tentang "benda" yang bergerak. Secara teknis bisa berupa banyak hal (alias apa saja pada dasarnya), namun dalam hal ini yang kita bicarakan adalah makhluk hidup yang bergerak. Kami tidak akan memasukkan manusia, karena manusia terlalu baik untuk disebut benda. Ini merujuk pada hewan saja.') ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, character = EXCLUDED.character, slug = EXCLUDED.slug, level = EXCLUDED.level, rank_id = EXCLUDED.rank_id, meaning_mnemonic = EXCLUDED.meaning_mnemonic, description = EXCLUDED.description;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('0b2488bf-2941-4b16-b3ed-eb3b9bf97058', 'Hewan', true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES ('0b2488bf-2941-4b16-b3ed-eb3b9bf97058', 'どうぶつ', NULL, true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('0b2488bf-2941-4b16-b3ed-eb3b9bf97058', '動物は苦手なんです。', 'Saya tidak suka binatang.') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('0b2488bf-2941-4b16-b3ed-eb3b9bf97058', '何か動物はかっていますか。', 'Apakah kamu punya binatang?') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('0b2488bf-2941-4b16-b3ed-eb3b9bf97058', 'コウイチがトーフグ動物園に100匹の重要な動物を集めてパーティーを開催したんだけど、何故か私は招待されなかったんだよね。私もコウイチにとっての重要動物の一匹だと思っていたんだけど。', 'Koichi mengadakan pesta di Kebun Binatang Tofugu untuk seratus hewan yang sangat penting dan karena alasan tertentu, saya tidak diundang. Aku pikir aku adalah salah satu dari VIA baginya juga.') ON CONFLICT DO NOTHING;

INSERT INTO public.items (id, type, character, slug, level, rank_id, meaning_mnemonic, description) VALUES ('ab60e133-2a36-4b83-b1ae-caa96101a22b', 'vocabulary', '悪い', '悪い', 2, 'b8c90d1e-2f3a-4b5c-6d7e-8f9a0b1c2d3e', 'Ini adalah kanji tunggal dengan い di akhir, artinya Anda tahu itu mungkin kata sifat. Apa bentuk kata sifat buruk? Itu juga buruk.', 'Ini adalah kanji tunggal dengan い di akhir, artinya Anda tahu itu mungkin kata sifat. Apa bentuk kata sifat buruk? Itu juga buruk.') ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, character = EXCLUDED.character, slug = EXCLUDED.slug, level = EXCLUDED.level, rank_id = EXCLUDED.rank_id, meaning_mnemonic = EXCLUDED.meaning_mnemonic, description = EXCLUDED.description;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('ab60e133-2a36-4b83-b1ae-caa96101a22b', 'Buruk', true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('ab60e133-2a36-4b83-b1ae-caa96101a22b', 'Poor', false) ON CONFLICT DO NOTHING;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('ab60e133-2a36-4b83-b1ae-caa96101a22b', 'Wrong', false) ON CONFLICT DO NOTHING;

INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES ('ab60e133-2a36-4b83-b1ae-caa96101a22b', 'わるい', NULL, true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('ab60e133-2a36-4b83-b1ae-caa96101a22b', 'この食べ放だいのすし屋のせっ客は、しんじられないほど悪い。', 'Layanan pelanggan restoran sushi makan sepuasnya ini luar biasa buruk.') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('ab60e133-2a36-4b83-b1ae-caa96101a22b', '悪いけど、この野さいちょっと蒸しといてくれない？', 'Maaf mengganggumu, tapi bisakah kamu mengukus sayuran ini untukku?') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('ab60e133-2a36-4b83-b1ae-caa96101a22b', '牛乳は悪くなっていたけど、俺は気にしなかった。', 'Susunya jadi busuk, tapi aku tidak peduli.') ON CONFLICT DO NOTHING;

INSERT INTO public.items (id, type, character, slug, level, rank_id, meaning_mnemonic, description) VALUES ('88f8dcbf-a09e-41d4-b351-227b525249d5', 'vocabulary', '悪人', '悪人', 2, 'b8c90d1e-2f3a-4b5c-6d7e-8f9a0b1c2d3e', 'Orang jahat adalah orang jahat.', 'Orang jahat adalah orang jahat.') ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, character = EXCLUDED.character, slug = EXCLUDED.slug, level = EXCLUDED.level, rank_id = EXCLUDED.rank_id, meaning_mnemonic = EXCLUDED.meaning_mnemonic, description = EXCLUDED.description;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('88f8dcbf-a09e-41d4-b351-227b525249d5', 'Orang Jahat', true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('88f8dcbf-a09e-41d4-b351-227b525249d5', 'Villain', false) ON CONFLICT DO NOTHING;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('88f8dcbf-a09e-41d4-b351-227b525249d5', 'Evildoer', false) ON CONFLICT DO NOTHING;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('88f8dcbf-a09e-41d4-b351-227b525249d5', 'Bad Guy', false) ON CONFLICT DO NOTHING;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('88f8dcbf-a09e-41d4-b351-227b525249d5', 'Wicked Person', false) ON CONFLICT DO NOTHING;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('88f8dcbf-a09e-41d4-b351-227b525249d5', 'Evil Person', false) ON CONFLICT DO NOTHING;

INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES ('88f8dcbf-a09e-41d4-b351-227b525249d5', 'あくにん', NULL, true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('88f8dcbf-a09e-41d4-b351-227b525249d5', 'あいつは悪人だが、ガーデニングがしゅ味なんだ。', 'Dia penjahat, tapi hobinya berkebun.') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('88f8dcbf-a09e-41d4-b351-227b525249d5', 'コウイチは悪人をえんじているだけだよ。', 'Koichi hanya berperan sebagai penjahat.') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('88f8dcbf-a09e-41d4-b351-227b525249d5', 'お前、本当に善人と悪人を区別することが可能だと思っているのか？', 'Apakah menurut Anda kita bisa membedakan antara orang baik dan orang jahat?') ON CONFLICT DO NOTHING;

INSERT INTO public.items (id, type, character, slug, level, rank_id, meaning_mnemonic, description) VALUES ('d4c7a2df-2ace-4b9d-bedf-cf1a28c243f6', 'vocabulary', '悪女', '悪女-3359', 2, 'b8c90d1e-2f3a-4b5c-6d7e-8f9a0b1c2d3e', 'Wanita jahat adalah wanita jahat. Anehnya, "ibu mertua" bukanlah salah satu arti dari kata ini.', 'Wanita jahat adalah wanita jahat. Anehnya, "ibu mertua" bukanlah salah satu arti dari kata ini.') ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, character = EXCLUDED.character, slug = EXCLUDED.slug, level = EXCLUDED.level, rank_id = EXCLUDED.rank_id, meaning_mnemonic = EXCLUDED.meaning_mnemonic, description = EXCLUDED.description;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('d4c7a2df-2ace-4b9d-bedf-cf1a28c243f6', 'Wanita Jahat', true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('d4c7a2df-2ace-4b9d-bedf-cf1a28c243f6', 'Wicked Woman', false) ON CONFLICT DO NOTHING;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('d4c7a2df-2ace-4b9d-bedf-cf1a28c243f6', 'Bad Woman', false) ON CONFLICT DO NOTHING;

INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES ('d4c7a2df-2ace-4b9d-bedf-cf1a28c243f6', 'あくじょ', NULL, true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('d4c7a2df-2ace-4b9d-bedf-cf1a28c243f6', 'あの悪女、耳だけはいいんだよな。', 'Wanita jalang itu memang punya telinga yang bagus!') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('d4c7a2df-2ace-4b9d-bedf-cf1a28c243f6', 'かの女は悪女だが、いつも時間はきっちり守る。', 'Dia wanita yang jahat, tapi selalu tepat waktu.') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('d4c7a2df-2ace-4b9d-bedf-cf1a28c243f6', 'その悪女は息をのむほど美しかった。僕は彼女に夢中だった。', 'Wanita jahat itu membuat saya terengah-engah. Aku tergila-gila padanya.') ON CONFLICT DO NOTHING;

INSERT INTO public.items (id, type, character, slug, level, rank_id, meaning_mnemonic, description) VALUES ('04a35114-63d8-498c-a082-2b1163b6060e', 'vocabulary', '家族', '家族', 2, 'b8c90d1e-2f3a-4b5c-6d7e-8f9a0b1c2d3e', 'Suku rumah Anda adalah keluarga Anda. Mereka tinggal serumah dengan Anda dan mereka adalah bagian dari "suku" Anda. Namun ini lebih dekat daripada keluarga (tergantung bagaimana Anda memandang keluarga). Ini adalah keluarga dekatmu karena ini adalah orang yang tinggal bersama dan melahirkanmu, dll.', 'Suku rumah Anda adalah keluarga Anda. Mereka tinggal serumah dengan Anda dan mereka adalah bagian dari "suku" Anda. Namun ini lebih dekat daripada keluarga (tergantung bagaimana Anda memandang keluarga). Ini adalah keluarga dekatmu karena ini adalah orang yang tinggal bersama dan melahirkanmu, dll.') ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, character = EXCLUDED.character, slug = EXCLUDED.slug, level = EXCLUDED.level, rank_id = EXCLUDED.rank_id, meaning_mnemonic = EXCLUDED.meaning_mnemonic, description = EXCLUDED.description;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('04a35114-63d8-498c-a082-2b1163b6060e', 'Keluarga', true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('04a35114-63d8-498c-a082-2b1163b6060e', 'Immediate Family', false) ON CONFLICT DO NOTHING;

INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES ('04a35114-63d8-498c-a082-2b1163b6060e', 'かぞく', NULL, true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('04a35114-63d8-498c-a082-2b1163b6060e', 'わたしの家族は、庭でキュウリやトマト、ズッキーニなどたくさんの野さいを育てています。', 'Keluarga saya menanam banyak sayuran di kebun kami, seperti mentimun, tomat, dan zucchini.') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('04a35114-63d8-498c-a082-2b1163b6060e', '家族がなくなった場合、そのじゅう業いんは死亡発生日の次の出きん日から三日間けいちょう休かを取得できます。', 'Apabila salah satu anggota keluarga dekat pekerja meninggal dunia, pekerja tersebut berhak cuti pada hari kerja normal apa pun yang jatuh dalam jangka waktu tiga hari segera setelah hari terjadinya kematian.') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('04a35114-63d8-498c-a082-2b1163b6060e', '今度、俺の日本への家族旅行のことを君に話したいな。', 'Saya ingin bercerita tentang liburan keluarga saya di Jepang suatu saat nanti.') ON CONFLICT DO NOTHING;

INSERT INTO public.items (id, type, character, slug, level, rank_id, meaning_mnemonic, description) VALUES ('cac83056-9aca-4501-914d-9131aea9b116', 'vocabulary', '通り', '通り', 2, 'b8c90d1e-2f3a-4b5c-6d7e-8f9a0b1c2d3e', 'Anda sudah tahu kata 通る semoga sekarang. Itu adalah versi kata kerja dari kata ini, yang berarti “melewati”. Jadi, jika ini versi kata bendanya, apa yang Anda gunakan untuk melewati sesuatu? Untuk mengemudi atau berjalan bersama? Itu akan menjadi jalan raya (atau jalan raya, jalan raya, dll). Ini adalah kata yang cukup umum di Jepang, dan bagus agar tidak tersesat.', 'Anda sudah tahu kata 通る semoga sekarang. Itu adalah versi kata kerja dari kata ini, yang berarti “melewati”. Jadi, jika ini versi kata bendanya, apa yang Anda gunakan untuk melewati sesuatu? Untuk mengemudi atau berjalan bersama? Itu akan menjadi jalan raya (atau jalan raya, jalan raya, dll). Ini adalah kata yang cukup umum di Jepang, dan bagus agar tidak tersesat.') ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, character = EXCLUDED.character, slug = EXCLUDED.slug, level = EXCLUDED.level, rank_id = EXCLUDED.rank_id, meaning_mnemonic = EXCLUDED.meaning_mnemonic, description = EXCLUDED.description;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('cac83056-9aca-4501-914d-9131aea9b116', 'Jalan', true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('cac83056-9aca-4501-914d-9131aea9b116', 'Street', false) ON CONFLICT DO NOTHING;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('cac83056-9aca-4501-914d-9131aea9b116', 'Road', false) ON CONFLICT DO NOTHING;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('cac83056-9aca-4501-914d-9131aea9b116', 'Way', false) ON CONFLICT DO NOTHING;

INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES ('cac83056-9aca-4501-914d-9131aea9b116', 'とおり', NULL, true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('cac83056-9aca-4501-914d-9131aea9b116', 'この通りをまっすぐに行って、三つ目のしん号を左に曲がってください。', 'Silakan lurus di jalan ini dan belok kiri di lampu ketiga.') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('cac83056-9aca-4501-914d-9131aea9b116', 'この通りでは、一日中車が行き交っています。', 'Jalan ini sibuk sepanjang hari.') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('cac83056-9aca-4501-914d-9131aea9b116', 'チーズベーコンバーガー通りには、ガソリンスタンドってあったっけ？', 'Apakah ada pompa bensin di Bacon Cheeseburger Avenue?') ON CONFLICT DO NOTHING;

INSERT INTO public.items (id, type, character, slug, level, rank_id, meaning_mnemonic, description) VALUES ('ab3f895c-c525-4700-b394-3e494013a276', 'vocabulary', '白黒', '白黒', 2, 'b8c90d1e-2f3a-4b5c-6d7e-8f9a0b1c2d3e', 'Sesuatu berwarna putih dan hitam. Warnanya hitam dan putih (Anda juga bisa mengatakan putih dan hitam jika Anda mau).', 'Sesuatu berwarna putih dan hitam. Warnanya hitam dan putih (Anda juga bisa mengatakan putih dan hitam jika Anda mau).') ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, character = EXCLUDED.character, slug = EXCLUDED.slug, level = EXCLUDED.level, rank_id = EXCLUDED.rank_id, meaning_mnemonic = EXCLUDED.meaning_mnemonic, description = EXCLUDED.description;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('ab3f895c-c525-4700-b394-3e494013a276', 'Hitam Putih', true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('ab3f895c-c525-4700-b394-3e494013a276', 'White And Black', false) ON CONFLICT DO NOTHING;

INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES ('ab3f895c-c525-4700-b394-3e494013a276', 'しろくろ', NULL, true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('ab3f895c-c525-4700-b394-3e494013a276', '白黒ハッキリさせようぜ。', 'Mari kita buat dengan jelas menjadi hitam dan putih.') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('ab3f895c-c525-4700-b394-3e494013a276', 'この白黒の写しん、すてきですね。', 'Foto hitam putih ini sangat indah.') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('ab3f895c-c525-4700-b394-3e494013a276', 'カナエちゃんがいつもオシャレな服装をしているってことは認めるけどさ、今日の白黒のドレスはちょっとなんかパンダみたいじゃない？', 'Saya setuju bahwa Kanae selalu memakai pakaian yang sangat cantik, tapi hari ini gaun hitam putih itu membuatnya terlihat seperti panda, bukan?') ON CONFLICT DO NOTHING;

INSERT INTO public.items (id, type, character, slug, level, rank_id, meaning_mnemonic, description) VALUES ('fe807ca2-9abb-4114-9183-54599a2367d0', 'vocabulary', '転ぶ', '転ぶ', 2, 'b8c90d1e-2f3a-4b5c-6d7e-8f9a0b1c2d3e', 'Apakah Anda ingat kata 転がる? Ini mirip, bukannya menggelinding, ini lebih pada saat sesuatu jatuh dan menyentuh tanah. Artinya terjatuh atau terjatuh. Bayangkan saja seseorang jatuh dari kursi terlebih dahulu ke tanah dan mengeluarkan suara ぶ.', 'Apakah Anda ingat kata 転がる? Ini mirip, bukannya menggelinding, ini lebih pada saat sesuatu jatuh dan menyentuh tanah. Artinya terjatuh atau terjatuh. Bayangkan saja seseorang jatuh dari kursi terlebih dahulu ke tanah dan mengeluarkan suara ぶ.') ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, character = EXCLUDED.character, slug = EXCLUDED.slug, level = EXCLUDED.level, rank_id = EXCLUDED.rank_id, meaning_mnemonic = EXCLUDED.meaning_mnemonic, description = EXCLUDED.description;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('fe807ca2-9abb-4114-9183-54599a2367d0', 'Jatuh', true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('fe807ca2-9abb-4114-9183-54599a2367d0', 'To Fall Down', false) ON CONFLICT DO NOTHING;

INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES ('fe807ca2-9abb-4114-9183-54599a2367d0', 'ころぶ', NULL, true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('fe807ca2-9abb-4114-9183-54599a2367d0', 'サヨナラホームランを打った後であのせん手が転んだのはおも白かったね。', 'Lucu sekali bahwa pemain tersebut terjatuh setelah melakukan home run yang mengakhiri pertandingan.') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('fe807ca2-9abb-4114-9183-54599a2367d0', '今日のコウイチは、久しぶりに転んでもなかなかった。', 'Hari ini, Koichi tidak menangis meski dia terjatuh untuk pertama kalinya setelah sekian lama.') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('fe807ca2-9abb-4114-9183-54599a2367d0', 'コウイチはもう少しで地面に転ぶところだったが、スーパーマンのコスプレをしたビエトに助けられた。', 'Koichi hampir terjatuh ke tanah namun ia diselamatkan oleh Viet yang mengenakan kostum Superman.') ON CONFLICT DO NOTHING;

INSERT INTO public.items (id, type, character, slug, level, rank_id, meaning_mnemonic, description) VALUES ('cd2dcd65-c11e-4a72-82a0-b0f57d30eb82', 'vocabulary', '終わり', '終わり', 2, 'b8c90d1e-2f3a-4b5c-6d7e-8f9a0b1c2d3e', 'Sekarang Anda seharusnya sudah tahu bahwa 終わる berarti "mengakhiri" atau "menyelesaikan". Jadi apa versi kata benda dari kata itu? Ini akan menjadi akhir atau akhir.', 'Sekarang Anda seharusnya sudah tahu bahwa 終わる berarti "mengakhiri" atau "menyelesaikan". Jadi apa versi kata benda dari kata itu? Ini akan menjadi akhir atau akhir.') ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, character = EXCLUDED.character, slug = EXCLUDED.slug, level = EXCLUDED.level, rank_id = EXCLUDED.rank_id, meaning_mnemonic = EXCLUDED.meaning_mnemonic, description = EXCLUDED.description;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('cd2dcd65-c11e-4a72-82a0-b0f57d30eb82', 'Akhir', true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('cd2dcd65-c11e-4a72-82a0-b0f57d30eb82', 'End', false) ON CONFLICT DO NOTHING;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('cd2dcd65-c11e-4a72-82a0-b0f57d30eb82', 'The Finish', false) ON CONFLICT DO NOTHING;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('cd2dcd65-c11e-4a72-82a0-b0f57d30eb82', 'Finish', false) ON CONFLICT DO NOTHING;

INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES ('cd2dcd65-c11e-4a72-82a0-b0f57d30eb82', 'おわり', NULL, true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('cd2dcd65-c11e-4a72-82a0-b0f57d30eb82', 'これで終わりだ。', 'Inilah akhirnya.') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('cd2dcd65-c11e-4a72-82a0-b0f57d30eb82', '終わり良ければ全て良し、でしょ？', 'Semuanya baik-baik saja, itu berakhir dengan baik, bukan?') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('cd2dcd65-c11e-4a72-82a0-b0f57d30eb82', '今週で仕事も終わりで、来週からはクリスマス休暇だー！あー、待ちきれない。', 'Pekerjaan berakhir minggu ini dan liburan Natal dimulai minggu depan! Ah aku tidak sabar untuk itu.') ON CONFLICT DO NOTHING;

INSERT INTO public.items (id, type, character, slug, level, rank_id, meaning_mnemonic, description) VALUES ('fe5971e8-a9f4-4fa9-9389-bcd0b9c533b1', 'vocabulary', '終電', '終電', 2, 'b8c90d1e-2f3a-4b5c-6d7e-8f9a0b1c2d3e', 'Kita telah melihat beberapa kali di mana 電 mengacu pada kereta api. Bagaimanapun, ini adalah masalah besar dan menggunakan banyak listrik. Jadi, kereta terakhir untuk kata ini mengacu pada kereta terakhir.', 'Kita telah melihat beberapa kali di mana 電 mengacu pada kereta api. Bagaimanapun, ini adalah masalah besar dan menggunakan banyak listrik. Jadi, kereta terakhir untuk kata ini mengacu pada kereta terakhir.') ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, character = EXCLUDED.character, slug = EXCLUDED.slug, level = EXCLUDED.level, rank_id = EXCLUDED.rank_id, meaning_mnemonic = EXCLUDED.meaning_mnemonic, description = EXCLUDED.description;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('fe5971e8-a9f4-4fa9-9389-bcd0b9c533b1', 'Kereta Terakhir', true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('fe5971e8-a9f4-4fa9-9389-bcd0b9c533b1', 'The Last Train', false) ON CONFLICT DO NOTHING;

INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES ('fe5971e8-a9f4-4fa9-9389-bcd0b9c533b1', 'しゅうでん', NULL, true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('fe5971e8-a9f4-4fa9-9389-bcd0b9c533b1', '終電、何時だっけ？', 'Jam berapa kereta terakhir?') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('fe5971e8-a9f4-4fa9-9389-bcd0b9c533b1', 'もうすぐ終電だから、そろそろかえらなきゃ。', 'Aku harus pergi karena sudah hampir waktunya kereta terakhir.') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('fe5971e8-a9f4-4fa9-9389-bcd0b9c533b1', '「もし終電に乗り遅れたら、いつでも電話してくれていいよ。」「有難う。覚えておくよ。」', '"Jika kamu ketinggalan kereta terakhir, kamu selalu bisa meneleponku." "Terima kasih, aku akan mengingatnya."') ON CONFLICT DO NOTHING;

INSERT INTO public.items (id, type, character, slug, level, rank_id, meaning_mnemonic, description) VALUES ('d633b0dc-26c2-4ec9-8203-1e4a04e019ff', 'vocabulary', '起こる', '起こる', 2, 'b8c90d1e-2f3a-4b5c-6d7e-8f9a0b1c2d3e', 'Anda tahu bahwa 起きる berarti "bangun", tetapi apakah Anda mempelajari arti sekundernya, "terjadi"? Nah, kata ini artinya hanya terjadi. Bayangkan saja sebuah insiden terjadi yang melibatkan inti uranium (こる) untuk mengingat bahwa hal ini berarti akan terjadi. Lagi pula, insiden inti uranium tidak akan terjadi, bukan?', 'Anda tahu bahwa 起きる berarti "bangun", tetapi apakah Anda mempelajari arti sekundernya, "terjadi"? Nah, kata ini artinya hanya terjadi. Bayangkan saja sebuah insiden terjadi yang melibatkan inti uranium (こる) untuk mengingat bahwa hal ini berarti akan terjadi. Lagi pula, insiden inti uranium tidak akan terjadi, bukan?') ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, character = EXCLUDED.character, slug = EXCLUDED.slug, level = EXCLUDED.level, rank_id = EXCLUDED.rank_id, meaning_mnemonic = EXCLUDED.meaning_mnemonic, description = EXCLUDED.description;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('d633b0dc-26c2-4ec9-8203-1e4a04e019ff', 'Terjadi', true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('d633b0dc-26c2-4ec9-8203-1e4a04e019ff', 'To Happen', false) ON CONFLICT DO NOTHING;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('d633b0dc-26c2-4ec9-8203-1e4a04e019ff', 'To Take Place', false) ON CONFLICT DO NOTHING;

INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES ('d633b0dc-26c2-4ec9-8203-1e4a04e019ff', 'おこる', NULL, true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('d633b0dc-26c2-4ec9-8203-1e4a04e019ff', 'まさかこんなことが起こるなんて、思ってもみなかったよ。', 'Saya tidak pernah menyangka hal seperti ini akan terjadi.') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('d633b0dc-26c2-4ec9-8203-1e4a04e019ff', '今起こったことについて、落ち着いてよく考えてみてください。', 'Harap tenang dan pikirkan baik-baik apa yang terjadi.') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('d633b0dc-26c2-4ec9-8203-1e4a04e019ff', '「ねぇ、僕にキスしたい？」「ありえない。100万年経ってもあんたとキスなんて絶対にしたくないから。天地がひっくり返っても、起こりっこないよ。」', '"Hei, apakah kamu ingin menciumku?" "Sama sekali tidak mungkin aku ingin menciummu dalam sejuta tahun lagi. Itu tidak akan pernah terjadi bahkan jika langit dan bumi terbalik."') ON CONFLICT DO NOTHING;

INSERT INTO public.items (id, type, character, slug, level, rank_id, meaning_mnemonic, description) VALUES ('61fe314f-cf5f-4c81-b179-f5105a51d698', 'vocabulary', '料金', '料金', 2, 'b8c90d1e-2f3a-4b5c-6d7e-8f9a0b1c2d3e', 'Biaya emas (atau uang, jika Anda mau) yang harus Anda bayarkan adalah biaya dan tagihan Anda.', 'Biaya emas (atau uang, jika Anda mau) yang harus Anda bayarkan adalah biaya dan tagihan Anda.') ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, character = EXCLUDED.character, slug = EXCLUDED.slug, level = EXCLUDED.level, rank_id = EXCLUDED.rank_id, meaning_mnemonic = EXCLUDED.meaning_mnemonic, description = EXCLUDED.description;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('61fe314f-cf5f-4c81-b179-f5105a51d698', 'Biaya', true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('61fe314f-cf5f-4c81-b179-f5105a51d698', 'Bills', false) ON CONFLICT DO NOTHING;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('61fe314f-cf5f-4c81-b179-f5105a51d698', 'Fees', false) ON CONFLICT DO NOTHING;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('61fe314f-cf5f-4c81-b179-f5105a51d698', 'Bill', false) ON CONFLICT DO NOTHING;

INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES ('61fe314f-cf5f-4c81-b179-f5105a51d698', 'りょうきん', NULL, true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('61fe314f-cf5f-4c81-b179-f5105a51d698', '日本はガスの料金は高いですか。', 'Apakah tagihan bahan bakar mahal di Jepang?') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('61fe314f-cf5f-4c81-b179-f5105a51d698', 'けいたい電話の料金プランがふくざつすぎて分かりません。分かりやすくせつ明してくれませんか。', 'Terlalu sulit untuk memahami rencana biaya layanan telepon seluler. Bisakah Anda menjelaskannya dengan jelas dan mudah dimengerti?') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('61fe314f-cf5f-4c81-b179-f5105a51d698', '「申し訳ありませんが、この料金が精一杯です。」「うーん。まぁ、妥当な値段のようですね。分かりました。これで手を打ちましょう。」', '“Saya khawatir harga ini adalah yang terbaik yang bisa kami tawarkan.” “Yah, kedengarannya adil. Oke, mari kita selesaikan kesepakatannya.”') ON CONFLICT DO NOTHING;

INSERT INTO public.items (id, type, character, slug, level, rank_id, meaning_mnemonic, description) VALUES ('8b6e3edf-0a04-42d5-b259-4f5e35dabc82', 'vocabulary', '悪気', '悪気', 2, 'b8c90d1e-2f3a-4b5c-6d7e-8f9a0b1c2d3e', 'Seseorang dengan energi buruk adalah seseorang yang memiliki niat jahat, niat jahat, atau niat buruk. Semoga Anda tidak memiliki terlalu banyak 悪気.', 'Seseorang dengan energi buruk adalah seseorang yang memiliki niat jahat, niat jahat, atau niat buruk. Semoga Anda tidak memiliki terlalu banyak 悪気.') ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, character = EXCLUDED.character, slug = EXCLUDED.slug, level = EXCLUDED.level, rank_id = EXCLUDED.rank_id, meaning_mnemonic = EXCLUDED.meaning_mnemonic, description = EXCLUDED.description;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('8b6e3edf-0a04-42d5-b259-4f5e35dabc82', 'Niat Jahat', true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('8b6e3edf-0a04-42d5-b259-4f5e35dabc82', 'Malice', false) ON CONFLICT DO NOTHING;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('8b6e3edf-0a04-42d5-b259-4f5e35dabc82', 'Ill Will', false) ON CONFLICT DO NOTHING;

INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES ('8b6e3edf-0a04-42d5-b259-4f5e35dabc82', 'わるぎ', NULL, true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('8b6e3edf-0a04-42d5-b259-4f5e35dabc82', '悪気がないのは知ってるけど、そういうことを言われるとこっちもきずつくんだよ？', 'Aku tahu kamu tidak punya niat jahat, tapi tolong mengerti bahwa kami bisa terluka jika kamu mengatakan hal seperti itu.') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('8b6e3edf-0a04-42d5-b259-4f5e35dabc82', '悪気があってしたわけじゃないんですが、けっかてきにそういう風に感じさせてしまう事になって本当にごめんなさい。', 'Aku tidak melakukannya karena kedengkian, tapi aku benar-benar minta maaf telah membuatmu merasa seperti itu.') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('8b6e3edf-0a04-42d5-b259-4f5e35dabc82', 'ところで、そもそも、何の経験もなくて、どうやってその職を得たの？あ、悪気は無いよ。', 'Ngomong-ngomong, bagaimana Anda bisa mendapatkan pekerjaan itu tanpa pengalaman apa pun? Jangan tersinggung, tentu saja.') ON CONFLICT DO NOTHING;

INSERT INTO public.items (id, type, character, slug, level, rank_id, meaning_mnemonic, description) VALUES ('fb44c440-304d-4b88-825f-19c724d37c86', 'vocabulary', '心理', '心理', 2, 'b8c90d1e-2f3a-4b5c-6d7e-8f9a0b1c2d3e', 'Alasan hati Anda menentukan apa yang Anda lakukan. Mungkin saat kanji dibuat, orang mengira hatilah yang menentukan tindakan kita, bukan otak kita. Jadi, jika Anda memikirkannya seperti itu, alasan hati Anda adalah kondisi mental Anda. Saat ini hal itu dikenal sebagai psikologi.', 'Alasan hati Anda menentukan apa yang Anda lakukan. Mungkin saat kanji dibuat, orang mengira hatilah yang menentukan tindakan kita, bukan otak kita. Jadi, jika Anda memikirkannya seperti itu, alasan hati Anda adalah kondisi mental Anda. Saat ini hal itu dikenal sebagai psikologi.') ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, character = EXCLUDED.character, slug = EXCLUDED.slug, level = EXCLUDED.level, rank_id = EXCLUDED.rank_id, meaning_mnemonic = EXCLUDED.meaning_mnemonic, description = EXCLUDED.description;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('fb44c440-304d-4b88-825f-19c724d37c86', 'Keadaan Mental', true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('fb44c440-304d-4b88-825f-19c724d37c86', 'Psychology', false) ON CONFLICT DO NOTHING;

INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES ('fb44c440-304d-4b88-825f-19c724d37c86', 'しんり', NULL, true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('fb44c440-304d-4b88-825f-19c724d37c86', 'ねこの心理を思うがままにあやつれるようになりたい。', 'Saya ingin bisa memanipulasi pikiran kucing sebanyak yang saya mau.') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('fb44c440-304d-4b88-825f-19c724d37c86', '春人には、理子の心理が分からなかった。', 'Haruto tidak mengerti apa yang dipikirkan Riko.') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('fb44c440-304d-4b88-825f-19c724d37c86', 'サーモンと彼女に翻弄される人々の心理を、君の小説で描いてみてもらえないかな？人気が出ると思うんだけど。', 'Bisakah Anda menggambarkan kondisi mental Salmon dan orang-orang yang ditipunya dalam novel Anda? Saya pikir orang-orang akan menyukainya.') ON CONFLICT DO NOTHING;

INSERT INTO public.items (id, type, character, slug, level, rank_id, meaning_mnemonic, description) VALUES ('0abe5d43-e10e-45fe-80e7-fff741198e80', 'vocabulary', '料理', '料理', 2, 'b8c90d1e-2f3a-4b5c-6d7e-8f9a0b1c2d3e', 'Ada alasan mengapa biaya ini harus Anda bayarkan untuk masuk ke sini. Kami memasak masakan untuk Anda makan sambil menonton pertunjukan. Jika kami tidak memasak hidangan untuk Anda, kami mungkin tidak akan membebankan biaya ini kepada Anda!', 'Ada alasan mengapa biaya ini harus Anda bayarkan untuk masuk ke sini. Kami memasak masakan untuk Anda makan sambil menonton pertunjukan. Jika kami tidak memasak hidangan untuk Anda, kami mungkin tidak akan membebankan biaya ini kepada Anda!') ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, character = EXCLUDED.character, slug = EXCLUDED.slug, level = EXCLUDED.level, rank_id = EXCLUDED.rank_id, meaning_mnemonic = EXCLUDED.meaning_mnemonic, description = EXCLUDED.description;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('0abe5d43-e10e-45fe-80e7-fff741198e80', 'Memasak', true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('0abe5d43-e10e-45fe-80e7-fff741198e80', 'Cuisine', false) ON CONFLICT DO NOTHING;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('0abe5d43-e10e-45fe-80e7-fff741198e80', 'Dish', false) ON CONFLICT DO NOTHING;

INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES ('0abe5d43-e10e-45fe-80e7-fff741198e80', 'りょうり', NULL, true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('0abe5d43-e10e-45fe-80e7-fff741198e80', 'メニューには魚料理がたくさんございますが、みなさんどれになさいますか？', 'Ada banyak ikan di menunya. Apa yang didapat semua orang?') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('0abe5d43-e10e-45fe-80e7-fff741198e80', 'マミは、カリフラワーを白いブロッコリーだとかんちがいして料理しました。', 'Mami mengira kembang kol adalah brokoli putih dan memasaknya.') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('0abe5d43-e10e-45fe-80e7-fff741198e80', '簡単な料理しかできません。', 'Saya hanya bisa memasak masakan sederhana.') ON CONFLICT DO NOTHING;

INSERT INTO public.items (id, type, character, slug, level, rank_id, meaning_mnemonic, description) VALUES ('b50431fd-fca3-43d5-a70b-758b6771d6fd', 'vocabulary', '帰る', '帰る', 2, 'b8c90d1e-2f3a-4b5c-6d7e-8f9a0b1c2d3e', 'Kata ini terdiri dari kanji dengan hiragana ditempelkan. Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanjinya sendiri artinya pulang ke rumah jadi versi vocab verbanya adalah pulang ke rumah, kembali ke rumah, atau pulang ke rumah.', 'Kata ini terdiri dari kanji dengan hiragana ditempelkan. Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanjinya sendiri artinya pulang ke rumah jadi versi vocab verbanya adalah pulang ke rumah, kembali ke rumah, atau pulang ke rumah.') ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, character = EXCLUDED.character, slug = EXCLUDED.slug, level = EXCLUDED.level, rank_id = EXCLUDED.rank_id, meaning_mnemonic = EXCLUDED.meaning_mnemonic, description = EXCLUDED.description;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('b50431fd-fca3-43d5-a70b-758b6771d6fd', 'Untuk Kembali ke Rumah', true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('b50431fd-fca3-43d5-a70b-758b6771d6fd', 'To Return', false) ON CONFLICT DO NOTHING;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('b50431fd-fca3-43d5-a70b-758b6771d6fd', 'To Go Home', false) ON CONFLICT DO NOTHING;

INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES ('b50431fd-fca3-43d5-a70b-758b6771d6fd', 'かえる', NULL, true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('b50431fd-fca3-43d5-a70b-758b6771d6fd', 'カナエちゃんは、日本から帰ってきて、オフィスの人におみやげを配りました。', 'Kanae membagikan oleh-oleh kepada rekan-rekannya setelah dia kembali dari Jepang.') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('b50431fd-fca3-43d5-a70b-758b6771d6fd', '「好む」という単語をか去形にしなさい、という問題の答えが分からないまま、家に帰りました。', 'Saya tidak dapat menemukan jawaban atas pertanyaan yang meminta untuk menggunakan kata "menyukai" dalam bentuk lampau, jadi saya pulang saja.') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('b50431fd-fca3-43d5-a70b-758b6771d6fd', '「お腹が空いたし足が痛いよ」と、ホビット庄に帰るちょっと前にビルボーは言った。', '"Aku lapar dan kakiku sakit," kata Bilbo, sesaat sebelum pulang ke Shire.') ON CONFLICT DO NOTHING;

INSERT INTO public.items (id, type, character, slug, level, rank_id, meaning_mnemonic, description) VALUES ('b472520a-2b8d-4ac0-8dea-d20ea46e869c', 'vocabulary', '特急', '特急', 2, 'b8c90d1e-2f3a-4b5c-6d7e-8f9a0b1c2d3e', 'Sesuatu yang istimewa dan terburu-buru pastilah istimewa. Ini mengacu pada kereta ekspres terbatas di Jepang. Mereka melaju dengan cepat, berhenti di pemberhentian yang lebih sedikit (karena pemberhentian tersebut istimewa!) dan mereka bergegas. Carilah ini jika Anda ingin mencapai suatu tempat dalam sekejap.', 'Sesuatu yang istimewa dan terburu-buru pastilah istimewa. Ini mengacu pada kereta ekspres terbatas di Jepang. Mereka melaju dengan cepat, berhenti di pemberhentian yang lebih sedikit (karena pemberhentian tersebut istimewa!) dan mereka bergegas. Carilah ini jika Anda ingin mencapai suatu tempat dalam sekejap.') ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, character = EXCLUDED.character, slug = EXCLUDED.slug, level = EXCLUDED.level, rank_id = EXCLUDED.rank_id, meaning_mnemonic = EXCLUDED.meaning_mnemonic, description = EXCLUDED.description;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('b472520a-2b8d-4ac0-8dea-d20ea46e869c', 'Kereta Ekspres Terbatas', true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('b472520a-2b8d-4ac0-8dea-d20ea46e869c', 'Limited Express', false) ON CONFLICT DO NOTHING;

INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES ('b472520a-2b8d-4ac0-8dea-d20ea46e869c', 'とっきゅう', NULL, true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('b472520a-2b8d-4ac0-8dea-d20ea46e869c', 'ノリで特急に乗ることに決めました。', 'Kami memutuskan, secara mendadak, untuk naik kereta ekspres terbatas.') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('b472520a-2b8d-4ac0-8dea-d20ea46e869c', 'けんこうしんだんで、心電図に異常があったので、月曜日に特急に乗って大阪の大学病院まで行って、せいみつけんさを受けなければいけません。', 'Ketika saya melakukan pemeriksaan, mereka menemukan sesuatu yang tidak biasa pada EKG saya, jadi saya harus kembali untuk pemeriksaan fisik lengkap di rumah sakit universitas di Osaka melalui kereta ekspres terbatas pada hari Senin.') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('b472520a-2b8d-4ac0-8dea-d20ea46e869c', '特急券を先に買っておいたので、今出れば三時五十分の特急に間に合うよ。', 'Saya sudah mendapatkan tiket ekspres untuk Anda, jadi jika Anda berangkat sekarang Anda masih bisa naik kereta ekspres pukul 3:50.') ON CONFLICT DO NOTHING;

INSERT INTO public.items (id, type, character, slug, level, rank_id, meaning_mnemonic, description) VALUES ('a2643b3b-dfb6-43c0-9d30-392c1de794b2', 'vocabulary', '写真', '写真', 2, 'b8c90d1e-2f3a-4b5c-6d7e-8f9a0b1c2d3e', 'Salinan kenyataan sangat mirip dengan sihir. Namun, bagaimana Anda membuat salinan kenyataan? Anda mengambil foto.', 'Salinan kenyataan sangat mirip dengan sihir. Namun, bagaimana Anda membuat salinan kenyataan? Anda mengambil foto.') ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, character = EXCLUDED.character, slug = EXCLUDED.slug, level = EXCLUDED.level, rank_id = EXCLUDED.rank_id, meaning_mnemonic = EXCLUDED.meaning_mnemonic, description = EXCLUDED.description;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('a2643b3b-dfb6-43c0-9d30-392c1de794b2', 'Foto', true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('a2643b3b-dfb6-43c0-9d30-392c1de794b2', 'Photograph', false) ON CONFLICT DO NOTHING;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('a2643b3b-dfb6-43c0-9d30-392c1de794b2', 'Picture', false) ON CONFLICT DO NOTHING;

INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES ('a2643b3b-dfb6-43c0-9d30-392c1de794b2', 'しゃしん', NULL, true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('a2643b3b-dfb6-43c0-9d30-392c1de794b2', 'コウイチの高校時代の写真が流出してしまいました。', 'Foto Koichi saat SMA bocor.') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('a2643b3b-dfb6-43c0-9d30-392c1de794b2', 'この写真、見て！お父さん、昔のまんま。変わったことと言えば、ちょっと太ったことくらいじゃない？', 'Lihat foto ini. Ayah tidak berubah sama sekali sejak saat itu. Yah, berat badannya bertambah, tapi tidak ada yang berubah, bukan?') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('a2643b3b-dfb6-43c0-9d30-392c1de794b2', 'ご依頼のフグのヌード写真集を同封いたします。', 'Terlampir adalah foto telanjang Fugu yang Anda minta.') ON CONFLICT DO NOTHING;

INSERT INTO public.items (id, type, character, slug, level, rank_id, meaning_mnemonic, description) VALUES ('fefd7eb0-0f68-48d4-8c41-98da0cae6fd7', 'vocabulary', '真っ黒', '真っ黒', 2, 'b8c90d1e-2f3a-4b5c-6d7e-8f9a0b1c2d3e', 'Kenyataannya adalah warnanya hitam. Seperti, sangat hitam sehingga melebihi hitam palsu, itu adalah hitam nyata. Ini sangat hitam hingga gelap gulita.', 'Kenyataannya adalah warnanya hitam. Seperti, sangat hitam sehingga melebihi hitam palsu, itu adalah hitam nyata. Ini sangat hitam hingga gelap gulita.') ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, character = EXCLUDED.character, slug = EXCLUDED.slug, level = EXCLUDED.level, rank_id = EXCLUDED.rank_id, meaning_mnemonic = EXCLUDED.meaning_mnemonic, description = EXCLUDED.description;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('fefd7eb0-0f68-48d4-8c41-98da0cae6fd7', 'Hitam pekat', true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('fefd7eb0-0f68-48d4-8c41-98da0cae6fd7', 'Pure Black', false) ON CONFLICT DO NOTHING;

INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES ('fefd7eb0-0f68-48d4-8c41-98da0cae6fd7', 'まっくろ', NULL, true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('fefd7eb0-0f68-48d4-8c41-98da0cae6fd7', 'コウイチは真っ黒なニンニクが好きで、よくしたから血が出るまで食べています。', 'Koichi menyukai bawang putih hitam pekat dan dia sering memakannya hingga lidahnya berdarah.') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('fefd7eb0-0f68-48d4-8c41-98da0cae6fd7', 'ビエトはハワイのビーチで真っ黒に日やけして、まるでこげたトーストのようでした。', 'Kulit Viet menjadi sangat kecokelatan di pantai di Hawaii sehingga dia tampak seperti roti bakar gosong.') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('fefd7eb0-0f68-48d4-8c41-98da0cae6fd7', 'やばい、超絶に可愛い真っ黒なワンピース見つけちゃったんだけど。', 'OMG, aku baru saja menemukan gaun hitam pekat yang paling lucu.') ON CONFLICT DO NOTHING;

INSERT INTO public.items (id, type, character, slug, level, rank_id, meaning_mnemonic, description) VALUES ('381c855e-0d8b-47f6-ac71-ca285b552fb1', 'vocabulary', '気持ち悪い', '気持ち悪い', 2, 'b8c90d1e-2f3a-4b5c-6d7e-8f9a0b1c2d3e', '気持ち (perasaan) buruk. Jadi, bisa dibayangkan bagaimana perasaan Anda yang tidak enak, itu perasaan yang tidak enak. Faktanya, Anda merasa tidak enak.', '気持ち (perasaan) buruk. Jadi, bisa dibayangkan bagaimana perasaan Anda yang tidak enak, itu perasaan yang tidak enak. Faktanya, Anda merasa tidak enak.') ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, character = EXCLUDED.character, slug = EXCLUDED.slug, level = EXCLUDED.level, rank_id = EXCLUDED.rank_id, meaning_mnemonic = EXCLUDED.meaning_mnemonic, description = EXCLUDED.description;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('381c855e-0d8b-47f6-ac71-ca285b552fb1', 'Perasaan Buruk', true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('381c855e-0d8b-47f6-ac71-ca285b552fb1', 'Feeling Bad', false) ON CONFLICT DO NOTHING;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('381c855e-0d8b-47f6-ac71-ca285b552fb1', 'Feeling Terrible', false) ON CONFLICT DO NOTHING;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('381c855e-0d8b-47f6-ac71-ca285b552fb1', 'Unpleasant', false) ON CONFLICT DO NOTHING;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('381c855e-0d8b-47f6-ac71-ca285b552fb1', 'Gross', false) ON CONFLICT DO NOTHING;

INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES ('381c855e-0d8b-47f6-ac71-ca285b552fb1', 'きもちわるい', NULL, true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('381c855e-0d8b-47f6-ac71-ca285b552fb1', '二日よいで、頭はガンガンするし、めっちゃ気持ち悪いし、最悪だよ。', 'Aku pusing, sakit kepala parah, dan aku merasa tidak enak. Ini mengerikan.') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('381c855e-0d8b-47f6-ac71-ca285b552fb1', 'コウイチは気持ち悪いネコなで声で、ビエトをよんだ。', 'Koichi memanggil Viet dengan suaranya yang manis dan memuakkan.') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('381c855e-0d8b-47f6-ac71-ca285b552fb1', 'ちょっと、そんな風に腕を曲げるのやめてくれない？めちゃくちゃ気持ち悪いんだけど。', 'Berhenti menekuk lenganmu seperti itu. Ini benar-benar membuatku aneh.') ON CONFLICT DO NOTHING;

INSERT INTO public.items (id, type, character, slug, level, rank_id, meaning_mnemonic, description) VALUES ('cbbbe2cb-63fc-413c-b188-59420a42b7af', 'vocabulary', '動かす', '動かす', 2, 'b8c90d1e-2f3a-4b5c-6d7e-8f9a0b1c2d3e', 'Anda telah melihat 動く semoga saja, dan mengetahui artinya bergerak. Ini mirip dengan itu, tapi sekarang Anda memindahkan sesuatu yang lain. Kamu mengetahui hal ini karena ketika kamu hendak memindahkan sesuatu, benda yang kamu gerakkan itu mulai menyumpahi (かす) kamu karena dia sedang marah.', 'Anda telah melihat 動く semoga saja, dan mengetahui artinya bergerak. Ini mirip dengan itu, tapi sekarang Anda memindahkan sesuatu yang lain. Kamu mengetahui hal ini karena ketika kamu hendak memindahkan sesuatu, benda yang kamu gerakkan itu mulai menyumpahi (かす) kamu karena dia sedang marah.') ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, character = EXCLUDED.character, slug = EXCLUDED.slug, level = EXCLUDED.level, rank_id = EXCLUDED.rank_id, meaning_mnemonic = EXCLUDED.meaning_mnemonic, description = EXCLUDED.description;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('cbbbe2cb-63fc-413c-b188-59420a42b7af', 'Untuk Memindahkan Sesuatu', true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES ('cbbbe2cb-63fc-413c-b188-59420a42b7af', 'うごかす', NULL, true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('cbbbe2cb-63fc-413c-b188-59420a42b7af', '友だちのほとんどが、トラックを手でおして動かすことができるよ。', 'Hampir semua teman saya bisa mendorong dan menggerakkan truk dengan tangannya.') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('cbbbe2cb-63fc-413c-b188-59420a42b7af', 'コウイチったら、急にむくっと起き上がって、ねぼけてあのきょ大なグランドピアノを動かそうとしだしたんだよ。', 'Koichi tiba-tiba bangun, mulai berjalan dalam tidur, dan mencoba menggerakkan grand piano besar itu.') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('cbbbe2cb-63fc-413c-b188-59420a42b7af', 'あのバイク事故のせいで、もう脚を動かすことができなくなっちゃったんだ。', 'Saya tidak bisa menggerakkan kaki saya lagi karena kecelakaan sepeda motor itu.') ON CONFLICT DO NOTHING;

INSERT INTO public.items (id, type, character, slug, level, rank_id, meaning_mnemonic, description) VALUES ('91822338-8f03-457e-9bd8-bc0dccad30d0', 'vocabulary', '勉強する', '勉強する', 2, 'b8c90d1e-2f3a-4b5c-6d7e-8f9a0b1c2d3e', 'Anda sudah melihat 勉強 (belajar) sekarang, bukan? Nah, ini adalah versi kata kerjanya. Ini untuk belajar.', 'Anda sudah melihat 勉強 (belajar) sekarang, bukan? Nah, ini adalah versi kata kerjanya. Ini untuk belajar.') ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, character = EXCLUDED.character, slug = EXCLUDED.slug, level = EXCLUDED.level, rank_id = EXCLUDED.rank_id, meaning_mnemonic = EXCLUDED.meaning_mnemonic, description = EXCLUDED.description;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('91822338-8f03-457e-9bd8-bc0dccad30d0', 'Untuk Belajar', true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES ('91822338-8f03-457e-9bd8-bc0dccad30d0', 'べんきょうする', NULL, true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('91822338-8f03-457e-9bd8-bc0dccad30d0', '毎日ワニカニにログインしてかん字を勉強することが大事です。', 'Penting untuk masuk ke WaniKani dan mempelajari kanji setiap hari.') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('91822338-8f03-457e-9bd8-bc0dccad30d0', '勉強することは好きなんですが、本を読むことはきらいなんです。', 'Saya suka belajar tetapi saya tidak suka membaca.') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('91822338-8f03-457e-9bd8-bc0dccad30d0', 'ちょっと忙し過ぎて、アインシュタインの相対性理論について勉強する時間がないだけなんです。', 'Saya terlalu sibuk dan tidak punya cukup waktu untuk mempelajari teori relativitas Einstein.') ON CONFLICT DO NOTHING;

INSERT INTO public.items (id, type, character, slug, level, rank_id, meaning_mnemonic, description) VALUES ('b84b9b81-9781-4ed3-b022-d5bf9fd0b3ba', 'vocabulary', '旅行する', '旅行する', 2, 'b8c90d1e-2f3a-4b5c-6d7e-8f9a0b1c2d3e', 'Mudah-mudahan Anda sudah melihat 旅行 pada saat ini. Ini adalah versi kata kerjanya. Alih-alih "berjalan", itu berarti bepergian atau melakukan perjalanan. Ini menyenangkan untuk dilakukan. Anda harus melakukannya!', 'Mudah-mudahan Anda sudah melihat 旅行 pada saat ini. Ini adalah versi kata kerjanya. Alih-alih "berjalan", itu berarti bepergian atau melakukan perjalanan. Ini menyenangkan untuk dilakukan. Anda harus melakukannya!') ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, character = EXCLUDED.character, slug = EXCLUDED.slug, level = EXCLUDED.level, rank_id = EXCLUDED.rank_id, meaning_mnemonic = EXCLUDED.meaning_mnemonic, description = EXCLUDED.description;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('b84b9b81-9781-4ed3-b022-d5bf9fd0b3ba', 'Untuk Bepergian', true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('b84b9b81-9781-4ed3-b022-d5bf9fd0b3ba', 'To Take A Trip', false) ON CONFLICT DO NOTHING;

INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES ('b84b9b81-9781-4ed3-b022-d5bf9fd0b3ba', 'りょこうする', NULL, true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('b84b9b81-9781-4ed3-b022-d5bf9fd0b3ba', 'アヤはかん国を旅行するだけでなく、日本にも旅行する予定です。', 'Aya tidak hanya jalan-jalan ke Korea Selatan, tapi dia juga jalan-jalan ke Jepang.') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('b84b9b81-9781-4ed3-b022-d5bf9fd0b3ba', '旅行する前に美よう院に行ったんだけど、思ってたより短く切られちゃったんだよね。', 'Saya pergi ke salon rambut sebelum melakukan perjalanan, tetapi hasilnya lebih singkat dari yang saya inginkan.') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('b84b9b81-9781-4ed3-b022-d5bf9fd0b3ba', 'マジ、終わってる。一緒に旅行をした後、彼が一週間も電話を折り返してこないの。きっと、私寝っ屁をこきまくってたんだわ。', 'Serius, sudah seminggu sejak perjalanan kita bersama dan dia belum meneleponku kembali. Saya pasti terlalu sering kentut saat sedang tidur.') ON CONFLICT DO NOTHING;

INSERT INTO public.items (id, type, character, slug, level, rank_id, meaning_mnemonic, description) VALUES ('afcdf8d2-ee94-4dca-9d08-9731e56c46ec', 'vocabulary', '起こす', '起こす', 2, 'b8c90d1e-2f3a-4b5c-6d7e-8f9a0b1c2d3e', 'Anda pernah melihat 起きる yang artinya "bangun". Hal ini serupa, hanya saja Anda membangunkan orang lain, yang menjadikan arti kata ini membangunkan seseorang. Bagaimana Anda membedakan antara ini dan 起きる? Karena す di akhir. Anda membangunkan seseorang dengan kasar, mencekik lehernya. Mereka berbalik dan menuntut (す) Anda, membuat Anda berharap tidak pernah membangunkan mereka.

Ini juga bisa berarti menyebabkan sesuatu. Saya kira jika Anda membangunkan seseorang dan mereka bukan orang yang suka bangun pagi, Anda dapat menyebabkan sesuatu... seperti masalah.', 'Anda pernah melihat 起きる yang artinya "bangun". Hal ini serupa, hanya saja Anda membangunkan orang lain, yang menjadikan arti kata ini membangunkan seseorang. Bagaimana Anda membedakan antara ini dan 起きる? Karena す di akhir. Anda membangunkan seseorang dengan kasar, mencekik lehernya. Mereka berbalik dan menuntut (す) Anda, membuat Anda berharap tidak pernah membangunkan mereka.

Ini juga bisa berarti menyebabkan sesuatu. Saya kira jika Anda membangunkan seseorang dan mereka bukan orang yang suka bangun pagi, Anda dapat menyebabkan sesuatu... seperti masalah.') ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, character = EXCLUDED.character, slug = EXCLUDED.slug, level = EXCLUDED.level, rank_id = EXCLUDED.rank_id, meaning_mnemonic = EXCLUDED.meaning_mnemonic, description = EXCLUDED.description;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('afcdf8d2-ee94-4dca-9d08-9731e56c46ec', 'Untuk Membangunkan Seseorang', true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('afcdf8d2-ee94-4dca-9d08-9731e56c46ec', 'To Cause Something', false) ON CONFLICT DO NOTHING;

INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES ('afcdf8d2-ee94-4dca-9d08-9731e56c46ec', 'おこす', NULL, true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('afcdf8d2-ee94-4dca-9d08-9731e56c46ec', '折角起こしてあげたのに、意味なかったね。', 'Aku berusaha keras untuk membangunkanmu, tapi tidak berhasil.') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('afcdf8d2-ee94-4dca-9d08-9731e56c46ec', '赤ちゃんを起こしたくないので、インターホンは鳴らさないでください。', 'Kami tidak ingin membangunkan bayi kami yang sedang tidur, jadi tolong jangan bunyikan interkomnya.') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('afcdf8d2-ee94-4dca-9d08-9731e56c46ec', 'その人、仕事で問題を起こして、首になったんだよ。', 'Orang itu menyebabkan masalah di tempat kerja dan dipecat.') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('afcdf8d2-ee94-4dca-9d08-9731e56c46ec', 'ビエットが100%正しいよ。今すぐコウイチ起こすべきだよ。', 'Anda benar sekali, Viet! Kita harus membangunkan Koichi sekarang juga!') ON CONFLICT DO NOTHING;

INSERT INTO public.items (id, type, character, slug, level, rank_id, meaning_mnemonic, description) VALUES ('2e8fceaa-fc88-4d65-a736-73fc6cd7b0aa', 'vocabulary', '旅行者', '旅行者', 2, 'b8c90d1e-2f3a-4b5c-6d7e-8f9a0b1c2d3e', 'Anda telah melihat bahwa 旅行 adalah "perjalanan." Jadi siapakah seseorang yang melakukan perjalanan? Yaitu seorang turis atau traveler.', 'Anda telah melihat bahwa 旅行 adalah "perjalanan." Jadi siapakah seseorang yang melakukan perjalanan? Yaitu seorang turis atau traveler.') ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, character = EXCLUDED.character, slug = EXCLUDED.slug, level = EXCLUDED.level, rank_id = EXCLUDED.rank_id, meaning_mnemonic = EXCLUDED.meaning_mnemonic, description = EXCLUDED.description;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('2e8fceaa-fc88-4d65-a736-73fc6cd7b0aa', 'Wisatawan', true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('2e8fceaa-fc88-4d65-a736-73fc6cd7b0aa', 'Tourist', false) ON CONFLICT DO NOTHING;

INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES ('2e8fceaa-fc88-4d65-a736-73fc6cd7b0aa', 'りょこうしゃ', NULL, true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('2e8fceaa-fc88-4d65-a736-73fc6cd7b0aa', '最初、ぶあい想な旅行者だなぁと思ったんだけど、話をしてみると意外におも白い人だったのよね。', 'Pada awalnya, aku mengira si pengelana itu tidak ramah, tapi ketika aku mencoba berbicara dengannya, ternyata dia sebenarnya sangat menarik.') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('2e8fceaa-fc88-4d65-a736-73fc6cd7b0aa', 'ふだんはこういった対おうはいたしませんが、旅行者でいらっしゃるということですので、今回は特別に対おうさせていただきます。', 'Biasanya kami tidak akan melakukan ini, namun karena Anda seorang turis, kami akan memenuhi permintaan Anda.') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('2e8fceaa-fc88-4d65-a736-73fc6cd7b0aa', 'ねぇ、見て見て。あの旅行者の服装、全然年相応じゃないと思わない？', 'Hei, lihat, lihat. Tidakkah menurut Anda turis tersebut mengenakan pakaian yang sama sekali tidak sesuai dengan usianya?') ON CONFLICT DO NOTHING;

INSERT INTO public.items (id, type, character, slug, level, rank_id, meaning_mnemonic, description) VALUES ('862d5d54-76e4-4366-aee6-83c1111f7742', 'vocabulary', '悪口', '悪口', 2, 'b8c90d1e-2f3a-4b5c-6d7e-8f9a0b1c2d3e', 'Mulut burukmu mengatakan hal-hal buruk (seperti biasa!). Semua yang keluar dari mulut burukmu ini adalah caci-maki. Suatu hari seseorang akan memasukkanmu ke dalam mulutmu yang buruk itu.', 'Mulut burukmu mengatakan hal-hal buruk (seperti biasa!). Semua yang keluar dari mulut burukmu ini adalah caci-maki. Suatu hari seseorang akan memasukkanmu ke dalam mulutmu yang buruk itu.') ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, character = EXCLUDED.character, slug = EXCLUDED.slug, level = EXCLUDED.level, rank_id = EXCLUDED.rank_id, meaning_mnemonic = EXCLUDED.meaning_mnemonic, description = EXCLUDED.description;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('862d5d54-76e4-4366-aee6-83c1111f7742', 'Pelecehan Verbal', true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('862d5d54-76e4-4366-aee6-83c1111f7742', 'Saying Bad Things', false) ON CONFLICT DO NOTHING;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('862d5d54-76e4-4366-aee6-83c1111f7742', 'Insult', false) ON CONFLICT DO NOTHING;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('862d5d54-76e4-4366-aee6-83c1111f7742', 'Slander', false) ON CONFLICT DO NOTHING;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('862d5d54-76e4-4366-aee6-83c1111f7742', 'Bad Mouth', false) ON CONFLICT DO NOTHING;

INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES ('862d5d54-76e4-4366-aee6-83c1111f7742', 'わるくち', NULL, true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES ('862d5d54-76e4-4366-aee6-83c1111f7742', 'わるぐち', NULL, false) ON CONFLICT DO NOTHING;

INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES ('862d5d54-76e4-4366-aee6-83c1111f7742', 'あっこう', NULL, false) ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('862d5d54-76e4-4366-aee6-83c1111f7742', 'ビエトは意地悪なえみをうかべながらコウイチに大声で悪口を言い始めた。', 'Viet mulai meneriaki Koichi dengan seringai jahat.') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('862d5d54-76e4-4366-aee6-83c1111f7742', '子どもの前では、おっとの悪口を言ったことがありません。', 'Saya tidak pernah menjelek-jelekkan suami saya di depan anak-anak saya.') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('862d5d54-76e4-4366-aee6-83c1111f7742', '友達がみんなで私の悪口を言っているのを聞いちゃったんだよね。', 'Saya mendengar bahwa semua teman saya mengatakan hal-hal buruk tentang saya.') ON CONFLICT DO NOTHING;

INSERT INTO public.items (id, type, character, slug, level, rank_id, meaning_mnemonic, description) VALUES ('3f86981c-8006-48d9-8118-121e10d10fac', 'vocabulary', '料理人', '料理人', 2, 'b8c90d1e-2f3a-4b5c-6d7e-8f9a0b1c2d3e', 'Anda pernah melihat 料理 dan mungkin tahu artinya "memasak". Jadi, siapakah orang yang memasak? Itu adalah juru masak atau koki.', 'Anda pernah melihat 料理 dan mungkin tahu artinya "memasak". Jadi, siapakah orang yang memasak? Itu adalah juru masak atau koki.') ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, character = EXCLUDED.character, slug = EXCLUDED.slug, level = EXCLUDED.level, rank_id = EXCLUDED.rank_id, meaning_mnemonic = EXCLUDED.meaning_mnemonic, description = EXCLUDED.description;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('3f86981c-8006-48d9-8118-121e10d10fac', 'Seorang Juru Masak', true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('3f86981c-8006-48d9-8118-121e10d10fac', 'Cook', false) ON CONFLICT DO NOTHING;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('3f86981c-8006-48d9-8118-121e10d10fac', 'Chef', false) ON CONFLICT DO NOTHING;

INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES ('3f86981c-8006-48d9-8118-121e10d10fac', 'りょうりにん', NULL, true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('3f86981c-8006-48d9-8118-121e10d10fac', 'コウイチからの手紙を読んで、料理人になる決意を固めました。', 'Setelah membaca surat Koichi, aku menguatkan tekadku untuk menjadi seorang juru masak.') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('3f86981c-8006-48d9-8118-121e10d10fac', '料理人は、「料理が気に入らなかったら、残してくださっていいですよ」と悲しそうに言いました。', 'Koki itu dengan sedih berkata, "Jika Anda tidak menyukai makanan saya, tinggalkan saja."') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('3f86981c-8006-48d9-8118-121e10d10fac', 'その料理人は、冷凍庫のドアから栓抜きを剥ぎ取った。', 'Koki mengambil pembuka botol yang tergantung di pintu freezer.') ON CONFLICT DO NOTHING;

INSERT INTO public.items (id, type, character, slug, level, rank_id, meaning_mnemonic, description) VALUES ('99650853-a13c-4cbf-985c-a24900a6ab4c', 'vocabulary', '自動', '自動', 2, 'b8c90d1e-2f3a-4b5c-6d7e-8f9a0b1c2d3e', 'Sesuatu yang dapat bergerak dengan sendirinya adalah sesuatu yang otomatis.', 'Sesuatu yang dapat bergerak dengan sendirinya adalah sesuatu yang otomatis.') ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, character = EXCLUDED.character, slug = EXCLUDED.slug, level = EXCLUDED.level, rank_id = EXCLUDED.rank_id, meaning_mnemonic = EXCLUDED.meaning_mnemonic, description = EXCLUDED.description;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('99650853-a13c-4cbf-985c-a24900a6ab4c', 'Otomatis', true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES ('99650853-a13c-4cbf-985c-a24900a6ab4c', 'じどう', NULL, true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('99650853-a13c-4cbf-985c-a24900a6ab4c', 'ボーナスで、全自動のフロントロードしきのせんたくきを買う予定です。', 'Saya berencana membeli mesin cuci bukaan depan otomatis penuh dengan bonus saya.') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('99650853-a13c-4cbf-985c-a24900a6ab4c', 'スマホでとった写しんは、全て自動でクラウドにアップロードしてほぞんされるようにせっ定しています。', 'Saya mengatur ponsel cerdas saya untuk secara otomatis mengunggah setiap foto ke cloud.') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('99650853-a13c-4cbf-985c-a24900a6ab4c', 'トーフグの方針で、許可無くコウイチのベーコンを食べた社員は、自動的に退職処分となる。', 'Sudah menjadi kebijakan Tofugu bahwa pekerja yang ketahuan memakan bacon Koichi tanpa izin akan dipecat secara otomatis.') ON CONFLICT DO NOTHING;

INSERT INTO public.items (id, type, character, slug, level, rank_id, meaning_mnemonic, description) VALUES ('29dbc308-3598-45c9-ba78-49da368547f4', 'vocabulary', '自動的', '自動的', 2, 'b8c90d1e-2f3a-4b5c-6d7e-8f9a0b1c2d3e', 'Hal yang otomatis (自動 + 的) tentu saja bukan "otomatis". Cara yang lebih baik untuk mengatakannya adalah dengan memotong -al dan menyebutnya otomatis.', 'Hal yang otomatis (自動 + 的) tentu saja bukan "otomatis". Cara yang lebih baik untuk mengatakannya adalah dengan memotong -al dan menyebutnya otomatis.') ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, character = EXCLUDED.character, slug = EXCLUDED.slug, level = EXCLUDED.level, rank_id = EXCLUDED.rank_id, meaning_mnemonic = EXCLUDED.meaning_mnemonic, description = EXCLUDED.description;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('29dbc308-3598-45c9-ba78-49da368547f4', 'Otomatis', true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES ('29dbc308-3598-45c9-ba78-49da368547f4', 'じどうてき', NULL, true) ON CONFLICT DO NOTHING;

