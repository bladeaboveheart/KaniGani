-- ====================================================
-- KaniGani — Seed Data Level 45 (v2, relasional)
-- Auto-generated with Indonesian Slugs
-- ====================================================

DO $$
DECLARE
  -- ============ RADICAL IDs (Level 45) ============
  r_396_melindungi UUID; r_397_memperbarui UUID;

  -- ============ KANJI IDs (Level 45) ============
  k_1855_puncak UUID; k_1906_jelasnya UUID; k_1907_tombak UUID; k_1908_kulit UUID; k_1909_kapal UUID; k_1910_bel UUID; k_1911_penjahat UUID; k_1912_gumpalan UUID; k_1913_berburu UUID; k_1914_perkiraan UUID; k_1915_jiwa UUID; k_1916_kaki UUID; k_1917_sangat UUID; k_1919_menyumpahi UUID; k_1920_merindukan UUID; k_1921_kalender UUID; k_1922_berawan UUID; k_1923_menatap UUID; k_1924_telanjang UUID; k_1925_berjudi UUID; k_1927_sekolah_menjejalkan UUID; k_1928_meja UUID; k_1929_polandia UUID; k_1930_bakteri UUID; k_1931_naungan UUID; k_1932_hantu UUID; k_1933_lembap UUID; k_1934_kaku UUID; k_1935_pendapatan UUID; k_1936_pengantin_perempuan UUID; k_1937_selokan UUID; k_1938_air_terjun UUID; k_1939_gila UUID; k_1940_terbang UUID;

  -- ============ VOCABULARY IDs (Level 45) ============
  v_2744_tahun_cahaya UUID; v_5982_penghapusan UUID; v_6708_pegunungan UUID; v_6763_untuk_membiarkan_seseorang_menginap UUID; v_6765_agar_terburu_buru UUID; v_6844_untuk_merobek UUID; v_6845_fisi_nuklir UUID; v_6846_untuk_menyerang UUID; v_6847_interlokal UUID; v_6848_jarak_pendek UUID; v_6849_jarak_pendek UUID; v_6850_masuk_dalam_daftar_keluarga UUID; v_6851_serentak UUID; v_6852_akan_dihancurkan UUID; v_6853_kaku UUID; v_6854_kekakuan UUID; v_6855_untuk_mendapatkan_penghasilan UUID; v_6856_menjadi_jelas UUID; v_6857_tombak UUID; v_6858_kulit_manusia UUID; v_6859_merinding UUID; v_6860_sentuhan UUID; v_6861_warna_kulit UUID; v_6862_kapal UUID; v_6863_kapal UUID; v_6864_bel UUID; v_6865_bel_alarm UUID; v_6866_senjata_berbahaya UUID; v_6867_biang_keladi UUID; v_6868_mengerikan UUID; v_6869_memburu UUID; v_6870_pemburu UUID; v_6871_perkiraan_waktu UUID; v_6872_baru_baru_ini UUID; v_6873_akhir_akhir_ini UUID; v_6874_perkiraan_usia UUID; v_6875_tentang_kapan UUID; v_6876_baru_baru_ini UUID; v_6877_masa_muda_seseorang UUID; v_6878_jiwa UUID; v_6879_roh UUID; v_6880_kaki UUID; v_6881_naskah UUID; v_6882_sangat UUID; v_6885_menyumpahi UUID; v_6886_untuk_mengutuk UUID; v_6887_kalender UUID; v_6888_kalender_lunisolar UUID; v_6889_era_umum UUID; v_6890_menjadi_berawan UUID; v_6891_cuaca_mendung UUID; v_6892_untuk_menatap UUID; v_6893_prospek UUID; v_6894_telanjang_sepenuhnya UUID; v_6895_setengah_telanjang UUID; v_6896_telanjang UUID; v_6897_untuk_berjudi UUID; v_6898_pertaruhan UUID; v_6901_sekolah_menjejalkan UUID; v_6902_sekolah_swasta UUID; v_6903_siswa_sekolah_cram UUID; v_6904_kalkulator UUID; v_6905_meja_makan UUID; v_6906_meja UUID; v_6907_tenis_meja UUID; v_6908_ke_polandia UUID; v_6909_polandia UUID; v_6910_bakteri UUID; v_6911_kuman UUID; v_6912_disterilkan UUID; v_6913_sterilisasi UUID; v_6914_naungan UUID; v_6915_kesuraman UUID; v_6916_roh_jahat UUID; v_6917_inspirasi UUID; v_6918_hantu UUID; v_6919_pemakaman UUID; v_6920_pelembab_udara UUID; v_6921_lahan_basah UUID; v_6922_kelembaban UUID; v_6923_menjadi_lembab UUID; v_6924_pengantin_perempuan UUID; v_6925_untuk_menikah UUID; v_6926_selokan UUID; v_6927_palung_samudera UUID; v_6928_drainase UUID; v_6929_air_terjun UUID; v_6930_jeram UUID; v_6931_menjadi_gila UUID; v_6932_kegilaan UUID; v_6933_untuk_terbang UUID; v_6951_rasanya_tidak_enak UUID; v_6952_kertas_pembungkus UUID; v_6953_jam_pasang_surut UUID; v_6954_arus_jepang UUID; v_6955_untuk_menggosok UUID; v_6956_kemasan UUID; v_7145_gumpalan UUID; v_7726_sedang UUID; v_9008_untuk_menyiksa UUID; v_9034_untuk_melayani UUID; v_9058_koin UUID; v_9081_menu UUID;

BEGIN

  DELETE FROM items WHERE level = 45;

  -- 1. RADICALS
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '守', 'melindungi', 45, 1, 'Radikal ini sama dengan kanji. Artinya <radikal>melindungi</radikal>.')
    RETURNING id INTO r_396_melindungi;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '更', 'memperbarui', 45, 2, 'Radikal ini sama dengan kanji. Artinya <radikal>memperbarui</radikal>.')
    RETURNING id INTO r_397_memperbarui;

  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_396_melindungi, 'Melindungi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_397_memperbarui, 'Memperbarui', true, true);

  -- 2. KANJIS
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '岳', 'puncak', 45, 3, 'Sebuah <radical>kapak</radikal> menancap di <radikal>tanah</radikal> di atas <radikal>gunung</radikal>. Itu menempel di <kanji>puncak</kanji>. Karena mengapa Anda repot-repot menancapkan kapak Anda di tempat lain di gunung untuk membuktikan bahwa Anda telah mendakinya?', 'Anda pasti <reading>melongo</reading> (がく) di <kanji>puncak</kanji>. Entah bagaimana, sekarang terlihat lebih tinggi.')
    RETURNING id INTO k_1855_puncak;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '澄', 'jelasnya', 45, 4, 'Saat <radical>tsunami</radical> melanda, <radical>tenda</radical> Anda penuh dengan <radical>kacang</radical>. Saat Anda kehilangan tenda kacang, Anda merasakan <kanji>kejernihan</kanji>. Anda tidak membutuhkan banyak barang, Anda bisa hidup tanpanya!', '<kanji>kejernihan</kanji> Anda terlihat jelas oleh semua orang karena Anda memakai <reading>su</reading>it (す). Semua orang tahu bahwa orang yang sadar memakai jas!')
    RETURNING id INTO k_1906_jelasnya;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '矛', 'tombak', 45, 5, 'Radikal <radikal>tombak</radikal> dan kanji <kanji>tombak</kanji> adalah sama!', 'Ambil <kanji>tombak</kanji> ini dan tusukkan ke sapi. "<membaca>MOO</membaca> (む)!" itu menangis. Sapi itu menggigit tombak dari tanganmu dan menusukmu dari belakang. "MELENGUH!" kamu berteriak.')
    RETURNING id INTO k_1907_tombak;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '肌', 'kulit', 45, 6, '<radical>bulan</radikal> <radikal>meja</radikal> adalah meja yang seluruhnya terbuat dari <kanji>kulit</kanji>. Anda mengira meja itu terbuat dari bulan, dengan pori-pori dan semacamnya, tetapi ketika Anda melihat lebih dekat, Anda menyadari bahwa itu adalah kulit. Menjijikkan, keropos, kulit.', 'Namun, ketika Anda menyentuh "meja bulan" yang terbuat dari <kanji>kulit</kanji> ini, Anda menyadari bahwa itu <membaca>lebih sulit</reading> (はだ) dari yang Anda harapkan.')
    RETURNING id INTO k_1908_kulit;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '舟', 'kapal', 45, 7, 'Kanji <radikal>perahu</radikal> dan kanji <kanji>perahu</kanji> adalah sama!', 'Bacaannya adalah bacaan yang sama yang Anda pelajari dengan kosakata 船.')
    RETURNING id INTO k_1909_kapal;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '鐘', 'bel', 45, 8, 'Sesuatu yang terbuat dari <radical>emas</radical> <radical>berdiri</radical> di <radical>desa</radical>. Itu adalah <kanji>lonceng</kanji>!  Lonceng desa.', '<kanji>bel</kanji> berbunyi setiap kali <reading>Shou</reading>gun (しょう) tiba di desa. Deringnya bergema di seluruh desa sehingga semua orang tahu bahwa mereka harus keluar dan memberikan penghormatan.')
    RETURNING id INTO k_1910_bel;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '凶', 'penjahat', 45, 9, 'Jika ada <radical>peti harta karun</radikal>, selalu ada <kanji>penjahat</kanji> juga. Penjahat sedang mencoba untuk mencapai peti harta karun sebelum pahlawan cerita.', '<kanji>penjahat</kanji> mengalahkanmu sampai ke <reading>きょう</reading>と untuk mendapatkan peti harta karun khusus ini.')
    RETURNING id INTO k_1911_penjahat;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '塊', 'gumpalan', 45, 10, '<radikal>kotoran</radikal> <radikal>setan</radikal> hanyalah sebuah <kanji>benjolan</kanji>. Ibarat kelinci debu yang hanyalah segumpal debu.', '<kanji>benjolan</kanji> dari sesuatu hanyalah <membaca>固まり</reading> (かたまり) — benda yang mengeras itu sendiri.')
    RETURNING id INTO k_1912_gumpalan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '狩', 'berburu', 45, 11, 'Saya <radical>melindungi</radical> <radical>hewan</radical> saya sendiri dengan pergi <kanji>berburu</kanji> hewan lain... seperti serigala, puma, dan sejenisnya.', 'Aku juga melakukan semua <kanji>perburuan</kanji>ku menggunakan <reading>ca</reading>r (か). Saya baru saja menabrak hewan-hewan itu dengan mobil saya. Agak curang, tapi bagaimanapun juga vroom vroom.')
    RETURNING id INTO k_1913_berburu;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '頃', 'perkiraan', 45, 12, '<radical>sendok</radikal> untuk mengukur <radical>geoduck</radical> adalah pengukuran yang sangat <kanji>perkiraan</kanji>. Geoducknya besar, sendoknya kecil. Tetap saja, kita akan menjalankan perkiraannya, bukan?', 'Mungkin geoduck ini terlalu berlebihan, meskipun kita mencari <kanji>perkiraan</kanji>. Jadi, Anda mengambil <reading>inti</reading> (ころ) dari geoduck dan mengukurnya.')
    RETURNING id INTO k_1914_perkiraan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '魂', 'jiwa', 45, 13, '<radical>awan</radical> yang melayang di atas <radical>iblis</radical> memiliki <kanji>jiwa</kanji> di dalamnya. Jika Anda berhasil menghubungi iblis tersebut, untuk membuatnya mengerti bahwa ia tidak harus jahat, ia mungkin akan mengingat siapa dia dan kembali ke <kanji>roh</kanji> seperti dulu.', 'Anda berteriak dan memohon bantuan <kanji>jiwa</kanji> sampai, akhirnya, Anda melihat awan berbentuk <reading>con</reading>dor (こん). Ya! “Kamu adalah seekor condor sebelum kamu menjadi iblis! Ingat siapa dirimu dan kembalilah!”')
    RETURNING id INTO k_1915_jiwa;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '脚', 'kaki', 45, 14, 'Jika Anda pernah ke <radical>bulan</radical> di <radical>masa lalu</radical>, Anda harus mendapatkan <radical>cap</radical> khusus di <kanji>kaki</kanji> Anda.', 'Anda hanya bertemu satu orang dengan tanda yang sama di <kanji>kaki</kanji> mereka dan itu adalah <read>Kyaku</reading> (きゃく) pelanggannya. Kyaku mengunjungi banyak tempat di seluruh dunia, jadi masuk akal jika mereka juga berada di luar dunia.')
    RETURNING id INTO k_1916_kaki;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '也', 'sangat', 45, 15, '<radical>buaya</radikal> <kanji>sangat</kanji> berbahaya. Sangat menakutkan juga. Sangat [letakkan kata sifat menakutkan Anda di sini].', 'Berbicara tentang <kanji>sangat</kanji> menakutkan, tempat yang dikenal sebagai <reading>Nar</reading>nia (なり) itu cukup menakutkan. Tidak yakin mengapa anak-anak ingin pergi ke sana.')
    RETURNING id INTO k_1917_sangat;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '呪', 'menyumpahi', 45, 16, 'Dari <radikal>mulut</radikal> <radikal>kakak</radikal>mu datang... sebuah <kanji>kutukan</kanji>!', 'Ternyata, dia mengutukmu <reading>no ro</reading>ad (のろ), artinya kamu tidak akan pernah bisa berjalan di jalan raya.')
    RETURNING id INTO k_1919_menyumpahi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '嬢', 'merindukan', 45, 17, 'Seorang <radikal>wanita</radikal> yang merupakan <radikal>perawat</radikal> harus dipanggil <kanji>nona</kanji>.', '"Panggil aku <kanji>Nona</kanji> <reading>Joe</reading> (じょう)," kata Joe padamu.')
    RETURNING id INTO k_1920_merindukan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '暦', 'kalender', 45, 18, 'Saat melihat ke <radical>tebing</radical>, Anda melihat <radical>pohon</radical> dan <radical>matahari</radical> menyinarinya. Dengan menggunakan matahari dan pepohonan (di atas tebing), Anda telah merancang metode untuk mengetahui jam berapa saat ini, berdasarkan di mana bayangan dari pepohonan jatuh. Setelah beberapa saat, Anda mengembangkan sistem yang lebih besar. Sistem ini adalah keseluruhan <kanji>kalender</kanji>.', 'Ingat kata 歴史 yang artinya "sejarah"? Dengan menggunakan <kanji>kalender</kanji>, Anda juga dapat mengingat sejarah (jika tidak, siapa yang tahu kapan hal ini terjadi). Jadi, bacaan kanji ini sama dengan bacaan awal 歴史, karena berkaitan.')
    RETURNING id INTO k_1921_kalender;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '曇', 'berawan', 45, 19, '<radical>matahari</radikal> terhalang oleh <radical>hujan</radikal> <radikal>awan</radikal>, sehingga <kanji>berawan</kanji>.', 'Ingat? Artinya "awan" dan memiliki bacaan yang sama dengan "mendung", menjadikan keduanya <reading>くも</reading>.')
    RETURNING id INTO k_1922_berawan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '眺', 'menatap', 45, 20, 'Ketika <radical>mata</radical> Anda menangkap sebuah <radical>pertanda</radical>, wajar saja jika Anda <kanji>menatap</kanji> itu.', 'Saat Anda <kanji>menatap</kanji> pertanda tersebut, Anda melihat Ny. <reading>Chou</reading> (ちょう) merobohkan bangunan, memasang paku di jalan, dan membuat dirinya jauh lebih lama dari yang pernah Anda bayangkan. Oh, dan itu dia, menghancurkan dunia.')
    RETURNING id INTO k_1923_menatap;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '裸', 'telanjang', 45, 21, 'Jika <radical>pakaian</radikal> Anda hanyalah sepotong <radikal>buah</radikal>, maka Anda <kanji>telanjang</kanji>.', 'Tahukah Anda siapa lagi yang sering <kanji>telanjang</kanji>? Dewa Mesir kuno <reading>Ra</reading> (ら). Setidaknya setengah telanjang. Mesir adalah negara yang panas, jadi Anda tidak bisa menyalahkan Ra karena ingin telanjang.')
    RETURNING id INTO k_1924_telanjang;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '賭', 'berjudi', 45, 22, 'Saya menaruh semua <radical>kerang</radikal> saya pada <radical>seseorang</radikal>, berharap mereka akan memenangkan perlombaan! Ini adalah <kanji>perjudian</kanji> dan Anda berjudi.', 'Jika kamu memenangkan <kanji>perjudian</kanji> ini, kamu akan memiliki cukup kerang untuk membeli <reading>ca</reading>r (か) baru!')
    RETURNING id INTO k_1925_berjudi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '塾', 'sekolah-menjejalkan', 45, 23, 'Anda <radical>menerima</radical> instruksi dalam <radical>lingkaran</radical> di <radical>kotoran</radical>. Kamu ada di mana? <kanji>Sekolah menjejalkan</kanji>!', '<kanji>sekolah menjejalkan</kanji> Anda tidak hanya mengajar anak-anak berputar-putar di tanah, tetapi juga memutar musik di kotak <reading>juke</reading> (じゅく). Ya, jukebox. Mereka percaya lagu-lagu jukebox membantu menjejalkan lagu.')
    RETURNING id INTO k_1927_sekolah_menjejalkan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '卓', 'meja', 45, 24, '<radical>jari kaki</radikal> adalah <radikal>awal</radikal>. Aku benci kalau jari kaki muncul lebih awal. Nah, jika jari kaki akan muncul secepat ini, saya rasa yang terbaik adalah meletakkannya di <kanji>meja</kanji>.', 'Apa yang dilakukan semua orang yang berada di <kanji>meja</kanji> sambil menunggu waktu yang tepat? Mereka hanya duduk-duduk di meja mereka, <reading>berbicara</reading>ing (たく).')
    RETURNING id INTO k_1928_meja;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '磨', 'polandia', 45, 25, 'Di bawah <radical>kanopi</radikal> <radikal>pohon</radikal> ini terdapat <radikal>batu</radikal>. Karena ini satu-satunya batu di sini, pastikan untuk <kanji>memoles</kanji>.', 'Anda <kanji>memoles</kanji> batu tersebut karena gaya hidup <reading>sedikit</reading> (みが) Anda.')
    RETURNING id INTO k_1929_polandia;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '菌', 'bakteri', 45, 26, 'Jika Anda membiarkan <radical>biji-bijian</radikal> di dalam <radical>mulut</radikal> Anda cukup lama, biji-bijian tersebut akan berubah menjadi <radikal>bunga</radikal> dari <kanji>bakteri</kanji>. Ini bukan bunga yang bagus dan cantik yang akan kamu berikan pada ibumu di Hari Ibu. Ini adalah bunga bakteri kecil yang mengambil alih mulut Anda. Mungkin lain kali gosok gigi.', 'Ada banyak <kanji>bakteri</kanji> ini di <reading>Kin</reading>g (きん) di mulut Inggris. Dia makan banyak biji-bijian, dan dia tidak akan membiarkan siapa pun menyentuh mulutnya untuk membersihkannya, tapi dia menolak melakukannya sendiri... jadi mulutnya penuh dengan bakteri.')
    RETURNING id INTO k_1930_bakteri;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '陰', 'naungan', 45, 27, '<radical>Bangunan</radical> <radical>sekarang</radical> ini memiliki <radical>awan</radical> di atasnya, sehingga menciptakan <kanji>teduhan</kanji>.', 'Bangunan yang mendapatkan <kanji>teduhan</kanji> yang bagus ini adalah <reading>penginapan</reading> (いん) tempat Anda menginap.')
    RETURNING id INTO k_1931_naungan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '霊', 'hantu', 45, 28, 'Turun bersama <radical>hujan</radical> adalah <radical>dua</radical> <radical>lonjakan</radical>. Mereka melewati dua <kanji>hantu</kanji>.', 'Anda menemukan <kanji>hantu</kanji>, yang ditikam ke tanah. "Tolong," mereka memohon. "Tolong gunakan senjata <reading>ray</reading> (れい) yang ada di perahu <reading>row</reading> (りょう) itu dan akhiri penderitaan kami."')
    RETURNING id INTO k_1932_hantu;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '湿', 'lembap', 45, 29, 'Setelah <radikal>tsunami</radikal> <radikal>matahari</radikal> muncul kembali dan menyinari <radikal>paku</radikal> ini. Sebelumnya sangat basah, tetapi menurut Anda matahari mungkin mengeringkannya. Anda membungkuk untuk menyentuhnya dan tidak, itu masih <kanji>lembab</kanji>.', 'Saat Anda melihat paku <kanji>basah</kanji>, seekor <reading>shih tzu</reading> (しつ) berjingkrak, tergelincir di tanah lembab, dan jatuh tepat di atas paku! Oh tidak!')
    RETURNING id INTO k_1933_lembap;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '硬', 'kaku', 45, 30, 'Anda merasa seperti <radikal>batu</radikal> yang telah <radikal>diperbarui</radikal>. Bagaimana perasaan batu yang diperbarui? <kanji>Kaku</kanji>. Sangat kaku.', 'Anda ingat bagaimana Anda biasa menyembuhkan tubuh yang <kanji>kaku</kanji> ini: teman lama Anda <reading>こう</reading>いち akan memijatnya untuk Anda.')
    RETURNING id INTO k_1934_kaku;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '稼', 'pendapatan', 45, 31, '<radical>biji-bijian</radical> yang Anda simpan di <radical>rumah</radical> mencerminkan <kanji>penghasilan</kanji> Anda. Jika Anda menghasilkan banyak uang, Anda memiliki lebih banyak biji-bijian.', 'Cara lain untuk memeriksa <kanji>penghasilan</kanji> seseorang adalah dengan melihat apakah mereka memiliki <reading>ca</reading>r (か). Akankah seseorang yang tidak menghasilkan banyak uang memiliki mobil? TIDAK!')
    RETURNING id INTO k_1935_pendapatan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '嫁', 'pengantin-perempuan', 45, 32, '<radikal>wanita</radikal> yang menjadikan <radikal>rumah</radikal> Anda sebagai rumah adalah <kanji>pengantin</kanji> Anda.', 'Sekarang kamu sudah punya <kanji>pengantin</kanji> di rumahmu, kamu bisa menyingkirkan <reading>yo</reading>ur <reading>mai</reading>d (よめ), karena pengantinmu yang akan melakukan semua pembersihan.')
    RETURNING id INTO k_1936_pengantin_perempuan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '溝', 'selokan', 45, 33, '<radical>Tsunami</radical> vs <radical>penjaga pantai</radical>. Siapa yang akan menang? Setelah air habis, kami menemukan penjaga pantai di <kanji>selokan</kanji>.', 'Di dalam <kanji>selokan</kanji> ada penjaga pantai, jadi Kaisar <reading>こう</reading>いち memutuskan untuk mensurvei kerusakannya.')
    RETURNING id INTO k_1937_selokan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '滝', 'air-terjun', 45, 34, '<radikal>tsunami</radikal> dalam bentuk <radikal>naga</radikal> terbang dari tebing, lalu jatuh ke tanah. Tsunami air tipis yang mengalir ke tanah ini adalah <kanji>air terjun</kanji>.', 'Meskipun betapa kerennya <kanji>air terjun</kanji> naga, sejujurnya itu juga cukup <read>norak</reading> (たき).')
    RETURNING id INTO k_1938_air_terjun;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '狂', 'gila', 45, 35, '<radikal>hewan</radikal> <radikal>raja</radikal>? Dia hanyalah orang yang tinggal di hutan dan mengira dia adalah raja dari semua binatang. Tapi dia <kanji>orang gila</kanji>.', 'Anda mungkin melihat <kanji>gila</kanji> <kanji>orang gila</kanji> itu berkeliaran di pinggiran <reading>きょう</reading>と. Dia akan bersembunyi di dekat tong sampahmu dan berteriak, "AKULAH RAJA HEWAN!" dan lari dengan beberapa kulit jeruk.')
    RETURNING id INTO k_1939_gila;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '翔', 'terbang', 45, 36, '<radical>domba</radical> dengan <radical>bulu</radical> (dan mungkin juga sayap) mampu <kanji>terbang</kanji>.', 'Menyaksikan domba berbulu dan bersayap beterbangan membuat Anda haus. Anda ingat bahwa Anda mempunyai <reading>ca</reading>r <reading>ke</reading>ttle (かけ), jadi Anda merogoh mobil Anda dan mengambil ketel mobil Anda untuk membuat minuman ketel mobil khusus.')
    RETURNING id INTO k_1940_terbang;

  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1855_puncak, 'Puncak', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1906_jelasnya, 'Jelasnya', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1907_tombak, 'Tombak', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1908_kulit, 'Kulit', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1909_kapal, 'Kapal', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1910_bel, 'Bel', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1911_penjahat, 'Penjahat', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1912_gumpalan, 'Gumpalan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1913_berburu, 'Berburu', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1914_perkiraan, 'Perkiraan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1915_jiwa, 'Jiwa', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1915_jiwa, 'Roh', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1916_kaki, 'Kaki', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1917_sangat, 'Sangat', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1919_menyumpahi, 'Menyumpahi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1920_merindukan, 'Merindukan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1921_kalender, 'Kalender', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1922_berawan, 'Berawan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1923_menatap, 'Menatap', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1924_telanjang, 'Telanjang', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1924_telanjang, 'Telanjang', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1925_berjudi, 'Berjudi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1927_sekolah_menjejalkan, 'Sekolah Menjejalkan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1928_meja, 'Meja', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1929_polandia, 'Polandia', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1930_bakteri, 'Bakteri', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1931_naungan, 'Naungan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1932_hantu, 'Hantu', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1933_lembap, 'Lembap', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1934_kaku, 'Kaku', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1935_pendapatan, 'Pendapatan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1936_pengantin_perempuan, 'Pengantin perempuan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1937_selokan, 'Selokan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1938_air_terjun, 'Air terjun', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1939_gila, 'Gila', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1939_gila, 'Gila', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1940_terbang, 'Terbang', true, true);

  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1855_puncak, 'がく', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1855_puncak, 'たけ', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1906_jelasnya, 'す', 'kunyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1906_jelasnya, 'ちょう', 'onyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1907_tombak, 'む', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1907_tombak, 'ほこ', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1908_kulit, 'はだ', 'kunyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1908_kulit, 'き', 'onyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1909_kapal, 'ふね', 'kunyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1909_kapal, 'ふな', 'kunyomi', false, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1909_kapal, 'しゅう', 'onyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1910_bel, 'しょう', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1910_bel, 'かね', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1911_penjahat, 'きょう', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1912_gumpalan, 'かたまり', 'kunyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1912_gumpalan, 'かい', 'onyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1913_berburu, 'か', 'kunyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1913_berburu, 'しゅ', 'onyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1914_perkiraan, 'ころ', 'kunyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1914_perkiraan, 'ごろ', 'kunyomi', false, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1914_perkiraan, 'けい', 'onyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1914_perkiraan, 'きょう', 'onyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1915_jiwa, 'こん', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1915_jiwa, 'たましい', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1916_kaki, 'きゃく', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1916_kaki, 'あし', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1917_sangat, 'なり', 'kunyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1917_sangat, 'や', 'onyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1919_menyumpahi, 'のろ', 'kunyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1919_menyumpahi, 'じゅ', 'onyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1920_merindukan, 'じょう', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1920_merindukan, 'むすめ', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1921_kalender, 'れき', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1921_kalender, 'こよみ', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1922_berawan, 'くも', 'kunyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1923_menatap, 'ちょう', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1923_menatap, 'なが', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1924_telanjang, 'ら', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1924_telanjang, 'はだか', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1925_berjudi, 'か', 'kunyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1925_berjudi, 'と', 'onyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1927_sekolah_menjejalkan, 'じゅく', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1928_meja, 'たく', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1929_polandia, 'みが', 'kunyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1929_polandia, 'ま', 'onyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1930_bakteri, 'きん', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1931_naungan, 'いん', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1931_naungan, 'かげ', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1931_naungan, 'おん', 'onyomi', false, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1932_hantu, 'れい', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1932_hantu, 'りょう', 'onyomi', false, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1933_lembap, 'しつ', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1933_lembap, 'しめ', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1934_kaku, 'こう', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1934_kaku, 'かた', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1935_pendapatan, 'か', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1935_pendapatan, 'かせ', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1936_pengantin_perempuan, 'よめ', 'kunyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1936_pengantin_perempuan, 'とつ', 'kunyomi', false, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1936_pengantin_perempuan, 'か', 'onyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1937_selokan, 'こう', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1937_selokan, 'みぞ', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1938_air_terjun, 'たき', 'kunyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1939_gila, 'きょう', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1939_gila, 'くる', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1940_terbang, 'かけ', 'kunyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1940_terbang, 'と', 'kunyomi', false, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1940_terbang, 'しょう', 'onyomi', false, false);

  -- 3. VOCABULARIES
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '光年', 'tahun-cahaya', 45, 37, 'Apa yang terjadi bila <kanji>cahaya</kanji> menempuh perjalanan <kanji>tahun</kanji>? Anda memiliki <vocabulary>tahun cahaya</vocabulary>.

光年 biasanya digunakan setelah angka untuk menentukan jarak yang sangat jauh antar benda langit, seperti 地球からこの星まで3光年です (jaraknya 3 tahun cahaya dari Bumi ke bintang ini).', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Tahun cahaya')
    RETURNING id INTO v_2744_tahun_cahaya;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '廃絶', 'penghapusan', 45, 38, 'Sesuatu yang <kanji>usang</kanji> akan berakhir dengan <kanji>kepunahan</kanji>. Bergabunglah dalam seruan untuk <vocabulary>abolition</vocabulary>, <vocabulary>elimination</vocabulary> dan <vocabulary>extinction</vocabulary>, apa pun itu.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Penghapusan, Eliminasi, Kepunahan')
    RETURNING id INTO v_5982_penghapusan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '山岳', 'pegunungan', 45, 39, '<kanji>gunung</kanji> <kanji>puncak</kanji> hanyalah <vocabulary>pegunungan</vocabulary>. Hanya karena Anda hanya dapat melihat puncaknya bukan berarti bagian gunung lainnya tidak ada.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Pegunungan')
    RETURNING id INTO v_6708_pegunungan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '泊める', 'untuk-membiarkan-seseorang-menginap', 45, 40, '泊まる berarti "menginap." Sekarang Anda mengizinkan orang lain menginap, yang menjadikannya <vocabulary>membiarkan seseorang menginap</vocabulary> atau <vocabulary>membiarkan seseorang menginap</vocabulary>.', 'Bacaannya berasal dari 泊まる.', 'Untuk Membiarkan Seseorang Menginap, Untuk Membiarkan Seseorang Menginap')
    RETURNING id INTO v_6763_untuk_membiarkan_seseorang_menginap;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '焦る', 'agar-terburu-buru', 45, 41, 'Ini adalah kata yang agak aneh. Kanjinya adalah <kanji>char</kanji>, dan kata yang sebelumnya Anda pelajari (焦げる) adalah "dibakar". Sebaliknya, ini berarti "terburu-buru" atau "tidak sabar". Saya rasa jika Anda merasa terbakar atau merasakan hal tersebut, Anda akan <vocabulary>terburu-buru</vocabulary> dan Anda akan <vocabulary>menjadi tidak sabar</vocabulary>. Anda dapat mengetahui bahwa ini adalah kata tersebut karena hanya memiliki satu kana, る, yang merupakan singkatan dari <reading>ru</reading>de. Anda merasa seseorang bersikap kasar (atau mungkin memang demikian), itulah sebabnya Anda merasa tidak sabar dan terburu-buru.', 'Anda bersikap kasar, tetapi Anda juga <reading>pantat</reading> (あせ) yang besar karena ketidaksabaran Anda.', 'Agar Terburu-buru, Menjadi Tidak Sabar, Menjadi Cemas')
    RETURNING id INTO v_6765_agar_terburu_buru;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '引き裂く', 'untuk-merobek', 45, 42, 'Anda tahu bahwa 裂く berarti "merobek" atau "merobek". Jadi, jika Anda mencoba merobek atau merobek sesuatu, dan Anda <kanji>menarik</kanji> pada saat yang sama, Anda akan <vocabulary>merobek</vocabulary> benda itu, atau lebih tepatnya mungkin <vocabulary>merobek</vocabulary> sesuatu, karena Anda sedang menarik.', 'Bacaannya berasal dari 引く dan 裂く.', 'Untuk Merobek, Untuk Merobek, Untuk Berpisah')
    RETURNING id INTO v_6844_untuk_merobek;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '核分裂', 'fisi-nuklir', 45, 43, '分裂 berarti "pemisahan" atau "pembagian". Versi <kanji>inti</kanji> dari pembelahan ini adalah <vocabulary>fisi nuklir</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Fisi Nuklir, Karyokinesis')
    RETURNING id INTO v_6845_fisi_nuklir;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '襲撃する', 'untuk-menyerang', 45, 44, 'Ingat bagaimana 襲撃 merupakan <kanji>serangan</kanji> atau <kanji>serangan</kanji>? Ini adalah bentuk kata kerjanya, jadi <vocabulary>menyerang</vocabulary> atau <vocabulary>menyerang</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Untuk Menyerang, Untuk Menyerang')
    RETURNING id INTO v_6846_untuk_menyerang;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '遠距離', 'interlokal', 45, 45, '<kanji>jauh</kanji> <kanji>jarak</kanji> <kanji>pelepasan</kanji>adalah jarak yang jauh. Ini adalah <vocabulary>jarak jauh</vocabulary>. Ingat juga bahwa 距離 adalah "jarak" jadi jarak yang jauh adalah <vocabulary>jarak jauh</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Interlokal')
    RETURNING id INTO v_6847_interlokal;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '近距離', 'jarak-pendek', 45, 46, '距離 adalah <kanji>jarak</kanji> dan 近 adalah <kanji>dekat</kanji>. Jarak dekat adalah <vocabulary>jarak pendek</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Jarak Pendek')
    RETURNING id INTO v_6848_jarak_pendek;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '短距離', 'jarak-pendek', 45, 47, '距離 (<kanji>jarak</kanji>) yang <kanji>pendek</kanji> adalah <vocabulary>jarak pendek</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Jarak Pendek')
    RETURNING id INTO v_6849_jarak_pendek;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '入籍', 'masuk-dalam-daftar-keluarga', 45, 48, 'Ingat bagaimana 戸籍 daftar keluarga? Ini mengacu pada hal itu, dan itulah yang membuat kata ini <vocabulary>masuk dalam daftar keluarga</vocabulary>. Dalam sebagian besar kasus, hal ini secara khusus berarti <kosakata>pencatatan pernikahan</vocabulary> dalam daftar keluarga tersebut.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Masuk Dalam Daftar Keluarga, Pendaftaran Pernikahan')
    RETURNING id INTO v_6850_masuk_dalam_daftar_keluarga;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '一斉に', 'serentak', 45, 49, '一斉 adalah <kanji>bersamaan</kanji> atau <kanji>sekaligus</kanji>. Tambahkan に di sana dan Anda menuju ke hal itu. Untuk "simultan" menjadi <vocabulary>simultan</vocabulary>. Untuk "sekaligus" tetap di <vocabulary>sekaligus</vocabulary>.', 'Bacaannya berasal dari 一斉.', 'Serentak, Sekaligus')
    RETURNING id INTO v_6851_serentak;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '滅びる', 'akan-dihancurkan', 45, 50, 'Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanjinya sendiri berarti <kanji>menghancurkan</kanji> jadi versi kosakata kata kerjanya adalah <kosakata>dihancurkan</vocabulary>. Anda tahu Anda tidak menghancurkan sesuatu karena <reading>bir</reading> (びる). Anda tidak akan pernah menghancurkan bir... tapi orang lain mungkin. Grr.', '"<membaca>HOROR</membaca>!" (ほろ) kamu menangis, karena birmu hampir <vocabulary>hancur</vocabulary>.', 'Akan Dihancurkan, Akan Dimusnahkan')
    RETURNING id INTO v_6852_akan_dihancurkan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '硬い', 'kaku', 45, 51, 'Ini adalah kanji tunggal dengan い di akhir, artinya Anda tahu itu mungkin kata sifat. Apa bentuk kata sifat dari <kanji>kaku</kanji>? Itu <vocabulary>kaku</vocabulary>, <vocabulary>hard</vocabulary>, atau <vocabulary>firm</vocabulary>.', 'Bacaannya sama dengan kata yang sangat mirip yaitu 固い. Jadi, jika Anda dapat menggunakan kata itu untuk membantu Anda mengingat, Anda juga akan mengingat bacaan kata ini dalam waktu singkat!', 'Kaku, Keras, Tegas')
    RETURNING id INTO v_6853_kaku;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '硬直', 'kekakuan', 45, 52, 'Pertahankan sesuatu yang <kanji>kaku</kanji> dan <kanji>lurus</kanji> dan hal itu secara alami akan menyebabkan <vocabulary>kekakuan</vocabulary> atau <vocabulary>stiffening</vocabulary>.

硬直 biasanya menggambarkan tubuh seseorang menjadi kaku, baik karena syok atau ketidaknyamanan, atau karena timbulnya rigor mortis setelah kematian.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Kekakuan, Pengerasan, Kekakuan')
    RETURNING id INTO v_6854_kekakuan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '稼ぐ', 'untuk-mendapatkan-penghasilan', 45, 53, 'Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanjinya sendiri berarti <kanji>penghasilan</kanji> dan versi kosakata kata kerjanya adalah <vocabulary>untuk memperoleh penghasilan</vocabulary>, karena Anda tidak bisa "mendapatkan" sesuatu. Bisa juga <vocabulary>menghasilkan uang</vocabulary>.', '<vocabulary>Untuk memperoleh penghasilan</vocabulary>, Anda memutuskan untuk memulai sebuah <reading>mobil</reading> <reading>sa</reading>le. (かせ) "Setiap penjualan mobil, satu langkah menuju kekayaan!" adalah mantra bisnis unik Anda.', 'Untuk Mendapatkan Penghasilan, Untuk Menghasilkan Uang')
    RETURNING id INTO v_6855_untuk_mendapatkan_penghasilan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '澄む', 'menjadi-jelas', 45, 54, 'Sesuatu dengan <kanji>kejernihan</kanji> jelas. Itu sebabnya kata ini <vocabulary>menjadi jelas</vocabulary> atau <vocabulary>menjadi transparan</vocabulary>.', 'Anda mempelajari bacaan ini ketika Anda mempelajari kanji.', 'Menjadi Jelas, Menjadi Transparan')
    RETURNING id INTO v_6856_menjadi_jelas;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '矛', 'tombak', 45, 55, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.', 'Orang yang memegang <vocabulary>tombak</vocabulary> adalah <reading>cangkul 子</reading> kecil. Itu adalah seorang anak yang belajar bertarung dengan cangkul, dan dia mengubah cangkul itu menjadi <vocabulary>tombak</vocabulary> untuk bertarung. Bayangkan dia mengayunkan tombak cangkulnya seperti orang bodoh.', 'Tombak')
    RETURNING id INTO v_6857_tombak;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '肌', 'kulit-manusia', 45, 56, 'Kanji dan kata-katanya sama persis. Artinya, keduanya juga memiliki arti yang sama, meskipun Anda pasti ingin tahu bahwa ini merujuk secara spesifik pada <vocabulary>kulit manusia</vocabulary>.', 'Bacaannya sama dengan yang Anda pelajari dengan kanji.', 'Kulit Manusia, Kulit')
    RETURNING id INTO v_6858_kulit_manusia;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '鳥肌', 'merinding', 45, 57, '<kanji>Burung</kanji> <kanji>kulit</kanji> adalah <vocabulary>merinding</vocabulary>. Masuk akal, karena angsa adalah seekor burung dan kulit burung itu bergelombang.', 'Pembacaannya adalah pembacaan kosakata individual dari dua kanji, 鳥 dan 肌.', 'Merinding')
    RETURNING id INTO v_6859_merinding;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '肌触り', 'sentuhan', 45, 58, '<kanji>kulit</kanji> <kanji>sentuhan</kanji> adalah perasaan menyentuh dengan kulit Anda. Yaitu <vocabulary>sentuhan</vocabulary>, <vocabulary>rasa</vocabulary>, atau <vocabulary>tekstur</vocabulary> suatu hal. Itu yang Anda rasakan saat kulit Anda menyentuh sesuatu!', 'Bacaannya adalah 肌 ditambah bacaan 触る, digabungkan. Hati-hati dengan rendaku.', 'Sentuhan, Rasakan, Tekstur')
    RETURNING id INTO v_6860_sentuhan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '肌色', 'warna-kulit', 45, 59, '<kanji>Kulit</kanji> <kanji>warna</kanji> adalah <vocabulary>warna kulit</vocabulary>, atau <vocabulary>warna kulit</vocabulary>.

Kata ini awalnya mengacu pada warna oranye pucat atau warna peach, dan terkadang Anda masih melihatnya digunakan seperti itu. Namun memberi label sebagai 肌色 tidak mencakup semua warna kulit. Sekarang, ini hanya mengacu pada warna kulit secara umum.', 'Bacaannya merupakan bacaan vocab kun''yomi setiap kanji, 肌 dan 色 digabungkan menjadi satu.', 'Warna Kulit, Warna Kulit')
    RETURNING id INTO v_6861_warna_kulit;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '小舟', 'kapal', 45, 60, '<kanji>kecil</kanji> <kanji>perahu</kanji> adalah <vocabulary>perahu</vocabulary> atau <vocabulary>kapal kecil</vocabulary>. Kalau ada sesuatu yang disebut "perahu besar", lebih baik disebut "kapal", menurut saya, itulah sebabnya ini hanyalah <vocabulary>perahu</vocabulary>.', 'Semua bacaannya adalah yang pernah Anda lihat sebelumnya. 小 menggunakan bacaan こ, jadi anggap saja ini seperti "perahu anak-anak". Ini masuk akal karena ukurannya kecil. Hati-hati dengan rendaku.', 'Kapal, Kerajinan Kecil')
    RETURNING id INTO v_6862_kapal;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '舟', 'kapal', 45, 61, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna. Perhatikan bahwa kata ini biasanya tidak digunakan sendiri (yaitu 船). Biasanya melekat pada hal-hal yang berhubungan dengan perahu, tapi saya ingin Anda mempelajarinya secara individu sehingga Anda dapat menggunakannya dengan cara itu.', 'Bacaannya sama dengan yang Anda pelajari dengan kanji. Juga sama dengan 船.', 'Kapal')
    RETURNING id INTO v_6863_kapal;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '鐘', 'bel', 45, 62, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.

鐘 biasanya mengacu pada <vocabulary>lonceng</vocabulary> yang lebih besar dan terbuka seperti yang mungkin Anda temukan di menara lonceng gereja atau kuil Budha.', 'Melihat <vocabulary>bel</vocabulary>, Anda memutuskan untuk membunyikannya. Anda mengambil <reading>tongkat</reading> (かね) dan menekan bel sekuat yang Anda bisa, membuatnya berbunyi.', 'Bel')
    RETURNING id INTO v_6864_bel;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '警鐘', 'bel-alarm', 45, 63, '<kanji>peringatkan</kanji> <kanji>bel</kanji> adalah bel yang berbunyi ketika Anda perlu diperingatkan tentang sesuatu. Biasanya berupa <vocabulary>alarm bell</vocabulary> atau <vocabulary>fire bell</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Bel Alarm, Lonceng Api')
    RETURNING id INTO v_6865_bel_alarm;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '凶器', 'senjata-berbahaya', 45, 64, '<kanji>penjahat</kanji> <kanji>wadah</kanji> adalah wadah yang digunakan oleh penjahat. Kapal ini menyimpan peluru, dan merupakan <vocabulary>senjata berbahaya</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Senjata Berbahaya, Senjata Mematikan')
    RETURNING id INTO v_6866_senjata_berbahaya;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '元凶', 'biang-keladi', 45, 65, '<kanji>asal</kanji> <kanji>penjahat</kanji> adalah penjahat yang menjalankan segalanya. Merekalah dalang di balik kejahatan yang terjadi. Merekalah <vocabulary>biang keladi</vocabulary> atau <vocabulary>penyebab utama</vocabulary>.

元凶 tidak terbatas pada manusia saja, jadi sering kali juga merujuk pada <kosa kata>akar penyebab</vocabulary> suatu masalah, seperti 汚染の元凶 (penyebab utama polusi). Kata ini bernada serius dan negatif dan banyak digunakan dalam tulisan tentang kejahatan, skandal, atau masalah besar lainnya.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda telah mempelajarinya, tetapi karena 元 memiliki dua bacaan on''yomi, berikut ini mnemonik untuk membantu Anda:

<kosa kata>pemimpin</vocabulary> dari semua masalah ini adalah <reading>Gen</reading>ji (げん). Dialah <vocabulary>penyebab utama</vocabulary> di balik kekacauan ini. Ingat semua masalah yang dia timbulkan karena menggoda terlalu banyak wanita di "The Tale of Genji"? Semua orang mengagumi kecantikannya, tapi tidak diragukan lagi dialah <vocabulary>akar penyebab</vocabulary> dari banyak kekacauan.', 'Biang keladi, Pelaku Utama, Akar Penyebab')
    RETURNING id INTO v_6867_biang_keladi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '凶悪', 'mengerikan', 45, 66, '<kanji>penjahat</kanji> yang <kanji>jahat</kanji> adalah <vocabulary>kejam</vocabulary> dan <vocabulary>jahat</vocabulary> yang paling <vocabulary>kejam</vocabulary> dari semuanya.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Mengerikan, Sangat jahat')
    RETURNING id INTO v_6868_mengerikan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '狩り', 'memburu', 45, 67, 'Anda memiliki versi kata benda dari <kanji>berburu</kanji>. Itulah <vocabulary>berburu</vocabulary>.', 'Pembacaannya menggunakan bacaan dari kanji.', 'Memburu')
    RETURNING id INTO v_6869_memburu;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '狩人', 'pemburu', 45, 68, '<kanji>berburu</kanji> <kanji>orang</kanji> adalah orang yang berburu. Seorang <vocabulary>pemburu</vocabulary>.', 'Anda mempelajari pembacaan 狩 saat mempelajari kanji, tetapi pembacaan 人 sama sekali tidak teratur. Bayangkan saja Anda sedang berburu rusa kutub bernama <reading>Rudo</reading>lph (りゅうど). Dia memiliki hidung merah yang luar biasa, yang membuatnya mudah dikenali dan menempatkannya pada posisi yang kurang menguntungkan.', 'Pemburu')
    RETURNING id INTO v_6870_pemburu;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '頃', 'perkiraan-waktu', 45, 69, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna. Bila digunakan sebagai sufiks, artinya <vocabulary>perkiraan waktu</vocabulary> dan <vocabulary>sekitar</vocabulary> (seperti dalam "sekitar jam 3:00").', 'Bacaannya sama dengan yang Anda pelajari dengan kanji. Ingatlah bahwa ころ diucapkan ketika merupakan kata benda, namun biasanya ごろ jika merupakan akhiran, meskipun beberapa orang mengucapkan ころ dalam kedua kasus tersebut.', 'Perkiraan Waktu, Sekitar, Tentang')
    RETURNING id INTO v_6871_perkiraan_waktu;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '先頃', 'baru-baru-ini', 45, 70, '<kanji>sebelumnya</kanji> <kanji>perkiraan</kanji> adalah perkiraan waktu sebelumnya, yaitu <vocabulary>baru-baru ini</vocabulary> atau <vocabulary>hari yang lalu</vocabulary>.', 'Bacaannya merupakan bacaan vocab kun''yomi dari kedua kanji tersebut. Itu 先 dan 頃 (bacaan yang Anda pelajari) disatukan.頃 adalah versi rendaku, ごろ jadi berhati-hatilah.', 'Baru-baru ini, Suatu hari nanti')
    RETURNING id INTO v_6872_baru_baru_ini;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '近頃', 'akhir-akhir-ini', 45, 71, '<kanji>dekat</kanji> <kanji>perkiraan</kanji> adalah perkiraan waktu yang dekat dengan Anda. Periode waktu ini adalah periode waktu <vocabulary>akhir-akhir ini</vocabulary>. Ini <vocabulary>baru-baru ini</vocabulary>.', 'Bacaannya adalah 近い dan 頃 disatukan.', 'Akhir-akhir ini, Baru-baru ini')
    RETURNING id INTO v_6873_akhir_akhir_ini;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '年頃', 'perkiraan-usia', 45, 72, '<kanji>tahun</kanji> <kanji>perkiraan</kanji> adalah <vocabulary>perkiraan usia</vocabulary> Anda. Ini juga merupakan cara tidak langsung untuk merujuk pada <vocabulary>masa remaja</vocabulary>, dan ketika orang mencapai <vocabulary>usia menikah</vocabulary>!', 'Bacaannya adalah bacaan vocab versi 年 plus 頃 yang disatukan. Catatan: Terkadang Anda juga akan melihat ini ditulis sebagian dalam kana seperti 年ごろ.', 'Perkiraan Usia, Masa remaja, Usia Menikah')
    RETURNING id INTO v_6874_perkiraan_usia;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', 'いつ頃', 'tentang-kapan', 45, 73, 'いつ adalah "kapan" dan 頃 adalah "tentang". Gabungkan semuanya dan Anda mendapatkan "<vocabulary>tentang kapan</vocabulary>?" atau "<vocabulary>seberapa cepat</vocabulary>?"', 'Bacaannya sama dengan yang dipelajari dengan kanji, hanya rendaku saja.', 'Tentang Kapan, Seberapa Cepat')
    RETURNING id INTO v_6875_tentang_kapan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', 'この頃', 'baru-baru-ini', 45, 74, '<kanji>Ini</kanji> (この) <kanji>perkiraan</kanji> adalah perkiraan waktu ini. Ini adalah <vocabulary>baru-baru ini</vocabulary> atau <vocabulary>saat ini</vocabulary> atau <vocabulary>hari ini</vocabulary>.', 'Bacaannya adalah 頃 bacaan dari bacaan kanji. Hati-hati, itu bentuk rendakunya.', 'Baru-baru ini, Dewasa ini, Hari-hari ini')
    RETURNING id INTO v_6876_baru_baru_ini;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '若い頃', 'masa-muda-seseorang', 45, 75, '<kanji>muda</kanji> <kanji>perkiraan</kanji> adalah perkiraan usia ketika Anda masih muda. Kira-kira inilah <vocabulary>masa muda</vocabulary> atau <vocabulary>kehidupan awal</vocabulary>.

若い頃 sering digunakan ketika mengenang masa lalu, seperti, "Saat aku masih muda, aku dulu..."', 'Bacaannya adalah 若い dan 頃 digabungkan menjadi satu.', 'Masa Muda Seseorang, Kehidupan Awal')
    RETURNING id INTO v_6877_masa_muda_seseorang;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '魂', 'jiwa', 45, 76, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.', 'Lihatlah ke dalam <kanji>jiwa</kanji> Anda. Anda melihat semua bagian yang membentuk <vocabulary>jiwa</vocabulary> Anda berguling-guling, didorong oleh <reading>Tamashii</reading> (たましい) Katamari. Dia menjaga jiwa Anda tetap bagus, besar, dan aman!', 'Jiwa')
    RETURNING id INTO v_6878_jiwa;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '〜魂', 'roh', 45, 77, 'Jika dilampirkan pada sebuah kata, ini mengacu pada semangat ____. Maknanya juga sama dengan kanji.', 'Kata ini terdiri dari satu kanji, namun menggunakan bacaan on''yomi, bukan bacaan kun''yomi. Untungnya, Anda sudah mempelajari bacaan ini. Hore!', 'Roh')
    RETURNING id INTO v_6879_roh;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '脚', 'kaki', 45, 78, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.

Ingin tahu apa perbedaan 脚 dan 足? Anda mungkin ingat 足 sebagian besar berarti kaki tetapi terkadang bisa merujuk pada kaki. 脚 mengacu pada keseluruhan <kosakata>kaki</vocabulary> atau <kosakata>anggota tubuh bagian bawah</vocabulary> (seringkali termasuk kaki). Pada dasarnya, gunakan 足 untuk kaki dan 脚 untuk kaki!', 'Bacaannya sama dengan 足!', 'Kaki, Anggota Badan Bawah')
    RETURNING id INTO v_6880_kaki;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '脚本', 'naskah', 45, 79, '<kanji>kaki</kanji> <kanji>buku</kanji> hanyalah kaki-kaki dari sebuah buku. Bukan keseluruhan buku. Ini hanya berisi bagian-bagian yang berjalan dan bergerak, tidak begitu banyak deskripsinya (benda yang tidak bergerak). Buku semacam ini adalah <vocabulary>script</vocabulary> atau <vocabulary>skenario</vocabulary>. "Buku-buku" ini berfokus pada tindakan dan perkataan orang, itulah mengapa ini hanyalah kaki.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Naskah, Skenario')
    RETURNING id INTO v_6881_naskah;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '可也', 'sangat', 45, 80, '<kanji>mungkin</kanji> <kanji>sangat</kanji> cukup besar. Itu <vocabulary>sangat</vocabulary>, <vocabulary>cukup</vocabulary>, dan <vocabulary>cukup</vocabulary>... sesuatu. Perlu diketahui juga bahwa ini hampir selalu ditulis dalam kana dan bukan kanji. Tapi, kita sedang belajar kanji di sini, jadi astaga kita akan belajar beberapa kanji.', 'Bacaannya sama dengan bacaan yang Anda pelajari dengan kanji.', 'Sangat, Cukup, Lumayan')
    RETURNING id INTO v_6882_sangat;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '呪い', 'menyumpahi', 45, 81, 'Meskipun tampak seperti kata sifat, ini adalah kata benda. Artinya sama dengan kanji: <vocabulary>kutukan</vocabulary>.', 'Bacaannya sama dengan bacaan yang Anda pelajari dengan kanji.', 'Menyumpahi')
    RETURNING id INTO v_6885_menyumpahi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '呪う', 'untuk-mengutuk', 45, 82, 'Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanji itu sendiri berarti <kanji>kutukan</kanji>, dan versi kata kerjanya adalah <vocabulary>mengutuk</vocabulary> atau <vocabulary>mengutuk</vocabulary>.', 'Bacaannya sama dengan yang Anda pelajari dengan kanji.', 'Untuk Mengutuk, Untuk Mengutuk')
    RETURNING id INTO v_6886_untuk_mengutuk;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '暦', 'kalender', 45, 83, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.', 'Saat melihat kalender, <read>子読み</reading> (こよみ) di dalamnya adalah... yah... tidak bisa membacanya sama sekali. Sebab, anak-anak belum bisa membaca dengan baik. Jadi, ketika Anda melihat kalender, Anda harus menjelaskannya kepada seorang anak, karena mereka tidak bisa membacanya.', 'Kalender, Almanak')
    RETURNING id INTO v_6887_kalender;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '旧暦', 'kalender-lunisolar', 45, 84, '<kanji>sebelumnya</kanji> <kanji>kalender</kanji> adalah kalender dari sebelumnya. Itu adalah <vocabulary>kalender lunisolar</vocabulary> dan <vocabulary>kalender tradisional Jepang</vocabulary>. Tentu saja bukan kalender saat ini.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Kalender Lunisolar, Kalender Tradisional Jepang, Kalender Jepang')
    RETURNING id INTO v_6888_kalender_lunisolar;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '西暦', 'era-umum', 45, 85, 'Di <kanji>barat</kanji>, <kanji>kalender</kanji> menunjukkan tahun menurut <vocabulary>zaman umum</vocabulary>, alias <vocabulary>era Kristen</vocabulary>. Anda tahu, seperti tahun 2025 M (atau 2025 M) — kita sudah memasuki era yang sama lebih dari 2000 tahun yang lalu.

<vocabulary>Kalender Barat</vocabulary> ini berbeda dengan kalender tradisional Jepang, yang menyebutkan era kaisar yang berkuasa. Era Reiwa saat ini mengikuti era Heisei yang muncul setelah era Showa. Rapi, bukan? Pada formulir resmi di Jepang, Anda sering kali dapat memilih apakah akan menulis tahun lahir Anda dengan gaya Barat atau Jepang.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Era Umum, Era Kristen, Kalender Barat')
    RETURNING id INTO v_6889_era_umum;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '曇る', 'menjadi-berawan', 45, 86, 'Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanjinya sendiri berarti <kanji>mendung</kanji> dan versi kosakata kata kerjanya berarti <vocabulary>menjadi mendung</vocabulary> atau <vocabulary>menjadi mendung</vocabulary>.

Selain menggambarkan cuaca, 曇る juga bisa merujuk pada fenomena fisik lainnya, seperti ketika kacamata atau cermin kamar mandi Anda berembun. Kata ini juga dapat digunakan secara kiasan, seperti ketika ekspresi seseorang menjadi suram (表情が曇る) karena emosi negatif.', 'Bacaannya sama dengan yang Anda pelajari dengan kanji. Itu juga sama dengan 雲, yang memiliki arti sangat mirip (awan).', 'Menjadi Berawan, Menjadi Berawan, Untuk Menjadi Berkabut, Untuk Mendung')
    RETURNING id INTO v_6890_menjadi_berawan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '曇り', 'cuaca-mendung', 45, 87, 'Versi kata benda dari <kanji>berawan</kanji> adalah <vocabulary>cuaca berawan</vocabulary> atau <vocabulary>cloudiness</vocabulary>. Dalam beberapa kasus, ini juga merujuk pada jenis <vocabulary>kabut</vocabulary> yang Anda temukan di jendela atau kacamata Anda.

Meskipun merupakan kata benda dalam bahasa Jepang, Anda akan sering melihat ini diterjemahkan sebagai kata sifat "cloudy" dalam bahasa Inggris. Namun jangan biarkan hal itu membodohi Anda, kata ini tetap berlaku sebagai kata benda dalam bahasa Jepang! Itu hanyalah contoh lain dari jenis kata yang tidak cocok antara bahasa Inggris dan Jepang.', 'Bacaannya sama dengan yang Anda pelajari dengan kanji.', 'Cuaca mendung, Keadaan mendung, Kabut')
    RETURNING id INTO v_6891_cuaca_mendung;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '眺める', 'untuk-menatap', 45, 88, 'Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanjinya sendiri berarti <kanji>menatap</kanji> dan versi kosakata kata kerjanya adalah <vocabulary>menatap</vocabulary> (atau <vocabulary>melihat</vocabulary> dengan cara yang sangat menatap).', 'Untuk mempelajari cara membaca, pikirkan saja bagaimana Anda melihat sesuatu untuk waktu yang lama jika Anda sedang menatapnya. Dalam bahasa Jepang kata "panjang" adalah 長い, dan coba tebak apa bacaan bagian kanjinya? Itu なが, sama seperti pembacaan bagian kanji <reading>なが</reading>める.', 'Untuk Menatap, Untuk Dilihat, Untuk Melihat, Untuk Menatap')
    RETURNING id INTO v_6892_untuk_menatap;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '眺望', 'prospek', 45, 89, 'Anda <kanji>menatap</kanji> pada <kanji>harapan</kanji>. Kelihatannya bagus. Itulah <vocabulary>prospek</vocabulary> dan <vocabulary>pandangan</vocabulary> Anda, saat Anda menatap harapan.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Prospek, Melihat')
    RETURNING id INTO v_6893_prospek;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '全裸', 'telanjang-sepenuhnya', 45, 90, 'Anda <kanji>semua</kanji> <kanji>telanjang</kanji>, yang membuat Anda <vocabulary>telanjang total</vocabulary> atau <vocabulary>telanjang total</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Telanjang Sepenuhnya, Benar-benar Telanjang, Sepenuhnya Telanjang')
    RETURNING id INTO v_6894_telanjang_sepenuhnya;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '半裸', 'setengah-telanjang', 45, 91, 'Jika Anda <kanji>setengah</kanji> <kanji>telanjang</kanji> Anda <vocabulary>setengah telanjang</vocabulary> atau <vocabulary>setengah telanjang</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Setengah Telanjang, Setengah Telanjang')
    RETURNING id INTO v_6895_setengah_telanjang;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '裸', 'telanjang', 45, 92, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.', 'Anda <vocabulary>telanjang</vocabulary> sekarang. Anda dulu memakai mobil, tetapi Anda tidak memilikinya lagi (dan Anda tidak memakainya). Anda <read>punya mobil</reading>r (はだか), tetapi sekarang Anda tidak punya mobil. Itulah yang akan Anda jelaskan ketika seseorang bertanya mengapa Anda telanjang.', 'Telanjang')
    RETURNING id INTO v_6896_telanjang;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '賭ける', 'untuk-berjudi', 45, 93, 'Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanjinya sendiri berarti <kanji>berjudi</kanji> dan versi kosakata kata kerjanya adalah <vocabulary>berjudi</vocabulary>.', 'Bacaannya adalah bacaan yang Anda pelajari dengan kanji.', 'Untuk Berjudi, Bertaruh, Untuk Mempertaruhkan, Untuk Mengambil Risiko')
    RETURNING id INTO v_6897_untuk_berjudi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '賭け', 'pertaruhan', 45, 94, 'Versi kata benda dari <kanji>judi</kanji> adalah <vocabulary>judi</vocabulary> atau <vocabulary>taruhan</vocabulary> atau <vocabulary>judi</vocabulary> atau <vocabulary>taruhan</vocabulary>. Apa pun yang Anda lakukan, tampilkan semuanya dalam warna hitam 13. Percayalah.', 'Bacaannya berasal dari bacaan yang Anda pelajari dengan kanji.', 'Pertaruhan, Berjudi, Sebuah Perjudian, Sebuah Taruhan')
    RETURNING id INTO v_6898_pertaruhan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '塾', 'sekolah-menjejalkan', 45, 95, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.', 'Bacaannya sama dengan yang Anda pelajari di kanji.', 'Sekolah Menjejalkan, Sekolah Kepelatihan, Juku')
    RETURNING id INTO v_6901_sekolah_menjejalkan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '義塾', 'sekolah-swasta', 45, 96, '<kanji>kebenaran</kanji> <kanji>sekolah menjejalkan</kanji>, untuk beberapa alasan, adalah <vocabulary>sekolah swasta</vocabulary>. Mungkin karena mereka menganggap sekolah negeri tidak ada gunanya, jadi mereka mengambil kebenaran mereka di tempat lain untuk memulai sekolah swasta? Saya tidak yakin.

Anda mungkin pernah melihat singkatan 私学 (untuk 私立学校) sebagai kata lain untuk sekolah swasta. 私学 biasanya digunakan untuk sekolah mana pun, dasar hingga universitas, yang dijalankan oleh perorangan atau kelompok swasta.

義塾 ​​umumnya menggambarkan sekolah swasta yang didirikan pada zaman Edo dan Meiji. Dalam bahasa Jepang kontemporer, kata ini tidak digunakan sendiri tetapi dapat dilihat pada nama sekolah seperti 明徳義塾高等学校 (SMA Meitoku Gijuku).', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Sekolah swasta')
    RETURNING id INTO v_6902_sekolah_swasta;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '塾生', 'siswa-sekolah-cram', 45, 97, 'Ingat bagaimana 学生 adalah "siswa"? Ini memainkan peran itu. "Siswa" <kanji>sekolah menjejalkan</kanji> adalah siswa dari sekolah menjejalkan, <vocabulary>siswa sekolah menjejalkan</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Siswa Sekolah Cram')
    RETURNING id INTO v_6903_siswa_sekolah_cram;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '電卓', 'kalkulator', 45, 98, '<kanji>listrik</kanji> <kanji>meja</kanji> adalah <vocabulary>kalkulator</vocabulary>. Mengapa ini? Anda dapat memikirkannya dengan beberapa cara berbeda. Mungkin di masa lalu, kalkulator (alias sempoa) akan memenuhi seluruh tabel, menjadikan versi "listrik" ini sebagai kalkulator. Atau, mungkin bisa digunakan untuk menyelesaikan tabel. Jenis tabel yang salah, tetapi akan membantu Anda mengingat arti kata ini.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Kalkulator')
    RETURNING id INTO v_6904_kalkulator;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '食卓', 'meja-makan', 45, 99, '<kanji>makan</kanji>ing <kanji>meja</kanji> adalah <vocabulary>meja makan</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Meja makan')
    RETURNING id INTO v_6905_meja_makan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '卓', 'meja', 45, 100, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.', 'Bacaannya sama dengan bacaan yang Anda pelajari dengan kanji.', 'Meja, Meja')
    RETURNING id INTO v_6906_meja;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '卓球', 'tenis-meja', 45, 101, '<kanji>Meja</kanji> <kanji>bola</kanji> adalah olahraga di mana Anda mempunyai meja dan kemudian Anda menggunakan bola di atasnya. Itulah <vocabulary>tenis meja</vocabulary> atau <vocabulary>ping pong</vocabulary>. Masuk akal, bukan? Anda menggunakan bola pingpong dan bermain di atas meja.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri. Hati-hati dengan pemendekan たく.', 'Tenis meja, Ping Pong')
    RETURNING id INTO v_6907_tenis_meja;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '磨く', 'ke-polandia', 45, 102, 'Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanji itu sendiri berarti <kanji>memoles</kanji> dan versi kosakata kata kerjanya adalah <vocabulary>to polish</vocabulary> atau, anehnya secara spesifik (dan kita akan mempelajari kata yang lebih spesifik untuk ini nanti) <vocabulary>menyikat gigi</vocabulary>.', 'Bacaannya sama dengan yang Anda pelajari dengan kanji.', 'Ke Polandia, Untuk Bersinar, Untuk Menyikat Gigi')
    RETURNING id INTO v_6908_ke_polandia;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '磨き', 'polandia', 45, 103, '<kanji>Semir</kanji> adalah <vocabulary>semir</vocabulary> atau bahkan <vocabulary>bersinar</vocabulary>.', 'Bacaannya berasal dari bacaan yang Anda pelajari dengan kanji.', 'Polandia, Bersinar')
    RETURNING id INTO v_6909_polandia;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '細菌', 'bakteri', 45, 104, '<kanji>yang tipis</kanji> <kanji>bakteri</kanji> adalah... ya... <vocabulary>bakteri</vocabulary>. Saya kira semua bakteri sangat tipis. Saking tipisnya, Anda tidak bisa melihatnya dengan mata telanjang.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda sudah mempelajarinya, jadi Anda seharusnya bisa membacanya sendiri!', 'Bakteri')
    RETURNING id INTO v_6910_bakteri;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', 'ばい菌', 'kuman', 45, 105, '<kanji>bakteri</kanji> "ばい" adalah <vocabulary>kuman</vocabulary>. Jika Anda bertanya-tanya, ばい mengacu pada kanji 黴, tetapi orang biasanya tidak menulis bagian itu.', 'Bacaannya sama dengan yang Anda pelajari dengan kanji.', 'Kuman')
    RETURNING id INTO v_6911_kuman;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '無菌', 'disterilkan', 45, 106, 'Tempat yang <kanji>tidak</kanji> mengandung <kanji>bakteri</kanji> <kanji>disterilkan</vocabulary> dan <vocabulary>aseptik</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Disterilkan, Aseptik')
    RETURNING id INTO v_6912_disterilkan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '殺菌', 'sterilisasi', 45, 107, 'Jika Anda <kanji>membunuh</kanji> <kanji>bakteri</kanji> Anda sedang melakukan <vocabulary>sterilisasi</vocabulary>. Anda membunuh bakteri itu.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri. Hati-hati dengan pemendekannya.', 'Sterilisasi')
    RETURNING id INTO v_6913_sterilisasi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '陰', 'naungan', 45, 108, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.

陰 adalah kata untuk <vocabulary>teduh</vocabulary> secara harafiah, namun bisa juga digunakan secara kiasan untuk membicarakan hal-hal yang terjadi <vocabulary>di dalam bayangan</vocabulary>, <vocabulary>di belakang layar</vocabulary>, atau di belakang seseorang.', '陰 menggunakan bacaan かげ yang baru jika merupakan kata kosakata, jadi inilah mnemonik untuk membantu mengingatnya:

Anda perlu mencari di <vocabulary>teduhan</vocabulary> jika Anda ingin menemukan <reading>car ge</reading>cko (かげ) yang sulit dipahami. (Misalnya, tokek di dalam mobil kecil.) Tokek dilarang mengendarai mobil, jadi tokek mobil harus mengemudi di tempat teduh, atau bahkan <vocabulary>di dalam bayangan</vocabulary>, agar tidak tertangkap. Itu sebabnya tokek mobil menyukai keteduhan.', 'Naungan, Dalam Bayangan, Di belakang layar')
    RETURNING id INTO v_6914_naungan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '陰気', 'kesuraman', 45, 109, '<kanji>naungan</kanji> <kanji>energi</kanji> adalah perasaan teduh. Itu adalah perasaan <vocabulary>suram</vocabulary> dan <vocabulary>melancholy</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Kesuraman, Kemurungan')
    RETURNING id INTO v_6915_kesuraman;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '悪霊', 'roh-jahat', 45, 110, '<kanji>jahat</kanji> <kanji>hantu</kanji> bukanlah hantu, melainkan <vocabulary>roh jahat</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri. Perhatikan bahwa ini menggunakan pembacaan 霊 sekunder dari りょう, jadi bayangkan roh jahat mendayung perahu.', 'Roh Jahat')
    RETURNING id INTO v_6916_roh_jahat;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '霊感', 'inspirasi', 45, 111, '<kanji>hantu</kanji> <kanji>perasaan</kanji> adalah <vocabulary>inspirasi</vocabulary>. Entah kenapa, perasaan hantu adalah perasaan inspirasi. Saya kira ada hantu yang masuk ke dalam diri Anda dan membuat Anda merasakan inspirasi ini? Oh, tunggu, kamu bisa merasakannya karena kamu punya <vocabulary>indra keenam</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Inspirasi, Indra Keenam, khususnya')
    RETURNING id INTO v_6917_inspirasi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '亡霊', 'hantu', 45, 112, '<kanji>almarhum</kanji> <kanji>hantu</kanji> adalah <vocabulary>hantu</vocabulary> (semua hantu sudah meninggal). Bisa juga merujuk pada "<vocabulary>orang mati</vocabulary>."', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Hantu, Orang mati')
    RETURNING id INTO v_6918_hantu;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '霊園', 'pemakaman', 45, 113, '<kanji>hantu</kanji> <kanji>taman</kanji> adalah tempat banyak hantu dipanen dan tempat banyak hantu tumbuh. Ini adalah <vocabulary>kuburan</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Pemakaman')
    RETURNING id INTO v_6919_pemakaman;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '加湿器', 'pelembab-udara', 45, 114, 'Sebuah "<kanji>tambahkan</kanji> <kanji>kelembaban</kanji><kanji>wadah</kanji>" adalah wadah yang menambah kelembapan pada udara. Itu adalah <vocabulary>pelembab</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'pelembab udara')
    RETURNING id INTO v_6920_pelembab_udara;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '湿地', 'lahan-basah', 45, 115, '<kanji>lembab</kanji> <kanji>bumi</kanji> adalah tempat air tampak berkumpul, namun tidak terlalu banyak sehingga terdapat danau atau lautan atau semacamnya. Hanya lembab. Ini adalah <vocabulary>lahan basah</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Lahan basah')
    RETURNING id INTO v_6921_lahan_basah;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '湿気', 'kelembaban', 45, 116, '<kanji>lembab</kanji> <kanji>energi</kanji> adalah perasaan lembab. Yaitu <vocabulary>kelembaban</vocabulary> dan <vocabulary>kelembaban</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri. Berhati-hatilah dengan pemendekannya, dan pembacaan 気 yang tidak teratur.', 'kelembaban, Kelembaban')
    RETURNING id INTO v_6922_kelembaban;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '湿る', 'menjadi-lembab', 45, 117, 'Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanjinya sendiri berarti <kanji>lembab</kanji> jadi versi kosakata kata kerjanya adalah <vocabulary>menjadi lembab</vocabulary> atau <vocabulary>menjadi lembab</vocabulary>. Ewww.', 'Tahukah Anda apa yang sebenarnya lembap dan lembab? <reading>Dia</reading>p <reading>saya</reading>n (しめ) adalah. Mereka tadinya nongkrong di rumah kaca dan sekarang bulu mereka lembap. Mereka akan membutuhkan handuk untuk mengeringkannya.', 'Menjadi lembab, Menjadi Lembab, Menjadi Basah')
    RETURNING id INTO v_6923_menjadi_lembab;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '嫁', 'pengantin-perempuan', 45, 118, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.', 'Bacaannya sama dengan yang Anda pelajari dengan kanji.', 'Pengantin perempuan, Istri')
    RETURNING id INTO v_6924_pengantin_perempuan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '嫁ぐ', 'untuk-menikah', 45, 119, 'Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanjinya sendiri berarti <kanji>pengantin</kanji> dan versi kosakata kata kerjanya adalah <vocabulary>menikah</vocabulary>, karena Anda tidak bisa benar-benar "mempelai" seseorang.

嫁ぐ sering digunakan ketika menjelaskan bagaimana seseorang <vocabulary>akan menikah dengan</vocabulary> keluarga lain.', 'Bayangkan Anda akan menikah dengan seorang gadis lembah. Anda semua seperti. Hei, aku akan menikah denganmu! Dan dia seperti <read>Tots</reading> (とつ), kita akan, seperti, menikah! Bayangkan dia mengatakan lebih banyak hal "tots" (tots = kependekan dari gadis lembah yang benar-benar berbicara, setidaknya dalam imajinasi saya).', 'Untuk Menikah, Untuk Menikah Dengan')
    RETURNING id INTO v_6925_untuk_menikah;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '溝', 'selokan', 45, 120, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.

溝 biasanya digunakan untuk celah fisik seperti parit drainase, parit kecil, atau alur di permukaan. Hal ini juga dapat menggambarkan kesenjangan metaforis, seperti kesenjangan emosional atau relasional antar manusia.', 'Karena kata ini terdiri dari satu kanji, kemungkinan besar menggunakan bacaan kun''yomi. Anda tidak mempelajari bacaan ini, jadi inilah mnemonik untuk membantu Anda:

Jika Anda masuk ke dalam <vocabulary>selokan</vocabulary> itu Anda akan tertular <reading>campak</reading> (みぞ). Selokan atau <vocabulary>parit</vocabulary> mengandung segala macam kotoran dan kuman, termasuk campak, jadi jangan menginjaknya atau meminumnya!', 'Selokan, Parit')
    RETURNING id INTO v_6926_selokan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '海溝', 'palung-samudera', 45, 121, '<kanji>lautan</kanji> <kanji>talang</kanji> adalah <vocabulary>parit laut</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Palung Samudera')
    RETURNING id INTO v_6927_palung_samudera;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '排水溝', 'drainase', 45, 122, 'Anda sudah tahu bahwa <kanji>memancarkan</kanji>ted <kanji>air</kanji> berarti "drainase". Tambahkan <kanji>talang</kanji> ke dalamnya dan ini menjadi <vocabulary>drainase</vocabulary> dalam pengertian <vocabulary>drainage ditch</vocabulary> atau <vocabulary>talang</vocabulary>.

Untuk saluran pembuangan di wastafel atau bak mandi, Anda bisa menggunakan 排水口, yang pengucapannya sama tetapi kanjinya berbeda.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Drainase, Parit saluran air, Selokan')
    RETURNING id INTO v_6928_drainase;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '滝', 'air-terjun', 45, 123, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.', 'Bacaannya sama dengan yang Anda pelajari dengan kanji.', 'Air terjun')
    RETURNING id INTO v_6929_air_terjun;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '滝川', 'jeram', 45, 124, '<kanji>air terjun</kanji> <kanji>sungai</kanji> adalah sungai yang mengalir seperti air terjun! Cepat dan marah! Air yang bergerak seperti ini adalah <vocabulary>jeram</vocabulary>.', 'Bacaannya merupakan bacaan kosakata kun''yomi setiap kanji: 滝 dan 川. Hati-hati dengan rendaku.', 'jeram')
    RETURNING id INTO v_6930_jeram;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '狂う', 'menjadi-gila', 45, 125, 'Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanji itu sendiri berarti <kanji>gila</kanji> atau <kanji>gila</kanji>. Versi kata kerjanya adalah <vocabulary>menjadi gila</vocabulary> (Anda tidak benar-benar "menjadi gila" sekarang, bukan?) atau <vocabulary>menjadi gila</vocabulary>.', 'Untuk mengingat bacaan tersebut, pikirkan saja bagaimana ketika Anda menjadi gila, Anda <reading>datang</reading> (来る) ke kota gila. Bayangkan saja ada suara yang memanggil Anda untuk datang. Kemarilah! Silakan datang ke sini! Datanglah ke kota gila! Menyerah pada suara-suara itu!', 'Menjadi Gila, Menjadi Gila')
    RETURNING id INTO v_6931_menjadi_gila;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '狂気', 'kegilaan', 45, 126, '<kanji>Gila</kanji> <kanji>energi</kanji> adalah <vocabulary>kegilaan</vocabulary> dan <vocabulary>kegilaan</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Kegilaan, Kegilaan')
    RETURNING id INTO v_6932_kegilaan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '翔る', 'untuk-terbang', 45, 127, 'Kata ini terdiri dari kanji dengan hiragana ditempelkan. Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanjinya berarti <kanji>terbang</kanji>, jadi versi kata kerjanya berarti <vocabulary>terbang</vocabulary>.', 'Anda sudah mempelajari bacaan ini! Anda juga harus bisa membaca ini!', 'Untuk Terbang, Untuk Melambung')
    RETURNING id INTO v_6933_untuk_terbang;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '悪趣味', 'rasanya-tidak-enak', 45, 128, 'Ingat bagaimana 趣味 berarti "hobi"? Nah, kalau kamu punya <kanji>buruk</kanji> hobi, itu mungkin berarti kamu punya <vocabulary>selera tidak enak</vocabulary>. 

悪趣味 sering digunakan untuk menggambarkan sesuatu yang kurang canggih atau sensitif, seperti sepatu norak dan lelucon yang menyinggung, serta seseorang dengan selera seperti itu.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Rasanya tidak enak')
    RETURNING id INTO v_6951_rasanya_tidak_enak;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '包み紙', 'kertas-pembungkus', 45, 129, '包み adalah <kanji>bundel</kanji> atau <kanji>paket</kanji>, dan 紙 adalah <kanji>kertas</kanji>. Kertas apa yang mengelilingi bundel dan paket? Itu akan menjadi <vocabulary>kertas kado</vocabulary>.', 'Bacaannya adalah 包み dan 紙 digabungkan menjadi satu. Hati-hati dengan rendaku.', 'Kertas pembungkus')
    RETURNING id INTO v_6952_kertas_pembungkus;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '潮時', 'jam-pasang-surut', 45, 130, '<kanji>pasang</kanji> <kanji>waktu</kanji> adalah <vocabulary>jam pasang surut</vocabulary>.

Kata ini sering digunakan secara kiasan, seperti “waktu yang tepat untuk bertindak”, terutama mengacu pada berhenti melakukan sesuatu atau mundur dari suatu situasi.', 'Bacaannya berasal dari kata tersendiri, 潮 dan 時. Hati-hati dengan rendaku.', 'Jam Pasang Surut, Waktu yang Tepat, Waktu Tinggi')
    RETURNING id INTO v_6953_jam_pasang_surut;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '黒潮', 'arus-jepang', 45, 131, '<kanji>hitam</kanji> <kanji>pasang</kanji> kemungkinan besar tidak seperti yang Anda pikirkan. Inilah <vocabulary>Arus Jepang</vocabulary>, alias <vocabulary>Arus Kuroshio</vocabulary>. Ini adalah arus yang mengalir dari Utara di sisi Barat Samudra Pasifik. Pernahkah Anda mendengar tentang Arus Teluk? Ini seperti itu.', 'Bacaannya merupakan bacaan kun''yomi dari kedua kanji yang disatukan. 黒 dan 潮.', 'Arus Jepang, Arus Kuroshio')
    RETURNING id INTO v_6954_arus_jepang;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '擦る', 'untuk-menggosok', 45, 132, 'Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanji itu sendiri berarti <kanji>menggosok</kanji> dan kata kerja ini berarti <vocabulary>to rub</vocabulary> atau <vocabulary>to scrub</vocabulary>.', 'Jika kamu <vocabulary>menggosok</vocabulary> saya seperti itu, saya akan <reading>menuntut</reading> (す) kamu. Itu membuatku sangat tidak nyaman. <reading>cos</reading>t (こす) dari tindakan menggosok Anda akan tinggi.
    
Jadi kata ini mempunyai dua bacaan dan keduanya berarti “menggosok.” Namun biasanya Anda menggunakan する untuk satu tindakan, seperti menyalakan korek api atau menyerempet lutut Anda, sedangkan こする berarti melakukannya berulang kali, seperti saat Anda sedang membersihkan atau memoles sesuatu.', 'Untuk Menggosok, Untuk Menggosok')
    RETURNING id INTO v_6955_untuk_menggosok;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '小包', 'kemasan', 45, 133, '<kanji>kecil</kanji> <kanji>bundel</kanji> hanyalah sebuah <vocabulary>paket</vocabulary>. Sesuatu yang besar akan menjadi paket yang besar, saya kira.', 'Bacaannya berasal dari 小 (saya yakin ini adalah bacaan yang sudah Anda lihat beberapa kali) dan 包み, dengan み dimasukkan ke dalam paket. Waspadai rendaku yang agak aneh. Anda tidak terlalu sering melihat づ.', 'Kemasan, Sebuah Paket, Paket, Sebuah Paket')
    RETURNING id INTO v_6956_kemasan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '塊', 'gumpalan', 45, 134, 'Kanji dan kata-katanya sama, sehingga bisa berarti <vocabulary>lump</vocabulary>, <vocabulary>mass</vocabulary>, atau <vocabulary>bundle</vocabulary>. Selain itu, ini juga bisa merujuk pada <vocabulary>perwujudan</vocabulary> dari sesuatu. Ketika seseorang atau sesuatu merupakan suatu kumpulan atau sekumpulan atribut atau sifat, mereka mungkin juga merupakan perwujudannya!', 'Bacaannya sama dengan yang Anda pelajari dengan kanji. Kenali kata ini?', 'Gumpalan, Massa, Bundel, Perwujudan')
    RETURNING id INTO v_7145_gumpalan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '手頃', 'sedang', 45, 135, 'Saat Anda mengendalikan <kanji>tangan</kanji> Anda dalam jumlah <kanji>perkiraan</kanji>, Anda akan menjadi orang yang sangat <vocabulary>moderat</vocabulary> dan <vocabulary>masuk akal</vocabulary>.', 'Bacaan kata ini sama-sama bacaan kun''yomi. Anda telah mempelajari kedua bacaan ini sekarang jadi Anda seharusnya bisa membacanya sendiri.', 'Sedang, Berguna, Nyaman, Wajar')
    RETURNING id INTO v_7726_sedang;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '苛む', 'untuk-menyiksa', 45, 136, 'Seperti biasa, Anda bisa menebak ini adalah kata kerja berkat bunyi う di akhir. Kanji berarti <kanji>frustrasi</kanji>, dan sayangnya frustrasi cenderung <vocabulary>menyiksa</vocabulary> orang. Kata kerja ini cukup maju, namun tetap berguna untuk diketahui!', 'Kita semua tahu bahwa <vocabulary>menyiksa</vocabulary> satu sama lain tidak boleh dilakukan. Jadi bagaimana kalau kita semua <reading>menandatangani kontrak</reading> (さいな) yang menyatakan bahwa kita tidak akan menyiksa siapa pun lagi?', 'Untuk Menyiksa')
    RETURNING id INTO v_9008_untuk_menyiksa;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '仕える', 'untuk-melayani', 45, 137, 'Semua yang kami <kanji>lakukan</kanji> adalah <vocabulary>untuk melayani</vocabulary> Anda, lho.

Kata kerja ini agak kuno dan karena itu memiliki kesan formal. Kata ini digunakan untuk berbicara antara lain tentang melayani kaisar, raja, dan dewa.', '<vocabulary>Untuk melayani</vocabulary> Anda dengan baik, kami telah <reading>dua ca</reading>rs (つか). Jika salah satu mobil rusak, kami masih bisa melayani Anda dengan mobil lainnya.', 'Untuk Melayani')
    RETURNING id INTO v_9034_untuk_melayani;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '硬貨', 'koin', 45, 138, '<kanji>Kaku</kanji> <kanji>pengangkutan</kanji> selalu harus dibayar dengan <vocabulary>koin</vocabulary>, karena koin juga kaku. Anda tidak bisa membayar sesuatu yang kaku dengan sesuatu yang tidak kaku, itu tidak masuk akal sama sekali.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Koin')
    RETURNING id INTO v_9058_koin;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '献立', 'menu', 45, 139, 'Saya akan <kanji>menawarkan</kanji> makanan dan <kanji>berdiri</kanji> di sini saat Anda memakannya, karena saya menyusun <vocabulary>menu</vocabulary> ini dan saya ingin memastikan Anda menikmatinya.

Kata ini tidak berarti menu fisik yang Anda dapatkan di sebuah restoran; melainkan mengacu pada <vocabulary>meal plan</vocabulary>, apakah itu urutan hidangan untuk satu kali makan atau rencana makan umum untuk seminggu penuh seseorang.', 'Anda tidak mempelajari bacaan 献 dengan kanji, jadi berikut ini mnemonik untuk membantu Anda:

Hal paling spesial tentang <vocabulary>menu</vocabulary> yang saya kurasi untuk Anda? Semuanya <reading>con</reading>daging dor (こん): sayap condor goreng, condor yakitori, condor foie gras. Sebagai pemulung, condor bukanlah burung yang paling aman untuk dimasukkan ke dalam menu, jadi saya akan berdiri di sini kalau-kalau Anda sakit dan jatuh pingsan saat makan.', 'Menu, Paket Makan')
    RETURNING id INTO v_9081_menu;

  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2744_tahun_cahaya, 'Tahun cahaya', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5982_penghapusan, 'Penghapusan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5982_penghapusan, 'Eliminasi', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5982_penghapusan, 'Kepunahan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6708_pegunungan, 'Pegunungan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6763_untuk_membiarkan_seseorang_menginap, 'Untuk Membiarkan Seseorang Menginap', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6763_untuk_membiarkan_seseorang_menginap, 'Untuk Membiarkan Seseorang Menginap', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6765_agar_terburu_buru, 'Agar Terburu-buru', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6765_agar_terburu_buru, 'Menjadi Tidak Sabar', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6765_agar_terburu_buru, 'Menjadi Cemas', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6844_untuk_merobek, 'Untuk Merobek', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6844_untuk_merobek, 'Untuk Merobek', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6844_untuk_merobek, 'Untuk Berpisah', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6845_fisi_nuklir, 'Fisi Nuklir', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6845_fisi_nuklir, 'Karyokinesis', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6846_untuk_menyerang, 'Untuk Menyerang', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6846_untuk_menyerang, 'Untuk Menyerang', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6847_interlokal, 'Interlokal', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6848_jarak_pendek, 'Jarak Pendek', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6849_jarak_pendek, 'Jarak Pendek', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6850_masuk_dalam_daftar_keluarga, 'Masuk Dalam Daftar Keluarga', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6850_masuk_dalam_daftar_keluarga, 'Pendaftaran Pernikahan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6851_serentak, 'Serentak', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6851_serentak, 'Sekaligus', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6852_akan_dihancurkan, 'Akan Dihancurkan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6852_akan_dihancurkan, 'Akan Dimusnahkan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6853_kaku, 'Kaku', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6853_kaku, 'Keras', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6853_kaku, 'Tegas', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6854_kekakuan, 'Kekakuan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6854_kekakuan, 'Pengerasan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6854_kekakuan, 'Kekakuan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6855_untuk_mendapatkan_penghasilan, 'Untuk Mendapatkan Penghasilan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6855_untuk_mendapatkan_penghasilan, 'Untuk Menghasilkan Uang', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6856_menjadi_jelas, 'Menjadi Jelas', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6856_menjadi_jelas, 'Menjadi Transparan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6857_tombak, 'Tombak', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6858_kulit_manusia, 'Kulit Manusia', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6858_kulit_manusia, 'Kulit', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6859_merinding, 'Merinding', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6860_sentuhan, 'Sentuhan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6860_sentuhan, 'Rasakan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6860_sentuhan, 'Tekstur', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6861_warna_kulit, 'Warna Kulit', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6861_warna_kulit, 'Warna Kulit', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6862_kapal, 'Kapal', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6862_kapal, 'Kerajinan Kecil', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6863_kapal, 'Kapal', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6864_bel, 'Bel', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6865_bel_alarm, 'Bel Alarm', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6865_bel_alarm, 'Lonceng Api', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6866_senjata_berbahaya, 'Senjata Berbahaya', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6866_senjata_berbahaya, 'Senjata Mematikan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6867_biang_keladi, 'Biang keladi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6867_biang_keladi, 'Pelaku Utama', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6867_biang_keladi, 'Akar Penyebab', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6868_mengerikan, 'Mengerikan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6868_mengerikan, 'Sangat jahat', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6869_memburu, 'Memburu', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6870_pemburu, 'Pemburu', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6871_perkiraan_waktu, 'Perkiraan Waktu', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6871_perkiraan_waktu, 'Sekitar', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6871_perkiraan_waktu, 'Tentang', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6872_baru_baru_ini, 'Baru-baru ini', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6872_baru_baru_ini, 'Suatu hari nanti', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6873_akhir_akhir_ini, 'Akhir-akhir ini', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6873_akhir_akhir_ini, 'Baru-baru ini', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6874_perkiraan_usia, 'Perkiraan Usia', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6874_perkiraan_usia, 'Masa remaja', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6874_perkiraan_usia, 'Usia Menikah', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6875_tentang_kapan, 'Tentang Kapan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6875_tentang_kapan, 'Seberapa Cepat', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6876_baru_baru_ini, 'Baru-baru ini', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6876_baru_baru_ini, 'Dewasa ini', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6876_baru_baru_ini, 'Hari-hari ini', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6877_masa_muda_seseorang, 'Masa Muda Seseorang', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6877_masa_muda_seseorang, 'Kehidupan Awal', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6878_jiwa, 'Jiwa', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6879_roh, 'Roh', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6880_kaki, 'Kaki', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6880_kaki, 'Anggota Badan Bawah', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6881_naskah, 'Naskah', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6881_naskah, 'Skenario', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6882_sangat, 'Sangat', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6882_sangat, 'Cukup', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6882_sangat, 'Lumayan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6885_menyumpahi, 'Menyumpahi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6886_untuk_mengutuk, 'Untuk Mengutuk', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6886_untuk_mengutuk, 'Untuk Mengutuk', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6887_kalender, 'Kalender', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6887_kalender, 'Almanak', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6888_kalender_lunisolar, 'Kalender Lunisolar', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6888_kalender_lunisolar, 'Kalender Tradisional Jepang', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6888_kalender_lunisolar, 'Kalender Jepang', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6889_era_umum, 'Era Umum', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6889_era_umum, 'Era Kristen', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6889_era_umum, 'Kalender Barat', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6890_menjadi_berawan, 'Menjadi Berawan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6890_menjadi_berawan, 'Menjadi Berawan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6890_menjadi_berawan, 'Untuk Menjadi Berkabut', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6890_menjadi_berawan, 'Untuk Mendung', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6891_cuaca_mendung, 'Cuaca mendung', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6891_cuaca_mendung, 'Keadaan mendung', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6891_cuaca_mendung, 'Kabut', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6892_untuk_menatap, 'Untuk Menatap', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6892_untuk_menatap, 'Untuk Dilihat', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6892_untuk_menatap, 'Untuk Melihat', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6892_untuk_menatap, 'Untuk Menatap', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6893_prospek, 'Prospek', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6893_prospek, 'Melihat', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6894_telanjang_sepenuhnya, 'Telanjang Sepenuhnya', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6894_telanjang_sepenuhnya, 'Benar-benar Telanjang', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6894_telanjang_sepenuhnya, 'Sepenuhnya Telanjang', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6895_setengah_telanjang, 'Setengah Telanjang', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6895_setengah_telanjang, 'Setengah Telanjang', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6896_telanjang, 'Telanjang', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6897_untuk_berjudi, 'Untuk Berjudi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6897_untuk_berjudi, 'Bertaruh', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6897_untuk_berjudi, 'Untuk Mempertaruhkan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6897_untuk_berjudi, 'Untuk Mengambil Risiko', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6898_pertaruhan, 'Pertaruhan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6898_pertaruhan, 'Berjudi', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6898_pertaruhan, 'Sebuah Perjudian', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6898_pertaruhan, 'Sebuah Taruhan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6901_sekolah_menjejalkan, 'Sekolah Menjejalkan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6901_sekolah_menjejalkan, 'Sekolah Kepelatihan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6901_sekolah_menjejalkan, 'Juku', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6902_sekolah_swasta, 'Sekolah swasta', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6903_siswa_sekolah_cram, 'Siswa Sekolah Cram', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6904_kalkulator, 'Kalkulator', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6905_meja_makan, 'Meja makan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6906_meja, 'Meja', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6906_meja, 'Meja', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6907_tenis_meja, 'Tenis meja', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6907_tenis_meja, 'Ping Pong', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6908_ke_polandia, 'Ke Polandia', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6908_ke_polandia, 'Untuk Bersinar', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6908_ke_polandia, 'Untuk Menyikat Gigi', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6909_polandia, 'Polandia', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6909_polandia, 'Bersinar', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6910_bakteri, 'Bakteri', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6911_kuman, 'Kuman', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6912_disterilkan, 'Disterilkan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6912_disterilkan, 'Aseptik', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6913_sterilisasi, 'Sterilisasi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6914_naungan, 'Naungan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6914_naungan, 'Dalam Bayangan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6914_naungan, 'Di belakang layar', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6915_kesuraman, 'Kesuraman', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6915_kesuraman, 'Kemurungan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6916_roh_jahat, 'Roh Jahat', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6917_inspirasi, 'Inspirasi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6917_inspirasi, 'Indra Keenam', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6917_inspirasi, 'khususnya', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6918_hantu, 'Hantu', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6918_hantu, 'Orang mati', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6919_pemakaman, 'Pemakaman', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6920_pelembab_udara, 'pelembab udara', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6921_lahan_basah, 'Lahan basah', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6922_kelembaban, 'kelembaban', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6922_kelembaban, 'Kelembaban', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6923_menjadi_lembab, 'Menjadi lembab', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6923_menjadi_lembab, 'Menjadi Lembab', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6923_menjadi_lembab, 'Menjadi Basah', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6924_pengantin_perempuan, 'Pengantin perempuan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6924_pengantin_perempuan, 'Istri', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6925_untuk_menikah, 'Untuk Menikah', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6925_untuk_menikah, 'Untuk Menikah Dengan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6926_selokan, 'Selokan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6926_selokan, 'Parit', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6927_palung_samudera, 'Palung Samudera', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6928_drainase, 'Drainase', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6928_drainase, 'Parit saluran air', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6928_drainase, 'Selokan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6929_air_terjun, 'Air terjun', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6930_jeram, 'jeram', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6931_menjadi_gila, 'Menjadi Gila', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6931_menjadi_gila, 'Menjadi Gila', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6932_kegilaan, 'Kegilaan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6932_kegilaan, 'Kegilaan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6933_untuk_terbang, 'Untuk Terbang', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6933_untuk_terbang, 'Untuk Melambung', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6951_rasanya_tidak_enak, 'Rasanya tidak enak', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6952_kertas_pembungkus, 'Kertas pembungkus', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6953_jam_pasang_surut, 'Jam Pasang Surut', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6953_jam_pasang_surut, 'Waktu yang Tepat', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6953_jam_pasang_surut, 'Waktu Tinggi', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6954_arus_jepang, 'Arus Jepang', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6954_arus_jepang, 'Arus Kuroshio', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6955_untuk_menggosok, 'Untuk Menggosok', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6955_untuk_menggosok, 'Untuk Menggosok', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6956_kemasan, 'Kemasan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6956_kemasan, 'Sebuah Paket', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6956_kemasan, 'Paket', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6956_kemasan, 'Sebuah Paket', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7145_gumpalan, 'Gumpalan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7145_gumpalan, 'Massa', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7145_gumpalan, 'Bundel', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7145_gumpalan, 'Perwujudan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7726_sedang, 'Sedang', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7726_sedang, 'Berguna', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7726_sedang, 'Nyaman', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7726_sedang, 'Wajar', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9008_untuk_menyiksa, 'Untuk Menyiksa', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9034_untuk_melayani, 'Untuk Melayani', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9058_koin, 'Koin', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9081_menu, 'Menu', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9081_menu, 'Paket Makan', false, true);

  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2744_tahun_cahaya, 'こうねん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5982_penghapusan, 'はいぜつ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6708_pegunungan, 'さんがく', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6763_untuk_membiarkan_seseorang_menginap, 'とめる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6765_agar_terburu_buru, 'あせる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6844_untuk_merobek, 'ひきさく', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6845_fisi_nuklir, 'かくぶんれつ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6846_untuk_menyerang, 'しゅうげきする', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6847_interlokal, 'えんきょり', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6848_jarak_pendek, 'きんきょり', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6849_jarak_pendek, 'たんきょり', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6850_masuk_dalam_daftar_keluarga, 'にゅうせき', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6851_serentak, 'いっせいに', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6852_akan_dihancurkan, 'ほろびる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6853_kaku, 'かたい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6854_kekakuan, 'こうちょく', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6855_untuk_mendapatkan_penghasilan, 'かせぐ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6856_menjadi_jelas, 'すむ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6857_tombak, 'ほこ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6858_kulit_manusia, 'はだ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6859_merinding, 'とりはだ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6860_sentuhan, 'はだざわり', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6861_warna_kulit, 'はだいろ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6862_kapal, 'こぶね', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6863_kapal, 'ふね', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6864_bel, 'かね', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6865_bel_alarm, 'けいしょう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6866_senjata_berbahaya, 'きょうき', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6867_biang_keladi, 'げんきょう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6868_mengerikan, 'きょうあく', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6869_memburu, 'かり', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6870_pemburu, 'かりゅうど', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6871_perkiraan_waktu, 'ころ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6871_perkiraan_waktu, 'ごろ', NULL, false, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6872_baru_baru_ini, 'さきごろ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6873_akhir_akhir_ini, 'ちかごろ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6874_perkiraan_usia, 'としごろ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6875_tentang_kapan, 'いつごろ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6876_baru_baru_ini, 'このごろ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6877_masa_muda_seseorang, 'わかいころ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6878_jiwa, 'たましい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6879_roh, 'こん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6880_kaki, 'あし', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6881_naskah, 'きゃくほん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6882_sangat, 'かなり', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6885_menyumpahi, 'のろい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6886_untuk_mengutuk, 'のろう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6887_kalender, 'こよみ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6888_kalender_lunisolar, 'きゅうれき', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6889_era_umum, 'せいれき', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6890_menjadi_berawan, 'くもる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6891_cuaca_mendung, 'くもり', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6892_untuk_menatap, 'ながめる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6893_prospek, 'ちょうぼう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6894_telanjang_sepenuhnya, 'ぜんら', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6895_setengah_telanjang, 'はんら', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6896_telanjang, 'はだか', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6897_untuk_berjudi, 'かける', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6898_pertaruhan, 'かけ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6901_sekolah_menjejalkan, 'じゅく', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6902_sekolah_swasta, 'ぎじゅく', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6903_siswa_sekolah_cram, 'じゅくせい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6904_kalkulator, 'でんたく', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6905_meja_makan, 'しょくたく', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6906_meja, 'たく', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6907_tenis_meja, 'たっきゅう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6908_ke_polandia, 'みがく', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6909_polandia, 'みがき', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6910_bakteri, 'さいきん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6911_kuman, 'ばいきん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6912_disterilkan, 'むきん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6913_sterilisasi, 'さっきん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6914_naungan, 'かげ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6915_kesuraman, 'いんき', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6916_roh_jahat, 'あくりょう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6917_inspirasi, 'れいかん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6918_hantu, 'ぼうれい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6919_pemakaman, 'れいえん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6920_pelembab_udara, 'かしつき', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6921_lahan_basah, 'しっち', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6922_kelembaban, 'しっけ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6923_menjadi_lembab, 'しめる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6924_pengantin_perempuan, 'よめ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6925_untuk_menikah, 'とつぐ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6926_selokan, 'みぞ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6927_palung_samudera, 'かいこう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6928_drainase, 'はいすいこう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6929_air_terjun, 'たき', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6930_jeram, 'たきがわ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6931_menjadi_gila, 'くるう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6932_kegilaan, 'きょうき', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6933_untuk_terbang, 'かける', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6951_rasanya_tidak_enak, 'あくしゅみ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6952_kertas_pembungkus, 'つつみがみ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6953_jam_pasang_surut, 'しおどき', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6954_arus_jepang, 'くろしお', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6955_untuk_menggosok, 'する', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6955_untuk_menggosok, 'こする', NULL, false, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6956_kemasan, 'こづつみ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_7145_gumpalan, 'かたまり', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_7726_sedang, 'てごろ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_9008_untuk_menyiksa, 'さいなむ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_9034_untuk_melayani, 'つかえる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_9058_koin, 'こうか', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_9081_menu, 'こんだて', NULL, true, true);

  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2744_tahun_cahaya, '月からニ光年先に小さい石が見える。', 'Anda dapat melihat batu kecil yang berjarak dua tahun cahaya dari bulan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2744_tahun_cahaya, 'このロケットで一光年先に行くとすると一万年はかかります。', 'Dengan roket ini, dibutuhkan setidaknya 10.000 tahun untuk menempuh jarak satu tahun cahaya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2744_tahun_cahaya, '一光年はセグウェイで何日かかるんだろう。', 'Saya bertanya-tanya berapa hari yang dibutuhkan untuk menempuh perjalanan satu tahun cahaya dengan Segway.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5982_penghapusan, '核廃絶運動家たちは、核兵器を廃絶することは実現可能だと信じている。', 'Gerakan anti-nuklir percaya bahwa penghapusan senjata nuklir adalah hal yang mungkin dilakukan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6708_pegunungan, 'この山岳地帯では、少なくともあと三ヶ月は冬の季節が続くだろうね。', 'Musim dingin akan berlanjut setidaknya selama tiga bulan lagi di distrik pegunungan ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6763_untuk_membiarkan_seseorang_menginap, 'うちに知らない人を泊めるのは嫌です。', 'Aku tidak ingin ada orang asing yang menginap di rumah kita.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6765_agar_terburu_buru, '焦るなよ。小便に行きたい以外は、急ぐ必要はないよ。一日一日を着実にな。', 'Tidak usah buru-buru. Selain ingin buang air kecil, tidak perlu terburu-buru. Suatu hari pada suatu waktu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6844_untuk_merobek, 'あのカップルの仲をうまく引き裂く事ができたら、お知らせ致します。', 'Saya akan memberi tahu Anda jika saya berhasil memisahkan pasangan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6845_fisi_nuklir, '核分裂の過程について、分かりやすいスライドショーを作ってもらえますか。', 'Bisakah Anda membuat tayangan slide tentang proses fisi nuklir yang mudah dipahami?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6846_untuk_menyerang, '飛行機で巨人を襲撃することができるようになるとは、知る由もなかった。', 'Mereka tidak menyangka bahwa mereka bisa menyerang para Titan melalui udara.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6847_interlokal, '日本では、遠距離通学や遠距離通勤はよくあることです。', 'Di Jepang, perjalanan jarak jauh ke sekolah atau tempat kerja adalah hal yang lumrah.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6848_jarak_pendek, 'タクシーの運ちゃんは大体みんな近距離乗車は嫌がるよね。', 'Pengemudi taksi umumnya tidak menyukai perjalanan jarak dekat, bukan?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6849_jarak_pendek, 'ほんの数年後、彼女はようやく自分がその短距離走で優勝した短距離走者だったことを認めました。', 'Hanya beberapa tahun kemudian dia akhirnya mengakui bahwa dialah pelari cepat yang memenangkan perlombaan jarak pendek.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6850_masuk_dalam_daftar_keluarga, '結婚式の前に入籍をする予定です。', 'Kami berencana untuk dimasukkan dalam daftar keluarga sebelum upacara pernikahan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6851_serentak, '派遣社員たちは、景気の悪化で一斉に解雇されることを心配しています。', 'Para pekerja sementara khawatir akan dipecat secara bersamaan dalam resesi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6852_akan_dihancurkan, '地球がじきに滅びるんだとしたら、どうしてベーコンを食べるのを我慢しなくちゃいけないの？', 'Jika bumi akan hancur, mengapa saya harus menolak makan bacon?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6853_kaku, '彼の筋肉は、岩のように硬い。', 'Otot-ototnya sekuat batu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6853_kaku, '新人モデルは、緊張で表情が少し硬くなっていた。', 'Ekspresi model baru itu sedikit kaku karena gugup.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6853_kaku, 'ダイヤモンドよりも硬い石があることは、ご存知ですか？', 'Tahukah Anda bahwa ada batu yang lebih keras dari berlian?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6854_kekakuan, '心理的硬直は問題を解決する妨げになると思われる。', 'Saya percaya bahwa kekakuan psikologis dapat menghambat penyelesaian masalah.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6854_kekakuan, '社会の硬直化は解決しなければならない問題です。', 'Kekakuan masyarakat merupakan permasalahan yang perlu kita perbaiki.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6854_kekakuan, '死後どのぐらいで死後硬直が起きるんでしょうか。', 'Saya bertanya-tanya berapa lama setelah kematian, rigor mortis terjadi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6855_untuk_mendapatkan_penghasilan, '現職の大統領が、前大統領よりもどれだけ多くのお金を稼いでいるか知っているかい？', 'Tahukah Anda berapa penghasilan presiden petahana lebih banyak dibandingkan mantan presiden?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6855_untuk_mendapatkan_penghasilan, '『紅の豚』は、空を飛ぶ賞金稼ぎの豚を主人公にしたジブリの作品で、「飛ばねえ豚はただの豚だ。」という台詞が有名です。', '"Porco Rosso" adalah film Studio Ghibli tentang seorang pilot pemburu hadiah yang telah berubah menjadi seekor babi, dan terkenal dengan kalimatnya, "Babi yang tidak terbang hanyalah seekor babi."');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6856_menjadi_jelas, '池の水、昨日は濁って緑色だったのに、今はすっかり澄んでいるじゃないか。一体何があったの？', 'Air di kolam kemarin berwarna hijau, tapi sekarang sudah jernih sepenuhnya. Apa yang telah terjadi?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6857_tombak, 'この美しい矛は、白金とプラチナで作られています。', 'Tombak cantik ini terbuat dari emas putih dan platinum.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6858_kulit_manusia, 'その温泉に入った後は、お肌がツルツルになるよ。', 'Kulit Anda akan benar-benar halus setelah mandi di sumber air panas.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6859_merinding, '「ゴキブリ」という名前を聞くだけで、鳥肌が立ちます。', 'Saya merinding hanya karena mendengar nama "kecoa".');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6860_sentuhan, 'このタオルはとても柔らかくて心地よい肌触りです。', 'Handuk ini sangat lembut dan nyaman saat disentuh.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6861_warna_kulit, 'この絵の女性の肌色、すごく綺麗だね。', 'Warna kulit wanita dalam lukisan ini sangat cantik.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6861_warna_kulit, 'このキャラクターの肌色は、明るい茶色にしようと思ってるんだ。', 'Saya berpikir untuk menggunakan warna kulit coklat muda untuk karakter ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6861_warna_kulit, '昔「肌色」って呼ばれてたクレヨンや色鉛筆の色の名前は、今は「ペールオレンジ」とか「うすだいだい」に変わってるんだよ。', 'Nama warna krayon dan pensil warna yang dulu disebut “warna kulit” kini diubah menjadi “oranye pucat” atau “oranye muda”.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6862_kapal, '太平洋上には小舟がひしめきあっていた。', 'Samudera Pasifik dipenuhi perahu-perahu kecil.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6863_kapal, 'いさり舟をハンマーで叩いて破壊した。', 'Saya menghancurkan perahu nelayan dengan palu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6864_bel, '正午になると鐘が12回鳴るんです。', 'Bel berbunyi dua belas kali pada siang hari.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6864_bel, '鐘の音を聞くと心が落ち着きます。', 'Mendengar bel menenangkan pikiranku.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6864_bel, '私が旅行者だと言うと、男は鐘の形をしたお守りの値段を明らかにつり上げたが、何だかそいつに悪い気がして、そのまま何も言わずに言われた通りの値段を払ったんだよ。', 'Saat aku memberitahunya bahwa aku adalah seorang turis, dia terang-terangan menaikkan harga jimat berbentuk lonceng itu, tapi aku merasa sedikit kasihan padanya, jadi aku menahan lidahku dan tetap membayar harga yang dia katakan padaku.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6865_bel_alarm, '研究者たちは、どれだけ速く氷山が溶け出しているかについて警鐘を鳴らしている。', 'Para peneliti memperingatkan betapa cepatnya gunung es mencair.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6866_senjata_berbahaya, '「アチョーーーーーー!」と叫び声を上げながら、コウイチはビエトの手から凶器を叩き落とした。', 'Sambil berteriak, "Achooo!" Koichi menjatuhkan senjata berbahaya itu dari tangan Viet.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6867_biang_keladi, '人類の半分を一掃した凶悪なウィルスの元凶は、ウォッカのつまった西瓜だった。', 'Sumber virus mengerikan yang memusnahkan separuh umat manusia adalah semangka berisi vodka.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6868_mengerikan, '誰もが、その凶悪犯が刑務所で大人しく刑期を務めるのは無理だろうと思っていました。', 'Semua orang percaya bahwa penjahat kejam itu tidak akan bisa bertahan dengan baik di penjara.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6869_memburu, '来週はずっと山で狩りをしている予定です。', 'Saya akan berburu di pegunungan sepanjang minggu depan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6870_pemburu, '狩人が週休二日制だってのは初耳だな。', 'Saya tidak tahu para pemburu menggunakan sistem lima hari kerja dalam seminggu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6871_perkiraan_waktu, 'じゃあ、7時頃また電話しますよ。', 'Baiklah, saya akan menelepon Anda lagi sekitar jam 7.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6871_perkiraan_waktu, 'あの頃、俺は人気者だったんだよ。', 'Saya populer saat itu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6871_perkiraan_waktu, '今日のお昼の三時頃、この公園でツキノワグマが目撃されました。', 'Sekitar pukul tiga sore tadi, seekor beruang bulan terlihat di taman ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6871_perkiraan_waktu, '私の履歴書には空白期間があります。というのも、その頃はワニカニばかりやっていたからです。その期間の生活はほぼワニカニ中心で、私はひたすらレベル60を目指していました。', 'Resume saya memiliki celah di dalamnya. Itu karena saya menghabiskan waktu itu hampir seluruhnya fokus pada WaniKani. Kehidupan sehari-hari saya pada dasarnya berkisar pada ulasan, dan saya bertekad untuk mencapai level 60.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6872_baru_baru_ini, 'つい先頃までとても仲良くしてたのに、彼が急によそよそしくなったんだけど、理由が全然分からないの。', 'Kami berteman baik sampai saat ini, tapi dia tiba-tiba menjadi sangat dingin terhadapku. Saya tidak mengerti alasannya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6873_akhir_akhir_ini, '近頃は製菓工場で夜勤の仕事をしているんだ。', 'Baru-baru ini saya bekerja pada shift kuburan di sebuah pabrik gula-gula.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6874_perkiraan_usia, 'あの子いつも一人だろう？彼、同じ年頃の友達がいないそうでどうも心配だ。', 'Anak itu selalu sendirian, kan? Dia sepertinya tidak punya teman seusianya jadi mau tak mau aku mengkhawatirkannya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6874_perkiraan_usia, '年頃の子が三人もいたら大変じゃない？', 'Bukankah mengurus tiga anak remaja itu sulit?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6874_perkiraan_usia, 'うちの娘はもう年ごろなのに、キャリアに集中したいと言っていて、全然その気がないらしいのよ。', 'Putri saya sudah cukup umur untuk menikah, namun tampaknya sama sekali tidak mempunyai keinginan untuk menikah, dan mengatakan bahwa dia lebih memilih fokus pada kariernya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6875_tentang_kapan, 'トーフグはいつ頃Eブックマーケットに参入するつもりですか？', 'Seberapa cepat Tofugu memasuki pasar e-book?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6876_baru_baru_ini, 'この頃、風味を出すために砕いたヘーゼルナッツを珈琲に加えてるんです。', 'Saat ini saya menambahkan hazelnut cincang ke dalam kopi saya untuk menambah rasa.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6877_masa_muda_seseorang, '若い頃は食べ物について気にしなかったけど、今はお医者さんに糖尿病予備軍だって言われたので、食べ物に気をつけるようになったし、いつもレシピに書かれてるよりも少ない砂糖を入れるようにもなりました。', 'Ketika saya masih muda, saya tidak peduli dengan apa yang saya makan, tapi sekarang saya peduli dan saya selalu menambahkan sedikit gula daripada resep yang diminta karena dokter saya mengatakan bahwa saya berisiko terkena diabetes.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6878_jiwa, '小さな天使とベーコンのビデオを観て、魂が震えました。', 'Video tentang malaikat kecil dan daging sangat menyentuh jiwa saya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6879_roh, '死者の霊魂に捧げる為のイラストを描いてほしいとアヤに頼みました。', 'Saya meminta Aya menggambar ilustrasi untuk dipersembahkan kepada jiwa orang mati.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6880_kaki, '夜になると脚がムズムズして、よく眠れないんです。', 'Kaki saya gelisah di malam hari dan saya tidak bisa tidur nyenyak.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6881_naskah, '他の脚本では出来なかった事を、彼の脚本はやってのけたんだよ。', 'Apa yang tidak dapat dilakukan oleh skrip lain, skripnya dapat melakukannya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6882_sangat, '日本で初恋の人にバッタリ出くわした時は、可也驚きました。', 'Aku cukup terkejut saat bertemu cinta pertamaku di Jepang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6885_menyumpahi, '魔女はお姫様に、コップを逆さまにしか持てなくする呪いをかけた。', 'Penyihir itu mengutuk sang putri sehingga dia hanya bisa memegang cangkir secara terbalik.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6886_untuk_mengutuk, '夫が心的外傷後ストレス障害と診断された後、私はそれが誰であれその戦争を始めた人を呪いました。', 'Setelah suami saya didiagnosis menderita Gangguan Stres Pasca Trauma, saya mengutuk siapa pun yang memulai perang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6887_kalender, 'うちの会社は暦通りの営業になります。', 'Hari kerja perusahaan kami mengikuti kalender reguler.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6888_kalender_lunisolar, '旧暦の正月といえばいつになりますかね。', 'Kapan Tahun Baru kalender lunar?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6889_era_umum, '昭和は西暦何年に終わったんですか？', 'Tahun berapa dalam kalender Barat era Showa berakhir?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6890_menjadi_berawan, '空が急に曇ってきた。', 'Langit tiba-tiba mendung.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6890_menjadi_berawan, 'やばい！フロントガラスが曇って外が見えない。', 'Oh tidak! Kaca depannya berkabut dan saya tidak bisa melihat ke luar.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6890_menjadi_berawan, 'ラーメンの湯気で眼鏡が曇っちゃうのが好きじゃないんだよね。', 'Aku tidak suka kalau uap ramen membuat gelasku berkabut.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6890_menjadi_berawan, '話しているうちに、彼女の表情が少しずつ曇っていった。', 'Saat kami berbicara, ekspresi pacarku perlahan menjadi gelap.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6890_menjadi_berawan, '彼への尊敬や憧れで目が曇っていたのだと思います。', 'Saya pikir penilaian saya dikaburkan oleh rasa hormat dan kekaguman yang saya rasakan terhadapnya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6891_cuaca_mendung, '実は、眩しい午後の日差しの下よりも、曇りの日の方が写真撮影には適しています。', 'Hari berawan sebenarnya lebih baik untuk fotografi daripada sinar matahari sore yang cerah.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6891_cuaca_mendung, '曇りとは、空の９割以上が雲でおおわれている状態のことです。', 'Cuaca mendung berarti lebih dari 90% langit tertutup awan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6891_cuaca_mendung, '窓の曇りが中々とれない。', 'Saya mengalami masalah saat menghilangkan kabut pada jendela.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6892_untuk_menatap, 'うちの甥っ子は新幹線を見るのが好きで、一日中眺めていることもできます。', 'Keponakan saya sangat suka menonton Shinkansen sehingga dia bisa melihatnya sepanjang hari.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6892_untuk_menatap, '僕は寝床でスマホを眺めながら、終わりのない情報の波に流されていた。', 'Melihat ponselku di tempat tidur, aku terbawa arus informasi yang tak ada habisnya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6893_prospek, 'そのホテルの部屋からは美しく青い海を眺望することができました。', 'Kami dapat melihat laut biru yang indah dari kamar hotel kami.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6894_telanjang_sepenuhnya, '一度しかない人生だろ！なぁ！一緒に全裸でスカイダイビングしに行こうぜ。すんげぇいい経験になると思うんだよね。', 'Anda hanya hidup sekali! Ayo. Kamu harus terjun payung telanjang bersamaku. Ini akan menjadi pengalaman yang luar biasa bagi kami.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6895_setengah_telanjang, 'きゃー！たった今夢が叶っちゃった！半裸のイケメンが淹れたての珈琲を飲みながら、私が目を覚ました瞬間に「おはよう」って言ってくれるっていう夢が！', 'Ahhh! Impian saya baru saja menjadi kenyataan! Itu adalah mimpi di mana seorang pria setengah telanjang mengucapkan "Selamat pagi" saat aku bangun, sambil minum kopi yang baru diseduh!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6896_telanjang, 'キモイ！今あそこの横断歩道で、裸に袖無しエプロンを着た男を見かけたんだけど。警察に通報した方がいいかな。', 'Bruto! Saya baru saja melihat seorang pria telanjang hanya mengenakan celemek tanpa lengan di penyeberangan sana. Haruskah kita memanggil polisi?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6897_untuk_berjudi, '彼女は競馬で、中々の大金を賭けるんだよ。', 'Dia mempertaruhkan banyak uang di pacuan kuda.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6898_pertaruhan, 'あいつとの賭けに勝ったよ。', 'Saya memenangkan taruhan melawan dia.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6901_sekolah_menjejalkan, '塾に何か問題でもあるの？', 'Ada apa dengan sekolah menjejalkanmu?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6902_sekolah_swasta, '義塾に通い始めた初日、思いっきり場違いだと感じました。', 'Aku merasa benar-benar asing pada hari pertamaku di sekolah swasta.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6903_siswa_sekolah_cram, '彼は塾生たちの中で一番記憶力が悪かった。', 'Dia memiliki ingatan terburuk dari semua siswa sekolah menjejalkan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6904_kalkulator, '頼むから電卓を叩くのをやめてくれ。気が狂いそうになるだろ！', 'Tolong berhenti bermain-main dengan kalkulator. Kamu membuatku gila!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6905_meja_makan, '私がお皿を洗うから、あなたは食卓を綺麗にしてくれる？いいかしら？', 'Saya akan mencuci piring dan Anda bisa membersihkan meja untuk saya. Apakah itu oke?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6906_meja, '麻雀するなら、うちに雀卓があるけど。', 'Ada meja Mahjong di rumah saya jika Anda ingin bermain.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6907_tenis_meja, 'あの卓球の音のせいで気が変になりそうだ！', 'Suara pingpong itu membuatku gila!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6908_ke_polandia, '何で切れた電球なんか磨いてるの？', 'Mengapa Anda memoles bola lampu yang sudah padam?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6909_polandia, 'Excelのスキルに磨きをかけて、仕事が見つかればいいな、と思っています。', 'Saya berharap mendapatkan pekerjaan dengan memoles keterampilan Excel saya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6910_bakteri, '最近真剣に細菌について勉強をし始めました。', 'Baru-baru ini, saya mulai serius mempelajari bakteri.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6911_kuman, 'ホームレスだからって、俺がまるでばい菌のように人にジロジロ見られるのは、とても腹立たしい。', 'Meskipun aku seorang tunawisma, sungguh menjengkelkan ketika orang-orang menatapku seolah-olah aku adalah sejenis kuman.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6912_disterilkan, 'トーフグのステッカーが無菌かどうかの問い合わせのメールが来たんだけど。', 'Saya baru saja mendapat email yang menanyakan apakah stiker Tofugu sudah disterilkan atau tidak.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6913_sterilisasi, 'トイレを殺菌する一番いい方法は何ですか？', 'Apa cara terbaik untuk mensterilkan kamar mandi?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6914_naungan, '陰でこそこそ私の陰口言うの、止めてくれない？言いたいことがあるなら、はっきり言ってよ！', 'Tidak bisakah kamu berhenti mengolok-olokku di belakangku? Jika Anda ingin mengatakan sesuatu, katakan di depan saya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6914_naungan, '私がワニカニでこのレベルまで来れたのは、陰で支えてくれた母のおかげだ。', 'Aku berhasil sampai sejauh ini di WaniKani berkat dukungan ibuku di belakang layar.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6914_naungan, '週末、自然公園でピクニックをした。ちょうどいい大きな岩の陰があったので、そこにレジャーシートを敷いてお弁当を食べることにした。', 'Selama akhir pekan, kami piknik di taman alam. Ada tempat yang sempurna di bawah naungan batu besar, jadi kami memutuskan untuk membentangkan tikar piknik di sana dan memakan bento kami.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6914_naungan, 'あの家の周りの陰は、昼でも少し暗かった。だからだろうか。近所の人たちは、その家の話をするときだけ声をひそめた。', 'Bayangan di sekitar rumah itu tampak gelap bahkan pada siang hari. Mungkin itu sebabnya… Orang-orang di lingkungan sekitar selalu merendahkan suara ketika membicarakannya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6915_kesuraman, 'アイツのYoutubeビデオを見るまでは、てっきり陰気な男だと思っていたよ。', 'Saya yakin dia adalah pria melankolis sampai saya melihat video Youtube-nya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6916_roh_jahat, '悪霊がいると聞いたので、トンネルの中ではスピードを上げて運転しました。', 'Dia melaju kencang melewati terowongan karena dia mendengar ada roh jahat di sana.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6917_inspirasi, '彼女は非常に霊感の強い霊能力者で、あの世の人と話をすることができます。', 'Dia adalah orang yang spiritual dengan indra keenam yang kuat dan dapat berbicara dengan orang lain.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6918_hantu, '亡霊はめげずに、人々を怖がらせ続けました。', 'Hantu itu terus menakut-nakuti orang tanpa merasa depresi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6919_pemakaman, '家族でうちの犬をペット専用霊園に連れて行きました。', 'Keluarga saya membawa anak anjing kami ke pemakaman hewan peliharaan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6920_pelembab_udara, '最近加湿器の調子が悪いんだよね。', 'Ada yang salah dengan pelembab udara saya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6921_lahan_basah, '確か、北海道には湿地が多いんだよね？', 'Kalau tidak salah, di Hokkaido banyak sekali lahan basahnya kan?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6922_kelembaban, '日本の梅雨は湿気が多いので嫌いです。', 'Saya tidak suka musim hujan di Jepang karena sangat lembab.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6923_menjadi_lembab, '昨日の夜、寝汗をたくさんかいちゃったから、ベッドが何だか湿ってるのよね。	', 'Saya banyak berkeringat ketika saya tidur tadi malam dan tempat tidur saya sedikit lembab.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6924_pengantin_perempuan, '靴下を裏返しに履いちゃうと、嫁が怒ってうるさいんだわ。', 'Istri saya marah kepada saya setiap kali saya memakai kaus kaki luar dalam.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6924_pengantin_perempuan, 'うちの嫁さんは全然電灯を消さないんだよね。きっとスイッチがあることを知らないんだと思うよ。', 'Istri saya tidak pernah mematikan lampu. Saya rasa dia bahkan tidak tahu ada tombolnya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6925_untuk_menikah, '嫁ぎたての頃は、息子の嫁はかまととぶっていました。', 'Saat mereka menikah, istri anak saya berpura-pura dia pemalu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6926_selokan, 'コインパーキングの横の溝に、万札が落ちてるのを見つけたんだよ。', 'Saya menemukan uang kertas 10.000 yen di selokan di samping tempat parkir yang dioperasikan dengan koin.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6927_palung_samudera, '鰻がフィリピン海溝の近くで産卵することは、フィリピン人に知られているのでしょうか。', 'Entahlah apakah orang Filipina tahu kalau tempat pemijahan belut itu dekat dengan Palung Filipina.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6928_drainase, '排水溝に落ちて怪我をした。', 'Saya jatuh ke selokan drainase dan terluka.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6928_drainase, '排水溝と排水口がごっちゃになってる人って日本人でも結構多いよね。', 'Bahkan sangat umum bagi orang Jepang untuk mencampuradukkan 排水溝 dan 排水口, bukan?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6928_drainase, '詰まると大変だから、側溝や排水溝は定期的に掃除しておいた方がいいですよ。', 'Penting untuk membersihkan selokan dan selokan drainase secara teratur karena akan sangat merepotkan jika tersumbat.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6929_air_terjun, '一位のチームには、賞品として滝修行が授与されます。', 'Tim teratas akan mendapatkan hadiah berupa meditasi air terjun estetis.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6930_jeram, '祖母に、滝川を泳ぐのは危険だと言われました。', 'Nenek saya mengatakan kepada saya bahwa berenang di arus deras sangat berbahaya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6931_menjadi_gila, '「サーモン、今週末、ラスベガスで結婚しよう。」「フグ、気でも狂ったの？」', '"Salmon, ayo kita menikah di Las Vegas akhir pekan ini." “Fugu, apakah kamu sudah gila?”');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6932_kegilaan, 'その申し出を断るなんて狂気の沙汰だよ。', 'Anda pasti sudah gila untuk menolak tawaran itu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6933_untuk_terbang, 'それは、まるで天空を高く翔る不死鳥のようでした。', 'Itu tampak seperti burung phoenix yang terbang tinggi di udara.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6951_rasanya_tidak_enak, '母は、父が悪趣味な人形を集めることを禁止しました。', 'Ibuku melarang ayahku mengoleksi boneka yang tidak berasa.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6952_kertas_pembungkus, 'この包み紙には点字が施してあるわ。', 'Ada huruf braille di kertas kado ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6953_jam_pasang_surut, 'そろそろ潮時だ。引き上げるぞ。', 'Sudah saatnya kita keluar dari sini. Ayo bergerak.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6953_jam_pasang_surut, '今こそタバコをやめる潮時だ。今すぐニコチンパッチを買いに行くんだ。', 'Sudah saatnya Anda berhenti merokok. Dapatkan patch nikotin sekarang juga.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6953_jam_pasang_surut, 'こんなことを続けていては、いつか自分の身を危険にさらすかもしれないと、男はこれを潮時に合法ドラッグの売り子からは身を引く事にした。', 'Pria tersebut memutuskan untuk mengambil ini sebagai kesempatan untuk mengundurkan diri dari pekerjaannya sebagai penjual narkoba legal, karena dia tahu bahwa dia mungkin akan menempatkan dirinya dalam bahaya suatu hari nanti jika terus melakukan hal ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6954_arus_jepang, '黒潮の流域とは正確にはどこになりますか？', 'Di manakah sebenarnya cekungan Arus Kuroshio?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6955_untuk_menggosok, '花粉症で目を擦ってたら、片方のコンタクトレンズが破けました。', 'Saya menggosok mata karena alergi dan salah satu lensa kontak saya robek.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6956_kemasan, 'この小包は、ほんの友情の印です。', 'Paket ini hanyalah simbol persahabatan kami.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7145_gumpalan, 'コレクションしていた消しゴム100個が熱で溶けて一つの大きな塊になってしまった。', 'Seratus penghapus yang saya kumpulkan meleleh karena panas dan berubah menjadi satu gumpalan besar.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7145_gumpalan, '店に入ると、カウンターにドンと置かれた肉の塊がまず一番に目についた。', 'Ketika saya masuk ke toko, hal pertama yang saya perhatikan adalah segumpal daging yang diletakkan di konter.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7145_gumpalan, 'その詐欺師は劣等感の塊だった。', 'Penipu itu adalah perwujudan dari rasa rendah diri.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7726_sedang, '手頃な値段ですね。', 'Ini harga yang wajar bukan?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9008_untuk_menyiksa, '無力感に苛まれてるんよ。', 'Saya tersiksa oleh perasaan tidak berdaya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9008_untuk_menyiksa, 'うだるような暑さが私達を苛む。', 'Panas terik menyiksa kami.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9008_untuk_menyiksa, '被害者はまた何か悪いことが起こるのではないかという不安に苛まれていました。', 'Para korban tersiksa oleh kekhawatiran akan terjadi hal buruk lainnya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9034_untuk_melayani, 'この家に仕える使用人は、とても礼儀が正しい。', 'Para pelayan yang melayani di rumah ini sangat sopan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9034_untuk_melayani, 'その女性は、明治天皇に仕えていた女官のようです。', 'Wanita itu sepertinya adalah pejabat wanita yang melayani Kaisar Meiji.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9034_untuk_melayani, 'はじめまして。今日から神に仕えることになった天使です。', 'Senang berkenalan dengan Anda. Saya seorang malaikat yang mulai melayani Tuhan hari ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9058_koin, '十円または百円硬貨を入れてください。', 'Silakan masukkan koin sepuluh yen atau seratus yen.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9058_koin, '祖母は財布の中に硬貨を貯めていました。', 'Nenek saya menyimpan koin di dompetnya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9058_koin, 'もう製造されていない硬貨にはどんなものがありますか。', 'Koin apa saja yang sudah tidak diproduksi lagi?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9081_menu, 'そろそろ今晩の献立を考えないと。', 'Aku harus mulai memikirkan menu untuk malam ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9081_menu, '全員に喜んでもらえる献立を考えるのは難しい。', 'Sulit untuk menghasilkan menu yang menyenangkan semua orang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9081_menu, '私は、いつも冷蔵庫の中身を見て一週間の献立を立てます。', 'Saya selalu melakukan rencana makan mingguan saya dengan melihat isi kulkas saya.');

  -- 4. PREREQUISITES
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1855_puncak, id FROM items WHERE type = 'radical' AND (slug = '115' OR id = '115') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1855_puncak, id FROM items WHERE type = 'radical' AND (slug = '1' OR id = '1') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1855_puncak, id FROM items WHERE type = 'radical' AND (slug = '20' OR id = '20') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1906_jelasnya, id FROM items WHERE type = 'radical' AND (slug = '103' OR id = '103') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1906_jelasnya, id FROM items WHERE type = 'radical' AND (slug = '168' OR id = '168') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1906_jelasnya, id FROM items WHERE type = 'radical' AND (slug = '181' OR id = '181') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1907_tombak, id FROM items WHERE type = 'radical' AND (slug = '148' OR id = '148') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1908_kulit, id FROM items WHERE type = 'radical' AND (slug = '43' OR id = '43') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1908_kulit, id FROM items WHERE type = 'radical' AND (slug = '177' OR id = '177') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1909_kapal, id FROM items WHERE type = 'radical' AND (slug = '149' OR id = '149') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1910_bel, id FROM items WHERE type = 'radical' AND (slug = '118' OR id = '118') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1910_bel, id FROM items WHERE type = 'radical' AND (slug = '55' OR id = '55') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1910_bel, id FROM items WHERE type = 'radical' AND (slug = '125' OR id = '125') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1911_penjahat, id FROM items WHERE type = 'radical' AND (slug = '262' OR id = '262') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1912_gumpalan, id FROM items WHERE type = 'radical' AND (slug = '17' OR id = '17') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1912_gumpalan, id FROM items WHERE type = 'radical' AND (slug = '292' OR id = '292') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1913_berburu, id FROM items WHERE type = 'radical' AND (slug = '144' OR id = '144') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_1913_berburu, r_396_melindungi);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1914_perkiraan, id FROM items WHERE type = 'radical' AND (slug = '57' OR id = '57') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1914_perkiraan, id FROM items WHERE type = 'radical' AND (slug = '184' OR id = '184') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1915_jiwa, id FROM items WHERE type = 'radical' AND (slug = '159' OR id = '159') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1915_jiwa, id FROM items WHERE type = 'radical' AND (slug = '292' OR id = '292') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1916_kaki, id FROM items WHERE type = 'radical' AND (slug = '43' OR id = '43') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1916_kaki, id FROM items WHERE type = 'radical' AND (slug = '244' OR id = '244') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1916_kaki, id FROM items WHERE type = 'radical' AND (slug = '145' OR id = '145') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1917_sangat, id FROM items WHERE type = 'radical' AND (slug = '77' OR id = '77') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1919_menyumpahi, id FROM items WHERE type = 'radical' AND (slug = '16' OR id = '16') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1919_menyumpahi, id FROM items WHERE type = 'radical' AND (slug = '191' OR id = '191') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1920_merindukan, id FROM items WHERE type = 'radical' AND (slug = '19' OR id = '19') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1920_merindukan, id FROM items WHERE type = 'radical' AND (slug = '430' OR id = '430') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1921_kalender, id FROM items WHERE type = 'radical' AND (slug = '116' OR id = '116') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1921_kalender, id FROM items WHERE type = 'radical' AND (slug = '23' OR id = '23') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1921_kalender, id FROM items WHERE type = 'radical' AND (slug = '22' OR id = '22') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1922_berawan, id FROM items WHERE type = 'radical' AND (slug = '22' OR id = '22') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1922_berawan, id FROM items WHERE type = 'radical' AND (slug = '119' OR id = '119') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1922_berawan, id FROM items WHERE type = 'radical' AND (slug = '159' OR id = '159') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1923_menatap, id FROM items WHERE type = 'radical' AND (slug = '53' OR id = '53') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1923_menatap, id FROM items WHERE type = 'radical' AND (slug = '363' OR id = '363') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1924_telanjang, id FROM items WHERE type = 'radical' AND (slug = '9392' OR id = '9392') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1924_telanjang, id FROM items WHERE type = 'radical' AND (slug = '235' OR id = '235') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1925_berjudi, id FROM items WHERE type = 'radical' AND (slug = '94' OR id = '94') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1925_berjudi, id FROM items WHERE type = 'radical' AND (slug = '203' OR id = '203') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1927_sekolah_menjejalkan, id FROM items WHERE type = 'radical' AND (slug = '345' OR id = '345') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1927_sekolah_menjejalkan, id FROM items WHERE type = 'radical' AND (slug = '223' OR id = '223') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1927_sekolah_menjejalkan, id FROM items WHERE type = 'radical' AND (slug = '17' OR id = '17') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1928_meja, id FROM items WHERE type = 'radical' AND (slug = '10' OR id = '10') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1928_meja, id FROM items WHERE type = 'radical' AND (slug = '201' OR id = '201') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1929_polandia, id FROM items WHERE type = 'radical' AND (slug = '62' OR id = '62') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1929_polandia, id FROM items WHERE type = 'radical' AND (slug = '23' OR id = '23') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1929_polandia, id FROM items WHERE type = 'radical' AND (slug = '54' OR id = '54') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1930_bakteri, id FROM items WHERE type = 'radical' AND (slug = '90' OR id = '90') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1930_bakteri, id FROM items WHERE type = 'radical' AND (slug = '16' OR id = '16') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1930_bakteri, id FROM items WHERE type = 'radical' AND (slug = '135' OR id = '135') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1931_naungan, id FROM items WHERE type = 'radical' AND (slug = '176' OR id = '176') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1931_naungan, id FROM items WHERE type = 'radical' AND (slug = '238' OR id = '238') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1931_naungan, id FROM items WHERE type = 'radical' AND (slug = '159' OR id = '159') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1932_hantu, id FROM items WHERE type = 'radical' AND (slug = '119' OR id = '119') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1932_hantu, id FROM items WHERE type = 'radical' AND (slug = '7' OR id = '7') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1932_hantu, id FROM items WHERE type = 'radical' AND (slug = '8768' OR id = '8768') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1933_lembap, id FROM items WHERE type = 'radical' AND (slug = '103' OR id = '103') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1933_lembap, id FROM items WHERE type = 'radical' AND (slug = '22' OR id = '22') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1933_lembap, id FROM items WHERE type = 'radical' AND (slug = '8768' OR id = '8768') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1934_kaku, id FROM items WHERE type = 'radical' AND (slug = '54' OR id = '54') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_1934_kaku, r_397_memperbarui);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1935_pendapatan, id FROM items WHERE type = 'radical' AND (slug = '135' OR id = '135') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1935_pendapatan, id FROM items WHERE type = 'radical' AND (slug = '398' OR id = '398') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1936_pengantin_perempuan, id FROM items WHERE type = 'radical' AND (slug = '19' OR id = '19') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1936_pengantin_perempuan, id FROM items WHERE type = 'radical' AND (slug = '398' OR id = '398') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1937_selokan, id FROM items WHERE type = 'radical' AND (slug = '103' OR id = '103') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1937_selokan, id FROM items WHERE type = 'radical' AND (slug = '303' OR id = '303') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1938_air_terjun, id FROM items WHERE type = 'radical' AND (slug = '103' OR id = '103') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1938_air_terjun, id FROM items WHERE type = 'radical' AND (slug = '394' OR id = '394') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1939_gila, id FROM items WHERE type = 'radical' AND (slug = '144' OR id = '144') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1939_gila, id FROM items WHERE type = 'radical' AND (slug = '48' OR id = '48') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1940_terbang, id FROM items WHERE type = 'radical' AND (slug = '136' OR id = '136') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1940_terbang, id FROM items WHERE type = 'radical' AND (slug = '213' OR id = '213') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_2744_tahun_cahaya, id FROM items WHERE type = 'kanji' AND (slug = '567' OR id = '567') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_2744_tahun_cahaya, id FROM items WHERE type = 'kanji' AND (slug = '546' OR id = '546') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5982_penghapusan, id FROM items WHERE type = 'kanji' AND (slug = '1622' OR id = '1622') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5982_penghapusan, id FROM items WHERE type = 'kanji' AND (slug = '1371' OR id = '1371') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6708_pegunungan, id FROM items WHERE type = 'kanji' AND (slug = '455' OR id = '455') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6708_pegunungan, k_1855_puncak);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6763_untuk_membiarkan_seseorang_menginap, id FROM items WHERE type = 'kanji' AND (slug = '1824' OR id = '1824') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6765_agar_terburu_buru, id FROM items WHERE type = 'kanji' AND (slug = '1827' OR id = '1827') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6844_untuk_merobek, id FROM items WHERE type = 'kanji' AND (slug = '507' OR id = '507') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6844_untuk_merobek, id FROM items WHERE type = 'kanji' AND (slug = '1839' OR id = '1839') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6845_fisi_nuklir, id FROM items WHERE type = 'kanji' AND (slug = '1626' OR id = '1626') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6845_fisi_nuklir, id FROM items WHERE type = 'kanji' AND (slug = '501' OR id = '501') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6845_fisi_nuklir, id FROM items WHERE type = 'kanji' AND (slug = '1839' OR id = '1839') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6846_untuk_menyerang, id FROM items WHERE type = 'kanji' AND (slug = '1840' OR id = '1840') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6846_untuk_menyerang, id FROM items WHERE type = 'kanji' AND (slug = '1377' OR id = '1377') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6847_interlokal, id FROM items WHERE type = 'kanji' AND (slug = '963' OR id = '963') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6847_interlokal, id FROM items WHERE type = 'kanji' AND (slug = '1843' OR id = '1843') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6847_interlokal, id FROM items WHERE type = 'kanji' AND (slug = '1443' OR id = '1443') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6848_jarak_pendek, id FROM items WHERE type = 'kanji' AND (slug = '596' OR id = '596') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6848_jarak_pendek, id FROM items WHERE type = 'kanji' AND (slug = '1843' OR id = '1843') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6848_jarak_pendek, id FROM items WHERE type = 'kanji' AND (slug = '1443' OR id = '1443') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6849_jarak_pendek, id FROM items WHERE type = 'kanji' AND (slug = '847' OR id = '847') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6849_jarak_pendek, id FROM items WHERE type = 'kanji' AND (slug = '1843' OR id = '1843') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6849_jarak_pendek, id FROM items WHERE type = 'kanji' AND (slug = '1443' OR id = '1443') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6850_masuk_dalam_daftar_keluarga, id FROM items WHERE type = 'kanji' AND (slug = '445' OR id = '445') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6850_masuk_dalam_daftar_keluarga, id FROM items WHERE type = 'kanji' AND (slug = '1844' OR id = '1844') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6851_serentak, id FROM items WHERE type = 'kanji' AND (slug = '440' OR id = '440') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6851_serentak, id FROM items WHERE type = 'kanji' AND (slug = '1862' OR id = '1862') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6852_akan_dihancurkan, id FROM items WHERE type = 'kanji' AND (slug = '1868' OR id = '1868') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6853_kaku, k_1934_kaku);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6854_kekakuan, k_1934_kaku);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6854_kekakuan, id FROM items WHERE type = 'kanji' AND (slug = '630' OR id = '630') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6855_untuk_mendapatkan_penghasilan, k_1935_pendapatan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6856_menjadi_jelas, k_1906_jelasnya);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6857_tombak, k_1907_tombak);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6858_kulit_manusia, k_1908_kulit);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6859_merinding, id FROM items WHERE type = 'kanji' AND (slug = '675' OR id = '675') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6859_merinding, k_1908_kulit);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6860_sentuhan, k_1908_kulit);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6860_sentuhan, id FROM items WHERE type = 'kanji' AND (slug = '1229' OR id = '1229') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6861_warna_kulit, k_1908_kulit);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6861_warna_kulit, id FROM items WHERE type = 'kanji' AND (slug = '579' OR id = '579') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6862_kapal, id FROM items WHERE type = 'kanji' AND (slug = '463' OR id = '463') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6862_kapal, k_1909_kapal);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6863_kapal, k_1909_kapal);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6864_bel, k_1910_bel);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6865_bel_alarm, id FROM items WHERE type = 'kanji' AND (slug = '1023' OR id = '1023') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6865_bel_alarm, k_1910_bel);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6866_senjata_berbahaya, k_1911_penjahat);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6866_senjata_berbahaya, id FROM items WHERE type = 'kanji' AND (slug = '876' OR id = '876') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6867_biang_keladi, id FROM items WHERE type = 'kanji' AND (slug = '498' OR id = '498') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6867_biang_keladi, k_1911_penjahat);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6868_mengerikan, k_1911_penjahat);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6868_mengerikan, id FROM items WHERE type = 'kanji' AND (slug = '829' OR id = '829') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6869_memburu, k_1913_berburu);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6870_pemburu, k_1913_berburu);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6870_pemburu, id FROM items WHERE type = 'kanji' AND (slug = '444' OR id = '444') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6871_perkiraan_waktu, k_1914_perkiraan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6872_baru_baru_ini, id FROM items WHERE type = 'kanji' AND (slug = '543' OR id = '543') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6872_baru_baru_ini, k_1914_perkiraan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6873_akhir_akhir_ini, id FROM items WHERE type = 'kanji' AND (slug = '596' OR id = '596') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6873_akhir_akhir_ini, k_1914_perkiraan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6874_perkiraan_usia, id FROM items WHERE type = 'kanji' AND (slug = '546' OR id = '546') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6874_perkiraan_usia, k_1914_perkiraan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6875_tentang_kapan, k_1914_perkiraan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6876_baru_baru_ini, k_1914_perkiraan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6877_masa_muda_seseorang, id FROM items WHERE type = 'kanji' AND (slug = '1065' OR id = '1065') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6877_masa_muda_seseorang, k_1914_perkiraan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6878_jiwa, k_1915_jiwa);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6879_roh, k_1915_jiwa);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6880_kaki, k_1916_kaki);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6881_naskah, k_1916_kaki);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6881_naskah, id FROM items WHERE type = 'kanji' AND (slug = '487' OR id = '487') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6882_sangat, id FROM items WHERE type = 'kanji' AND (slug = '1049' OR id = '1049') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6882_sangat, k_1917_sangat);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6885_menyumpahi, k_1919_menyumpahi);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6886_untuk_mengutuk, k_1919_menyumpahi);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6887_kalender, k_1921_kalender);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6888_kalender_lunisolar, id FROM items WHERE type = 'kanji' AND (slug = '1611' OR id = '1611') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6888_kalender_lunisolar, k_1921_kalender);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6889_era_umum, id FROM items WHERE type = 'kanji' AND (slug = '581' OR id = '581') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6889_era_umum, k_1921_kalender);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6890_menjadi_berawan, k_1922_berawan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6891_cuaca_mendung, k_1922_berawan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6892_untuk_menatap, k_1923_menatap);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6893_prospek, k_1923_menatap);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6893_prospek, id FROM items WHERE type = 'kanji' AND (slug = '908' OR id = '908') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6894_telanjang_sepenuhnya, id FROM items WHERE type = 'kanji' AND (slug = '610' OR id = '610') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6894_telanjang_sepenuhnya, k_1924_telanjang);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6895_setengah_telanjang, id FROM items WHERE type = 'kanji' AND (slug = '518' OR id = '518') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6895_setengah_telanjang, k_1924_telanjang);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6896_telanjang, k_1924_telanjang);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6897_untuk_berjudi, k_1925_berjudi);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6898_pertaruhan, k_1925_berjudi);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6901_sekolah_menjejalkan, k_1927_sekolah_menjejalkan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6902_sekolah_swasta, id FROM items WHERE type = 'kanji' AND (slug = '1154' OR id = '1154') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6902_sekolah_swasta, k_1927_sekolah_menjejalkan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6903_siswa_sekolah_cram, k_1927_sekolah_menjejalkan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6903_siswa_sekolah_cram, id FROM items WHERE type = 'kanji' AND (slug = '850' OR id = '850') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6904_kalkulator, id FROM items WHERE type = 'kanji' AND (slug = '706' OR id = '706') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6904_kalkulator, k_1928_meja);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6905_meja_makan, id FROM items WHERE type = 'kanji' AND (slug = '644' OR id = '644') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6905_meja_makan, k_1928_meja);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6906_meja, k_1928_meja);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6907_tenis_meja, k_1928_meja);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6907_tenis_meja, id FROM items WHERE type = 'kanji' AND (slug = '832' OR id = '832') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6908_ke_polandia, k_1929_polandia);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6909_polandia, k_1929_polandia);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6910_bakteri, id FROM items WHERE type = 'kanji' AND (slug = '996' OR id = '996') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6910_bakteri, k_1930_bakteri);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6911_kuman, k_1930_bakteri);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6912_disterilkan, id FROM items WHERE type = 'kanji' AND (slug = '1008' OR id = '1008') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6912_disterilkan, k_1930_bakteri);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6913_sterilisasi, id FROM items WHERE type = 'kanji' AND (slug = '880' OR id = '880') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6913_sterilisasi, k_1930_bakteri);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6914_naungan, k_1931_naungan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6915_kesuraman, k_1931_naungan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6915_kesuraman, id FROM items WHERE type = 'kanji' AND (slug = '548' OR id = '548') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6916_roh_jahat, id FROM items WHERE type = 'kanji' AND (slug = '829' OR id = '829') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6916_roh_jahat, k_1932_hantu);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6917_inspirasi, k_1932_hantu);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6917_inspirasi, id FROM items WHERE type = 'kanji' AND (slug = '862' OR id = '862') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6918_hantu, id FROM items WHERE type = 'kanji' AND (slug = '851' OR id = '851') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6918_hantu, k_1932_hantu);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6919_pemakaman, k_1932_hantu);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6919_pemakaman, id FROM items WHERE type = 'kanji' AND (slug = '960' OR id = '960') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6920_pelembab_udara, id FROM items WHERE type = 'kanji' AND (slug = '1057' OR id = '1057') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6920_pelembab_udara, k_1933_lembap);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6920_pelembab_udara, id FROM items WHERE type = 'kanji' AND (slug = '876' OR id = '876') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6921_lahan_basah, k_1933_lembap);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6921_lahan_basah, id FROM items WHERE type = 'kanji' AND (slug = '608' OR id = '608') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6922_kelembaban, k_1933_lembap);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6922_kelembaban, id FROM items WHERE type = 'kanji' AND (slug = '548' OR id = '548') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6923_menjadi_lembab, k_1933_lembap);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6924_pengantin_perempuan, k_1936_pengantin_perempuan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6925_untuk_menikah, k_1936_pengantin_perempuan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6926_selokan, k_1937_selokan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6927_palung_samudera, id FROM items WHERE type = 'kanji' AND (slug = '640' OR id = '640') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6927_palung_samudera, k_1937_selokan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6928_drainase, id FROM items WHERE type = 'kanji' AND (slug = '1755' OR id = '1755') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6928_drainase, id FROM items WHERE type = 'kanji' AND (slug = '479' OR id = '479') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6928_drainase, k_1937_selokan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6929_air_terjun, k_1938_air_terjun);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6930_jeram, k_1938_air_terjun);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6930_jeram, id FROM items WHERE type = 'kanji' AND (slug = '456' OR id = '456') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6931_menjadi_gila, k_1939_gila);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6932_kegilaan, k_1939_gila);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6932_kegilaan, id FROM items WHERE type = 'kanji' AND (slug = '548' OR id = '548') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6933_untuk_terbang, k_1940_terbang);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6951_rasanya_tidak_enak, id FROM items WHERE type = 'kanji' AND (slug = '829' OR id = '829') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6951_rasanya_tidak_enak, id FROM items WHERE type = 'kanji' AND (slug = '1842' OR id = '1842') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6951_rasanya_tidak_enak, id FROM items WHERE type = 'kanji' AND (slug = '812' OR id = '812') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6952_kertas_pembungkus, id FROM items WHERE type = 'kanji' AND (slug = '1795' OR id = '1795') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6952_kertas_pembungkus, id FROM items WHERE type = 'kanji' AND (slug = '663' OR id = '663') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6953_jam_pasang_surut, id FROM items WHERE type = 'kanji' AND (slug = '1849' OR id = '1849') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6953_jam_pasang_surut, id FROM items WHERE type = 'kanji' AND (slug = '662' OR id = '662') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6954_arus_jepang, id FROM items WHERE type = 'kanji' AND (slug = '677' OR id = '677') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6954_arus_jepang, id FROM items WHERE type = 'kanji' AND (slug = '1849' OR id = '1849') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6955_untuk_menggosok, id FROM items WHERE type = 'kanji' AND (slug = '1860' OR id = '1860') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6956_kemasan, id FROM items WHERE type = 'kanji' AND (slug = '463' OR id = '463') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6956_kemasan, id FROM items WHERE type = 'kanji' AND (slug = '1795' OR id = '1795') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7145_gumpalan, k_1912_gumpalan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_7726_sedang, id FROM items WHERE type = 'kanji' AND (slug = '474' OR id = '474') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7726_sedang, k_1914_perkiraan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_9008_untuk_menyiksa, id FROM items WHERE type = 'kanji' AND (slug = '8990' OR id = '8990') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_9034_untuk_melayani, id FROM items WHERE type = 'kanji' AND (slug = '564' OR id = '564') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_9058_koin, k_1934_kaku);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_9058_koin, id FROM items WHERE type = 'kanji' AND (slug = '1470' OR id = '1470') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_9081_menu, id FROM items WHERE type = 'kanji' AND (slug = '1630' OR id = '1630') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_9081_menu, id FROM items WHERE type = 'kanji' AND (slug = '494' OR id = '494') LIMIT 1;

END $$;
