-- ====================================================
-- KaniGani — Seed Data Level 27 (v2, relasional)
-- Auto-generated with Indonesian Slugs
-- ====================================================

DO $$
DECLARE
  -- ============ RADICAL IDs (Level 27) ============
  r_308_pertanian UUID; r_309_menyapu UUID; r_310_pengganti UUID; r_312_masyarakat UUID; r_313_kelebihan UUID; r_331_panggilan UUID; r_332_keluar UUID;

  -- ============ KANJI IDs (Level 27) ============
  k_1314_mengisyaratkan UUID; k_1315_tangga UUID; k_1319_mundur UUID; k_1320_menghasilkan UUID; k_1321_khawatir UUID; k_1322_waktu_luang UUID; k_1323_menenun UUID; k_1324_meminjamkan UUID; k_1325_sesat UUID; k_1326_sesat UUID; k_1327_mengundang UUID; k_1328_dapatkan_posisi UUID; k_1329_mengunjungi UUID; k_1330_marah UUID; k_1331_naik UUID; k_1332_tidur UUID; k_1333_mengantuk UUID; k_1334_gejala UUID; k_1335_mengencangkan UUID; k_1336_keinginan UUID; k_1338_padat UUID; k_1339_tepian UUID; k_1340_ekstrim UUID; k_1341_rute UUID; k_1342_sehat UUID; k_1343_kemudahan UUID; k_1344_pria UUID; k_2429_lama_untuk UUID;

  -- ============ VOCABULARY IDs (Level 27) ============
  v_3844_barang_dagangan_yang_tidak_terjual UUID; v_3996_perilaku_masyarakat UUID; v_4014_kejayaan UUID; v_4074_pengaturan UUID; v_4188_melanjutkan UUID; v_4468_perincian UUID; v_4771_untuk_memberi UUID; v_4785_lanskap UUID; v_4810_menjadi_milik UUID; v_4833_orang_lanjut_usia UUID; v_4888_bulan_demi_bulan_berikutnya UUID; v_4889_tahun_demi_tahun_berikutnya UUID; v_4973_penjualan_eksklusif UUID; v_5000_pengecut UUID; v_5001_untuk_keluar UUID; v_5003_untuk_digantung UUID; v_5004_untuk_menyembunyikan_diri_sendiri UUID; v_5005_harga UUID; v_5006_kesehatan UUID; v_5007_amnesia UUID; v_5010_mencari_pekerjaan UUID; v_5011_bekerja UUID; v_5012_membosankan UUID; v_5015_sushi_gulung UUID; v_5016_lumpia UUID; v_5017_lakukan_yang_terbaik UUID; v_5018_menjadi_marah UUID; v_5019_untuk_berteriak UUID; v_5020_sebuah_kekhawatiran UUID; v_5021_khawatir UUID; v_5023_masalah UUID; v_5024_bujukan UUID; v_5025_untuk_melihat_sifat_asli_sesuatu UUID; v_5026_bodoh UUID; v_5027_untuk_menarik_sesuatu_keluar UUID; v_5029_untuk_mengundang UUID; v_5030_petunjuk UUID; v_5032_promosi_pekerjaan UUID; v_5033_waktu_luang UUID; v_5034_liburan UUID; v_5035_uang_kembalian UUID; v_5036_untuk_mengganti UUID; v_5037_ganti_pakaian UUID; v_5038_terakhir UUID; v_5041_kutub_selatan UUID; v_5043_tidak_terima_kasih UUID; v_5044_jangan_pedulikan_aku UUID; v_5045_skala_besar UUID; v_5046_skala_kecil UUID; v_5047_tangga UUID; v_5048_perlahan_lahan UUID; v_5049_panggung UUID; v_5050_langkah_pertama UUID; v_5051_padat UUID; v_5052_kepadatan UUID; v_5053_sindroma UUID; v_5054_gejala UUID; v_5055_insomnia UUID; v_5056_menyakitkan UUID; v_5058_mengantuk UUID; v_5059_tidur UUID; v_5060_tepian UUID; v_5061_tip UUID; v_5062_setengah_selesai UUID; v_5063_ekstrim UUID; v_5066_memasok UUID; v_5068_kenaikan_gaji UUID; v_5069_untuk_menyimpulkan UUID; v_5070_untuk_mengencangkan UUID; v_5071_organisasi UUID; v_5072_untuk_menenun UUID; v_5079_untuk_mengunjungi UUID; v_5080_kunjungan UUID; v_5082_untuk_meminjamkan UUID; v_5083_reservasi_pribadi UUID; v_5084_untuk_mendesak UUID; v_5085_tekanan UUID; v_5086_penganiayaan UUID; v_5087_urgensi UUID; v_5088_tersesat UUID; v_5089_anak_hilang UUID; v_5090_labirin UUID; v_5091_takhyul UUID; v_5093_untuk_dipulangkan UUID; v_5094_berangkat_lebih_awal UUID; v_5095_dalam_perjalanan UUID; v_5097_bajingan UUID; v_5099_kaus_kaki UUID; v_5100_toko_sepatu UUID; v_5101_sepatu_hujan UUID; v_5102_pengaruh_buruk UUID; v_5103_untuk_pensiun UUID; v_5104_izakaya UUID; v_5197_untuk_membandingkan UUID; v_6651_yukata UUID; v_7578_persiapan UUID; v_7603_ruang_tamu UUID; v_7656_untuk_membungkuk UUID; v_7716_pensiun UUID; v_7770_untuk_menyerahkan UUID; v_8541_untuk_merindukan UUID; v_8682_logika UUID; v_8940_untuk_ditemani_oleh UUID; v_9073_menyerahkan_keputusan_kepada_orang_lain UUID; v_9289_tujuan UUID; v_9305_persatuan UUID; v_9307_untuk_menghabiskan UUID; v_9328_untuk_menanggapi UUID; v_9340_lap_tangan UUID; v_9373_tumbuh_terlambat UUID; v_9459_untuk_menangkap UUID; v_9480_menjadi_lapar UUID; v_9496_untuk_bekerja_menuju UUID;

BEGIN

  DELETE FROM items WHERE level = 27;

  -- 1. RADICALS
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '農', 'pertanian', 27, 1, 'Radikal ini sama dengan kanji. Artinya <radikal>bertani</radikal>.')
    RETURNING id INTO r_308_pertanian;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '而', 'menyapu', 27, 2, 'Jika Anda melihatnya, Anda dapat melihat <radical>rake</radical> yang tampak aneh.')
    RETURNING id INTO r_309_menyapu;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '代', 'pengganti', 27, 3, 'Radikal ini sama dengan kanji. Artinya <radikal>pengganti</radikal>.')
    RETURNING id INTO r_310_pengganti;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '民', 'masyarakat', 27, 4, 'Radikal ini sama dengan kanji. Artinya <radikal>masyarakat</radikal>.')
    RETURNING id INTO r_312_masyarakat;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '余', 'kelebihan', 27, 5, 'Radikal ini sama dengan kanji. Artinya <radikal>surplus</radikal>.')
    RETURNING id INTO r_313_kelebihan;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '召', 'panggilan', 27, 6, 'Jika Anda memiliki pedang di mulut Anda, Anda perlu <radikal>memanggil</radikal> seseorang untuk membantu! Benda itu seharusnya tidak ada di sana. Hubungi seseorang sekarang juga! Silakan, telepon mereka! Semoga saja mereka bisa mengeluarkan pedang itu dari mulutmu.')
    RETURNING id INTO r_331_panggilan;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '出', 'keluar', 27, 7, 'Radikal ini sama dengan kanji. Artinya <radikal>keluar</radikal>.')
    RETURNING id INTO r_332_keluar;

  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_308_pertanian, 'Pertanian', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_309_menyapu, 'Menyapu', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_310_pengganti, 'Pengganti', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_312_masyarakat, 'masyarakat', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_313_kelebihan, 'Kelebihan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_331_panggilan, 'Panggilan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_332_keluar, 'KELUAR', true, true);

  -- 2. KANJIS
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '招', 'mengisyaratkan', 27, 8, 'Seseorang mengulurkan <radical>jarinya</radical> untuk <radical>memanggil</radical> untuk Anda. Mereka <kanji>mengisyaratkan</kanji> agar Anda lebih dekat, lewat sini.', 'Orang yang <kanji>memberi isyarat</kanji> kepada Anda adalah <reading>Shou</reading>gun (しょう). Anda tidak bisa tidak mematuhi panggilan Shougun.')
    RETURNING id INTO k_1314_mengisyaratkan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '段', 'tangga', 27, 9, 'Potong <radical>sisir</radikal> ini dengan <radical>senjata</radikal> Anda dan ubah menjadi <kanji>langkah</kanji> untuk beberapa <kanji>tangga</kanji>.', 'Perlahan-lahan kamu berusaha membuat <kanji>tangga</kanji> ini, kamu harus memotong banyak sisir, dan saat <reading>fajar</reading> (だん) semuanya selesai!')
    RETURNING id INTO k_1315_tangga;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '退', 'mundur', 27, 10, 'Jika Anda berada di <radical>skuter</radical> dan menabrak <radical>root</radical>, Anda harus <kanji>mundur</kanji>. Akarnya jelas <kanji>menolak</kanji>Anda, mereka ingin Anda pergi, jadi Anda harus pergi.', 'Anda mencoba <kanji>mundur</kanji> dengan berlari ke belakang, tetapi akarnya mencengkeram <reading>dasi</reading> (たい) Anda. Kamu mencoba melepaskan dasimu, tapi dasi itu malah semakin erat melingkari lehermu.')
    RETURNING id INTO k_1319_mundur;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '屈', 'menghasilkan', 27, 11, 'Anda melihat <radical>bendera</radikal> di <radical>keluar</radikal> yang memberi tahu Anda untuk <kanji>menghasilkan</kanji>. Ada lalu lintas lintas di luar pintu keluar, dan bendera memberi tahu Anda bahwa Anda harus menyerah pada mereka.', 'Meskipun benderanya menyuruhmu untuk <kanji>menyerah</kanji>, kamu mulai kehilangan kesabaran. Orang-orang yang berjalan di luar pintu keluar semuanya adalah sekelompok <read>orang bodoh</reading> (くつ) tua yang gila! Orang bodoh gila ini terus berjalan tepat di depan pintu, menghalangi. Orang-orang tua itu bahkan tidak pergi kemana-mana, mereka terus berputar-putar menghalangi jalan!')
    RETURNING id INTO k_1320_menghasilkan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '悩', 'khawatir', 27, 12, 'Jika <radical>jiwa</radikal> Anda tergeletak di <radikal>rumput</radikal> di dalam <radikal>peti harta karun</radikal>, Anda akan <kanji>khawatir</kanji> tentang hal itu. Ia hanya duduk di sana, di tempat terbuka, menunggu siapa pun datang dan membukanya.', 'Sayangnya, Anda juga <kanji>khawatir</kanji> untuk membukanya sendiri. Kamu berdiri di depan peti itu dan berpikir, "Haruskah aku membukanya? <read>Nah, yah</reading> (なや). Tunggu. Nah. Yah. Sial, kamu tidak bisa mengambil keputusan.')
    RETURNING id INTO k_1321_khawatir;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '暇', 'waktu-luang', 27, 13, 'Di <radical>matahari</radikal> sambil memegang <radical>sisir</radikal> di dalam <radical>sangkar</radikal> dan duduk di <radical>bangku</radikal>, Anda menyisir rambut di <kanji>waktu luang</kanji> Anda. Karena kamu di dalam sangkar, sebenarnya kamu sendiri yang membuat sisir ini, jadi agak berantakan, ada cabangnya yang hilang. Anda sedang berupaya memperbaikinya di waktu luang, dan Anda juga menggunakannya untuk menata gaya pel Anda.', 'Jadi bagaimana kamu bisa masuk ke dalam kandang ini? Nah, sebelum kamu menyisir rambut di <kanji>waktu senggang</kanji>, kamu biasa mencuri <reading>ca</reading>rs (か). Anda telah mencuri banyak mobil dalam sehari, namun akhirnya Anda tertangkap basah sedang mencuri mobil, dan sekarang Anda menghabiskan seluruh waktu luang Anda di kandang itu, hanya menyisir rambut Anda.')
    RETURNING id INTO k_1322_waktu_luang;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '織', 'menenun', 27, 14, 'Mengambil <radical>utas</radikal> dan bergerak mengikuti <radikal>suara</radikal> musik, seorang <radikal>pemabuk</radikal> membuat <kanji>menenun</kanji> melalui suatu kain. Dia menggunakan benang untuk menyatukan kembali pakaiannya setelah dia merusaknya saat terjatuh dari tangga. Anda tahu, karena dia seorang pemabuk.', 'Pemabuk ini benar-benar <read>cantik</reading> (しき), tapi dia baru saja mengalami masa-masa sulit dan akhir-akhir ini sangat keras kepala. Pakaian yang dia gunakan untuk ditenun kembali menjadi satu adalah salah satu pakaiannya yang mewah dan chic.')
    RETURNING id INTO k_1323_menenun;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '貸', 'meminjamkan', 27, 15, 'Anda <radical>menggantikan</radical> sejumlah <radical>kerang</radical> sebagai jaminan sehingga teman Anda akan <kanji>meminjamkan</kanji> sejumlah uang kepada Anda. Biasanya dia akan meminta sesuatu yang lebih berharga, tapi Anda telah meyakinkan dia untuk mengganti kerang tersebut dengan apa yang biasanya dia ambil sebagai jaminan saat meminjamkan kepada orang lain.', 'Anda ingin teman Anda <kanji>meminjamkan</kanji> sejumlah uang agar Anda dapat membeli <reading>ca</reading>r (か). Anda membutuhkan uang dan mobil lebih banyak daripada kebutuhan tumpukan kerang ini, jadi Anda dengan senang hati menjadikannya sebagai jaminan atas pinjaman tersebut.')
    RETURNING id INTO k_1324_meminjamkan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '迷', 'sesat', 27, 16, 'Jika Anda mengendarai <radical>skuter</radical> melewati <radical>nasi</radical>, kemungkinan besar Anda <kanji>tersesat</kanji>. Anda juga mungkin <kanji>tersesat</kanji>.', 'Anda <kanji>tersesat</kanji> dan <kanji>tersesat</kanji> sehingga Anda berakhir di bunga <reading>Mei</reading> (めい), sebuah kapal yang akhirnya membawa Anda melintasi Samudera Atlantik. Sekarang kamu benar-benar tersesat.')
    RETURNING id INTO k_1325_sesat;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '惑', 'sesat', 27, 17, 'Seorang <radikal>pemabuk</radikal> yang <radikal>mulutnya</radikal> berada di <radikal>tanah</radikal>, memiliki <radikal>hati</radikal> yang <kanji>sesat</kanji>. Pertama-tama, dia mencoba untuk menghilangkan masalahnya, tetapi yang lebih buruk, dia sangat mabuk sehingga dia mencoba untuk minum habis-habisan.', 'Saat ini kami tidak mengatakan <kanji>sesat</kanji>, kami mengatakan <reading>wack</reading> (わく). Sial, pemabuk itu kacau sekali, dia gila.')
    RETURNING id INTO k_1326_sesat;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '誘', 'mengundang', 27, 18, 'Anda <radical>mengatakan</radical> Anda meninggalkan <radical>gandum</radical> di <radical>tangga</radical>. Beginilah cara Anda <kanji>mengundang</kanji> orang ke tempat Anda.', 'Anda telah <kanji>mengundang</kanji> orang dengan meninggalkan biji-bijian di tangga tetapi beberapa <read>Anda</reading>mereka (ゆう) akhirnya memakan semua biji-bijian tersebut.')
    RETURNING id INTO k_1327_mengundang;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '就', 'dapatkan-posisi', 27, 19, 'Di <radical>ibukota</radical>, bahkan <radical>anjing</radical> yang rusak pun bisa <kanji>mendapatkan posisi</kanji>. Hal ini karena ibu kota memiliki begitu banyak pekerjaan yang tersedia sehingga bahkan seekor anjing miskin dan patah hati pun dapat menemukan tempat untuk bekerja.', 'Untuk membantu anjing <kanji>mendapatkan posisi</kanji>, tukang sepatu ibu kota membuatkannya sepasang <read>sepatu</reading> (しゅう) yang bagus. Sepatu ini membantunya berjalan dengan kakinya yang cedera, namun yang lebih penting, sepatu ini meningkatkan kepercayaan dirinya dan membuatnya merasa siap untuk posisi apa pun.')
    RETURNING id INTO k_1328_dapatkan_posisi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '訪', 'mengunjungi', 27, 20, 'Seseorang baru saja meminta Anda untuk <radical>mengatakan</radical> <radical>arah</radical> mana yang harus mereka <kanji>kunjungi</kanji>.', 'Anda akhirnya berkata, "Kamu harus <kanji>mengunjungi</kanji> <reading>ho</reading>saya (ほう) saya." Anda baik sekali!')
    RETURNING id INTO k_1329_mengunjungi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '怒', 'marah', 27, 21, 'Seorang <radikal>wanita</radikal> yang duduk di <radikal>bangku</radikal> dengan <radikal>hati</radikal> yang patah sangat <kanji>marah</kanji>. Dia patah hati karena seorang brengsek dan sekarang dia duduk di bangku, hanya kesal pada pria itu dan betapa marahnya dia padanya.', 'Wanita itu merasa sangat <kanji>marah</kanji> sehingga dia memutuskan untuk melampiaskan <reading>tindakannya</reading>g (ど) pada pria yang menghancurkan hatinya. Hal itu seharusnya menjadi pelajaran baginya - tidak ada yang lebih buruk daripada dikejar oleh anjing pemarah milik wanita yang sedang marah.')
    RETURNING id INTO k_1330_marah;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '昇', 'naik', 27, 22, 'Anda ingin pergi ke <radical>matahari</radical> jadi Anda menyiapkan <radical>slide</radical> <radical>dua puluh</radical> tingkat sehingga Anda dapat <kanji>naik</kanji> ke surga.', 'Anda perlu <kanji>naik</kanji> ke langit dan menuju matahari karena <reading>Shou</reading>gun (しょう) mengatakan demikian. Dia sedang menguji beberapa teknologi perjalanan luar angkasa (slide dua puluh lantai) dan Anda adalah kelinci percobaannya.')
    RETURNING id INTO k_1331_naik;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '眠', 'tidur', 27, 23, 'Menutup setiap <radical>mata</radical> adalah sesuatu yang dilakukan <radical>masyarakat</radikal> sebelum mereka <kanji>tidur</kanji>. Masyarakat tidak bisa tidur dengan kedua mata terbuka dan mereka juga tidak bisa tidur dengan satu mata terbuka. Orang-orang harus menutup mata sebelum mereka bisa tidur.', 'Alasan Anda ingin <kanji>tidur</kanji> adalah karena semua orang <reading>jahat</reading> (みん) terhadap Anda. Mereka begitu kejam sehingga satu-satunya cara untuk mengatasinya adalah dengan memejamkan mata dan tidur. Anda hanya ingin tidur.')
    RETURNING id INTO k_1332_tidur;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '睡', 'mengantuk', 27, 24, 'Saat <radical>mata</radical> Anda menjadi <radical>kantuk</radical>, itu berarti Anda mulai <kanji>mengantuk</kanji>. Tutuplah matamu, dasar orang mengantuk dengan mata murung.', 'Alasan kamu <kanji>mengantuk</kanji> adalah karena kamu sedang berayun (すい). Ayunan berfungsi seperti buaian bayi — ayunan akan mengguncang Anda dan langsung membuat Anda mengantuk!')
    RETURNING id INTO k_1333_mengantuk;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '症', 'gejala', 27, 25, 'Ketika seseorang <radikal>sakit</radikal> untuk mendiagnosis penyebab dan pengobatan yang <radikal>benar</radikal>, Anda perlu memeriksa <kanji>gejala</kanji> mereka. Anda juga harus sangat berhati-hati, karena jika Anda salah memberikan gejala, Anda bisa membunuh mereka!', 'Anda perlu mengetahui <kanji>gejala</kanji> yang dimiliki <reading>Shou</reading>gun (しょう). Ini juga sangat serius, jadi sebaiknya Anda benar mengenai penyakit apa yang dideritanya. Jika sesuatu yang buruk terjadi pada Shougun, itu akan membuat Anda pusing.')
    RETURNING id INTO k_1334_gejala;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '締', 'mengencangkan', 27, 26, 'Anda menarik <radical>benang</radical> saat Anda <radical>berdiri</radical> dengan <radical>handuk</radical> melilit Anda. Hal ini memungkinkan Anda <kanji>mengencangkan</kanji> handuk.', 'Anda <kanji>mengencangkan</kanji>handuk Anda karena Anda telah makan banyak <reading>ta</reading>ter (てい) akhir-akhir ini. Anda ingin menjaga bentuk tubuh tetap langsing, dan daripada melepaskan tater tot kesayangan Anda, Anda memilih untuk membatasi diri dengan handuk bergaya korset ini.')
    RETURNING id INTO k_1335_mengencangkan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '迫', 'keinginan', 27, 27, '<radikal>Skuter</radikal> berwarna <radikal>putih</radikal>. Warna ini akan <kanji>mendesak</kanji> dan <kanji>memaksa</kanji> Anda untuk menggunakannya. Perusahaan skuter menggunakan warna untuk membuat Anda melakukan apa yang mereka inginkan. Beberapa orang bahkan akan mengatakan bahwa mereka mencoba <kanji>memaksa</kanji> Anda.', 'Ketika mereka <kanji>mendesak</kanji>, <kanji>memaksa</kanji> dan <kanji>memaksa</kanji> Anda seperti ini, mereka <reading>meretas</reading>ing (はく) otak Anda.')
    RETURNING id INTO k_1336_keinginan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '濃', 'padat', 27, 28, 'Setelah <radical>tsunami</radical> menghantam lahan <radical>pertanian</radical> Anda, Anda akan melihat banyak lumpur <kanji>padat</kanji> tertinggal. Lapisan <kanji>tebal</kanji> ini benar-benar menyuburkan tanah, dan tanaman Anda akan terasa sangat kental dan padat rasanya.', 'Tahu siapa yang mungkin bertanggung jawab atas lapisan lumpur yang <kanji>padat</kanji> dan <kanji>tebal</kanji> ini? <membaca>Tidak</reading>stradamus (のう). Dialah yang pertama-tama mendesak Anda untuk membeli lahan pertanian ini, kemungkinan besar karena dia memperkirakan tsunami akan membawa lapisan lumpur yang tebal ini.')
    RETURNING id INTO k_1338_padat;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '端', 'tepian', 27, 29, 'Dengan menyiapkan <radical>stand</radical> di puncak <radical>gunung</radical>, Anda <radical>menyapu</radical> semua batu hingga ke <kanji>tepi</kanji> gunung tersebut. Anda ingin membersihkan area di sekitar stand Anda, jadi Anda menyapu dan menyapu semua batu dan puing-puing dari stand dan menuju ke tepi puncak gunung. Ini juga menciptakan penghalang kecil di sekitar tepinya.', 'Anda mendirikan stan ini di puncak gunung sehingga Anda dapat memberikan pidato kepada dunia. Namun Anda harus berpenampilan terbaik, jadi Anda memutuskan untuk berjemur <reading>tan</reading> (たん). Anda berbaring di samping <kanji>tepi</kanji> gunung, dan bersiap untuk berjemur. Semua orang menyukai orang dengan kulit sawo matang yang sehat.')
    RETURNING id INTO k_1339_tepian;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '極', 'ekstrim', 27, 30, 'Tidak banyak <radical>pohon</radical> di <radical>tanah</radical> bawah<radical>penjara</radical> Anda, jadi Anda diberi tugas: hanya dengan menggunakan <radical>mulut</radical> dan <radical>bangku</radical> Anda, menanam sebanyak mungkin di <radical>tanah</radical>. Ini adalah tantangan <kanji>ekstrim</kanji>!', 'Tantangan <kanji>ekstrim</kanji> ini hanya dapat diselesaikan oleh satu orang: <reading>Goku</reading> (ごく) dari Dragon Ball Z! Dia memiliki jubah khusus yang memungkinkanmu menanam pohon dalam waktu singkat, jadi dia dengan cepat <reading>menyelubungimu</reading> (きょく) untuk membantu tugas ekstremmu.')
    RETURNING id INTO k_1340_ekstrim;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '途', 'rute', 27, 31, 'Saat Anda mengendarai <radical>skuter</radical> Anda akan memiliki <radical>kelebihan</radikal> kemungkinan <kanji>rute</kanji>. Anda tidak hanya dapat berkendara di jalan mana pun, tetapi Anda juga dapat berkendara di trotoar!', 'Anda memutuskan untuk mengambil <kanji>rute</kanji> tercepat, karena Anda memiliki begitu banyak pilihan, dan berkendara di trotoar. Namun, saat melakukannya, Anda menabrak setiap <reading>jari kaki</reading> (と) pada setiap orang yang mencoba berjalan ke sana.')
    RETURNING id INTO k_1341_rute;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '健', 'sehat', 27, 32, '<radical>pemimpin</radikal> kelas <radical>yoga</radical> Anda menggunakan <radical>sikat</radikal> khusus agar tetap <kanji>sehat</kanji>. Dia menggosokkan sikat pada lengan dan kakinya yang panjang, dan dia tidak pernah sakit.', 'Tidak semua orang ingin <kanji>sehat</kanji>, tapi <reading>Ken</reading> (けん) sang samurai pasti menginginkannya. Dia harus siap pada saat itu juga sehingga dia dapat melakukan tugas untuk orang lain. Dia ada di setiap kelas, menggosok dirinya dengan kuas.')
    RETURNING id INTO k_1342_sehat;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '康', 'kemudahan', 27, 33, 'Di bawah <radical>kanopi</radikal> yang ditopang oleh <radikal>tongkat</radikal>, <radikal>Wolverine</radikal> sedang menyeruput <radikal>air</radikal> dan bersantai. Dia terlihat begitu pada <kanji>kemudahan</kanji> dan <kanji>kedamaian</kanji>.', 'Bersama dengan Wolverine di tempat <kanji>kemudahan</kanji> dan <kanji>kedamaian</kanji> ini, Anda juga melihat <reading>こう</reading>いち. Dia nongkrong di bawah kanopi dan minum air juga.')
    RETURNING id INTO k_1343_kemudahan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '郎', 'pria', 27, 34, 'Di dalam "<radical>Baik</radikal> <radikal>Gedung</radikal>" ada satu <kanji>pria</kanji>.', 'Anda berbicara dengan <kanji>pria</kanji> itu. Satu-satunya hal yang dia lakukan adalah menawarkanmu <reading>roe</reading> (ろう).')
    RETURNING id INTO k_1344_pria;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '憧', 'lama-untuk', 27, 35, '<radical>jiwa</radikal> <radikal>berdiri</radikal> Anda berada di <radikal>desa</radikal> yang <kanji>rindukan</kanji>. Itu adalah desa tempat Anda berasal, dan tidak peduli seberapa jauh Anda pergi, tidak peduli berapa pun usia Anda, jiwa Anda tetap ada di sana, dan Anda <kanji>mendambakannya</kanji>.', 'Tidak peduli betapa <kanji>merindukannya</kanji>, kamu tidak dapat kembali karena <reading>cougar</reading> (あこが) menghalangi. Setiap kali Anda mencoba untuk kembali ke desa Anda untuk bertemu kembali dengan jiwa yang Anda rindukan, seorang tante girang akan kembali, dan tidak akan membiarkan Anda masuk.')
    RETURNING id INTO k_2429_lama_untuk;

  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1314_mengisyaratkan, 'Mengisyaratkan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1315_tangga, 'Tangga', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1315_tangga, 'Tangga', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1319_mundur, 'Mundur', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1319_mundur, 'Menolak', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1320_menghasilkan, 'Menghasilkan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1321_khawatir, 'Khawatir', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1322_waktu_luang, 'Waktu luang', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1322_waktu_luang, 'Waktu Senggang', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1323_menenun, 'Menenun', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1324_meminjamkan, 'Meminjamkan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1325_sesat, 'Sesat', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1325_sesat, 'Hilang', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1326_sesat, 'Sesat', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1327_mengundang, 'Mengundang', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1327_mengundang, 'Memancing', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1328_dapatkan_posisi, 'Dapatkan Posisi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1329_mengunjungi, 'Mengunjungi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1330_marah, 'Marah', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1330_marah, 'Amarah', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1331_naik, 'Naik', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1332_tidur, 'Tidur', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1333_mengantuk, 'Mengantuk', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1334_gejala, 'Gejala', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1335_mengencangkan, 'Mengencangkan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1336_keinginan, 'Keinginan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1336_keinginan, 'Memaksa', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1336_keinginan, 'Memaksa', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1338_padat, 'Padat', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1338_padat, 'Tebal', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1339_tepian, 'Tepian', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1340_ekstrim, 'Ekstrim', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1341_rute, 'Rute', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1342_sehat, 'Sehat', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1343_kemudahan, 'Kemudahan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1343_kemudahan, 'Perdamaian', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1344_pria, 'Pria', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2429_lama_untuk, 'Lama Untuk', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2429_lama_untuk, 'Merindukan', false, true);

  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1314_mengisyaratkan, 'しょう', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1314_mengisyaratkan, 'まね', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1315_tangga, 'だん', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1319_mundur, 'たい', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1319_mundur, 'しりぞ', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1319_mundur, 'ひ', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1319_mundur, 'ど', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1319_mundur, 'の', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1320_menghasilkan, 'くつ', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1320_menghasilkan, 'かが', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1321_khawatir, 'なや', 'kunyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1321_khawatir, 'のう', 'onyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1322_waktu_luang, 'か', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1322_waktu_luang, 'ひま', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1322_waktu_luang, 'いとま', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1323_menenun, 'しき', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1323_menenun, 'しょく', 'onyomi', false, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1323_menenun, 'お', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1324_meminjamkan, 'か', 'kunyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1324_meminjamkan, 'たい', 'onyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1325_sesat, 'めい', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1325_sesat, 'まよ', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1326_sesat, 'わく', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1326_sesat, 'まど', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1327_mengundang, 'ゆう', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1327_mengundang, 'さそ', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1328_dapatkan_posisi, 'しゅう', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1328_dapatkan_posisi, 'つ', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1328_dapatkan_posisi, 'じゅ', 'onyomi', false, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1329_mengunjungi, 'ほう', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1329_mengunjungi, 'たず', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1329_mengunjungi, 'おとず', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1330_marah, 'ど', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1330_marah, 'おこ', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1330_marah, 'いか', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1331_naik, 'しょう', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1331_naik, 'のぼ', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1332_tidur, 'みん', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1332_tidur, 'ねむ', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1333_mengantuk, 'すい', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1334_gejala, 'しょう', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1335_mengencangkan, 'てい', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1335_mengencangkan, 'し', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1336_keinginan, 'はく', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1336_keinginan, 'せま', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1338_padat, 'のう', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1338_padat, 'こ', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1339_tepian, 'たん', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1339_tepian, 'はし', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1339_tepian, 'はた', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1339_tepian, 'は', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1339_tepian, 'はした', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1339_tepian, 'はな', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1340_ekstrim, 'きょく', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1340_ekstrim, 'ごく', 'onyomi', false, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1340_ekstrim, 'きわ', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1341_rute, 'と', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1342_sehat, 'けん', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1342_sehat, 'すこ', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1343_kemudahan, 'こう', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1344_pria, 'ろう', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_2429_lama_untuk, 'あこが', 'kunyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_2429_lama_untuk, 'しょう', 'onyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_2429_lama_untuk, 'とう', 'onyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_2429_lama_untuk, 'どう', 'onyomi', false, false);

  -- 3. VOCABULARIES
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '残品', 'barang-dagangan-yang-tidak-terjual', 27, 36, '<kanji>sisa</kanji> <kanji>produk</kanji> adalah barang yang belum terjual. Itu adalah <vocabulary>barang dagangan yang tidak terjual</vocabulary>. Itu adalah <vocabulary>stok yang tersisa</vocabulary>.

Ini adalah kata yang sangat spesifik yang terutama digunakan dalam konteks manajemen inventaris atau penjualan eceran.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya. Perhatikan bahwa ひん berubah menjadi ぴん.', 'Barang Dagangan yang Tidak Terjual, Stok Tersisa')
    RETURNING id INTO v_3844_barang_dagangan_yang_tidak_terjual;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '建前', 'perilaku-masyarakat', 27, 37, 'Kita semua <kanji>membangun</kanji> sesuatu di <kanji>depan</kanji> diri kita sendiri. Inilah sisi depan yang kami tunjukkan kepada dunia, <vocabulary>perilaku publik</vocabulary>, <vocabulary>sikap publik</vocabulary> dan <vocabulary>kebaikan sosial</vocabulary> yang menjaga keharmonisan.

建前 sangat penting di Jepang. Misalnya, Anda mungkin diundang ke rumah seorang kenalan karena sopan santun, dengan harapan Anda akan menolaknya (juga karena sopan santun!). Tuan rumah pesta mungkin mengatakan "bawa saja sendiri", tetapi para tamu tahu ini mungkin 建前, dan mengingat 建前 mereka sendiri, mereka tetap membawa hadiah kecil.  Orang juga bisa enggan mengatakan "tidak" pada sesuatu, seperti minum bersama rekan kerja saat memang ingin pulang, dan mungkin tidak menunjukkannya saat mendapati situasi tidak nyaman atau tidak menyenangkan. Jadi, Anda mungkin perlu menebak-nebak untuk mengintip di balik 建前 yang dibuat orang di hadapan mereka!', 'Pembacaannya cukup aneh. Ini sangat mirip dengan 建物 karena dibaca sebagai たて, yang mirip dengan kata 建てる meskipun て tidak muncul di sini. Jadi, Anda harus ingat bahwa bacaannya seperti 建てる tetapi て dimasukkan ke dalam kanji.', 'Perilaku Masyarakat, Sikap Publik, Kebaikan Sosial')
    RETURNING id INTO v_3996_perilaku_masyarakat;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '栄光', 'kejayaan', 27, 38, 'Anda telah <kanji>makmur</kanji> sedemikian rupa sehingga <kanji>cahaya</kanji> tampak bersinar dari setiap pori-pori Anda dalam aura emas. Dengan kekayaan, ketenaran, dan kekaguman yang telah Anda raih, Anda adalah perwujudan <vocabulary>kemuliaan</vocabulary>.

栄光 umumnya digunakan dalam ekspresi seperti 過去の栄光 (kejayaan masa lalu), mengacu pada pencapaian atau status besar yang dimiliki seseorang di masa lalu.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Kejayaan')
    RETURNING id INTO v_4014_kejayaan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '取り決め', 'pengaturan', 27, 39, 'Anda telah <kanji>mengambil</kanji>sebuah <kanji>keputusan</kanji> dari seseorang. Dengan melakukan ini, Anda telah membuat semacam <vocabulary>pengaturan</vocabulary> dengan mereka. Bayangkan diri Anda menarik keputusan ini dari orang tersebut. Mereka tidak ingin memberikannya kepada Anda, tetapi mereka membiarkan Anda menariknya keluar dari mereka. Ketika Anda telah menariknya keluar, Anda telah mencapai suatu kesepakatan, meskipun mereka juga telah menarik sebagian keputusan Anda.', 'Kata ini menggunakan bacaan kun''yomi untuk kedua kanjinya, yang mungkin sudah kamu duga karena ada hiragana yang menyembul di keduanya. Kata 取り berasal dari 取る dan 決め berasal dari 決める. Satukan semuanya dan apa yang Anda punya? Bibbidi bobbidi とりきめ!', 'Pengaturan, Perjanjian')
    RETURNING id INTO v_4074_pengaturan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '履歴書', 'melanjutkan', 27, 40, 'Pikirkan semua tempat penting <kanji>alas kaki</kanji> Anda dalam <kanji>sejarah</kanji>, lalu <kanji>tulis</kanji>. Sekarang Anda memiliki <vocabulary>resume</vocabulary> (atau <vocabulary>resume</vocabulary>, jika Anda ingin tampil mewah). Anda juga dapat menyebutnya sebagai <vocabulary>CV</vocabulary> Anda. Saya kira Anda dapat menganggap ini sebagai sejarah semua sekolah dan pekerjaan yang Anda tinggalkan.', 'Kata jukugo ini menggunakan bacaan on''yomi yang pernah Anda lihat sebelumnya, jadi sebaiknya Anda mulai saja.', 'Melanjutkan, Melanjutkan, CV')
    RETURNING id INTO v_4188_melanjutkan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '分解', 'perincian', 27, 41, 'Saat Anda <kanji>membagi</kanji> dan <kanji>melepaskan</kanji> sesuatu, Anda mengungkap hubungan di antara keduanya. Dengan kata lain, Anda sedang melakukan <vocabulary>breakdown</vocabulary> atau <vocabulary>dismantling</vocabulary> terhadap sesuatu.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Perincian, Pembongkaran, Pembongkaran, Penguraian')
    RETURNING id INTO v_4468_perincian;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '与える', 'untuk-memberi', 27, 42, 'Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanjinya sendiri berarti <kanji>memberi</kanji> sehingga versi kosakata kata kerjanya adalah <vocabulary>to give</vocabulary> atau <vocabulary>to grant</vocabulary>.

Ini adalah kata yang relatif formal yang umumnya digunakan dalam tulisan. Dalam percakapan, orang biasanya menggunakan kata-kata yang lebih santai seperti あげる atau くれる.', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi. Anda tidak belajar membaca dengan kanji ini, jadi inilah mnemonik untuk membantu Anda: 

Anda pergi <vocabulary>untuk memberikan</vocabulary> tulang kepada anjing Anda. <read>Atta</reading> (あた) nak, Sparky! <reading>Atta</reading> nak.', 'Untuk Memberi, Untuk Hibah, Untuk Memberikan')
    RETURNING id INTO v_4771_untuk_memberi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '景観', 'lanskap', 27, 43, 'Benar-benar <kanji>adegan</kanji>, <kanji>pemandangan</kanji> ini. Jadi yang Anda lihat adalah <vocabulary>lanskap</vocabulary>. Hal ini sering merujuk pada <vocabulary>pemandangan kota</vocabulary> atau <vocabulary>pemandangan</vocabulary> umum suatu area.

Ini adalah kata formal yang biasa digunakan dalam konteks perencanaan kota atau desain lingkungan.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Lanskap, Pemandangan kota, Pemandangan')
    RETURNING id INTO v_4785_lanskap;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '属する', 'menjadi-milik', 27, 44, 'Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanji itu sendiri berarti <kanji>milik</kanji> sehingga versi kosakata kata kerjanya adalah <vocabulary>to milik</vocabulary>.

属する adalah istilah formal untuk mendeskripsikan seseorang atau sesuatu yang termasuk atau menjadi bagian dari suatu kelompok, kategori, atau klasifikasi.', 'Bacaannya adalah yang Anda pelajari dengan kanji. Kanji ini <vocabulary>akan menjadi milik</vocabulary> Anda.', 'Menjadi Milik, Jatuh ke Bawah')
    RETURNING id INTO v_4810_menjadi_milik;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '年輩', 'orang-lanjut-usia', 27, 45, 'Selama <kanji>bertahun-tahun</kanji> dan bertahun-tahun, <kanji>rekan</kanji>mu selalu bersamamu, tapi sekarang mereka semua <vocabulary>lansia</vocabulary>.

Ini adalah versi 年配 yang kurang umum, tetapi terkadang Anda masih menemukannya.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Karena kosakata ini identik dengan 年配, maka bacaannya juga sama. Ingatlah bahwa はい berubah menjadi ぱい!', 'Orang Lanjut Usia, Orang Tua, Tua')
    RETURNING id INTO v_4833_orang_lanjut_usia;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '再来月', 'bulan-demi-bulan-berikutnya', 27, 46, '<kanji>bulan depan</kanji> (来月) tidak cukup... satu lagi bulan depan. Ayo lakukan <kanji>lagi</kanji>. Bulan itu adalah <vocabulary>bulan setelah berikutnya</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Bulan demi Bulan Berikutnya, Bulan Setelah Berikutnya')
    RETURNING id INTO v_4888_bulan_demi_bulan_berikutnya;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '再来年', 'tahun-demi-tahun-berikutnya', 27, 47, 'Anda memiliki <kanji>tahun depan</kanji> (来年), namun kemudian Anda memiliki <kanji>tahun lagi</kanji>. Itulah <vocabulary>tahun demi tahun</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Tahun demi Tahun Berikutnya, Tahun demi Tahun Berikutnya')
    RETURNING id INTO v_4889_tahun_demi_tahun_berikutnya;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '限定販売', 'penjualan-eksklusif', 27, 48, 'Ketika 限定 (batas) diterapkan pada 販売 (penjualan), itu semacam <vocabulary>penjualan eksklusif</vocabulary> atau <vocabulary>penawaran terbatas</vocabulary>.

限定販売 adalah strategi penjualan di mana perusahaan membatasi ketersediaan produknya di wilayah, toko, jangka waktu, atau anggota klub tertentu.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Penjualan Eksklusif, Penawaran Terbatas, Jual Secara Eksklusif')
    RETURNING id INTO v_4973_penjualan_eksklusif;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '腰抜け', 'pengecut', 27, 49, 'Anda mengetahui bahwa 抜ける berarti "rontok". Jika <kanji>pinggang</kanji>mu terlepas, kamu tidak bisa tetap berdiri. Anda harus meringkuk di tanah, seperti <vocabulary>pengecut</vocabulary>.', 'Kata ini menggunakan pembacaan kun''yomi untuk kedua kanji yang sudah Anda pelajari. Pergilah kamu!', 'Pengecut')
    RETURNING id INTO v_5000_pengecut;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '抜ける', 'untuk-keluar', 27, 50, 'Ingat bagaimana 抜く berarti "mengeluarkan sesuatu"? 抜ける mendeskripsikan sesuatu yang keluar dari tempatnya, jadi artinya <vocabulary>keluar</vocabulary> atau <vocabulary>jatuh</vocabulary>. 

Ini dapat digunakan untuk udara yang keluar dari balon, rambut rontok, atau halaman buku yang hilang. Ini juga berarti melewati suatu tempat atau meninggalkan grup tempat Anda menjadi bagiannya.

Untuk membedakan kata ini dari 抜く, bayangkan sekumpulan <reading>kangkung</reading> (ける) muncul dari tanah dengan sendirinya! Tidak ada yang mencabutnya, ia keluar dengan sendirinya.', 'Bacaannya sama dengan yang Anda pelajari dengan kanji. Juga, itu sama dengan 抜く.', 'Untuk Keluar, Jatuh')
    RETURNING id INTO v_5001_untuk_keluar;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '掛かる', 'untuk-digantung', 27, 51, 'Ingat bagaimana 掛ける adalah "menggantung sesuatu"? Nah, 掛かる berfokus pada fakta bahwa ada sesuatu yang digantung, tanpa menyebutkan siapa yang melakukannya. Jadi artinya <vocabulary>digantung</vocabulary>. Gunakan untuk mengatakan gambar digantung di dinding, misalnya. 

掛かる juga bisa berarti <vocabulary>tertangkap</vocabulary>, entah itu gambar yang terpancing ke dinding atau ikan yang kebetulan <vocabulary>tertangkap</vocabulary> di kail. 

Semua kegunaan ini bersifat intransitif, jadi Anda tidak memerlukan objek langsung. Petunjuknya adalah 掛かる diakhiri dengan okurigana yang berima dengan ある, dan kata kerja semacam itu cenderung intransitif.', 'Bacaannya sama dengan 掛ける, asal kalian tahu pasti kalian juga mengetahuinya.', 'Untuk Digantung, Menjadi ketagihan, Untuk Ditangkap')
    RETURNING id INTO v_5003_untuk_digantung;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '隠れる', 'untuk-menyembunyikan-diri-sendiri', 27, 52, '隠す adalah "menyembunyikan sesuatu". 隠れる adalah <vocabulary>menyembunyikan diri</vocabulary> atau hanya <vocabulary>menyembunyikan</vocabulary>. Anda mengetahui hal ini karena ketika seseorang bersembunyi, <reading>jarang</reading> (れる) orang lain dapat menemukannya. Mereka menganggap serius permainan petak umpet ini, lho!

Kata ini juga bisa berarti <kosakata>tersembunyi</vocabulary> karena terkadang subjeknya adalah benda mati, seperti dalam 月が雲に隠れる (bulan tersembunyi di awan).', 'Bacaannya sama dengan 隠す. Jadi selama Anda tahu, Anda juga mengetahui hal ini.', 'Untuk Menyembunyikan Diri Sendiri, Untuk Menyembunyikan, Menjadi Tersembunyi')
    RETURNING id INTO v_5004_untuk_menyembunyikan_diri_sendiri;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '値段', 'harga', 27, 53, '<kanji>Nilai</kanji> ada dalam berbagai <kanji>langkah</kanji>. Setiap langkah adalah jumlah yang berbeda, dan setiap jumlah adalah <vocabulary>price</vocabulary> atau <vocabulary>cost</vocabulary>.

値段 mengacu pada harga yang melekat pada sesuatu yang dapat Anda beli, seperti di toko atau pasar. Misalnya, Anda dapat menggunakan 値段 untuk menanyakan berapa harga suatu barang di toko atau ketika membicarakan harga makanan tertentu.', 'Bacaannya adalah bacaan kun''yomi untuk 値 ditambah bacaan on''yomi untuk 段. Gabungkan keduanya untuk mendapatkan bacaan di sini. Anda sudah mempelajari kedua bacaan ini, jadi ingatlah 値 adalah ね karena Anda <reading>meringkik</reading> (ね) ketika Anda melihat <vocabulary>harga</vocabulary> yang bagus.', 'Harga, Biaya')
    RETURNING id INTO v_5005_harga;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '健康', 'kesehatan', 27, 54, 'Anda sangat <kanji>sehat</kanji> sehingga membuat Anda <kanji>nyaman</kanji>. Itulah <vocabulary>kesehatan</vocabulary> Anda! Sangat menyehatkan, ayo!', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Kesehatan, Sehat')
    RETURNING id INTO v_5006_kesehatan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '健忘症', 'amnesia', 27, 55, 'Sedikit <kanji>sehat</kanji> dari <kanji>lupa</kanji>ting <kanji>gejala</kanji> berarti Anda mungkin menderita <vocabulary>amnesia</vocabulary>.

健忘症 sering merujuk pada <vocabulary>kehilangan ingatan</vocabulary> jangka pendek, baik seluruhnya atau sebagian, namun beberapa orang mungkin juga menggunakannya sebagai lelucon untuk <vocabulary>kelupaan</vocabulary> sehari-hari.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Amnesia, Hilang ingatan, Kelupaan')
    RETURNING id INTO v_5007_amnesia;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '就職', 'mencari-pekerjaan', 27, 56, '<kanji>Mendapatkan posisi</kanji> di <kanji>pekerjaan</kanji> berarti <vocabulary>mencari pekerjaan</vocabulary>.

就職 berarti <vocabulary>mendapatkan pekerjaan</vocabulary> atau <vocabulary>mulai bekerja</vocabulary>, biasanya setelah menyelesaikan sekolah. Hal ini mengacu pada memasuki dunia kerja secara formal, bukan sekadar mengambil pekerjaan paruh waktu. Anda akan sering mendengarnya dalam frasa seperti 就職活動 (berburu pekerjaan) atau 就職先 (tempat kerja).', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Mencari Pekerjaan, Mendapatkan Pekerjaan, Memulai Pekerjaan')
    RETURNING id INTO v_5010_mencari_pekerjaan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '就業', 'bekerja', 27, 57, 'Saat Anda <kanji>mendapatkan posisi</kanji> di suatu <kanji>bisnis</kanji>, Anda dianggap <vocabulary>bekerja</vocabulary>.

就業 adalah kata formal yang merujuk pada <vocabulary>sedang bekerja</vocabulary> dan <vocabulary>sedang bekerja</vocabulary> pada hari itu. Ini biasanya digunakan dalam kata majemuk kanji, seperti 就業時間 (jam kerja) dan 就業規則 (peraturan ketenagakerjaan).', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Bekerja, Menjadi Pekerjaan, Berada di Tempat Kerja')
    RETURNING id INTO v_5011_bekerja;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '退屈', 'membosankan', 27, 58, 'Saya <kanji>mundur</kanji>! Saya <kanji>menghasilkan</kanji>! Saya tidak tahan lagi, <vocabulary>membosankan</vocabulary> sekali. Bayangkan saja diri Anda menyerah pada apa pun yang Anda lakukan karena Anda sangat bosan. Anda tidak tahan. Anda harus mundur. Anda siap untuk menyerah. Booooooring.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Membosankan, Kebosanan, Membosankan')
    RETURNING id INTO v_5012_membosankan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '巻きずし', 'sushi-gulung', 27, 59, '巻く adalah "berguling". ずし adalah すし. Ini adalah <vocabulary>sushi gulung</vocabulary>.

Makizushi mengacu pada sushi gulung berbentuk silinder, yang biasanya disajikan dalam potongan seukuran gigitan. Kalau bentuknya kerucut disebut 手巻きずし (temakizushi).', 'Bacaannya berasal dari 巻く.', 'Sushi Gulung, Sushi gulung, Makizushi')
    RETURNING id INTO v_5015_sushi_gulung;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '春巻き', 'lumpia', 27, 60, '巻く adalah "menggulung." Jika Anda menggulung pegas, Anda mendapatkan roti gulung dengan rasa musim semi. Ini dikenal sebagai <vocabulary>lumpia</vocabulary>.', 'Bacaannya berasal dari 春 dan 巻く.', 'Lumpia')
    RETURNING id INTO v_5016_lumpia;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '頑張れ', 'lakukan-yang-terbaik', 27, 61, 'Ingat 頑張る berarti “bertekun” atau “melakukan yang terbaik”? Kali ini kamu menyuruh seseorang untuk 頑張る, jadi kata ini memiliki arti seperti <vocabulary>lakukan yang terbaik</vocabulary>, <vocabulary>bertahanlah</vocabulary>, atau <vocabulary>semoga sukses</vocabulary>! Omong-omong, 頑張れ, kamu!', 'Bacaannya berasal dari 頑張る. Hati-hati dengan rendaku di 張る! Anda pernah melihatnya sebelumnya, tapi inilah mnemonik jika Anda memerlukan penyegaran:

Ingat bagaimana ketika tiba waktunya untuk 頑張る (bertekun), kamu selalu berteriak "baa"? Tidak yakin kenapa, tapi ini adalah motivator yang bagus untuk Anda. Jadi, Anda melakukan hal yang sama ketika Anda menyemangati orang lain. Saat Anda memberi tahu mereka <vocabulary>Lakukan yang terbaik</vocabulary>, Anda juga berteriak <reading>baa</reading> (ば) pada mereka. Saat Anda memberi tahu mereka <vocabulary>Bertahanlah</vocabulary>, Anda berteriak "baa!" Jika hal itu membuat Anda bertahan, hal yang sama juga akan terjadi pada orang lain, bukan? Baa!', 'Lakukan yang Terbaik, Tetap bertahan, Semoga beruntung')
    RETURNING id INTO v_5017_lakukan_yang_terbaik;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '怒る', 'menjadi-marah', 27, 62, 'Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanjinya sendiri artinya <kanji>marah</kanji>, versi vocab verbanya adalah <vocabulary>marah</vocabulary>.', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi. Anda tidak mempelajarinya dengan kanji ini, jadi inilah mnemonik yang dapat membantu Anda: Anda mulai <vocabulary>marah</vocabulary> tentang sesuatu. Kebanyakan <baca>ok</reading>ra (おこ) ini. Rasanya tidak enak.', 'Menjadi Marah, Menjadi Gila')
    RETURNING id INTO v_5018_menjadi_marah;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '怒鳴る', 'untuk-berteriak', 27, 63, '<kanji>marah</kanji> <kanji>kicauan</kanji> adalah sejenis teriakan. Versi kata kerjanya adalah <vocabulary>berteriak</vocabulary> atau <vocabulary>berteriak</vocabulary>.

怒鳴る menyiratkan kemarahan, seperti yang bisa Anda ketahui dari kanji, jadi ini digunakan ketika seseorang berteriak atau berteriak untuk memarahi orang lain atau untuk mengekspresikan kemarahan atau frustrasi.', 'Yang ini agak rumit, karena menggunakan bacaan on''yomi yang Anda pelajari untuk 怒 dan bacaan kun''yomi untuk 鳴る, jadi ingatlah itu!', 'Untuk berteriak, Berteriak')
    RETURNING id INTO v_5019_untuk_berteriak;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '悩み', 'sebuah-kekhawatiran', 27, 64, 'Ini adalah versi kata benda dari <kanji>khawatir</kanji>, menjadikannya <vocabulary>kekhawatiran</vocabulary>, atau <vocabulary>masalah</vocabulary>.', 'Bacaannya adalah yang Anda pelajari dengan kanji. Bagus sekali, tidak perlu <vocabulary>khawatir</vocabulary> tentang hal itu.', 'Sebuah Kekhawatiran, Sebuah Masalah')
    RETURNING id INTO v_5020_sebuah_kekhawatiran;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '悩む', 'khawatir', 27, 65, 'Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanjinya sendiri berarti <kanji>khawatir</kanji> jadi versi kosakata kata kerjanya adalah <vocabulary>khawatir</vocabulary>.

悩む seringkali bersifat intransitif, seperti 彼はいつも悩んでいる (dia selalu khawatir). Tapi bisa juga bersifat transitif, dalam hal ini akan mengambil objek langsung, seperti 彼女のことを悩む (mengkhawatirkan dia).', 'Pembacaannya sama dengan yang Anda pelajari dengan kanji, jadi tidak perlu <vocabulary>khawatir</vocabulary> tentang hal itu.', 'Khawatir, Menjadi Bermasalah')
    RETURNING id INTO v_5021_khawatir;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '迷惑', 'masalah', 27, 66, 'Anda telah disesatkan<kanji>tersesat</kanji> dan Anda telah <kanji>disesatkan</kanji>. Benar-benar sebuah <vocabulary>masalah</vocabulary>, dan tentu saja merupakan<vocabulary>merepotkan</vocabulary> <vocabulary>ketidaknyamanan</vocabulary> semua ini.

迷惑 mengacu pada <kosa kata>gangguan</vocabulary> yang mengganggu orang lain, seperti memotong kuku kaki atau berbicara keras di telepon di depan umum.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Masalah, Sulit, Ketidaknyamanan, Gangguan')
    RETURNING id INTO v_5023_masalah;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '誘惑', 'bujukan', 27, 67, 'Anda <kanji>diundang</kanji>, namun Anda juga <kanji>disesatkan</kanji>. Ini adalah <vocabulary>rayuan</vocabulary> yang berbicara. Undangan yang salah arah bukanlah hal yang baik!

Kata ini juga diterjemahkan menjadi <vocabulary>godaan</vocabulary>, namun perlu diingat bahwa fokus 誘惑 lebih pada faktor eksternal yang membuat seseorang menyerah pada godaan.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Bujukan, Godaan')
    RETURNING id INTO v_5024_bujukan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '見抜く', 'untuk-melihat-sifat-asli-sesuatu', 27, 68, 'Anda tahu 抜く berarti "mengeluarkan sesuatu". Kapan pun Anda <kanji>melihat</kanji> sesuatu dan menarik sesuatu darinya, Anda dapat <vocabulary>melihat sifat asli sesuatu</vocabulary>. Anda dapat <vocabulary>melihat</vocabulary> hal-hal seperti situasi, kebohongan, dan orang.

見抜く sering kali menyarankan untuk mencari tahu sesuatu secara naluriah, dengan wawasan yang tajam atau persepsi yang tajam, terutama dalam hal memahami esensi atau sifat sebenarnya dari sesuatu.', 'Ini adalah bacaan 見る dan 抜く yang digabungkan.', 'Untuk Melihat Sifat Asli Sesuatu, Untuk Melihat Melalui, Untuk Mengetahui')
    RETURNING id INTO v_5025_untuk_melihat_sifat_asli_sesuatu;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '間抜け', 'bodoh', 27, 69, 'Anda mengetahui bahwa 抜ける berarti "rontok". Jika <kanji>interval waktu</kanji> tidak sesuai dengan keinginan Anda, Anda benar-benar diberi jarak. Anda tidak akan belajar apa pun dan Anda akan menjadi <vocabulary>idiot</vocabulary>.

間抜け bisa merujuk pada orang yang melakukan sesuatu yang bodoh dan tindakan bodoh itu sendiri. Kata ini sering digunakan untuk mengkritik perilaku <vocabulary>bodoh</vocabulary>.', 'Bacaannya berasal dari bacaan ま dari 間 dan dari 抜く.', 'Bodoh, Bodoh')
    RETURNING id INTO v_5026_bodoh;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '抜き出す', 'untuk-menarik-sesuatu-keluar', 27, 70, 'Anda tahu 抜く berarti "mengeluarkan sesuatu" dan 出す berarti "mengeluarkan", jadi tidak mengherankan jika kata ini juga berarti <vocabulary>mengeluarkan sesuatu</vocabulary>, atau <vocabulary>mengekstrak</vocabulary>.

Lebih khusus lagi, 抜き出す berarti menarik sesuatu keluar dari kumpulan sesuatu yang lebih besar. Misalnya, ini bisa berarti mengeluarkan satu tagihan dari dompet Anda, atau memilih data tertentu dari kumpulan data yang besar.', 'Bacaannya berasal dari 抜く dan 出す, digabungkan menjadi satu. Ketahuilah keduanya dan Anda akan dapat membaca kata ini juga.', 'Untuk Menarik Sesuatu Keluar, Untuk Mengekstrak')
    RETURNING id INTO v_5027_untuk_menarik_sesuatu_keluar;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '招待する', 'untuk-mengundang', 27, 71, 'Anda <kanji>memberi isyarat</kanji> seseorang untuk datang kepada Anda, tetapi kemudian Anda <kanji>menunggu</kanji>. Ini karena mereka tidak terlalu dekat dengan Anda, jadi isyarat Anda lebih seperti sebuah undangan. Itu sebabnya kata ini berarti <vocabulary>mengundang</vocabulary> .

招待する adalah kata formal untuk mengundang seseorang, khususnya ke acara atau tempat formal.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Untuk Mengundang')
    RETURNING id INTO v_5029_untuk_mengundang;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '手掛かり', 'petunjuk', 27, 72, 'Anda telah mengetahui bahwa 掛かる dapat berarti "terpikat". Jika Anda melakukan sesuatu yang bersifat fisik seperti memanjat dan <kanji>tangan</kanji> Anda mengait pada sesuatu, benda itu disebut <vocabulary>pegangan</vocabulary>.

Secara kiasan, ini juga bisa berarti <vocabulary>clue</vocabulary>, karena petunjuk adalah sesuatu yang Anda pegang, seperti pegangan, untuk membantu Anda maju dalam memecahkan kejahatan atau misteri. Penggunaan kiasan 手掛かり ini sebenarnya yang paling umum!', 'Pembacaannya adalah 手 ditambah 掛かる yang disatukan. Hati-hati dengan rendaku itu.', 'Petunjuk, Pegangan')
    RETURNING id INTO v_5030_petunjuk;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '昇進', 'promosi-pekerjaan', 27, 73, '<kanji>Naik</kanji> dan <kanji>maju</kanji>! Selamat, Anda naik dan maju dengan mendapatkan <vocabulary>promosi pekerjaan</vocabulary> baru.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Promosi Pekerjaan, Promosi')
    RETURNING id INTO v_5032_promosi_pekerjaan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '暇', 'waktu-luang', 27, 74, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.

暇 berarti <vocabulary>waktu luang</vocabulary> atau <vocabulary>waktu luang</vocabulary> yang Anda miliki ketika Anda <vocabulary>tidak sibuk</vocabulary> dengan pekerjaan, sekolah, atau kewajiban lainnya. Ini juga dapat menunjukkan periode lambat dalam bisnis atau saat Anda tidak melakukan apa-apa, sering kali menunjukkan rasa bosan.', 'Karena kata ini terdiri dari satu kanji, kemungkinan besar menggunakan bacaan kun''yomi. Anda tidak mempelajari bacaan ini, jadi inilah mnemonik untuk membantu Anda mengingat: 

Di <vocabulary>waktu luang</vocabulary> Anda suka minum <reading>hima</reading> (ひま), versi Zima yang tidak bermerek.', 'Waktu luang, Waktu Senggang, Tidak sibuk')
    RETURNING id INTO v_5033_waktu_luang;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '休暇', 'liburan', 27, 75, '<kanji>waktu luang</kanji> adalah <vocabulary>liburan</vocabulary> Anda. Ini adalah <vocabulary>liburan</vocabulary> Anda.

休暇 adalah kata yang relatif formal yang biasanya mengacu pada <kosakata>waktu istirahat</vocabulary> dari pekerjaan, mulai dari hari libur, liburan musiman, hingga cuti sementara.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Liburan, Hari libur, Waktu istirahat')
    RETURNING id INTO v_5034_liburan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '両替', 'uang-kembalian', 27, 76, 'Koin? Tagihan? <kanji>Keduanya</kanji> dapat <kanji>diganti</kanji>d jika Anda ingin <vocabulary>menukar uang</vocabulary> di <vocabulary>penukaran uang</vocabulary> ini. Hanya saja, jangan melakukan <vocabulary>penukaran mata uang</vocabulary> di bandara — tarifnya tidak terlalu bagus.

Anda mungkin akan paling sering melihat kata ini di arcade tempat Anda bisa pergi ke mesin 両替 dan mendapatkan koin untuk memenuhi kecanduan permainan derek Anda.', 'Pembacaan di sini agak aneh. Bukan hanya か (berubah menjadi が untuk rendaku), tapi menjadi がえ. Anggap saja jika kamu ingin menukarkan uang kembalian, akulah <reading>orang</reading> kamu (がえ).', 'Uang kembalian, Penukaran Uang, Penukaran mata uang')
    RETURNING id INTO v_5035_uang_kembalian;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '取り替える', 'untuk-mengganti', 27, 77, '<kanji>Ambil</kanji> dan <kanji>ganti</kanji> sesuatu. Yaitu <vocabulary>mengganti</vocabulary> sesuatu dengan sesuatu yang lain.

取り替える secara umum berarti <vocabulary>menukar</vocabulary> sesuatu dengan barang baru atau berbeda yang sejenis, seperti mengganti meteran gas lama dengan yang baru, atau bertukar buku dengan teman setelah Anda berdua membaca buku Anda sendiri.', 'Bacaannya adalah 取る dan 替える dijadikan satu. Jika Anda mengetahui kata-kata itu, Anda akan dapat membaca dan memahami kata ini juga.', 'Untuk Mengganti, Untuk Bertukar, Untuk Bertukar')
    RETURNING id INTO v_5036_untuk_mengganti;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '着替え', 'ganti-pakaian', 27, 78, 'Anda tahu bagaimana 替える adalah "menggantikan"? Nah, Anda mengganti apa yang <kanji>pakai</kanji>. Itu adalah <vocabulary>baju ganti</vocabulary>, atau <vocabulary>pakaian cadangan</vocabulary>.', 'Bacaannya adalah 着る dan 替える disatukan.か menjadi が.', 'Ganti Pakaian, Pakaian Cadangan')
    RETURNING id INTO v_5037_ganti_pakaian;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '究極', 'terakhir', 27, 79, 'Anda mencoba <kanji>meneliti</kanji> yang <kanji>ekstrim</kanji>. Jika kamu melakukannya, kamu akan bisa mengetahui senjata <vocabulary>pamungkas</vocabulary>. Hanya meneliti hal-hal yang aman di tengah-tengah tidak akan membuat Anda menjadi yang terbaik. Namun, penelitian ekstrem akan berhasil.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Terakhir')
    RETURNING id INTO v_5038_terakhir;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '南極', 'kutub-selatan', 27, 80, '<kanji>selatan</kanji><kanji>ekstrim</kanji> adalah <vocabulary>Kutub Selatan</vocabulary>, alias <vocabulary>Antartika</vocabulary>. Jaraknya sejauh mungkin ke selatan.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'kutub selatan, Daerah Kutub Selatan')
    RETURNING id INTO v_5041_kutub_selatan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '結構です', 'tidak-terima-kasih', 27, 81, '結構 adalah sesuatu seperti "baik" atau "baiklah". Ini sedikit lebih sopan. Anda dapat menggunakan ini untuk mengatakan <vocabulary>tidak, terima kasih</vocabulary> atau <vocabulary>Saya baik-baik saja</vocabulary> kepada seseorang yang mencoba menawarkan sesuatu kepada Anda.', 'Bacaannya berasal dari 結構.', 'Tidak terima kasih, Saya baik-baik saja')
    RETURNING id INTO v_5043_tidak_terima_kasih;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', 'お構いなく', 'jangan-pedulikan-aku', 27, 82, 'Ingat bagaimana 構う berarti "peduli"? Anda dapat mengubahnya menjadi お構いなく untuk dengan sopan memberi tahu seseorang agar tidak memedulikan Anda. Artinya, <vocabulary>jangan hiraukan saya</vocabulary>.

Bisa juga berarti <vocabulary>tanpa mempedulikan</vocabulary>, terutama ketika seseorang terus-menerus melakukan sesuatu tanpa mempedulikan orang lain, lingkungan sekitar, atau kondisi yang kurang menguntungkan.', 'Bacaannya berasal dari 構う, jadi jika Anda mengetahuinya, Anda pasti tahu ini!', 'Jangan pedulikan aku, Tanpa Memperhatikan')
    RETURNING id INTO v_5044_jangan_pedulikan_aku;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '大規模', 'skala-besar', 27, 83, 'Ingat bagaimana 規模 adalah <kanji>skala</kanji>? Ya, ini skala besar, yaitu dalam <vocabulary>skala besar</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Skala Besar')
    RETURNING id INTO v_5045_skala_besar;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '小規模', 'skala-kecil', 27, 84, '規模 adalah "skala". Ini adalah <kanji>kecil</kanji>, menjadikan <vocabulary>skala kecil</vocabulary> ini.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Skala Kecil')
    RETURNING id INTO v_5046_skala_kecil;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '階段', 'tangga', 27, 85, 'Untuk mencapai <kanji>lantai</kanji> berikutnya Anda harus naik satu <kanji>langkah</kanji>, lalu langkah lainnya, dan langkah lainnya… Ini adalah <vocabulary>tangga</vocabulary>. Kata yang Anda cari adalah tangga! Apakah kamu punya 階段 di rumahmu?', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Tangga, Tangga')
    RETURNING id INTO v_5047_tangga;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '段々', 'perlahan-lahan', 27, 86, '<kanji>Langkah</kanji> demi <kanji>langkah</kanji>. Jika Anda mengambil langkah demi langkah, Anda akan naik <vocabulary>secara bertahap</vocabulary>, mengambil <vocabulary>langkah</vocabulary>.

段々 sering digunakan untuk menggambarkan kemajuan bertahap. Namun terkadang Anda juga akan melihatnya digunakan untuk lahan bertingkat atau bangunan, karena bentuknya menyerupai tangga!', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Perlahan-lahan, Tangga')
    RETURNING id INTO v_5048_perlahan_lahan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '段階', 'panggung', 27, 87, 'Setiap kali Anda mengambil <kanji>langkah</kanji>, Anda mencapai <kanji>lantai</kanji> baru… <vocabulary>stage</vocabulary> baru! Kita berbicara tentang tahapan metaforis. Anda membuat segala macam kemajuan. Tahap pertama, tahap kedua. <vocabulary>fase</vocabulary> ketiga. Sobat, Anda berhasil melewati semua tahapan dan fase pembelajaran bahasa Jepang. Lanjutkan kerja baikmu!', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Panggung, Fase')
    RETURNING id INTO v_5049_panggung;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '第一段', 'langkah-pertama', 27, 88, '第一 berarti "yang pertama", dan 段 adalah <kanji>langkah</kanji>. Jadi, inilah <vocabulary>langkah pertama</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Langkah pertama, Langkah Pertama')
    RETURNING id INTO v_5050_langkah_pertama;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '濃い', 'padat', 27, 89, 'Ini adalah kanji tunggal dengan い di akhir, artinya mungkin merupakan kata sifat. Kanji berarti <kanji>padat</kanji>, dan ini juga bisa berarti <vocabulary>padat</vocabulary> atau <vocabulary>tebal</vocabulary> dalam beberapa konteks, seperti jika Anda mendeskripsikan kabut, atau bulu di tubuh! Secara umum, ini dapat digunakan untuk apa pun yang memiliki konsentrasi tinggi, jadi Anda dapat menggunakannya untuk hal-hal seperti warna <vocabulary>dalam</vocabulary>, atau kopi <vocabulary>strong</vocabulary> juga!', 'Hal <vocabulary>padat</vocabulary> apa yang bisa kamu pikirkan? Sebuah <membaca>子</membaca> (こ). Anak-anak begitu penuh dengan kegembiraan, Anda bisa melihat betapa padat, <vocabulary>tebal</vocabulary> dan <vocabulary>konsentrasi</vocabulary> kegembiraan itu.', 'Padat, Tebal, Dalam, Kuat')
    RETURNING id INTO v_5051_padat;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '濃度', 'kepadatan', 27, 90, 'Ketika sesuatu <kanji>padat</kanji> hingga <kanji>derajat</kanji> tertentu, yang Anda maksud adalah <vocabulary>density</vocabulary> atau <vocabulary>concentration</vocabulary> dari sesuatu.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Kepadatan, Konsentrasi')
    RETURNING id INTO v_5052_kepadatan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '〜症', 'sindroma', 27, 91, 'Beberapa <kanji>gejala</kanji> digabungkan untuk membentuk <vocabulary>sindrom</vocabulary>. Jika Anda melihat ini di akhir kata, Anda tahu itu berarti "sindrom ______", atau menunjukkan suatu kondisi kesehatan.  

〜症 digunakan dalam istilah medis untuk kondisi, gejala, atau sindrom kesehatan tertentu, seperti 熱中症 (sengatan panas) atau 認知症 (demensia).', 'Karena ini melekat pada sesuatu, ini diperlakukan seperti kata jukugo, jadi pembacaan on''yomi digunakan di sini.', 'Sindroma, Penyakit')
    RETURNING id INTO v_5053_sindroma;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '症状', 'gejala', 27, 92, '<kanji>gejala</kanji> <kanji>kondisi</kanji> Anda adalah <vocabulary>gejala</vocabulary> yang Anda miliki.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Gejala')
    RETURNING id INTO v_5054_gejala;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '不眠症', 'insomnia', 27, 93, '<kanji>tidak</kanji> <kanji>tidur</kanji> <kanji>gejala</kanji> menunjukkan Anda mempunyai kelainan yang menyebabkan tidak tidur. Itulah <vocabulary>insomnia</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Insomnia')
    RETURNING id INTO v_5055_insomnia;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '痛い', 'menyakitkan', 27, 94, 'Ini adalah kanji tunggal dengan い di akhir, artinya Anda tahu itu mungkin kata sifat. Apa bentuk kata sifat dari <kanji>pain</kanji>? <vocabulary>menyakitkan</vocabulary>. 

痛い umumnya digunakan untuk mengatakan bahwa ada bagian tubuh yang sakit atau terasa perih.', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi. Anda tidak belajar membaca dengan kanji ini, jadi inilah mnemonik untuk membantu Anda: <reading>eate</reading>r (いた) adalah seseorang yang makan. Tapi, si pemakan melukai mulutnya. Jadi sekarang <vocabulary>menyakitkan</vocabulary> untuk dimakan.', 'Menyakitkan, Sakit')
    RETURNING id INTO v_5056_menyakitkan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '眠い', 'mengantuk', 27, 95, 'Ini adalah kanji tunggal dengan い di akhir, artinya Anda tahu itu mungkin kata sifat. Apa bentuk kata sifat dari <kanji>tidur</kanji>? <vocabulary>mengantuk</vocabulary>.', 'Kamu <vocabulary>mengantuk</vocabulary> kamu bahkan tidak bisa mengingat <reading>nama</reading> (ねむ) kamu sendiri.', 'Mengantuk')
    RETURNING id INTO v_5058_mengantuk;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '睡眠', 'tidur', 27, 96, 'Merasa <kanji>mengantuk</kanji> dan seperti ingin <kanji>tidur</kanji>. Aku hanya ingin <vocabulary>tidur</vocabulary> saja.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Tidur')
    RETURNING id INTO v_5059_tidur;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '端', 'tepian', 27, 97, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna. Ini mengacu pada sisi literal, bukan figuratif.

端 mengacu pada <vocabulary>tepi</vocabulary> atau <vocabulary>end</vocabulary> sesuatu, seperti tepi meja, ujung jembatan, atau bahkan <vocabulary>sudut</vocabulary> halaman.', 'Karena kata ini terdiri dari satu kanji, kemungkinan besar menggunakan bacaan kun''yomi. Anda tidak mempelajari bacaan ini, jadi inilah mnemonik untuk membantu Anda mengingat: 

Jika Anda sedang <vocabulary>tepi</vocabulary>, makan saja <reading>hash</reading> (はし) coklat agar merasa lebih baik! Dan jika Anda pergi ke ujung dunia, kentang goreng mungkin akan membantu Anda sampai di sana juga. Coklat hash sangat berguna!', 'Tepian, Akhir, Sudut')
    RETURNING id INTO v_5060_tepian;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '先端', 'tip', 27, 98, '<kanji>sebelumnya</kanji> (atau <kanji>depan</kanji>) <kanji>tepi</kanji> adalah <vocabulary>ujung</vocabulary> dari sesuatu, seperti jari atau sumpit Anda. Ini juga merupakan kata yang digunakan untuk mendeskripsikan <vocabulary>terbaru</vocabulary> (teknologi, dll), karena merupakan <vocabulary>tercanggih</vocabulary>. Tipnya!', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Tip, Terbaru, Terdepan')
    RETURNING id INTO v_5061_tip;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '中途半端', 'setengah-selesai', 27, 99, 'Ambil <kanji>tengah</kanji> <kanji>rute</kanji>, <kanji>setengah</kanji> ke <kanji>tepi</kanji>. Anda tidak melakukan apa pun sepenuhnya. Hanya sampai ke tengah. Hanya sampai setengahnya. Tidak sampai ke tepi. Ini benar-benar <vocabulary>setengah selesai</vocabulary> dan <vocabulary>setengah-setengah</vocabulary> dari Anda.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.ぱ di akhir adalah satu-satunya bagian yang sulit di sini karena itu bukan bacaan umum (atau yang Anda pelajari sebelumnya) untuk kanji. Bayangkan saja <reading>Pa</reading> (ぱ) lama Anda, yang merupakan orang yang paling setengah-setengah yang Anda kenal.', 'Setengah Selesai, Setengah-setengah')
    RETURNING id INTO v_5062_setengah_selesai;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '極端', 'ekstrim', 27, 100, 'Di <kanji>ekstrim</kanji> <kanji>tepi</kanji>, yang merupakan <vocabulary>ekstrim</vocabulary>.

極端 berarti sesuatu yang dilakukan secara ekstrem tanpa moderasi, sehingga umumnya berkonotasi negatif.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Ekstrim')
    RETURNING id INTO v_5063_ekstrim;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '供給', 'memasok', 27, 101, 'Jika Anda bisa <kanji>menawarkan</kanji> <kanji>gaji</kanji> kepada seseorang, itu berarti Anda memiliki banyak <vocabulary>persediaan</vocabulary>. Semakin besar gaji yang dapat Anda tawarkan, mungkin semakin besar pula pasokan Anda. Itu sebabnya perusahaan-perusahaan teknologi besar dapat membayar dengan sangat baik — saya rasa, mereka memiliki persediaan pelanggan yang membayar atau pendapatan iklan yang tidak ada habisnya. 

供給 adalah kata yang agak formal yang biasanya Anda dengar dalam konteks ekonomi — seperti <vocabulary>memasok</vocabulary> barang, energi, atau makanan jika ada permintaan. Anda tidak akan menggunakannya untuk perlengkapan seni atau makanan yang Anda beli setiap hari.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Memasok, Memasok')
    RETURNING id INTO v_5066_memasok;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '昇給', 'kenaikan-gaji', 27, 102, 'Saat <kanji>naik</kanji> dalam <kanji>gaji</kanji> Anda mendapatkan <vocabulary>kenaikan gaji</vocabulary> di tempat kerja.

Perhatikan bahwa ini adalah kata yang relatif formal untuk membicarakan <vocabulary>mendapatkan kenaikan gaji</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Kenaikan Gaji, Mendapatkan Kenaikan gaji')
    RETURNING id INTO v_5068_kenaikan_gaji;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '締結する', 'untuk-menyimpulkan', 27, 103, 'Saat Anda <kanji>mengencangkan</kanji> dan <kanji>mengikat</kanji> menjadi satu, sulit untuk memisahkannya lagi. Itu sebabnya kata ini digunakan <vocabulary>untuk menyimpulkan</vocabulary> atau <vocabulary>untuk mengadakan</vocabulary> perjanjian penting, seperti perjanjian dan kontrak.

Perhatikan bahwa kata ini cukup formal, sehingga masuk akal, mengingat konteks biasanya digunakan.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Untuk menyimpulkan, Untuk Masuk Ke')
    RETURNING id INTO v_5069_untuk_menyimpulkan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '締める', 'untuk-mengencangkan', 27, 104, 'Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanjinya sendiri berarti <kanji>mengencangkan</kanji> sehingga versi kosakata kata kerjanya berarti <kosakata>mengencangkan</vocabulary>, seperti sekrup, atau mengikat, seperti dasi atau handuk.

締める juga bisa berarti <vocabulary>menutup</vocabulary> ketika digunakan untuk merujuk pada pidato atau acara lainnya. Dalam budaya Jepang, orang sering kali mengadakan situasi dengan beberapa tindakan bersama, seperti bertepuk tangan seirama untuk mengakhiri perayaan atau menikmati semangkuk ramen terakhir sebagai penutup malam. Anda menyebutnya 締める karena ini seperti Anda mengakhiri acara dan memberikan kesan penutupan.', 'Anda <vocabulary>mengencangkan</vocabulary> dan <vocabulary>mengikat</vocabulary> tawanan Anda, dan Anda menyadari bahwa Anda tidak ada hubungannya dengan itu. Kemudian Anda melihat seekor domba berdiri di dekatnya. Oke. Ambil <read>shee</reading>p (し), tarik wolnya, lalu ikat domba dan tawananmu di sekeliling pohon. Masalah terpecahkan!', 'Untuk Mengencangkan, Untuk Mengikat, Untuk Menyelesaikan')
    RETURNING id INTO v_5070_untuk_mengencangkan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '組織', 'organisasi', 27, 105, 'Sebuah <kanji>grup</kanji> yang <kanji>terjalin bersama</kanji>dengan sangat erat dengan hierarki dan segala hal lainnya sedikit lebih rumit daripada sebuah grup. Ini adalah <vocabulary>organisasi</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Anda tidak mempelajari bacaan itu untuk 組, jadi inilah mnemonik untuk membantu: 

Anda memulai sebuah <vocabulary>organisasi</vocabulary> untuk <reading>jadi</reading>ap (そ). Anda semua tentang sabun dan membuatnya lebih efektif melalui organisasi Anda. Jadi Anda menyebutnya Organisasi Sabun untuk Kemajuan Antiseptik, atau S.O.A.P. singkatnya.', 'Organisasi')
    RETURNING id INTO v_5071_organisasi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '織る', 'untuk-menenun', 27, 106, 'Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanjinya sendiri berarti <kanji>menenun</kanji> sehingga versi kosakata kata kerjanya adalah <vocabulary>menenun</vocabulary>.', 'Ketika kamu mempunyai <vocabulary>untuk menenun</vocabulary> satu-satunya hal yang dapat kamu tenun adalah bentuk <reading>O</reading> (お). Itu saja. Hanya O.', 'Untuk Menenun, Untuk Merajut')
    RETURNING id INTO v_5072_untuk_menenun;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '訪ねる', 'untuk-mengunjungi', 27, 107, 'Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanjinya sendiri berarti <kanji>mengunjungi</kanji>, jadi versi kosakata kata kerjanya adalah <vocabulary>mengunjungi</vocabulary>.

訪ねる adalah kata yang agak formal yang sering Anda temui dalam tulisan atau ucapan yang sangat sopan. Artinya mengunjungi suatu tempat atau seseorang dengan tujuan yang jelas. Anda tidak hanya mampir karena Anda berada di lingkungan tersebut — Anda punya alasan bagus untuk mengunjungi tempat atau orang tertentu!', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi. Anda tidak belajar membaca dengan kanji ini, jadi inilah mnemonik untuk membantu Anda: 

Anda ingin <vocabulary>mengunjungi</vocabulary> teman Anda <reading>Taz</reading> (たず), Tasmanian Devil. Dia adalah teman terbaikmu, jadi bayangkan mengunjunginya dan bersenang-senang dan berkata kamu akan mengunjunginya lagi.', 'Untuk Mengunjungi')
    RETURNING id INTO v_5079_untuk_mengunjungi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '訪問', 'kunjungan', 27, 108, 'Anda <kanji>mengunjungi</kanji> seseorang (atau di suatu tempat) dengan <kanji>pertanyaan</kanji> dalam pikiran. Ini adalah <vocabulary>sebuah kunjungan</vocabulary>. Setiap <vocabulary>kunjungan</vocabulary> yang tepat mencoba menjawab pertanyaan, bukan? Seperti, "Bagaimana kabarmu?" atau "Tempat apa ini?" Jika tidak ada pertanyaan di balik kunjungan Anda, Anda hanya berkeliaran saja.

訪問 adalah kata yang agak formal untuk mengunjungi suatu tempat atau mengunjungi seseorang, jadi Anda paling sering menemukannya dalam tulisan atau percakapan dalam konteks bisnis atau profesional.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Kunjungan, Mengunjungi')
    RETURNING id INTO v_5080_kunjungan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '貸す', 'untuk-meminjamkan', 27, 109, 'Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanjinya sendiri berarti <kanji>meminjamkan</kanji> sehingga versi kosakata kata kerjanya adalah <vocabulary>to lending</vocabulary>.', 'Izinkan saya <vocabulary>untuk meminjamkan</vocabulary> beberapa saran kepada Anda. Pembacaan yang Anda pelajari dari kanji dapat digunakan di sini.', 'Untuk Meminjamkan, Untuk Menyewakan')
    RETURNING id INTO v_5082_untuk_meminjamkan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '貸し切り', 'reservasi-pribadi', 27, 110, '<kanji>pinjaman</kanji>akan <kanji>dipotong</kanji> segera saat Anda membuat <vocabulary>reservasi pribadi</vocabulary>.

貸し切り berarti memesan tempat secara eksklusif, seperti menyewakan restoran untuk pesta ulang tahun atau menyewa bus, kapal pesiar, atau jet.', 'Ini adalah pembacaan 貸す dan 切る yang digabungkan. Ketahuilah kedua bacaan itu dan Anda juga mengetahui yang ini. Terkadang Anda akan melihat kata ini sebagai 貸切り atau 貸切 juga.', 'Reservasi Pribadi')
    RETURNING id INTO v_5083_reservasi_pribadi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '迫る', 'untuk-mendesak', 27, 111, 'Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanjinya sendiri berarti <kanji>mendesak</kanji> jadi versi kosakata kata kerjanya adalah <vocabulary>mendesak</vocabulary>.

Pada intinya, 迫る berarti <vocabulary>mendekati</vocabulary>, seperti tenggat waktu atau bahaya yang semakin dekat. Ide ini juga mencakup mendesak seseorang karena Anda merasa sangat dekat dengan mereka, <vocabulary>untuk mendorong</vocabulary> mereka agar bertindak.', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi. Anda tidak belajar membaca dengan kanji ini, jadi inilah mnemonik untuk membantu Anda: 

Apakah Anda lebih memilih <vocabulary>mendorong</vocabulary> orang untuk melakukan sesuatu, atau <vocabulary>menekan</vocabulary> mereka untuk melakukannya? Hal ini bergantung pada bagaimana Anda ingin <vocabulary>mendekati</vocabulary> mereka. Tapi itu semua <reading>sema</reading>ntics (せま) karena pada dasarnya sama.', 'Untuk Mendesak, Untuk Mendekati, Untuk Menekan')
    RETURNING id INTO v_5084_untuk_mendesak;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '圧迫', 'tekanan', 27, 112, '<kanji>tekanan</kanji> <kanji>didorong</kanji>kepada Anda. Itu adalah <vocabulary>tekanan</vocabulary>, begitu banyak tekanan!

圧迫 mengacu pada tekanan ketat yang disebabkan oleh kompresi kuat, atau tindakan menekan itu sendiri. Secara kiasan, ini juga bisa berarti <vocabulary>penyempitan</vocabulary>, seperti biaya sekolah yang membebani anggaran rumah tangga, atau <vocabulary>penindasan</vocabulary>, seperti orang-orang yang ditaklukkan.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.あつ berubah menjadi っ kecil, dan はく menjadi ぱく.', 'Tekanan, Penyempitan, Penindasan')
    RETURNING id INTO v_5085_tekanan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '迫害', 'penganiayaan', 27, 113, 'Seseorang memiliki <kanji>keinginan</kanji> untuk <kanji>merusak</kanji> sesuatu. Jika orang tersebut ingin menyakiti Anda, Anda mungkin akan menghadapi <vocabulary>penganiayaan</vocabulary>.

Seperti yang Anda duga, kata ini cukup formal.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Penganiayaan, Penindasan')
    RETURNING id INTO v_5086_penganiayaan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '切迫', 'urgensi', 27, 114, 'Kami <kanji>dipotong</kanji> hingga akhir, mencapai posisi <kanji>dorongan</kanji> di mana <vocabulary>urgensi</vocabulary> begitu kuat.

切迫 digunakan untuk menggambarkan ketegangan dalam situasi di mana batas waktu <vocabulary>mendekati</vocabulary>, atau untuk menggambarkan sesuatu yang buruk atau berbahaya sebagai <vocabulary>akan terjadi</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.せつ dari 切 disingkat menjadi っ kecil.はく menjadi ぱく.', 'Urgensi, Mendekat, Mendatang')
    RETURNING id INTO v_5087_urgensi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '迷う', 'tersesat', 27, 115, 'Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanjinya sendiri berarti <kanji>tersesat</kanji> dan versi kosakata kata kerjanya adalah <vocabulary>to go sesat</vocabulary> (karena sekarang Anda tidak sekadar "tersesat" bukan?). Anda dapat menggunakannya jika Anda <vocabulary>tersesat</vocabulary>. 

Selain tersesat secara fisik, 迷う juga merupakan saat ketika Anda bimbang di antara pilihan yang berbeda atau ragu untuk mengambil langkah tegas.', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi. Anda tidak belajar membaca dengan kanji ini, jadi inilah mnemonik untuk membantu Anda: 

Jika Anda ingin <vocabulary>menyesatkan</vocabulary>, salah satu cara untuk melakukannya adalah dengan makan terlalu banyak <reading>mayo</reading> (まよ). Secara pribadi, saya tidak bisa memikirkan cara yang lebih buruk untuk tersesat.', 'Tersesat, Untuk tersesat, Untuk Goyah, Untuk Ragu-ragu')
    RETURNING id INTO v_5088_tersesat;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '迷子', 'anak-hilang', 27, 116, 'Setelah <kanji>tersesat</kanji>, <kanji>anak</kanji> menjadi <vocabulary>anak hilang</vocabulary>. Mari bantu mereka menemukan jalan pulang.

Ingatlah bahwa 迷子 tidak hanya untuk anak hilang; ini berlaku untuk siapa saja yang tersesat, misalnya <vocabulary>orang hilang</vocabulary> atau <vocabulary>hewan liar</vocabulary>.', 'Bacaan 迷 merupakan bacaan yang luar biasa.ご berasal dari こ. Bayangkan まい seperti seorang anak yang bertanya: "Di mana ibu <membaca></membaca> (まい) saya???"', 'Anak Hilang, Orang Hilang, Hewan Tersesat')
    RETURNING id INTO v_5089_anak_hilang;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '迷路', 'labirin', 27, 117, '<kanji>jalan</kanji> di mana Anda <kanji>tersesat</kanji> adalah jalan yang berkelok-kelok dengan berbagai cara, menipu Anda dan membuat Anda tersesat. Ini adalah <vocabulary>labirin</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Labirin')
    RETURNING id INTO v_5090_labirin;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '迷信', 'takhyul', 27, 118, '<kanji>tersesat</kanji> pada apa yang Anda <kanji>yakini</kanji> dengan semua <vocabulary>takhayul</vocabulary> ini. Takhayul ini akan menyesatkan Anda, jangan percaya!', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Takhyul')
    RETURNING id INTO v_5091_takhyul;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '退院する', 'untuk-dipulangkan', 27, 119, 'Saatnya <kanji>mundur</kanji> dari <kanji>institusi</kanji>. Pada dasarnya, Anda meninggalkan suatu institusi, khususnya institusi seperti rumah sakit, rumah sakit jiwa, dll. Ketika Anda meninggalkan salah satu tempat tersebut, itu berarti Anda <vocabulary>akan dipulangkan</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Untuk Dipulangkan, Untuk Meninggalkan Rumah Sakit')
    RETURNING id INTO v_5093_untuk_dipulangkan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '早退', 'berangkat-lebih-awal', 27, 120, '<kanji>awal</kanji> <kanji>mundur</kanji> berarti Anda <vocabulary>pergi lebih awal</vocabulary>.

Perhatikan bahwa 早退 berarti meninggalkan sekolah atau bekerja lebih awal dari biasanya. Ini tidak digunakan untuk meninggalkan hangout atau pesta lebih awal.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Berangkat Lebih Awal')
    RETURNING id INTO v_5094_berangkat_lebih_awal;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '途中', 'dalam-perjalanan', 27, 121, 'Jika Anda berada di <kanji>rute</kanji>, tepat di <kanji>tengah</kanji>, Anda sedang <vocabulary>sedang dalam perjalanan</vocabulary> atau <vocabulary>sedang dalam rute</vocabulary>.

途中 juga dapat digunakan secara kiasan untuk mengatakan bahwa Anda <vocabulary>sedang</vocabulary> melakukan sesuatu atau sesuatu <vocabulary>setengah selesai</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Dalam perjalanan, Dalam perjalanan, Di Tengah, Setengah Selesai')
    RETURNING id INTO v_5095_dalam_perjalanan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '野郎', 'bajingan', 27, 122, 'Ugh, <kanji>bidang</kanji> <kanji>pria</kanji> itu. Dia yang terburuk. Selalu di ladang, membuat kami terlihat jelek, <vocabulary>bajingan</vocabulary>. Sebenarnya dia memang cowok yang seperti itu, tapi entah kenapa aku terkadang tidak menyukainya.

Meskipun 野郎 bisa menjadi istilah biasa untuk pria, biasanya digunakan untuk menghina atau menunjukkan kekesalan terhadap seseorang. Jadi sebaiknya hindari menggunakannya kecuali Anda benar-benar yakin tidak apa-apa!', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Bajingan')
    RETURNING id INTO v_5097_bajingan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '靴下', 'kaus-kaki', 27, 123, '<kanji>Sepatu</kanji> Anda memiliki sesuatu <kanji>di bawah</kanji> (atau di bawahnya) yang Anda kenakan. Itu adalah <vocabulary>kaus kaki</vocabulary>!', 'Kata ini menggunakan bacaan kun''yomi untuk kedua kanjinya. Anda sudah mempelajarinya, jadi Anda seharusnya bisa membaca kata ini juga!', 'kaus kaki')
    RETURNING id INTO v_5099_kaus_kaki;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '靴屋', 'toko-sepatu', 27, 124, '<kanji>sepatu</kanji> <kanji>toko</kanji> adalah toko yang menjual sepatu. Itu adalah <vocabulary>toko sepatu</vocabulary> atau <vocabulary>toko sepatu</vocabulary>.', 'Bacaannya adalah yang Anda pelajari dengan kanji.', 'Toko Sepatu, Toko Sepatu, Toko Pembuat Sepatu')
    RETURNING id INTO v_5100_toko_sepatu;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '長靴', 'sepatu-hujan', 27, 125, '<kanji>Panjang</kanji> <kanji>Sepatu</kanji> tidak panjang di bagian kaki (itu tidak masuk akal). Sebaliknya, bagian atasnya dibuat panjang agar tetap kering saat hujan. Ya, ini adalah <vocabulary>sepatu hujan</vocabulary>.

Dalam bahasa Jepang modern, 長靴 biasanya berarti sepatu bot hujan atau <vocabulary>sepatu bot karet</vocabulary>, dan terkadang <vocabulary>sepatu bot berkuda</vocabulary>. Namun jika yang Anda maksud adalah fashion boots atau boots secara umum, Anda bisa menyebutnya ブーツ.', 'Bacaannya agak aneh. Gandakan kun''yomi, jadi anggap saja 長い dan 靴 digabungkan. 靴 juga mendapat rendaku ke ぐつ. Berikut ini mnemonik untuk mengingatnya:

Anda menyebut <vocabulary>rain boots</vocabulary> gumboots, atau disingkat <reading>g''oots</reading> (ぐつ).', 'Sepatu Hujan, Sepatu Karet, Sepatu Berkuda')
    RETURNING id INTO v_5101_sepatu_hujan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '悪影響', 'pengaruh-buruk', 27, 126, '影響 adalah "pengaruh", jadi <kanji>pengaruh</kanji> jahat</kanji> adalah <vocabulary>pengaruh buruk</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Pengaruh Buruk, Dampak negatif, Efek Berbahaya')
    RETURNING id INTO v_5102_pengaruh_buruk;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '隠居する', 'untuk-pensiun', 27, 127, '隠居 adalah "pensiun". Jadikan itu sebagai kata kerja dan Anda harus <vocabulary>untuk pensiun</vocabulary>, <vocabulary>untuk pensiun</vocabulary>, atau <vocabulary>untuk memasuki masa pensiun</vocabulary>.

Seperti 隠居, kata ini menekankan kehidupan setelah pensiun, dan biasanya menyiratkan gaya hidup yang tenang, mungkin terpencil. Kata ini agak kuno, tetapi Anda masih akan melihatnya dalam tulisan modern.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Untuk Pensiun, Untuk Pensiun, Untuk Menuju Pensiun')
    RETURNING id INTO v_5103_untuk_pensiun;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '居酒屋', 'izakaya', 27, 128, '<kanji>hidup</kanji> <kanji>alkohol</kanji> <kanji>toko</kanji> adalah tempat yang menyajikan banyak minuman beralkohol. Di Jepang, tempat-tempat ini sering kali merupakan <vocabulary>izakaya</vocabulary>. Jika Anda belum mengetahui apa itu izakaya, Anda dapat menganggapnya sebagai <vocabulary>Japanese Style Bar</vocabulary> yang kasual.

Izakaya adalah sebuah pub atau kedai tempat Anda dapat menikmati minuman dan makanan bar lezat seperti yakitori dan gyoza, biasanya dengan harga yang cukup terjangkau. Bersulang!', 'Bacaan di sini semuanya kun''yomi, tapi baru kali ini kalian melihat bacaan さか untuk 酒, yang di sini rendaku berubah menjadi ざか. Jika Anda sudah mengetahui apa itu izakaya, Anda mungkin masih ingat bacaannya, tetapi jika belum, inilah mnemonik yang dapat membantu:

Saat kamu membutuhkan rekomendasi untuk <vocabulary>izakaya</vocabulary> yang bagus (<vocabulary>bar gaya Jepang</vocabulary>), kamu bertanya kepada temanmu <reading>Zacha</reading>ry (ざか). Dia tahu semua tempat terbaik. Anda bahkan memanggilnya Izakaya Zachary. Dia tidak menyukainya, tapi sayang sekali. Dalam benak Anda, Zachary akan selalu terikat dengan bar bergaya Jepang.', 'Izakaya, Bar Gaya Jepang')
    RETURNING id INTO v_5104_izakaya;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '比較する', 'untuk-membandingkan', 27, 129, '比較 adalah <vocabulary>perbandingan</vocabulary>. Jadi, versi kata kerjanya? Ini adalah <vocabulary>untuk membandingkan</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya. Akan banyak membantu untuk mengetahui kata 比較 juga.', 'Untuk Membandingkan')
    RETURNING id INTO v_5197_untuk_membandingkan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '浴衣', 'yukata', 27, 130, '<kanji>mandi</kanji> <kanji>pakaian</kanji> adalah pakaian yang Anda kenakan ke dan dari kamar mandi. Itu adalah <vocabulary>yukata</vocabulary> Anda.

浴衣 berasal dari jubah yang dikenakan saat mandi uap (itulah penjelasan kanjinya), namun saat ini orang kebanyakan memakainya di festival musim panas atau penginapan tradisional Jepang. Berhati-hatilah untuk tidak mencampuradukkan 浴衣 dengan 着物, yang jauh lebih formal dan rumit!', 'Pembacaan ini benar-benar pengecualian. Namun bacaannya berasal dari maknanya. Yukata = ゆかた.', 'Yukata')
    RETURNING id INTO v_6651_yukata;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '支度', 'persiapan', 27, 131, 'Untuk <kanji>mendukung</kanji> diri Anda hingga <kanji>derajat</kanji> tertentu, Anda memerlukan <vocabulary>persiapan</vocabulary>. Menata rambut dan riasan di pagi hari mendukung presentasi Anda sampai batas tertentu, bukan? 

Ini adalah kata lain untuk "persiapan" selain 準備 dan 用意. Semuanya serupa, namun 支度 biasanya digunakan dalam konteks pribadi, seperti 身支度 (berpakaian) atau 旅支度 (<vocabulary>bersiap-siap</vocabulary> untuk perjalanan).', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda belum mempelajari bacaan ini untuk 度, jadi inilah mnemonik untuk membantu Anda mengingatnya:

Untuk mengingat <vocabulary>persiapan</vocabulary> pagi hari, Anda menyiapkan papan <reading>tack</reading> (たく) yang dipenuhi pengingat di setiap ruangan di rumah Anda. Dengan catatan berguna yang ditempel di mana saja, <vocabulary>bersiap-siap</vocabulary> akan menjadi semudah sebelumnya.', 'Persiapan, Bersiap')
    RETURNING id INTO v_7578_persiapan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '居間', 'ruang-tamu', 27, 132, 'Ruangan yang menjadi <kanji>hidup</kanji> dalam <kanji>interval</kanji> adalah <vocabulary>ruang tamu</vocabulary> Anda, atau <vocabulary>ruang duduk</vocabulary> Anda. Anda tidak menghabiskan seluruh waktu Anda di sana, jadi kadang-kadang hanya bisa hidup.

Perhatikan bahwa 居間 agak kuno. Saat ini, kata yang lebih umum untuk ruang tamu adalah リビングルーム.', 'Bacaan kata ini sama-sama bacaan kun''yomi. Anda telah mempelajari kedua bacaan ini sekarang jadi Anda seharusnya bisa membacanya sendiri.', 'Ruang tamu, Ruang Duduk')
    RETURNING id INTO v_7603_ruang_tamu;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '屈む', 'untuk-membungkuk', 27, 133, 'Kata ini terdiri dari kanji dengan hiragana ditempelkan. Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanji itu sendiri berarti <kanji>hasil</kanji>, dan 屈む berarti <kosa kata>membungkuk</vocabulary> atau <vocabulary>berjongkok</vocabulary>. Lagi pula, membungkuk dan berjongkok itu seperti menyerah pada gravitasi, bukan?

屈む mengacu pada tindakan menundukkan kepala atau badan, sehingga bisa juga berarti <vocabulary>merunduk</vocabulary> atau <vocabulary>jongkok</vocabulary> tergantung pada konteksnya.', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi. Anda tidak belajar membaca dengan kanji ini, jadi inilah mnemonik untuk membantu Anda:

Anda selalu harus <vocabulary>membungkuk</vocabulary> untuk membuat <reading>mobil ga</reading>rage (かが) karena Anda terlalu tinggi. Anda harus <vocabulary>berjongkok</vocabulary> hanya untuk masuk ke dalam garasi mobil Anda! Semoga saja Anda dapat menemukan yang lebih besar suatu hari nanti.', 'Untuk Membungkuk, Untuk berjongkok, Untuk Bebek, Untuk Jongkok')
    RETURNING id INTO v_7656_untuk_membungkuk;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '引退', 'pensiun', 27, 134, 'Saat Anda <kanji>menarik</kanji> diri Anda kembali dan <kanji>mundur</kanji>, Anda <vocabulary>pensiun</vocabulary>. Pada titik tertentu dalam kehidupan setiap orang, Anda tidak dapat melakukannya lagi dan inilah waktunya untuk mengambil <vocabulary>pensiun</vocabulary> Anda.

Kata ini berfokus pada momen pensiun. Kata ini sering kali digunakan untuk berarti <vocabulary>menarik diri dari kehidupan publik</vocabulary>, ketika seseorang mengakhiri kariernya di bidang tertentu, seperti ketika selebriti atau atlet profesional pensiun. Ini juga dapat digunakan bagi siswa yang menghentikan kegiatan ekstrakurikuler seperti klub dan tim olahraga menjelang kelulusan, sering kali untuk belajar menghadapi ujian.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda belum mempelajari bacaan ini untuk 引, jadi inilah mnemonik untuk membantu Anda:

Sekarang setelah Anda <vocabulary>pensiun</vocabulary>, Anda memutuskan untuk pergi dan menghabiskan <vocabulary>pensiun</vocabulary> Anda di <reading>penginapan</reading> (いん). Penginapan adalah tempat yang bagus untuk menghabiskan masa pensiun Anda karena semuanya dilakukan untuk Anda, dan Anda bisa duduk dan bersantai!', 'Pensiun, Masa pensiun, Menarik Diri Dari Kehidupan Publik')
    RETURNING id INTO v_7716_pensiun;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '手渡す', 'untuk-menyerahkan', 27, 135, 'Ingat bagaimana Anda mengetahui bahwa 渡す berarti "menyerahkan?" Anda juga bisa menggunakan <kanji>tangan</kanji> <vocabulary>yang sebenarnya untuk menyerahkan</vocabulary> sesuatu!', 'Bacaan kata ini sama-sama bacaan kun''yomi. Anda mempelajarinya saat mempelajari kanji, jadi Anda seharusnya bisa membacanya sendiri.', 'Untuk Menyerahkan')
    RETURNING id INTO v_7770_untuk_menyerahkan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '憧れる', 'untuk-merindukan', 27, 136, 'Kata ini terdiri dari kanji dengan hiragana ditempelkan. Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanjinya sendiri berarti <kanji>merindukan</kanji>, jadi versi kata kerjanya adalah <vocabulary>merindukan</vocabulary> dan <vocabulary>merindukan</vocabulary>.', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi. Anda sudah mempelajari bacaan ini jadi Anda harus bisa membacanya!', 'Untuk Merindukan, Untuk Merindukan, Untuk Mengagumi, Untuk Tertarik Oleh')
    RETURNING id INTO v_8541_untuk_merindukan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '理屈', 'logika', 27, 137, '<kanji>Alasan</kanji> <kanji>hasil</kanji> ke <vocabulary>logika</vocabulary> dan <vocabulary>penalaran</vocabulary> lainnya.

理屈 bisa saja bersifat netral, namun sering kali memiliki konotasi negatif juga, seperti jika mengacu pada <vocabulary>argument</vocabulary> yang mengandung logika yang meragukan, dalih, atau terlalu bertele-tele.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Logika, Pemikiran, Argumen')
    RETURNING id INTO v_8682_logika;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '従える', 'untuk-ditemani-oleh', 27, 138, 'Kata ini terdiri dari kanji dengan hiragana ditempelkan. Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja.

Kanji itu sendiri berarti <kanji>taat</kanji>, tetapi arti kata kerjanya sedikit berbeda. Dalam sebagian besar konteks, sering kali kata tersebut hanya berarti <vocabulary>ditemani oleh</vocabulary> seseorang atau <vocabulary>didampingi</vocabulary>. Untuk membantu Anda mengingat hal ini, bayangkan setiap orang yang ditemani Anda mematuhi Anda! Anda semacam pemimpin mereka, jadi Anda pergi ke mana saja dengan mengikuti mereka.

従える adalah kata yang relatif formal yang sering digunakan dalam sastra.', 'Karena kata ini memiliki okurigana (hiragana yang melekat pada kanji), Anda tahu bahwa kemungkinan besar itu adalah bacaan kun''yomi. Anda sudah mempelajari bacaan ini dengan 従う. Ingat itu?', 'Untuk Ditemani Oleh, Untuk Dibawa, Untuk dibawa serta')
    RETURNING id INTO v_8940_untuk_ditemani_oleh;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', 'お任せ', 'menyerahkan-keputusan-kepada-orang-lain', 27, 139, 'Kata ini berasal dari 任せる, tetapi tanpa る di akhir, kata tersebut merupakan kata benda. Anda juga memiliki sebutan kehormatan お di awal, yang merupakan petunjuk bahwa Anda sedang memanggil orang lain. Jadi Anda mempercayakan sesuatu kepada orang yang Anda ajak bicara, dan ini berarti <vocabulary>menyerahkan keputusan kepada orang lain</vocabulary>. Kata ini banyak digunakan di restoran, yang artinya <vocabulary>pilihan koki</vocabulary> atau sekadar <vocabulary>omakase</vocabulary>. Dengan kata lain, Anda menyerahkan pilihan makanan kepada koki.

Kata ini juga dapat digunakan dalam konteks lain, misalnya jika Anda menyerahkan potongan rambut Anda kepada penata rambut Anda atau rangkaian bunga diserahkan kepada toko bunga, atau bahkan jika Anda mengikuti program yang direkomendasikan di pusat kebugaran.', 'Anda mempelajari bacaan ini dengan kata 任せる, jadi saya serahkan yang ini kepada Anda.', 'Menyerahkan Keputusan Kepada Orang Lain, Pilihan Koki, Omakase')
    RETURNING id INTO v_9073_menyerahkan_keputusan_kepada_orang_lain;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '客観的', 'tujuan', 27, 140, 'Ingat 主観的 yang berarti "subjektif"? Ini adalah kebalikannya. Dan karena pandangan <kanji>tamu</kanji> dan <kanji>pelanggan selalu benar secara obyektif, ini berarti <vocabulary>objektif</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Tujuan')
    RETURNING id INTO v_9289_tujuan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '統一', 'persatuan', 27, 141, '<kanji>bersatu</kanji> sebagai <kanji>satu</kanji> berarti mencapai <vocabulary>kesatuan</vocabulary> dan <vocabulary>keseragaman</vocabulary> total.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Namun, ini menggunakan pembacaan 一 yang belum Anda pelajari, jadi berikut ini mnemonik untuk membantu Anda:

Kamu terlalu sering memimpikan <vocabulary>unity</vocabulary> hingga <reading>memakan</reading> (いつ) jauh darimu. Pikiran untuk menyatukan negara menyibukkan Anda siang dan malam, namun Anda tidak bisa membiarkannya menguasai Anda.', 'Persatuan, Keseragaman')
    RETURNING id INTO v_9305_persatuan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '費やす', 'untuk-menghabiskan', 27, 142, 'Ubah <kanji>pengeluaran</kanji> menjadi kata kerja dan Anda akan mendapatkan <vocabulary>untuk dibelanjakan</vocabulary> atau <vocabulary>untuk dikeluarkan</vocabulary>. Atau, dalam beberapa kasus, <vocabulary>membuang</vocabulary>.

Selain mengeluarkan uang, 費やす dapat digunakan untuk merujuk pada pengeluaran sumber daya lain seperti waktu, tenaga, energi, dan emosi.', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi. Anda tidak mempelajari cara membaca dengan kanji, jadi inilah mnemonik untuk membantu Anda:

Saat Anda hendak <vocabulary>menghabiskan</vocabulary> sejumlah uang, terdengar suara familiar dari dalam dompet Anda: "<reading>TWEE</reading>T (つい)!" Itu adalah burung kecil yang tinggal di dalam dompet Anda dan dengan marah men-tweet Anda setiap kali Anda <vocabulary>membuang-buang</vocabulary> uang untuk sesuatu yang tidak Anda perlukan. Mungkin Anda harus lebih sering mendengarkan kicauan burung dari dalam dompet Anda.', 'Untuk Menghabiskan, Untuk Menghabiskan, Untuk Dibuang, Untuk Mengkonsumsi')
    RETURNING id INTO v_9307_untuk_menghabiskan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '応える', 'untuk-menanggapi', 27, 143, 'Kanji berarti <kanji>merespons</kanji>, dan ini juga merupakan <vocabulary>untuk merespons</vocabulary>, namun seringkali dalam arti mencoba <vocabulary>untuk memenuhi</vocabulary> atau <vocabulary>untuk memenuhi</vocabulary> suatu harapan, kebutuhan, atau perasaan lainnya.

Lihat kombinasi kata dan kalimat konteks umum kami untuk beberapa contoh penggunaan ini!', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi. Anda belum mempelajari bacaan ini, tetapi bacaan ini memiliki kesamaan bacaan (dan beberapa kesamaan makna) dengan 答える, jadi coba pikirkan kosakata tersebut dalam hubungannya dengan kosakata ini!', 'Untuk Menanggapi, Untuk Bertemu, Untuk Menghidupi')
    RETURNING id INTO v_9328_untuk_menanggapi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', 'お手拭き', 'lap-tangan', 27, 144, 'Anda memiliki <kanji>tangan</kanji> dan versi kata benda 拭く (menghapus). Gabungkan keduanya dan Anda akan mendapatkan <vocabulary>hand wipe</vocabulary>!

お手拭き mengacu pada <vocabulary>handuk tangan basah</vocabulary> atau <vocabulary>serbet basah</vocabulary> yang digunakan untuk membersihkan tangan, sering kali disediakan di restoran di Jepang sebelum makan.', 'Pembacaannya menggunakan semua kun''yomi. Jadi satukan saja kun''yomis dari 手 dan 拭き (dari kata kerja 拭く) dengan tanda kehormatan お dan Anda siap melakukannya!', 'Lap Tangan, Handuk Tangan Basah, serbet basah')
    RETURNING id INTO v_9340_lap_tangan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '更ける', 'tumbuh-terlambat', 27, 145, 'Kata ini terdiri dari kanji dengan hiragana ditempelkan. Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. 

Kanjinya sendiri berarti <kanji>memperbarui</kanji>, namun arti kata kerjanya sedikit berbeda. Artinya <vocabulary>berkembang terlambat</vocabulary>, <vocabulary>menjadi usang</vocabulary>, atau <vocabulary>memperdalam</vocabulary>. Anggap saja seperti ini: Anda hanya memperbarui hal-hal yang <em>bukan</em> baru, setelah waktu berlalu — langganan streaming Anda, SIM Anda, janji pernikahan Anda. Dan dengan setiap pembaruan Anda merasakan berlalunya waktu sedikit lebih dalam…

Anda akan lebih sering melihat 更ける dalam tulisan, biasanya mengacu pada malam atau musim gugur, seperti dalam 夜が更ける (malam semakin larut) dan 秋が更ける (musim gugur semakin dalam).', 'Karena kata ini memiliki okurigana (hiragana yang melekat pada kanji), Anda tahu bahwa kemungkinan besar itu adalah bacaan kun''yomi.

Ketika <vocabulary>berkembang terlambat</vocabulary>, Anda berubah menjadi <reading>foo</reading>l (ふ). Pernahkah Anda semakin mengigau dan cekikikan bersama teman-teman seiring berlalunya malam? Ya, Anda pernah ke sana. Semakin lama hal itu terjadi, semakin Anda menjadi bodoh. Apa sih energi aneh di tengah malam itu?', 'Tumbuh Terlambat, Untuk Dipakai, Untuk Memperdalam')
    RETURNING id INTO v_9373_tumbuh_terlambat;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '捕まえる', 'untuk-menangkap', 27, 146, 'Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanjinya sendiri berarti <kanji>menangkap</kanji>, jadi versi kosakata verbanya berarti <vocabulary>to catch</vocabulary> atau <vocabulary>to grab</vocabulary>.

捕まえる umumnya mengacu pada tindakan menangkap seseorang, hewan, atau benda secara fisik. Selain itu, Anda juga dapat menggunakannya untuk hal-hal seperti menarik perhatian server di restoran yang sibuk, melacak karyawan di toko besar untuk mengajukan pertanyaan, atau bahkan menangkap taksi yang lewat di jalan. Pada dasarnya, jika perlu usaha untuk menangkapnya, 捕まえる berhasil!', 'Seperti kebanyakan kata kerja, kata ini menggunakan bacaan kun''yomi. Anda tidak mempelajari cara membaca dengan kanji, jadi inilah mnemonik untuk membantu Anda:

Ketika polisi ingin <vocabulary>menangkap</vocabulary> seorang penjahat, mereka sering kali mengambil <read>dua mobil</reading> (つか). Dengan menggunakan dua mobil, polisi dapat mendatangi tersangka dari berbagai arah dan menghalangi jalan keluar mereka, sehingga lebih mudah ditangkap.', 'Untuk Menangkap, Untuk meraih')
    RETURNING id INTO v_9459_untuk_menangkap;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', 'お腹が空く', 'menjadi-lapar', 27, 147, 'Kata ini merupakan gabungan dari お腹 (perut) dan 空く (menjadi kosong). Saat perut Anda kosong, Anda akan <vocabulary>lapar</vocabulary>.

お腹が空く adalah ungkapan paling standar untuk mengatakan Anda lapar dalam bahasa Jepang. Biasanya Anda akan menggunakannya dalam bentuk lampau, seperti お腹が空いた. Dalam percakapan, menghilangkan が adalah hal yang biasa, jadi Anda juga akan mendengar orang mengatakan hal-hal seperti お腹空いた！ saat mereka keluar bersama teman atau keluarga dan ingin makan. Perhatikan bahwa sering kali ditulis dalam kana, baik seluruhnya atau sebagian, seperti お腹がすく.', 'お腹 menggunakan bacaan yang Anda pelajari dengan kosakata, tetapi 空く sebenarnya akan menggunakan bacaan baru di sini: すく. Berikut ini mnemonik untuk membantu Anda mengingatnya:

Ketika Anda mulai <vocabulary>lapar</vocabulary>, Anda mengancam akan <reading>menuntut</reading> (す) orang-orang di sekitar Anda karena tidak memberi Anda makan. Beberapa orang hanya merasa lapar, tetapi Anda menjadi sangat sadar hukum. Anda sudah berkali-kali mengancam akan menuntut teman-teman Anda karena mereka semua biasanya membawa granola batangan dan campuran makanan agar Anda tidak merasa lapar sedikit pun.', 'Menjadi Lapar')
    RETURNING id INTO v_9480_menjadi_lapar;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '図る', 'untuk-bekerja-menuju', 27, 148, 'Seperti biasa, Anda bisa menebak ini mungkin kata kerja karena bunyi う di akhir. Kanji berarti <kanji>diagram</kanji>, dan jika Anda mengalami kesulitan dalam membuat diagram, kemungkinan besar Anda sedang mencoba <vocabulary>untuk mencapai</vocabulary> suatu tujuan. Apa yang Anda coba <vocabulary>rencanakan</vocabulary>? Apakah diagram Anda membantu Anda <vocabulary>mengambil langkah-langkah</vocabulary> untuk mewujudkannya?

図る digunakan ketika seseorang mengambil langkah atau berupaya mencapai suatu tujuan, sering kali dalam arti formal atau strategis. Anda akan melihatnya dalam frasa seperti 解決を図る (berusaha menyelesaikan) atau 改善を図る (bertujuan untuk perbaikan).', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi. Anda tidak belajar membaca dengan kanji ini, jadi inilah mnemonik untuk membantu Anda:

Anda mencoba <vocabulary>untuk mencapai</vocabulary> suatu tujuan besar, jadi Anda menyewa <reading>hacker</reading> (はか) untuk membantu Anda. Apapun yang Anda mulai <vocabulary>rencanakan</vocabulary>, Anda jelas merasa tidak dapat melakukannya tanpa seorang hacker. Tidak ada yang menuduh Anda mencoba <vocabulary>mengambil langkah</vocabulary> sesuatu yang jahat, tapi… merekrut seorang hacker jelas tidak berarti "bekerja demi kebaikan sesama saya".

Alternatifnya, Anda dapat mengingatnya dengan kata 量る, yang bacaannya sama. Bayangkan saja Anda dengan cermat mengukur dan menimbang banyak hal saat Anda merencanakan bagaimana Anda akan berupaya mencapai tujuan Anda.', 'Untuk Bekerja Menuju, Untuk Merencanakan, Untuk Mengambil Langkah Menuju, Untuk Membidik')
    RETURNING id INTO v_9496_untuk_bekerja_menuju;

  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3844_barang_dagangan_yang_tidak_terjual, 'Barang Dagangan yang Tidak Terjual', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3844_barang_dagangan_yang_tidak_terjual, 'Stok Tersisa', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3996_perilaku_masyarakat, 'Perilaku Masyarakat', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3996_perilaku_masyarakat, 'Sikap Publik', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3996_perilaku_masyarakat, 'Kebaikan Sosial', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4014_kejayaan, 'Kejayaan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4074_pengaturan, 'Pengaturan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4074_pengaturan, 'Perjanjian', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4188_melanjutkan, 'Melanjutkan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4188_melanjutkan, 'Melanjutkan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4188_melanjutkan, 'CV', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4468_perincian, 'Perincian', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4468_perincian, 'Pembongkaran', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4468_perincian, 'Pembongkaran', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4468_perincian, 'Penguraian', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4771_untuk_memberi, 'Untuk Memberi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4771_untuk_memberi, 'Untuk Hibah', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4771_untuk_memberi, 'Untuk Memberikan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4785_lanskap, 'Lanskap', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4785_lanskap, 'Pemandangan kota', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4785_lanskap, 'Pemandangan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4810_menjadi_milik, 'Menjadi Milik', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4810_menjadi_milik, 'Jatuh ke Bawah', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4833_orang_lanjut_usia, 'Orang Lanjut Usia', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4833_orang_lanjut_usia, 'Orang Tua', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4833_orang_lanjut_usia, 'Tua', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4888_bulan_demi_bulan_berikutnya, 'Bulan demi Bulan Berikutnya', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4888_bulan_demi_bulan_berikutnya, 'Bulan Setelah Berikutnya', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4889_tahun_demi_tahun_berikutnya, 'Tahun demi Tahun Berikutnya', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4889_tahun_demi_tahun_berikutnya, 'Tahun demi Tahun Berikutnya', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4973_penjualan_eksklusif, 'Penjualan Eksklusif', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4973_penjualan_eksklusif, 'Penawaran Terbatas', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4973_penjualan_eksklusif, 'Jual Secara Eksklusif', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5000_pengecut, 'Pengecut', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5001_untuk_keluar, 'Untuk Keluar', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5001_untuk_keluar, 'Jatuh', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5003_untuk_digantung, 'Untuk Digantung', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5003_untuk_digantung, 'Menjadi ketagihan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5003_untuk_digantung, 'Untuk Ditangkap', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5004_untuk_menyembunyikan_diri_sendiri, 'Untuk Menyembunyikan Diri Sendiri', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5004_untuk_menyembunyikan_diri_sendiri, 'Untuk Menyembunyikan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5004_untuk_menyembunyikan_diri_sendiri, 'Menjadi Tersembunyi', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5005_harga, 'Harga', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5005_harga, 'Biaya', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5006_kesehatan, 'Kesehatan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5006_kesehatan, 'Sehat', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5007_amnesia, 'Amnesia', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5007_amnesia, 'Hilang ingatan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5007_amnesia, 'Kelupaan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5010_mencari_pekerjaan, 'Mencari Pekerjaan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5010_mencari_pekerjaan, 'Mendapatkan Pekerjaan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5010_mencari_pekerjaan, 'Memulai Pekerjaan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5011_bekerja, 'Bekerja', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5011_bekerja, 'Menjadi Pekerjaan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5011_bekerja, 'Berada di Tempat Kerja', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5012_membosankan, 'Membosankan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5012_membosankan, 'Kebosanan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5012_membosankan, 'Membosankan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5015_sushi_gulung, 'Sushi Gulung', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5015_sushi_gulung, 'Sushi gulung', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5015_sushi_gulung, 'Makizushi', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5016_lumpia, 'Lumpia', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5017_lakukan_yang_terbaik, 'Lakukan yang Terbaik', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5017_lakukan_yang_terbaik, 'Tetap bertahan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5017_lakukan_yang_terbaik, 'Semoga beruntung', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5018_menjadi_marah, 'Menjadi Marah', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5018_menjadi_marah, 'Menjadi Gila', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5019_untuk_berteriak, 'Untuk berteriak', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5019_untuk_berteriak, 'Berteriak', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5020_sebuah_kekhawatiran, 'Sebuah Kekhawatiran', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5020_sebuah_kekhawatiran, 'Sebuah Masalah', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5021_khawatir, 'Khawatir', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5021_khawatir, 'Menjadi Bermasalah', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5023_masalah, 'Masalah', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5023_masalah, 'Sulit', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5023_masalah, 'Ketidaknyamanan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5023_masalah, 'Gangguan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5024_bujukan, 'Bujukan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5024_bujukan, 'Godaan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5025_untuk_melihat_sifat_asli_sesuatu, 'Untuk Melihat Sifat Asli Sesuatu', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5025_untuk_melihat_sifat_asli_sesuatu, 'Untuk Melihat Melalui', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5025_untuk_melihat_sifat_asli_sesuatu, 'Untuk Mengetahui', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5026_bodoh, 'Bodoh', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5026_bodoh, 'Bodoh', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5027_untuk_menarik_sesuatu_keluar, 'Untuk Menarik Sesuatu Keluar', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5027_untuk_menarik_sesuatu_keluar, 'Untuk Mengekstrak', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5029_untuk_mengundang, 'Untuk Mengundang', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5030_petunjuk, 'Petunjuk', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5030_petunjuk, 'Pegangan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5032_promosi_pekerjaan, 'Promosi Pekerjaan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5032_promosi_pekerjaan, 'Promosi', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5033_waktu_luang, 'Waktu luang', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5033_waktu_luang, 'Waktu Senggang', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5033_waktu_luang, 'Tidak sibuk', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5034_liburan, 'Liburan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5034_liburan, 'Hari libur', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5034_liburan, 'Waktu istirahat', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5035_uang_kembalian, 'Uang kembalian', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5035_uang_kembalian, 'Penukaran Uang', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5035_uang_kembalian, 'Penukaran mata uang', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5036_untuk_mengganti, 'Untuk Mengganti', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5036_untuk_mengganti, 'Untuk Bertukar', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5036_untuk_mengganti, 'Untuk Bertukar', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5037_ganti_pakaian, 'Ganti Pakaian', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5037_ganti_pakaian, 'Pakaian Cadangan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5038_terakhir, 'Terakhir', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5041_kutub_selatan, 'kutub selatan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5041_kutub_selatan, 'Daerah Kutub Selatan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5043_tidak_terima_kasih, 'Tidak terima kasih', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5043_tidak_terima_kasih, 'Saya baik-baik saja', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5044_jangan_pedulikan_aku, 'Jangan pedulikan aku', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5044_jangan_pedulikan_aku, 'Tanpa Memperhatikan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5045_skala_besar, 'Skala Besar', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5046_skala_kecil, 'Skala Kecil', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5047_tangga, 'Tangga', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5047_tangga, 'Tangga', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5048_perlahan_lahan, 'Perlahan-lahan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5048_perlahan_lahan, 'Tangga', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5049_panggung, 'Panggung', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5049_panggung, 'Fase', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5050_langkah_pertama, 'Langkah pertama', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5050_langkah_pertama, 'Langkah Pertama', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5051_padat, 'Padat', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5051_padat, 'Tebal', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5051_padat, 'Dalam', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5051_padat, 'Kuat', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5052_kepadatan, 'Kepadatan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5052_kepadatan, 'Konsentrasi', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5053_sindroma, 'Sindroma', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5053_sindroma, 'Penyakit', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5054_gejala, 'Gejala', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5055_insomnia, 'Insomnia', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5056_menyakitkan, 'Menyakitkan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5056_menyakitkan, 'Sakit', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5058_mengantuk, 'Mengantuk', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5059_tidur, 'Tidur', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5060_tepian, 'Tepian', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5060_tepian, 'Akhir', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5060_tepian, 'Sudut', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5061_tip, 'Tip', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5061_tip, 'Terbaru', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5061_tip, 'Terdepan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5062_setengah_selesai, 'Setengah Selesai', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5062_setengah_selesai, 'Setengah-setengah', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5063_ekstrim, 'Ekstrim', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5066_memasok, 'Memasok', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5066_memasok, 'Memasok', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5068_kenaikan_gaji, 'Kenaikan Gaji', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5068_kenaikan_gaji, 'Mendapatkan Kenaikan gaji', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5069_untuk_menyimpulkan, 'Untuk menyimpulkan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5069_untuk_menyimpulkan, 'Untuk Masuk Ke', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5070_untuk_mengencangkan, 'Untuk Mengencangkan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5070_untuk_mengencangkan, 'Untuk Mengikat', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5070_untuk_mengencangkan, 'Untuk Menyelesaikan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5071_organisasi, 'Organisasi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5072_untuk_menenun, 'Untuk Menenun', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5072_untuk_menenun, 'Untuk Merajut', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5079_untuk_mengunjungi, 'Untuk Mengunjungi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5080_kunjungan, 'Kunjungan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5080_kunjungan, 'Mengunjungi', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5082_untuk_meminjamkan, 'Untuk Meminjamkan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5082_untuk_meminjamkan, 'Untuk Menyewakan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5083_reservasi_pribadi, 'Reservasi Pribadi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5084_untuk_mendesak, 'Untuk Mendesak', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5084_untuk_mendesak, 'Untuk Mendekati', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5084_untuk_mendesak, 'Untuk Menekan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5085_tekanan, 'Tekanan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5085_tekanan, 'Penyempitan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5085_tekanan, 'Penindasan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5086_penganiayaan, 'Penganiayaan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5086_penganiayaan, 'Penindasan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5087_urgensi, 'Urgensi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5087_urgensi, 'Mendekat', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5087_urgensi, 'Mendatang', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5088_tersesat, 'Tersesat', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5088_tersesat, 'Untuk tersesat', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5088_tersesat, 'Untuk Goyah', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5088_tersesat, 'Untuk Ragu-ragu', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5089_anak_hilang, 'Anak Hilang', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5089_anak_hilang, 'Orang Hilang', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5089_anak_hilang, 'Hewan Tersesat', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5090_labirin, 'Labirin', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5091_takhyul, 'Takhyul', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5093_untuk_dipulangkan, 'Untuk Dipulangkan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5093_untuk_dipulangkan, 'Untuk Meninggalkan Rumah Sakit', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5094_berangkat_lebih_awal, 'Berangkat Lebih Awal', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5095_dalam_perjalanan, 'Dalam perjalanan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5095_dalam_perjalanan, 'Dalam perjalanan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5095_dalam_perjalanan, 'Di Tengah', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5095_dalam_perjalanan, 'Setengah Selesai', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5097_bajingan, 'Bajingan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5099_kaus_kaki, 'kaus kaki', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5100_toko_sepatu, 'Toko Sepatu', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5100_toko_sepatu, 'Toko Sepatu', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5100_toko_sepatu, 'Toko Pembuat Sepatu', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5101_sepatu_hujan, 'Sepatu Hujan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5101_sepatu_hujan, 'Sepatu Karet', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5101_sepatu_hujan, 'Sepatu Berkuda', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5102_pengaruh_buruk, 'Pengaruh Buruk', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5102_pengaruh_buruk, 'Dampak negatif', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5102_pengaruh_buruk, 'Efek Berbahaya', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5103_untuk_pensiun, 'Untuk Pensiun', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5103_untuk_pensiun, 'Untuk Pensiun', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5103_untuk_pensiun, 'Untuk Menuju Pensiun', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5104_izakaya, 'Izakaya', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5104_izakaya, 'Bar Gaya Jepang', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5197_untuk_membandingkan, 'Untuk Membandingkan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6651_yukata, 'Yukata', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7578_persiapan, 'Persiapan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7578_persiapan, 'Bersiap', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7603_ruang_tamu, 'Ruang tamu', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7603_ruang_tamu, 'Ruang Duduk', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7656_untuk_membungkuk, 'Untuk Membungkuk', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7656_untuk_membungkuk, 'Untuk berjongkok', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7656_untuk_membungkuk, 'Untuk Bebek', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7656_untuk_membungkuk, 'Untuk Jongkok', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7716_pensiun, 'Pensiun', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7716_pensiun, 'Masa pensiun', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7716_pensiun, 'Menarik Diri Dari Kehidupan Publik', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7770_untuk_menyerahkan, 'Untuk Menyerahkan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8541_untuk_merindukan, 'Untuk Merindukan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8541_untuk_merindukan, 'Untuk Merindukan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8541_untuk_merindukan, 'Untuk Mengagumi', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8541_untuk_merindukan, 'Untuk Tertarik Oleh', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8682_logika, 'Logika', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8682_logika, 'Pemikiran', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8682_logika, 'Argumen', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8940_untuk_ditemani_oleh, 'Untuk Ditemani Oleh', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8940_untuk_ditemani_oleh, 'Untuk Dibawa', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8940_untuk_ditemani_oleh, 'Untuk dibawa serta', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9073_menyerahkan_keputusan_kepada_orang_lain, 'Menyerahkan Keputusan Kepada Orang Lain', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9073_menyerahkan_keputusan_kepada_orang_lain, 'Pilihan Koki', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9073_menyerahkan_keputusan_kepada_orang_lain, 'Omakase', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9289_tujuan, 'Tujuan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9305_persatuan, 'Persatuan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9305_persatuan, 'Keseragaman', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9307_untuk_menghabiskan, 'Untuk Menghabiskan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9307_untuk_menghabiskan, 'Untuk Menghabiskan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9307_untuk_menghabiskan, 'Untuk Dibuang', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9307_untuk_menghabiskan, 'Untuk Mengkonsumsi', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9328_untuk_menanggapi, 'Untuk Menanggapi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9328_untuk_menanggapi, 'Untuk Bertemu', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9328_untuk_menanggapi, 'Untuk Menghidupi', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9340_lap_tangan, 'Lap Tangan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9340_lap_tangan, 'Handuk Tangan Basah', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9340_lap_tangan, 'serbet basah', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9373_tumbuh_terlambat, 'Tumbuh Terlambat', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9373_tumbuh_terlambat, 'Untuk Dipakai', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9373_tumbuh_terlambat, 'Untuk Memperdalam', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9459_untuk_menangkap, 'Untuk Menangkap', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9459_untuk_menangkap, 'Untuk meraih', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9480_menjadi_lapar, 'Menjadi Lapar', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9496_untuk_bekerja_menuju, 'Untuk Bekerja Menuju', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9496_untuk_bekerja_menuju, 'Untuk Merencanakan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9496_untuk_bekerja_menuju, 'Untuk Mengambil Langkah Menuju', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9496_untuk_bekerja_menuju, 'Untuk Membidik', false, true);

  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3844_barang_dagangan_yang_tidak_terjual, 'ざんぴん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3996_perilaku_masyarakat, 'たてまえ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4014_kejayaan, 'えいこう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4074_pengaturan, 'とりきめ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4188_melanjutkan, 'りれきしょ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4468_perincian, 'ぶんかい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4771_untuk_memberi, 'あたえる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4785_lanskap, 'けいかん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4810_menjadi_milik, 'ぞくする', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4833_orang_lanjut_usia, 'ねんぱい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4888_bulan_demi_bulan_berikutnya, 'さらいげつ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4889_tahun_demi_tahun_berikutnya, 'さらいねん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4973_penjualan_eksklusif, 'げんていはんばい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5000_pengecut, 'こしぬけ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5001_untuk_keluar, 'ぬける', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5003_untuk_digantung, 'かかる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5004_untuk_menyembunyikan_diri_sendiri, 'かくれる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5005_harga, 'ねだん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5006_kesehatan, 'けんこう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5007_amnesia, 'けんぼうしょう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5010_mencari_pekerjaan, 'しゅうしょく', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5011_bekerja, 'しゅうぎょう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5012_membosankan, 'たいくつ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5015_sushi_gulung, 'まきずし', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5016_lumpia, 'はるまき', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5017_lakukan_yang_terbaik, 'がんばれ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5018_menjadi_marah, 'おこる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5019_untuk_berteriak, 'どなる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5020_sebuah_kekhawatiran, 'なやみ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5021_khawatir, 'なやむ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5023_masalah, 'めいわく', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5024_bujukan, 'ゆうわく', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5025_untuk_melihat_sifat_asli_sesuatu, 'みぬく', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5026_bodoh, 'まぬけ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5027_untuk_menarik_sesuatu_keluar, 'ぬきだす', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5029_untuk_mengundang, 'しょうたいする', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5030_petunjuk, 'てがかり', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5032_promosi_pekerjaan, 'しょうしん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5033_waktu_luang, 'ひま', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5034_liburan, 'きゅうか', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5035_uang_kembalian, 'りょうがえ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5036_untuk_mengganti, 'とりかえる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5037_ganti_pakaian, 'きがえ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5038_terakhir, 'きゅうきょく', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5041_kutub_selatan, 'なんきょく', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5043_tidak_terima_kasih, 'けっこうです', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5044_jangan_pedulikan_aku, 'おかまいなく', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5045_skala_besar, 'だいきぼ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5046_skala_kecil, 'しょうきぼ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5047_tangga, 'かいだん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5048_perlahan_lahan, 'だんだん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5049_panggung, 'だんかい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5050_langkah_pertama, 'だいいちだん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5051_padat, 'こい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5052_kepadatan, 'のうど', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5053_sindroma, 'しょう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5054_gejala, 'しょうじょう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5055_insomnia, 'ふみんしょう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5056_menyakitkan, 'いたい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5058_mengantuk, 'ねむい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5059_tidur, 'すいみん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5060_tepian, 'はし', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5061_tip, 'せんたん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5062_setengah_selesai, 'ちゅうとはんぱ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5063_ekstrim, 'きょくたん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5066_memasok, 'きょうきゅう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5068_kenaikan_gaji, 'しょうきゅう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5069_untuk_menyimpulkan, 'ていけつする', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5070_untuk_mengencangkan, 'しめる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5071_organisasi, 'そしき', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5072_untuk_menenun, 'おる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5079_untuk_mengunjungi, 'たずねる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5080_kunjungan, 'ほうもん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5082_untuk_meminjamkan, 'かす', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5083_reservasi_pribadi, 'かしきり', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5084_untuk_mendesak, 'せまる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5085_tekanan, 'あっぱく', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5086_penganiayaan, 'はくがい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5087_urgensi, 'せっぱく', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5088_tersesat, 'まよう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5089_anak_hilang, 'まいご', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5090_labirin, 'めいろ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5091_takhyul, 'めいしん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5093_untuk_dipulangkan, 'たいいんする', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5094_berangkat_lebih_awal, 'そうたい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5095_dalam_perjalanan, 'とちゅう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5097_bajingan, 'やろう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5099_kaus_kaki, 'くつした', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5100_toko_sepatu, 'くつや', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5101_sepatu_hujan, 'ながぐつ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5102_pengaruh_buruk, 'あくえいきょう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5103_untuk_pensiun, 'いんきょする', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5104_izakaya, 'いざかや', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5197_untuk_membandingkan, 'ひかくする', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6651_yukata, 'ゆかた', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_7578_persiapan, 'したく', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_7603_ruang_tamu, 'いま', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_7656_untuk_membungkuk, 'かがむ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_7716_pensiun, 'いんたい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_7770_untuk_menyerahkan, 'てわたす', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_8541_untuk_merindukan, 'あこがれる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_8682_logika, 'りくつ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_8940_untuk_ditemani_oleh, 'したがえる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_9073_menyerahkan_keputusan_kepada_orang_lain, 'おまかせ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_9289_tujuan, 'きゃっかんてき', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_9305_persatuan, 'とういつ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_9307_untuk_menghabiskan, 'ついやす', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_9328_untuk_menanggapi, 'こたえる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_9340_lap_tangan, 'おてふき', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_9373_tumbuh_terlambat, 'ふける', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_9459_untuk_menangkap, 'つかまえる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_9480_menjadi_lapar, 'おなかがすく', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_9496_untuk_bekerja_menuju, 'はかる', NULL, true, true);

  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3844_barang_dagangan_yang_tidak_terjual, '残品はこちらで引き取るので、こちらのお店で販売させてもらえませんか。  ', 'Anda dapat mengembalikan stok yang belum terjual, jadi maukah Anda mengizinkan kami menjual produk kami di sini?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3844_barang_dagangan_yang_tidak_terjual, '今夜店を出発する前に残品を数えておきましょう。', 'Sebelum kita meninggalkan toko malam ini, mari kita hitung sisa stoknya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3844_barang_dagangan_yang_tidak_terjual, '残品は半額で処分しました。', 'Kami menjual sisa barang dengan setengah harga.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3996_perilaku_masyarakat, 'ビエトは本音と建前を使い分けるのが上手い。', 'Viet pandai memisahkan diri publik dan pribadinya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3996_perilaku_masyarakat, 'それは建前上、そういうことにしてるだけですよ。', 'Mereka hanya berpura-pura demikian demi penampilan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3996_perilaku_masyarakat, 'よく「本音と建前」は日本独特の文化だと言われますが、世界中どこの国にもあるものですよ。', 'Sering dikatakan bahwa "kontras antara perasaan pribadi dan perilaku publik" adalah budaya unik Jepang, namun hal ini ditemukan di setiap negara di dunia.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4014_kejayaan, '今回、勝利の栄光を手にしたのは、トーフグチームです！', 'Tim yang meraih kemenangan gemilang kali ini adalah Tim Tofugu!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4014_kejayaan, 'あの芸人のネタ、『M1グランプリ』の栄光を勝ち取ったとは思えないクオリティだな。', 'Kualitas materi komedian tersebut membuat sulit dipercaya mereka memenangkan Grand Prix M-1.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4014_kejayaan, '「昔の栄光を語るヤクザほどミジメな者はない」ってビエトが言ってたよ。', 'Viet berkata, "Tidak ada yang lebih menyedihkan daripada seorang yakuza yang berbicara tentang kejayaan masa lalu."');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4074_pengaturan, 'ちゃんと取り決めを守ってもらえるのか、不安です。', 'Saya khawatir apakah mereka akan mematuhi perjanjian tersebut.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4074_pengaturan, 'ルームメイトと生活上の取り決めをしておいた方がいいよ。', 'Anda harus membuat pengaturan tempat tinggal dengan teman sekamar Anda.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4074_pengaturan, 'サーモンさんと我が社で取り交わした契約によると、残念なことに彼女が競合他社のCMに出演することについて我々は何の取り決めも行っておりませんでした。', 'Sesuai kontrak antara perusahaan kami dan Ms. Salmon, sangat disayangkan, namun kami tidak membuat kesepakatan mengenai kemunculannya di iklan pesaing kami.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4188_melanjutkan, '日本ではバイトの履歴書にも写真が必要です。', 'Di Jepang, foto diperlukan bahkan untuk resume pekerjaan paruh waktu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4188_melanjutkan, '履歴書にウソを書いてはいけません。', 'Anda tidak boleh berbohong pada resume Anda.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4188_melanjutkan, '今時、履歴書が手書きじゃないとダメな会社なんてあるんだ。', 'Saya tidak berpikir akan ada perusahaan mana pun di zaman sekarang ini yang mengharuskan resume ditulis tangan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4188_melanjutkan, '上司のデスクの上に履歴書があった。知らない名前だった。だが、写真は私だった。', 'Ada resume di meja bos saya. Nama yang tertera di sana tidak dikenal. Tapi foto itu adalah aku.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4468_perincian, 'アルコールの分解を進めてくれます。', 'Ini mendorong pemecahan alkohol.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4468_perincian, '小さいころ、よく時計を分解してあそんでいました。', 'Ketika saya masih kecil, saya akan bermain-main dengan jam tangan dengan cara membongkarnya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4468_perincian, 'お父さん、電気分解の分解効率を向上させることはできる？', 'Ayah, bisakah kamu meningkatkan efisiensi penguraian elektrolisis?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4771_untuk_memberi, 'その本は、多くの人の人生に影響を与えました。', 'Buku itu telah mempengaruhi kehidupan banyak orang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4771_untuk_memberi, 'アルバイトの学生に会社のデータベースにアクセスする権限を与えた。', 'Saya memberikan izin kepada pekerja pelajar paruh waktu untuk mengakses database perusahaan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4771_untuk_memberi, '人にダメージを与えるような発言ばかりしていると、嫌われますよ。', 'Orang tidak akan menyukai Anda jika Anda terus-menerus melontarkan komentar yang merugikan orang lain.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4771_untuk_memberi, '今日は、相手にいい印象を与えるようなスモールトークの受け答えの練習をしましょう。', 'Hari ini mari kita berlatih menanggapi obrolan ringan dengan cara yang memberikan kesan baik kepada lawan bicara.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4771_untuk_memberi, 'まず初めに、お忙しい中足をお運び頂き誠に有り難うございます。また、このような素晴らしいプレゼンテーションの機会を与えて頂いたことにも、感謝申し上げます。', 'Pertama-tama, saya ingin mengucapkan terima kasih yang sebesar-besarnya karena telah meluangkan waktu dari jadwal sibuk Anda untuk berada di sini dan telah memberi saya kesempatan luar biasa untuk memberikan presentasi ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4785_lanskap, 'ドイツには、景観を大切にしている町が多い。', 'Banyak kota di Jerman menghargai pemandangan kota mereka.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4785_lanskap, 'あーあ、あれじゃあ、せっかくの景観が台無しだね。', 'Oh, itu akan merusak pemandangan, bukan?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4785_lanskap, '私は京都の景観がとても好きです。', 'Saya sangat menyukai pemandangan Kyoto.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4785_lanskap, '京都では、景観を守るための条例が定められています。', 'Di Kyoto, sebuah peraturan telah ditetapkan untuk melindungi pemandangan kota.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4785_lanskap, 'この市の自治体は景観計画をきちんと立てています。', 'Pemerintah daerah kota ini memiliki rencana lanskap yang solid.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4810_menjadi_milik, 'グループに属するのは私のガラじゃないんです。', 'Saya bukan tipe orang yang tergabung dalam suatu kelompok.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4810_menjadi_milik, '四年生の時は誰のグループに属していたの？', 'Anda termasuk dalam kelompok siapa ketika Anda berada di kelas empat?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4810_menjadi_milik, 'チューリップはユリ科に属する花です。', 'Tulip adalah bunga yang termasuk dalam keluarga Liliaceae.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4810_menjadi_milik, 'サービス開始月は、サービス開始日が属する月となります。サービス開始日は、お客様がSIMカードの受け取られたことを弊社が確認した日となります。', 'Bulan awal layanan akan menjadi bulan yang memuat tanggal mulai layanan. Tanggal mulai layanan adalah hari dimana kami mengkonfirmasi bahwa pelanggan telah menerima kartu SIM.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4833_orang_lanjut_usia, 'このカフェは年輩の方に人気だそうです。', 'Rupanya, kafe ini populer di kalangan orang tua.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4833_orang_lanjut_usia, 'となりの席では、ご年輩の女性が一人でコーヒーを飲んでいらっしゃいました。', 'Di sebelah saya, seorang wanita tua sedang minum kopi sendirian.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4833_orang_lanjut_usia, '事故の相手の運転手は70才くらいの年輩者でした。', 'Pengemudi lain dalam kecelakaan itu adalah seorang lansia berusia 70 tahun.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4888_bulan_demi_bulan_berikutnya, '再来月にいとこの式があるんです。', 'Pernikahan sepupuku akan dilangsungkan sebulan setelahnya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4888_bulan_demi_bulan_berikutnya, '戦争に行った息子がようやく再来月帰ってくるんです。', 'Anakku yang pergi berperang akhirnya akan kembali bulan berikutnya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4888_bulan_demi_bulan_berikutnya, '再来月に一週間の休暇が取れるんだけど、どこか一緒にいかない？', 'Aku bisa mengambil liburan selama seminggu pada bulan berikutnya, jadi mau pergi ke suatu tempat bersama?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4889_tahun_demi_tahun_berikutnya, '再来年には景気もよくなっているでしょう。', 'Pada tahun berikutnya, perekonomian seharusnya sudah membaik.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4889_tahun_demi_tahun_berikutnya, '再来年に日本の実家に帰るつもりです。', 'Saya berencana untuk kembali ke rumah keluarga saya di Jepang tahun depan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4889_tahun_demi_tahun_berikutnya, '再来年まで継続する二年契約を提案するべきではないでしょうか。', 'Bukankah sebaiknya kita mengusulkan kontrak dua tahun yang berlangsung hingga tahun berikutnya?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4973_penjualan_eksklusif, '関西限定販売のアイスクリーム、やっと手に入れたんだ。', 'Saya akhirnya mendapatkan es krim ini, yang dijual secara eksklusif di wilayah Kansai.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4973_penjualan_eksklusif, 'え、これってハロウィンの季節だけの限定販売なの！？私、「限定販売」っていう言葉に弱いんだよね。', 'Tunggu, apakah ini hanya dijual saat musim Halloween? Saya tidak suka dengan ungkapan “penawaran waktu terbatas”.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4973_penjualan_eksklusif, '寝台車付き特急の実物大型模型を買おうか迷っているんだけど、日本では三台のみの限定販売になるみたいなんだよね。', 'Saya sedang mempertimbangkan untuk membeli model kereta ekspres terbatas seukuran aslinya dengan gerbong tidur, namun tampaknya di Jepang, hanya tiga unit yang akan dijual sebagai edisi terbatas.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5000_pengecut, '私は腰抜けだから言い返したくても言い返せないの。', 'Aku pengecut sekali, jadi aku tidak bisa membalasnya meskipun aku ingin.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5000_pengecut, '次にオレを腰抜けと呼んだら、許さないぞ！', 'Lain kali kamu menyebutku pengecut, aku tidak akan memaafkanmu!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5000_pengecut, '腰抜け共に何を言われても痛くもかゆくもないよ。', 'Aku sama sekali tidak terganggu dengan apa yang dikatakan para pengecut itu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5000_pengecut, '管理職に昇進する前に辞職する腰抜け社員が多すぎる。', 'Terlalu banyak karyawan pengecut yang mengundurkan diri sebelum dipromosikan menjadi manajemen.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5001_untuk_keluar, 'この文では必要な助詞が抜けていますよ。', 'Partikel yang diperlukan hilang dari kalimat ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5001_untuk_keluar, 'ビエトがヤクザグループから抜けたいと言ったのは２０２０年の秋のことだった。', 'Pada musim gugur tahun 2020 lalu, Viet menyatakan ingin keluar dari kelompok Yakuza.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5001_untuk_keluar, '今、忙しい。風船の空気が抜けるところのビデオを見てるの。', 'Saya sedang sibuk sekarang. Saya sedang menonton video balon yang dikempiskan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5001_untuk_keluar, '日本では歯が抜けてもトゥースフェアリーは来ないよ。', 'Peri Gigi tidak akan mendatangimu di Jepang jika gigimu tanggal.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5001_untuk_keluar, '森を抜けると、そこには真っ青な海が広がっていました。', 'Saat kami melewati hutan, lautan biru cerah terhampar di hadapan kami.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5003_untuk_digantung, '時計をココに掛けたいんだけど、うまく掛かるかな。', 'Saya ingin menggantung jam di sini, tapi saya tidak yakin apakah jam itu akan terpasang dengan benar.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5003_untuk_digantung, 'ポールハンガーには、男性のシルクハットが掛かっていた。', 'Topi sutra seorang pria digantung di gantungan tiang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5003_untuk_digantung, 'ルーヴル美術館に行った時、モナリザが曲がって掛かっていた。', 'Saat saya pergi ke Louvre, Mona Lisa digantung miring.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5003_untuk_digantung, 'お、魚が掛かったぞ！', 'Oh, ikan ketagihan!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5004_untuk_menyembunyikan_diri_sendiri, 'ここ、隠れんぼで隠れるのにいいかも！', 'Sepertinya ini tempat yang bagus untuk bersembunyi untuk petak umpet!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5004_untuk_menyembunyikan_diri_sendiri, 'あー、お月様が隠れちゃった。', 'Oh, bulan telah bersembunyi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5004_untuk_menyembunyikan_diri_sendiri, 'アイツのシャツの下には、KFCのチキンのタトゥーが隠れている。', 'Di bawah kemejanya, ada tato ayam KFC yang tersembunyi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5004_untuk_menyembunyikan_diri_sendiri, '「やばい。多分あれ元彼だ。速く隠れなきゃ。」「まじで？フグってこと？」「違うよ。サメだよ。」「 サメ？サメって誰のこと？てか、あんた元カレ多すぎだっつーの！」', '"Oh tidak. Sepertinya aku baru saja melihat mantanku. Cepat, sembunyi!" "Apa? Maksudmu Fugu?" "Tidak. Hiu." "Hiu? Siapa Hiu? Kamu punya terlalu banyak mantan!"');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5005_harga, 'この商品には値段が書かれていませんでした。', 'Tidak ada harga yang tertulis pada item ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5005_harga, '値段を見もせずに買うなんて、さすが社長ですね。', 'Membeli tanpa melihat harganya, Anda memang presiden perusahaan tersebut.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5005_harga, 'テレビとタイアップした書籍を手がけているのは本当だが、まだ値段は決まっていない。', 'Memang benar kami sedang mengerjakan buku terkait TV kami, tapi harganya belum diputuskan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5005_harga, 'もちろん、人の命に値段はつけられません。でも、誰かの命の値段を算出する必要がある時もあります。皆さんは、それがどんな時か分かりますか？', 'Tentu saja, kita tidak bisa memberi harga pada nyawa manusia. Namun ada kalanya perlu menghitung harga nyawa seseorang. Tahukah kamu kapan itu terjadi?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5006_kesehatan, '健康に勝るものは何もないですよ。', 'Tidak ada yang lebih baik daripada kesehatan yang baik.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5006_kesehatan, '健康のために水泳を始めました。', 'Saya mulai berenang untuk kesehatan saya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5006_kesehatan, 'このウィルスは、健康な人にはほとんど心配いりません。	', 'Virus ini jarang menyerang orang sehat.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5006_kesehatan, '会社側が負担する健康保険は、諸手当の中に含まれているのでしょうか。', 'Apakah asuransi kesehatan yang ditanggung perusahaan termasuk dalam tunjangan?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5007_amnesia, '健忘症は不治の病なんでしょうか。', 'Apakah amnesia merupakan penyakit yang tidak dapat disembuhkan?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5007_amnesia, '去年、有田さんは一過性の健忘症になってしまった。', 'Tahun lalu, Pak Arita menderita amnesia sementara.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5007_amnesia, 'お医者さんに健忘症の疑いがあると言われました。', 'Dokter memberi tahu saya bahwa dia mencurigai amnesia.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5007_amnesia, '健忘症に苦しんでいる親戚がいます。', 'Saya mempunyai saudara yang menderita amnesia.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5010_mencari_pekerjaan, '就職おめでとう！', 'Selamat telah mendapatkan pekerjaan!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5010_mencari_pekerjaan, '明日の夜、友達の就職祝いをします。', 'Kami akan merayakan pekerjaan baru teman saya besok malam.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5010_mencari_pekerjaan, '卒業後、ちゃんと就職できるか不安なんです。', 'Saya khawatir apakah saya akan bisa mendapatkan pekerjaan setelah lulus.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5010_mencari_pekerjaan, '「いくつか就職の面接をしたんだけど、まだどこからも内定が出ないんだ。」「お互い大変だな。」', '“Saya sudah beberapa kali wawancara kerja, tapi saya belum menerima tawaran pekerjaan apa pun.” "Bergabunglah dengan klub."');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5011_bekerja, '林さんの就業時間を教えてください。', 'Berapa jam kerja Tuan Hayashi?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5011_bekerja, '就業規則についての話し合いをするために、 私たちは月一のペースで会っている。', 'Kami bertemu setiap bulan untuk membahas peraturan ketenagakerjaan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5011_bekerja, 'ハローワークに行っても、就業形態がパートのみの仕事しかすすめてもらえないんだよ。', 'Saat saya membuka Hello Work (pusat layanan ketenagakerjaan), mereka hanya merekomendasikan pekerjaan paruh waktu kepada saya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5011_bekerja, '就業人口とは、労働力人口の中で、職業に就いて収入を得ている人の数のことです。 就業人口は、就業中の就業者と、何らかの事情により就業していない休業者に分けられます。', 'Populasi pekerja mengacu pada jumlah individu dalam angkatan kerja yang bekerja dan memperoleh pendapatan. Penduduk yang bekerja dapat dikelompokkan lagi menjadi dua kelompok, yaitu penduduk yang aktif bekerja, dan penduduk yang sedang cuti dan tidak bekerja karena berbagai sebab.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5012_membosankan, 'ケガのせいで外出もできなかったので、かなり退屈な一週間でした。', 'Saya bahkan tidak bisa keluar karena cedera, ini adalah minggu yang membosankan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5012_membosankan, '退屈していたのでちょうどよかったです。', 'Saya bosan, jadi ini waktu yang tepat.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5012_membosankan, '最近、仕事が単調になっちゃって、すごく退屈なんだよ。', 'Akhir-akhir ini pekerjaanku menjadi monoton dan aku sangat bosan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5012_membosankan, '果てしなく続く空の下で、生徒たちは果てしなく長くて退屈な校長の話を聞かなくてはならなかった。', 'Di bawah langit yang tak berujung, para siswa harus mendengarkan pidato kepala sekolah yang tak ada habisnya dan membosankan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5015_sushi_gulung, '今度の金曜日にコウイチが巻きずしパーティーをするんだって。', 'Kudengar Koichi akan mengadakan pesta sushi gulung pada hari Jumat ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5015_sushi_gulung, 'どうしてアメリカの巻きずしはのりが内側に巻かれているんですか。', 'Mengapa makizushi Amerika memiliki rumput laut yang digulung di dalamnya?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5015_sushi_gulung, '日本人でも巻きずしを作ったことがない人はいるよ。', 'Ada orang Jepang yang belum pernah membuat makizushi juga.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5015_sushi_gulung, '「君も巻きずしを食べてみるべきだよ。きっと気に入ると思うよ。」「わかったわ。あなたがそう言うのなら。」', '"Kamu harus mencoba sushi gulungnya. Aku yakin kamu akan menyukainya." "Oke, kalau kamu bilang begitu."');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5016_lumpia, '作っても作っても春巻きをぬすまれるんです。', 'Berapa kali pun aku membuatnya, lumpiaku selalu dicuri.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5016_lumpia, '「私の春巻き食べたでしょ？」「ごめん。その通りだよ。」', '"Apakah kamu memakan lumpiaku?" "Maaf, aku melakukannya."');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5016_lumpia, '私の大好物は生春巻きです。', 'Makanan favorit saya adalah lumpia segar.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5017_lakukan_yang_terbaik, '頑張れニッポン、負けるなニッポン！', 'Lakukan yang terbaik di Jepang! Bertahanlah di sana Jepang!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5017_lakukan_yang_terbaik, '大丈夫だって。春ちゃんならきっと受かるよ。頑張れ。', 'Kamu akan baik-baik saja, Haru-chan. Saya yakin Anda akan lulus ujian. Semoga beruntung!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5017_lakukan_yang_terbaik, '頑張れ、あとちょっとで助けが来るぞ！', 'Bertahanlah, bantuan hampir tiba!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5017_lakukan_yang_terbaik, 'まあ、結果を気にせずに、頑張れよ！', 'Nah, jangan khawatir dengan hasilnya, cobalah yang terbaik!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5018_menjadi_marah, '山崎さんは怒ると鼻の穴を大きくふくらませるクセがあるんです。', 'Pak Yamazaki punya kebiasaan menggembungkan hidungnya saat sedang marah.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5018_menjadi_marah, 'おかしいな？別に怒らせるようなこと言ったつもりはないんだけど...。', 'Ini aneh. Kurasa aku belum mengatakan apa pun yang akan membuatnya marah.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5018_menjadi_marah, 'ごめんってば。そんなに怒らないでよ。', 'Saya minta maaf. Tolong jangan terlalu marah.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5018_menjadi_marah, '「フグ、どうしてサーモンがお前のことを怒っているのか分からないんだろ？」「うん。さっぱり分からないよ。」「そうだと思ったよ。」', '"Fugu, kamu tidak mengerti kenapa Salmon marah padamu, kan?" "Tidak, aku tidak tahu." "Itulah yang kupikirkan."');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5019_untuk_berteriak, '私、怒鳴る人、ホントに嫌なんだよね。', 'Aku sangat tidak suka dengan orang yang membentak orang lain.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5019_untuk_berteriak, '上司に怒鳴られてばっかりで、会社に行くのが嫌になってきたよ。', 'Bos saya sering membentak saya sehingga saya mulai benci pergi bekerja.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5019_untuk_berteriak, '藤崎さんはとてもおだやかな人で、怒鳴っているところを見たことがありません。', 'Tuan Fujisaki adalah orang yang sangat santai, dan saya belum pernah melihatnya meneriaki siapa pun.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5019_untuk_berteriak, '「キンニクマってよく怒鳴るよね。」「そうだね。でも、心配しないで。彼は口は悪いけど根は悪い人ではないから。」', '"Kinnikuma banyak berteriak." “Ya, tapi jangan khawatir. Kulitnya lebih buruk daripada gigitannya.”');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5020_sebuah_kekhawatiran, 'あんたは何の悩みもなさそうでいいよね。', 'Sepertinya kamu tidak punya kekhawatiran sama sekali, ya? Itu pasti menyenangkan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5020_sebuah_kekhawatiran, 'ストッキングがすぐに伝線しちゃうのが悩みなんです。', 'Saya merasa terganggu dengan betapa mudahnya stoking saya habis.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5020_sebuah_kekhawatiran, '昔は悩みを人に打ち明けることができないのが悩みでしたが、今では何でも言えるようになりました。', 'Dulu kekhawatiran saya adalah tidak bisa curhat ke orang lain, tapi sekarang saya bisa ngomong apa saja.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5020_sebuah_kekhawatiran, '悩み事の相談に乗るのは構わないんだけど、金欠なんだよね。外食したいなら、あんたの奢りだよ。', 'Saya tidak keberatan mendengar masalah Anda, tetapi saya kehabisan uang. Jika kamu ingin makan di luar bersamaku, itu traktiranmu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5021_khawatir, '出産後も仕事を続けるかを悩む女性は多い。', 'Banyak wanita bertanya-tanya apakah akan terus bekerja setelah melahirkan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5021_khawatir, '近所の人からの嫌がらせに悩んでいます。', 'Saya merasa terganggu dengan pelecehan dari tetangga saya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5021_khawatir, 'まだ若いのに、何をそんなに悩む必要があるんだよ！', 'Anda masih muda, apa yang perlu Anda khawatirkan?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5021_khawatir, '「どうしたの？何を悩んでいるの？」「昨日、彼女に振られたんだ。」', '"Hei! Apa yang mengganggumu?" "Pacarku mencampakkanku tadi malam."');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5023_masalah, '迷惑な人がいて、困ってるんです。', 'Ada orang yang menyebalkan, dan itu mengganggu saya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5023_masalah, 'ご迷惑じゃなければ、お願いしてもいいですか？', 'Kalau tidak terlalu merepotkan, bolehkah menyerahkannya padamu?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5023_masalah, '最近、迷惑メールがたくさん送られて来るようになった。', 'Akhir-akhir ini, saya menerima banyak surat sampah.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5023_masalah, '日本語が下手なので、あなたに迷惑をかけてしまうかもしれません。', 'Saya buruk dalam bahasa Jepang, jadi saya mungkin merepotkan Anda.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5024_bujukan, 'あま〜い誘惑に負けて、ケーキを食べてしまった。', 'Saya menyerah pada godaan manis dan akhirnya makan kue.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5024_bujukan, 'はあ？私の彼氏がナンパなんてチャラいことするはずないじゃない。どうせあんたが誘惑したんでしょ？', 'Apa? Pacarku tidak akan melakukan sesuatu yang genit seperti merayu orang lain! Anda mungkin merayunya, bukan?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5024_bujukan, '自分の子供が、悪いヤツらに誘惑されて悪いことに手を出すのを防ぐには、どうすればいいと思いますか？', 'Menurut Anda bagaimana cara terbaik agar anak Anda tidak tergoda dan disesatkan oleh pengaruh buruk?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5024_bujukan, 'フグは、サーモンの唇を奪いたいという誘惑に抗うことはできなかった。', 'Fugu tidak bisa menahan godaan untuk mencium Salmon.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5025_untuk_melihat_sifat_asli_sesuatu, '首藤さんは人の素質を見抜くのがうまいんですよ。', 'Pak Suto pandai melihat sifat asli orang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5025_untuk_melihat_sifat_asli_sesuatu, 'うちの母親は父親のウソを見抜くのがうまい。', 'Ibuku pandai melihat kebohongan ayahku.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5025_untuk_melihat_sifat_asli_sesuatu, '近ごろ石油の供給が少なくなってきているのは知っていましたが、その理由は見抜けませんでした。', 'Saya tahu bahwa persediaan minyak telah berkurang dalam beberapa tahun terakhir, namun saya tidak dapat mengetahui alasannya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5026_bodoh, 'オレ、間抜けだから、気づかなかったよ。言ってくれてありがとう。', 'Aku terlalu bodoh untuk menyadarinya. Terima kasih sudah memberitahuku.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5026_bodoh, 'この間抜け野郎！', 'Goblog sia!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5026_bodoh, '間抜けな返事をしてしまい、はずかしく思っています。', 'Saya merasa malu dengan balasan bodoh yang saya kirimkan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5026_bodoh, 'アイツの間抜けヅラ、見た？', 'Apakah kamu melihat wajahnya yang bodoh?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5026_bodoh, '彼に間抜けな田舎者のお上りさんだと思われたくないの。', 'Aku tidak ingin dia menganggapku sebagai anak desa yang bodoh.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5027_untuk_menarik_sesuatu_keluar, 'エクセルで日付の月の部分だけを抜き出す関数ってありますか？', 'Apakah ada fungsi di Excel untuk mengekstrak hanya bagian bulan dari suatu tanggal?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5027_untuk_menarik_sesuatu_keluar, '問4： 友子が泣き出した理由は何ですか。文中の言葉を17字で抜き出して答えなさい。', 'Q4: Apa alasan mengapa Tomoko mulai menangis? Jawab pertanyaannya dengan memilih tujuh belas karakter dari teks.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5027_untuk_menarik_sesuatu_keluar, 'いらなくなったパソコンとかスマホってどうしてる？リサイクルショップとかに持っていったら、悪意ある第三者にデータを抜き出される危険性があるよね？', 'Apa yang Anda lakukan dengan komputer atau ponsel pintar lama Anda? Jika Anda membawanya ke toko daur ulang, ada risiko pihak ketiga yang jahat dapat mengekstrak datanya, bukan?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5027_untuk_menarik_sesuatu_keluar, '彼は背広から銃をそっと抜き出した。', 'Dia diam-diam mulai mengeluarkan pistol dari setelan bisnisnya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5029_untuk_mengundang, 'チャーリーが、今度チョコレート工場に招待するよって言ってくれたんだ！', 'Charlie bilang dia akan mengundangku ke pabrik coklat lain kali!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5029_untuk_mengundang, 'トーフグのクリスマス会に招待されたが、インフルエンザにかかって行けなかった。', 'Saya diundang ke pesta Natal Tofugu, tapi saya terserang flu dan tidak bisa hadir.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5029_untuk_mengundang, 'ウェディングパーティーには何人ぐらい招待するつもりなの？', 'Berapa banyak orang yang Anda rencanakan untuk diundang ke pesta pernikahan?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5029_untuk_mengundang, 'どのお友達を誕生日会に招待するか決めましたか。', 'Sudahkah Anda memutuskan teman mana yang akan diundang ke pesta ulang tahun Anda?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5030_petunjuk, '手掛かりはまだ見つからないのですか。', 'Masih tidak dapat menemukan petunjuk apa pun?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5030_petunjuk, '今は全力で、問題解決の糸口となるような手掛かりを探しています。', 'Saat ini kami dengan sepenuh hati mencari petunjuk yang akan membawa kami pada solusi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5030_petunjuk, '警察は消えたベーコンの謎について何か手掛かりを見つけましたか？', 'Apakah polisi sudah menemukan petunjuk terkait misteri hilangnya bacon?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5030_petunjuk, '藤川さんの発言が、犯人のトリックを見抜く手掛かりになりました。', 'Pernyataan Tuan Fujikawa memberikan petunjuk tentang tipu daya pelakunya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5032_promosi_pekerjaan, '「聞いて聞いて、昇進したんだ！」「本当？すごいね！おめでとう！」', '"Coba tebak? Aku mendapat promosi di tempat kerja!" "Benarkah? Luar biasa! Selamat!"');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5032_promosi_pekerjaan, 'え、お前の昇進のペース、めっちゃ早くない？', 'Apa? Bukankah laju promosi Anda sangat cepat?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5032_promosi_pekerjaan, '折角の昇進のチャンスを逃してしまった。', 'Saya melewatkan kesempatan promosi yang telah lama saya nantikan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5032_promosi_pekerjaan, '田崎さんは昇進してから一か月で会社を辞めてしまいました。何があったんでしょう？', 'Pak Tasaki berhenti dari pekerjaannya satu bulan setelah dia dipromosikan. Apa yang terjadi padanya?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5033_waktu_luang, '暇な時にマンガをかいています。', 'Saya menggambar manga di waktu luang saya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5033_waktu_luang, '三村さんは暇さえあれば常に株の勉強をしていて感心します。', 'Saya mengagumi studi saham Pak Mimura yang terus-menerus di waktu luangnya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5033_waktu_luang, '最近仕事が暇でさー、暇すぎて死にそうなんだよね。', 'Akhir-akhir ini, pekerjaan jadi sangat lambat, tahu? Sangat menganggur sehingga saya merasa seperti akan mati.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5033_waktu_luang, '私達は空気洗浄機とか家電を販売してるんですが、お客さんがあまりこないので、お店では正直暇してます。', 'Kami menjual peralatan elektronik rumah tangga seperti pembersih udara, tapi tidak banyak pelanggan yang datang dan sejujurnya, saya punya banyak waktu luang di toko.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5034_liburan, 'いつもどのくらい前から休暇の予定を立てますか？', 'Seberapa jauh sebelumnya Anda biasanya membuat rencana liburan?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5034_liburan, '今年はちょっと長めに休暇を取ろうと思ってるんです。', 'Saya sedang berpikir untuk mengambil liburan yang sedikit lebih lama tahun ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5034_liburan, 'クリスマス休暇が終わる前日にインフルエンザになってしまった。', 'Sehari sebelum liburan Natal berakhir, saya terserang flu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5034_liburan, '今年の夏季休暇はどこに行こうかな。', 'Aku bertanya-tanya ke mana aku harus pergi untuk liburan musim panas tahun ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5034_liburan, 'やばい！まだ八月なのに、有給休暇、もう全部使い切っちゃった。', 'Oh tidak! Ini baru bulan Agustus dan saya sudah menghabiskan seluruh hari libur berbayar saya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5035_uang_kembalian, 'UFOキャッチャーしたいのに、両替機が見つからない。', 'Saya ingin bermain Penangkap UFO, tetapi saya tidak dapat menemukan mesin ganti.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5035_uang_kembalian, 'この一万円札を千円札に両替してもらえませんか？', 'Bisakah Anda menukarkan uang kertas 10.000 yen ini dengan uang kertas 1.000 yen?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5035_uang_kembalian, 'すみません、両替はお断りしているんです。', 'Maaf, saya khawatir kami tidak merusak tagihan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5035_uang_kembalian, '後で、今日習った日本語での両替の仕方について復習したいと思います。', 'Saya akan mengulas pelajaran hari ini tentang cara menukar uang dalam bahasa Jepang nanti.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5035_uang_kembalian, '関西空港で両替しようと思ったんですが、両替所がしまっていました。 ', 'Saya ingin menukarkan uang di Bandara Kansai, tetapi loket penukaran ditutup.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5036_untuk_mengganti, 'このゴミ箱のゴミぶくろ、新しいのに取り替えるね！', 'Saya akan mengganti kantong tempat sampah ini dengan yang baru!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5036_untuk_mengganti, 'ねえねえ、そのソーセージと私のブロッコリー、取り替えてくれない？', 'Hei, hei, bisakah kamu menukar brokoliku dengan sosis itu?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5036_untuk_mengganti, '今日、お父さんから便器の取り替え方を教えてもらいました。', 'Hari ini, saya belajar dari ayah saya cara mengganti toilet.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5036_untuk_mengganti, 'そろそろ我々のOA機器を最新のものに取り替える方がいいんじゃないでしょうか。', 'Kita harus mengganti semua peralatan otomasi kantor secara bertahap dengan versi terbaru.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5037_ganti_pakaian, '母は、私の着替えを持ってくるのを忘れた事を謝りました。', 'Ibuku meminta maaf karena lupa membawakanku baju ganti.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5037_ganti_pakaian, 'パジャマにお着替えする時間だよー！', 'Saatnya mengganti piyama Anda!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5037_ganti_pakaian, '今うちの息子イヤイヤ期だからお着替えするだけでも一苦労だよ。', 'Anak laki-laki saya sedang mengalami "masa-masa sulit" saat ini, jadi mengganti pakaiannya saja sudah sangat menyusahkan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5037_ganti_pakaian, 'もちろん子供の着替えは持ってきていたけど、まさか自分の着替えが必要になるとは思ってもいなかったから、ウォルマートで買う羽目になったよ。', 'Tentu saja saya membawa baju ganti untuk anak-anak, namun saya tidak menyangka akan membutuhkan baju ganti untuk diri saya sendiri, sehingga saya harus membelinya di Wal-Mart.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5038_terakhir, '死ぬまでに、究極のラーメンを極めるつもりです。', 'Aku akan menguasai cara membuat ramen terhebat sebelum aku mati.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5038_terakhir, '皆さんは、究極に難しい漢字ってどれだと思いますか？', 'Kanji manakah yang menurut Anda paling sulit?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5038_terakhir, '知子は究極レベルのモンスターを倒すのに半日を費やした。', 'Tomoko menghabiskan setengah hari untuk mengalahkan monster level tertinggi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5038_terakhir, 'あの榊氏までもが、私が宇宙の究極の原理を解明したことに祝いの言葉を述べてくれました。', 'Bahkan Pak Sakaki mengucapkan selamat kepada saya karena telah menemukan kebenaran mendasar alam semesta.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5041_kutub_selatan, '私の両親は、この夏に南極に行ってみることを決心しました。', 'Orang tua saya memutuskan untuk pergi ke Antartika musim panas ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5041_kutub_selatan, '南極の氷でかき氷を作ってみたいんです。', 'Saya ingin mencoba membuat es serut dengan es Antartika.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5041_kutub_selatan, '南極料理人の映画を観て、料理人になる決意を固めました。', 'Saya menonton film The Chef of South Polar dan memutuskan untuk menjadi seorang chef.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5041_kutub_selatan, '1959年の南極条約で、南極はどこの国の領土でもないというルールができました。', 'Perjanjian Antartika tahun 1959 menetapkan aturan bahwa Antartika bukanlah wilayah negara mana pun.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5043_tidak_terima_kasih, '「ごいっしょにポテトもいかがですか？」「いいえ、結構です。」', '"Apakah kamu ingin kentang goreng juga?" "Tidak, terima kasih."');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5043_tidak_terima_kasih, '「田中さんもポケモンしませんか？」「あ、私は結構です。」', '“Apakah Anda ingin bermain Pokemon, Tuan Tanaka?” “Oh, aku baik-baik saja.”');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5043_tidak_terima_kasih, '「ワニカニのレベル３０が終わったユーザーに、コウイチのオナラが入ったメイソンジャーをプレゼントします。」「本当に本当に結構です！」', '"Kami akan memberikan stoples yang berisi kentut Koichi kepada pengguna yang menyelesaikan WaniKani level 30," "Sungguh, tidak, terima kasih!"');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5043_tidak_terima_kasih, 'いいえ、結構です。夕食はいりません。申し訳ありませんが、ストレスで食欲がないんです。', 'Tidak, tidak apa-apa. Saya tidak ingin makan malam. Maaf, tapi saya sangat stres sehingga saya tidak nafsu makan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5044_jangan_pedulikan_aku, 'すぐ帰りますので、お構いなく。', 'Aku akan segera berangkat, jadi tolong jangan pedulikan aku.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5044_jangan_pedulikan_aku, 'うちの家のことは、どうかお構いなく。自分たちでなんとかしますから。', 'Tolong jangan khawatirkan kami. Kami akan mengurusnya sendiri.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5044_jangan_pedulikan_aku, '社長がOKと言おうが言うまいが、お構いなく話は進んだ。', 'Pembahasan berjalan tanpa peduli apakah Presiden memberikan persetujuannya atau tidak.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5044_jangan_pedulikan_aku, '「コーヒーはいかがですか？」「いえ、結構です。お構いなく。」', '“Apakah kamu mau kopi?” "Tidak terima kasih. Jangan khawatirkan aku."');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5044_jangan_pedulikan_aku, '見てるだけなので、お構いなく。', 'Aku hanya melihat, jadi jangan pedulikan aku.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5045_skala_besar, '皆さんは、もし皆さんが住む町で大規模な地震が起きたらどうしますか？', 'Apa yang akan kamu lakukan jika terjadi gempa besar di kotamu?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5045_skala_besar, '今はオンラインで大規模言語モデルについて学んでいます。', 'Saat ini saya sedang belajar tentang model bahasa besar (LLM) secara online.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5045_skala_besar, '私、大規模なパーティーって苦手なんだよね。', 'Saya sebenarnya bukan penggemar pesta besar-besaran, lho.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5045_skala_besar, '今度のプロジェクトは、かなり大規模なものになる予定だよ。', 'Proyek yang akan datang diperkirakan berskala cukup besar.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5045_skala_besar, '細川は、原発再稼働に反対する大規模デモの実現に協力してくれたことについて、児島に礼を述べた。', 'Hosokawa berterima kasih kepada Kojima karena membantunya melakukan unjuk rasa besar-besaran yang menentang dimulainya kembali operasi pembangkit listrik tenaga nuklir.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5046_skala_kecil, 'うちの会社のプロジェクトチームは小回りが効くように、小規模化されているんです。', 'Tim proyek perusahaan kami berskala kecil untuk meningkatkan ketangkasan mereka.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5046_skala_kecil, 'スモールビジネスは小規模で事業を行うので、少ない初期費用で始められることが多いです。', 'Usaha kecil seringkali memerlukan biaya awal yang lebih sedikit karena mereka beroperasi dalam skala kecil.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5046_skala_kecil, 'これは小規模な言語モデル(SLM)なので消費電力が小さく、演算能力の小さなCPUやGPUでも実行できるんです。', 'Ini adalah model bahasa skala kecil (SLM), sehingga mengkonsumsi daya minimal dan dapat dijalankan pada CPU atau GPU berkapasitas rendah.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5046_skala_kecil, '私達はみんな、啓介に小規模農場なんて始めない方がいいと警告したんです。', 'Kami semua memperingatkan Keisuke agar tidak memulai pertanian skala kecil.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5047_tangga, '階段で転んでひざから血が出てしまった。', 'Aku tersandung tangga dan lututku berdarah.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5047_tangga, '階段を上がったら、向かって右側の電車に乗って下さい。', 'Saat menaiki tangga, silakan naik kereta di sebelah kanan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5047_tangga, 'こうしてみんな、一歩ずつ大人の階段を上がっていくんだよ。', 'Beginilah cara kita menaiki tangga menuju kedewasaan, selangkah demi selangkah.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5047_tangga, '充は、私が階段の掃除を手伝った事に礼を述べた。', 'Mitsuru berterima kasih padaku karena membantunya membersihkan tangga.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5048_perlahan_lahan, '私の日本語が段々うまくなっていると言ってもらえて、すごく嬉しいです。', 'Saya senang mendengar bahwa bahasa Jepang saya secara bertahap menjadi lebih baik.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5048_perlahan_lahan, '山田さん、そこ段々になってるから気をつけて！', 'Tuan Yamada, hati-hati, tanahnya ada di sana!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5048_perlahan_lahan, 'この段々畑の絵、最初は好きじゃなかったけど、見てるうちに段々気に入ってきたんだよね。', 'Awalnya saya kurang suka dengan lukisan sawah bertingkat ini, namun seiring saya terus melihatnya, lambat laun saya mulai menyukainya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5048_perlahan_lahan, '段々雲行きが怪しくなってきました。', 'Lambat laun, segalanya mulai tidak terlihat baik.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5049_panggung, 'この段階で結論を出すのはまだ早すぎる。', 'Masih terlalu dini untuk menarik kesimpulan pada tahap ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5049_panggung, '住宅価格は、急落する直前の段階まで来ていると思うんです。', 'Saya pikir harga rumah telah mencapai fase sebelum penurunan tajam.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5049_panggung, '今、プロジェクトはローンチまであと少しの最終段階に入っています。', 'Kini, proyek tersebut telah memasuki tahap akhir dan tinggal tinggal sedikit lagi hingga peluncurannya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5049_panggung, '彼氏は、私が妊娠からかなり経った段階まで妊娠の事実を伝えなかったことについて私を責めました。', 'Pacar saya menuduh saya tidak memberi tahu dia bahwa saya hamil sampai kehamilan saya memasuki tahap lanjut.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5050_langkah_pertama, 'では、第一段は森さんが読んでください。', 'Sekarang silahkan baca bagian pertama Pak Mori.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5050_langkah_pertama, 'やっぱりどのテレビ番組でも、第一段目の席には、人気アイドル、人気芸人、人気俳優が座るんだね。', 'Di acara TV mana pun, sepertinya idola populer, komedian populer, dan aktor populer selalu duduk di barisan depan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5050_langkah_pertama, '第一段階として、まずは基本の復習をしなくちゃいけないかもしれない。', 'Saya mungkin perlu meninjau dasar-dasarnya untuk langkah pertama.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5051_padat, 'あ、味付け、ちょっと濃いかも。ごめんね！', 'Oh, saya mungkin membumbuinya sedikit kuat. Maaf!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5051_padat, 'そのメイク、濃くない？', 'Bukankah riasannya terlalu tebal?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5051_padat, 'この濃い毛をそるのに特注のカミソリが必要なんです。', 'Saya memerlukan pisau cukur yang dipesan khusus untuk mencukur rambut tebal ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5051_padat, '私は彼の髪は濃い紫色にしようかなって思ってるんだよね。', 'Saya sedang berpikir untuk mewarnai rambutnya dengan warna ungu tua.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5052_kepadatan, 'この、マンモグラフィ濃度って何ですか？', 'Berapa kepadatan mamografi ini?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5052_kepadatan, 'これは濃度20%の食塩水です。', 'Ini adalah larutan garam dengan konsentrasi 20%.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5052_kepadatan, '市販のタイカレーペーストは、高濃度の塩分を含んでいるのであまり好きじゃありません。', 'Pasta kari Thailand yang dibeli di toko mengandung garam dengan konsentrasi tinggi, jadi saya tidak menyukainya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5052_kepadatan, 'あなたの血中アルコール濃度については追って連絡致します。', 'Saya akan menghubungi Anda kembali tentang konsentrasi alkohol dalam darah Anda.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5053_sindroma, '岸田さんのエッセーには、車いすのお母さんとダウン症の弟さんとの日々がつづられています。', 'Dalam esai Ms. Kishida, dia menulis tentang kehidupan sehari-harinya bersama ibunya yang duduk di kursi roda dan saudara laki-lakinya yang menderita sindrom Down.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5053_sindroma, '熱中症になるといけないので、こまめに水分をとってくださいね！', 'Anda tidak boleh terkena sengatan panas, jadi pastikan untuk sering tetap terhidrasi!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5053_sindroma, 'それって、認知症の初期症状じゃないですか？', 'Bukankah itu gejala awal demensia?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5054_gejala, '他にも症状はありますか？', 'Apakah Anda memiliki gejala lain?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5054_gejala, '少しずつですが、症状の改善が見られます。', 'Memang sedikit demi sedikit, namun gejalanya mulai membaik.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5054_gejala, '今はどのような症状が出ていますか？', 'Gejala apa yang Anda alami saat ini?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5054_gejala, '私の症状について、一度同僚に相談しました。', 'Saya pernah berkonsultasi dengan rekan saya tentang gejala saya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5055_insomnia, '不眠症に悩まされています。', 'Saya menderita insomnia.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5055_insomnia, '不眠症に効く薬を売ってください。', 'Tolong jual saya obat yang ampuh untuk insomnia.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5055_insomnia, '彼と仕事をするのがストレスで、不眠症になってしまいました。', 'Bekerja dengannya sangat menegangkan sehingga saya menderita insomnia.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5056_menyakitkan, 'どこが痛いの？頭？', 'Dimana sakitnya? Kepalamu?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5056_menyakitkan, 'ううん、なんかノドが痛いの。', 'Tidak, aku sakit tenggorokan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5056_menyakitkan, '正子ちゃんに正論を言われて、耳が痛くなった。', 'Masako-chan memberiku argumen yang bagus dan itu menyakitkan telingaku.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5056_menyakitkan, 'この部屋じゃ煙が目に入って痛いので、会社は屋外に喫煙場所を指定するべきだと思うね。', 'Perusahaan kami harus menetapkan area merokok di luar ruangan karena asap di ruangan ini masuk ke mata saya dan itu menyakitkan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5058_mengantuk, '昨日はよく眠れなかったので、今すごく眠いです。', 'Saya tidak bisa tidur nyenyak tadi malam, jadi saya sangat mengantuk sekarang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5058_mengantuk, '朝コーヒーを飲まないとすぐに眠くなってしまうんです。', 'Jika saya tidak minum kopi di pagi hari, saya cepat mengantuk.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5058_mengantuk, 'やばい、眠すぎる。', 'Oh tidak, aku terlalu mengantuk.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5058_mengantuk, '渋滞に巻き込まれた時、目も開けていられないくらい眠い状態でもありました。', 'Ketika saya terjebak dalam kemacetan lalu lintas saya juga sangat mengantuk sehingga saya hampir tidak bisa membuka mata.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5059_tidur, '昨日の睡眠時間はたったの三時間でした。', 'Saya hanya tidur tiga jam kemarin.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5059_tidur, '睡眠の質を高めるには、どうすればいいんですか？', 'Apa yang harus saya lakukan untuk meningkatkan kualitas tidur saya?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5059_tidur, '赤ちゃんが生まれると、親はしばらく睡眠不足になることが多い。', 'Saat bayi lahir, orang tua seringkali kurang tidur untuk sementara waktu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5059_tidur, '彼は、給与の良い管理職へ昇格したいがために、睡眠時間を削って一生懸命働いている。', 'Dia ingin dipromosikan ke manajemen untuk mendapatkan gaji yang lebih baik sehingga dia bekerja keras dengan mengurangi waktu tidurnya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5060_tepian, 'このテーブルの端とそっちのテーブルの端をくっつけてください。', 'Tolong satukan tepi meja ini dan tepi meja itu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5060_tepian, 'どうして日本人は電車の席の端から座っていくんですか。', 'Mengapa orang Jepang mulai duduk dari ujung deretan kursi kereta?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5060_tepian, 'この本は、端から端まで何度も読んだので、内容は全て暗記しています。', 'Saya sudah berkali-kali membaca buku ini dari sampul ke sampul, jadi saya sudah hapal seluruh isinya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5060_tepian, '私は大粒の涙がコウイチの目の端からこぼれ落ちるのを見てしまった。', 'Aku melihat setetes air mata jatuh dari sudut mata Koichi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5061_tip, 'そのデザイナーは、時代の先端をいくファッションを発表した。', 'Sang desainer menghadirkan fesyen mutakhir.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5061_tip, 'このゲームには、先端技術がふんだんに使われている。', 'Game ini banyak menggunakan teknologi terkini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5061_tip, 'フフフ…この刀の先端には毒が付いていたんだよ。', 'Hehehe... Ujung katana ini diracuni.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5061_tip, 'そのお箸の先端は焦げています。', 'Ujung sumpitnya gosong.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5061_tip, 'ビエト先輩って、いつも極道ファッションの流行の先端を行っててカッコイイよね。', 'Viet-senpai selalu memakai tren fashion yakuza terkini, dan dia terlihat keren bukan?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5062_setengah_selesai, '今思うと、すごく中途半端なことをしてたと思います。', 'Kalau dipikir-pikir sekarang, saya melakukannya setengah-setengah.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5062_setengah_selesai, '中途半端に物事を学んだとしても、それが全て無だになるわけじゃないよ。', 'Bahkan ketika Anda mempelajari sesuatu di tengah jalan, apa yang telah Anda pelajari tidak akan sia-sia.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5062_setengah_selesai, 'そういう中途半端な態度が一番ムカつくんだよ。', 'Sikap setengah hati seperti itulah yang paling membuatku kesal.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5062_setengah_selesai, '俺は中途半端な生き方をしてきたかもしれないけど、マフィアに入りたいって思ったことは一度もないよ。', 'Hidupku mungkin belum lengkap, tapi aku tidak pernah bermimpi untuk bergabung dengan mafia.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5063_ekstrim, 'ちょっと嫌なことがあったからって会社を辞めるなんて、武井さんも極端ですねぇ！', 'Pak Takei, Anda bersikap ekstrem dengan keluar dari perusahaan hanya karena terjadi sesuatu yang tidak menyenangkan, bukan?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5063_ekstrim, '年金ってさ、めっちゃ極端に言えば「生き残れたラッキーな人に対して、若い人にお金を出させる」仕組みでしょ？', 'Kalau diutarakan secara ekstrim, bukankah pensiun pada dasarnya adalah sebuah sistem di mana ''orang-orang yang selamat dan beruntung'' meminta generasi muda untuk membayarnya?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5063_ekstrim, '私は制服って素晴らしいと思ってるんです。極端な話、皆が同じ服を着ることで、それぞれの中身の個性が際立つと思うんですよ。', 'Sejujurnya, menurut saya seragam itu luar biasa. Secara ekstrim, saya percaya bahwa setiap orang yang mengenakan pakaian yang sama membuat kepribadiannya menonjol.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5063_ekstrim, '君は奇跡を起こすことができるかもしれない。でも、僕は君には極端なことは避けてもらいたいんだよ。', 'Anda mungkin bisa melakukan keajaiban, tapi saya ingin Anda menghindari melakukan hal-hal ekstrem.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5066_memasok, '水の供給がようやく再開されました。', 'Pasokan air akhirnya kembali normal.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5066_memasok, '最優先事項は供給を安定させることだ。', 'Prioritas maksimum kami adalah menstabilkan pasokan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5066_memasok, '電力の安定供給には、火力、水力、原子力、再生可能エネルギーなどによる発電を効率的に組み合わせることが重要です。', 'Untuk pasokan listrik yang stabil, penting untuk menggabungkan metode pembangkit listrik seperti sumber energi termal, pembangkit listrik tenaga air, nuklir, dan terbarukan secara efisien.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5066_memasok, '食料を国民に安定的に供給するには、農地を確保し、それを最大限に有効利用する必要があります。', 'Untuk menjamin kestabilan pasokan pangan bagi masyarakat, perlu adanya pengamanan lahan pertanian dan pemanfaatannya semaksimal mungkin.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5068_kenaikan_gaji, '昇給できるかどうかが気にかかっているんです。', 'Saya khawatir apakah saya bisa mendapat kenaikan gaji atau tidak.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5068_kenaikan_gaji, '昇給したのはいいんですが、その分もっと働かないといけなくなってしまって…。', 'Saya mendapat kenaikan gaji, namun sekarang saya harus bekerja lebih keras untuk menebusnya.…');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5068_kenaikan_gaji, '前の会社では、毎年定期昇給があって、賞与も年に2回出ました。', 'Di perusahaan saya sebelumnya, saya menerima kenaikan gaji rutin setiap tahun dan bonus dua kali setahun.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5068_kenaikan_gaji, '業界の景気回復に伴い、昇給を願い出たんだが、うまくいかなかったよ。', 'Ketika industri ini kembali pulih secara ekonomi, saya mengajukan permohonan kenaikan gaji, namun tidak berhasil.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5069_untuk_menyimpulkan, 'どうしてあの国が突然平和友好条約を締結したのか不思議に思うよ。', 'Aneh, saya heran kenapa negara-negara tersebut tiba-tiba menandatangani perjanjian damai.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5069_untuk_menyimpulkan, 'この条約を締結するのにかなり長い時間を費やした。', 'Kami menghabiskan banyak waktu untuk meratifikasi perjanjian ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5069_untuk_menyimpulkan, '供給元とパートナーシップ協定を締結することにしました。', 'Kami memutuskan untuk menandatangani perjanjian kemitraan dengan pemasok.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5069_untuk_menyimpulkan, '外国と日本が条約を結ぶ時は、国会が条約を承認し、内閣が条約を締結するんです。', 'Ketika negara asing dan Jepang menandatangani perjanjian, Diet akan meratifikasi perjanjian tersebut, dan kemudian Kabinet menyimpulkannya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5070_untuk_mengencangkan, 'ガスの元栓、ちゃんと締めた？', 'Apakah Anda mematikan gas dengan erat?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5070_untuk_mengencangkan, 'どんな言葉でスピーチを締めるべきか迷っているんだ。', 'Saya bertanya-tanya kata-kata apa yang bagus untuk mengakhiri pidatonya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5070_untuk_mengencangkan, 'ちょっと待って。シートベルト、まだ締めてない！', 'Tunggu sebentar. Saya belum memasang sabuk pengaman saya!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5070_untuk_mengencangkan, 'ネクタイの締め方は分からないけど、ネジを締めるのは任せて！', 'Saya tidak tahu cara memakai dasi, tapi serahkan pada saya untuk mengencangkan sekrupnya!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5071_organisasi, '彼は、大統領選挙で組織票をゲットすることに成功した。', 'Ia berhasil memperoleh suara organisasional dalam pemilihan presiden.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5071_organisasi, 'ついにあの犯罪組織に逮捕状が出たらしいよ。', 'Saya mendengar mereka akhirnya mengeluarkan surat perintah penangkapan untuk organisasi kriminal itu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5071_organisasi, '社長は、いい組織とはどんな組織を指すとお考えですか？', 'Presiden, menurut Anda organisasi seperti apa yang baik?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5071_organisasi, '私がこの組織で昇格の決定を担っている桜庭と申します。', 'Saya Sakuraba, orang yang bertanggung jawab membuat keputusan promosi untuk organisasi ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5072_untuk_menenun, '機械で織ることがほとんどですが、手で織ることもありますよ。', 'Kami kebanyakan menenun dengan mesin, namun terkadang kami menenun dengan tangan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5072_untuk_menenun, '羊さんの羊毛で、ひざ掛けを織っているんです。', 'Saya sedang menenun selimut pangkuan dengan wol dari Ms. Sheep.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5072_untuk_menenun, 'うわー、この布地、ケンさんが織ったんですか？', 'Wow, apakah kamu menenun kain ini Ken-san?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5072_untuk_menenun, '私の母親は、最近手織り機でカーペットを織ることにはまっているんです。', 'Akhir-akhir ini, ibuku sangat suka menggunakan alat tenun tangan untuk menenun karpet.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5079_untuk_mengunjungi, '家を訪ねる前に、電話してみた方がいいよ。', 'Anda harus meneleponnya sebelum berkunjung.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5079_untuk_mengunjungi, '信子ちゃん、知らない人が訪ねてきてもドアを開けたらダメよ。', 'Nobuko, jangan buka pintunya meskipun ada orang asing yang berkunjung ke rumah.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5079_untuk_mengunjungi, 'いつか、キャンピングカーを使って、カナダの自然を訪ねる旅がしたいんです。', 'Suatu saat saya ingin melakukan perjalanan mengunjungi keindahan alam Kanada menggunakan camper van.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5079_untuk_mengunjungi, '私は、放課後毎日、不登校の生徒を訪ねました。', 'Saya mengunjungi seorang siswa yang membolos setiap hari sepulang sekolah.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5080_kunjungan, 'この間の訪問の際、何かお気に触るようなことをしてしまいましたか？', 'Apakah ada sesuatu yang membuatmu gelisah ketika aku mengunjungimu beberapa hari yang lalu?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5080_kunjungan, 'もうちょっと安い訪問サービスはないんですか？', 'Bukankah Anda memiliki layanan perawatan kunjungan rumah yang sedikit lebih murah?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5080_kunjungan, '家庭訪問は、先生が生徒の家庭を訪ね、家庭環境を観察し、保護者と話すためのものです。', 'Kunjungan rumah adalah guru mengunjungi rumah siswa, mengamati lingkungan rumah, dan berbincang dengan orang tua.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5080_kunjungan, '日本では、通常歯医者に一回の訪問で治療を済ませてもらうことはできません。', 'Di Jepang, biasanya Anda tidak bisa menyelesaikan semua perawatan gigi hanya dalam satu kunjungan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5082_untuk_meminjamkan, 'すみませんが、人にお金を貸すな、と親に言われているんです。', 'Maafkan aku, tapi orang tuaku telah menyuruhku untuk tidak meminjamkan uang kepada orang lain.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5082_untuk_meminjamkan, 'アパートや家を貸すのって、思ってるほど楽じゃないよ。テナントさんによって、ほんとストレスになるんだから。', 'Menyewakan apartemen atau rumah tidak semudah yang Anda bayangkan. Tergantung pada penyewanya, hal ini bisa menjadi sangat menegangkan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5082_untuk_meminjamkan, 'しょうがねーな。今回だけ、手を貸してやるよ。', 'Saya rasa hal itu tidak dapat dihindari. Kali ini saja, aku akan membantumu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5082_untuk_meminjamkan, '「君の車を貸してくれない？」「絶対にだめだよ。まだ免許持ってないじゃないか。」', '"Bisakah kamu meminjamkan mobilmu padaku?" “Sama sekali tidak. Anda belum memiliki lisensi.”');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5083_reservasi_pribadi, '会社で飛行機を貸し切りにしてバミューダまで行きました。', 'Perusahaan kami menyewa pesawat dan kami pergi ke Bermuda.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5083_reservasi_pribadi, '東京ディズニーランドは時々芸能人貸し切りになる日があります。', 'Tokyo Disneyland terkadang hanya menyediakan hari-hari khusus untuk selebriti.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5083_reservasi_pribadi, 'この宿には、貸し切りの温泉があります。', 'Penginapan ini memiliki sumber air panas pribadi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5084_untuk_mendesak, '彼に金を返すよう迫ったが、逃げられてしまった。', 'Saya mendesaknya untuk membayar kembali uang itu, tetapi dia melarikan diri.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5084_untuk_mendesak, '表面的なことだけを見ていては、物事の本質に迫ることはできません。', 'Jika Anda hanya melihat permukaannya saja, Anda tidak akan pernah bisa mendekati inti permasalahannya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5084_untuk_mendesak, 'どうやら危険が迫っているようですね。', 'Tampaknya bahaya sudah dekat.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5084_untuk_mendesak, '私は今、大きな決断を迫られています', 'Saat ini saya sedang didesak untuk mengambil keputusan besar.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5084_untuk_mendesak, '一秒前には五メートル先にあったコウイチの顔が急に目前に迫ってきてかなりびっくりした。', 'Aku cukup terkejut melihat wajah Koichi yang beberapa detik lalu berjarak lima meter dariku, tiba-tiba muncul tepat di hadapanku.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5085_tekanan, '何故か週末から胸が圧迫される感じがあるんです。', 'Entah kenapa, aku merasakan tekanan yang sesak di dadaku sejak akhir pekan lalu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5085_tekanan, '友達の花子ちゃんは、アナウンサー試験に合格するために圧迫面接の練習をしています。', 'Temanku Hanako sedang berlatih wawancara stres agar bisa lulus ujian menjadi penyiar.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5085_tekanan, '息子への仕送りが家計を圧迫しています。	', 'Mengirimkan uang kepada anak saya membebani keuangan kami.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5085_tekanan, '圧迫に耐えないので、宇宙飛行士になる夢を諦めた。', 'Saya melepaskan impian saya untuk menjadi astronot karena saya tidak tahan dengan tekanan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5086_penganiayaan, '全ての人々が、世界の迫害と差別の歴史を学ぶべきだと思います。', 'Saya pikir semua orang harus mempelajari sejarah penganiayaan dan diskriminasi di dunia.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5086_penganiayaan, '私達は自国にいると迫害を受ける可能性があったので、この国に逃げて来たんです。', 'Kami mengungsi ke negara ini karena ada kemungkinan penganiayaan jika kami tetap tinggal di tanah air.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5086_penganiayaan, 'ロヒンギャ難民は、「世界で最も迫害された少数民族」と呼ばれています。', 'Pengungsi Rohingya disebut sebagai “minoritas yang paling teraniaya di dunia.”');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5087_urgensi, 'ヤツの状況はかなり切迫しているはずです。', 'Situasinya pasti sangat mengerikan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5087_urgensi, 'コウイチは切迫した表情で、「俺、今すぐトイレに行かなきゃヤバイんだ」と言った。', 'Dengan ekspresi mendesak di wajahnya, Koichi berkata, “Aku harus ke kamar mandi sekarang, kalau tidak, keadaannya akan buruk.”');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5087_urgensi, 'ヤクザからお金を借りなければいけないという切迫した危機に直面している。', 'Saya sedang menghadapi krisis jadi saya perlu meminjam uang dari yakuza.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5087_urgensi, '切迫早産で三週間入院したけど、切迫の入院って、本当に辛いんだよ。', 'Saya dirawat di rumah sakit selama tiga minggu karena ancaman persalinan prematur, dan dirawat di rumah sakit karena kondisi seperti itu sangatlah sulit.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5088_tersesat, '私の母はよく道に迷うんです。', 'Ibuku sering tersesat.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5088_tersesat, 'マリオの人形とルイージの人形、どちらを買おうか迷っています。', 'Saya bingung antara membeli patung Mario atau patung Luigi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5088_tersesat, '知らない人がたくさんいるだろうし、正直まだ行くかどうか迷ってるんだよね。', 'Akan ada banyak orang di sana yang saya tidak kenal, jadi sejujurnya, saya masih tidak yakin apakah saya akan pergi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5088_tersesat, '無糖珈琲を買おうかどうか迷っています。', 'Saya tidak yakin apakah saya harus membeli kopi tanpa pemanis.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5089_anak_hilang, 'ディズニーランドでは迷子の放送がないそうですよ。', 'Saya mendengar bahwa di Disneyland, mereka tidak menyiarkan untuk anak-anak hilang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5089_anak_hilang, '日本人でも、新宿駅で迷子になる人は多い。', 'Bahkan orang Jepang pun sering tersesat di Stasiun Shinjuku.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5089_anak_hilang, 'ボーッとしてたら、USJで迷子になりかけた。', 'Saya kurang perhatian, dan saya hampir tersesat di Universal Studios Jepang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5089_anak_hilang, '迷子の子どもの両親を探してあげようとしていただけなのに、誘拐未遂で起訴されてしまいました。', 'Saya hanya berusaha mencari orang tua dari anak yang hilang, tetapi saya dituduh melakukan percobaan penculikan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5090_labirin, 'どこかに、迷路の地図が隠されています。', 'Peta labirin tersembunyi di suatu tempat.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5090_labirin, '誰一人としてその迷路の出口を見つけることができませんでした。', 'Tidak ada yang menemukan jalan keluar dari labirin.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5090_labirin, '春子ちゃんと秋子ちゃんは毎年トウモロコシばたけの迷路で競争しているんだけど、今年はどっちが勝つかな。', 'Haruko dan Akiko bersaing satu sama lain di labirin jagung setiap tahun. Saya ingin tahu siapa yang akan menang tahun ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5090_labirin, '私の息子は迷路が大好きです。', 'Anak saya suka labirin.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5091_takhyul, 'どうせ迷信の一種でしょう。', 'Bagaimanapun, itu mungkin semacam takhayul.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5091_takhyul, '私は迷信を信じないので、今でも割れた鏡を使っています。', 'Saya tidak percaya pada takhayul dan terus menggunakan cermin retak sampai sekarang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5091_takhyul, '年寄りは迷信を信じやすいというのは差別だ。', 'Merupakan tindakan diskriminatif untuk mengatakan bahwa orang-orang lanjut usia lebih cenderung percaya pada takhayul.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5093_untuk_dipulangkan, 'すぐに退院することができるといいんだけど。', 'Saya harap saya akan segera keluar dari rumah sakit.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5093_untuk_dipulangkan, 'いつ退院することができるのかはまだ分かりません。', 'Kami belum tahu kapan dia bisa meninggalkan rumah sakit.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5093_untuk_dipulangkan, '村田さんのお母さんは、赤ちゃんを産んだ後、六時間で退院しました。', 'Ibu Nona Murata meninggalkan rumah sakit enam jam setelah dia melahirkan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5093_untuk_dipulangkan, 'お父さんが退院したらみんなでお祝いをしよう。', 'Saat Ayah keluar dari rumah sakit, mari kita rayakan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5094_berangkat_lebih_awal, '一緒に学校を早退しない？', 'Mengapa kamu tidak meninggalkan sekolah lebih awal bersamaku?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5094_berangkat_lebih_awal, '激しい頭痛があったので、会社を早退して医者に行きました。', 'Karena saya mengalami sakit kepala yang parah, saya pulang kerja lebih awal dan pergi ke dokter.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5094_berangkat_lebih_awal, '会社に早退届を出したのですが、まだ受理されていないようです。', 'Saya mengajukan permintaan untuk pulang kerja lebih awal, tetapi sepertinya belum disetujui.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5094_berangkat_lebih_awal, '学校を早退したら、友達にずるいって言われたんだけど、早退は悪いことなの？', 'Saya meninggalkan sekolah lebih awal dan teman-teman saya mengatakan saya menyontek. Apakah salah jika berangkat lebih awal?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5095_dalam_perjalanan, '途中でスーパーによっておとうふを買って来てちょうだい。', 'Bisakah kamu mampir ke toko kelontong dan membeli tahu dalam perjalanan pulang?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5095_dalam_perjalanan, '昼ご飯を食べてる途中で、電話がかかってきた。', 'Saya sedang makan siang ketika saya mendapat telepon.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5095_dalam_perjalanan, 'あ、そのゲーム、途中で止めちゃったんだよね。', 'Oh, saya berhenti memainkan permainan itu di tengah jalan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5095_dalam_perjalanan, 'その絵はまだ途中です。', 'Lukisan itu masih setengah jadi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5095_dalam_perjalanan, '「今すぐに来られますか？」「ええ。今向かっている途中です。」「え？ということは、場所をご存知なんですね？」「いいえ、分かりません。」', '"Bisakah kamu datang sekarang?" "Tentu, aku sedang dalam perjalanan sekarang." “Hah? Tahukah kamu kemana tujuanmu?” "Tidak, aku tidak melakukannya."');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5097_bajingan, 'あの野郎の物の言い方が気に入らねぇんだよ。', 'Aku hanya tidak suka cara bicara bajingan itu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5097_bajingan, 'パーティーでは野郎どもがどんちゃんさわぎをしていた。', 'Orang-orang itu membuat keributan di pesta itu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5097_bajingan, 'この野郎、よくもやったな！', 'Dasar bajingan, beraninya kamu!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5097_bajingan, 'あのクソ野郎がセールス・マネージャーに昇進するなんて本当に気に食わねぇ。', 'itu dipromosikan menjadi manajer penjualan. Perutku sakit.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5099_kaus_kaki, '靴下三足で五百円だって！めっちゃ安い！', 'Di situ tertulis tiga pasang kaus kaki seharga 500 yen. Itu sangat murah!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5099_kaus_kaki, 'ナイロンの靴下はすべるから好きじゃない。', 'Saya tidak suka kaus kaki nilon karena licin.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5099_kaus_kaki, 'ねえ、知ってた？クリスマスにサンタさんがプレゼントを入れてくれる靴下のこと、英語では 「クリスマスストッキングズ」って言うんだって！', 'Hei, tahukah kamu? Dalam bahasa Inggris, kaus kaki yang diisi Sinterklas dengan hadiah pada hari Natal disebut "stoking Natal"!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5099_kaus_kaki, '靴下をはいたら、今日は何が起きるのかビビッと分かった。', 'Saat saya mengenakan kaus kaki, tiba-tiba saya tahu persis apa yang akan terjadi hari itu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5100_toko_sepatu, '高橋さんの家の前には有名な靴屋さんがあります。', 'Ada toko sepatu terkenal di depan rumah Pak Takahashi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5100_toko_sepatu, 'うちは、いつも同じ靴屋で靴を買うんだよ。', 'Kami selalu membeli sepatu dari toko sepatu yang sama.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5100_toko_sepatu, '靴屋で職人として働きたいからってわざわざイタリアまで留学しなくてもよくない？', 'Hanya karena ingin bekerja sebagai perajin di toko sepatu bukan berarti harus jauh-jauh ke Italia untuk belajar ke luar negeri, bukan?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5100_toko_sepatu, '靴屋での仕事に内定が出たが、結局こちらから断った。', 'Saya ditawari pekerjaan di toko sepatu, tapi akhirnya saya menolak.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5101_sepatu_hujan, 'コウイチはいつも雨の日はピカチュウの長靴をはいてくるよね。', 'Koichi, kamu selalu memakai sepatu bot hujan Pikachu saat hujan, bukan?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5101_sepatu_hujan, '長靴って子供のものだけかと思ってたんだけど、最近じゃ大人用のオシャレな長靴も売ってるんだね。', 'Saya selalu mengira sepatu bot hujan ditujukan untuk anak-anak, namun kini mereka juga menjual sepatu bot hujan modis untuk orang dewasa, bukan?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5101_sepatu_hujan, '病院のベッドに横になりながら、彼は明日妻にいい乗馬用の長靴を買ってやろうと思った。', 'Saat terbaring di ranjang rumah sakit, dia memutuskan akan membelikan sepasang sepatu bot yang bagus untuk istrinya keesokan harinya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5101_sepatu_hujan, '水たまりを見ると近づきたくなる。それが長靴効果。', 'Melihat genangan air membuat Anda ingin mendekatinya. Itulah Efek Rain Boot.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5102_pengaruh_buruk, 'あの男がみんなに悪影響を与えたんだよ。', 'Pria itu memberi pengaruh buruk pada kita semua.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5102_pengaruh_buruk, '悪影響が自分の子どもにまで及んでいたことに気が付き、彼女は泣き出した。', 'Dia menangis ketika dia menyadari bahwa pengaruh buruknya merembes ke anak-anaknya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5102_pengaruh_buruk, 'YouTubeは便利だけど、子供に悪影響が出そうな動画もあるから注意が必要だよね。', 'YouTube memang nyaman, namun kita perlu berhati-hati karena beberapa video mungkin berbahaya bagi anak-anak.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5102_pengaruh_buruk, 'スマホが人類にもたらした悪影響は計り知れないと思うよ。', 'Saya rasa dampak negatif ponsel pintar terhadap umat manusia tidak dapat diukur.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5103_untuk_pensiun, '病気のせいで、隠居することになりました。', 'Penyakit saya akhirnya memaksa saya pensiun.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5103_untuk_pensiun, '私の父は農村で隠居しています。', 'Ayah saya pensiunan di desa pertanian.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5103_untuk_pensiun, '社会人生活に嫌気がさしたので、持っている株を全て売って隠居することにしました。', 'Saya muak dengan kehidupan kerja saya, jadi saya memutuskan untuk menjual semua saham saya dan memasuki masa pensiun.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5104_izakaya, 'おすすめの居酒屋とかってありますか？', 'Apakah Anda punya rekomendasi izakaya yang enak?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5104_izakaya, 'あの居酒屋の店長、本当に面白いよね。', 'Manajer izakaya itu lucu sekali.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5104_izakaya, '高級居酒屋よりも安いチェーン居酒屋の方がほっとする。', 'Izakaya rantai yang lebih murah lebih menenangkan daripada izakaya kelas atas.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5104_izakaya, '扉が開き、居酒屋の中に老婆が一人ぼっちで入ってきた。', 'Pintu terbuka dan seorang wanita tua masuk ke izakaya sendirian.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5197_untuk_membandingkan, '同じ年の女の子と比較すると、私の娘は体力があまりありません。', 'Putri saya kurang memiliki kekuatan fisik dibandingkan gadis-gadis lain seusianya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5197_untuk_membandingkan, 'では、次に二つのデータを比較してみましょう。', 'Sekarang mari kita bandingkan kedua kumpulan data tersebut.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5197_untuk_membandingkan, '元カノと比較するの、やめてよ！', 'Berhenti membandingkan aku dengan mantan pacarmu!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6651_yukata, '花火大会には浴衣で行く予定です。', 'Saya berencana untuk mengenakan yukata ke pertunjukan kembang api.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6651_yukata, 'あの旅館では浴衣がレンタルできます。', 'Yukata bisa disewa di ryokan itu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6651_yukata, 'え、カナちゃんって自分で浴衣が着れるの？', 'Tunggu, Kana-chan, kamu bisa memakai yukata sendiri?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6651_yukata, '彼女は自分の古い考え方にしがみついて、毎晩パジャマの代わりに浴衣を着て過ごした。', 'Dia berpegang teguh pada cara berpikirnya yang lama dan mengenakan yukata alih-alih piyama setiap malam.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7578_persiapan, 'いつまで寝てるの！早く起きて支度しなさい！！', 'Berapa lama kamu tidur? Bangun sekarang dan bersiaplah!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7578_persiapan, '学校へ行く支度ができたら呼んでください。	', 'Tolong hubungi saya ketika Anda sudah siap ke sekolah.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7578_persiapan, '母は台所で夕飯の支度を、父は部屋で旅行の支度をしています。	', 'Ibu sedang menyiapkan makan malam di dapur dan ayah sedang mengatur perjalanan di kamarnya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7603_ruang_tamu, '「今、どこ？」「え、今、居間だよ」', '"Kamu ada di mana?" "Aku di ruang tamu sekarang."');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7603_ruang_tamu, '父は居間でテレビを観ています。', 'Ayah sedang menonton TV di ruang tamu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7603_ruang_tamu, '居間に靴下が脱ぎっぱなしになってるよ。', 'Anda melepas kaus kaki Anda di ruang tamu dan meninggalkannya di sana.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7603_ruang_tamu, '「ごはんできたよー！」と言っても、だれも居間から動こうとしなかった。', 'Bahkan ketika saya berkata, "Makan malam sudah siap!" tidak ada yang mau beranjak dari ruang duduk.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7656_untuk_membungkuk, '屈むと腰が痛いんです。', 'Saya merasakan sakit di punggung bawah ketika saya membungkuk.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7656_untuk_membungkuk, '屈んで靴下をはきました。', 'Aku membungkuk dan memakai kaus kakiku.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7656_untuk_membungkuk, '急に胸が締めつけられているような感覚におそわれ、屈んでしまった。', 'Tiba-tiba aku merasakan dadaku sesak dan membungkuk.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7716_pensiun, 'そのタレントは引退を全く口にしない。', 'Selebritas itu sama sekali tidak menyebutkan pensiun.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7716_pensiun, 'ボクサーは引退後太ることが多いらしい。', 'Saya mendengar bahwa petinju cenderung menambah berat badan setelah pensiun.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7716_pensiun, 'そろそろYoutube界を引退しようと考えてるんだ。', 'Saya berniat untuk segera pensiun dari dunia Youtube.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7716_pensiun, '明日はバスケ部の先輩が引退する日だ.', 'Besok seorang anggota senior tim bola basket saya akan pensiun dari tim.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7770_untuk_menyerahkan, 'プレゼントを手渡す勇気はありません。', 'Saya tidak memiliki keberanian untuk memberinya hadiah.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7770_untuk_menyerahkan, 'コウイチは突然、使用済みの靴下を手渡してきた。', 'Koichi tiba-tiba menyerahkan kaus kaki yang sudah dia pakai kepadaku.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7770_untuk_menyerahkan, 'できれば直接会って、手渡しで渡したいんです。', 'Saya ingin bertemu langsung dengan Anda dan mengirimkannya langsung kepada Anda, jika memungkinkan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8541_untuk_merindukan, '英語ペラペラ、かっこいいよね！憧れる。', 'Berbicara bahasa Inggris dengan lancar itu keren! Saya mengaguminya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8541_untuk_merindukan, 'あの先輩に憧れているんです。', 'Aku mengagumi senpai itu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8541_untuk_merindukan, '都会生活に憧れて上京してくる若者は多い。', 'Banyak anak muda yang tertarik dengan ide kehidupan kota dan datang ke Tokyo.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8682_logika, '現実には理屈だけじゃ通用しないことは山ほどある。', 'Kenyataannya, ada banyak hal di mana logika saja tidak akan berhasil.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8682_logika, 'ホッケーは理屈抜きで好きなんです。', 'Saya suka hoki tanpa alasan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8682_logika, '理屈で分かっていても、実際にやってみると難しいことってたくさんありますよね？', 'Ada banyak hal yang Anda pahami secara logika, namun sulit jika Anda benar-benar mencoba melakukannya, bukan?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8682_logika, '小難しい理屈ばっかりこねて、本当に嫌な人ね。', 'Anda selalu memperumit banyak hal dengan alasan mewah Anda; kamu cukup menjengkelkan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8940_untuk_ditemani_oleh, 'ほう、誰も従えず、一人でここまで来たのかい？', 'Oh, apakah kamu datang jauh-jauh ke sini sendirian tanpa ada yang menemanimu?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8940_untuk_ditemani_oleh, 'その歌手は三人のボディガードを従えてやってきた。 ', 'Penyanyi itu datang dengan tiga pengawal di belakangnya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8940_untuk_ditemani_oleh, '二十才の時には、すでに百人の社員を従える社長になっていた。', 'Pada usia dua puluh tahun, dia telah menjadi presiden perusahaan yang memimpin lebih dari seratus karyawan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9073_menyerahkan_keputusan_kepada_orang_lain, 'ヘアスタイルは、お任せでお願いできますか？', 'Bisakah saya menyerahkan keputusan gaya rambut saya kepada Anda?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9073_menyerahkan_keputusan_kepada_orang_lain, '五千円のお任せコースで予約したよ。', 'Saya membuat reservasi untuk omakase spesial 5.000 yen.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9073_menyerahkan_keputusan_kepada_orang_lain, '法律の相談は、私共にお任せください！', 'Jika Anda memerlukan nasihat hukum, Anda dapat mengandalkan saya!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9289_tujuan, 'これは客観的事実です。', 'Ini adalah fakta obyektif.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9289_tujuan, '客観的に見て、今の発言はおかしいです。', 'Secara obyektif, apa yang baru saja Anda katakan tidak benar.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9289_tujuan, '客観的なデータがないと説得力に欠けてしまいます。', 'Tanpa data yang obyektif, maka tidak ada persuasif.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9305_persatuan, '文体は、です・ます調に統一してください。', 'Silakan satukan gaya penulisannya ke dalam bentuk desu-masu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9305_persatuan, 'まずは評価の基準を統一しましょう。', 'Pertama, mari kita konsolidasikan kriteria evaluasi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9305_persatuan, '戦国時代に天下統一を目指した3人は誰でしょう。', 'Siapakah tiga individu yang bertujuan untuk mempersatukan negara selama periode Negara-Negara Berperang?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9307_untuk_menghabiskan, '勉強に時間を費やすのはとても良いことです。', 'Mendedikasikan waktu untuk belajar adalah hal yang sangat baik.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9307_untuk_menghabiskan, 'ムダな時間と労力を費やさないよう、気をつけています。', 'Saya berusaha berhati-hati agar tidak menyia-nyiakan waktu dan tenaga.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9307_untuk_menghabiskan, '男は、生活費のほとんどをパチンコに費やしてしまった。', 'Pria itu menghabiskan sebagian besar biaya hidupnya untuk pachinko.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9328_untuk_menanggapi, 'お客様の多種多様なニーズに応えるのは難しい。', 'Sulit untuk memenuhi beragam kebutuhan pelanggan kami.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9328_untuk_menanggapi, 'うれしいけど、あなたの気持ちには応えられないよ。ごめんね。', 'Aku tersanjung, tapi aku tidak bisa membalas perasaanmu. Saya minta maaf.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9328_untuk_menanggapi, '社長からの期待に、全力で応えた。', 'Kami melakukan yang terbaik untuk memenuhi harapan presiden.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9340_lap_tangan, 'すいません、お手拭きをもらえますか？', 'Permisi, bolehkah saya minta lap tangan?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9340_lap_tangan, 'あ、よかったらこのお手拭き使って！', 'Oh, jangan ragu untuk menggunakan lap tangan ini!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9340_lap_tangan, 'レストランで席につくと、まずお手拭きで手を拭きます。', 'Ketika saya duduk di sebuah restoran, pertama-tama saya menyeka tangan saya dengan lap tangan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9373_tumbuh_terlambat, '秋も更けて、もうすぐキノコが美味しいシーズンですね。', 'Kita semakin memasuki musim gugur, dan musim jamur lezat sudah dekat, bukan?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9373_tumbuh_terlambat, 'こうして夜は更けて行ったのでした。', 'Dan malam pun terus berlalu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9373_tumbuh_terlambat, '保育園用のオムツ一つ一つに子供の名前と似顔絵をかいてたら、すっかり夜が更けちゃったんだよね。', 'Saya sedang menulis nama anak saya dan menggambar wajahnya di setiap popoknya untuk tempat penitipan anak, dan sebelum saya menyadarinya, hari sudah sangat larut.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9459_untuk_menangkap, '兄はタクシーを捕まえるのが上手い。', 'Kakakku pandai memanggil taksi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9459_untuk_menangkap, '警察はようやく犯人を捕まえた。', 'Polisi akhirnya menangkap pelakunya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9459_untuk_menangkap, '子どもが虫を捕まえてきた。', 'Anak itu menangkap seekor serangga dan kembali membawanya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9459_untuk_menangkap, '彼女は、チャンスをのがさず捕まえたんです。', 'Dia memanfaatkan kesempatan itu tanpa melewatkannya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9459_untuk_menangkap, '『ポケモン』は、モンスターボールで色んなポケモンを捕まえ、その捕まえたポケモンを戦わせて育てて強くしていくゲームです。
', '"Pokemon" adalah permainan di mana pemain menangkap berbagai Pokemon menggunakan Pokeball dan membuat Pokemon yang ditangkap itu bertarung, tumbuh, dan menjadi lebih kuat.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9480_menjadi_lapar, 'お腹が空いてきました…そろそろお昼にしませんか？', 'Aku mulai lapar… Bagaimana kalau kita istirahat makan siang?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9480_menjadi_lapar, 'お腹が空いたら、ここにドーナツがあるから食べてね！', 'Jika Anda lapar, ada beberapa donat di sini, silakan memakannya!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9480_menjadi_lapar, '昨日から何も食べてなくて、めっちゃお腹が空いてるんだよね。', 'Saya belum makan apa pun sejak kemarin, jadi saya kelaparan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9496_untuk_bekerja_menuju, '早急に問題の解決を図る必要があります。', 'Kita perlu mengambil langkah cepat untuk menyelesaikan masalah ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9496_untuk_bekerja_menuju, '状況の改善を図るために話し合いました。', 'Kami mendiskusikan bagaimana memperbaiki situasi ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9496_untuk_bekerja_menuju, '私達は、このような取り組みで社内のコミュニケーション強化を図っています。', 'Kami berupaya memperkuat komunikasi internal melalui inisiatif semacam ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9496_untuk_bekerja_menuju, '図らずも計画は成功しましたが、いくつかの課題も残されています。', 'Tanpa diduga, rencana tersebut berhasil, namun masih ada beberapa masalah.');

  -- 4. PREREQUISITES
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1314_mengisyaratkan, id FROM items WHERE type = 'radical' AND (slug = '63' OR id = '63') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_1314_mengisyaratkan, r_331_panggilan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1315_tangga, id FROM items WHERE type = 'radical' AND (slug = '8792' OR id = '8792') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1315_tangga, id FROM items WHERE type = 'radical' AND (slug = '160' OR id = '160') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1319_mundur, id FROM items WHERE type = 'radical' AND (slug = '114' OR id = '114') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1319_mundur, id FROM items WHERE type = 'radical' AND (slug = '196' OR id = '196') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1320_menghasilkan, id FROM items WHERE type = 'radical' AND (slug = '37' OR id = '37') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_1320_menghasilkan, r_332_keluar);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1321_khawatir, id FROM items WHERE type = 'radical' AND (slug = '232' OR id = '232') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1321_khawatir, id FROM items WHERE type = 'radical' AND (slug = '8783' OR id = '8783') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1321_khawatir, id FROM items WHERE type = 'radical' AND (slug = '262' OR id = '262') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1322_waktu_luang, id FROM items WHERE type = 'radical' AND (slug = '22' OR id = '22') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1322_waktu_luang, id FROM items WHERE type = 'radical' AND (slug = '8792' OR id = '8792') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1322_waktu_luang, id FROM items WHERE type = 'radical' AND (slug = '217' OR id = '217') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1322_waktu_luang, id FROM items WHERE type = 'radical' AND (slug = '30' OR id = '30') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1323_menenun, id FROM items WHERE type = 'radical' AND (slug = '86' OR id = '86') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1323_menenun, id FROM items WHERE type = 'radical' AND (slug = '197' OR id = '197') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1323_menenun, id FROM items WHERE type = 'radical' AND (slug = '194' OR id = '194') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_1324_meminjamkan, r_310_pengganti);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1324_meminjamkan, id FROM items WHERE type = 'radical' AND (slug = '94' OR id = '94') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1325_sesat, id FROM items WHERE type = 'radical' AND (slug = '114' OR id = '114') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1325_sesat, id FROM items WHERE type = 'radical' AND (slug = '98' OR id = '98') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1326_sesat, id FROM items WHERE type = 'radical' AND (slug = '194' OR id = '194') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1326_sesat, id FROM items WHERE type = 'radical' AND (slug = '16' OR id = '16') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1326_sesat, id FROM items WHERE type = 'radical' AND (slug = '1' OR id = '1') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1326_sesat, id FROM items WHERE type = 'radical' AND (slug = '65' OR id = '65') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1327_mengundang, id FROM items WHERE type = 'radical' AND (slug = '117' OR id = '117') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1327_mengundang, id FROM items WHERE type = 'radical' AND (slug = '135' OR id = '135') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1327_mengundang, id FROM items WHERE type = 'radical' AND (slug = '200' OR id = '200') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1328_dapatkan_posisi, id FROM items WHERE type = 'radical' AND (slug = '299' OR id = '299') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1328_dapatkan_posisi, id FROM items WHERE type = 'radical' AND (slug = '47' OR id = '47') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1329_mengunjungi, id FROM items WHERE type = 'radical' AND (slug = '117' OR id = '117') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1329_mengunjungi, id FROM items WHERE type = 'radical' AND (slug = '66' OR id = '66') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1330_marah, id FROM items WHERE type = 'radical' AND (slug = '19' OR id = '19') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1330_marah, id FROM items WHERE type = 'radical' AND (slug = '30' OR id = '30') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1330_marah, id FROM items WHERE type = 'radical' AND (slug = '65' OR id = '65') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1331_naik, id FROM items WHERE type = 'radical' AND (slug = '22' OR id = '22') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1331_naik, id FROM items WHERE type = 'radical' AND (slug = '5' OR id = '5') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1331_naik, id FROM items WHERE type = 'radical' AND (slug = '106' OR id = '106') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1332_tidur, id FROM items WHERE type = 'radical' AND (slug = '53' OR id = '53') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_1332_tidur, r_312_masyarakat);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1333_mengantuk, id FROM items WHERE type = 'radical' AND (slug = '53' OR id = '53') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1333_mengantuk, id FROM items WHERE type = 'radical' AND (slug = '9390' OR id = '9390') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1334_gejala, id FROM items WHERE type = 'radical' AND (slug = '187' OR id = '187') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1334_gejala, id FROM items WHERE type = 'radical' AND (slug = '229' OR id = '229') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1335_mengencangkan, id FROM items WHERE type = 'radical' AND (slug = '86' OR id = '86') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1335_mengencangkan, id FROM items WHERE type = 'radical' AND (slug = '55' OR id = '55') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1335_mengencangkan, id FROM items WHERE type = 'radical' AND (slug = '102' OR id = '102') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1336_keinginan, id FROM items WHERE type = 'radical' AND (slug = '114' OR id = '114') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1336_keinginan, id FROM items WHERE type = 'radical' AND (slug = '52' OR id = '52') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1338_padat, id FROM items WHERE type = 'radical' AND (slug = '103' OR id = '103') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_1338_padat, r_308_pertanian);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1339_tepian, id FROM items WHERE type = 'radical' AND (slug = '55' OR id = '55') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1339_tepian, id FROM items WHERE type = 'radical' AND (slug = '20' OR id = '20') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_1339_tepian, r_309_menyapu);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1340_ekstrim, id FROM items WHERE type = 'radical' AND (slug = '23' OR id = '23') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1340_ekstrim, id FROM items WHERE type = 'radical' AND (slug = '1' OR id = '1') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1340_ekstrim, id FROM items WHERE type = 'radical' AND (slug = '14' OR id = '14') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1340_ekstrim, id FROM items WHERE type = 'radical' AND (slug = '16' OR id = '16') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1340_ekstrim, id FROM items WHERE type = 'radical' AND (slug = '30' OR id = '30') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1341_rute, id FROM items WHERE type = 'radical' AND (slug = '114' OR id = '114') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_1341_rute, r_313_kelebihan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1342_sehat, id FROM items WHERE type = 'radical' AND (slug = '75' OR id = '75') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1342_sehat, id FROM items WHERE type = 'radical' AND (slug = '206' OR id = '206') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1342_sehat, id FROM items WHERE type = 'radical' AND (slug = '220' OR id = '220') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1343_kemudahan, id FROM items WHERE type = 'radical' AND (slug = '62' OR id = '62') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1343_kemudahan, id FROM items WHERE type = 'radical' AND (slug = '8761' OR id = '8761') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1343_kemudahan, id FROM items WHERE type = 'radical' AND (slug = '105' OR id = '105') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1343_kemudahan, id FROM items WHERE type = 'radical' AND (slug = '45' OR id = '45') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1344_pria, id FROM items WHERE type = 'radical' AND (slug = '8822' OR id = '8822') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1344_pria, id FROM items WHERE type = 'radical' AND (slug = '176' OR id = '176') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_2429_lama_untuk, id FROM items WHERE type = 'radical' AND (slug = '232' OR id = '232') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_2429_lama_untuk, id FROM items WHERE type = 'radical' AND (slug = '55' OR id = '55') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_2429_lama_untuk, id FROM items WHERE type = 'radical' AND (slug = '125' OR id = '125') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3844_barang_dagangan_yang_tidak_terjual, id FROM items WHERE type = 'kanji' AND (slug = '912' OR id = '912') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3844_barang_dagangan_yang_tidak_terjual, id FROM items WHERE type = 'kanji' AND (slug = '967' OR id = '967') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3996_perilaku_masyarakat, id FROM items WHERE type = 'kanji' AND (slug = '946' OR id = '946') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3996_perilaku_masyarakat, id FROM items WHERE type = 'kanji' AND (slug = '633' OR id = '633') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4014_kejayaan, id FROM items WHERE type = 'kanji' AND (slug = '1006' OR id = '1006') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4014_kejayaan, id FROM items WHERE type = 'kanji' AND (slug = '567' OR id = '567') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4074_pengaturan, id FROM items WHERE type = 'kanji' AND (slug = '966' OR id = '966') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4074_pengaturan, id FROM items WHERE type = 'kanji' AND (slug = '687' OR id = '687') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4188_melanjutkan, id FROM items WHERE type = 'kanji' AND (slug = '1075' OR id = '1075') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4188_melanjutkan, id FROM items WHERE type = 'kanji' AND (slug = '1069' OR id = '1069') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4188_melanjutkan, id FROM items WHERE type = 'kanji' AND (slug = '962' OR id = '962') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4468_perincian, id FROM items WHERE type = 'kanji' AND (slug = '501' OR id = '501') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4468_perincian, id FROM items WHERE type = 'kanji' AND (slug = '1150' OR id = '1150') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4771_untuk_memberi, id FROM items WHERE type = 'kanji' AND (slug = '1249' OR id = '1249') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4785_lanskap, id FROM items WHERE type = 'kanji' AND (slug = '1256' OR id = '1256') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4785_lanskap, id FROM items WHERE type = 'kanji' AND (slug = '1175' OR id = '1175') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4810_menjadi_milik, id FROM items WHERE type = 'kanji' AND (slug = '1268' OR id = '1268') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4833_orang_lanjut_usia, id FROM items WHERE type = 'kanji' AND (slug = '546' OR id = '546') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4833_orang_lanjut_usia, id FROM items WHERE type = 'kanji' AND (slug = '1276' OR id = '1276') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4888_bulan_demi_bulan_berikutnya, id FROM items WHERE type = 'kanji' AND (slug = '1310' OR id = '1310') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4888_bulan_demi_bulan_berikutnya, id FROM items WHERE type = 'kanji' AND (slug = '590' OR id = '590') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4888_bulan_demi_bulan_berikutnya, id FROM items WHERE type = 'kanji' AND (slug = '477' OR id = '477') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4889_tahun_demi_tahun_berikutnya, id FROM items WHERE type = 'kanji' AND (slug = '1310' OR id = '1310') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4889_tahun_demi_tahun_berikutnya, id FROM items WHERE type = 'kanji' AND (slug = '590' OR id = '590') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4889_tahun_demi_tahun_berikutnya, id FROM items WHERE type = 'kanji' AND (slug = '546' OR id = '546') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4973_penjualan_eksklusif, id FROM items WHERE type = 'kanji' AND (slug = '1248' OR id = '1248') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4973_penjualan_eksklusif, id FROM items WHERE type = 'kanji' AND (slug = '714' OR id = '714') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4973_penjualan_eksklusif, id FROM items WHERE type = 'kanji' AND (slug = '1246' OR id = '1246') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4973_penjualan_eksklusif, id FROM items WHERE type = 'kanji' AND (slug = '587' OR id = '587') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5000_pengecut, id FROM items WHERE type = 'kanji' AND (slug = '1228' OR id = '1228') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5000_pengecut, id FROM items WHERE type = 'kanji' AND (slug = '1257' OR id = '1257') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5001_untuk_keluar, id FROM items WHERE type = 'kanji' AND (slug = '1257' OR id = '1257') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5003_untuk_digantung, id FROM items WHERE type = 'kanji' AND (slug = '1278' OR id = '1278') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5004_untuk_menyembunyikan_diri_sendiri, id FROM items WHERE type = 'kanji' AND (slug = '1277' OR id = '1277') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5005_harga, id FROM items WHERE type = 'kanji' AND (slug = '1176' OR id = '1176') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5005_harga, k_1315_tangga);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5006_kesehatan, k_1342_sehat);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5006_kesehatan, k_1343_kemudahan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5007_amnesia, k_1342_sehat);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5007_amnesia, id FROM items WHERE type = 'kanji' AND (slug = '1042' OR id = '1042') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5007_amnesia, k_1334_gejala);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5010_mencari_pekerjaan, k_1328_dapatkan_posisi);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5010_mencari_pekerjaan, id FROM items WHERE type = 'kanji' AND (slug = '1189' OR id = '1189') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5011_bekerja, k_1328_dapatkan_posisi);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5011_bekerja, id FROM items WHERE type = 'kanji' AND (slug = '756' OR id = '756') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5012_membosankan, k_1319_mundur);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5012_membosankan, k_1320_menghasilkan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5015_sushi_gulung, id FROM items WHERE type = 'kanji' AND (slug = '1273' OR id = '1273') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5016_lumpia, id FROM items WHERE type = 'kanji' AND (slug = '931' OR id = '931') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5016_lumpia, id FROM items WHERE type = 'kanji' AND (slug = '1273' OR id = '1273') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5017_lakukan_yang_terbaik, id FROM items WHERE type = 'kanji' AND (slug = '927' OR id = '927') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5017_lakukan_yang_terbaik, id FROM items WHERE type = 'kanji' AND (slug = '1205' OR id = '1205') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5018_menjadi_marah, k_1330_marah);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5019_untuk_berteriak, k_1330_marah);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5019_untuk_berteriak, id FROM items WHERE type = 'kanji' AND (slug = '766' OR id = '766') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5020_sebuah_kekhawatiran, k_1321_khawatir);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5021_khawatir, k_1321_khawatir);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5023_masalah, k_1325_sesat);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5023_masalah, k_1326_sesat);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5024_bujukan, k_1327_mengundang);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5024_bujukan, k_1326_sesat);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5025_untuk_melihat_sifat_asli_sesuatu, id FROM items WHERE type = 'kanji' AND (slug = '558' OR id = '558') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5025_untuk_melihat_sifat_asli_sesuatu, id FROM items WHERE type = 'kanji' AND (slug = '1257' OR id = '1257') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5026_bodoh, id FROM items WHERE type = 'kanji' AND (slug = '701' OR id = '701') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5026_bodoh, id FROM items WHERE type = 'kanji' AND (slug = '1257' OR id = '1257') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5027_untuk_menarik_sesuatu_keluar, id FROM items WHERE type = 'kanji' AND (slug = '1257' OR id = '1257') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5027_untuk_menarik_sesuatu_keluar, id FROM items WHERE type = 'kanji' AND (slug = '483' OR id = '483') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5029_untuk_mengundang, k_1314_mengisyaratkan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5029_untuk_mengundang, id FROM items WHERE type = 'kanji' AND (slug = '726' OR id = '726') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5030_petunjuk, id FROM items WHERE type = 'kanji' AND (slug = '474' OR id = '474') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5030_petunjuk, id FROM items WHERE type = 'kanji' AND (slug = '1278' OR id = '1278') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5032_promosi_pekerjaan, k_1331_naik);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5032_promosi_pekerjaan, id FROM items WHERE type = 'kanji' AND (slug = '748' OR id = '748') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5033_waktu_luang, k_1322_waktu_luang);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5034_liburan, id FROM items WHERE type = 'kanji' AND (slug = '542' OR id = '542') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5034_liburan, k_1322_waktu_luang);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5035_uang_kembalian, id FROM items WHERE type = 'kanji' AND (slug = '609' OR id = '609') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5035_uang_kembalian, id FROM items WHERE type = 'kanji' AND (slug = '1279' OR id = '1279') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5036_untuk_mengganti, id FROM items WHERE type = 'kanji' AND (slug = '966' OR id = '966') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5036_untuk_mengganti, id FROM items WHERE type = 'kanji' AND (slug = '1279' OR id = '1279') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5037_ganti_pakaian, id FROM items WHERE type = 'kanji' AND (slug = '846' OR id = '846') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5037_ganti_pakaian, id FROM items WHERE type = 'kanji' AND (slug = '1279' OR id = '1279') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5038_terakhir, id FROM items WHERE type = 'kanji' AND (slug = '688' OR id = '688') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5038_terakhir, k_1340_ekstrim);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5041_kutub_selatan, id FROM items WHERE type = 'kanji' AND (slug = '634' OR id = '634') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5041_kutub_selatan, k_1340_ekstrim);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5043_tidak_terima_kasih, id FROM items WHERE type = 'kanji' AND (slug = '1009' OR id = '1009') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5043_tidak_terima_kasih, id FROM items WHERE type = 'kanji' AND (slug = '1263' OR id = '1263') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5044_jangan_pedulikan_aku, id FROM items WHERE type = 'kanji' AND (slug = '1263' OR id = '1263') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5045_skala_besar, id FROM items WHERE type = 'kanji' AND (slug = '453' OR id = '453') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5045_skala_besar, id FROM items WHERE type = 'kanji' AND (slug = '1191' OR id = '1191') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5045_skala_besar, id FROM items WHERE type = 'kanji' AND (slug = '1264' OR id = '1264') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5046_skala_kecil, id FROM items WHERE type = 'kanji' AND (slug = '463' OR id = '463') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5046_skala_kecil, id FROM items WHERE type = 'kanji' AND (slug = '1191' OR id = '1191') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5046_skala_kecil, id FROM items WHERE type = 'kanji' AND (slug = '1264' OR id = '1264') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5047_tangga, id FROM items WHERE type = 'kanji' AND (slug = '835' OR id = '835') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5047_tangga, k_1315_tangga);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5048_perlahan_lahan, k_1315_tangga);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5048_perlahan_lahan, id FROM items WHERE type = 'kanji' AND (slug = '856' OR id = '856') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5049_panggung, k_1315_tangga);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5049_panggung, id FROM items WHERE type = 'kanji' AND (slug = '835' OR id = '835') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5050_langkah_pertama, id FROM items WHERE type = 'kanji' AND (slug = '825' OR id = '825') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5050_langkah_pertama, id FROM items WHERE type = 'kanji' AND (slug = '440' OR id = '440') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5050_langkah_pertama, k_1315_tangga);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5051_padat, k_1338_padat);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5052_kepadatan, k_1338_padat);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5052_kepadatan, id FROM items WHERE type = 'kanji' AND (slug = '725' OR id = '725') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5053_sindroma, k_1334_gejala);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5054_gejala, k_1334_gejala);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5054_gejala, id FROM items WHERE type = 'kanji' AND (slug = '1183' OR id = '1183') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5055_insomnia, id FROM items WHERE type = 'kanji' AND (slug = '563' OR id = '563') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5055_insomnia, k_1332_tidur);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5055_insomnia, k_1334_gejala);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5056_menyakitkan, id FROM items WHERE type = 'kanji' AND (slug = '1318' OR id = '1318') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5058_mengantuk, k_1332_tidur);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5059_tidur, k_1333_mengantuk);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5059_tidur, k_1332_tidur);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5060_tepian, k_1339_tepian);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5061_tip, id FROM items WHERE type = 'kanji' AND (slug = '543' OR id = '543') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5061_tip, k_1339_tepian);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5062_setengah_selesai, id FROM items WHERE type = 'kanji' AND (slug = '469' OR id = '469') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5062_setengah_selesai, k_1341_rute);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5062_setengah_selesai, id FROM items WHERE type = 'kanji' AND (slug = '518' OR id = '518') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5062_setengah_selesai, k_1339_tepian);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5063_ekstrim, k_1340_ekstrim);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5063_ekstrim, k_1339_tepian);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5066_memasok, id FROM items WHERE type = 'kanji' AND (slug = '1244' OR id = '1244') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5066_memasok, id FROM items WHERE type = 'kanji' AND (slug = '1345' OR id = '1345') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5068_kenaikan_gaji, k_1331_naik);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5068_kenaikan_gaji, id FROM items WHERE type = 'kanji' AND (slug = '1345' OR id = '1345') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5069_untuk_menyimpulkan, k_1335_mengencangkan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5069_untuk_menyimpulkan, id FROM items WHERE type = 'kanji' AND (slug = '1009' OR id = '1009') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5070_untuk_mengencangkan, k_1335_mengencangkan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5071_organisasi, id FROM items WHERE type = 'kanji' AND (slug = '670' OR id = '670') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5071_organisasi, k_1323_menenun);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5072_untuk_menenun, k_1323_menenun);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5079_untuk_mengunjungi, k_1329_mengunjungi);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5080_kunjungan, k_1329_mengunjungi);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5080_kunjungan, id FROM items WHERE type = 'kanji' AND (slug = '859' OR id = '859') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5082_untuk_meminjamkan, k_1324_meminjamkan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5083_reservasi_pribadi, k_1324_meminjamkan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5083_reservasi_pribadi, id FROM items WHERE type = 'kanji' AND (slug = '502' OR id = '502') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5084_untuk_mendesak, k_1336_keinginan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5085_tekanan, id FROM items WHERE type = 'kanji' AND (slug = '1106' OR id = '1106') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5085_tekanan, k_1336_keinginan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5086_penganiayaan, k_1336_keinginan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5086_penganiayaan, id FROM items WHERE type = 'kanji' AND (slug = '1093' OR id = '1093') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5087_urgensi, id FROM items WHERE type = 'kanji' AND (slug = '502' OR id = '502') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5087_urgensi, k_1336_keinginan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5088_tersesat, k_1325_sesat);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5089_anak_hilang, k_1325_sesat);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5089_anak_hilang, id FROM items WHERE type = 'kanji' AND (slug = '462' OR id = '462') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5090_labirin, k_1325_sesat);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5090_labirin, id FROM items WHERE type = 'kanji' AND (slug = '758' OR id = '758') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5091_takhyul, k_1325_sesat);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5091_takhyul, id FROM items WHERE type = 'kanji' AND (slug = '940' OR id = '940') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5093_untuk_dipulangkan, k_1319_mundur);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5093_untuk_dipulangkan, id FROM items WHERE type = 'kanji' AND (slug = '744' OR id = '744') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5094_berangkat_lebih_awal, id FROM items WHERE type = 'kanji' AND (slug = '547' OR id = '547') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5094_berangkat_lebih_awal, k_1319_mundur);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5095_dalam_perjalanan, k_1341_rute);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5095_dalam_perjalanan, id FROM items WHERE type = 'kanji' AND (slug = '469' OR id = '469') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5097_bajingan, id FROM items WHERE type = 'kanji' AND (slug = '848' OR id = '848') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5097_bajingan, k_1344_pria);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5099_kaus_kaki, id FROM items WHERE type = 'kanji' AND (slug = '1337' OR id = '1337') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5099_kaus_kaki, id FROM items WHERE type = 'kanji' AND (slug = '451' OR id = '451') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5100_toko_sepatu, id FROM items WHERE type = 'kanji' AND (slug = '1337' OR id = '1337') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5100_toko_sepatu, id FROM items WHERE type = 'kanji' AND (slug = '724' OR id = '724') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5101_sepatu_hujan, id FROM items WHERE type = 'kanji' AND (slug = '632' OR id = '632') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5101_sepatu_hujan, id FROM items WHERE type = 'kanji' AND (slug = '1337' OR id = '1337') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5102_pengaruh_buruk, id FROM items WHERE type = 'kanji' AND (slug = '829' OR id = '829') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5102_pengaruh_buruk, id FROM items WHERE type = 'kanji' AND (slug = '1251' OR id = '1251') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5102_pengaruh_buruk, id FROM items WHERE type = 'kanji' AND (slug = '1254' OR id = '1254') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5103_untuk_pensiun, id FROM items WHERE type = 'kanji' AND (slug = '1277' OR id = '1277') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5103_untuk_pensiun, id FROM items WHERE type = 'kanji' AND (slug = '1280' OR id = '1280') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5104_izakaya, id FROM items WHERE type = 'kanji' AND (slug = '1280' OR id = '1280') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5104_izakaya, id FROM items WHERE type = 'kanji' AND (slug = '743' OR id = '743') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5104_izakaya, id FROM items WHERE type = 'kanji' AND (slug = '724' OR id = '724') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5197_untuk_membandingkan, id FROM items WHERE type = 'kanji' AND (slug = '1088' OR id = '1088') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5197_untuk_membandingkan, id FROM items WHERE type = 'kanji' AND (slug = '1287' OR id = '1287') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6651_yukata, id FROM items WHERE type = 'kanji' AND (slug = '979' OR id = '979') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6651_yukata, id FROM items WHERE type = 'kanji' AND (slug = '1796' OR id = '1796') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_7578_persiapan, id FROM items WHERE type = 'kanji' AND (slug = '678' OR id = '678') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_7578_persiapan, id FROM items WHERE type = 'kanji' AND (slug = '725' OR id = '725') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_7603_ruang_tamu, id FROM items WHERE type = 'kanji' AND (slug = '1280' OR id = '1280') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_7603_ruang_tamu, id FROM items WHERE type = 'kanji' AND (slug = '701' OR id = '701') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7656_untuk_membungkuk, k_1320_menghasilkan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_7716_pensiun, id FROM items WHERE type = 'kanji' AND (slug = '507' OR id = '507') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7716_pensiun, k_1319_mundur);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_7770_untuk_menyerahkan, id FROM items WHERE type = 'kanji' AND (slug = '474' OR id = '474') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_7770_untuk_menyerahkan, id FROM items WHERE type = 'kanji' AND (slug = '1253' OR id = '1253') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8541_untuk_merindukan, k_2429_lama_untuk);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_8682_logika, id FROM items WHERE type = 'kanji' AND (slug = '669' OR id = '669') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8682_logika, k_1320_menghasilkan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_8940_untuk_ditemani_oleh, id FROM items WHERE type = 'kanji' AND (slug = '1293' OR id = '1293') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_9073_menyerahkan_keputusan_kepada_orang_lain, id FROM items WHERE type = 'kanji' AND (slug = '1142' OR id = '1142') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_9289_tujuan, id FROM items WHERE type = 'kanji' AND (slug = '723' OR id = '723') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_9289_tujuan, id FROM items WHERE type = 'kanji' AND (slug = '1175' OR id = '1175') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_9289_tujuan, id FROM items WHERE type = 'kanji' AND (slug = '914' OR id = '914') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_9305_persatuan, id FROM items WHERE type = 'kanji' AND (slug = '1170' OR id = '1170') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_9305_persatuan, id FROM items WHERE type = 'kanji' AND (slug = '440' OR id = '440') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_9307_untuk_menghabiskan, id FROM items WHERE type = 'kanji' AND (slug = '1165' OR id = '1165') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_9328_untuk_menanggapi, id FROM items WHERE type = 'kanji' AND (slug = '1180' OR id = '1180') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_9340_lap_tangan, id FROM items WHERE type = 'kanji' AND (slug = '474' OR id = '474') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_9340_lap_tangan, id FROM items WHERE type = 'kanji' AND (slug = '9338' OR id = '9338') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_9373_tumbuh_terlambat, id FROM items WHERE type = 'kanji' AND (slug = '1431' OR id = '1431') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_9459_untuk_menangkap, id FROM items WHERE type = 'kanji' AND (slug = '1265' OR id = '1265') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_9480_menjadi_lapar, id FROM items WHERE type = 'kanji' AND (slug = '1317' OR id = '1317') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_9480_menjadi_lapar, id FROM items WHERE type = 'kanji' AND (slug = '601' OR id = '601') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_9496_untuk_bekerja_menuju, id FROM items WHERE type = 'kanji' AND (slug = '585' OR id = '585') LIMIT 1;

END $$;
