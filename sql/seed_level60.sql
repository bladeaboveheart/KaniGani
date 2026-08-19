-- ====================================================
-- KaniGani — Seed Data Level 60 (v2, relasional)
-- Auto-generated with Indonesian Slugs
-- ====================================================

DO $$
DECLARE
  -- ============ KANJI IDs (Level 60) ============
  k_1971_rumah_bangsawan UUID; k_2347_artikel UUID; k_2398_riak UUID; k_2435_mati UUID; k_2436_bersembunyi UUID; k_2437_janda UUID; k_2438_diare UUID; k_2439_lubang UUID; k_2440_nila UUID; k_2441_pantai UUID; k_2442_lagu_shamisen UUID; k_2443_menyiksa UUID; k_2444_lembah UUID; k_2445_tawar_menawar UUID; k_2446_rendah_hati UUID; k_2448_jelek UUID; k_2449_jaringan UUID; k_2450_martir UUID; k_2451_mengganggu UUID; k_2452_mengecam UUID; k_2453_dermaga UUID; k_2454_pengantin_pria UUID; k_2455_merindukan UUID; k_2456_berhenti UUID; k_2457_benar UUID; k_2458_yakin UUID; k_2460_mengeluarkan UUID; k_2461_perlahan_lahan UUID; k_2462_rumput_laut UUID; k_2463_ceroboh UUID; k_2464_barbar UUID; k_2465_hemat UUID; k_9012_neraka UUID;
  -- ============ VOCABULARY IDs (Level 60) ============
  v_2734_permisi UUID; v_7040_rumah_bangsawan UUID; v_7242_kepala UUID; v_8378_anggaran_dasar UUID; v_8379_perjanjian UUID; v_8579_untuk_mencemooh UUID; v_8594_penghematan UUID; v_8595_anatomi UUID; v_8596_pelengseran UUID; v_8597_bersembunyi UUID; v_8598_anonimitas UUID; v_8599_jaringan UUID; v_8600_persegi UUID; v_8601_lagu UUID; v_8602_bernyanyi UUID; v_8603_lagu_shamisen_panjang UUID; v_8606_terowongan UUID; v_8607_khayalan UUID; v_8608_suami UUID; v_8609_mempelai UUID; v_8610_menantu UUID; v_8611_janda UUID; v_8612_diam UUID; v_8613_perahu_layar UUID; v_8614_tiang_kapal UUID; v_8615_harga_rendah UUID; v_8616_orkestra UUID; v_8617_kerinduan UUID; v_8618_untuk_memuja UUID; v_8619_emosi_yang_mendalam UUID; v_8620_sangat_mengharukan UUID; v_8621_menggoda UUID; v_8622_mainkan_rayuan UUID; v_8623_menyiksa UUID; v_8624_yakin UUID; v_8625_dermaga UUID; v_8626_mati_di_pos_seseorang UUID; v_8627_puntung_rokok UUID; v_8628_sekresi UUID; v_8629_organ_kencing UUID; v_8630_lembah UUID; v_8631_aliran_gunung UUID; v_8634_akhirnya UUID; v_8635_menjadi_berlumpur UUID; v_8636_bising UUID; v_8637_kompleks UUID; v_8638_sibuk UUID; v_8639_tepi_danau UUID; v_8640_diare UUID; v_8641_disentri UUID; v_8642_koreksi UUID; v_8643_sulfur UUID; v_8644_pemecatan UUID; v_8645_nila UUID; v_8646_rumput_laut UUID; v_8647_rumput_laut UUID; v_8648_liar UUID; v_8649_orang_barbar_selatan UUID; v_8650_barbarisme UUID; v_8651_selamat_tahun_baru UUID; v_8652_tanpa_henti UUID; v_8653_kematian UUID; v_8654_jelek UUID; v_8655_jelek UUID; v_8656_pemandangan_memalukan UUID; v_8657_skandal UUID; v_8853_busur UUID; v_8901_pemimpin UUID; v_9013_pluto UUID; v_9014_neraka UUID; v_9015_alam_orang_mati UUID; v_9116_untuk_minum_bersama UUID; v_9117_untuk_menulis UUID; v_9121_seseorang_atau_lainnya UUID; v_9122_negara_tertentu UUID; v_9123_tempat_tertentu UUID; v_9124_orang_tertentu UUID; v_9334_menyewa UUID;

BEGIN

  DELETE FROM items WHERE level = 60;

  -- 1. RADICALS

  -- 2. KANJIS
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '庄', 'rumah-bangsawan', 60, 1, 'Anda memasang <radical>kanopi</radikal> di atas sepetak <radikal>tanah</radikal> karena Anda sedang menyiapkan <kanji>rumah</kanji> di sini — Anda tahu, <kanji>perkebunan</kanji> pedesaan yang besar, mungkin dengan budak dan sebagainya.', 'Pendirian <kanji>rumah</kanji> Anda telah disetujui oleh <reading>sho</reading>gun (しょう) sendiri. Shogun menguasai seluruh wilayah di negeri ini, jadi Anda tidak bisa mendirikan <kanji>harta</kanji> pribadi tanpa restunya.')
    RETURNING id INTO k_1971_rumah_bangsawan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '款', 'artikel', 60, 2, '"Bagi <radikal>samurai</radikal>, itu adalah <radikal>jackhammer</radikal> yang <radikal>kurang</radikal>." Itulah <kanji>artikel</kanji> terbaru tentang hukum yang ditulis tentang samurai, ratusan tahun setelah katana dirampas. Artikel ini ditulis dengan <kanji>ketulusan</kanji> yang besar oleh pemerintah.', 'Orang yang menulis <kanji>artikel</kanji> ini dengan <kanji>ketulusan</kanji> adalah Jenghis <reading>Khan</reading> (かん).')
    RETURNING id INTO k_2347_artikel;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '漣', 'riak', 60, 3, 'Saat <radical>tsunami</radical> menghantam <radical>skuter</radical> dan <radical>mobil</radical> Anda, gelombang tersebut akan berubah, sehingga menciptakan <kanji>riak</kanji>.', '<kanji>Riak</kanji> yang terlepas dari skuter dan mobil Anda saat terkena tsunami. Lebih penting lagi, benda-benda itu adalah <read>ren</reading>tal (れん), jadi riak atau tidak, tidak masalah jika terkena tsunami.')
    RETURNING id INTO k_2398_riak;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '逝', 'mati', 60, 4, 'Jika Anda mengendarai <radical>skuter</radical> dengan <radical>jari</radical> memutar <radical>kapak</radikal> Anda akan <kanji>mati</kanji>. Maksudku, mungkin. Ada kemungkinan 99% Anda akan mati.', 'Anda tergelincir. Kapak itu bertabrakan dengan wajahmu. Kamu <kanji>mati</kanji>. Tapi... tunggu! Ada cahaya biru terang dan tiba-tiba Anda tidak mati. Kamu menyaksikan dalam gerak lambat saat <reading>sa</reading>ber (せい) biru sucimu menghidupkanmu kembali dan menerima pukulan dari kapak.

Tunggu, tidak!

Itu hancur.')
    RETURNING id INTO k_2435_mati;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '匿', 'bersembunyi', 60, 5, '<radical>kandang</radikal> ini penuh dengan <radical>bunga</radikal> di sisi <radikal>kanan</radikal> untuk <kanji>menyembunyikan</kanji> fakta bahwa Anda juga ada di sini.', 'Saat Anda <kanji>menyembunyikan</kanji> hantu <reading>Toku</reading>gawa (とく) Ieyasu muncul di hadapan Anda, di dalam sangkar! Lengannya disilangkan dan dia menggelengkan kepalanya ke arahmu. "Apakah menurutmu aku berhasil menjadi shogun pertama di Jepang dengan bersembunyi?"')
    RETURNING id INTO k_2436_bersembunyi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '寡', 'janda', 60, 6, 'Di bawah <radical>atap</radical> Anda sendiri, seekor <radical>geoduck</radical> melompat keluar dari <radical>tanah</radical> dengan <radical>pedang</radical> dan menikam suami/istri/pasangan Anda hingga mati. Sekarang kamu adalah seorang <kanji>janda</kanji>.', 'Anda mungkin seorang <kanji>janda</kanji>, tapi itu tidak membuat Anda lemah. Anda berlari keluar, melompat ke <reading>ca</reading>r (か), dan menjalankan seluruh rumah dan geoduck Anda.')
    RETURNING id INTO k_2437_janda;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '痢', 'diare', 60, 7, 'Kamu makan <radical>biji-bijian</radikal> yang membuatmu <radikal>sakit</radikal> rasanya seperti <radikal>pisau</radikal> menusuk perutmu dan semua kotoranmu berhamburan. Ini disebut <kanji>diare</kanji>. Semua orang pernah mengalami diare sebelumnya, jadi Anda seharusnya sudah mengetahui perasaan ini sekarang.', '<kanji>diare</kanji> ada di sini. Itu sedang terjadi. Dan baunya sangat menyengat sehingga Anda tidak bisa bernapas. Anda harus mengambil beberapa <read>reed</reading> (り) berongga dan memasukkannya ke hidung Anda dan keluar dari pintu kamar mandi sehingga Anda bisa mendapatkan udara segar di dalam diri Anda.')
    RETURNING id INTO k_2438_diare;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '坑', 'lubang', 60, 8, 'Di <radical>kotoran</radikal>, Anda menemukan <radikal>tutup</radikal> di bawah <radikal>tabel</radikal>. Anda mengangkatnya untuk memperlihatkan <kanji>lubang</kanji> yang dalam. Mengapa ada <kanji>lubang</kanji> di bawah meja Anda?', 'Saat kamu mencapai dasar <kanji>lubang</kanji>, kamu mendengar seseorang berlarian dan suara rantai. Anda menyalakan korek api dan mendekat untuk melihat apa itu. Dalam kegelapan, Anda melihat <read>こう</reading>いち, kelaparan dan dirantai dalam lubang di bawah meja Anda.')
    RETURNING id INTO k_2439_lubang;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '藍', 'nila', 60, 9, '<radical>Bunga</radical> yang Anda <radical>awasi</radical> selalu <kanji>indigo</kanji>. Anda tidak yakin mengapa...', 'Tunggu, mungkin bunga ini hanya <kanji>nila</kanji> karena ada yang salah dengan <baca>mata</reading> (あい) kamu! Mungkin mata Anda nila dan itulah sebabnya hanya itu yang Anda lihat!')
    RETURNING id INTO k_2440_nila;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '畔', 'pantai', 60, 10, '<radical>Setengah</radical> dari <radical>sawah</radical> selalu berada di <kanji>pantai</kanji>. Jepang dikelilingi oleh air. Jadi masuk akal jika setengah dari seluruh sawah berada tepat di tepi laut, bukan?', 'Anda memutuskan untuk berjalan di sepanjang <kanji>pantai</kanji> ini ketika Anda melihat <reading>Han</reading> (はん) Solo bersantai di pasir. Dia melambai agar Anda bergabung dengannya! Kamu bisa berbaring di pantai bersama Han!!')
    RETURNING id INTO k_2441_pantai;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '唄', 'lagu-shamisen', 60, 11, 'Gunakan <radical>mulut</radikal> Anda untuk bernyanyi dan <radikal>kerang</radikal> untuk mengelus shamisen Anda, dan Anda akan membawakan <kanji>lagu shamisen</kanji> begitu saja! Ya, semudah itu. Cari saja cangkangnya, buka mulut Anda, dan Anda akan segera menyanyikannya!', '<kanji>lagu shamisen</kanji> hanyalah sebuah <reading>歌</reading> (うた) tetapi dengan shamisen. Itu masih sebuah lagu jadi diucapkan dengan cara yang persis sama!')
    RETURNING id INTO k_2442_lagu_shamisen;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '拷', 'menyiksa', 60, 12, 'Anda memasukkan <radical>jari</radical> Anda ke dalam <radical>peti mati</radical> untuk menggelitik <radical>pengemis</radical> di dalamnya. Apa yang Anda lakukan adalah bentuk <kanji>penyiksaan</kanji> yang baru.', 'Pengemis yang akan digelitik <kanji>penyiksaan</kanji> peti matinya tidak lain adalah Kakek tua <reading>ごう</reading>いち. Dia adalah orang tua yang lemah, dan tidak suka digelitik.')
    RETURNING id INTO k_2443_menyiksa;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '渓', 'lembah', 60, 13, '<radical>tsunami</radical> menyapu salah satu <radical>cleat</radical> yang baru saja dibeli oleh <radical>suami</radical> Anda dan menciptakan seluruh <kanji>lembah</kanji> dengannya.', 'Saat airnya jernih, Anda dan suami pergi ke <kanji>lembah</kanji> untuk mencari gerigi sepatu dan malah menemukan sekumpulan <reading>ca</reading>ke (けい)! Mungkin inilah cara tsunami mengatakan, "Terima kasih telah mengizinkan saya mencuri sepatumu sehingga saya bisa membuat jalan pintas di lembah ini."')
    RETURNING id INTO k_2444_lembah;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '廉', 'tawar-menawar', 60, 14, 'Di bawah <radical>kanopi</radikal> ini adalah <radikal>Mona Lisa</radikal>, dijual dengan harga murah, <kanji>tawar-menawar</kanji> yang luar biasa!', 'Mona Lisa ini sangat <kanji>tawar-menawar</kanji> karena hanya <membaca>ren</reading>tal (れん)!')
    RETURNING id INTO k_2445_tawar_menawar;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '謹', 'rendah-hati', 60, 15, 'Anda <radical>mengatakan</radical> sesuatu kepada <radical>boot</radical> ketika Anda ingin menjadi <kanji>rendah hati</kanji>. Kamu berada di bawah sana karena kamu sedang bersujud di depan orang yang sebelumnya kamu merendahkan dirimu sendiri. Oleh karena itu, wajah Anda sangat dekat dengan sepatu botnya dan Anda berbicara langsung ke arahnya, bukan ke wajah orang tersebut, jadi lebih <kanji>bijaksana</kanji>.', 'Anda bersikap <kanji>rendah hati</kanji> seperti ini karena sepatu bot itu milik <reading>Kerabat</reading>g (きん) Inggris. Anda tidak bisa begitu saja mengatakan apa pun yang Anda inginkan setinggi mata seorang raja. Dia akan memenggal kepalamu karena kurang ajar, atau lebih buruk lagi!')
    RETURNING id INTO k_2446_rendah_hati;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '醜', 'jelek', 60, 16, 'Berikan <radical>alkohol</radical> kepada <radical>setan</radical> dan Anda akan melihat betapa <kanji>jelek</kanji> sebenarnya. Setan perlu berkonsentrasi agar penyamarannya tetap berjalan. Sekalipun ia terlihat cantik ketika Anda bertemu dengannya, seperti sangat tampan, berikan sedikit minuman dan fasadnya akan terlepas dan memperlihatkan wajah iblisnya yang sangat menjijikkan.', 'Iblis <kanji>jelek</kanji> sedang mabuk dan melepaskan <reading>sepatu</reading> (しゅう) dan mengayunkannya ke kepalanya. Dan, oh tidak, dia minum lebih banyak alkohol dari sepatunya.')
    RETURNING id INTO k_2448_jelek;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '升', 'jaringan', 60, 17, 'Anda melihat <radical>dua puluh</radical> <radical>slide</radical> berbaris seperti <kanji>kisi</kanji>. Anda tidak tahu siapa yang menaruhnya di sini, tapi hampir terlihat seperti kertas kotak tempat Anda mengerjakan PR matematika. Tapi siapa yang akan menggunakan slide sebagai kertas kotak?', 'Saat Anda menatap <kanji>kisi</kanji> slide, Anda melihat beberapa orang keluar dan mendengar mereka berbicara tentang turnamen <membaca>matematika</reading> (ます) massal yang diadakan hari ini. Oohhh itu adalah jaringan raksasa. Dan mereka akan menggunakannya untuk mengerjakan matematika nanti!')
    RETURNING id INTO k_2449_jaringan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '殉', 'martir', 60, 18, 'Masukkan anggota <radical>yakuza</radical> ke dalam <radical>penjara</radical> di <radical>matahari</radikal> dan dia akan menjadi <kanji>martir</kanji> bagi semua yakuza lain yang masih ada di bumi. Dia mati di sana sehingga yang lain tidak perlu mati. Karena mereka pasti tidak akan tertangkap sekarang, jika hukumannya adalah kematian yang membara di penjara matahari yang baru.', 'Satu-satunya alasan dia menjadi <kanji>martir</kanji> adalah karena mereka menempatkannya di sana pada bulan <reading>Juni</reading> (じゅん). Semua orang tahu matahari terlalu panas bagi manusia di bulan Juni. Ini musim panas!')
    RETURNING id INTO k_2450_martir;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '煩', 'mengganggu', 60, 19, 'Setel <radical>api</radikal> ke <radikal>geoduck</radikal> jika Anda ingin <kanji>mengganggu</kanji>. Api tidak akan membunuh geoduck, tapi pernahkah Anda terbakar? Ini tidak menyenangkan. Jadi, Anda hanya akan sangat mengganggunya.', 'Tahukah Anda siapa yang lebih menyukai geoduck yang <kanji>mengganggu</kanji> dibandingkan siapa pun di alam semesta? <read>Han</reading> (はん) Sendirian! Jika Anda menonton Star Wars cukup dekat, Anda dapat melihatnya menembak geoduck dengan blasternya dan membakarnya untuk bersenang-senang.')
    RETURNING id INTO k_2451_mengganggu;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '劾', 'mengecam', 60, 20, 'Jika Anda ingin <radikal>memotong</radikal> <radikal>kekuatan</radikal> seseorang, cukup <kanji>celaan</kanji> saja. Kemudian mereka akan ditebas di depan semua orang dan mereka akan merasa sangat malu. Ini adalah cara terbaik untuk memangkasnya tanpa benar-benar memotongnya dan ditangkap.', 'Saat kamu <kanji>mencela</kanji> dan mereka kehilangan seluruh kekuatannya, mereka hanya akan menjadi <read>orang</reading> (がい) yang lain. Seorang pria normal yang segalanya telah hilang darinya. HA HA HA!')
    RETURNING id INTO k_2452_mengecam;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '桟', 'dermaga', 60, 21, 'Anda mengambil <radical>pohon</radical> untuk membantu Anda mencapai <radical>bar</radical> di lautan, menggunakannya sebagai <kanji>jetty</kanji> yang mengarah langsung ke sana. Sekarang Anda bisa keluar dari <kanji>dermaga</kanji> darurat dan pergi minum tanpa perlu naik perahu atau basah kuyup.', 'Anda juga membuat <kanji>dermaga</kanji> ini sehingga akan lebih mudah bagi <reading>San</reading>ta-san (さん) untuk menyandarkan kereta luncurnya. Oh, kamu tidak tahu? Kereta luncurnya sekarang lebih mirip speed boat, dan dia ingin minuman menyegarkan setelah mengantarkan semua hadiah itu. Anda mendapatkan hadiah tambahan karena menjadikannya dermaga, jadi sama-sama menguntungkan.')
    RETURNING id INTO k_2453_dermaga;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '婿', 'pengantin-pria', 60, 22, 'Pernahkah Anda mendengar kisah tentang <radikal>wanita</radikal> yang jatuh cinta pada <radikal>rak mantel</radikal> saat <radikal>bulan</radikal> purnama dan menjadikannya <kanji>pengantin pria</kanji>? Itu kisah nyata! Dia bahkan mengadakan upacara pernikahan dan memiliki lebih banyak rak mantel di sisi pengantin pria. Bulan akan membuat orang melakukan hal-hal gila.', 'Karena pernikahan mereka diadakan di bawah bulan purnama, <kanji>pengantin</kanji> mengenakan <reading>mantel bulan</reading>t (むこ) khusus untuk upacara tersebut. Ini adalah mantel yang ideal untuk dikenakan oleh pengantin pria, karena mereka dapat terus memakainya sepanjang bulan madu.')
    RETURNING id INTO k_2454_pengantin_pria;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '慕', 'merindukan', 60, 23, 'Anda sedang berjalan di <radical>rumah kaca</radical> ketika Anda melihat <radical>kecil</radical> <radical>setetes</radical> air terjun dan itu membuat Anda <kanji>merindukan</kanji> orang yang Anda <kanji>puja</kanji>. Anda sudah lama tidak melihatnya. Tapi ada sesuatu tentang berada di rumah kaca ini dan melihat tetesan air kecil itu membuat hati Anda rindu.', 'Saat Anda <kanji>merindukan</kanji> orang itu dari masa lalu Anda, Anda melihat kembali ke jurang dan melihat... <reading>Bo</reading>bo (ぼ) si badut?! Ugh. Rupanya Bobo menjatuhkan setetes air kecil itu.')
    RETURNING id INTO k_2455_merindukan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '罷', 'berhenti', 60, 24, 'Anda berada dalam <radical>net</radical> namun Anda memiliki <radical>kemampuan</radical> untuk <kanji>berhenti</kanji> bermain bersama dan <kanji>keluar</kanji> kapan saja.', 'Anda tidak tahu apakah Anda ingin <kanji>berhenti</kanji> dari sandiwara ini sampai Anda merasa <read>hea</reading>t (ひ) yang tidak nyaman. Anda melihat ke bawah dan jaring tempat Anda berada digantung di atas api besar.')
    RETURNING id INTO k_2456_berhenti;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '矯', 'benar', 60, 25, 'Sebuah <radical>panah </radical>ditembakkan dari <radical>surga</radical> dan mengenai tepat di antara <radical>mulut</radical> dan <radical>kumis</radical> Anda untuk <kanji>memperbaiki</kanji> senyuman bengkok Anda. Ini juga <kanji>meluruskan</kanji> gigi Anda dan juga potongan kumis Anda yang bengkok. Siapa bilang itu terlihat bagus? Yah, itu tidak masalah. Panah surga mengoreksinya untuk Anda.', 'Panah <kanji>benar</kanji> surgawi ini sebenarnya berasal dari <reading>きょう</reading>と. Mereka benci melihat orang berkumis bengkok, jadi mereka sering menembaknya. Sepertinya mereka datang dari surga karena jatuh dari langit.')
    RETURNING id INTO k_2457_benar;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '某', 'yakin', 60, 26, 'Jika menurut Anda <radical>pohon</radical> terlihat <radical>manis</radical> Anda harus <kanji>yakin</kanji> sebelum menggigitnya. Pohon sangat keras, dan biasanya cukup pahit (percayalah) jadi jika Anda tidak ingin gigi patah, getah, dan kesedihan, Anda harus benar-benar memastikan pohon tersebut sebelum Anda mulai mengunyah.', 'Jika Anda benar-benar ingin <kanji>pasti</kanji>, dan tidak sekadar menebak, keluarkan bola <reading>busur</reading>ling (ぼう) Anda dan gulingkan sekuat tenaga ke pohon. Jika tepat maka akan mengeluarkan bau harum, jika tidak maka pohon akan meninju Anda.')
    RETURNING id INTO k_2458_yakin;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '泌', 'mengeluarkan', 60, 27, '<radical>Tsunami</radical> memiliki kecenderungan <radical>tertentu</radical> untuk <kanji>menyekresi</kanji> sesuatu saat mereka kembali ke laut. Ketika mereka menghantam daratan, mereka hanya membuang segumpal air laut ke mana-mana, tapi hanya ada hal-hal tertentu yang akan mereka keluarkan saat mereka pergi.', 'Kebanyakan <kanji>sekresi</kanji> tsunami <membaca>dia</reading>di (ひ). Dibutuhkan banyak energi agar tsunami dapat menghantam daratan sehingga air menjadi sangat panas, dan ia harus mengeluarkan panas tersebut saat kembali ke laut.')
    RETURNING id INTO k_2460_mengeluarkan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '漸', 'perlahan-lahan', 60, 28, 'Anda terjebak di dalam <radical>mobil</radical> saat terjadi <radical>tsunami</radical> dan yang harus Anda keluarkan hanyalah <radical>kapak</radical>. Anda memukul dan memukul tetapi Anda hanya <kanji>secara bertahap</kanji> membuat kemajuan. Anda mengira kapak adalah cara mudah untuk keluar dari mobil, namun ternyata tidak berhasil seperti yang Anda rencanakan! Anda harus membuat lebih dari sekedar kemajuan bertahap jika Anda tidak ingin tenggelam.', 'Saat Anda <kanji>secara bertahap</kanji> membuka pintu dengan kapak, Anda melihat ke atas dan melihat New York Yankees melayang di atas bus mereka. Anda berteriak, "<reading>YO YA</reading>NKEES (ようや) untuk menarik perhatian mereka. Mereka melihat kemajuan bertahap Anda dan mulai melempar bola ke mobil Anda untuk membantu membukanya.')
    RETURNING id INTO k_2461_perlahan_lahan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '藻', 'rumput-laut', 60, 29, '<radical>Bunga</radikal> yang terdampar di pantai saat <radikal>tsunami</radikal> yang kita buat menjadi <radikal>sirup</radikal> adalah <kanji>rumput laut</kanji>. Oke, jadi lebih mirip sup atau teh daripada sirup, tapi Anda bisa membuat keduanya dari rumput laut.', '<kanji>Rumput laut</kanji> adalah makanan <reading>sou</reading>l (そう) yang sebenarnya. Artinya itu baik untuk jiwamu. Pernahkah Anda membaca buku tentang manfaat sup ayam bagi jiwa Anda? Itu bohong. Sup miso dengan rumput laut sangat baik untuk jiwa Anda.')
    RETURNING id INTO k_2462_rumput_laut;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '妄', 'ceroboh', 60, 30, 'Jika <radikal>kematian</radikal> seorang <radikal>wanita</radikal> terjadi, itu karena dia <kanji>sembrono</kanji>. Orang tidak mati begitu saja! Mereka harus melakukan sesuatu yang sangat gila untuk menyebabkannya. Benar? Ya... benar.', 'Saat Anda menonton berita tentang wanita <kanji>sembrono</kanji> ini, Anda mengetahui bahwa dia meninggal karena <reading>memotong</reading>ing (もう) halaman rumputnya. Anda tidak yakin bagaimana caranya, tetapi sekarang Anda benar-benar yakin bahwa dia harus melakukannya dengan sangat ceroboh hingga mati saat melakukannya.')
    RETURNING id INTO k_2463_ceroboh;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '蛮', 'barbar', 60, 31, 'Jika, <radical>lagi</radical> dan lagi, Anda berperilaku seperti <radical>serangga</radikal>, Anda mungkin juga menjadi <kanji>barbar</kanji>.', '"<reading>LARANG</reading> (ばん) orang-orang barbar! Larang mereka, kataku!," dengan lantang kau menyatakan sebagai penguasa negeri ini.')
    RETURNING id INTO k_2464_barbar;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '倹', 'hemat', 60, 32, '<radical>pemimpin</radikal> <radikal>cumi-cumi</radikal> memberi tahu semua orang cumi-cuminya untuk <kanji>hemat</kanji>.', 'Siapakah cumi-cumi yang <kanji>hemat</kanji>? <read>Ken</reading> (けん) teman cumi-cumi samurai, yang selalu dibawa-bawa dalam ember dan tidak pernah membayar sewa.')
    RETURNING id INTO k_2465_hemat;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '冥', 'neraka', 60, 33, 'Anda pergi ke luar untuk berjemur <radical>dahi</radical> Anda di bawah <radical>matahari</radical>, namun kemudian Anda melihat makhluk-makhluk ini dengan <radical>kelopak</radikal> di kepala dan <radical>sirip</radikal> di kaki. Uh… dari mana asalnya? Dari <kanji>dunia bawah</kanji>. Tidak ada yang seperti mereka di dunia ini. Mereka jelas berasal dari dunia bawah.', 'Makhluk <kanji>dunia bawah</kanji> ini pasti ada di luar karena saat ini <reading>Mei</reading> (めい), dan cuaca saat ini sangat fantastis dan cerah. Mereka tidak bisa melihat matahari di dunia bawah, jadi setiap bulan Mei mereka berbondong-bondong datang untuk menyaksikannya.')
    RETURNING id INTO k_9012_neraka;
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1971_rumah_bangsawan, 'Rumah bangsawan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1971_rumah_bangsawan, 'Perkebunan', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_1971_rumah_bangsawan, 'しょう', true, 'onyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2347_artikel, 'Artikel', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2347_artikel, 'Kejujuran', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2347_artikel, 'かん', true, 'onyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2398_riak, 'riak', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2398_riak, 'れん', true, 'onyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2398_riak, 'さざなみ', false, 'kunyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2435_mati, 'Mati', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2435_mati, 'せい', true, 'onyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2435_mati, 'い', false, 'kunyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2435_mati, 'ゆ', false, 'kunyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2436_bersembunyi, 'Bersembunyi', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2436_bersembunyi, 'とく', true, 'onyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2436_bersembunyi, 'かくま', false, 'kunyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2437_janda, 'Janda', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2437_janda, 'か', true, 'onyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2438_diare, 'Diare', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2438_diare, 'Diare', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2438_diare, 'り', true, 'onyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2439_lubang, 'Lubang', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2439_lubang, 'Lubang', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2439_lubang, 'こう', true, 'onyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2440_nila, 'Nila', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2440_nila, 'あい', true, 'kunyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2440_nila, 'らん', false, 'onyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2441_pantai, 'Pantai', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2441_pantai, 'はん', true, 'onyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2441_pantai, 'あぜ', false, 'kunyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2441_pantai, 'くろ', false, 'kunyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2441_pantai, 'ほとり', false, 'kunyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2442_lagu_shamisen, 'Lagu Shamisen', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2442_lagu_shamisen, 'うた', true, 'kunyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2442_lagu_shamisen, 'ばい', false, 'onyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2443_menyiksa, 'Menyiksa', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2443_menyiksa, 'ごう', true, 'onyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2444_lembah, 'Lembah', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2444_lembah, 'けい', true, 'onyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2444_lembah, 'たに', false, 'kunyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2444_lembah, 'たにがわ', false, 'kunyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2445_tawar_menawar, 'Tawar-menawar', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2445_tawar_menawar, 'れん', true, 'onyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2446_rendah_hati, 'Rendah hati', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2446_rendah_hati, 'Bijaksana', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2446_rendah_hati, 'きん', true, 'onyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2446_rendah_hati, 'つつし', false, 'kunyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2448_jelek, 'Jelek', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2448_jelek, 'しゅう', true, 'onyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2448_jelek, 'しこ', false, 'kunyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2448_jelek, 'みにく', false, 'kunyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2449_jaringan, 'jaringan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2449_jaringan, 'Ukuran', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2449_jaringan, 'ます', true, 'kunyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2449_jaringan, 'しょう', false, 'onyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2450_martir, 'Martir', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2450_martir, 'じゅん', true, 'onyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2451_mengganggu, 'Mengganggu', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2451_mengganggu, 'Mengganggu', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2451_mengganggu, 'はん', true, 'onyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2451_mengganggu, 'ぼん', false, 'onyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2451_mengganggu, 'うるさ', false, 'kunyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2451_mengganggu, 'わずら', false, 'kunyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2452_mengecam, 'Mengecam', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2452_mengecam, 'がい', true, 'onyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2453_dermaga, 'Dermaga', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2453_dermaga, 'Dermaga', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2453_dermaga, 'さん', true, 'onyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2453_dermaga, 'せん', false, 'onyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2453_dermaga, 'かけはし', false, 'kunyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2454_pengantin_pria, 'Pengantin pria', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2454_pengantin_pria, 'むこ', true, 'kunyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2454_pengantin_pria, 'せい', false, 'onyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2455_merindukan, 'Merindukan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2455_merindukan, 'Cinta', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2455_merindukan, 'ぼ', true, 'onyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2455_merindukan, 'した', false, 'kunyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2456_berhenti, 'Berhenti', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2456_berhenti, 'Meninggalkan', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2456_berhenti, 'ひ', true, 'onyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2456_berhenti, 'や', false, 'kunyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2457_benar, 'Benar', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2457_benar, 'Meluruskan', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2457_benar, 'きょう', true, 'onyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2457_benar, 'た', false, 'kunyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2458_yakin, 'Yakin', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2458_yakin, 'Satu', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2458_yakin, 'Orang itu', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2458_yakin, 'ぼう', true, 'onyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2458_yakin, 'それがし', false, 'kunyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2458_yakin, 'なにがし', false, 'kunyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2460_mengeluarkan, 'Mengeluarkan', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2460_mengeluarkan, 'ひ', true, 'onyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2460_mengeluarkan, 'ひつ', false, 'onyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2461_perlahan_lahan, 'Perlahan-lahan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2461_perlahan_lahan, 'Terus menerus', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2461_perlahan_lahan, 'ようや', true, 'kunyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2461_perlahan_lahan, 'やや', false, 'kunyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2461_perlahan_lahan, 'ぜん', false, 'onyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2462_rumput_laut, 'Rumput laut', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2462_rumput_laut, 'そう', true, 'onyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2462_rumput_laut, 'も', false, 'kunyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2463_ceroboh, 'Ceroboh', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2463_ceroboh, 'もう', true, 'onyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2463_ceroboh, 'ぼう', false, 'onyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2463_ceroboh, 'みだ', false, 'kunyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2464_barbar, 'Barbar', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2464_barbar, 'ばん', true, 'onyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2464_barbar, 'えびす', false, 'kunyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2465_hemat, 'Hemat', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2465_hemat, 'Hemat', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2465_hemat, 'けん', true, 'onyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2465_hemat, 'つづまやか', false, 'kunyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2465_hemat, 'つま', false, 'kunyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_9012_neraka, 'Neraka', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_9012_neraka, 'めい', true, 'onyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_9012_neraka, 'みょう', false, 'onyomi');

  -- 3. VOCABULARIES
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '申し申し', 'permisi', 60, 34, 'Ini seperti Anda mengucapkan <kanji>say</kanji> <kanji>say</kanji>, dan ini digunakan dalam bahasa Jepang klasik untuk menarik perhatian seseorang, jadi ini adalah <vocabulary>permisi</vocabulary> atau <vocabulary>halo</vocabulary>.

Biasanya Anda akan menemukan 申し申し dalam dialog yang berlatar masa lalu, tidak seperti versi modernnya yang lebih pendek もしもし, yang digunakan untuk salam telepon (dan hampir selalu ditulis dalam kana).', 'Kata ini menggunakan bacaan yang Anda pelajari dengan kanji. Anda seharusnya sudah mengetahuinya.')
    RETURNING id INTO v_2734_permisi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '庄園', 'rumah-bangsawan', 60, 35, 'Sebuah <kanji>rumah</kanji> dengan <kanji>taman</kanji> tetaplah sebuah <vocabulary>rumah</vocabulary> — hanya saja ini adalah sebuah rumah yang sangat besar dan mengesankan.

庄園 mengacu pada rumah bangsawan bergaya abad pertengahan — sebuah <vocabulary>perkebunan</vocabulary> luas yang diberikan kepada tuan oleh raja untuk dikelola secara pribadi sebagai sumber pendapatan pribadi. Di Jepang, 庄園 adalah bagian penting dari sistem ekonomi abad pertengahan, dengan aristokrasi dan lembaga keagamaan mengendalikan ribuan sistem tersebut di seluruh negeri. Banyak keluarga samurai terkenal mengambil nama mereka dari 庄園, karena mereka sering kali mengelolanya secara lokal menggantikan pemilik yang tidak hadir dan lebih suka nongkrong di Kyoto.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_7040_rumah_bangsawan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '首班', 'kepala', 60, 36, '<kanji>leher</kanji> dari <kanji>skuad</kanji> adalah bagian paling penting dari skuad, karena jika Anda kehilangan leher, Anda kehilangan kepala (semuanya sama). Orang ini adalah <vocabulary>head</vocabulary> atau <vocabulary>pemimpin</vocabulary> suatu grup.

Ini adalah kata yang sangat formal untuk merujuk pada seseorang yang mempunyai jabatan tinggi, terutama <vocabulary>Perdana Menteri</vocabulary> (alias kepala kabinet).', 'Ini merupakan kata jukugo sehingga menggunakan bacaan on''yomi. Anda mempelajari on''yomi untuk 首 pada kata 部首 dan 首位, dan Anda mempelajari on''yomi untuk 班 dengan kanji. Pergilah kamu!')
    RETURNING id INTO v_7242_kepala;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '定款', 'anggaran-dasar', 60, 37, '<kanji>Artikel</kanji> yang <kanji>menentukan</kanji> peraturan dan regulasi pekerjaan Anda atau perusahaan disebut <vocabulary>anggaran pendirian</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_8378_anggaran_dasar;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '約款', 'perjanjian', 60, 38, '<kanji>artikel</kanji> yang Anda tuliskan <kanji>janji</kanji> adalah <vocabulary>perjanjian</vocabulary>. Pastikan Anda membacanya dengan seksama sebelum menandatanganinya!', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_8379_perjanjian;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '蔑む', 'untuk-mencemooh', 60, 39, 'Kata ini terdiri dari kanji dengan hiragana ditempelkan. Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanjinya sendiri berarti <kanji>mencemooh</kanji>, jadi versi kata kerjanya adalah <vocabulary>mencemooh</vocabulary> dan <vocabulary>meremehkan</vocabulary>.', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi. Anda tidak belajar membaca dengan kanji ini, jadi inilah mnemonik untuk membantu Anda: 

Anda mulai <vocabulary>mencemooh</vocabulary> atasan Anda karena dia sudah memakai <reading>sage su</reading>it (さげす) yang sama selama sebulan sekarang. Dia tahu kamu ingin memakai setelan bijak juga, tetapi kamu tidak bisa memakai warna yang sama dengannya! Itu benar-benar membuatmu mulai membencinya. Uh!')
    RETURNING id INTO v_8579_untuk_mencemooh;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '倹約', 'penghematan', 60, 40, 'Saya <kanji>berjanji</kanji> ini akan menjadi tempat yang benar-benar <kanji>hemat</kanji> karena ini adalah toko <vocabulary>barang bekas</vocabulary>! Mereka tidak akan berbohong tentang hal itu!', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_8594_penghematan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '解剖学', 'anatomi', 60, 41, 'Ingat bagaimana Anda mengetahui bahwa 解剖 berarti "otopsi?" Anda harus <kanji>belajar</kanji> tentang <vocabulary>anatomi</vocabulary> sebelum Anda diizinkan melakukan otopsi atau membedah apa pun.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_8595_anatomi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '弾劾', 'pelengseran', 60, 42, '<kanji>peluru</kanji> terakhir dari <kanji>kecaman</kanji> adalah <vocabulary>impeachment</vocabulary>. Anda telah dipermalukan di depan umum dan sekarang Anda dimakzulkan karenanya. Astaga.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_8596_pelengseran;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '隠匿', 'bersembunyi', 60, 43, '<kanji>Sembunyikan</kanji> dan <kanji>sembunyikan</kanji> membuat <vocabulary>menyembunyikan</vocabulary>! Banyak persembunyian terjadi di sekitar sini. Saya pikir... Saya tidak dapat menemukan siapa pun jadi saya hanya bisa berasumsi.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_8597_bersembunyi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '匿名', 'anonimitas', 60, 44, '<kanji>Sembunyikan</kanji> <kanji>nama</kanji> Anda untuk <vocabulary>anonimitas</vocabulary>. Ada banyak hal seperti itu di internet. Faktanya, saat ini Anda mungkin menggunakan <vocabulary>nama samaran</vocabulary>, bukan? Ya, benar. Setidaknya kamu tidak bisa menyembunyikan ITU dariku... uh... Ssssteve?', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_8598_anonimitas;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '升', 'jaringan', 60, 45, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.', 'Bacaannya sama dengan kanji yang Anda pelajari, artinya Anda tahu bacaannya!')
    RETURNING id INTO v_8599_jaringan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '升目', 'persegi', 60, 46, '<kanji>Ukur</kanji> bentuk tersebut pada kertas dengan <kanji>mata</kanji> Anda. Ada empat sisinya.. itu.. itu <vocabulary>persegi</vocabulary>! Atau mungkin kotak <vocabulary></vocabulary> dari atas... Tapi yang pasti jenisnya adalah yang Anda isi pada grafik.', 'Bacaan kata ini sama-sama bacaan kun''yomi. Anda mempelajarinya saat mempelajari kanji, jadi Anda seharusnya bisa membacanya sendiri.')
    RETURNING id INTO v_8600_persegi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '唄', 'lagu', 60, 47, '<kanji>lagu shamisen</kanji> adalah <vocabulary>lagu shamisen</vocabulary>, ya. Tapi tahukah Anda bahwa itu juga... sebuah <vocabulary>lagu</vocabulary>?! Oh, benarkah? Baiklah kalau begitu.', 'Bacaannya sama dengan kanji yang Anda pelajari, artinya Anda tahu bacaannya!')
    RETURNING id INTO v_8601_lagu;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '唄う', 'bernyanyi', 60, 48, 'Kata ini terdiri dari kanji dengan hiragana ditempelkan. Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanjinya sendiri berarti <kanji>Lagu Shamisen</kanji>, jadi versi kata kerjanya adalah <vocabulary>menyanyi</vocabulary>.', 'Ingat bagaimana 歌う berarti "bernyanyi" juga? Ya, bacaannya sama. Jika Anda tahu yang itu, Anda pasti tahu yang ini. Hore!')
    RETURNING id INTO v_8602_bernyanyi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '長唄', 'lagu-shamisen-panjang', 60, 49, '<kanji>panjang</kanji> <kanji>lagu shamisen</kanji> adalah <vocabulary>lagu shamisen panjang</vocabulary>! Namanya juga <vocabulary>nagauta</vocabulary>, dan biasanya juga cukup epik.', 'Bacaan kata ini sama-sama bacaan kun''yomi. Anda mempelajarinya saat mempelajari kanji, jadi Anda seharusnya bisa membacanya sendiri.')
    RETURNING id INTO v_8603_lagu_shamisen_panjang;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '坑道', 'terowongan', 60, 50, '<kanji>lubang</kanji> yang digunakan sebagai <kanji>jalan</kanji> disebut <vocabulary>terowongan</vocabulary>. Atau <vocabulary>milikku</vocabulary>, jika mereka mengambil hal-hal berharga darinya.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_8606_terowongan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '妄想', 'khayalan', 60, 51, '<kanji>Sembrono</kanji> hal-hal yang <kanji>bayangkan</kanji> hanyalah <vocabulary>khayalan</vocabulary>. Anda tidak boleh memikirkannya, itu mungkin tidak akan terjadi.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_8607_khayalan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '婿', 'suami', 60, 52, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.', 'Bacaannya sama dengan kanji yang Anda pelajari, artinya Anda tahu bacaannya!')
    RETURNING id INTO v_8608_suami;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '花婿', 'mempelai', 60, 53, 'Seorang <kanji>pengantin pria</kanji> mendapat <kanji>bunga</kanji> di kerah bajunya dan dia akhirnya menjadi <vocabulary>pengantin pria</vocabulary> sesungguhnya! Sebelumnya dia hanya menunggu untuk menjadi salah satunya. Bunga itu membuatnya nyata.', 'Bacaan kata ini sama-sama bacaan kun''yomi. Anda mempelajarinya saat mempelajari kanji, jadi Anda seharusnya bisa membacanya sendiri.')
    RETURNING id INTO v_8609_mempelai;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '娘婿', 'menantu', 60, 54, '<kanji>pengantin</kanji> <kanji>putri</kanji> Anda akan menjadi <vocabulary>menantu</vocabulary> Anda. Dia pria yang hebat! Selamat!', 'Bacaan kata ini sama-sama bacaan kun''yomi. Anda mempelajarinya saat mempelajari kanji, jadi Anda seharusnya bisa membacanya sendiri.')
    RETURNING id INTO v_8610_menantu;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '寡婦', 'janda', 60, 55, '<kanji>janda</kanji>ed <kanji>wanita</kanji> adalah <vocabulary>janda</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_8611_janda;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '寡黙', 'diam', 60, 56, 'Beritahu seorang <kanji>janda</kanji> untuk <kanji>diam</kanji> dan dia akan <vocabulary>diam</vocabulary> sepanjang hari. Itu tidak terlalu bagus. Anda orang yang jahat.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_8612_diam;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '帆船', 'perahu-layar', 60, 57, '<kanji>layar</kanji> <kanji>perahu</kanji> adalah <vocabulary>perahu layar</vocabulary>!', 'Bacaannya bisa on''yomi atau kun''yomi, dan Anda tahu keduanya.

Di antara keduanya, on''yomi はんせん adalah bacaan standar. Seperti yang sering terjadi pada senyawa on''yomi, kata ini memiliki kesan yang lebih teknis, sehingga biasanya digunakan dalam referensi formal tentang kapal layar baik dalam buku teknis atau fiksi.

Kun''yomi ほぶね, sebaliknya, memiliki nada Jepang yang lebih lembut dan tradisional, seperti yang mungkin disebut oleh orang-orang di masa lalu dalam kehidupan sehari-hari. Anda akan sering melihatnya di lagu atau sastra lama, tetapi bisa juga muncul dalam karya modern untuk menyampaikan kesan nostalgia.')
    RETURNING id INTO v_8613_perahu_layar;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '帆柱', 'tiang-kapal', 60, 58, '<kanji>pilar</kanji> tempat <kanji>layar</kanji> dipasang disebut <vocabulary>tiang</vocabulary>. Tanpanya, layar tidak akan berfungsi dan perahu layar Anda tidak akan bergerak sama sekali.', 'Bacaan kata ini sama-sama bacaan kun''yomi. Anda mempelajari bacaan ini dengan kosakata lain, jadi Anda seharusnya bisa membacanya sendiri.')
    RETURNING id INTO v_8614_tiang_kapal;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '廉価', 'harga-rendah', 60, 59, 'Belilah sesuatu dengan <kanji>tawar-menawar</kanji> <kanji>nilai</kanji> dan Anda akan mendapatkannya dengan <vocabulary>harga murah</vocabulary>. Bagus untukmu!', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_8615_harga_rendah;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '管弦楽団', 'orkestra', 60, 60, 'Ingat bagaimana Anda mengetahui bahwa 管弦楽 berarti "musik orkestra?" <kanji>grup</kanji> yang memainkan musik tersebut adalah <vocabulary>orkestra</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri. 楽 memiliki dua bacaan on''yomi, tapi tahukah Anda ini がく di sini karena ini tentang 音楽 (musik)!')
    RETURNING id INTO v_8616_orkestra;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '思慕', 'kerinduan', 60, 61, 'Jika kamu tidak bisa berhenti <kanji>memikirkan</kanji> betapa kamu <kanji>merindukan</kanji> seseorang, <vocabulary>kerinduan</vocabulary> itu bisa membuatmu gila. Cobalah untuk mengendalikannya, dan nikmati bagaimana Anda dapat menyimpan <vocabulary>kasih sayang yang mendalam</vocabulary> kepada seseorang.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_8617_kerinduan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '慕う', 'untuk-memuja', 60, 62, 'Kata ini terdiri dari kanji dengan hiragana ditempelkan. Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanjinya sendiri berarti <kanji>merindukan</kanji>, jadi versi kata kerjanya adalah <vocabulary>merindukan</vocabulary>. Tapi kedengarannya agak kuno, jadi Anda bisa menggunakan <vocabulary>untuk mengagumi</vocabulary> juga.', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi. Anda tidak belajar membaca dengan kanji ini, jadi inilah mnemonik untuk membantu Anda: 

Anda menyadari bahwa Anda mulai <vocabulary>merindukan</vocabulary> seseorang lebih dari sebelumnya. "<reading>Sh*t</reading> (した)... " katamu dalam hati. Ini tidak seharusnya terjadi. Kapan pun Anda mulai memuja seseorang seperti itu, Anda selalu tahu bahwa Anda sedang melakukan banyak hal yang tidak ingin Anda tangani. Sialan emosi ini!')
    RETURNING id INTO v_8618_untuk_memuja;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '感慨無量', 'emosi-yang-mendalam', 60, 63, 'Ingat bagaimana Anda mengetahui bahwa 感慨 berarti "perasaan yang kuat?" Perasaan begitu kuat sehingga Anda <kanji>tidak</kanji> bahkan bisa memikirkan <kanji>kuantitas</kanji> untuk mengukur atau menjelaskan seberapa besar perasaan Anda. Ini benar-benar <vocabulary>emosi yang mendalam</vocabulary>. Mereka membuat Anda kenyang dan Anda tidak bisa tidak memberi tahu semua orang tentang mereka.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_8619_emosi_yang_mendalam;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '感慨深い', 'sangat-mengharukan', 60, 64, 'Ini merupakan kombinasi dari kata 感慨 yang berarti "perasaan yang kuat" dan 深い yang berarti "dalam". Sesuatu yang membuat Anda merasakan emosi yang kuat jauh di lubuk hati adalah <vocabulary>sangat mengharukan</vocabulary>.', 'Ini adalah kombinasi kata jukugo dan kata sifat i. Anda telah mempelajari keduanya, jadi haluskan saja keduanya, dengan rendaku yang dibuat ふ hingga ぶ, dan Anda akan paham!')
    RETURNING id INTO v_8620_sangat_mengharukan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '悪戯', 'menggoda', 60, 65, 'Jenis <kanji>buruk</kanji> adalah ketika Anda <vocabulary>menggoda</vocabulary> atau <vocabulary>prank</vocabulary> seseorang. Itu kejam dan kamu tidak boleh melakukannya! Tergantung pada konteksnya, hal ini terkadang memiliki konotasi yang jauh lebih negatif dan berarti <vocabulary>perilaku tidak senonoh</vocabulary>.', 'Pembacaan kata ini merupakan pengecualian. Berikut ini mnemonik untuk membantu Anda mengingatnya:

Jika kamu <vocabulary>menggoda</vocabulary> seseorang dengan <vocabulary>lelucon</vocabulary> yang membuat mereka <reading>makan kebun binatang</reading>ts (いたずら), kamu brengsek. Itu bukan sebuah lelucon dan lebih seperti pelecehan. Hentikan itu.')
    RETURNING id INTO v_8621_menggoda;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '戯れ', 'mainkan-rayuan', 60, 66, 'Ingat bagaimana 戯れる bisa berarti "bermain" atau "menggoda?" Inilah saatnya Anda <vocabulary>bermain flirt</vocabulary>! Atau sekadar membuat <vocabulary>lelucon</vocabulary>.', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi. Anda sudah mempelajari bacaan ini jadi Anda harus bisa membacanya!')
    RETURNING id INTO v_8622_mainkan_rayuan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '拷問', 'menyiksa', 60, 67, '<kanji>Penyiksaan</kanji> mungkin merupakan <kanji>masalah</kanji> tetapi hal itu tidak menghentikan orang untuk menggunakan <vocabulary>penyiksaan</vocabulary> untuk mendapatkan apa yang mereka inginkan.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_8623_menyiksa;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '某〜', 'yakin', 60, 68, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.', 'Bacaannya sama dengan kanji yang Anda pelajari, artinya Anda tahu bacaannya!')
    RETURNING id INTO v_8624_yakin;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '桟橋', 'dermaga', 60, 69, 'Tambahkan <kanji>jembatan</kanji> ke <kanji>dermaga</kanji> dan Anda akan mendapatkan <vocabulary>dermaga</vocabulary> yang cukup keren. Letakkan kincir ria di sana dan hasilkan uang!', 'Kata ini terdiri dari bacaan on''yomi untuk 桟 dan bacaan kun''yomi untuk 橋. Kamu sudah mempelajari keduanya, jadi asal kamu ingat rendaku, kamu pasti bisa membaca kata ini juga!')
    RETURNING id INTO v_8625_dermaga;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '殉職', 'mati-di-pos-seseorang', 60, 70, 'Jika Anda ingin menjadi <kanji>martir</kanji> selama <kanji>pekerjaan</kanji> Anda, Anda harus <vocabulary>mati di jabatan Anda</vocabulary>. Saya tidak tahu mengapa Anda INGIN melakukan itu.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_8626_mati_di_pos_seseorang;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '吸い殻', 'puntung-rokok', 60, 71, 'Ini merupakan kombinasi dari kata 吸う yang berarti "merokok" dan 殻 yang berarti "cangkang" atau "sekam". Sekam yang tersisa setelah selesai merokok adalah <vocabulary>puntung rokok</vocabulary>. Atau <vocabulary>abu tembakau</vocabulary> jika Anda hanya mempunyai setumpuknya.', 'Ini adalah kombinasi kata 吸う dan 殻. Ubah う menjadi い dan jangan lupa rendakunya, dan kamu juga harus bisa mengingat bacaan ini!')
    RETURNING id INTO v_8627_puntung_rokok;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '分泌', 'sekresi', 60, 72, '<kanji>Sebagian</kanji> dari Anda mulai <kanji>mengeluarkan</kanji> semacam <vocabulary>sekresi</vocabulary>. Agak menjijikkan, jadi mungkin sebaiknya Anda pergi ke dokter untuk memeriksa apakah itu normal.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Tapi 泌 menggunakan bacaan on''yomi yang belum kamu pelajari (ひつ), yang juga menghasilkan rendaku di sini, jadi gunakan mnemonik ini untuk mengingatnya:

Bagian tubuh Anda yang paling banyak menghasilkan <vocabulary>sekresi</vocabulary> adalah… <reading>pits</reading> (ぴつ) Anda. Ya, itu gambaran yang kotor, tapi lain kali Anda berjalan-jalan di Tokyo di musim panas dan "mengeluarkan" melalui baju Anda, setidaknya Anda memiliki kosakata untuk menggambarkan semua itu 分泌.')
    RETURNING id INTO v_8628_sekresi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '泌尿器', 'organ-kencing', 60, 73, '<kanji>wadah</kanji>yang <kanji>urine</kanji> Anda <kanji>sekresikan adalah <vocabulary>organ kemih</vocabulary> Anda.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_8629_organ_kencing;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '渓谷', 'lembah', 60, 74, 'Sebuah <kanji>lembah</kanji> di dalam <kanji>lembah</kanji> tetaplah sebuah <vocabulary>lembah</vocabulary>!', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_8630_lembah;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '渓流', 'aliran-gunung', 60, 75, '<kanji>Aliran</kanji> yang mengalir melalui <kanji>lembah</kanji> adalah <vocabulary>aliran gunung</vocabulary>. Lembah terdapat di antara gunung-gunung, jadi bayangkan saja sungai yang mengalir melalui tengah-tengahnya di kepala Anda.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_8631_aliran_gunung;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '漸く', 'akhirnya', 60, 76, 'Jika Anda melakukan sesuatu <kanji>secara bertahap</kanji> untuk waktu yang lama, ketika Anda menyelesaikannya, Anda akan merasakan <vocabulary>AKHIRNYA</vocabulary> tersebut. Butuh waktu lama dan Anda bekerja sangat keras dan akhirnya selesai!', 'Pembacaan kata ini merupakan pengecualian, tetapi Anda mempelajarinya dengan kanji. Selamat!')
    RETURNING id INTO v_8634_akhirnya;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '濁る', 'menjadi-berlumpur', 60, 77, 'Anda sudah tahu bahwa 濁す berarti "membuat berlumpur", tapi ini adalah saat Andalah yang menjadi berlumpur. Artinya <vocabulary>menjadi keruh</vocabulary>.', 'Bacaannya sama dengan 濁す. Jika Anda bisa mengingat yang satu itu, Anda seharusnya bisa mengingat yang ini.')
    RETURNING id INTO v_8635_menjadi_berlumpur;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '煩い', 'bising', 60, 78, 'Ini adalah kanji tunggal dengan い di akhir, artinya Anda tahu itu mungkin kata sifat. Apa bentuk kata sifat dari <kanji>mengganggu</kanji>? <vocabulary>menjengkelkan</vocabulary>!', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi. Anda tidak belajar membaca dengan kanji ini, jadi inilah mnemonik untuk membantu Anda: 

Apa itu <vocabulary>berisik</vocabulary>? <reading>u</reading>ni <reading>ru</reading>de <reading>sigh</reading>ing (うるさい). Ia hanya terus mendesah keras berulang kali. Itu sangat menjengkelkan!')
    RETURNING id INTO v_8636_bising;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '煩雑', 'kompleks', 60, 79, 'Jika menurut Anda seseorang mencoba <kanji>mengganggu</kanji> Anda secara <kanji>secara acak</kanji>, perhatikan saja dan Anda akan melihat bahwa mereka memiliki <vocabulary>kompleks</vocabulary> pola menjengkelkan yang mereka gunakan pada Anda. Setelah Anda mengetahuinya, hal itu tidak akan terlalu mengganggu Anda dan Anda akan menang!', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_8637_kompleks;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '煩忙', 'sibuk', 60, 80, 'Jika Anda <kanji>mengganggu</kanji> seseorang yang <kanji>sibuk</kanji> mereka akan tetap <vocabulary>sibuk</vocabulary>. Anda mengganggu mereka tidak dapat mengubahnya. Meskipun sekarang mereka mungkin sedang sibuk DAN kesal.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_8638_sibuk;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '湖畔', 'tepi-danau', 60, 81, '<kanji>danau</kanji> <kanji>pantai</kanji> adalah <vocabulary>tepi danau</vocabulary>!', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_8639_tepi_danau;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '下痢', 'diare', 60, 82, '<kanji>Diare</kanji> yang <kanji>di bawah</kanji> sayangnya Anda masih <vocabulary>diare</vocabulary>. Kuharap itu turun ke toilet...', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_8640_diare;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '赤痢', 'disentri', 60, 83, '<kanji>Merah</kanji> <kanji>diare</kanji> berarti ada darah di sana dan Anda mungkin sekarat karena <vocabulary>disentri</vocabulary>! Apakah Anda terlalu banyak bermain Oregon Trail? Apa pun pilihannya, segera temui dokter!', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda belum mempelajari bacaan ini untuk 赤, jadi inilah mnemonik untuk membantu Anda:

Anda tahu apa yang bukan <vocabulary>disentri</vocabulary>? <reading>Seksi</reading> (せき). Itu benar. Jika ada yang mencoba merayu Anda dengan mengatakan bahwa mereka mengidap disentri dan ingin menceritakannya kepada Anda, beri tahu mereka betapa TIDAK seksinya hal itu dan menjauhlah dari mereka!')
    RETURNING id INTO v_8641_disentri;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '矯正', 'koreksi', 60, 84, '<kanji>Perbaiki</kanji> sesuatu yang menurut Anda sudah <kanji>benar</kanji> dengan melakukan <vocabulary>koreksi</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_8642_koreksi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '硫黄', 'sulfur', 60, 85, '<kanji>Sulfur</kanji> yang <kanji>kuning</kanji> tetaplah <vocabulary>sulfur</vocabulary>. Baunya seperti telur busuk, warnanya juga agak kuning.', 'Pembacaan kata ini merupakan pengecualian. Berikut ini mnemonik untuk membantu Anda mengingatnya:

<vocabulary>sulfur</vocabulary> ini berbau seperti <reading>OOHHH</reading> (いおう) <reading>eagle''s!! Oh tidak. Bau belerang... baunya... seperti bau elang... OH.. Oh eww tidak.')
    RETURNING id INTO v_8643_sulfur;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '罷免', 'pemecatan', 60, 86, 'Anda <kanji>keluar</kanji> dari pekerjaan Anda tetapi dengan <kanji>alasan</kanji> yang cukup bagus untuk mendukungnya, sehingga Anda mendapatkan <vocabulary>pemecatan</vocabulary> daripada langsung berhenti. Jika Anda menjadi tentara dan melakukan hal ini, hal ini disebut <vocabulary>discharge</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_8644_pemecatan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '藍', 'nila', 60, 87, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.', 'Karena kata ini terdiri dari satu kanji, kemungkinan besar menggunakan bacaan kun''yomi. Anda sudah mempelajari bacaan ini, jadi Anda harus mengetahuinya juga!')
    RETURNING id INTO v_8645_nila;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '藻', 'rumput-laut', 60, 88, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.', 'Karena kata ini terdiri dari satu kanji, kemungkinan besar menggunakan bacaan kun''yomi. Anda tidak mempelajari bacaan ini, jadi inilah mnemonik untuk membantu Anda: 

Berenanglah ke dalam kelompok <vocabulary>rumput laut</vocabulary> yang mengambang dan rasa merinding akan membuat Anda merinding. Rasanya sangat kotor dan berlendir sehingga Anda tidak bisa menahan diri untuk tidak keluar dalam kesusahan.')
    RETURNING id INTO v_8646_rumput_laut;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '海藻', 'rumput-laut', 60, 89, '<kanji>Laut</kanji> <kanji>rumput laut</kanji> tetaplah <vocabulary>rumput laut</vocabulary>!', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_8647_rumput_laut;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '野蛮', 'liar', 60, 90, '<kanji>Orang Barbar</kanji> yang tinggal di <kanji>ladang</kanji>, bahkan di gubuk atau rumah atau apa pun, disebut <vocabulary>biadab</vocabulary> oleh orang yang tinggal di gubuk dan rumah. Mereka berpikir jika Anda tinggal di suatu bidang, Anda benar-benar <vocabulary>tidak beradab</vocabulary>. Tapi itu semua hanya masalah opini, menurutku.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_8648_liar;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '南蛮', 'orang-barbar-selatan', 60, 91, 'Dari <kanji>selatan</kanji> datanglah <kanji>orang barbar</kanji> yang dikenal sebagai… <vocabulary>orang barbar selatan</vocabulary>.

Dahulu kala kata ini merujuk pada masyarakat Asia Tenggara, namun ketika para pedagang Eropa tiba di selatan Jepang pada tahun 1500-an, mereka juga disebut 南蛮. Bagaimanapun, mereka adalah orang-orang barbar di selatan. Saat ini kata tersebut kebanyakan mengacu pada makanan bergaya <vocabulary>nanban</vocabulary> yang dinamai menurut nama para pedagang tersebut. (Bayangkan makanan yang digoreng dan saus tartar… Yum.)', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_8649_orang_barbar_selatan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '蛮行', 'barbarisme', 60, 92, '<kanji>Orang Barbar</kanji> <kanji>pergi</kanji> berkeliling dan melakukan tindakan <vocabulary>barbarisme</vocabulary>! Apa lagi yang akan mereka lakukan? Mereka orang barbar!', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_8650_barbarisme;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '謹賀新年', 'selamat-tahun-baru', 60, 93, 'Ingat bagaimana Anda mengetahui bahwa 新年 berarti "Tahun Baru?" Saat Anda mengucapkan <kanji>dengan rendah hati</kanji> <kanji>selamat</kanji> di tahun baru, Anda sebenarnya sedang mengucapkan <vocabulary>Selamat Tahun Baru!</vocabulary>', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_8651_selamat_tahun_baru;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '容赦なく', 'tanpa-henti', 60, 94, 'Ingat bagaimana 容赦 bisa berarti "pengampunan" dan "belas kasihan?" Tambahkan なく (pada dasarnya BUKAN itu), dan itu menjadi <vocabulary>tanpa henti</vocabulary> dan <vocabulary>tanpa ampun</vocabulary>. Kebalikan dari sebelumnya!', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi (dengan なく melekat padanya). Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_8652_tanpa_henti;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '逝去', 'kematian', 60, 95, '<kanji>Mati</kanji> di <kanji>masa lalu</kanji> dan <vocabulary>kematian</vocabulary> itulah yang kamu derita!', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_8653_kematian;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '醜い', 'jelek', 60, 96, 'Ini adalah kanji tunggal dengan い di akhir, artinya Anda tahu itu mungkin kata sifat. Apa bentuk kata sifat dari <kanji>jelek</kanji>? Masih <vocabulary>jelek</vocabulary>!', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi. Anda tidak belajar membaca dengan kanji ini, jadi inilah mnemonik untuk membantu Anda: 

Hal paling <vocabulary>jelek</vocabulary> yang pernah Anda lihat adalah <reading>mini coo</reading>kie (みにく). Mengapa ada orang yang menginginkan kue kecil? Kue harus berukuran besar dan cukup untuk membuat Anda kenyang. Semakin sering Anda melihat kue mini itu, rasanya semakin jelek dan jelek bagi Anda.')
    RETURNING id INTO v_8654_jelek;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '醜悪', 'jelek', 60, 97, '<kanji>Jelek</kanji>, <kanji>buruk</kanji> sesuatu adalah <vocabulary>jelek</vocabulary>, <vocabulary>kejam</vocabulary>, dan <vocabulary>menyinggung</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_8655_jelek;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '醜態', 'pemandangan-memalukan', 60, 98, 'Sesuatu yang <kanji>jelek</kanji> <kanji>penampilannya</kanji> adalah <vocabulary>pemandangan yang memalukan</vocabulary>, atau <vocabulary>perilaku tercela</vocabulary>. Anda merasa tidak enak hanya dengan melihatnya. Mungkin rasanya juga tidak enak.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_8656_pemandangan_memalukan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '醜聞', 'skandal', 60, 99, 'Apa yang <kanji>dengar</kanji> yang benar-benar <kanji>jelek</kanji>? Sebuah <vocabulary>skandal</vocabulary>. Skandal adalah topik gosip yang paling jelek.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_8657_skandal;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '叩頭', 'busur', 60, 100, '<kanji>Ketuk</kanji> <kanji>kepala</kanji> Anda ke lantai untuk menunjukkan rasa hormat Anda dengan melakukan <vocabulary>membungkuk</vocabulary> dalam ini. Ini adalah sikap paling hormat yang bisa Anda lakukan.

叩頭 mengacu pada adat istiadat tradisional Tiongkok di mana individu berlutut dan menyentuhkan dahi mereka ke tanah sebagai tanda rasa hormat atau ketundukan yang mendalam. Anda mungkin menemukan kata 叩頭 dalam sastra dan drama berlatar sejarah Tiongkok, khususnya dalam latar kekaisaran.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda belum mempelajari bacaan ini untuk 叩, jadi inilah mnemonik untuk membantu Anda:

Siapa yang <vocabulary>membungkuk</vocabulary>di hadapan Anda? Itu tidak lain adalah <membaca>こう</reading>いち! Dia membungkuk untuk menghormati Anda yang akhirnya mencapai level 60 di WaniKani. Selamat!')
    RETURNING id INTO v_8853_busur;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '領袖', 'pemimpin', 60, 101, 'Seseorang yang memiliki <kanji>wilayah</kanji> di bawah <kanji>lengannya</kanji> adalah <vocabulary>pemimpin</vocabulary>. Mereka adalah <vocabulary>bos</vocabulary> dari seluruh wilayah ini karena mereka mengatakan demikian, dan karena mereka memaksakan semuanya ke dalam lengan baju mereka.

Ini adalah kata yang sangat formal yang sering digunakan dalam konteks politik, terutama jika merujuk pada pimpinan suatu faksi atau partai politik.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda belum mempelajari cara membaca on''yomi untuk 袖, jadi inilah mnemonik untuk membantu Anda mengingat:

Selalu sulit untuk mengisi <vocabulary>leader</vocabulary>s'' <reading>shoe</reading>s (しゅう). Pemimpin mempunyai tanggung jawab dan kekuasaan yang besar. Hanya sepatu besar yang harus diisi! Bayangkan sepatu pemimpin besar ini, seperti dalam arti sebenarnya. Tidak hanya mereka mempunyai tanggung jawab yang besar, para pemimpin juga mempunyai kedudukan yang besar.')
    RETURNING id INTO v_8901_pemimpin;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '冥王星', 'pluto', 60, 102, '<kanji>dunia bawah</kanji> <kanji>raja</kanji> <kanji>bintang</kanji> adalah planet kerdil <vocabulary>Pluto</vocabulary>. Karena Pluto adalah penguasa dunia bawah dalam mitologi klasik, hal ini sangat masuk akal!', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_9013_pluto;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '冥界', 'neraka', 60, 103, '<kanji>dunia bawah</kanji> <kanji>dunia</kanji> adalah <vocabulary>dunia bawah</vocabulary>, <vocabulary>Hades</vocabulary>, atau <vocabulary>alam orang mati</vocabulary>.

Kata ini agak puitis, dan banyak digunakan dalam tulisan, khususnya dalam konteks seperti agama Buddha, spiritualitas, dan mitologi kuno. Biasanya dapat dipertukarkan dengan 冥土 (yang juga berada pada level ini), namun 冥土 lebih banyak digunakan pada ekspresi set tertentu, yang akan kami sebutkan di halaman untuk kata tersebut!', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda mempelajarinya dengan kanji, jadi Anda seharusnya bisa membacanya sendiri.')
    RETURNING id INTO v_9014_neraka;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '冥土', 'alam-orang-mati', 60, 104, '<kanji>dunia bawah</kanji> <kanji>tanah</kanji> adalah kata lain untuk <vocabulary>dunia orang mati</vocabulary>, <vocabulary>underworld</vocabulary>, atau <vocabulary>Hades</vocabulary>. Seperti kata 冥界 (juga pada tingkat ini), kata ini agak puitis, dan sebagian besar digunakan dalam konteks tertulis yang melibatkan spiritualitas, Budha, dan mitologi kuno.

Namun ada beberapa ekspresi yang hanya menggunakan 冥土. Salah satu contohnya adalah 冥土の土産, "suvenir untuk dibawa ke dunia orang mati". Ini mengacu pada sesuatu yang abstrak yang sangat berharga, sehingga layak dibawa ke dunia bawah, seperti solusi atas misteri besar, atau kenangan indah.

Ungkapan lainnya adalah 冥土の旅支度, yang berarti "persiapan untuk perjalanan ke dunia orang mati", dan dapat merujuk pada persiapan orang yang meninggal sebelum pemakaman, serta persiapan tertentu yang dilakukan oleh umat Buddha saat mereka masih hidup.

Terkadang Anda juga akan melihat kata ini ditulis sebagai 冥途.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_9015_alam_orang_mati;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '酌み交わす', 'untuk-minum-bersama', 60, 105, '酌む berarti "melayani" dan kanji 交 berarti <kanji>campuran</kanji>. Apa yang terjadi jika Anda menyajikan dan mencampurkannya? Anda akan <vocabulary>saling menuangkan minuman</vocabulary> karena Anda berencana <vocabulary>minum bersama</vocabulary>.', 'Anda belum mempelajari bacaan ini untuk 交, jadi inilah mnemonik untuk membantu Anda:

Semua bar tutup sehingga Anda dan teman Anda akan <vocabulary>minum bersama</vocabulary> di <reading>ca</reading>r (か) Anda. Anda mendirikan bar kecil di belakang mobil Anda dan duduk untuk minum. Itu sempit tapi nyaman')
    RETURNING id INTO v_9116_untuk_minum_bersama;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '詠う', 'untuk-menulis', 60, 106, 'Bentuk kata kerja <kanji>menulis</kanji> adalah <vocabulary>to composer</vocabulary>. Kata kerja khusus ini biasanya digunakan dalam kaitannya dengan puisi, dan bisa juga berarti <vocabulary>membacakan</vocabulary> atau <vocabulary>menyanyi</vocabulary>, meskipun lebih dalam arti menyanyikan pujian seseorang daripada menyanyikan sebuah lagu.', 'Kata ini mempunyai asal usul yang sama dengan 歌う dan 唄う, dan bacaannya juga sama.')
    RETURNING id INTO v_9117_untuk_menulis;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '某', 'seseorang-atau-lainnya', 60, 107, 'Kanji berarti <kanji>tertentu</kanji>, namun bila digunakan sebagai kata tersendiri, atau setelah nama keluarga, artinya adalah <vocabulary>seseorang atau orang lain</vocabulary>, <vocabulary>kamu-tahu-siapa</vocabulary>, atau <vocabulary>sesuatu</vocabulary>. Ini pada dasarnya adalah cara samar untuk merujuk pada seseorang yang namanya Anda lupa, atau Anda tidak ingin menyebutkannya karena alasan tertentu.', 'Kata ini menggunakan kun''yomi kanji, dan Anda belum mempelajarinya, jadi inilah mnemonik untuk membantu Anda:

Anda bertemu dengan <vocabulary>seseorang atau lainnya</vocabulary>, dan saat Anda bertanya-tanya siapa namanya, <reading>pengasuhnya</reading>s (なにがし) kakinya. Sepertinya itu menyakitkan. <vocabulary>kamu-tahu-siapa</vocabulary> yang malang, apapun namanya. Pengasuhnya tampak ketakutan, dan berusaha menyembuhkannya.')
    RETURNING id INTO v_9121_seseorang_atau_lainnya;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '某国', 'negara-tertentu', 60, 108, '<kanji>negara</kanji> tertentu adalah <vocabulary>negara tertentu</vocabulary>!', 'Kata ini menggunakan on''yomi untuk kedua kanji, dan Anda mempelajari bacaan tersebut dengan kanji. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_9122_negara_tertentu;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '某所', 'tempat-tertentu', 60, 109, 'Tidak ada kejutan di sini. <kanji>tempat</kanji> tertentu</kanji> adalah <vocabulary>tempat tertentu</vocabulary>.', 'Kata ini menggunakan on''yomi untuk kedua kanji, dan Anda mempelajari bacaan tersebut dengan kanji. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_9123_tempat_tertentu;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '某氏', 'orang-tertentu', 60, 110, '<kanji>tertentu</kanji> <kanji>nama keluarga</kanji> milik <vocabulary>orang tertentu</vocabulary>.', 'Kata ini menggunakan on''yomi untuk kedua kanji, dan Anda mempelajari bacaan tersebut dengan kanji. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_9124_orang_tertentu;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '漣斗', 'menyewa', 60, 111, 'Ini bukan <kanji>riak</kanji> <kanji>sendok</kanji>, tapi nama pemberian Jepang <vocabulary>Rento</vocabulary>! 

Nama Rento terbilang umum, namun versi kanji ini cukup unik. Sayangnya, tidak ada 漣斗 terkenal yang dapat kami sebutkan, namun Anda harus bangga pada diri sendiri karena telah mencapai level ini di WaniKani dan menguasai nama tingkat tinggi!', 'Nama ini menggunakan on''yomi untuk kedua kanji yang sudah Anda pelajari. Beruntung!')
    RETURNING id INTO v_9334_menyewa;
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2734_permisi, 'Permisi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2734_permisi, 'Halo', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_2734_permisi, 'もうしもうし', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2734_permisi, '申し申し、レストラン「山びこ」です。', 'Halo, ini restoran "Mountain Echo".');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2734_permisi, '申し申し、田中先生のご主人ですか？', 'Halo, apakah kamu suami Tanaka-sensei?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2734_permisi, '「申し申し。先日メールをいただいた山下です。」', '"Halo. Ini Yamashita. Kamu mengirimiku email beberapa hari yang lalu."');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7040_rumah_bangsawan, 'Rumah bangsawan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7040_rumah_bangsawan, 'Perkebunan Pertanian', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7040_rumah_bangsawan, 'しょうえん', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7040_rumah_bangsawan, '平安時代には多くの庄園が作られた。', 'Banyak perkebunan swasta didirikan pada periode Heian.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7040_rumah_bangsawan, 'この地域には昔、大きな庄園があったんです。', 'Dahulu kala, ada sebuah rumah besar di daerah ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7040_rumah_bangsawan, '庄園制度導入への準備は全て整っています。', 'Semuanya beres untuk pengenalan manorialisme.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7040_rumah_bangsawan, '庄園制度は日本の中世社会に大きな影響を与えました。', 'Sistem manorial berdampak besar pada masyarakat Jepang abad pertengahan.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7242_kepala, 'Kepala', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7242_kepala, 'Pemimpin', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7242_kepala, 'Perdana Menteri', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7242_kepala, 'しゅはん', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7242_kepala, 'どいつが新入生の首班を占めることになると思う？', 'Menurut Anda siapa yang akan menjadi pemimpin siswa tahun pertama?');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8378_anggaran_dasar, 'Anggaran Dasar', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8378_anggaran_dasar, 'Statuta Perusahaan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8378_anggaran_dasar, 'Anggaran Dasar Hukum Perusahaan', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8378_anggaran_dasar, 'ていかん', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8378_anggaran_dasar, 'この雛形を作れば簡単に定款が作成できます。', 'Jika saya membuat sampel ini saya dapat dengan mudah membuat undang-undang perusahaan.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8379_perjanjian, 'Perjanjian', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8379_perjanjian, 'Ketentuan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8379_perjanjian, 'Artikel', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8379_perjanjian, 'Ayat', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8379_perjanjian, 'やっかん', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8379_perjanjian, 'きちんと約款を読みましたか？', 'Apakah Anda membaca perjanjian itu dengan seksama?');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8579_untuk_mencemooh, 'Untuk mencemooh', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8579_untuk_mencemooh, 'Untuk Membenci', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8579_untuk_mencemooh, 'さげすむ', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8579_untuk_mencemooh, 'あの男は、無意識に人のことを蔑んでいるのよ。', 'Pria itu secara tidak sadar meremehkan orang.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8594_penghematan, 'Penghematan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8594_penghematan, 'Ekonomi', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8594_penghematan, 'Kesederhanaan', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8594_penghematan, 'けんやく', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8594_penghematan, 'いくらマイホームを買いたいからって、度を過ぎた倹約を強いるのはどうかと思います。', 'Menurut saya, bukanlah ide yang baik untuk memaksakan diri untuk berhemat lebih tinggi hanya karena Anda ingin membeli rumah sendiri.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8595_anatomi, 'Anatomi', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8595_anatomi, 'かいぼうがく', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8595_anatomi, '大学では解剖学を研究しています。', 'Saya belajar anatomi di perguruan tinggi.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8596_pelengseran, 'Pelengseran', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8596_pelengseran, 'Tuduhan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8596_pelengseran, 'Mengecam', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8596_pelengseran, 'Pengaduan', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8596_pelengseran, 'だんがい', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8596_pelengseran, '大統領の弾劾を求める大規模な反政府デモが開かれました。', 'Demonstrasi anti-pemerintah besar-besaran diadakan untuk pemakzulan Presiden.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8597_bersembunyi, 'Bersembunyi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8597_bersembunyi, 'Penyembunyian', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8597_bersembunyi, 'Menutupi', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8597_bersembunyi, 'いんとく', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8597_bersembunyi, '彼女は犯人を隠匿していたんだよ。', 'Dia menyembunyikan penjahatnya.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8598_anonimitas, 'Anonimitas', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8598_anonimitas, 'Nama samaran', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8598_anonimitas, 'とくめい', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8598_anonimitas, '匿名で投書をしました。', 'Saya menulis surat kepada editor secara anonim.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8599_jaringan, 'jaringan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8599_jaringan, 'Kotak', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8599_jaringan, 'Wadah Pengukur', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8599_jaringan, 'Ukuran', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8599_jaringan, 'ます', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8599_jaringan, '作文の書き出しは、一升空けて下さい。', 'Saat memulai komposisi Anda, harap biarkan kotak pertama kosong.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8600_persegi, 'Persegi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8600_persegi, 'Kotak', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8600_persegi, 'Ukuran', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8600_persegi, 'ますめ', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8600_persegi, '升目を数えると、全部で400ありました。', 'Ketika saya menghitung kotaknya, totalnya ada 400.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8601_lagu, 'Lagu', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8601_lagu, 'Lagu Shamisen', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8601_lagu, 'うた', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8601_lagu, 'この唄は、私と兄が一緒に作りました。', 'Aku menulis lagu ini bersama kakak laki-lakiku.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8602_bernyanyi, 'Bernyanyi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8602_bernyanyi, 'Untuk Membaca', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8602_bernyanyi, 'Untuk bernyanyi', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8602_bernyanyi, 'うたう', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8602_bernyanyi, '私のおじさんは、唄うアコーディオン弾きです。', 'Paman saya adalah pemain akordeon yang bernyanyi.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8603_lagu_shamisen_panjang, 'Lagu Shamisen Panjang', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8603_lagu_shamisen_panjang, 'Lagu Shamisen yang Epik', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8603_lagu_shamisen_panjang, 'Nagauta', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8603_lagu_shamisen_panjang, 'ながうた', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8603_lagu_shamisen_panjang, '長唄教室に通い始めました。', 'Saya mulai pergi ke kelas nagauta.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8606_terowongan, 'Terowongan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8606_terowongan, 'Milikku', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8606_terowongan, 'Batang', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8606_terowongan, 'こうどう', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8606_terowongan, '地下20mのところに坑道が掘られています。', 'Mereka sedang menggali terowongan sekitar 20 mil di bawah tanah.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8607_khayalan, 'Khayalan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8607_khayalan, 'Fantasi', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8607_khayalan, 'もうそう', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8607_khayalan, 'いつも大金持ちになる妄想ばかりしています。', 'Saya selalu berfantasi tentang menjadi orang yang sangat kaya.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8608_suami, 'Suami', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8608_suami, 'Pengantin pria', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8608_suami, 'Menantu', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8608_suami, 'むこ', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8608_suami, 'こんないいお婿さんにもらわれて、娘は幸せ者です。', 'Putriku sangat beruntung mendapatkan suami yang baik.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8609_mempelai, 'Mempelai', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8609_mempelai, 'Pengantin pria', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8609_mempelai, 'はなむこ', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8609_mempelai, '花婿が結婚式場から逃げ出したらしいわよ。', 'Pengantin pria lari dari pernikahan!');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8610_menantu, 'Menantu', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8610_menantu, 'むすめむこ', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8610_menantu, 'いずれは娘婿を社長にするつもりです。', 'Cepat atau lambat, saya berniat menjadikan menantu saya sebagai presiden perusahaan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8610_menantu, '娘婿には、追い風が吹いていた。それでも彼は、歩幅を変えなかった。運に任せるのではなく、自分の足で進みたかったからだ。', 'Angin bertiup demi kebaikan menantu laki-laki saya. Meski begitu, dia tidak mengubah langkahnya. Dia tidak ingin membiarkan segala sesuatunya bergantung pada keberuntungan — dia ingin maju dengan kedua kakinya sendiri.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8611_janda, 'Janda', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8611_janda, 'かふ', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8611_janda, '寡婦控除について詳しく教えてください。', 'Tolong jelaskan potongan pajak janda kepada saya secara detail.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8612_diam, 'Diam', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8612_diam, 'Malu', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8612_diam, 'かもく', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8612_diam, '寡黙で読書好きな男性がタイプです。', 'Pria pendiam dan suka buku adalah tipeku.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8613_perahu_layar, 'Perahu layar', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8613_perahu_layar, 'Perahu layar', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8613_perahu_layar, 'Kapal layar', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8613_perahu_layar, 'はんせん', true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8613_perahu_layar, 'ほぶね', false);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8613_perahu_layar, '店内は帆船をイメージした内装となっております。', 'Interior toko didesain menyerupai perahu layar.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8614_tiang_kapal, 'Tiang kapal', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8614_tiang_kapal, 'ほばしら', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8614_tiang_kapal, 'この木は帆柱にちょうどいいぞ。', 'Pohon ini sangat cocok untuk tiang kapal.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8615_harga_rendah, 'Harga Rendah', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8615_harga_rendah, 'Murah', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8615_harga_rendah, 'れんか', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8615_harga_rendah, '廉価版のゲームのパッケージって安物感丸出しだよな。', 'Kemasan edisi populer game ini terasa murahan bukan?');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8616_orkestra, 'Orkestra', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8616_orkestra, 'かんげんがくだん', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8616_orkestra, '小さな管弦楽団でバイオリンを演奏しています。', 'Saya bermain biola di orkestra kecil.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8617_kerinduan, 'Kerinduan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8617_kerinduan, 'Kasih Sayang yang Mendalam', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8617_kerinduan, 'しぼ', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8617_kerinduan, '異国の地で、母への思慕を重ねています。', 'Berada di negara asing, saya selalu merindukan ibu saya.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8618_untuk_memuja, 'Untuk Memuja', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8618_untuk_memuja, 'Untuk Nona', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8618_untuk_memuja, 'Untuk Dirindukan', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8618_untuk_memuja, 'したう', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8618_untuk_memuja, '私は彼のことを兄のように慕っていました。', 'Aku memujanya seperti kakak laki-laki.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8619_emosi_yang_mendalam, 'Emosi yang Mendalam', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8619_emosi_yang_mendalam, 'Sangat Terharu', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8619_emosi_yang_mendalam, 'Dipenuhi Dengan Emosi', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8619_emosi_yang_mendalam, 'かんがいむりょう', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8619_emosi_yang_mendalam, 'あんなに小さかった娘の成長を見て、感慨無量でした。', 'Menyaksikan pertumbuhan putri kecil saya sungguh sangat emosional.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8620_sangat_mengharukan, 'Sangat Mengharukan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8620_sangat_mengharukan, 'Sangat Emosional', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8620_sangat_mengharukan, 'かんがいぶかい', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8620_sangat_mengharukan, '初めて自分の書いたものが出版されるのは、やっぱり感慨深いものがあります。', 'Ini adalah pertama kalinya tulisan saya diterbitkan, jadi tentu saja ini merupakan hal yang sangat mengharukan bagi saya.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8621_menggoda, 'Menggoda', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8621_menggoda, 'lelucon', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8621_menggoda, 'Perilaku Cabul', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8621_menggoda, 'いたずら', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8621_menggoda, '今子供達の間で流行っている悪戯ですよ。', 'Pranks sedang populer di kalangan anak-anak saat ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8621_menggoda, 'もう！悪戯するのはやめてください！', 'Ayo! Berhenti menggodaku!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8621_menggoda, '面白い悪戯のアイデアをヤフオクで販売して生計を立てています。', 'Saya mencari nafkah dengan menjual ide prank menarik di Yahoo! Lelang.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8622_mainkan_rayuan, 'Mainkan Rayuan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8622_mainkan_rayuan, 'Candaan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8622_mainkan_rayuan, 'Penggoda', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8622_mainkan_rayuan, 'たわむれ', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8622_mainkan_rayuan, '戯れに文章を綴っただけなのに、賞を獲ってしまった。', 'Meskipun saya hanya menulisnya sebagai lelucon, saya memenangkan penghargaan.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8623_menyiksa, 'Menyiksa', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8623_menyiksa, 'Rak', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8623_menyiksa, 'Gelar Ketiga', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8623_menyiksa, 'ごうもん', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8623_menyiksa, '俺の姉は、マフィアから残虐な拷問を受けたんだ。', 'Kakak perempuan saya disiksa secara brutal oleh mafia.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8624_yakin, 'Yakin', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8624_yakin, 'Satu', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8624_yakin, 'ぼう', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8624_yakin, '某私立高校に伝わる、奇妙な噂があるんだ。', 'Sebuah rumor aneh beredar di sebuah SMA swasta tertentu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8624_yakin, '優秀な人は成長できる場に行きたがるんで、「高い目標」を目指している企業には、良い人材が多いんです。逆に言うと、良い人が集まらない企業は、目標が低いんですよ…某社のように、ね。', 'Orang-orang berbakat mencari lingkungan di mana mereka dapat berkembang, sehingga perusahaan yang berusaha mencapai “tujuan luhur” memiliki banyak karyawan yang hebat. Sebaliknya, perusahaan yang tidak menarik staf yang baik mempunyai tujuan yang tidak ambisius… seperti perusahaan tertentu yang kita semua kenal.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8625_dermaga, 'Dermaga', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8625_dermaga, 'Dermaga', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8625_dermaga, 'さんばし', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8625_dermaga, '船は桟橋に繋いでいます。', 'Kapal diikat ke dermaga.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8626_mati_di_pos_seseorang, 'Mati Di Pos Seseorang', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8626_mati_di_pos_seseorang, 'Mati Saat Bertugas', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8626_mati_di_pos_seseorang, 'Mati di Pos Anda', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8626_mati_di_pos_seseorang, 'じゅんしょく', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8626_mati_di_pos_seseorang, 'その刑事は、銃弾を浴びて殉職しました。', 'Detektif itu terkena peluru dan meninggal di posnya.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8627_puntung_rokok, 'Puntung Rokok', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8627_puntung_rokok, 'Abu Tembakau', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8627_puntung_rokok, 'すいがら', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8627_puntung_rokok, '吸い殻が二本たまったら、すぐに灰皿を交換してください。', 'Jika ada dua puntung rokok yang menumpuk, harap segera kosongkan asbaknya.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8628_sekresi, 'Sekresi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8628_sekresi, 'Memulangkan', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8628_sekresi, 'ぶんぴつ', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8628_sekresi, '胃液は1日1～2Lも分泌されています。', 'Sekitar 1-2 liter cairan lambung disekresikan setiap hari.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8629_organ_kencing, 'Organ Kencing', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8629_organ_kencing, 'ひにょうき', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8629_organ_kencing, '泌尿器の病気で入院することになりました。', 'Saya dirawat di rumah sakit karena penyakit organ kemih.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8630_lembah, 'Lembah', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8630_lembah, 'Jurang', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8630_lembah, 'Ngarai', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8630_lembah, 'けいこく', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8630_lembah, '温泉湯舎から渓谷美を一望することができます。', 'Kita bisa melihat lembah yang indah dari pemandian onsen.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8631_aliran_gunung, 'Aliran Gunung', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8631_aliran_gunung, 'けいりゅう', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8631_aliran_gunung, 'ラフティングで渓流を下りました。', 'Kami pergi arung jeram menyusuri aliran gunung.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8634_akhirnya, 'Akhirnya', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8634_akhirnya, 'Akhirnya', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8634_akhirnya, 'Nyaris', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8634_akhirnya, 'Hampir tidak', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8634_akhirnya, 'ようやく', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8634_akhirnya, '漸く作家としてのスタートラインに立つことができました。', 'Saya akhirnya bisa melewati garis start sebagai penulis.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8635_menjadi_berlumpur, 'Menjadi Berlumpur', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8635_menjadi_berlumpur, 'Menjadi Tidak Murni', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8635_menjadi_berlumpur, 'Menjadi Berawan', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8635_menjadi_berlumpur, 'にごる', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8635_menjadi_berlumpur, '煙草の煙で部屋の空気が濁っています。', 'Udara di dalam ruangan semakin keruh karena asap tembakau.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8636_bising, 'Bising', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8636_bising, 'Keras', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8636_bising, 'Mengganggu', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8636_bising, 'うるさい', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8636_bising, '彼がポテトチップスを食べる音が煩くて苛々します。', 'Suara dia sedang makan keripik kentang terdengar keras dan mengganggu.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8637_kompleks, 'Kompleks', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8637_kompleks, 'Rumit', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8637_kompleks, 'Rumit', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8637_kompleks, 'はんざつ', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8637_kompleks, '煩雑な手続きに苛々します。', 'Saya kesal dengan formalitas yang rumit.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8638_sibuk, 'Sibuk', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8638_sibuk, 'はんぼう', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8638_sibuk, '日々の煩忙から逃れ、ハワイにやって来ました。', 'Saya melarikan diri dari kesibukan sehari-hari saya dan datang ke Hawaii.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8639_tepi_danau, 'Tepi Danau', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8639_tepi_danau, 'こはん', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8639_tepi_danau, '夏は、静かな湖畔のロッジで読書をしています。', 'Di musim panas saya membaca di penginapan tepi danau yang tenang.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8640_diare, 'Diare', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8640_diare, 'Diare', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8640_diare, 'げり', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8640_diare, '朝から下痢が止まりません。', 'Diarenya belum berhenti sejak pagi.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8641_disentri, 'Disentri', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8641_disentri, 'せきり', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8641_disentri, '男女計5人から細菌性の赤痢が検出されました。', 'Bakteri disentri terdeteksi pada lima pria dan wanita.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8642_koreksi, 'Koreksi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8642_koreksi, 'Memperbaiki', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8642_koreksi, 'きょうせい', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8642_koreksi, '歯の矯正をしていました。', 'Saya telah memperbaiki gigi saya.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8643_sulfur, 'Sulfur', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8643_sulfur, 'Sulfur', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8643_sulfur, 'いおう', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8643_sulfur, 'この温泉には硫黄が含まれています。', 'Ada belerang di sumber air panas ini.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8644_pemecatan, 'Pemecatan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8644_pemecatan, 'Memulangkan', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8644_pemecatan, 'ひめん', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8644_pemecatan, 'あの大臣は罷免されたよ。', 'Menteri kabinet itu diberhentikan.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8645_nila, 'Nila', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8645_nila, 'あい', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8645_nila, '藍染の藍は天然ですが、ジーンズに使われる合成インディゴは人工的なものです。', 'Pewarna tanaman indigo merupakan pewarna alami, namun pewarna sintetis yang digunakan untuk jeans adalah pewarna buatan.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8646_rumput_laut, 'Rumput laut', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8646_rumput_laut, 'rumput bebek', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8646_rumput_laut, 'ganggang', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8646_rumput_laut, 'も', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8646_rumput_laut, '藻が絡まってしまったみたいだ。', 'Duckweed tampaknya dipelintir.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8647_rumput_laut, 'Rumput laut', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8647_rumput_laut, 'かいそう', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8647_rumput_laut, 'この海藻は食べられますか。', 'Bisakah kamu makan rumput laut ini?');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8648_liar, 'Liar', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8648_liar, 'Biadab', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8648_liar, 'Biadab', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8648_liar, 'やばん', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8648_liar, 'そんな野蛮な人たちと付き合ってはいけません。', 'Anda tidak boleh bergaul dengan orang-orang biadab seperti itu.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8649_orang_barbar_selatan, 'Orang Barbar Selatan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8649_orang_barbar_selatan, 'Nanban', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8649_orang_barbar_selatan, 'なんばん', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8649_orang_barbar_selatan, 'チキン南蛮の簡単でおいしいレシピがあれば教えてください。', 'Jika Anda memiliki resep ayam nanban yang enak dan sederhana, beri tahu saya.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8650_barbarisme, 'Barbarisme', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8650_barbarisme, 'Kebrutalan', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8650_barbarisme, 'ばんこう', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8650_barbarisme, 'あいつらはそこで蛮行を繰り返しているんだ。', 'Mereka mengulangi kebrutalan di sana.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8651_selamat_tahun_baru, 'Selamat tahun baru', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8651_selamat_tahun_baru, 'Selamat tahun baru!', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8651_selamat_tahun_baru, 'きんがしんねん', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8651_selamat_tahun_baru, '年賀状には謹賀新年と書いてありました。', 'Selamat tahun baru! tertulis di kartu Tahun Baru.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8652_tanpa_henti, 'Tanpa henti', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8652_tanpa_henti, 'Tanpa ampun', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8652_tanpa_henti, 'ようしゃなく', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8652_tanpa_henti, '父は弟を容赦なく殴りつけました。', 'Ayah tanpa henti memukuli adik laki-laki saya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8652_tanpa_henti, '時は容赦なく流れていた。それでも老いた匠の手には、まだ何の迷いもなかった。', 'Waktu telah berlalu tanpa ampun, namun tangan pengrajin tua itu tetap tidak menunjukkan keraguan.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8653_kematian, 'Kematian', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8653_kematian, 'せいきょ', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8653_kematian, '社長の逝去は本当に大きなショックです。', 'Kematian presiden perusahaan merupakan kejutan yang sangat besar.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8654_jelek, 'Jelek', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8654_jelek, 'Kurang menarik', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8654_jelek, 'Tidak sedap dipandang', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8654_jelek, 'Tidak pantas', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8654_jelek, 'みにくい', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8654_jelek, 'あの女は、顔は美しいが心は醜い。', 'Wajah wanita itu cantik tapi hatinya jelek.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8655_jelek, 'Jelek', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8655_jelek, 'Berarti', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8655_jelek, 'Menyinggung', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8655_jelek, 'しゅうあく', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8655_jelek, '「被害者たたき」ってほんと醜悪だよね。', 'Menyalahkan korban sungguh buruk, bukan?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8655_jelek, '「醜悪な文章は健全なディベートの害になるか」というテーマの研究を行っています。', 'Saya sedang melakukan penelitian dengan topik, "Apakah tulisan yang menyinggung merugikan perdebatan yang sehat?"');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8655_jelek, '老婆の幽霊が、醜悪な顔でこちらをにらんでいた。', 'Hantu wanita tua itu menatapku dengan wajah jeleknya.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8656_pemandangan_memalukan, 'Pemandangan Memalukan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8656_pemandangan_memalukan, 'Perilaku Tercela', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8656_pemandangan_memalukan, 'しゅうたい', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8656_pemandangan_memalukan, 'あんな醜態を演じたのに、よく平気な顔で会社に行けるね。', 'Bagaimana Anda bisa pergi bekerja tanpa peduli pada dunia setelah perilaku tercela seperti itu?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8656_pemandangan_memalukan, 'とんだ醜態を晒してしまったよ。', 'Mereka dihadapkan pada pemandangan yang sangat memalukan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8656_pemandangan_memalukan, '好きな子に醜態を見られたし、悲しみしかない。', 'Seorang gadis yang kusuka melihat kelakuanku yang tercela dan aku tidak bisa merasakan apa pun selain kesedihan.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8657_skandal, 'Skandal', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8657_skandal, 'しゅうぶん', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8657_skandal, '誰がこんな根も葉もない醜聞を流したんだ。', 'Siapa yang menyebarkan skandal yang tidak benar ini?');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8853_busur, 'Busur', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8853_busur, 'こうとう', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8853_busur, '叩頭とは、いわゆる日本の土下座のことです。', '"Kowtow" adalah apa yang disebut "dogeza" di Jepang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8853_busur, '部屋の中にいた全員が、王に向かって叩頭した。', 'Semua orang di ruangan itu berlutut dan membungkuk kepada raja, sambil menempelkan dahi mereka ke lantai.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8853_busur, '中国の時代劇を見ている日本人以外は、「叩頭」という言葉はほとんど知らないかもしれませんね。', 'Selain masyarakat Jepang yang menonton drama sejarah Tiongkok, sebagian besar masyarakat Jepang mungkin belum familiar dengan istilah "kowtow".');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8901_pemimpin, 'Pemimpin', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8901_pemimpin, 'Bos', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8901_pemimpin, 'Ketua', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8901_pemimpin, 'りょうしゅう', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8901_pemimpin, '領袖の言うことは絶対だ。', 'Apa yang dikatakan atasan adalah mutlak.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8901_pemimpin, 'その政治家こそが、党の領袖だ。', 'Politisi itu adalah pemimpin partai.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8901_pemimpin, '「領袖」と言う言葉は、現代では、政治的に使われることが多い。', 'Saat ini, kata “pemimpin” cenderung digunakan dalam arti politik.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9013_pluto, 'Pluto', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_9013_pluto, 'めいおうせい', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9013_pluto, '冥王星の軌道は不規則で、太陽を一周する期間は約２５０年です。', 'Orbit Pluto tidak teratur, dan dibutuhkan waktu sekitar 250 tahun untuk sekali mengelilingi matahari.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9013_pluto, '冥王星は天文学者クライド・トンボーによって、1930年２月18日に発見された。', 'Pluto ditemukan pada 18 Februari 1930 oleh astronom Clyde Tombaugh.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9013_pluto, '冥王星が惑星から準惑星に降格された理由を説明できますか？', 'Bisakah Anda menjelaskan mengapa Pluto diturunkan dari planet menjadi planet kerdil?');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9014_neraka, 'Neraka', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9014_neraka, 'neraka', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9014_neraka, 'Alam Orang Mati', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_9014_neraka, 'めいかい', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9014_neraka, '冥界に入れるのは死者の魂だけだ。', 'Hanya jiwa orang mati yang bisa masuk ke dunia bawah.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9014_neraka, 'ヘカテーは、ギリシャ神話に出てくる冥界の女神です。', 'Hecate adalah dewi dunia bawah dalam mitologi Yunani.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9014_neraka, '冥界から、冥界神のメッセージが聞こえる。', 'Saya bisa mendengar pesan dari dewa dunia bawah datang dari alam kematian.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9015_alam_orang_mati, 'Alam Orang Mati', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9015_alam_orang_mati, 'Neraka', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9015_alam_orang_mati, 'neraka', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_9015_alam_orang_mati, 'めいど', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9015_alam_orang_mati, 'どんなにお金を稼いでも、冥土には持っていけないんだよ。', 'Tidak peduli berapa banyak uang yang Anda hasilkan, Anda tidak dapat membawanya ke dunia bawah.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9015_alam_orang_mati, '「冥土の土産に教えてやるよ。」と、男は銃を構えたまま秘密を話し始めた。', '“Aku akan memberitahumu sesuatu yang akan menjadi kenang-kenanganmu di dunia orang mati” kata pria itu, dan mulai memberitahuku rahasianya, sambil tetap mengarahkan senjatanya ke arahku.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9015_alam_orang_mati, '仏衣や死化粧などの冥土の旅支度をして、故人は来世へと向かいます。', 'Setelah mempersiapkan perjalanan ke dunia bawah dengan mendandani jenazah dengan jubah Buddha dan merias wajah almarhum, mereka akan melanjutkan ke kehidupan selanjutnya.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9116_untuk_minum_bersama, 'Untuk Minum Bersama', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9116_untuk_minum_bersama, 'Untuk Saling Menuangkan Minuman', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_9116_untuk_minum_bersama, 'くみかわす', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9116_untuk_minum_bersama, 'あの日、ここで酒を酌み交わしたこと、覚えているか。', 'Apakah kamu ingat hari saat kita minum sake bersama di sini?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9116_untuk_minum_bersama, 'そして、二人は杯を酌み交わし、兄弟の誓いを立てた。', 'Kemudian mereka saling menuangkan minuman dan meminumnya sebagai tanda sumpah persaudaraan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9116_untuk_minum_bersama, 'いつか、親子で酒を酌み交わす日が来るのかなあ。', 'Saya ingin tahu apakah suatu hari nanti kita bisa berbagi minuman bersama keluarga.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9117_untuk_menulis, 'Untuk Menulis', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9117_untuk_menulis, 'Untuk Membaca', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9117_untuk_menulis, 'Bernyanyi', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_9117_untuk_menulis, 'うたう', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9117_untuk_menulis, 'これは、彼が恋人のために詠った愛の詩です。', 'Ini adalah puisi cinta yang dia buat untuk pacarnya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9117_untuk_menulis, 'この叙事詩では、壮大なロマンが詠われている。', 'Dalam puisi epik ini, kisah romantis yang agung dibacakan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9117_untuk_menulis, '彼女はいつも、詠うように言葉を紡いだ。', 'Dia selalu memutar kata-katanya seolah sedang menulis puisi.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9121_seseorang_atau_lainnya, 'Seseorang atau Lainnya', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9121_seseorang_atau_lainnya, 'Kamu-Tahu-Siapa', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9121_seseorang_atau_lainnya, 'Sesuatu', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_9121_seseorang_atau_lainnya, 'なにがし', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9121_seseorang_atau_lainnya, 'これは、山田某の話である。', 'Ini adalah kisah Yamada seseorang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9121_seseorang_atau_lainnya, 'たしか、鈴木某とかいう人じゃなかったっけ？', 'Bukankah itu pria bernama Suzuki?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9121_seseorang_atau_lainnya, 'あそこの劇団の某がまた何かやらかしたらしいぞ。', 'Kudengar kau-tahu-siapa dari grup drama itu yang melakukannya lagi.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9122_negara_tertentu, 'Negara Tertentu', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_9122_negara_tertentu, 'ぼうこく', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9122_negara_tertentu, '日本に留学生を多く送りこんでいる某国で教えています。', 'Saya mengajar di negara yang banyak mengirimkan pertukaran pelajar ke Jepang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9122_negara_tertentu, '梓川さんは派遣員として某国大使館に勤めていました。', 'Azusagawa-san bekerja sebagai pegawai sementara di kedutaan negara tertentu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9122_negara_tertentu, '菅原沙羅が某国のスパイであるという嫌疑はぬぐえません。', 'Kita tidak bisa menghilangkan kecurigaan bahwa Sara Sugawara adalah mata-mata suatu negara.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9123_tempat_tertentu, 'Tempat Tertentu', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_9123_tempat_tertentu, 'ぼうしょ', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9123_tempat_tertentu, '栃木県の某所で行われたイベントに行ってきました。', 'Saya pergi ke sebuah acara yang diadakan di suatu tempat di Prefektur Tochigi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9123_tempat_tertentu, '昨夜、某所にて、有名人による太鼓の演奏会が行われたようです。', 'Tadi malam ada pertunjukan taiko yang dibawakan oleh seorang selebritis di suatu tempat.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9123_tempat_tertentu, '彼女と出会ったのは、都内某所の居酒屋で食事をしている時だった。', 'Saya sedang makan di izakaya di suatu tempat di Tokyo ketika saya bertemu pacar saya.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9124_orang_tertentu, 'Orang Tertentu', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_9124_orang_tertentu, 'ぼうし', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9124_orang_tertentu, '審査員の某氏に会いました。', 'Saya bertemu dengan salah satu juri.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9124_orang_tertentu, '社長に近い立場の某氏は、「難しい状況にしてしまった」とコメントしている。', 'Seseorang yang dekat dengan presiden berkomentar, "Kami menempatkan diri kami dalam situasi yang sulit".');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9124_orang_tertentu, '「こういちはいつか世界を征服する」と某氏が語っていた。', 'Seseorang memberitahuku bahwa Koichi akan menaklukkan dunia suatu hari nanti.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9334_menyewa, 'Menyewa', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_9334_menyewa, 'れんと', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9334_menyewa, 'ごめん、その日は漣斗と遊ぶ予定なんだ。', 'Maaf, aku berencana jalan-jalan dengan Rento hari itu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9334_menyewa, '漣斗のやつ、家賃払えなくて追い出されたんだって。', 'Saya mendengar Rento tidak bisa membayar sewa dan diusir.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9334_menyewa, '漣斗くんの「漣」って漢字、「さざなみ」って意味なんだね！知らなかった。', 'Rento-kun, aku tidak tahu kalau kanji "漣" di namamu berarti "riak"!');

  -- 4. PREREQUISITES
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_1971_rumah_bangsawan, id FROM items WHERE character = '广' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_1971_rumah_bangsawan, id FROM items WHERE character = '土' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2347_artikel, id FROM items WHERE character = '士' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2347_artikel, id FROM items WHERE character = '示' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2347_artikel, id FROM items WHERE character = '欠' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2398_riak, id FROM items WHERE character = '氵' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2398_riak, id FROM items WHERE character = '⻌' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2398_riak, id FROM items WHERE character = '車' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2435_mati, id FROM items WHERE character = '⻌' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2435_mati, id FROM items WHERE character = '扌' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2435_mati, id FROM items WHERE character = '斤' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2436_bersembunyi, id FROM items WHERE character = '匚' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2436_bersembunyi, id FROM items WHERE character = '艹' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2436_bersembunyi, id FROM items WHERE character = '右' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2437_janda, id FROM items WHERE character = '宀' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2437_janda, id FROM items WHERE character = '頁' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2437_janda, id FROM items WHERE character = '一' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2437_janda, id FROM items WHERE character = '刀' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2438_diare, id FROM items WHERE character = '疒' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2438_diare, id FROM items WHERE character = '禾' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2438_diare, id FROM items WHERE character = '刂' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2439_lubang, id FROM items WHERE character = '土' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2439_lubang, id FROM items WHERE character = '亠' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2439_lubang, id FROM items WHERE character = '几' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2440_nila, id FROM items WHERE character = '艹' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2440_nila, id FROM items WHERE character = '監' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2441_pantai, id FROM items WHERE character = '田' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2441_pantai, id FROM items WHERE character = '半' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2442_lagu_shamisen, id FROM items WHERE character = '口' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2442_lagu_shamisen, id FROM items WHERE character = '貝' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2443_menyiksa, id FROM items WHERE character = '扌' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2443_menyiksa, id FROM items WHERE character = '耂' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2443_menyiksa, id FROM items WHERE character = '/radicals/beggar.svg' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2444_lembah, id FROM items WHERE character = '氵' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2444_lembah, id FROM items WHERE character = '⺤' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2444_lembah, id FROM items WHERE character = '夫' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2445_tawar_menawar, id FROM items WHERE character = '广' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2445_tawar_menawar, id FROM items WHERE character = '兼' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2446_rendah_hati, id FROM items WHERE character = '言' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2446_rendah_hati, id FROM items WHERE character = '堇' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2448_jelek, id FROM items WHERE character = '酉' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2448_jelek, id FROM items WHERE character = '鬼' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2449_jaringan, id FROM items WHERE character = '丿' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2449_jaringan, id FROM items WHERE character = '廾' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2450_martir, id FROM items WHERE character = '歹' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2450_martir, id FROM items WHERE character = '勹' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2450_martir, id FROM items WHERE character = '日' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2451_mengganggu, id FROM items WHERE character = '火' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2451_mengganggu, id FROM items WHERE character = '頁' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2452_mengecam, id FROM items WHERE character = '亥' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2452_mengecam, id FROM items WHERE character = '力' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2453_dermaga, id FROM items WHERE character = '木' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2453_dermaga, id FROM items WHERE character = '㦮' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2454_pengantin_pria, id FROM items WHERE character = '女' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2454_pengantin_pria, id FROM items WHERE character = '疋' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2454_pengantin_pria, id FROM items WHERE character = '月' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2455_merindukan, id FROM items WHERE character = '莫' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2455_merindukan, id FROM items WHERE character = '小' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2455_merindukan, id FROM items WHERE character = '丶' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2456_berhenti, id FROM items WHERE character = '罒' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2456_berhenti, id FROM items WHERE character = '能' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2457_benar, id FROM items WHERE character = '矢' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2457_benar, id FROM items WHERE character = '天' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2457_benar, id FROM items WHERE character = '口' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2457_benar, id FROM items WHERE character = '冋' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2458_yakin, id FROM items WHERE character = '甘' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2458_yakin, id FROM items WHERE character = '木' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2460_mengeluarkan, id FROM items WHERE character = '氵' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2460_mengeluarkan, id FROM items WHERE character = '必' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2461_perlahan_lahan, id FROM items WHERE character = '氵' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2461_perlahan_lahan, id FROM items WHERE character = '車' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2461_perlahan_lahan, id FROM items WHERE character = '斤' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2462_rumput_laut, id FROM items WHERE character = '艹' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2462_rumput_laut, id FROM items WHERE character = '氵' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2462_rumput_laut, id FROM items WHERE character = '喿' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2463_ceroboh, id FROM items WHERE character = '亡' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2463_ceroboh, id FROM items WHERE character = '女' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2464_barbar, id FROM items WHERE character = '亦' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2464_barbar, id FROM items WHERE character = '虫' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2465_hemat, id FROM items WHERE character = 'ｲ' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2465_hemat, id FROM items WHERE character = '㑒' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_9012_neraka, id FROM items WHERE character = '冖' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_9012_neraka, id FROM items WHERE character = '日' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_9012_neraka, id FROM items WHERE character = '亠' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_9012_neraka, id FROM items WHERE character = 'ハ' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_2734_permisi, id FROM items WHERE character = '申' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7040_rumah_bangsawan, k_1971_rumah_bangsawan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7040_rumah_bangsawan, id FROM items WHERE character = '園' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7242_kepala, id FROM items WHERE character = '首' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7242_kepala, id FROM items WHERE character = '班' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8378_anggaran_dasar, id FROM items WHERE character = '定' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8378_anggaran_dasar, k_2347_artikel);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8379_perjanjian, id FROM items WHERE character = '約' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8379_perjanjian, k_2347_artikel);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8579_untuk_mencemooh, id FROM items WHERE character = '蔑' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8594_penghematan, k_2465_hemat);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8594_penghematan, id FROM items WHERE character = '約' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8595_anatomi, id FROM items WHERE character = '解' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8595_anatomi, id FROM items WHERE character = '剖' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8595_anatomi, id FROM items WHERE character = '学' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8596_pelengseran, id FROM items WHERE character = '弾' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8596_pelengseran, k_2452_mengecam);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8597_bersembunyi, id FROM items WHERE character = '隠' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8597_bersembunyi, k_2436_bersembunyi);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8598_anonimitas, k_2436_bersembunyi);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8598_anonimitas, id FROM items WHERE character = '名' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8599_jaringan, k_2449_jaringan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8600_persegi, k_2449_jaringan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8600_persegi, id FROM items WHERE character = '目' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8601_lagu, k_2442_lagu_shamisen);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8602_bernyanyi, k_2442_lagu_shamisen);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8603_lagu_shamisen_panjang, id FROM items WHERE character = '長' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8603_lagu_shamisen_panjang, k_2442_lagu_shamisen);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8606_terowongan, k_2439_lubang);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8606_terowongan, id FROM items WHERE character = '道' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8607_khayalan, k_2463_ceroboh);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8607_khayalan, id FROM items WHERE character = '想' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8608_suami, k_2454_pengantin_pria);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8609_mempelai, id FROM items WHERE character = '花' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8609_mempelai, k_2454_pengantin_pria);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8610_menantu, id FROM items WHERE character = '娘' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8610_menantu, k_2454_pengantin_pria);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8611_janda, k_2437_janda);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8611_janda, id FROM items WHERE character = '婦' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8612_diam, k_2437_janda);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8612_diam, id FROM items WHERE character = '黙' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8613_perahu_layar, id FROM items WHERE character = '帆' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8613_perahu_layar, id FROM items WHERE character = '船' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8614_tiang_kapal, id FROM items WHERE character = '帆' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8614_tiang_kapal, id FROM items WHERE character = '柱' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8615_harga_rendah, k_2445_tawar_menawar);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8615_harga_rendah, id FROM items WHERE character = '価' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8616_orkestra, id FROM items WHERE character = '管' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8616_orkestra, id FROM items WHERE character = '弦' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8616_orkestra, id FROM items WHERE character = '楽' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8616_orkestra, id FROM items WHERE character = '団' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8617_kerinduan, id FROM items WHERE character = '思' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8617_kerinduan, k_2455_merindukan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8618_untuk_memuja, k_2455_merindukan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8619_emosi_yang_mendalam, id FROM items WHERE character = '感' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8619_emosi_yang_mendalam, id FROM items WHERE character = '慨' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8619_emosi_yang_mendalam, id FROM items WHERE character = '無' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8619_emosi_yang_mendalam, id FROM items WHERE character = '量' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8620_sangat_mengharukan, id FROM items WHERE character = '感' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8620_sangat_mengharukan, id FROM items WHERE character = '慨' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8620_sangat_mengharukan, id FROM items WHERE character = '深' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8621_menggoda, id FROM items WHERE character = '悪' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8621_menggoda, id FROM items WHERE character = '戯' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8622_mainkan_rayuan, id FROM items WHERE character = '戯' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8623_menyiksa, k_2443_menyiksa);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8623_menyiksa, id FROM items WHERE character = '問' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8624_yakin, k_2458_yakin);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8625_dermaga, k_2453_dermaga);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8625_dermaga, id FROM items WHERE character = '橋' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8626_mati_di_pos_seseorang, k_2450_martir);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8626_mati_di_pos_seseorang, id FROM items WHERE character = '職' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8627_puntung_rokok, id FROM items WHERE character = '吸' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8627_puntung_rokok, id FROM items WHERE character = '殻' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8628_sekresi, id FROM items WHERE character = '分' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8628_sekresi, k_2460_mengeluarkan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8629_organ_kencing, k_2460_mengeluarkan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8629_organ_kencing, id FROM items WHERE character = '尿' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8629_organ_kencing, id FROM items WHERE character = '器' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8630_lembah, k_2444_lembah);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8630_lembah, id FROM items WHERE character = '谷' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8631_aliran_gunung, k_2444_lembah);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8631_aliran_gunung, id FROM items WHERE character = '流' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8634_akhirnya, k_2461_perlahan_lahan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8635_menjadi_berlumpur, id FROM items WHERE character = '濁' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8636_bising, k_2451_mengganggu);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8637_kompleks, k_2451_mengganggu);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8637_kompleks, id FROM items WHERE character = '雑' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8638_sibuk, k_2451_mengganggu);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8638_sibuk, id FROM items WHERE character = '忙' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8639_tepi_danau, id FROM items WHERE character = '湖' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8639_tepi_danau, k_2441_pantai);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8640_diare, id FROM items WHERE character = '下' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8640_diare, k_2438_diare);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8641_disentri, id FROM items WHERE character = '赤' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8641_disentri, k_2438_diare);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8642_koreksi, k_2457_benar);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8642_koreksi, id FROM items WHERE character = '正' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8643_sulfur, id FROM items WHERE character = '硫' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8643_sulfur, id FROM items WHERE character = '黄' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8644_pemecatan, k_2456_berhenti);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8644_pemecatan, id FROM items WHERE character = '免' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8645_nila, k_2440_nila);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8646_rumput_laut, k_2462_rumput_laut);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8647_rumput_laut, id FROM items WHERE character = '海' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8647_rumput_laut, k_2462_rumput_laut);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8648_liar, id FROM items WHERE character = '野' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8648_liar, k_2464_barbar);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8649_orang_barbar_selatan, id FROM items WHERE character = '南' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8649_orang_barbar_selatan, k_2464_barbar);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8650_barbarisme, k_2464_barbar);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8650_barbarisme, id FROM items WHERE character = '行' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8651_selamat_tahun_baru, k_2446_rendah_hati);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8651_selamat_tahun_baru, id FROM items WHERE character = '賀' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8651_selamat_tahun_baru, id FROM items WHERE character = '新' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8651_selamat_tahun_baru, id FROM items WHERE character = '年' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8652_tanpa_henti, id FROM items WHERE character = '容' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8652_tanpa_henti, id FROM items WHERE character = '赦' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8653_kematian, k_2435_mati);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8653_kematian, id FROM items WHERE character = '去' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8654_jelek, k_2448_jelek);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8655_jelek, k_2448_jelek);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8655_jelek, id FROM items WHERE character = '悪' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8656_pemandangan_memalukan, k_2448_jelek);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8656_pemandangan_memalukan, id FROM items WHERE character = '態' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8657_skandal, k_2448_jelek);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8657_skandal, id FROM items WHERE character = '聞' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8853_busur, id FROM items WHERE character = '叩' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8853_busur, id FROM items WHERE character = '頭' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8901_pemimpin, id FROM items WHERE character = '領' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8901_pemimpin, id FROM items WHERE character = '袖' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_9013_pluto, k_9012_neraka);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_9013_pluto, id FROM items WHERE character = '王' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_9013_pluto, id FROM items WHERE character = '星' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_9014_neraka, k_9012_neraka);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_9014_neraka, id FROM items WHERE character = '界' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_9015_alam_orang_mati, k_9012_neraka);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_9015_alam_orang_mati, id FROM items WHERE character = '土' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_9116_untuk_minum_bersama, id FROM items WHERE character = '酌' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_9116_untuk_minum_bersama, id FROM items WHERE character = '交' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_9117_untuk_menulis, id FROM items WHERE character = '詠' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_9121_seseorang_atau_lainnya, k_2458_yakin);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_9122_negara_tertentu, k_2458_yakin);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_9122_negara_tertentu, id FROM items WHERE character = '国' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_9123_tempat_tertentu, k_2458_yakin);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_9123_tempat_tertentu, id FROM items WHERE character = '所' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_9124_orang_tertentu, k_2458_yakin);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_9124_orang_tertentu, id FROM items WHERE character = '氏' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_9334_menyewa, k_2398_riak);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_9334_menyewa, id FROM items WHERE character = '斗' LIMIT 1;

END $$;