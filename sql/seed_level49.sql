-- ====================================================
-- KaniGani — Seed Data Level 49 (v2, relasional)
-- Auto-generated with Indonesian Slugs
-- ====================================================

DO $$
DECLARE
  -- ============ RADICAL IDs (Level 49) ============
  r_406_kali UUID; r_407_perangkap_kepiting UUID; r_8857_liar UUID;
  -- ============ KANJI IDs (Level 49) ============
  k_2050_bidak_catur UUID; k_2052_ekstrak UUID; k_2053_sumpah UUID; k_2054_menyadari UUID; k_2055_penanaman UUID; k_2056_menangkap UUID; k_2057_dasar UUID; k_2058_derek UUID; k_2059_memangkas UUID; k_2060_kokoh UUID; k_2061_semata_mata UUID; k_2062_mimbar UUID; k_2063_biarawati UUID; k_2064_perkiraan UUID; k_2065_tenggelam UUID; k_2066_pingsan UUID; k_2067_mendidihkan UUID; k_2068_terbalik UUID; k_2069_bersekongkol UUID; k_2070_tembikar UUID; k_2071_memisahkan UUID; k_2072_menundukkan UUID; k_2073_kebesaran UUID; k_2074_vulgar UUID; k_2075_murbai UUID; k_2076_disiram UUID; k_2077_mutiara UUID; k_2078_menolak UUID; k_2079_mendorong UUID; k_2080_rendah_diri UUID; k_2081_intuisi UUID; k_2082_permaisuri_kerajaan UUID; k_2203_semi UUID; k_8881_bingung UUID; k_8913_menendang UUID;
  -- ============ VOCABULARY IDs (Level 49) ============
  v_4519_nilai UUID; v_6995_pendapatan_tahunan UUID; v_7257_nilai_mata_uang UUID; v_7258_keremangan UUID; v_7259_perembesan UUID; v_7260_keadaan_lengket UUID; v_7261_nenek UUID; v_7262_penuh_kebencian UUID; v_7263_kebencian UUID; v_7264_penuh_kebencian UUID; v_7265_kipas_lipat UUID; v_7266_penggemar UUID; v_7267_untuk_menyisipkan UUID; v_7268_bidak_catur UUID; v_7272_abstraksi UUID; v_7273_lotere UUID; v_7274_ekstraksi UUID; v_7275_sumpah UUID; v_7276_sumpah UUID; v_7281_untuk_menyadari UUID; v_7282_kesiapan_mental UUID; v_7283_reklamasi UUID; v_7284_penahanan UUID; v_7285_dasar UUID; v_7286_dasar UUID; v_7287_derek UUID; v_7288_untuk_memangkas UUID; v_7289_memotong UUID; v_7290_untuk_memotong UUID; v_7291_semangat UUID; v_7292_semata_mata UUID; v_7293_hanya UUID; v_7294_materialisme UUID; v_7295_mimbar UUID; v_7296_tempat_tidur_bunga UUID; v_7297_altar_buddha UUID; v_7298_biarawati UUID; v_7299_biarawati UUID; v_7300_semangat_yang_kuat UUID; v_7301_perkiraan UUID; v_7302_ide_umum UUID; v_7303_garis_besar UUID; v_7304_umumnya UUID; v_7305_tanpa_syarat UUID; v_7306_untuk_direndam UUID; v_7307_perendaman UUID; v_7308_erosi UUID; v_7309_pingsan UUID; v_7310_air_tawar UUID; v_7311_untuk_merebus_sesuatu UUID; v_7312_hidangan_tahun_baru UUID; v_7313_makanan_rebus UUID; v_7314_akan_dibalik UUID; v_7315_masker UUID; v_7316_terbalik UUID; v_7317_untuk_berkonspirasi UUID; v_7318_ceroboh UUID; v_7319_konspirasi UUID; v_7320_tembikar UUID; v_7321_seni_keramik UUID; v_7322_isolasi UUID; v_7323_setiap_minggu_lainnya UUID; v_7324_ruang_angkasa UUID; v_7325_setiap_bulan_lainnya UUID; v_7326_untuk_mengisolasi UUID; v_7327_ekspedisi UUID; v_7328_penaklukan UUID; v_7329_yang_mulia UUID; v_7330_slang UUID; v_7331_adat_istiadat_rakyat UUID; v_7332_slang UUID; v_7333_murbai UUID; v_7335_ladang_murbei UUID; v_7336_menjadi_lembab UUID; v_7337_laba UUID; v_7338_rosario UUID; v_7339_perhitungan_dengan_sempoa UUID; v_7340_mutiara UUID; v_7341_untuk_menolak UUID; v_7342_kepikunan UUID; v_7343_menolak UUID; v_7344_rekomendasi UUID; v_7345_beasiswa UUID; v_7346_kemerosotan UUID; v_7347_rendah_diri UUID; v_7348_rasa_rendah_diri UUID; v_7349_menjadi_lebih_rendah_dari UUID; v_7350_intuisi UUID; v_7351_mempertimbangkan UUID; v_7352_maaf UUID; v_7353_membagi_biaya UUID; v_7354_salah_paham UUID; v_7355_ratu UUID; v_7357_putri UUID; v_7433_sakit_hati UUID; v_7434_sayang_sekali UUID; v_7435_istirahat UUID; v_7443_penipu UUID; v_7446_distrik_lampu_merah UUID; v_7447_tempat_istirahat UUID; v_8890_menjadi_panik UUID; v_8892_panik UUID; v_8920_untuk_menendang UUID; v_8921_untuk_menendang UUID; v_8941_untuk_dimasak UUID; v_8948_akan_dihancurkan UUID; v_9285_profesor_madya UUID;

BEGIN

  DELETE FROM items WHERE level = 49;

  -- 1. RADICALS
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '回', 'kali', 49, 1, 'Radikal ini sama dengan kanji. Artinya <radikal>kali</radikal>.')
    RETURNING id INTO r_406_kali;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '甚', 'perangkap-kepiting', 49, 2, 'Radikal ini terlihat seperti binatang kecil (匹) yang ada kepiting (其) yang mencuat di dalamnya. Seringkali ketika seekor kepiting sedang memakan hewan kecil, hewan kecil tersebut dimasukkan ke dalam perangkap kepiting untuk menangkap kepiting tersebut, dan memikatnya bersama hewan kecil tersebut. Itu sebabnya radikal ini adalah <radikal>perangkap kepiting</radikal>.')
    RETURNING id INTO r_407_perangkap_kepiting;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '荒', 'liar', 49, 3, 'Radikal ini sama dengan kanji. Artinya <radikal>liar</radikal>.')
    RETURNING id INTO r_8857_liar;
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_406_kali, 'Kali', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_407_perangkap_kepiting, 'Perangkap Kepiting', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_8857_liar, 'Liar', true, true);

  -- 2. KANJIS
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '駒', 'bidak-catur', 49, 4, '<radical>Kuda</radikal> yang dapat menulis <radikal>paragraf</radikal> akan menjadi <kanji>bidak catur</kanji>. Hanya kuda yang paling terpelajar yang dipilih menjadi bidak catur. Bidak catur ksatria diwakili oleh seekor kuda, dan agar seekor kuda dapat memperoleh kehormatan ini, mereka harus terlebih dahulu menulis paragraf yang menjelaskan mengapa mereka pantas mendapatkan kehormatan tersebut.', 'Setelah diberitahu bahwa dia tidak akan pernah menjadi <kanji>bidak catur</kanji>, kuda itu mengalami <reading>koma</reading> (こま). Kuda itu tidak akan pernah terbangun dari komanya karena dia tahu dia tidak akan pernah mewujudkan mimpinya menjadi bidak catur, jadi dia tidak punya tujuan hidup.')
    RETURNING id INTO k_2050_bidak_catur;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '抽', 'ekstrak', 49, 5, '<radical>jari</radical> Anda memberi Anda <radical>alasan</radical> yang bagus untuk <kanji>mengekstraksi</kanji> sesuatu. Anda mengekstrak jus dari buah-buahan, minyak dari biji-bijian, dan kopi dari biji-bijian. Mengapa? Karena kamu punya jari! Itu alasanmu.', 'Jari ajaibmu bahkan bisa mengekstrak esensi dari makhluk hidup, jadi kamu memutuskan untuk <kanji>mengekstrak</kanji> sebagian dari <reading>Chew</reading>bacca (ちゅう). Anda selalu mengira ekstrak Chewbacca yang enak dapat meningkatkan kualitas kue Anda. Ini akan membantu mengimbangi rasa manis dan membuatnya lebih kenyal (atau kenyal!).')
    RETURNING id INTO k_2052_ekstrak;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '誓', 'sumpah', 49, 6, 'Dengan <radical>jari</radical> Anda di bawah <radical>kapak</radical>, Anda <radical>mengucapkan</radical> sebuah <kanji>sumpah</kanji>. Sumpah adalah janji suci, jadi kamu harus benar-benar serius saat mengucapkannya. Itu sebabnya kamu melakukannya dengan kapak yang melayang di atas jarimu—ini adalah pengingat bahwa jika kamu melanggar sumpah ini, jarimu akan terpotong.', 'Saat kamu menyelesaikan <kanji>sumpah</kanji>mu, keluarkan <reading>sa</reading>ber (せい) biru sucimu dan potong kapaknya menjadi dua! Anda tahu bahwa Anda tidak akan pernah melanggar sumpah Anda, dan jika Anda melakukannya, Anda akan menggunakan pedang Anda sendiri untuk memotong jari Anda.')
    RETURNING id INTO k_2053_sumpah;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '悟', 'menyadari', 49, 7, '<radical>jiwa</radikal> Anda terhubung ke <radikal>lima</radikal> <radikal>mulut</radikal> yang berbeda, memungkinkan Anda untuk <kanji>menyadari</kanji> sesuatu. Anda dapat menyadari kebenaran mendalam tentang dunia dengan lima mulut yang berbicara kepada jiwa Anda.', 'Saat ini kelima mulut tersebut sedang membantu Anda <kanji>menyadari</kanji> sesuatu tentang <reading>Go</reading>dzilla (ご). Pertama Anda mendengar Godzilla, lalu Anda melihatnya, lalu Anda menciumnya, lalu Anda menyentuhnya. Akhirnya Anda mencicipi Godzilla. Sekarang Anda telah menyadari dengan tepat orang macam apa dia itu. Anda benar-benar mengenal Godzilla.')
    RETURNING id INTO k_2054_menyadari;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '拓', 'penanaman', 49, 8, 'Anda menggunakan <radical>jari</radical> dan <radical>batu</radical> Anda untuk memulai <kanji>pengolahan</kanji> tanah. Anda menggunakan jari-jari Anda untuk mengolah tanah, batu untuk meratakan tanah, dan Anda dengan hati-hati menusukkan benih ke dalam tanah dan kemudian menggunakan batu untuk menghancurkannya lebih jauh.', '<kanji>Kultivasi</kanji> tiba-tiba terhenti karena <reading>paku</reading> (たく) menempel di jari Anda. Anda mencabut taktiknya, membuangnya dan mulai berkultivasi lagi ketika... aduh! Ada taktik lain. Bidang ini penuh dengan paku payung!')
    RETURNING id INTO k_2055_penanaman;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '拘', 'menangkap', 49, 9, 'Anda menjalankan <radical>jari</radical> Anda di sepanjang kata dalam <radical>paragraf</radikal>. Anda belajar tentang hukum karena Anda berencana untuk <kanji>menangkap</kanji> seseorang.', 'Siapa yang ingin Anda <kanji>tangkap</kanji>? Anda ingin menangkap <reading>こう</reading>いち. Meskipun dia memulai perang, mendirikan agama, dan menjebak seorang anak di dalam rongga, akan sulit untuk menangkapnya karena dia adalah kaisar sekarang.')
    RETURNING id INTO k_2056_menangkap;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '礎', 'dasar', 49, 10, 'Ada <radical>batu</radical>, <radical>pohon</radical>, <radical>pohon</radical> lainnya, dan <radical>rak mantel</radical>. Batu dan dua pohon itu akan menjadi <kanji>fondasi</kanji> yang sempurna, atau <kanji>batu penjuru</kanji>, untuk rumah tempat rak mantel itu berada! Batu ini datar dan berat serta kedua pohonnya fleksibel dan tahan lama.', 'Setelah <kanji>foundation</kanji> selesai, satu-satunya langkah yang tersisa adalah mencuci seluruhnya dengan <reading>jadi</reading>ap (そ).')
    RETURNING id INTO k_2057_dasar;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '鶴', 'derek', 49, 11, 'Di <radical>atap</radical> ada beberapa jenis <radical>kalkun</radikal> <radical>burung</radikal>, tetapi lebih tipis dan lebih panjang. Anda melihat lebih dekat dan menyadari itu adalah <kanji>derek</kanji>.', '<kanji>Burung bangau</kanji> bersandar ke arah Anda dari atapnya dan berkoak, "<reading>Terlalu ru</reading>de (つる)!" Anda kaget! Anda tidak tahu burung bangau itu bisa berbahasa Inggris, tapi yang lebih buruk lagi, ia tahu Anda menyebutnya burung kalkun.')
    RETURNING id INTO k_2058_derek;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '刈', 'memangkas', 49, 12, 'Ambil <radical>harta</radikal> terbesar Anda, pegang <radical>pisau</radikal> dengan baik dan dekat dengannya, dan <kanji>pangkas</kanji> semua bagian yang lemah dan mati.', 'Saat ini, Anda ingin <kanji>memangkas</kanji> harta terbesar Anda: <reading>ca</reading>r (か) Anda. Mobil Anda terbuat dari kayu, dan terus berusaha menumbuhkan tunas dan cabang baru, jadi Anda harus memangkasnya.')
    RETURNING id INTO k_2059_memangkas;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '剛', 'kokoh', 49, 13, '<radical>bukit</radikal> <radikal>Pisau</radikal> adalah pisau <kanji>kokoh</kanji> paling banyak yang bisa Anda temukan.', 'Pisau <kanji>kokoh</kanji> (tapi bentuknya aneh) ini digunakan oleh Kakek <reading>ごう</reading>いち.')
    RETURNING id INTO k_2060_kokoh;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '唯', 'semata-mata', 49, 14, '<radikal>mulut</radikal> <radikal>kalkun</radikal> itu adalah <kanji>semata-mata</kanji> miliknya. Ini sangat unik, sehingga mulut itu tidak mungkin dimiliki oleh kalkun lain selain dia. Mulut itu hanya miliknya.', 'Anda melakukan perjalanan jauh untuk melihat kalkun ini dan mulutnya yang <kanji>hanya</kanji> miliknya tetapi Anda melewatkan jalan keluar di jalan raya dan Anda harus menggantung <reading>U-ey</reading> (ゆい). Anda tahu apa arti hang a U-ey, bukan? Ini berbalik arah. Nah, Anda harus memasang U-ey di jalan raya agar Anda bisa turun di tempat yang tepat untuk melihat kalkun ini dan mulutnya yang hanya miliknya.')
    RETURNING id INTO k_2061_semata_mata;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '壇', 'mimbar', 49, 15, 'Di <radical>tanah</radical> ada <radical>penutup</radical> yang mencoba menutupi berapa <radical>kali</radical> <radical>fajar</radical> telah terbit di sini. Anda berjalan mendekat dan membuka tutupnya dan semuanya berubah menjadi <kanji>podium</kanji>. Sebuah podium untuk fajar yang memberi tahu Anda berapa kali ia muncul di atas tanah ini berulang kali. Itu terus berjalan dan Anda menyadari tutupnya ada di sini karena podium dang ini sepertinya tidak bisa menutupnya! (Mengerti? Kiasan!)', 'Anda mendengarkan apa yang <kanji>podium</kanji> katakan begitu lama sehingga Anda akhirnya bertanya, "Siapa Anda?" "Akulah <read>fajar</reading> (だん), tentu saja!" Dan ini adalah podiumku dimana aku menyebarkan kabar baik tentang fajar!')
    RETURNING id INTO k_2062_mimbar;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '尼', 'biarawati', 49, 16, 'Anda memberikan <radical>bendera</radical> dan <radical>sendok</radical> kepada <kanji>biarawati</kanji> sebagai persembahan. Anda memberinya bendera dan sendok ini karena itu sangat berharga bagi Anda dan Anda ingin menunjukkan kepada biarawati tersebut betapa seriusnya Anda untuk bertobat atas perbuatan jahat Anda.', 'Anda berlutut <reading>berlutut</reading> (に) saat Anda memberikan bendera dan sendok kepada <kanji>biarawati</kanji>. Biarawati itu menerima tawaran Anda dan mengambil bendera dan sendok dari Anda. Jiwamu terselamatkan!')
    RETURNING id INTO k_2063_biarawati;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '概', 'perkiraan', 49, 17, 'Gigit <radical>akar</radical> <radical>pohon</radical> dengan <radical>taring</radical> Anda untuk mendapatkan <kanji>perkiraan</kanji> mengenai umurnya. Ini tidak akan tepat, ini tidak ilmiah atau apa pun, tapi ini akan cukup mendekati.', 'Saat Anda merekam <kanji>perkiraan</kanji> Anda, seseorang muncul dan berteriak, "Hai <reading>teman</reading> (がい)! Saya akan memberi Anda $10.000 untuk pohon di sana itu, kawan!" Orang ini pasti sudah gila. Itu lebih dari perkiraan Anda terhadap nilai benda ini. Tapi Anda tetap menjualnya kepada pria itu.')
    RETURNING id INTO k_2064_perkiraan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '浸', 'tenggelam', 49, 18, 'Jika terjadi <radical>tsunami</radical>, <radical>Wolverine</radical>, <radical>dahi</radical> Anda, dan <radical>bangku</radical> semuanya akan <kanji>terbenam</kanji> di dalamnya. Anda akan tenggelam dalam tsunami setelah melanda karena tsunami sangat besar dan membawa banyak air. Sekarang Anda dan dahi Anda tenggelam dalam tsunami bersama Wolverine dan bangku.', 'Masih <kanji>terendam</kanji>, bangku tersebut melayang dan mengenai <read>tulang kering</reading> Anda (しん). Tsunami memberikan dorongan yang baik pada bangku dan ketika terendam seluruhnya, bangku tersebut mengenai tulang kering Anda. Sungguh menyakitkan.')
    RETURNING id INTO k_2065_tenggelam;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '淡', 'pingsan', 49, 19, '<radikal>tsunami</radikal> dan sepasang <radikal>kebakaran</radikal> saling bertabrakan. Mereka menghilangkan satu sama lain sepenuhnya, dan sisanya yang tertinggal adalah sisa <kanji>samar</kanji> dari apa yang pernah ada.', 'Sama seperti tsunami dan api yang saling menghilangkan satu sama lain, meninggalkan sisa <kanji>pingsan</kanji> dari sebelumnya, <reading>tan</reading> (たん) Anda juga sangat redup.')
    RETURNING id INTO k_2066_pingsan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '煮', 'mendidihkan', 49, 20, 'Jika <radical>seseorang</radical> ingin <radical>mendidih</radikal>, biarkan saja <kanji>mendidih</kanji>!', 'Baiklah, pancinya sudah <kanji>mendidih</kanji> dan <reading>lutut</reading> (に) Anda ada di dalamnya. Orang itu tidak mengatakan ingin merebus, mereka mengatakan ingin merebus seseorang. Dan itu berarti kamu. Yah, lututmu juga.')
    RETURNING id INTO k_2067_mendidihkan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '覆', 'terbalik', 49, 21, 'Jika <radical>helikopter</radical> <radical>berkeliaran</radical> berada di dekat <radical>lubang hitam</radical> maka ia akan <kanji>terbalik</kanji>. Maksudku, ya, itu bukan perahu, tapi lihat saja, itulah yang terjadi! Helikopter itu jatuh!

Jika Anda ingin menyimpannya, sebaiknya Anda <kanji>menutup</kanji> lubang hitamnya! Satu-satunya cara untuk menyelamatkannya dari terbalik adalah dengan menutupinya!', 'Anda melakukan yang terbaik untuk <kanji>menutup</kanji> lubang hitam untuk menghentikan helikopter agar tidak <kanji>terbalik</kanji> tetapi tidak berhasil! “<reading>F**k</reading> kamu (ふく) lubang hitam!" kamu berteriak. Anda hanya ingin menutupinya! Anda hanya ingin melakukan hal yang benar!')
    RETURNING id INTO k_2068_terbalik;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '謀', 'bersekongkol', 49, 22, 'Perhatikan apa yang Anda <radikal>katakan</radikal> terhadap apa yang tampak <radikal>manis</radikal> <radikal>pohon</radikal>, karena pohon itu 100% <kanji>bersekongkol</kanji> melawan Anda.', 'Sekarang Anda mengerti! Pohon itu mencoba <kanji>berkonspirasi</kanji> melawan Anda dan menjatuhkan Anda. Ambil bola <reading>busur</reading>ling (ぼう) Anda dan lemparkan bola itu beserta semua temannya ke bawah!')
    RETURNING id INTO k_2069_bersekongkol;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '陶', 'tembikar', 49, 23, 'Dari <radical>gedung</radical> di samping <radical>penjara</radical>, Anda menukarkan <radical>kaleng</radical> kepada narapidana untuk mendapatkan tembikar. Anda mengoleksi <kanji>tembikar</kanji> dan karya seni tahanan lainnya, dan mereka membutuhkan kaleng logam untuk membuat betis dan sejenisnya, jadi ini merupakan kesepakatan yang saling menguntungkan.', 'Di mana Anda memajang <kanji>tembikar</kanji> penjara Anda? Tentu saja di <reading>とう</reading>きょう. とうきょう penuh dengan museum seni mewah yang dengan senang hati akan memamerkan koleksi tembikar unik Anda.')
    RETURNING id INTO k_2070_tembikar;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '隔', 'memisahkan', 49, 24, 'Sebuah <radical>bangunan</radical> yang mempunyai <radical>pengganggu</radical> akan <kanji>mengisolasi</kanji> sendiri. Bangunan punya perasaan seperti manusia lho.', 'Bangunan <kanji>isolasi</kanji>d hanya memiliki satu pendamping, dan itu adalah <reading>ayam</reading> (かく) yang tinggal di dalamnya.')
    RETURNING id INTO k_2071_memisahkan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '征', 'menundukkan', 49, 25, 'Jika seseorang <radikal>berkeliaran</radikal>, <radikal>benar</radikal> adalah <kanji>menundukkan</kanji> mereka.', 'Anda <kanji>menaklukkan</kanji> orang-orang yang berkeliaran ini dengan <reading>sa</reading>ber (せい) biru suci Anda! Lagipula itu adalah hal yang benar untuk dilakukan, dan kamu diberikan pedang ini pada semua level yang lalu karena kamu melakukan hal yang benar.')
    RETURNING id INTO k_2072_menundukkan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '陛', 'kebesaran', 49, 26, '<radical>Bandingkan</radical> sebuah <radical>bangunan</radical> dengan <radical>tanah</radical> dan Anda akan melihat perbedaan antara Anda dan <kanji>Yang Mulia</kanji>-Nya. Anda tinggal di luar dan tidur di atas tanah. Tapi Yang Mulia dan Yang Mulia tinggal di sebuah gedung besar.', 'Saya yakin <kanji>Yang Mulia</kanji> juga tidak pernah tidur di <reading>jerami</reading> (へい), seperti yang Anda lakukan setiap malam. Hay itulah yang digunakan sebagai bantal, kasur, selimut. Pada dasarnya hanya jerami dan kotoran yang Anda miliki. Berbeda dengan Yang Mulia.')
    RETURNING id INTO k_2073_kebesaran;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '俗', 'vulgar', 49, 27, '<radikal>pemimpin</radikal> dari <radikal>lembah</radikal> ini sangat <kanji>vulgar</kanji>. Nama lembah tersebut adalah Lembah Vulgar, jadi masuk akal jika pemimpinnya bersikap sangat vulgar.', 'Pemimpin <kanji>vulgar</kanji> ini memimpin geng sepeda Boso<reading>zoku</reading> (ぞく) melewati Lembah Vulgar, berpatroli di area tersebut dan menyebarkan kata-kata vulgar saat dia pergi.')
    RETURNING id INTO k_2074_vulgar;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '桑', 'murbai', 49, 28, 'Anda mengambil <radical>bangku</radical>, <radical>bangku</radical> lainnya, dan <radical>bangku</radical> lainnya dan menumpuknya di atas <radical>pohon</radical> untuk membuat semak <kanji>murbei</kanji>. Beginilah cara semak murbei dibuat. Anda mengambil tiga bangku dan meletakkannya di atas pohon.', 'Pohon <kanji>mulberry</kanji> Anda kemudian menghasilkan <reading>qua</reading>ntity (くわ) dari mulberry. enak.')
    RETURNING id INTO k_2075_murbai;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '潤', 'disiram', 49, 29, '<radikal>tsunami</radikal> di <radikal>gerbang</radikal> <radikal>raja</radikal> memastikan semua tanamannya <kanji>diairi</kanji>. Gerbang tersebut mencegah tsunami merusak apa pun di dalam rumah raja, dan tanaman di sekitar gerbang tersiram air tsunami.', 'Tanaman ini <kanji>disiram</kanji> pada <reading>Juni</reading> (じゅん), bulan yang paling membutuhkan penyiraman. Bulan Juni adalah bulan yang panas, jadi baguslah jika tsunami ini datang dan membuat tanaman raja disirami.')
    RETURNING id INTO k_2076_disiram;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '珠', 'mutiara', 49, 30, '<radical>raja</radical> membawa <radical>slide</radical> miliknya ke dalam <radical>jet</radical> pribadinya dan diberi <kanji>mutiara</kanji> sebagai hadiah, oleh Anda! Dia mengizinkanmu menaiki jetnya hari ini, dan kamu diberitahu bahwa raja harus diberikan mutiara segera setelah dia naik.', 'Raja mengambil <kanji>mutiara</kanji> dan melemparkannya ke dalam <reading>chu</reading>te (しゅ) di sebelah perosotan yang dia ambil untuk masuk ke dalam jet. Anda menyaksikan mutiara itu turun, turun, turun hingga mendarat di tong besar berisi mutiara.')
    RETURNING id INTO k_2077_mutiara;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '衰', 'menolak', 49, 31, 'Anda mengambil <radical>penutup</radical>, dan mengarahkannya ke <radical>matahari</radical> Anda <radical>menendang</radical> ke udara dan akhirnya ia mulai <kanji>menurun</kanji> dan menabrak matahari, menyebabkannya menjadi supernova. Bayangkan menendang tutup ini begitu keras hingga terbang ke angkasa. Lihatlah ia terbang hingga ke puncak lengkungannya, lalu saksikan ia mulai menurun hingga akhirnya bertabrakan dengan matahari.', 'Saat tutup langit mulai <kanji>menurun</kanji>, Anda menyadari apa yang akan terjadi sehingga Anda mencoba untuk <read>menggeser</reading>ng (すい) ke tempat yang aman. Ayunkan beberapa tanaman merambat ke arah yang berlawanan dengan matahari. Anda tahu bahwa begitu tutup tersebut selesai diturunkan dan bertabrakan dengan matahari, maka akan terjadi masalah.')
    RETURNING id INTO k_2078_menolak;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '奨', 'mendorong', 49, 32, 'Seorang <radikal>komandan</radikal> yang <radikal>besar</radikal> akan menggunakan ukuran tubuhnya untuk <kanji>mendorong</kanji> pasukannya.', 'Dia <kanji>mendorong</kanji> pistol <reading>Shou</reading> (しょう) juga! Anda belum pernah melihat Shougun mengekspresikan emosi apa pun selain ketidakpedulian yang intens atau rasa tidak suka yang intens.')
    RETURNING id INTO k_2079_mendorong;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '劣', 'rendah-diri', 49, 33, '<radikal>sedikit</radikal> anggota masyarakat yang tidak memiliki <radikal>kekuasaan</radikal> menderita kompleks <kanji>inferioritas</kanji> yang parah. Kebanyakan orang di dunia ini mempunyai banyak kekuasaan, sehingga hanya sedikit yang tidak merasa minder. Perasaan rendah diri inilah yang memicu kompleks rendah diri mereka.', 'Karena kamu menderita perasaan <kanji>inferioritas</kanji> yang ekstrem, ketika seseorang menawarkan kamu dan temanmu kesempatan untuk mendapatkan kekuasaan, kamu berteriak “<reading>Ayo</reading> (れつ) pergi!” tanpa berpikir dua kali. "Ayo pergi, teman-teman! Ayo! Kekuatan menanti kita!"')
    RETURNING id INTO k_2080_rendah_diri;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '勘', 'intuisi', 49, 34, '<radikal>perangkap kepiting</radikal> ini memiliki <radikal>kekuatan</radikal> <kanji>intuisi</kanji>. Dengan kekuatan intuisi, perangkap kepiting ini dapat menjebak semua kepiting. Melalui intuisi, ia mengetahui ke mana kepiting akan pergi dan bagaimana reaksinya, sehingga lebih mudah untuk menjebaknya.', 'Kekuatan <kanji>intuisi</kanji> perangkap kepiting ini diambil dari <reading>Khan</reading> (かん) Jenghis sendiri. Dan seperti yang kita ketahui sekarang, Jenghis Khan adalah ahli intuisi yang mutlak, dia selalu tahu apa yang akan dilakukan musuh dan sekutunya.')
    RETURNING id INTO k_2081_intuisi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '妃', 'permaisuri-kerajaan', 49, 35, '<radikal>wanita</radikal> yang dimiliki seseorang untuk <radikal>dirinya sendiri</radikal> adalah <kanji>permaisurinya</kanji>… Anda tahu, dengan asumsi seseorang adalah anggota keluarga kerajaan. Ini adalah wanita yang menikah dengan seorang bangsawan dan diangkat menjadi <kanji>putri</kanji> atau <kanji>ratu</kanji>.', 'Kamu bisa mengetahui <kanji>permaisuri</kanji> seseorang dari <reading>hea</reading>t (ひ) yang dia pancarkan. Selir kerajaan semuanya merokok panas… secara harfiah, karena mereka harus mengenakan gaun besar dan rumit yang dirancang beberapa abad yang lalu. Hal-hal itu memerangkap panas seperti urusan siapa pun.')
    RETURNING id INTO k_2082_permaisuri_kerajaan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '准', 'semi', 49, 36, 'Taruh <radical>kalkun</radical> di atas <radical>es</radical> dan itu hanya akan membuat <kanji>semi</kanji> membeku. Anda menambahkan lebih banyak es, dan hasilnya tetap sama. Hanya sebagian saja yang akan membeku. Apa-apaan ini!', 'Akhirnya Anda menyadari bahwa ini hanya <kanji>semi</kanji> yang akan dibekukan karena saat ini <reading>Juni</reading> (じゅん)! Di luar terlalu panas untuk membuat kalkun Anda membeku sepenuhnya. Es terus mencair dari atas dan setengah mencairkannya!')
    RETURNING id INTO k_2203_semi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '慌', 'bingung', 49, 37, '<radical>Jiwa</radikal> Anda menjadi <radikal>liar</radikal> karena Anda <kanji>bingung</kanji>. Jika Anda bingung, biasanya karena Anda tidak tahu apa yang terjadi atau apa yang harus dilakukan. Ini membuat jiwa di dalam tubuhmu menjadi sangat liar!', 'Kapan pun Anda <kanji>bingung</kanji>, <reading>こう</reading>いち muncul untuk memberi Anda panduan. Dia sangat bingung, jadi dia tahu bagaimana membantu. Dan ilmu yang ditawarkan oleh こういち adalah obat terbaik untuk kebingungan.')
    RETURNING id INTO k_8881_bingung;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '蹴', 'menendang', 49, 38, 'Di <radical>kaki</radikal> <radikal>ibu kota</radikal>, sulit untuk menjadi <radikal>anjing</radikal> karena Anda selalu mendapat <kanji>ditendang</kanji>.', 'Bayangkan diri Anda <kanji>menendang</kanji>melakukan <reading>ke</reading>ttle (け). Tidak ada yang lebih memuaskan untuk ditendang selain ketel yang bagus, Anda tahu?')
    RETURNING id INTO k_8913_menendang;
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2050_bidak_catur, 'Bidak Catur', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2050_bidak_catur, 'こま', true, 'kunyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2050_bidak_catur, 'く', false, 'onyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2052_ekstrak, 'Ekstrak', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2052_ekstrak, 'ちゅう', true, 'onyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2053_sumpah, 'Sumpah', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2053_sumpah, 'せい', true, 'onyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2053_sumpah, 'ちか', false, 'kunyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2054_menyadari, 'Menyadari', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2054_menyadari, 'ご', true, 'onyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2054_menyadari, 'さと', false, 'kunyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2055_penanaman, 'Penanaman', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2055_penanaman, 'たく', true, 'onyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2056_menangkap, 'Menangkap', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2056_menangkap, 'こう', true, 'onyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2056_menangkap, 'かか', false, 'kunyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2057_dasar, 'Dasar', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2057_dasar, 'Landasan', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2057_dasar, 'そ', true, 'onyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2057_dasar, 'いしずえ', false, 'kunyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2058_derek, 'Derek', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2058_derek, 'つる', true, 'kunyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2058_derek, 'かく', false, 'onyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2059_memangkas, 'Memangkas', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2059_memangkas, 'か', true, 'kunyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2060_kokoh, 'Kokoh', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2060_kokoh, 'ごう', true, 'onyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2061_semata_mata, 'Semata-mata', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2061_semata_mata, 'ゆい', true, 'onyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2061_semata_mata, 'ただ', false, 'kunyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2062_mimbar, 'Mimbar', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2062_mimbar, 'だん', true, 'onyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2063_biarawati, 'Biarawati', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2063_biarawati, 'に', true, 'onyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2063_biarawati, 'あま', false, 'kunyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2064_perkiraan, 'Perkiraan', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2064_perkiraan, 'がい', true, 'onyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2064_perkiraan, 'おおむ', false, 'kunyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2065_tenggelam, 'Tenggelam', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2065_tenggelam, 'しん', true, 'onyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2065_tenggelam, 'ひた', false, 'kunyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2065_tenggelam, 'つ', false, 'kunyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2066_pingsan, 'Pingsan', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2066_pingsan, 'たん', true, 'onyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2066_pingsan, 'あわ', false, 'kunyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2067_mendidihkan, 'Mendidihkan', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2067_mendidihkan, 'に', true, 'kunyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2067_mendidihkan, 'しゃ', false, 'onyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2068_terbalik, 'Terbalik', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2068_terbalik, 'Menutupi', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2068_terbalik, 'ふく', true, 'onyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2068_terbalik, 'おお', false, 'kunyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2068_terbalik, 'くつがえ', false, 'kunyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2069_bersekongkol, 'Bersekongkol', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2069_bersekongkol, 'ぼう', true, 'onyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2069_bersekongkol, 'はか', false, 'kunyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2070_tembikar, 'Tembikar', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2070_tembikar, 'とう', true, 'onyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2071_memisahkan, 'Memisahkan', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2071_memisahkan, 'かく', true, 'onyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2071_memisahkan, 'へだ', false, 'kunyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2072_menundukkan, 'Menundukkan', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2072_menundukkan, 'せい', true, 'onyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2073_kebesaran, 'Kebesaran', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2073_kebesaran, 'へい', true, 'onyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2074_vulgar, 'Vulgar', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2074_vulgar, 'ぞく', true, 'onyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2075_murbai, 'Murbai', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2075_murbai, 'くわ', true, 'kunyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2075_murbai, 'そう', false, 'onyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2076_disiram, 'Disiram', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2076_disiram, 'じゅん', true, 'onyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2076_disiram, 'うるお', false, 'kunyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2076_disiram, 'うる', false, 'kunyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2077_mutiara, 'Mutiara', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2077_mutiara, 'しゅ', true, 'onyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2077_mutiara, 'たま', false, 'kunyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2078_menolak, 'Menolak', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2078_menolak, 'すい', true, 'onyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2078_menolak, 'おとろ', false, 'kunyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2079_mendorong, 'Mendorong', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2079_mendorong, 'しょう', true, 'onyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2080_rendah_diri, 'Rendah diri', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2080_rendah_diri, 'れつ', true, 'onyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2080_rendah_diri, 'おと', false, 'kunyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2081_intuisi, 'Intuisi', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2081_intuisi, 'かん', true, 'onyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2082_permaisuri_kerajaan, 'Permaisuri Kerajaan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2082_permaisuri_kerajaan, 'Putri', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2082_permaisuri_kerajaan, 'Ratu', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2082_permaisuri_kerajaan, 'ひ', true, 'onyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2082_permaisuri_kerajaan, 'きさき', false, 'kunyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2203_semi, 'Semi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2203_semi, 'Mengesahkan', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2203_semi, 'じゅん', true, 'onyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_8881_bingung, 'Bingung', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_8881_bingung, 'Bingung', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_8881_bingung, 'こう', true, 'onyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_8881_bingung, 'あわ', false, 'kunyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_8913_menendang, 'Menendang', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_8913_menendang, 'け', true, 'kunyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_8913_menendang, 'しゅう', false, 'onyomi');

  -- 3. VOCABULARIES
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '価', 'nilai', 49, 39, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.

価 mengacu pada nilai moneter atau harga barang dalam suatu transaksi. Meskipun agak kuno dan kurang umum saat ini, Anda mungkin masih melihatnya digunakan dalam frasa tingkat lanjut seperti 価をつける (untuk menetapkan harga) atau 一文の価もない (bahkan tidak bernilai satu sen pun).

Perhatikan bahwa あたい juga bisa merujuk pada nilai numerik dalam matematika, seperti nilai yang diambil oleh variabel atau fungsi, namun lebih umum ditulis dengan kanji 値 dalam penggunaan ini.', 'Karena kata ini terdiri dari satu kanji, kemungkinan besar menggunakan bacaan kun''yomi. Anda tidak mempelajari bacaan ini, jadi inilah mnemonik untuk membantu Anda mengingat: Oke, ini adalah <vocabulary>nilai</vocabulary> dan <vocabulary>harga</vocabulary> yang bagus. Tunggu, apa itu? <read>Dasi</reading> (あたい). Dapatkan dasi, dan itu akan membuat Anda lebih profesional yang akan membantu Anda mendapatkan pekerjaan yang lebih baik. Nilai yang bagus, di sana, hanya untuk dasi.')
    RETURNING id INTO v_4519_nilai;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '歳入', 'pendapatan-tahunan', 49, 40, 'Setiap <kanji>tahun</kanji>, uang <kanji>masuk</kanji> ke kas pemerintah. Ini adalah <vocabulary>pendapatan tahunan</vocabulary> mereka.

歳入 secara khusus mengacu pada <kosakata>pendapatan pemerintah tahunan</vocabulary>, bukan pendapatan yang diperoleh oleh perusahaan atau individu. Ini adalah uang yang dikumpulkan oleh pemerintah pusat atau daerah dalam satu tahun fiskal, yang juga dikenal sebagai <vocabulary>pendapatan tahun fiskal</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_6995_pendapatan_tahunan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '貨幣価値', 'nilai-mata-uang', 49, 41, '貨幣 adalah "<kanji>mata uang</kanji>" dan 価値 adalah "<kanji>nilai</kanji>." Ini menunjukkan <vocabulary>nilai mata uang</vocabulary>. Semoga bermanfaat bagi anda ketika berkunjung ke Jepang!', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_7257_nilai_mata_uang;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '不明瞭', 'keremangan', 49, 42, '明瞭 adalah "<kanji>kejelasan</kanji>." Jika <kanji>tidak</kanji> kejelasan ini, maka Anda memiliki <vocabulary>keredupan</vocabulary> atau <vocabulary>ketidakjelasan</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_7258_keremangan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '浸透', 'perembesan', 49, 43, '<kanji>Dibenamkan</kanji> hingga <kanji>transparan</kanji>, karena direndam... itulah <vocabulary>perembesan</vocabulary> total dan <vocabulary>merendam</vocabulary> dan <vocabulary>osmosis</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_7259_perembesan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '粘り', 'keadaan-lengket', 49, 44, 'Jika 粘る adalah "menjadi lengket" maka versi kata bendanya adalah <vocabulary>stickiness</vocabulary>.', 'Bacaannya berasal dari 粘る.')
    RETURNING id INTO v_7260_keadaan_lengket;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', 'お婆ちゃん', 'nenek', 49, 45, 'Ini adalah <kanji>wanita tua</kanji>. Lalu tambahkan ちゃん untuk nama ender. Anda menambahkan お agar lebih baik. Orang ini adalah <vocabulary>nenek</vocabulary> atau <vocabulary>nenek</vocabulary> atau <vocabulary>wanita tua</vocabulary> atau <vocabulary>wanita tua</vocabulary>.', 'Pembacaannya bukan ば yang Anda pelajari dengan kanji. Ini sedikit lebih lama ばあ, karena kamu harus bersikap baik, tahu? Selain itu, orang yang kamu pikir adalah <vocabulary>nenek</vocabulary> sebenarnya adalah seekor domba. <membaca>Baaaaa</membaca>! (ばあ).')
    RETURNING id INTO v_7261_nenek;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '憎らしい', 'penuh-kebencian', 49, 46, '憎む adalah "membenci" - versi kata sifatnya adalah <vocabulary>hateful</vocabulary>.', 'Bacaannya berasal dari 憎む juga, jadi jika Anda mengetahui hal ini tidak perlu menunjukkan kebencian terhadap kosakata ini.')
    RETURNING id INTO v_7262_penuh_kebencian;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '憎しみ', 'kebencian', 49, 47, 'Jika 憎む adalah "membenci" maka versi kata bendanya adalah <vocabulary>hatred</vocabulary>.', 'Bacaannya berasal dari 憎む.')
    RETURNING id INTO v_7263_kebencian;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '憎い', 'penuh-kebencian', 49, 48, 'Jika 憎む berarti "membenci" maka versi kata sifat ini adalah <vocabulary>hateful</vocabulary>.', 'Bacaannya juga berasal dari 憎む. Saat-saat yang menyenangkan.')
    RETURNING id INTO v_7264_penuh_kebencian;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '扇', 'kipas-lipat', 49, 49, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.', 'Bacaannya berbeda dengan yang Anda pelajari dengan kanji, jadi inilah mnemoniknya untuk Anda: 

Kemungkinan besar Anda memerlukan <vocabulary>kipas lipat</vocabulary> di <reading>Auggie</reading> (おうぎ), AKA Agustus, karena biasanya saat itulah cuaca terpanas di banyak tempat. Ingatlah bahwa kipas lipat = aksesori Auggie, dan mudah-mudahan pembacaan おうぎ akan melekat pada Anda (seperti kelembapan bulan Agustus… kecuali Anda memiliki 扇 di tangan.)')
    RETURNING id INTO v_7265_kipas_lipat;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '団扇', 'penggemar', 49, 50, 'Sebuah <kanji>grup</kanji> yang terdiri dari <kanji>kipas lipat</kanji>, tidak peduli seberapa besar ukurannya, tetaplah sebuah <vocabulary>fan</vocabulary>.', 'Bacaan untuk 団 adalah bacaan yang luar biasa. Ini sama dengan pembacaan 内 sehingga Anda dapat berpikir tentang bagaimana sekelompok kipas lipat untuk membuat kipas besar hanyalah sekumpulan kipas di dalam kipas.

Bacaan untuk 扇 juga merupakan bacaan yang luar biasa. Bayangkan sebuah <reading>wa</reading>lrus (わ) menggunakan kipas 内.')
    RETURNING id INTO v_7266_penggemar;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '挿入する', 'untuk-menyisipkan', 49, 51, '挿入 adalah "penyisipan" jadi versi kata kerjanya adalah <vocabulary>to insert</vocabulary>.', 'Bacaannya berasal dari 挿入, jadi jika Anda mengetahuinya, Anda dapat memasukkan bacaan ini ke dalam memori Anda tidak masalah.')
    RETURNING id INTO v_7267_untuk_menyisipkan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '駒', 'bidak-catur', 49, 52, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna. Perhatikan bahwa ini juga bisa merujuk pada <vocabulary>piece shogi</vocabulary> atau <vocabulary>piece game</vocabulary> papan lainnya juga!', 'Bacaannya sama dengan yang Anda pelajari dengan kanji.')
    RETURNING id INTO v_7268_bidak_catur;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '抽象', 'abstraksi', 49, 53, 'Hal yang Anda <kanji>ekstraksi</kanji> dari sebuah <kanji>fenomena</kanji> adalah <vocabulary>abstraksi</vocabulary>. Mengekstraksi abstraksi dari suatu fenomena mungkin tidak terdengar seperti mnemonik yang sangat konkret atau jelas, tapi menurut saya itu menjadikannya abstraksi yang tepat…', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_7272_abstraksi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '抽選', 'lotere', 49, 54, '<kanji>Ekstrak</kanji> tiket keberuntungan untuk <kanji>memilih</kanji> pemenang <vocabulary>lotre</vocabulary> atau <vocabulary>raffle</vocabulary>! Hari ini saya ekstrak... nomor 23! Kami telah memilih pemenang!

抽選 mengacu pada <kosakata>pengundian</vocabulary> dan memilih secara acak seorang pemenang atau pemenang dari kumpulan kandidat atau entri.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_7273_lotere;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '抽出', 'ekstraksi', 49, 55, 'Untuk <kanji>mengekstraksi</kanji> sesuatu dari <kanji>keluar</kanji> berarti melakukan <vocabulary>ekstraksi</vocabulary>.

抽出 biasanya digunakan untuk merujuk pada ekstraksi zat, seperti mengekstraksi jus, esens, atau senyawa dari bahan seperti bahan kimia atau logam. Bergantung pada konteksnya, kata ini juga bisa merujuk pada <vocabulary>mengekstraksi</vocabulary> informasi yang relevan dari kumpulan data atau teks.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_7274_ekstraksi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '誓い', 'sumpah', 49, 56, 'Ini tampak seperti kata sifat, namun sebenarnya adalah kata benda. Kata ini sama dengan arti kanjinya: <vocabulary>sumpah</vocabulary> (atau <vocabulary>sumpah</vocabulary>).', 'Kepada siapa Anda membuat <vocabulary>sumpah</vocabulary>? Ini <reading>chica</reading> (ちか) Anda! Anda bersumpah <vocabulary>sumpah</vocabulary> kepadanya, menjanjikan kesetiaan, dukungan, dan persahabatan. Coba bayangkan seorang chica yang akan Anda ajak bertukar sumpah. Sebenarnya tidak harus romantis. Mungkin Anda berdua baru saja bersumpah untuk membaca lebih banyak buku tahun ini.')
    RETURNING id INTO v_7275_sumpah;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '誓約', 'sumpah', 49, 57, '<kanji>sumpah</kanji> <kanji>janji</kanji> adalah janji yang Anda buat dengan <vocabulary>sumpah</vocabulary> Anda. Itu adalah <vocabulary>sumpah</vocabulary> yang harus Anda tepati!', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_7276_sumpah;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '悟る', 'untuk-menyadari', 49, 58, 'Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanjinya sendiri berarti <kanji>menyadari</kanji>, jadi versi verbanya berarti <vocabulary>menyadari</vocabulary>. Tapi Anda mungkin sudah menyadari bahwa…

悟る sering digunakan ketika seseorang memahami sesuatu secara mendalam, tidak hanya pada tingkat permukaan. Ini adalah realisasi yang tiba-tiba dan jelas. Jadi ini juga berarti <vocabulary>untuk mencapai pencerahan</vocabulary>.', 'Anda baru saja menyadari sesuatu yang sangat menakjubkan sehingga Anda tidak dapat mempercayainya. Kesadaran itu, wow! Anda mampu <vocabulary>menyadari</vocabulary> sesuatu yang begitu besar hingga Anda <reading>duduk</reading> (さと) tak percaya. Jika tidak, kamu akan terjatuh ke tanah.')
    RETURNING id INTO v_7281_untuk_menyadari;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '覚悟', 'kesiapan-mental', 49, 59, 'Saat Anda <kanji>bangun</kanji> dan <kanji>menyadari</kanji> sesuatu, Anda telah mencapai <vocabulary>kesiapan mental</vocabulary>. Anda memiliki <vocabulary>resolusi</vocabulary> dan <vocabulary>tekad</vocabulary> untuk menghadapi tantangan apa pun sekarang.

覚悟 mengacu pada mempersiapkan diri secara mental untuk menghadapi situasi sulit atau menerima hasil yang tidak menguntungkan. Ini menyampaikan rasa tekad yang kuat dan kesiapan menghadapi risiko.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_7282_kesiapan_mental;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '開拓', 'reklamasi', 49, 60, '<kanji>Buka</kanji> <kanji>budidaya</kanji> kembali di tanah ini. Sebelumnya ditutup karena merupakan lahan terlantar, namun kini saatnya <vocabulary>reklamasi</vocabulary> dan <vocabulary>penggarapan</vocabulary> lahan ini.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_7283_reklamasi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '拘置', 'penahanan', 49, 61, 'Saat Anda <kanji>menangkap</kanji> seseorang, Anda <kanji>memasukkan</kanji> mereka ke dalam <vocabulary>penahanan</vocabulary>.

拘置 adalah istilah formal yang berarti <vocabulary>menahan</vocabulary> seseorang dalam tahanan — biasanya di pusat penahanan — sementara mereka menunggu persidangan atau menjalani proses hukum.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_7284_penahanan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '礎', 'dasar', 49, 62, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.', 'Fondasinya terbuat dari <read>batu</reading> (いし). Dan kebun binatang ini mampu menampung seluruh <read>kebun binatang A</reading> (ずえ) namun tidak ada satupun dari Kebun Binatang B. Kebun Binatang B akan hancur ketika terjadi gempa bumi.')
    RETURNING id INTO v_7285_dasar;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '基礎', 'dasar', 49, 63, '<kanji>yayasan</kanji> dari <kanji>yayasan</kanji> adalah <vocabulary>yayasan</vocabulary>. Ini adalah <vocabulary>dasar-dasar</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_7286_dasar;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '鶴', 'derek', 49, 64, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.', 'Pembacaan kata ini sama dengan yang Anda pelajari dengan vocab.')
    RETURNING id INTO v_7287_derek;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '刈る', 'untuk-memangkas', 49, 65, 'Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanjinya sendiri berarti <kanji>memangkas</kanji> dan versi kosakata kata kerjanya adalah <vocabulary>to pangkas</vocabulary> (atau <vocabulary>to mow</vocabulary> atau <vocabulary>to cut</vocabulary>).', 'Bacaannya sama dengan bacaan yang Anda pelajari dengan kanji.')
    RETURNING id INTO v_7288_untuk_memangkas;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '草刈り', 'memotong', 49, 66, 'Mari kita ambil <kanji>rumput</kanji> dan <kanji>memangkas</kanji>. Ini disebut <vocabulary>memotong</vocabulary>.', 'Bacaannya adalah 草 dan 刈 dirangkai menjadi satu. Pembacaan か untuk 刈り berasal dari pembacaan kanji.')
    RETURNING id INTO v_7289_memotong;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '刈り取る', 'untuk-memotong', 49, 67, 'Jika Anda <kanji>memangkas</kanji> dan <kanji>mengambil</kanji> dari apa yang Anda pangkas, Anda akan <vocabulary>memotong</vocabulary> atau <vocabulary>menuai</vocabulary> atau <vocabulary>memanen</vocabulary> apa pun yang Anda pangkas.', 'Bacaannya adalah bacaan yang dipelajari dengan 刈 dan bacaan dari kosakata 取る.')
    RETURNING id INTO v_7290_untuk_memotong;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '剛健', 'semangat', 49, 68, 'Bila Anda <kanji>kokoh</kanji> dan <kanji>sehat</kanji> Anda penuh dengan <vocabulary>semangat</vocabulary> dan <vocabulary>kejantanan</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_7291_semangat;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '唯', 'semata-mata', 49, 69, 'Kanji berarti <kanji>hanya</kanji>, dan ini berarti <vocabulary>hanya</vocabulary>, tetapi juga hal-hal terkait lainnya seperti <vocabulary>hanya</vocabulary> atau <vocabulary>hanya</vocabulary>. Semuanya cukup dekat, jadi cobalah mengingat beberapa!', 'Untuk membumbui sesuatu yang Anda jelaskan dengan kata-kata seperti <vocabulary>only</vocabulary> dan <vocabulary>simple</vocabulary>, gunakan "<reading>ta-da</reading> (ただ)" untuk membumbuinya. Ini seperti sihir! Sekarang ini bukan sekedar hadiah, ini adalah hadiah kejutan TA-DA.')
    RETURNING id INTO v_7292_semata_mata;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '唯一', 'hanya', 49, 70, 'Itu <kanji>hanya</kanji> <kanji>satu</kanji>. <vocabulary>satu-satunya</vocabulary> satu-satunya. Yang <vocabulary>satu-satunya</vocabulary>. Benar-benar <vocabulary>unik</vocabulary>.', 'Pembacaan 唯 sama dengan yang Anda pelajari dengan kanji, meskipun ada juga versi singkat yang ゆい disingkat menjadi ゆ. Bacaan untuk 一 adalah bacaan yang kamu pelajari dengan 統一, jadi kamu seharusnya sudah bisa membacanya!')
    RETURNING id INTO v_7293_hanya;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '唯物論', 'materialisme', 49, 71, '<kanji>semata-mata</kanji> <kanji>sesuatu</kanji> <kanji>teori</kanji> adalah teori bahwa hanya hal-hal yang penting. Hal ini juga dikenal sebagai <vocabulary>materialisme</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_7294_materialisme;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '壇', 'mimbar', 49, 72, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.', 'Bacaannya sama dengan yang Anda pelajari dengan kanji.')
    RETURNING id INTO v_7295_mimbar;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '花壇', 'tempat-tidur-bunga', 49, 73, '<kanji>bunga</kanji> <kanji>podium</kanji> adalah podium bunga, dipasang lebih tinggi dari tanah. Ini adalah <vocabulary>hamparan bunga</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_7296_tempat_tidur_bunga;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '仏壇', 'altar-buddha', 49, 74, '<kanji>buddha</kanji> <kanji>podium</kanji> adalah podium tempat Anda menempatkan Buddha. Ini adalah <vocabulary>altar Budha</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_7297_altar_buddha;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '尼僧', 'biarawati', 49, 75, '<kanji>biarawati</kanji> <kanji>pendeta</kanji> adalah <vocabulary>biarawati</vocabulary> atau <vocabulary>pendeta</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_7298_biarawati;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '尼', 'biarawati', 49, 76, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.', '<vocabulary>biarawati</vocabulary> ini mengenakan <reading>armor</reading> (あま). Dia mungkin akan pergi berperang atau semacamnya. Katakan apa yang Anda mau tentang perang suci, tetapi Anda harus mengakui: biarawati lapis baja ini terlihat cukup keren.')
    RETURNING id INTO v_7299_biarawati;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '気概', 'semangat-yang-kuat', 49, 77, 'Sebuah <kanji>roh</kanji> dari <kanji>perkiraan</kanji> adalah perkiraan roh. Perkiraan saya terhadap semangat Anda? Menurutku kamu mempunyai <vocabulary>semangat yang kuat</vocabulary>. Saya rasa Anda memiliki <vocabulary>tulang punggung</vocabulary>.

気概 adalah kata formal yang banyak digunakan dalam tulisan. Hal ini mengacu pada semangat kuat seseorang dalam menghadapi tantangan. Ini menyampaikan rasa keberanian dan kekuatan moral, sering kali dikaitkan dengan kebanggaan dan ketahanan dalam situasi sulit.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_7300_semangat_yang_kuat;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '概算', 'perkiraan', 49, 78, '<kanji>perkiraan</kanji> dari <kanji>perhitungan</kanji> adalah <vocabulary>perkiraan</vocabulary> atau <vocabulary>perkiraan kasar</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_7301_perkiraan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '概念', 'ide-umum', 49, 79, 'Sebuah <kanji>perkiraan</kanji> dari <kanji>pemikiran</kanji> hanyalah memikirkan <vocabulary>ide umum</vocabulary>. <vocabulary>konsep</vocabulary> atau <vocabulary>gagasan</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_7302_ide_umum;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '概要', 'garis-besar', 49, 80, '<kanji>perkiraan</kanji> dari apa yang <kanji>butuhkan</kanji> adalah <vocabulary>garis besar</vocabulary> atau <vocabulary>ringkasan</vocabulary> saya.

概要 adalah kata formal yang mengacu pada gambaran singkat tentang poin-poin penting, sering digunakan dalam dokumen, laporan, atau presentasi.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_7303_garis_besar;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '大概', 'umumnya', 49, 81, '<kanji>besar</kanji> <kanji>perkiraan</kanji> adalah ketika saya mengatakan sesuatu <vocabulary>secara umum</vocabulary>. Saya <vocabulary>terutama</vocabulary> dan <vocabulary>kebanyakan</vocabulary> menceritakan semuanya.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_7304_umumnya;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '一概に', 'tanpa-syarat', 49, 82, 'Kita bergerak menuju <kanji>satu</kanji> <kanji>perkiraan</kanji>. Dulunya lebih banyak perkiraan, tapi sekarang hanya satu, dan karena hanya satu, maka sebenarnya bukan perkiraan lagi. <vocabulary>tanpa syarat</vocabulary> disetel. Ini ditetapkan <vocabulary>sebagai aturan</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_7305_tanpa_syarat;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '浸る', 'untuk-direndam', 49, 83, 'Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanji itu sendiri artinya <kanji>dibenamkan</kanji>. Hal-hal yang dibenamkan digambarkan dengan kata kerja seperti <vocabulary>direndam dalam</vocabulary> atau <vocabulary>ditenggelamkan</vocabulary> atau <vocabulary>dibanjiri</vocabulary>.', 'Apa yang direndam dan direndam dalam air (yang tidak boleh)? Ini adalah <reading>pemanas</reading> Anda (ひた). Semuanya basah kuyup dan tidak berfungsi lagi :(')
    RETURNING id INTO v_7306_untuk_direndam;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '浸水', 'perendaman', 49, 84, '<kanji>Dibenamkan</kanji> dalam <kanji>air</kanji>. Kedengarannya seperti <vocabulary>perendaman</vocabulary>. Bahkan mungkin seperti <vocabulary>banjir</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_7307_perendaman;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '侵食', 'erosi', 49, 85, 'Sesuatu yang <kanji>menyerang</kanji> dan <kanji>memakan</kanji> sesuatu adalah sesuatu yang menyebabkan <vocabulary>erosi</vocabulary> dan <vocabulary>korosi</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_7308_erosi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '淡い', 'pingsan', 49, 86, 'Ini adalah kanji tunggal dengan い di akhir, artinya Anda tahu itu mungkin kata sifat. Apa bentuk kata sifat dari <kanji>pingsan</kanji>? Itu <vocabulary>pingsan</vocabulary>.', 'Anda melihat jaraknya. Anda melihat sesuatu yang sangat <vocabulary>samar</vocabulary> dan <vocabulary>pucat</vocabulary> di luar sana. Itu... itu... <read>awwa</reading> (あわ) seekor anak anjing! Awwwwww! Aawwww!')
    RETURNING id INTO v_7309_pingsan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '淡水', 'air-tawar', 49, 87, '<kanji>lemah</kanji> <kanji>air</kanji> adalah air yang tidak kental dengan garam. Itu adalah <vocabulary>air tawar</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_7310_air_tawar;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '煮る', 'untuk-merebus-sesuatu', 49, 88, 'Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. 

Kanjinya sendiri berarti <kanji>merebus</kanji> dan versi kosakata kata kerjanya adalah <vocabulary>merebus sesuatu</vocabulary>. Ini adalah kata kerja transitif, jadi digunakan saat Anda memasukkan sesuatu ke dalam panci dan merebusnya.', 'Bacaannya sama dengan yang Anda pelajari dengan kanji.')
    RETURNING id INTO v_7311_untuk_merebus_sesuatu;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '雑煮', 'hidangan-tahun-baru', 49, 89, '<kanji>acak</kanji> <kanji>mendidih</kanji> tidak terlalu acak. Ini khususnya <vocabulary>hidangan tahun baru</vocabulary> atau <vocabulary>sup mochi</vocabulary>, yang disantap pada tahun baru. Orang tua dan anak-anak cenderung meninggal setiap tahun karena hal ini (tersedak mochi), jadi berhati-hatilah jika Anda memakannya! Mungkin alasan disebut "rebusan acak" adalah karena seseorang memutuskan untuk merebus banyak hal secara acak (seperti mochi) dan kemudian menjadi hidangan tahun baru di kemudian hari. Siapa tahu. Informasi tersebut bahkan tidak diketahui oleh orang dahulu.', 'Anda mempelajari bacaan 煮 di halaman kanji, tetapi bacaan untuk 雑 luar biasa. Anda memang mempelajari bacaan ini dengan 雑巾. Bayangkan saja diri Anda dengan kain lap di piring tahun baru Anda.')
    RETURNING id INTO v_7312_hidangan_tahun_baru;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '煮物', 'makanan-rebus', 49, 90, '<kanji>Makanan</kanji>yang direbus</kanji>berubah menjadi <vocabulary>makanan yang direbus</vocabulary> atau <vocabulary>makanan yang direbus</vocabulary>. Anda bisa makan apa saja, asal direbus cukup lama.', 'Bacaannya adalah bacaan yang dipelajari dengan kanji.')
    RETURNING id INTO v_7313_makanan_rebus;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '覆る', 'akan-dibalik', 49, 91, 'Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanji sendiri berarti <kanji>terbalik</kanji> tetapi versi kata kerjanya adalah apa yang terjadi ketika sebuah rencana atau ide terbalik. Ini akan <vocabulary>dibalik</vocabulary>. Itu ide yang buruk, kembalilah, jangan lakukan itu atau kita semua akan tenggelam!', 'Dari semua ide yang <vocabulary>harus dibalik</vocabulary>, itu adalah ide dari <reading>靴 guy</reading> (くつがえ). Menurutnya kita sebaiknya hanya memakai sepatu. Bukan sepatu dan tidak lain, tapi sepatu di seluruh tubuh kita. Astaga, itu ide yang aku ingin <vocabulary>dicabut</vocabulary>, 靴 kawan.')
    RETURNING id INTO v_7314_akan_dibalik;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '覆面', 'masker', 49, 92, '<kanji>Menutupi</kanji> <kanji>wajah</kanji> Anda. Bukan dengan tanganmu atau anak anjing, tapi dengan <vocabulary>topeng</vocabulary>! Oke, saya kira Anda bisa menutupinya dengan topeng anak anjing, tapi itu saja.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_7315_masker;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '転覆', 'terbalik', 49, 93, 'Ia <kanji>berputar</kanji> lalu <kanji>terbalik</kanji>. Ketika sebuah kapal berputar telentang lalu terbalik, hal ini menyebabkan <vocabulary>terbalik</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri. Hati-hati dengan rendaku.')
    RETURNING id INTO v_7316_terbalik;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '謀る', 'untuk-berkonspirasi', 49, 94, 'Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanjinya sendiri berarti <kanji>bersekongkol</kanji> dan versi kosakata kata kerjanya adalah <vocabulary>to conspire</vocabulary> atau <vocabulary>to plot</vocabulary>.', 'Sekelompok <reading>hacker</reading> (はか) berkumpul dan mencoba <vocabulary>berkonspirasi</vocabulary> dan merencanakan untuk menghancurkan mainframe! Para peretas itu!')
    RETURNING id INTO v_7317_untuk_berkonspirasi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '無謀', 'ceroboh', 49, 95, '<kanji>konspirasi</kanji>yang saya lakukan? <kanji>Tidak ada</kanji>... itu berapa banyak. Jika saya tidak bersekongkol, saya tidak memikirkan tindakan saya. Jika saya tidak berpikir, berarti saya hanya <vocabulary>sembrono</vocabulary> dan <vocabulary>sembrono</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_7318_ceroboh;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '陰謀', 'konspirasi', 49, 96, 'Di bawah <kanji>teduhan</kanji> orang-orang <kanji>bersekongkol</kanji>. Ketika orang melakukan ini, <vocabulary>konspirasi</vocabulary> muncul.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_7319_konspirasi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '陶器', 'tembikar', 49, 97, '<kanji>tembikar</kanji> <kanji>wadah</kanji> adalah <vocabulary>tembikar</vocabulary>. Itu <vocabulary>keramik</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_7320_tembikar;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '陶芸', 'seni-keramik', 49, 98, '<kanji>Tembikar</kanji> <kanji>seni</kanji> adalah membuat tembikar. Dengan kata lain, itu adalah <vocabulary>seni keramik</vocabulary> atau sekadar <vocabulary>keramik</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_7321_seni_keramik;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '隔離', 'isolasi', 49, 99, '<kanji>Isolasi</kanji> dan <kanji>lepaskan</kanji> dari yang lainnya. Benda (atau orang) ini berada dalam <vocabulary>isolasi</vocabulary> dan <vocabulary>karantina</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_7322_isolasi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '隔週', 'setiap-minggu-lainnya', 49, 100, '<kanji>Pisahkan</kanji> <kanji>minggu</kanji> ini dari minggu depan, dan lakukan itu berulang kali. Dengan begitu, kami memiliki <vocabulary>setiap dua minggu</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_7323_setiap_minggu_lainnya;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '間隔', 'ruang-angkasa', 49, 101, 'Saya ingin <kanji>mengisolasi</kanji> <kanji>interval waktu</kanji> ini. Ambil, pisahkan, lalu lihat. Sekarang ada <vocabulary>space</vocabulary> di sana. <vocabulary>interval</vocabulary>, jika Anda mau.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_7324_ruang_angkasa;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '隔月', 'setiap-bulan-lainnya', 49, 102, 'Jika Anda <kanji>mengisolasi</kanji> <kanji>bulan</kanji> ini dari bulan berikutnya, lalu melakukannya berulang kali, Anda akan melihat <vocabulary>setiap bulan</vocabulary> yang diisolasi dari bulan-bulan lainnya.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_7325_setiap_bulan_lainnya;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '隔てる', 'untuk-mengisolasi', 49, 103, 'Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanjinya sendiri berarti <kanji>mengisolasi</kanji> dan versi kosakata kata kerjanya adalah <vocabulary>mengisolasi</vocabulary> atau <vocabulary>mempartisi</vocabulary> atau <vocabulary>memisahkan</vocabulary>. Anda pasti mengerti maksudnya.', 'Mengapa Anda harus <vocabulary>mengisolasi</vocabulary> dia dari pemain sepak bola lainnya? Karena yang bisa dia lakukan hanyalah <reading>header</reading> (へだ) dan itu menjadi sangat berbahaya. Dia akan memimpin segala sesuatu yang ada dalam jangkauannya. Dia menjadi gila dengan sundulan. Dia harus diisolasi!')
    RETURNING id INTO v_7326_untuk_mengisolasi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '遠征', 'ekspedisi', 49, 104, 'Jarak <kanji>jauh</kanji> yang harus kita tempuh untuk <kanji>menaklukkan</kanji> musuh kita. Ini adalah <vocabulary>ekspedisi</vocabulary> dan <vocabulary>campaign</vocabulary> yang panjang untuk melakukan hal tersebut!', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_7327_ekspedisi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '征服', 'penaklukan', 49, 105, 'Saya akan <kanji>menaklukkan</kanji> semua orang untuk mengenakan <kanji>pakaian</kanji> yang saya ingin mereka kenakan. Mereka akan memakai seragamku, karena mereka akan berada di bawah <vocabulary>penaklukan</vocabulary>ku. Aku akan <vocabulary>menaklukkan</vocabulary> mereka!', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_7328_penaklukan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '陛下', 'yang-mulia', 49, 106, '<kanji>Yang Mulia</kanji> Saya sangat <kanji>di bawah</kanji> Anda karena <vocabulary>Yang Mulia</vocabulary> begitu hebat dan menakjubkan!', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_7329_yang_mulia;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '俗語', 'slang', 49, 107, '<kanji>Vulgar</kanji> <kanji>bahasa</kanji> belum tentu merupakan kata-kata yang buruk, atau semacamnya. Hanya saja lebih kasar dan tidak standar seperti bahasa standar. Ini adalah <vocabulary>slang</vocabulary>.

俗語 adalah istilah formal untuk bahasa gaul, sering digunakan secara tertulis. Jika Anda ingin berbicara tentang "gaul" dengan lebih santai, cukup ucapkan スラング.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_7330_slang;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '民俗', 'adat-istiadat-rakyat', 49, 108, '<kanji>masyarakat</kanji> yang <kanji>vulgar</kanji> bukanlah orang kota yang beradab. Mereka adalah orang-orang yang memiliki <vocabulary>adat istiadat rakyat</vocabulary> dan <vocabulary>adat istiadat etnis</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_7331_adat_istiadat_rakyat;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '俗', 'slang', 49, 109, 'Hal-hal yang <kanji>vulgar</kanji> adalah hal-hal seperti <vocabulary>slang</vocabulary>, <vocabulary>sopan santun</vocabulary>, dan sekadar hal-hal yang <vocabulary>umum</vocabulary>.', 'Bacaannya sama dengan yang Anda pelajari dengan kanji.')
    RETURNING id INTO v_7332_slang;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '桑', 'murbai', 49, 110, 'Kanjinya berarti <kanji>murbei</kanji>, jadi artinya <vocabulary>murbei</vocabulary> atau <vocabulary>pohon murbei</vocabulary>.

Perhatikan bahwa buah murbei lebih dikenal dengan nama 桑の実.', 'Bacaannya sama dengan yang Anda pelajari dengan kanji.')
    RETURNING id INTO v_7333_murbai;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '桑畑', 'ladang-murbei', 49, 111, '<kanji>mulberry</kanji> <kanji>ladang</kanji> adalah <vocabulary>ladang murbei</vocabulary> atau <vocabulary>perkebunan murbei</vocabulary>. Ini lebih seperti operasi penanaman murbei komersial/terorganisir, jadi bukan ladang murbei sembarangan.', 'Bacaannya berasal dari 桑 (bacaan kanji) dan vocab kata 畑. Hati-hati dengan rendaku.')
    RETURNING id INTO v_7335_ladang_murbei;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '潤う', 'menjadi-lembab', 49, 112, 'Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanji itu sendiri berarti <kanji>disiram</kanji>. Kalau ada yang disiram jadi lembab ya? Itu sebabnya kata kerja ini adalah <vocabulary>menjadi lembab</vocabulary> atau <vocabulary>menjadi lembab</vocabulary>.

潤う mengacu pada benda-benda yang dilembabkan dengan baik, seperti kulit atau mata. Anggap saja mereka diperkaya dengan kelembapan. Itu sebabnya maknanya juga mencakup kemakmuran finansial — kelembapan memperkaya tubuh, dan keuntungan finansial memperkaya kehidupan atau bisnis Anda. Jadi kata ini juga berarti <vocabulary>menjadi sejahtera</vocabulary>.', 'Jika Anda basah atau lembab, maka <reading>Anda semua</reading> (うるお) basah. Begitulah adanya.')
    RETURNING id INTO v_7336_menjadi_lembab;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '利潤', 'laba', 49, 113, '<kanji>keuntungan</kanji> yang saya <kanji>disiram</kanji> mengalir deras ke seluruh tubuh saya. Itulah <vocabulary>keuntungan</vocabulary> dan <vocabulary>pengembalian</vocabulary> saya.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_7337_laba;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '数珠', 'rosario', 49, 114, '<kanji>sejumlah</kanji> dari <kanji>mutiara</kanji>, disatukan dalam sebuah tali. Ini mengacu pada <vocabulary>rosario</vocabulary> atau <vocabulary>tasbih</vocabulary>. Anda akan sering melihatnya di Jepang, dijual atau dipakai oleh para biksu.', 'Pembacaan kata ini berbeda dengan kedua pembacaan kanji yang Anda pelajari. Kata ini sangat mirip dengan <reading>Yahudi</reading> (じゅず), jadi kita harus menggunakan kata itu. Bayangkan saja rosario atau tasbih Yahudi, yang digunakan oleh orang Yahudi.')
    RETURNING id INTO v_7338_rosario;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '珠算', 'perhitungan-dengan-sempoa', 49, 115, '<kanji>mutiara</kanji> <kanji>perhitungan</kanji> adalah perhitungan yang Anda lakukan dengan mutiara. Jika Anda berpikir untuk menggunakan mutiara untuk menghitung sesuatu, itu akan terlihat seperti menggunakan sempoa. Itu sebabnya perhitungan ini adalah <vocabulary>perhitungan dengan sempoa</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri. Hati-hati dengan rendaku.')
    RETURNING id INTO v_7339_perhitungan_dengan_sempoa;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '真珠', 'mutiara', 49, 116, '<kanji>realitas</kanji> <kanji>mutiara</kanji> adalah mutiara yang sesungguhnya! Itu hanyalah <vocabulary>mutiara</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri. Hati-hati dengan rendaku.')
    RETURNING id INTO v_7340_mutiara;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '衰える', 'untuk-menolak', 49, 117, 'Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanjinya sendiri berarti <kanji>menurun</kanji> dan versi kosakata kata kerjanya adalah <vocabulary>menolak</vocabulary>.', 'Anda sedang menjelajahi hutan, ketika Anda menemukan lubang yang dalam. Karena Anda sedang mencari harta karun, Anda memutuskan untuk turun ke dalam lubang untuk mencarinya. Anda mengeluarkan <reading>auto ro</reading>pe (おとろ) yang praktis, terbuat dari bahan organik yang ramah lingkungan, dan dengan mudah turun ke dalam lubang. Sayangnya, Anda tersesat di sana, dan Anda memerlukan waktu lima puluh tahun untuk kembali ke lubang asal Anda. Tapi tali otomatismu hilang! Ini adalah kali terakhir Anda membeli tali organik, yang <vocabulary>meluruh</vocabulary> dan <vocabulary>layu</vocabulary> ketika ditinggalkan di alam liar.')
    RETURNING id INTO v_7341_untuk_menolak;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '老衰', 'kepikunan', 49, 118, 'Orang <kanji>lansia</kanji> yang <kanji>menurun</kanji> adalah seseorang yang sudah tua dan mengalami kemunduran. Mereka mengalami <vocabulary>senility</vocabulary> atau <vocabulary>pikun</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_7342_kepikunan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '衰退', 'menolak', 49, 119, 'Sesuatu yang <kanji>menurun</kanji> dan <kanji>mundur</kanji> dari penurunan adalah sesuatu yang sedang <vocabulary>menurun</vocabulary>. Ini juga merupakan <vocabulary>decay</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_7343_menolak;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '推奨', 'rekomendasi', 49, 120, 'Saya ingin <kanji>menyimpulkan</kanji> dan <kanji>mendorong</kanji> item ini kepada Anda. Ini adalah <vocabulary>rekomendasi</vocabulary> saya. Itu adalah <vocabulary>dukungan</vocabulary> saya.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_7344_rekomendasi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '奨学金', 'beasiswa', 49, 121, '<kanji>Mendorong</kanji> <kanji>belajar</kanji> <kanji>uang</kanji> adalah uang yang Anda berikan kepada seorang anak untuk mendorongnya belajar. Itu diberikan dalam bentuk <vocabulary>beasiswa</vocabulary> atau <vocabulary>gaji</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_7345_beasiswa;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '劣化', 'kemerosotan', 49, 122, '<kanji>inferioritas</kanji> Anda telah <kanji>berubah</kanji>d. Faktanya, kondisinya semakin memburuk, berubah dari menit ke menit. Setiap menit yang berlalu adalah menit di mana kondisi Anda semakin buruk. Ini adalah <vocabulary>kemunduran</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_7346_kemerosotan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '劣悪', 'rendah-diri', 49, 123, '<kanji>Inferioritas</kanji> adalah <kanji>buruk</kanji>. Bagaimanapun juga, ini adalah <vocabulary>inferiority</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_7347_rendah_diri;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '劣等感', 'rasa-rendah-diri', 49, 124, '<kanji>Inferioritas</kanji> adalah apa yang aku rasakan karena aku tidak memiliki <kanji>yang setara</kanji> <kanji>perasaan</kanji> denganmu. Hal ini disebabkan oleh <vocabulary>inferiority complex</vocabulary> saya, <vocabulary>rasa inferioritas </vocabulary> saya.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_7348_rasa_rendah_diri;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '劣る', 'menjadi-lebih-rendah-dari', 49, 125, 'Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanji itu sendiri berarti <kanji>inferioritas</kanji> dan versi kosakata kata kerjanya adalah <vocabulary>menjadi inferior</vocabulary>.', 'Kalau bicara soal mobil, mobil matic (おと) kalah dengan mobil manual. Tentu saja, manual lebih sulit, tetapi jauh lebih menarik untuk dikendarai.')
    RETURNING id INTO v_7349_menjadi_lebih_rendah_dari;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '勘', 'intuisi', 49, 126, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna. Bisa juga berarti <vocabulary>perception</vocabulary> atau <vocabulary>firasat</vocabulary>.', 'Bacaannya adalah yang Anda pelajari dari kanji.')
    RETURNING id INTO v_7350_intuisi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '勘案', 'mempertimbangkan', 49, 127, 'Dengan menggunakan <kanji>intuisi</kanji> kita, kita akan menghasilkan <kanji>rencana</kanji>. Kami akan <vocabulary>mempertimbangkan</vocabulary> informasi yang kami miliki beserta intuisi kami, jadi jangan khawatir.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_7351_mempertimbangkan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '勘弁', 'maaf', 49, 128, '<kanji>Intuisi</kanji> dari <kanji>dialek</kanji> saya memberi tahu saya bahwa saya harus <vocabulary>memaafkan</vocabulary> Anda. Memberi Anda <vocabulary>pengampunan</vocabulary>. Anda beruntung saya berbicara dengan dialek ini.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_7352_maaf;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '割り勘', 'membagi-biaya', 49, 129, 'Saya akan <kanji>membagi</kanji> <kanji>intuisi</kanji> ke atas. Untuk beberapa alasan ketika saya mengatakan "intuisi" yang saya maksud adalah "uang" karena ini mengacu pada <vocabulary>membagi biaya</vocabulary>, seperti saat Anda berada di restoran.', 'Bacaannya adalah 割る dan 勘, disatukan.')
    RETURNING id INTO v_7353_membagi_biaya;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '勘違い', 'salah-paham', 49, 130, '<kanji>intuisi</kanji> <kanji>perbedaan</kanji> adalah <vocabulary>kesalahpahaman</vocabulary> atau <vocabulary>salah tebak</vocabulary>. Maaf! Intuisi saya salah.', 'Kata ini merupakan gabungan dari kanji 勘 dan kata kosakata 違い, jadi Anda pernah melihat bacaan ini sebelumnya. Jika Anda bisa mengingatnya, Anda seharusnya bisa membaca kata ini juga.')
    RETURNING id INTO v_7354_salah_paham;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '王妃', 'ratu', 49, 131, 'Saat <kanji>raja</kanji> mengambil <kanji>permaisuri</kanji>, dia menjadi <vocabulary>ratu</vocabulary>.

王妃 adalah sebutan untuk istri raja yang sedang berkuasa. Dia menjadi ratu karena siapa yang dinikahinya, bukan karena dia sendiri mempunyai kekuasaan. Istilah yang lebih teknis untuk itu adalah <vocabulary>permaisuri</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_7355_ratu;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '〜妃', 'putri', 49, 132, 'Kanji berarti <kanji>permaisuri</kanji>, jadi menambahkannya ke nama seseorang akan memberi Anda gaya kerajaannya: "<vocabulary>Putri</vocabulary> ______," atau, dalam beberapa kasus, "<vocabulary>Ratu</vocabulary> ______."

〜妃 pada dasarnya mengacu pada istri putra mahkota, kaisar, atau anggota keluarga kerajaan lainnya. Saat ini, Anda hampir selalu melihatnya digunakan untuk putri, seperti ダイアナ妃 (Putri Diana) atau キャサリン妃 (Putri Catherine), namun dalam konteks sejarah terkadang Anda akan melihatnya digunakan untuk permaisuri dan permaisuri juga.', 'Bacaannya sama dengan yang Anda pelajari dengan kanji.')
    RETURNING id INTO v_7357_putri;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '恨み', 'sakit-hati', 49, 133, '恨む adalah "menyimpan dendam." Ini adalah versi kata bendanya, yaitu <vocabulary>dendam</vocabulary> atau <vocabulary>kebencian</vocabulary>.', 'Bacaannya berasal dari 恨む, jadi kalau tahu itu tidak perlu menyimpan dendam.')
    RETURNING id INTO v_7433_sakit_hati;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '哀れむ', 'sayang-sekali', 49, 134, 'Jika ada sesuatu yang <kanji>menyedihkan</kanji> maka kamu harus mencoba <vocabulary>mengasihani</vocabulary> hal itu.', '<read>Awww</reading> (あわ), kamu sangat menyedihkan dan lucu! aku akan kasihan padamu. Membaca juga berasal dari 哀れ.')
    RETURNING id INTO v_7434_sayang_sekali;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '憩い', 'istirahat', 49, 135, 'Jika 憩う berarti istirahat, maka versi kata benda ini (saya tahu ini terlihat seperti kata sifat, tapi sebenarnya bukan) adalah <vocabulary>rest</vocabulary>.', 'Bacaannya berasal dari 憩う, jadi jika Anda mengetahuinya, Anda bisa tenang.')
    RETURNING id INTO v_7435_istirahat;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '詐欺師', 'penipu', 49, 136, 'Anda tahu bahwa 詐欺 adalah "penipuan." <kanji>ahli</kanji> dalam penipuan adalah seseorang yang sering melakukan hal ini, dan mungkin untuk mencari nafkah. Itu adalah <vocabulary>penipu</vocabulary>, <vocabulary>penipu</vocabulary>, atau <vocabulary>penipu</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri. Akan membantu untuk mengetahui bacaan 詐欺 juga.')
    RETURNING id INTO v_7443_penipu;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '花柳界', 'distrik-lampu-merah', 49, 137, '<kanji>distrik lampu merah</kanji> (花柳) <kanji>dunia</kanji> dari distrik lampu merah adalah <vocabulary>distrik lampu merah</vocabulary>, meskipun ini dapat merujuk secara khusus pada "<vocabulary>tempat bersenang-senang</vocabulary>" atau "<vocabulary>dunia geisha</vocabulary>" juga.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_7446_distrik_lampu_merah;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '休憩所', 'tempat-istirahat', 49, 138, '<kanji>rest</kanji> (休憩) <kanji>tempat</kanji> adalah <vocabulary>rest area</vocabulary> atau <vocabulary>rest stop</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri. Hati-hati dengan rendaku.')
    RETURNING id INTO v_7447_tempat_istirahat;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '慌てる', 'menjadi-panik', 49, 139, 'Kata ini terdiri dari kanji dengan hiragana ditempelkan. Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanji itu sendiri berarti <kanji>bingung</kanji> atau <kanji>bingung</kanji> tetapi ini biasanya hanya digunakan ketika seseorang mulai <vocabulary>panik</vocabulary>. Mereka begitu bingung dan bingung sehingga mereka mencoba <vocabulary>untuk bergegas</vocabulary> melalui berbagai hal.', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi. Anda belum mempelajari bacaan ini, jadi inilah mnemonik untuk membantu Anda:

Setiap kali Anda mulai <vocabulary>panik</vocabulary> Anda pasti akan berseru, "<reading>A apa-</reading> (あわ)?" untuk semua yang orang katakan dan tanyakan. Misalnya, "Apakah Anda ingin permen mint?" "APA?!" Ya, kamu benar-benar terdengar kesal.')
    RETURNING id INTO v_8890_menjadi_panik;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '恐慌', 'panik', 49, 140, '<kanji>Ketakutan</kanji> bercampur dengan <kanji>kebingungan</kanji> menciptakan <vocabulary>panik</vocabulary>! Anda mendapatkan <vocabulary>ketakutan</vocabulary> yang sangat buruk, Anda takut dan tidak tahu harus berbuat apa.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda sudah mempelajarinya, jadi Anda seharusnya bisa membacanya sendiri!')
    RETURNING id INTO v_8892_panik;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '蹴る', 'untuk-menendang', 49, 141, 'Kata ini terdiri dari kanji dengan hiragana ditempelkan. Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanjinya sendiri berarti <kanji>menendang</kanji> jadi versi kata kerjanya adalah <vocabulary>menendang</vocabulary>.', 'Kosakata ini menggunakan bacaan yang sama yang Anda pelajari dengan kanji, ditambah hiragana yang terlampir di akhir.')
    RETURNING id INTO v_8920_untuk_menendang;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '一蹴する', 'untuk-menendang', 49, 142, 'Memberi <kanji>satu</kanji> <kanji>tendangan</kanji> tentu saja merupakan cara <vocabulary>yang efektif (meskipun brutal) untuk menolak mentah-mentah</vocabulary> atau <vocabulary>menyingkirkan</vocabulary> sesuatu atau seseorang. Tendangan yang satu itu juga bisa digunakan <vocabulary>untuk mengalahkan</vocabulary> siapa pun dengan mudah.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi.  Pertama, perhatikan bahwa <reading>いち</reading> berubah menjadi <reading>いっ</reading>. Dan karena Anda belum mempelajari on''yomi untuk kanji <kanji>蹴</kanji> (tendangan), berikut ini mnemonik untuk membantu Anda:

Saat Anda berencana <vocabulary>menolak tegas</vocabulary> seseorang, Anda hanya memerlukan satu <kanji>tendangan</kanji>. Sebelum Anda melakukannya, pastikan untuk mengenakan <reading>sepatu</reading> (しゅう) Anda terlebih dahulu.')
    RETURNING id INTO v_8921_untuk_menendang;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '炊ける', 'untuk-dimasak', 49, 143, 'Kata ini terdiri dari kanji dengan hiragana ditempelkan. Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Ini merupakan kata kerja intransitif, jadi artinya <vocabulary>dimasak</vocabulary>, <vocabulary>direbus</vocabulary>, atau <vocabulary>dimasak</vocabulary>. Juga sedikit catatan budaya — kata ini digunakan untuk nasi, dan makanan lainnya di Jepang bagian barat, sedangkan kata ini hanya digunakan untuk nasi di Jepang bagian timur.', 'Karena kata ini memiliki okurigana (hiragana yang melekat pada kanji), Anda tahu bahwa kemungkinan besar itu adalah bacaan kun''yomi.

Beruntungnya Anda, pembacaan kanji untuk kata kerja transitif dan intransitif hampir selalu sama. Setelah Anda mempelajarinya, Anda akan mengetahui keduanya! Bacaan ini sama dengan 炊く.')
    RETURNING id INTO v_8941_untuk_dimasak;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '砕ける', 'akan-dihancurkan', 49, 144, 'Kata ini terdiri dari kanji dengan hiragana ditempelkan. Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja.

Ini adalah kata kerja intransitif, jadi kata kerja ini berarti <vocabulary>dihancurkan</vocabulary>, <vocabulary>dihancurkan</vocabulary>, atau <vocabulary>dihancurkan</vocabulary> (untuk hal-hal seperti gelombang dan ketegangan!).', 'Karena kata ini memiliki okurigana (hiragana yang melekat pada kanji), Anda tahu bahwa kemungkinan besar itu adalah bacaan kun''yomi.

Beruntungnya Anda, pembacaan kanji untuk kata kerja transitif dan intransitif hampir selalu sama. Setelah Anda mempelajarinya, Anda akan mengetahui keduanya! Bacaan ini sama dengan 砕く.')
    RETURNING id INTO v_8948_akan_dihancurkan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '准教授', 'profesor-madya', 49, 145, 'Ingat 教授 yang berarti "profesor"? Hal ini menjadikannya <kanji>semi</kanji> profesor, atau dengan kata lain, <vocabulary>associate professor</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_9285_profesor_madya;
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4519_nilai, 'Nilai', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4519_nilai, 'Harga', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_4519_nilai, 'あたい', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4519_nilai, 'その価には同意できないな。タダ同然じゃないか。', 'Saya tidak setuju dengan harga ini. Ini seperti hadiah gratis.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4519_nilai, 'いやいや、これ、五百万円の価が付いている時計だよ？', 'Tidak, tidak, tidak, ini jam tangan seharga 5 juta yen, oke?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4519_nilai, '春に桜が満開になった時のここからの眺めは、まさに価千金です。', 'Pemandangan dari sini di musim semi saat bunga sakura bermekaran sungguh tak ternilai harganya.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6995_pendapatan_tahunan, 'Pendapatan Tahunan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6995_pendapatan_tahunan, 'Pendapatan Pemerintah Tahunan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6995_pendapatan_tahunan, 'Pendapatan Tahun Anggaran', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_6995_pendapatan_tahunan, 'さいにゅう', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6995_pendapatan_tahunan, 'どの政府にも、特別歳入基金はあるものなのですか。', 'Apakah setiap pemerintah mempunyai dana pendapatan khusus?');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7257_nilai_mata_uang, 'Nilai Mata Uang', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7257_nilai_mata_uang, 'かへいかち', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7257_nilai_mata_uang, 'その時からどれぐらい貨幣価値が変わったか、知っているかい？', 'Tahukah Anda seberapa besar perubahan nilai uang sejak saat itu?');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7258_keremangan, 'Keremangan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7258_keremangan, 'Ketidakjelasan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7258_keremangan, 'Tidak jelas', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7258_keremangan, 'Kabur', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7258_keremangan, 'ふめいりょう', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7258_keremangan, '説明書を読んだんですが、あまりに不明瞭だったので、新モデルの実力についてちょっと不安に思っています。', 'Saya sedikit khawatir dengan kemampuan model baru ini karena meskipun saya membaca petunjuknya, namun sangat tidak jelas.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7259_perembesan, 'Perembesan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7259_perembesan, 'Perendaman', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7259_perembesan, 'Osmosa', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7259_perembesan, 'しんとう', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7259_perembesan, 'こちらの化粧水は、お肌の奥深くまで浸透するということで、すごく人気が出てきています。', 'Lotion wajah ini menjadi sangat populer karena meresap ke dalam kulit.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7260_keadaan_lengket, 'Keadaan lengket', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7260_keadaan_lengket, 'ねばり', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7260_keadaan_lengket, '一生懸命粘り強く努力すればいつかは報われると思っていましたが、それは間違いでした。', 'Saya percaya kerja keras dan usaha yang gigih akan membuahkan hasil suatu hari nanti, tapi saya salah.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7261_nenek, 'Nenek', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7261_nenek, 'Nenek', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7261_nenek, 'Nyonya Tua', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7261_nenek, 'Wanita Tua', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7261_nenek, 'おばあちゃん', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7261_nenek, 'お婆ちゃんに、嘘をついたことで責められた。', 'Nenek menuduh saya berbohong.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7262_penuh_kebencian, 'Penuh kebencian', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7262_penuh_kebencian, 'にくらしい', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7262_penuh_kebencian, '候補者のコウイチ氏は、大統領候補討論会の前、憎らしいほど落ち着いていました。', 'Kandidat Koichi sangat keren sebelum debat presiden.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7263_kebencian, 'Kebencian', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7263_kebencian, 'にくしみ', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7263_kebencian, 'てっきり彼らはお互いに憎しみ合っているものだと思っていました。', 'Saya tentu mengira mereka saling membenci.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7264_penuh_kebencian, 'Penuh kebencian', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7264_penuh_kebencian, 'Mengerikan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7264_penuh_kebencian, 'Menjijikkan', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7264_penuh_kebencian, 'にくい', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7264_penuh_kebencian, 'こんなに誰かのことを憎いと思ったのは生まれて初めてです。', 'Aku belum pernah membenci seseorang sebesar ini dalam hidupku.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7265_kipas_lipat, 'Kipas Lipat', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7265_kipas_lipat, 'おうぎ', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7265_kipas_lipat, 'あの、紫色の扇をもったご婦人は一体どなたですか。', 'Siapakah wanita yang memegang kipas lipat berwarna ungu itu?');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7266_penggemar, 'Penggemar', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7266_penggemar, 'Uchiwa', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7266_penggemar, 'うちわ', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7266_penggemar, '同じ模様の団扇だけど、私の物の方があなたのより少し小さくて軽いみたいね。', 'Kipas kami memiliki desain yang sama, tetapi kipas saya tampaknya sedikit lebih kecil dan lebih ringan daripada kipas Anda.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7267_untuk_menyisipkan, 'Untuk Menyisipkan', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7267_untuk_menyisipkan, 'そうにゅうする', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7267_untuk_menyisipkan, 'DVDはここから挿入できるよ。', 'Anda dapat memasukkan DVD dari sini.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7268_bidak_catur, 'Bidak Catur', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7268_bidak_catur, 'Potongan Shogi', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7268_bidak_catur, 'Bagian Permainan', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7268_bidak_catur, 'こま', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7268_bidak_catur, '父さんが日曜日にチェスの駒の動かし方を教えてくれるって約束してくれたんだ。', 'Ayah saya berjanji bahwa dia akan mengajari saya cara memindahkan bidak catur pada hari Minggu ini.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7272_abstraksi, 'Abstraksi', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7272_abstraksi, 'ちゅうしょう', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7272_abstraksi, '彼女のレビューは何だか抽象的だったので、あまりよく分かりませんでした。', 'Ulasannya agak abstrak, jadi saya tidak begitu memahaminya.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7273_lotere, 'Lotere', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7273_lotere, 'Mengundi', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7273_lotere, 'Banyak Menggambar', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7273_lotere, 'ちゅうせん', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7273_lotere, '私はあの病院の抽選で、胃のバイパス手術が当たったんです。', 'Saya memenangkan operasi bypass lambung dari undian rumah sakit itu.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7274_ekstraksi, 'Ekstraksi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7274_ekstraksi, 'Mengekstraksi', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7274_ekstraksi, 'Contoh', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7274_ekstraksi, 'ちゅうしゅつ', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7274_ekstraksi, '五時までに抽出データを整理してもらうことはできますか。', 'Bisakah Anda memilah data yang diekstraksi pada jam 5?');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7275_sumpah, 'Sumpah', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7275_sumpah, 'Sumpah', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7275_sumpah, 'ちかい', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7275_sumpah, '結婚の誓いの言葉を述べている時、自分が間違った男の人と結婚しようとしていることは分かっていました。', 'Saat aku mengucapkan janji pernikahanku, aku tahu aku menikah dengan pria yang salah.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7276_sumpah, 'Sumpah', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7276_sumpah, 'Sumpah', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7276_sumpah, 'Sumpah', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7276_sumpah, 'Perjanjian', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7276_sumpah, 'せいやく', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7276_sumpah, 'こちらが誓約書となっておりまして、こちらとこちらにサインをして頂く必要があります。', 'Berikut janji tertulisnya. Anda perlu menandatanganinya di sini dan di sini.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7281_untuk_menyadari, 'Untuk Menyadari', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7281_untuk_menyadari, 'Untuk Mencapai Pencerahan', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7281_untuk_menyadari, 'さとる', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7281_untuk_menyadari, '背中の曲がったお婆さんは、不法滞在者として拘置所に拘留された時、そこで自分が死を迎えることになることを悟りました。', 'Ketika wanita tua bungkuk itu dikirim ke pusat penahanan karena menjadi imigran ilegal, dia menyadari bahwa di sanalah dia akan menemui ajalnya.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7282_kesiapan_mental, 'Kesiapan Mental', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7282_kesiapan_mental, 'Resolusi', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7282_kesiapan_mental, 'Tekad', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7282_kesiapan_mental, 'かくご', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7282_kesiapan_mental, '私は痩身手術を受ける覚悟を決めました。', 'Saya pasrah menjalani operasi penurunan berat badan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7282_kesiapan_mental, '横綱の背中には責任と覚悟が見えた。', 'Melihat punggung yokozuna, kita bisa melihat rasa tanggung jawab dan tekadnya.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7283_reklamasi, 'Reklamasi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7283_reklamasi, 'Penanaman', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7283_reklamasi, 'Kepeloporan', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7283_reklamasi, 'かいたく', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7283_reklamasi, '畑は違えど、新規市場を開拓するという点においては、前職とさほど変わりはないよ。', 'Meskipun ini adalah bidang yang sama sekali berbeda, tidak banyak perbedaan dalam hal mengembangkan pasar baru.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7284_penahanan, 'Penahanan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7284_penahanan, 'Menahan', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7284_penahanan, 'こうち', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7284_penahanan, 'その女性は豆柴を膝に載せたまま酔っぱらっていたので、見かねた警察がその犬を保護拘置し、後から返してあげたそうです。', 'Saya mendengar bahwa wanita itu sedang mabuk dengan miniatur Shiba Inu di pangkuannya, jadi polisi, yang tidak tahan melihat situasinya, membawa anjing itu ke dalam tahanan pelindung dan kemudian mengembalikannya.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7285_dasar, 'Dasar', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7285_dasar, 'Landasan', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7285_dasar, 'いしずえ', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7285_dasar, 'ここにいる人は皆、総合格闘技の礎を築いた故人の死を悼んでいると思います。', 'Saya pikir semua orang di sini berduka atas meninggalnya orang yang meletakkan dasar bagi seni bela diri campuran.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7285_dasar, '手塚治虫は日本文化の礎となった人物と考えていいと思います。', 'Saya rasa dapat dikatakan bahwa Osamu Tezuka adalah landasan budaya Jepang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7285_dasar, '大変だ。お城の礎となる石が誰かに壊されてしまった。一刻も早く避難しないと城が崩れるぞ！', 'Oh tidak. Seseorang memecahkan batu yang menjadi fondasi kastil. Jika kita tidak mengungsi secepat mungkin, kastilnya akan runtuh!');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7286_dasar, 'Dasar', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7286_dasar, 'Dasar-dasar', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7286_dasar, 'きそ', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7286_dasar, '基礎の日本語であれば教えられないこともないですが。', 'Saya bisa mengajar bahasa Jepang jika itu hanya dasar-dasar bahasa Jepang.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7287_derek, 'Derek', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7287_derek, 'つる', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7287_derek, 'たくさんの折り紙の鶴を醤油につけて、日本人の女の子の部屋に置いてみるってのはどうかな。', 'Bagaimana kalau mencelupkan sekumpulan origami burung bangau ke dalam kecap dan menaruhnya di kamar gadis Jepang?');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7288_untuk_memangkas, 'Untuk Memangkas', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7288_untuk_memangkas, 'Untuk Memotong', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7288_untuk_memangkas, 'Untuk Memotong', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7288_untuk_memangkas, 'かる', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7288_untuk_memangkas, '草を刈り終わったから、放してやってよ。', 'Saya sudah selesai memotong rumput, jadi lepaskan dia.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7289_memotong, 'Memotong', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7289_memotong, 'くさかり', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7289_memotong, '昨日は俺が悪かったよ。本当にごめん。お詫びの印に、今日は草刈りをするよ。', 'Aku benar-benar minta maaf karena bersikap brengsek kemarin. Saya akan memotong rumput hari ini untuk meminta maaf.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7290_untuk_memotong, 'Untuk Memotong', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7290_untuk_memotong, 'Untuk Menuai', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7290_untuk_memotong, 'Untuk Memanen', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7290_untuk_memotong, 'かりとる', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7290_untuk_memotong, '私の実家は農家で米を育てているので、今週末は稲の刈り取りを手伝わなきゃいけないんです。', 'Orang tua saya adalah petani yang bercocok tanam padi jadi saya harus membantu mereka memanen padi di akhir pekan ini.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7291_semangat, 'Semangat', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7291_semangat, 'Semangat', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7291_semangat, 'Kejantanan', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7291_semangat, 'ごうけん', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7291_semangat, '彼は剛健な昔の武士のような見た目だが、彼の足にある血豆を誤って押してしまった時に、泣き叫んでいました。', 'Dia tampak seperti pejuang yang kuat di masa lalu, tetapi dia meratap ketika saya secara tidak sengaja menekan kakinya yang melepuh.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7292_semata_mata, 'Semata-mata', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7292_semata_mata, 'Hanya', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7292_semata_mata, 'Hanya', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7292_semata_mata, 'Hanya', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7292_semata_mata, 'Hanya', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7292_semata_mata, 'ただ', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7292_semata_mata, '彼女は私の母ではなく唯の付き添い人です。', 'Dia bukan ibuku, dia hanya seorang pendamping.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7293_hanya, 'Hanya', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7293_hanya, 'Tunggal', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7293_hanya, 'Unik', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7293_hanya, 'ゆいつ', true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7293_hanya, 'ゆいいつ', false);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7293_hanya, 'あいつは奴の家族の中で唯一まともな人間だよ。', 'Dia adalah satu-satunya orang yang baik di keluarganya.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7294_materialisme, 'Materialisme', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7294_materialisme, 'ゆいぶつろん', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7294_materialisme, '母国語でも唯物論について説明できないのに、どうして外国語で説明できるというのか。', 'Saya bahkan tidak bisa menjelaskan materialisme dalam bahasa ibu saya, jadi bagaimana saya bisa menjelaskannya dalam bahasa asing?');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7295_mimbar, 'Mimbar', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7295_mimbar, 'Platform', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7295_mimbar, 'だん', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7295_mimbar, '壇上で、小さな可愛いフラワーガールの女の子が、しばらく花嫁の人気をさらいました。', 'Gadis penjual bunga kecil yang lucu itu sejenak mengungguli pengantin wanita di podium.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7296_tempat_tidur_bunga, 'Tempat Tidur Bunga', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7296_tempat_tidur_bunga, 'かだん', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7296_tempat_tidur_bunga, 'その花壇を見ると、いつも母を思い出します。', 'Saya selalu memikirkan ibu saya ketika saya melihat hamparan bunga.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7297_altar_buddha, 'Altar Buddha', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7297_altar_buddha, 'ぶつだん', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7297_altar_buddha, '仏壇の前でうつ伏せになって寝転がっていると、母がやって来てそれは失礼なことだと怒られました。', 'Ketika aku sedang berbaring tengkurap di depan altar Buddha, ibuku datang dan mengatakan kepadaku bahwa melakukan itu tidak sopan.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7298_biarawati, 'Biarawati', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7298_biarawati, 'Pendeta wanita', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7298_biarawati, 'にそう', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7298_biarawati, 'その尼僧は、寝起きはいつも顔がむくんでいます。', 'Wajah biarawati itu selalu bengkak saat bangun tidur.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7299_biarawati, 'Biarawati', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7299_biarawati, 'あま', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7299_biarawati, '彼女は尼さんなのにお酒をたくさん飲みます。', 'Meskipun dia seorang biarawati, dia adalah seorang peminum berat.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7300_semangat_yang_kuat, 'Semangat yang Kuat', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7300_semangat_yang_kuat, 'Tulang punggung', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7300_semangat_yang_kuat, 'きがい', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7300_semangat_yang_kuat, 'その教師は、教室で見て見ぬふりをされている問題に取り組む気概がなかった。', 'Guru tidak mempunyai nyali untuk menangani permasalahan yang ada di kelas.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7301_perkiraan, 'Perkiraan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7301_perkiraan, 'Perkiraan Kasar', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7301_perkiraan, 'がいさん', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7301_perkiraan, '旅行費用の概算を教えてもらえますか。', 'Bisakah Anda memberi saya perkiraan kasar biaya perjalanan?');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7302_ide_umum, 'Ide Umum', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7302_ide_umum, 'Konsep', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7302_ide_umum, 'Gagasan', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7302_ide_umum, 'がいねん', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7302_ide_umum, 'ほとんどの無神論者は、神や神々の概念に対して否定的です。', 'Kebanyakan atheis mempunyai perasaan negatif terhadap konsep Tuhan atau Tuhan.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7303_garis_besar, 'Garis besar', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7303_garis_besar, 'Ringkasan', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7303_garis_besar, 'がいよう', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7303_garis_besar, '青年海外協力隊についての概要は、こちらのページでお読み頂けます。', 'Garis besar Korps Perdamaian Jepang dapat Anda baca di halaman ini.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7304_umumnya, 'Umumnya', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7304_umumnya, 'Terutama', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7304_umumnya, 'Sebagian besar', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7304_umumnya, 'たいがい', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7304_umumnya, '万引きをするのは大概、退屈で孤独を感じている女性だと言う人がいますが、ある調査が男性の方が女性よりも万引きをすることが多い可能性を示唆しているそうですよ。', 'Beberapa orang berpendapat bahwa pengutil kebanyakan adalah wanita yang bosan dan kesepian, namun saya mendengar bahwa sebuah penelitian menunjukkan bahwa lebih banyak pria yang mengutil dibandingkan wanita.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7305_tanpa_syarat, 'Tanpa syarat', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7305_tanpa_syarat, 'Sebagai Aturan', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7305_tanpa_syarat, 'いちがいに', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7305_tanpa_syarat, '定額給付金は一概に良い事だとは言えない。', 'Saya tidak bisa mengatakan bahwa potongan pajak adalah hal yang baik tanpa syarat.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7306_untuk_direndam, 'Untuk Direndam', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7306_untuk_direndam, 'Untuk Ditenggelamkan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7306_untuk_direndam, 'Akan Kebanjiran', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7306_untuk_direndam, 'ひたる', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7306_untuk_direndam, 'お風呂で図書館から借りたホーソンの『巌の顔』を読んでいたんですが、うっかりお湯に浸ってしまったんです。', 'Saya sedang membaca "The Great Stone Face" karya Hawthorne yang saya pinjam dari perpustakaan di kamar mandi dan tanpa berpikir panjang merendamnya dalam air mandi.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7307_perendaman, 'Perendaman', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7307_perendaman, 'Banjir', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7307_perendaman, 'しんすい', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7307_perendaman, '気温が上がるのは素晴らしいことだけど、私達は雪解け水による浸水を心配しています。', 'Sangat menyenangkan melihat suhu meningkat, tapi kami khawatir akan terjadi banjir akibat salju yang mencair.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7308_erosi, 'Erosi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7308_erosi, 'Korosi', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7308_erosi, 'しんしょく', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7308_erosi, '木々を切り倒すことで、土壌の侵食が引き起こされることがあります。', 'Menebang pohon dapat menyebabkan erosi tanah.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7309_pingsan, 'Pingsan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7309_pingsan, 'Pucat', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7309_pingsan, 'あわい', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7309_pingsan, '話を変えて悪いけど、淡いピンク色のチーク持ってなかったっけ？', 'Maaf harus mengganti topik pembicaraan, tapi bukankah ada rona merah muda pucat di wajahmu?');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7310_air_tawar, 'Air Tawar', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7310_air_tawar, 'たんすい', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7310_air_tawar, '金魚は淡水魚だから、水槽に塩を入れてはいけませんよ。', 'Ikan mas adalah ikan air tawar jadi sebaiknya tidak memasukkan garam ke dalam akuarium.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7311_untuk_merebus_sesuatu, 'Untuk Merebus Sesuatu', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7311_untuk_merebus_sesuatu, 'Untuk Mendidihkan Sesuatu', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7311_untuk_merebus_sesuatu, 'にる', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7311_untuk_merebus_sesuatu, '今日は、この脂ののった秋鮭を煮てみたいと思います。', 'Kami akan merebus salmon musim gugur yang berlemak hari ini.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7312_hidangan_tahun_baru, 'Hidangan Tahun Baru', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7312_hidangan_tahun_baru, 'Sup Mochi', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7312_hidangan_tahun_baru, 'ぞうに', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7312_hidangan_tahun_baru, 'お雑煮そろそろ煮えたんじゃないかな。', 'Sup mochi Tahun Baru seharusnya sudah siap sekarang.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7313_makanan_rebus, 'Makanan Rebus', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7313_makanan_rebus, 'Makanan Rebus', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7313_makanan_rebus, 'にもの', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7313_makanan_rebus, '彼女は小食ですが、煮物ならモリモリ食べます。', 'Dia adalah seorang pemakan ringan tetapi jika menyangkut makanan yang direbus, dia makan dengan penuh semangat.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7314_akan_dibalik, 'Akan Dibalik', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7314_akan_dibalik, 'Menjadi Terbalik', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7314_akan_dibalik, 'Untuk Ditarik Kembali', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7314_akan_dibalik, 'Untuk Terguling', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7314_akan_dibalik, 'くつがえる', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7314_akan_dibalik, 'スポーツはずっとそんなに好きではなかったんですが、一度野球の試合を見に行った時にそれが覆りまして、今ではマリナーズの大ファンです。', 'Saya tidak selalu menyukai olahraga, namun hal itu berubah ketika saya menonton pertandingan bisbol dan sekarang saya menjadi penggemar berat Mariners.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7315_masker, 'Masker', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7315_masker, 'ふくめん', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7315_masker, '覆面のスーパーマンは、ボッロボロのマントを身につけていました。', 'Superman bertopeng itu mengenakan jubah yang compang-camping.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7316_terbalik, 'Terbalik', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7316_terbalik, 'Menggulingkan', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7316_terbalik, 'てんぷく', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7316_terbalik, 'ワニだらけの沼沢で私のカヌーが転覆した時は、どっと冷や汗をかきましたよ。', 'Tiba-tiba saya berkeringat dingin ketika sampan saya terbalik di rawa yang penuh dengan aligator.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7317_untuk_berkonspirasi, 'Untuk berkonspirasi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7317_untuk_berkonspirasi, 'Untuk Merencanakan', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7317_untuk_berkonspirasi, 'はかる', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7317_untuk_berkonspirasi, 'あいつらはフィレンツェのダビデ像の前でのドラマチックな暗殺を謀っているんだ。', 'Mereka merencanakan pembunuhan dramatis di depan Patung Daud di Florence.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7318_ceroboh, 'Ceroboh', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7318_ceroboh, 'Tanpa berpikir', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7318_ceroboh, 'Tidak direncanakan', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7318_ceroboh, 'むぼう', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7318_ceroboh, '私の娘を止めてもらえませんか。無謀にもスパイ活動をしようとしているんです。', 'Bisakah kamu menghentikan putriku? Dia dengan ceroboh terlibat dalam spionase.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7319_konspirasi, 'Konspirasi', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7319_konspirasi, 'いんぼう', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7319_konspirasi, '彼は秘密結社が世界を支配しているという陰謀論を信じています。', 'Dia percaya pada teori konspirasi bahwa sebuah perkumpulan rahasia mengendalikan dunia.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7320_tembikar, 'Tembikar', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7320_tembikar, 'Keramik', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7320_tembikar, 'とうき', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7320_tembikar, 'もう使わないんだったら、白い陶器は全部誰かにあげちゃえば？', 'Mengapa Anda tidak memberikan semua keramik putih ini jika sudah tidak digunakan lagi?');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7321_seni_keramik, 'Seni Keramik', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7321_seni_keramik, 'Keramik', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7321_seni_keramik, 'Tembikar', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7321_seni_keramik, 'とうげい', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7321_seni_keramik, '彼女の陶芸作品のルーツは、日本文化にあります。', 'Karya keramiknya berakar pada budaya Jepang.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7322_isolasi, 'Isolasi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7322_isolasi, 'Karantina', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7322_isolasi, 'かくり', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7322_isolasi, '彼は二日酔いであまりにも酒臭すぎるので、別の部屋に隔離しています。', 'Kami telah mengkarantina dia di ruangan terpisah karena dia mabuk dan berbau minuman keras.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7323_setiap_minggu_lainnya, 'Setiap Minggu Lainnya', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7323_setiap_minggu_lainnya, 'かくしゅう', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7323_setiap_minggu_lainnya, 'このアニメは隔週で放送されていて、私はそのオープニング曲とエンディング曲が好きです。', 'Anime ini tayang dua minggu sekali dan saya suka lagu pembuka dan penutupnya.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7324_ruang_angkasa, 'Ruang angkasa', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7324_ruang_angkasa, 'Selang', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7324_ruang_angkasa, 'Celah', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7324_ruang_angkasa, 'かんかく', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7324_ruang_angkasa, '生理痛程度の陣痛が15分から20分ぐらいの間隔で始まって、今行った方がいいのか病院に電話をしました。', 'Kontraksi ringan dimulai dalam interval 15 hingga 20 menit dan saya menelepon rumah sakit untuk menanyakan apakah kami harus pergi sekarang.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7325_setiap_bulan_lainnya, 'Setiap Bulan Lainnya', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7325_setiap_bulan_lainnya, 'かくげつ', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7325_setiap_bulan_lainnya, '日本文化の授業が隔月で開講されるんですが、今月は餅つきをする予定です。', 'Kami mengadakan kelas budaya Jepang setiap dua bulan sekali dan kami berencana menumbuk mochi bulan ini.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7326_untuk_mengisolasi, 'Untuk Mengisolasi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7326_untuk_mengisolasi, 'Untuk Mempartisi', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7326_untuk_mengisolasi, 'Untuk Memisahkan', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7326_untuk_mengisolasi, 'へだてる', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7326_untuk_mengisolasi, '私のアパートでは、浴槽と洗面所はシャワーカーテン一枚で隔てられています。', 'Di apartemen saya, bak mandi dan kamar mandi dipisahkan oleh satu tirai mandi.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7327_ekspedisi, 'Ekspedisi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7327_ekspedisi, 'Kampanye', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7327_ekspedisi, 'えんせい', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7327_ekspedisi, '豚インフルエンザの流行により、遠征は中止となりました。', 'Karena merebaknya flu babi, ekspedisi dihentikan.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7328_penaklukan, 'Penaklukan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7328_penaklukan, 'Penaklukan', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7328_penaklukan, 'せいふく', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7328_penaklukan, 'トーフグが世界征服をしようとしているということを又聞きしてしまいました。', 'Saya mendengar bahwa Tofugu sedang mencoba menaklukkan dunia.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7329_yang_mulia, 'Yang Mulia', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7329_yang_mulia, 'Yang Mulia', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7329_yang_mulia, 'Yang Mulia', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7329_yang_mulia, 'へいか', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7329_yang_mulia, '陛下、恐れ入りますが会議にご出席のご予定だったのでは。', 'Yang Mulia, saya minta maaf karena memaksakannya tetapi Anda seharusnya menghadiri pertemuan tersebut.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7330_slang, 'Slang', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7330_slang, 'ぞくご', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7330_slang, 'この俗語はアメリカ独特の表現です。', 'Bahasa sehari-hari ini adalah ekspresi unik di Amerika.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7331_adat_istiadat_rakyat, 'Adat Istiadat Rakyat', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7331_adat_istiadat_rakyat, 'Adat Etnis', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7331_adat_istiadat_rakyat, 'みんぞく', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7331_adat_istiadat_rakyat, '彼は、歴史民俗資料館の館長です。', 'Dia adalah direktur Museum Sejarah dan Cerita Rakyat.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7332_slang, 'Slang', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7332_slang, 'Umum', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7332_slang, 'Vulgar', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7332_slang, 'Tata Krama Setempat', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7332_slang, 'Adat Istiadat Setempat', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7332_slang, 'Biasa', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7332_slang, 'ぞく', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7332_slang, '貧乏から金持ちに成り上がった人は、俗に成金と呼ばれます。', 'Orang yang berubah dari miskin menjadi kaya biasanya disebut nouveau riche.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7333_murbai, 'Murbai', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7333_murbai, 'Pohon Murbei', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7333_murbai, 'くわ', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7333_murbai, '桑の実と林檎と胡桃の組み合わせが最強に美味しいんだよね。', 'Mulberry, apel, dan kenari terasa paling enak jika digabungkan.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7335_ladang_murbei, 'Ladang Murbei', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7335_ladang_murbei, 'Perkebunan Murbei', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7335_ladang_murbei, 'くわばたけ', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7335_ladang_murbei, '私の地元には、桑畑があちこちにあります。', 'Ladang murbei ada dimana-mana di kampung halamanku.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7336_menjadi_lembab, 'Menjadi Lembab', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7336_menjadi_lembab, 'Untuk Dilembabkan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7336_menjadi_lembab, 'Menjadi Sejahtera', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7336_menjadi_lembab, 'うるおう', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7336_menjadi_lembab, 'このローションを使えば、あなたのお肌はプルプルに潤いますよ。', 'Jika menggunakan lotion ini akan melembabkan kulit sehingga kencang dan lembut.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7337_laba, 'Laba', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7337_laba, 'Kembali', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7337_laba, 'りじゅん', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7337_laba, '日本には資源超過利潤税は無かったと思うよ。', 'Menurut saya, tidak ada Pajak Keuntungan Super Sumber Daya di Jepang.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7338_rosario, 'Rosario', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7338_rosario, 'Tasbih', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7338_rosario, 'じゅず', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7338_rosario, '高額な数珠を私に売りつけようとした男の名前が思い出せません。', 'Saya tidak ingat nama orang yang mencoba memaksa saya membeli rosario mahal.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7339_perhitungan_dengan_sempoa, 'Perhitungan Dengan Sempoa', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7339_perhitungan_dengan_sempoa, 'しゅざん', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7339_perhitungan_dengan_sempoa, '今日は珠算を勉強するって気分じゃないんだよね。', 'Saya tidak ingin mempelajari perhitungan dengan sempoa hari ini.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7340_mutiara, 'Mutiara', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7340_mutiara, 'しんじゅ', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7340_mutiara, '真珠を身につける人は減ってきています。', 'Semakin sedikit orang yang memakai mutiara.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7341_untuk_menolak, 'Untuk Menolak', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7341_untuk_menolak, 'Membusuk', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7341_untuk_menolak, 'Menjadi Lemah', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7341_untuk_menolak, 'Menjadi layu', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7341_untuk_menolak, 'おとろえる', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7341_untuk_menolak, '数年前にこの牛肉を食べた時は、非常に良く熟成されて霜が降っていることに感動したんですが、今はちょっと味が衰えたみたいでとても残念ですね。', 'Saat saya menyantap daging sapi ini beberapa tahun yang lalu, saya sangat terkesan dengan betapa matangnya daging tersebut dan teksturnya yang seperti marmer, namun rasanya sepertinya sudah sedikit menurun dan saya sangat kecewa.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7342_kepikunan, 'Kepikunan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7342_kepikunan, 'Pembusukan Pikun', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7342_kepikunan, 'ろうすい', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7342_kepikunan, '母親が老衰で亡くなったとき、妻が「厄介者がいなくなってせいせいした」と独り言を言っているのを私は聞き漏らしませんでした。', 'Ketika ibu saya meninggal karena usia tua, saya sering mendengar istri saya bergumam, “parasit itu sudah hilang, selamat,” pada dirinya sendiri.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7343_menolak, 'Menolak', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7343_menolak, 'Membusuk', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7343_menolak, 'すいたい', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7343_menolak, 'どの専門家も、投資市場の衰退は信用収縮によって誘導されたと口を揃えて言うけれど、それってつまりはどういう意味なの？', 'Semua ahli mengatakan bahwa penurunan investasi disebabkan oleh krisis kredit, namun apa maksudnya?');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7344_rekomendasi, 'Rekomendasi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7344_rekomendasi, 'Dukungan', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7344_rekomendasi, 'すいしょう', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7344_rekomendasi, 'このカボチャのパイは、焼き上がりでも美味しく召し上がって頂けるのですが、私たちは御賞味の前に少し冷蔵庫に入れて頂くことを推奨しています。', 'Pai labu ini langsung lezat setelah dipanggang, namun kami menyarankan untuk mendinginkannya sebentar sebelum memakannya.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7345_beasiswa, 'Beasiswa', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7345_beasiswa, 'Gaji', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7345_beasiswa, 'しょうがくきん', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7345_beasiswa, 'その占い師に、私は奨学金をもらえるだろうって予言されたんだけど、当たったよ。', 'Peramal meramalkan bahwa saya akan menerima beasiswa dan dia benar.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7346_kemerosotan, 'Kemerosotan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7346_kemerosotan, 'Degradasi', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7346_kemerosotan, 'れっか', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7346_kemerosotan, '女優やモデルの見た目が以前よりも老けた時、日本のネット用語で「劣化した」と言います。', 'Ketika aktris atau model menua dan terlihat lebih tua dari biasanya, kata di internet dalam bahasa Jepang untuk mereka adalah "memburuk".');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7347_rendah_diri, 'Rendah diri', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7347_rendah_diri, 'Kekasaran', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7347_rendah_diri, 'れつあく', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7347_rendah_diri, '劣悪な職場環境の会社は、日本ではしばしば「ブラック企業」と呼ばれます。', 'Perusahaan dengan lingkungan kerja yang sangat kasar sering disebut “perusahaan hitam” di Jepang.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7348_rasa_rendah_diri, 'Rasa rendah diri', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7348_rasa_rendah_diri, 'Rasa Rendah Diri', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7348_rasa_rendah_diri, 'れっとうかん', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7348_rasa_rendah_diri, 'その詐欺師は劣等感の塊だった。', 'Penipu itu adalah kumpulan rasa rendah diri.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7348_rasa_rendah_diri, '人と自分を比べては、劣等感に苛まれてしまう。', 'Saya cenderung membandingkan diri saya dengan orang lain dan merasa rendah diri terhadap mereka.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7348_rasa_rendah_diri, '彼女が私に対して劣等感を抱いていると誤解していました。', 'Saya mendapat kesan yang salah bahwa dia memiliki rasa rendah diri terhadap saya.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7349_menjadi_lebih_rendah_dari, 'Menjadi Lebih Rendah Dari', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7349_menjadi_lebih_rendah_dari, 'おとる', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7349_menjadi_lebih_rendah_dari, '今、彼は私のこと嫌っているから、私の立場は挨拶程度の人よりも劣っているってのははっきりしてるわ。', 'Dia membenciku sekarang, jadi aku cukup yakin bahwa aku bahkan lebih rendah darinya daripada seorang kenalan yang mengangguk.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7350_intuisi, 'Intuisi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7350_intuisi, 'Persepsi', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7350_intuisi, 'Firasat', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7350_intuisi, 'かん', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7350_intuisi, '成功の秘訣は、鋭い勘をもつことです。', 'Memiliki intuisi yang tajam adalah kunci kesuksesan.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7351_mempertimbangkan, 'Mempertimbangkan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7351_mempertimbangkan, 'Memberikan Pertimbangan', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7351_mempertimbangkan, 'かんあん', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7351_mempertimbangkan, '様々な状況を勘案すると、私にとって仕事を辞めることがベストな選択だったんです。', 'Dengan mempertimbangkan berbagai keadaan, berhenti dari pekerjaan adalah pilihan terbaik bagi saya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7351_mempertimbangkan, '自分がされたり言われたりしたらどう思うかってことも勘案に入れるようにしてます。', 'Saya mencoba mempertimbangkan bagaimana perasaan saya jika sesuatu dikatakan atau dilakukan kepada saya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7351_mempertimbangkan, 'この投資に関して、どのようなリスクを勘案していますか。', 'Risiko apa saja yang sudah Anda pertimbangkan sehubungan dengan investasi ini?');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7352_maaf, 'Maaf', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7352_maaf, 'Pengampunan', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7352_maaf, 'かんべん', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7352_maaf, '勘弁してよ。今日は忙しかったし、滅茶苦茶疲れているんだ。', 'Beri aku waktu luang. Ini hari yang panjang dan aku sangat lelah.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7353_membagi_biaya, 'Membagi Biaya', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7353_membagi_biaya, 'Memisahkan RUU', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7353_membagi_biaya, 'わりかん', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7353_membagi_biaya, '私は下戸でお酒を飲まないので、お酒のお勘定は割り勘じゃない方が嬉しいんですが。', 'Saya tidak bisa minum karena saya mudah mabuk, jadi alangkah baiknya jika kita tidak membagi tagihan alkoholnya.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7354_salah_paham, 'Salah paham', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7354_salah_paham, 'Tebakan yang Salah', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7354_salah_paham, 'かんちがい', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7354_salah_paham, '「すみません、間違えました。違う人と 勘違いしました。」「正確には誰と間違えたんですか？お願いします。教えてください。」', '“Maaf, kesalahan saya. Saya pikir Anda adalah orang lain.” "Sebenarnya siapa yang membuatmu salah mengira aku? Tolong. Katakan padaku."');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7355_ratu, 'Ratu', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7355_ratu, 'Permaisuri', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7355_ratu, 'おうひ', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7355_ratu, 'これは王妃の首飾りです。', 'Ini adalah kalung ratu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7355_ratu, 'その車に乗っていたのは王妃でした。', 'Orang di dalam mobil itu adalah ratu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7355_ratu, '第三王妃は、内心では第一王妃にうんざりしていた。', 'Permaisuri peringkat ketiga diam-diam muak dengan permaisuri utama.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7357_putri, 'Putri', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7357_putri, 'Ratu', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7357_putri, 'Istri', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7357_putri, 'ひ', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7357_putri, 'フグは、わざとサーモン妃にぶつかりました。', 'Fugu sengaja menabrak Putri Salmon.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7357_putri, 'ウィリアム王子とキャサリン妃は、庭を散歩しながら季節の花を楽しみました。', 'Pangeran William dan Putri Catherine menikmati bunga musiman saat mereka berjalan di taman.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7357_putri, 'カナエ妃は子どもたちとの交流をとても大切にしていました。', 'Putri Kanae sangat menghargai interaksi dengan anak-anak.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7357_putri, 'カミラ王妃は、即位前は日本語で「カミラ妃」や「カミラ夫人」と呼ばれました。', 'Sebelum aksesi, Ratu Camilla disebut dalam bahasa Jepang sebagai "Putri Camilla" atau "Nyonya Camilla".');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7433_sakit_hati, 'Sakit hati', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7433_sakit_hati, 'Kebencian', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7433_sakit_hati, 'Kebencian', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7433_sakit_hati, 'うらみ', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7433_sakit_hati, 'アポを取ろうとしたんだけど、彼はどうやらうちの社長に何か恨みがあるみたいで、時間をくれなかったんだよね。', 'Saya meminta untuk membuat janji, tetapi dia tidak mau memberi tahu saya waktunya karena sepertinya dia punya dendam terhadap presiden perusahaan kami.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7434_sayang_sekali, 'Sayang sekali', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7434_sayang_sekali, 'Untuk Memiliki Belas Kasihan', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7434_sayang_sekali, 'あわれむ', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7434_sayang_sekali, '彼女のお婆さんが、「あの子の人見知りは哀れむべきものだ」とぼやくのを聞きました。', 'Saya mendengar neneknya menggerutu, "Rasa malu gadis itu patut dikasihani."');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7435_istirahat, 'Istirahat', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7435_istirahat, 'いこい', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7435_istirahat, '私はうちの食堂を忙しいサラリーマンの憩いの場にしたいんです。', 'Saya ingin menjadikan restoran saya sebagai tempat istirahat dan relaksasi bagi para pegawai yang sibuk.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7443_penipu, 'Penipu', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7443_penipu, 'Penipu', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7443_penipu, 'Penipu', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7443_penipu, 'さぎし', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7443_penipu, '派手にお金を使っているなぁと思っていたら、詐欺師だったんですね！', 'Saya pikir Anda adalah seorang yang menghabiskan banyak uang, dan ternyata Anda adalah seorang penipu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7443_penipu, '不動産詐欺師というものが結構いるらしい。', 'Saya mendengar bahwa ada beberapa penipu real estate di luar sana.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7443_penipu, '「ねぇ、今俺のこと、嘘つきって言った？」「そうは言ってないけど、詐欺師とは言ったよ。」', '"Hei, apa kamu baru saja menyebutku pembohong?" "Tidak, tapi aku menyebutmu penipu."');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7446_distrik_lampu_merah, 'Distrik Lampu Merah', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7446_distrik_lampu_merah, 'Tempat Kesenangan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7446_distrik_lampu_merah, 'Dunia Geisha', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7446_distrik_lampu_merah, 'かりゅうかい', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7446_distrik_lampu_merah, '花柳界を経験してみるのが夢だったんだ。', 'Saya selalu bermimpi mengalami distrik lampu merah.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7447_tempat_istirahat, 'Tempat Istirahat', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7447_tempat_istirahat, 'Istirahat Berhenti', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7447_tempat_istirahat, 'きゅうけいじょ', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7447_tempat_istirahat, '逮捕された男は、休憩所に不法侵入した疑いがかけられていた。', 'Pria yang mereka tangkap diduga membobol rest area.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8890_menjadi_panik, 'Menjadi panik', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8890_menjadi_panik, 'Untuk bergegas', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8890_menjadi_panik, 'Untuk Terburu-buru', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8890_menjadi_panik, 'Menjadi Kesal', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8890_menjadi_panik, 'あわてる', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8890_menjadi_panik, '慌てないで、安全運転をお願いします。', 'Mohon jangan terburu-buru—berkendaralah dengan aman.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8890_menjadi_panik, '火事だと思い、慌てて水をかけたら、ただのロウソクだった。', 'Saya panik, mengira ada api, dan menyiramkan air, tapi itu hanya lilin.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8890_menjadi_panik, '慌てず、慎重にね。', 'Jangan terburu-buru, lakukan dengan hati-hati.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8892_panik, 'Panik', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8892_panik, 'Ketakutan', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8892_panik, 'きょうこう', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8892_panik, '私が留守だった日、村は恐慌に包まれた。', 'Desa itu diliputi kepanikan pada hari aku tidak berada di sana.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8892_panik, '人生で二度もの経済恐慌を経験するとは思っていなかったよ。', 'Saya tidak menyangka akan mengalami dua ketakutan ekonomi dalam hidup saya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8892_panik, '国全体が恐慌状態に陥った。', 'Seluruh negara menjadi panik.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8920_untuk_menendang, 'Untuk Menendang', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8920_untuk_menendang, 'Untuk Menolak', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8920_untuk_menendang, 'ける', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8920_untuk_menendang, 'どっちの足で蹴ったの？', 'Dengan kaki manakah kamu menendang?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8920_untuk_menendang, 'どうしてそのオファーを蹴っちゃったの？', 'Mengapa Anda menolak tawaran tersebut?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8920_untuk_menendang, '妖怪が妖精を蹴ったのを見ました。', 'Saya melihat seorang yokai menendang peri.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8921_untuk_menendang, 'Untuk Menendang', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8921_untuk_menendang, 'Untuk Menolak', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8921_untuk_menendang, 'Untuk Menolak Dengan Tegas', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8921_untuk_menendang, 'Untuk Menyingkirkan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8921_untuk_menendang, 'Untuk Mengalahkan dengan Mudah', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8921_untuk_menendang, 'いっしゅうする', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8921_untuk_menendang, 'コウイチに告白したが一蹴された。', 'Aku menyatakan cintaku pada Koichi, tapi dia menolakku sama sekali.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8921_untuk_menendang, 'ビエトは妖怪を一蹴した。', 'Viet mengalahkan yokai dengan mudah.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8921_untuk_menendang, '上司に休暇を申請したが一蹴された。', 'Saya mengajukan permintaan liburan ke atasan saya tetapi ditolak mentah-mentah.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8941_untuk_dimasak, 'Untuk Dimasak', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8941_untuk_dimasak, 'Untuk Direbus', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8941_untuk_dimasak, 'Harus Selesai Memasak', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8941_untuk_dimasak, 'たける', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8941_untuk_dimasak, 'ご飯、炊けた？', 'Apakah nasi sudah matang?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8941_untuk_dimasak, '今晩はカレーライスじゃなくてカレースパゲッティ。コンセントを差し忘れて、ご飯が炊けてなかったんだ。', 'Makan malam hari ini adalah spageti kari, bukan nasi kari. Saya lupa pasang colokannya, jadi nasinya belum matang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8941_untuk_dimasak, '大根が炊けるまであと五分やで。', 'Tinggal lima menit lagi sampai daikon matang.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8948_akan_dihancurkan, 'Akan Dihancurkan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8948_akan_dihancurkan, 'Akan Hancur', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8948_akan_dihancurkan, 'Untuk Istirahat', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8948_akan_dihancurkan, 'くだける', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8948_akan_dihancurkan, '急に窓ガラスが粉々に砕けた。', 'Tiba-tiba, jendela itu pecah berkeping-keping.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8948_akan_dihancurkan, '海辺に座って、波が砕けるのを見るのが好きです。', 'Saya suka duduk di pantai dan menyaksikan deburan ombak di tepi pantai..');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8948_akan_dihancurkan, '緊張した雰囲気がやっと砕けたと思ったんだけど、パーティはすぐに終わっちゃったんだ。', 'Ketika saya merasa ketegangan di udara akhirnya mereda, pesta hampir berakhir.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9285_profesor_madya, 'Profesor Madya', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_9285_profesor_madya, 'じゅんきょうじゅ', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9285_profesor_madya, '私は京都大学で准教授として務めています。', 'Saya bekerja sebagai profesor madya di Universitas Kyoto.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9285_profesor_madya, '確か、浅野先生は准教授のはずです。 ', 'Saya yakin Asano-sensei adalah seorang profesor madya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9285_profesor_madya, 'こちらは、今度このセンターの特任准教授に着任される木村博士です。', 'Ini adalah Dr. Kimura, yang akan segera mengambil posisi sebagai profesor madya yang ditunjuk secara khusus di pusat ini.');

  -- 4. PREREQUISITES
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2050_bidak_catur, id FROM items WHERE character = '馬' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2050_bidak_catur, id FROM items WHERE character = '句' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2052_ekstrak, id FROM items WHERE character = '扌' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2052_ekstrak, id FROM items WHERE character = '由' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2053_sumpah, id FROM items WHERE character = '扌' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2053_sumpah, id FROM items WHERE character = '斤' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2053_sumpah, id FROM items WHERE character = '言' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2054_menyadari, id FROM items WHERE character = '忄' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2054_menyadari, id FROM items WHERE character = '五' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2054_menyadari, id FROM items WHERE character = '口' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2055_penanaman, id FROM items WHERE character = '扌' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2055_penanaman, id FROM items WHERE character = '石' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2056_menangkap, id FROM items WHERE character = '扌' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2056_menangkap, id FROM items WHERE character = '句' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2057_dasar, id FROM items WHERE character = '石' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2057_dasar, id FROM items WHERE character = '木' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2057_dasar, id FROM items WHERE character = '疋' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2058_derek, id FROM items WHERE character = '宀' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2058_derek, id FROM items WHERE character = '隹' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2058_derek, id FROM items WHERE character = '鳥' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2059_memangkas, id FROM items WHERE character = 'メ' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2059_memangkas, id FROM items WHERE character = '刂' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2060_kokoh, id FROM items WHERE character = '岡' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2060_kokoh, id FROM items WHERE character = '刂' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2061_semata_mata, id FROM items WHERE character = '口' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2061_semata_mata, id FROM items WHERE character = '隹' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2062_mimbar, id FROM items WHERE character = '土' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2062_mimbar, id FROM items WHERE character = '亠' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_2062_mimbar, r_406_kali);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2062_mimbar, id FROM items WHERE character = '旦' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2063_biarawati, id FROM items WHERE character = '尸' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2063_biarawati, id FROM items WHERE character = '匕' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2064_perkiraan, id FROM items WHERE character = '木' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2064_perkiraan, id FROM items WHERE character = '艮' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2064_perkiraan, id FROM items WHERE character = '牙' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2065_tenggelam, id FROM items WHERE character = '氵' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2065_tenggelam, id FROM items WHERE character = 'ヨ' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2065_tenggelam, id FROM items WHERE character = '冖' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2065_tenggelam, id FROM items WHERE character = '又' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2066_pingsan, id FROM items WHERE character = '氵' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2066_pingsan, id FROM items WHERE character = '火' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2067_mendidihkan, id FROM items WHERE character = '者' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2067_mendidihkan, id FROM items WHERE character = '灬' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2068_terbalik, id FROM items WHERE character = '覀' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2068_terbalik, id FROM items WHERE character = '彳' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2068_terbalik, id FROM items WHERE character = '复' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2069_bersekongkol, id FROM items WHERE character = '言' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2069_bersekongkol, id FROM items WHERE character = '甘' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2069_bersekongkol, id FROM items WHERE character = '木' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2070_tembikar, id FROM items WHERE character = '阝' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2070_tembikar, id FROM items WHERE character = '勹' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2070_tembikar, id FROM items WHERE character = '缶' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2071_memisahkan, id FROM items WHERE character = '阝' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2071_memisahkan, id FROM items WHERE character = '鬲' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2072_menundukkan, id FROM items WHERE character = '彳' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2072_menundukkan, id FROM items WHERE character = '正' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2073_kebesaran, id FROM items WHERE character = '阝' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2073_kebesaran, id FROM items WHERE character = '比' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2073_kebesaran, id FROM items WHERE character = '土' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2074_vulgar, id FROM items WHERE character = 'ｲ' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2074_vulgar, id FROM items WHERE character = '谷' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2075_murbai, id FROM items WHERE character = '又' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2075_murbai, id FROM items WHERE character = '木' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2076_disiram, id FROM items WHERE character = '氵' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2076_disiram, id FROM items WHERE character = '門' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2076_disiram, id FROM items WHERE character = '王' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2077_mutiara, id FROM items WHERE character = '王' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2077_mutiara, id FROM items WHERE character = '丿' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2077_mutiara, id FROM items WHERE character = '未' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2078_menolak, id FROM items WHERE character = '亠' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2078_menolak, id FROM items WHERE character = '日' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2078_menolak, id FROM items WHERE character = '/radicals/kick.svg' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2079_mendorong, id FROM items WHERE character = '将' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2079_mendorong, id FROM items WHERE character = '大' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2080_rendah_diri, id FROM items WHERE character = '少' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2080_rendah_diri, id FROM items WHERE character = '力' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_2081_intuisi, r_407_perangkap_kepiting);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2081_intuisi, id FROM items WHERE character = '力' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2082_permaisuri_kerajaan, id FROM items WHERE character = '女' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2082_permaisuri_kerajaan, id FROM items WHERE character = '己' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2203_semi, id FROM items WHERE character = '冫' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2203_semi, id FROM items WHERE character = '隹' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_8881_bingung, id FROM items WHERE character = '忄' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_8881_bingung, r_8857_liar);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_8913_menendang, id FROM items WHERE character = '足' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_8913_menendang, id FROM items WHERE character = '京' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_8913_menendang, id FROM items WHERE character = '犬' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_4519_nilai, id FROM items WHERE character = '価' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_6995_pendapatan_tahunan, id FROM items WHERE character = '歳' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_6995_pendapatan_tahunan, id FROM items WHERE character = '入' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7257_nilai_mata_uang, id FROM items WHERE character = '貨' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7257_nilai_mata_uang, id FROM items WHERE character = '幣' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7257_nilai_mata_uang, id FROM items WHERE character = '価' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7257_nilai_mata_uang, id FROM items WHERE character = '値' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7258_keremangan, id FROM items WHERE character = '不' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7258_keremangan, id FROM items WHERE character = '明' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7258_keremangan, id FROM items WHERE character = '瞭' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7259_perembesan, k_2065_tenggelam);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7259_perembesan, id FROM items WHERE character = '透' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7260_keadaan_lengket, id FROM items WHERE character = '粘' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7261_nenek, id FROM items WHERE character = '婆' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7262_penuh_kebencian, id FROM items WHERE character = '憎' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7263_kebencian, id FROM items WHERE character = '憎' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7264_penuh_kebencian, id FROM items WHERE character = '憎' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7265_kipas_lipat, id FROM items WHERE character = '扇' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7266_penggemar, id FROM items WHERE character = '団' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7266_penggemar, id FROM items WHERE character = '扇' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7267_untuk_menyisipkan, id FROM items WHERE character = '挿' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7267_untuk_menyisipkan, id FROM items WHERE character = '入' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7268_bidak_catur, k_2050_bidak_catur);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7272_abstraksi, k_2052_ekstrak);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7272_abstraksi, id FROM items WHERE character = '象' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7273_lotere, k_2052_ekstrak);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7273_lotere, id FROM items WHERE character = '選' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7274_ekstraksi, k_2052_ekstrak);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7274_ekstraksi, id FROM items WHERE character = '出' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7275_sumpah, k_2053_sumpah);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7276_sumpah, k_2053_sumpah);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7276_sumpah, id FROM items WHERE character = '約' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7281_untuk_menyadari, k_2054_menyadari);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7282_kesiapan_mental, id FROM items WHERE character = '覚' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7282_kesiapan_mental, k_2054_menyadari);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7283_reklamasi, id FROM items WHERE character = '開' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7283_reklamasi, k_2055_penanaman);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7284_penahanan, k_2056_menangkap);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7284_penahanan, id FROM items WHERE character = '置' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7285_dasar, k_2057_dasar);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7286_dasar, id FROM items WHERE character = '基' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7286_dasar, k_2057_dasar);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7287_derek, k_2058_derek);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7288_untuk_memangkas, k_2059_memangkas);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7289_memotong, id FROM items WHERE character = '草' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7289_memotong, k_2059_memangkas);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7290_untuk_memotong, k_2059_memangkas);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7290_untuk_memotong, id FROM items WHERE character = '取' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7291_semangat, k_2060_kokoh);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7291_semangat, id FROM items WHERE character = '健' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7292_semata_mata, k_2061_semata_mata);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7293_hanya, k_2061_semata_mata);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7293_hanya, id FROM items WHERE character = '一' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7294_materialisme, k_2061_semata_mata);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7294_materialisme, id FROM items WHERE character = '物' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7294_materialisme, id FROM items WHERE character = '論' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7295_mimbar, k_2062_mimbar);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7296_tempat_tidur_bunga, id FROM items WHERE character = '花' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7296_tempat_tidur_bunga, k_2062_mimbar);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7297_altar_buddha, id FROM items WHERE character = '仏' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7297_altar_buddha, k_2062_mimbar);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7298_biarawati, k_2063_biarawati);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7298_biarawati, id FROM items WHERE character = '僧' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7299_biarawati, k_2063_biarawati);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7300_semangat_yang_kuat, id FROM items WHERE character = '気' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7300_semangat_yang_kuat, k_2064_perkiraan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7301_perkiraan, k_2064_perkiraan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7301_perkiraan, id FROM items WHERE character = '算' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7302_ide_umum, k_2064_perkiraan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7302_ide_umum, id FROM items WHERE character = '念' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7303_garis_besar, k_2064_perkiraan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7303_garis_besar, id FROM items WHERE character = '要' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7304_umumnya, id FROM items WHERE character = '大' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7304_umumnya, k_2064_perkiraan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7305_tanpa_syarat, id FROM items WHERE character = '一' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7305_tanpa_syarat, k_2064_perkiraan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7306_untuk_direndam, k_2065_tenggelam);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7307_perendaman, k_2065_tenggelam);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7307_perendaman, id FROM items WHERE character = '水' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7308_erosi, id FROM items WHERE character = '侵' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7308_erosi, id FROM items WHERE character = '食' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7309_pingsan, k_2066_pingsan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7310_air_tawar, k_2066_pingsan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7310_air_tawar, id FROM items WHERE character = '水' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7311_untuk_merebus_sesuatu, k_2067_mendidihkan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7312_hidangan_tahun_baru, id FROM items WHERE character = '雑' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7312_hidangan_tahun_baru, k_2067_mendidihkan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7313_makanan_rebus, k_2067_mendidihkan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7313_makanan_rebus, id FROM items WHERE character = '物' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7314_akan_dibalik, k_2068_terbalik);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7315_masker, k_2068_terbalik);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7315_masker, id FROM items WHERE character = '面' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7316_terbalik, id FROM items WHERE character = '転' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7316_terbalik, k_2068_terbalik);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7317_untuk_berkonspirasi, k_2069_bersekongkol);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7318_ceroboh, id FROM items WHERE character = '無' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7318_ceroboh, k_2069_bersekongkol);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7319_konspirasi, id FROM items WHERE character = '陰' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7319_konspirasi, k_2069_bersekongkol);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7320_tembikar, k_2070_tembikar);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7320_tembikar, id FROM items WHERE character = '器' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7321_seni_keramik, k_2070_tembikar);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7321_seni_keramik, id FROM items WHERE character = '芸' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7322_isolasi, k_2071_memisahkan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7322_isolasi, id FROM items WHERE character = '離' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7323_setiap_minggu_lainnya, k_2071_memisahkan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7323_setiap_minggu_lainnya, id FROM items WHERE character = '週' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7324_ruang_angkasa, id FROM items WHERE character = '間' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7324_ruang_angkasa, k_2071_memisahkan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7325_setiap_bulan_lainnya, k_2071_memisahkan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7325_setiap_bulan_lainnya, id FROM items WHERE character = '月' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7326_untuk_mengisolasi, k_2071_memisahkan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7327_ekspedisi, id FROM items WHERE character = '遠' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7327_ekspedisi, k_2072_menundukkan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7328_penaklukan, k_2072_menundukkan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7328_penaklukan, id FROM items WHERE character = '服' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7329_yang_mulia, k_2073_kebesaran);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7329_yang_mulia, id FROM items WHERE character = '下' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7330_slang, k_2074_vulgar);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7330_slang, id FROM items WHERE character = '語' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7331_adat_istiadat_rakyat, id FROM items WHERE character = '民' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7331_adat_istiadat_rakyat, k_2074_vulgar);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7332_slang, k_2074_vulgar);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7333_murbai, k_2075_murbai);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7335_ladang_murbei, k_2075_murbai);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7335_ladang_murbei, id FROM items WHERE character = '畑' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7336_menjadi_lembab, k_2076_disiram);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7337_laba, id FROM items WHERE character = '利' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7337_laba, k_2076_disiram);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7338_rosario, id FROM items WHERE character = '数' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7338_rosario, k_2077_mutiara);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7339_perhitungan_dengan_sempoa, k_2077_mutiara);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7339_perhitungan_dengan_sempoa, id FROM items WHERE character = '算' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7340_mutiara, id FROM items WHERE character = '真' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7340_mutiara, k_2077_mutiara);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7341_untuk_menolak, k_2078_menolak);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7342_kepikunan, id FROM items WHERE character = '老' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7342_kepikunan, k_2078_menolak);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7343_menolak, k_2078_menolak);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7343_menolak, id FROM items WHERE character = '退' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7344_rekomendasi, id FROM items WHERE character = '推' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7344_rekomendasi, k_2079_mendorong);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7345_beasiswa, k_2079_mendorong);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7345_beasiswa, id FROM items WHERE character = '学' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7345_beasiswa, id FROM items WHERE character = '金' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7346_kemerosotan, k_2080_rendah_diri);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7346_kemerosotan, id FROM items WHERE character = '化' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7347_rendah_diri, k_2080_rendah_diri);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7347_rendah_diri, id FROM items WHERE character = '悪' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7348_rasa_rendah_diri, k_2080_rendah_diri);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7348_rasa_rendah_diri, id FROM items WHERE character = '等' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7348_rasa_rendah_diri, id FROM items WHERE character = '感' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7349_menjadi_lebih_rendah_dari, k_2080_rendah_diri);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7350_intuisi, k_2081_intuisi);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7351_mempertimbangkan, k_2081_intuisi);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7351_mempertimbangkan, id FROM items WHERE character = '案' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7352_maaf, k_2081_intuisi);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7352_maaf, id FROM items WHERE character = '弁' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7353_membagi_biaya, id FROM items WHERE character = '割' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7353_membagi_biaya, k_2081_intuisi);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7354_salah_paham, k_2081_intuisi);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7354_salah_paham, id FROM items WHERE character = '違' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7355_ratu, id FROM items WHERE character = '王' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7355_ratu, k_2082_permaisuri_kerajaan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7357_putri, k_2082_permaisuri_kerajaan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7433_sakit_hati, id FROM items WHERE character = '恨' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7434_sayang_sekali, id FROM items WHERE character = '哀' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7435_istirahat, id FROM items WHERE character = '憩' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7443_penipu, id FROM items WHERE character = '詐' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7443_penipu, id FROM items WHERE character = '欺' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7443_penipu, id FROM items WHERE character = '師' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7446_distrik_lampu_merah, id FROM items WHERE character = '花' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7446_distrik_lampu_merah, id FROM items WHERE character = '柳' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7446_distrik_lampu_merah, id FROM items WHERE character = '界' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7447_tempat_istirahat, id FROM items WHERE character = '休' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7447_tempat_istirahat, id FROM items WHERE character = '憩' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7447_tempat_istirahat, id FROM items WHERE character = '所' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8890_menjadi_panik, k_8881_bingung);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8892_panik, id FROM items WHERE character = '恐' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8892_panik, k_8881_bingung);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8920_untuk_menendang, k_8913_menendang);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8921_untuk_menendang, id FROM items WHERE character = '一' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8921_untuk_menendang, k_8913_menendang);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8941_untuk_dimasak, id FROM items WHERE character = '炊' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8948_akan_dihancurkan, id FROM items WHERE character = '砕' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_9285_profesor_madya, k_2203_semi);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_9285_profesor_madya, id FROM items WHERE character = '教' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_9285_profesor_madya, id FROM items WHERE character = '授' LIMIT 1;

END $$;