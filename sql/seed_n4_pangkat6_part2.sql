INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('72163200-1623-48fe-8dba-2fd1eff3691f', '最近みょうに運がいいんだよな。', 'Aku sangat beruntung akhir-akhir ini karena suatu alasan.') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('72163200-1623-48fe-8dba-2fd1eff3691f', 'こんな美人のよめさんもらって、お前って本当に運がいいな。', 'Anda sangat beruntung memiliki istri yang cantik.') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('72163200-1623-48fe-8dba-2fd1eff3691f', '日本語の授業でAが取れたんだけど、ただ単に運がよかっただけだと思うの。', 'Saya mendapat nilai A dalam bahasa Jepang, tapi menurut saya saya hanya beruntung.') ON CONFLICT DO NOTHING;

INSERT INTO public.items (id, type, character, slug, level, rank_id, meaning_mnemonic, description) VALUES ('2552342f-37be-441a-a90e-668e48500c3b', 'vocabulary', '開ける', '開ける', 2, 'c90d1e2f-3a4b-5c6d-7e8f-9a0b1c2d3e4f', 'Kata ini terdiri dari kanji dengan hiragana ditempelkan. Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanji sendiri artinya terbuka dan versi vocab verbanya adalah membuka sesuatu.', 'Kata ini terdiri dari kanji dengan hiragana ditempelkan. Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanji sendiri artinya terbuka dan versi vocab verbanya adalah membuka sesuatu.') ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, character = EXCLUDED.character, slug = EXCLUDED.slug, level = EXCLUDED.level, rank_id = EXCLUDED.rank_id, meaning_mnemonic = EXCLUDED.meaning_mnemonic, description = EXCLUDED.description;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('2552342f-37be-441a-a90e-668e48500c3b', 'Untuk Membuka Sesuatu', true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES ('2552342f-37be-441a-a90e-668e48500c3b', 'あける', NULL, true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('2552342f-37be-441a-a90e-668e48500c3b', '日本語のじしょを開けてください。', 'Silakan buka kamus bahasa Jepang Anda.') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('2552342f-37be-441a-a90e-668e48500c3b', 'わたしのかれ氏は、車に乗る時は、いつもドアを開けてくれるよ。', 'Pacarku selalu membukakan pintu mobil untukku saat aku masuk.') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('2552342f-37be-441a-a90e-668e48500c3b', '「ねぇ、このワインボトルを開けてもらえないかな？」「いいよ。朝飯前だよ。」', '“Bisakah kamu membukakan sebotol anggur ini untukku?” "Tentu saja. Sepotong kue."') ON CONFLICT DO NOTHING;

INSERT INTO public.items (id, type, character, slug, level, rank_id, meaning_mnemonic, description) VALUES ('86167b09-aba3-4e31-81a6-271be2d832cc', 'vocabulary', '公開', '公開', 2, 'c90d1e2f-3a4b-5c6d-7e8f-9a0b1c2d3e4f', 'Ketika sesuatu terbuka untuk umum, maka itu terbuka untuk umum. Anda dapat melihat hal-hal yang 公開. Anda juga dapat menggunakan ini saat Anda merilis sesuatu ke publik.', 'Ketika sesuatu terbuka untuk umum, maka itu terbuka untuk umum. Anda dapat melihat hal-hal yang 公開. Anda juga dapat menggunakan ini saat Anda merilis sesuatu ke publik.') ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, character = EXCLUDED.character, slug = EXCLUDED.slug, level = EXCLUDED.level, rank_id = EXCLUDED.rank_id, meaning_mnemonic = EXCLUDED.meaning_mnemonic, description = EXCLUDED.description;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('86167b09-aba3-4e31-81a6-271be2d832cc', 'Terbuka Untuk Umum', true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('86167b09-aba3-4e31-81a6-271be2d832cc', 'Releasing', false) ON CONFLICT DO NOTHING;

INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES ('86167b09-aba3-4e31-81a6-271be2d832cc', 'こうかい', NULL, true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('86167b09-aba3-4e31-81a6-271be2d832cc', 'どうがが公開されるのはいつですか？', 'Kapan video tersebut akan dirilis ke publik?') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('86167b09-aba3-4e31-81a6-271be2d832cc', 'Etoeto発売を記ねんして、コウイチの半生をドキュメンタリーにしたえいがが公開になりました。', 'Sebuah film dokumenter tentang separuh kehidupan Koichi telah dibuka untuk umum untuk memperingati pembebasan Etoeto.') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('86167b09-aba3-4e31-81a6-271be2d832cc', '「この写真を公開したのは、写真より実物の花子の方がずっと可愛いんだってことをみんなに教えたかったからだよ。」「あんたって本当口からでまかせばっかりよね！」', '"Aku hanya memublikasikan foto itu untuk menunjukkan kepada orang-orang bahwa kamu terlihat jauh lebih baik secara pribadi, Hanako." Itu bohong sekali!') ON CONFLICT DO NOTHING;

INSERT INTO public.items (id, type, character, slug, level, rank_id, meaning_mnemonic, description) VALUES ('7ee50923-af3a-4b65-bf23-45fc0f6f4a95', 'vocabulary', '開業', '開業', 2, 'c90d1e2f-3a4b-5c6d-7e8f-9a0b1c2d3e4f', 'Ini adalah salah satu kata yang memiliki kanji yang pada dasarnya memberi tahu Anda artinya. Anda membuka usaha... alias membuka usaha.', 'Ini adalah salah satu kata yang memiliki kanji yang pada dasarnya memberi tahu Anda artinya. Anda membuka usaha... alias membuka usaha.') ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, character = EXCLUDED.character, slug = EXCLUDED.slug, level = EXCLUDED.level, rank_id = EXCLUDED.rank_id, meaning_mnemonic = EXCLUDED.meaning_mnemonic, description = EXCLUDED.description;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('7ee50923-af3a-4b65-bf23-45fc0f6f4a95', 'Membuka Bisnis', true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('7ee50923-af3a-4b65-bf23-45fc0f6f4a95', 'Opening Of Business', false) ON CONFLICT DO NOTHING;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('7ee50923-af3a-4b65-bf23-45fc0f6f4a95', 'Starting A Business', false) ON CONFLICT DO NOTHING;

INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES ('7ee50923-af3a-4b65-bf23-45fc0f6f4a95', 'かいぎょう', NULL, true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('7ee50923-af3a-4b65-bf23-45fc0f6f4a95', 'うちも、開業当時はしゃっ金だらけだったんだよ。', 'Kami juga memiliki banyak hutang ketika membuka bisnis kami.') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('7ee50923-af3a-4b65-bf23-45fc0f6f4a95', 'この目医者は、今年で開業して三十五年になります。', 'Hingga tahun ini, dokter mata ini telah berpraktik selama 35 tahun.') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('7ee50923-af3a-4b65-bf23-45fc0f6f4a95', 'コウイチの開業準備を手伝うために、昨日は学校をサボったんだ。', 'Saya meninggalkan sekolah kemarin untuk membantu Koichi mempersiapkan pembukaan bisnisnya.') ON CONFLICT DO NOTHING;

INSERT INTO public.items (id, type, character, slug, level, rank_id, meaning_mnemonic, description) VALUES ('f14007cf-e12a-434f-a393-48c45922b3d9', 'vocabulary', '開発', '開発', 2, 'c90d1e2f-3a4b-5c6d-7e8f-9a0b1c2d3e4f', 'Anda sekarang terbuka untuk keberangkatan. Anda naik perahu dan meninggalkan tempat ini. Anda akan pergi ke tempat lain untuk memulai pengembangannya di mana Anda akan menciptakan dunia baru.', 'Anda sekarang terbuka untuk keberangkatan. Anda naik perahu dan meninggalkan tempat ini. Anda akan pergi ke tempat lain untuk memulai pengembangannya di mana Anda akan menciptakan dunia baru.') ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, character = EXCLUDED.character, slug = EXCLUDED.slug, level = EXCLUDED.level, rank_id = EXCLUDED.rank_id, meaning_mnemonic = EXCLUDED.meaning_mnemonic, description = EXCLUDED.description;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('f14007cf-e12a-434f-a393-48c45922b3d9', 'Pembangunan', true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES ('f14007cf-e12a-434f-a393-48c45922b3d9', 'かいはつ', NULL, true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('f14007cf-e12a-434f-a393-48c45922b3d9', '開発チームがみなさんのごしつもんにお答えします。', 'Tim pengembangan akan menjawab pertanyaan semua orang.') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('f14007cf-e12a-434f-a393-48c45922b3d9', 'トーフグの開発ひ話を教えてください。', 'Tolong beritahu kami tentang kisah di balik pengembangan Tofugu.') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('f14007cf-e12a-434f-a393-48c45922b3d9', 'コウイチは新しい日本語学習サイトを開発するために徹夜をした。', 'Koichi bekerja semalaman untuk mengembangkan situs pembelajaran bahasa Jepang baru.') ON CONFLICT DO NOTHING;

INSERT INTO public.items (id, type, character, slug, level, rank_id, meaning_mnemonic, description) VALUES ('066ae0d8-5a17-4998-9b20-df45119c904c', 'vocabulary', '集める', '集める', 2, 'c90d1e2f-3a4b-5c6d-7e8f-9a0b1c2d3e4f', 'Kata ini terdiri dari kanji dengan hiragana ditempelkan. Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanji sendiri artinya mengumpulkan dan kata kerja ini bersifat transitif artinya tindakan yang dilakukan terhadap sesuatu atau seseorang. Jadi kata kerja ini berarti sesuatu seperti mengumpulkan sesuatu dan mengumpulkan sesuatu.', 'Kata ini terdiri dari kanji dengan hiragana ditempelkan. Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanji sendiri artinya mengumpulkan dan kata kerja ini bersifat transitif artinya tindakan yang dilakukan terhadap sesuatu atau seseorang. Jadi kata kerja ini berarti sesuatu seperti mengumpulkan sesuatu dan mengumpulkan sesuatu.') ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, character = EXCLUDED.character, slug = EXCLUDED.slug, level = EXCLUDED.level, rank_id = EXCLUDED.rank_id, meaning_mnemonic = EXCLUDED.meaning_mnemonic, description = EXCLUDED.description;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('066ae0d8-5a17-4998-9b20-df45119c904c', 'Untuk Mengumpulkan Sesuatu', true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('066ae0d8-5a17-4998-9b20-df45119c904c', 'To Gather Something', false) ON CONFLICT DO NOTHING;

INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES ('066ae0d8-5a17-4998-9b20-df45119c904c', 'あつめる', NULL, true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('066ae0d8-5a17-4998-9b20-df45119c904c', '青いシャツをきている人を集めてください。', 'Tolong kumpulkan orang-orang yang memakai kemeja biru.') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('066ae0d8-5a17-4998-9b20-df45119c904c', 'ユーザーからのフィードバックを集めています。', 'Kami telah mengumpulkan masukan dari pengguna.') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('066ae0d8-5a17-4998-9b20-df45119c904c', '私は外国の食べ物の写真を集めている。', 'Saya mengumpulkan gambar makanan asing.') ON CONFLICT DO NOTHING;

INSERT INTO public.items (id, type, character, slug, level, rank_id, meaning_mnemonic, description) VALUES ('31a2ac27-1d64-47cc-89a1-0ba06f50ab36', 'vocabulary', '集中', '集中', 2, 'c90d1e2f-3a4b-5c6d-7e8f-9a0b1c2d3e4f', 'Saat Anda mengumpulkan ke bagian tengah diri Anda, Anda mengumpulkan ke arah otak Anda. Semua energi diarahkan ke sana, berkumpul di tengah, memberi Anda kemampuan konsentrasi yang ekstrim. Sekarang Anda benar-benar pandai fokus.

Bayangkan saja sebuah cahaya di tengah otak Anda, begitu terkonsentrasi sehingga Anda mampu berkonsentrasi, menembakkan laser kecil dari dahi Anda ke benda yang sedang Anda konsentrasikan.', 'Saat Anda mengumpulkan ke bagian tengah diri Anda, Anda mengumpulkan ke arah otak Anda. Semua energi diarahkan ke sana, berkumpul di tengah, memberi Anda kemampuan konsentrasi yang ekstrim. Sekarang Anda benar-benar pandai fokus.

Bayangkan saja sebuah cahaya di tengah otak Anda, begitu terkonsentrasi sehingga Anda mampu berkonsentrasi, menembakkan laser kecil dari dahi Anda ke benda yang sedang Anda konsentrasikan.') ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, character = EXCLUDED.character, slug = EXCLUDED.slug, level = EXCLUDED.level, rank_id = EXCLUDED.rank_id, meaning_mnemonic = EXCLUDED.meaning_mnemonic, description = EXCLUDED.description;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('31a2ac27-1d64-47cc-89a1-0ba06f50ab36', 'Konsentrasi', true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('31a2ac27-1d64-47cc-89a1-0ba06f50ab36', 'Focusing', false) ON CONFLICT DO NOTHING;

INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES ('31a2ac27-1d64-47cc-89a1-0ba06f50ab36', 'しゅうちゅう', NULL, true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('31a2ac27-1d64-47cc-89a1-0ba06f50ab36', '会ぎに集中しすぎて終電をのがしてしまいました。', 'Kami terlalu konsentrasi pada pertemuan itu dan ketinggalan kereta terakhir.') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('31a2ac27-1d64-47cc-89a1-0ba06f50ab36', '集中集中！気合いを入れろ！', 'Konsentrat! Fokus! Berikan semuanya!') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('31a2ac27-1d64-47cc-89a1-0ba06f50ab36', 'もう！まとわりつくのは止めてよ！集中できないでしょ。', 'Hai! Berhenti bernapas di leherku. Saya tidak bisa berkonsentrasi.') ON CONFLICT DO NOTHING;

INSERT INTO public.items (id, type, character, slug, level, rank_id, meaning_mnemonic, description) VALUES ('cfcab7b8-7d5e-4f5e-880a-ec27cf65cd6b', 'vocabulary', '集金', '集金', 2, 'c90d1e2f-3a4b-5c6d-7e8f-9a0b1c2d3e4f', 'Saat Anda mengumpulkan emas, Anda sedang mengumpulkan uang (atau melakukan pengumpulan uang). Tentu saja, pada masa lalu, emas disamakan dengan uang, itulah sebabnya kata ini berfungsi sebagaimana mestinya. Semoga Anda tidak perlu berurusan dengan terlalu banyak 集金 dalam kehidupan sehari-hari Anda. Kami akan berusaha menjaga WaniKani tetap bagus dan harga terjangkau untuk Anda.', 'Saat Anda mengumpulkan emas, Anda sedang mengumpulkan uang (atau melakukan pengumpulan uang). Tentu saja, pada masa lalu, emas disamakan dengan uang, itulah sebabnya kata ini berfungsi sebagaimana mestinya. Semoga Anda tidak perlu berurusan dengan terlalu banyak 集金 dalam kehidupan sehari-hari Anda. Kami akan berusaha menjaga WaniKani tetap bagus dan harga terjangkau untuk Anda.') ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, character = EXCLUDED.character, slug = EXCLUDED.slug, level = EXCLUDED.level, rank_id = EXCLUDED.rank_id, meaning_mnemonic = EXCLUDED.meaning_mnemonic, description = EXCLUDED.description;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('cfcab7b8-7d5e-4f5e-880a-ec27cf65cd6b', 'Mengumpulkan Uang', true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('cfcab7b8-7d5e-4f5e-880a-ec27cf65cd6b', 'Money Collection', false) ON CONFLICT DO NOTHING;

INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES ('cfcab7b8-7d5e-4f5e-880a-ec27cf65cd6b', 'しゅうきん', NULL, true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('cfcab7b8-7d5e-4f5e-880a-ec27cf65cd6b', 'みんなから集金して、花たばと色紙を買いました。', 'Kami mengumpulkan uang dari semua orang dan membeli seikat bunga dan papan pesan.') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('cfcab7b8-7d5e-4f5e-880a-ec27cf65cd6b', '集金のことはもう心配するなよ。なるようになるさ。', 'Jangan khawatir tentang mengumpulkan uang lagi. Apa yang akan terjadi, akan terjadi.') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('cfcab7b8-7d5e-4f5e-880a-ec27cf65cd6b', 'やらなければならない仕事が山のようにあるよ。とりあえず、お客さんから集金することから始めようかな。', 'Aku punya banyak pekerjaan yang harus aku selesaikan. Bagaimanapun, mungkin saya harus mulai mengumpulkan uang dari klien saya.') ON CONFLICT DO NOTHING;

INSERT INTO public.items (id, type, character, slug, level, rank_id, meaning_mnemonic, description) VALUES ('23eba982-99dc-4d34-854b-b0beef6cd7c0', 'vocabulary', '飲む', '飲む', 2, 'c90d1e2f-3a4b-5c6d-7e8f-9a0b1c2d3e4f', 'Kata ini terdiri dari kanji dengan hiragana ditempelkan. Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanjinya sendiri artinya minum jadi versi vocab verb-nya adalah minum.', 'Kata ini terdiri dari kanji dengan hiragana ditempelkan. Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanjinya sendiri artinya minum jadi versi vocab verb-nya adalah minum.') ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, character = EXCLUDED.character, slug = EXCLUDED.slug, level = EXCLUDED.level, rank_id = EXCLUDED.rank_id, meaning_mnemonic = EXCLUDED.meaning_mnemonic, description = EXCLUDED.description;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('23eba982-99dc-4d34-854b-b0beef6cd7c0', 'Untuk Minum', true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES ('23eba982-99dc-4d34-854b-b0beef6cd7c0', 'のむ', NULL, true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('23eba982-99dc-4d34-854b-b0beef6cd7c0', 'のどがかわいたので、何か飲みましょう。', 'Aku haus, jadi ayo minum sesuatu.') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('23eba982-99dc-4d34-854b-b0beef6cd7c0', 'この水道水は飲めますか？', 'Bisakah kamu meminum air keran ini?') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('23eba982-99dc-4d34-854b-b0beef6cd7c0', '「何をお飲みになりますか？ ジン、ウォッカ、ビール、ワイン、日本酒、それとも焼酎？  　何でもおっしゃってください。お酒なら何でも揃っていますから。」', 'Anda mau minum apa? Gin, vodka, bir, anggur, sake, atau shochu? Sebut saja, kami mendapatkannya, tetapi hanya jika itu alkohol.') ON CONFLICT DO NOTHING;

INSERT INTO public.items (id, type, character, slug, level, rank_id, meaning_mnemonic, description) VALUES ('e7a19b5d-5c5a-4daf-b23a-e914661001d1', 'vocabulary', '工業', '工業', 2, 'c90d1e2f-3a4b-5c6d-7e8f-9a0b1c2d3e4f', 'Bisnis industri adalah... yah... industri.', 'Bisnis industri adalah... yah... industri.') ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, character = EXCLUDED.character, slug = EXCLUDED.slug, level = EXCLUDED.level, rank_id = EXCLUDED.rank_id, meaning_mnemonic = EXCLUDED.meaning_mnemonic, description = EXCLUDED.description;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('e7a19b5d-5c5a-4daf-b23a-e914661001d1', 'Industri', true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES ('e7a19b5d-5c5a-4daf-b23a-e914661001d1', 'こうぎょう', NULL, true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('e7a19b5d-5c5a-4daf-b23a-e914661001d1', '日本では工業が発たつしています。', 'Jepang mempunyai industri yang maju.') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('e7a19b5d-5c5a-4daf-b23a-e914661001d1', '工業デザイナーの中山さんは、ワニカニをストレス発さんに使っています。', 'Perancang industri, Tuan Nakayama, menggunakan WaniKani untuk menghilangkan stres.') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('e7a19b5d-5c5a-4daf-b23a-e914661001d1', '「工業技術プロジェクトの進み具合はどう？」「今のところは順調だよ。」', '“Bagaimana perkembangan proyek teknologi industri Anda?” “Sejauh ini, bagus sekali.”') ON CONFLICT DO NOTHING;

INSERT INTO public.items (id, type, character, slug, level, rank_id, meaning_mnemonic, description) VALUES ('45f0c2e0-59a0-4662-b706-ed56b87cad9f', 'vocabulary', '漢字', '漢字', 2, 'c90d1e2f-3a4b-5c6d-7e8f-9a0b1c2d3e4f', 'Huruf Mandarin... Anda akhirnya mempelajari kata-katanya, hal yang telah Anda pelajari selama ini sejak lama! Ini kanji, sahabat baru Anda (berasal dari Tiongkok, itulah sebabnya hurufnya berbahasa Mandarin).', 'Huruf Mandarin... Anda akhirnya mempelajari kata-katanya, hal yang telah Anda pelajari selama ini sejak lama! Ini kanji, sahabat baru Anda (berasal dari Tiongkok, itulah sebabnya hurufnya berbahasa Mandarin).') ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, character = EXCLUDED.character, slug = EXCLUDED.slug, level = EXCLUDED.level, rank_id = EXCLUDED.rank_id, meaning_mnemonic = EXCLUDED.meaning_mnemonic, description = EXCLUDED.description;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('45f0c2e0-59a0-4662-b706-ed56b87cad9f', 'Kanji', true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('45f0c2e0-59a0-4662-b706-ed56b87cad9f', 'Chinese Letters', false) ON CONFLICT DO NOTHING;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('45f0c2e0-59a0-4662-b706-ed56b87cad9f', 'Chinese Characters', false) ON CONFLICT DO NOTHING;

INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES ('45f0c2e0-59a0-4662-b706-ed56b87cad9f', 'かんじ', NULL, true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('45f0c2e0-59a0-4662-b706-ed56b87cad9f', 'わたしは漢字をかくのが下手です。', 'Saya buruk dalam menulis kanji.') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('45f0c2e0-59a0-4662-b706-ed56b87cad9f', 'わたしの名前の漢字には、ウィスコンシン州でくらせますように、といういみが込められています。', 'Kanji nama saya mengandung arti, "Anda mungkin tinggal di Wisconsin."') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('45f0c2e0-59a0-4662-b706-ed56b87cad9f', '「これ、君への誕生日プレゼントだよ。」「わあ！漢字のテキストじゃない！どうもありがとう。あなたのおかげで本当に幸せな気分になったわ。」', '"Ini hadiah untuk ulang tahunmu." "Wow! Buku teks Kanji! Terima kasih banyak. Kamu benar-benar membuat hariku menyenangkan."') ON CONFLICT DO NOTHING;

INSERT INTO public.items (id, type, character, slug, level, rank_id, meaning_mnemonic, description) VALUES ('4c59262b-3efa-40f0-8814-d1bed297cefc', 'vocabulary', '歌', '歌', 2, 'c90d1e2f-3a4b-5c6d-7e8f-9a0b1c2d3e4f', 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.', 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.') ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, character = EXCLUDED.character, slug = EXCLUDED.slug, level = EXCLUDED.level, rank_id = EXCLUDED.rank_id, meaning_mnemonic = EXCLUDED.meaning_mnemonic, description = EXCLUDED.description;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('4c59262b-3efa-40f0-8814-d1bed297cefc', 'Lagu', true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES ('4c59262b-3efa-40f0-8814-d1bed297cefc', 'うた', NULL, true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('4c59262b-3efa-40f0-8814-d1bed297cefc', 'でも、日本の歌はあまり知りません。', 'Tapi saya tidak terlalu paham lagu Jepang.') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('4c59262b-3efa-40f0-8814-d1bed297cefc', 'これはたんなる歌じゃなく、ひみつのあん号でもあるんじゃないかという気がしています。', 'Rasanya ini bukan sekedar lagu, tapi kode rahasia juga.') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('4c59262b-3efa-40f0-8814-d1bed297cefc', '「ジェイソン！あんた、アマンダのために歌を作ったの？」「えーと、これはそういうのじゃないんだ。」「もう！とぼけないでよ。」', '"Jason! Kamu membuatkan lagu untuk Amanda?" "Ah, ini tidak seperti yang terlihat." Ayo! Jangan berikan itu padaku.') ON CONFLICT DO NOTHING;

INSERT INTO public.items (id, type, character, slug, level, rank_id, meaning_mnemonic, description) VALUES ('648a17d6-a7c2-4cce-b08f-00d321e32da0', 'vocabulary', '歌手', '歌手', 2, 'c90d1e2f-3a4b-5c6d-7e8f-9a0b1c2d3e4f', 'Ingat bagaimana 手 terkadang bisa merujuk pada seseorang? Dalam hal ini, kita mempunyai orang yang membuat lagu (atau mungkin "orang yang menangani lagu"). Orang yang juga dikenal dengan lagu apa? Seorang penyanyi.', 'Ingat bagaimana 手 terkadang bisa merujuk pada seseorang? Dalam hal ini, kita mempunyai orang yang membuat lagu (atau mungkin "orang yang menangani lagu"). Orang yang juga dikenal dengan lagu apa? Seorang penyanyi.') ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, character = EXCLUDED.character, slug = EXCLUDED.slug, level = EXCLUDED.level, rank_id = EXCLUDED.rank_id, meaning_mnemonic = EXCLUDED.meaning_mnemonic, description = EXCLUDED.description;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('648a17d6-a7c2-4cce-b08f-00d321e32da0', 'Penyanyi', true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES ('648a17d6-a7c2-4cce-b08f-00d321e32da0', 'かしゅ', NULL, true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('648a17d6-a7c2-4cce-b08f-00d321e32da0', '歌手になったのは、母のえいきょうが大きいです。', 'Ibu saya mempunyai pengaruh yang besar dalam perjalanan saya menjadi seorang penyanyi.') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('648a17d6-a7c2-4cce-b08f-00d321e32da0', 'あの歌手、かなり日やけしたね。', 'Penyanyi itu kulitnya agak kecokelatan, bukan?') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('648a17d6-a7c2-4cce-b08f-00d321e32da0', '子どもの頃は、歌手だったのよ。なんちゃってね。今でも歌手なんですけど。', 'Saya pernah menjadi penyanyi ketika saya masih kecil. Siapa yang saya bercanda, saya masih seorang penyanyi sekarang.') ON CONFLICT DO NOTHING;

INSERT INTO public.items (id, type, character, slug, level, rank_id, meaning_mnemonic, description) VALUES ('fc415fa8-70d2-4137-9a95-b36eb5f43f42', 'vocabulary', '新聞', '新聞', 2, 'c90d1e2f-3a4b-5c6d-7e8f-9a0b1c2d3e4f', 'Pendengaran baru adalah seperti apa suaranya. Ini adalah hal-hal baru yang Anda dengar di telinga Anda... setidaknya itulah yang terjadi di masa lalu. Sekarang hal-hal baru yang sampai ke telinga Anda sampai kepada Anda melalui media lain. Dalam hal ini, surat kabar.', 'Pendengaran baru adalah seperti apa suaranya. Ini adalah hal-hal baru yang Anda dengar di telinga Anda... setidaknya itulah yang terjadi di masa lalu. Sekarang hal-hal baru yang sampai ke telinga Anda sampai kepada Anda melalui media lain. Dalam hal ini, surat kabar.') ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, character = EXCLUDED.character, slug = EXCLUDED.slug, level = EXCLUDED.level, rank_id = EXCLUDED.rank_id, meaning_mnemonic = EXCLUDED.meaning_mnemonic, description = EXCLUDED.description;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('fc415fa8-70d2-4137-9a95-b36eb5f43f42', 'Koran', true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES ('fc415fa8-70d2-4137-9a95-b36eb5f43f42', 'しんぶん', NULL, true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('fc415fa8-70d2-4137-9a95-b36eb5f43f42', '父は、毎朝新聞を読みます。', 'Ayah saya membaca koran setiap pagi.') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('fc415fa8-70d2-4137-9a95-b36eb5f43f42', '今朝の地元の新聞の一めんでトーフグとどーも君がコラボしていたよ。', 'Tofugu dan Domo-kun berkolaborasi di halaman depan koran lokal pagi ini.') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('fc415fa8-70d2-4137-9a95-b36eb5f43f42', 'この新聞すっげー専門用語だらけじゃん。スコットがこの新聞を何回も読まなきゃいけないのは当然だな。', 'Surat kabar ini sangat terkenal. Pantas saja Scott harus membacanya berkali-kali.') ON CONFLICT DO NOTHING;

INSERT INTO public.items (id, type, character, slug, level, rank_id, meaning_mnemonic, description) VALUES ('9beb60b5-e175-4d06-9993-a7b8ae2e78c4', 'vocabulary', '親', '親', 2, 'c90d1e2f-3a4b-5c6d-7e8f-9a0b1c2d3e4f', 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.', 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.') ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, character = EXCLUDED.character, slug = EXCLUDED.slug, level = EXCLUDED.level, rank_id = EXCLUDED.rank_id, meaning_mnemonic = EXCLUDED.meaning_mnemonic, description = EXCLUDED.description;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('9beb60b5-e175-4d06-9993-a7b8ae2e78c4', 'Induk', true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES ('9beb60b5-e175-4d06-9993-a7b8ae2e78c4', 'おや', NULL, true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('9beb60b5-e175-4d06-9993-a7b8ae2e78c4', 'わたしの親は、先週病院の近くに引っこしました。', 'Orang tua saya pindah dekat rumah sakit minggu lalu.') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('9beb60b5-e175-4d06-9993-a7b8ae2e78c4', 'うちの親、かほごすぎると思うんだよね。', 'Menurutku orang tuaku terlalu protektif.') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('9beb60b5-e175-4d06-9993-a7b8ae2e78c4', 'これって、すごく不公平だわ！ ミドリは私が欲しいものを全部手に入れて、その上私のパパとママが親じゃないなんて！', 'Ini sangat tidak adil! Midori mendapatkan semua yang kuinginkan. Dan terlebih lagi, dia tidak memiliki ibu dan ayah sebagai orang tuaku.') ON CONFLICT DO NOTHING;

INSERT INTO public.items (id, type, character, slug, level, rank_id, meaning_mnemonic, description) VALUES ('096b0f44-a141-4989-bb6a-4d55695ce6ea', 'vocabulary', '親しい', '親しい', 2, 'c90d1e2f-3a4b-5c6d-7e8f-9a0b1c2d3e4f', 'Kemungkinan besar, orang tua Anda sangat dekat dengan Anda. Mereka adalah kerabat terdekat Anda. Merekalah yang akrab dan bersahabat dengan urusan Anda. Mereka ingin tahu segalanya!', 'Kemungkinan besar, orang tua Anda sangat dekat dengan Anda. Mereka adalah kerabat terdekat Anda. Merekalah yang akrab dan bersahabat dengan urusan Anda. Mereka ingin tahu segalanya!') ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, character = EXCLUDED.character, slug = EXCLUDED.slug, level = EXCLUDED.level, rank_id = EXCLUDED.rank_id, meaning_mnemonic = EXCLUDED.meaning_mnemonic, description = EXCLUDED.description;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('096b0f44-a141-4989-bb6a-4d55695ce6ea', 'Intim', true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('096b0f44-a141-4989-bb6a-4d55695ce6ea', 'Friendly', false) ON CONFLICT DO NOTHING;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('096b0f44-a141-4989-bb6a-4d55695ce6ea', 'Close', false) ON CONFLICT DO NOTHING;

INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES ('096b0f44-a141-4989-bb6a-4d55695ce6ea', 'したしい', NULL, true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('096b0f44-a141-4989-bb6a-4d55695ce6ea', 'まだ親しい友人にしか話してないの。', 'Saya hanya menceritakan hal ini kepada teman dekat.') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('096b0f44-a141-4989-bb6a-4d55695ce6ea', '「親しき仲にも礼ぎあり」って言うでしょ？いくら親しいからってトイレはのぞかないで！', 'Mereka berkata, "Pagar pembatas membuat persahabatan tetap hijau," bukan? Kita berteman baik, tapi jangan mengintip ke arahku saat aku di toilet.') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('096b0f44-a141-4989-bb6a-4d55695ce6ea', 'ちょっと、コウイチ。落ち着いてよ。 親しい友人たちに誰か80セント貸してあげれる人がいないか聞いてみてあげるから。', 'Oh Koichi. Tenang. Saya akan bertanya kepada teman dekat saya apakah ada yang bisa meminjamkan Anda 80 sen itu.') ON CONFLICT DO NOTHING;

INSERT INTO public.items (id, type, character, slug, level, rank_id, meaning_mnemonic, description) VALUES ('ac60cf3f-1560-49ed-8984-d289426ef045', 'vocabulary', '親切', '親切', 2, 'c90d1e2f-3a4b-5c6d-7e8f-9a0b1c2d3e4f', 'Saat orang tuamu memotongmu, kamu akan mengira mereka jahat... padahal sebenarnya tidak. Mereka mengeluarkan semua darah buruk darimu. Mereka benar-benar baik hati. 

Bayangkan betapa gilanya jika orang tuamu memotongmu... lalu pikirkan semacam perubahan agar mereka bersikap baik.', 'Saat orang tuamu memotongmu, kamu akan mengira mereka jahat... padahal sebenarnya tidak. Mereka mengeluarkan semua darah buruk darimu. Mereka benar-benar baik hati. 

Bayangkan betapa gilanya jika orang tuamu memotongmu... lalu pikirkan semacam perubahan agar mereka bersikap baik.') ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, character = EXCLUDED.character, slug = EXCLUDED.slug, level = EXCLUDED.level, rank_id = EXCLUDED.rank_id, meaning_mnemonic = EXCLUDED.meaning_mnemonic, description = EXCLUDED.description;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('ac60cf3f-1560-49ed-8984-d289426ef045', 'Baik', true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('ac60cf3f-1560-49ed-8984-d289426ef045', 'Kindness', false) ON CONFLICT DO NOTHING;

INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES ('ac60cf3f-1560-49ed-8984-d289426ef045', 'しんせつ', NULL, true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('ac60cf3f-1560-49ed-8984-d289426ef045', 'いつも親切にしていただいて、ありがとうございます。', 'Terima kasih karena selalu bersikap baik.') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('ac60cf3f-1560-49ed-8984-d289426ef045', 'トーフグのような親切な会社と出会ったのははじめてです。', 'Saya belum pernah melihat perusahaan sebaik Tofugu.') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('ac60cf3f-1560-49ed-8984-d289426ef045', '今まで食べた中で一番のチーズケーキだわ。 あなたってとても親切だから、きっと最後の一切れは私にくれちゃうわよね？', 'Ya ampun, ini kue keju terlezat yang pernah kumiliki. Anda sangat baik, jadi saya yakin Anda akan memberi saya bagian terakhir, bukan?') ON CONFLICT DO NOTHING;

INSERT INTO public.items (id, type, character, slug, level, rank_id, meaning_mnemonic, description) VALUES ('001fe173-bf64-44b2-b0e1-5301202637e6', 'vocabulary', '親友', '親友', 2, 'c90d1e2f-3a4b-5c6d-7e8f-9a0b1c2d3e4f', 'Seorang teman yang seperti salah satu orang tuamu adalah seseorang yang akan menjagamu. Faktanya, mereka sudah seperti keluarga! Itu sebabnya kata ini berarti sahabat atau sahabat dekat. Bayangkan saja seseorang yang mengawasi Anda seperti halnya orang tua. Ini adalah cara untuk menggambarkannya.', 'Seorang teman yang seperti salah satu orang tuamu adalah seseorang yang akan menjagamu. Faktanya, mereka sudah seperti keluarga! Itu sebabnya kata ini berarti sahabat atau sahabat dekat. Bayangkan saja seseorang yang mengawasi Anda seperti halnya orang tua. Ini adalah cara untuk menggambarkannya.') ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, character = EXCLUDED.character, slug = EXCLUDED.slug, level = EXCLUDED.level, rank_id = EXCLUDED.rank_id, meaning_mnemonic = EXCLUDED.meaning_mnemonic, description = EXCLUDED.description;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('001fe173-bf64-44b2-b0e1-5301202637e6', 'Teman Dekat', true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('001fe173-bf64-44b2-b0e1-5301202637e6', 'Best Friend', false) ON CONFLICT DO NOTHING;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('001fe173-bf64-44b2-b0e1-5301202637e6', 'Good Friend', false) ON CONFLICT DO NOTHING;

INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES ('001fe173-bf64-44b2-b0e1-5301202637e6', 'しんゆう', NULL, true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('001fe173-bf64-44b2-b0e1-5301202637e6', 'ま、親友には反対されたんですけどね。', 'Ya, saya ditentang oleh seorang teman dekat.') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('001fe173-bf64-44b2-b0e1-5301202637e6', 'コウイチとビエトは親友で、友だち以上、こい人未まんのかんけいです。', 'Koichi dan Viet adalah teman baik. Mereka lebih dari sekedar teman, tapi bukan sepasang kekasih.') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('001fe173-bf64-44b2-b0e1-5301202637e6', '「ねぇ、知ってる？サラがベスと付き合ってるのよ。」「え、知らなかった。サラのこと親友だと思ってたけど、私そのこと何も聞いてないわ。」', '"Hei, kamu tahu? Sara pacaran dengan Beth." "Apa? Aku tidak mengetahuinya. Kupikir dia adalah sahabatku, tapi dia tidak pernah memberitahuku tentang hal itu."') ON CONFLICT DO NOTHING;

INSERT INTO public.items (id, type, character, slug, level, rank_id, meaning_mnemonic, description) VALUES ('0c67eea9-f282-4110-ae13-e290f03084be', 'vocabulary', '注意', '注意', 2, 'c90d1e2f-3a4b-5c6d-7e8f-9a0b1c2d3e4f', 'Saat Anda menuangkan ide Anda ke dalam sesuatu, Anda banyak memikirkannya. Anda memperhatikan dengan cermat dan berhati-hati. Anda akan melihat hal ini pada banyak tanda peringatan yang menandai hal-hal berbahaya di Jepang, jadi pastikan untuk memperhatikannya!', 'Saat Anda menuangkan ide Anda ke dalam sesuatu, Anda banyak memikirkannya. Anda memperhatikan dengan cermat dan berhati-hati. Anda akan melihat hal ini pada banyak tanda peringatan yang menandai hal-hal berbahaya di Jepang, jadi pastikan untuk memperhatikannya!') ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, character = EXCLUDED.character, slug = EXCLUDED.slug, level = EXCLUDED.level, rank_id = EXCLUDED.rank_id, meaning_mnemonic = EXCLUDED.meaning_mnemonic, description = EXCLUDED.description;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('0c67eea9-f282-4110-ae13-e290f03084be', 'Perhatian', true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('0c67eea9-f282-4110-ae13-e290f03084be', 'Attention', false) ON CONFLICT DO NOTHING;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('0c67eea9-f282-4110-ae13-e290f03084be', 'Warning', false) ON CONFLICT DO NOTHING;

INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES ('0c67eea9-f282-4110-ae13-e290f03084be', 'ちゅうい', NULL, true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('0c67eea9-f282-4110-ae13-e290f03084be', '今日、上しに注意されちゃったよ。', 'Hari ini, saya mendapat peringatan dari atasan saya.') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('0c67eea9-f282-4110-ae13-e290f03084be', '日本語で何かを読んでいる時には、おも白い語句や文ぽうに注意を払って下さい。', 'Saat Anda membaca dalam bahasa Jepang, perhatikan kata-kata dan tata bahasa yang menarik.') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('0c67eea9-f282-4110-ae13-e290f03084be', '私は彼が間違った道を進んでるんじゃないかと心配しているのよ。注意したんだけど、聞く耳持たずって感じで。', 'Saya khawatir dia mengambil jalan yang salah. Aku sudah memperingatkannya, tapi dia tidak mendengarkanku.') ON CONFLICT DO NOTHING;

INSERT INTO public.items (id, type, character, slug, level, rank_id, meaning_mnemonic, description) VALUES ('601d8a66-46a7-4c58-bb94-72b0a2cd82af', 'vocabulary', '集中する', '集中する', 2, 'c90d1e2f-3a4b-5c6d-7e8f-9a0b1c2d3e4f', 'Anda mengumpulkan dan fokus di tengah. Benar-benar memperbesarnya. Ketika Anda melakukan ini, Anda berkonsentrasi pada titik ini, sehingga membuat arti kata ini menjadi konsentrasi atau fokus.', 'Anda mengumpulkan dan fokus di tengah. Benar-benar memperbesarnya. Ketika Anda melakukan ini, Anda berkonsentrasi pada titik ini, sehingga membuat arti kata ini menjadi konsentrasi atau fokus.') ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, character = EXCLUDED.character, slug = EXCLUDED.slug, level = EXCLUDED.level, rank_id = EXCLUDED.rank_id, meaning_mnemonic = EXCLUDED.meaning_mnemonic, description = EXCLUDED.description;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('601d8a66-46a7-4c58-bb94-72b0a2cd82af', 'Untuk Berkonsentrasi', true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('601d8a66-46a7-4c58-bb94-72b0a2cd82af', 'To Focus', false) ON CONFLICT DO NOTHING;

INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES ('601d8a66-46a7-4c58-bb94-72b0a2cd82af', 'しゅうちゅうする', NULL, true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('601d8a66-46a7-4c58-bb94-72b0a2cd82af', 'みんなが集中すればこの仕事は五時までに終わるはずだよ。', 'Pekerjaan ini harus diselesaikan pukul lima jika semua orang berkonsentrasi.') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('601d8a66-46a7-4c58-bb94-72b0a2cd82af', '今は、一番大事な仕事に注意を集中させた方がいいよ。', 'Saat ini Anda harus fokus pada tugas terpenting Anda.') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('601d8a66-46a7-4c58-bb94-72b0a2cd82af', '現在、トーフグチームはXXXという秘密のプロジェクトに集中し、全力で取りかかっています。', 'Saat ini, Tim Tofugu sedang berkonsentrasi pada proyek rahasia bernama XXX.') ON CONFLICT DO NOTHING;

INSERT INTO public.items (id, type, character, slug, level, rank_id, meaning_mnemonic, description) VALUES ('daf04002-788d-41ff-ab91-c0b3f42cbe07', 'vocabulary', '意見', '意見', 2, 'c90d1e2f-3a4b-5c6d-7e8f-9a0b1c2d3e4f', 'Ide yang Anda lihat di kepala Anda adalah opini Anda. Seperti yang pernah dikatakan pria itu... "Itu seperti, 意見mu, kawan."', 'Ide yang Anda lihat di kepala Anda adalah opini Anda. Seperti yang pernah dikatakan pria itu... "Itu seperti, 意見mu, kawan."') ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, character = EXCLUDED.character, slug = EXCLUDED.slug, level = EXCLUDED.level, rank_id = EXCLUDED.rank_id, meaning_mnemonic = EXCLUDED.meaning_mnemonic, description = EXCLUDED.description;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('daf04002-788d-41ff-ab91-c0b3f42cbe07', 'Pendapat', true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('daf04002-788d-41ff-ab91-c0b3f42cbe07', 'View', false) ON CONFLICT DO NOTHING;

INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES ('daf04002-788d-41ff-ab91-c0b3f42cbe07', 'いけん', NULL, true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('daf04002-788d-41ff-ab91-c0b3f42cbe07', '意見の出しおしみはしないで下さい。', 'Tolong, jangan menahan pendapat Anda.') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('daf04002-788d-41ff-ab91-c0b3f42cbe07', 'いくら仲の良い友だちでも、ちょっと正直には意見しづらいよね。', 'Meskipun mereka adalah teman dekat saya, saya mungkin akan kesulitan menceritakan hal ini secara terbuka kepada mereka.') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('daf04002-788d-41ff-ab91-c0b3f42cbe07', 'これは俺の個人的な意見なんだけど、たまに、日本は本当に変わった国だなぁと思うんだよね。', 'Ini hanya pendapat pribadi saya, tapi terkadang saya berpikir Jepang adalah negara yang sangat aneh.') ON CONFLICT DO NOTHING;

INSERT INTO public.items (id, type, character, slug, level, rank_id, meaning_mnemonic, description) VALUES ('7b778269-1b0c-47b9-955d-de21f441eea6', 'vocabulary', '意味', '意味', 2, 'c90d1e2f-3a4b-5c6d-7e8f-9a0b1c2d3e4f', 'Citarasa sebuah ide, apa itu? Bayangkan diri Anda menjilat sebuah ide untuk mencari tahu seperti apa rasanya. Menurut Anda apa yang akan Anda cicipi? Mungkin maksud dari ide tersebut.', 'Citarasa sebuah ide, apa itu? Bayangkan diri Anda menjilat sebuah ide untuk mencari tahu seperti apa rasanya. Menurut Anda apa yang akan Anda cicipi? Mungkin maksud dari ide tersebut.') ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, character = EXCLUDED.character, slug = EXCLUDED.slug, level = EXCLUDED.level, rank_id = EXCLUDED.rank_id, meaning_mnemonic = EXCLUDED.meaning_mnemonic, description = EXCLUDED.description;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('7b778269-1b0c-47b9-955d-de21f441eea6', 'Artinya', true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES ('7b778269-1b0c-47b9-955d-de21f441eea6', 'いみ', NULL, true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('7b778269-1b0c-47b9-955d-de21f441eea6', 'コウイチのあの意味あり気なかおを見て。', 'Lihatlah penampilan Koichi yang penuh arti!') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('7b778269-1b0c-47b9-955d-de21f441eea6', 'この目が何を意味するかは分かりますか？', 'Apakah Anda mengerti maksud dari mata ini?') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('7b778269-1b0c-47b9-955d-de21f441eea6', '「あなたって、もっと賢いと思っていたわ。」「おい、それってどういう意味だよ!?」', '"Saya pikir kamu lebih pintar dari itu." "Hei, apa maksudnya itu?"') ON CONFLICT DO NOTHING;

INSERT INTO public.items (id, type, character, slug, level, rank_id, meaning_mnemonic, description) VALUES ('449c0601-2bf3-4494-858d-5ce7e3ac1360', 'vocabulary', '運動', '運動', 2, 'c90d1e2f-3a4b-5c6d-7e8f-9a0b1c2d3e4f', 'Saat Anda membawa gerakan Anda (atau membawa sesuatu bersamaan dengan gerakan Anda, seperti beban, misalnya) Anda sedang berolahraga. Omong-omong, mungkin akhir-akhir ini Anda terlalu banyak mempelajari kanji. Saatnya bangun dan melakukan squat.', 'Saat Anda membawa gerakan Anda (atau membawa sesuatu bersamaan dengan gerakan Anda, seperti beban, misalnya) Anda sedang berolahraga. Omong-omong, mungkin akhir-akhir ini Anda terlalu banyak mempelajari kanji. Saatnya bangun dan melakukan squat.') ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, character = EXCLUDED.character, slug = EXCLUDED.slug, level = EXCLUDED.level, rank_id = EXCLUDED.rank_id, meaning_mnemonic = EXCLUDED.meaning_mnemonic, description = EXCLUDED.description;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('449c0601-2bf3-4494-858d-5ce7e3ac1360', 'Latihan', true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES ('449c0601-2bf3-4494-858d-5ce7e3ac1360', 'うんどう', NULL, true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('449c0601-2bf3-4494-858d-5ce7e3ac1360', '最近、運動不足気味です。', 'Saya merasa kurang berolahraga akhir-akhir ini.') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('449c0601-2bf3-4494-858d-5ce7e3ac1360', '運動したいけど、時間がないんだよね。', 'Saya ingin berolahraga, tetapi saya tidak punya waktu.') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('449c0601-2bf3-4494-858d-5ce7e3ac1360', '私は読書よりも運動の方が好きなので、本も、新聞も、雑誌も読みません。', 'Saya tidak membaca buku, koran, atau majalah karena saya lebih suka berolahraga daripada membaca.') ON CONFLICT DO NOTHING;

INSERT INTO public.items (id, type, character, slug, level, rank_id, meaning_mnemonic, description) VALUES ('13c818a7-b355-4fb7-93ab-980bf2d1ef60', 'vocabulary', '着る', '着る', 2, 'c90d1e2f-3a4b-5c6d-7e8f-9a0b1c2d3e4f', 'Kata ini terdiri dari kanji dengan hiragana ditempelkan. Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanji sendiri artinya memakai jadi kata ini berarti memakai atau memakai. Namun, Anda harus membedakannya dari 着く yang artinya (tiba). Bayangkan saja bagaimana る adalah pria kasar yang mencoba membuat Anda mengenakan pakaian yang tidak Anda sukai.', 'Kata ini terdiri dari kanji dengan hiragana ditempelkan. Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanji sendiri artinya memakai jadi kata ini berarti memakai atau memakai. Namun, Anda harus membedakannya dari 着く yang artinya (tiba). Bayangkan saja bagaimana る adalah pria kasar yang mencoba membuat Anda mengenakan pakaian yang tidak Anda sukai.') ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, character = EXCLUDED.character, slug = EXCLUDED.slug, level = EXCLUDED.level, rank_id = EXCLUDED.rank_id, meaning_mnemonic = EXCLUDED.meaning_mnemonic, description = EXCLUDED.description;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('13c818a7-b355-4fb7-93ab-980bf2d1ef60', 'Untuk Memakai', true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('13c818a7-b355-4fb7-93ab-980bf2d1ef60', 'To Put On', false) ON CONFLICT DO NOTHING;

INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES ('13c818a7-b355-4fb7-93ab-980bf2d1ef60', 'きる', NULL, true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('13c818a7-b355-4fb7-93ab-980bf2d1ef60', 'パニクってて、Tシャツをおもてうらはんたいに着てたわ！', 'Saya sangat ketakutan sehingga saya bahkan mengenakan kaos saya luar dalam.') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('13c818a7-b355-4fb7-93ab-980bf2d1ef60', 'コウイチは毎日エプロンを着て出きんしている。', 'Koichi mengenakan celemek saat dia datang ke kantor setiap hari.') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('13c818a7-b355-4fb7-93ab-980bf2d1ef60', '一昨日の彼氏の誕生日会には、黒の膝丈のドレスを着ていったんだ。', 'Saya mengenakan gaun hitam selutut di pesta ulang tahun pacar saya kemarin lusa.') ON CONFLICT DO NOTHING;

INSERT INTO public.items (id, type, character, slug, level, rank_id, meaning_mnemonic, description) VALUES ('a531f364-0557-4217-b9dc-f55167a4f554', 'vocabulary', '着く', '着く', 2, 'c90d1e2f-3a4b-5c6d-7e8f-9a0b1c2d3e4f', 'Kata ini sulit, karena ada kata lain di level ini (着る) yang artinya "memakai" yang sangat mirip. Namun kata ini berarti tiba. Anda seharusnya sudah melihat makna itu dengan kanji 着 juga, jadi saya harap itu membantu. Namun, untuk membedakan ini dan 着る, perbesar く. Kamu ingin menjadi keren (く) sehingga kamu datang terlambat ke pesta.', 'Kata ini sulit, karena ada kata lain di level ini (着る) yang artinya "memakai" yang sangat mirip. Namun kata ini berarti tiba. Anda seharusnya sudah melihat makna itu dengan kanji 着 juga, jadi saya harap itu membantu. Namun, untuk membedakan ini dan 着る, perbesar く. Kamu ingin menjadi keren (く) sehingga kamu datang terlambat ke pesta.') ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, character = EXCLUDED.character, slug = EXCLUDED.slug, level = EXCLUDED.level, rank_id = EXCLUDED.rank_id, meaning_mnemonic = EXCLUDED.meaning_mnemonic, description = EXCLUDED.description;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('a531f364-0557-4217-b9dc-f55167a4f554', 'Untuk Tiba', true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES ('a531f364-0557-4217-b9dc-f55167a4f554', 'つく', NULL, true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('a531f364-0557-4217-b9dc-f55167a4f554', '今、成田空港に着きました。', 'Saya baru saja tiba di Bandara Narita.') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('a531f364-0557-4217-b9dc-f55167a4f554', '着く時間が分かったら、またれんらくして。', 'Beri tahu saya jika Anda sudah mengetahui jam berapa Anda akan tiba.') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('a531f364-0557-4217-b9dc-f55167a4f554', '電車が時間通りに着かなかったんです。', 'Kereta tidak tiba tepat waktu.') ON CONFLICT DO NOTHING;

INSERT INTO public.items (id, type, character, slug, level, rank_id, meaning_mnemonic, description) VALUES ('fad60e90-395d-4543-8d27-16d8b2861822', 'vocabulary', '着物', '着物', 2, 'c90d1e2f-3a4b-5c6d-7e8f-9a0b1c2d3e4f', 'Hal-hal yang Anda kenakan adalah pakaian Anda. Oh, dan pakaian Jepang juga diperhitungkan. Kita sedang membicarakan kimono. Dahulu kala, ini hanya bisa disebut pakaian karena memang itulah yang dikenakan semua orang, namun saat ini kita tahu bahwa ini khusus untuk kimono stereotip yang Anda pikirkan ketika berpikir "Jepang".', 'Hal-hal yang Anda kenakan adalah pakaian Anda. Oh, dan pakaian Jepang juga diperhitungkan. Kita sedang membicarakan kimono. Dahulu kala, ini hanya bisa disebut pakaian karena memang itulah yang dikenakan semua orang, namun saat ini kita tahu bahwa ini khusus untuk kimono stereotip yang Anda pikirkan ketika berpikir "Jepang".') ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, character = EXCLUDED.character, slug = EXCLUDED.slug, level = EXCLUDED.level, rank_id = EXCLUDED.rank_id, meaning_mnemonic = EXCLUDED.meaning_mnemonic, description = EXCLUDED.description;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('fad60e90-395d-4543-8d27-16d8b2861822', 'Kimono', true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('fad60e90-395d-4543-8d27-16d8b2861822', 'Clothes', false) ON CONFLICT DO NOTHING;

INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES ('fad60e90-395d-4543-8d27-16d8b2861822', 'きもの', NULL, true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('fad60e90-395d-4543-8d27-16d8b2861822', 'カオリさんは、着物のどこがすきですか？', 'Apa yang kamu sukai dari kimono, Kaori?') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('fad60e90-395d-4543-8d27-16d8b2861822', 'お着物が汚れていますよ。', 'Pakaianmu menjadi sedikit kotor.') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('fad60e90-395d-4543-8d27-16d8b2861822', '母親に、既婚女性か未婚女性かで着物の種類が異なると教えてもらいました。', 'Ibuku memberitahuku bahwa wanita yang sudah menikah dan wanita yang belum menikah memakai kimono yang berbeda.') ON CONFLICT DO NOTHING;

INSERT INTO public.items (id, type, character, slug, level, rank_id, meaning_mnemonic, description) VALUES ('550e277a-4055-45c9-912b-801ebc295c87', 'vocabulary', '下着', '下着', 2, 'c90d1e2f-3a4b-5c6d-7e8f-9a0b1c2d3e4f', 'Hal-hal yang Anda kenakan di bawah pakaian Anda yang lain. Itu celana dalammu. Anda memang memakai pakaian dalam, kan?', 'Hal-hal yang Anda kenakan di bawah pakaian Anda yang lain. Itu celana dalammu. Anda memang memakai pakaian dalam, kan?') ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, character = EXCLUDED.character, slug = EXCLUDED.slug, level = EXCLUDED.level, rank_id = EXCLUDED.rank_id, meaning_mnemonic = EXCLUDED.meaning_mnemonic, description = EXCLUDED.description;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('550e277a-4055-45c9-912b-801ebc295c87', 'Pakaian dalam', true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES ('550e277a-4055-45c9-912b-801ebc295c87', 'したぎ', NULL, true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('550e277a-4055-45c9-912b-801ebc295c87', '今日はコウイチは勝負下着をはいている。', 'Koichi mengenakan petinju khusus hari ini.') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('550e277a-4055-45c9-912b-801ebc295c87', '全ての下着の注文ひんを、き日通りに発送しないといけません。', 'Kami harus mengirimkan semua pesanan pakaian dalam tepat waktu.') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('550e277a-4055-45c9-912b-801ebc295c87', 'どの下着が欲しい？植物柄？それともアニマル柄？好きなものを選んでいいよ。', 'Pakaian dalam mana yang kamu inginkan? Yang bermotif tumbuhan atau hewan? Pilih mana yang Anda suka.') ON CONFLICT DO NOTHING;

INSERT INTO public.items (id, type, character, slug, level, rank_id, meaning_mnemonic, description) VALUES ('a28cd40a-2dcd-4b9a-a96d-e46f8f3c9400', 'vocabulary', '水着', '水着', 2, 'c90d1e2f-3a4b-5c6d-7e8f-9a0b1c2d3e4f', 'Pakaian air adalah baju renang, baju renang, atau pakaian renang.', 'Pakaian air adalah baju renang, baju renang, atau pakaian renang.') ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, character = EXCLUDED.character, slug = EXCLUDED.slug, level = EXCLUDED.level, rank_id = EXCLUDED.rank_id, meaning_mnemonic = EXCLUDED.meaning_mnemonic, description = EXCLUDED.description;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('a28cd40a-2dcd-4b9a-a96d-e46f8f3c9400', 'Baju Renang', true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('a28cd40a-2dcd-4b9a-a96d-e46f8f3c9400', 'Bathing Suit', false) ON CONFLICT DO NOTHING;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('a28cd40a-2dcd-4b9a-a96d-e46f8f3c9400', 'Swimwear', false) ON CONFLICT DO NOTHING;

INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES ('a28cd40a-2dcd-4b9a-a96d-e46f8f3c9400', 'みずぎ', NULL, true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('a28cd40a-2dcd-4b9a-a96d-e46f8f3c9400', '水着を持ってくるの、わすれちゃった。', 'Aku lupa membawa baju renangku.') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('a28cd40a-2dcd-4b9a-a96d-e46f8f3c9400', 'なんでコウイチは女せい用水着を着てるの？', 'Mengapa Koichi memakai pakaian renang wanita?') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('a28cd40a-2dcd-4b9a-a96d-e46f8f3c9400', '水着はありますか？とびきりセクシーなのを探しているんですが。', 'Apakah Anda punya pakaian renang? Saya mencari yang super seksi.') ON CONFLICT DO NOTHING;

INSERT INTO public.items (id, type, character, slug, level, rank_id, meaning_mnemonic, description) VALUES ('5c22f6ca-ad27-4e4d-96ad-e3e7e87dafa2', 'vocabulary', '新しい', '新しい', 2, 'c90d1e2f-3a4b-5c6d-7e8f-9a0b1c2d3e4f', 'Ini adalah kanji tunggal dengan い di akhir, artinya Anda tahu itu mungkin kata sifat. Apa bentuk kata sifat dari baru? Ini baru.', 'Ini adalah kanji tunggal dengan い di akhir, artinya Anda tahu itu mungkin kata sifat. Apa bentuk kata sifat dari baru? Ini baru.') ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, character = EXCLUDED.character, slug = EXCLUDED.slug, level = EXCLUDED.level, rank_id = EXCLUDED.rank_id, meaning_mnemonic = EXCLUDED.meaning_mnemonic, description = EXCLUDED.description;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('5c22f6ca-ad27-4e4d-96ad-e3e7e87dafa2', 'Baru', true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES ('5c22f6ca-ad27-4e4d-96ad-e3e7e87dafa2', 'あたらしい', NULL, true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('5c22f6ca-ad27-4e4d-96ad-e3e7e87dafa2', '新しいえんぴつですね。', 'Pensil ini baru, bukan?') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('5c22f6ca-ad27-4e4d-96ad-e3e7e87dafa2', 'じゃあ、あの新しいスタバでね！', 'Sampai jumpa di Starbucks baru!') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('5c22f6ca-ad27-4e4d-96ad-e3e7e87dafa2', 'あの男、バンジージャンプするのに私の新しいスカーフを使うなんて、信じられない！', 'Aku tidak percaya dia menggunakan syal baruku untuk bungee jump!') ON CONFLICT DO NOTHING;

INSERT INTO public.items (id, type, character, slug, level, rank_id, meaning_mnemonic, description) VALUES ('1bf96550-ff5a-484b-922d-9c0322a9ec2e', 'vocabulary', '楽しみ', '楽しみ', 2, 'c90d1e2f-3a4b-5c6d-7e8f-9a0b1c2d3e4f', 'Anda pernah melihat kata 楽しい, yang artinya "menyenangkan". Ini jelas terlihat sangat mirip, meskipun yang ini berarti menantikan. Mengapa? Karena ada tanda み di akhir, yang berbunyi "siapa yang akan bersenang-senang? Ini aku! Itu sebabnya aku menantikannya!"', 'Anda pernah melihat kata 楽しい, yang artinya "menyenangkan". Ini jelas terlihat sangat mirip, meskipun yang ini berarti menantikan. Mengapa? Karena ada tanda み di akhir, yang berbunyi "siapa yang akan bersenang-senang? Ini aku! Itu sebabnya aku menantikannya!"') ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, character = EXCLUDED.character, slug = EXCLUDED.slug, level = EXCLUDED.level, rank_id = EXCLUDED.rank_id, meaning_mnemonic = EXCLUDED.meaning_mnemonic, description = EXCLUDED.description;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('1bf96550-ff5a-484b-922d-9c0322a9ec2e', 'Menantikan', true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('1bf96550-ff5a-484b-922d-9c0322a9ec2e', 'Hope', false) ON CONFLICT DO NOTHING;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('1bf96550-ff5a-484b-922d-9c0322a9ec2e', 'Expectation', false) ON CONFLICT DO NOTHING;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('1bf96550-ff5a-484b-922d-9c0322a9ec2e', 'Anticipation', false) ON CONFLICT DO NOTHING;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('1bf96550-ff5a-484b-922d-9c0322a9ec2e', 'Pleasure', false) ON CONFLICT DO NOTHING;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('1bf96550-ff5a-484b-922d-9c0322a9ec2e', 'Enjoyment', false) ON CONFLICT DO NOTHING;

INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES ('1bf96550-ff5a-484b-922d-9c0322a9ec2e', 'たのしみ', NULL, true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('1bf96550-ff5a-484b-922d-9c0322a9ec2e', 'あなたに会うのが楽しみです。', 'Saya tak sabar untuk bertemu dengan Anda.') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('1bf96550-ff5a-484b-922d-9c0322a9ec2e', '夏休みの楽しみと言えば、海にキャンプに色々あると思いますよ。', 'Menurutku ada banyak aktivitas menyenangkan selama liburan musim panas, seperti pergi ke pantai, berkemah, dan sebagainya.') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('1bf96550-ff5a-484b-922d-9c0322a9ec2e', '私達、みんな亀を燃やすのを楽しみにしているんだよね？', 'Kita semua menantikan pembakaran penyu, bukan?') ON CONFLICT DO NOTHING;

INSERT INTO public.items (id, type, character, slug, level, rank_id, meaning_mnemonic, description) VALUES ('679ee3c6-2fd4-4417-93e7-196cfbd720e3', 'vocabulary', '近道', '近道', 2, 'c90d1e2f-3a4b-5c6d-7e8f-9a0b1c2d3e4f', 'Mengambil jalan terdekat akan membawa Anda ke tujuan lebih cepat (karena jaraknya lebih dekat!). Ini adalah jalan pintas alias jalan pintas.', 'Mengambil jalan terdekat akan membawa Anda ke tujuan lebih cepat (karena jaraknya lebih dekat!). Ini adalah jalan pintas alias jalan pintas.') ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, character = EXCLUDED.character, slug = EXCLUDED.slug, level = EXCLUDED.level, rank_id = EXCLUDED.rank_id, meaning_mnemonic = EXCLUDED.meaning_mnemonic, description = EXCLUDED.description;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('679ee3c6-2fd4-4417-93e7-196cfbd720e3', 'Pintasan', true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('679ee3c6-2fd4-4417-93e7-196cfbd720e3', 'Short Way', false) ON CONFLICT DO NOTHING;

INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES ('679ee3c6-2fd4-4417-93e7-196cfbd720e3', 'ちかみち', NULL, true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('679ee3c6-2fd4-4417-93e7-196cfbd720e3', '上手な絵をも写する事は、上たつの近道です。', 'Menelusuri gambar yang bagus adalah jalan pintas menuju perbaikan.') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('679ee3c6-2fd4-4417-93e7-196cfbd720e3', 'ワニカニで漢字をおぼえることは、本当に日本語習とくの近道になると思いますか？', 'Apakah menurut Anda menghafal kanji di WaniKani sebenarnya merupakan jalan pintas menuju penguasaan bahasa Jepang?') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('679ee3c6-2fd4-4417-93e7-196cfbd720e3', '「ありえねぇ！お前って本当脳みそ無いのな。なんで一方通行を逆走してるんだよ。」「近道になると思ったんだよ。」', '"Ya Tuhan! Kamu benar-benar bebal! Kenapa kita harus mengambil jalan satu arah?" "Saya pikir itu akan menjadi jalan pintas!"') ON CONFLICT DO NOTHING;

INSERT INTO public.items (id, type, character, slug, level, rank_id, meaning_mnemonic, description) VALUES ('f1ce1566-4265-4889-a4cd-30d09f85a64c', 'vocabulary', '楽しむ', '楽しむ', 2, 'c90d1e2f-3a4b-5c6d-7e8f-9a0b1c2d3e4f', 'Anda mungkin pernah melihat kata 楽しい, yang artinya "menyenangkan". Sekarang Anda akan mengetahui versi kata kerjanya (diakhiri dengan bunyi う, kan?). Itu untuk dinikmati. Omong-omong, saya harap Anda menikmati WaniKani sejauh ini!', 'Anda mungkin pernah melihat kata 楽しい, yang artinya "menyenangkan". Sekarang Anda akan mengetahui versi kata kerjanya (diakhiri dengan bunyi う, kan?). Itu untuk dinikmati. Omong-omong, saya harap Anda menikmati WaniKani sejauh ini!') ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, character = EXCLUDED.character, slug = EXCLUDED.slug, level = EXCLUDED.level, rank_id = EXCLUDED.rank_id, meaning_mnemonic = EXCLUDED.meaning_mnemonic, description = EXCLUDED.description;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('f1ce1566-4265-4889-a4cd-30d09f85a64c', 'Untuk Menikmati', true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('f1ce1566-4265-4889-a4cd-30d09f85a64c', 'To Enjoy Oneself', false) ON CONFLICT DO NOTHING;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('f1ce1566-4265-4889-a4cd-30d09f85a64c', 'To Have Fun', false) ON CONFLICT DO NOTHING;

INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES ('f1ce1566-4265-4889-a4cd-30d09f85a64c', 'たのしむ', NULL, true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('f1ce1566-4265-4889-a4cd-30d09f85a64c', 'まどから、海の美しいけ色を楽しむことができます。', 'Anda dapat menikmati pemandangan laut yang indah dari jendela.') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('f1ce1566-4265-4889-a4cd-30d09f85a64c', 'このプロジェクト、みんなすごく楽しみながらやってます。', 'Kami bersenang-senang dengan proyek ini.') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('f1ce1566-4265-4889-a4cd-30d09f85a64c', 'うさぎちゃん、いい加減目を覚ましなって。タキシード仮面のことなんか忘れて、うさぎちゃんはうさぎちゃんの人生を楽しんだらいいんだよ！', 'Keluarlah, Usagi. Lupakan Topeng Tuxedo dan nikmati hidup Anda!') ON CONFLICT DO NOTHING;

INSERT INTO public.items (id, type, character, slug, level, rank_id, meaning_mnemonic, description) VALUES ('eb98c9c8-0efc-4e60-b796-aef91ef612b6', 'vocabulary', '買い物', '買い物', 2, 'c90d1e2f-3a4b-5c6d-7e8f-9a0b1c2d3e4f', 'Mudah-mudahan Anda sudah melihat 買う sekarang dan mengetahui artinya "membeli". Jadi, 買い akan serupa dengan itu. Tambahkan itu ke barang dan Anda akan mendapatkan semacam kata "membeli barang". Apa yang dimaksud dengan "membeli sesuatu"? Ini menggambarkan belanja.', 'Mudah-mudahan Anda sudah melihat 買う sekarang dan mengetahui artinya "membeli". Jadi, 買い akan serupa dengan itu. Tambahkan itu ke barang dan Anda akan mendapatkan semacam kata "membeli barang". Apa yang dimaksud dengan "membeli sesuatu"? Ini menggambarkan belanja.') ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, character = EXCLUDED.character, slug = EXCLUDED.slug, level = EXCLUDED.level, rank_id = EXCLUDED.rank_id, meaning_mnemonic = EXCLUDED.meaning_mnemonic, description = EXCLUDED.description;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('eb98c9c8-0efc-4e60-b796-aef91ef612b6', 'Belanja', true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES ('eb98c9c8-0efc-4e60-b796-aef91ef612b6', 'かいもの', NULL, true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('eb98c9c8-0efc-4e60-b796-aef91ef612b6', 'わたしはスーパーで買い物をしています。', 'Saya sedang berbelanja di toko kelontong.') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('eb98c9c8-0efc-4e60-b796-aef91ef612b6', '買い物はいつもネットショッピングですませています。', 'Kalau belanja, biasanya saya lakukan secara online.') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('eb98c9c8-0efc-4e60-b796-aef91ef612b6', '今日はクリスマスの買い物に行くの！すごくワクワクするわ！', 'Kami akan berbelanja Natal hari ini! Saya sangat bersemangat!') ON CONFLICT DO NOTHING;

INSERT INTO public.items (id, type, character, slug, level, rank_id, meaning_mnemonic, description) VALUES ('5a43e1e6-cd52-455d-85e0-6af46b1db363', 'vocabulary', '飲み物', '飲み物', 2, 'c90d1e2f-3a4b-5c6d-7e8f-9a0b1c2d3e4f', 'Sesuatu yang Anda minum adalah minuman.', 'Sesuatu yang Anda minum adalah minuman.') ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, character = EXCLUDED.character, slug = EXCLUDED.slug, level = EXCLUDED.level, rank_id = EXCLUDED.rank_id, meaning_mnemonic = EXCLUDED.meaning_mnemonic, description = EXCLUDED.description;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('5a43e1e6-cd52-455d-85e0-6af46b1db363', 'Minuman', true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('5a43e1e6-cd52-455d-85e0-6af46b1db363', 'Drink', false) ON CONFLICT DO NOTHING;

INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES ('5a43e1e6-cd52-455d-85e0-6af46b1db363', 'のみもの', NULL, true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('5a43e1e6-cd52-455d-85e0-6af46b1db363', 'コウイチの飲んでいる飲み物は何ですか？', 'Minuman apa yang diminum Koichi?') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('5a43e1e6-cd52-455d-85e0-6af46b1db363', 'にんしん中は、アルコールをふくんだ飲み物は飲んではいけない。', 'Minuman yang mengandung alkohol tidak boleh diminum selama kehamilan.') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('5a43e1e6-cd52-455d-85e0-6af46b1db363', '「何か冷たい飲み物はいかがですか？」「それでは、牛乳パックを二本頂けますか？」', '"Apakah kamu ingin minum sesuatu yang dingin?" "Kalau begitu, bolehkah aku minta dua karton susu?"') ON CONFLICT DO NOTHING;

INSERT INTO public.items (id, type, character, slug, level, rank_id, meaning_mnemonic, description) VALUES ('005c015f-8b28-4f66-9fda-831bc4277914', 'vocabulary', '問題', '問題', 2, 'c90d1e2f-3a4b-5c6d-7e8f-9a0b1c2d3e4f', 'Topik permasalahan adalah permasalahan atau pertanyaan yang harus dijawab. Kalau dipikir-pikir, topik sebagai masalah cenderung berhubungan dengan sekolah. Jadi, ketika harus menjawab soal di sekolah, itulah 問題.', 'Topik permasalahan adalah permasalahan atau pertanyaan yang harus dijawab. Kalau dipikir-pikir, topik sebagai masalah cenderung berhubungan dengan sekolah. Jadi, ketika harus menjawab soal di sekolah, itulah 問題.') ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, character = EXCLUDED.character, slug = EXCLUDED.slug, level = EXCLUDED.level, rank_id = EXCLUDED.rank_id, meaning_mnemonic = EXCLUDED.meaning_mnemonic, description = EXCLUDED.description;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('005c015f-8b28-4f66-9fda-831bc4277914', 'Masalah', true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('005c015f-8b28-4f66-9fda-831bc4277914', 'Question', false) ON CONFLICT DO NOTHING;

INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES ('005c015f-8b28-4f66-9fda-831bc4277914', 'もんだい', NULL, true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('005c015f-8b28-4f66-9fda-831bc4277914', 'ワニカニの売り上げが落ちるのはトーフグにとって大きな問題です。', 'Akan menjadi masalah besar bagi Tofugu jika pendapatan WaniKani turun.') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('005c015f-8b28-4f66-9fda-831bc4277914', 'この数学の問題、三十秒間どう考えても分からなかったからわたしの代わりにちょっとやっておいてくれない？', 'Saya mencoba menyelesaikan soal matematika ini selama tiga puluh detik dan saya tidak dapat memecahkannya, dapatkah Anda melakukannya untuk saya?') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('005c015f-8b28-4f66-9fda-831bc4277914', '「お願いがあるんだけど。」「いいけど、何？」「週末、私の犬の世話をしてもらえないかな？」「問題ないよ。任せといて。」', '"Bisakah kamu membantuku?" "Tentu, ada apa?" "Bisakah kamu menjaga anjingku untuk akhir pekan?" “Tidak masalah. Kamu bisa mengandalkanku.”') ON CONFLICT DO NOTHING;

INSERT INTO public.items (id, type, character, slug, level, rank_id, meaning_mnemonic, description) VALUES ('7ec1c297-4df5-4c7e-8caf-32fba45d1084', 'vocabulary', '飲み会', '飲み会', 2, 'c90d1e2f-3a4b-5c6d-7e8f-9a0b1c2d3e4f', 'Anda tahu bahwa 飲む adalah minuman, jadi ini ada hubungannya dengan minum. Juga, 会 berarti bertemu, jadi ketika Anda bertemu untuk minum, Anda berkumpul dengan orang lain untuk minum. Ini pesta minum!', 'Anda tahu bahwa 飲む adalah minuman, jadi ini ada hubungannya dengan minum. Juga, 会 berarti bertemu, jadi ketika Anda bertemu untuk minum, Anda berkumpul dengan orang lain untuk minum. Ini pesta minum!') ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, character = EXCLUDED.character, slug = EXCLUDED.slug, level = EXCLUDED.level, rank_id = EXCLUDED.rank_id, meaning_mnemonic = EXCLUDED.meaning_mnemonic, description = EXCLUDED.description;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('7ec1c297-4df5-4c7e-8caf-32fba45d1084', 'Pesta Minum', true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES ('7ec1c297-4df5-4c7e-8caf-32fba45d1084', 'のみかい', NULL, true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('7ec1c297-4df5-4c7e-8caf-32fba45d1084', 'トーフグ主さいの飲み会はとても楽しいですよ！', 'Pesta minum yang diselenggarakan oleh Tofugu sungguh menyenangkan!') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('7ec1c297-4df5-4c7e-8caf-32fba45d1084', '最近、飲み会で一気飲みを強要されて急せいアルコール中どくで死ぼうする学生がふえているようです。', 'Saat ini tampaknya ada peningkatan jumlah pelajar yang terpaksa menenggak minuman di pesta dan meninggal karena keracunan alkohol akut.') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('7ec1c297-4df5-4c7e-8caf-32fba45d1084', 'お袋が飲み会には行っちゃダメだって言うんだよね。お前んとこの親がアルコールとかに対して厳しくないの、羨ましいよ。', 'Ibuku bilang aku tidak bisa pergi ke pesta minum. Orang tuamu sangat tidak menyukai hal-hal seperti alkohol. saya cemburu.') ON CONFLICT DO NOTHING;

INSERT INTO public.items (id, type, character, slug, level, rank_id, meaning_mnemonic, description) VALUES ('355dc7b8-dfa5-4679-86a3-cfbee5b9dc29', 'vocabulary', '運転手', '運転手', 2, 'c90d1e2f-3a4b-5c6d-7e8f-9a0b1c2d3e4f', 'Anda tahu bahwa 運転 ada hubungannya dengan mengemudi, bukan? Dan tahukah Anda bahwa 手 sering kali berkaitan dengan seseorang yang melakukan sesuatu dengan kata-kata seperti ini. Jadi, orang yang mengemudikan mobil itu apa? Seorang pengemudi.', 'Anda tahu bahwa 運転 ada hubungannya dengan mengemudi, bukan? Dan tahukah Anda bahwa 手 sering kali berkaitan dengan seseorang yang melakukan sesuatu dengan kata-kata seperti ini. Jadi, orang yang mengemudikan mobil itu apa? Seorang pengemudi.') ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, character = EXCLUDED.character, slug = EXCLUDED.slug, level = EXCLUDED.level, rank_id = EXCLUDED.rank_id, meaning_mnemonic = EXCLUDED.meaning_mnemonic, description = EXCLUDED.description;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('355dc7b8-dfa5-4679-86a3-cfbee5b9dc29', 'Sopir', true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES ('355dc7b8-dfa5-4679-86a3-cfbee5b9dc29', 'うんてんしゅ', NULL, true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('355dc7b8-dfa5-4679-86a3-cfbee5b9dc29', 'タクシーに乗ったら運転手がトーフグのコウイチだった。', 'Saat saya naik taksi, kebetulan supirnya adalah Koichi Tofugu.') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('355dc7b8-dfa5-4679-86a3-cfbee5b9dc29', 'バスの運転手と言い争いになってしまった。', 'Saya akhirnya bertengkar dengan sopir bus.') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('355dc7b8-dfa5-4679-86a3-cfbee5b9dc29', '運転手は大丈夫だったみたいだけど、車は事故でめちゃくちゃになっていたよ。', 'Pengemudinya tampak baik-baik saja tetapi mobilnya hancur total dalam kecelakaan itu.') ON CONFLICT DO NOTHING;

INSERT INTO public.items (id, type, character, slug, level, rank_id, meaning_mnemonic, description) VALUES ('92f095fc-ae6f-463a-b621-afe6d54e1c6a', 'vocabulary', '父親', '父親', 2, 'c90d1e2f-3a4b-5c6d-7e8f-9a0b1c2d3e4f', 'Orang tua ayahmu adalah ayahmu.', 'Orang tua ayahmu adalah ayahmu.') ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, character = EXCLUDED.character, slug = EXCLUDED.slug, level = EXCLUDED.level, rank_id = EXCLUDED.rank_id, meaning_mnemonic = EXCLUDED.meaning_mnemonic, description = EXCLUDED.description;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('92f095fc-ae6f-463a-b621-afe6d54e1c6a', 'Ayah', true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('92f095fc-ae6f-463a-b621-afe6d54e1c6a', 'Dad', false) ON CONFLICT DO NOTHING;

INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES ('92f095fc-ae6f-463a-b621-afe6d54e1c6a', 'ちちおや', NULL, true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('92f095fc-ae6f-463a-b621-afe6d54e1c6a', 'わたしの父親はレスラーです。', 'Ayah saya adalah seorang pegulat.') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('92f095fc-ae6f-463a-b621-afe6d54e1c6a', '今朝、父親が部屋でこっそりオナラをするのを見てしまいました。', 'Pagi ini, aku melihat ayahku diam-diam kentut di kamarnya.') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('92f095fc-ae6f-463a-b621-afe6d54e1c6a', 'うちの家族はみんな父親のことが大好きです。', 'Semua orang di keluargaku mencintai ayahku.') ON CONFLICT DO NOTHING;

INSERT INTO public.items (id, type, character, slug, level, rank_id, meaning_mnemonic, description) VALUES ('24470cc5-587b-4524-bacd-52335a8bf46e', 'vocabulary', '母親', '母親', 2, 'c90d1e2f-3a4b-5c6d-7e8f-9a0b1c2d3e4f', 'Orang tua ibu adalah ibu.', 'Orang tua ibu adalah ibu.') ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, character = EXCLUDED.character, slug = EXCLUDED.slug, level = EXCLUDED.level, rank_id = EXCLUDED.rank_id, meaning_mnemonic = EXCLUDED.meaning_mnemonic, description = EXCLUDED.description;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('24470cc5-587b-4524-bacd-52335a8bf46e', 'Ibu', true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('24470cc5-587b-4524-bacd-52335a8bf46e', 'Mom', false) ON CONFLICT DO NOTHING;

INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES ('24470cc5-587b-4524-bacd-52335a8bf46e', 'ははおや', NULL, true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('24470cc5-587b-4524-bacd-52335a8bf46e', '母親と仲直りがしたい。', 'Aku ingin berbaikan dengan ibuku.') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('24470cc5-587b-4524-bacd-52335a8bf46e', '母親とそのかれ氏、気持ちがだんだんはなれていっちゃったみたいで、けっきょく別れたんだよね。', 'Ibu saya dan pacarnya akhirnya putus karena tampaknya mereka perlahan-lahan semakin menjauh.') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('24470cc5-587b-4524-bacd-52335a8bf46e', '「ごめんなさい。明日のランチ、キャンセルしなくちゃいけなくなったの。母親がちょっと体調崩しちゃって。」 「気にしないで。また今度、会いましょう。それより、お母様、早く良くなるといいわね。」', '“Maaf, tapi aku harus membatalkan makan siang besok. Ibuku sakit.” "Bukan masalah besar. Ayo kita bertemu lain kali. Kuharap ibumu segera sembuh."') ON CONFLICT DO NOTHING;

INSERT INTO public.items (id, type, character, slug, level, rank_id, meaning_mnemonic, description) VALUES ('fa8ba0d1-f059-4dee-a658-0bff58fa0641', 'vocabulary', '集まる', '集まる', 2, 'c90d1e2f-3a4b-5c6d-7e8f-9a0b1c2d3e4f', 'Saya yakin Anda ingat 集める yang artinya "mengumpulkan". Hal ini mirip dengan itu, hanya saja Anda tidak melakukan tindakan pengumpulan, melainkan terjadi begitu saja. Alih-alih "mengumpulkan", itu berarti bersatu. Anda dapat mengingat hal ini karena kawanan Marus (si kucing) akan berkumpul di satu tempat jika mereka merasakan adanya kotak di sana.', 'Saya yakin Anda ingat 集める yang artinya "mengumpulkan". Hal ini mirip dengan itu, hanya saja Anda tidak melakukan tindakan pengumpulan, melainkan terjadi begitu saja. Alih-alih "mengumpulkan", itu berarti bersatu. Anda dapat mengingat hal ini karena kawanan Marus (si kucing) akan berkumpul di satu tempat jika mereka merasakan adanya kotak di sana.') ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, character = EXCLUDED.character, slug = EXCLUDED.slug, level = EXCLUDED.level, rank_id = EXCLUDED.rank_id, meaning_mnemonic = EXCLUDED.meaning_mnemonic, description = EXCLUDED.description;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('fa8ba0d1-f059-4dee-a658-0bff58fa0641', 'Untuk Datang Bersama', true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('fa8ba0d1-f059-4dee-a658-0bff58fa0641', 'To Gather', false) ON CONFLICT DO NOTHING;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('fa8ba0d1-f059-4dee-a658-0bff58fa0641', 'To Be Gathered', false) ON CONFLICT DO NOTHING;

INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES ('fa8ba0d1-f059-4dee-a658-0bff58fa0641', 'あつまる', NULL, true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('fa8ba0d1-f059-4dee-a658-0bff58fa0641', 'クラウドファンディングで、こんなにたくさんのお金が集まりました。', 'Uang sebanyak ini dikumpulkan melalui crowdfunding.') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('fa8ba0d1-f059-4dee-a658-0bff58fa0641', '社員旅行は、全社員が集まるいいき会になります。', 'Mundurnya perusahaan memberikan kesempatan kepada semua pekerja untuk berkumpul.') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('fa8ba0d1-f059-4dee-a658-0bff58fa0641', '見て！あそこにヤンキーたちがたくさん集まってるよ。', 'Lihat! Sekelompok penjahat berkumpul di sana!') ON CONFLICT DO NOTHING;

INSERT INTO public.items (id, type, character, slug, level, rank_id, meaning_mnemonic, description) VALUES ('928e29c1-d6f0-41db-b1c9-e0c5fc72877e', 'vocabulary', '開く', '開く', 2, 'c90d1e2f-3a4b-5c6d-7e8f-9a0b1c2d3e4f', 'Anda seharusnya sudah tahu 開ける sekarang. Kata ini mirip dengan itu, hanya saja ada hubungannya dengan saat segala sesuatunya terbuka. Tapi itu sama saja. Artinya juga terbuka.', 'Anda seharusnya sudah tahu 開ける sekarang. Kata ini mirip dengan itu, hanya saja ada hubungannya dengan saat segala sesuatunya terbuka. Tapi itu sama saja. Artinya juga terbuka.') ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, character = EXCLUDED.character, slug = EXCLUDED.slug, level = EXCLUDED.level, rank_id = EXCLUDED.rank_id, meaning_mnemonic = EXCLUDED.meaning_mnemonic, description = EXCLUDED.description;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('928e29c1-d6f0-41db-b1c9-e0c5fc72877e', 'Untuk Membuka', true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('928e29c1-d6f0-41db-b1c9-e0c5fc72877e', 'To Be Open', false) ON CONFLICT DO NOTHING;

INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES ('928e29c1-d6f0-41db-b1c9-e0c5fc72877e', 'あく', NULL, true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('928e29c1-d6f0-41db-b1c9-e0c5fc72877e', 'このお店は何時に開きますか。', 'Jam berapa toko ini buka?') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('928e29c1-d6f0-41db-b1c9-e0c5fc72877e', '社会のまどが開いていますよ。', 'Lalat Anda terbuka.') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('928e29c1-d6f0-41db-b1c9-e0c5fc72877e', '「すみません。トーフグ博物館は明日は開いてますか？」「開いてますよ。」', '“Maaf, apakah Museum Tofugu buka besok?” "Ya, itu terbuka."') ON CONFLICT DO NOTHING;

INSERT INTO public.items (id, type, character, slug, level, rank_id, meaning_mnemonic, description) VALUES ('da1ef08e-2d0a-405a-ba7b-85f8a6caecbf', 'vocabulary', '歌う', '歌う', 2, 'c90d1e2f-3a4b-5c6d-7e8f-9a0b1c2d3e4f', 'Kata ini terdiri dari kanji dengan hiragana ditempelkan. Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanji itu sendiri artinya lagu jadi versi kosakata kata kerjanya adalah menyanyi, karena kamu tidak "menyanyi", kamu "bernyanyi".', 'Kata ini terdiri dari kanji dengan hiragana ditempelkan. Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanji itu sendiri artinya lagu jadi versi kosakata kata kerjanya adalah menyanyi, karena kamu tidak "menyanyi", kamu "bernyanyi".') ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, character = EXCLUDED.character, slug = EXCLUDED.slug, level = EXCLUDED.level, rank_id = EXCLUDED.rank_id, meaning_mnemonic = EXCLUDED.meaning_mnemonic, description = EXCLUDED.description;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('da1ef08e-2d0a-405a-ba7b-85f8a6caecbf', 'Bernyanyi', true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES ('da1ef08e-2d0a-405a-ba7b-85f8a6caecbf', 'うたう', NULL, true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('da1ef08e-2d0a-405a-ba7b-85f8a6caecbf', '歌う時、ふっきんに力を入れるようにするといいよ。', 'Saat Anda bernyanyi, Anda harus menjaga perut Anda tetap kencang.') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('da1ef08e-2d0a-405a-ba7b-85f8a6caecbf', '人前で歌うのはすきじゃないんです。', 'Aku tidak suka bernyanyi di depan orang banyak.') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('da1ef08e-2d0a-405a-ba7b-85f8a6caecbf', '「外は雨が降ってるね。外出せずに家で歌でも歌いたいな。」「じゃあ、こうしよう。今夜は出かけるのをやめよう。で、私が夕食を作るから、あなたは私のために歌ってよ。」', '"Di luar sedang hujan. Aku hanya ingin diam di dalam dan bernyanyi." "Akan kuberitahu padamu. Mari kita menginap di sini malam ini dan aku akan membuatkan makan malam untukmu jika kamu mau menyanyikan lagu untukku."') ON CONFLICT DO NOTHING;

INSERT INTO public.items (id, type, character, slug, level, rank_id, meaning_mnemonic, description) VALUES ('70a05f50-1b16-456a-9a6e-3f4fa016fa32', 'vocabulary', '入館料', '入館料', 2, 'c90d1e2f-3a4b-5c6d-7e8f-9a0b1c2d3e4f', 'Biaya memasuki gedung umum adalah biaya masuk. Harus membayarnya jika Anda ingin masuk ke dalam.', 'Biaya memasuki gedung umum adalah biaya masuk. Harus membayarnya jika Anda ingin masuk ke dalam.') ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, character = EXCLUDED.character, slug = EXCLUDED.slug, level = EXCLUDED.level, rank_id = EXCLUDED.rank_id, meaning_mnemonic = EXCLUDED.meaning_mnemonic, description = EXCLUDED.description;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('70a05f50-1b16-456a-9a6e-3f4fa016fa32', 'Biaya Pendaftaran', true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('70a05f50-1b16-456a-9a6e-3f4fa016fa32', 'Entrance Fee', false) ON CONFLICT DO NOTHING;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('70a05f50-1b16-456a-9a6e-3f4fa016fa32', 'Entry Fee', false) ON CONFLICT DO NOTHING;

INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES ('70a05f50-1b16-456a-9a6e-3f4fa016fa32', 'にゅうかんりょう', NULL, true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('70a05f50-1b16-456a-9a6e-3f4fa016fa32', '入口で入館料をはらってください。', 'Silakan membayar biaya masuk di pintu masuk.') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('70a05f50-1b16-456a-9a6e-3f4fa016fa32', 'トーフグはく物館の入館料は高すぎます。', 'Biaya masuk Museum Tofugu terlalu mahal.') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('70a05f50-1b16-456a-9a6e-3f4fa016fa32', '入館料、もう10％値引きしていただけませんかねぇ？', 'Bisakah Anda memberi kami tambahan diskon sepuluh persen dari biaya masuk?') ON CONFLICT DO NOTHING;

INSERT INTO public.items (id, type, character, slug, level, rank_id, meaning_mnemonic, description) VALUES ('0b725f55-29d9-4232-a3ca-63339e2162c0', 'vocabulary', '映画館', '映画館', 2, 'c90d1e2f-3a4b-5c6d-7e8f-9a0b1c2d3e4f', 'Mudah-mudahan Anda pernah melihat 映画 di level 13. Gedung umum untuk film (映画) adalah bioskop.', 'Mudah-mudahan Anda pernah melihat 映画 di level 13. Gedung umum untuk film (映画) adalah bioskop.') ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, character = EXCLUDED.character, slug = EXCLUDED.slug, level = EXCLUDED.level, rank_id = EXCLUDED.rank_id, meaning_mnemonic = EXCLUDED.meaning_mnemonic, description = EXCLUDED.description;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('0b725f55-29d9-4232-a3ca-63339e2162c0', 'Bioskop', true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('0b725f55-29d9-4232-a3ca-63339e2162c0', 'Cinema', false) ON CONFLICT DO NOTHING;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('0b725f55-29d9-4232-a3ca-63339e2162c0', 'Movie Theatre', false) ON CONFLICT DO NOTHING;

INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES ('0b725f55-29d9-4232-a3ca-63339e2162c0', 'えいがかん', NULL, true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('0b725f55-29d9-4232-a3ca-63339e2162c0', '次にこの町にくる時には、この映画館が完成して町なみもずいぶん変わってるんだろうね。', 'Saat saya kembali ke kota ini lain kali, saya kira bioskop ini akan selesai dibangun dan akan sedikit mengubah pemandangan kota.') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('0b725f55-29d9-4232-a3ca-63339e2162c0', 'れん休も終わったし、あの映画館多分しばらくガラガラだろうね。', 'Libur panjang telah berakhir, jadi bioskop mungkin akan sepi untuk sementara waktu.') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('0b725f55-29d9-4232-a3ca-63339e2162c0', '「今夜、映画館に行かない？」「そうできればいいんだけど、このレポートを仕上げなくちゃいけないんだ。」', '"Apakah kamu ingin pergi ke bioskop malam ini?" "Saya harap saya bisa, tetapi saya harus menyelesaikan makalah ini."') ON CONFLICT DO NOTHING;

INSERT INTO public.items (id, type, character, slug, level, rank_id, meaning_mnemonic, description) VALUES ('525208c8-6c04-4d61-9868-8abce7b72c74', 'vocabulary', '水銀', '水銀', 2, 'c90d1e2f-3a4b-5c6d-7e8f-9a0b1c2d3e4f', 'Ini menyenangkan. Air perak adalah merkuri, yang sangat masuk akal. Merkuri berbentuk cair seperti air, tetapi seluruhnya berwarna perak seperti perak. Jadi air perak bukanlah air mineral baru yang bisa Anda dapatkan seharga $4 di toko, melainkan merkuri! Atau air raksa, jika Anda mau.', 'Ini menyenangkan. Air perak adalah merkuri, yang sangat masuk akal. Merkuri berbentuk cair seperti air, tetapi seluruhnya berwarna perak seperti perak. Jadi air perak bukanlah air mineral baru yang bisa Anda dapatkan seharga $4 di toko, melainkan merkuri! Atau air raksa, jika Anda mau.') ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, character = EXCLUDED.character, slug = EXCLUDED.slug, level = EXCLUDED.level, rank_id = EXCLUDED.rank_id, meaning_mnemonic = EXCLUDED.meaning_mnemonic, description = EXCLUDED.description;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('525208c8-6c04-4d61-9868-8abce7b72c74', 'Merkuri', true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('525208c8-6c04-4d61-9868-8abce7b72c74', 'Quicksilver', false) ON CONFLICT DO NOTHING;

INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES ('525208c8-6c04-4d61-9868-8abce7b72c74', 'すいぎん', NULL, true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('525208c8-6c04-4d61-9868-8abce7b72c74', '海魚の体が大きいほど体内にたくさん水銀がたまっています。', 'Semakin besar ikan laut, semakin banyak merkuri dalam tubuhnya.') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('525208c8-6c04-4d61-9868-8abce7b72c74', '水星と水銀はえい語で共にマーキュリーと言いますが、これはぐう然でしょうか。', 'Saya bertanya-tanya apakah kebetulan kita menyebut Merkurius, planet, dan merkuri, substansinya, "merkuri" dalam bahasa Inggris.') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('525208c8-6c04-4d61-9868-8abce7b72c74', '昔はみんな水銀体温計をお尻に差し込んでいたんだよね。めっちゃうける。', 'Lucu sekali orang-orang biasa memasukkan termometer air raksa ke pantat mereka.') ON CONFLICT DO NOTHING;

INSERT INTO public.items (id, type, character, slug, level, rank_id, meaning_mnemonic, description) VALUES ('d953d571-63cb-45db-b406-56bf5cc57045', 'vocabulary', '銀', '銀', 2, 'c90d1e2f-3a4b-5c6d-7e8f-9a0b1c2d3e4f', 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.', 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.') ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, character = EXCLUDED.character, slug = EXCLUDED.slug, level = EXCLUDED.level, rank_id = EXCLUDED.rank_id, meaning_mnemonic = EXCLUDED.meaning_mnemonic, description = EXCLUDED.description;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('d953d571-63cb-45db-b406-56bf5cc57045', 'Perak', true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES ('d953d571-63cb-45db-b406-56bf5cc57045', 'ぎん', NULL, true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('d953d571-63cb-45db-b406-56bf5cc57045', 'けっこん指わは、銀か金、どちらにする？', 'Untuk cincin kawin Anda, mana yang Anda pilih: perak atau emas?') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('d953d571-63cb-45db-b406-56bf5cc57045', 'いくつになっても銀せいひんがすきです。', 'Tidak peduli berapa umurku, aku tetap menyukai benda-benda perak.') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('d953d571-63cb-45db-b406-56bf5cc57045', '赤信号で、銀の軽トラが私の横に止まった。', 'Di lampu merah, sebuah truk pick-up berwarna perak berhenti di sampingku.') ON CONFLICT DO NOTHING;

INSERT INTO public.items (id, type, character, slug, level, rank_id, meaning_mnemonic, description) VALUES ('0fd3ea6d-1c65-4e0c-a8b0-a5a63ef73ab2', 'vocabulary', '銀色', '銀色', 2, 'c90d1e2f-3a4b-5c6d-7e8f-9a0b1c2d3e4f', 'Warna silvernya cuma silver (warnanya).', 'Warna silvernya cuma silver (warnanya).') ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, character = EXCLUDED.character, slug = EXCLUDED.slug, level = EXCLUDED.level, rank_id = EXCLUDED.rank_id, meaning_mnemonic = EXCLUDED.meaning_mnemonic, description = EXCLUDED.description;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('0fd3ea6d-1c65-4e0c-a8b0-a5a63ef73ab2', 'Perak', true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('0fd3ea6d-1c65-4e0c-a8b0-a5a63ef73ab2', 'Silver Color', false) ON CONFLICT DO NOTHING;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('0fd3ea6d-1c65-4e0c-a8b0-a5a63ef73ab2', 'Color Silver', false) ON CONFLICT DO NOTHING;

INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES ('0fd3ea6d-1c65-4e0c-a8b0-a5a63ef73ab2', 'ぎんいろ', NULL, true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('0fd3ea6d-1c65-4e0c-a8b0-a5a63ef73ab2', '初めにお伝えしていたように、これを銀色にぬり直してください。', 'Tolong cat ulang perak ini seperti yang saya katakan pertama kali.') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('0fd3ea6d-1c65-4e0c-a8b0-a5a63ef73ab2', 'コウイチの銀色のヒゲをわたしに売ってくれませんか？', 'Bisakah Anda menjual kumis perak Koichi kepada saya?') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('0fd3ea6d-1c65-4e0c-a8b0-a5a63ef73ab2', '私のダンスの相手は、あの銀色のコスチュームを着たフグって男よ。', 'Rekan dansaku adalah pria berkostum perak itu. Namanya Fugu.') ON CONFLICT DO NOTHING;

INSERT INTO public.items (id, type, character, slug, level, rank_id, meaning_mnemonic, description) VALUES ('54a75b41-995d-4239-a2b7-e91d01f5bde2', 'vocabulary', '銀行', '銀行', 2, 'c90d1e2f-3a4b-5c6d-7e8f-9a0b1c2d3e4f', 'Saatnya mengambil perak Anda dari bank.', 'Saatnya mengambil perak Anda dari bank.') ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, character = EXCLUDED.character, slug = EXCLUDED.slug, level = EXCLUDED.level, rank_id = EXCLUDED.rank_id, meaning_mnemonic = EXCLUDED.meaning_mnemonic, description = EXCLUDED.description;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('54a75b41-995d-4239-a2b7-e91d01f5bde2', 'Bank', true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES ('54a75b41-995d-4239-a2b7-e91d01f5bde2', 'ぎんこう', NULL, true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('54a75b41-995d-4239-a2b7-e91d01f5bde2', '銀行にお金を下ろしに行かないといけないんです。', 'Saya harus pergi ke bank untuk menarik sejumlah uang tunai.') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('54a75b41-995d-4239-a2b7-e91d01f5bde2', '一円を笑う者は一円に泣くということわざがあるので、銀行に一円をあずけに行くことにしました。', 'Ada pepatah yang mengatakan seseorang yang menertawakan satu yen pada akhirnya akan menangisi satu yen, jadi saya memutuskan untuk pergi ke bank untuk memasukkan satu yen ke rekening saya.') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('54a75b41-995d-4239-a2b7-e91d01f5bde2', '銀行を強盗した人は牢屋行きなのに、銀行が人々からお金を奪ったら、ボーナスがもらえるんだよ。それってすごく不公平じゃない？', 'Ketika orang merampok bank, mereka masuk penjara. Ketika bank merampok orang, mereka mendapat bonus. Ini sangat tidak adil, bukan?') ON CONFLICT DO NOTHING;

INSERT INTO public.items (id, type, character, slug, level, rank_id, meaning_mnemonic, description) VALUES ('278e5ff6-e3ba-451e-a25d-ce1cc6da5775', 'vocabulary', '話題', '話題', 2, 'c90d1e2f-3a4b-5c6d-7e8f-9a0b1c2d3e4f', 'Topik yang sedang kita bicarakan adalah topik yang sedang kita bicarakan. Itu adalah topik pembicaraan kami.', 'Topik yang sedang kita bicarakan adalah topik yang sedang kita bicarakan. Itu adalah topik pembicaraan kami.') ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, character = EXCLUDED.character, slug = EXCLUDED.slug, level = EXCLUDED.level, rank_id = EXCLUDED.rank_id, meaning_mnemonic = EXCLUDED.meaning_mnemonic, description = EXCLUDED.description;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('278e5ff6-e3ba-451e-a25d-ce1cc6da5775', 'Topik', true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('278e5ff6-e3ba-451e-a25d-ce1cc6da5775', 'Subject', false) ON CONFLICT DO NOTHING;

INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES ('278e5ff6-e3ba-451e-a25d-ce1cc6da5775', 'わだい', NULL, true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('278e5ff6-e3ba-451e-a25d-ce1cc6da5775', '友だちと話題のフグをかいに行きました。', 'Kami pergi membeli fugu yang banyak dibicarakan.') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('278e5ff6-e3ba-451e-a25d-ce1cc6da5775', '明くる朝、オフィスに行くと、コウイチのけっこんしきとよく日の電げきりこんの話題で持ちきりだった。', 'Ketika saya pergi ke kantor keesokan paginya, semua orang membicarakan tentang pernikahan Koichi dan perceraian mendadaknya keesokan harinya.') ON CONFLICT DO NOTHING;

