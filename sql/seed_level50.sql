-- ====================================================
-- KaniGani — Seed Data Level 50 (v2, relasional)
-- Auto-generated with Indonesian Slugs
-- ====================================================

DO $$
DECLARE
  -- ============ RADICAL IDs (Level 50) ============
  r_409_nama UUID; r_410_terpecah UUID; r_8797_psikopat UUID;
  -- ============ KANJI IDs (Level 50) ============
  k_2084_puncak UUID; k_2085_mahir UUID; k_2086_jahat UUID; k_2087_berat UUID; k_2088_cina UUID; k_2089_pengadilan UUID; k_2090_kesuraman UUID; k_2091_buaya UUID; k_2092_kepiting UUID; k_2093_buku_catatan UUID; k_2094_jernih UUID; k_2095_komik UUID; k_2096_merevisi UUID; k_2097_berkonsultasi UUID; k_2098_prasasti UUID; k_2099_bendungan UUID; k_2100_tanggul UUID; k_2101_melayang UUID; k_2102_membalik UUID; k_2103_kebiasaan UUID; k_2104_permaisuri UUID; k_2105_diaduk UUID; k_2106_restoran UUID; k_2107_cari_ke_atas UUID; k_2108_ketua UUID; k_2109_secara_tidak_sengaja UUID; k_2110_eddy UUID; k_2111_makam UUID; k_2112_kokoh UUID; k_2113_bundel UUID; k_2114_mengangkut UUID; k_2116_gua UUID; k_2117_horison UUID; k_2118_epidemi UUID; k_9450_pot UUID;
  -- ============ VOCABULARY IDs (Level 50) ============
  v_4085_pemberitahuan_publik UUID; v_4611_irama UUID; v_4974_untuk_menyisihkan UUID; v_5346_barang_curian UUID; v_6994_hadiah_akhir_tahun UUID; v_7192_menunggang_kuda UUID; v_7194_kavaleri UUID; v_7334_ladang_murbei UUID; v_7356_puteri_mahkota UUID; v_7358_meleleh UUID; v_7359_licik UUID; v_7360_cahaya UUID; v_7361_kepiting UUID; v_7362_buaya UUID; v_7363_muram UUID; v_7364_puncak UUID; v_7365_pegunungan UUID; v_7366_mahir UUID; v_7367_cerdik UUID; v_7368_dingin UUID; v_7369_halangan UUID; v_7370_jahat UUID; v_7371_dapatkan UUID; v_7372_tidak_bagus UUID; v_7373_kegagalan UUID; v_7374_mendadak UUID; v_7375_pengadilan UUID; v_7376_pengadilan_kekaisaran UUID; v_7377_daftar_nama UUID; v_7378_buku_rekening UUID; v_7379_pengakuan_publik UUID; v_7380_manga UUID; v_7381_dialog_komik UUID; v_7382_koreksi UUID; v_7383_edisi_revisi UUID; v_7384_konsultasi UUID; v_7385_untuk_berkonsultasi_dengan UUID; v_7386_kesan_mendalam UUID; v_7387_merek UUID; v_7388_setiap UUID; v_7389_bendungan UUID; v_7390_tanggul UUID; v_7391_tanggul UUID; v_7392_melayang UUID; v_7393_melayang UUID; v_7394_melayang_ke_darat UUID; v_7395_ubah_pikiran_seseorang UUID; v_7396_terjemahan UUID; v_7397_untuk_mengepul UUID; v_7398_melacak UUID; v_7399_orbit UUID; v_7400_permaisuri_jepang UUID; v_7401_kegembiraan UUID; v_7402_meriah UUID; v_7403_restoran UUID; v_7404_untuk_diperhatikan UUID; v_7405_sombong UUID; v_7406_kaget UUID; v_7407_keyakinan_agama UUID; v_7408_ketua UUID; v_7409_tante UUID; v_7410_kadang_kadang UUID; v_7411_kebetulan UUID; v_7412_pasangan UUID; v_7413_yodogawa UUID; v_7414_makam_kuno UUID; v_7415_kuburan UUID; v_7416_agung UUID; v_7417_perdana_kehidupan UUID; v_7418_pengiriman UUID; v_7419_penghitung_untuk_bundel UUID; v_7420_mencengkeram UUID; v_7421_mengangkut UUID; v_7422_angkutan UUID; v_7423_melaksanakan UUID; v_7426_gua UUID; v_7427_kosong UUID; v_7428_gua UUID; v_7429_seumur_hidup_seseorang UUID; v_7430_karantina UUID; v_7431_kekebalan UUID; v_7432_penyakit_menular UUID; v_7436_untuk_mengancam UUID; v_7437_kelaparan UUID; v_7438_untuk_menghabiskan_sesuatu UUID; v_7439_warna UUID; v_7440_menyesal UUID; v_7441_baku_hantam UUID; v_7442_serangan UUID; v_7444_untuk_mencapai UUID; v_7445_kain_rami UUID; v_7450_suasana_hati_yang_suram UUID; v_7613_paman UUID; v_7727_kepolosan UUID; v_8950_untuk_direbus UUID; v_9464_pot UUID;

BEGIN

  DELETE FROM items WHERE level = 50;

  -- 1. RADICALS
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '名', 'nama', 50, 1, 'Radikal ini sama dengan kanji. Artinya <radikal>nama</radikal>.')
    RETURNING id INTO r_409_nama;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '禺', 'terpecah', 50, 2, 'Meski sedikit dimodifikasi, ada cangkang kura-kura yang berkumis dengan radikal ini. Satu-satunya makhluk berkumis yang menjuntai di sekitar penyu adalah Splinter, tikus raksasa dari Teenage Mutant Ninja Turtles. Jadi radikal ini adalah <radical>Splinter</radical> (tikus raksasa).')
    RETURNING id INTO r_410_terpecah;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '/radicals/psychopath.svg', 'psikopat', 50, 3, 'Di dalam dahi orang ini ada sendok dan seikat rambut, belum lagi apa pun yang ada di kiri atas. Itulah pikiran seorang <radikal>psikopat</radikal> di sana.')
    RETURNING id INTO r_8797_psikopat;
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_409_nama, 'Nama', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_410_terpecah, 'Terpecah', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_8797_psikopat, 'Psikopat', true, true);

  -- 2. KANJIS
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '峰', 'puncak', 50, 4, 'Di puncak <radical>gunung</radical> terdapat <radical>papan penunjuk arah</radical> yang memberi tahu Anda bahwa Anda telah mencapai <kanji>puncak</kanji>. Secara harfiah, setiap gunung yang pernah dicapai manusia memiliki salah satu tanda puncak berikut.', 'Di <kanji>puncak</kanji>, Anda memutuskan untuk membangun <reading>ho</reading>me (ほう) baru Anda. Sudah berkali-kali dihancurkan, dan Anda muak karenanya. Mungkin jika Anda membangun rumah di puncak gunung ini akan lebih aman.')
    RETURNING id INTO k_2084_puncak;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '巧', 'mahir', 50, 5, '<radical>konstruksi</radical> <radical>penjara</radical> bawah tanah</radical> akan dilakukan oleh seseorang yang <kanji>mahir</kanji> dalam hal tersebut.', '<kanji>Mahir</kanji> dalam membangun penjara bawah tanah, Anda telah menarik perhatian Kaisar <reading>こう</reading>いち, penggila penjara bawah tanah kerajaan.')
    RETURNING id INTO k_2085_mahir;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '邪', 'jahat', 50, 6, '<radikal>taring</radikal> pada <radikal>bangunan</radikal> menunjukkan bahwa <kanji>jahat</kanji>. Sesuatu yang jahat mungkin juga tinggal di gedung itu.', 'Anda mengintip ke dalam gedung <kanji>jahat</kanji> dan <reading>ja</reading>guar (じゃ) yang jahat tiba-tiba menerkam Anda! Kamu menghela nafas lega ketika berhenti di dekat jendela, tapi kemudian... jendelanya terbuka?! Bangunan yang jahat! Itu membiarkan jaguar menangkapmu!')
    RETURNING id INTO k_2086_jahat;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '駄', 'berat', 50, 7, '<radikal>kuda</radikal> yang <radikal>gemuk</radikal> adalah hewan yang <kanji>memberatkan</kanji>.', 'Namun kamu harus bersikap baik terhadap kuda yang <kanji>memberatkan</kanji> itu karena kuda ini adalah <reading>da</reading>d (だ) kamu.')
    RETURNING id INTO k_2087_berat;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '唐', 'cina', 50, 8, 'Di bawah <radical>kanopi</radikal> yang ditopang oleh <radikal>tongkat</radikal>, <radikal>Wolverine</radikal> membuka <radikal>mulut</radikal> dan berkata, "<kanji>Tiongkok</kanji>!" Kenapa dia bilang Tiongkok? Semuanya sangat <kanji>mendadak</kanji>.', 'Dorongan <kanji>tiba-tiba</kanji> untuk meneriakkan "<kanji>China</kanji>" juga muncul karena Wolverine terbangun di <reading>とう</reading>きょう. Di luar kanopi berbentuk pagoda, Wolverine memperhatikan kanji tersebut dan berasumsi dia berada di Tiongkok.')
    RETURNING id INTO k_2088_cina;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '廷', 'pengadilan', 50, 9, '<radikal>Yoga</radikal> <radikal>Raja</radikal> memimpin semua <kanji>pengadilan</kanji>: hukum, kekaisaran, dan seterusnya. Dalam kasus ini, Anda pernah bertemu dengannya di pengadilan, di mana dia menjadi hakim, juri, dan algojo.', '<kanji>pengadilan</kanji> Raja Yoga menentang Anda. Anda harus membalikkan keadaan ini, jadi Anda mulai mendorong tots <reading>ta</reading>ter (てい) ke dalam mulutnya yang berbentuk lubang tater-tot.')
    RETURNING id INTO k_2089_pengadilan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '鬱', 'kesuraman', 50, 10, '<radikal>pohon</radikal> <radikal>bisa</radikal> menjadi <radikal>pohon</radikal>, namun bisa juga menjadi <radikal>psikopat</radikal>. Pohon itu berubah dari pohon biasa menjadi psikopat. Perubahan suasana hati seperti itu sangat kasar. Terutama ketika pohon itu tergelincir ke dalam <kanji>kesuraman</kanji>.', 'Kemudian pohon berubah dari <kanji>suram</kanji> menjadi sangat bersemangat (perubahan suasana hati ini!). Pohon yang sangat bersemangat mulai melakukan dubstep. <read>Uts</reading> (うつ) uts uts uts ♬.')
    RETURNING id INTO k_2090_kesuraman;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '鰐', 'buaya', 50, 11, '<radical>ikan</radikal> dengan dua <radikal>mulut</radikal> mempunyai nomor <radikal>dua</radikal> karena berada di <radikal>penjara</radikal> (itulah nomor penjaranya). Siapa yang memenjarakan ikan malang bermulut dua itu? Sebuah <kanji>buaya</kanji>. Karena aligator benci ikan bermulut dua.', 'Bacaannya sama dengan わに di "WaniKani." Pernah mendengarnya?')
    RETURNING id INTO k_2091_buaya;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '蟹', 'kepiting', 50, 12, 'Ini adalah hewan dengan cakar <radical>sudut</radikal>d <radikal>pedang</radikal> yang berisi daging <radikal>sapi</radikal> tetapi terlihat seperti <radikal>serangga</radikal>. Hewan apa itu? Itu adalah <kanji>kepiting</kanji>.', 'Bacaannya sama dengan <reading>かに</reading> di WaniKani.')
    RETURNING id INTO k_2092_kepiting;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '簿', 'buku-catatan', 50, 13, '<radikal>bambu</radikal> <radikal>tsunami</radikal> menggunakan <radikal>tetesan</radikal> untuk melaksanakan <radikal>keistimewaan</radikal>, yang mengubah dirinya menjadi <kanji>buku rekor</kanji>.', '<kanji>buku rekor</kanji> adalah <membaca>bo</reading>ok (ぼ), kalau memang begitu.')
    RETURNING id INTO k_2093_buku_catatan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '彰', 'jernih', 50, 14, 'Anda ingin menulis <radical>bab</radikal> tentang <radikal>rambut</radikal> di buku baru Anda sehingga Anda harus memastikannya benar-benar <kanji>jelas</kanji>. Cukup jelas sehingga SIAPA PUN dapat membacanya.', 'Tulisan <kanji>jelas</kanji> Anda menarik perhatian <reading>Shou</reading>gun (しょう) dan sekarang dia ada di depan pintu Anda sekali lagi. Namun kali ini dia lebih marah dari biasanya. Rambutnya juga terlihat jelek. Dia mengikuti saran Anda setelah membaca buku dan memotong seluruh kuncir kudanya.')
    RETURNING id INTO k_2094_jernih;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '漫', 'komik', 50, 15, '<radikal>tsunami</radikal> menabrak <radikal>matahari</radikal>, yang kemudian terperangkap dalam <radikal>jaring</radikal> dan diikat ke <radikal>bangku</radikal>! Tunggu sebentar... ini kedengarannya tidak realistis, kedengarannya benar-benar <kanji>komik</kanji>! Itu karena itu dari buku komik tentang bajak laut yang selalu kamu baca!', '<kanji>Komik</kanji> adalah <reading>man</reading>ga (まん) di Jepang, baik komik maupun serius.')
    RETURNING id INTO k_2095_komik;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '訂', 'merevisi', 50, 16, 'Apa yang Anda <radikal>ucapkan</radikal> di <radikal>jalan</radikal> perlu <kanji>direvisi</kanji>d. Kata-katamu perlu dipoles, improvisasi tidak bisa dipublikasikan. Revisi inspirasi kata jalanan Anda sebelum Anda membagikannya lagi.', 'Anda ingin <kanji>merevisi</kanji> lagu yang Anda tulis tentang <reading>ta</reading>ter (てい) saat makan siang hari ini. Namun perlu banyak revisi.')
    RETURNING id INTO k_2096_merevisi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '諮', 'berkonsultasi', 50, 17, 'Perhatikan apa yang <radical>ucapkan</radical> <radical>selanjutnya</radical> dari <radical>mulut</radical> Anda ketika seseorang datang untuk <kanji>berkonsultasi</kanji> dengan Anda.', 'Setelah mereka <kanji>berkonsultasi</kanji> dengan Anda, orang tersebut memutuskan untuk membeli <reading>shee</reading>p (し).')
    RETURNING id INTO k_2097_berkonsultasi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '銘', 'prasasti', 50, 18, '<radikal>emas</radikal> <radikal>nama</radikal> pada potongan kayu ini adalah <kanji>prasasti</kanji> yang menunjukkan tanda tangan senimannya.', 'Prasasti itu adalah nama yang tertulis pada sesuatu bukan? Ingat kanji untuk "nama"? Itu adalah 名, dan bacaannya sama dengan kanji ini juga, sehingga menjadikan kedua nama tersebut <reading>めい</reading>.')
    RETURNING id INTO k_2098_prasasti;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '堰', 'bendungan', 50, 19, 'Seorang <radical>wanita</radical> membuat <radical>kotoran</radical> <radical>kandang</radical> di <radical>matahari</radical>. Dia menggunakannya untuk memerangkap air, menjadikannya <kanji>bendungan</kanji> tanah. Kalau dipikir-pikir, bendungan hanyalah kandang tanah.', 'Sesuatu tentang wanita yang bekerja keras untuk membangun <kanji>bendungan</kanji> ini membuatnya menjadi super <reading>seksi</reading> (せき) bagi Anda. Mungkin karena sinar matahari yang begitu terik sehingga membuatnya bersinar, atau mungkin karena kerja keras itu menarik. Siapa tahu.')
    RETURNING id INTO k_2099_bendungan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '堤', 'tanggul', 50, 20, 'Ambil sedikit <radical>tanah</radikal>, biarkan mengeras di bawah <radikal>matahari</radikal>, lalu tumpuk di sekitar <radical>rak mantel</radikal> untuk membuat <kanji>tanggul</kanji> yang bagus. Setiap tanggul diam-diam memiliki rak mantel yang menampung semua tanah yang mengeras akibat sinar matahari. Tahukah kamu?', 'Rahasia membangun <kanji>tanggul</kanji> yang baik adalah <reading>ta</reading>ter (てい) tots. Anda harus mencampurkan tater tersebut dengan tanah saat Anda menumpuknya di sekitar rak mantel. Taters memberi tanggul elastisitas kenyal dan daya serap kenyal yang diperlukan untuk mengendalikan derasnya air banjir.')
    RETURNING id INTO k_2100_tanggul;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '漂', 'melayang', 50, 21, 'Jika <radical>tsunami</radical> menghantam <radical>helikopter</radical> Anda saat Anda melakukan <radical>jackhammer</radical>ing, ia akan <kanji>melayang</kanji> ke laut. Apa yang kamu lakukan dengan jackhammer di saat seperti ini? Sekarang helikoptermu menjauh!', 'Saat ia <kanji>melayang</kanji> menjauh, Anda berteriak, "<reading>Heioo</reading>! (ひょう)." Anda tahu bahwa helikopter itu mungkin tidak dapat mendengar Anda (atau memahami Anda) tetapi mungkin helikopter itu akan menyala dan berhenti menjauh jika Anda cukup berteriak.')
    RETURNING id INTO k_2101_melayang;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '翻', 'membalik', 50, 22, 'Anda memiliki <radical>angka</radikal>berwarna <radikal>bulu</radikal>. Pilih nomor favorit Anda dan letakkan di bulu. Lalu, letakkan bulu bernomor itu di kepala Anda. Saat Anda memakainya, Anda dapat <kanji>membalik</kanji> dan <kanji>membalik</kanji> berulang kali.', 'Kamu cukup bagus dalam teknik <kanji>flip</kanji>, tapi kamu tidak begitu bagus. Anda benar-benar perlu berlatih dan <reading>mengasah</reading> (ほん) keterampilan Anda dan menjadi lebih baik.')
    RETURNING id INTO k_2102_membalik;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '軌', 'kebiasaan', 50, 23, 'Ada <radical>sembilan</radikal> <radikal>mobil</radikal> yang semuanya melaju di tempat yang sama. Dengan banyaknya mobil yang melaju di tempat yang sama, mereka menciptakan <kanji>kebiasaan</kanji>.', 'Untuk keluar dari kebiasaan tersebut, Anda harus memasukkan kunci <reading></reading> kedua (き) yang menyalakan pendorong. Anda memasukkan kunci dan menekan tombol "lepas".')
    RETURNING id INTO k_2103_kebiasaan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '后', 'permaisuri', 50, 24, 'Anda berjalan keluar dari <radical>tebing</radical>, di mana Anda menemukan di <radical>tanah</radical> sebuah <radical>mulut</radical> menyembul keluar. Bunyinya: "Ini aku, <kanji>permaisuri</kanji> negeri ini!"', 'Saat kamu selesai membongkar <kanji>permaisuri</kanji>, hal pertama yang dia katakan kepadamu adalah: "Tolong, kamu harus cepat dan bawa aku menemui Kaisar <reading>こう</reading>いち."')
    RETURNING id INTO k_2104_permaisuri;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '奮', 'diaduk', 50, 25, '<radical>besar</radical> <radical>kalkun</radical> di <radical>sawah</radical> sedang <kanji>bergerak</kanji>. Dia menghabiskan semua nasinya. Siapa yang menggerakkannya?', 'Saat kalkun <kanji>diaduk</kanji>, sepertinya kalkun ini juga sedang <membaca>menyenangkan</reading> (ふん).')
    RETURNING id INTO k_2105_diaduk;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '亭', 'restoran', 50, 26, 'Kanji <radikal>restoran</radikal> dan kanji <kanji>restoran</kanji> adalah sama! Arti kanji ini juga mencakup tempat peristirahatan lainnya, seperti <kanji>penginapan</kanji> atau <kanji>paviliun</kanji>.', '<kanji>restoran</kanji> ini hanya menyajikan <reading>tater</reading> (てい) tots. Sungguh, apakah Anda ingin pergi ke restoran yang tidak memiliki tater tots? TIDAK.')
    RETURNING id INTO k_2106_restoran;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '仰', 'cari-ke-atas', 50, 27, '<radical>pemimpin</radikal> <radikal>bajak laut kucing</radikal> adalah bajak laut kucing terhebat di antara mereka semua. Bahkan memimpin semua pemimpin bajak laut kucing! Ini benar-benar <kanji>bajak laut kucing yang patut dicontoh</kanji>.', 'Tugas Anda adalah membawakan pemimpin bajak laut kucing ini (yang Anda <kanji>kagumi</kanji>) makanan favoritnya: <reading>gyo</reading>za (ぎょう).')
    RETURNING id INTO k_2107_cari_ke_atas;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '伯', 'ketua', 50, 28, '<radikal>pemimpin</radikal> yang berpakaian <radikal>putih</radikal> adalah <kanji>pemimpin</kanji>. Semua pemimpin lainnya mengenakan warna lain, tapi begitulah cara Anda membedakan pemimpin dari pemimpin lainnya.', 'Bacaannya sama dengan 白 yang termasuk dalam kanji ini. Bacaan lainnya adalah お, dan ini mirip dengan sebutan kehormatan 御. Anda pasti ingin bersikap sopan kepada seseorang yang merupakan ketua ______, bukan? Itu sebabnya bisa jadi お juga.')
    RETURNING id INTO k_2108_ketua;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '偶', 'secara-tidak-sengaja', 50, 29, '<radical>pemimpin</radikal>, Master <radical>Splinter</radical> (tikus dari Ninja Turtles) bahkan tidak seharusnya ada. Dia ada karena seseorang <kanji>secara tidak sengaja</kanji> menuangkan cairan padanya.', 'Tapi sungguh, jika Anda melakukan sesuatu <kanji>secara tidak sengaja</kanji>, itu mungkin merupakan hal yang <reading>goo</reading>d (ぐう). Anda belajar sedikit tentang bagaimana Anda dapat meningkatkan diri Anda sehingga Anda tidak melakukannya lagi, atau dalam kasus Splinter, itu hanya kesalahan yang bagus!')
    RETURNING id INTO k_2109_secara_tidak_sengaja;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '淀', 'eddy', 50, 30, 'Sebuah <radikal>tsunami</radikal> menghantam <radikal>atap</radikal> Anda dan menghancurkan <radikal>rak mantel</radikal> Anda, menciptakan <kanji>eddy</kanji> yang berputar-putar di tempat yang dulu.', 'Saat Anda menatap <kanji>eddy</kanji> yang berputar-putar, Anda tiba-tiba dikuasai oleh keinginan untuk <reading>yodel</reading> (よど). Sesuatu tentang kemurnian kristal pusaran air mengingatkan Anda pada air di Pegunungan Alpen Swiss, dan itu benar-benar membuat Anda bersemangat untuk bernyanyi yodel.')
    RETURNING id INTO k_2110_eddy;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '墳', 'makam', 50, 31, 'Mencuat dari <radical>tanah</radikal>, terdapat <radikal>salib</radikal> yang dihiasi dengan <radikal>bunga</radikal> dan cangkang <radikal>kerang</radikal>. Ini adalah <kanji>makam</kanji>. Bunga dan kerang ditempatkan di sini sebagai hiasan dan untuk menghormati orang mati yang terbaring di bawah tanah. Dan salib tentu saja menandai makam itu.', 'Ini adalah <kanji>makam</kanji>, tapi rasanya <membaca>menyenangkan</reading> (ふん). Dihiasi dengan bunga dan cangkang kerang, ini bukanlah tempat yang menyedihkan sama sekali. Ini adalah tempat yang menyenangkan untuk mengingat semua saat-saat menyenangkan bersama orang-orang yang Anda cintai.')
    RETURNING id INTO k_2111_makam;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '壮', 'kokoh', 50, 32, 'Seorang <radikal>samurai</radikal> yang bisa bertarung dengan <radikal>es</radikal> di tubuhnya lebih <kanji>kuat</kanji> dibandingkan samurai biasa. Dapatkah Anda bayangkan betapa kuatnya Anda harus bertarung dalam cuaca yang cukup dingin hingga membentuk es di tubuh Anda?', 'Anda mungkin berpikir itu hanya <kanji>kuat</kanji> tubuhnya, tapi sebenarnya <read>sou</reading>l (そう) samurai yang kuat itulah yang membuatnya bertahan dalam cuaca dingin dan es.')
    RETURNING id INTO k_2112_kokoh;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '把', 'bundel', 50, 33, 'Mengapa Anda meletakkan <radical>jari</radical> Anda di <radical>tempat tidur</radical>? Untuk <kanji>mengumpulkan</kanji> seprai — mungkin karena Anda perlu mencuci pakaian atau semacamnya. <kanji>Pegang</kanji> bungkusan seprai itu erat-erat, dan hati-hati jangan sampai terbuka saat Anda membawanya ke mesin cuci.', 'Saat Anda <kanji>menggabungkan</kanji> seprai Anda dan <kanji>menggenggam</kanji> erat-erat, Anda dengan penuh kemenangan berseru, "<reading>Hah</reading> (は)!" untuk semua penentang khayalan Anda. Dalam benak Anda, semua orang ragu apakah Anda benar-benar bisa mengemas seprai Anda sendiri dan mencucinya sendiri.')
    RETURNING id INTO k_2113_bundel;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '搬', 'mengangkut', 50, 34, 'Dengan <radical>jari</radical> Anda memasukkan beberapa <radical>senjata</radical> ke dalam <radical>perahu</radical> untuk <kanji>transportasi</kanji>. Ini adalah kapal pengangkut dan tugas Anda adalah membawa senjata-senjata ini dari satu tempat ke tempat lain.', 'Hai! Anda <kanji>mengangkut</kanji>senjata seperti <reading>Han</reading> (はん) Solo! Maksudku, itu adalah pesawat luar angkasa, secara teknis bukan perahu, tapi dia pasti menggunakan Millennium Falcon sebagai alat transportasi.')
    RETURNING id INTO k_2114_mengangkut;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '洞', 'gua', 50, 35, '<radikal>tsunami</radikal> <radikal>sama</radikal> dengan <kanji>gua</kanji>. Sebab, jika ombaknya cukup besar, ia akan menggulung dirinya sendiri sehingga menimbulkan semacam gua di dalam gelombang tersebut. Makanya sama saja dengan gua!', 'Cara terbaik untuk mengingat bacaan kanji ini adalah dengan memikirkan bagaimana bentuk gua yang berbentuk <baca>dou</reading>ghnut (どう).')
    RETURNING id INTO k_2116_gua;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '涯', 'horison', 50, 36, 'Ada <radical>tsunami</radical> yang akan terjadi di atas <radical>tebing</radical> yang terbuat dari <radical>tanah</radical>. Anda dapat melihat hal ini terjadi sangat jauh karena letaknya tepat di <kanji>cakrawala</kanji>.', 'Anda memicingkan mata ke <kanji>cakrawala</kanji> dan melihat sesuatu yang lain. Ada beberapa <reading>pria</reading> (がい) di atas sana. Dan dia... dia tersapu oleh tsunami. Pria itu menghilang ke cakrawala. Pria itu sudah pergi.')
    RETURNING id INTO k_2117_horison;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '疫', 'epidemi', 50, 37, 'Ubah <radikal>penyakit</radikal>menjadi <radikal>senjata</radikal> dan itu akan menjadi <kanji>epidemi</kanji>. Penyakit ini menyebar ke semua orang dan itu semua salah Anda karena Anda memasukkannya ke dalam sumber air.', '<kanji>epidemi</kanji> ini menyebar melalui <reading>駅</reading> (えき). Setiap kereta membawa penyakit itu dan melesat ke arah yang berbeda, menyebarkannya lebih jauh.')
    RETURNING id INTO k_2118_epidemi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '壺', 'pot', 50, 38, 'Mengapa seorang <radical>samurai</radical> pergi ke daratan <radical>Asia</radical>? Tentu saja untuk membeli <kanji>pot</kanji>! Asia penuh dengan pembuat tembikar yang membuat segala jenis pot dan <kanji>toples</kanji> tradisional yang keren. Sang samurai mungkin ingin membawanya pulang dan memamerkannya kepada teman-teman samurai pecinta potnya.', 'Secara khusus, samurai ini ingin membeli <kanji>pot</kanji> yang cukup besar untuk menampung <reading>dua bo</reading>die (つぼ). Mengapa? Ya, samurai punya banyak musuh. Saya tidak akan terlalu mencampurinya — Anda mungkin akan menjadi salah satu dari dua tubuh di dalam pot.')
    RETURNING id INTO k_9450_pot;
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2084_puncak, 'Puncak', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2084_puncak, 'ほう', true, 'onyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2084_puncak, 'みね', false, 'kunyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2085_mahir, 'Mahir', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2085_mahir, 'こう', true, 'onyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2085_mahir, 'うま', false, 'kunyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2085_mahir, 'たく', false, 'kunyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2086_jahat, 'Jahat', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2086_jahat, 'じゃ', true, 'onyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2086_jahat, 'よこしま', false, 'kunyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2087_berat, 'Berat', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2087_berat, 'だ', true, 'onyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2087_berat, 'た', false, 'onyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2088_cina, 'Cina', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2088_cina, 'Tiba-tiba', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2088_cina, 'とう', true, 'onyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2088_cina, 'から', false, 'kunyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2089_pengadilan, 'Pengadilan', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2089_pengadilan, 'てい', true, 'onyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2090_kesuraman, 'Kesuraman', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2090_kesuraman, 'Depresi', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2090_kesuraman, 'うつ', true, 'onyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2091_buaya, 'Buaya', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2091_buaya, 'Buaya', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2091_buaya, 'わに', true, 'kunyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2092_kepiting, 'Kepiting', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2092_kepiting, 'かに', true, 'kunyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2093_buku_catatan, 'Buku Catatan', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2093_buku_catatan, 'ぼ', true, 'onyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2094_jernih, 'Jernih', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2094_jernih, 'しょう', true, 'onyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2095_komik, 'Komik', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2095_komik, 'まん', true, 'onyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2096_merevisi, 'Merevisi', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2096_merevisi, 'てい', true, 'onyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2097_berkonsultasi, 'Berkonsultasi', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2097_berkonsultasi, 'し', true, 'onyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2097_berkonsultasi, 'はか', false, 'kunyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2098_prasasti, 'Prasasti', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2098_prasasti, 'めい', true, 'onyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2099_bendungan, 'Bendungan', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2099_bendungan, 'せき', true, 'kunyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2099_bendungan, 'えん', false, 'onyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2100_tanggul, 'Tanggul', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2100_tanggul, 'てい', true, 'onyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2100_tanggul, 'つつみ', false, 'kunyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2101_melayang, 'Melayang', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2101_melayang, 'ひょう', true, 'onyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2101_melayang, 'ただよ', false, 'kunyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2102_membalik, 'Membalik', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2102_membalik, 'ほん', true, 'onyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2102_membalik, 'ひるがえ', false, 'kunyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2103_kebiasaan, 'Kebiasaan', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2103_kebiasaan, 'き', true, 'onyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2104_permaisuri, 'Permaisuri', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2104_permaisuri, 'こう', true, 'onyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2104_permaisuri, 'ご', false, 'onyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2104_permaisuri, 'きさき', false, 'kunyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2105_diaduk, 'Diaduk', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2105_diaduk, 'ふん', true, 'onyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2105_diaduk, 'ふる', false, 'kunyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2106_restoran, 'Restoran', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2106_restoran, 'Losmen', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2106_restoran, 'Paviliun', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2106_restoran, 'てい', true, 'onyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2107_cari_ke_atas, 'Cari Ke Atas', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2107_cari_ke_atas, 'ぎょう', true, 'onyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2107_cari_ke_atas, 'こう', false, 'onyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2107_cari_ke_atas, 'あお', false, 'kunyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2108_ketua, 'Ketua', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2108_ketua, 'はく', true, 'onyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2108_ketua, 'お', false, 'onyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2109_secara_tidak_sengaja, 'Secara tidak sengaja', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2109_secara_tidak_sengaja, 'ぐう', true, 'onyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2109_secara_tidak_sengaja, 'たま', false, 'kunyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2110_eddy, 'Eddy', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2110_eddy, 'よど', true, 'kunyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2111_makam, 'Makam', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2111_makam, 'ふん', true, 'onyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2112_kokoh, 'Kokoh', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2112_kokoh, 'そう', true, 'onyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2113_bundel, 'Bundel', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2113_bundel, 'Mencengkeram', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2113_bundel, 'は', true, 'onyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2113_bundel, 'わ', false, 'onyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2114_mengangkut, 'Mengangkut', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2114_mengangkut, 'はん', true, 'onyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2116_gua, 'Gua', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2116_gua, 'どう', true, 'onyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2116_gua, 'ほら', false, 'kunyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2117_horison, 'Horison', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2117_horison, 'がい', true, 'onyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2117_horison, 'はて', false, 'kunyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2118_epidemi, 'Epidemi', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2118_epidemi, 'えき', true, 'onyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_9450_pot, 'Pot', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_9450_pot, 'Stoples', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_9450_pot, 'つぼ', true, 'kunyomi');

  -- 3. VOCABULARIES
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '公告', 'pemberitahuan-publik', 50, 39, '<kanji>publik</kanji> <kanji>pengumuman</kanji> adalah <vocabulary>pemberitahuan publik</vocabulary>.

公告 terlihat dan terdengar sangat mirip dengan 広告, tetapi maknanya berbeda. Anda mungkin ingat 広告 untuk iklan, namun 公告 di sini adalah untuk pernyataan resmi yang dikeluarkan oleh perusahaan atau pemerintah kepada publik, terutama pemegang saham, kreditor, atau pemangku kepentingan lainnya.

Anda ingat 公告 adalah pemberitahuan publik karena kanji untuk "publik" adalah 公, dan tidak ditutupi oleh kanopi seperti yang lainnya. Hal ini terbuka, terbuka untuk dilihat semua orang - publik!', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.')
    RETURNING id INTO v_4085_pemberitahuan_publik;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '律動', 'irama', 50, 40, '<kanji>hukum</kanji> dari <kanji>gerakan</kanji>diatur oleh <vocabulary>ritme</vocabulary>. Bayangkan bergerak mengikuti irama bos. Saat Anda bergerak, Anda mulai merasakan ritme langkah Anda. Silakan berjalan di sekitar kamar Anda dan rasakan ritme ini. 

Perhatikan bahwa リズム adalah kata yang lebih umum digunakan untuk "irama", tetapi terkadang Anda mungkin melihat versi kanji dalam tulisan formal. Satu hal yang akan lebih sering Anda lihat adalah 律動的 yang berarti "berirama".', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.')
    RETURNING id INTO v_4611_irama;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '貯える', 'untuk-menyisihkan', 50, 41, 'Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Perhatikan bagaimana ia membagi bacaannya dengan 蓄える dan kanjinya dengan 貯める? Kata ini juga memiliki arti yang serupa — <vocabulary>menyingkirkan</vocabulary>.

Perhatikan bahwa 貯える kurang umum dalam tulisan modern, dan sering kali terasa agak kuno. Namun Anda mungkin masih melihatnya dalam konteks yang berarti <vocabulary>menimbun</vocabulary> makanan dan persediaan untuk kebutuhan masa depan (seperti 蓄える) atau <vocabulary>menabung</vocabulary> uang (seperti 貯める).', 'Bacaannya sama dengan 蓄える, yang masuk akal karena artinya sangat mirip! Berikut ini mnemonik jika Anda tidak ingat bacaannya:

Anda perlu <vocabulary>untuk menyisihkan</vocabulary> beberapa hal, jadi Anda <reading>mengambil satu</reading> (たくわ) dan menyisihkannya, lalu mengambil satu lagi dan menyisihkannya lagi. Ulangi proses ini <vocabulary>untuk menyimpan</vocabulary> banyak hal seiring berjalannya waktu.')
    RETURNING id INTO v_4974_untuk_menyisihkan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '盗品', 'barang-curian', 50, 42, 'Ini adalah <kanji>barang</kanji> yang dicuri (mencuri) <kanji>barang</kanji>. Jadi, saya akan memberi Anda kesepakatan, karena, Anda tahu, itu adalah <vocabulary>barang curian</vocabulary>.

盗品 adalah kata yang relatif formal yang mengacu pada barang yang telah dicuri. Anda akan sering melihatnya dalam konteks yang berhubungan dengan kejahatan, seperti laporan berita yang membahas orang-orang yang menjual <vocabulary>barang curian</vocabulary> atau dengan sengaja memilikinya.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.')
    RETURNING id INTO v_5346_barang_curian;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '歳暮', 'hadiah-akhir-tahun', 50, 43, 'Di sini, 歳 berarti <kanji>tahun</kanji> dan 暮 berasal dari 暮れる (berakhir). Jadi 歳暮 secara harafiah berarti "akhir tahun", namun dalam bahasa Jepang modern, kata ini hampir selalu mengacu pada <vocabulary>hadiah akhir tahun</vocabulary>, yang pada dasarnya adalah cara mengucapkan terima kasih sebelum tahun berakhir.

歳暮 hampir selalu digunakan dengan sebutan kehormatan お, seperti dalam お歳暮. Ini adalah hadiah formal, seperti kotak permen atau kopi yang dibungkus rapi yang dikirimkan kepada atasan, klien, atau orang yang telah membantu Anda sepanjang tahun.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda belum mempelajari bacaan ini untuk 歳, jadi inilah mnemonik untuk membantu Anda:

Ada satu <vocabulary>hadiah akhir tahun</vocabulary> yang selalu membuat orang bahagia: <reading>sa</reading>ber (せい). Siapa yang tidak tertarik untuk mendapatkan mandau sebagai oleh-oleh akhir tahun? Namun, mungkin agak sulit untuk membungkusnya…')
    RETURNING id INTO v_6994_hadiah_akhir_tahun;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '騎馬', 'menunggang-kuda', 50, 44, '<kanji>menunggang kuda</kanji> <kanji>kuda</kanji> adalah apa yang Anda butuhkan untuk <vocabulary>menunggang kuda</vocabulary>.

Ini adalah kata formal dan biasanya digunakan di awal kata majemuk yang mana Anda akan melihatnya diterjemahkan menjadi sesuatu seperti <vocabulary>mount</vocabulary>, seperti dalam "polisi berkuda", atau <vocabulary>equestrian</vocabulary>, seperti dalam "orang-orang berkuda". Ini berfungsi seperti kata sifat di sana, tetapi masih merupakan kata benda dalam bahasa Jepang.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_7192_menunggang_kuda;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '騎兵', 'kavaleri', 50, 45, '<kanji>penunggang kuda</kanji> <kanji>prajurit</kanji> adalah anggota <vocabulary>kavaleri</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_7194_kavaleri;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '桑原', 'ladang-murbei', 50, 46, '<kanji>mulberry</kanji> <kanji>bidang</kanji> adalah <vocabulary>bidang murbei</vocabulary>.

Berdasarkan kepercayaan lama bahwa petir tidak menyambar ladang murbei, 桑原 (sering diucapkan dua kali, seperti dalam "桑原桑原") juga dapat digunakan sebagai jimat untuk menangkal kejadian yang tidak diinginkan, meskipun hal ini cukup kuno.

Selain penggunaan tersebut, 桑原 sekarang terutama mengacu pada nama keluarga <vocabulary>Kuwabara</vocabulary>, seperti salah satu protagonis utama serial anime dan manga 幽遊白書.', 'Keduanya adalah bacaan kun''yomi, tetapi Anda belum mempelajarinya untuk 原. Ini sebenarnya versi rendaku, jadi mari kita gunakan mnemonik untuk mengingatnya:

Anda tahu bahwa Anda berada di <vocabulary>bidang murbei</vocabulary> ketika Anda melihat sekelompok<reading>bara</reading> (ばら) capy berguling-guling di sana bersama Anda. Kapibara menyukai murbei! Bayangkan seluruh keluarga kapibara mengunyah buah murbei. Hmm Hmm!')
    RETURNING id INTO v_7334_ladang_murbei;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '皇太子妃', 'puteri-mahkota', 50, 47, 'Ingat bagaimana 皇太子 adalah "putra mahkota"? Nah, ketika seorang putra mahkota menikah, permaisurinya adalah <vocabulary>putri mahkota</vocabulary>.

皇太子妃 secara khusus mengacu pada istri Putra Mahkota, bukan wanita yang merupakan pewaris takhta itu sendiri. Secara teknis, dia adalah <vocabulary>permaisuri putri mahkota</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_7356_puteri_mahkota;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '溶ける', 'meleleh', 50, 48, '溶かす adalah "meleleh sesuatu" dan itu membuat 溶ける <vocabulary>meleleh</vocabulary> (sesuatu yang meleleh begitu saja, dan Anda tidak melakukan peleburan).', 'Bacaannya berasal dari 溶かす.')
    RETURNING id INTO v_7358_meleleh;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '悪賢い', 'licik', 50, 49, 'Seseorang yang <kanji>jahat</kanji> tetapi juga <kanji>pintar</kanji> (賢い) adalah seseorang yang menggunakan kepintarannya untuk kejahatan. Saat Anda merujuk pada orang jahat yang pandai, biasanya Anda menggambarkan mereka bukan sebagai "pintar" tetapi sebagai <vocabulary>licik</vocabulary>, <vocabulary>licin</vocabulary>, atau hal lainnya.', 'Bacaannya adalah 悪い dan 賢い digabungkan menjadi satu kata. Hati-hati dengan rendaku.')
    RETURNING id INTO v_7359_licik;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '輝き', 'cahaya', 50, 50, 'Jika 輝く berarti "bersinar" atau "berkilau" pikirkan versi kata bendanya. Ini akan menjadi <vocabulary>pancaran</vocabulary>. Cahayanya bisa datang dalam bentuk bersinar dan berkilauan.', 'Bacaannya berasal dari 輝く.')
    RETURNING id INTO v_7360_cahaya;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '蟹', 'kepiting', 50, 51, 'Artinya sama dengan arti kanji yaitu <kanji>kepiting</kanji>. Jika Anda tahu kata ini, dan Anda juga tahu kata 鰐... maka, Anda tahu sesuatu, meskipun saya tidak yakin apa itu.', 'Bacaannya sama dengan yang Anda pelajari dengan kanji. Tapi Anda sudah mengetahuinya, bukan?')
    RETURNING id INTO v_7361_kepiting;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '鰐', 'buaya', 50, 52, '<kanji>buaya</kanji> yang hebat! Ini bisa berarti <vocabulary>alligator</vocabulary> atau <vocabulary>crocodile</vocabulary>, karena sebenarnya keduanya tidak jauh berbeda, bukan? Bukan crabigator, itu sudah pasti.', 'Bacaannya adalah bacaan yang sudah Anda kenal sepanjang hidup Anda. Ini seperti Anda dilahirkan dengan membaca, berbisik di telinga Anda, siap muncul pada saat yang tepat... dan momen itu adalah sekarang.')
    RETURNING id INTO v_7362_buaya;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '鬱陶しい', 'muram', 50, 53, '<kanji>Kesuraman</kanji> <kanji>tembikar</kanji> adalah... ya, <vocabulary>suram</vocabulary> dan <vocabulary>menyedihkan</vocabulary>!

Kata ini juga bisa berarti <vocabulary>menyebalkan</vocabulary>. Kalau ada sesuatu atau seseorang yang selalu membuatmu murung, mungkin kamu akan menganggapnya menjengkelkan, bukan?', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri. Hati-hati dengan pemendekannya, dan jangan tertipu oleh hiragana yang menonjol. Pembacaan kanji tidak berubah.')
    RETURNING id INTO v_7363_muram;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '峰', 'puncak', 50, 54, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna. Bisa juga berupa <vocabulary>puncak</vocabulary> atau <vocabulary>ridge</vocabulary>.', 'Lihat <vocabulary>pertemuan puncak</vocabulary>. Ini adalah pertemuan puncak yang <read>mean</reading> (みね). Begitu besar, begitu badai, begitu kejam.')
    RETURNING id INTO v_7364_puncak;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '連峰', 'pegunungan', 50, 55, '<kanji>Ikuti</kanji> <kanji>KTT</kanji> ini dan pindahkan ke berbagai tempat, kunjungi lebih banyak puncak. Satu demi satu pertemuan puncak Anda ikuti. Dengan menutupi banyak puncak ini, Anda melihat ada serangkaian gunung. Ini adalah <vocabulary>pegunungan</vocabulary>!', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri. Hati-hati dengan rendaku.')
    RETURNING id INTO v_7365_pegunungan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '巧い', 'mahir', 50, 56, 'Kamu sangat <kanji>mahir</kanji>! Itu membuat Anda <vocabulary>mahir</vocabulary> dalam hal itu. <vocabulary>Terampil</vocabulary> dan <vocabulary>cerdas</vocabulary> adalah cara lain untuk melakukannya juga.', 'Ingat 旨い, yang artinya "enak"? Ingatkah arti kata ini juga "terampil" dan "cerdas"? Sama halnya dengan kata ini, bacaannya juga sama.')
    RETURNING id INTO v_7366_mahir;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '巧妙', 'cerdik', 50, 57, 'Sesuatu yang <kanji>mahir</kanji> namun <kanji>khas</kanji> dalam hal kemahirannya haruslah sesuatu yang benar-benar <vocabulary>pintar</vocabulary> dan <vocabulary>jenius</vocabulary>. Seperti penipuan atau tipuan yang cerdik.

巧妙 biasanya digunakan untuk menggambarkan tindakan, teknik, atau metode menipu yang tidak hanya <kosakata>terampil</vocabulary> tetapi juga agak licik atau licik. Ini menunjukkan tingkat kecanggihan, sering kali melibatkan perencanaan atau manipulasi yang cerdik.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_7367_cerdik;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '風邪', 'dingin', 50, 58, 'Sebuah <kanji>angin</kanji> yang <kanji>jahat</kanji> datang dan bertiup ke arahmu. Dingin sekali, dan akhirnya membuatmu sakit. Anda sekarang terkena <vocabulary>pilek</vocabulary>.', 'Anehnya, bacaan kata ini sama dengan bacaan kosakata 風 (かぜ). Itu mungkin cara termudah untuk mengingat hal ini, terutama karena jika tidak, pembacaannya akan menjadi pengecualian besar yang mengerikan.')
    RETURNING id INTO v_7368_dingin;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '邪魔', 'halangan', 50, 59, '<kanji>jahat</kanji> <kanji>iblis</kanji>! Ugh, aku benci hal-hal itu. Mereka selalu menjadi <vocabulary>penghalang</vocabulary> dan <vocabulary>intrusi</vocabulary>. Bayangkan saja setan jahat berkeliaran di rumah Anda, memakan makanan Anda, dan tidur di tempat tidur Anda. Benar-benar sebuah hambatan.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_7369_halangan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '邪', 'jahat', 50, 60, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.', 'Ini adalah bacaan yang panjang untuk kata yang pendek! Bayangkan sesuatu yang <vocabulary>jahat</vocabulary>. <vocabulary>Bahkan jahat</vocabulary>! Tapi apa yang jahat? Itu sisi pulau... tapi hanya sisinya saja. Itu adalah <membaca>横島</membaca> (よこしま).')
    RETURNING id INTO v_7370_jahat;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '下駄', 'dapatkan', 50, 61, 'Lihat <kanji>di bawah</kanji> Anda. Hal-hal ini membawa beban <kanji>yang membebani</kanji> Anda. Semuanya. Ini adalah sepatu yang Anda kenakan, meskipun dalam hal ini secara spesifik adalah <vocabulary>geta</vocabulary>, atau <vocabulary>bakiak kayu Jepang</vocabulary>. Sebenarnya bakiak itu sendiri agak memberatkan dan sulit dipakai, jadi Anda juga bisa menganggapnya seperti itu.', 'Pembacaan 駄 merupakan pembacaan kanji sekunder. Bukannya だ, tapi た. Semoga Anda pernah mendengar tentang "geta" sebelumnya. Ini akan sangat memudahkan anda dalam mengingat bacaan vocab kata ini.')
    RETURNING id INTO v_7371_dapatkan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '駄目', 'tidak-bagus', 50, 62, 'Jika ada sesuatu yang <kanji>membebani</kanji> bagi <kanji>mata</kanji> (ketika Anda melihatnya), Anda tahu bahwa hal tersebut <vocabulary>tidak baik</vocabulary> atau <vocabulary>tidak ada harapan</vocabulary>. Lihatlah saja hal yang memberatkan itu dengan matamu. Ini juga bisa berarti <vocabulary>tidak diperbolehkan</vocabulary>. Orang tua selalu mengatakan hal ini kepada anak-anak mereka.', 'Bacaannya adalah bacaan yang Anda pelajari dengan kanji.')
    RETURNING id INTO v_7372_tidak_bagus;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '無駄', 'kegagalan', 50, 63, '<kanji>Tidak ada</kanji> selain <kanji>membebani</kanji>. Hanya itu yang Anda dapatkan dari melakukan tugas ini. <kosakata>kesia-siaan</vocabulary> itu sungguh menggelikan. <kosa kata>ketidakbergunaan</vocabulary> sangat besar.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_7373_kegagalan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '唐突', 'mendadak', 50, 64, '<kanji>tiba-tiba</kanji> <kanji>tusukan</kanji> adalah <vocabulary>tiba-tiba</vocabulary> dan <vocabulary>tidak terduga</vocabulary>. Cepat, menghindar!!

唐突 menggambarkan tindakan atau peristiwa mendadak yang membuat orang lengah.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_7374_mendadak;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '法廷', 'pengadilan', 50, 65, '<kanji>hukum</kanji> <kanji>pengadilan</kanji> adalah <vocabulary>pengadilan</vocabulary> yang Anda kunjungi untuk mendistribusikan hukum. Ruangan tempat Anda melakukan ini adalah <vocabulary>ruang sidang</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_7375_pengadilan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '宮廷', 'pengadilan-kekaisaran', 50, 66, '<kanji>Kuil Shinto</kanji> <kanji>pelataran</kanji> adalah pelataran kuil Shinto. Shinto sering diasosiasikan dengan kaisar, oleh karena itu disebut <kosakata>istana kekaisaran</vocabulary>. <vocabulary>Pengadilan kerajaan</vocabulary> juga bisa.', 'Bacaan untuk 宮 adalah bacaan yang belum pernah Anda lihat sebelumnya. Bayangkan saja betapa <read>cu</reading>te (きゅう) istana kekaisaran ini. Itu istana kekaisaran My Little Pony, atau semacamnya.')
    RETURNING id INTO v_7376_pengadilan_kekaisaran;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '名簿', 'daftar-nama', 50, 67, '<kanji>nama</kanji> <kanji>buku catatan</kanji> adalah buku yang berisi nama. Yaitu <vocabulary>daftar nama</vocabulary> atau <vocabulary>daftar nama</vocabulary>. Apakah nama Anda ada dalam daftar?', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_7377_daftar_nama;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '帳簿', 'buku-rekening', 50, 68, '<kanji>notebook</kanji> yang juga merupakan <kanji>record book</kanji> adalah <vocabulary>buku rekening</vocabulary> atau <vocabulary>register</vocabulary>, yang menunjukkan catatan seluruh transaksi yang telah dilakukan.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_7378_buku_rekening;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '表彰', 'pengakuan-publik', 50, 69, 'Anda ingin orang-orang <kanji>mengekspresikan</kanji> perasaan mereka terhadap Anda dengan cara yang <kanji>jelas</kanji>, jadi Anda meminta mereka memberi Anda <vocabulary>pengakuan publik</vocabulary>. Anda menginginkan <vocabulary>pengakuan publik</vocabulary> yang jelas dan ringkas atas semua bakat, keterampilan, dan pencapaian level 50 WaniKani Anda. Mungkin mereka akan mengadakan parade untukmu!', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_7379_pengakuan_publik;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '漫画', 'manga', 50, 70, '<kanji>Komik</kanji> <kanji>gambar</kanji> adalah <vocabulary>manga</vocabulary>, alias <vocabulary>komik Jepang</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_7380_manga;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '漫才', 'dialog-komik', 50, 71, '<kanji>komik</kanji> <kanji>bakat</kanji>! Dan bukan hanya satu, tapi dua talenta komedian, karena ini berarti <vocabulary>dialog komik</vocabulary> atau <vocabulary>komedi aksi ganda</vocabulary>. 

Lebih khusus lagi, 漫才 mengacu pada babak ganda yang menampilkan "pria lucu" (ボケ) dan "pria lurus" (ツッコミ) dalam rutinitas dialog komik. 漫才 adalah salah satu bentuk komedi paling populer di Jepang.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri. Hati-hati dengan rendaku.')
    RETURNING id INTO v_7381_dialog_komik;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '訂正', 'koreksi', 50, 72, 'Saat Anda <kanji>merevisi</kanji> sesuatu untuk menjadikannya <kanji>benar</kanji>, Anda sedang melakukan <vocabulary>koreksi</vocabulary> dan <vocabulary>revisi</vocabulary>.

訂正 mengacu pada perbaikan kesalahan secara resmi dalam konten tertulis atau lisan, seperti dokumen, laporan, atau pernyataan. Hal ini dapat menggambarkan tindakan koreksi dan koreksi itu sendiri.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_7382_koreksi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '改訂版', 'edisi-revisi', 50, 73, '<kanji>yang diperbarui</kanji>dan <kanji>revisi</kanji>d <kanji>edisi</kanji> sesuatu adalah <vocabulary>edisi revisi</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri. Hati-hati dengan rendaku.')
    RETURNING id INTO v_7383_edisi_revisi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '諮問', 'konsultasi', 50, 74, 'Saat Anda perlu <kanji>berkonsultasi</kanji> dengan seseorang mengenai <kanji>masalah</kanji>, Anda menjadwalkan <vocabulary>konsultasi</vocabulary> dengan orang tersebut. 

諮問 adalah kata yang sangat formal untuk konsultasi atau mencari nasihat, biasanya dalam konteks badan atau otoritas pemerintah yang meminta pendapat dewan. 
政府が委員会に諮問する berarti pemerintah merujuk suatu masalah ke komite untuk dibahas atau diberi nasihat, misalnya. Hal ini juga muncul dalam nama komite penasihat (諮問委員会).', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_7384_konsultasi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '諮る', 'untuk-berkonsultasi-dengan', 50, 75, 'Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanjinya sendiri berarti <kanji>berkonsultasi</kanji> dan versi kosakata kata kerjanya adalah <vocabulary>berkonsultasi dengan</vocabulary> atau <vocabulary>berunding dengan</vocabulary>.

諮る adalah kata yang sangat formal yang mengacu pada berkonsultasi dengan seseorang untuk meminta nasihat atau persetujuan — biasanya kelompok, dewan, atau otoritas. Anda akan melihatnya dalam konteks politik atau bisnis, seperti 計画を審議会に諮る (untuk menyerahkan rencana kepada komite untuk dipertimbangkan).', 'Anda perlu <vocabulary>berkonsultasi dengan</vocabulary> seorang <reading>hacker</reading> (はか) untuk memecahkan masalah hacking Anda. Bayangkan masalah peretasan seperti apa yang perlu Anda diskusikan, lalu bayangkan berkonsultasi dengan seorang peretas — apa pun gambaran peretas yang ada dalam pikiran Anda.')
    RETURNING id INTO v_7385_untuk_berkonsultasi_dengan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '感銘', 'kesan-mendalam', 50, 76, '<kanji>perasaan</kanji> dari <kanji>prasasti</kanji> adalah perasaan yang dirasakan ketika sesuatu yang begitu kuat terjadi sehingga perasaan itu seperti terpatri dalam jiwa Anda. Ini adalah sesuatu yang meninggalkan <vocabulary>kesan mendalam</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_7386_kesan_mendalam;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '銘柄', 'merek', 50, 77, '<kanji>prasasti</kanji> <kanji>pola</kanji> menunjukkan <vocabulary>merek</vocabulary> atau <vocabulary>membuat</vocabulary> item ini. Jika pola tulisannya adalah apel, Anda pasti tahu mereknya adalah Apple. Jika itu Window, Anda tahu itu Microsoft. Dll.', 'Kata ini menggunakan bacaan on''yomi untuk kanji pertama dan bacaan kun''yomi untuk kanji kedua. Untungnya, Anda sudah mempelajari keduanya sehingga Anda seharusnya bisa menggabungkan keduanya dan mengetahui cara membaca kata ini!')
    RETURNING id INTO v_7387_merek;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '銘々', 'setiap', 50, 78, 'Anda melihat <kanji>prasasti</kanji> ini lalu Anda melihat <kanji>prasasti</kanji> itu dan Anda melihat bahwa <vocabulary>masing-masing</vocabulary> adalah prasasti <vocabulary>individu</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_7388_setiap;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '堰', 'bendungan', 50, 79, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.', 'Bacaannya sama dengan yang Anda pelajari dengan kanji.')
    RETURNING id INTO v_7389_bendungan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '堤', 'tanggul', 50, 80, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.', 'Bacaannya seperti bacaan 包み yang artinya “bundel” atau “paket”. Coba bayangkan sebuah <vocabulary>tanggul</vocabulary> yang murni terbuat dari bundel dan paket. <read>包み</reading>(つつみ) ini adalah satu-satunya benda yang menahan air!')
    RETURNING id INTO v_7390_tanggul;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '堤防', 'tanggul', 50, 81, '<kanji>Tanggul</kanji> <kanji>mencegah</kanji> air agar tidak meluap ke tepian. Itu adalah <vocabulary>tanggul</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_7391_tanggul;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '漂う', 'melayang', 50, 82, 'Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanjinya sendiri berarti <kanji>melayang</kanji> dan versi kosakata kata kerjanya adalah <vocabulary>to drift</vocabulary> atau <vocabulary>to waft</vocabulary>.', 'Anda akan <vocabulary>hanyut</vocabulary> menjauh. Melayang melayang melayang. Kemudian, Anda berubah menjadi yo-yo dan berteriak "<reading>ta-da yo</reading>-yo (ただよ)! Tidak yakin mengapa drifting mengubah Anda menjadi yo-yo, tapi bayangkan saja dan jangan mempertanyakannya.')
    RETURNING id INTO v_7392_melayang;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '漂流', 'melayang', 50, 83, '<kanji>Melayang</kanji> menyusuri <kanji>sungai</kanji>. Sesuatu yang menyebabkan hal ini adalah <vocabulary>drift</vocabulary>. Bisa juga merupakan <vocabulary>drift</vocabulary> dari sesuatu.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_7393_melayang;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '漂着', 'melayang-ke-darat', 50, 84, 'Sesuatu telah <kanji>melayang</kanji>ke titik di mana ia <kanji>tiba</kanji>d. Di mana benda-benda yang melayang itu tiba? Mereka tiba di pantai (saat mereka melayang di atas air). Hal itulah yang membuat kata ini <vocabulary>melayang ke darat</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_7394_melayang_ke_darat;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '翻意', 'ubah-pikiran-seseorang', 50, 85, 'Saat Anda <kanji>membalikkan</kanji> <kanji>ide</kanji> Anda tentang sesuatu, Anda mengubah cara berpikir Anda tentang hal tersebut. Itu sebabnya kata ini <vocabulary>berubah pikiran</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_7395_ubah_pikiran_seseorang;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '翻訳', 'terjemahan', 50, 86, '<kanji>Balik</kanji> <kanji>terjemahan</kanji> sebuah kata dari satu bahasa ke bahasa lain. Itulah <vocabulary>terjemahan</vocabulary> dari kata (atau frase, dll.).', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_7396_terjemahan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '翻る', 'untuk-mengepul', 50, 87, 'Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Meskipun kanji berarti <kanji>membalik</kanji>, versi kosakata kata kerjanya adalah <vocabulary>mengembang</vocabulary> atau <vocabulary>mengepak</vocabulary>, seperti pada beberapa jenis bahan (mungkin gaun atau bendera) yang mengepul atau berkibar tertiup angin. Ini juga bisa berarti <kosa kata>tiba-tiba berubah</vocabulary> pikiran, atau sikap Anda, dll.', 'Agar sesuatu <vocabulary>mengembang</vocabulary> dan <vocabulary>mengembang</vocabulary>, Anda harus bertanya kepada <reading>orang di sini</reading> (ひるがえ) - pria yang ada di sini saat ini - untuk membuka jendela dan membiarkan angin masuk.')
    RETURNING id INTO v_7397_untuk_mengepul;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '軌跡', 'melacak', 50, 88, '<kanji>Rut</kanji> <kanji>jejak</kanji> yang tertinggal di jalan adalah <vocabulary>track</vocabulary> yang menandai <vocabulary>lintasan</vocabulary> roda kendaraan.

Kata ini juga dapat digunakan secara kiasan untuk merujuk pada meninggalkan atau mengikuti semacam jejak, atau untuk menggambarkan lintasan seseorang atau sesuatu, dan lain-lain.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_7398_melacak;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '軌道', 'orbit', 50, 89, 'Sebuah <kanji>rut</kanji> di <kanji>jalan</kanji> karena alasan tertentu merupakan <vocabulary>orbit</vocabulary> atau <vocabulary>lintasan</vocabulary>. Mungkin bayangkan sebuah lubang besar di jalan. Anda mengendarainya dengan kecepatan sangat tinggi, menabraknya, dan terbang ke angkasa dengan <vocabulary>lintasan</vocabulary> yang akan mengirim Anda ke <vocabulary>orbit</vocabulary>. Sekarang Anda berada di luar angkasa, mengelilingi bumi, berharap Anda tidak mengemudi begitu cepat.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_7399_orbit;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '皇后', 'permaisuri-jepang', 50, 90, '<kanji>kaisar</kanji> <kanji>permaisuri</kanji> adalah istri kaisar. Itulah <kosa kata>Permaisuri Jepang</vocabulary>, khususnya, karena 皇 biasanya mengacu pada kaisar Jepang.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri. Hati-hati dengan rendaku.')
    RETURNING id INTO v_7400_permaisuri_jepang;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '興奮', 'kegembiraan', 50, 91, '<kanji>minat</kanji> saya <kanji>bergairah</kanji>! Sebenarnya, saya merasakan <vocabulary>kegembiraan</vocabulary> dan <vocabulary>stimulasi</vocabulary> dari semua kekacauan ini!', 'Bacaan 興奮 adalah bacaan yang tidak Anda pelajari dengan kanji, meski serupa. Alih-alih きょう, itu こう, jadi pikirkan saja bagaimana setiap kali kamu merasakan kegembiraan, itu berkat <reading>こう</reading>いち. Jadi bayangkan saja こういち yang menarik bagi Anda untuk mengingat bacaan kosakata ini.')
    RETURNING id INTO v_7401_kegembiraan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '奮起', 'meriah', 50, 92, 'Aku <kanji>tergerak</kanji>, yang membuatku <kanji>bangun</kanji> (secara kiasan). Saya <vocabulary>membangkitkan</vocabulary> diri saya untuk mengatasi tantangan ini!

奮起 adalah kata formal untuk <vocabulary>membangkitkan seseorang</vocabulary> atau diri sendiri untuk bertindak dalam situasi yang menantang. Ini menggambarkan momen ketika seseorang memutuskan untuk mengumpulkan kekuatannya dan menghadapi tugas atau masalah secara langsung.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_7402_meriah;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '〜亭', 'restoran', 50, 93, 'Jika Anda melihat kanji <kanji>restoran</kanji> ditempelkan pada nama tempat, kemungkinan besar itu adalah <vocabulary>restoran</vocabulary>, khususnya <vocabulary>restoran tradisional Jepang</vocabulary>. Itu juga muncul di ujung tempat lain di mana Anda dapat beristirahat, seperti <vocabulary>penginapan</vocabulary>, <vocabulary>paviliun</vocabulary> tradisional yang Anda lihat di taman dan halaman kuil Jepang, dan <vocabulary>rumah teh</vocabulary>.', 'Bacaannya sama dengan yang Anda pelajari dengan kanji.')
    RETURNING id INTO v_7403_restoran;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '仰ぐ', 'untuk-diperhatikan', 50, 94, 'Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanjinya sendiri berarti <kanji>mencari</kanji> dan versi kosakata kata kerjanya adalah <vocabulary>to look up at</vocabulary> atau <vocabulary>to look up to</vocabulary>.', 'Secara pribadi, saya menyukai warna <reading>青</reading> (あお). Secara harfiah dan kiasan. Saya menyukai warna biru, jadi saya mengaguminya dan menghormatinya. Juga, saya melihat ke langit dan warnanya biru.')
    RETURNING id INTO v_7404_untuk_diperhatikan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '仰々しい', 'sombong', 50, 95, 'Seseorang mencoba membuat Anda <kanji>mencari</kanji> mereka... dua kali. Terlalu sering untuk memandang seseorang. Jika hal ini terjadi, orang tersebut pastilah <vocabulary>sombong</vocabulary>.

仰々しい adalah kata yang relatif formal yang sering digunakan untuk mendeskripsikan sesuatu yang terasa <vocabulary>berlebihan</vocabulary> atau <vocabulary>berlebihan agung</vocabulary>. Ini bisa merujuk pada pidato, upacara, atau perilaku yang terkesan terlalu formal, mencolok, atau dramatis.', 'Pembacaannya sama dengan yang Anda pelajari dengan kanji, x2 dengan tambahan しい untuk mengukurnya.')
    RETURNING id INTO v_7405_sombong;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '仰天', 'kaget', 50, 96, 'Saya <kanji>memandang</kanji> <kanji>surga</kanji>, dan saya <vocabulary>terkejut</vocabulary> dan <vocabulary>kagum</vocabulary> karenanya. Sungguh menakjubkan.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_7406_kaget;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '信仰', 'keyakinan-agama', 50, 97, 'Saya <kanji>percaya</kanji> dan <kanji>memandang</kanji> kekuatan yang lebih tinggi, karena saya memiliki <vocabulary>keyakinan agama</vocabulary>.', 'Pembacaan untuk bagian 仰 sungguh luar biasa. Bukannya ぎょう, tapi こう. Ingat saja, jika menyangkut keyakinan agama, yang perlu Anda yakini hanyalah <reading>こう</reading>いち.')
    RETURNING id INTO v_7407_keyakinan_agama;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '伯', 'ketua', 50, 98, '<kanji>pemimpin</kanji> distrik ini adalah orang itu, <vocabulary>count</vocabulary>. Dia juga <vocabulary>earl</vocabulary> di distrik lain, dan <vocabulary>chief</vocabulary> di distrik lain.', 'Bacaannya adalah bacaan はく yang Anda pelajari dengan kanji.')
    RETURNING id INTO v_7408_ketua;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '伯母', 'tante', 50, 99, 'Siapakah <kanji>kepala</kanji> <kanji>ibu</kanji>? Itu <vocabulary>bibi</vocabulary> Anda. Dan bibi ini adalah kakak perempuan dari ibu atau ayahmu karena dia adalah ibu utama. Bibi yang merupakan adik dari orang tuamu adalah 叔母, yang merupakan kata lain dari "bibi" lho!', 'Pembacaan kata ini merupakan pengecualian. Tapi kamu sudah mempelajari 叔母 yang artinya bibi juga. Ya, bacaan mereka sama! Jadi jika Anda kenal satu bibi, Anda kenal mereka semua.')
    RETURNING id INTO v_7409_tante;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '偶に', 'kadang-kadang', 50, 100, 'Sesuatu yang Anda lakukan <kanji>secara tidak sengaja</kanji> diharapkan merupakan sesuatu yang Anda lakukan <vocabulary>sesekali</vocabulary> atau <vocabulary>sesekali</vocabulary>.

Perhatikan juga bahwa kata ini biasanya ditulis dalam hiragana. Anda hanya <em>sesekali</em> melihatnya dalam kanji.', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi. Anda belum mempelajari bacaan ini, jadi inilah mnemonik untuk membantu Anda:

<vocabulary>Kadang-kadang</vocabulary> <reading>Tama</reading>ra (たま), gadis bola setempat, akan beristirahat dari tugasnya. Tapi itu hanya sesekali saja, karena Tamara adalah seorang pekerja keras.')
    RETURNING id INTO v_7410_kadang_kadang;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '偶然', 'kebetulan', 50, 101, 'Sesuatu yang terjadi <kanji>secara tidak sengaja</kanji> karena <kanji>alami</kanji> mungkin terjadi <vocabulary>secara kebetulan</vocabulary> atau <vocabulary>tidak terduga</vocabulary>. Itu hanya <vocabulary>kebetulan</vocabulary>!', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_7411_kebetulan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '配偶者', 'pasangan', 50, 102, '<kanji>Mendistribusikan</kanji> diri Anda <kanji>secara tidak sengaja</kanji> kepada <kanji>seseorang</kanji>. Orang itu akhirnya menjadi <vocabulary>pasangan</vocabulary> Anda. Tampaknya Anda terlalu banyak membagikan diri Anda kepada satu orang.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_7412_pasangan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '淀川', 'yodogawa', 50, 103, '<kanji>eddy</kanji> <kanji>sungai</kanji> bukanlah suatu hal yang penting, melainkan merupakan tempat yang terkenal. Kita berbicara tentang <vocabulary>Yodogawa</vocabulary>. Mungkin lebih baik melihat bacaannya untuk mengetahui maknanya. Carilah sungai di Prefektur Osaka ini jika Anda ingin informasi lebih lanjut.', 'Bacaannya adalah 淀 plus 川. Hati-hati dengan rendaku.')
    RETURNING id INTO v_7413_yodogawa;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '古墳', 'makam-kuno', 50, 104, '<kanji>kuburan</kanji> <kanji>makam</kanji> adalah <vocabulary>makam kuno</vocabulary>. Mereka sebagian besar berasal dari periode <vocabulary>Kofun</vocabulary>, dan memang dari sanalah periode tersebut mendapatkan namanya.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_7414_makam_kuno;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '墳墓', 'kuburan', 50, 105, '<kanji>makam</kanji> <kanji>kuburan</kanji> adalah <vocabulary>kuburan</vocabulary>... atau bisa juga <vocabulary>makam</vocabulary>. Atau mungkin keduanya.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_7415_kuburan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '壮大', 'agung', 50, 106, 'Ini sangat <kanji>kuat</kanji> dan <kanji>besar</kanji>! Hal-hal seperti ini <vocabulary>luar biasa</vocabulary>, <vocabulary>grand</vocabulary>, dan <vocabulary>epic</vocabulary>!', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_7416_agung;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '壮年', 'perdana-kehidupan', 50, 107, '<kanji>kuat</kanji> <kanji>tahun</kanji> Anda adalah tahun terbaik dalam hidup Anda! Inilah <vocabulary>puncak kehidupan</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_7417_perdana_kehidupan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '壮行', 'pengiriman', 50, 108, 'Anda ingin membuat seseorang merasa <kanji>kuat</kanji> ketika mereka <kanji>pergi</kanji> pergi ke suatu tempat, jadi Anda memberi mereka <vocabulary>pelepasan</vocabulary>. Itu cara yang bagus untuk mengucapkan <vocabulary>perpisahan</vocabulary>!

壮行 biasanya untuk perayaan perpisahan dan muncul dalam kata-kata seperti 壮行会 (pesta perpisahan) atau 壮行式 (pep reli).', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_7418_pengiriman;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '〜把', 'penghitung-untuk-bundel', 50, 109, 'Kanji mengacu pada <kanji>bundel</kanji>, namun ini merujuk pada <vocabulary>penghitung untuk bundel</vocabulary>. Letakkan ini di nomor, dan Anda akan mendapatkan "1 bundel" atau "2 bundel" atau bahkan tiga, astaga!', 'Mengatakan "1 bundel" dan "2 bundel" memakan waktu terlalu lama, jadi Anda memutuskan untuk memberi nama bundel ini seperti apa bentuknya: わ untuk <reading>wa</reading>lrus (わ)!')
    RETURNING id INTO v_7419_penghitung_untuk_bundel;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '把握', 'mencengkeram', 50, 110, 'Menggunakan arti <kanji>pegangan</kanji> dari 把 dan menggabungkannya dengan <kanji>pegangan</kanji>, Anda dapat mengetahui bahwa Anda sedang menggenggam sesuatu dan kemudian menggenggamnya. Saya biasanya menggenggam lalu menggenggam benda-benda yang terbang ke arah saya, sehingga kata ini berarti <vocabulary>pemahaman</vocabulary> atau <vocabulary>understand</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_7420_mencengkeram;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '運搬', 'mengangkut', 50, 111, 'Untuk <kanji>membawa</kanji> Anda dan <kanji>mengangkut</kanji> Anda. Itu adalah salah satu bentuk <vocabulary>transportasi</vocabulary>. Bisa juga berupa <vocabulary>carriage</vocabulary>, yang juga merupakan suatu bentuk transportasi.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri. Hati-hati dengan rendaku.')
    RETURNING id INTO v_7421_mengangkut;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '搬送', 'angkutan', 50, 112, 'Benda-benda yang <kanji>mengangkut</kanji> dan <kanji>mengirimkan</kanji> ke tempat Anda adalah bentuk <vocabulary>transportasi</vocabulary>.

搬送 paling sering digunakan dalam konteks medis untuk merujuk pada transportasi pasien.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_7422_angkutan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '搬出', 'melaksanakan', 50, 113, '<kanji>Transportasi</kanji> dan <kanji>keluar</kanji> barang-barang ini dari sini (dengan mengangkutnya). Singkirkan itu. Saatnya untuk <vocabulary>melaksanakan</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_7423_melaksanakan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '洞', 'gua', 50, 114, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.', '<reading>Hoe Ra</reading> (ほら), versi Ra yang membawa cangkul, menggunakan cangkul tersebut untuk menggali <vocabulary>gua</vocabulary> untuk dirinya sendiri, untuk memberikan naungan dari matahari (meskipun dia adalah dewa matahari). Dia menggali menggali menggali dan kemudian duduk di guanya yang bagus, cangkul di tangan.')
    RETURNING id INTO v_7426_gua;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '空洞', 'kosong', 50, 115, '<kanji>langit</kanji> <kanji>gua</kanji> adalah gua dengan langit (ruang terbuka) di dalamnya. Ini adalah <vocabulary>hollow</vocabulary>, namun bisa juga mengacu pada <vocabulary>rongga</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_7427_kosong;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '洞穴', 'gua', 50, 116, '<kanji>gua</kanji> <kanji>lubang</kanji> adalah <vocabulary>gua</vocabulary> atau <vocabulary>den</vocabulary>.', 'Pembacaan 洞 adalah salah satu yang telah Anda pelajari. Namun, pembacaan 穴 bukanlah sesuatu yang pernah Anda pelajari. Jadi, pikirkan bagaimana Anda masuk ke dalam <vocabulary>gua</vocabulary> ini, hanya untuk menemukan diri Anda ditutupi oleh cairan kental berwarna merah. Kamu mengira itu darah, tapi untungnya ternyata <reading>ketsu</reading>p (けつ). Jika Anda ingin tidak terlalu formal, Anda juga bisa menggunakan kun''yomi dan mengucapkan ほらあな, tetapi Anda tidak akan pernah belajar membaca untuk 穴, dan apa asyiknya itu?')
    RETURNING id INTO v_7428_gua;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '生涯', 'seumur-hidup-seseorang', 50, 117, '<kanji>kehidupan</kanji> <kanji>cakrawala</kanji> adalah hidup Anda, yang Anda nantikan, hingga akhir. Ini adalah <vocabulary>seumur hidup</vocabulary>, meskipun bisa juga mengacu pada <vocabulary>karier seseorang</vocabulary>. Pada dasarnya, pada akhirnya ada sesuatu yang mati.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_7429_seumur_hidup_seseorang;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '検疫', 'karantina', 50, 118, 'Kami harus <kanji>memeriksa</kanji> Anda selama <kanji>epidemi</kanji> ini... soooo, jika Anda bisa datang ke sini dan tinggal di sini untuk waktu yang lama, itu akan sangat bagus. Ya, ini semacam <vocabulary>karantina</vocabulary>, maaf soal itu.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_7430_karantina;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '免疫', 'kekebalan', 50, 119, 'Untuk <kanji>menghindari</kanji> dari <kanji>epidemi</kanji>, Anda harus memiliki <vocabulary>imunitas</vocabulary> atau <vocabulary>imunisasi</vocabulary> dari penyakit tersebut.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_7431_kekebalan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '疫病', 'penyakit-menular', 50, 120, '<kanji>epidemi</kanji> <kanji>penyakit</kanji>akan datang dari <vocabulary>penyakit menular</vocabulary>. Mungkin semacam <vocabulary>wabah</vocabulary> atau <vocabulary>epidemi</vocabulary>?', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_7432_penyakit_menular;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '脅す', 'untuk-mengancam', 50, 121, 'Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanjinya sendiri berarti <kanji>mengancam</kanji> dan versi kosakata kata kerjanya adalah <vocabulary>mengancam</vocabulary>.', 'Aku akan <vocabulary>mengancam</vocabulary> kamu dengan nyawamu jika kamu mempunyai <reading>odo</reading>r (おど) yang buruk. Bayangkan seseorang yang baunya tidak sedap, lalu ancam.')
    RETURNING id INTO v_7436_untuk_mengancam;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '飢え', 'kelaparan', 50, 122, 'Anda pernah melihat bahwa 飢える berarti "kelaparan". Versi kata bendanya adalah <vocabulary>lapar</vocabulary> atau <vocabulary>starvation</vocabulary>.', 'Bacaannya berasal dari 飢える.')
    RETURNING id INTO v_7437_kelaparan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '尽くす', 'untuk-menghabiskan-sesuatu', 50, 123, '尽きる berarti "habis". 尽くす adalah saat Anda melakukan sesuatu yang melelahkan, yang membuatnya <vocabulary>menghabiskan sesuatu</vocabulary>. Oleh karena itu, ini juga bisa berarti <vocabulary>mengabdikan diri</vocabulary>, karena Anda mungkin menghabiskan seluruh upaya terakhir yang Anda miliki ketika Anda mengabdi pada sesuatu.

Anda juga akan melihat 尽くす melekat pada kata kerja lain yang berarti <kosa kata>melakukan sepenuhnya</vocabulary>, seperti 使い尽くす (habis seluruhnya) atau 焼き尽くす (terbakar menjadi abu).', 'Ini menggunakan bacaan yang sama dengan 尽きる, jadi kamu akan baik-baik saja di sini.')
    RETURNING id INTO v_7438_untuk_menghabiskan_sesuatu;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '彩り', 'warna', 50, 124, 'Ini adalah versi kata benda dari kanji dan mempunyai arti yang sama juga: <vocabulary>mewarnai</vocabulary>.', 'Ada いろ (seperti 色) di dalamnya, lalu ど, jadi pikirkan tentang <membaca>色 do</reading>g, berlarian mewarnai sesuatu, karena itulah yang dilakukan 色 anjing.')
    RETURNING id INTO v_7439_warna;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '悔やむ', 'menyesal', 50, 125, 'Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanjinya sendiri berarti <kanji>menyesal</kanji> dan versi kosakata kata kerjanya adalah <vocabulary>menyesal</vocabulary> atau <vocabulary>berduka</vocabulary>.', 'Bacaannya berasal dari 悔しい.')
    RETURNING id INTO v_7440_menyesal;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '殴り合い', 'baku-hantam', 50, 126, 'Ingat 殴る, yang artinya "meninju"? Tambahkan 合う dan Anda akan mendapatkan <vocabulary>pukulan</vocabulary> yang <vocabulary>bersatu</vocabulary> dengan pukulan lainnya. Yang saya maksud dengan "bersatu" adalah kepalan tangan Anda bersentuhan dengan wajah seseorang, dan kepalan tangan mereka bersentuhan dengan ginjal Anda. Dengan kata lain, ini adalah <vocabulary>pertarungan</vocabulary>.', 'Bacaannya berasal dari 殴る dan 合う, disatukan.')
    RETURNING id INTO v_7441_baku_hantam;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '殴り込み', 'serangan', 50, 127, '<kanji>Pukulan</kanji> ke <kanji>ke</kanji> suatu tempat, dan Anda akan melancarkan <vocabulary>serangan</vocabulary>. 

殴り込み biasanya berarti penyerbuan oleh anggota geng atau berandalan, di mana mereka menerobos masuk ke rumah seseorang atau wilayah musuh untuk memulai perkelahian.', 'Bacaannya berasal dari kata 殴る dan kanji 込.')
    RETURNING id INTO v_7442_serangan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '遂げる', 'untuk-mencapai', 50, 128, 'Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanjinya sendiri berarti <kanji>mencapai</kanji> dan versi kosakata kata kerjanya adalah <vocabulary>untuk mencapai</vocabulary>.', 'Segala sesuatu yang telah kamu capai dapat disimpan dalam satu jari kelingking kecilmu (と)... sepertinya kamu belum mencapai banyak hal.')
    RETURNING id INTO v_7444_untuk_mencapai;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '麻布', 'kain-rami', 50, 129, '<kanji>kain rami</kanji> <kanji>kain</kanji> adalah <vocabulary>kain rami</vocabulary>.', 'Pembacaannya adalah pembacaan kosakata individu 麻 dan 布 yang digabungkan menjadi satu.')
    RETURNING id INTO v_7445_kain_rami;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '鬱気', 'suasana-hati-yang-suram', 50, 130, '<kanji>suram</kanji> <kanji>energi</kanji> telah memenuhi ruangan. Hal ini menempatkan Anda dalam <vocabulary>suasana hati yang suram</vocabulary>. Anda sekarang <vocabulary>merasa putus asa</vocabulary>.

Kata ini bersifat formal, jadi kebanyakan Anda hanya akan melihatnya di literatur.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri. Hati-hati dengan pemendekan 鬱 atau Anda akan merasa murung.')
    RETURNING id INTO v_7450_suasana_hati_yang_suram;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '伯父', 'paman', 50, 131, 'Siapakah <kanji>kepala</kanji> <kanji>ayah</kanji>? Itu <vocabulary>paman</vocabulary>mu. Dan paman ini adalah kakak laki-laki dari ibu atau ayahmu karena dia adalah ayah utama. Paman yang merupakan adik dari orang tuamu adalah 叔父, yang merupakan kata lain dari "paman" lho!', 'Pembacaan kata ini merupakan pengecualian. Tapi kamu sudah mempelajari 叔父 yang artinya paman juga. Ya, bacaan mereka sama! Jadi jika Anda mengenal satu paman, Anda mengenal mereka semua.')
    RETURNING id INTO v_7613_paman;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '無邪気', 'kepolosan', 50, 132, 'Jika <kanji>tidak ada</kanji> <kanji>jahat</kanji> sama sekali dalam <kanji>roh</kanji> Anda, Anda akan menjadi orang yang <vocabulary>polos</vocabulary> dan <vocabulary>berpikiran sederhana</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_7727_kepolosan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '煮える', 'untuk-direbus', 50, 133, 'Kata ini terdiri dari kanji dengan hiragana ditempelkan. Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja.

Anda sudah mempelajari 煮る, yang digunakan saat Anda sengaja merebus sesuatu. Sebaliknya, kata kerja ini bersifat intransitif, artinya mengacu pada saat sesuatu direbus atau dimasak, tanpa penekanan pada siapa yang memasukkan benda tersebut ke dalam panci. Itu sebabnya kata kerja ini berarti <vocabulary>direbus</vocabulary> atau <vocabulary>dimasak</vocabulary>.', 'Karena kata ini memiliki okurigana (hiragana yang melekat pada kanji), Anda tahu bahwa kemungkinan besar itu adalah bacaan kun''yomi. Anda mempelajari bacaan ini dengan kanji. Bagus untukmu!')
    RETURNING id INTO v_8950_untuk_direbus;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '壺', 'pot', 50, 134, 'Kanji dan kata-katanya sama persis, jadi ini artinya <vocabulary>pot</vocabulary> atau <vocabulary>toples</vocabulary>.

壺 biasanya mengacu pada pot — seperti wadah keramik — dengan badan bulat dan bukaan sempit. Kata ini juga dapat digunakan secara kiasan, seperti 壺にはまる (sesuatu yang sangat sesuai dengan selera humor Anda dan Anda tidak bisa berhenti tertawa) dan ド壺にはまる (terjebak dalam situasi buruk tanpa jalan keluar yang mudah). Dalam penggunaan kiasan ini, 壺 sering ditulis dalam kana.', 'Kata ini terdiri dari satu kanji, sehingga menggunakan bacaan kun''yomi. Untungnya, itulah bacaan yang sudah Anda pelajari!')
    RETURNING id INTO v_9464_pot;
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4085_pemberitahuan_publik, 'Pemberitahuan Publik', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4085_pemberitahuan_publik, 'Pengumuman Publik', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_4085_pemberitahuan_publik, 'こうこく', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4085_pemberitahuan_publik, 'トーフグの決算公告、もう見ましたか。', 'Apakah Anda sudah melihat pengumuman keuangan publik Tofugu?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4085_pemberitahuan_publik, 'トーフグは、日本政府の官報にコウイチについての重大な公告をのせることにしました。', 'Tofugu memutuskan untuk memasang pemberitahuan publik yang penting tentang Koichi dalam telegram resmi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4085_pemberitahuan_publik, '日本には、電子公告規則という法律がありますが、あなたの国はどうですか？', 'Ada undang-undang di Jepang yang disebut Peraturan Pemberitahuan Publik Elektronik. Apakah Anda memiliki hal seperti itu di negara Anda?');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4611_irama, 'Irama', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_4611_irama, 'りつどう', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4611_irama, 'この音楽はとても律動的ですね。', 'Musik ini sangat berirama.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4611_irama, 'トーフグチームの中で、一番律動的にラジオ体操をしていたのは、カナエです。', 'Di luar tim Tofugu, Kanae melakukan senam radio paling berirama.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4611_irama, '今朝、たくさんのウサギが庭で律動的に飛び跳ねているのを見ました。', 'Pagi ini, aku melihat banyak sekali kelinci yang melompat-lompat seirama di kebunku.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4974_untuk_menyisihkan, 'Untuk Menyisihkan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4974_untuk_menyisihkan, 'Untuk Menyimpan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4974_untuk_menyisihkan, 'Untuk Menghemat', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_4974_untuk_menyisihkan, 'たくわえる', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4974_untuk_menyisihkan, '貧乏ですが、何とか子供の学資は貯えるつもりです。', 'Kami miskin, tapi kami berniat menabung untuk pendidikan anak kami.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4974_untuk_menyisihkan, '地震が起きた時のために、倉庫に食料品や水を貯えてるんです。', 'Kami telah menyisihkan makanan dan air di gudang jika terjadi gempa bumi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4974_untuk_menyisihkan, '大きなビジネスを始める前に、元手を貯える必要がある。', 'Kita perlu menabung sejumlah dana sebelum kita dapat memulai bisnis besar.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5346_barang_curian, 'Barang curian', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5346_barang_curian, 'Barang yang Dicuri', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_5346_barang_curian, 'とうひん', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5346_barang_curian, 'アイツらは、盗品の転売をしてかせいでいるんだ。', 'Mereka menghasilkan uang dengan menjual kembali barang curian.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5346_barang_curian, 'オークションで盗品を見つけた場合、すぐに通報してください。', 'Jika Anda menemukan barang curian di lelang, segera laporkan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5346_barang_curian, '友達がネットで買った物が、実は盗品だったみたいだ。盗品だと知らずに買っちゃったら、どうすればいいんだろう？', 'Rupanya barang yang dibeli teman saya secara online itu sebenarnya adalah barang curian. Apa yang harus dilakukan seseorang jika secara tidak sengaja membeli barang curian?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5346_barang_curian, 'ここではみんな盗品を売ってるので、「泥棒市場」と呼ばれています。', 'Semua orang di sini menjual barang curian, sehingga disebut "pasar pencuri".');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6994_hadiah_akhir_tahun, 'Hadiah Akhir Tahun', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_6994_hadiah_akhir_tahun, 'せいぼ', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6994_hadiah_akhir_tahun, '本当にちゃんと上司へのお歳暮持ったの？', 'Apakah Anda yakin Anda memiliki hadiah akhir tahun yang tepat untuk atasan Anda?');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7192_menunggang_kuda, 'Menunggang Kuda', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7192_menunggang_kuda, 'Dipasang', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7192_menunggang_kuda, 'Penunggang kuda', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7192_menunggang_kuda, 'きば', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7192_menunggang_kuda, '運動会の騎馬戦の練習があるので、明日は早起きしなくてはいけません。', 'Saya harus bangun pagi-pagi besok pagi untuk berlatih pertarungan kavaleri tiruan pada pertemuan atletik.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7192_menunggang_kuda, '「さっき馬に乗った警察官を見たよ！」「ああ、騎馬警官って言うんだよ。日本にはいないの？」', '"Saya melihat seorang petugas polisi menunggang kuda tadi!" “Oh, maksudmu polisi berkuda. Apakah kamu tidak memilikinya di Jepang?”');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7192_menunggang_kuda, 'モンゴルやカザフスタンの人々は、騎馬民族として知られている。', 'Masyarakat Mongolia dan Kazakhstan dikenal sebagai masyarakat berkuda.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7194_kavaleri, 'Kavaleri', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7194_kavaleri, 'きへい', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7194_kavaleri, 'その騎兵の写真、なんだか若かりし頃を思い出すな。', 'Foto kavaleri itu sedikit mengingatkanku pada masa mudaku.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7334_ladang_murbei, 'Ladang Murbei', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7334_ladang_murbei, 'Kuwabara', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7334_ladang_murbei, 'くわばら', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7334_ladang_murbei, '桑原さんに聞いてみましょう！', 'Ayo tanya Kuwabara-san!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7334_ladang_murbei, 'えっ、こわっ！桑原桑原！', 'A-, betapa menakutkannya! Bersabarlah agar hal itu tidak terjadi!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7334_ladang_murbei, 'かつては桑畑がたくさんあったため、この場所は「桑原」と呼ばれるようになりました。', 'Orang-orang mulai menyebut tempat ini "Kuwabara" karena dulunya banyak terdapat ladang murbei di sini.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7356_puteri_mahkota, 'Puteri mahkota', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7356_puteri_mahkota, 'Permaisuri Putri Mahkota', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7356_puteri_mahkota, 'こうたいしひ', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7356_puteri_mahkota, '皇太子妃が軍に志願するはずねぇだろうが。', 'Tidak mungkin Putri Mahkota mau menjadi sukarelawan di tentara.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7356_puteri_mahkota, '皇太子妃の言葉は、争いを収める不思議な力を持っていた。', 'Kata-kata Putri Mahkota memiliki kekuatan misterius untuk mengakhiri pertengkaran.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7356_puteri_mahkota, '皇太子妃は新しい国の風習を学ぶため、毎夜遅くまで書を読んだ。', 'Putri Mahkota membaca buku hingga larut malam untuk mempelajari adat istiadat di negeri baru.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7356_puteri_mahkota, '皇太子妃は遠征に出る皇太子の背を、言葉なく見送った。', 'Putri Mahkota tanpa berkata-kata mengantar Putra Mahkota pergi berkampanye.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7356_puteri_mahkota, '皇太子妃が最後に残した言葉は、今も宮廷の謎として語られている。', 'Kata-kata terakhir Putri Mahkota masih dibicarakan sebagai misteri istana.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7358_meleleh, 'Meleleh', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7358_meleleh, 'Untuk Melarutkan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7358_meleleh, 'Untuk Mencair', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7358_meleleh, 'とける', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7358_meleleh, 'あの光り輝く星々が、夜空に溶けるのを想像してみてください。', 'Bayangkan bintang-bintang yang berkilauan melebur ke langit malam.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7359_licik, 'Licik', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7359_licik, 'Licik', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7359_licik, 'Licik', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7359_licik, 'Cerdik', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7359_licik, 'わるがしこい', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7359_licik, 'あいつは悪賢い男で、猫かぶりが大のお得意なんだ。', 'Dia pria yang licik dan dia juga pandai berpura-pura tidak bersalah.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7360_cahaya, 'Cahaya', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7360_cahaya, 'Kecerahan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7360_cahaya, 'Berkilau', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7360_cahaya, 'かがやき', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7360_cahaya, '私はそのダイヤモンドの輝きに目がくらんでしまいました。', 'Saya disorientasi oleh pancaran berlian.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7361_kepiting, 'Kepiting', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7361_kepiting, 'かに', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7361_kepiting, 'お腹がすいてきた。晩ご飯の蟹が楽しみだ。', 'Saya mulai lapar. Saya menantikan kepiting untuk makan malam.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7362_buaya, 'Buaya', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7362_buaya, 'Buaya', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7362_buaya, 'わに', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7362_buaya, 'この鰐の置物、邪魔なんだけど。', 'Patung buaya ini menghalangi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7362_buaya, '鰐蟹って漢字、何も見ずに手書きで書けるの？すごいね！', 'Anda bisa menulis kanji untuk WaniKani dengan tangan tanpa melihat apa pun? Itu luar biasa!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7362_buaya, '鰐の剥製が部屋に飾ってあります。', 'Aku punya boneka buaya yang dipajang di kamarku.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7363_muram, 'Muram', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7363_muram, 'Menyedihkan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7363_muram, 'Mengganggu', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7363_muram, 'うっとうしい', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7363_muram, '「この女マジ鬱陶しいんだけど。」「よー。気にすんなって。」', '"Gadis ini sangat menyebalkan." "Yo, jangan khawatir tentang itu."');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7363_muram, '鬱陶しい雨が続いてるね。', 'Hujan yang suram terus berlanjut, bukan?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7363_muram, 'うん。ずっと曇り空ばかりで鬱陶しいよ。', 'Ya, sungguh menyedihkan dengan langit mendung yang terus-menerus.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7364_puncak, 'Puncak', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7364_puncak, 'Puncak', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7364_puncak, 'Punggung bukit', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7364_puncak, 'みね', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7364_puncak, '妹と私は、雲の上にそびえる富士山の峰に登頂しました。', 'Saya dan saudara perempuan saya mendaki ke puncak Gunung Fuji, menjulang di atas awan.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7365_pegunungan, 'Pegunungan', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7365_pegunungan, 'れんぽう', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7365_pegunungan, '今日の連峰はよく晴れていて見晴らしがいいです。', 'Pegunungan hari ini cerah dengan indah dan pemandangannya sangat bagus.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7366_mahir, 'Mahir', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7366_mahir, 'Mahir', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7366_mahir, 'Cerdik', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7366_mahir, 'うまい', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7366_mahir, '話が巧すぎるぜ。何か企んでるだろ？', 'Itu terlalu bagus untuk menjadi kenyataan. Apa yang kamu rencanakan?');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7367_cerdik, 'Cerdik', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7367_cerdik, 'Berbakat', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7367_cerdik, 'Mahir', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7367_cerdik, 'こうみょう', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7367_cerdik, 'ある邪悪な魔法使いが、巧妙に偶然を装って女性に近づきました。', 'Penyihir jahat dengan cerdik berpura-pura mendekati gadis itu secara kebetulan.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7368_dingin, 'Dingin', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7368_dingin, 'Flu biasa', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7368_dingin, 'かぜ', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7368_dingin, '「なんで母親の葬式に来ないの？」「風邪ひいてるからだよ。」', '"Kenapa kamu tidak datang ke pemakaman ibumu?" "Karena aku masuk angin."');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7369_halangan, 'Halangan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7369_halangan, 'Intrusi', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7369_halangan, 'じゃま', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7369_halangan, '私の邪魔をするな。一人で出来るよ！', 'Jangan menghalangi jalanku. Saya bisa melakukannya sendiri!');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7370_jahat, 'Jahat', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7370_jahat, 'Kejahatan', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7370_jahat, 'よこしま', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7370_jahat, '神様は私の邪な心を見透かしていらっしゃったんだわ。', 'Tuhan melihat hatiku yang jahat.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7371_dapatkan, 'Dapatkan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7371_dapatkan, 'Bakiak Kayu Jepang', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7371_dapatkan, 'げた', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7371_dapatkan, 'こちらの下駄は二色のお色をご用意しております。', 'Bakiak kayu ini tersedia dalam dua warna.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7372_tidak_bagus, 'Tidak bagus', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7372_tidak_bagus, 'Tanpa harapan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7372_tidak_bagus, 'Tidak bisa', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7372_tidak_bagus, 'Tidak Diizinkan', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7372_tidak_bagus, 'だめ', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7372_tidak_bagus, '男の子と旅行に行くのは、絶対に駄目ですからね！', 'Kamu benar-benar tidak bisa melakukan perjalanan dengan laki-laki!');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7373_kegagalan, 'Kegagalan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7373_kegagalan, 'Ketidakgunaan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7373_kegagalan, 'Tidak ada gunanya', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7373_kegagalan, 'むだ', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7373_kegagalan, '言うだけ無駄だよ。フグは決して忠告には耳を貸さないんだから。', 'Hanya mengatakan itu tidak ada gunanya. Fugu tidak pernah mendengarkan nasihat.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7374_mendadak, 'Mendadak', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7374_mendadak, 'Tidak terduga', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7374_mendadak, 'Tiba-tiba', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7374_mendadak, 'とうとつ', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7374_mendadak, '彼女、唐突に車の修理をしてほしいって俺に頼んできたんだよ。', 'Dia tiba-tiba meminta saya untuk memperbaiki mobilnya.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7375_pengadilan, 'Pengadilan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7375_pengadilan, 'Ruang sidang', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7375_pengadilan, 'ほうてい', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7375_pengadilan, 'あとどれくらい私達がこの法廷にいることになるか分かりますか？', 'Tahukah Anda berapa lama lagi kita akan berada di ruang sidang ini?');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7376_pengadilan_kekaisaran, 'Pengadilan Kekaisaran', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7376_pengadilan_kekaisaran, 'Pengadilan Kerajaan', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7376_pengadilan_kekaisaran, 'きゅうてい', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7376_pengadilan_kekaisaran, '宮廷では咳風邪が流行っています。', 'Rasa dingin melanda Istana Kekaisaran.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7377_daftar_nama, 'Daftar Nama', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7377_daftar_nama, 'Daftar Nama', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7377_daftar_nama, 'Gulungan', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7377_daftar_nama, 'めいぼ', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7377_daftar_nama, '彼は仰向けに寝転がって、名簿の全ての名前に目を通した。', 'Dia berbaring menghadap ke atas dan memeriksa semua nama di register.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7378_buku_rekening, 'Buku Rekening', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7378_buku_rekening, 'Daftar', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7378_buku_rekening, 'Buku besar', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7378_buku_rekening, 'ちょうぼ', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7378_buku_rekening, '帳簿を燃やしてしまうという考えは思いつきませんでした。', 'Saya tidak terpikir untuk membakar buku rekening tersebut.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7379_pengakuan_publik, 'Pengakuan Publik', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7379_pengakuan_publik, 'Pengakuan Publik', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7379_pengakuan_publik, 'Pujian', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7379_pengakuan_publik, 'ひょうしょう', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7379_pengakuan_publik, '表彰式には出席せずに帰ってきてしまいました。', 'Saya pulang tanpa menghadiri upacara penghargaan.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7380_manga, 'manga', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7380_manga, 'Komik Jepang', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7380_manga, 'まんが', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7380_manga, '漫画には色々な形式があります。', 'Ada berbagai gaya dalam manga.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7381_dialog_komik, 'Dialog Komik', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7381_dialog_komik, 'Aksi Ganda Komedi', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7381_dialog_komik, 'まんざい', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7381_dialog_komik, '漫才を見て大声で笑うことはストレス解消になる。', 'Menonton aksi ganda komedi dan tertawa terbahak-bahak menghilangkan stres saya.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7382_koreksi, 'Koreksi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7382_koreksi, 'Revisi', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7382_koreksi, 'ていせい', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7382_koreksi, 'もし私の日本語に間違いがあれば、その場で訂正してもらってもいいですか？', 'Jika saya membuat kesalahan dalam bahasa Jepang, maukah Anda memperbaikinya saat itu juga?');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7383_edisi_revisi, 'Edisi Revisi', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7383_edisi_revisi, 'かいていばん', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7383_edisi_revisi, 'バスの時刻が改訂されたなら、改訂版の時刻表をもらわなきゃ。', 'Jika jadwal bus direvisi, saya memerlukan edisi revisi.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7384_konsultasi, 'Konsultasi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7384_konsultasi, 'Konsultasi', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7384_konsultasi, 'Permintaan Nasihat Resmi', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7384_konsultasi, 'しもん', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7384_konsultasi, 'その日は経済財政諮問会議が開催される予定です。', 'Dewan Kebijakan Ekonomi dan Fiskal berencana mengadakan pertemuan pada hari yang sama.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7385_untuk_berkonsultasi_dengan, 'Untuk Berkonsultasi Dengan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7385_untuk_berkonsultasi_dengan, 'Untuk Berunding', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7385_untuk_berkonsultasi_dengan, 'はかる', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7385_untuk_berkonsultasi_dengan, 'この問題は取締役会に諮る必要があります。', 'Masalah ini perlu kita diskusikan pada rapat direksi.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7386_kesan_mendalam, 'Kesan Mendalam', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7386_kesan_mendalam, 'かんめい', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7386_kesan_mendalam, '私達は彼のピアノの演奏に深く感銘を受けました。', 'Kami sangat terkesan dengan penampilan pianonya.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7387_merek, 'Merek', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7387_merek, 'Membuat', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7387_merek, 'めいがら', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7387_merek, '後どれくらいでお客さんに推奨する銘柄が決まりそうですか。', 'Berapa lama waktu yang Anda perlukan untuk memutuskan merek mana yang akan direkomendasikan kepada pelanggan Anda?');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7388_setiap, 'Setiap', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7388_setiap, 'Individu', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7388_setiap, 'めいめい', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7388_setiap, 'うちの家族の銘々がその写真を持っています。', 'Setiap anggota keluarga saya memiliki foto ini.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7389_bendungan, 'Bendungan', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7389_bendungan, 'せき', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7389_bendungan, '私の息子は、ある日突然、堰を切ったように日本語をペラペラ話し始めたんです。', 'Suatu hari, anak saya tiba-tiba mulai berbicara bahasa Jepang dengan lancar, seolah-olah bendungan dalam dirinya telah rusak.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7390_tanggul, 'Tanggul', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7390_tanggul, 'Bank', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7390_tanggul, 'Tanggul', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7390_tanggul, 'つつみ', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7390_tanggul, '村長は、堤が切れるのを防ぐため、堤に人柱を埋めることを決意しました。', 'Kepala desa memutuskan untuk menguburkan korban manusia di tanggul agar tidak runtuh.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7391_tanggul, 'Tanggul', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7391_tanggul, 'Bank', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7391_tanggul, 'Tanggul', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7391_tanggul, 'ていぼう', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7391_tanggul, '水が堤防を越えそうになっているから、近づかない方がいいですよ。', 'Air hampir mengalir melewati tanggul, jadi sebaiknya berhati-hati.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7392_melayang, 'Melayang', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7392_melayang, 'Untuk melayang', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7392_melayang, 'ただよう', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7392_melayang, '美味しいみそ汁の匂いが漂ってきて、目が覚めました。', 'Saya terbangun oleh aroma sup miso yang lezat di udara.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7392_melayang, '今日、浅田さんからなんかヤバイ悲壮感漂ってない？', 'Tidakkah menurut Anda ada perasaan tragis yang melayang dari Tuan Asada hari ini?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7392_melayang, '焼き芋を食べた後のおならは、他のおならよりも長い間空気中を漂う気がするよ。', 'Kentut setelah makan ubi bakar terasa lebih lama bertahan di udara dibandingkan kentut biasa.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7393_melayang, 'Melayang', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7393_melayang, 'Melayang', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7393_melayang, 'ひょうりゅう', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7393_melayang, '帆が折れて、ヨットが海に漂流し始めた時は、ちょっと悲観的でしたね。', 'Ketika tiang kapal pecah dan kapal pesiar saya mulai terhanyut ke laut, saya menjadi sedikit pesimis.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7394_melayang_ke_darat, 'Melayang ke Darat', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7394_melayang_ke_darat, 'ひょうちゃく', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7394_melayang_ke_darat, '傷ついた赤ちゃん鯨が、とある砂浜に漂着するところを想像してみてください。', 'Bayangkan seekor bayi paus yang terluka terdampar di pantai berpasir.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7395_ubah_pikiran_seseorang, 'Ubah Pikiran Seseorang', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7395_ubah_pikiran_seseorang, 'Ubah Pikiran Anda', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7395_ubah_pikiran_seseorang, 'ほんい', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7395_ubah_pikiran_seseorang, 'この結婚について、絶対に翻意することがないことを誓います。', 'Aku bersumpah, aku sama sekali tidak akan berubah pikiran tentang pernikahan ini.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7396_terjemahan, 'Terjemahan', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7396_terjemahan, 'ほんやく', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7396_terjemahan, 'ちょうど君の翻訳を見させてもらってたところだよ。', 'Saya baru saja melihat terjemahan Anda.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7397_untuk_mengepul, 'Untuk mengepul', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7397_untuk_mengepul, 'Berkibar', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7397_untuk_mengepul, 'Tiba-tiba Berubah', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7397_untuk_mengepul, 'ひるがえる', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7397_untuk_mengepul, '彼女のスカートが風で翻ったのは分かるんですが、その時の彼の心象を翻訳するのは私には難しすぎます。', 'Aku tahu roknya berkibar tertiup angin, tapi menggambarkan perasaannya saat itu terlalu sulit.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7398_melacak, 'Melacak', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7398_melacak, 'Lintasan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7398_melacak, 'Jejak', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7398_melacak, 'Jalan yang Telah Diambil Seseorang', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7398_melacak, 'きせき', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7398_melacak, 'このビデオでは、ワニカニ誕生からこれまでの軌跡をたどります。', 'Dalam video kali ini kita akan menelusuri perjalanan WaniKani dari lahir hingga saat ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7398_melacak, '田んぼの上を、蛍の群れが美しい光の軌跡を描いて飛んでいた。', 'Segerombolan kunang-kunang beterbangan di atas persawahan meninggalkan jejak cahaya yang indah.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7398_melacak, '車が曲がる時、前輪と後輪では軌跡が違います。これによって、前輪にはぶつからなくても、後輪に巻き込まれて事故になるケースがあります。', 'Saat mobil berbelok, lintasan roda depan dan roda belakang berbeda. Akibatnya, ada kalanya roda depan terhindar dari benturan, namun roda belakang masih bisa bertabrakan sehingga mengakibatkan kecelakaan.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7399_orbit, 'Orbit', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7399_orbit, 'Lintasan', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7399_orbit, 'きどう', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7399_orbit, 'ロケットが軌道に入ったというニュースを聞いて、誰もが喜びました。', 'Semua orang senang mendengar berita bahwa roket tersebut memasuki orbit.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7400_permaisuri_jepang, 'Permaisuri Jepang', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7400_permaisuri_jepang, 'こうごう', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7400_permaisuri_jepang, '彼は誤って皇后であった母親を殺害してしまいました。', 'Dia secara tidak sengaja membunuh ibunya, Permaisuri Jepang.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7401_kegembiraan, 'Kegembiraan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7401_kegembiraan, 'Stimulasi', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7401_kegembiraan, 'こうふん', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7401_kegembiraan, '止まれの標識を無視する度に、興奮するんです。', 'Setiap kali saya mengabaikan tanda berhenti, saya menjadi bersemangat.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7402_meriah, 'Meriah', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7402_meriah, 'Membangkitkan Seseorang', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7402_meriah, 'ふんき', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7402_meriah, '彼女の一言が、彼を奮起させ、受験勉強をさせた。', 'Satu kata darinya membangkitkan semangatnya untuk belajar menghadapi ujian.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7403_restoran, 'Restoran', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7403_restoran, 'Restoran Tradisional Jepang', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7403_restoran, 'Losmen', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7403_restoran, 'Paviliun', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7403_restoran, 'Rumah Teh', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7403_restoran, 'てい', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7403_restoran, '多くの人が、コウイチは最初のレストランを「トーフグ亭」と名付けるのではないかと踏んでいる。', 'Banyak orang mengira Koichi akan menamai restoran pertamanya Tofugutei.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7404_untuk_diperhatikan, 'Untuk Diperhatikan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7404_untuk_diperhatikan, 'Untuk Diperhatikan', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7404_untuk_diperhatikan, 'あおぐ', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7404_untuk_diperhatikan, '色んな人から、彼の指導を仰げば間違いないと言われましたが、それは明らかに間違いでした。', 'Aku diberitahu oleh berbagai orang bahwa jika aku meminta bimbingannya, maka hal itu bisa dipercaya, tapi itu jelas sebuah kesalahan.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7405_sombong, 'Sombong', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7405_sombong, 'Berlebihan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7405_sombong, 'Terlalu Agung', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7405_sombong, 'ぎょうぎょうしい', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7405_sombong, '仰々しい言葉遣いをする人は嫌いです。', 'Saya benci orang yang menggunakan kata-kata sombong.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7406_kaget, 'Kaget', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7406_kaget, 'Terkagum-kagum', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7406_kaget, 'Ngeri', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7406_kaget, 'Ternganga keheranan', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7406_kaget, 'ぎょうてん', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7406_kaget, '私は真美がどれだけ速くベーコンを食べれるのかってことにびっくり仰天しました。', 'Saya heran betapa cepatnya Mami bisa makan bacon.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7407_keyakinan_agama, 'Keyakinan Agama', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7407_keyakinan_agama, 'しんこう', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7407_keyakinan_agama, '私はキリスト教を信仰していて、神への揺るぎない思いを持っています。', 'Saya percaya pada agama Kristen dan saya memiliki keyakinan yang teguh kepada Tuhan.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7408_ketua, 'Ketua', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7408_ketua, 'Menghitung', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7408_ketua, 'Pangeran', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7408_ketua, 'はく', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7408_ketua, 'フグの爵位を伯爵にして、フグ伯って呼ぶことにするのはどうかな。', 'Bagaimana kalau memberi Fugu gelar earl, dan memanggilnya Count Fugu?');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7409_tante, 'Tante', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7409_tante, 'おば', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7409_tante, '伯母はどうして私達の結婚式に来ようとしなかったんだろう。', 'Saya bertanya-tanya mengapa bibi saya tidak datang ke upacara pernikahan kami.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7410_kadang_kadang, 'Kadang-kadang', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7410_kadang_kadang, 'Sesekali', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7410_kadang_kadang, 'たまに', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7410_kadang_kadang, '偶にぎっくり腰になるんですよね。', 'Aku menegangkan punggungku sesekali.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7411_kebetulan, 'Kebetulan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7411_kebetulan, 'Mendadak', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7411_kebetulan, 'Kebetulan', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7411_kebetulan, 'ぐうぜん', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7411_kebetulan, '偶然の一致に思わず笑ってしまった。', 'Aku hanya bisa tertawa melihat kebetulan itu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7411_kebetulan, '偶然なショットだけど、いい写真が撮れた。', 'Itu adalah bidikan yang tidak disengaja, tapi ternyata fotonya bagus.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7411_kebetulan, '空港で偶然、高校時代の友人に会ったんですよ。', 'Saya tiba-tiba bertemu dengan seorang teman sekolah menengah di bandara.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7412_pasangan, 'Pasangan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7412_pasangan, 'Mitra', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7412_pasangan, 'はいぐうしゃ', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7412_pasangan, '新しい配偶者を探そうかとずっと考えているんです。', 'Saya sedang berpikir untuk mencari pasangan baru.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7413_yodogawa, 'Yodogawa', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7413_yodogawa, 'よどがわ', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7413_yodogawa, '汚い水にも怯まず、彼女は淀川で泳いだ。', 'Air kotor tidak menghentikannya berenang di Yodogawa.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7414_makam_kuno, 'Makam Kuno', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7414_makam_kuno, 'Kofun', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7414_makam_kuno, 'こふん', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7414_makam_kuno, '近年その古墳を訪れる人が増えています。', 'Jumlah orang yang mengunjungi makam kuno tersebut meningkat dalam beberapa tahun terakhir.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7414_makam_kuno, 'このカフェでは、古墳の形をしたケーキが食べれます。', 'Di kafe ini, Anda bisa menyantap kue-kue berbentuk makam kuno.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7414_makam_kuno, '古川君は、古墳マニアなんですよ。', 'Furukawa-kun adalah penggila makam kuno.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7414_makam_kuno, '古墳時代は、三世紀末頃から七世紀頃までの時代を言います。', 'Periode Kofun mengacu pada periode sekitar akhir abad ke-3 hingga abad ke-7.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7415_kuburan, 'Kuburan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7415_kuburan, 'Makam', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7415_kuburan, 'ふんぼ', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7415_kuburan, 'ツタンカーメンの墳墓は絶対に訪れた方がいいよ。', 'Anda pasti harus mengunjungi makam Tutankhamen.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7416_agung, 'Agung', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7416_agung, 'Agung', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7416_agung, 'Epik', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7416_agung, 'そうだい', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7416_agung, 'なんて壮大な曲なんだ。凄く感動しています。', 'Ini adalah lagu yang luar biasa. Saya sangat terkesan.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7417_perdana_kehidupan, 'Perdana Kehidupan', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7417_perdana_kehidupan, 'そうねん', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7417_perdana_kehidupan, '彼のお兄さんは壮年期に心臓発作を起こして亡くなりました。', 'Kakak laki-lakinya mengalami serangan jantung dan meninggal dunia di usia puncaknya.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7418_pengiriman, 'Pengiriman', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7418_pengiriman, 'Selamat tinggal', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7418_pengiriman, 'そうこう', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7418_pengiriman, '彼のために金曜日壮行会を予定してるんですが、ご都合は如何ですか？', 'Kami merencanakan pesta perpisahan untuknya pada hari Jumat. Apakah Anda bersedia?');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7419_penghitung_untuk_bundel, 'Penghitung Untuk Bundel', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7419_penghitung_untuk_bundel, 'Penghitung untuk Tandan', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7419_penghitung_untuk_bundel, 'わ', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7419_penghitung_untuk_bundel, 'わっ！ほうれん草一把で九十八円だって。', 'Wow! Seikat bayam hanya sembilan puluh delapan yen!');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7420_mencengkeram, 'Mencengkeram', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7420_mencengkeram, 'Memahami', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7420_mencengkeram, 'はあく', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7420_mencengkeram, '正直、まだ事態の把握すら出来ていない状況です。', 'Sejujurnya, saya bahkan belum bisa memahami situasi secara keseluruhan.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7421_mengangkut, 'Mengangkut', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7421_mengangkut, 'Pengangkutan', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7421_mengangkut, 'うんぱん', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7421_mengangkut, 'このレストランには、食事やその他の細々したものを運搬するためのミニエレベータがあります。', 'Terdapat lift mini yang digunakan untuk mengangkut makanan dan barang kecil lainnya di restoran ini.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7422_angkutan, 'Angkutan', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7422_angkutan, 'はんそう', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7422_angkutan, '搬送作業時に左肩を脱臼してしまいました。', 'Bahu kiri saya terkilir saat melakukan pekerjaan pengangkutan.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7423_melaksanakan, 'Melaksanakan', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7423_melaksanakan, 'はんしゅつ', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7423_melaksanakan, '日曜の夜七時までに全ての作品を搬出する必要があります。', 'Pada jam 7 malam pada hari Minggu, kami harus mengeluarkan semua benda kerja kami.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7426_gua, 'Gua', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7426_gua, 'Sarang', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7426_gua, 'ほら', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7426_gua, 'その薄気味悪い洞は、村の北外れにひっそりとたたずんでいました。', 'Gua menakutkan itu berdiri diam di pinggiran utara desa.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7427_kosong, 'Kosong', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7427_kosong, 'Rongga', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7427_kosong, 'Gua', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7427_kosong, 'くうどう', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7427_kosong, '白熊が木の空洞の中でうたた寝をしていると、近くに木こりがやって来ました。', 'Seekor beruang kutub sedang tertidur di lubang pohon dan seorang penebang pohon segera datang.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7428_gua, 'Gua', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7428_gua, 'Sarang', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7428_gua, 'どうけつ', true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7428_gua, 'ほらあな', false);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7428_gua, 'その洞穴でつまずいて、足首を捻挫しました。', 'Saya tersandung di dalam gua dan pergelangan kaki saya terkilir.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7429_seumur_hidup_seseorang, 'Seumur Hidup Seseorang', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7429_seumur_hidup_seseorang, 'Karier Seseorang', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7429_seumur_hidup_seseorang, 'しょうがい', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7429_seumur_hidup_seseorang, '生涯ずっと独身なんて嫌だよう。', 'Saya tidak ingin tetap melajang sepanjang hidup saya.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7430_karantina, 'Karantina', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7430_karantina, 'けんえき', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7430_karantina, 'オーストラリアの検疫法はすっごく厳しいから、食べ物は何も持って行かない方が身のためだよ。', 'Undang-undang karantina Australia sangat ketat, jadi Anda tidak boleh membawa makanan apa pun ke sana.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7431_kekebalan, 'Kekebalan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7431_kekebalan, 'Imunisasi', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7431_kekebalan, 'めんえき', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7431_kekebalan, 'いつも微熱とひどい頭痛があるのでお医者さんに行ったら、免疫機能が弱ってきていると言われました。', 'Saya pergi ke dokter karena saya selalu mengalami demam ringan dan sakit kepala yang parah, dan saya diberitahu bahwa sistem kekebalan tubuh saya melemah.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7432_penyakit_menular, 'Penyakit Menular', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7432_penyakit_menular, 'Wabah', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7432_penyakit_menular, 'Epidemi', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7432_penyakit_menular, 'えきびょう', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7432_penyakit_menular, 'その村の人々は、全員疫病で亡くなりました。', 'Semua orang di desa itu meninggal karena wabah tersebut.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7436_untuk_mengancam, 'Untuk Mengancam', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7436_untuk_mengancam, 'おどす', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7436_untuk_mengancam, 'その教師は何名かの男子生徒を刃物で脅したとして解雇されました。', 'Guru itu dipecat karena mengancam beberapa siswa laki-laki dengan pisau.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7437_kelaparan, 'Kelaparan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7437_kelaparan, 'Kelaparan', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7437_kelaparan, 'うえ', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7437_kelaparan, '飢えに苦しむ子どもたちの写真を見る度に胸が痛みます。', 'Hatiku sakit setiap kali aku melihat foto anak-anak kelaparan itu.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7438_untuk_menghabiskan_sesuatu, 'Untuk Menghabiskan Sesuatu', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7438_untuk_menghabiskan_sesuatu, 'Untuk Mengabdikan Diri Sendiri', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7438_untuk_menghabiskan_sesuatu, 'Untuk Melakukan Sepenuhnya', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7438_untuk_menghabiskan_sesuatu, 'つくす', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7438_untuk_menghabiskan_sesuatu, '彼は誰かに尽くすことに幸せを感じるタイプだ。', 'Dia adalah tipe orang yang menemukan kebahagiaan dalam mengabdikan dirinya kepada orang lain.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7438_untuk_menghabiskan_sesuatu, '「これ、明日までにできるかな？」「わかりました。最善を尽くします。」', '"Bisakah kamu melakukan ini besok?" "Begitu, aku akan memberikan yang terbaik."');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7438_untuk_menghabiskan_sesuatu, '食料の備蓄を食べ尽くしてしまった。', 'Kami menghabiskan semua persediaan makanan darurat.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7438_untuk_menghabiskan_sesuatu, 'ビエトはヤクザ界のことを知り尽くしている。', 'Viet tahu segalanya tentang dunia yakuza.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7439_warna, 'Warna', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7439_warna, 'Skema Warna', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7439_warna, 'Rias', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7439_warna, 'いろどり', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7439_warna, '父の弁当は、彩りについて全く考慮がされておらず、全部茶色だったので嫌でしたね。', 'Saya tidak suka bento ayah saya karena dia tidak pernah memperhitungkan warnanya dan semuanya berwarna coklat.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7440_menyesal, 'Menyesal', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7440_menyesal, 'Untuk berduka', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7440_menyesal, 'Untuk meratap', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7440_menyesal, 'くやむ', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7440_menyesal, 'ガンガン響く頭と共に目を覚ます度に、前日の夜飲み過ぎたことを悔やみます。', 'Setiap kali saya bangun dengan sakit kepala yang berdebar-debar, saya mengeluh karena minum terlalu banyak pada malam sebelumnya.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7441_baku_hantam, 'Baku hantam', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7441_baku_hantam, 'Pertarungan Tinju', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7441_baku_hantam, 'なぐりあい', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7441_baku_hantam, '俺の連れは今クラブで殴り合いの喧嘩の真っ最中さ。', 'Laki-laki saya sedang berkelahi di klub.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7442_serangan, 'Serangan', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7442_serangan, 'なぐりこみ', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7442_serangan, '殴り込みの前に早めの昼食を取りました。', 'Kami makan siang lebih awal sebelum penggerebekan.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7444_untuk_mencapai, 'Untuk Mencapai', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7444_untuk_mencapai, 'Untuk Mencapai', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7444_untuk_mencapai, 'Untuk Melaksanakan', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7444_untuk_mencapai, 'とげる', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7444_untuk_mencapai, '諦めないで！やり遂げるんだ！お前なら出来るよ！', 'Jangan menyerah! Selesaikan itu! Kamu bisa!');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7445_kain_rami, 'Kain Rami', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7445_kain_rami, 'Linen', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7445_kain_rami, 'あさぬの', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7445_kain_rami, '麻布の服が好きなんだけど、結構お値段が高いんだよね。', 'Saya suka pakaian yang terbuat dari kain rami, tapi harganya agak mahal.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7450_suasana_hati_yang_suram, 'Suasana hati yang suram', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7450_suasana_hati_yang_suram, 'Merasa Terpuruk', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7450_suasana_hati_yang_suram, 'Kesuraman', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7450_suasana_hati_yang_suram, 'うっき', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7450_suasana_hati_yang_suram, '伯父は、鬱気で家でふさぎ込んでいる。', 'Pamanku pulang dengan perasaan melankolis.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7450_suasana_hati_yang_suram, '鬱気を吹き飛ばしてくれるような歌ですね。', 'Lagu ini benar-benar mampu menghilangkan kesuraman.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7450_suasana_hati_yang_suram, '今日は鬱気が邪魔をして、日本語を勉強する気になれません。', 'Depresiku menggangguku hari ini dan aku tidak bisa belajar bahasa Jepang.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7613_paman, 'Paman', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7613_paman, 'おじ', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7613_paman, '伯父は銀行員です。', 'Paman saya adalah seorang bankir.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7727_kepolosan, 'Kepolosan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7727_kepolosan, 'Pikiran Sederhana', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7727_kepolosan, 'Tidak bersalah', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7727_kepolosan, 'Berpikiran Sederhana', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7727_kepolosan, 'Naif', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7727_kepolosan, 'むじゃき', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7727_kepolosan, '子供達は無邪気に笑い合っていた。', 'Anak-anak tertawa polos.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8950_untuk_direbus, 'Untuk Direbus', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8950_untuk_direbus, 'Untuk Dimasak', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8950_untuk_direbus, 'にえる', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8950_untuk_direbus, '豆、ちゃんと煮えてる？', 'Apakah kacangnya dimasak dengan baik?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8950_untuk_direbus, 'さて、そろそろジャガ芋が煮えるころだ。', 'Nah, sudah waktunya kentangnya matang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8950_untuk_direbus, '鍋の中には怪しげなスープがグツグツと煮えていた。', 'Ada sup misterius yang berdeguk dan mendidih di dalam panci.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9464_pot, 'Pot', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9464_pot, 'Stoples', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_9464_pot, 'つぼ', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9464_pot, 'とても古そうな壺ですね。', 'Guci itu terlihat sangat tua.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9464_pot, '割れやすいから、壺には触らないでください。', 'Pancinya rapuh, jadi tolong jangan menyentuhnya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9464_pot, '壺のふたをそっと開けてみたら、中は空っぽだった。', 'Ketika saya membuka tutup toples dengan hati-hati, ternyata isinya kosong.');

  -- 4. PREREQUISITES
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2084_puncak, id FROM items WHERE character = '山' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2084_puncak, id FROM items WHERE character = '夆' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2085_mahir, id FROM items WHERE character = '工' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2085_mahir, id FROM items WHERE character = '一' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2085_mahir, id FROM items WHERE character = '勹' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2086_jahat, id FROM items WHERE character = '牙' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2086_jahat, id FROM items WHERE character = '阝' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2087_berat, id FROM items WHERE character = '馬' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2087_berat, id FROM items WHERE character = '太' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2088_cina, id FROM items WHERE character = '广' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2088_cina, id FROM items WHERE character = '丨' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2088_cina, id FROM items WHERE character = 'ヨ' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2088_cina, id FROM items WHERE character = '口' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2089_pengadilan, id FROM items WHERE character = '廴' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2089_pengadilan, id FROM items WHERE character = '王' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2090_kesuraman, id FROM items WHERE character = '木' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2090_kesuraman, id FROM items WHERE character = '缶' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_2090_kesuraman, r_8797_psikopat);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2091_buaya, id FROM items WHERE character = '魚' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2091_buaya, id FROM items WHERE character = '口' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2091_buaya, id FROM items WHERE character = '二' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2091_buaya, id FROM items WHERE character = '勹' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2092_kepiting, id FROM items WHERE character = '角' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2092_kepiting, id FROM items WHERE character = '刀' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2092_kepiting, id FROM items WHERE character = '牛' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2092_kepiting, id FROM items WHERE character = '虫' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2093_buku_catatan, id FROM items WHERE character = '竹' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2093_buku_catatan, id FROM items WHERE character = '氵' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2093_buku_catatan, id FROM items WHERE character = '丶' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2093_buku_catatan, id FROM items WHERE character = '専' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2094_jernih, id FROM items WHERE character = '章' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2094_jernih, id FROM items WHERE character = '彡' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2095_komik, id FROM items WHERE character = '氵' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2095_komik, id FROM items WHERE character = '日' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2095_komik, id FROM items WHERE character = '罒' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2095_komik, id FROM items WHERE character = '又' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2096_merevisi, id FROM items WHERE character = '言' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2096_merevisi, id FROM items WHERE character = '丁' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2097_berkonsultasi, id FROM items WHERE character = '言' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2097_berkonsultasi, id FROM items WHERE character = '次' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2097_berkonsultasi, id FROM items WHERE character = '口' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2098_prasasti, id FROM items WHERE character = '金' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_2098_prasasti, r_409_nama);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2099_bendungan, id FROM items WHERE character = '土' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2099_bendungan, id FROM items WHERE character = '匚' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2099_bendungan, id FROM items WHERE character = '日' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2099_bendungan, id FROM items WHERE character = '女' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2100_tanggul, id FROM items WHERE character = '土' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2100_tanggul, id FROM items WHERE character = '日' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2100_tanggul, id FROM items WHERE character = '疋' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2101_melayang, id FROM items WHERE character = '氵' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2101_melayang, id FROM items WHERE character = '覀' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2101_melayang, id FROM items WHERE character = '示' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2102_membalik, id FROM items WHERE character = '番' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2102_membalik, id FROM items WHERE character = '羽' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2103_kebiasaan, id FROM items WHERE character = '車' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2103_kebiasaan, id FROM items WHERE character = '九' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2104_permaisuri, id FROM items WHERE character = '厂' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2104_permaisuri, id FROM items WHERE character = '一' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2104_permaisuri, id FROM items WHERE character = '口' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2105_diaduk, id FROM items WHERE character = '大' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2105_diaduk, id FROM items WHERE character = '隹' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2105_diaduk, id FROM items WHERE character = '田' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2106_restoran, id FROM items WHERE character = '亭' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2107_cari_ke_atas, id FROM items WHERE character = 'ｲ' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2107_cari_ke_atas, id FROM items WHERE character = '卬' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2108_ketua, id FROM items WHERE character = 'ｲ' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2108_ketua, id FROM items WHERE character = '白' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2109_secara_tidak_sengaja, id FROM items WHERE character = 'ｲ' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_2109_secara_tidak_sengaja, r_410_terpecah);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2110_eddy, id FROM items WHERE character = '氵' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2110_eddy, id FROM items WHERE character = '宀' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2110_eddy, id FROM items WHERE character = '疋' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2111_makam, id FROM items WHERE character = '土' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2111_makam, id FROM items WHERE character = '十' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2111_makam, id FROM items WHERE character = '艹' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2111_makam, id FROM items WHERE character = '貝' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2112_kokoh, id FROM items WHERE character = '丬' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2112_kokoh, id FROM items WHERE character = '士' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2113_bundel, id FROM items WHERE character = '扌' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2113_bundel, id FROM items WHERE character = '巴' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2114_mengangkut, id FROM items WHERE character = '扌' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2114_mengangkut, id FROM items WHERE character = '舟' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2114_mengangkut, id FROM items WHERE character = '殳' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2116_gua, id FROM items WHERE character = '氵' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2116_gua, id FROM items WHERE character = '同' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2117_horison, id FROM items WHERE character = '氵' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2117_horison, id FROM items WHERE character = '厂' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2117_horison, id FROM items WHERE character = '土' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2118_epidemi, id FROM items WHERE character = '疒' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2118_epidemi, id FROM items WHERE character = '殳' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_9450_pot, id FROM items WHERE character = '士' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_9450_pot, id FROM items WHERE character = '亜' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_4085_pemberitahuan_publik, id FROM items WHERE character = '公' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_4085_pemberitahuan_publik, id FROM items WHERE character = '告' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_4611_irama, id FROM items WHERE character = '律' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_4611_irama, id FROM items WHERE character = '動' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_4974_untuk_menyisihkan, id FROM items WHERE character = '貯' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_5346_barang_curian, id FROM items WHERE character = '盗' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_5346_barang_curian, id FROM items WHERE character = '品' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_6994_hadiah_akhir_tahun, id FROM items WHERE character = '歳' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_6994_hadiah_akhir_tahun, id FROM items WHERE character = '暮' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7192_menunggang_kuda, id FROM items WHERE character = '騎' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7192_menunggang_kuda, id FROM items WHERE character = '馬' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7194_kavaleri, id FROM items WHERE character = '騎' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7194_kavaleri, id FROM items WHERE character = '兵' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7334_ladang_murbei, id FROM items WHERE character = '桑' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7334_ladang_murbei, id FROM items WHERE character = '原' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7356_puteri_mahkota, id FROM items WHERE character = '皇' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7356_puteri_mahkota, id FROM items WHERE character = '太' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7356_puteri_mahkota, id FROM items WHERE character = '子' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7356_puteri_mahkota, id FROM items WHERE character = '妃' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7358_meleleh, id FROM items WHERE character = '溶' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7359_licik, id FROM items WHERE character = '悪' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7359_licik, id FROM items WHERE character = '賢' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7360_cahaya, id FROM items WHERE character = '輝' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7361_kepiting, k_2092_kepiting);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7362_buaya, k_2091_buaya);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7363_muram, k_2090_kesuraman);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7363_muram, id FROM items WHERE character = '陶' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7364_puncak, k_2084_puncak);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7365_pegunungan, id FROM items WHERE character = '連' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7365_pegunungan, k_2084_puncak);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7366_mahir, k_2085_mahir);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7367_cerdik, k_2085_mahir);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7367_cerdik, id FROM items WHERE character = '妙' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7368_dingin, id FROM items WHERE character = '風' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7368_dingin, k_2086_jahat);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7369_halangan, k_2086_jahat);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7369_halangan, id FROM items WHERE character = '魔' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7370_jahat, k_2086_jahat);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7371_dapatkan, id FROM items WHERE character = '下' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7371_dapatkan, k_2087_berat);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7372_tidak_bagus, k_2087_berat);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7372_tidak_bagus, id FROM items WHERE character = '目' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7373_kegagalan, id FROM items WHERE character = '無' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7373_kegagalan, k_2087_berat);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7374_mendadak, k_2088_cina);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7374_mendadak, id FROM items WHERE character = '突' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7375_pengadilan, id FROM items WHERE character = '法' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7375_pengadilan, k_2089_pengadilan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7376_pengadilan_kekaisaran, id FROM items WHERE character = '宮' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7376_pengadilan_kekaisaran, k_2089_pengadilan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7377_daftar_nama, id FROM items WHERE character = '名' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7377_daftar_nama, k_2093_buku_catatan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7378_buku_rekening, id FROM items WHERE character = '帳' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7378_buku_rekening, k_2093_buku_catatan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7379_pengakuan_publik, id FROM items WHERE character = '表' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7379_pengakuan_publik, k_2094_jernih);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7380_manga, k_2095_komik);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7380_manga, id FROM items WHERE character = '画' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7381_dialog_komik, k_2095_komik);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7381_dialog_komik, id FROM items WHERE character = '才' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7382_koreksi, k_2096_merevisi);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7382_koreksi, id FROM items WHERE character = '正' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7383_edisi_revisi, id FROM items WHERE character = '改' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7383_edisi_revisi, k_2096_merevisi);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7383_edisi_revisi, id FROM items WHERE character = '版' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7384_konsultasi, k_2097_berkonsultasi);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7384_konsultasi, id FROM items WHERE character = '問' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7385_untuk_berkonsultasi_dengan, k_2097_berkonsultasi);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7386_kesan_mendalam, id FROM items WHERE character = '感' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7386_kesan_mendalam, k_2098_prasasti);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7387_merek, k_2098_prasasti);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7387_merek, id FROM items WHERE character = '柄' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7388_setiap, k_2098_prasasti);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7388_setiap, id FROM items WHERE character = '々' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7389_bendungan, k_2099_bendungan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7390_tanggul, k_2100_tanggul);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7391_tanggul, k_2100_tanggul);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7391_tanggul, id FROM items WHERE character = '防' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7392_melayang, k_2101_melayang);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7393_melayang, k_2101_melayang);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7393_melayang, id FROM items WHERE character = '流' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7394_melayang_ke_darat, k_2101_melayang);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7394_melayang_ke_darat, id FROM items WHERE character = '着' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7395_ubah_pikiran_seseorang, k_2102_membalik);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7395_ubah_pikiran_seseorang, id FROM items WHERE character = '意' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7396_terjemahan, k_2102_membalik);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7396_terjemahan, id FROM items WHERE character = '訳' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7397_untuk_mengepul, k_2102_membalik);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7398_melacak, k_2103_kebiasaan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7398_melacak, id FROM items WHERE character = '跡' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7399_orbit, k_2103_kebiasaan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7399_orbit, id FROM items WHERE character = '道' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7400_permaisuri_jepang, id FROM items WHERE character = '皇' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7400_permaisuri_jepang, k_2104_permaisuri);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7401_kegembiraan, id FROM items WHERE character = '興' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7401_kegembiraan, k_2105_diaduk);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7402_meriah, k_2105_diaduk);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7402_meriah, id FROM items WHERE character = '起' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7403_restoran, k_2106_restoran);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7404_untuk_diperhatikan, k_2107_cari_ke_atas);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7405_sombong, k_2107_cari_ke_atas);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7405_sombong, id FROM items WHERE character = '々' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7406_kaget, k_2107_cari_ke_atas);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7406_kaget, id FROM items WHERE character = '天' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7407_keyakinan_agama, id FROM items WHERE character = '信' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7407_keyakinan_agama, k_2107_cari_ke_atas);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7408_ketua, k_2108_ketua);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7409_tante, k_2108_ketua);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7409_tante, id FROM items WHERE character = '母' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7410_kadang_kadang, k_2109_secara_tidak_sengaja);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7411_kebetulan, k_2109_secara_tidak_sengaja);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7411_kebetulan, id FROM items WHERE character = '然' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7412_pasangan, id FROM items WHERE character = '配' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7412_pasangan, k_2109_secara_tidak_sengaja);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7412_pasangan, id FROM items WHERE character = '者' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7413_yodogawa, k_2110_eddy);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7413_yodogawa, id FROM items WHERE character = '川' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7414_makam_kuno, id FROM items WHERE character = '古' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7414_makam_kuno, k_2111_makam);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7415_kuburan, k_2111_makam);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7415_kuburan, id FROM items WHERE character = '墓' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7416_agung, k_2112_kokoh);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7416_agung, id FROM items WHERE character = '大' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7417_perdana_kehidupan, k_2112_kokoh);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7417_perdana_kehidupan, id FROM items WHERE character = '年' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7418_pengiriman, k_2112_kokoh);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7418_pengiriman, id FROM items WHERE character = '行' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7419_penghitung_untuk_bundel, k_2113_bundel);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7420_mencengkeram, k_2113_bundel);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7420_mencengkeram, id FROM items WHERE character = '握' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7421_mengangkut, id FROM items WHERE character = '運' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7421_mengangkut, k_2114_mengangkut);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7422_angkutan, k_2114_mengangkut);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7422_angkutan, id FROM items WHERE character = '送' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7423_melaksanakan, k_2114_mengangkut);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7423_melaksanakan, id FROM items WHERE character = '出' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7426_gua, k_2116_gua);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7427_kosong, id FROM items WHERE character = '空' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7427_kosong, k_2116_gua);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7428_gua, k_2116_gua);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7428_gua, id FROM items WHERE character = '穴' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7429_seumur_hidup_seseorang, id FROM items WHERE character = '生' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7429_seumur_hidup_seseorang, k_2117_horison);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7430_karantina, id FROM items WHERE character = '検' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7430_karantina, k_2118_epidemi);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7431_kekebalan, id FROM items WHERE character = '免' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7431_kekebalan, k_2118_epidemi);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7432_penyakit_menular, k_2118_epidemi);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7432_penyakit_menular, id FROM items WHERE character = '病' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7436_untuk_mengancam, id FROM items WHERE character = '脅' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7437_kelaparan, id FROM items WHERE character = '飢' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7438_untuk_menghabiskan_sesuatu, id FROM items WHERE character = '尽' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7439_warna, id FROM items WHERE character = '彩' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7440_menyesal, id FROM items WHERE character = '悔' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7441_baku_hantam, id FROM items WHERE character = '殴' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7441_baku_hantam, id FROM items WHERE character = '合' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7442_serangan, id FROM items WHERE character = '殴' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7442_serangan, id FROM items WHERE character = '込' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7444_untuk_mencapai, id FROM items WHERE character = '遂' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7445_kain_rami, id FROM items WHERE character = '麻' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7445_kain_rami, id FROM items WHERE character = '布' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7450_suasana_hati_yang_suram, k_2090_kesuraman);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7450_suasana_hati_yang_suram, id FROM items WHERE character = '気' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7613_paman, k_2108_ketua);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7613_paman, id FROM items WHERE character = '父' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7727_kepolosan, id FROM items WHERE character = '無' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7727_kepolosan, k_2086_jahat);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7727_kepolosan, id FROM items WHERE character = '気' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8950_untuk_direbus, id FROM items WHERE character = '煮' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_9464_pot, k_9450_pot);

END $$;