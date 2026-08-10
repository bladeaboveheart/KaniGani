-- ====================================================
-- KaniGani — Seed Data Level 31 (v2, relasional)
-- Auto-generated with Indonesian Slugs
-- ====================================================

DO $$
DECLARE
  -- ============ RADICAL IDs (Level 31) ============
  r_333_taring UUID; r_334_berbaris UUID; r_336_menggertak UUID; r_337_roket UUID; r_338_perpustakaan UUID; r_432_perut UUID; r_8829_pria UUID;

  -- ============ KANJI IDs (Level 31) ============
  k_1096_menghalangi UUID; k_1316_perut UUID; k_1443_melepaskan UUID; k_1444_larut UUID; k_1445_merajut UUID; k_1446_menyolok UUID; k_1447_sebelumnya UUID; k_1448_normal UUID; k_1449_luar_biasa UUID; k_1450_model UUID; k_1451_mengecualikan UUID; k_1452_menanyakan UUID; k_1453_berapa_banyak UUID; k_1454_koridor UUID; k_1455_menyapu UUID; k_1456_lumpur UUID; k_1457_tiang UUID; k_1458_terkejut UUID; k_1459_mendesah UUID; k_1460_gudang UUID; k_1461_cucu UUID; k_1462_sarang UUID; k_1463_sabuk UUID; k_1464_diameter UUID; k_1465_menyelamatkan UUID; k_1466_menyebarkan UUID; k_1467_bubuk UUID; k_1468_pembuluh_darah UUID; k_1469_sayuran UUID; k_1470_kargo UUID; k_1471_tanah UUID; k_1472_mirip UUID; k_1473_setara UUID; k_1474_kuburan UUID; k_1475_kaya UUID; k_1476_kebajikan UUID; k_1477_mencari UUID; k_1478_mengintai UUID;

  -- ============ VOCABULARY IDs (Level 31) ============
  v_4276_halangan UUID; v_5073_sakit_perut UUID; v_5319_fotografi_rahasia UUID; v_5337_untuk_menerangi UUID; v_5398_tiket_pesawat UUID; v_5402_hidung_tersumbat UUID; v_5403_untuk_merenung UUID; v_5404_untuk_menatap UUID; v_5405_anjing_jantan UUID; v_5406_membiarkan_sesuatu_padam UUID; v_5407_merasa_gugup UUID; v_5408_fusi UUID; v_5409_pembiayaan UUID; v_5410_menjadi_terpisah UUID; v_5411_perceraian UUID; v_5412_pemisahan UUID; v_5413_segel UUID; v_5414_menjadi_rusak UUID; v_5415_hal_yang_rapuh UUID; v_5416_sudah UUID; v_5417_yang_ada UUID; v_5418_diputuskan UUID; v_5419_normal UUID; v_5420_biasa UUID; v_5421_untuk_merajut UUID; v_5422_sunting UUID; v_5423_editor UUID; v_5424_menteri_luar_negeri UUID; v_5426_cerah_dan_mencolok UUID; v_5427_cina UUID; v_5429_mewah UUID; v_5432_penilaian UUID; v_5433_untuk_mengecualikan UUID; v_5434_pembersihan UUID; v_5435_pengecualian UUID; v_5436_untuk_bertanya UUID; v_5437_interogasi UUID; v_5438_berapa_harganya UUID; v_5439_berapa_banyak UUID; v_5440_geometri UUID; v_5441_koridor UUID; v_5442_galeri_gambar UUID; v_5443_untuk_menyapu UUID; v_5444_lumpur UUID; v_5445_air_berlumpur UUID; v_5446_tiang UUID; v_5447_terkejut UUID; v_5448_keheranan UUID; v_5449_untuk_meratap UUID; v_5450_mendesah UUID; v_5451_tanda_seru UUID; v_5452_gudang UUID; v_5453_gudang UUID; v_5454_keturunan UUID; v_5455_cucu UUID; v_5456_sarang UUID; v_5457_tinggalkan_sarang UUID; v_5458_sarang_lebah UUID; v_5459_jaring_laba_laba UUID; v_5460_obi UUID; v_5461_daerah UUID; v_5462_diameter UUID; v_5463_radius UUID; v_5465_ambulans UUID; v_5467_menjadi_tersebar UUID; v_5468_jalan_jalan UUID; v_5469_pembubaran UUID; v_5470_bubuk UUID; v_5471_tepung_terigu UUID; v_5472_demam_alergi_serbuk_bunga UUID; v_5473_bubuk UUID; v_5475_pegunungan UUID; v_5477_sayuran UUID; v_5478_pola_makan_vegetarian UUID; v_5479_kargo UUID; v_5480_mata_uang UUID; v_5481_benua UUID; v_5482_tentara_darat UUID; v_5483_menyerupai UUID; v_5485_rata_rata UUID; v_5486_persamaan UUID; v_5487_simetri UUID; v_5488_kuburan UUID; v_5489_pemakaman UUID; v_5490_gunung_fuji UUID; v_5491_menjadi_kaya UUID; v_5492_kekayaan UUID; v_5493_kaya UUID; v_5494_moral UUID; v_5495_tokugawa UUID; v_5496_prefektur_tokushima UUID; v_5497_yang_harus_diperhatikan UUID; v_5498_penyelidikan_akademik UUID; v_5499_detektif_swasta UUID; v_5500_investigasi_rahasia UUID; v_5512_untuk_menikah UUID; v_5702_takut UUID; v_5703_untuk_memimpin_seseorang_tersesat UUID; v_5704_untuk_menumpuk_sesuatu UUID; v_5705_menjadi_tuan_rumah UUID; v_5706_untuk_mendesak UUID; v_7605_berapa_kali UUID; v_7660_mungkin UUID; v_7720_takut UUID; v_7774_pengawal UUID; v_8686_rangkaian_bunga UUID; v_8718_perut UUID; v_8722_mencolok UUID; v_8935_untuk_diperpanjang UUID; v_9046_negara_kita UUID; v_9063_pria UUID; v_9076_melimpah UUID; v_9366_untuk_menghemat UUID; v_9482_kota UUID; v_9483_pemandangan_kota UUID; v_9498_lega UUID;

BEGIN

  DELETE FROM items WHERE level = 31;

  -- 1. RADICALS
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '牙', 'taring', 31, 1, 'Bayangkan ini di mulut Anda. Itu adalah satu gigi yang paling menonjol dibandingkan gigi lainnya. Itu adalah <radikal>taring</radikal> Anda. Dapatkah Anda melihat ini keluar dari mulut serigala? Cobalah jika Anda tidak dapat membayangkan diri Anda memiliki taring sekeren ini.')
    RETURNING id INTO r_333_taring;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '並', 'berbaris', 31, 2, 'Radikal ini sama dengan kanji. Artinya <radikal>berbaris</radikal>.')
    RETURNING id INTO r_334_berbaris;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '鬲', 'menggertak', 31, 3, 'Dia menjalar dan dia Four-T (empat puluh). Jika orang seperti ini merinding pada Anda, mereka hanyalah <radikal>pengganggu</radikal>. Ketika Anda mencapai usia empat puluh, Anda tidak seharusnya lagi mengganggu orang lain. Anda pengganggu. Anda brengsek.')
    RETURNING id INTO r_336_menggertak;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '离', 'roket', 31, 4, 'Lihat bagaimana ada penutup di atas peti harta karun? Itu karena semuanya adalah <radical>roket</radikal> yang berisi semua barang (harta) yang diperlukan untuk hidup di luar angkasa. Namun, bagian bawah dari kata radikal menunjukkan kepada Anda bahwa ini adalah proyek yang sangat rahasia, jadi jaga kerahasiaannya.')
    RETURNING id INTO r_337_roket;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '扁', 'perpustakaan', 31, 5, 'Ada pintu di atas rak buku. Itu menjadikan ini <radikal>perpustakaan</radikal>!')
    RETURNING id INTO r_338_perpustakaan;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '胃', 'perut', 31, 6, 'Kata radikal ini berarti <radikal>perut</radikal>, karena bentuknya seperti itu. Lihat perut besar yang berada di atas beberapa usus yang meliuk ke bawah? Ingatlah bahwa radikal ini khusus untuk perut, dan hanya perut saja – bukan semua benda lain yang melekat padanya.

Anda juga bisa mengingatnya dengan mnemonik: Untuk memakan sawah seukuran bulan, Anda memerlukan perut yang cukup besar. Setiap dokter dan ilmuwan di dunia mungkin akan berdesak-desakan untuk melihat perut Anda yang luar biasa dan melihat bagaimana Anda berhasil memasukkan sawah seukuran bulan ke dalamnya.')
    RETURNING id INTO r_432_perut;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '郎', 'pria', 31, 7, 'Radikal ini sama dengan kanji. Artinya <radikal>pria</radikal>.')
    RETURNING id INTO r_8829_pria;

  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_333_taring, 'taring', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_334_berbaris, 'Berbaris', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_336_menggertak, 'Menggertak', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_337_roket, 'Roket', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_338_perpustakaan, 'Perpustakaan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_432_perut, 'Perut', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_8829_pria, 'Pria', true, true);

  -- 2. KANJIS
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '妨', 'menghalangi', 31, 8, 'Seorang <radikal>wanita</radikal> dengan <radikal>arah</radikal> akan memiliki hal-hal yang <kanji>menghalangi</kanji> jalannya. Ini adalah fakta yang menyedihkan bahwa di luar sana masih ada dunia laki-laki!', 'Wanita ini sungguh luar biasa. Beberapa orang membandingkannya dengan bola <reading>busur</reading>ling (ぼう), karena cara dia merobohkan penghalang di jalannya seperti pin bowling.')
    RETURNING id INTO k_1096_menghalangi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '胃', 'perut', 31, 9, '<radikal>perut</radikal> radikal dan <kanji>perut</kanji> kanji sama persis!', 'Di dalam <kanji>perut</kanji> Anda, diam-diam Anda menyimpan <membaca>ea</reading>gle (い) untuk membantu Anda mencerna sesuatu. Sebagai salah satu predator utama di alam, elang dapat mengonsumsi hampir semua makanan yang Anda berikan, jadi sangat berguna jika ada makanan yang hidup di perut Anda.')
    RETURNING id INTO k_1316_perut;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '離', 'melepaskan', 31, 10, '<radical>roket</radikal> <radical>kalkun</radikal> memiliki beberapa titik yang akan <kanji>terlepas</kanji> saat lepas landas.', 'Ketika bagian kalkun roket <kanji>melepas</kanji>, mereka jatuh ke tanah ke dasar <reading>ree</reading>ds (り).')
    RETURNING id INTO k_1443_melepaskan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '融', 'larut', 31, 11, 'Anda melihat <radical>pengganggu</radical> mengambil <radical>serangga</radical> dan <kanji>melarutkannya</kanji> dalam sedikit asam. Para penindas itu kacau, orang-orang jahat. Mereka melakukan hal-hal buruk yang tidak akan dilakukan oleh anak-anak dan orang normal... seperti menghancurkan makhluk hidup.', 'Satu-satunya pengganggu yang cukup kejam untuk <kanji>membubarkan</kanji> serangga seperti ini adalah <reading>kamu</reading>mereka (ゆう). Apakah menurut Anda orang dewasa akan melelehkan makhluk yang tidak berbahaya? Tidak. Hanya pemuda yang tidak berpengalaman yang bisa begitu kejam.')
    RETURNING id INTO k_1444_larut;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '編', 'merajut', 31, 12, 'Bawa <radical>benang</radikal> ke <radical>perpustakaan</radikal> untuk <kanji>merajut</kanji>. Perpustakaan saat ini sepi dan umumnya cukup kosong, jadi ini adalah tempat yang tepat untuk bersantai dan merajut. Tentu saja, jika Anda menemukan thread tergeletak di perpustakaan, Anda tahu apa yang harus dilakukan sekarang.', 'Anda perlu datang ke perpustakaan untuk <kanji>merajut</kanji> karena jika Anda mencoba melakukannya di rumah semua <reading>ayam</reading> (へん) Anda akan mencoba memakan benangnya. Ayam suka memakan makanan yang bentuknya seperti cacing, seperti jerami, tali, dan benang. Jadi, penting untuk menjauh darinya sebelum Anda mulai merajut.')
    RETURNING id INTO k_1445_merajut;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '華', 'menyolok', 31, 13, '<radical>Bunga</radical> yang tumbuh dari <radical>sawah</radical> menjadi bentuk <radical>salib</radikal> benar-benar <kanji>mencolok</kanji> <kanji>bunga</kanji>.', '<kanji>bunga</kanji> ini terlalu <kanji>mencolok</kanji>. Anda membenci mereka. Kamu sangat membenci bunga-bunga yang mencolok ini sehingga kamu menabraknya dengan <reading>ca</reading>r (か) kamu!')
    RETURNING id INTO k_1446_menyolok;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '既', 'sebelumnya', 31, 14, 'Ada <radical>root</radical> di mana <radical>fang</radical> <kanji>sebelumnya</kanji> Anda berada. Taringmu sudah tidak ada lagi, kamu mencabutnya.', 'Untuk mengingat taring indah yang <kanji>sebelumnya</kanji> Anda miliki, simpan semua taring yang Anda keluarkan di dalam kotak yang Anda kunci dengan <reading>key</reading> (き).')
    RETURNING id INTO k_1447_sebelumnya;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '普', 'normal', 31, 15, 'Anda <radical>menyejajarkan</radical> tubuh Anda dengan <radical>matahari</radical> dan semuanya terlihat <kanji>normal</kanji>.  Matahari berbaris di belakang Anda, dan Anda melihat semua hal yang disinari matahari. Semuanya tampak normal.', 'Segera Anda akan melihat sesuatu yang tidak terlihat <kanji>normal</kanji>. Itu adalah <reading>foo</reading>l (ふ), seorang badut. Mengenakan pakaian bodoh, orang bodoh ini menari ke arah Anda dengan senyum yang sangat meresahkan di wajahnya.')
    RETURNING id INTO k_1448_normal;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '豪', 'luar-biasa', 31, 16, 'Anda meletakkan <radical>tutup</radical> pada masakan yang sedang Anda masak, yang terdiri dari <radical>mulut</radical> dan <radical>dahi</radical> dari <radical>babi</radical>. Ini benar-benar hidangan <kanji>luar biasa</kanji> yang sedang Anda masak.', '<kanji>Luar biasa</kanji> sup dahi mulut babi adalah favorit Kakek <reading>ごう</reading>いち. Anda melihatnya mengendus-endus di sekitar jendela Anda, lalu dia mengetuk dan melambai.')
    RETURNING id INTO k_1449_luar_biasa;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '鑑', 'model', 31, 17, 'Lihat pria <radikal>emas</radikal> itu <radikal>yang mengawasi</radikal> semua orang? Dia adalah manusia <kanji>model</kanji>. Keemasannya adalah tanda betapa teladannya dia, dan dia mengawasi kita semua, orang-orang biasa yang memiliki kekurangan untuk mencoba membantu kita mencapai levelnya.', 'Saat Anda melihat lebih dekat pada manusia <kanji>model</kanji> emas, Anda akan menyadari bahwa dia sebenarnya adalah <reading>Khan</reading> Jenghis (かん)! Tidak heran dia berbalut emas dan mengawasi semua orang — dia adalah penakluk terhebat dalam sejarah!')
    RETURNING id INTO k_1450_model;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '除', 'mengecualikan', 31, 18, '<radikal>bangunan</radikal> berada pada <radikal>surplus</radikal>. Oleh karena itu, kita perlu <kanji>mengecualikan</kanji> beberapa di antaranya dari rencana masa depan kita. Selain itu, kita juga perlu <kanji>menghapus</kanji> beberapa bangunan.', 'Bekerja sama dengan Anda dalam proyek ini untuk <kanji>mengecualikan</kanji> bangunan dari rencana, serta <kanji>menghapus</kanji> bangunan yang sudah ada adalah hal yang kecil <reading>Jo</reading>-Anne (じょ).')
    RETURNING id INTO k_1451_mengecualikan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '尋', 'menanyakan', 31, 19, '<radical>Wolverine</radical> sedang melakukan pekerjaan <radical>konstruksi</radical> dan menggunakan <radical>mulut</radical> untuk melakukan <radical>pengukuran</radical>, jadi dia tahu berapa banyak orang yang perlu dia <kanji>tanyakan</kanji> untuk membantunya. Menggunakan mulut adalah cara yang aneh untuk melakukan pengukuran, tapi begitulah cara Wolverine melakukan sesuatu. Setelah dia mengukur semuanya, dia akan tahu berapa banyak pekerja konstruksi yang perlu dia tanyakan tentang cara bekerja untuknya.', 'Hal lain yang harus <kanji>tanyakan</kanji> kepada Wolverine adalah <reading>jean</reading>s (じん). Dia ingin memastikan semua orang di lokasi konstruksi memiliki jeans yang pas untuk digunakan, jadi dia bertanya kepada mereka tentang ukuran jeans mereka.')
    RETURNING id INTO k_1452_menanyakan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '幾', 'berapa-banyak', 31, 20, 'Anda <radical>buang air besar</radikal> dua kali pada <radical>pemabuk</radikal> <radikal>orang</radikal> yang sedang tidur dan Anda mendapati diri Anda bertanya-tanya <kanji>berapa</kanji> lagi Anda dapat buang air besar pada mereka dan bertanya-tanya <kanji>berapa banyak</kanji> yang dapat mereka buang sebelum mereka menyadari apa yang sedang terjadi.', 'Saat Anda terus memikirkan <kanji>berapa banyak</kanji> kotoran yang dapat diminum oleh pemabuk ini dan <kanji>berapa banyak</kanji> kotoran lagi yang dapat Anda jatuhkan padanya, dia mulai terbangun. Cepat, kamu <reading>eke</reading> (いく) membuang kotoran terakhir sebelum kamu bergegas pergi. Anda mengeluarkan kotoran itu tepat pada waktunya untuk melarikan diri.')
    RETURNING id INTO k_1453_berapa_banyak;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '廊', 'koridor', 31, 21, '<radical>kanopi</radikal> <radikal>pria</radikal> adalah pria yang berdiri di <kanji>koridor</kanji> mencoba menjual kanopi kepada orang-orang.', 'Anda mengambil <kanji>koridor</kanji>, tapi kali ini pembuat kanopi sudah hilang. Sebagai gantinya adalah seorang salesman baru. Yang ini mencoba menjual <reading>roe</reading> (ろう) kepada Anda.')
    RETURNING id INTO k_1454_koridor;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '掃', 'menyapu', 31, 22, 'Lingkarkan <radical>jari</radical> Anda pada <radical>sapu</radical> ini, karena inilah waktunya untuk <kanji>menyapu</kanji>!', '<kanji>Sapu</kanji>baik untuk <membaca>sou</reading>l (そう). Setiap sapuan sapu membuat jiwamu sedikit lebih murni. Bagaimanapun juga, kebersihan berada di samping kesalehan.')
    RETURNING id INTO k_1455_menyapu;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '泥', 'lumpur', 31, 23, '<radikal>tsunami</radikal> masuk dan mengubur <radikal>bendera</radikal> Anda jadi sekarang Anda harus menggunakan <radikal>sendok</radikal> dan menggalinya keluar dari <kanji>lumpur</kanji>.', 'Anda mungkin tahu tentang Dora the Explorer. Tapi pernahkah kamu mendengar tentang kakak laki-lakinya yang kotor dan <kanji>lumpur</kanji>, <reading>Doro</reading> (どろ)? Mereka seperti sebuah tim. Dan karena penjelajahan yang dilakukannya, Doro selalu berlumuran lumpur.')
    RETURNING id INTO k_1456_lumpur;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '棒', 'tiang', 31, 24, '<radical>pohon</radical> di <radical>musim semi</radical> yang bagus dan <radical>kering</radical> akan menjadi <kanji>tiang</kanji> atau <kanji>batang</kanji> yang bagus. Hancurkan dari tanah dan ayunkan untuk melihat <kanji>tongkat</kanji> yang bagus dan kokoh!', 'Setelah banyak pertimbangan, Anda memutuskan untuk menggunakan <kanji>tiang</kanji> ini untuk <membaca>membungkuk</reading>ling (ぼう). Tiangnya cukup panjang, jadi Anda cukup berdiri di atas jalur dan langsung menyodok pin bowling dengan tiang tersebut.')
    RETURNING id INTO k_1457_tiang;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '驚', 'terkejut', 31, 25, 'Jika Anda bisa menulis <radical>puisi</radical> yang menarik tentang <radical>musim dingin</radical> sambil menunggangi <radical>kuda</radical>, saya akan <kanji>terkejut</kanji>. Menulis puisi apa adanya saja sudah sulit, apalagi menarik. Lalu Anda sedang menunggang kuda dan puisinya pasti tentang musim dingin? Heck, saya akan terkejut jika Anda tidak jatuh dari kuda dan melukai diri sendiri.', 'Anda mungkin juga <kanji>terkejut</kanji> saat mengetahui bahwa Anda harus menunggangi kuda ini melintasi <reading>きょう</reading>と. Itu memberi Anda batas waktu. Kamu punya waktu sampai kamu melintasi きょうと untuk menulis puisi tentang musim dingin ini.')
    RETURNING id INTO k_1458_terkejut;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '嘆', 'mendesah', 31, 26, 'Anda menggunakan <radical>mulut</radikal> ketika Anda melihat orang <radikal>Tionghoa</radikal> dan Anda <kanji>menghela nafas</kanji>. Kamu menghela nafas begitu keras hingga terdengar suara gemuruh dari mulutmu. Orang Tionghoa dan hal-hal Tionghoa membuat Anda menghela nafas karena mengingatkan Anda saat Anda tinggal di Tiongkok dan memunculkan kenangan. Desahan itu adalah desahan nostalgia.', 'Hal favorit dalam bahasa Mandarin yang Anda lakukan adalah <reading>tan</reading> (たん). Anda dapat berjalan-jalan tanpa mengenakan baju dan berjemur sepanjang hari. Tidak ada seorang pun yang akan <kanji>menghela nafas</kanji> atau mengejek Anda, hal ini bisa diterima. Orang Cina sangat suka berjemur.')
    RETURNING id INTO k_1459_mendesah;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '倉', 'gudang', 31, 27, 'Radikal <radikal>gudang</radikal> dan kanji <kanji>gudang</kanji> adalah sama! Anda juga bisa menyebutnya <kanji>gudang</kanji>.', 'Anda memiliki <kanji>gudang</kanji> untuk menyimpan semua <reading>barang</reading> Anda (そう). Ketika orang atau hewan yang Anda kenal meninggal, Anda mengambil jiwa mereka dan menyimpannya di gudang kering Anda untuk diamankan. Itu sebenarnya pelayanan publik.')
    RETURNING id INTO k_1460_gudang;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '孫', 'cucu', 31, 28, 'Seorang <radikal>anak</radikal> berbagi <radikal>silsilah</radikal> dengan seorang <kanji>cucu</kanji>. Anak itu mewariskan garis keturunannya kepada anaknya, kemudian anak dari anak itu menjadi cucunya dan di antara mereka semua ada satu garis keturunan yang terbagi.', '<reading>putra</reading> (そん) dari seorang putra adalah <kanji>cucu</kanji>. Dalam hal ini, seorang cucu. Mudah.')
    RETURNING id INTO k_1461_cucu;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '巣', 'sarang', 31, 29, 'Burung menggunakan <radical>rumput</radikal> dan <radikal>buah</radikal> untuk membuat <kanji>sarang</kanji> mereka.', 'Bagian bawah <kanji>sarang</kanji> juga sepertinya dilapisi dengan <read>su</reading>itu (す) milik seseorang. Apakah... apakah burung ini menyerang manusia karena ini?!')
    RETURNING id INTO k_1462_sarang;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '帯', 'sabuk', 31, 30, 'Ada <radical>gunung</radical> yang muncul dari <radical>tanah</radical> yang ingin Anda daki, namun <radical>dahi</radical> Anda memerlukan <radical>handuk</radical> untuk mengeluarkan keringat Anda. Anda tidak memiliki handuk, jadi lepaskan <kanji>sabuk</kanji> Anda dan ikatkan di dahi Anda.', '<kanji>sabuk</kanji> tidak cukup menyerap, jadi Anda membungkusnya dengan <reading>dasi</reading> (たい) dan kemudian mengikat semuanya lagi di dahi Anda.')
    RETURNING id INTO k_1463_sabuk;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '径', 'diameter', 31, 31, 'Anda <radical>berkeliaran</radical> di sekitar <radical>batu nisan</radical> untuk mengukur <kanji>diameter</kanji>. Anda melakukan ini pada setiap batu nisan, dan jika Anda berkeliaran cukup lama, Anda akan segera mengetahui diameter setiap batu nisan.', 'Anda perlu mengetahui <kanji>diameter</kanji> setiap batu nisan sehingga Anda dapat membuat <reading>ca</reading>kes (けい) untuk masing-masing batu nisan. Tapi kuenya tidak boleh lebih lebar dari batu nisan, kalau tidak kuenya akan jatuh ke tanah.')
    RETURNING id INTO k_1464_diameter;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '救', 'menyelamatkan', 31, 32, 'Anda <radical>meminta</radical> agar <radical>musim dingin</radical> <kanji>menyelamatkan</kanji> Anda dari hangatnya musim lainnya.', 'Anda mendapat pesan melalui pos dari musim dingin! Ini dia, Anda akan diselamatkan! Kamu membuka catatan itu dan tertulis, "Aku telah <kanji>menyelamatkanmu</kanji> dengan <reading>cu</reading>cumber (きゅう) ini." Sebuah mentimun jatuh dari catatan itu.')
    RETURNING id INTO k_1465_menyelamatkan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '散', 'menyebarkan', 31, 33, 'Jika Anda bermain <radical>blackjack</radical> di <radical>bulan</radical> di <radical>musim dingin</radical>, kartu Anda akan <kanji>tersebar</kanji> di mana-mana. Kartu-kartu tersebut berhamburan karena gravitasi bulan yang sangat lemah, sehingga permainan blackjack rawan terjadi bencana.', 'Anda sedang bermain blackjack dengan <reading>San</reading>ta-san (さん). Santa-san melakukan yang terbaik untuk menggunakan sihir Natalnya untuk mencegah <kanji>tersebar</kanji> kartu, tapi itu tidak berjalan dengan baik. Usaha yang bagus, Santa-san.')
    RETURNING id INTO k_1466_menyebarkan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '粉', 'bubuk', 31, 34, 'Jika <radical>beras</radical> digiling, setiap <radical>bagian</radical>nya, pada akhirnya akan menjadi <kanji>bubuk</kanji> yang halus. Anda kemudian dapat menggunakan bubuk beras ini sebagai bagian untuk membuat hidangan lainnya. Mungkin sejenis kue.', 'Sebenarnya, menggiling beras hingga menjadi <kanji>bubuk</kanji> sangatlah <membaca>menyenangkan</reading> (ふん). Sangat menyenangkan sehingga Anda tidak ingin berhenti! HAHAHAHA! BUBUK BERAS! SANGAT MENYENANGKAN!')
    RETURNING id INTO k_1467_bubuk;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '脈', 'pembuluh-darah', 31, 35, 'Di bawah <radical>bulan</radical> saat Anda duduk di <radical>tebing</radical>, Anda menyuntikkan jarum suntik <radical>tahu</radical> langsung ke <kanji>pembuluh darah</kanji> Anda. Ahh, tahu. Anda kecanduan. Anda menyelinap ke tebing di malam hari untuk membuat tahu Anda, menyuntikkannya langsung ke pembuluh darah Anda.', 'Akhirnya, teman dan keluarga Anda menemukan Anda di tebing, tersandung tahu. Setiap <kanji>pembuluh darah</kanji> di tubuhmu membesar, berdenyut karena efek tahu. Temanmu mencoba mengantarmu pulang. "Kamu tidak <read>myake</reading> (みゃく) aku!" kamu mencerca, menderita akibat efek tahu itu. "Tak satu pun dari kalian, cyan, yang menyuruhku pulang! Kalian yang tidak, cyan, tidak memintaku! Nyah!"')
    RETURNING id INTO k_1468_pembuluh_darah;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '菜', 'sayuran', 31, 36, 'Anda ingin beberapa <radical>bunga</radical> jadi bawalah <radical>cleat</radical> Anda ke sisi <radical>pohon</radical> dengan harapan bunga tersebut akan tumbang, namun Anda malah mendapatkan <kanji>sayuran</kanji>. Apa? Anda menendang pohon itu lagi dan sayuran lain yang berbeda terjatuh.', 'Anda memberi <kanji>sayuran</kanji> ini (yang bahkan tidak Anda inginkan) ke <reading>cy</reading>borg (さい) Anda. Cuma butuh sedikit saja, karena perutnya sangat tipis, jadi sisanya ditahan saja.')
    RETURNING id INTO k_1469_sayuran;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '貨', 'kargo', 31, 37, 'Anda ingin <radical>mengubah</radical> <radical>kerang</radical> Anda menjadi <kanji>barang</kanji> sehingga Anda dapat mengangkutnya. Itu berarti mengemasnya ke dalam kontainer pengangkutan raksasa.', 'Untuk memindahkan <kanji>barang</kanji> ini, Anda memerlukan <reading>ca</reading>r (か). Anda mengikat semua kontainer barang ke bagian atas mobil Anda, ditumpuk dengan baik, tinggi, dan berbahaya, sehingga Anda dapat memindahkannya.')
    RETURNING id INTO k_1470_kargo;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '陸', 'tanah', 31, 38, 'Sebuah <radikal>bangunan</radikal> yang terbuat dari <radikal>rahim</radikal> harus ditempatkan di atas <kanji>tanah</kanji>.', 'Sayangnya <kanji>tanah</kanji> di sekitar bangunan rahim Anda akan <reading>berbau</reading> (りく).')
    RETURNING id INTO k_1471_tanah;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '似', 'mirip', 31, 39, 'Seorang <radikal>pemimpin</radikal> dari <radikal>singa</radikal> (berpenampilan aneh) menaruh <radikal>tetes</radikal> cairan ajaib di wajahnya agar terlihat seperti <radikal>orang</radikal> yang <kanji>menyerupai</kanji> orang lain. Pemimpin singa akan menyamar, jadi dia harus menyerupai orang yang bukan dirinya sendiri. Dia mengambil setetes cat wajah yang kuat ini dan mengubahnya.', 'Sekarang dia <kanji>menyerupai</kanji> seorang pemimpin yang lebih hebat, dan semua singa berlutut <reading>berlutut</reading> (に) untuk memberikan penghormatan.

(Perhatikan bahwa kami baru-baru ini mengubah bacaan utama kanji ini dari ね menjadi に, karena ね adalah bacaan yang tidak beraturan.)')
    RETURNING id INTO k_1472_mirip;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '均', 'setara', 31, 40, 'Anda memiliki beberapa <radical>tanah</radikal> di samping <radical>kolam</radikal> yang memiliki <radikal>tetesan</radikal> air ekstra di dalamnya karena Anda ingin <kanji>sama</kanji>. Jika terlalu banyak kotoran di luar kolam dan tidak cukup air di dalam, akan terlihat aneh. Kita tidak bisa mendapatkan itu.', 'Anda menghabiskan beberapa jam untuk memastikan rasio air terhadap kotoran <kanji>sama</kanji> dengan sempurna, bukan untuk diri Anda sendiri, tetapi karena <reading>Kerabat</reading>g (きん) di Inggris menyuruh Anda melakukannya. Anda mungkin setuju bahwa kesetaraan itu penting, namun merupakan tanggung jawab Raja untuk menjaga hal-hal seperti itu. Itu sebabnya dia memerintahkanmu, prajurit kecil, untuk melakukan pekerjaan penyetaraan untuknya.')
    RETURNING id INTO k_1473_setara;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '墓', 'kuburan', 31, 41, 'Di dalam <radical>rumah kaca</radical> Anda ada gundukan <radical>tanah</radical> yang tampaknya adalah <kanji>kuburan</kanji> seseorang. Saat kamu menggalinya, kamu akan menemukan bahwa itu adalah <kanji>makam</kanji> yang utuh, dengan pintu, lorong, dan segalanya!', 'Anda membuka <kanji>kuburan</kanji> di dalam ruang dalam <kanji>makam</kanji>, dan terkejut menemukan tubuh mumi <reading>Bo</reading>bo (ぼ) si Badut menatap balik ke arah Anda! Mengerikan sekali!')
    RETURNING id INTO k_1474_kuburan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '富', 'kaya', 31, 42, 'Di <radical>atap</radical> Anda ada <radical>orang-orangan sawah</radical> karena Anda <kanji>kaya</kanji>. Anda ingin menakut-nakuti semua orang miskin dan tidak kaya sehingga Anda memasang orang-orangan sawah di atap rumah Anda.', 'Anda bangun keesokan paginya dan semua <kanji>kaya</kanji> Anda telah dicuri! Anda menelepon polisi dan mereka menyebut Anda <reading>foo</reading>l (ふ)! Maafkan saya?! "Pada dasarnya kamu memasang iklan di atap rumahmu untuk memberi tahu semua orang bahwa kamu kaya. Tentu saja kamu dirampok, bodoh."')
    RETURNING id INTO k_1475_kaya;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '徳', 'kebajikan', 31, 43, 'Anda <radikal>berkeliaran</radikal>, menatap <radikal>salib</radikal> yang terperangkap dalam <radikal>jaringan</radikal> <radikal>hati</radikal> Anda, karena ia mencoba mengajari Anda untuk bertindak dengan <kanji>kebajikan</kanji>.', 'Saat Anda mencoba memutuskan apakah Anda ingin menjalani kehidupan <kanji>kebajikan</kanji>, hantu <reading>Toku</reading>gawa (とく) Ieyasu muncul di hadapan Anda. Dia menunjuk ke hati Anda dan salib, lalu menunjuk ke hati Anda dan Anda melihat salib bercahaya di hati Anda.')
    RETURNING id INTO k_1476_kebajikan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '探', 'mencari', 31, 44, 'Letakkan <radical>jari</radical> Anda di <radical>dahi</radical> dan tegakkan <radical>kaki</radical> Anda tinggi-tinggi di <radical>pohon</radical> jika Anda ingin <kanji>mencari</kanji> sesuatu. Lagi pula, menutup mata dan berdiri di tempat tinggi adalah cara terbaik untuk mencari sesuatu, bukan?', 'Anda <kanji>mencari</kanji> begitu lama sehingga Anda tidak dapat menahan diri untuk mendapatkan <reading>tan</reading> (たん). Maksudku, kamu berada di atas pohon, melindungi matamu dari sinar matahari saat kamu mencari benda itu, dan itu sudah berjam-jam, berhari-hari? Tentu saja kulit Anda akan menjadi cokelat.')
    RETURNING id INTO k_1477_mencari;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '偵', 'mengintai', 31, 45, '<radikal>pemimpin</radikal> Anda menancapkan <radikal>jari kaki</radikal>nya ke dalam <radikal>kerang</radikal>. Anda bertanya alasannya dan dia bilang dia ingin <kanji>memata-matai</kanji>.', 'Anda dan pemimpin meninjau rekaman <kanji>mata-mata</kanji> dan menemukan satu <reading>ta</reading>ter (てい) yang tersembunyi di dalam kerang. Bersama-sama Anda mengungkap jaringan penyelundupan yang besar. Kerang, tiram, kerang, apa saja! Segala jenis kerang menggunakan tubuhnya untuk menyelinap ke dunia bawah laut.')
    RETURNING id INTO k_1478_mengintai;

  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1096_menghalangi, 'Menghalangi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1096_menghalangi, 'Menghalangi', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1316_perut, 'Perut', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1443_melepaskan, 'Melepaskan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1444_larut, 'Larut', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1445_merajut, 'Merajut', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1446_menyolok, 'Menyolok', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1446_menyolok, 'Bunga', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1446_menyolok, 'Sangat indah', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1447_sebelumnya, 'Sebelumnya', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1448_normal, 'Normal', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1449_luar_biasa, 'Luar biasa', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1450_model, 'Model', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1450_model, 'Memperhitungkan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1451_mengecualikan, 'Mengecualikan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1451_mengecualikan, 'Menghapus', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1452_menanyakan, 'Menanyakan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1453_berapa_banyak, 'Berapa banyak', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1453_berapa_banyak, 'Berapa harganya', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1454_koridor, 'Koridor', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1455_menyapu, 'Menyapu', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1456_lumpur, 'Lumpur', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1457_tiang, 'Tiang', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1457_tiang, 'Batang', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1457_tiang, 'Tongkat', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1458_terkejut, 'Terkejut', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1459_mendesah, 'Mendesah', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1460_gudang, 'Gudang', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1460_gudang, 'Gudang', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1461_cucu, 'Cucu', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1462_sarang, 'Sarang', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1463_sabuk, 'Sabuk', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1464_diameter, 'Diameter', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1465_menyelamatkan, 'Menyelamatkan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1466_menyebarkan, 'Menyebarkan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1467_bubuk, 'Bubuk', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1468_pembuluh_darah, 'Pembuluh darah', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1469_sayuran, 'Sayuran', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1470_kargo, 'Kargo', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1471_tanah, 'Tanah', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1472_mirip, 'Mirip', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1473_setara, 'Setara', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1474_kuburan, 'Kuburan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1474_kuburan, 'Makam', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1475_kaya, 'Kaya', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1476_kebajikan, 'Kebajikan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1477_mencari, 'Mencari', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1477_mencari, 'Cari', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1478_mengintai, 'Mengintai', true, true);

  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1096_menghalangi, 'ぼう', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1096_menghalangi, 'さまた', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1316_perut, 'い', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1443_melepaskan, 'り', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1443_melepaskan, 'はな', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1444_larut, 'ゆう', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1445_merajut, 'へん', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1445_merajut, 'あ', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1446_menyolok, 'か', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1446_menyolok, 'はな', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1447_sebelumnya, 'き', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1447_sebelumnya, 'すで', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1448_normal, 'ふ', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1449_luar_biasa, 'ごう', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1450_model, 'かん', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1450_model, 'かんが', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1450_model, 'かがみ', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1451_mengecualikan, 'じょ', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1451_mengecualikan, 'じ', 'onyomi', false, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1451_mengecualikan, 'のぞ', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1452_menanyakan, 'じん', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1452_menanyakan, 'たず', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1452_menanyakan, 'ひろ', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1453_berapa_banyak, 'いく', 'kunyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1453_berapa_banyak, 'き', 'onyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1454_koridor, 'ろう', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1455_menyapu, 'そう', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1455_menyapu, 'は', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1456_lumpur, 'どろ', 'kunyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1456_lumpur, 'でい', 'onyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1457_tiang, 'ぼう', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1458_terkejut, 'きょう', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1458_terkejut, 'おどろ', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1459_mendesah, 'たん', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1459_mendesah, 'なげ', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1460_gudang, 'そう', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1460_gudang, 'くら', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1461_cucu, 'そん', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1461_cucu, 'まご', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1462_sarang, 'す', 'kunyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1462_sarang, 'そう', 'onyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1463_sabuk, 'たい', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1463_sabuk, 'おび', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1464_diameter, 'けい', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1465_menyelamatkan, 'きゅう', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1465_menyelamatkan, 'すく', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1466_menyebarkan, 'さん', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1466_menyebarkan, 'ち', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1467_bubuk, 'ふん', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1467_bubuk, 'こな', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1467_bubuk, 'こ', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1468_pembuluh_darah, 'みゃく', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1469_sayuran, 'さい', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1469_sayuran, 'な', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1470_kargo, 'か', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1471_tanah, 'りく', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1472_mirip, 'に', 'kunyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1472_mirip, 'じ', 'onyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1473_setara, 'きん', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1473_setara, 'ひと', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1474_kuburan, 'ぼ', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1474_kuburan, 'はか', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1475_kaya, 'ふ', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1475_kaya, 'と', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1475_kaya, 'とみ', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1476_kebajikan, 'とく', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1477_mencari, 'たん', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1477_mencari, 'さが', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1477_mencari, 'さぐ', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1478_mengintai, 'てい', 'onyomi', true, true);

  -- 3. VOCABULARIES
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '妨害', 'halangan', 31, 46, 'Sesuatu yang <kanji>menghalangi</kanji> dan juga <kanji>merusak</kanji> adalah <vocabulary>obstruction</vocabulary>. Tidak ada halangan yang baik dan jika dibiarkan terlalu lama akan menyebabkan kerusakan dan <vocabulary>interferensi</vocabulary> juga.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Halangan, Gangguan')
    RETURNING id INTO v_4276_halangan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '胃痛', 'sakit-perut', 31, 47, 'Saat <kanji>perut</kanji> <kanji>sakit</kanji> Anda, Anda mengalami sedikit <vocabulary>sakit perut</vocabulary>.

Coba ingat-ingat ini bukan untuk sakit perut umum. 胃痛 khusus untuk rasa sakit atau ketidaknyamanan di perut (organ dalam) — sakit perut yang sebenarnya.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Sakit perut, Sakit Perut')
    RETURNING id INTO v_5073_sakit_perut;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '盗撮', 'fotografi-rahasia', 31, 48, '<kanji>Mencuri</kanji>ing <kanji>foto</kanji> Anda. Tunggu, Anda tidak tahu bahwa Anda sedang difoto atau difilmkan? Itulah <vocabulary>fotografi rahasia</vocabulary> atau <vocabulary>pembuatan film rahasia</vocabulary>. Menyeramkan.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Fotografi Rahasia, Pembuatan Film Rahasia')
    RETURNING id INTO v_5319_fotografi_rahasia;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '照らす', 'untuk-menerangi', 31, 49, 'Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanji itu sendiri berarti <kanji>menerangi</kanji>, jadi ini berarti <vocabulary>menerangi</vocabulary> atau <vocabulary>menerangi</vocabulary> sesuatu.

Namun jangan bingung dengan 照れる, yang berarti "merasa malu" — itu akan memalukan. Anda tahu ini adalah "untuk menerangi" karena Anda mendapatkan <reading>ruam</reading> (らす) setiap kali ada sesuatu yang terlalu menyinari Anda.', 'Berbicara tentang hal-hal yang menerangi, <membaca>tangan</reading> Anda (手) bersinar sepanjang waktu karena suatu alasan.', 'Untuk Menerangi, Untuk Menyinari')
    RETURNING id INTO v_5337_untuk_menerangi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '航空券', 'tiket-pesawat', 31, 50, '<kanji>penerbangan</kanji> (航空) <kanji>tiket</kanji> adalah jenis tiket yang Anda perlukan untuk terbang dengan pesawat. Itu adalah <vocabulary>tiket pesawat</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Tiket Pesawat, Tiket Pesawat')
    RETURNING id INTO v_5398_tiket_pesawat;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '鼻詰まり', 'hidung-tersumbat', 31, 51, '詰まる berarti "diisi". Jadi, jika <kanji>hidung</kanji> Anda <kanji>macet</kanji>, berarti Anda memiliki <vocabulary>hidung tersumbat</vocabulary>.', 'Bacaannya adalah 鼻 dan 詰まる disatukan.詰まり-nya rendaku, mungkin karena Anda mencoba mengucapkan kata ini dengan hidung tersumbat.', 'Hidung tersumbat, Hidung tersumbat')
    RETURNING id INTO v_5402_hidung_tersumbat;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '思い詰める', 'untuk-merenung', 31, 52, '詰める berarti "memasukkan". Jika Anda benar-benar sibuk dengan pikiran Anda (<kanji>berpikir</kanji>), Anda sedang berpikir sangat dalam dan serius. Jadi ini adalah <vocabulary>untuk direnungkan</vocabulary>, <vocabulary>untuk direnungkan</vocabulary>, atau <vocabulary>untuk memasukkan sesuatu ke dalam hati</vocabulary>.

思い詰める menunjukkan bahwa Anda sedang memikirkan secara mendalam sesuatu yang serius atau menyusahkan, hampir seperti berpikir berlebihan.', 'Bacaannya adalah 思い dan 詰める yang dirangkai menjadi satu bacaan.', 'Untuk merenung, Untuk Bertahan, Untuk Mengambil Sesuatu Dalam Hati')
    RETURNING id INTO v_5403_untuk_merenung;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '見詰める', 'untuk-menatap', 31, 53, 'Anda telah mempelajari 詰める yang berarti "memasukkan barang". Saat Anda sangat ingin <kanji>melihat</kanji> sesuatu sehingga Anda "menampung" pandangan Anda ke dalamnya, Anda mungkin akan <vocabulary>menatap</vocabulary> itu.

見詰める berarti <vocabulary>menatap</vocabulary> sesuatu dengan saksama, sering kali dengan pemikiran mendalam, kekaguman, rasa ingin tahu, atau emosi yang kuat. Ingatlah bahwa Anda biasanya akan melihat kata ini dengan 詰 dalam huruf kana, seperti 見つめる.', 'Bacaannya adalah 見 dan 詰める.', 'Untuk Menatap, Untuk Menatap')
    RETURNING id INTO v_5404_untuk_menatap;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '雄犬', 'anjing-jantan', 31, 54, '<kanji>jantan</kanji> <kanji>anjing</kanji> adalah <vocabulary>anjing jantan</vocabulary>.

Perlu disebutkan bahwa Anda paling sering melihat ini ditulis dalam katakana, baik sebagai オス犬 maupun オスの犬.', 'Pembacaannya adalah pembacaan kun''yomi, yang mungkin A-Oke untuk 犬, tetapi untuk 雄 Anda perlu memikirkan tentang bagaimana seekor anjing jantan mungkin cukup memaksa, selalu berusaha <membaca>mendorong</reading> (押す) anjing lain di sekitarnya, menjadi jantan dan pemurung dan sebagainya.', 'Anjing Jantan')
    RETURNING id INTO v_5405_anjing_jantan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '絶やす', 'membiarkan-sesuatu-padam', 31, 55, 'Ingat bagaimana 絶える berarti "mati?"絶やす adalah versi transitifnya, artinya <vocabulary>membiarkan sesuatu padam</vocabulary> atau <vocabulary>mengakhiri sesuatu</vocabulary>. 

絶やす digunakan ketika Anda menghentikan kelanjutan sesuatu, seperti mengakhiri garis keluarga, membiarkan tradisi memudar, atau membiarkan api padam. Kamu mengetahui hal ini karena jika kamu ingin mengakhiri sesuatu, kamu mungkin tidak menyukainya, jadi kamu mengucapkan "<reading>YAASS</reading>" (やす) dengan seringai jahat sambil membiarkannya padam.

Perhatikan bahwa 絶やす sering muncul dalam bentuk negatifnya 絶やさない, karena biasanya digunakan untuk menggambarkan niat untuk tidak membiarkan sesuatu yang berharga atau penting berakhir.', 'Bacaannya berasal dari 絶える.', 'Membiarkan Sesuatu Padam, Untuk Mengakhiri Sesuatu')
    RETURNING id INTO v_5406_membiarkan_sesuatu_padam;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '緊張する', 'merasa-gugup', 31, 56, '緊張 berarti "gugup" atau "ketegangan". Jadi, versi kata kerjanya adalah <vocabulary>merasa gugup</vocabulary> atau <vocabulary>to get tense</vocabulary>.

Orang sering menggunakan 緊張する ketika hendak melakukan sesuatu yang penting, seperti memberikan pidato atau mengerjakan ujian. Dalam konteks formal, kata ini juga dapat digunakan untuk membicarakan tentang otot yang menjadi tegang secara fisik.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Merasa Gugup, Menjadi Tegang')
    RETURNING id INTO v_5407_merasa_gugup;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '融合', 'fusi', 31, 57, '<kanji>Larutkan</kanji> lalu <kanji>gabungkan</kanji> lagi untuk menciptakan reaksi, reaksi <vocabulary>fusion</vocabulary>.

融合 adalah kata yang relatif formal yang menggambarkan dua hal atau lebih yang menyatu menjadi satu kesatuan yang utuh. Hal ini dapat menggambarkan fusi dalam arti ilmiah (seperti fusi nuklir) atau dalam arti yang lebih kiasan, seperti perpaduan ide, budaya, gaya, atau teknologi.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Fusi')
    RETURNING id INTO v_5408_fusi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '融資', 'pembiayaan', 31, 58, 'Seseorang <kanji>melarutkan</kanji><kanji>sumber daya</kanji> mereka agar lebih mudah memberikannya kepada Anda, karena mereka <vocabulary>membiayai</vocabulary> Anda dengan <vocabulary>pinjaman</vocabulary>. Seseorang ini adalah seorang investor, dan mereka ingin melihat bisnis Anda sukses!

融資 adalah kata formal untuk <vocabulary>meminjamkan uang</vocabulary>. Ini digunakan ketika lembaga keuangan meminjamkan uang kepada individu atau bisnis untuk membantu hal-hal seperti memulai perusahaan, membeli properti, atau menangani pengeluaran.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Pembiayaan, Meminjamkan, Meminjamkan Uang')
    RETURNING id INTO v_5409_pembiayaan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '離れる', 'menjadi-terpisah', 31, 59, 'Karena hiragana diakhiri dengan bunyi <ja>う</ja>, Anda tahu bahwa kata tersebut adalah kata kerja. Kanji itu sendiri berarti <kanji>melepaskan</kanji>, tapi apa jadinya jika ada sesuatu yang terlepas? Hal ini menyebabkan <vocabulary>terpisah</vocabulary> alias <vocabulary>terpisah</vocabulary> atau <vocabulary>menjauh</vocabulary> dari yang lain.

Anda menggunakan 離れる ketika dua benda yang tadinya bersatu terpisah dan menjadi berjauhan satu sama lain. Ini bisa merujuk pada keterpisahan fisik, tapi bisa juga menggambarkan seseorang menjauh dari suatu tempat, kelompok, atau peran, atau bahkan orang-orang yang terpisah secara emosional. Anda juga menggunakannya untuk menggambarkan tempat-tempat yang berjauhan.', 'Untuk bacaannya, pikirkan apa artinya <vocabulary>dipisahkan</vocabulary>. Bayangkan bagaimana semua bunga sakura (はな) terpisah dari cabangnya dan jatuh ke tanah setelah mekar di musim semi. Ah, berpisah memang menyedihkan, namun indah!', 'Menjadi Terpisah, Untuk Memisahkan, Untuk Pindah')
    RETURNING id INTO v_5410_menjadi_terpisah;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '離婚', 'perceraian', 31, 60, '<kanji>Lepaskan</kanji> dari <kanji>pernikahan</kanji> Anda. Ini adalah <vocabulary>perceraian</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Perceraian, Mendapatkan Perceraian')
    RETURNING id INTO v_5411_perceraian;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '分離', 'pemisahan', 31, 61, 'Saat Anda <kanji>membagi</kanji> dan <kanji>melepaskan</kanji> satu sama lain, Anda menciptakan <vocabulary>pemisahan</vocabulary> di antara keduanya. Masuk akal, bukan?

分離 adalah kata yang mungkin Anda dengar dalam sains ketika membahas bagaimana zat yang berbeda, seperti minyak dan air, tidak dapat bercampur dan terpisah satu sama lain.

Selain itu, 分離 juga bisa menjadi istilah formal yang digunakan untuk mendeskripsikan kelompok orang yang terpisah, sering kali dalam diskusi tentang topik serius seperti <vocabulary>segregasi</vocabulary> sosial.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Pemisahan, Pemisahan')
    RETURNING id INTO v_5412_pemisahan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '印鑑', 'segel', 31, 62, '<kanji>segel</kanji> yang <kanji>meniru model</kanji> Anda memang merupakan <vocabulary>segel</vocabulary> yang berguna — itu adalah <vocabulary>segel pribadi</vocabulary> Anda sendiri!

印鑑 adalah prangko kecil dengan nama Anda terukir di dalamnya. Di Jepang, orang menggunakannya pada dokumen resmi daripada menandatangani nama mereka. Ini seperti "cap tanda tangan" yang diakui secara hukum, dan merupakan sesuatu yang harus dimiliki oleh kebanyakan orang dewasa di Jepang.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Segel, Stempel Pribadi')
    RETURNING id INTO v_5413_segel;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '壊れる', 'menjadi-rusak', 31, 63, '壊す adalah "merusak sesuatu." 壊れる adalah ketika sesuatu rusak atau rusak, dan Anda tidak melakukan kerusakan. Ini <vocabulary>harus dilanggar</vocabulary>.', 'Bacaannya berasal dari 壊す, jadi cobalah untuk tidak merusak ingatanmu dan ingatlah ini.', 'Menjadi Rusak, Menjadi Rusak')
    RETURNING id INTO v_5414_menjadi_rusak;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '壊れ物', 'hal-yang-rapuh', 31, 64, 'Sebuah <kanji>sesuatu</kanji> yang dapat <kanji>rusak</kanji> dengan mudah, adalah <vocabulary>hal yang rapuh</vocabulary>. Hati-hati dengan hal seperti ini.', 'Bacaannya adalah 壊れる dan 物 disatukan.', 'Hal yang Rapuh, Barang pecah belah, Barang Rapuh')
    RETURNING id INTO v_5415_hal_yang_rapuh;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '既に', 'sudah', 31, 65, 'Sesuatu yang <kanji>sebelumnya</kanji> terjadi, telah <vocabulary>telah</vocabulary> terjadi.

既に relatif formal. Gunakan ini sebagai cara netral untuk menggambarkan tindakan atau keadaan yang sudah selesai. Sebagai perbandingan, もう lebih santai dan terkadang menimbulkan rasa terkejut atau penyesalan karena sesuatu terjadi lebih cepat dari yang diperkirakan.', 'Bacaannya berbeda dengan yang Anda pelajari dengan kanji. Tapi seperti yang <vocabulary>sudah</vocabulary> saya katakan, saya akan berada di sana pada <reading>Su-day</reading> (すで). Ini seperti hari Minggu, tapi tidak persis sama. Bayangkan kebingungan Anda ketika seseorang mengatakan hal ini berulang kali, tetapi Anda tidak tahu apa itu hari Minggu.', 'Sudah')
    RETURNING id INTO v_5416_sudah;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '既存', 'yang-ada', 31, 66, 'Sesuatu yang <kanji>sebelumnya</kanji> <kanji>ada</kanji> mungkin masih <vocabulary>ada</vocabulary> sekarang.

既存 adalah kata yang relatif formal yang sering digunakan dalam konteks resmi untuk membicarakan hal-hal yang sudah ada, seperti sistem, fasilitas, atau ide yang ada.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Yang ada')
    RETURNING id INTO v_5417_yang_ada;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '既決', 'diputuskan', 31, 67, 'Telah <kanji>sebelumnya</kanji> <kanji>diputuskan</kanji>d, artinya sudah <vocabulary>diputuskan</vocabulary> dan <vocabulary>diselesaikan</vocabulary>.

既決 adalah kata formal yang berarti sesuatu telah diputuskan atau diselesaikan. Anda akan menemukannya dalam pengaturan resmi, seperti saat rapat perusahaan selesai dan topik tertentu ditandai sebagai 既決.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Diputuskan, Mapan')
    RETURNING id INTO v_5418_diputuskan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '普通', 'normal', 31, 68, 'Anda <kanji>melewati</kanji> seperti <kanji>normal</kanji> sepenuhnya. Anda <vocabulary>normal</vocabulary>. Anda melakukan berbagai hal <vocabulary>secara normal</vocabulary>, secara normal.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Normal, Biasanya')
    RETURNING id INTO v_5419_normal;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '普段', 'biasa', 31, 69, '<kanji>normal</kanji> <kanji>langkah</kanji> adalah langkah yang benar-benar <vocabulary>biasa</vocabulary>. Itu adalah langkah-langkah yang <vocabulary>biasanya</vocabulary> Anda lakukan, tidak seperti langkah-langkah aneh dan tidak biasa itu.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Biasa, Biasanya, Selalu')
    RETURNING id INTO v_5420_biasa;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '編む', 'untuk-merajut', 31, 70, 'Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanjinya sendiri berarti <kanji>merajut</kanji> jadi versi kosakata kata kerjanya adalah <vocabulary>merajut</vocabulary>.', 'Ketika kamu mulai <vocabulary>merajut</vocabulary>, kamu selalu mendapatkan hasil yang sama setiap kali kamu selesai, tidak peduli apa yang kamu coba buat: Huruf "<reading>A</reading>" (あ). Sangat membuat frustrasi karena Anda tidak bisa merajut apa pun lagi.', 'Untuk Merajut')
    RETURNING id INTO v_5421_untuk_merajut;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '編集', 'sunting', 31, 71, '<kanji>Rajut</kanji> dan <kanji>kumpulkan</kanji> kembali semua yang Anda rajut. Saat Anda melakukan ini untuk memperbaiki keadaan dan menyatukannya kembali, ini adalah <vocabulary>edit</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Sunting')
    RETURNING id INTO v_5422_sunting;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '編者', 'editor', 31, 72, '<kanji>merajut</kanji> <kanji>seseorang</kanji> adalah orang yang menyatukan kata-kata dan menjadikannya lebih baik. Seseorang ini adalah <vocabulary>editor</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Editor')
    RETURNING id INTO v_5423_editor;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '外務大臣', 'menteri-luar-negeri', 31, 73, '<kanji>luar</kanji> <kanji>tugas</kanji>Menteri</kanji> (大臣) adalah seseorang yang bertugas menangani hal-hal yang berada di luar negeri. Ini adalah <vocabulary>menteri luar negeri</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Menteri Luar Negeri')
    RETURNING id INTO v_5424_menteri_luar_negeri;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '華やか', 'cerah-dan-mencolok', 31, 74, 'Kanji berarti <kanji>mencolok</kanji>, dan kata ini pada dasarnya adalah versi super positif dari kata itu — artinya <vocabulary>cerah dan mencolok</vocabulary>. 

華やか menggambarkan jenis keindahan elegan yang mencerahkan ruangan. Mungkin sedikit mencolok, tapi dengan cara yang membangkitkan semangat, bukan sekadar mencolok. Kata ini dapat mendeskripsikan pakaian <vocabulary>cantik</vocabulary>, seperti 華やかなドレス (gaun cantik) atau warna dan suasana <vocabulary>meriah</vocabulary> yang cerah.', 'Untuk membaca, pikirkan tentang sesuatu yang <vocabulary>cerah dan mencolok</vocabulary>... khususnya, <reading>花</reading>s (はな). Bunga sangat mencolok, selalu memamerkan warna dan sebagainya.', 'Cerah Dan Mencolok, Sangat indah, Meriah')
    RETURNING id INTO v_5426_cerah_dan_mencolok;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '中華', 'cina', 31, 75, '中国 adalah Tiongkok, kan? Itulah yang diwakili oleh 中 ini. Dan, tentu saja orang Cina dikenal sangat mencolok, itulah sebabnya ada <kanji>mencolok</kanji> di sana.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Cina')
    RETURNING id INTO v_5427_cina;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '豪華', 'mewah', 31, 76, 'Oh wow, <kanji>luar biasa</kanji>sangat <kanji>mencolok</kanji>! Apa pun itu, <vocabulary>mewah</vocabulary> dan <vocabulary>menakjubkan</vocabulary> dan saya menginginkannya.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Mewah, Bagus sekali, Kemewahan')
    RETURNING id INTO v_5429_mewah;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '鑑定', 'penilaian', 31, 77, 'Ketika <kanji>model</kanji> manusia <kanji>menentukan</kanji> sesuatu, itu adalah <vocabulary>penilaian</vocabulary> yang mungkin harus Anda perhatikan. Ini bukan sekadar orang sembarangan — mereka adalah penentu model, jadi mereka benar-benar memberi Anda <vocabulary>penilaian ahli</vocabulary>.

鑑定 sering kali mengacu pada penilaian keaslian atau nilai sesuatu seperti seni, barang antik, atau real estat. Ini juga digunakan dalam konteks seperti analisis sidik jari, atau dalam lingkungan hukum di mana para ahli yang ditunjuk pengadilan memberikan evaluasi teknis untuk membantu hakim mengambil keputusan.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Penilaian, Penilaian Ahli')
    RETURNING id INTO v_5432_penilaian;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '除く', 'untuk-mengecualikan', 31, 78, 'Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanjinya sendiri berarti <kanji>mengecualikan</kanji> jadi versi kosakata kata kerjanya adalah <vocabulary>to executable</vocabulary>.', 'Anda ingin mengecualikan <reading>hidung</reading> (のぞ) Anda karena Anda tidak menyukai hidung Anda. Bayangkan perasaan kuat Anda terhadap hidung saat Anda memutuskan untuk mengecualikannya.', 'Untuk Mengecualikan, Untuk Menghapus')
    RETURNING id INTO v_5433_untuk_mengecualikan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '掃除', 'pembersihan', 31, 79, '<kanji>Sapu</kanji> dan <kanji>singkirkan</kanji> semua kotoran dari lantai. Jika Anda sering melakukan ini, hal ini akan menjadi <vocabulary>pembersihan</vocabulary>.

掃除 adalah kata umum yang sering Anda dengar dalam kehidupan sehari-hari, dan itu bisa berarti apa saja, mulai dari menyedot debu ruangan dengan cepat hingga membersihkan seluruh rumah secara menyeluruh.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Namun untuk yang ini, Anda harus ingat untuk membaca bagian 除 sebagai じ. Perlu diingat bahwa <kanji>pembersihan</kanji> (kebersihan) berada di samping kesalehan dan begitu pula <reading>Je</reading>sus (じ). Jadi, Yesus itu seperti membersihkan. Mudah.', 'Pembersihan')
    RETURNING id INTO v_5434_pembersihan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '除外', 'pengecualian', 31, 80, '<kanji>Kecualikan</kanji> yang ini dan letakkan <kanji>di luar</kanji> yang sedang kita pertimbangkan. Ini adalah <vocabulary>pengecualian</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Pengecualian, Pengecualian')
    RETURNING id INTO v_5435_pengecualian;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '尋ねる', 'untuk-bertanya', 31, 81, 'Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanji itu sendiri berarti <kanji>menanyakan</kanji> sehingga versi kosakata kata kerjanya adalah <vocabulary>to inquire</vocabulary>, atau sekadar <vocabulary>to Ask</vocabulary>.

尋ねる adalah kata sopan dan sedikit formal yang Anda gunakan saat menanyakan informasi secara langsung kepada seseorang yang tidak Anda ketahui — seperti petunjuk arah atau detailnya.', 'Kamu ingin <vocabulary>menanyakan</vocabulary> tentang beberapa hal serius, tapi <reading>Taz</reading> (たず), teman Tasmanian Devilmu, terus menyela <vocabulary>untuk menanyakan</vocabulary> pertanyaan konyol.', 'Untuk Bertanya, Untuk Bertanya')
    RETURNING id INTO v_5436_untuk_bertanya;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '尋問', 'interogasi', 31, 82, 'Saat Anda <kanji>menanyakan</kanji> tentang suatu <kanji>masalah</kanji>, Anda cenderung melakukan <vocabulary>interrogation</vocabulary>-style <vocabulary>questioning</vocabulary> untuk mengungkap permasalahannya. Mengapa seperti ini? Apa yang telah terjadi? Apakah lebih besar dari kotak roti?', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Interogasi, Mempertanyakan')
    RETURNING id INTO v_5437_interogasi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '幾ら', 'berapa-harganya', 31, 83, 'Ini mempunyai arti yang sama dengan kanji, khususnya arti <vocabulary>berapa</vocabulary>. Untuk mengingat hal ini, coba pikirkan bagaimana <reading>Ra</reading>, Dewa Mesir, selalu bertanya "<vocabulary>Berapa</vocabulary> biaya untuk membangun piramida ini?" Ugh, terlalu banyak, ayo kita pekerjakan beberapa budak.', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi. Anda sudah mempelajari bacaan ini jadi Anda harus bisa membacanya!', 'Berapa harganya')
    RETURNING id INTO v_5438_berapa_harganya;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '幾つ', 'berapa-banyak', 31, 84, 'Ini mempunyai arti yang sama dengan kanji, khususnya arti <vocabulary>berapa banyak</vocabulary>. Anda mengetahui hal ini karena Anda bertanya "berapa banyak" dan mereka menjawab "つ." Ini juga dapat digunakan untuk menanyakan <vocabulary>berapa umur</vocabulary> seseorang, namun umumnya hanya untuk usia anak-anak.

Kata ini biasanya ditulis dalam kana dalam tulisan modern.', 'Pembacaannya berasal dari apa yang Anda pelajari di kanji, kerja bagus.', 'Berapa banyak, Berapa umur')
    RETURNING id INTO v_5439_berapa_banyak;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '幾何学', 'geometri', 31, 85, '<kanji>Berapa banyak</kanji>? <kanji>Apa</kanji>? Di bidang <kanji>studi</kanji> ini, Anda sering menanyakan pertanyaan-pertanyaan ini. Bidang pelajaran ini adalah <vocabulary>geometri</vocabulary>, karena Anda harus bertanya berapa sisinya dan berapa luasnya atau apalah (bisakah Anda mengatakan saya tidak ingat matematika?).', '学 dibaca dengan benar, sesuai dengan apa yang Anda pelajari. Tapi 幾 dan 何nya aneh. Bayangkan saja ketika Anda mengajukan pertanyaan dalam bahasa Jepang, Anda mengakhiri kalimatnya dengan か. Jadi, itu seperti, "何か????" dan itulah mengapa menjadi <reading>か</reading>. Kemudian, untuk 幾 pikirkan tentang bagaimana kunci <membaca</reading> (き) untuk menjawab pertanyaan geometri dengan benar adalah mencari tahu "berapa banyak" sisi yang dimiliki sesuatu. Jadi, "apakah Anda memiliki kunci <reading></reading>か?"', 'Geometri')
    RETURNING id INTO v_5440_geometri;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '廊下', 'koridor', 31, 86, '<kanji>koridor</kanji> ada <kanji>di bawah</kanji>. Apa yang Anda sebut koridor yang ada di bawah? Sebenarnya itu masih sekedar <vocabulary>koridor</vocabulary> atau <vocabulary>lorong</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Koridor, Lorong')
    RETURNING id INTO v_5441_koridor;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '画廊', 'galeri-gambar', 31, 87, '<kanji>gambar</kanji> <kanji>koridor</kanji> adalah koridor yang di dalamnya terdapat gambar-gambar yang digantung di dinding. Ini adalah <vocabulary>galeri gambar</vocabulary>.

Perhatikan bahwa 画廊 umumnya mengacu pada <vocabulary>art gallery</vocabulary> fisik, tempat karya seni dipamerkan untuk dilihat secara langsung.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Galeri Gambar, Galeri seni')
    RETURNING id INTO v_5442_galeri_gambar;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '掃く', 'untuk-menyapu', 31, 88, 'Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanjinya sendiri berarti <kanji>menyapu</kanji> sehingga versi kata kerjanya adalah <vocabulary>to menyapu</vocabulary>.', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi. Anda tidak belajar membaca dengan kanji ini, jadi inilah mnemonik untuk membantu Anda: 

Setiap kali kamu harus <vocabulary>menyapu</vocabulary> sesuatu, kamu malah terlalu asyik melakukannya: "<reading>Hah</reading> (は)! Ambillah kotoran itu! Hah! Kamu pikir kamu bisa nongkrong di lantaiku, debu? Pikirkan lagi! Hah!"', 'Untuk Menyapu')
    RETURNING id INTO v_5443_untuk_menyapu;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '泥', 'lumpur', 31, 89, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.', 'Karena kata ini terdiri dari satu kanji, kemungkinan besar menggunakan bacaan kun''yomi. Anda mempelajari bacaan ini dengan kanji, tapi inilah mnemonik jika Anda memerlukan penyegaran:

Anda mungkin tahu tentang Dora the Explorer. Tapi pernahkah kamu mendengar tentang kakak laki-lakinya yang kotor dan <vocabulary>lumpur</vocabulary>, <reading>Doro</reading> (どろ)? Mereka seperti sebuah tim. Dan karena penjelajahan yang dilakukannya, Doro selalu berlumuran lumpur.', 'Lumpur')
    RETURNING id INTO v_5444_lumpur;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '泥水', 'air-berlumpur', 31, 90, '<kanji>Lumpur</kanji> <kanji>air</kanji> adalah <vocabulary>air berlumpur</vocabulary>. Jangan ikut campur, jika Anda bisa membantu.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji kun''yomi. Anda seharusnya bisa membaca ini sendiri.

Ada cara lain untuk membaca kata ini yang menggunakan kedua bacaan on''yomi (でいすい). Ini sebagian besar digunakan dalam situasi yang lebih formal atau teknis, jadi kami fokus pada pembacaan どろみず di sini!', 'Air Berlumpur')
    RETURNING id INTO v_5445_air_berlumpur;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '棒', 'tiang', 31, 91, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.

棒 mengacu pada segala sesuatu yang panjang, tipis, dan padat, baik itu <vocabulary>tiang</vocabulary>, <vocabulary>rod</vocabulary>, atau <vocabulary>stick</vocabulary>. Dapat digunakan untuk berbagai macam benda, mulai dari dahan pohon hingga stik es krim.', 'Bacaannya sama dengan yang Anda pelajari dengan kanji.', 'Tiang, Batang, Tongkat')
    RETURNING id INTO v_5446_tiang;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '驚く', 'terkejut', 31, 92, 'Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanji itu sendiri artinya <kanji>terkejut</kanji>, jadi versi kosakata kata kerjanya adalah <vocabulary>to be surprise</vocabulary>.', 'Apa yang membuatmu begitu terkejut? <baca>bau</reading> temanmu (おどろ). Pikirkan tentang seorang teman yang tidak Anda duga begitu bau. Lalu, kaget dengan baunya. Eww gan, kamu harus mandi.', 'Terkejut, Terkejut')
    RETURNING id INTO v_5447_terkejut;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '驚嘆', 'keheranan', 31, 93, 'Aku sangat <kanji>terkejut</kanji> hingga membuatku <kanji>menghela nafas</kanji>. Ini seperti ketika Anda melihat sesuatu yang sangat mengesankan dan itu sangat mengejutkan Anda. Lalu, kamu menghela nafas karena <vocabulary>ketakjuban</vocabulary> dan <vocabulary>kekaguman</vocabulary> yang luar biasa terhadap apa yang baru saja kamu lihat.

驚嘆 adalah kata formal yang sering Anda lihat dalam tulisan untuk menggambarkan sesuatu yang benar-benar menakjubkan, atau keadaan kagum terhadap sesuatu yang mengesankan. Ini lebih dari sekedar kejutan — ini menggambarkan kekaguman mendalam yang Anda rasakan ketika mengagumi bakat, keterampilan, atau keindahan yang luar biasa.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Keheranan, Kekaguman')
    RETURNING id INTO v_5448_keheranan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '嘆く', 'untuk-meratap', 31, 94, 'Saat Anda <kanji>menghela nafas</kanji>, Anda merasakan jenis emosi tertentu. Tipe yang membuatmu sedih dan menyebabkanmu <vocabulary>menyesal</vocabulary> dan <vocabulary>bersedih</vocabulary>.', 'Untuk membaca, pikirkan saja perasaan yang Anda alami (keluh kesah yang berduka ini). Kemudian, putuskan Anda sudah selesai. <reading>投げ</reading>る (membuang) ke luar jendela. Anda tidak ingin perasaan ini lagi!', 'Untuk meratap, Untuk berduka')
    RETURNING id INTO v_5449_untuk_meratap;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '嘆息', 'mendesah', 31, 95, '<kanji>menghela nafas</kanji> <kanji>nafas</kanji> adalah <vocabulary>menghela napas</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Mendesah, Meratapi')
    RETURNING id INTO v_5450_mendesah;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '感嘆符', 'tanda-seru', 31, 96, '<kanji>Perasaan</kanji> di mana Anda <kanji>menghela nafas</kanji> adalah perasaan di mana Anda terkejut oleh sesuatu, dan tidak dapat mempercayainya, sehingga Anda menghela nafas. Eh, *menghela napas*. <kanji>token</kanji> apa yang mewakili hal ini secara tertulis? Sebuah <vocabulary>tanda seru</vocabulary>!!!!', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Tanda seru, Tanda seru')
    RETURNING id INTO v_5451_tanda_seru;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '倉庫', 'gudang', 31, 97, '<kanji>penyimpanan</kanji> <kanji>gudang</kanji> adalah semacam <vocabulary>gudang</vocabulary>, atau semacam <vocabulary>gudang</vocabulary>.

Penasaran dengan perbedaan antara 倉庫 dan 庫? Meskipun 庫 mengacu pada gudang tradisional Jepang, 倉庫 digunakan untuk gudang dan gudang modern (baik komersial maupun pribadi).', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Gudang, Gudang')
    RETURNING id INTO v_5452_gudang;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '倉', 'gudang', 31, 98, 'Kanji berarti <kanji>gudang</kanji>, dan kosakatanya juga <vocabulary>gudang</vocabulary>!

Ingin tahu apa perbedaan antara 倉 dan 庫? Dahulu, 倉 adalah tempat menyimpan biji-bijian, sedangkan 庫 dulunya diasosiasikan dengan tempat menyimpan kendaraan, sesuai dengan komposisi kanjinya. Saat ini, keduanya digunakan untuk penyimpanan umum, tetapi juga merujuk pada tempat menyimpan barang dan barang dagangan. Di antara keduanya, 倉 lebih umum digunakan.', 'Bacaannya sama dengan bacaan gudang lain yang Anda pelajari sebelumnya dengan 庫. Pada dasarnya keduanya sama, dan beruntung bagi Anda mereka juga berbagi bacaan yang sama (<reading>くら</reading>).', 'Gudang, Gudang, Kura')
    RETURNING id INTO v_5453_gudang;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '子孫', 'keturunan', 31, 99, '<kanji>anak</kanji> yang merupakan <kanji>cucu</kanji> orang lain adalah <vocabulary>keturunan</vocabulary> dari orang tersebut.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Keturunan')
    RETURNING id INTO v_5454_keturunan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '孫', 'cucu', 31, 100, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.', 'Karena kata ini terdiri dari satu kanji, kemungkinan besar menggunakan bacaan kun''yomi. Anda tidak mempelajari bacaan ini, jadi inilah mnemonik untuk membantu Anda: 

Anda adalah <vocabulary>cucu</vocabulary> dari kakek Anda. Hal favoritnya adalah memanggilmu <reading>maggo</reading>t (まご). Kakekmu pernah bertugas di militer dan sangat keras terhadapmu, belatung.', 'Cucu')
    RETURNING id INTO v_5455_cucu;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '巣', 'sarang', 31, 101, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.

巣 mengacu pada semua jenis rumah hewan — <vocabulary>sarang</vocabulary> burung, jaring laba-laba, liang tikus, atau bahkan sarang lebah. Terkadang, kata ini dapat digunakan secara kiasan untuk mendeskripsikan tempat-tempat di mana orang-orang bersembunyi, entah itu rumah yang nyaman untuk kekasih atau tempat persembunyian geng…', 'Bacaannya sama dengan yang Anda pelajari dengan kanji.', 'Sarang')
    RETURNING id INTO v_5456_sarang;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '巣立ち', 'tinggalkan-sarang', 31, 102, 'Saat kamu tinggal di dalam sarang (巣), hanya ada satu alasan bagimu untuk berdiri (立つ), yaitu untuk <vocabulary>meninggalkan sarang</vocabulary>. Ibumu mungkin sedih dengan hal ini, tapi semua orang harus <vocabulary>menjadi mandiri</vocabulary> suatu hari nanti.', 'Bacaannya berasal dari kata 巣 dan 立つ yang disatukan. Hati-hati dengan rendaku yang berubah たつ menjadi だつ!', 'Tinggalkan Sarang, Menjadi Mandiri')
    RETURNING id INTO v_5457_tinggalkan_sarang;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', 'ハチの巣', 'sarang-lebah', 31, 103, 'ハチ adalah seekor lebah. Buzz dengungan. Bayangkan saja “delapan lebah” bergabung menjadi satu lebah, menjadikannya “hachi.” Lalu, ada <kanji>sarang</kanji>. Apa yang dimaksud dengan sarang lebah? <vocabulary>sarang lebah</vocabulary>.', '巣 adalah kata yang berdiri sendiri di sini, jadi kata ini menggunakan bacaan yang sama seperti yang Anda pelajari saat mempelajari kosakatanya.', 'Sarang lebah, Sarang madu')
    RETURNING id INTO v_5458_sarang_lebah;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', 'クモの巣', 'jaring-laba-laba', 31, 104, 'クモ adalah seekor laba-laba. Tambahkan <kanji>sarang</kanji> ke dalamnya, dan Anda akan mendapatkan sarang laba-laba. Laba-laba menyebut sarangnya apa? Mereka menyebutnya <vocabulary>spiderweb</vocabulary> (artinya, jika mereka bisa berbicara).', '巣 adalah kata yang berdiri sendiri di sini, jadi kata ini menggunakan bacaan yang sama seperti yang Anda pelajari saat mempelajari kosakatanya.', 'jaring laba-laba')
    RETURNING id INTO v_5459_jaring_laba_laba;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '帯', 'obi', 31, 105, 'Kanji dan kata-katanya sama, hanya saja ini bukan <kanji>sabuk</kanji> jenis apa pun. Ini adalah <vocabulary>obi</vocabulary>, <vocabulary>sabuk</vocabulary> kain lebar yang dikenakan dengan pakaian tradisional seperti kimono dan yukata.', 'Bacaannya obi (おび), jadi kalau tahu artinya pasti tahu bacaannya juga! Jika Anda memerlukan pengingat tambahan, tanyakan pada diri Anda "Apa huruf pertama di ikat pinggang?" Hmm, saya tidak ingat. <membaca>OH! "B"</bacaan> (おび)! Saya ingat sekarang.', 'Obi, Sabuk')
    RETURNING id INTO v_5460_obi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '地帯', 'daerah', 31, 106, '<kanji>tanah</kanji> <kanji>sabuk</kanji> ini adalah wilayah di dalam sabuk, yang menahan wilayah bumi ini. Wilayah ini terpisah dari bagian bumi lainnya, sehingga menjadikannya <vocabulary>zona</vocabulary> atau <vocabulary>distrik</vocabulary> tersendiri.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Daerah, Daerah')
    RETURNING id INTO v_5461_daerah;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '直径', 'diameter', 31, 107, 'Gambarlah garis <kanji>lurus</kanji> melintasi <kanji>diameter</kanji> sebuah lingkaran, lalu ukurlah. Ini memberi Anda <vocabulary>diameter</vocabulary>. Wah, hati-hati semuanya — kita punya ahli geometri di ruangan ini!', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda tahu cara membaca kanji Anda, Anda juga akan tahu cara membacanya — perhatikan saja ちょく disingkat menjadi ちょっ.', 'Diameter')
    RETURNING id INTO v_5462_diameter;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '半径', 'radius', 31, 108, '<kanji>Setengah</kanji> dari <kanji>diameter</kanji> adalah <vocabulary>radius</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Radius')
    RETURNING id INTO v_5463_radius;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '救急車', 'ambulans', 31, 109, '<kanji>Selamatkan</kanji> dengan <kanji>cepat</kanji> menggunakan <kanji>mobil</kanji> ini. Jenis mobil apa yang bisa melakukan ini? Bagaimana dengan <vocabulary>ambulans</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Ambulans')
    RETURNING id INTO v_5465_ambulans;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '散る', 'menjadi-tersebar', 31, 110, 'Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanjinya sendiri berarti <kanji>menyebar</kanji> sehingga versi kosakata kata kerjanya adalah <vocabulary>to be scatter</vocabulary> atau <vocabulary>to get scattering</vocabulary>. 

散る merupakan kata kerja intransitif yang artinya ada sesuatu yang berhamburan dengan sendirinya. Ini biasanya digunakan untuk menggambarkan ketika benda-benda seperti kelopak atau daun berguguran, beterbangan ke bawah, dan berhamburan ke tanah. Kata ini juga dapat digunakan secara lebih abstrak, seperti kerumunan yang tiba-tiba bubar, konsentrasi Anda terganggu, impian Anda berantakan, atau bahkan seorang prajurit “jatuh” dalam pertempuran.

Anda tahu 散る bersifat intransitif karena Anda menyesali (る) keputusan Anda untuk tidak pergi melihat bunga sakura saat sedang mekar; sekarang kelopak bunga telah bertebaran tertiup angin dan kamu telah melewatkan kesempatanmu. Menisik.', 'Pikirkan tentang sesuatu yang berhamburan. Sesuatu itu <reading>chee</reading>se (ち), bertebaran di lantai, kemana-mana, masuk ke segala hal. Ugh, kamu benci bagaimana keju berhamburan, bukan?', 'Menjadi Tersebar, Untuk Tersebar, Untuk Menyebar')
    RETURNING id INTO v_5467_menjadi_tersebar;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '散歩', 'jalan-jalan', 31, 111, '<kanji>Menyebar</kanji> di sekitar tanah dan <kanji>berjalan</kanji>. Saat Anda berjalan tersebar di mana-mana, Anda akan <vocabulary>berjalan-jalan</vocabulary> atau <vocabulary>berjalan-jalan</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya. Namun ほ menjadi ぽ.', 'Jalan-jalan, Jalan-jalan')
    RETURNING id INTO v_5468_jalan_jalan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '解散', 'pembubaran', 31, 112, '<kanji>Lepaskan</kanji> dan <kanji>sebarkan</kanji> semuanya. Hal ini akan menyebabkan <vocabulary>pembubaran</vocabulary> <vocabulary>pemisahan</vocabulary>, dan bahkan <vocabulary>breaking</vocabulary> apa pun yang terlepas kemudian tercerai-berai.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Pembubaran, Perpisahan, Putus')
    RETURNING id INTO v_5469_pembubaran;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '粉', 'bubuk', 31, 113, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna. Bisa juga berarti <vocabulary>tepung</vocabulary>.', 'Karena kata ini terdiri dari satu kanji, kemungkinan besar menggunakan bacaan kun''yomi. Anda tidak mempelajari bacaan ini, jadi inilah mnemonik untuk membantu Anda mengingat:

Bayangkan saja ada <vocabulary>bubuk</vocabulary> di seluruh tangan dan wajah (こな) Cona</reading>n. Detektif Conan, itu dia. Conan telah menyelidiki semacam pembunuhan di toko roti. Dia harus menggali karung tepung untuk menemukan senjata pembunuh yang tersembunyi (rolling pin, tentu saja) dan sekarang Conan hanya ditutupi bubuk putih bertepung.', 'Bubuk, Tepung')
    RETURNING id INTO v_5470_bubuk;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '麦粉', 'tepung-terigu', 31, 114, '<kanji>Gandum</kanji> <kanji>bubuk</kanji> adalah <vocabulary>tepung gandum</vocabulary>.', 'Kata ini menggunakan bacaan kun''yomi. Karena Anda belum mempelajari cara membaca 粉 dengan kanji, inilah mnemonik yang dapat membantu Anda. Orang seperti apa yang paling menyukai <vocabulary>tepung terigu</vocabulary>? <membaca>子</membaca>! 子 paling menyukai tepung terigu karena menyenangkan untuk dimakan dan dimainkan. Konyol 子, tepung terigu adalah makanan, bukan mainan.', 'Tepung terigu')
    RETURNING id INTO v_5471_tepung_terigu;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '花粉症', 'demam-alergi-serbuk-bunga', 31, 115, 'Gejala <kanji>bunga</kanji> <kanji>bubuk</kanji> <kanji></kanji> adalah ketika Anda mulai bersin dari bubuk bunga alias serbuk sari yang berasal dari berbagai jenis bunga, yang hampir semua tanaman. Namun kata ini mengacu pada versi paling umum dari penyakit ini, yaitu <vocabulary>hay Fever</vocabulary>.', 'Semua bacaannya adalah bacaan on''yomi, yang Anda pelajari untuk semua kecuali 花. Sebaliknya, 花 adalah か, dan perlu diingat bahwa Anda dapat memikirkan tentang bagaimana satu-satunya cara untuk menghindari <vocabulary>hay Fever</vocabulary> adalah dengan melompat ke <reading>ca</reading>r Anda dan mengaktifkan filter. Manis, kelegaan yang manis.', 'Demam alergi serbuk bunga, Polinosis')
    RETURNING id INTO v_5472_demam_alergi_serbuk_bunga;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '粉状', 'bubuk', 31, 116, 'Sesuatu yang berada dalam <kanji>bubuk</kanji> <kanji>kondisi</kanji> adalah sesuatu yang telah <vocabulary>bubuk</vocabulary>. Engah!

粉状 adalah kata yang relatif formal yang digunakan untuk menggambarkan sesuatu yang berbentuk bubuk.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.

Anda juga bisa menggunakan kun''yomi untuk 粉 dan mengucapkan こなじょう. Pembacaan ini lebih umum terjadi dalam percakapan santai.', 'bubuk')
    RETURNING id INTO v_5473_bubuk;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '山脈', 'pegunungan', 31, 117, '<kanji>gunung</kanji> <kanji>pembuluh darah</kanji> adalah urat yang membentang melintasi daratan, dan ditutupi oleh pegunungan. Ini merujuk pada <vocabulary>pegunungan</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Pegunungan')
    RETURNING id INTO v_5475_pegunungan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '野菜', 'sayuran', 31, 118, '<kanji>ladang</kanji> <kanji>sayuran</kanji> tetaplah <vocabulary>sayuran</vocabulary>, baik berasal dari ladang atau tidak.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Sayuran')
    RETURNING id INTO v_5477_sayuran;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '菜食', 'pola-makan-vegetarian', 31, 119, 'Jika Anda makan <kanji>sayuran</kanji> <kanji>makanan</kanji> Anda sedang menjalani <vocabulary>diet vegetarian</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Pola Makan Vegetarian')
    RETURNING id INTO v_5478_pola_makan_vegetarian;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '貨物', 'kargo', 31, 120, '<kanji>Pengangkutan</kanji> <kanji>barang</kanji> adalah <vocabulary>pengiriman</vocabulary> atau <vocabulary>cargo</vocabulary>.', 'Bacaannya adalah 物 bacaan itu もつ. Anda dapat mengetahui hal ini karena Anda harus membawa barang dan kargo (持つ it!).', 'Kargo, Muatan')
    RETURNING id INTO v_5479_kargo;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '通貨', 'mata-uang', 31, 121, 'Hal yang akan <kanji>melewati</kanji> <kanji>pengangkutan</kanji> adalah <vocabulary>mata uang</vocabulary>. Mengapa? Karena ketika Anda ingin barang itu menjadi milik Anda, Anda harus menyetorkan uang melaluinya dan kepada pemiliknya. Ketika Anda melakukan itu, itu menjadi milik Anda. Gunakan mata uang itu!', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Mata uang')
    RETURNING id INTO v_5480_mata_uang;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '大陸', 'benua', 31, 122, '<kanji>besar</kanji> <kanji>tanah</kanji> adalah jenis tanah terluas yang ada di muka bumi ini. Itu adalah <vocabulary>benua</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Benua')
    RETURNING id INTO v_5481_benua;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '陸軍', 'tentara-darat', 31, 123, '<kanji>tentara</kanji> <kanji>tentara</kanji> adalah <vocabulary>tentara darat</vocabulary>, juga dikenal sebagai <vocabulary>tentara</vocabulary> biasa.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Tentara Darat, Tentara')
    RETURNING id INTO v_5482_tentara_darat;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '似る', 'menyerupai', 31, 124, 'Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanji itu sendiri berarti <kanji>menyerupai</kanji> sehingga versi kosakata kata kerjanya adalah <vocabulary>menyerupai</vocabulary> atau <vocabulary>terlihat seperti</vocabulary>.', 'Anda seharusnya mempelajari bacaan ini dengan kanji, tetapi berikut ini ada mnemonik yang dapat membantu Anda, untuk berjaga-jaga:

Apa yang ingin Anda <vocabulary>tiru</vocabulary>?? Apakah itu... oh tidak. Wajah <reading>lutut</reading> (に) menyerupai operasi, di mana Anda membuat wajah Anda terlihat seperti lutut dan sebaliknya? Tahukah Anda betapa berbahayanya operasi itu?', 'Menyerupai, Agar Terlihat Seperti')
    RETURNING id INTO v_5483_menyerupai;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '平均', 'rata-rata', 31, 125, 'Sesuatu yang <kanji>datar</kanji> dan <kanji>sama</kanji> dengan segala sesuatu di sekitarnya, semua benda datar di sekitarnya, adalah <vocabulary>rata-rata</vocabulary>. Mereka adalah <vocabulary>mean</vocabulary> (sama dengan rata-rata).', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Rata-rata, Berarti')
    RETURNING id INTO v_5485_rata_rata;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '均等', 'persamaan', 31, 126, 'Ini adalah <kanji>sama</kanji> dan itu adalah <kanji>sama</kanji>. Keduanya sama, luar biasa! Mereka membawa <vocabulary>equality</vocabulary>, <vocabulary>uniformity</vocabulary>, dan <vocabulary>evenness</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Persamaan, Keseragaman, Keserasian')
    RETURNING id INTO v_5486_persamaan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '均整', 'simetri', 31, 127, 'Segala sesuatunya <kanji>sama</kanji> dalam <kanji>pengaturannya</kanji>d. Mereka memiliki <vocabulary>simetri</vocabulary> dan <vocabulary>balance</vocabulary> yang sempurna.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Simetri, Keseimbangan')
    RETURNING id INTO v_5487_simetri;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '墓', 'kuburan', 31, 128, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.

墓 berarti <vocabulary>kuburan</vocabulary> atau <vocabulary>makam</vocabulary>. Karena Anda ingin bersikap penuh hormat ketika berbicara tentang tempat peristirahatan abadi seseorang, biasanya Anda menambahkan sebutan kehormatan お dan mengucapkan お墓.', 'Anda pergi ke <vocabulary>kuburan</vocabulary> Anda karena Anda adalah seorang <reading>hacker</reading> (はか). Anda membuat banyak musuh yang kuat dengan semua eksploitasi peretas Anda, dan sebelum Anda menyadarinya, Anda sudah berada di kedalaman enam kaki.', 'Kuburan, Makam')
    RETURNING id INTO v_5488_kuburan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '墓地', 'pemakaman', 31, 129, '<kanji>kuburan</kanji> <kanji>tanah</kanji> adalah area dengan banyak kuburan di dalam tanah. Ini adalah <vocabulary>kuburan</vocabulary>, atau <vocabulary>kuburan</vocabulary>.

墓地 adalah kata standar untuk pemakaman yang ditunjuk dan terorganisir.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Pemakaman, Makam')
    RETURNING id INTO v_5489_pemakaman;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '富士山', 'gunung-fuji', 31, 130, 'Tahukah Anda bahwa <kanji>gunung</kanji> yang <kanji>kaya</kanji> di <kanji>samurai</kanji> adalah gunung paling terkenal di Jepang? Masuk akal mengingat samurai mungkin juga merupakan hal paling terkenal di Jepang. Gabungkan dua hal yang paling terkenal dan Anda akan mendapatkan <vocabulary>Gunung Fuji</vocabulary> (atau <vocabulary>Gunung Fuji</vocabulary> jika Anda lebih suka menulisnya seperti itu).', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Gunung Fuji, Gunung Fuji')
    RETURNING id INTO v_5490_gunung_fuji;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '富む', 'menjadi-kaya', 31, 131, 'Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanji itu sendiri berarti <kanji>kaya</kanji> sehingga versi kosakata kata kerjanya adalah <vocabulary>menjadi kaya</vocabulary>, atau <vocabulary>berlimpah dalam</vocabulary>.

富む adalah kata yang relatif formal yang berarti memiliki banyak sesuatu yang patut diperhatikan atau berharga. Meskipun secara harfiah bisa berarti <kosa kata>menjadi kaya</vocabulary>, kata ini lebih umum digunakan untuk kualitas atau karakteristik, seperti 才能に富む (kaya akan bakat), 経験に富む (kaya akan pengalaman), atau 変化に富む (penuh perubahan).', 'Anda dikenal oleh semua <vocabulary>kaya akan</vocabulary> bakat yang berhubungan dengan <reading>jari kaki</reading> (と). Anda bisa melukis dengan jari kaki, bermain piano dengan jari kaki, bahkan menulis esai dengan jari kaki. Kemampuan Anda membuat Anda menonjol sebagai seseorang yang kaya akan keterampilan dan pengalaman, dan semua orang setuju: Anda benar-benar luar biasa.', 'Menjadi Kaya, Menjadi Berlimpah Dalam, Menjadi Kaya')
    RETURNING id INTO v_5491_menjadi_kaya;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '富', 'kekayaan', 31, 132, 'Kanji dan kata-katanya hampir persis sama. Seseorang yang <kanji>kaya</kanji> memiliki <vocabulary>kekayaan</vocabulary> dan <vocabulary>kekayaan</vocabulary>, bukan?', 'Untuk bacaannya, pikirkan tentang orang yang Anda kenal dengan <vocabulary>kekayaan</vocabulary> terbanyak. Itu adalah <read>Tommy</reading> (とみ) Hilfiger.', 'Kekayaan, Kekayaan')
    RETURNING id INTO v_5492_kekayaan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '富裕', 'kaya', 31, 133, 'Jika Anda <kanji>kaya</kanji> dan <kanji>berlimpah</kanji>, Anda <vocabulary>kaya</vocabulary> super, <vocabulary>affluent</vocabulary>, dan <vocabulary>kaya</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Kaya, Makmur, Kaya')
    RETURNING id INTO v_5493_kaya;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '道徳', 'moral', 31, 134, '<kanji>jalan</kanji> dari <kanji>kebajikan</kanji> adalah cara yang Anda ambil jika Anda memiliki <vocabulary>moral</vocabulary>. Semoga Anda punya beberapa.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Moral, Moralitas')
    RETURNING id INTO v_5494_moral;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '徳川', 'tokugawa', 31, 135, 'Ini adalah salah satu kata yang lebih masuk akal ketika Anda melihat bacaannya. "Sungai Kebajikan" bukanlah sungai yang baik, melainkan nama keluarga <vocabulary>Tokugawa</vocabulary> yang dipopulerkan oleh Keshogunan Tokugawa. Mereka memerintah Jepang untuk sementara waktu, Anda tahu?', 'Bacaannya adalah 徳 dan vocab 川 dirangkai menjadi satu kata. Begitu kamu bisa membaca ini, kamu akan tahu artinya juga, jadi fokuslah pada bacaan yang satu ini. Hati-hati dengan rendaku yang berubah かわ menjadi がわ!', 'Tokugawa')
    RETURNING id INTO v_5495_tokugawa;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '徳島県', 'prefektur-tokushima', 31, 136, '<kanji>kebajikan</kanji> <kanji>pulau</kanji> <kanji>prefektur</kanji> adalah <vocabulary>Prefektur Tokushima</vocabulary>. Bacaannya akan memberikan arti yang satu ini, selama Anda tahu "prefektur".', 'Pembacaannya adalah yang Anda pelajari dengan kanji individu. Gabungkan semuanya dan Anda akan tahu bahwa ini adalah <vocabulary>Prefektur Tokushima</vocabulary>.', 'Prefektur Tokushima')
    RETURNING id INTO v_5496_prefektur_tokushima;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '探す', 'yang-harus-diperhatikan', 31, 137, 'Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanji itu sendiri berarti <kanji>mencari</kanji> dan versi kata kerja dari kanji tersebut adalah <vocabulary>mencari</vocabulary>.


Penasaran dengan perbedaan antara 捜す dan 探す? Meskipun ada beberapa tumpang tindih di antara keduanya, 捜す biasanya digunakan dalam pencarian resmi dan menyeluruh untuk sesuatu atau seseorang yang dianggap ada secara nyata dan telah menghilang atau tidak dapat ditemukan dengan mudah. Sebaliknya, 探す juga dapat digunakan untuk pencarian pribadi akan hal-hal yang diinginkan atau dicari.', 'Anda mencari <reading>sagger</reading> (さが) di antara produk yang Anda kirim ke luar negeri. Saggers adalah kotak-kotak yang terdapat gumpalan-gumpalan aneh yang melorot, yang berarti kotak-kotak tersebut pecah dan membuat benda-benda menjadi basah. Jadi, temukan saggersnya. Buka <vocabulary>untuk mencari</vocabulary> mereka, karena mereka dapat merusak keseluruhan kiriman.', 'Yang Harus Diperhatikan, Untuk Mencari')
    RETURNING id INTO v_5497_yang_harus_diperhatikan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '探究', 'penyelidikan-akademik', 31, 138, '<kanji>Cari</kanji> sesuatu. <kanji>Penelitian</kanji> jawaban. Ini adalah <vocabulary>penyelidikan akademis</vocabulary>, atau dengan kata lain, <vocabulary>research</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Penyelidikan Akademik, Riset')
    RETURNING id INTO v_5498_penyelidikan_akademik;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '探偵', 'detektif-swasta', 31, 139, 'Anda <kanji>mencari</kanji> sesuatu dan Anda <kanji>memata-matai</kanji> orang. Pekerjaan Anda tidak semewah kedengarannya. Anda adalah seorang <vocabulary>detektif swasta</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Detektif Swasta, Penyelidik Swasta, Detektif, Detektif, Peneliti')
    RETURNING id INTO v_5499_detektif_swasta;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '内偵', 'investigasi-rahasia', 31, 140, 'Saat Anda masuk <kanji>ke dalam</kanji> ke suatu tempat untuk diam-diam <kanji>memata-matai</kanji> seseorang, Anda sedang melakukan <vocabulary>investigasi rahasia</vocabulary>.

内偵 adalah kata formal untuk investigasi dimana targetnya tidak mengetahui bahwa mereka sedang diselidiki. Ini bisa berarti <vocabulary>penyelidikan rahasia</vocabulary> oleh polisi, atau bisa juga berupa pemeriksaan rahasia terhadap mitra bisnis, karyawan baru, atau bahkan pasangan yang mencurigakan oleh perusahaan atau detektif.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Investigasi Rahasia, Investigasi Menyamar')
    RETURNING id INTO v_5500_investigasi_rahasia;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '結婚する', 'untuk-menikah', 31, 141, '結婚 berarti "pernikahan", jadi versi kata kerjanya adalah <vocabulary>menikah</vocabulary> atau <vocabulary>menikah</vocabulary>.', 'Anda sudah mempelajari 結婚, jadi Anda akan baik-baik saja di sini. Mengenai kata itu, hati-hati terhadap pembacaan 結 けつ yang berubah menjadi けっ.', 'Untuk Menikah, Untuk Menikah')
    RETURNING id INTO v_5512_untuk_menikah;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '恐れる', 'takut', 31, 142, 'Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanjinya sendiri berarti <kanji>takut</kanji> jadi versi kata kerjanya adalah <vocabulary>to takut</vocabulary>.', 'Bacaannya dibagikan dengan 恐ろしい, yang "menakutkan". Gunakan itu, dan jangan takut. Anda masih dapat mempelajari bacaan ini.', 'Takut, Takut')
    RETURNING id INTO v_5702_takut;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '迷わす', 'untuk-memimpin-seseorang-tersesat', 31, 143, 'Anda telah mempelajari 迷う yang berarti "tersesat", dan 迷わす adalah versi transitifnya, artinya mengambil objek langsung. Jadi artinya <vocabulary>menyesatkan seseorang</vocabulary>, <vocabulary>membingungkan seseorang</vocabulary>, atau <vocabulary>menyesatkan seseorang</vocabulary>.

Meskipun 迷わす bisa berarti menyebabkan seseorang tersesat, kata ini lebih umum digunakan untuk tindakan membingungkan seseorang — misalnya, membuat mereka kewalahan dengan pilihan-pilihan sulit atau dengan sengaja menyesatkan mereka dengan cara yang jahat.

Anda tahu kata kerja ini bersifat transitif karena tidak ada yang <reading>lebih buruk</reading> (わす) selain sengaja menyesatkan seseorang. Sengaja menyesatkan seseorang lebih buruk dari apa pun!', 'Bacaannya berasal dari 迷う, jadi gunakanlah itu agar kamu tidak tersesat juga.', 'Untuk Memimpin Seseorang Tersesat, Untuk Menyesatkan Seseorang, Untuk Membingungkan Seseorang')
    RETURNING id INTO v_5703_untuk_memimpin_seseorang_tersesat;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '積む', 'untuk-menumpuk-sesuatu', 31, 144, 'Anda telah mempelajari bahwa 積もる (mengumpulkan) digunakan ketika sesuatu seperti salju atau debu menumpuk seiring berjalannya waktu. 積む adalah versi transitif, jadi artinya <vocabulary>menumpuk sesuatu</vocabulary>, <vocabulary>menumpuk</vocabulary>, atau <vocabulary>memuat</vocabulary>. Anda mengetahui hal ini karena Anda adalah orang yang <read>mo</read>ving (む) menumpuknya!

積む sering digunakan untuk tindakan fisik seperti menumpuk kotak atau memuat barang bawaan, namun juga digunakan dalam cara yang lebih abstrak, seperti membangun pengalaman atau keterampilan. Anggap saja seperti "menumpuk" poin pengalaman untuk naik level dalam hidup Anda!', 'Bacaannya berasal dari 積もる, jadi kumpulkanlah pengetahuanmu dan ingatlah seperti itu.', 'Untuk Menumpuk Sesuatu, Untuk Menumpuk, Untuk Memuat')
    RETURNING id INTO v_5704_untuk_menumpuk_sesuatu;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '主催する', 'menjadi-tuan-rumah', 31, 145, 'Jika 主催 berarti "tuan rumah" atau "menampung", versi kata kerjanya adalah <vocabulary>to host</vocabulary>.

主催する mengacu pada penyelenggaraan acara, terutama acara formal seperti konferensi, konser, atau pesta perusahaan. Ini bukan sekedar tentang "melakukan" suatu acara — ini menunjukkan bahwa orang atau kelompok tersebut adalah sponsor dan penyelenggara utama, yang benar-benar bertanggung jawab untuk mewujudkannya.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya. Mengetahui kata 主催 juga akan membantu.', 'Menjadi Tuan Rumah, Untuk mensponsori')
    RETURNING id INTO v_5705_menjadi_tuan_rumah;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '催促する', 'untuk-mendesak', 31, 146, 'Jika 催促 adalah <kanji>mendesak</kanji>, maka versi kata kerjanya adalah <vocabulary>mendesak</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya. Akan membantu untuk mengetahui 催促 terlebih dahulu.', 'Untuk Mendesak, Untuk Menekan, Untuk Menuntut')
    RETURNING id INTO v_5706_untuk_mendesak;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '幾度', 'berapa-kali', 31, 147, '<kanji>Berapa</kanji> <kanji>kejadian</kanji> hanyalah cara lain untuk menanyakan <vocabulary>berapa kali</vocabulary>.

Kata ini lebih bersifat sastra dan formal daripada 何回 atau 何度.', 'Bacaannya merupakan gabungan bacaan kun''yomi dan on''yomi. Meskipun demikian, kedua bacaan untuk kedua kanji tersebut adalah bacaan yang Anda pelajari dengan kanji tersebut sehingga Anda harus bisa membaca ini.', 'Berapa kali, Seberapa sering')
    RETURNING id INTO v_7605_berapa_kali;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '恐らく', 'mungkin', 31, 148, 'Kanji dalam kata ini berarti <kanji>takut</kanji>, namun kata itu sendiri berarti <vocabulary>mungkin</vocabulary>. Saya kira Anda hanya perlu takut pada sesuatu jika hal itu <em>mungkin</em> akan terjadi, Anda tahu?', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi. Anda sudah mempelajari bacaan ini jadi Anda harus bisa membacanya!', 'Mungkin, Mungkin, Mungkin')
    RETURNING id INTO v_7660_mungkin;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '恐れ', 'takut', 31, 149, 'Ini adalah versi kata benda dari kanji <kanji>ketakutan</kanji>, jadi artinya <vocabulary>fear</vocabulary> juga.', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi. Anda sudah mempelajari bacaan ini jadi Anda harus bisa membacanya!', 'Takut, Kengerian, Kecemasan, Kekhawatiran, Rasa gelisah, Rasa takut')
    RETURNING id INTO v_7720_takut;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '用心棒', 'pengawal', 31, 150, '"<kanji>Gunakan</kanji> <kanji>hati</kanji>mu dan <kanji>tiang</kanji> ini saat kamu menjagaku," katamu kepada <vocabulary>pengawal</vocabulary>mu. Pengawal yang baik membutuhkan keduanya - hati singa, dan tiang kokoh yang bagus untuk memukul orang bodoh.

用心 sebenarnya berarti "hati-hati", jadi 用心棒 menyarankan seseorang yang waspada terhadap bahaya — sering kali dengan 棒 (tongkat) di tangan! Kata tersebut memiliki kesan kuno, era samurai, namun masih digunakan baik dalam tulisan maupun percakapan dari waktu ke waktu.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Pengawal, Tukang pukul, Penjaga')
    RETURNING id INTO v_7774_pengawal;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '華道', 'rangkaian-bunga', 31, 151, '<kanji>bunga</kanji> <kanji>cara</kanji> (atau cara bunga) adalah seni <vocabulary>merangkai bunga</vocabulary> Jepang.

Dengan nama yang begitu megah, Anda tahu ini tidak mengacu pada rangkaian bunga tua mana pun yang bisa Anda beli di toko. Ini untuk seni dan praktik <vocabulary>rangkaian bunga Jepang</vocabulary>, yang juga dikenal sebagai ikebana.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Rangkaian Bunga, Rangkaian Bunga Jepang')
    RETURNING id INTO v_8686_rangkaian_bunga;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '胃', 'perut', 31, 152, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.

Ingatlah bahwa 胃 khusus untuk "perut" organ dalam, bukan untuk "perut" area perut secara umum.', 'Bacaannya sama dengan kanji yang Anda pelajari, artinya Anda tahu bacaannya!', 'Perut')
    RETURNING id INTO v_8718_perut;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '華美', 'mencolok', 31, 153, 'Jika sesuatu memiliki <kanji>mencolok</kanji> <kanji>keindahan</kanji> maka itu akan sedikit berlebihan dan akan terlihat sebagai <vocabulary>mencolok</vocabulary> <vocabulary>kesombongan</vocabulary>. Terlalu banyak itu terlalu banyak.

Dibandingkan dengan kata serupa 派手 (mencolok), 華美 menunjukkan jenis <vocabulary>kemegahan</vocabulary> yang lebih halus — mewah dan elegan, namun sedikit berlebihan. Ini adalah kata formal, umumnya digunakan secara tertulis untuk mendeskripsikan pakaian atau dekorasi yang indah namun cenderung mencolok.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'mencolok, Kesombongan, Kemegahan')
    RETURNING id INTO v_8722_mencolok;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '延びる', 'untuk-diperpanjang', 31, 154, 'Kata ini terdiri dari kanji dengan hiragana ditempelkan. Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja.

Ini adalah kata kerja intransitif, yang artinya terjadi dengan sendirinya, dan kita tidak membicarakan apa yang menyebabkannya terjadi. Jadi kata kerja ini berarti <vocabulary>diperpanjang</vocabulary>, <vocabulary>ditunda</vocabulary>, atau <vocabulary>diperpanjang</vocabulary>. Jika Anda mengetahui kata ビル, Anda dapat membayangkan bagaimana pekerjaan bangunan selalu diperpanjang atau ditunda, untuk membantu Anda mengingat bahwa ini bersifat intransitif. Kita tidak pernah tahu kenapa hal ini tertunda, hal itu terjadi dengan sendirinya!', 'Karena kata ini memiliki okurigana (hiragana yang melekat pada kanji), Anda tahu bahwa kemungkinan besar itu adalah bacaan kun''yomi.

Beruntungnya Anda, pembacaan kanji untuk kata kerja transitif dan intransitif hampir selalu sama. Setelah Anda mempelajarinya, Anda akan mengetahui keduanya! Bacaan ini sama dengan 延ばす.', 'Untuk Diperpanjang, Akan Tertunda, Akan Diperpanjang')
    RETURNING id INTO v_8935_untuk_diperpanjang;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '我が国', 'negara-kita', 31, 155, 'Anda mengetahui bahwa 我が berarti "negara kami", jadi <kanji>negara</kanji> kami hanyalah <vocabulary>negara kami</vocabulary>.

Sama seperti 我が sendiri, ungkapan ini agak kuno dan bergaya. Hal ini banyak muncul dalam wacana politik dan konteks formal lainnya.', 'Anda mempelajari bacaan ini untuk 我 ketika Anda mempelajari 我が. Hati-hati dengan 国, yang mungkin Anda harapkan sebagai rendaku di sini, namun ternyata tidak!', 'Negara Kita')
    RETURNING id INTO v_9046_negara_kita;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '雄', 'pria', 31, 156, 'Kanji berarti laki-laki dan ini juga berarti laki-laki. Ini sebagian besar digunakan untuk hewan.

Perhatikan bahwa ini sering ditulis dalam katakana, seperti オス.', 'Hewan <vocabulary>Jantan</vocabulary> bisa jadi agak memaksa, selalu berusaha <reading>mendorong</reading> (押す) hewan lain di sekitarnya, berusaha menjadi alfa dan sebagainya.', 'Pria')
    RETURNING id INTO v_9063_pria;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '豊富', 'melimpah', 31, 157, 'Sesuatu yang <kanji>berlimpah</kanji> dan <kanji>kaya</kanji> adalah <vocabulary>berlimpah</vocabulary>, <vocabulary>berlimpah</vocabulary> dan <vocabulary>kaya</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan on''yomi dari kedua kanji. Anda seharusnya bisa membaca ini sendiri.', 'Melimpah, Banyak, Kaya')
    RETURNING id INTO v_9076_melimpah;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '貯める', 'untuk-menghemat', 31, 158, 'Kata ini terdiri dari kanji dengan hiragana ditempelkan. Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanjinya sendiri berarti <kanji>menabung</kanji>, jadi versi vocab verbanya berarti <vocabulary>menabung</vocabulary>, <vocabulary>menyimpan</vocabulary>, atau <vocabulary>mengumpulkan</vocabulary> sesuatu yang berharga.

貯める digunakan ketika Anda menabung sesuatu yang berguna dari waktu ke waktu — biasanya uang, poin loyalitas, atau mil penerbangan, misalnya, tetapi terkadang juga air dan sumber daya lainnya.', 'Kata ini menggunakan bacaan kun''yomi untuk 貯, yang belum Anda pelajari, jadi inilah mnemonik untuk membantu Anda:

Anda mempunyai <vocabulary>untuk ditabung</vocabulary> untuk <reading>ta</reading>cos (た). Taco tidak hanya lebih mahal akhir-akhir ini, Anda juga memiliki kecanduan taco yang parah sehingga Anda perlu merencanakan terlebih dahulu dan menabung untuk setiap bulannya.', 'Untuk Menghemat, Untuk Menyimpan, Untuk Mengumpulkan Sesuatu')
    RETURNING id INTO v_9366_untuk_menghemat;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '街', 'kota', 31, 159, 'Ingat kanji juga bisa berarti <kanji>kota</kanji>? Nah, itulah arti kosakatanya juga: <vocabulary>city</vocabulary>.

街 mengacu pada gagasan umum tentang <kosakata>wilayah perkotaan</vocabulary>, bukan kota sebagai unit administratif resmi. Dibandingkan dengan 町, kata ini menunjukkan skala yang lebih besar dan suasana yang lebih sibuk dan perkotaan — tempat dengan pertokoan, jalanan, dan aktivitas, seperti にぎやかな街 (kota yang ramai) atau 東京の街を歩く (berjalan di <vocabulary>jalan-jalan kota</vocabulary> Tokyo).', 'Karena kata ini terdiri dari satu kanji, maka akan menggunakan bacaan kun''yomi, yang belum Anda pelajari. Beruntungnya Anda, 街 menggunakan bacaan yang sama dengan kata lain yang Anda tahu untuk tempat tinggal orang: <reading>町</reading> (まち). Baik Anda berada di pedesaan atau di tengah <vocabulary>kota</vocabulary>, hanya ada satu bacaan yang perlu Anda ingat. Cukup nyaman, bukan?', 'Kota, Daerah Perkotaan, Jalan Kota')
    RETURNING id INTO v_9482_kota;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '街並み', 'pemandangan-kota', 31, 160, 'Saat <kanji>jalanan</kanji> <kanji>berbaris</kanji>, maka akan tercipta <vocabulary>pemandangan kota</vocabulary>.

街並み biasanya mengacu pada lanskap perkotaan yang berkembang — bayangkan deretan bangunan dan pertokoan dengan nuansa yang hidup dan ramai. Kata ini juga dapat digunakan untuk <vocabulary>streetscape</vocabulary> tertentu, sering kali dengan suasana berbeda atau semacam makna sejarah atau budaya, seperti ヨーロッパの街並み (streetscape Eropa).

Anda juga akan melihatnya ditulis sebagai 町並み, tetapi versi ini cenderung digunakan untuk lanskap kota yang lebih tenang dan lebih bersifat perumahan — sering kali dengan suasana nostalgia yang sedikit mengantuk.', 'Ini adalah kombinasi kata 街 dan 並 yang sudah Anda pelajari, jadi Anda juga harus bisa membaca kata ini. Berhati-hatilah dengan 並, karena み dalam なみ menonjol di bagian akhir.', 'Pemandangan kota, Pemandangan jalanan')
    RETURNING id INTO v_9483_pemandangan_kota;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '救済', 'lega', 31, 161, 'Bagaimana cara <kanji>menyelamatkan</kanji> seseorang dan mengakhiri penderitaannya <kanji>? Dengan memberi mereka <vocabulary>bantuan</vocabulary> dan <vocabulary>bantuan</vocabulary>.

救済 adalah kata yang relatif formal yang mengacu pada bantuan bagi orang-orang yang menghadapi kesulitan, seperti kemiskinan, bencana, atau penderitaan. Hal ini umumnya berarti memberikan dukungan yang berarti untuk mengangkat seseorang keluar dari situasi tersebut, seperti 難民救済 (bantuan pengungsi) atau 銀行救済 (dana talangan bank). Dalam konteks keagamaan, kata ini juga bisa merujuk pada konsep <vocabulary>keselamatan</vocabulary> dalam arti spiritual.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Lega, Bantuan, Penyelamatan')
    RETURNING id INTO v_9498_lega;

  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4276_halangan, 'Halangan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4276_halangan, 'Gangguan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5073_sakit_perut, 'Sakit perut', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5073_sakit_perut, 'Sakit Perut', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5319_fotografi_rahasia, 'Fotografi Rahasia', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5319_fotografi_rahasia, 'Pembuatan Film Rahasia', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5337_untuk_menerangi, 'Untuk Menerangi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5337_untuk_menerangi, 'Untuk Menyinari', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5398_tiket_pesawat, 'Tiket Pesawat', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5398_tiket_pesawat, 'Tiket Pesawat', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5402_hidung_tersumbat, 'Hidung tersumbat', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5402_hidung_tersumbat, 'Hidung tersumbat', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5403_untuk_merenung, 'Untuk merenung', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5403_untuk_merenung, 'Untuk Bertahan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5403_untuk_merenung, 'Untuk Mengambil Sesuatu Dalam Hati', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5404_untuk_menatap, 'Untuk Menatap', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5404_untuk_menatap, 'Untuk Menatap', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5405_anjing_jantan, 'Anjing Jantan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5406_membiarkan_sesuatu_padam, 'Membiarkan Sesuatu Padam', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5406_membiarkan_sesuatu_padam, 'Untuk Mengakhiri Sesuatu', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5407_merasa_gugup, 'Merasa Gugup', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5407_merasa_gugup, 'Menjadi Tegang', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5408_fusi, 'Fusi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5409_pembiayaan, 'Pembiayaan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5409_pembiayaan, 'Meminjamkan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5409_pembiayaan, 'Meminjamkan Uang', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5410_menjadi_terpisah, 'Menjadi Terpisah', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5410_menjadi_terpisah, 'Untuk Memisahkan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5410_menjadi_terpisah, 'Untuk Pindah', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5411_perceraian, 'Perceraian', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5411_perceraian, 'Mendapatkan Perceraian', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5412_pemisahan, 'Pemisahan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5412_pemisahan, 'Pemisahan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5413_segel, 'Segel', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5413_segel, 'Stempel Pribadi', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5414_menjadi_rusak, 'Menjadi Rusak', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5414_menjadi_rusak, 'Menjadi Rusak', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5415_hal_yang_rapuh, 'Hal yang Rapuh', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5415_hal_yang_rapuh, 'Barang pecah belah', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5415_hal_yang_rapuh, 'Barang Rapuh', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5416_sudah, 'Sudah', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5417_yang_ada, 'Yang ada', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5418_diputuskan, 'Diputuskan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5418_diputuskan, 'Mapan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5419_normal, 'Normal', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5419_normal, 'Biasanya', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5420_biasa, 'Biasa', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5420_biasa, 'Biasanya', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5420_biasa, 'Selalu', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5421_untuk_merajut, 'Untuk Merajut', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5422_sunting, 'Sunting', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5423_editor, 'Editor', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5424_menteri_luar_negeri, 'Menteri Luar Negeri', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5426_cerah_dan_mencolok, 'Cerah Dan Mencolok', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5426_cerah_dan_mencolok, 'Sangat indah', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5426_cerah_dan_mencolok, 'Meriah', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5427_cina, 'Cina', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5429_mewah, 'Mewah', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5429_mewah, 'Bagus sekali', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5429_mewah, 'Kemewahan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5432_penilaian, 'Penilaian', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5432_penilaian, 'Penilaian Ahli', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5433_untuk_mengecualikan, 'Untuk Mengecualikan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5433_untuk_mengecualikan, 'Untuk Menghapus', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5434_pembersihan, 'Pembersihan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5435_pengecualian, 'Pengecualian', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5435_pengecualian, 'Pengecualian', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5436_untuk_bertanya, 'Untuk Bertanya', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5436_untuk_bertanya, 'Untuk Bertanya', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5437_interogasi, 'Interogasi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5437_interogasi, 'Mempertanyakan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5438_berapa_harganya, 'Berapa harganya', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5439_berapa_banyak, 'Berapa banyak', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5439_berapa_banyak, 'Berapa umur', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5440_geometri, 'Geometri', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5441_koridor, 'Koridor', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5441_koridor, 'Lorong', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5442_galeri_gambar, 'Galeri Gambar', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5442_galeri_gambar, 'Galeri seni', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5443_untuk_menyapu, 'Untuk Menyapu', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5444_lumpur, 'Lumpur', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5445_air_berlumpur, 'Air Berlumpur', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5446_tiang, 'Tiang', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5446_tiang, 'Batang', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5446_tiang, 'Tongkat', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5447_terkejut, 'Terkejut', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5447_terkejut, 'Terkejut', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5448_keheranan, 'Keheranan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5448_keheranan, 'Kekaguman', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5449_untuk_meratap, 'Untuk meratap', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5449_untuk_meratap, 'Untuk berduka', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5450_mendesah, 'Mendesah', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5450_mendesah, 'Meratapi', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5451_tanda_seru, 'Tanda seru', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5451_tanda_seru, 'Tanda seru', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5452_gudang, 'Gudang', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5452_gudang, 'Gudang', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5453_gudang, 'Gudang', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5453_gudang, 'Gudang', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5453_gudang, 'Kura', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5454_keturunan, 'Keturunan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5455_cucu, 'Cucu', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5456_sarang, 'Sarang', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5457_tinggalkan_sarang, 'Tinggalkan Sarang', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5457_tinggalkan_sarang, 'Menjadi Mandiri', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5458_sarang_lebah, 'Sarang lebah', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5458_sarang_lebah, 'Sarang madu', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5459_jaring_laba_laba, 'jaring laba-laba', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5460_obi, 'Obi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5460_obi, 'Sabuk', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5461_daerah, 'Daerah', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5461_daerah, 'Daerah', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5462_diameter, 'Diameter', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5463_radius, 'Radius', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5465_ambulans, 'Ambulans', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5467_menjadi_tersebar, 'Menjadi Tersebar', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5467_menjadi_tersebar, 'Untuk Tersebar', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5467_menjadi_tersebar, 'Untuk Menyebar', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5468_jalan_jalan, 'Jalan-jalan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5468_jalan_jalan, 'Jalan-jalan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5469_pembubaran, 'Pembubaran', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5469_pembubaran, 'Perpisahan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5469_pembubaran, 'Putus', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5470_bubuk, 'Bubuk', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5470_bubuk, 'Tepung', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5471_tepung_terigu, 'Tepung terigu', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5472_demam_alergi_serbuk_bunga, 'Demam alergi serbuk bunga', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5472_demam_alergi_serbuk_bunga, 'Polinosis', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5473_bubuk, 'bubuk', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5475_pegunungan, 'Pegunungan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5477_sayuran, 'Sayuran', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5478_pola_makan_vegetarian, 'Pola Makan Vegetarian', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5479_kargo, 'Kargo', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5479_kargo, 'Muatan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5480_mata_uang, 'Mata uang', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5481_benua, 'Benua', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5482_tentara_darat, 'Tentara Darat', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5482_tentara_darat, 'Tentara', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5483_menyerupai, 'Menyerupai', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5483_menyerupai, 'Agar Terlihat Seperti', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5485_rata_rata, 'Rata-rata', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5485_rata_rata, 'Berarti', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5486_persamaan, 'Persamaan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5486_persamaan, 'Keseragaman', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5486_persamaan, 'Keserasian', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5487_simetri, 'Simetri', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5487_simetri, 'Keseimbangan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5488_kuburan, 'Kuburan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5488_kuburan, 'Makam', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5489_pemakaman, 'Pemakaman', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5489_pemakaman, 'Makam', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5490_gunung_fuji, 'Gunung Fuji', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5490_gunung_fuji, 'Gunung Fuji', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5491_menjadi_kaya, 'Menjadi Kaya', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5491_menjadi_kaya, 'Menjadi Berlimpah Dalam', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5491_menjadi_kaya, 'Menjadi Kaya', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5492_kekayaan, 'Kekayaan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5492_kekayaan, 'Kekayaan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5493_kaya, 'Kaya', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5493_kaya, 'Makmur', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5493_kaya, 'Kaya', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5494_moral, 'Moral', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5494_moral, 'Moralitas', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5495_tokugawa, 'Tokugawa', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5496_prefektur_tokushima, 'Prefektur Tokushima', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5497_yang_harus_diperhatikan, 'Yang Harus Diperhatikan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5497_yang_harus_diperhatikan, 'Untuk Mencari', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5498_penyelidikan_akademik, 'Penyelidikan Akademik', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5498_penyelidikan_akademik, 'Riset', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5499_detektif_swasta, 'Detektif Swasta', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5499_detektif_swasta, 'Penyelidik Swasta', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5499_detektif_swasta, 'Detektif', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5499_detektif_swasta, 'Detektif', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5499_detektif_swasta, 'Peneliti', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5500_investigasi_rahasia, 'Investigasi Rahasia', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5500_investigasi_rahasia, 'Investigasi Menyamar', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5512_untuk_menikah, 'Untuk Menikah', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5512_untuk_menikah, 'Untuk Menikah', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5702_takut, 'Takut', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5702_takut, 'Takut', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5703_untuk_memimpin_seseorang_tersesat, 'Untuk Memimpin Seseorang Tersesat', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5703_untuk_memimpin_seseorang_tersesat, 'Untuk Menyesatkan Seseorang', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5703_untuk_memimpin_seseorang_tersesat, 'Untuk Membingungkan Seseorang', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5704_untuk_menumpuk_sesuatu, 'Untuk Menumpuk Sesuatu', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5704_untuk_menumpuk_sesuatu, 'Untuk Menumpuk', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5704_untuk_menumpuk_sesuatu, 'Untuk Memuat', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5705_menjadi_tuan_rumah, 'Menjadi Tuan Rumah', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5705_menjadi_tuan_rumah, 'Untuk mensponsori', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5706_untuk_mendesak, 'Untuk Mendesak', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5706_untuk_mendesak, 'Untuk Menekan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5706_untuk_mendesak, 'Untuk Menuntut', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7605_berapa_kali, 'Berapa kali', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7605_berapa_kali, 'Seberapa sering', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7660_mungkin, 'Mungkin', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7660_mungkin, 'Mungkin', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7660_mungkin, 'Mungkin', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7720_takut, 'Takut', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7720_takut, 'Kengerian', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7720_takut, 'Kecemasan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7720_takut, 'Kekhawatiran', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7720_takut, 'Rasa gelisah', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7720_takut, 'Rasa takut', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7774_pengawal, 'Pengawal', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7774_pengawal, 'Tukang pukul', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7774_pengawal, 'Penjaga', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8686_rangkaian_bunga, 'Rangkaian Bunga', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8686_rangkaian_bunga, 'Rangkaian Bunga Jepang', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8718_perut, 'Perut', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8722_mencolok, 'mencolok', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8722_mencolok, 'Kesombongan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8722_mencolok, 'Kemegahan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8935_untuk_diperpanjang, 'Untuk Diperpanjang', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8935_untuk_diperpanjang, 'Akan Tertunda', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8935_untuk_diperpanjang, 'Akan Diperpanjang', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9046_negara_kita, 'Negara Kita', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9063_pria, 'Pria', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9076_melimpah, 'Melimpah', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9076_melimpah, 'Banyak', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9076_melimpah, 'Kaya', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9366_untuk_menghemat, 'Untuk Menghemat', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9366_untuk_menghemat, 'Untuk Menyimpan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9366_untuk_menghemat, 'Untuk Mengumpulkan Sesuatu', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9482_kota, 'Kota', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9482_kota, 'Daerah Perkotaan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9482_kota, 'Jalan Kota', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9483_pemandangan_kota, 'Pemandangan kota', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9483_pemandangan_kota, 'Pemandangan jalanan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9498_lega, 'Lega', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9498_lega, 'Bantuan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9498_lega, 'Penyelamatan', false, true);

  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4276_halangan, 'ぼうがい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5073_sakit_perut, 'いつう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5319_fotografi_rahasia, 'とうさつ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5337_untuk_menerangi, 'てらす', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5398_tiket_pesawat, 'こうくうけん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5402_hidung_tersumbat, 'はなづまり', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5403_untuk_merenung, 'おもいつめる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5404_untuk_menatap, 'みつめる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5405_anjing_jantan, 'おすいぬ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5406_membiarkan_sesuatu_padam, 'たやす', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5407_merasa_gugup, 'きんちょうする', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5408_fusi, 'ゆうごう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5409_pembiayaan, 'ゆうし', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5410_menjadi_terpisah, 'はなれる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5411_perceraian, 'りこん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5412_pemisahan, 'ぶんり', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5413_segel, 'いんかん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5414_menjadi_rusak, 'こわれる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5415_hal_yang_rapuh, 'こわれもの', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5416_sudah, 'すでに', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5417_yang_ada, 'きそん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5417_yang_ada, 'きぞん', NULL, false, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5418_diputuskan, 'きけつ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5419_normal, 'ふつう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5420_biasa, 'ふだん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5421_untuk_merajut, 'あむ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5422_sunting, 'へんしゅう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5423_editor, 'へんしゃ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5423_editor, 'へんじゃ', NULL, false, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5424_menteri_luar_negeri, 'がいむだいじん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5426_cerah_dan_mencolok, 'はなやか', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5427_cina, 'ちゅうか', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5429_mewah, 'ごうか', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5432_penilaian, 'かんてい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5433_untuk_mengecualikan, 'のぞく', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5434_pembersihan, 'そうじ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5435_pengecualian, 'じょがい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5436_untuk_bertanya, 'たずねる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5437_interogasi, 'じんもん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5438_berapa_harganya, 'いくら', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5439_berapa_banyak, 'いくつ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5440_geometri, 'きかがく', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5441_koridor, 'ろうか', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5442_galeri_gambar, 'がろう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5443_untuk_menyapu, 'はく', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5444_lumpur, 'どろ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5445_air_berlumpur, 'どろみず', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5446_tiang, 'ぼう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5447_terkejut, 'おどろく', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5448_keheranan, 'きょうたん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5449_untuk_meratap, 'なげく', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5450_mendesah, 'たんそく', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5451_tanda_seru, 'かんたんふ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5452_gudang, 'そうこ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5453_gudang, 'くら', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5454_keturunan, 'しそん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5455_cucu, 'まご', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5456_sarang, 'す', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5457_tinggalkan_sarang, 'すだち', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5458_sarang_lebah, 'はちのす', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5458_sarang_lebah, 'ハチのす', NULL, false, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5459_jaring_laba_laba, 'くものす', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5459_jaring_laba_laba, 'クモのす', NULL, false, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5460_obi, 'おび', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5461_daerah, 'ちたい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5462_diameter, 'ちょっけい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5463_radius, 'はんけい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5465_ambulans, 'きゅうきゅうしゃ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5467_menjadi_tersebar, 'ちる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5468_jalan_jalan, 'さんぽ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5469_pembubaran, 'かいさん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5470_bubuk, 'こな', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5471_tepung_terigu, 'むぎこ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5472_demam_alergi_serbuk_bunga, 'かふんしょう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5473_bubuk, 'ふんじょう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5473_bubuk, 'こなじょう', NULL, false, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5475_pegunungan, 'さんみゃく', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5477_sayuran, 'やさい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5478_pola_makan_vegetarian, 'さいしょく', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5479_kargo, 'かもつ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5480_mata_uang, 'つうか', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5481_benua, 'たいりく', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5482_tentara_darat, 'りくぐん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5483_menyerupai, 'にる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5485_rata_rata, 'へいきん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5486_persamaan, 'きんとう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5487_simetri, 'きんせい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5488_kuburan, 'はか', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5489_pemakaman, 'ぼち', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5490_gunung_fuji, 'ふじさん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5491_menjadi_kaya, 'とむ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5492_kekayaan, 'とみ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5493_kaya, 'ふゆう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5494_moral, 'どうとく', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5495_tokugawa, 'とくがわ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5496_prefektur_tokushima, 'とくしまけん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5497_yang_harus_diperhatikan, 'さがす', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5498_penyelidikan_akademik, 'たんきゅう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5499_detektif_swasta, 'たんてい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5500_investigasi_rahasia, 'ないてい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5512_untuk_menikah, 'けっこんする', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5702_takut, 'おそれる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5703_untuk_memimpin_seseorang_tersesat, 'まよわす', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5704_untuk_menumpuk_sesuatu, 'つむ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5705_menjadi_tuan_rumah, 'しゅさいする', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5706_untuk_mendesak, 'さいそくする', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_7605_berapa_kali, 'いくど', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_7605_berapa_kali, 'いくたび', NULL, false, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_7660_mungkin, 'おそらく', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_7720_takut, 'おそれ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_7774_pengawal, 'ようじんぼう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_8686_rangkaian_bunga, 'かどう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_8718_perut, 'い', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_8722_mencolok, 'かび', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_8935_untuk_diperpanjang, 'のびる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_9046_negara_kita, 'わがくに', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_9063_pria, 'おす', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_9076_melimpah, 'ほうふ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_9366_untuk_menghemat, 'ためる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_9482_kota, 'まち', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_9483_pemandangan_kota, 'まちなみ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_9498_lega, 'きゅうさい', NULL, true, true);

  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4276_halangan, 'これ以上妨害するのを止めないと、営業妨害で訴えるぞ！', 'Jika Anda tidak berhenti ikut campur, saya akan menuntut Anda karena menghalangi operasional bisnis!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4276_halangan, 'ここまで来れば、敵の妨害の危険はほぼ無いだろう。', 'Sekarang kita sudah sampai sejauh ini, risiko dicegat oleh musuh seharusnya nol.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4276_halangan, '私はいつか映画のように公務執行妨害で逮捕されてみたい。', 'Suatu hari nanti saya ingin ditangkap karena mengganggu tugas petugas polisi, seperti di film.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5073_sakit_perut, '胃痛がひどくなって入院し、病院で一ヶ月過ごしました。', 'Sakit perut saya menjadi sangat parah dan saya dirawat di rumah sakit selama sebulan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5073_sakit_perut, '胃痛によく効く薬をください。', 'Tolong beri saya obat yang manjur untuk sakit perut.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5073_sakit_perut, '生魚を食べて激しい胃痛が出た時はすぐに病院へ行ってください！アニサキス症かもしれません。', 'Bila Anda mengalami sakit perut parah setelah makan ikan mentah, harap segera ke rumah sakit! Bisa jadi itu adalah anisakiasis.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5073_sakit_perut, '禁煙してから、激しい胃痛も治まっている。', 'Sejak saya berhenti merokok, sakit perut saya yang hebat juga berhenti.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5319_fotografi_rahasia, 'あの駅、盗撮が多いから気をつけたほうがいいよ。', 'Hati-hati di stasiun itu. Ada banyak insiden syuting rahasia di sana.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5319_fotografi_rahasia, 'SNSで盗撮動画を見かけたら、いつも通報するようにしています。', 'Setiap kali saya menemukan video yang direkam secara diam-diam di media sosial, saya pastikan untuk melaporkannya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5319_fotografi_rahasia, '友達が寝てるところを盗撮しようとしたら、逆にそれを盗撮されてた！', 'Saya mencoba diam-diam memfilmkan teman saya yang sedang tidur, namun akhirnya saya diam-diam merekamnya!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5319_fotografi_rahasia, '電車内で居眠りしているところを盗撮されたんです。', 'Foto-foto saya diambil secara diam-diam ketika saya tertidur di kereta.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5337_untuk_menerangi, '僕にとって、あなたは黒い海を照らしてくれる月のような存在です。', 'Bagiku, kamu ibarat bulan yang menerangi laut hitam.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5337_untuk_menerangi, '君はこのシーンで、スポットライトでこの花を照らすんだ。', 'Dalam adegan ini, Anda akan menyoroti bunga tersebut.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5337_untuk_menerangi, '法律に照らして、このツイートが適切かどうかを確認しましょう。', 'Kami akan memeriksa apakah tweet ini sesuai dengan hukum.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5337_untuk_menerangi, 'ちょっとスマホのライトであそこの方を照らしてくれない？', 'Bisakah kamu menyorotkan senter ponselmu ke sana sebentar?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5398_tiket_pesawat, '航空券を予約しました。', 'Saya memesan tiket pesawat.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5398_tiket_pesawat, '航空券ってなんでこんなに高いの？', 'Mengapa tiket pesawat begitu mahal?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5398_tiket_pesawat, '博多までの航空券を手配してもらえますか。', 'Bisakah Anda mengatur penerbangan untuk saya ke Hakata?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5398_tiket_pesawat, '航空券をなくしたうえに、パスポートを犬に食べられたんです。', 'Saya tidak hanya kehilangan tiket pesawat, tetapi paspor saya juga dimakan oleh anjing saya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5402_hidung_tersumbat, '鼻詰まりがひどくて眠れません。', 'Hidung saya tersumbat sangat parah sehingga saya tidak bisa tidur.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5402_hidung_tersumbat, '鼻詰まりのせいで味がよくわかりません。', 'Karena hidungku yang tersumbat, aku tidak bisa merasakan apa-apa.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5402_hidung_tersumbat, '私は高熱と鼻詰まりに苦しんでいます。', 'Saya menderita demam parah dan hidung tersumbat.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5403_untuk_merenung, '失敗を思い詰めることで、ますます不安になってしまったんです。', 'Karena terobsesi dengan kegagalan, saya menjadi semakin cemas.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5403_untuk_merenung, '思い詰めていた気持ちを誰かに話すことで、少し楽になったりすることもあるんだよ。', 'Terkadang, berbicara dengan seseorang tentang perasaan yang selama ini Anda pikirkan dapat membuat Anda merasa sedikit lebih baik.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5403_untuk_merenung, '私は失業中ですが、そのことを思い詰めてはいません。', 'Saya sedang berada di antara pekerjaan, tetapi saya tidak terlalu mengkhawatirkannya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5403_untuk_merenung, '彼女のことを思い詰めていたけど、気づいたんだ。愛は自分自身を大切にすることから始まるんだって。', 'Aku begitu asyik memikirkannya, tapi kemudian aku sadar. Cinta dimulai dengan menjaga diri sendiri.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5404_untuk_menatap, '好きな人をこっそり見詰めるのって、青春っぽいよね。', 'Diam-diam menatap kekasihmu—sangat muda, bukan?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5404_untuk_menatap, '見詰めるだけで通じることもある（と信じたい）。', 'Terkadang Anda dapat berkomunikasi hanya dengan menatap… Saya harap.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5404_untuk_menatap, 'ネコにジッと見詰められたから、おやつを差し出してしまった。', 'Kucing itu menatapku dengan tajam, aku harus memberinya hadiah.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5404_untuk_menatap, 'その犬は、真っすぐ上へ上へと飛んで行く風船をじっと見詰めていた。', 'Anjing itu menatap tajam ke arah balon yang terbang lurus ke atas, semakin tinggi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5405_anjing_jantan, 'その雄犬は子犬のころから元気いっぱいだった。', 'Anjing jantan itu penuh energi sejak ia masih kecil.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5405_anjing_jantan, 'こちらの商品は、雄犬専用のトイレになります。', 'Produk ini adalah toilet untuk anjing jantan saja.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5405_anjing_jantan, 'あそこの動物病院、大型の雄犬の去勢手術は三万円ぐらいだったはず。', 'Saya yakin biaya untuk mensterilkan anjing jantan besar di klinik hewan itu sekitar 30.000 yen.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5405_anjing_jantan, '脱走していた雄犬が、先程無事に保護されました｡', 'Anjing jantan yang kabur baru saja ditangkap dengan selamat.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5406_membiarkan_sesuatu_padam, '彼女はいつも笑顔を絶やすことがなかった。', 'Dia tidak pernah membiarkan senyumannya hilang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5406_membiarkan_sesuatu_padam, '夜の間、火を絶やさないように気をつけるんだぞ。', 'Pastikan api tidak padam pada malam hari.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5406_membiarkan_sesuatu_padam, '今にも消えそうな命を絶やさないために、彼はピザを注文した。', 'Agar nyawanya yang hampir menghilang tidak padam, dia memesan pizza.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5406_membiarkan_sesuatu_padam, '日本の伝統を絶やしてはなりません。どうすれば私たちの文化を守ることができるのか、共に考えてください。', 'Kita tidak boleh membiarkan tradisi Jepang memudar. Tolong pikirkan bersama saya tentang bagaimana kita dapat melindungi budaya kita.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5407_merasa_gugup, '試合前に緊張するのはよくあることです。', 'Merasa gugup sebelum pertandingan adalah hal yang wajar.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5407_merasa_gugup, '初めてのデートで緊張した。', 'Aku merasa gugup pada kencan pertamaku.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5407_merasa_gugup, '緊張しすぎて、手がふるえました。', 'Saya sangat gugup hingga tangan saya mulai gemetar.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5407_merasa_gugup, '大事なプレゼンなので、とても緊張しています。', 'Saya sangat gugup untuk presentasi penting.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5408_fusi, 'いつだって、文化の融合は、新しい価値を生み出します。', 'Perpaduan budaya selalu mengarah pada penciptaan nilai baru.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5408_fusi, 'これは伝統と現代技術が融合した建築です。', 'Ini adalah arsitektur yang memadukan tradisi dan teknologi modern.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5408_fusi, '俺たちのバンドは、ジャズとロックを融合させた音楽を演奏しています。', 'Band kami memainkan musik yang merupakan perpaduan jazz dan rock.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5408_fusi, '医学部は理系と言うより、文理融合系だと思いませんか？', 'Tidakkah menurut Anda sekolah kedokteran lebih merupakan perpaduan antara sains dan humaniora, bukan sekadar sains?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5409_pembiayaan, '新しい事業のために融資を申請しました。', 'Saya mengajukan pinjaman untuk bisnis baru.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5409_pembiayaan, '銀行の融資を受けるのは思っていたよりも難しかったです。', 'Mendapatkan pinjaman bank ternyata lebih sulit dari yang saya kira.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5409_pembiayaan, '融資の審査には時間がかかります。', 'Penyaringan pinjaman membutuhkan waktu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5409_pembiayaan, '融資条件について詳しく説明を受けた。', 'Saya menerima penjelasan rinci tentang kondisi pinjaman.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5410_menjadi_terpisah, 'ペットとしばらく離れるのがつらい。', 'Sulit untuk menjauh dari hewan peliharaan saya untuk sementara waktu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5410_menjadi_terpisah, '家から駅まで少し離れているんです。', 'Jarak dari rumahku ke stasiun agak jauh.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5410_menjadi_terpisah, 'やっぱりふるさとを離れるのは、さびしいでしょ？', 'Meninggalkan kampung halaman memang sedikit menyedihkan, bukan?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5410_menjadi_terpisah, '親元から離れて一人暮らしをすることは思っていたよりも簡単でした。', 'Berada jauh dari orang tua dan hidup sendiri ternyata lebih mudah dari yang saya kira.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5411_perceraian, '日本では離婚届を提出するだけで簡単に離婚ができるんでしょ？', 'Di Jepang, kamu bisa bercerai dengan mudah hanya dengan mengajukan surat cerai, bukan?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5411_perceraian, '離婚した翌日、結婚記念日の花が届いた。', 'Sehari setelah perceraian kami, saya mendapat bunga untuk ulang tahun pernikahan kami.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5411_perceraian, '私たち、円満離婚だし、今でも友達みたいな関係なの。', 'Kami bercerai secara damai, dan kami masih seperti teman sampai sekarang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5411_perceraian, '「彼とは離婚するつもりなの。」「ちょっ…早まらないで。決断する前によく考えて。」', '“Aku akan menceraikannya.” “Jangan terburu-buru. Pikirkan baik-baik sebelum mengambil keputusan.”');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5412_pemisahan, 'なぜ政教分離の原則が大切か分かりますか？', 'Apakah Anda mengerti mengapa pemisahan gereja dan negara itu penting?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5412_pemisahan, 'クリームを牛乳から分離させる方法をググってみるよ。', 'Saya akan mencoba dan mencari di Google cara memisahkan krim dari susu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5412_pemisahan, '中央分離帯を走る危険な車をビデオに撮りました。', 'Saya merekam video mobil berbahaya yang melaju di jalur median.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5412_pemisahan, '日本では、1868年の4月20日（旧3月28日）に、神仏分離令が出されたんです。', 'Di Jepang, pada tanggal 20 April 1868 (28 Maret dalam penanggalan lama), dikeluarkan perintah untuk memisahkan Shinto dan Budha.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5413_segel, '印鑑を忘れて手続きができなかった。', 'Saya tidak dapat menyelesaikan prosedur ini karena saya lupa segel saya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5413_segel, '銀行口座を作るのに印鑑が必要なんだって。', 'Rupanya, Anda memerlukan stempel untuk membuka rekening bank.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5413_segel, '公的な印鑑が押された書類が必要になります。', 'Anda memerlukan dokumen yang disegel secara resmi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5413_segel, '日本では印鑑がないと、結婚も離婚もできないってマジ？', 'Di Jepang, Anda tidak bisa menikah atau bercerai tanpa stempel? Dengan serius?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5414_menjadi_rusak, 'この電子レンジ、よく壊れるんですよ。', 'Microwave ini sering rusak.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5414_menjadi_rusak, '時計が壊れたので修理に出すつもりです。', 'Jam tangan saya rusak jadi saya akan mengirimkannya untuk diperbaiki.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5414_menjadi_rusak, '大事に使っていたニンテンドーDSがついに壊れてしまった。', 'Nintendo DS saya yang selama ini saya gunakan dengan sangat hati-hati akhirnya rusak.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5414_menjadi_rusak, '寝過ごして朝ごはんを食べ損ねた上に、車が壊れたんだ。本当に今日はついてないよ。', 'Saya ketiduran, melewatkan sarapan, dan kemudian mobil saya mogok. Ini benar-benar bukan hariku hari ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5415_hal_yang_rapuh, 'これ、壊れ物だから、気をつけてね！', 'Ini adalah barang yang rapuh, jadi berhati-hatilah!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5415_hal_yang_rapuh, '壊れ物が入っている箱を持つときは、両手でしっかりと持ってください。', 'Saat membawa kotak berisi barang-barang rapuh, pegang erat-erat dengan kedua tangan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5415_hal_yang_rapuh, '壊れ物がたくさんあったせいで、引っ越しがとても大変だった。', 'Perpindahannya sangat sulit karena banyak sekali barang yang rapuh.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5415_hal_yang_rapuh, '小包に、「壊れ物、取扱注意」って書いておいた方がいいかな。', 'Haruskah saya menuliskan "Rapuh - Tangani dengan Hati-hati" pada kemasannya?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5416_sudah, '既に支払いは完了しています。', 'Pembayaran telah selesai.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5416_sudah, 'この件について、部長には既に一言伝えてあります。', 'Saya sudah menyampaikan masalah ini kepada manajer departemen.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5416_sudah, '会議は既に始まっていますので、急いで参加してください。', 'Rapat sudah dimulai, jadi harap cepat bergabung.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5416_sudah, '私が電話した時、彼は既に退社してしまってました。', 'Dia sudah meninggalkan kantornya ketika saya meneleponnya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5417_yang_ada, 'どれでもいいから、既存のファイルを開いてみてください。', 'Semuanya baik-baik saja, jadi silakan buka file yang ada.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5417_yang_ada, '既存のデザインが突然変わったけど、これって何かのサイン？', 'Desain yang ada tiba-tiba berubah. Apakah ini pertanda sesuatu?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5417_yang_ada, 'ワニカニの既存のサービスに、追加機能が加えられる予定らしいよ！', 'Tampaknya fitur tambahan akan ditambahkan ke layanan WaniKani yang sudah ada!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5417_yang_ada, 'しかも、既存のメンバーだけに特別な割引があるんだって。', 'Terlebih lagi, saya dengar ada diskon khusus hanya untuk anggota lama.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5418_diputuskan, 'この問題は既決です。', 'Masalah ini telah diselesaikan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5418_diputuskan, 'それ、もう既決だから、変えられないんだよ。', 'Itu sudah diputuskan, jadi kami tidak bisa mengubahnya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5418_diputuskan, '既決の事について話し合う時間はありません。	', 'Kami tidak punya waktu untuk membahas masalah yang sudah diputuskan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5418_diputuskan, '既決のルールに従って進めてください。', 'Silakan lanjutkan sesuai aturan yang ada.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5419_normal, '別に、普通じゃない？', 'Bukankah itu biasa saja?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5419_normal, '普通の人はこんなことしないだろう。', 'Orang normal tidak akan melakukan hal seperti ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5419_normal, '普通に考えると、ありえない話だよね。', 'Jika Anda memikirkannya secara normal, itu adalah cerita yang sulit dipercaya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5419_normal, '普通、人間は他人に影響されるものだと考えられています。', 'Secara umum diyakini bahwa orang dipengaruhi oleh orang lain.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5420_biasa, '普段、週末はどんな風に過ごしているの？', 'Bagaimana biasanya Anda menghabiskan akhir pekan?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5420_biasa, 'コウイチの普段のファッションはどんな感じですか？', 'Apa gaya busana Koichi yang biasa?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5420_biasa, '私は普段殆ど電話をしないことを、母に謝りました。', 'Saya meminta maaf kepada ibu saya karena tidak meneleponnya lebih teratur.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5421_untuk_merajut, '母が私のためにマフラーを編んでくれた。', 'Ibuku merajut syal untukku.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5421_untuk_merajut, '私の父は、セーターを編むのがとても上手だった。', 'Ayah saya sangat pandai merajut sweter.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5421_untuk_merajut, 'ブラジャーを編んでみようと思ったきっかけはなんですか。', 'Apa yang menginspirasi Anda untuk merajut bra?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5421_untuk_merajut, 'ある朝、目が覚めると、おばあちゃんがコタツで、だまって黒い手ぶくろを編んでいた。', 'Suatu pagi, ketika aku bangun, nenekku sedang diam-diam merajut sepasang sarung tangan hitam di kotatsu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5422_sunting, 'どうしてブログ記事を編集するのに一時間もかかったんですか。', 'Mengapa Anda memerlukan waktu satu jam untuk mengedit artikel blog?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5422_sunting, 'ようやく記事が書き上がったので編集に回しました。', 'Saya akhirnya selesai menulis artikel, jadi saya mengirimkannya untuk diedit.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5422_sunting, 'ただ今、コウイチの結婚式のビデオを撮影、編集してくれる人をぼ集しています。', 'Kami sedang mencari seseorang untuk merekam dan mengedit video pernikahan Koichi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5423_editor, 'この本の編者は誰ですか？', 'Siapa editor buku ini?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5423_editor, '彼なら、良い編者になれると思います。', 'Saya pikir dia bisa menjadi editor yang baik.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5423_editor, '編者に相談しましたが、まだ返事がありません。', 'Saya berkonsultasi dengan editor, tetapi saya belum menerima balasan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5423_editor, 'こちらの雑誌の編者を務めてくれた丸山君です。', 'Ini Tuan Maruyama, yang bekerja sebagai editor majalah ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5424_menteri_luar_negeri, '昨日の外務大臣の国連でのスピーチ、見た？', 'Apakah Anda melihat pidato Menlu di PBB kemarin?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5424_menteri_luar_negeri, '「俺、外務大臣目指してる」って言ってた彼、今コンビニで働いてるみたい。', 'Pria yang mengatakan, "Saya bercita-cita menjadi menteri luar negeri" kini rupanya bekerja di sebuah toko swalayan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5424_menteri_luar_negeri, '風が収まるまで、外務大臣を乗せた船は港にとどまるそうだ。', 'Hingga angin reda, kapal yang membawa Menlu tersebut dikatakan tetap berada di pelabuhan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5424_menteri_luar_negeri, 'とにかく、手短に言うとね、フグと僕は外務大臣について口論をして、それ以来、僕は彼に会っていないんだ。', 'Singkat cerita, Fugu dan saya bertengkar tentang Menteri Luar Negeri dan saya tidak bertemu dengannya lagi sejak itu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5426_cerah_dan_mencolok, 'サユリってすごく華やかだよね。', 'Sayuri sangat cantik, bukan?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5426_cerah_dan_mencolok, 'いつか綺麗なドレスを着て、華やかなカクテルパーティーに行ってみたいな。', 'Saya ingin pergi ke pesta koktail glamor dengan gaun indah suatu hari nanti.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5426_cerah_dan_mencolok, '華やかなパーティーでは、いつも一人だけ取り残されたような気分になる。', 'Di pesta-pesta glamor, saya selalu merasa seperti saya satu-satunya yang tersisih.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5426_cerah_dan_mencolok, 'あなたはそうやって何でも華やかな笑顔でごまかせちゃうもんね。うらやましい！', 'Kamu selalu berhasil menutupi semuanya dengan senyuman cerah dan indahmu. aku cemburu!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5427_cina, '中華を食べすぎて、夢の中でチャーハンに追いかけられた。', 'Saya makan terlalu banyak makanan Cina dan dikejar nasi goreng dalam mimpi saya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5427_cina, '中華屋って基本、リーズナブルなうえにボリュームがすごいよね。', 'Restoran Cina biasanya harganya terjangkau dan memberi Anda porsi besar, bukan?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5427_cina, '中華街で食べ歩き中、彼女に「ここ、前の彼氏と来た」って言われて、そこから何も味がしなくなった。	', 'Saat kami sedang makan di Chinatown, pacarku berkata, "Aku datang ke sini bersama mantanku," dan setelah itu, aku tidak bisa merasakan apa pun.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5427_cina, '中華料理が食べたい気分なんだけど、今夜一緒に中華食べに行かない？', 'Aku sedang dalam mood untuk bahasa Cina. Apakah kamu ingin pergi makan masakan Cina bersamaku malam ini?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5429_mewah, 'こんなに豪華なフグのおさしみをいただいてもいいんですか？', 'Bolehkah aku makan sashimi ikan buntal yang mewah?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5429_mewah, '今年の誕生日に父に豪華客船を貸し切ってもらいました。', 'Untuk ulang tahunku tahun ini, ayahku menyewakanku sebuah kapal pesiar mewah.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5429_mewah, 'うわっ！めっちゃ豪華やん。美味しそう。（関西弁）', 'Wow! Itu luar biasa. Kelihatannya enak. (Kansai-ben)');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5432_penilaian, '鑑定の結果、本物だと判明しました。', 'Penilaian memastikan bahwa itu asli.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5432_penilaian, '彼は美術品の鑑定を専門にしています。', 'Dia berspesialisasi dalam penilaian seni.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5432_penilaian, '鑑定士に結婚指輪を鑑定してもらったら、実は安物だったことが判明した。', 'Saat cincin kawin saya dinilai oleh penilai, ternyata cincin itu murah.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5432_penilaian, 'お前が赤ん坊の本当の父親かどうかを調べるために、DNA鑑定を受けた方がいいんじゃないか。', 'Anda harus melakukan tes DNA untuk mengetahui apakah Anda adalah ayah kandungnya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5433_untuk_mengecualikan, '彼を除く全員が会議に参加した。', 'Semua orang kecuali dia menghadiri pertemuan itu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5433_untuk_mengecualikan, '明日はみんな休み！俺を除いて…ね。', 'Semuanya libur besok! Tidak termasuk saya…');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5433_untuk_mengecualikan, '雨の日を除けば、毎日散歩している。', 'Saya pergi jalan-jalan setiap hari, kecuali saat hujan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5433_untuk_mengecualikan, '赤い紙を除く全ての紙を、その折り目まで折ってください。', 'Lipat semua kertas, kecuali kertas merah, hingga memenuhi lipatan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5434_pembersihan, '週末に掃除をするのが私の習慣です。', 'Sudah menjadi kebiasaan saya untuk bersih-bersih di akhir pekan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5434_pembersihan, '掃除の後、部屋が明るく感じるのが好きです。', 'Saya suka bagaimana ruangan terasa lebih cerah setelah dibersihkan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5434_pembersihan, '掃除が終わったら、お茶でも飲もうかな。', 'Setelah pembersihan selesai, mungkin saya akan minum teh.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5434_pembersihan, 'まずやるべきことをやらなくてはね。部屋の掃除から始めようか。', 'Hal pertama yang pertama. Mari kita mulai dengan membersihkan kamar Anda.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5435_pengecualian, '除外理由を教えてもらえませんか？', 'Bisakah Anda memberi tahu saya alasan pengecualian tersebut?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5435_pengecualian, 'その馬、鼻血で競争除外になっちゃったみたいだよ。', 'Sepertinya kuda itu dikeluarkan dari perlombaan karena mimisan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5435_pengecualian, 'その場合はどうやら適用除外になってしまうみたいですね。', 'Kalau begitu, sepertinya hal itu akan dikecualikan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5435_pengecualian, 'ただし、除外規定があるみたいなので、気をつけてください。', 'Namun sepertinya ada aturan pengecualian, jadi harap berhati-hati.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5436_untuk_bertanya, 'これは彼に直接尋ねるのが一番早いと思います。', 'Mengenai hal ini, menurut saya cara tercepat adalah bertanya langsung kepadanya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5436_untuk_bertanya, '人に尋ねる前に、まずは自分で調べてみてください。', 'Silakan coba riset sendiri sebelum bertanya pada orang lain.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5436_untuk_bertanya, 'お店の営業時間を尋ねるつもりだったが、誰もいなかった。', 'Tadinya saya mau bertanya tentang jam buka toko, tapi tidak ada orang di sana.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5436_untuk_bertanya, '何を尋ねても、夫はいつも逃げるような答えを返すばかりで…のれんに腕押しってやつですよ。', 'Apapun yang saya tanyakan, suami saya selalu memberikan jawaban yang mengelak... seperti berbicara dengan tembok bata.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5437_interogasi, '警察は関係者全員を尋問しました。', 'Polisi menanyai semua orang yang terlibat.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5437_interogasi, '証人尋問の際、証人は常に真実を述べなければならない。', 'Dalam pemeriksaan terhadap seorang saksi, saksi harus selalu mengatakan yang sejujurnya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5437_interogasi, '弁護人は証人に対して反対尋問を行った。', 'Kuasa hukum pembela melakukan pemeriksaan silang terhadap saksi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5437_interogasi, '反対尋問の際、弁護士は証人に対して誘導尋問を行い、証言を有利に導きました。', 'Selama pemeriksaan silang, pengacara mengajukan pertanyaan-pertanyaan yang mengarahkan kepada saksi dan mengarahkan kesaksian demi keuntungan mereka.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5438_berapa_harganya, 'これはお幾らですか？', 'Berapa harganya?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5438_berapa_harganya, '幾ら探しても、見つからなかった。', 'Tidak peduli seberapa banyak aku mencari, aku tidak dapat menemukannya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5438_berapa_harganya, '幾らかのトラブルはありましたが、何とか無事に終わりました。', 'Ada beberapa masalah, tapi entah bagaimana berakhir dengan aman.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5438_berapa_harganya, '送料が幾らになるのか教えていただけませんでしょうか。', 'Bisakah Anda memberi tahu saya berapa biaya pengirimannya?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5439_berapa_banyak, 'その小づつみの中にリンゴが幾つ入っているか数えてもらえる？', 'Bisakah Anda menghitung berapa banyak apel yang ada dalam bungkusan itu?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5439_berapa_banyak, '録音に適したマイクを幾つ知っていますか。', 'Berapa banyak mikrofon yang Anda tahu cukup untuk merekam?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5439_berapa_banyak, 'おじょうちゃんは幾つかな？', 'Berapa umurmu, gadis kecil?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5440_geometri, '幾何学のテストでAプラス取ったの？すごいじゃん、よくやったね！', 'Apakah Anda mendapat nilai A+ pada tes geometri? Itu luar biasa, Anda melakukannya dengan sangat baik!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5440_geometri, '幾何学模様のカーペットが欲しいんだよね。', 'Saya ingin karpet dengan pola geometris.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5440_geometri, '幾何学的な図形を描くために、コンパスと定規を使いました。', 'Saya menggunakan kompas dan penggaris untuk menggambar bentuk geometris.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5440_geometri, '幾何学とは、図形の性質や空間の構造を研究する数学の一分野です。', 'Geometri adalah salah satu cabang matematika yang mempelajari sifat-sifat bentuk dan struktur ruang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5441_koridor, '廊下で走らないでください。', 'Tolong jangan lari di lorong.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5441_koridor, '廊下の電気がついていなくて、少しこわかった。', 'Lampu lorong mati, dan agak menakutkan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5441_koridor, '廊下で元カレとすれちがった。こっちは全力でドアのフリした。', 'Saya melewati mantan pacar saya di lorong. Saya melakukan yang terbaik untuk berpura-pura menjadi pintu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5441_koridor, '彼が廊下でバナナの皮に滑るのを見て、彼女は思わず吹き出してしまった。', 'Ketika dia melihatnya terpeleset kulit pisang di lorong, tanpa pikir panjang dia tertawa terbahak-bahak.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5442_galeri_gambar, '彼女は自分の画廊を開いた。', 'Dia membuka galeri fotonya sendiri.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5442_galeri_gambar, '駅前に新しい画廊ができた。', 'Sebuah galeri seni baru dibuka di dekat stasiun.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5442_galeri_gambar, 'あの画廊、ちょっと入りづらいよな。', 'Galeri itu agak sulit untuk dimasuki, bukan?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5442_galeri_gambar, '画廊のオーナーは「この作品、必ず上がりますよ」と断言して、ニヤッと笑った。明らかにあやしい。', 'Pemilik galeri dengan percaya diri berkata, "Nilai karya ini pasti akan naik," dan tersenyum licik. Jelas mencurigakan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5443_untuk_menyapu, '毎朝、庭を掃くのが日課です。', 'Menyapu halaman setiap pagi adalah bagian dari rutinitas saya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5443_untuk_menyapu, '彼は掃除機をかける代わりに、ほうきで掃くのが好きなんです。', 'Ia lebih memilih menyapu dengan sapu dibandingkan menggunakan penyedot debu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5443_untuk_menyapu, '会議が始まる前に、会議室をちょっと掃いておいてもらっていいかな。', 'Bisakah Anda menyapu ruang rapat sebelum rapat dimulai?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5443_untuk_menyapu, 'ゴミを掃きながら気づいたんだけど、ほうきって意外といいストレッチになるかも。', 'Saya menyadari saat menyapu sampah bahwa sapu sebenarnya bisa digunakan untuk meregangkan tubuh.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5444_lumpur, '足元が泥だらけになってしまった。', 'Kakiku berlumuran lumpur.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5444_lumpur, '泥に足を取られて、前に進むのが大変だった。', 'Kaki saya tersangkut di lumpur, dan sulit untuk bergerak maju.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5444_lumpur, '「おい、ちょっと待て！お前今、床に泥を付けただろ？」「えっ！泥なんて付けてませんよ。チョコレートなら付けましたが。」', '"Hei, tunggu dulu! Lantaimu baru saja terkena lumpur, ya?"
"Eh! Aku tidak terkena lumpur. Tapi aku mendapat coklat di atasnya."');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5444_lumpur, '泥のついた大根なんて、そのまま食べられないでしょ？だから「ありのままの私を受け入れてほしい」なんて思わず、自分をよくする努力をした方がいいわ。', 'Anda tidak bisa makan lobak dengan lumpur apa adanya, bukan? Jadi, daripada berpikir “Aku ingin kamu menerimaku apa adanya”, lebih baik kamu berusaha memperbaiki diri.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5445_air_berlumpur, 'その川の水はすっかり泥水に変わってしまった。', 'Air di sungai itu telah berubah seluruhnya menjadi air berlumpur.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5445_air_berlumpur, '泥水の中で泳ぐなんて、信じられない。', 'Saya tidak percaya seseorang akan berenang di air berlumpur.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5445_air_berlumpur, '泥水を飲むなんて、考えただけで気分が悪くなるよ。', 'Membayangkan meminum air berlumpur membuatku mual.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5445_air_berlumpur, ' 「ちょっと！今私の雑誌にコーヒーをこぼしたでしょ？」「ああ、ごめん！悪かったよ。」「あ〜ぁ〜…ジョニーデップの股間のところに泥水みたいな染みができちゃったじゃない！」', '"Hei! Apa kamu menumpahkan kopi ke majalahku?" "Ah, maaf! Salahku!" "Aww...sekarang sepertinya ada noda air berlumpur tepat di selangkangan Johnny Depp."');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5446_tiang, 'この棒、何の棒？テントの棒？', 'Untuk apa tongkat ini? Apakah ini tongkat untuk tenda?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5446_tiang, 'アイスの棒を使って、工作をしました。', 'Saya membuat kerajinan menggunakan stik es krim.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5446_tiang, '犬が棒をくわえて、嬉しそうに走ってきた。', 'Anjing itu mengambil tongkat di mulutnya dan berlari ke arahku, tampak bahagia.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5446_tiang, 'まずはここに棒を立てて、目印にしよう！', 'Pertama, mari kita berdirikan tiang di sini dan menggunakannya sebagai penanda!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5446_tiang, '「ああ、足が棒だよ。痛くて死にそう。」「言わんこっちゃない。だから、もっと歩きやすい靴を履けって最初に言ったじゃないか。」', '"Ah, kakiku membuatku sakit." "Sudah kubilang! Itu sebabnya aku menyuruhmu memakai sepatu yang lebih nyaman."');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5447_terkejut, 'マジで？それは驚くわ。', 'Dengan serius? Itu mengejutkan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5447_terkejut, 'サプライズパーティーに驚くふりをしました。', 'Aku berpura-pura terkejut dengan pesta kejutan itu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5447_terkejut, '妹が「新しい彼氏できた」と言って連れてきたのが、元カレの父親で驚いた。', 'Adikku berkata, "Aku punya pacar baru," dan aku terkejut dia membawa pulang ayah mantanku.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5447_terkejut, '「フグ？お前、フグか？」「サーモンか？こいつは驚いた。高校以来だね。元気かい？」', '"Fugu? Apakah itu kamu, Fugu?" "Salmon? sial sekali. Aku belum pernah melihatmu sejak SMA. Bagaimana kabarmu?"');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5448_keheranan, '彼の演技には、皆が驚嘆した。', 'Semua orang merasa kagum dengan penampilannya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5448_keheranan, '彼女の知識量には驚嘆するしかありませんよ。', 'Seseorang hanya bisa mengagumi banyaknya pengetahuan yang dimilikinya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5448_keheranan, 'その太陽光発電所の規模に驚嘆しました。', 'Saya kagum dengan besarnya pembangkit listrik tenaga surya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5448_keheranan, '彼は驚嘆して、「この世界、本当によくできてる」とつぶやいた。', 'Dia kagum dan bergumam, “Dunia ini dibuat dengan sangat baik.”');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5449_untuk_meratap, '自分の運命を嘆くのは、そろそろやめにしないか？', 'Bukankah sudah saatnya kamu berhenti meratapi nasibmu?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5449_untuk_meratap, '彼は貧乏を嘆くのではなく、努力した。だからこそ、成功したのだ。', 'Dia tidak menyesali kemiskinannya; sebaliknya, dia bekerja keras. Itulah sebabnya dia berhasil.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5449_untuk_meratap, '私は、毎日同じ服を着ている理由を誰も聞いてくれないことを嘆いた。', 'Saya menyesal karena tidak ada seorang pun yang bertanya mengapa saya mengenakan pakaian yang sama setiap hari.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5449_untuk_meratap, 'どんなにくよくよ嘆いていても、時間はもどらないんだから、嘆くのはやめて前に進もうよ！', 'Tidak peduli betapa sedihnya kamu, waktu tidak akan bisa kembali, jadi berhentilah khawatir dan melangkah maju!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5450_mendesah, '彼女は嘆息をついた後、デスクの下の誰かにお弁当を渡した。', 'Dia menghela nafas dan kemudian menyerahkan kotak makan siang kepada seseorang di bawah meja.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5450_mendesah, '彼はギュッというような変な嘆息をもらして、空のベビーカーを見つめた。', 'Dia menghela nafas yang aneh dan tajam dan menatap kereta dorong yang kosong.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5450_mendesah, 'ジェイコブは幼児らしからぬ嘆息をこぼしてから、ゆっくりとつみ木をくずした。	', 'Setelah mendesah dengan cara yang tidak pantas bagi seorang balita, Jacob perlahan-lahan merobohkan balok-balok bangunan tersebut.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5450_mendesah, '他人よりも自分がずっと短足だと気づいた時、彼は深々と嘆息を落として、日本短足協会へと向かった。', 'Ketika dia menyadari bahwa kakinya jauh lebih pendek daripada kaki orang lain, dia menghela nafas dalam-dalam dan menuju ke Asosiasi Kaki Pendek Jepang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5451_tanda_seru, '感嘆符は強い感情を表すときに使います。', 'Tanda seru digunakan untuk mengekspresikan emosi yang kuat.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5451_tanda_seru, 'メールで語尾に必ず感嘆符を付ける友達がいます。', 'Saya punya teman yang memberi tanda seru di akhir setiap kalimat di emailnya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5451_tanda_seru, '感嘆符なしで「ありがとう」って、なんか冷たく感じるのは私だけ？', 'Apakah hanya saya yang merasa "terima kasih" tanpa tanda seru terasa dingin?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5451_tanda_seru, '「おはよう！！！」って、朝から感嘆符多用でテンション高すぎて草。', 'Mengatakan "Selamat pagi!!!" dengan tanda seru sebanyak itu terlalu berlebihan untuk pagi hari, haha.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5452_gudang, 'あの倉庫、今は誰も使っていないはずだよ。', 'Gudang itu seharusnya tidak digunakan oleh siapa pun saat ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5452_gudang, '倉庫に入ったら、タイムマシンがあったんだよ。', 'Saya masuk ke gudang dan menemukan mesin waktu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5452_gudang, 'これは、倉庫にコウイチと二人で閉じ込められた時にプレイしたカードゲームです。', 'Ini adalah permainan kartu yang aku mainkan dengan Koichi saat kami berdua terjebak di gudang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5452_gudang, '倉庫の鍵を閉めるには、カチッという音が聞こえるまでレバーを上げる必要があります。', 'Anda perlu mengangkat tuas hingga terdengar bunyi klik untuk mengunci gudang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5453_gudang, '倉で見つけた地図を広げてみた。', 'Saya membuka peta yang saya temukan di gudang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5453_gudang, 'この倉には米がたくさん保管されています。', 'Gudang ini menyimpan banyak beras.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5453_gudang, '倉の中はひんやりしていて気持ちよかった。', 'Di dalam gudang itu sejuk dan menyenangkan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5453_gudang, 'ジローがまた倉に閉じこめられた？3回目だぞ？', 'Jiro terkunci di gudang lagi? Itu yang ketiga kalinya!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5454_keturunan, '彼は宮家の子孫です。', 'Dia adalah keturunan keluarga kekaisaran.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5454_keturunan, '子孫たちが、私の意図に気づく日は来るのだろうか？', 'Saya bertanya-tanya apakah akan tiba saatnya keturunan saya menyadari niat saya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5454_keturunan, 'あのフィギュアスケート選手、織田信長の子孫なんだって！', 'Kudengar sosok skater itu adalah keturunan Oda Nobunaga!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5454_keturunan, '歴史的な人物の子孫たちが、今どこで何をしているのか知りたいと思いませんか？', 'Ingin tahu di mana letak keturunan tokoh sejarah dan apa yang mereka lakukan saat ini?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5455_cucu, '孫が生まれてから、毎日がにぎやかになりました。', 'Sejak cucu saya lahir, setiap hari terasa hidup.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5455_cucu, '孫に「死んだらSwitchくれる？」って聞かれて目から水が流れ出した。', 'Cucu saya bertanya kepada saya, "Saat kamu meninggal, bolehkah saya mendapatkan Switch-mu?" dan air mulai mengalir dari mataku.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5455_cucu, '孫が泣いてるからなぐさめたら、「YouTube止まっただけ」だった。', 'Saya menghibur cucu saya yang menangis, namun ternyata itu hanya karena YouTube berhenti.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5455_cucu, '新しいコンピューターを接続することは、 私の孫にとってはお茶の子さいさいだ。', 'Menghubungkan komputer baru adalah hal yang mudah bagi cucu saya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5456_sarang, '鳥が木の上に巣を作っている。', 'Burung itu sedang membangun sarangnya di pohon.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5456_sarang, 'クモの巣の中に虫が引っかかっている。', 'Ada serangga yang tersangkut jaring laba-laba.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5456_sarang, '近くにハチの巣があるから、気をつけて歩いてね。', 'Ada sarang lebah di dekatnya, jadi berhati-hatilah saat berjalan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5456_sarang, '巣の中では、ツバメの雛が五羽、ぴいぴい鳴いていました。', 'Ada lima bayi burung walet yang sedang berkicau di sarangnya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5456_sarang, 'そのアパートは、オンボロだけど、確かに二人だけの愛の巣だった。	', 'Apartemen itu kumuh, tapi yang pasti itu adalah sarang cinta hanya untuk mereka berdua.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5457_tinggalkan_sarang, 'ついに子供達の巣立ちの日がやってきてしまい、ちょっとさびしいです。', 'Saya sedikit sedih karena akhirnya tiba saatnya anak-anak saya meninggalkan sarang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5457_tinggalkan_sarang, 'どうして鳥は飛べるようになる前に巣立ちをするのですか。', 'Mengapa burung meninggalkan sarangnya sebelum bisa terbang?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5457_tinggalkan_sarang, '朝から鳥がたくさん鳴いているので、外を見てみたら、ちょうど、子スズメが巣立ちをするところでした。　', 'Karena burung-burung sudah banyak berkicau sejak pagi, saya melihat ke luar dan melihat seekor bayi burung gereja baru saja hendak meninggalkan sarangnya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5457_tinggalkan_sarang, 'ユーザーがレベル60を達成してワニカニから巣立ちをすることになったら、コウイチはいつもこっそり「おめでとう」ってつぶやくんです。', 'Ketika pengguna mencapai level 60 dan tiba waktunya untuk meninggalkan WaniKani, Koichi selalu berbisik pelan, "Selamat."');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5458_sarang_lebah, 'ハチの巣を見つけても、危ないので近づかないでください。', 'Kalaupun kalian menemukan sarang lebah, mohon jangan mendekatinya karena berbahaya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5458_sarang_lebah, '友達がおいしいハチの巣を持ってきていて、私は羨ましかった。', 'Temanku membawakan sarang madu yang lezat, dan aku iri.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5458_sarang_lebah, 'ハチの巣の周りで沢山のハチがブンブン飛び回っている。', 'Ada banyak lebah yang berdengung di sekitar sarang lebah.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5458_sarang_lebah, '今朝、母に出された朝食の皿にハチの巣がチョコンとのっていた。でも母は「いつもの」と言った。', 'Pagi ini, ada sepotong kecil sarang lebah di piring sarapan pemberian ibuku. Tapi dia hanya berkata, "Biasa saja."');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5459_jaring_laba_laba, 'あ、クモの巣ができてる！', 'Oh, ada jaring laba-laba!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5459_jaring_laba_laba, '空き家の中はクモの巣だらけだった。', 'Rumah terbengkalai itu penuh dengan jaring laba-laba.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5459_jaring_laba_laba, 'うちの家では、クモの巣を見つけても、母が「これは芸術よ！」って言って掃除させてくれないんです。', 'Di rumah kami, meskipun kami menemukan jaring laba-laba, ibu saya berkata, "Ini seni!" dan tidak membiarkan kami membersihkannya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5459_jaring_laba_laba, '屋根裏部屋で、クモの巣が掛かった祖父の未完成の絵を見つけたんです。', 'Saya menemukan lukisan kakek saya yang belum selesai ditutupi sarang laba-laba di loteng.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5460_obi, '白い帯はお手入れが大変です。', 'Sulitnya merawat obi putih.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5460_obi, '彼は空手で黒帯を持っている、武道の達人です。	', 'Dia memegang sabuk hitam karate, dan merupakan ahli seni bela diri.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5460_obi, '帯の締め方はYouTubeで見て練習しました。', 'Saya menonton cara mengikat sabuk obi di YouTube dan mempraktikkannya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5460_obi, '見上げると、帯状の雲が空をおおっていた。', 'Ketika saya melihat ke atas, segumpal awan menutupi langit.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5461_daerah, 'ここは、あなた以外には安全地帯です。', 'Ini adalah zona aman untuk semua orang kecuali Anda.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5461_daerah, 'この地域は農業地帯で、広い畑が広がっています。', 'Wilayah ini merupakan zona pertanian, dengan ladang-ladang luas yang terhampar luas.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5461_daerah, '産業地帯では、工場が立ち並んでおり、多くの人が働いています。', 'Di kawasan industri, pabrik-pabrik berjejer di jalanan, dan banyak orang bekerja di sana.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5461_daerah, '新しい道路が開通すると、この地帯のアクセスが改善されます。', 'Ketika jalan baru dibuka, akses menuju zona ini akan ditingkatkan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5462_diameter, 'この円の直径は10センチです。', 'Diameter lingkaran ini adalah sepuluh sentimeter.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5462_diameter, '地球の直径は約12,742キロメートルです。', 'Diameter bumi sekitar 12.742 kilometer.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5462_diameter, 'ケーキの直径20センチって書いてたのに、実物は5ミリ短かったんです！', 'Kue itu diberi label diameter dua puluh cm, tapi sebenarnya kue itu pendeknya lima mm!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5462_diameter, '直径100フィートもある巨大な新種のクラゲが、ビーチをドロドロにしてしまいました。', 'Spesies ubur-ubur raksasa baru dengan diameter 100 kaki muncul di pantai.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5463_radius, 'この円の半径は10センチです。', 'Jari-jari lingkaran ini adalah sepuluh sentimeter.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5463_radius, '半径5km以内にコンビニが5つもあります。', 'Ada lima toko serba ada dalam radius lima kilometer.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5463_radius, '僕、半径50cm以内に猫がいないとメンタルがボロボロになる体質なんです。', 'Saya tipe orang yang kesehatan mentalnya akan berantakan jika tidak ada kucing dalam radius lima puluh sentimeter.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5463_radius, '半径3cmの球体の体積は何立方センチメートルですか。', 'Berapakah volume bola yang berjari-jari tiga sentimeter dalam sentimeter kubik?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5465_ambulans, 'ケガをした人がいたので、救急車をよびました。', 'Saya menelepon ambulans karena ada yang terluka.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5465_ambulans, '救急車が来るまで、声をかけながら待っていた。', 'Saya tinggal bersama orang tersebut dan berbicara dengannya sambil menunggu ambulans.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5465_ambulans, '救急車の音が聞こえて、外を見たら、運ばれてる人がピースしてて、インスタライブしてた。 ', 'Saya mendengar suara ambulans, dan ketika saya melihat ke luar, orang yang dibawa pergi sedang membuat tanda perdamaian dan streaming di Instagram Live.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5465_ambulans, '救急車が急発進して男性にぶつかったため、もう一台別の救急車も必要になった。', 'Ambulans tiba-tiba lepas landas dan menabrak seorang pria, jadi kami memerlukan ambulans lain.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5467_menjadi_tersebar, '気が散るから、テレビを消して作業をしよう。', 'Karena mengganggu, ayo matikan TV dan mulai bekerja.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5467_menjadi_tersebar, 'サクラの花が風に散って、地面にピンクのカーペットができました。', 'Bunga sakura bertebaran tertiup angin, menciptakan karpet merah muda di tanah.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5467_menjadi_tersebar, '火花が散り、少しだけ火の粉が飛んできました。', 'Percikan tersebar, dan beberapa bara api terbang ke arahku.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5467_menjadi_tersebar, '色づいた葉っぱが散る様子は、まるで恋人との別れのように、切なくて美しい。', 'Cara jatuhnya daun-daun berwarna ibarat mengucapkan selamat tinggal pada kekasih, menyakitkan sekaligus indah.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5468_jalan_jalan, '今日は天気がいいので、散歩に出かけようと思っています。', 'Cuacanya bagus hari ini, jadi aku berpikir untuk jalan-jalan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5468_jalan_jalan, '犬の散歩中に見つけたカフェで、カフェラテをエンジョイしました。', 'Saya menikmati café latte di kafe yang saya temukan sambil berjalan-jalan dengan anjing saya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5468_jalan_jalan, '散歩をする時は、小銭しか持ち歩きません。', 'Saat saya berjalan-jalan, saya hanya membawa uang receh.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5468_jalan_jalan, 'こっちが散歩用のシューズで、こっちがランニング用のシューズなんです。', 'Ini sepatu jalanku dan ini sepatu lariku.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5469_pembubaran, '私達にとって、衆議院を解散するメリットとデメリットは何ですか？', 'Apa untung dan ruginya pembubaran DPR?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5469_pembubaran, 'みんな、応援ありがとう！今日でトーフグバンドは解散するけど、みんなとライブで作った思い出は一生大切にするから！', 'Terima kasih atas dukungannya, semuanya! Band Tofugu bubar hari ini, tapi aku akan selamanya menghargai kenangan yang kubuat bersama kalian di acara itu!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5469_pembubaran, 'トイレにこもっているうちに飲み会は解散しちまったぜ。', 'Pesta minum bubar saat Anda terjebak di kamar mandi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5470_bubuk, '粉チーズある？', 'Apakah Anda punya keju parmesan parut?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5470_bubuk, 'この粉を使うと、ケーキがふわっと仕上がります。', 'Jika menggunakan bedak ini, kuenya akan menjadi lembut dan mengembang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5470_bubuk, '粉をふるうときは、ダマができないように気をつけてください。', 'Hati-hati jangan sampai bubuk menggumpal saat diayak.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5470_bubuk, 'このパン、なんか粉っぽくて美味しくない。', 'Roti ini agak bertepung dan rasanya tidak enak.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5471_tepung_terigu, 'これは麦粉をこねて作ったものです。', 'Ini adalah sesuatu yang dibuat dengan menguleni tepung terigu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5471_tepung_terigu, '家にはもう、ほんの少しの麦粉しか残っていませんでした。', 'Di rumah, kami hanya mempunyai sedikit tepung terigu yang tersisa.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5471_tepung_terigu, 'メソポタミアでは、麦粉を水でねって平焼きパンにして食べていたそうです。', 'Di Mesopotamia, mereka biasa menguleni tepung terigu dengan air untuk membuat roti pipih untuk dimakan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5471_tepung_terigu, '今日久々に麦粉が入った袋を開けたら、緑色のクネクネした幼虫が大量発生していました。', 'Hari ini saya membuka sekantong tepung terigu untuk pertama kalinya setelah sekian lama dan menemukan segerombolan cacing hijau menggeliat di dalamnya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5472_demam_alergi_serbuk_bunga, '病院で花粉症の薬をもらいました。', 'Saya mendapat obat demam di kantor dokter.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5472_demam_alergi_serbuk_bunga, 'プロポリスが花粉症に効くって聞いたよ。', 'Saya mendengar bahwa propolis membantu mengatasi demam.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5472_demam_alergi_serbuk_bunga, '花粉症やばすぎて、もう春いらないかも。', 'Demam saya sangat parah sehingga saat ini saya mungkin bisa hidup tanpa musim semi selamanya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5472_demam_alergi_serbuk_bunga, '花粉症がつらすぎて、「生まれ変わったらコンクリートになりたい」と本気で思った。', 'Demamku sangat parah sehingga aku dengan serius berpikir, "Jika aku bereinkarnasi, aku ingin menjadi sepotong beton."');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5473_bubuk, 'これはクレヨンを粉状にしたものです。', 'Ini adalah krayon yang telah diubah menjadi bubuk.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5473_bubuk, '最後に、粉状にしたチョコレートを振りかけます。', 'Terakhir, taburkan coklat bubuk di atasnya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5473_bubuk, '白玉粉は、サラサラの粉状にすると空気と接触する部分が多くなって、品質が落ちやすいんですよ。', 'Shiratamako yang berbentuk bubuk halus memiliki lebih banyak area yang terpapar udara sehingga kualitasnya lebih mudah menurun.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5473_bubuk, '新鮮な鷹の爪があるので粉状の唐辛子にしたいなと思っているんですが、やり方がよく分かりません。', 'Saya punya cabai merah segar tapi saya ingin cabai bubuk dan saya tidak yakin bagaimana cara melakukannya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5475_pegunungan, 'この地域には美しい山脈が広がっています。', 'Daerah ini adalah rumah bagi barisan pegunungan yang indah.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5475_pegunungan, 'この山脈は多くの動植物の生息地となっています。', 'Pegunungan ini adalah rumah bagi banyak spesies hewan dan tumbuhan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5475_pegunungan, 'その山脈は、数百万年前に形成されたと考えられています。', 'Pegunungan tersebut diyakini terbentuk jutaan tahun lalu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5475_pegunungan, 'ヒマラヤ山脈は多種多様な自然に恵まれています。', 'Pegunungan Himalaya kaya akan keanekaragaman alam.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5477_sayuran, '野菜をたっぷり使ったスープを作りました。', 'Saya membuat sup penuh sayuran.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5477_sayuran, 'スーパーで見切り品の野菜を安く買えた。', 'Saya mendapat diskon sayuran di supermarket.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5477_sayuran, 'うちの子、「大きくなったら野菜になりたい」って言うんです。', 'Anak saya berkata, “Kalau saya besar nanti, saya ingin menjadi sayur.”');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5477_sayuran, 'どんなにお腹が苦しくても、野菜なら食べられます。', 'Tidak peduli seberapa kenyang saya, saya bisa makan sayur.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5478_pola_makan_vegetarian, ' 彼女は菜食主義者です。', 'Dia adalah seorang vegetarian.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5478_pola_makan_vegetarian, '夕食はできるだけ菜食するようにしています。', 'Saya mencoba melakukan diet nabati untuk makan malam sebanyak mungkin.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5478_pola_makan_vegetarian, '菜食生活、ちょっと憧れるかも。', 'Saya agak mengagumi gaya hidup vegetarian.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5478_pola_makan_vegetarian, '菜食の生活を続けてもう三年になりますが、時々無性に焼肉が食べたくなる時があります。', 'Saya sudah menjalani diet vegetarian selama tiga tahun, namun terkadang saya memiliki keinginan yang tak tertahankan untuk yakiniku.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5479_kargo, '貨物はトラックで運ばれた。', 'Kargo diangkut dengan truk.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5479_kargo, '貨物列車が駅を通過していった。', 'Sebuah kereta barang melewati stasiun.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5479_kargo, 'この貨物は明日、発送される予定です。', 'Kargo ini dijadwalkan akan dikirim besok.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5479_kargo, '毎日札幌貨物ターミナルと福岡貨物ターミナル間を走行する貨物列車があります。', 'Terdapat kereta barang yang beroperasi antara terminal kargo Sapporo dan terminal kargo Fukuoka setiap hari.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5480_mata_uang, '日本の通貨は円です。', 'Mata uang Jepang adalah yen.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5480_mata_uang, '私はこの通貨をよく知っています。', 'Saya cukup familiar dengan mata uang ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5480_mata_uang, '通貨のレートは毎日変わります。', 'Nilai mata uang berubah setiap hari.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5480_mata_uang, 'ヨーロッパの多くの国ではユーロが通貨として使われています。', 'Banyak negara-negara Eropa yang menggunakan Euro sebagai mata uangnya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5481_benua, 'ムー大陸って本当に実在したんですか？', 'Apakah benua Mu benar-benar ada?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5481_benua, 'ヨーロッパ大陸には、歴史的な建造物がたくさんあります。', 'Benua Eropa mempunyai banyak bangunan bersejarah.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5481_benua, '北アメリカ大陸の広さを感じるために、ドライブしてみようよ！', 'Mari kita berkendara merasakan luasnya benua Amerika Utara.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5481_benua, 'え、もう大陸を横断したの？それって本当に一日でできることなの？', 'Tunggu, kamu sudah melintasi benua? Bisakah itu dilakukan dalam satu hari?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5482_tentara_darat, 'その陸軍の記録に、なぜか私の名前が記されていたんです。', 'Entah kenapa, namaku tercantum dalam catatan militer itu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5482_tentara_darat, '陸軍の話になると、父は必ずだまって部屋を出る。', 'Setiap kali tentara disebutkan, ayahku diam-diam meninggalkan ruangan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5482_tentara_darat, '私達は陸軍訓練を見に来たただの見学です。', 'Kami di sini hanya untuk mengamati pelatihan tentara.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5482_tentara_darat, 'おじいちゃん、陸軍にいたらしいんだけど、どこの部隊かは絶対に教えてくれないんだよね。	', 'Kakek saya mengatakan dia pernah menjadi tentara, tetapi tidak pernah memberi tahu saya unit mana.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5483_menyerupai, 'このズボン、私がずっと探してたズボンに似てる。', 'Celana ini sepertinya yang sudah lama saya cari.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5483_menyerupai, '長く付き合うカップルは顔が似てくることが多い。', 'Pasangan yang sudah lama bersama seringkali terlihat mirip.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5483_menyerupai, '最初はお母さんに似ていると思っていたけど、だんだんお父さんにも似てきたね！', 'Awalnya kupikir dia mirip ibunya, tapi kemudian dia mulai mirip ayahnya juga!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5483_menyerupai, 'たまたまここまで似るのは流石になくない？パクリって言われてもしょうがない気がする。', 'Bukankah tidak mungkin kalau mereka terlihat mirip secara kebetulan? Saya pikir wajar jika orang-orang menyebutnya sebagai penipuan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5485_rata_rata, 'そのレストランの食事の平均価格は1500円です。', 'Harga rata-rata makan di restoran itu adalah 1.500 yen.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5485_rata_rata, '2014年のセンター試験の平均点が出ました。', 'Nilai rata-rata untuk Tes Pusat Nasional untuk Penerimaan Universitas tahun 2014 terungkap.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5485_rata_rata, 'そのカフェ、コーヒーは平均的だったけど、店員さんがすごくフレンドリーだったよ。', 'Kopi di kafe rata-rata, tetapi stafnya sangat ramah.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5485_rata_rata, '日本の平均身長は、男性が約170cm、女性が約157cmです。', 'Rata-rata tinggi badan di Jepang adalah sekitar 170 cm untuk pria dan 157 cm untuk wanita.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5486_persamaan, '大きさがなるべく均等になるように切ってください。', 'Harap dipotong agar ukurannya sama rata.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5486_persamaan, 'ブルドーザーを使って、土を均等に平らにするのが私の仕事です。', 'Tugas saya menggunakan buldoser untuk meratakan tanah.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5486_persamaan, 'キャリアを積む機会は、男女に均等に与えられるべきです。', 'Kesempatan berkarir harus diberikan secara setara kepada laki-laki dan perempuan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5486_persamaan, 'それから、兄弟姉妹の相続分は原則として均等に分けます。', 'Selanjutnya pembagian warisan diantara saudara kandung dibagi rata sebagai aturan umum.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5487_simetri, '彼女はとても均整のとれた体形をしている。', 'Dia memiliki tubuh yang sangat proporsional.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5487_simetri, '均整のとれた美しい建築に思わずためいきが出た。', 'Saya hanya bisa menghela nafas melihat arsitektur indah yang seimbang dan simetris.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5487_simetri, 'ジャニーズのアイドルって、均整のとれた王子様っぽい子が多いよね。', 'Idola Johnny sering kali memiliki penampilan seperti pangeran dan seimbang, bukan?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5487_simetri, 'ショパンのポロネーズ第11番ト短調って、7才の時に作曲した作品なのに実に均整がとれている作品ですよね。', 'Polonaise No. 11 dalam G minor karya Chopin, meskipun dibuat ketika ia berusia tujuh tahun, benar-benar sebuah karya yang seimbang, bukan?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5488_kuburan, 'うちの家のお墓は岡山県にあります。', 'Kuburan keluarga kami berada di Prefektur Okayama.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5488_kuburan, '金曜日に両親と墓参りに行ってきました。', 'Saya pergi mengunjungi makam keluarga bersama orang tua saya pada hari Jumat.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5488_kuburan, 'お墓参りでは、まず最初に墓の掃除をします。', 'Saat berziarah ke makam keluarga, hal pertama yang kita lakukan adalah membersihkannya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5488_kuburan, '僕たちの墓を太平洋に浮かぶ小さな島に作ることを、いつも夢見てきたんだよ。', 'Saya selalu bermimpi untuk menempatkan kuburan kami di sebuah pulau kecil di Pasifik.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5489_pemakaman, '墓地に入るとき、なんとなく息を止めてしまうんです。', 'Saat memasuki kuburan, saya menahan nafas tanpa berpikir.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5489_pemakaman, '墓地の入口に「いらっしゃいませ」って看板があったんだけど…。', 'Ada tanda bertuliskan "Selamat datang!" di pintu masuk kuburan…');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5489_pemakaman, 'おばあちゃんと一緒に墓地を歩いたら、知り合いばっかだった。', 'Saya berjalan melewati kuburan bersama Nenek — dia kenal semua orang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5489_pemakaman, 'うちの庭は墓地に隣接している。', 'Taman kami bersebelahan dengan kuburan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5490_gunung_fuji, '日本一高い山は富士山です。', 'Gunung tertinggi di Jepang adalah Gunung Fuji.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5490_gunung_fuji, '富士山に登るって言ったら、ママが弁当を作ってくれた。', 'Saat aku bilang aku akan mendaki Gunung Fuji, Ibu membuatkanku bento.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5490_gunung_fuji, 'おばあちゃんが、若いころはよく富士山でヨガしてたって言ってたけど、本当かな？', 'Nenek bilang dia selalu melakukan yoga di Gunung Fuji ketika dia masih muda, benarkah?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5490_gunung_fuji, '富士山の下山中に見た看板、「ようこそ」って書いてあった。登りのときはなかったのに…。何故！？', 'Dalam perjalanan turun dari Gunung Fuji, saya melihat tanda bertuliskan "Selamat Datang". Itu tidak ada di sana saat aku naik... Kenapa!?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5491_menjadi_kaya, 'このサイトの魅力は、バラエティに富むコンテンツだ。', 'Daya tarik situs ini terletak pada beragam kontennya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5491_menjadi_kaya, 'あの起業家は、知性だけでなく社交性にも富んでいる。', 'Pengusaha itu tidak hanya berbakat secara intelektual tetapi juga mahir secara sosial.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5491_menjadi_kaya, '変化に富んだ環境でも、フレキシブルに仕事ができる人材を探しています。', 'Kami mencari individu yang dapat bekerja secara fleksibel bahkan dalam lingkungan yang sangat dinamis.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5492_kekayaan, '昔は名声も富も得たいと思っていましたが、今得たいのは富だけですね。', 'Di masa lalu, saya ingin mendapatkan ketenaran dan kekayaan, tetapi sekarang yang ingin saya peroleh hanyalah kekayaan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5492_kekayaan, '富をもたらすのは、お金だけじゃないよ。真の富は、心が豊かになることで感じるものだからね。', 'Bukan hanya uang yang mendatangkan kekayaan. Kekayaan yang hakiki adalah sesuatu yang dirasakan ketika hati menjadi kaya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5492_kekayaan, '巨万の富を築くことは思ったより簡単ではありません。', 'Menghasilkan kekayaan jutaan tidak semudah yang saya kira.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5492_kekayaan, '世界の富の９割は、実はクラビゲーター教団を構成する少数の権力者たちが持っていると言われている。', 'Mereka mengatakan bahwa 90% kekayaan dunia sebenarnya dimiliki oleh sekelompok kecil orang berkuasa yang tergabung dalam Cult of the Crabigator.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5493_kaya, 'モルディブは富裕層の間で人気の高いリゾート地です。', 'Maladewa adalah tujuan resor yang sangat populer di kalangan kelas kaya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5493_kaya, '富裕な家庭出身のあなたには分からないでしょうね。', 'Berasal dari keluarga kaya, Anda tidak akan mengerti.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5493_kaya, 'ワニカニには少数の富裕者だけがアクセスできるエリートクラブ的なコンテンツがあると聞いたのですが、本当ですか？', 'Saya mendengar bahwa WaniKani memiliki konten seperti klub elit yang hanya dapat diakses oleh sejumlah kecil orang kaya. Apakah itu benar?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5493_kaya, 'どうして人は富裕層と貧困層に分けられるのでしょうか。', 'Mengapa kita memisahkan orang menjadi kaya dan miskin?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5494_moral, '学校では道徳の授業があります。', 'Ada kelas pendidikan moral di sekolah.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5494_moral, 'その映画は、子供たちに道徳の大切さを教えました。', 'Film ini mengajarkan anak-anak pentingnya moralitas.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5494_moral, '大人になると、道徳について考える機会は少なくなるかもしれない。', 'Seiring bertambahnya usia, kita mungkin mempunyai lebih sedikit kesempatan untuk berpikir tentang moralitas.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5494_moral, 'どうして動物には道徳感がないって断言できるの？', 'Mengapa Anda begitu yakin bahwa hewan tidak mempunyai moralitas?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5495_tokugawa, '徳川家康って誰？', 'Siapa Tokugawa Ieyasu?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5495_tokugawa, 'うちの犬、徳川家っぽい顔してると思わない？', 'Bukankah anjingku terlihat seperti anggota keluarga Tokugawa?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5495_tokugawa, '徳川の時代にもどりたいって言ったら、ママにスマホ取り上げられた。', 'Saat aku bilang aku ingin kembali ke era Tokugawa, Ibu mengambil ponsel pintarku.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5495_tokugawa, '彼女は歴女で、徳川幕府にはとても精通しています。', 'Dia seorang ahli sejarah, dan dia sangat berpengetahuan tentang Keshogunan Tokugawa.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5496_prefektur_tokushima, '徳島県にはまだ行ったことがないけど、いつか行ってみたいんだよね。', 'Saya belum pernah ke Tokushima, tapi saya ingin mengunjunginya suatu hari nanti.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5496_prefektur_tokushima, '徳島県の観光パンフレットを駅でもらいました。 ', 'Saya mengambil pamflet pariwisata Tokushima di stasiun.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5496_prefektur_tokushima, '徳島県、思ったより都会でびっくりした。', 'Saya terkejut karena Tokushima ternyata lebih urban dari yang saya perkirakan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5496_prefektur_tokushima, '知事は、徳島県をどういう風に変えていくおつもりですか？私は今のままがいいと思うのですが。', 'Gubernur, dengan cara apa Anda ingin mengubah Prefektur Tokushima? Menurutku, aku menyukai hal-hal apa adanya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5497_yang_harus_diperhatikan, 'コンタクト、探すの手伝うよ！', 'Saya akan membantu Anda mencari lensa kontak Anda!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5497_yang_harus_diperhatikan, 'ネットで安いホテルを探してみた。', 'Saya mencari hotel murah di internet.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5497_yang_harus_diperhatikan, '10分探したリモコン、トースターの中にあった。', 'Saya mencari remote selama sepuluh menit. Itu ada di pemanggang roti.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5497_yang_harus_diperhatikan, '三本足の犬がバーにやって来てこう言った。「俺の足を撃った男を探しているんだ。半分河豚で半分豆腐みたいな男なんだが。」', 'Seekor anjing berkaki tiga masuk ke dalam bar dan berkata, "Saya sedang mencari orang yang menembak kaki saya. Dia tampak seperti setengah fugu dan setengah tahu."');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5498_penyelidikan_akademik, '探究心を持ち続けることが、成長のカギです。', 'Terus memiliki pikiran yang ingin tahu adalah kunci pertumbuhan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5498_penyelidikan_akademik, 'どうすれば効率よく漢字やボキャブラリーが習得できるのかを探究して出来上がったのがワニカニです。', 'WaniKani diciptakan melalui penelitian bagaimana mempelajari kanji dan kosa kata secara efisien.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5498_penyelidikan_akademik, '探究を通じてのみ、私たちは新しい可能性と視点を発見することができるんです。', 'Hanya melalui penyelidikan kita dapat menemukan kemungkinan dan perspektif baru.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5498_penyelidikan_akademik, '本書は私の宗教の探究、すなわち真理の探究の記録である。', 'Buku ini mendokumentasikan penelitian saya terhadap agama, yaitu catatan pencarian kebenaran.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5499_detektif_swasta, '探偵ドラマの見すぎじゃない？', 'Mungkin Anda terlalu sering menonton drama detektif?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5499_detektif_swasta, '彼女は結局探偵になりました。', 'Dia akhirnya menjadi detektif swasta.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5499_detektif_swasta, 'おじいちゃんが「オレは昔、探偵だった」って言ってるんだけど、本当かなぁ？', 'Kakek saya berkata, "Saya dulu seorang detektif," tapi saya bertanya-tanya apakah itu benar.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5499_detektif_swasta, 'うちの犬、探偵ごっこが大好きなんです。ずっとクツをクンクンかいじゃって、かわいいですよね。', 'Anjing kami suka bermain detektif. Dia selalu mengendus sepatu. Lucu sekali, bukan?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5500_investigasi_rahasia, '警察はどんな時に内偵捜査をするのですか。', 'Kapan polisi melakukan penyelidikan internal rahasia?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5500_investigasi_rahasia, 'あのレストラン、税務署の内偵調査が入ったらしいよ。', 'Saya mendengar restoran itu diam-diam diselidiki oleh kantor pajak.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5500_investigasi_rahasia, '探偵事務所に夫の浮気の内偵調査をお願いしました。', 'Saya meminta agen detektif untuk menyelidiki perselingkuhan suami saya secara diam-diam.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5500_investigasi_rahasia, '京都府警が内偵を開始したらしいよ。', 'Saya mendengar Polisi Prefektur Kyoto telah memulai penyelidikan rahasia.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5512_untuk_menikah, '二人は去年結婚しました。', 'Keduanya menikah tahun lalu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5512_untuk_menikah, '俺、彼女と結婚するつもりなんだ。', 'Saya berniat menikahinya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5512_untuk_menikah, '結婚するなら、ちゃんと色々と考えた方がいいよ。', 'Jika Anda akan menikah, ada banyak hal yang harus Anda pikirkan terlebih dahulu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5512_untuk_menikah, 'お前、もう元カノについて考えるのはよした方がいいぞ。特に、サーモンのお父さんに彼女と結婚していいかどうか聞いて、許しも得ちまったんだからな。', 'Kamu harus berhenti memikirkan mantan pacarmu, kawan — terutama karena kamu sudah bertanya kepada ayah Salmon apakah kamu boleh menikahinya dan mendapatkan izinnya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5702_takut, '失敗を恐れてばかりいては前に進めないよ。', 'Anda tidak bisa maju jika Anda selalu takut gagal.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5702_takut, '目が見えなくなること以外は、何も恐れることはないよ。', 'Saya tidak takut pada apa pun kecuali menjadi buta.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5702_takut, '私たちは変化を恐れずに、どんどん新しいことにチャレンジしていくべきです。', 'Kita tidak boleh takut terhadap perubahan dan harus terus menantang diri kita dengan hal-hal baru.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5702_takut, 'コウイチは自分の力を恐れているんですよ。', 'Koichi takut akan kekuatannya sendiri.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5703_untuk_memimpin_seseorang_tersesat, 'ごめん、迷わすつもりじゃなかったんだけど…。', 'Maaf, aku tidak bermaksud menyesatkanmu…');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5703_untuk_memimpin_seseorang_tersesat, '相手を迷わすような発言はしないようにすべきだ。', 'Anda harus menghindari mengatakan hal-hal yang menyesatkan orang lain.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5703_untuk_memimpin_seseorang_tersesat, '人々を迷わすために、あえて間違った看板が立てられているんだよ。', 'Mereka sengaja memasang tanda-tanda palsu untuk menyesatkan orang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5703_untuk_memimpin_seseorang_tersesat, 'もし俺の娘を路頭に迷わすようなことがあったら、一生許さないぞ。', 'Jika kamu menyesatkan putriku, aku tidak akan pernah memaafkanmu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5704_untuk_menumpuk_sesuatu, '荷物を積むのに少し時間がかかるから、そこで待ってて！', 'Butuh sedikit waktu untuk memuat bagasi, jadi tunggu di sana!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5704_untuk_menumpuk_sesuatu, 'アイツは地道にコツコツ経験を積んで、今の地位を手に入れたんだよ。', 'Dia terus dan rajin mengumpulkan pengalaman dan mendapatkan posisinya saat ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5704_untuk_menumpuk_sesuatu, 'それじゃあ2人組を作って、トラックに七面鳥を積み始めて下さい。', 'Sekarang silakan ambil rekan dan mulai memuat truk dengan kalkun.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5704_untuk_menumpuk_sesuatu, '彼の積ん読リストには、たくさんの本が積まれていた。', 'Daftar "yang harus dibaca" miliknya memiliki banyak buku yang bertumpuk.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5705_menjadi_tuan_rumah, 'このイベントは市が主催するものです。', 'Acara ini diselenggarakan oleh kota.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5705_menjadi_tuan_rumah, 'うちの学校で土曜日にカラオケパーティーを主催するんだけど、よかったら来ない？', 'Sekolah kami mengadakan pesta karaoke hari Sabtu ini. Apakah Anda ingin bergabung dengan kami?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5705_menjadi_tuan_rumah, 'ワニカニが漢字合宿を主催したら、参加してくれるユーザーさんはどれくらいいると思いますか？', 'Menurut Anda, berapa banyak pengguna yang akan bergabung jika WaniKani mengadakan kamp pelatihan kanji?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5705_menjadi_tuan_rumah, '近所のおばあちゃんたちがビンゴ大会を主催してくれたんだけど、一位の景品は金の入れ歯でした。', 'Beberapa wanita lanjut usia di lingkungan sekitar mengadakan turnamen bingo, dan hadiah pertama adalah gigi palsu emas.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5706_untuk_mendesak, 'バナナを催促するゴリラの顔が忘れられない。', 'Saya tidak bisa melupakan wajah gorila yang meminta pisang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5706_untuk_mendesak, '妹にLINEの返事を催促したら、スタンプだけ返ってきた。', 'Aku menekan adikku untuk membalas di LINE, dan dia baru saja mengirimkan stiker.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5706_untuk_mendesak, '彼女にプロポーズを催促された。まだ心の準備が…', 'Pacar saya mendorong saya untuk melamar… Saya belum siap.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5706_untuk_mendesak, '催促するようで申し訳ありませんが、東京タワーの写真を何枚か撮って月曜日までに送ってもらえませんでしょうか。', 'Saya minta maaf karena terlalu menuntut, tapi bisakah Anda mengambil beberapa gambar Menara Tokyo dan mengirimkannya kepada saya paling lambat hari Senin? Terima kasih.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7605_berapa_kali, '彼は、幾度失敗しても、諦めなかった。', 'Meski berkali-kali gagal, ia tidak menyerah.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7605_berapa_kali, '幾度も幾度も人類は同じ間違いをくり返してきた。', 'Berkali-kali umat manusia mengulangi kesalahan yang sama.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7605_berapa_kali, 'その時の君のか細い笑顔を幾度となく思い出しては、僕は存在というもののはかなさと美しさについて、深く考える。', 'Aku terus mengingat senyum rapuhmu sejak saat itu, dan aku merenungkan secara mendalam sifat indah dan singkat dari keberadaan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7605_berapa_kali, '幾度となく同じ道を歩んできたように思える。そして、その道は、いつも遠くのどこか、しかしこれもまた同じ風景へと続いていた。', 'Rasanya seperti saya telah menempuh jalan yang sama berkali-kali. Dan jalan itu sepertinya selalu mengarah ke suatu tempat yang jauh, namun terus menuju ke lanskap yang sama.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7660_mungkin, 'それは恐らく本当のことだと思います。', 'Saya pikir itu mungkin benar.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7660_mungkin, '彼は恐らくそのニュースを知っているはずです。', 'Dia mungkin tahu tentang berita itu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7660_mungkin, '恐らくこれが最後のチャンスでしょう。', 'Ini mungkin kesempatan terakhir.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7660_mungkin, '犯人は恐らくこの辺りにひそんでいるのでしょう。', 'Penjahatnya mungkin bersembunyi di area ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7720_takut, '彼女は人前で話すことに対して強い恐れを感じています。', 'Dia merasakan ketakutan yang kuat untuk berbicara di depan orang lain.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7720_takut, '恐れを感じることは自然なことですが、それに支配されてはいけません。', 'Merasa takut adalah hal yang wajar, namun Anda tidak boleh dikendalikan olehnya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7720_takut, '彼の恐れは、最終的に彼を動かす力となった。', 'Ketakutannya akhirnya menjadi pendorong baginya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7720_takut, '大きな地震が続くと、長期にわたる停電の恐れが高まります。', 'Jika gempa besar terus terjadi, risiko pemadaman listrik berkepanjangan akan meningkat.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7774_pengawal, '私の用心棒をしてくれない？', 'Maukah kamu bekerja sebagai pengawalku?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7774_pengawal, '彼は用心棒として働いている。', 'Dia bekerja sebagai pengawal.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7774_pengawal, '用心棒がいるから、安心して歩ける。', 'Saya bisa berjalan dengan aman karena ada pengawal.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7774_pengawal, '彼女の用心棒は、いつも彼女の後ろにぴったりくっついている。', 'Pengawalnya selalu tepat di belakangnya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8686_rangkaian_bunga, '華道は日本の伝統文化です。', 'Rangkaian bunga adalah bagian dari budaya tradisional Jepang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8686_rangkaian_bunga, '華道教室に通い始めました。', 'Saya mulai menghadiri kelas merangkai bunga Jepang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8686_rangkaian_bunga, '私は小さいころからずっと華道を習っています。', 'Saya telah belajar merangkai bunga Jepang sejak saya masih kecil.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8686_rangkaian_bunga, '華道の先生が、私の作品を見つめながら「花は正直だから」とつぶやいた。', 'Guru kadō menatap pekerjaanku dan bergumam, "Bunga tidak berbohong."');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8718_perut, 'ストレスで、胃がキリキリします。', 'Perutku sakit karena stres.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8718_perut, '人生で初めて胃カメラを飲んだ。', 'Untuk pertama kalinya dalam hidup saya, saya menjalani gastroskopi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8718_perut, 'あの胃が弱い設定のキャラクター、何て名前だっけ？', 'Siapa nama tokoh yang perutnya lemah?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8718_perut, 'ケーキとベーコンの食べ過ぎで胃がもたれています。', 'Saya makan terlalu banyak kue dan bacon dan saya mengalami gangguan pencernaan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8722_mencolok, '華美なドレスはひかえた方がいいんじゃないですか。', 'Bukankah sebaiknya Anda menahan diri untuk tidak mengenakan gaun yang mencolok?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8722_mencolok, '華美なデザインなのに、落ち着いた印象もあるとてもいい作品だね。', 'Karyanya sangat bagus, dengan desain yang mewah, namun juga meninggalkan kesan tenang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8722_mencolok, '華美なシャンデリアの真下に、ジャガイモが１つだけポツンと落ちていた。', 'Di bawah lampu gantung yang mewah, ada sebatang kentang tergeletak sendirian.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8722_mencolok, '中古車がよく売れる地域としても有名で、華美な生活を好まないことで知られている県は何県でしょう？', 'Prefektur manakah yang dikenal sebagai pasar yang bagus untuk mobil bekas dan terkenal karena tidak menyukai gaya hidup mewah?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8935_untuk_diperpanjang, '工事のせいでいつものランニングのコースが延びた。', 'Karena pekerjaan konstruksi, rute lari saya yang biasa diperpanjang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8935_untuk_diperpanjang, '東京オリンピックは翌年に延びたがキャンセルになるかもしれない。', 'Olimpiade Tokyo ditunda ke tahun berikutnya, tetapi mungkin saja dibatalkan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8935_untuk_diperpanjang, '上司のせいで会議が延びるのが嫌いです。', 'Saya benci kalau rapat diperpanjang karena bos saya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9046_negara_kita, '我が国の政治家の多くは男性だ。', 'Sebagian besar politisi di negara kita adalah laki-laki.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9046_negara_kita, '我が国では、国民のワクチン接種の義務化が検討されています。', 'Di negara kita, vaksinasi wajib terhadap penduduk sedang dipertimbangkan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9046_negara_kita, '現在、在留資格のない外国人は、我が国への入国が認められておりません。', 'Saat ini, orang asing tanpa status penduduk tidak diperbolehkan masuk ke negara kita.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9063_pria, '猫の雄に左利きが多いって本当ですか？', 'Benarkah kucing jantan banyak yang kidal?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9063_pria, '生まれた子犬、みんな雄だったみたい！', 'Ternyata semua anak anjing yang lahir berjenis kelamin jantan!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9063_pria, 'タイワンリスの雄は、カエルのような鳴き声を出して求愛します。', 'Tupai jantan berpunggung emas merayu dengan mengeluarkan suara serak seperti katak.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9076_melimpah, '新しい社員には豊富な経験があります。', 'Karyawan baru tersebut mempunyai banyak pengalaman.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9076_melimpah, '人参にはベータカロテンが豊富に含まれている。', 'Wortel adalah sumber yang kaya beta-karoten.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9076_melimpah, 'この店は品ぞろえが豊富です。', 'Toko ini memiliki banyak pilihan barang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9366_untuk_menghemat, 'このお金は、未来の自分のために貯めるの。', 'Aku menabung uang ini untuk diriku di masa depan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9366_untuk_menghemat, 'えっ、ハネムーン旅行のためにマイルを貯めてるんですか？', 'Oh, Anda menghemat mil untuk perjalanan bulan madu Anda?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9366_untuk_menghemat, '日本人って本当にポイント貯めるのが好きだよね。', 'Orang Jepang sangat suka mengumpulkan poin reward, bukan?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9482_kota, '街の中心には大きな広場がある。', 'Ada sebuah alun-alun besar di tengah kota.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9482_kota, 'この街の雰囲気が好きなんです。', 'Saya suka suasana kota ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9482_kota, '街ぐるみでハロウィンイベントを開催しました。', 'Seluruh kota berkumpul untuk mengadakan acara Halloween.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9482_kota, '久しぶりに街に出た。街が、ちょっと待ってくれていた気がした。', 'Saya pergi ke pusat kota untuk pertama kalinya setelah sekian lama. Rasanya seperti kota telah menungguku.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9482_kota, '夜の街を歩きながら、彼はそこに生きる人たちのことを考えていた。', 'Berjalan melalui jalan-jalan kota pada malam hari, dia memikirkan semua orang yang tinggal di sana.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9483_pemandangan_kota, '高台から街並みを見ると、とても美しいですよ。', 'Pemandangan kota terlihat indah dari atas bukit.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9483_pemandangan_kota, 'ヨーロッパの街並みを見て感動しました。', 'Saya terkesan dengan pemandangan jalanan di Eropa.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9483_pemandangan_kota, '緑の多い街並みはとても落ち着きます。', 'Pemandangan kota yang kaya dengan tanaman hijau memang sangat menenangkan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9498_lega, '政府は救済策を発表した。', 'Pemerintah mengumumkan langkah-langkah bantuan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9498_lega, '被害者への救済が急がれます。', 'Bantuan untuk para korban sangat dibutuhkan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9498_lega, 'この制度は弱者の救済を目的としています。', 'Sistem ini bertujuan untuk memberikan bantuan kepada kelompok rentan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9498_lega, '銀行を救済する前に、経済的に困っている人への救済が必要ではないですか？', 'Bukankah kita seharusnya memberikan bantuan kepada orang-orang yang mengalami kesulitan keuangan sebelum menyelamatkan bank?');

  -- 4. PREREQUISITES
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1096_menghalangi, id FROM items WHERE type = 'radical' AND (slug = '19' OR id = '19') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1096_menghalangi, id FROM items WHERE type = 'radical' AND (slug = '66' OR id = '66') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1316_perut, id FROM items WHERE type = 'radical' AND (slug = '51' OR id = '51') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1316_perut, id FROM items WHERE type = 'radical' AND (slug = '43' OR id = '43') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_1443_melepaskan, r_337_roket);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1443_melepaskan, id FROM items WHERE type = 'radical' AND (slug = '240' OR id = '240') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_1444_larut, r_336_menggertak);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1444_larut, id FROM items WHERE type = 'radical' AND (slug = '89' OR id = '89') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1445_merajut, id FROM items WHERE type = 'radical' AND (slug = '86' OR id = '86') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_1445_merajut, r_338_perpustakaan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1446_menyolok, id FROM items WHERE type = 'radical' AND (slug = '90' OR id = '90') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1446_menyolok, id FROM items WHERE type = 'radical' AND (slug = '51' OR id = '51') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1446_menyolok, id FROM items WHERE type = 'radical' AND (slug = '15' OR id = '15') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1447_sebelumnya, id FROM items WHERE type = 'radical' AND (slug = '196' OR id = '196') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_1447_sebelumnya, r_333_taring);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_1448_normal, r_334_berbaris);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1448_normal, id FROM items WHERE type = 'radical' AND (slug = '22' OR id = '22') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1449_luar_biasa, id FROM items WHERE type = 'radical' AND (slug = '8' OR id = '8') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1449_luar_biasa, id FROM items WHERE type = 'radical' AND (slug = '16' OR id = '16') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1449_luar_biasa, id FROM items WHERE type = 'radical' AND (slug = '76' OR id = '76') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1449_luar_biasa, id FROM items WHERE type = 'radical' AND (slug = '233' OR id = '233') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1450_model, id FROM items WHERE type = 'radical' AND (slug = '118' OR id = '118') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1450_model, id FROM items WHERE type = 'radical' AND (slug = '328' OR id = '328') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1451_mengecualikan, id FROM items WHERE type = 'radical' AND (slug = '176' OR id = '176') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1451_mengecualikan, id FROM items WHERE type = 'radical' AND (slug = '313' OR id = '313') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1452_menanyakan, id FROM items WHERE type = 'radical' AND (slug = '105' OR id = '105') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1452_menanyakan, id FROM items WHERE type = 'radical' AND (slug = '25' OR id = '25') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1452_menanyakan, id FROM items WHERE type = 'radical' AND (slug = '16' OR id = '16') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1452_menanyakan, id FROM items WHERE type = 'radical' AND (slug = '74' OR id = '74') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1453_berapa_banyak, id FROM items WHERE type = 'radical' AND (slug = '87' OR id = '87') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1453_berapa_banyak, id FROM items WHERE type = 'radical' AND (slug = '194' OR id = '194') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1453_berapa_banyak, id FROM items WHERE type = 'radical' AND (slug = '9' OR id = '9') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1454_koridor, id FROM items WHERE type = 'radical' AND (slug = '62' OR id = '62') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_1454_koridor, r_8829_pria);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1455_menyapu, id FROM items WHERE type = 'radical' AND (slug = '63' OR id = '63') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1455_menyapu, id FROM items WHERE type = 'radical' AND (slug = '9391' OR id = '9391') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1456_lumpur, id FROM items WHERE type = 'radical' AND (slug = '103' OR id = '103') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1456_lumpur, id FROM items WHERE type = 'radical' AND (slug = '37' OR id = '37') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1456_lumpur, id FROM items WHERE type = 'radical' AND (slug = '57' OR id = '57') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1457_tiang, id FROM items WHERE type = 'radical' AND (slug = '23' OR id = '23') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1457_tiang, id FROM items WHERE type = 'radical' AND (slug = '8779' OR id = '8779') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1457_tiang, id FROM items WHERE type = 'radical' AND (slug = '61' OR id = '61') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1458_terkejut, id FROM items WHERE type = 'radical' AND (slug = '255' OR id = '255') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1458_terkejut, id FROM items WHERE type = 'radical' AND (slug = '60' OR id = '60') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1458_terkejut, id FROM items WHERE type = 'radical' AND (slug = '165' OR id = '165') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1459_mendesah, id FROM items WHERE type = 'radical' AND (slug = '16' OR id = '16') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1459_mendesah, id FROM items WHERE type = 'radical' AND (slug = '8774' OR id = '8774') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1460_gudang, id FROM items WHERE type = 'radical' AND (slug = '8827' OR id = '8827') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1461_cucu, id FROM items WHERE type = 'radical' AND (slug = '34' OR id = '34') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1461_cucu, id FROM items WHERE type = 'radical' AND (slug = '329' OR id = '329') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1462_sarang, id FROM items WHERE type = 'radical' AND (slug = '8783' OR id = '8783') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1462_sarang, id FROM items WHERE type = 'radical' AND (slug = '235' OR id = '235') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1463_sabuk, id FROM items WHERE type = 'radical' AND (slug = '20' OR id = '20') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1463_sabuk, id FROM items WHERE type = 'radical' AND (slug = '1' OR id = '1') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1463_sabuk, id FROM items WHERE type = 'radical' AND (slug = '76' OR id = '76') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1463_sabuk, id FROM items WHERE type = 'radical' AND (slug = '102' OR id = '102') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1464_diameter, id FROM items WHERE type = 'radical' AND (slug = '99' OR id = '99') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1464_diameter, id FROM items WHERE type = 'radical' AND (slug = '179' OR id = '179') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1465_menyelamatkan, id FROM items WHERE type = 'radical' AND (slug = '399' OR id = '399') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1465_menyelamatkan, id FROM items WHERE type = 'radical' AND (slug = '60' OR id = '60') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1466_menyebarkan, id FROM items WHERE type = 'radical' AND (slug = '8775' OR id = '8775') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1466_menyebarkan, id FROM items WHERE type = 'radical' AND (slug = '43' OR id = '43') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1466_menyebarkan, id FROM items WHERE type = 'radical' AND (slug = '60' OR id = '60') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1467_bubuk, id FROM items WHERE type = 'radical' AND (slug = '98' OR id = '98') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1467_bubuk, id FROM items WHERE type = 'radical' AND (slug = '247' OR id = '247') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1468_pembuluh_darah, id FROM items WHERE type = 'radical' AND (slug = '43' OR id = '43') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1468_pembuluh_darah, id FROM items WHERE type = 'radical' AND (slug = '116' OR id = '116') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1468_pembuluh_darah, id FROM items WHERE type = 'radical' AND (slug = '8778' OR id = '8778') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1469_sayuran, id FROM items WHERE type = 'radical' AND (slug = '90' OR id = '90') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1469_sayuran, id FROM items WHERE type = 'radical' AND (slug = '8772' OR id = '8772') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1469_sayuran, id FROM items WHERE type = 'radical' AND (slug = '23' OR id = '23') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1470_kargo, id FROM items WHERE type = 'radical' AND (slug = '311' OR id = '311') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1470_kargo, id FROM items WHERE type = 'radical' AND (slug = '94' OR id = '94') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1471_tanah, id FROM items WHERE type = 'radical' AND (slug = '176' OR id = '176') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1471_tanah, id FROM items WHERE type = 'radical' AND (slug = '222' OR id = '222') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1472_mirip, id FROM items WHERE type = 'radical' AND (slug = '75' OR id = '75') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1472_mirip, id FROM items WHERE type = 'radical' AND (slug = '56' OR id = '56') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1472_mirip, id FROM items WHERE type = 'radical' AND (slug = '3' OR id = '3') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1472_mirip, id FROM items WHERE type = 'radical' AND (slug = '9' OR id = '9') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1473_setara, id FROM items WHERE type = 'radical' AND (slug = '17' OR id = '17') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1473_setara, id FROM items WHERE type = 'radical' AND (slug = '236' OR id = '236') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1473_setara, id FROM items WHERE type = 'radical' AND (slug = '3' OR id = '3') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1474_kuburan, id FROM items WHERE type = 'radical' AND (slug = '17' OR id = '17') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1474_kuburan, id FROM items WHERE type = 'radical' AND (slug = '356' OR id = '356') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1475_kaya, id FROM items WHERE type = 'radical' AND (slug = '78' OR id = '78') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1475_kaya, id FROM items WHERE type = 'radical' AND (slug = '8824' OR id = '8824') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1476_kebajikan, id FROM items WHERE type = 'radical' AND (slug = '99' OR id = '99') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1476_kebajikan, id FROM items WHERE type = 'radical' AND (slug = '15' OR id = '15') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1476_kebajikan, id FROM items WHERE type = 'radical' AND (slug = '163' OR id = '163') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1476_kebajikan, id FROM items WHERE type = 'radical' AND (slug = '65' OR id = '65') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1477_mencari, id FROM items WHERE type = 'radical' AND (slug = '63' OR id = '63') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1477_mencari, id FROM items WHERE type = 'radical' AND (slug = '76' OR id = '76') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1477_mencari, id FROM items WHERE type = 'radical' AND (slug = '28' OR id = '28') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1477_mencari, id FROM items WHERE type = 'radical' AND (slug = '23' OR id = '23') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1478_mengintai, id FROM items WHERE type = 'radical' AND (slug = '75' OR id = '75') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1478_mengintai, id FROM items WHERE type = 'radical' AND (slug = '10' OR id = '10') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1478_mengintai, id FROM items WHERE type = 'radical' AND (slug = '94' OR id = '94') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4276_halangan, k_1096_menghalangi);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4276_halangan, id FROM items WHERE type = 'kanji' AND (slug = '1093' OR id = '1093') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5073_sakit_perut, k_1316_perut);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5073_sakit_perut, id FROM items WHERE type = 'kanji' AND (slug = '1318' OR id = '1318') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5319_fotografi_rahasia, id FROM items WHERE type = 'kanji' AND (slug = '1442' OR id = '1442') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5319_fotografi_rahasia, id FROM items WHERE type = 'kanji' AND (slug = '1441' OR id = '1441') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5337_untuk_menerangi, id FROM items WHERE type = 'kanji' AND (slug = '1419' OR id = '1419') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5398_tiket_pesawat, id FROM items WHERE type = 'kanji' AND (slug = '1397' OR id = '1397') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5398_tiket_pesawat, id FROM items WHERE type = 'kanji' AND (slug = '601' OR id = '601') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5398_tiket_pesawat, id FROM items WHERE type = 'kanji' AND (slug = '1361' OR id = '1361') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5402_hidung_tersumbat, id FROM items WHERE type = 'kanji' AND (slug = '998' OR id = '998') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5402_hidung_tersumbat, id FROM items WHERE type = 'kanji' AND (slug = '1411' OR id = '1411') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5403_untuk_merenung, id FROM items WHERE type = 'kanji' AND (slug = '637' OR id = '637') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5403_untuk_merenung, id FROM items WHERE type = 'kanji' AND (slug = '1411' OR id = '1411') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5404_untuk_menatap, id FROM items WHERE type = 'kanji' AND (slug = '558' OR id = '558') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5404_untuk_menatap, id FROM items WHERE type = 'kanji' AND (slug = '1411' OR id = '1411') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5405_anjing_jantan, id FROM items WHERE type = 'kanji' AND (slug = '1387' OR id = '1387') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5405_anjing_jantan, id FROM items WHERE type = 'kanji' AND (slug = '481' OR id = '481') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5406_membiarkan_sesuatu_padam, id FROM items WHERE type = 'kanji' AND (slug = '1371' OR id = '1371') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5407_merasa_gugup, id FROM items WHERE type = 'kanji' AND (slug = '1402' OR id = '1402') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5407_merasa_gugup, id FROM items WHERE type = 'kanji' AND (slug = '1205' OR id = '1205') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5408_fusi, k_1444_larut);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5408_fusi, id FROM items WHERE type = 'kanji' AND (slug = '852' OR id = '852') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5409_pembiayaan, k_1444_larut);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5409_pembiayaan, id FROM items WHERE type = 'kanji' AND (slug = '1133' OR id = '1133') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5410_menjadi_terpisah, k_1443_melepaskan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5411_perceraian, k_1443_melepaskan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5411_perceraian, id FROM items WHERE type = 'kanji' AND (slug = '1416' OR id = '1416') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5412_pemisahan, id FROM items WHERE type = 'kanji' AND (slug = '501' OR id = '501') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5412_pemisahan, k_1443_melepaskan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5413_segel, id FROM items WHERE type = 'kanji' AND (slug = '1283' OR id = '1283') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5413_segel, k_1450_model);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5414_menjadi_rusak, id FROM items WHERE type = 'kanji' AND (slug = '1389' OR id = '1389') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5415_hal_yang_rapuh, id FROM items WHERE type = 'kanji' AND (slug = '1389' OR id = '1389') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5415_hal_yang_rapuh, id FROM items WHERE type = 'kanji' AND (slug = '718' OR id = '718') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5416_sudah, k_1447_sebelumnya);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5417_yang_ada, k_1447_sebelumnya);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5417_yang_ada, id FROM items WHERE type = 'kanji' AND (slug = '990' OR id = '990') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5418_diputuskan, k_1447_sebelumnya);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5418_diputuskan, id FROM items WHERE type = 'kanji' AND (slug = '687' OR id = '687') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5419_normal, k_1448_normal);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5419_normal, id FROM items WHERE type = 'kanji' AND (slug = '665' OR id = '665') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5420_biasa, k_1448_normal);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5420_biasa, id FROM items WHERE type = 'kanji' AND (slug = '1315' OR id = '1315') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5421_untuk_merajut, k_1445_merajut);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5422_sunting, k_1445_merajut);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5422_sunting, id FROM items WHERE type = 'kanji' AND (slug = '754' OR id = '754') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5423_editor, k_1445_merajut);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5423_editor, id FROM items WHERE type = 'kanji' AND (slug = '690' OR id = '690') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5424_menteri_luar_negeri, id FROM items WHERE type = 'kanji' AND (slug = '521' OR id = '521') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5424_menteri_luar_negeri, id FROM items WHERE type = 'kanji' AND (slug = '1129' OR id = '1129') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5424_menteri_luar_negeri, id FROM items WHERE type = 'kanji' AND (slug = '453' OR id = '453') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5424_menteri_luar_negeri, id FROM items WHERE type = 'kanji' AND (slug = '1395' OR id = '1395') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5426_cerah_dan_mencolok, k_1446_menyolok);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5427_cina, id FROM items WHERE type = 'kanji' AND (slug = '469' OR id = '469') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5427_cina, k_1446_menyolok);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5429_mewah, k_1449_luar_biasa);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5429_mewah, k_1446_menyolok);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5432_penilaian, k_1450_model);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5432_penilaian, id FROM items WHERE type = 'kanji' AND (slug = '714' OR id = '714') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5433_untuk_mengecualikan, k_1451_mengecualikan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5434_pembersihan, k_1455_menyapu);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5434_pembersihan, k_1451_mengecualikan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5435_pengecualian, k_1451_mengecualikan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5435_pengecualian, id FROM items WHERE type = 'kanji' AND (slug = '521' OR id = '521') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5436_untuk_bertanya, k_1452_menanyakan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5437_interogasi, k_1452_menanyakan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5437_interogasi, id FROM items WHERE type = 'kanji' AND (slug = '859' OR id = '859') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5438_berapa_harganya, k_1453_berapa_banyak);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5439_berapa_banyak, k_1453_berapa_banyak);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5440_geometri, k_1453_berapa_banyak);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5440_geometri, id FROM items WHERE type = 'kanji' AND (slug = '582' OR id = '582') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5440_geometri, id FROM items WHERE type = 'kanji' AND (slug = '599' OR id = '599') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5441_koridor, k_1454_koridor);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5441_koridor, id FROM items WHERE type = 'kanji' AND (slug = '451' OR id = '451') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5442_galeri_gambar, id FROM items WHERE type = 'kanji' AND (slug = '629' OR id = '629') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5442_galeri_gambar, k_1454_koridor);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5443_untuk_menyapu, k_1455_menyapu);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5444_lumpur, k_1456_lumpur);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5445_air_berlumpur, k_1456_lumpur);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5445_air_berlumpur, id FROM items WHERE type = 'kanji' AND (slug = '479' OR id = '479') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5446_tiang, k_1457_tiang);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5447_terkejut, k_1458_terkejut);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5448_keheranan, k_1458_terkejut);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5448_keheranan, k_1459_mendesah);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5449_untuk_meratap, k_1459_mendesah);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5450_mendesah, k_1459_mendesah);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5450_mendesah, id FROM items WHERE type = 'kanji' AND (slug = '815' OR id = '815') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5451_tanda_seru, id FROM items WHERE type = 'kanji' AND (slug = '862' OR id = '862') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5451_tanda_seru, k_1459_mendesah);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5451_tanda_seru, id FROM items WHERE type = 'kanji' AND (slug = '1435' OR id = '1435') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5452_gudang, k_1460_gudang);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5452_gudang, id FROM items WHERE type = 'kanji' AND (slug = '1348' OR id = '1348') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5453_gudang, k_1460_gudang);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5454_keturunan, id FROM items WHERE type = 'kanji' AND (slug = '462' OR id = '462') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5454_keturunan, k_1461_cucu);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5455_cucu, k_1461_cucu);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5456_sarang, k_1462_sarang);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5457_tinggalkan_sarang, k_1462_sarang);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5457_tinggalkan_sarang, id FROM items WHERE type = 'kanji' AND (slug = '494' OR id = '494') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5458_sarang_lebah, k_1462_sarang);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5459_jaring_laba_laba, k_1462_sarang);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5460_obi, k_1463_sabuk);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5461_daerah, id FROM items WHERE type = 'kanji' AND (slug = '608' OR id = '608') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5461_daerah, k_1463_sabuk);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5462_diameter, id FROM items WHERE type = 'kanji' AND (slug = '630' OR id = '630') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5462_diameter, k_1464_diameter);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5463_radius, id FROM items WHERE type = 'kanji' AND (slug = '518' OR id = '518') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5463_radius, k_1464_diameter);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5465_ambulans, k_1465_menyelamatkan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5465_ambulans, id FROM items WHERE type = 'kanji' AND (slug = '970' OR id = '970') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5465_ambulans, id FROM items WHERE type = 'kanji' AND (slug = '562' OR id = '562') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5467_menjadi_tersebar, k_1466_menyebarkan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5468_jalan_jalan, k_1466_menyebarkan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5468_jalan_jalan, id FROM items WHERE type = 'kanji' AND (slug = '628' OR id = '628') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5469_pembubaran, id FROM items WHERE type = 'kanji' AND (slug = '1150' OR id = '1150') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5469_pembubaran, k_1466_menyebarkan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5470_bubuk, k_1467_bubuk);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5471_tepung_terigu, id FROM items WHERE type = 'kanji' AND (slug = '598' OR id = '598') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5471_tepung_terigu, k_1467_bubuk);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5472_demam_alergi_serbuk_bunga, id FROM items WHERE type = 'kanji' AND (slug = '557' OR id = '557') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5472_demam_alergi_serbuk_bunga, k_1467_bubuk);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5472_demam_alergi_serbuk_bunga, id FROM items WHERE type = 'kanji' AND (slug = '1334' OR id = '1334') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5473_bubuk, k_1467_bubuk);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5473_bubuk, id FROM items WHERE type = 'kanji' AND (slug = '1183' OR id = '1183') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5475_pegunungan, id FROM items WHERE type = 'kanji' AND (slug = '455' OR id = '455') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5475_pegunungan, k_1468_pembuluh_darah);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5477_sayuran, id FROM items WHERE type = 'kanji' AND (slug = '848' OR id = '848') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5477_sayuran, k_1469_sayuran);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5478_pola_makan_vegetarian, k_1469_sayuran);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5478_pola_makan_vegetarian, id FROM items WHERE type = 'kanji' AND (slug = '644' OR id = '644') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5479_kargo, k_1470_kargo);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5479_kargo, id FROM items WHERE type = 'kanji' AND (slug = '718' OR id = '718') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5480_mata_uang, id FROM items WHERE type = 'kanji' AND (slug = '665' OR id = '665') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5480_mata_uang, k_1470_kargo);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5481_benua, id FROM items WHERE type = 'kanji' AND (slug = '453' OR id = '453') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5481_benua, k_1471_tanah);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5482_tentara_darat, k_1471_tanah);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5482_tentara_darat, id FROM items WHERE type = 'kanji' AND (slug = '954' OR id = '954') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5483_menyerupai, k_1472_mirip);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5485_rata_rata, id FROM items WHERE type = 'kanji' AND (slug = '535' OR id = '535') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5485_rata_rata, k_1473_setara);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5486_persamaan, k_1473_setara);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5486_persamaan, id FROM items WHERE type = 'kanji' AND (slug = '1037' OR id = '1037') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5487_simetri, k_1473_setara);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5487_simetri, id FROM items WHERE type = 'kanji' AND (slug = '863' OR id = '863') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5488_kuburan, k_1474_kuburan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5489_pemakaman, k_1474_kuburan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5489_pemakaman, id FROM items WHERE type = 'kanji' AND (slug = '608' OR id = '608') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5490_gunung_fuji, k_1475_kaya);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5490_gunung_fuji, id FROM items WHERE type = 'kanji' AND (slug = '877' OR id = '877') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5490_gunung_fuji, id FROM items WHERE type = 'kanji' AND (slug = '455' OR id = '455') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5491_menjadi_kaya, k_1475_kaya);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5492_kekayaan, k_1475_kaya);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5493_kaya, k_1475_kaya);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5493_kaya, id FROM items WHERE type = 'kanji' AND (slug = '1098' OR id = '1098') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5494_moral, id FROM items WHERE type = 'kanji' AND (slug = '700' OR id = '700') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5494_moral, k_1476_kebajikan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5495_tokugawa, k_1476_kebajikan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5495_tokugawa, id FROM items WHERE type = 'kanji' AND (slug = '456' OR id = '456') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5496_prefektur_tokushima, k_1476_kebajikan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5496_prefektur_tokushima, id FROM items WHERE type = 'kanji' AND (slug = '822' OR id = '822') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5496_prefektur_tokushima, id FROM items WHERE type = 'kanji' AND (slug = '731' OR id = '731') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5497_yang_harus_diperhatikan, k_1477_mencari);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5498_penyelidikan_akademik, k_1477_mencari);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5498_penyelidikan_akademik, id FROM items WHERE type = 'kanji' AND (slug = '688' OR id = '688') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5499_detektif_swasta, k_1477_mencari);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5499_detektif_swasta, k_1478_mengintai);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5500_investigasi_rahasia, id FROM items WHERE type = 'kanji' AND (slug = '500' OR id = '500') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5500_investigasi_rahasia, k_1478_mengintai);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5512_untuk_menikah, id FROM items WHERE type = 'kanji' AND (slug = '1009' OR id = '1009') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5512_untuk_menikah, id FROM items WHERE type = 'kanji' AND (slug = '1416' OR id = '1416') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5702_takut, id FROM items WHERE type = 'kanji' AND (slug = '1406' OR id = '1406') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5703_untuk_memimpin_seseorang_tersesat, id FROM items WHERE type = 'kanji' AND (slug = '1325' OR id = '1325') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5704_untuk_menumpuk_sesuatu, id FROM items WHERE type = 'kanji' AND (slug = '1393' OR id = '1393') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5705_menjadi_tuan_rumah, id FROM items WHERE type = 'kanji' AND (slug = '528' OR id = '528') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5705_menjadi_tuan_rumah, id FROM items WHERE type = 'kanji' AND (slug = '1382' OR id = '1382') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5706_untuk_mendesak, id FROM items WHERE type = 'kanji' AND (slug = '1382' OR id = '1382') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5706_untuk_mendesak, id FROM items WHERE type = 'kanji' AND (slug = '1383' OR id = '1383') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7605_berapa_kali, k_1453_berapa_banyak);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_7605_berapa_kali, id FROM items WHERE type = 'kanji' AND (slug = '725' OR id = '725') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_7660_mungkin, id FROM items WHERE type = 'kanji' AND (slug = '1406' OR id = '1406') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_7720_takut, id FROM items WHERE type = 'kanji' AND (slug = '1406' OR id = '1406') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_7774_pengawal, id FROM items WHERE type = 'kanji' AND (slug = '525' OR id = '525') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_7774_pengawal, id FROM items WHERE type = 'kanji' AND (slug = '508' OR id = '508') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7774_pengawal, k_1457_tiang);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8686_rangkaian_bunga, k_1446_menyolok);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_8686_rangkaian_bunga, id FROM items WHERE type = 'kanji' AND (slug = '700' OR id = '700') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8718_perut, k_1316_perut);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8722_mencolok, k_1446_menyolok);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_8722_mencolok, id FROM items WHERE type = 'kanji' AND (slug = '732' OR id = '732') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_8935_untuk_diperpanjang, id FROM items WHERE type = 'kanji' AND (slug = '1426' OR id = '1426') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_9046_negara_kita, id FROM items WHERE type = 'kanji' AND (slug = '1294' OR id = '1294') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_9046_negara_kita, id FROM items WHERE type = 'kanji' AND (slug = '621' OR id = '621') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_9063_pria, id FROM items WHERE type = 'kanji' AND (slug = '1387' OR id = '1387') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_9076_melimpah, id FROM items WHERE type = 'kanji' AND (slug = '1270' OR id = '1270') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_9076_melimpah, k_1475_kaya);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_9366_untuk_menghemat, id FROM items WHERE type = 'kanji' AND (slug = '1290' OR id = '1290') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_9482_kota, id FROM items WHERE type = 'kanji' AND (slug = '1400' OR id = '1400') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_9483_pemandangan_kota, id FROM items WHERE type = 'kanji' AND (slug = '1400' OR id = '1400') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_9483_pemandangan_kota, id FROM items WHERE type = 'kanji' AND (slug = '1372' OR id = '1372') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_9498_lega, k_1465_menyelamatkan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_9498_lega, id FROM items WHERE type = 'kanji' AND (slug = '1124' OR id = '1124') LIMIT 1;

END $$;
