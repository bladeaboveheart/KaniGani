INSERT INTO public.items (id, type, character, slug, level, rank_id, meaning_mnemonic, description) VALUES ('606ea189-549b-49d3-b4d9-80ecc91f0ed5', 'vocabulary', '無理', '無理', 2, 'c90d1e2f-3a4b-5c6d-7e8f-9a0b1c2d3e4f', 'Jika Anda tidak dapat melakukan apa pun dengan alasan yang masuk akal, maka apa yang Anda coba lakukan adalah tidak masuk akal dan mungkin benar-benar mustahil. Jika Anda masih mencobanya, Anda mungkin berlebihan.', 'Jika Anda tidak dapat melakukan apa pun dengan alasan yang masuk akal, maka apa yang Anda coba lakukan adalah tidak masuk akal dan mungkin benar-benar mustahil. Jika Anda masih mencobanya, Anda mungkin berlebihan.') ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, character = EXCLUDED.character, slug = EXCLUDED.slug, level = EXCLUDED.level, rank_id = EXCLUDED.rank_id, meaning_mnemonic = EXCLUDED.meaning_mnemonic, description = EXCLUDED.description;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('606ea189-549b-49d3-b4d9-80ecc91f0ed5', 'Tidak mungkin', true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('606ea189-549b-49d3-b4d9-80ecc91f0ed5', 'Unreasonable', false) ON CONFLICT DO NOTHING;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('606ea189-549b-49d3-b4d9-80ecc91f0ed5', 'Overdoing', false) ON CONFLICT DO NOTHING;

INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES ('606ea189-549b-49d3-b4d9-80ecc91f0ed5', 'むり', NULL, true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('606ea189-549b-49d3-b4d9-80ecc91f0ed5', 'コウイチはニンニクは便ぴを治す薬だって言ってたけど、ニンニクで便ぴを治すのは無理でしょ。', 'Koichi mengatakan bahwa bawang putih adalah obat untuk sembelit, tapi menurut saya menyembuhkan sembelit dengan bawang putih adalah hal yang mustahil.') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('606ea189-549b-49d3-b4d9-80ecc91f0ed5', 'コウイチが無理なん題をふっかけても、トーフグチームは無理してなんとかやってのける。', 'Meskipun Koichi mengajukan tuntutan yang tidak masuk akal, tim Tofugu berhasil memenuhinya dengan bekerja terlalu keras.') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('606ea189-549b-49d3-b4d9-80ecc91f0ed5', '自分の肘を舐めるのは無理です。', 'Tidak mungkin menjilat siku Anda sendiri.') ON CONFLICT DO NOTHING;

INSERT INTO public.items (id, type, character, slug, level, rank_id, meaning_mnemonic, description) VALUES ('a99a47a3-3e69-488f-8996-210ed163848e', 'vocabulary', '毎朝', '毎朝', 2, 'c90d1e2f-3a4b-5c6d-7e8f-9a0b1c2d3e4f', 'Setiap pagi adalah setiap pagi!', 'Setiap pagi adalah setiap pagi!') ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, character = EXCLUDED.character, slug = EXCLUDED.slug, level = EXCLUDED.level, rank_id = EXCLUDED.rank_id, meaning_mnemonic = EXCLUDED.meaning_mnemonic, description = EXCLUDED.description;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('a99a47a3-3e69-488f-8996-210ed163848e', 'Setiap Pagi', true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES ('a99a47a3-3e69-488f-8996-210ed163848e', 'まいあさ', NULL, true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('a99a47a3-3e69-488f-8996-210ed163848e', '毎朝、シャワーをあびます。', 'Aku mandi setiap pagi') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('a99a47a3-3e69-488f-8996-210ed163848e', '毎朝、本当に楽しかったです。ありがとうございました。', 'Aku bersenang-senang bersamamu setiap pagi. Terima kasih banyak.') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('a99a47a3-3e69-488f-8996-210ed163848e', '毎朝ラジオ体操をします。', 'Saya melakukan latihan radio setiap pagi.') ON CONFLICT DO NOTHING;

INSERT INTO public.items (id, type, character, slug, level, rank_id, meaning_mnemonic, description) VALUES ('3809193a-8258-400b-a684-8e0484c5d8a2', 'vocabulary', '作業', '作業', 2, 'c90d1e2f-3a4b-5c6d-7e8f-9a0b1c2d3e4f', 'Jika Anda ingin membuat bisnis sukses, Anda harus siap melakukan banyak pekerjaan.', 'Jika Anda ingin membuat bisnis sukses, Anda harus siap melakukan banyak pekerjaan.') ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, character = EXCLUDED.character, slug = EXCLUDED.slug, level = EXCLUDED.level, rank_id = EXCLUDED.rank_id, meaning_mnemonic = EXCLUDED.meaning_mnemonic, description = EXCLUDED.description;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('3809193a-8258-400b-a684-8e0484c5d8a2', 'Bekerja', true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('3809193a-8258-400b-a684-8e0484c5d8a2', 'Operation', false) ON CONFLICT DO NOTHING;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('3809193a-8258-400b-a684-8e0484c5d8a2', 'Manufacturing', false) ON CONFLICT DO NOTHING;

INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES ('3809193a-8258-400b-a684-8e0484c5d8a2', 'さぎょう', NULL, true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('3809193a-8258-400b-a684-8e0484c5d8a2', 'なかなか作業がはかどらないんです。', 'Saya tidak membuat kemajuan apa pun dalam pekerjaan saya.') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('3809193a-8258-400b-a684-8e0484c5d8a2', 'きのうは、一日中作業ハンドブックを作る作業をしていました。', 'Kemarin, saya mengerjakan buku pegangan pengoperasian sepanjang hari.') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('3809193a-8258-400b-a684-8e0484c5d8a2', 'あなたのせいで、製造作業が全て停止してしまったってこと、分かっていますか？', 'Apakah Anda memahami bahwa semua operasi manufaktur dihentikan karena Anda?') ON CONFLICT DO NOTHING;

INSERT INTO public.items (id, type, character, slug, level, rank_id, meaning_mnemonic, description) VALUES ('0b5e22a1-093b-4476-9ef0-15abc9acd4cc', 'vocabulary', '用意', '用意', 2, 'c90d1e2f-3a4b-5c6d-7e8f-9a0b1c2d3e4f', 'Ketika Anda mempunyai ide untuk suatu tugas, Anda sedang bersiap untuk benar-benar melaksanakannya. Karena itu masih sekedar ide yang masih Anda persiapkan.', 'Ketika Anda mempunyai ide untuk suatu tugas, Anda sedang bersiap untuk benar-benar melaksanakannya. Karena itu masih sekedar ide yang masih Anda persiapkan.') ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, character = EXCLUDED.character, slug = EXCLUDED.slug, level = EXCLUDED.level, rank_id = EXCLUDED.rank_id, meaning_mnemonic = EXCLUDED.meaning_mnemonic, description = EXCLUDED.description;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('0b5e22a1-093b-4476-9ef0-15abc9acd4cc', 'Persiapan', true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('0b5e22a1-093b-4476-9ef0-15abc9acd4cc', 'Arrangements', false) ON CONFLICT DO NOTHING;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('0b5e22a1-093b-4476-9ef0-15abc9acd4cc', 'Provision', false) ON CONFLICT DO NOTHING;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('0b5e22a1-093b-4476-9ef0-15abc9acd4cc', 'Getting Ready', false) ON CONFLICT DO NOTHING;

INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES ('0b5e22a1-093b-4476-9ef0-15abc9acd4cc', 'ようい', NULL, true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('0b5e22a1-093b-4476-9ef0-15abc9acd4cc', '万が一の時にそなえて、マッチとろうそくを用意しました。', 'Saya menyiapkan korek api dan lilin jika terjadi keadaan darurat.') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('0b5e22a1-093b-4476-9ef0-15abc9acd4cc', '毎週金よう日はきゅう食がないから自分でおべん当を用意しないといけないんです。', 'Karena makan siang di sekolah tidak disediakan pada hari Jumat, kami harus menyiapkan makan siang sendiri.') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('0b5e22a1-093b-4476-9ef0-15abc9acd4cc', '出所祝いの鍋パーティーの用意は全てこちらで致しますので、あなたは保釈金の用意をお願いします。', 'Kami akan melakukan semua pengaturan pesta nabe untuk merayakan pembebasan dari penjara, jadi mohon berhati-hati dalam membuat pengaturan jaminan di pihak Anda.') ON CONFLICT DO NOTHING;

INSERT INTO public.items (id, type, character, slug, level, rank_id, meaning_mnemonic, description) VALUES ('0d496769-16ff-4936-894b-8d6684d02cad', 'vocabulary', '無し', '無し', 2, 'c90d1e2f-3a4b-5c6d-7e8f-9a0b1c2d3e4f', 'Ini adalah versi kata benda dari kanji Nothing, jadi ketika kamu tidak punya apa-apa, kamu tidak punya apa-apa.', 'Ini adalah versi kata benda dari kanji Nothing, jadi ketika kamu tidak punya apa-apa, kamu tidak punya apa-apa.') ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, character = EXCLUDED.character, slug = EXCLUDED.slug, level = EXCLUDED.level, rank_id = EXCLUDED.rank_id, meaning_mnemonic = EXCLUDED.meaning_mnemonic, description = EXCLUDED.description;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('0d496769-16ff-4936-894b-8d6684d02cad', 'Tanpa', true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('0d496769-16ff-4936-894b-8d6684d02cad', 'With No', false) ON CONFLICT DO NOTHING;

INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES ('0d496769-16ff-4936-894b-8d6684d02cad', 'なし', NULL, true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('0d496769-16ff-4936-894b-8d6684d02cad', 'このブドウはたね無しだから食べやすいですよ。', 'Buah anggur ini tidak memiliki biji sehingga mudah untuk dimakan.') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('0d496769-16ff-4936-894b-8d6684d02cad', '文く無しのす晴らしいスピーチだったね。', 'Tidak diragukan lagi, itu adalah pidato yang sempurna.') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('0d496769-16ff-4936-894b-8d6684d02cad', 'この話は、一旦無しにしてもらえますか。', 'Bisakah Anda membatalkan kesepakatan ini untuk saat ini?') ON CONFLICT DO NOTHING;

INSERT INTO public.items (id, type, character, slug, level, rank_id, meaning_mnemonic, description) VALUES ('96c4aca9-4b8a-43d8-bdf8-ae97b6968abb', 'vocabulary', '水道', '水道', 2, 'c90d1e2f-3a4b-5c6d-7e8f-9a0b1c2d3e4f', 'Jalan air membawa persediaan air Anda. Di masa lalu, saluran ini disebut saluran air.', 'Jalan air membawa persediaan air Anda. Di masa lalu, saluran ini disebut saluran air.') ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, character = EXCLUDED.character, slug = EXCLUDED.slug, level = EXCLUDED.level, rank_id = EXCLUDED.rank_id, meaning_mnemonic = EXCLUDED.meaning_mnemonic, description = EXCLUDED.description;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('96c4aca9-4b8a-43d8-bdf8-ae97b6968abb', 'Pasokan Air', true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('96c4aca9-4b8a-43d8-bdf8-ae97b6968abb', 'Water Service', false) ON CONFLICT DO NOTHING;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('96c4aca9-4b8a-43d8-bdf8-ae97b6968abb', 'Waterworks', false) ON CONFLICT DO NOTHING;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('96c4aca9-4b8a-43d8-bdf8-ae97b6968abb', 'Aqueduct', false) ON CONFLICT DO NOTHING;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('96c4aca9-4b8a-43d8-bdf8-ae97b6968abb', 'Conduit', false) ON CONFLICT DO NOTHING;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('96c4aca9-4b8a-43d8-bdf8-ae97b6968abb', 'Water Line', false) ON CONFLICT DO NOTHING;

INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES ('96c4aca9-4b8a-43d8-bdf8-ae97b6968abb', 'すいどう', NULL, true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('96c4aca9-4b8a-43d8-bdf8-ae97b6968abb', 'この水道の水は、のんでも平気ですよ。', 'Air keran ini aman untuk diminum.') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('96c4aca9-4b8a-43d8-bdf8-ae97b6968abb', '水道代がはらえなかったので、水道が止められてしまいました。', 'Saya tidak bisa membayar tagihan air, jadi air saya dimatikan.') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('96c4aca9-4b8a-43d8-bdf8-ae97b6968abb', '水道が凍結してしまいました。', 'Saluran air membeku.') ON CONFLICT DO NOTHING;

INSERT INTO public.items (id, type, character, slug, level, rank_id, meaning_mnemonic, description) VALUES ('1216d478-f8ec-47d6-9976-4ef4cbbc39d1', 'vocabulary', '無言', '無言', 2, 'c90d1e2f-3a4b-5c6d-7e8f-9a0b1c2d3e4f', 'Ketika tidak ada yang ingin kau katakan, duduklah dalam diam.', 'Ketika tidak ada yang ingin kau katakan, duduklah dalam diam.') ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, character = EXCLUDED.character, slug = EXCLUDED.slug, level = EXCLUDED.level, rank_id = EXCLUDED.rank_id, meaning_mnemonic = EXCLUDED.meaning_mnemonic, description = EXCLUDED.description;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('1216d478-f8ec-47d6-9976-4ef4cbbc39d1', 'Diam', true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES ('1216d478-f8ec-47d6-9976-4ef4cbbc39d1', 'むごん', NULL, true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('1216d478-f8ec-47d6-9976-4ef4cbbc39d1', '毎晩無言電話がかかってくるんです。', 'Setiap malam saya mendapat panggilan telepon iseng tanpa suara.') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('1216d478-f8ec-47d6-9976-4ef4cbbc39d1', 'トーフグの社員たちは、無言でもくもくと仕事をしているように見えますが、実はスラックというアプリでチャットしています。', 'Para pekerja Tofugu sepertinya bekerja tanpa suara, namun sebenarnya mereka sedang mengobrol di aplikasi bernama Slack.') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('1216d478-f8ec-47d6-9976-4ef4cbbc39d1', '知らないオッサンから急に母親ってのは自分の子どもに愛情を感じるものだろうとか説教されてさぁ、びっくりして無言になっちゃったよ。', 'Tiba-tiba, seorang lelaki tak dikenal mulai menguliahiku tentang bagaimana perasaan seorang ibu terhadap anak-anaknya, dan hal itu membuatku sangat ketakutan sehingga aku terdiam.') ON CONFLICT DO NOTHING;

INSERT INTO public.items (id, type, character, slug, level, rank_id, meaning_mnemonic, description) VALUES ('cbdeb3bb-132a-4106-a67b-ba8dc7373c89', 'vocabulary', '新た', '新た', 2, 'c90d1e2f-3a4b-5c6d-7e8f-9a0b1c2d3e4f', 'Ini adalah versi kata sifat dari kanji new, jadi artinya baru juga.', 'Ini adalah versi kata sifat dari kanji new, jadi artinya baru juga.') ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, character = EXCLUDED.character, slug = EXCLUDED.slug, level = EXCLUDED.level, rank_id = EXCLUDED.rank_id, meaning_mnemonic = EXCLUDED.meaning_mnemonic, description = EXCLUDED.description;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('cbdeb3bb-132a-4106-a67b-ba8dc7373c89', 'Baru', true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('cbdeb3bb-132a-4106-a67b-ba8dc7373c89', 'Fresh', false) ON CONFLICT DO NOTHING;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('cbdeb3bb-132a-4106-a67b-ba8dc7373c89', 'Novel', false) ON CONFLICT DO NOTHING;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('cbdeb3bb-132a-4106-a67b-ba8dc7373c89', 'Newly', false) ON CONFLICT DO NOTHING;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('cbdeb3bb-132a-4106-a67b-ba8dc7373c89', 'Freshly', false) ON CONFLICT DO NOTHING;

INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES ('cbdeb3bb-132a-4106-a67b-ba8dc7373c89', 'あらた', NULL, true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('cbdeb3bb-132a-4106-a67b-ba8dc7373c89', 'コウイチが新たなオムツせいぞうぎじゅつを発明しました。', 'Koichi menemukan teknik pembuatan popok baru.') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('cbdeb3bb-132a-4106-a67b-ba8dc7373c89', '九月は自分にとって新たなスタートになりそうな予かんがする。', 'Saya merasa bulan September akan menjadi awal baru bagi saya.') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('cbdeb3bb-132a-4106-a67b-ba8dc7373c89', 'この小説は、読み返す度に新たな発見がある。', 'Setiap kali saya membaca ulang novel ini, saya menemukan penemuan baru.') ON CONFLICT DO NOTHING;

INSERT INTO public.items (id, type, character, slug, level, rank_id, meaning_mnemonic, description) VALUES ('d2e578b6-a899-48c6-9ad8-24de966a694f', 'vocabulary', '集まり', '集まり', 2, 'c90d1e2f-3a4b-5c6d-7e8f-9a0b1c2d3e4f', 'Ini adalah versi kata benda dari kanji berkumpul, jadi artinya berkumpul.', 'Ini adalah versi kata benda dari kanji berkumpul, jadi artinya berkumpul.') ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, character = EXCLUDED.character, slug = EXCLUDED.slug, level = EXCLUDED.level, rank_id = EXCLUDED.rank_id, meaning_mnemonic = EXCLUDED.meaning_mnemonic, description = EXCLUDED.description;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('d2e578b6-a899-48c6-9ad8-24de966a694f', 'Berkumpul', true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('d2e578b6-a899-48c6-9ad8-24de966a694f', 'Meeting', false) ON CONFLICT DO NOTHING;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('d2e578b6-a899-48c6-9ad8-24de966a694f', 'Assembly', false) ON CONFLICT DO NOTHING;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('d2e578b6-a899-48c6-9ad8-24de966a694f', 'Party', false) ON CONFLICT DO NOTHING;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('d2e578b6-a899-48c6-9ad8-24de966a694f', 'Collection', false) ON CONFLICT DO NOTHING;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('d2e578b6-a899-48c6-9ad8-24de966a694f', 'Get Together', false) ON CONFLICT DO NOTHING;

INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES ('d2e578b6-a899-48c6-9ad8-24de966a694f', 'あつまり', NULL, true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('d2e578b6-a899-48c6-9ad8-24de966a694f', '今日は研究室の集まりがある。', 'Ada pertemuan dengan orang-orang dari lab hari ini.') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('d2e578b6-a899-48c6-9ad8-24de966a694f', 'なんか今日の飲み会、集まりも悪かったし、グダグダだったね。', 'Tidak banyak orang yang hadir di pesta minum hari ini dan juga sangat tidak terorganisir, ya?') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('d2e578b6-a899-48c6-9ad8-24de966a694f', '正月の集まりに弟が彼女を連れてきやがった。', 'Adik laki-laki saya membawa pacarnya ke pertemuan Tahun Baru kami.') ON CONFLICT DO NOTHING;

INSERT INTO public.items (id, type, character, slug, level, rank_id, meaning_mnemonic, description) VALUES ('7d5a9c65-e022-4c05-8c7a-f6538a1f9b98', 'vocabulary', '親分', '親分', 2, 'c90d1e2f-3a4b-5c6d-7e8f-9a0b1c2d3e4f', 'Siapa yang menjadi orang tua bagi Anda? Bosmu! Mereka membuatnya agar Anda bisa menjaga diri sendiri dengan membayar Anda, bukan? Mereka akan mematahkan kaki seseorang yang melintasimu. Namun obat-obatan tersebut tidak akan membantu Anda kembali tidur setelah mengalami mimpi buruk. Jadi mereka hanya sebagian seperti orang tua.', 'Siapa yang menjadi orang tua bagi Anda? Bosmu! Mereka membuatnya agar Anda bisa menjaga diri sendiri dengan membayar Anda, bukan? Mereka akan mematahkan kaki seseorang yang melintasimu. Namun obat-obatan tersebut tidak akan membantu Anda kembali tidur setelah mengalami mimpi buruk. Jadi mereka hanya sebagian seperti orang tua.') ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, character = EXCLUDED.character, slug = EXCLUDED.slug, level = EXCLUDED.level, rank_id = EXCLUDED.rank_id, meaning_mnemonic = EXCLUDED.meaning_mnemonic, description = EXCLUDED.description;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('7d5a9c65-e022-4c05-8c7a-f6538a1f9b98', 'Bos', true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('7d5a9c65-e022-4c05-8c7a-f6538a1f9b98', 'Kingpin', false) ON CONFLICT DO NOTHING;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('7d5a9c65-e022-4c05-8c7a-f6538a1f9b98', 'Chief', false) ON CONFLICT DO NOTHING;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('7d5a9c65-e022-4c05-8c7a-f6538a1f9b98', 'Head', false) ON CONFLICT DO NOTHING;

INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES ('7d5a9c65-e022-4c05-8c7a-f6538a1f9b98', 'おやぶん', NULL, true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('7d5a9c65-e022-4c05-8c7a-f6538a1f9b98', '地下道でヤクザの親分とすれちがったんだ。', 'Saya berjalan melewati gembong yakuza di jalan bawah tanah.') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('7d5a9c65-e022-4c05-8c7a-f6538a1f9b98', 'コウイチとビエトではどちらが親分でどちらが子分ですか。', 'Antara Koichi dan Viet, Mana Bos dan Mana Anteknya?') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('7d5a9c65-e022-4c05-8c7a-f6538a1f9b98', '親分にバレたら大目玉を食らうぞ。', 'Ketua akan memarahi kita jika kita membiarkannya lolos.') ON CONFLICT DO NOTHING;

INSERT INTO public.items (id, type, character, slug, level, rank_id, meaning_mnemonic, description) VALUES ('9c0f248a-cf9f-4a0a-b0fa-83062bda03b4', 'vocabulary', '意図的', '意図的', 2, 'c90d1e2f-3a4b-5c6d-7e8f-9a0b1c2d3e4f', 'Anda tidak akan memasukkan ide Anda ke dalam format seperti diagram jika tidak disengaja. Melakukan hal itu membutuhkan banyak usaha. Jadi Anda hanya bisa membuat diagram seperti itu dengan sengaja!', 'Anda tidak akan memasukkan ide Anda ke dalam format seperti diagram jika tidak disengaja. Melakukan hal itu membutuhkan banyak usaha. Jadi Anda hanya bisa membuat diagram seperti itu dengan sengaja!') ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, character = EXCLUDED.character, slug = EXCLUDED.slug, level = EXCLUDED.level, rank_id = EXCLUDED.rank_id, meaning_mnemonic = EXCLUDED.meaning_mnemonic, description = EXCLUDED.description;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('9c0f248a-cf9f-4a0a-b0fa-83062bda03b4', 'Disengaja', true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('9c0f248a-cf9f-4a0a-b0fa-83062bda03b4', 'On Purpose', false) ON CONFLICT DO NOTHING;

INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES ('9c0f248a-cf9f-4a0a-b0fa-83062bda03b4', 'いとてき', NULL, true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('9c0f248a-cf9f-4a0a-b0fa-83062bda03b4', 'コウイチは、トーフグ社員の基本給を、意図的に引き上げた。', 'Koichi sengaja menaikkan gaji pokok karyawan Tofugu.') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('9c0f248a-cf9f-4a0a-b0fa-83062bda03b4', 'でもそれちょっと、意図的な作り話っぽくない？', 'Tapi bukankah menurut Anda itu terdengar seperti cerita yang sengaja dibuat-buat?') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('9c0f248a-cf9f-4a0a-b0fa-83062bda03b4', '意図的に情報を操作している奴がいる。', 'Ada seorang pria yang sengaja memanipulasi berita.') ON CONFLICT DO NOTHING;

INSERT INTO public.items (id, type, character, slug, level, rank_id, meaning_mnemonic, description) VALUES ('531a9bca-6dcf-4edc-a63d-fc70af69451a', 'vocabulary', '本質', '本質', 2, 'c90d1e2f-3a4b-5c6d-7e8f-9a0b1c2d3e4f', 'Kualitas sebenarnya dari sesuatu adalah esensinya, atau sifat aslinya. Entah itu baik atau buruk, itu lain cerita.', 'Kualitas sebenarnya dari sesuatu adalah esensinya, atau sifat aslinya. Entah itu baik atau buruk, itu lain cerita.') ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, character = EXCLUDED.character, slug = EXCLUDED.slug, level = EXCLUDED.level, rank_id = EXCLUDED.rank_id, meaning_mnemonic = EXCLUDED.meaning_mnemonic, description = EXCLUDED.description;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('531a9bca-6dcf-4edc-a63d-fc70af69451a', 'Esensi', true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('531a9bca-6dcf-4edc-a63d-fc70af69451a', 'True Nature', false) ON CONFLICT DO NOTHING;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('531a9bca-6dcf-4edc-a63d-fc70af69451a', 'Substance', false) ON CONFLICT DO NOTHING;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('531a9bca-6dcf-4edc-a63d-fc70af69451a', 'Reality', false) ON CONFLICT DO NOTHING;

INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES ('531a9bca-6dcf-4edc-a63d-fc70af69451a', 'ほんしつ', NULL, true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('531a9bca-6dcf-4edc-a63d-fc70af69451a', '問題の本質の追求って難しいよね。', 'Mengejar inti permasalahan itu sulit, bukan?') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('531a9bca-6dcf-4edc-a63d-fc70af69451a', 'トーフグは、うらで、人間の本質をあばくための様々な実験を行っています。', 'Tofugu diam-diam melakukan berbagai eksperimen untuk mengungkap sifat asli manusia.') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('531a9bca-6dcf-4edc-a63d-fc70af69451a', 'この男は、物事の本質を見抜くことができる。', 'Pria ini mampu melihat segala sesuatu sebagaimana adanya.') ON CONFLICT DO NOTHING;

INSERT INTO public.items (id, type, character, slug, level, rank_id, meaning_mnemonic, description) VALUES ('3ac6439d-d92f-4c27-a866-e6a2d60a1775', 'vocabulary', '意地悪', '意地悪', 2, 'c90d1e2f-3a4b-5c6d-7e8f-9a0b1c2d3e4f', 'Seseorang yang gagasannya didasarkan pada kejahatan adalah orang yang jahat dan brengsek!', 'Seseorang yang gagasannya didasarkan pada kejahatan adalah orang yang jahat dan brengsek!') ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, character = EXCLUDED.character, slug = EXCLUDED.slug, level = EXCLUDED.level, rank_id = EXCLUDED.rank_id, meaning_mnemonic = EXCLUDED.meaning_mnemonic, description = EXCLUDED.description;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('3ac6439d-d92f-4c27-a866-e6a2d60a1775', 'Berbahaya', true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('3ac6439d-d92f-4c27-a866-e6a2d60a1775', 'Mean', false) ON CONFLICT DO NOTHING;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('3ac6439d-d92f-4c27-a866-e6a2d60a1775', 'Jerk', false) ON CONFLICT DO NOTHING;

INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES ('3ac6439d-d92f-4c27-a866-e6a2d60a1775', 'いじわる', NULL, true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('3ac6439d-d92f-4c27-a866-e6a2d60a1775', '折角の時間をあんな意地悪なやつのためにむだにするなんてもったいないよ。', 'Jangan buang waktu berhargamu untuk orang brengsek seperti itu.') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('3ac6439d-d92f-4c27-a866-e6a2d60a1775', 'このようせいは、かわいいけど意地悪です。', 'Peri ini lucu tapi jahat.') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('3ac6439d-d92f-4c27-a866-e6a2d60a1775', 'どうして妹に意地悪ばっかりするの！', 'Kenapa kamu begitu jahat pada adik perempuanku?!') ON CONFLICT DO NOTHING;

INSERT INTO public.items (id, type, character, slug, level, rank_id, meaning_mnemonic, description) VALUES ('ef85402c-abb4-466d-af54-e2b66c17baba', 'vocabulary', '今朝', '今朝', 2, 'c90d1e2f-3a4b-5c6d-7e8f-9a0b1c2d3e4f', 'Sekarang pagi hanyalah cara lain untuk mengatakan pagi ini. Ini adalah pagi yang paling dekat dengan saat ini!', 'Sekarang pagi hanyalah cara lain untuk mengatakan pagi ini. Ini adalah pagi yang paling dekat dengan saat ini!') ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, character = EXCLUDED.character, slug = EXCLUDED.slug, level = EXCLUDED.level, rank_id = EXCLUDED.rank_id, meaning_mnemonic = EXCLUDED.meaning_mnemonic, description = EXCLUDED.description;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('ef85402c-abb4-466d-af54-e2b66c17baba', 'Pagi Ini', true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES ('ef85402c-abb4-466d-af54-e2b66c17baba', 'けさ', NULL, true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('ef85402c-abb4-466d-af54-e2b66c17baba', '今朝、くすりを飲むのをわすれました。', 'Aku lupa meminum obatku pagi ini.') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('ef85402c-abb4-466d-af54-e2b66c17baba', '今朝から両足がいたくて思うように歩けません。', 'Kakiku sakit sejak aku bangun pagi ini, jadi aku tidak bisa bergerak sebanyak yang aku mau.') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('ef85402c-abb4-466d-af54-e2b66c17baba', '今朝ここで玉突き事故があったんだ。', 'Tadi pagi terjadi kecelakaan multi kendaraan disini.') ON CONFLICT DO NOTHING;

INSERT INTO public.items (id, type, character, slug, level, rank_id, meaning_mnemonic, description) VALUES ('8b6527bf-5460-4984-805a-48e4425b7535', 'vocabulary', '運動会', '運動会', 2, 'c90d1e2f-3a4b-5c6d-7e8f-9a0b1c2d3e4f', 'Ingat bagaimana 運動 berarti "olahraga?" Saat Anda bertemu dengan sekelompok orang untuk berolahraga, itu disebut Hari Olahraga! Ini adalah hari di sekolah-sekolah di Jepang di mana semua orang melakukan aktivitas fisik bersama! Menyenangkan dan juga sangat melelahkan!', 'Ingat bagaimana 運動 berarti "olahraga?" Saat Anda bertemu dengan sekelompok orang untuk berolahraga, itu disebut Hari Olahraga! Ini adalah hari di sekolah-sekolah di Jepang di mana semua orang melakukan aktivitas fisik bersama! Menyenangkan dan juga sangat melelahkan!') ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, character = EXCLUDED.character, slug = EXCLUDED.slug, level = EXCLUDED.level, rank_id = EXCLUDED.rank_id, meaning_mnemonic = EXCLUDED.meaning_mnemonic, description = EXCLUDED.description;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('8b6527bf-5460-4984-805a-48e4425b7535', 'Hari Olahraga', true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES ('8b6527bf-5460-4984-805a-48e4425b7535', 'うんどうかい', NULL, true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('8b6527bf-5460-4984-805a-48e4425b7535', '悪天こうで、折角楽しみにしていた運動会が中止になってしまいました。', 'Cuaca buruk merusak Hari Olahraga yang sudah lama kami nanti-nantikan.') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('8b6527bf-5460-4984-805a-48e4425b7535', '運動会の日、晴れるといいですね。', 'Saya harap cuaca cerah di hari festival olahraga.') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('8b6527bf-5460-4984-805a-48e4425b7535', '運動会の日の朝に、今日は都合が悪いから運動会を明日に変えることはできないかって聞いてきた親がいて、びっくりしたよ。', 'Kami terkejut bahwa pada pagi hari Hari Olahraga, ada orang tua yang bertanya apakah kami dapat mengubahnya ke besok hanya karena mereka tidak dapat hadir pada hari itu.') ON CONFLICT DO NOTHING;

INSERT INTO public.items (id, type, character, slug, level, rank_id, meaning_mnemonic, description) VALUES ('098b4065-3d37-4902-9a34-2325c17153c7', 'vocabulary', '着々', '着々', 2, 'c90d1e2f-3a4b-5c6d-7e8f-9a0b1c2d3e4f', 'Sesuatu yang Anda kenakan, dan kenakan lagi, adalah sesuatu yang terus Anda kenakan. Anda sering melakukannya, itu dapat diandalkan. Selain itu, jika Anda memakai sesuatu sebanyak ini, pakaian tersebut juga akan cepat rusak.', 'Sesuatu yang Anda kenakan, dan kenakan lagi, adalah sesuatu yang terus Anda kenakan. Anda sering melakukannya, itu dapat diandalkan. Selain itu, jika Anda memakai sesuatu sebanyak ini, pakaian tersebut juga akan cepat rusak.') ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, character = EXCLUDED.character, slug = EXCLUDED.slug, level = EXCLUDED.level, rank_id = EXCLUDED.rank_id, meaning_mnemonic = EXCLUDED.meaning_mnemonic, description = EXCLUDED.description;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('098b4065-3d37-4902-9a34-2325c17153c7', 'Terus', true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES ('098b4065-3d37-4902-9a34-2325c17153c7', 'ちゃくちゃく', NULL, true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('098b4065-3d37-4902-9a34-2325c17153c7', 'その会社員は、いつも着々と仕事をこなしていた。', 'Pekerja kantoran itu selalu menyelesaikan tugas dengan mantap.') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('098b4065-3d37-4902-9a34-2325c17153c7', 'プロジェクトは着々進んでいるようだね。', 'Sepertinya Anda membuat kemajuan yang stabil dalam proyek ini.') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('098b4065-3d37-4902-9a34-2325c17153c7', '手はずは着々と整っていますよ。', 'Pengaturannya telah berjalan dengan mantap.') ON CONFLICT DO NOTHING;

INSERT INTO public.items (id, type, character, slug, level, rank_id, meaning_mnemonic, description) VALUES ('fe330237-3678-4b47-818a-fec705121ae8', 'vocabulary', '山道', '山道', 2, 'c90d1e2f-3a4b-5c6d-7e8f-9a0b1c2d3e4f', 'Jalan pegunungan adalah jalan pegunungan! Atau jalur pegunungan, atau jalur pegunungan.', 'Jalan pegunungan adalah jalan pegunungan! Atau jalur pegunungan, atau jalur pegunungan.') ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, character = EXCLUDED.character, slug = EXCLUDED.slug, level = EXCLUDED.level, rank_id = EXCLUDED.rank_id, meaning_mnemonic = EXCLUDED.meaning_mnemonic, description = EXCLUDED.description;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('fe330237-3678-4b47-818a-fec705121ae8', 'Jalan Gunung', true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('fe330237-3678-4b47-818a-fec705121ae8', 'Mountain Trail', false) ON CONFLICT DO NOTHING;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('fe330237-3678-4b47-818a-fec705121ae8', 'Mountain Path', false) ON CONFLICT DO NOTHING;

INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES ('fe330237-3678-4b47-818a-fec705121ae8', 'やまみち', NULL, true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES ('fe330237-3678-4b47-818a-fec705121ae8', 'さんどう', NULL, false) ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('fe330237-3678-4b47-818a-fec705121ae8', '子犬と山道を歩きました。', 'Saya berjalan di jalur pegunungan dengan anak anjing saya.') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('fe330237-3678-4b47-818a-fec705121ae8', 'そこから山道になる。', 'Dari sana, menjadi jalur pegunungan.') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('fe330237-3678-4b47-818a-fec705121ae8', 'その先で山道に入る。', 'Di luar titik itu, jalan memasuki pegunungan.') ON CONFLICT DO NOTHING;

INSERT INTO public.items (id, type, character, slug, level, rank_id, meaning_mnemonic, description) VALUES ('72db3fcb-98b2-412b-abc9-919d17f66ad4', 'vocabulary', '無くす', '無くす', 2, 'c90d1e2f-3a4b-5c6d-7e8f-9a0b1c2d3e4f', 'Kata ini diakhiri dengan bunyi う sehingga Anda dapat menebaknya sebagai kata kerja. Kanji tidak berarti apa-apa, dan Anda tidak akan mendapatkan apa-apa jika Anda ingin membuang sesuatu, menghilangkan sesuatu, atau kehilangan sesuatu.

Kata kerja ini bersifat transitif, yaitu tindakan yang terjadi pada sesuatu. Jadi mungkin Anda sedang terbebas dari hutang, atau diskriminasi, atau stres... Apa pun itu, ada objek langsung dengan kata kerja ini!', 'Kata ini diakhiri dengan bunyi う sehingga Anda dapat menebaknya sebagai kata kerja. Kanji tidak berarti apa-apa, dan Anda tidak akan mendapatkan apa-apa jika Anda ingin membuang sesuatu, menghilangkan sesuatu, atau kehilangan sesuatu.

Kata kerja ini bersifat transitif, yaitu tindakan yang terjadi pada sesuatu. Jadi mungkin Anda sedang terbebas dari hutang, atau diskriminasi, atau stres... Apa pun itu, ada objek langsung dengan kata kerja ini!') ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, character = EXCLUDED.character, slug = EXCLUDED.slug, level = EXCLUDED.level, rank_id = EXCLUDED.rank_id, meaning_mnemonic = EXCLUDED.meaning_mnemonic, description = EXCLUDED.description;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('72db3fcb-98b2-412b-abc9-919d17f66ad4', 'Untuk Menyingkirkan Sesuatu', true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('72db3fcb-98b2-412b-abc9-919d17f66ad4', 'To Do Away With Something', false) ON CONFLICT DO NOTHING;

INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('72db3fcb-98b2-412b-abc9-919d17f66ad4', 'To Lose Something', false) ON CONFLICT DO NOTHING;

INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES ('72db3fcb-98b2-412b-abc9-919d17f66ad4', 'なくす', NULL, true) ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('72db3fcb-98b2-412b-abc9-919d17f66ad4', '日本語のアメリカなまりを無くしたいな。', 'Saya berharap saya bisa menghilangkan aksen Amerika saya dalam bahasa Jepang.') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('72db3fcb-98b2-412b-abc9-919d17f66ad4', '何よりもストレスを無くすことが大切です。', 'Yang paling penting adalah menghilangkan stres.') ON CONFLICT DO NOTHING;

INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('72db3fcb-98b2-412b-abc9-919d17f66ad4', 'ご自身が自信を無くした原因は何だと思いますか。', 'Menurut Anda apa yang menyebabkan Anda kehilangan rasa percaya diri?') ON CONFLICT DO NOTHING;

-- 5. Insert Kanji-to-Radical Prerequisites
INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '19e7d17e-44ce-4cf2-a7f1-b348ce0b10d6', id FROM public.items WHERE type = 'radical' AND slug = 'fish' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.kanji_radicals (kanji_id, radical_id)
SELECT '19e7d17e-44ce-4cf2-a7f1-b348ce0b10d6', id FROM public.items WHERE type = 'radical' AND slug = 'fish' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT 'c786e4af-48e8-4569-acee-32a37cbc5e8a', id FROM public.items WHERE type = 'radical' AND slug = 'dirt' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.kanji_radicals (kanji_id, radical_id)
SELECT 'c786e4af-48e8-4569-acee-32a37cbc5e8a', id FROM public.items WHERE type = 'radical' AND slug = 'dirt' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT 'c786e4af-48e8-4569-acee-32a37cbc5e8a', id FROM public.items WHERE type = 'radical' AND slug = 'easy' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.kanji_radicals (kanji_id, radical_id)
SELECT 'c786e4af-48e8-4569-acee-32a37cbc5e8a', id FROM public.items WHERE type = 'radical' AND slug = 'easy' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '1d863db0-dce1-4675-99b7-fe2ff8a83bd4', id FROM public.items WHERE type = 'radical' AND slug = 'gate' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.kanji_radicals (kanji_id, radical_id)
SELECT '1d863db0-dce1-4675-99b7-fe2ff8a83bd4', id FROM public.items WHERE type = 'radical' AND slug = 'gate' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '1d863db0-dce1-4675-99b7-fe2ff8a83bd4', id FROM public.items WHERE type = 'radical' AND slug = 'lantern' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.kanji_radicals (kanji_id, radical_id)
SELECT '1d863db0-dce1-4675-99b7-fe2ff8a83bd4', id FROM public.items WHERE type = 'radical' AND slug = 'lantern' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '44e904c6-78be-4597-908b-258583fb22ea', id FROM public.items WHERE type = 'radical' AND slug = 'nothing' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.kanji_radicals (kanji_id, radical_id)
SELECT '44e904c6-78be-4597-908b-258583fb22ea', id FROM public.items WHERE type = 'radical' AND slug = 'nothing' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '35b3e5d3-3529-4ab3-8e7d-63363cbfa9f3', id FROM public.items WHERE type = 'radical' AND slug = 'scooter' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.kanji_radicals (kanji_id, radical_id)
SELECT '35b3e5d3-3529-4ab3-8e7d-63363cbfa9f3', id FROM public.items WHERE type = 'radical' AND slug = 'scooter' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '35b3e5d3-3529-4ab3-8e7d-63363cbfa9f3', id FROM public.items WHERE type = 'radical' AND slug = 'neck' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.kanji_radicals (kanji_id, radical_id)
SELECT '35b3e5d3-3529-4ab3-8e7d-63363cbfa9f3', id FROM public.items WHERE type = 'radical' AND slug = 'neck' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT 'd05f740a-4d9f-47df-a59f-6bb57738d210', id FROM public.items WHERE type = 'radical' AND slug = 'sheep' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.kanji_radicals (kanji_id, radical_id)
SELECT 'd05f740a-4d9f-47df-a59f-6bb57738d210', id FROM public.items WHERE type = 'radical' AND slug = 'sheep' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT 'd05f740a-4d9f-47df-a59f-6bb57738d210', id FROM public.items WHERE type = 'radical' AND slug = 'eye' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.kanji_radicals (kanji_id, radical_id)
SELECT 'd05f740a-4d9f-47df-a59f-6bb57738d210', id FROM public.items WHERE type = 'radical' AND slug = 'eye' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT 'c63e8920-cfa1-438a-afe1-dc483ca1c692', id FROM public.items WHERE type = 'radical' AND slug = 'scooter' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.kanji_radicals (kanji_id, radical_id)
SELECT 'c63e8920-cfa1-438a-afe1-dc483ca1c692', id FROM public.items WHERE type = 'radical' AND slug = 'scooter' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT 'c63e8920-cfa1-438a-afe1-dc483ca1c692', id FROM public.items WHERE type = 'radical' AND slug = 'forehead' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.kanji_radicals (kanji_id, radical_id)
SELECT 'c63e8920-cfa1-438a-afe1-dc483ca1c692', id FROM public.items WHERE type = 'radical' AND slug = 'forehead' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT 'c63e8920-cfa1-438a-afe1-dc483ca1c692', id FROM public.items WHERE type = 'radical' AND slug = 'car' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.kanji_radicals (kanji_id, radical_id)
SELECT 'c63e8920-cfa1-438a-afe1-dc483ca1c692', id FROM public.items WHERE type = 'radical' AND slug = 'car' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '9e16675c-c30f-408b-87c7-90ffd2ce7aee', id FROM public.items WHERE type = 'radical' AND slug = 'turkey' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.kanji_radicals (kanji_id, radical_id)
SELECT '9e16675c-c30f-408b-87c7-90ffd2ce7aee', id FROM public.items WHERE type = 'radical' AND slug = 'turkey' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '9e16675c-c30f-408b-87c7-90ffd2ce7aee', id FROM public.items WHERE type = 'radical' AND slug = 'tree' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.kanji_radicals (kanji_id, radical_id)
SELECT '9e16675c-c30f-408b-87c7-90ffd2ce7aee', id FROM public.items WHERE type = 'radical' AND slug = 'tree' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '7363769c-76c8-4a6c-9bf5-9446e9863e7d', id FROM public.items WHERE type = 'radical' AND slug = 'cross' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.kanji_radicals (kanji_id, radical_id)
SELECT '7363769c-76c8-4a6c-9bf5-9446e9863e7d', id FROM public.items WHERE type = 'radical' AND slug = 'cross' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '7363769c-76c8-4a6c-9bf5-9446e9863e7d', id FROM public.items WHERE type = 'radical' AND slug = 'sun' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.kanji_radicals (kanji_id, radical_id)
SELECT '7363769c-76c8-4a6c-9bf5-9446e9863e7d', id FROM public.items WHERE type = 'radical' AND slug = 'sun' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '7363769c-76c8-4a6c-9bf5-9446e9863e7d', id FROM public.items WHERE type = 'radical' AND slug = 'moon' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.kanji_radicals (kanji_id, radical_id)
SELECT '7363769c-76c8-4a6c-9bf5-9446e9863e7d', id FROM public.items WHERE type = 'radical' AND slug = 'moon' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '206bb8b1-7845-472a-9141-7874d9d3fe70', id FROM public.items WHERE type = 'radical' AND slug = 'net' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.kanji_radicals (kanji_id, radical_id)
SELECT '206bb8b1-7845-472a-9141-7874d9d3fe70', id FROM public.items WHERE type = 'radical' AND slug = 'net' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '206bb8b1-7845-472a-9141-7874d9d3fe70', id FROM public.items WHERE type = 'radical' AND slug = 'shellfish' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.kanji_radicals (kanji_id, radical_id)
SELECT '206bb8b1-7845-472a-9141-7874d9d3fe70', id FROM public.items WHERE type = 'radical' AND slug = 'shellfish' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '901f758c-9c9b-45a9-ab14-f3f8debeda32', id FROM public.items WHERE type = 'radical' AND slug = 'bamboo' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.kanji_radicals (kanji_id, radical_id)
SELECT '901f758c-9c9b-45a9-ab14-f3f8debeda32', id FROM public.items WHERE type = 'radical' AND slug = 'bamboo' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '901f758c-9c9b-45a9-ab14-f3f8debeda32', id FROM public.items WHERE type = 'radical' AND slug = 'suit' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.kanji_radicals (kanji_id, radical_id)
SELECT '901f758c-9c9b-45a9-ab14-f3f8debeda32', id FROM public.items WHERE type = 'radical' AND slug = 'suit' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT 'c7ad89de-5bd3-4cda-973d-2fe9b9bbd084', id FROM public.items WHERE type = 'radical' AND slug = 'eat' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.kanji_radicals (kanji_id, radical_id)
SELECT 'c7ad89de-5bd3-4cda-973d-2fe9b9bbd084', id FROM public.items WHERE type = 'radical' AND slug = 'eat' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT 'c7ad89de-5bd3-4cda-973d-2fe9b9bbd084', id FROM public.items WHERE type = 'radical' AND slug = 'lack' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.kanji_radicals (kanji_id, radical_id)
SELECT 'c7ad89de-5bd3-4cda-973d-2fe9b9bbd084', id FROM public.items WHERE type = 'radical' AND slug = 'lack' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '9f10178e-ad44-4fb9-91f3-afc3a465c3f2', id FROM public.items WHERE type = 'radical' AND slug = 'eat' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.kanji_radicals (kanji_id, radical_id)
SELECT '9f10178e-ad44-4fb9-91f3-afc3a465c3f2', id FROM public.items WHERE type = 'radical' AND slug = 'eat' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '9f10178e-ad44-4fb9-91f3-afc3a465c3f2', id FROM public.items WHERE type = 'radical' AND slug = 'anti' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.kanji_radicals (kanji_id, radical_id)
SELECT '9f10178e-ad44-4fb9-91f3-afc3a465c3f2', id FROM public.items WHERE type = 'radical' AND slug = 'anti' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT 'ef0f7c9f-a157-449a-98e2-6f19e9405160', id FROM public.items WHERE type = 'radical' AND slug = 'substitute' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.kanji_radicals (kanji_id, radical_id)
SELECT 'ef0f7c9f-a157-449a-98e2-6f19e9405160', id FROM public.items WHERE type = 'radical' AND slug = 'substitute' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT 'ef0f7c9f-a157-449a-98e2-6f19e9405160', id FROM public.items WHERE type = 'radical' AND slug = 'shellfish' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.kanji_radicals (kanji_id, radical_id)
SELECT 'ef0f7c9f-a157-449a-98e2-6f19e9405160', id FROM public.items WHERE type = 'radical' AND slug = 'shellfish' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '50e8d3c1-8493-43d8-9818-5feb496eff04', id FROM public.items WHERE type = 'radical' AND slug = 'sound' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.kanji_radicals (kanji_id, radical_id)
SELECT '50e8d3c1-8493-43d8-9818-5feb496eff04', id FROM public.items WHERE type = 'radical' AND slug = 'sound' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '50e8d3c1-8493-43d8-9818-5feb496eff04', id FROM public.items WHERE type = 'radical' AND slug = 'heart' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.kanji_radicals (kanji_id, radical_id)
SELECT '50e8d3c1-8493-43d8-9818-5feb496eff04', id FROM public.items WHERE type = 'radical' AND slug = 'heart' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT 'ea1148d3-f9cf-47f9-872f-a2b43578ad7c', id FROM public.items WHERE type = 'radical' AND slug = 'stand' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.kanji_radicals (kanji_id, radical_id)
SELECT 'ea1148d3-f9cf-47f9-872f-a2b43578ad7c', id FROM public.items WHERE type = 'radical' AND slug = 'stand' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT 'ea1148d3-f9cf-47f9-872f-a2b43578ad7c', id FROM public.items WHERE type = 'radical' AND slug = 'tree' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.kanji_radicals (kanji_id, radical_id)
SELECT 'ea1148d3-f9cf-47f9-872f-a2b43578ad7c', id FROM public.items WHERE type = 'radical' AND slug = 'tree' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT 'ea1148d3-f9cf-47f9-872f-a2b43578ad7c', id FROM public.items WHERE type = 'radical' AND slug = 'axe' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.kanji_radicals (kanji_id, radical_id)
SELECT 'ea1148d3-f9cf-47f9-872f-a2b43578ad7c', id FROM public.items WHERE type = 'radical' AND slug = 'axe' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '8933b29b-c11e-4437-9272-989711ed315c', id FROM public.items WHERE type = 'radical' AND slug = 'spikes' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.kanji_radicals (kanji_id, radical_id)
SELECT '8933b29b-c11e-4437-9272-989711ed315c', id FROM public.items WHERE type = 'radical' AND slug = 'spikes' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '8933b29b-c11e-4437-9272-989711ed315c', id FROM public.items WHERE type = 'radical' AND slug = 'sheep' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.kanji_radicals (kanji_id, radical_id)
SELECT '8933b29b-c11e-4437-9272-989711ed315c', id FROM public.items WHERE type = 'radical' AND slug = 'sheep' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '8933b29b-c11e-4437-9272-989711ed315c', id FROM public.items WHERE type = 'radical' AND slug = 'fins' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.kanji_radicals (kanji_id, radical_id)
SELECT '8933b29b-c11e-4437-9272-989711ed315c', id FROM public.items WHERE type = 'radical' AND slug = 'fins' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT 'b4f9321a-5247-4750-b429-bbfb0588679a', id FROM public.items WHERE type = 'radical' AND slug = 'white' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.kanji_radicals (kanji_id, radical_id)
SELECT 'b4f9321a-5247-4750-b429-bbfb0588679a', id FROM public.items WHERE type = 'radical' AND slug = 'white' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT 'b4f9321a-5247-4750-b429-bbfb0588679a', id FROM public.items WHERE type = 'radical' AND slug = 'ice' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.kanji_radicals (kanji_id, radical_id)
SELECT 'b4f9321a-5247-4750-b429-bbfb0588679a', id FROM public.items WHERE type = 'radical' AND slug = 'ice' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT 'b4f9321a-5247-4750-b429-bbfb0588679a', id FROM public.items WHERE type = 'radical' AND slug = 'tree' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.kanji_radicals (kanji_id, radical_id)
SELECT 'b4f9321a-5247-4750-b429-bbfb0588679a', id FROM public.items WHERE type = 'radical' AND slug = 'tree' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT 'a26ace0c-d99d-4484-89e9-d8088364d42e', id FROM public.items WHERE type = 'radical' AND slug = 'say' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.kanji_radicals (kanji_id, radical_id)
SELECT 'a26ace0c-d99d-4484-89e9-d8088364d42e', id FROM public.items WHERE type = 'radical' AND slug = 'say' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT 'a26ace0c-d99d-4484-89e9-d8088364d42e', id FROM public.items WHERE type = 'radical' AND slug = 'ceremony' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.kanji_radicals (kanji_id, radical_id)
SELECT 'a26ace0c-d99d-4484-89e9-d8088364d42e', id FROM public.items WHERE type = 'radical' AND slug = 'ceremony' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT 'a26ace0c-d99d-4484-89e9-d8088364d42e', id FROM public.items WHERE type = 'radical' AND slug = 'construction' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.kanji_radicals (kanji_id, radical_id)
SELECT 'a26ace0c-d99d-4484-89e9-d8088364d42e', id FROM public.items WHERE type = 'radical' AND slug = 'construction' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT 'b42f7713-8e9f-4404-947e-da6a8b8b15ea', id FROM public.items WHERE type = 'radical' AND slug = 'tsunami' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.kanji_radicals (kanji_id, radical_id)
SELECT 'b42f7713-8e9f-4404-947e-da6a8b8b15ea', id FROM public.items WHERE type = 'radical' AND slug = 'tsunami' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT 'b42f7713-8e9f-4404-947e-da6a8b8b15ea', id FROM public.items WHERE type = 'radical' AND slug = 'chinese' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.kanji_radicals (kanji_id, radical_id)
SELECT 'b42f7713-8e9f-4404-947e-da6a8b8b15ea', id FROM public.items WHERE type = 'radical' AND slug = 'chinese' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '3b8e0019-bc3d-4e1f-a369-f7aa0b3cd865', id FROM public.items WHERE type = 'radical' AND slug = 'lip-ring' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.kanji_radicals (kanji_id, radical_id)
SELECT '3b8e0019-bc3d-4e1f-a369-f7aa0b3cd865', id FROM public.items WHERE type = 'radical' AND slug = 'lip-ring' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '3b8e0019-bc3d-4e1f-a369-f7aa0b3cd865', id FROM public.items WHERE type = 'radical' AND slug = 'lack' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.kanji_radicals (kanji_id, radical_id)
SELECT '3b8e0019-bc3d-4e1f-a369-f7aa0b3cd865', id FROM public.items WHERE type = 'radical' AND slug = 'lack' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT 'a21cc683-fea2-4efe-b5f8-8ffaf2802b7b', id FROM public.items WHERE type = 'radical' AND slug = 'gold' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.kanji_radicals (kanji_id, radical_id)
SELECT 'a21cc683-fea2-4efe-b5f8-8ffaf2802b7b', id FROM public.items WHERE type = 'radical' AND slug = 'gold' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT 'a21cc683-fea2-4efe-b5f8-8ffaf2802b7b', id FROM public.items WHERE type = 'radical' AND slug = 'root' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.kanji_radicals (kanji_id, radical_id)
SELECT 'a21cc683-fea2-4efe-b5f8-8ffaf2802b7b', id FROM public.items WHERE type = 'radical' AND slug = 'root' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT 'da8281c8-9a17-4a75-abb3-51dd4c832548', id FROM public.items WHERE type = 'radical' AND slug = 'horse' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.kanji_radicals (kanji_id, radical_id)
SELECT 'da8281c8-9a17-4a75-abb3-51dd4c832548', id FROM public.items WHERE type = 'radical' AND slug = 'horse' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT 'da8281c8-9a17-4a75-abb3-51dd4c832548', id FROM public.items WHERE type = 'radical' AND slug = 'shrimp' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.kanji_radicals (kanji_id, radical_id)
SELECT 'da8281c8-9a17-4a75-abb3-51dd4c832548', id FROM public.items WHERE type = 'radical' AND slug = 'shrimp' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT 'f988c828-230b-4aa1-b963-ed48fe194f50', id FROM public.items WHERE type = 'radical' AND slug = 'axe' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.kanji_radicals (kanji_id, radical_id)
SELECT 'f988c828-230b-4aa1-b963-ed48fe194f50', id FROM public.items WHERE type = 'radical' AND slug = 'axe' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT 'f988c828-230b-4aa1-b963-ed48fe194f50', id FROM public.items WHERE type = 'radical' AND slug = 'shellfish' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.kanji_radicals (kanji_id, radical_id)
SELECT 'f988c828-230b-4aa1-b963-ed48fe194f50', id FROM public.items WHERE type = 'radical' AND slug = 'shellfish' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '3956736e-d1d0-4b6f-9dce-3e0f4caeb275', id FROM public.items WHERE type = 'radical' AND slug = 'stand' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.kanji_radicals (kanji_id, radical_id)
SELECT '3956736e-d1d0-4b6f-9dce-3e0f4caeb275', id FROM public.items WHERE type = 'radical' AND slug = 'stand' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '3956736e-d1d0-4b6f-9dce-3e0f4caeb275', id FROM public.items WHERE type = 'radical' AND slug = 'tree' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.kanji_radicals (kanji_id, radical_id)
SELECT '3956736e-d1d0-4b6f-9dce-3e0f4caeb275', id FROM public.items WHERE type = 'radical' AND slug = 'tree' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '3956736e-d1d0-4b6f-9dce-3e0f4caeb275', id FROM public.items WHERE type = 'radical' AND slug = 'see' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.kanji_radicals (kanji_id, radical_id)
SELECT '3956736e-d1d0-4b6f-9dce-3e0f4caeb275', id FROM public.items WHERE type = 'radical' AND slug = 'see' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '41fa46b3-40b5-4306-a2ac-2a7baebdd747', id FROM public.items WHERE type = 'radical' AND slug = 'eat' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.kanji_radicals (kanji_id, radical_id)
SELECT '41fa46b3-40b5-4306-a2ac-2a7baebdd747', id FROM public.items WHERE type = 'radical' AND slug = 'eat' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '41fa46b3-40b5-4306-a2ac-2a7baebdd747', id FROM public.items WHERE type = 'radical' AND slug = 'roof' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.kanji_radicals (kanji_id, radical_id)
SELECT '41fa46b3-40b5-4306-a2ac-2a7baebdd747', id FROM public.items WHERE type = 'radical' AND slug = 'roof' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '41fa46b3-40b5-4306-a2ac-2a7baebdd747', id FROM public.items WHERE type = 'radical' AND slug = 'bear' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.kanji_radicals (kanji_id, radical_id)
SELECT '41fa46b3-40b5-4306-a2ac-2a7baebdd747', id FROM public.items WHERE type = 'radical' AND slug = 'bear' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '8858f6c5-587c-426d-b948-a106c31748ef', id FROM public.items WHERE type = 'radical' AND slug = 'sun' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.kanji_radicals (kanji_id, radical_id)
SELECT '8858f6c5-587c-426d-b948-a106c31748ef', id FROM public.items WHERE type = 'radical' AND slug = 'sun' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '8858f6c5-587c-426d-b948-a106c31748ef', id FROM public.items WHERE type = 'radical' AND slug = 'correct' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.kanji_radicals (kanji_id, radical_id)
SELECT '8858f6c5-587c-426d-b948-a106c31748ef', id FROM public.items WHERE type = 'radical' AND slug = 'correct' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '8858f6c5-587c-426d-b948-a106c31748ef', id FROM public.items WHERE type = 'radical' AND slug = 'geoduck' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.kanji_radicals (kanji_id, radical_id)
SELECT '8858f6c5-587c-426d-b948-a106c31748ef', id FROM public.items WHERE type = 'radical' AND slug = 'geoduck' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT 'c686146c-ca8b-45ee-ba89-8ccf3cbb8ec8', id FROM public.items WHERE type = 'radical' AND slug = 'horse' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.kanji_radicals (kanji_id, radical_id)
SELECT 'c686146c-ca8b-45ee-ba89-8ccf3cbb8ec8', id FROM public.items WHERE type = 'radical' AND slug = 'horse' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT 'c686146c-ca8b-45ee-ba89-8ccf3cbb8ec8', id FROM public.items WHERE type = 'radical' AND slug = 'squid' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.kanji_radicals (kanji_id, radical_id)
SELECT 'c686146c-ca8b-45ee-ba89-8ccf3cbb8ec8', id FROM public.items WHERE type = 'radical' AND slug = 'squid' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '34cdb410-a8c5-472f-ac5f-badd2600fabd', id FROM public.items WHERE type = 'radical' AND slug = 'sun' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.kanji_radicals (kanji_id, radical_id)
SELECT '34cdb410-a8c5-472f-ac5f-badd2600fabd', id FROM public.items WHERE type = 'radical' AND slug = 'sun' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '34cdb410-a8c5-472f-ac5f-badd2600fabd', id FROM public.items WHERE type = 'radical' AND slug = 'wolverine' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.kanji_radicals (kanji_id, radical_id)
SELECT '34cdb410-a8c5-472f-ac5f-badd2600fabd', id FROM public.items WHERE type = 'radical' AND slug = 'wolverine' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '34cdb410-a8c5-472f-ac5f-badd2600fabd', id FROM public.items WHERE type = 'radical' AND slug = 'turkey' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.kanji_radicals (kanji_id, radical_id)
SELECT '34cdb410-a8c5-472f-ac5f-badd2600fabd', id FROM public.items WHERE type = 'radical' AND slug = 'turkey' LIMIT 1 ON CONFLICT DO NOTHING;

-- 6. Insert Vocab-to-Kanji Prerequisites
INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('86fd0a89-d0d7-4e77-86b3-d55db41d5ceb', '19e7d17e-44ce-4cf2-a7f1-b348ce0b10d6') ON CONFLICT DO NOTHING;

INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('86fd0a89-d0d7-4e77-86b3-d55db41d5ceb', '19e7d17e-44ce-4cf2-a7f1-b348ce0b10d6') ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT 'd91f1587-1a60-4548-9965-57c75a2b4331', id FROM public.items WHERE type = 'kanji' AND character = '金' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id)
SELECT 'd91f1587-1a60-4548-9965-57c75a2b4331', id FROM public.items WHERE type = 'kanji' AND character = '金' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('d91f1587-1a60-4548-9965-57c75a2b4331', '19e7d17e-44ce-4cf2-a7f1-b348ce0b10d6') ON CONFLICT DO NOTHING;

INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('d91f1587-1a60-4548-9965-57c75a2b4331', '19e7d17e-44ce-4cf2-a7f1-b348ce0b10d6') ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT 'c9507151-60c5-4727-92f0-a8527ee5689d', id FROM public.items WHERE type = 'kanji' AND character = '海' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id)
SELECT 'c9507151-60c5-4727-92f0-a8527ee5689d', id FROM public.items WHERE type = 'kanji' AND character = '海' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('c9507151-60c5-4727-92f0-a8527ee5689d', '19e7d17e-44ce-4cf2-a7f1-b348ce0b10d6') ON CONFLICT DO NOTHING;

INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('c9507151-60c5-4727-92f0-a8527ee5689d', '19e7d17e-44ce-4cf2-a7f1-b348ce0b10d6') ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '18233e59-a6a0-4b8f-9e55-5255ff080eb1', id FROM public.items WHERE type = 'kanji' AND character = '入' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id)
SELECT '18233e59-a6a0-4b8f-9e55-5255ff080eb1', id FROM public.items WHERE type = 'kanji' AND character = '入' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('18233e59-a6a0-4b8f-9e55-5255ff080eb1', 'c786e4af-48e8-4569-acee-32a37cbc5e8a') ON CONFLICT DO NOTHING;

INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('18233e59-a6a0-4b8f-9e55-5255ff080eb1', 'c786e4af-48e8-4569-acee-32a37cbc5e8a') ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '1acf32de-b889-464e-9416-1b2fc2a12ea3', id FROM public.items WHERE type = 'kanji' AND character = '工' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id)
SELECT '1acf32de-b889-464e-9416-1b2fc2a12ea3', id FROM public.items WHERE type = 'kanji' AND character = '工' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('1acf32de-b889-464e-9416-1b2fc2a12ea3', 'c786e4af-48e8-4569-acee-32a37cbc5e8a') ON CONFLICT DO NOTHING;

INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('1acf32de-b889-464e-9416-1b2fc2a12ea3', 'c786e4af-48e8-4569-acee-32a37cbc5e8a') ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('c0157a8e-c3c9-4fef-85ab-032dee84d1e1', '7363769c-76c8-4a6c-9bf5-9446e9863e7d') ON CONFLICT DO NOTHING;

INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('c0157a8e-c3c9-4fef-85ab-032dee84d1e1', '7363769c-76c8-4a6c-9bf5-9446e9863e7d') ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('af732d29-b023-41e6-98df-4f1d84f133be', '7363769c-76c8-4a6c-9bf5-9446e9863e7d') ON CONFLICT DO NOTHING;

INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('af732d29-b023-41e6-98df-4f1d84f133be', '7363769c-76c8-4a6c-9bf5-9446e9863e7d') ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('2c9dd4ff-b049-4642-b96c-8c1808b6d9df', '7363769c-76c8-4a6c-9bf5-9446e9863e7d') ON CONFLICT DO NOTHING;

INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('2c9dd4ff-b049-4642-b96c-8c1808b6d9df', '7363769c-76c8-4a6c-9bf5-9446e9863e7d') ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '2c9dd4ff-b049-4642-b96c-8c1808b6d9df', id FROM public.items WHERE type = 'kanji' AND character = '日' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id)
SELECT '2c9dd4ff-b049-4642-b96c-8c1808b6d9df', id FROM public.items WHERE type = 'kanji' AND character = '日' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('41741139-6c48-4208-9cc3-7138d78cfe2c', '901f758c-9c9b-45a9-ab14-f3f8debeda32') ON CONFLICT DO NOTHING;

INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('41741139-6c48-4208-9cc3-7138d78cfe2c', '901f758c-9c9b-45a9-ab14-f3f8debeda32') ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('dc3ef421-18f2-40b2-a668-a7e35743d07f', '901f758c-9c9b-45a9-ab14-f3f8debeda32') ON CONFLICT DO NOTHING;

INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('dc3ef421-18f2-40b2-a668-a7e35743d07f', '901f758c-9c9b-45a9-ab14-f3f8debeda32') ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('4c5c4174-2796-4356-b09a-58d4be585f39', '206bb8b1-7845-472a-9141-7874d9d3fe70') ON CONFLICT DO NOTHING;

INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('4c5c4174-2796-4356-b09a-58d4be585f39', '206bb8b1-7845-472a-9141-7874d9d3fe70') ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('74d4091b-2242-4c8b-b1a9-d3240823e8e0', '35b3e5d3-3529-4ab3-8e7d-63363cbfa9f3') ON CONFLICT DO NOTHING;

INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('74d4091b-2242-4c8b-b1a9-d3240823e8e0', '35b3e5d3-3529-4ab3-8e7d-63363cbfa9f3') ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '7878f9f9-1791-485e-b86b-dd6e7c7c6af8', id FROM public.items WHERE type = 'kanji' AND character = '歩' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id)
SELECT '7878f9f9-1791-485e-b86b-dd6e7c7c6af8', id FROM public.items WHERE type = 'kanji' AND character = '歩' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('7878f9f9-1791-485e-b86b-dd6e7c7c6af8', '35b3e5d3-3529-4ab3-8e7d-63363cbfa9f3') ON CONFLICT DO NOTHING;

INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('7878f9f9-1791-485e-b86b-dd6e7c7c6af8', '35b3e5d3-3529-4ab3-8e7d-63363cbfa9f3') ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('a8467005-e7e7-4564-b08a-9d27541c7502', '35b3e5d3-3529-4ab3-8e7d-63363cbfa9f3') ON CONFLICT DO NOTHING;

INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('a8467005-e7e7-4564-b08a-9d27541c7502', '35b3e5d3-3529-4ab3-8e7d-63363cbfa9f3') ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('351f20d0-ab0e-4499-a546-79b175c89b6d', 'b4f9321a-5247-4750-b429-bbfb0588679a') ON CONFLICT DO NOTHING;

INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('351f20d0-ab0e-4499-a546-79b175c89b6d', 'b4f9321a-5247-4750-b429-bbfb0588679a') ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '66e41b9d-20e2-4a8e-ae85-512b87c7d8b1', id FROM public.items WHERE type = 'kanji' AND character = '音' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id)
SELECT '66e41b9d-20e2-4a8e-ae85-512b87c7d8b1', id FROM public.items WHERE type = 'kanji' AND character = '音' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('66e41b9d-20e2-4a8e-ae85-512b87c7d8b1', 'b4f9321a-5247-4750-b429-bbfb0588679a') ON CONFLICT DO NOTHING;

INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('66e41b9d-20e2-4a8e-ae85-512b87c7d8b1', 'b4f9321a-5247-4750-b429-bbfb0588679a') ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('c700de8e-0dc8-4c83-aa28-a7a8d7c363c1', 'b4f9321a-5247-4750-b429-bbfb0588679a') ON CONFLICT DO NOTHING;

INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('c700de8e-0dc8-4c83-aa28-a7a8d7c363c1', 'b4f9321a-5247-4750-b429-bbfb0588679a') ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('f2b05d2a-466f-4095-923e-be3b51cb6fe8', '19e7d17e-44ce-4cf2-a7f1-b348ce0b10d6') ON CONFLICT DO NOTHING;

INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('f2b05d2a-466f-4095-923e-be3b51cb6fe8', '19e7d17e-44ce-4cf2-a7f1-b348ce0b10d6') ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT 'f2b05d2a-466f-4095-923e-be3b51cb6fe8', id FROM public.items WHERE type = 'kanji' AND character = '屋' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id)
SELECT 'f2b05d2a-466f-4095-923e-be3b51cb6fe8', id FROM public.items WHERE type = 'kanji' AND character = '屋' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('9b374ece-9653-4e5c-af5f-e17ad2d78a58', 'c63e8920-cfa1-438a-afe1-dc483ca1c692') ON CONFLICT DO NOTHING;

INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('9b374ece-9653-4e5c-af5f-e17ad2d78a58', 'c63e8920-cfa1-438a-afe1-dc483ca1c692') ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '9b374ece-9653-4e5c-af5f-e17ad2d78a58', id FROM public.items WHERE type = 'kanji' AND character = '転' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id)
SELECT '9b374ece-9653-4e5c-af5f-e17ad2d78a58', id FROM public.items WHERE type = 'kanji' AND character = '転' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('558dd424-f34d-434e-94d3-62349baa5ea7', 'c63e8920-cfa1-438a-afe1-dc483ca1c692') ON CONFLICT DO NOTHING;

INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('558dd424-f34d-434e-94d3-62349baa5ea7', 'c63e8920-cfa1-438a-afe1-dc483ca1c692') ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('72163200-1623-48fe-8dba-2fd1eff3691f', 'c63e8920-cfa1-438a-afe1-dc483ca1c692') ON CONFLICT DO NOTHING;

INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('72163200-1623-48fe-8dba-2fd1eff3691f', 'c63e8920-cfa1-438a-afe1-dc483ca1c692') ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('2552342f-37be-441a-a90e-668e48500c3b', '1d863db0-dce1-4675-99b7-fe2ff8a83bd4') ON CONFLICT DO NOTHING;

INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('2552342f-37be-441a-a90e-668e48500c3b', '1d863db0-dce1-4675-99b7-fe2ff8a83bd4') ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '86167b09-aba3-4e31-81a6-271be2d832cc', id FROM public.items WHERE type = 'kanji' AND character = '公' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id)
SELECT '86167b09-aba3-4e31-81a6-271be2d832cc', id FROM public.items WHERE type = 'kanji' AND character = '公' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('86167b09-aba3-4e31-81a6-271be2d832cc', '1d863db0-dce1-4675-99b7-fe2ff8a83bd4') ON CONFLICT DO NOTHING;

INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('86167b09-aba3-4e31-81a6-271be2d832cc', '1d863db0-dce1-4675-99b7-fe2ff8a83bd4') ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('7ee50923-af3a-4b65-bf23-45fc0f6f4a95', '1d863db0-dce1-4675-99b7-fe2ff8a83bd4') ON CONFLICT DO NOTHING;

INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('7ee50923-af3a-4b65-bf23-45fc0f6f4a95', '1d863db0-dce1-4675-99b7-fe2ff8a83bd4') ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('7ee50923-af3a-4b65-bf23-45fc0f6f4a95', '8933b29b-c11e-4437-9272-989711ed315c') ON CONFLICT DO NOTHING;

INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('7ee50923-af3a-4b65-bf23-45fc0f6f4a95', '8933b29b-c11e-4437-9272-989711ed315c') ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('f14007cf-e12a-434f-a393-48c45922b3d9', '1d863db0-dce1-4675-99b7-fe2ff8a83bd4') ON CONFLICT DO NOTHING;

INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('f14007cf-e12a-434f-a393-48c45922b3d9', '1d863db0-dce1-4675-99b7-fe2ff8a83bd4') ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT 'f14007cf-e12a-434f-a393-48c45922b3d9', id FROM public.items WHERE type = 'kanji' AND character = '発' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id)
SELECT 'f14007cf-e12a-434f-a393-48c45922b3d9', id FROM public.items WHERE type = 'kanji' AND character = '発' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('066ae0d8-5a17-4998-9b20-df45119c904c', '9e16675c-c30f-408b-87c7-90ffd2ce7aee') ON CONFLICT DO NOTHING;

INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('066ae0d8-5a17-4998-9b20-df45119c904c', '9e16675c-c30f-408b-87c7-90ffd2ce7aee') ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('31a2ac27-1d64-47cc-89a1-0ba06f50ab36', '9e16675c-c30f-408b-87c7-90ffd2ce7aee') ON CONFLICT DO NOTHING;

INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('31a2ac27-1d64-47cc-89a1-0ba06f50ab36', '9e16675c-c30f-408b-87c7-90ffd2ce7aee') ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '31a2ac27-1d64-47cc-89a1-0ba06f50ab36', id FROM public.items WHERE type = 'kanji' AND character = '中' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id)
SELECT '31a2ac27-1d64-47cc-89a1-0ba06f50ab36', id FROM public.items WHERE type = 'kanji' AND character = '中' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('cfcab7b8-7d5e-4f5e-880a-ec27cf65cd6b', '9e16675c-c30f-408b-87c7-90ffd2ce7aee') ON CONFLICT DO NOTHING;

INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('cfcab7b8-7d5e-4f5e-880a-ec27cf65cd6b', '9e16675c-c30f-408b-87c7-90ffd2ce7aee') ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT 'cfcab7b8-7d5e-4f5e-880a-ec27cf65cd6b', id FROM public.items WHERE type = 'kanji' AND character = '金' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id)
SELECT 'cfcab7b8-7d5e-4f5e-880a-ec27cf65cd6b', id FROM public.items WHERE type = 'kanji' AND character = '金' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('23eba982-99dc-4d34-854b-b0beef6cd7c0', 'c7ad89de-5bd3-4cda-973d-2fe9b9bbd084') ON CONFLICT DO NOTHING;

INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('23eba982-99dc-4d34-854b-b0beef6cd7c0', 'c7ad89de-5bd3-4cda-973d-2fe9b9bbd084') ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT 'e7a19b5d-5c5a-4daf-b23a-e914661001d1', id FROM public.items WHERE type = 'kanji' AND character = '工' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id)
SELECT 'e7a19b5d-5c5a-4daf-b23a-e914661001d1', id FROM public.items WHERE type = 'kanji' AND character = '工' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('e7a19b5d-5c5a-4daf-b23a-e914661001d1', '8933b29b-c11e-4437-9272-989711ed315c') ON CONFLICT DO NOTHING;

INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('e7a19b5d-5c5a-4daf-b23a-e914661001d1', '8933b29b-c11e-4437-9272-989711ed315c') ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('45f0c2e0-59a0-4662-b706-ed56b87cad9f', 'b42f7713-8e9f-4404-947e-da6a8b8b15ea') ON CONFLICT DO NOTHING;

INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('45f0c2e0-59a0-4662-b706-ed56b87cad9f', 'b42f7713-8e9f-4404-947e-da6a8b8b15ea') ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '45f0c2e0-59a0-4662-b706-ed56b87cad9f', id FROM public.items WHERE type = 'kanji' AND character = '字' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id)
SELECT '45f0c2e0-59a0-4662-b706-ed56b87cad9f', id FROM public.items WHERE type = 'kanji' AND character = '字' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('4c59262b-3efa-40f0-8814-d1bed297cefc', '3b8e0019-bc3d-4e1f-a369-f7aa0b3cd865') ON CONFLICT DO NOTHING;

INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('4c59262b-3efa-40f0-8814-d1bed297cefc', '3b8e0019-bc3d-4e1f-a369-f7aa0b3cd865') ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('648a17d6-a7c2-4cce-b08f-00d321e32da0', '3b8e0019-bc3d-4e1f-a369-f7aa0b3cd865') ON CONFLICT DO NOTHING;

INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('648a17d6-a7c2-4cce-b08f-00d321e32da0', '3b8e0019-bc3d-4e1f-a369-f7aa0b3cd865') ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '648a17d6-a7c2-4cce-b08f-00d321e32da0', id FROM public.items WHERE type = 'kanji' AND character = '手' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id)
SELECT '648a17d6-a7c2-4cce-b08f-00d321e32da0', id FROM public.items WHERE type = 'kanji' AND character = '手' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('fc415fa8-70d2-4137-9a95-b36eb5f43f42', 'ea1148d3-f9cf-47f9-872f-a2b43578ad7c') ON CONFLICT DO NOTHING;

INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('fc415fa8-70d2-4137-9a95-b36eb5f43f42', 'ea1148d3-f9cf-47f9-872f-a2b43578ad7c') ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT 'fc415fa8-70d2-4137-9a95-b36eb5f43f42', id FROM public.items WHERE type = 'kanji' AND character = '聞' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id)
SELECT 'fc415fa8-70d2-4137-9a95-b36eb5f43f42', id FROM public.items WHERE type = 'kanji' AND character = '聞' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('9beb60b5-e175-4d06-9993-a7b8ae2e78c4', '3956736e-d1d0-4b6f-9dce-3e0f4caeb275') ON CONFLICT DO NOTHING;

INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('9beb60b5-e175-4d06-9993-a7b8ae2e78c4', '3956736e-d1d0-4b6f-9dce-3e0f4caeb275') ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('096b0f44-a141-4989-bb6a-4d55695ce6ea', '3956736e-d1d0-4b6f-9dce-3e0f4caeb275') ON CONFLICT DO NOTHING;

INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('096b0f44-a141-4989-bb6a-4d55695ce6ea', '3956736e-d1d0-4b6f-9dce-3e0f4caeb275') ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('ac60cf3f-1560-49ed-8984-d289426ef045', '3956736e-d1d0-4b6f-9dce-3e0f4caeb275') ON CONFLICT DO NOTHING;

INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('ac60cf3f-1560-49ed-8984-d289426ef045', '3956736e-d1d0-4b6f-9dce-3e0f4caeb275') ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT 'ac60cf3f-1560-49ed-8984-d289426ef045', id FROM public.items WHERE type = 'kanji' AND character = '切' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id)
SELECT 'ac60cf3f-1560-49ed-8984-d289426ef045', id FROM public.items WHERE type = 'kanji' AND character = '切' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('001fe173-bf64-44b2-b0e1-5301202637e6', '3956736e-d1d0-4b6f-9dce-3e0f4caeb275') ON CONFLICT DO NOTHING;

INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('001fe173-bf64-44b2-b0e1-5301202637e6', '3956736e-d1d0-4b6f-9dce-3e0f4caeb275') ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '001fe173-bf64-44b2-b0e1-5301202637e6', id FROM public.items WHERE type = 'kanji' AND character = '友' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id)
SELECT '001fe173-bf64-44b2-b0e1-5301202637e6', id FROM public.items WHERE type = 'kanji' AND character = '友' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '0c67eea9-f282-4110-ae13-e290f03084be', id FROM public.items WHERE type = 'kanji' AND character = '注' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id)
SELECT '0c67eea9-f282-4110-ae13-e290f03084be', id FROM public.items WHERE type = 'kanji' AND character = '注' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('0c67eea9-f282-4110-ae13-e290f03084be', '50e8d3c1-8493-43d8-9818-5feb496eff04') ON CONFLICT DO NOTHING;

INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('0c67eea9-f282-4110-ae13-e290f03084be', '50e8d3c1-8493-43d8-9818-5feb496eff04') ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('601d8a66-46a7-4c58-bb94-72b0a2cd82af', '9e16675c-c30f-408b-87c7-90ffd2ce7aee') ON CONFLICT DO NOTHING;

INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('601d8a66-46a7-4c58-bb94-72b0a2cd82af', '9e16675c-c30f-408b-87c7-90ffd2ce7aee') ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '601d8a66-46a7-4c58-bb94-72b0a2cd82af', id FROM public.items WHERE type = 'kanji' AND character = '中' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id)
SELECT '601d8a66-46a7-4c58-bb94-72b0a2cd82af', id FROM public.items WHERE type = 'kanji' AND character = '中' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('daf04002-788d-41ff-ab91-c0b3f42cbe07', '50e8d3c1-8493-43d8-9818-5feb496eff04') ON CONFLICT DO NOTHING;

INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('daf04002-788d-41ff-ab91-c0b3f42cbe07', '50e8d3c1-8493-43d8-9818-5feb496eff04') ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT 'daf04002-788d-41ff-ab91-c0b3f42cbe07', id FROM public.items WHERE type = 'kanji' AND character = '見' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id)
SELECT 'daf04002-788d-41ff-ab91-c0b3f42cbe07', id FROM public.items WHERE type = 'kanji' AND character = '見' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('7b778269-1b0c-47b9-955d-de21f441eea6', '50e8d3c1-8493-43d8-9818-5feb496eff04') ON CONFLICT DO NOTHING;

INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('7b778269-1b0c-47b9-955d-de21f441eea6', '50e8d3c1-8493-43d8-9818-5feb496eff04') ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '7b778269-1b0c-47b9-955d-de21f441eea6', id FROM public.items WHERE type = 'kanji' AND character = '味' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id)
SELECT '7b778269-1b0c-47b9-955d-de21f441eea6', id FROM public.items WHERE type = 'kanji' AND character = '味' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('449c0601-2bf3-4494-858d-5ce7e3ac1360', 'c63e8920-cfa1-438a-afe1-dc483ca1c692') ON CONFLICT DO NOTHING;

INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('449c0601-2bf3-4494-858d-5ce7e3ac1360', 'c63e8920-cfa1-438a-afe1-dc483ca1c692') ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '449c0601-2bf3-4494-858d-5ce7e3ac1360', id FROM public.items WHERE type = 'kanji' AND character = '動' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id)
SELECT '449c0601-2bf3-4494-858d-5ce7e3ac1360', id FROM public.items WHERE type = 'kanji' AND character = '動' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('13c818a7-b355-4fb7-93ab-980bf2d1ef60', 'd05f740a-4d9f-47df-a59f-6bb57738d210') ON CONFLICT DO NOTHING;

INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('13c818a7-b355-4fb7-93ab-980bf2d1ef60', 'd05f740a-4d9f-47df-a59f-6bb57738d210') ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('a531f364-0557-4217-b9dc-f55167a4f554', 'd05f740a-4d9f-47df-a59f-6bb57738d210') ON CONFLICT DO NOTHING;

INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('a531f364-0557-4217-b9dc-f55167a4f554', 'd05f740a-4d9f-47df-a59f-6bb57738d210') ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('fad60e90-395d-4543-8d27-16d8b2861822', 'd05f740a-4d9f-47df-a59f-6bb57738d210') ON CONFLICT DO NOTHING;

INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('fad60e90-395d-4543-8d27-16d8b2861822', 'd05f740a-4d9f-47df-a59f-6bb57738d210') ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT 'fad60e90-395d-4543-8d27-16d8b2861822', id FROM public.items WHERE type = 'kanji' AND character = '物' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id)
SELECT 'fad60e90-395d-4543-8d27-16d8b2861822', id FROM public.items WHERE type = 'kanji' AND character = '物' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '550e277a-4055-45c9-912b-801ebc295c87', id FROM public.items WHERE type = 'kanji' AND character = '下' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id)
SELECT '550e277a-4055-45c9-912b-801ebc295c87', id FROM public.items WHERE type = 'kanji' AND character = '下' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('550e277a-4055-45c9-912b-801ebc295c87', 'd05f740a-4d9f-47df-a59f-6bb57738d210') ON CONFLICT DO NOTHING;

INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('550e277a-4055-45c9-912b-801ebc295c87', 'd05f740a-4d9f-47df-a59f-6bb57738d210') ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT 'a28cd40a-2dcd-4b9a-a96d-e46f8f3c9400', id FROM public.items WHERE type = 'kanji' AND character = '水' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id)
SELECT 'a28cd40a-2dcd-4b9a-a96d-e46f8f3c9400', id FROM public.items WHERE type = 'kanji' AND character = '水' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('a28cd40a-2dcd-4b9a-a96d-e46f8f3c9400', 'd05f740a-4d9f-47df-a59f-6bb57738d210') ON CONFLICT DO NOTHING;

INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('a28cd40a-2dcd-4b9a-a96d-e46f8f3c9400', 'd05f740a-4d9f-47df-a59f-6bb57738d210') ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('5c22f6ca-ad27-4e4d-96ad-e3e7e87dafa2', 'ea1148d3-f9cf-47f9-872f-a2b43578ad7c') ON CONFLICT DO NOTHING;

INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('5c22f6ca-ad27-4e4d-96ad-e3e7e87dafa2', 'ea1148d3-f9cf-47f9-872f-a2b43578ad7c') ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('1bf96550-ff5a-484b-922d-9c0322a9ec2e', 'b4f9321a-5247-4750-b429-bbfb0588679a') ON CONFLICT DO NOTHING;

INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('1bf96550-ff5a-484b-922d-9c0322a9ec2e', 'b4f9321a-5247-4750-b429-bbfb0588679a') ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '679ee3c6-2fd4-4417-93e7-196cfbd720e3', id FROM public.items WHERE type = 'kanji' AND character = '近' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id)
SELECT '679ee3c6-2fd4-4417-93e7-196cfbd720e3', id FROM public.items WHERE type = 'kanji' AND character = '近' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('679ee3c6-2fd4-4417-93e7-196cfbd720e3', '35b3e5d3-3529-4ab3-8e7d-63363cbfa9f3') ON CONFLICT DO NOTHING;

INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('679ee3c6-2fd4-4417-93e7-196cfbd720e3', '35b3e5d3-3529-4ab3-8e7d-63363cbfa9f3') ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('f1ce1566-4265-4889-a4cd-30d09f85a64c', 'b4f9321a-5247-4750-b429-bbfb0588679a') ON CONFLICT DO NOTHING;

INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('f1ce1566-4265-4889-a4cd-30d09f85a64c', 'b4f9321a-5247-4750-b429-bbfb0588679a') ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('eb98c9c8-0efc-4e60-b796-aef91ef612b6', '206bb8b1-7845-472a-9141-7874d9d3fe70') ON CONFLICT DO NOTHING;

INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('eb98c9c8-0efc-4e60-b796-aef91ef612b6', '206bb8b1-7845-472a-9141-7874d9d3fe70') ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT 'eb98c9c8-0efc-4e60-b796-aef91ef612b6', id FROM public.items WHERE type = 'kanji' AND character = '物' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id)
SELECT 'eb98c9c8-0efc-4e60-b796-aef91ef612b6', id FROM public.items WHERE type = 'kanji' AND character = '物' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('5a43e1e6-cd52-455d-85e0-6af46b1db363', 'c7ad89de-5bd3-4cda-973d-2fe9b9bbd084') ON CONFLICT DO NOTHING;

INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('5a43e1e6-cd52-455d-85e0-6af46b1db363', 'c7ad89de-5bd3-4cda-973d-2fe9b9bbd084') ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '5a43e1e6-cd52-455d-85e0-6af46b1db363', id FROM public.items WHERE type = 'kanji' AND character = '物' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id)
SELECT '5a43e1e6-cd52-455d-85e0-6af46b1db363', id FROM public.items WHERE type = 'kanji' AND character = '物' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '005c015f-8b28-4f66-9fda-831bc4277914', id FROM public.items WHERE type = 'kanji' AND character = '問' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id)
SELECT '005c015f-8b28-4f66-9fda-831bc4277914', id FROM public.items WHERE type = 'kanji' AND character = '問' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('005c015f-8b28-4f66-9fda-831bc4277914', '8858f6c5-587c-426d-b948-a106c31748ef') ON CONFLICT DO NOTHING;

INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('005c015f-8b28-4f66-9fda-831bc4277914', '8858f6c5-587c-426d-b948-a106c31748ef') ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('7ec1c297-4df5-4c7e-8caf-32fba45d1084', 'c7ad89de-5bd3-4cda-973d-2fe9b9bbd084') ON CONFLICT DO NOTHING;

INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('7ec1c297-4df5-4c7e-8caf-32fba45d1084', 'c7ad89de-5bd3-4cda-973d-2fe9b9bbd084') ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '7ec1c297-4df5-4c7e-8caf-32fba45d1084', id FROM public.items WHERE type = 'kanji' AND character = '会' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id)
SELECT '7ec1c297-4df5-4c7e-8caf-32fba45d1084', id FROM public.items WHERE type = 'kanji' AND character = '会' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('355dc7b8-dfa5-4679-86a3-cfbee5b9dc29', 'c63e8920-cfa1-438a-afe1-dc483ca1c692') ON CONFLICT DO NOTHING;

INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('355dc7b8-dfa5-4679-86a3-cfbee5b9dc29', 'c63e8920-cfa1-438a-afe1-dc483ca1c692') ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '355dc7b8-dfa5-4679-86a3-cfbee5b9dc29', id FROM public.items WHERE type = 'kanji' AND character = '転' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id)
SELECT '355dc7b8-dfa5-4679-86a3-cfbee5b9dc29', id FROM public.items WHERE type = 'kanji' AND character = '転' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '355dc7b8-dfa5-4679-86a3-cfbee5b9dc29', id FROM public.items WHERE type = 'kanji' AND character = '手' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id)
SELECT '355dc7b8-dfa5-4679-86a3-cfbee5b9dc29', id FROM public.items WHERE type = 'kanji' AND character = '手' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '92f095fc-ae6f-463a-b621-afe6d54e1c6a', id FROM public.items WHERE type = 'kanji' AND character = '父' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id)
SELECT '92f095fc-ae6f-463a-b621-afe6d54e1c6a', id FROM public.items WHERE type = 'kanji' AND character = '父' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('92f095fc-ae6f-463a-b621-afe6d54e1c6a', '3956736e-d1d0-4b6f-9dce-3e0f4caeb275') ON CONFLICT DO NOTHING;

INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('92f095fc-ae6f-463a-b621-afe6d54e1c6a', '3956736e-d1d0-4b6f-9dce-3e0f4caeb275') ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '24470cc5-587b-4524-bacd-52335a8bf46e', id FROM public.items WHERE type = 'kanji' AND character = '母' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id)
SELECT '24470cc5-587b-4524-bacd-52335a8bf46e', id FROM public.items WHERE type = 'kanji' AND character = '母' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('24470cc5-587b-4524-bacd-52335a8bf46e', '3956736e-d1d0-4b6f-9dce-3e0f4caeb275') ON CONFLICT DO NOTHING;

