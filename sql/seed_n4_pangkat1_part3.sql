INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('15fab8f7-3fa7-4d2b-bd10-99eb31a5979d', 'ビエトとコウイチは、不可分の関係にあるんですよ。', 'Viet dan Koichi tidak dapat dipisahkan satu sama lain.') ON CONFLICT DO NOTHING;
INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('15fab8f7-3fa7-4d2b-bd10-99eb31a5979d', 'けい約では、それは不可分なさいむだったはずですよ。', 'Saya cukup yakin itu adalah kewajiban yang tidak dapat dipisahkan dalam kontrak.') ON CONFLICT DO NOTHING;
INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('15fab8f7-3fa7-4d2b-bd10-99eb31a5979d', 'ご存知のように、豆腐と河豚は不可分です。', 'Seperti yang kita ketahui bersama, Tahu dan Fugu tidak dapat dipisahkan.') ON CONFLICT DO NOTHING;
INSERT INTO public.items (id, type, character, slug, level, rank_id, meaning_mnemonic, description) VALUES ('638b041b-47a7-4917-9f7f-ec91d67d5ea2', 'vocabulary', '時代', '時代', 2, 'd4e5f6a7-b8c9-0d1e-2f3a-4b5c6d7e8f9a', 'Anda mempunyai suatu periode waktu dan itu disebut periode atau era! Sederhana!', 'Anda mempunyai suatu periode waktu dan itu disebut periode atau era! Sederhana!') ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, character = EXCLUDED.character, slug = EXCLUDED.slug, level = EXCLUDED.level, rank_id = EXCLUDED.rank_id, meaning_mnemonic = EXCLUDED.meaning_mnemonic, description = EXCLUDED.description;
INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('638b041b-47a7-4917-9f7f-ec91d67d5ea2', 'Periode', true) ON CONFLICT DO NOTHING;
INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('638b041b-47a7-4917-9f7f-ec91d67d5ea2', 'Epoch', false) ON CONFLICT DO NOTHING;
INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('638b041b-47a7-4917-9f7f-ec91d67d5ea2', 'Era', false) ON CONFLICT DO NOTHING;
INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('638b041b-47a7-4917-9f7f-ec91d67d5ea2', 'Time Period', false) ON CONFLICT DO NOTHING;
INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES ('638b041b-47a7-4917-9f7f-ec91d67d5ea2', 'じだい', NULL, true) ON CONFLICT DO NOTHING;
INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('638b041b-47a7-4917-9f7f-ec91d67d5ea2', '今の時代は、インターネットで何でもかうことができます。', 'Di era ini, Anda bisa membeli apa saja di Internet.') ON CONFLICT DO NOTHING;
INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('638b041b-47a7-4917-9f7f-ec91d67d5ea2', '明里は、わたしの大学時代の友人です。', 'Akari adalah temanku semasa kuliah.') ON CONFLICT DO NOTHING;
INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('638b041b-47a7-4917-9f7f-ec91d67d5ea2', '紫式部は、平安時代中期の女性作家かつ歌人です。', 'Murasaki Shikibu adalah seorang penulis dan penyair wanita dari periode pertengahan Heian.') ON CONFLICT DO NOTHING;
INSERT INTO public.items (id, type, character, slug, level, rank_id, meaning_mnemonic, description) VALUES ('b2fa04eb-2ccf-4dc9-87df-ac93916dd589', 'vocabulary', '主', '主', 2, 'd4e5f6a7-b8c9-0d1e-2f3a-4b5c6d7e8f9a', 'Kata ini mempunyai arti yang mirip dengan 主人 (kepala rumah tangga). Anda dapat mengingatnya juga sebagai makna yang Anda pelajari dengan kanji 主, yaitu master.', 'Kata ini mempunyai arti yang mirip dengan 主人 (kepala rumah tangga). Anda dapat mengingatnya juga sebagai makna yang Anda pelajari dengan kanji 主, yaitu master.') ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, character = EXCLUDED.character, slug = EXCLUDED.slug, level = EXCLUDED.level, rank_id = EXCLUDED.rank_id, meaning_mnemonic = EXCLUDED.meaning_mnemonic, description = EXCLUDED.description;
INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('b2fa04eb-2ccf-4dc9-87df-ac93916dd589', 'Menguasai', true) ON CONFLICT DO NOTHING;
INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('b2fa04eb-2ccf-4dc9-87df-ac93916dd589', 'Head Of Household', false) ON CONFLICT DO NOTHING;
INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('b2fa04eb-2ccf-4dc9-87df-ac93916dd589', 'Leader', false) ON CONFLICT DO NOTHING;
INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES ('b2fa04eb-2ccf-4dc9-87df-ac93916dd589', 'ぬし', NULL, true) ON CONFLICT DO NOTHING;
INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('b2fa04eb-2ccf-4dc9-87df-ac93916dd589', 'この家の主の名前は何ですか。', 'Siapa nama kepala rumah tangga ini?') ON CONFLICT DO NOTHING;
INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('b2fa04eb-2ccf-4dc9-87df-ac93916dd589', 'あの城の主にはあとつぎがいないらしい。', 'Kudengar pemilik kastil itu tidak memiliki ahli waris.') ON CONFLICT DO NOTHING;
INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('b2fa04eb-2ccf-4dc9-87df-ac93916dd589', 'この池には、古池の主と呼ばれる大きな殿様蛙がいると言われています。', 'Konon di kolam ini terdapat katak macan tutul berukuran besar yang disebut sebagai penguasa kolam tua.') ON CONFLICT DO NOTHING;
INSERT INTO public.items (id, type, character, slug, level, rank_id, meaning_mnemonic, description) VALUES ('fe242365-0857-4753-85d1-7ee0ab378393', 'vocabulary', '〜台', '〜台', 2, 'd4e5f6a7-b8c9-0d1e-2f3a-4b5c6d7e8f9a', 'Penghitung ini digunakan dengan beberapa jenis mesin atau perangkat, biasanya yang berukuran cukup besar (jadi tidak ada yang terlalu kecil). Mobil adalah contoh yang bagus untuk hal ini. Namun dapat juga digunakan untuk benda-benda seperti komputer, yang dulunya berukuran ruangan, namun kini menjadi bagus dan kecil. Terima kasih teknologi!', 'Penghitung ini digunakan dengan beberapa jenis mesin atau perangkat, biasanya yang berukuran cukup besar (jadi tidak ada yang terlalu kecil). Mobil adalah contoh yang bagus untuk hal ini. Namun dapat juga digunakan untuk benda-benda seperti komputer, yang dulunya berukuran ruangan, namun kini menjadi bagus dan kecil. Terima kasih teknologi!') ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, character = EXCLUDED.character, slug = EXCLUDED.slug, level = EXCLUDED.level, rank_id = EXCLUDED.rank_id, meaning_mnemonic = EXCLUDED.meaning_mnemonic, description = EXCLUDED.description;
INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('fe242365-0857-4753-85d1-7ee0ab378393', 'Penghitung Mesin Besar', true) ON CONFLICT DO NOTHING;
INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('fe242365-0857-4753-85d1-7ee0ab378393', 'Machine Counter', false) ON CONFLICT DO NOTHING;
INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('fe242365-0857-4753-85d1-7ee0ab378393', 'Number Of Machines', false) ON CONFLICT DO NOTHING;
INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES ('fe242365-0857-4753-85d1-7ee0ab378393', 'だい', NULL, true) ON CONFLICT DO NOTHING;
INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('fe242365-0857-4753-85d1-7ee0ab378393', 'バスはなん台いりますか？', 'Berapa banyak bus yang kita perlukan?') ON CONFLICT DO NOTHING;
INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('fe242365-0857-4753-85d1-7ee0ab378393', 'し力がよくなるきかいを三台ちゅうもんしました。', 'Saya memesan tiga mesin yang membuat penglihatan Anda lebih baik.') ON CONFLICT DO NOTHING;
INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('fe242365-0857-4753-85d1-7ee0ab378393', 'あのかねもちしゃちょうはこうきゅうしゃを三台もっています。', 'Presiden perusahaan kaya memiliki tiga mobil mewah.') ON CONFLICT DO NOTHING;
INSERT INTO public.items (id, type, character, slug, level, rank_id, meaning_mnemonic, description) VALUES ('9ca7fa68-e4eb-4f02-b35e-2fa20bd0206a', 'vocabulary', '少女', '少女', 2, 'd4e5f6a7-b8c9-0d1e-2f3a-4b5c6d7e8f9a', 'Wanita kecil adalah seorang gadis atau wanita muda. Kata ini umumnya digunakan untuk menggambarkan seseorang yang berusia antara lima dan delapan belas tahun.', 'Wanita kecil adalah seorang gadis atau wanita muda. Kata ini umumnya digunakan untuk menggambarkan seseorang yang berusia antara lima dan delapan belas tahun.') ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, character = EXCLUDED.character, slug = EXCLUDED.slug, level = EXCLUDED.level, rank_id = EXCLUDED.rank_id, meaning_mnemonic = EXCLUDED.meaning_mnemonic, description = EXCLUDED.description;
INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('9ca7fa68-e4eb-4f02-b35e-2fa20bd0206a', 'Gadis', true) ON CONFLICT DO NOTHING;
INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('9ca7fa68-e4eb-4f02-b35e-2fa20bd0206a', 'Young Lady', false) ON CONFLICT DO NOTHING;
INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES ('9ca7fa68-e4eb-4f02-b35e-2fa20bd0206a', 'しょうじょ', NULL, true) ON CONFLICT DO NOTHING;
INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('9ca7fa68-e4eb-4f02-b35e-2fa20bd0206a', 'その少女は、ゆうめいなアイドルです。', 'Wanita muda itu adalah idola terkenal.') ON CONFLICT DO NOTHING;
INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('9ca7fa68-e4eb-4f02-b35e-2fa20bd0206a', '久しぶりに、天才少女ゴルファーがあらわれました。', 'Seorang pegolf gadis jenius muncul untuk pertama kalinya setelah sekian lama.') ON CONFLICT DO NOTHING;
INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('9ca7fa68-e4eb-4f02-b35e-2fa20bd0206a', '犬と少女が、はまべをかけていった。', 'Anjing dan gadis kecil itu berlari di pantai.') ON CONFLICT DO NOTHING;
INSERT INTO public.items (id, type, character, slug, level, rank_id, meaning_mnemonic, description) VALUES ('c327cb8d-fe09-4a5c-9b89-d670d46ce553', 'vocabulary', '人工', '人工', 2, 'd4e5f6a7-b8c9-0d1e-2f3a-4b5c6d7e8f9a', 'Orang industri membuat banyak hal dengan tangan, jadi semua yang mereka buat adalah buatan, dan itu juga berarti buatan manusia.', 'Orang industri membuat banyak hal dengan tangan, jadi semua yang mereka buat adalah buatan, dan itu juga berarti buatan manusia.') ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, character = EXCLUDED.character, slug = EXCLUDED.slug, level = EXCLUDED.level, rank_id = EXCLUDED.rank_id, meaning_mnemonic = EXCLUDED.meaning_mnemonic, description = EXCLUDED.description;
INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('c327cb8d-fe09-4a5c-9b89-d670d46ce553', 'Buatan', true) ON CONFLICT DO NOTHING;
INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('c327cb8d-fe09-4a5c-9b89-d670d46ce553', 'Man Made', false) ON CONFLICT DO NOTHING;
INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('c327cb8d-fe09-4a5c-9b89-d670d46ce553', 'Human Made', false) ON CONFLICT DO NOTHING;
INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES ('c327cb8d-fe09-4a5c-9b89-d670d46ce553', 'じんこう', NULL, true) ON CONFLICT DO NOTHING;
INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('c327cb8d-fe09-4a5c-9b89-d670d46ce553', 'あなたののうは、ほんとうに人工ののうなんですか？', 'Apakah otakmu benar-benar buatan?') ON CONFLICT DO NOTHING;
INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('c327cb8d-fe09-4a5c-9b89-d670d46ce553', 'この川は、人工の川です。', 'Sungai ini buatan manusia.') ON CONFLICT DO NOTHING;
INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('c327cb8d-fe09-4a5c-9b89-d670d46ce553', 'にわに人工しばをしいてみました。', 'Saya menaruh rumput sintetis di taman.') ON CONFLICT DO NOTHING;
INSERT INTO public.items (id, type, character, slug, level, rank_id, meaning_mnemonic, description) VALUES ('8655f189-53d4-4c53-969d-171f6bf77254', 'vocabulary', '用', '用', 2, 'd4e5f6a7-b8c9-0d1e-2f3a-4b5c6d7e8f9a', 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.', 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.') ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, character = EXCLUDED.character, slug = EXCLUDED.slug, level = EXCLUDED.level, rank_id = EXCLUDED.rank_id, meaning_mnemonic = EXCLUDED.meaning_mnemonic, description = EXCLUDED.description;
INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('8655f189-53d4-4c53-969d-171f6bf77254', 'Tugas', true) ON CONFLICT DO NOTHING;
INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('8655f189-53d4-4c53-969d-171f6bf77254', 'Use', false) ON CONFLICT DO NOTHING;
INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('8655f189-53d4-4c53-969d-171f6bf77254', 'Duty', false) ON CONFLICT DO NOTHING;
INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('8655f189-53d4-4c53-969d-171f6bf77254', 'Service', false) ON CONFLICT DO NOTHING;
INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('8655f189-53d4-4c53-969d-171f6bf77254', 'Business', false) ON CONFLICT DO NOTHING;
INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('8655f189-53d4-4c53-969d-171f6bf77254', 'Purpose', false) ON CONFLICT DO NOTHING;
INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES ('8655f189-53d4-4c53-969d-171f6bf77254', 'よう', NULL, true) ON CONFLICT DO NOTHING;
INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('8655f189-53d4-4c53-969d-171f6bf77254', 'なにも用がない。', 'Saya tidak ada hubungannya.') ON CONFLICT DO NOTHING;
INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('8655f189-53d4-4c53-969d-171f6bf77254', 'なにかご用ですか？', 'Apakah Anda membutuhkan saya untuk sesuatu?') ON CONFLICT DO NOTHING;
INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('8655f189-53d4-4c53-969d-171f6bf77254', '用もないのにでんわしてくんじゃねーよ。', 'Jangan menelepon saya kecuali Anda punya alasan.') ON CONFLICT DO NOTHING;
INSERT INTO public.items (id, type, character, slug, level, rank_id, meaning_mnemonic, description) VALUES ('8927ce76-ed0e-4bfb-a05b-d6e0cfdc1b16', 'vocabulary', '以下', '以下', 2, 'd4e5f6a7-b8c9-0d1e-2f3a-4b5c6d7e8f9a', 'Dibandingkan dengan ini, itu di bawah. Itu adalah cara lain untuk mengatakan bahwa apa yang Anda miliki lebih sedikit daripada yang Anda miliki.', 'Dibandingkan dengan ini, itu di bawah. Itu adalah cara lain untuk mengatakan bahwa apa yang Anda miliki lebih sedikit daripada yang Anda miliki.') ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, character = EXCLUDED.character, slug = EXCLUDED.slug, level = EXCLUDED.level, rank_id = EXCLUDED.rank_id, meaning_mnemonic = EXCLUDED.meaning_mnemonic, description = EXCLUDED.description;
INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('8927ce76-ed0e-4bfb-a05b-d6e0cfdc1b16', 'Kurang dari', true) ON CONFLICT DO NOTHING;
INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('8927ce76-ed0e-4bfb-a05b-d6e0cfdc1b16', 'Or Less', false) ON CONFLICT DO NOTHING;
INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('8927ce76-ed0e-4bfb-a05b-d6e0cfdc1b16', 'Not Exceeding', false) ON CONFLICT DO NOTHING;
INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('8927ce76-ed0e-4bfb-a05b-d6e0cfdc1b16', 'Below', false) ON CONFLICT DO NOTHING;
INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES ('8927ce76-ed0e-4bfb-a05b-d6e0cfdc1b16', 'いか', NULL, true) ON CONFLICT DO NOTHING;
INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('8927ce76-ed0e-4bfb-a05b-d6e0cfdc1b16', '五千円以下の本だなをさがしています。', 'Saya mencari rak buku yang harganya 5.000 yen atau kurang.') ON CONFLICT DO NOTHING;
INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('8927ce76-ed0e-4bfb-a05b-d6e0cfdc1b16', 'コウイチのすきなネコのしゅるいは以下の通りです。', 'Daftar ras kucing yang disukai Koichi adalah sebagai berikut:') ON CONFLICT DO NOTHING;
INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('8927ce76-ed0e-4bfb-a05b-d6e0cfdc1b16', '以下同文です。', 'Yang di bawah ini juga sama.') ON CONFLICT DO NOTHING;
INSERT INTO public.items (id, type, character, slug, level, rank_id, meaning_mnemonic, description) VALUES ('b6450baa-441c-426c-8b2b-57853ff0bbbc', 'vocabulary', '文学', '文学', 2, 'd4e5f6a7-b8c9-0d1e-2f3a-4b5c6d7e8f9a', 'Kalau belajar menulis disebut sastra. Anda akan mempelajari banyak hal yang ditulis orang lain sebelum Anda!', 'Kalau belajar menulis disebut sastra. Anda akan mempelajari banyak hal yang ditulis orang lain sebelum Anda!') ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, character = EXCLUDED.character, slug = EXCLUDED.slug, level = EXCLUDED.level, rank_id = EXCLUDED.rank_id, meaning_mnemonic = EXCLUDED.meaning_mnemonic, description = EXCLUDED.description;
INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('b6450baa-441c-426c-8b2b-57853ff0bbbc', 'Sastra', true) ON CONFLICT DO NOTHING;
INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES ('b6450baa-441c-426c-8b2b-57853ff0bbbc', 'ぶんがく', NULL, true) ON CONFLICT DO NOTHING;
INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('b6450baa-441c-426c-8b2b-57853ff0bbbc', '文学をよむいみとは何だろうか。', 'Apa pentingnya membaca sastra?') ON CONFLICT DO NOTHING;
INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('b6450baa-441c-426c-8b2b-57853ff0bbbc', 'わたしは大学で、イギリス文学をせんこうしていました。', 'Saya mengambil jurusan sastra Inggris di universitas.') ON CONFLICT DO NOTHING;
INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('b6450baa-441c-426c-8b2b-57853ff0bbbc', '村上春樹の作品は、純文学のふりをした大衆文学だと思います。', 'Menurut saya karya Haruki Murakami adalah sastra pop yang berpura-pura menjadi sastra murni.') ON CONFLICT DO NOTHING;
INSERT INTO public.items (id, type, character, slug, level, rank_id, meaning_mnemonic, description) VALUES ('76bd3e6d-c3c3-4b78-8c02-f41c269fcc1d', 'vocabulary', '入力', '入力', 2, 'd4e5f6a7-b8c9-0d1e-2f3a-4b5c6d7e8f9a', 'Masukkan sesuatu dengan segenap kekuatan Anda dan Anda akan melihat ke bawah untuk melihat bahwa yang Anda lakukan adalah memasukkan data. Anda sedang memasukkannya sekarang! Ke situs ini! Jawaban yang Anda masukkan ke dalam WaniKani dengan segenap kekuatan Anda dapat diucapkan dengan kata ini. Wow. Lingkaran penuh sudah, dan Anda baru berada di level 2. Lihat, lanjutkan!', 'Masukkan sesuatu dengan segenap kekuatan Anda dan Anda akan melihat ke bawah untuk melihat bahwa yang Anda lakukan adalah memasukkan data. Anda sedang memasukkannya sekarang! Ke situs ini! Jawaban yang Anda masukkan ke dalam WaniKani dengan segenap kekuatan Anda dapat diucapkan dengan kata ini. Wow. Lingkaran penuh sudah, dan Anda baru berada di level 2. Lihat, lanjutkan!') ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, character = EXCLUDED.character, slug = EXCLUDED.slug, level = EXCLUDED.level, rank_id = EXCLUDED.rank_id, meaning_mnemonic = EXCLUDED.meaning_mnemonic, description = EXCLUDED.description;
INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('76bd3e6d-c3c3-4b78-8c02-f41c269fcc1d', 'Masukan', true) ON CONFLICT DO NOTHING;
INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('76bd3e6d-c3c3-4b78-8c02-f41c269fcc1d', 'Enter', false) ON CONFLICT DO NOTHING;
INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('76bd3e6d-c3c3-4b78-8c02-f41c269fcc1d', 'Entry', false) ON CONFLICT DO NOTHING;
INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES ('76bd3e6d-c3c3-4b78-8c02-f41c269fcc1d', 'にゅうりょく', NULL, true) ON CONFLICT DO NOTHING;
INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('76bd3e6d-c3c3-4b78-8c02-f41c269fcc1d', 'データの入力をおえました。', 'Saya selesai memasukkan data.') ON CONFLICT DO NOTHING;
INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('76bd3e6d-c3c3-4b78-8c02-f41c269fcc1d', 'ここに王子のソーシャルセキュリティーナンバーを入力してください。', 'Silakan masukkan nomor jaminan sosial pangeran di sini.') ON CONFLICT DO NOTHING;
INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('76bd3e6d-c3c3-4b78-8c02-f41c269fcc1d', '「ローマじ入力」と「かな入力」、どちらをつかっていますか？', 'Apakah Anda menggunakan "input romaji" atau "input kana"?') ON CONFLICT DO NOTHING;
INSERT INTO public.items (id, type, character, slug, level, rank_id, meaning_mnemonic, description) VALUES ('f93a2ba7-bed1-4be3-bc6f-f932caa658e9', 'vocabulary', '以後', '以後', 2, 'd4e5f6a7-b8c9-0d1e-2f3a-4b5c6d7e8f9a', 'Mulai setelahnya, artinya setelah ini atau mulai sekarang.', 'Mulai setelahnya, artinya setelah ini atau mulai sekarang.') ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, character = EXCLUDED.character, slug = EXCLUDED.slug, level = EXCLUDED.level, rank_id = EXCLUDED.rank_id, meaning_mnemonic = EXCLUDED.meaning_mnemonic, description = EXCLUDED.description;
INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('f93a2ba7-bed1-4be3-bc6f-f932caa658e9', 'Setelah Ini', true) ON CONFLICT DO NOTHING;
INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('f93a2ba7-bed1-4be3-bc6f-f932caa658e9', 'From Now On', false) ON CONFLICT DO NOTHING;
INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('f93a2ba7-bed1-4be3-bc6f-f932caa658e9', 'After', false) ON CONFLICT DO NOTHING;
INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('f93a2ba7-bed1-4be3-bc6f-f932caa658e9', 'Since', false) ON CONFLICT DO NOTHING;
INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES ('f93a2ba7-bed1-4be3-bc6f-f932caa658e9', 'いご', NULL, true) ON CONFLICT DO NOTHING;
INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('f93a2ba7-bed1-4be3-bc6f-f932caa658e9', '「以後、このようなことがないように、気をつけるんだぞ。」「はい、先生。以後、もっと気をつけます。」', '“Setelah ini kamu harus lebih berhati-hati agar hal ini tidak terjadi lagi.” “Ya, Guru. Saya akan lebih berhati-hati mulai sekarang.”') ON CONFLICT DO NOTHING;
INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('f93a2ba7-bed1-4be3-bc6f-f932caa658e9', '10月29日のトーフグの日以後、ビエトは行方をくらましているんだ。', 'Viet belum pernah terdengar lagi sejak 29 Oktober—Hari Tahu.') ON CONFLICT DO NOTHING;
INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('f93a2ba7-bed1-4be3-bc6f-f932caa658e9', 'それ以後、その作家は酒を一滴も飲まなくなった。', 'Setelah itu, penulis berhenti meminum alkohol, tidak setetes pun.') ON CONFLICT DO NOTHING;
INSERT INTO public.items (id, type, character, slug, level, rank_id, meaning_mnemonic, description) VALUES ('f24ac386-ef4f-4a03-ac8b-2eb7a1c262ef', 'vocabulary', '力いっぱい', '力いっぱい', 2, 'd4e5f6a7-b8c9-0d1e-2f3a-4b5c6d7e8f9a', 'Mudah-mudahan Anda sudah mengetahui bahwa 力 berarti "kekuatan". Anda mungkin juga pernah mendengar kata いっぱい karena sering digunakan dalam percakapan. Ini memiliki beberapa arti (Anda akan mempelajarinya lebih lanjut nanti) tetapi yang penting di sini adalah "penuh" atau "banyak". Gabungkan kedua kata ini dan Anda memiliki kekuatan penuh, dengan segenap kekuatan, dan sekuat yang Anda bisa. Ingat yang ini dengan segenap kekuatanmu!

Sekadar catatan tambahan: いっぱい juga bisa ditulis dalam kanji, yang akan Anda pelajari nanti! Namun, dalam kata sederhana seperti ini biasanya ditulis dalam kana.', 'Mudah-mudahan Anda sudah mengetahui bahwa 力 berarti "kekuatan". Anda mungkin juga pernah mendengar kata いっぱい karena sering digunakan dalam percakapan. Ini memiliki beberapa arti (Anda akan mempelajarinya lebih lanjut nanti) tetapi yang penting di sini adalah "penuh" atau "banyak". Gabungkan kedua kata ini dan Anda memiliki kekuatan penuh, dengan segenap kekuatan, dan sekuat yang Anda bisa. Ingat yang ini dengan segenap kekuatanmu!

Sekadar catatan tambahan: いっぱい juga bisa ditulis dalam kanji, yang akan Anda pelajari nanti! Namun, dalam kata sederhana seperti ini biasanya ditulis dalam kana.') ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, character = EXCLUDED.character, slug = EXCLUDED.slug, level = EXCLUDED.level, rank_id = EXCLUDED.rank_id, meaning_mnemonic = EXCLUDED.meaning_mnemonic, description = EXCLUDED.description;
INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('f24ac386-ef4f-4a03-ac8b-2eb7a1c262ef', 'Dengan Segala Kekuatan', true) ON CONFLICT DO NOTHING;
INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('f24ac386-ef4f-4a03-ac8b-2eb7a1c262ef', 'Full Power', false) ON CONFLICT DO NOTHING;
INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('f24ac386-ef4f-4a03-ac8b-2eb7a1c262ef', 'As Hard As One Can', false) ON CONFLICT DO NOTHING;
INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES ('f24ac386-ef4f-4a03-ac8b-2eb7a1c262ef', 'ちからいっぱい', NULL, true) ON CONFLICT DO NOTHING;
INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('f24ac386-ef4f-4a03-ac8b-2eb7a1c262ef', '力いっぱいがんばりました！', 'Kami melakukan yang terbaik!') ON CONFLICT DO NOTHING;
INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('f24ac386-ef4f-4a03-ac8b-2eb7a1c262ef', 'ドアを力いっぱいおしてください。', 'Tolong dorong pintunya sekuat tenaga.') ON CONFLICT DO NOTHING;
INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('f24ac386-ef4f-4a03-ac8b-2eb7a1c262ef', 'リレーでは力いっぱいはしりました。', 'Saya berlari secepat yang saya bisa dalam estafet.') ON CONFLICT DO NOTHING;
INSERT INTO public.items (id, type, character, slug, level, rank_id, meaning_mnemonic, description) VALUES ('c6ce93d6-419d-48a7-b4d7-a5ad8e28828f', 'vocabulary', '口にする', '口にする', 2, 'd4e5f6a7-b8c9-0d1e-2f3a-4b5c6d7e8f9a', 'Anda telah mengetahui bahwa 口 berarti "mulut" dan di sini diikuti oleh partikel に, yang menunjukkan lokasi. Kata kerja する berarti "melakukan" jadi Anda melakukan sesuatu pada mulut Anda! Logikanya, ungkapan ini digunakan untuk menggambarkan banyak tindakan yang Anda lakukan dengan mulut Anda. Kata ini sering digunakan untuk menyebutkan atau mengatakan, namun dengan tambahan nuansa deskriptif bahwa Anda telah mengatakan sesuatu secara tidak sengaja atau tidak terduga, mungkin sesuatu yang seharusnya tidak Anda katakan! 🙊

Bisa juga berarti hal-hal lain yang dilakukan dengan mulut, seperti makan dan minum!', 'Anda telah mengetahui bahwa 口 berarti "mulut" dan di sini diikuti oleh partikel に, yang menunjukkan lokasi. Kata kerja する berarti "melakukan" jadi Anda melakukan sesuatu pada mulut Anda! Logikanya, ungkapan ini digunakan untuk menggambarkan banyak tindakan yang Anda lakukan dengan mulut Anda. Kata ini sering digunakan untuk menyebutkan atau mengatakan, namun dengan tambahan nuansa deskriptif bahwa Anda telah mengatakan sesuatu secara tidak sengaja atau tidak terduga, mungkin sesuatu yang seharusnya tidak Anda katakan! 🙊

Bisa juga berarti hal-hal lain yang dilakukan dengan mulut, seperti makan dan minum!') ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, character = EXCLUDED.character, slug = EXCLUDED.slug, level = EXCLUDED.level, rank_id = EXCLUDED.rank_id, meaning_mnemonic = EXCLUDED.meaning_mnemonic, description = EXCLUDED.description;
INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('c6ce93d6-419d-48a7-b4d7-a5ad8e28828f', 'Sebut saja', true) ON CONFLICT DO NOTHING;
INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('c6ce93d6-419d-48a7-b4d7-a5ad8e28828f', 'To Say', false) ON CONFLICT DO NOTHING;
INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('c6ce93d6-419d-48a7-b4d7-a5ad8e28828f', 'To Eat', false) ON CONFLICT DO NOTHING;
INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('c6ce93d6-419d-48a7-b4d7-a5ad8e28828f', 'To Drink', false) ON CONFLICT DO NOTHING;
INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES ('c6ce93d6-419d-48a7-b4d7-a5ad8e28828f', 'くちにする', NULL, true) ON CONFLICT DO NOTHING;
INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('c6ce93d6-419d-48a7-b4d7-a5ad8e28828f', 'ぜったいにそのなまえを口にしないでね。', 'Jangan pernah menyebut nama itu, oke?') ON CONFLICT DO NOTHING;
INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('c6ce93d6-419d-48a7-b4d7-a5ad8e28828f', '女王は「好き」と口にした。', 'Kata-kata “Aku cinta kamu” terucap dari mulut ratu.') ON CONFLICT DO NOTHING;
INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('c6ce93d6-419d-48a7-b4d7-a5ad8e28828f', '王女はおそるおそる玉ねぎを口にした。', 'Sang putri memakan bawang itu dengan takut-takut.') ON CONFLICT DO NOTHING;
INSERT INTO public.items (id, type, character, slug, level, rank_id, meaning_mnemonic, description) VALUES ('75dba553-2d8d-420c-a8d5-03306994dd9c', 'vocabulary', '仕える', '仕える', 2, 'd4e5f6a7-b8c9-0d1e-2f3a-4b5c6d7e8f9a', 'Semua yang kami lakukan adalah untuk melayani Anda, Anda tahu.

Kata kerja ini agak kuno dan karena itu memiliki kesan formal. Kata ini digunakan untuk berbicara antara lain tentang melayani kaisar, raja, dan dewa.', 'Semua yang kami lakukan adalah untuk melayani Anda, Anda tahu.

Kata kerja ini agak kuno dan karena itu memiliki kesan formal. Kata ini digunakan untuk berbicara antara lain tentang melayani kaisar, raja, dan dewa.') ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, character = EXCLUDED.character, slug = EXCLUDED.slug, level = EXCLUDED.level, rank_id = EXCLUDED.rank_id, meaning_mnemonic = EXCLUDED.meaning_mnemonic, description = EXCLUDED.description;
INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('75dba553-2d8d-420c-a8d5-03306994dd9c', 'Untuk Melayani', true) ON CONFLICT DO NOTHING;
INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES ('75dba553-2d8d-420c-a8d5-03306994dd9c', 'つかえる', NULL, true) ON CONFLICT DO NOTHING;
INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('75dba553-2d8d-420c-a8d5-03306994dd9c', 'この家に仕える使用人は、とても礼儀が正しい。', 'Para pelayan yang melayani di rumah ini sangat sopan.') ON CONFLICT DO NOTHING;
INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('75dba553-2d8d-420c-a8d5-03306994dd9c', 'その女性は、明治天皇に仕えていた女官のようです。', 'Wanita itu sepertinya adalah pejabat wanita yang melayani Kaisar Meiji.') ON CONFLICT DO NOTHING;
INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('75dba553-2d8d-420c-a8d5-03306994dd9c', 'はじめまして。今日から神に仕えることになった天使です。', 'Senang berkenalan dengan Anda. Saya seorang malaikat yang mulai melayani Tuhan hari ini.') ON CONFLICT DO NOTHING;
INSERT INTO public.items (id, type, character, slug, level, rank_id, meaning_mnemonic, description) VALUES ('7ea5a5bd-1fca-4aa8-a598-f287796f830f', 'vocabulary', 'ナポレオン三世', 'ナポレオン三世', 2, 'd4e5f6a7-b8c9-0d1e-2f3a-4b5c6d7e8f9a', 'Menambahkan "generasi ketiga" pada nama seseorang berarti mereka adalah generasi ketiga dari orang-orang dengan nama tersebut. Dalam hal ini, nama orang tersebut adalah ナポレオン (Napoleon), jadi ini berarti Napoleon Yang Ketiga, juga ditulis sebagai Napoleon III.', 'Menambahkan "generasi ketiga" pada nama seseorang berarti mereka adalah generasi ketiga dari orang-orang dengan nama tersebut. Dalam hal ini, nama orang tersebut adalah ナポレオン (Napoleon), jadi ini berarti Napoleon Yang Ketiga, juga ditulis sebagai Napoleon III.') ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, character = EXCLUDED.character, slug = EXCLUDED.slug, level = EXCLUDED.level, rank_id = EXCLUDED.rank_id, meaning_mnemonic = EXCLUDED.meaning_mnemonic, description = EXCLUDED.description;
INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('7ea5a5bd-1fca-4aa8-a598-f287796f830f', 'Napoleon Yang Ketiga', true) ON CONFLICT DO NOTHING;
INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('7ea5a5bd-1fca-4aa8-a598-f287796f830f', 'Napoleon III', false) ON CONFLICT DO NOTHING;
INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES ('7ea5a5bd-1fca-4aa8-a598-f287796f830f', 'なぽれおんさんせい', NULL, true) ON CONFLICT DO NOTHING;
INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES ('7ea5a5bd-1fca-4aa8-a598-f287796f830f', 'ナポレオンさんせい', NULL, false) ON CONFLICT DO NOTHING;
INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('7ea5a5bd-1fca-4aa8-a598-f287796f830f', '今日は、ナポレオン三世について学びましょう。', 'Hari ini, kita akan belajar tentang Napoleon Yang Ketiga.') ON CONFLICT DO NOTHING;
INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('7ea5a5bd-1fca-4aa8-a598-f287796f830f', 'ナポレオン三世は1808年に生まれた。', 'Napoleon III lahir pada tahun 1808.') ON CONFLICT DO NOTHING;
INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('7ea5a5bd-1fca-4aa8-a598-f287796f830f', 'ナポレオン・ボナパルトはナポレオン三世より有名ですよね。', 'Napoleon Bonaparte lebih terkenal dari Napoleon III ya?') ON CONFLICT DO NOTHING;

-- 5. Insert Kanji-to-Radical Prerequisites
INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT 'e0f1e139-fa80-4e51-96d8-60a9f9e6deb1', id FROM public.items WHERE type = 'radical' AND slug = 'power' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.kanji_radicals (kanji_id, radical_id)
SELECT 'e0f1e139-fa80-4e51-96d8-60a9f9e6deb1', id FROM public.items WHERE type = 'radical' AND slug = 'power' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT 'a9d7ef1e-70fc-430f-9cdf-36b5bc38d960', id FROM public.items WHERE type = 'radical' AND slug = 'mouth' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.kanji_radicals (kanji_id, radical_id)
SELECT 'a9d7ef1e-70fc-430f-9cdf-36b5bc38d960', id FROM public.items WHERE type = 'radical' AND slug = 'mouth' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT 'a5cfd66d-fe67-46e6-ad66-0985b005eb1d', id FROM public.items WHERE type = 'radical' AND slug = 'construction' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.kanji_radicals (kanji_id, radical_id)
SELECT 'a5cfd66d-fe67-46e6-ad66-0985b005eb1d', id FROM public.items WHERE type = 'radical' AND slug = 'construction' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '784c84f4-6c23-4835-bcf4-44f6136c66e9', id FROM public.items WHERE type = 'radical' AND slug = 'evening' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.kanji_radicals (kanji_id, radical_id)
SELECT '784c84f4-6c23-4835-bcf4-44f6136c66e9', id FROM public.items WHERE type = 'radical' AND slug = 'evening' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT 'fe1c12e2-592c-4085-8db1-16e923d27772', id FROM public.items WHERE type = 'radical' AND slug = 'hand' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.kanji_radicals (kanji_id, radical_id)
SELECT 'fe1c12e2-592c-4085-8db1-16e923d27772', id FROM public.items WHERE type = 'radical' AND slug = 'hand' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '426aac96-2336-43ac-be37-ad9375cb1d81', id FROM public.items WHERE type = 'radical' AND slug = 'direction' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.kanji_radicals (kanji_id, radical_id)
SELECT '426aac96-2336-43ac-be37-ad9375cb1d81', id FROM public.items WHERE type = 'radical' AND slug = 'direction' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT 'f409f927-b633-442a-aa45-9156292dcbad', id FROM public.items WHERE type = 'radical' AND slug = 'heart' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.kanji_radicals (kanji_id, radical_id)
SELECT 'f409f927-b633-442a-aa45-9156292dcbad', id FROM public.items WHERE type = 'radical' AND slug = 'heart' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '287a6803-0a67-4838-b231-8e43e5d255fb', id FROM public.items WHERE type = 'radical' AND slug = 'not' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.kanji_radicals (kanji_id, radical_id)
SELECT '287a6803-0a67-4838-b231-8e43e5d255fb', id FROM public.items WHERE type = 'radical' AND slug = 'not' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '3b03bb02-17a8-400d-bdd3-b7e27df00075', id FROM public.items WHERE type = 'radical' AND slug = 'origin' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.kanji_radicals (kanji_id, radical_id)
SELECT '3b03bb02-17a8-400d-bdd3-b7e27df00075', id FROM public.items WHERE type = 'radical' AND slug = 'origin' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '43918d15-2ac3-4a22-ba0d-1d6ac7801352', id FROM public.items WHERE type = 'radical' AND slug = 'small' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.kanji_radicals (kanji_id, radical_id)
SELECT '43918d15-2ac3-4a22-ba0d-1d6ac7801352', id FROM public.items WHERE type = 'radical' AND slug = 'small' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '43918d15-2ac3-4a22-ba0d-1d6ac7801352', id FROM public.items WHERE type = 'radical' AND slug = 'slide' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.kanji_radicals (kanji_id, radical_id)
SELECT '43918d15-2ac3-4a22-ba0d-1d6ac7801352', id FROM public.items WHERE type = 'radical' AND slug = 'slide' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '07ac5eeb-f625-4af3-817c-b3b4e954715f', id FROM public.items WHERE type = 'radical' AND slug = 'seven' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.kanji_radicals (kanji_id, radical_id)
SELECT '07ac5eeb-f625-4af3-817c-b3b4e954715f', id FROM public.items WHERE type = 'radical' AND slug = 'seven' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '07ac5eeb-f625-4af3-817c-b3b4e954715f', id FROM public.items WHERE type = 'radical' AND slug = 'sword' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.kanji_radicals (kanji_id, radical_id)
SELECT '07ac5eeb-f625-4af3-817c-b3b4e954715f', id FROM public.items WHERE type = 'radical' AND slug = 'sword' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '6ed84f05-23b5-4611-80e7-3b4becb50e7b', id FROM public.items WHERE type = 'radical' AND slug = 'stop' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.kanji_radicals (kanji_id, radical_id)
SELECT '6ed84f05-23b5-4611-80e7-3b4becb50e7b', id FROM public.items WHERE type = 'radical' AND slug = 'stop' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT 'fdb76ab7-02d9-4791-9280-71b45e40ae94', id FROM public.items WHERE type = 'radical' AND slug = 'writing' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.kanji_radicals (kanji_id, radical_id)
SELECT 'fdb76ab7-02d9-4791-9280-71b45e40ae94', id FROM public.items WHERE type = 'radical' AND slug = 'writing' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT 'fa07190b-fc75-4b59-bfb5-88c72ff21de5', id FROM public.items WHERE type = 'radical' AND slug = 'fins' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.kanji_radicals (kanji_id, radical_id)
SELECT 'fa07190b-fc75-4b59-bfb5-88c72ff21de5', id FROM public.items WHERE type = 'radical' AND slug = 'fins' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT 'fa07190b-fc75-4b59-bfb5-88c72ff21de5', id FROM public.items WHERE type = 'radical' AND slug = 'private' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.kanji_radicals (kanji_id, radical_id)
SELECT 'fa07190b-fc75-4b59-bfb5-88c72ff21de5', id FROM public.items WHERE type = 'radical' AND slug = 'private' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '0ab21533-8d9d-474c-9269-c80ecc0cfdb3', id FROM public.items WHERE type = 'radical' AND slug = 'dog' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.kanji_radicals (kanji_id, radical_id)
SELECT '0ab21533-8d9d-474c-9269-c80ecc0cfdb3', id FROM public.items WHERE type = 'radical' AND slug = 'dog' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT 'e66cacc3-8efa-42b4-b5a2-bbc5903fd1be', id FROM public.items WHERE type = 'radical' AND slug = 'cow' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.kanji_radicals (kanji_id, radical_id)
SELECT 'e66cacc3-8efa-42b4-b5a2-bbc5903fd1be', id FROM public.items WHERE type = 'radical' AND slug = 'cow' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '7dc6c977-26cc-4055-b60f-d4e881a9eb7e', id FROM public.items WHERE type = 'radical' AND slug = 'eye' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.kanji_radicals (kanji_id, radical_id)
SELECT '7dc6c977-26cc-4055-b60f-d4e881a9eb7e', id FROM public.items WHERE type = 'radical' AND slug = 'eye' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '612b440d-aefe-4a90-89d3-9556dc1e1862', id FROM public.items WHERE type = 'radical' AND slug = 'stand' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.kanji_radicals (kanji_id, radical_id)
SELECT '612b440d-aefe-4a90-89d3-9556dc1e1862', id FROM public.items WHERE type = 'radical' AND slug = 'stand' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '055ac98c-0e93-4444-87f6-f8b4bc9fa77b', id FROM public.items WHERE type = 'radical' AND slug = 'task' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.kanji_radicals (kanji_id, radical_id)
SELECT '055ac98c-0e93-4444-87f6-f8b4bc9fa77b', id FROM public.items WHERE type = 'radical' AND slug = 'task' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '84f71e6f-71f0-4637-af05-0d2f448e088b', id FROM public.items WHERE type = 'radical' AND slug = 'rice-paddy' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.kanji_radicals (kanji_id, radical_id)
SELECT '84f71e6f-71f0-4637-af05-0d2f448e088b', id FROM public.items WHERE type = 'radical' AND slug = 'rice-paddy' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '76d77c98-0e5e-43c6-baf5-64cb3355cf58', id FROM public.items WHERE type = 'radical' AND slug = 'leader' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.kanji_radicals (kanji_id, radical_id)
SELECT '76d77c98-0e5e-43c6-baf5-64cb3355cf58', id FROM public.items WHERE type = 'radical' AND slug = 'leader' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '76d77c98-0e5e-43c6-baf5-64cb3355cf58', id FROM public.items WHERE type = 'radical' AND slug = 'ceremony' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.kanji_radicals (kanji_id, radical_id)
SELECT '76d77c98-0e5e-43c6-baf5-64cb3355cf58', id FROM public.items WHERE type = 'radical' AND slug = 'ceremony' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '57039dbc-7af0-4505-be71-08d09465e212', id FROM public.items WHERE type = 'radical' AND slug = 'world' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.kanji_radicals (kanji_id, radical_id)
SELECT '57039dbc-7af0-4505-be71-08d09465e212', id FROM public.items WHERE type = 'radical' AND slug = 'world' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT 'eb24585c-7a09-42de-8633-59a57a02bab6', id FROM public.items WHERE type = 'radical' AND slug = 'ground' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.kanji_radicals (kanji_id, radical_id)
SELECT 'eb24585c-7a09-42de-8633-59a57a02bab6', id FROM public.items WHERE type = 'radical' AND slug = 'ground' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT 'eb24585c-7a09-42de-8633-59a57a02bab6', id FROM public.items WHERE type = 'radical' AND slug = 'stop' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.kanji_radicals (kanji_id, radical_id)
SELECT 'eb24585c-7a09-42de-8633-59a57a02bab6', id FROM public.items WHERE type = 'radical' AND slug = 'stop' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '0dedcc46-3e44-403e-91d4-a75ed65d4a64', id FROM public.items WHERE type = 'radical' AND slug = 'lion' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.kanji_radicals (kanji_id, radical_id)
SELECT '0dedcc46-3e44-403e-91d4-a75ed65d4a64', id FROM public.items WHERE type = 'radical' AND slug = 'lion' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '0dedcc46-3e44-403e-91d4-a75ed65d4a64', id FROM public.items WHERE type = 'radical' AND slug = 'drop' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.kanji_radicals (kanji_id, radical_id)
SELECT '0dedcc46-3e44-403e-91d4-a75ed65d4a64', id FROM public.items WHERE type = 'radical' AND slug = 'drop' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '0dedcc46-3e44-403e-91d4-a75ed65d4a64', id FROM public.items WHERE type = 'radical' AND slug = 'person' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.kanji_radicals (kanji_id, radical_id)
SELECT '0dedcc46-3e44-403e-91d4-a75ed65d4a64', id FROM public.items WHERE type = 'radical' AND slug = 'person' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT 'df6ba003-2b4c-4bb8-a56b-0b257bc14d98', id FROM public.items WHERE type = 'radical' AND slug = 'master' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.kanji_radicals (kanji_id, radical_id)
SELECT 'df6ba003-2b4c-4bb8-a56b-0b257bc14d98', id FROM public.items WHERE type = 'radical' AND slug = 'master' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '97e7872e-69a7-4710-9c41-64c0458cac43', id FROM public.items WHERE type = 'radical' AND slug = 'leader' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.kanji_radicals (kanji_id, radical_id)
SELECT '97e7872e-69a7-4710-9c41-64c0458cac43', id FROM public.items WHERE type = 'radical' AND slug = 'leader' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '97e7872e-69a7-4710-9c41-64c0458cac43', id FROM public.items WHERE type = 'radical' AND slug = 'samurai' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.kanji_radicals (kanji_id, radical_id)
SELECT '97e7872e-69a7-4710-9c41-64c0458cac43', id FROM public.items WHERE type = 'radical' AND slug = 'samurai' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '73625a8a-ec89-4ce3-b6b2-2093638116bc', id FROM public.items WHERE type = 'radical' AND slug = 'lip-ring' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.kanji_radicals (kanji_id, radical_id)
SELECT '73625a8a-ec89-4ce3-b6b2-2093638116bc', id FROM public.items WHERE type = 'radical' AND slug = 'lip-ring' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '542d3210-7fbb-4f22-98e5-2880c92b401f', id FROM public.items WHERE type = 'radical' AND slug = 'private' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.kanji_radicals (kanji_id, radical_id)
SELECT '542d3210-7fbb-4f22-98e5-2880c92b401f', id FROM public.items WHERE type = 'radical' AND slug = 'private' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '542d3210-7fbb-4f22-98e5-2880c92b401f', id FROM public.items WHERE type = 'radical' AND slug = 'mouth' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.kanji_radicals (kanji_id, radical_id)
SELECT '542d3210-7fbb-4f22-98e5-2880c92b401f', id FROM public.items WHERE type = 'radical' AND slug = 'mouth' LIMIT 1 ON CONFLICT DO NOTHING;

-- 6. Insert Vocab-to-Kanji Prerequisites
INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('d7bcd275-0788-4950-af8c-3db303f45de8', 'e0f1e139-fa80-4e51-96d8-60a9f9e6deb1') ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('d7bcd275-0788-4950-af8c-3db303f45de8', 'e0f1e139-fa80-4e51-96d8-60a9f9e6deb1') ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('6eb9541f-cfdb-457e-8a08-40bc9d4032e8', 'a9d7ef1e-70fc-430f-9cdf-36b5bc38d960') ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('6eb9541f-cfdb-457e-8a08-40bc9d4032e8', 'a9d7ef1e-70fc-430f-9cdf-36b5bc38d960') ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT 'f71a1465-b502-4e67-8fd9-cea3d347433d', id FROM public.items WHERE type = 'kanji' AND character = '入' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id)
SELECT 'f71a1465-b502-4e67-8fd9-cea3d347433d', id FROM public.items WHERE type = 'kanji' AND character = '入' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('f71a1465-b502-4e67-8fd9-cea3d347433d', 'a9d7ef1e-70fc-430f-9cdf-36b5bc38d960') ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('f71a1465-b502-4e67-8fd9-cea3d347433d', 'a9d7ef1e-70fc-430f-9cdf-36b5bc38d960') ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('7ee772b1-383d-4b2f-a9f2-904be213eac5', '784c84f4-6c23-4835-bcf4-44f6136c66e9') ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('7ee772b1-383d-4b2f-a9f2-904be213eac5', '784c84f4-6c23-4835-bcf4-44f6136c66e9') ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('4aef0f92-1adf-4b68-9a7d-147187046908', 'fe1c12e2-592c-4085-8db1-16e923d27772') ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('4aef0f92-1adf-4b68-9a7d-147187046908', 'fe1c12e2-592c-4085-8db1-16e923d27772') ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '8f985df2-785c-4d26-856f-9c0ce8e9c362', id FROM public.items WHERE type = 'kanji' AND character = '下' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id)
SELECT '8f985df2-785c-4d26-856f-9c0ce8e9c362', id FROM public.items WHERE type = 'kanji' AND character = '下' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('8f985df2-785c-4d26-856f-9c0ce8e9c362', 'fe1c12e2-592c-4085-8db1-16e923d27772') ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('8f985df2-785c-4d26-856f-9c0ce8e9c362', 'fe1c12e2-592c-4085-8db1-16e923d27772') ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '2cb97827-0486-4265-a852-ccec1c46c8f5', id FROM public.items WHERE type = 'kanji' AND character = '上' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id)
SELECT '2cb97827-0486-4265-a852-ccec1c46c8f5', id FROM public.items WHERE type = 'kanji' AND character = '上' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('2cb97827-0486-4265-a852-ccec1c46c8f5', 'fe1c12e2-592c-4085-8db1-16e923d27772') ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('2cb97827-0486-4265-a852-ccec1c46c8f5', 'fe1c12e2-592c-4085-8db1-16e923d27772') ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('1f6e24ad-ebe2-4c75-a659-5f0c0f4a1a67', 'fdb76ab7-02d9-4791-9280-71b45e40ae94') ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('1f6e24ad-ebe2-4c75-a659-5f0c0f4a1a67', 'fdb76ab7-02d9-4791-9280-71b45e40ae94') ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('047fd314-c5a2-4ca6-9065-1df50b36a58a', '0ab21533-8d9d-474c-9269-c80ecc0cfdb3') ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('047fd314-c5a2-4ca6-9065-1df50b36a58a', '0ab21533-8d9d-474c-9269-c80ecc0cfdb3') ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '7a57f3cd-55a2-444e-a4c9-55a6287b327f', id FROM public.items WHERE type = 'kanji' AND character = '子' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id)
SELECT '7a57f3cd-55a2-444e-a4c9-55a6287b327f', id FROM public.items WHERE type = 'kanji' AND character = '子' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('7a57f3cd-55a2-444e-a4c9-55a6287b327f', '0ab21533-8d9d-474c-9269-c80ecc0cfdb3') ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('7a57f3cd-55a2-444e-a4c9-55a6287b327f', '0ab21533-8d9d-474c-9269-c80ecc0cfdb3') ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT 'c58f9d31-5e27-41db-91e6-bd8e70380f73', id FROM public.items WHERE type = 'kanji' AND character = '出' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id)
SELECT 'c58f9d31-5e27-41db-91e6-bd8e70380f73', id FROM public.items WHERE type = 'kanji' AND character = '出' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('c58f9d31-5e27-41db-91e6-bd8e70380f73', 'a9d7ef1e-70fc-430f-9cdf-36b5bc38d960') ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('c58f9d31-5e27-41db-91e6-bd8e70380f73', 'a9d7ef1e-70fc-430f-9cdf-36b5bc38d960') ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '1730b1c0-a124-461a-9813-a4cf438c1cbe', id FROM public.items WHERE type = 'kanji' AND character = '右' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id)
SELECT '1730b1c0-a124-461a-9813-a4cf438c1cbe', id FROM public.items WHERE type = 'kanji' AND character = '右' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('1730b1c0-a124-461a-9813-a4cf438c1cbe', 'fe1c12e2-592c-4085-8db1-16e923d27772') ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('1730b1c0-a124-461a-9813-a4cf438c1cbe', 'fe1c12e2-592c-4085-8db1-16e923d27772') ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT 'e0f76efd-5cb9-4719-b0f2-42d5777d6724', id FROM public.items WHERE type = 'kanji' AND character = '左' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id)
SELECT 'e0f76efd-5cb9-4719-b0f2-42d5777d6724', id FROM public.items WHERE type = 'kanji' AND character = '左' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('e0f76efd-5cb9-4719-b0f2-42d5777d6724', 'fe1c12e2-592c-4085-8db1-16e923d27772') ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('e0f76efd-5cb9-4719-b0f2-42d5777d6724', 'fe1c12e2-592c-4085-8db1-16e923d27772') ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('d61f1cbd-c8ed-4247-97fe-744051d510c0', 'eb24585c-7a09-42de-8633-59a57a02bab6') ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('d61f1cbd-c8ed-4247-97fe-744051d510c0', 'eb24585c-7a09-42de-8633-59a57a02bab6') ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('df1e3f93-7f47-4e5d-a657-ef3090d2bc58', 'eb24585c-7a09-42de-8633-59a57a02bab6') ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('df1e3f93-7f47-4e5d-a657-ef3090d2bc58', 'eb24585c-7a09-42de-8633-59a57a02bab6') ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('2355f74a-b30b-4aec-93f6-f7a9366d7eb4', '84f71e6f-71f0-4637-af05-0d2f448e088b') ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('2355f74a-b30b-4aec-93f6-f7a9366d7eb4', '84f71e6f-71f0-4637-af05-0d2f448e088b') ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('6e05c9f9-2f0d-48f1-afdd-78e87c97eefa', '7dc6c977-26cc-4055-b60f-d4e881a9eb7e') ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('6e05c9f9-2f0d-48f1-afdd-78e87c97eefa', '7dc6c977-26cc-4055-b60f-d4e881a9eb7e') ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('61ca5759-bfc5-4c0e-88cb-e69cdcf9891a', '612b440d-aefe-4a90-89d3-9556dc1e1862') ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('61ca5759-bfc5-4c0e-88cb-e69cdcf9891a', '612b440d-aefe-4a90-89d3-9556dc1e1862') ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('2b2fcd77-056b-4a29-bba8-5934da191c11', '612b440d-aefe-4a90-89d3-9556dc1e1862') ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('2b2fcd77-056b-4a29-bba8-5934da191c11', '612b440d-aefe-4a90-89d3-9556dc1e1862') ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('eebb8345-8b06-44ed-85f2-1dc822e4cfbe', '3b03bb02-17a8-400d-bdd3-b7e27df00075') ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('eebb8345-8b06-44ed-85f2-1dc822e4cfbe', '3b03bb02-17a8-400d-bdd3-b7e27df00075') ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('98f31d19-7a9f-428d-8514-f0347d1a3772', '07ac5eeb-f625-4af3-817c-b3b4e954715f') ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('98f31d19-7a9f-428d-8514-f0347d1a3772', '07ac5eeb-f625-4af3-817c-b3b4e954715f') ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT 'ba65942b-d55f-4398-94b7-b57ce8811391', id FROM public.items WHERE type = 'kanji' AND character = '大' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id)
SELECT 'ba65942b-d55f-4398-94b7-b57ce8811391', id FROM public.items WHERE type = 'kanji' AND character = '大' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('ba65942b-d55f-4398-94b7-b57ce8811391', '07ac5eeb-f625-4af3-817c-b3b4e954715f') ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('ba65942b-d55f-4398-94b7-b57ce8811391', '07ac5eeb-f625-4af3-817c-b3b4e954715f') ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('9d8f66c6-133d-4aa8-9586-001bfbc492c9', '07ac5eeb-f625-4af3-817c-b3b4e954715f') ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('9d8f66c6-133d-4aa8-9586-001bfbc492c9', '07ac5eeb-f625-4af3-817c-b3b4e954715f') ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('aee5d7f5-f9cc-42da-a970-e1bed90c9685', '43918d15-2ac3-4a22-ba0d-1d6ac7801352') ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('aee5d7f5-f9cc-42da-a970-e1bed90c9685', '43918d15-2ac3-4a22-ba0d-1d6ac7801352') ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('d05b5c11-3541-48cf-bae9-64d9ec3fa085', '43918d15-2ac3-4a22-ba0d-1d6ac7801352') ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('d05b5c11-3541-48cf-bae9-64d9ec3fa085', '43918d15-2ac3-4a22-ba0d-1d6ac7801352') ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('23aabb75-a835-487e-b452-5df8c00d7210', 'f409f927-b633-442a-aa45-9156292dcbad') ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('23aabb75-a835-487e-b452-5df8c00d7210', 'f409f927-b633-442a-aa45-9156292dcbad') ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('ad862c24-bb74-46d9-97de-942593bcf0ef', '426aac96-2336-43ac-be37-ad9375cb1d81') ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('ad862c24-bb74-46d9-97de-942593bcf0ef', '426aac96-2336-43ac-be37-ad9375cb1d81') ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('220e17cd-1c0b-4cc6-ab2f-a19f6ed24af9', '6ed84f05-23b5-4611-80e7-3b4becb50e7b') ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('220e17cd-1c0b-4cc6-ab2f-a19f6ed24af9', '6ed84f05-23b5-4611-80e7-3b4becb50e7b') ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('021346c8-94de-4a4f-839e-d941a551bd4e', '6ed84f05-23b5-4611-80e7-3b4becb50e7b') ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('021346c8-94de-4a4f-839e-d941a551bd4e', '6ed84f05-23b5-4611-80e7-3b4becb50e7b') ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT 'fa5b9f86-650f-4848-bf1b-4b9e8752a798', id FROM public.items WHERE type = 'kanji' AND character = '中' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id)
SELECT 'fa5b9f86-650f-4848-bf1b-4b9e8752a798', id FROM public.items WHERE type = 'kanji' AND character = '中' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('fa5b9f86-650f-4848-bf1b-4b9e8752a798', '6ed84f05-23b5-4611-80e7-3b4becb50e7b') ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('fa5b9f86-650f-4848-bf1b-4b9e8752a798', '6ed84f05-23b5-4611-80e7-3b4becb50e7b') ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('b721dfeb-9212-434a-98d6-2feaa809a8a2', 'e66cacc3-8efa-42b4-b5a2-bbc5903fd1be') ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('b721dfeb-9212-434a-98d6-2feaa809a8a2', 'e66cacc3-8efa-42b4-b5a2-bbc5903fd1be') ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '809b44cb-53a1-4ed5-a7e6-39c8a7046e74', id FROM public.items WHERE type = 'kanji' AND character = '一' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id)
SELECT '809b44cb-53a1-4ed5-a7e6-39c8a7046e74', id FROM public.items WHERE type = 'kanji' AND character = '一' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('809b44cb-53a1-4ed5-a7e6-39c8a7046e74', '542d3210-7fbb-4f22-98e5-2880c92b401f') ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('809b44cb-53a1-4ed5-a7e6-39c8a7046e74', '542d3210-7fbb-4f22-98e5-2880c92b401f') ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '291288cb-78e5-425b-9618-a760fe7bd911', id FROM public.items WHERE type = 'kanji' AND character = '二' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id)
SELECT '291288cb-78e5-425b-9618-a760fe7bd911', id FROM public.items WHERE type = 'kanji' AND character = '二' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('291288cb-78e5-425b-9618-a760fe7bd911', '542d3210-7fbb-4f22-98e5-2880c92b401f') ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('291288cb-78e5-425b-9618-a760fe7bd911', '542d3210-7fbb-4f22-98e5-2880c92b401f') ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT 'f13c56fd-b1ad-4637-829e-13664ee09672', id FROM public.items WHERE type = 'kanji' AND character = '五' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id)
SELECT 'f13c56fd-b1ad-4637-829e-13664ee09672', id FROM public.items WHERE type = 'kanji' AND character = '五' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('f13c56fd-b1ad-4637-829e-13664ee09672', '542d3210-7fbb-4f22-98e5-2880c92b401f') ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('f13c56fd-b1ad-4637-829e-13664ee09672', '542d3210-7fbb-4f22-98e5-2880c92b401f') ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '6dbd3c77-8d1f-4d87-9851-6446cf3ff071', id FROM public.items WHERE type = 'kanji' AND character = '十' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id)