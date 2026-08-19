-- ====================================================
-- KaniGani — Seed Data Level 46 (v2, relasional)
-- Auto-generated with Indonesian Slugs
-- ====================================================

DO $$
DECLARE
  -- ============ RADICAL IDs (Level 46) ============
  r_400_kebaikan UUID;
  -- ============ KANJI IDs (Level 46) ============
  k_1941_tinta_hitam UUID; k_1942_merpati UUID; k_1943_tenang UUID; k_1944_membosankan UUID; k_1945_iblis UUID; k_1946_asrama UUID; k_1947_baki UUID; k_1948_bangunan UUID; k_1949_saya UUID; k_1950_mengiris UUID; k_1951_lebih_tepatnya UUID; k_1952_kursi UUID; k_1953_bertahun_tahun UUID; k_1955_monyet UUID; k_1956_murid UUID; k_1957_kunci UUID; k_1958_nol UUID; k_1959_pergi UUID; k_1960_tarif UUID; k_1961_terpencil UUID; k_1962_gelembung UUID; k_1963_kebiasaan UUID; k_1964_menempa UUID; k_1965_tempering UUID; k_1966_kepala_pabrik UUID; k_1967_berdaulat UUID; k_1968_berkedip UUID; k_1969_krisan UUID; k_1970_kebanggaan UUID; k_1972_menggagalkan UUID; k_1973_diam UUID; k_1974_karung_jerami UUID; k_1975_kapas UUID; k_1976_rak UUID; k_2119_rongga UUID; k_9468_menganugerahkan UUID;
  -- ============ VOCABULARY IDs (Level 46) ============
  v_3017_keputusan UUID; v_3020_tertunda UUID; v_6633_bersih UUID; v_6769_pintu_kasa UUID; v_6957_partikel_dasar UUID; v_6958_onigiri UUID; v_6959_goreng UUID; v_6960_berteriak UUID; v_6961_berteriak UUID; v_6962_tumbuh UUID; v_6963_ketidaksabaran UUID; v_6964_tinta UUID; v_6965_lukisan_tinta UUID; v_6966_tato UUID; v_6967_merpati UUID; v_6968_tenang UUID; v_6969_sesuai UUID; v_6970_tenang UUID; v_6971_kerusuhan UUID; v_6972_membosankan UUID; v_6973_tidak_sensitif UUID; v_6974_senjata_tumpul UUID; v_6975_iblis UUID; v_6976_sihir UUID; v_6977_sihir UUID; v_6978_penyihir UUID; v_6979_asrama UUID; v_6980_siswa_asrama UUID; v_6981_baki UUID; v_6982_lebih_tepatnya UUID; v_6983_sopan UUID; v_6984_ruang_rumah_sakit UUID; v_6985_saya UUID; v_6986_novel UUID; v_6987_membunuh_dengan_pedang UUID; v_6988_untuk_mengurangi UUID; v_6989_kursi UUID; v_6990_waktu UUID; v_6991_bertahun_tahun UUID; v_6997_menyegarkan UUID; v_6998_angin_sejuk UUID; v_6999_monyet_lihat_monyet_lakukan UUID; v_7000_monyet UUID; v_7001_murid UUID; v_7002_kunci UUID; v_7003_nol UUID; v_7004_di_bawah_nol UUID; v_7005_tengah_malam UUID; v_7006_poin_nol UUID; v_7008_pergi UUID; v_7009_pergi UUID; v_7010_ayo_naik UUID; v_7011_pergi_ke_ruang_tamu UUID; v_7012_konsesi_asing UUID; v_7013_pajak UUID; v_7014_gelembung UUID; v_7015_gelembung_udara UUID; v_7016_busa UUID; v_7017_berbusa UUID; v_7018_kebiasaan_buruk UUID; v_7019_kurungan UUID; v_7020_hantu UUID; v_7021_frase_favorit UUID; v_7022_pelatihan UUID; v_7023_alkimia UUID; v_7024_untuk_menempa UUID; v_7025_kepala_pabrik UUID; v_7026_kepala_beras UUID; v_7027_kaisar UUID; v_7028_kaisar_jepang UUID; v_7029_kerajaan UUID; v_7030_pemerintahan_kekaisaran UUID; v_7031_untuk_berkedip UUID; v_7032_sejenak UUID; v_7033_momen UUID; v_7034_krisan_putih UUID; v_7035_berlebihan UUID; v_7036_sekejap UUID; v_7037_sejenak UUID; v_7038_berbesar_hati UUID; v_7039_berlebihan UUID; v_7041_untuk_menggagalkan UUID; v_7042_halangan UUID; v_7043_halangan UUID; v_7044_untuk_diam UUID; v_7045_kesunyian UUID; v_7046_mengabaikan UUID; v_7047_karung_jerami UUID; v_7048_cincin_sumo UUID; v_7049_tanaman_kapas UUID; v_7050_kain_katun UUID; v_7051_konstruksi UUID; v_7052_rak_buku UUID; v_7053_usungan UUID; v_7140_jelas UUID; v_7509_murid UUID; v_7510_rongga_mata UUID; v_7513_kenyamanan_saat_ini UUID; v_7559_iblis UUID; v_7782_untuk_mengguncang UUID; v_8692_kapas UUID; v_9467_untuk_menuju_hulu UUID; v_9486_untuk_diberikan UUID;

BEGIN

  DELETE FROM items WHERE level = 46;

  -- 1. RADICALS
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '恵', 'kebaikan', 46, 1, 'Radikal ini sama dengan kanji. Artinya <radikal>kebaikan</radikal>.')
    RETURNING id INTO r_400_kebaikan;
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_400_kebaikan, 'Kebaikan', true, true);

  -- 2. KANJIS
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '墨', 'tinta-hitam', 46, 2, 'Anda menggunakan <radical>hitam</radikal> <radikal>kotoran</radikal> untuk membuat <kanji>tinta hitam</kanji>. Itu yang biasa kamu tulis dengan warna hitam!', 'Berhati-hatilah agar Anda tidak menumpahkan <kanji>tinta hitam</kanji> pada siapa pun atau apa pun. Jika ya, Anda harus memilikinya. Bayangkan menumpahkan tinta hitam pada seseorang, dan ketika mereka berhadapan dengan Anda, Anda berteriak, "Ya, kamu kena tinta hitam, jadi <read>tuntut aku</reading> (すみ)!"')
    RETURNING id INTO k_1941_tinta_hitam;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '鳩', 'merpati', 46, 3, 'Ada <radical>sembilan</radical> <radical>burung</radical> dan salah satunya adalah <kanji>merpati</kanji> dan satu lagi adalah <kanji>merpati</kanji>. Kesembilan burung ini merupakan kawanan dari segala jenis, namun merpati dan merpati adalah pemimpinnya.', 'Lihatlah <kanji>merpati</kanji> di depan Anda. Sekarang, ambil, sobek menjadi dua, dan ambil <reading>hati</reading> (はと) dari tubuh kecilnya.')
    RETURNING id INTO k_1942_merpati;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '穏', 'tenang', 46, 4, 'Beberapa <radical>butiran</radikal> tersangkut di <radikal>cleat</radikal> miliknya, dan <radikal>hati</radikal> Wolverine</radikal> menjadi <kanji>tenang</kanji>. Wolverine sudah menjerit-jerit, menjerit, dan menghentak-hentakkan kakinya, tapi saat butiran-butiran itu memasuki gerigi sepatunya, dia menyadari di mana dia berada. Dia akhirnya bisa tenang.', 'Sekarang Wolverine <kanji>tenang</kanji>, air mata mengalir di matanya. Bersikap tenang telah memberinya perspektif tentang dampak kemarahannya. Oh, tunggu, tidak. Hanya ada beberapa ion (おん) di sepatunya juga, dan itu membuat air mata mengalir di matanya.')
    RETURNING id INTO k_1943_tenang;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '鈍', 'membosankan', 46, 5, 'Buatlah <radical>barak</radikal> dari <radical>emas</radikal> dan barak itu akan <kanji>membosankan</kanji> dengan cepat. Emas itu lembut, tidak apa-apa untuk perhiasan dan barang-barang halus yang jarang digunakan, tapi barak untuk tentara? Itu digunakan terus-menerus, dan mudah rusak. Apa yang tadinya emas berkilau akan menjadi kusam dalam beberapa hari.', 'Saat Anda menatap barak <kanji>membosankan</kanji> dengan sedih, <reading>don</reading> (どん) muncul entah dari mana, dan dia kesal. Dia mengalihkan pandangannya yang marah ke arah Anda dan berkata, "Bagaimana barak saya menjadi begitu membosankan? Apakah Anda bersalah? Ini buruk, ini sangat buruk. Seseorang akan membayar untuk ini."')
    RETURNING id INTO k_1944_membosankan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '魔', 'iblis', 46, 6, 'Di bawah <radical>kanopi</radikal> dari <radikal>pohon</radikal> ada <radikal>iblis</radikal>. Iblis ini adalah <kanji>iblis</kanji>.', 'Mengapa <kanji>iblis</kanji> berada di bawah kanopi pohon? Karena dia mencari <read>ma</reading>ma ​​(ま) miliknya.')
    RETURNING id INTO k_1945_iblis;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '寮', 'asrama', 46, 7, 'Anda perlu membawa <radical>arang</radikal> di bawah <radikal>atap</radikal> ini untuk memanaskan <kanji>asrama</kanji>. Anda tinggal di asrama ini bersama sekelompok anak lain, dan Anda semua harus bergiliran membawa arang dari luar untuk memanaskannya.', '<kanji>asrama</kanji> berada di sebuah pulau, jadi ketika Anda keluar untuk mengambil arang, Anda harus naik perahu <membaca>barisan</reading> (りょう). Anda mendayung, mendayung, dan mendayung sampai Anda mencapai gudang yang penuh dengan arang. Kemudian Anda mendayung dan mendayung dan mendayung kembali ke asrama.')
    RETURNING id INTO k_1946_asrama;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '盆', 'baki', 46, 8, 'Anda meletakkan <radical>sebagian</radikal> makanan Anda di <radical>piring</radical>, lalu menaruhnya di <kanji>nampan</kanji> agar tetap aman. Nampan ini adalah persembahan untuk <kanji>festival leluhur</kanji>, di mana arwah leluhur mengunjungi Anda untuk check in dan membagikan sebagian makanan yang Anda persembahkan di atas nampan.', 'Piring yang Anda letakkan di <kanji>nampan</kanji> untuk <kanji>festival leluhur</kanji> terbuat dari <reading>tulang</reading> (ぼん). Tulang cina, maksudnya. Mewah sekali… Dan pantas, mengingat bone china terbuat dari tulang asli.')
    RETURNING id INTO k_1947_baki;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '棟', 'bangunan', 46, 9, 'Ada <radical>pohon</radical> di <radical>timur</radical> yang terlihat seperti <kanji>bangunan</kanji>. Pohonnya tinggi dan lurus serta tidak memiliki daun atau cabang apa pun. Ini pada dasarnya adalah sebuah bangunan kayu besar.', '<kanji>Bangunan</kanji> itu kebetulan berada di tengah <reading>とう</reading>きょう. Jika kamu perlu mencari arah timur (di situlah とうきょう berada), cari saja bangunannya.')
    RETURNING id INTO k_1948_bangunan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '吾', 'saya', 46, 10, 'Saya memiliki <radical>lima</radikal> hal di <radical>mulut</radikal> saya dan <kanji>Saya</kanji> memerlukan semuanya untuk <kanji>saya</kanji>. Aku memiliki lima hal ini, dan aku menyimpannya di mulutku sehingga orang sepertimu tidak dapat mengambilnya dariku.', '<kanji>Saya</kanji>, secara pribadi, <kanji>Saya</kanji> cukup haus jadi saya meminta beberapa “<reading>waga</reading>” (わが). Ada lima benda di mulutku, jadi sulit bagiku untuk mengucapkan kata “air”. Jadi terdengar seperti “waga” saat saya memintanya. "Bolehkah aku pweash hab sum waga?! Aku akta waga!!"')
    RETURNING id INTO k_1949_saya;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '斬', 'mengiris', 46, 11, 'Anda menggunakan <radical>mobil</radical> dan <radical>kapak</radikal> untuk <kanji>memotong</kanji> pejalan kaki. Orang yang tidak bersalah ini baru saja berjalan di sepanjang jalan ketika Anda berkendara ke arahnya dengan mobil Anda dan memukulnya sampai mati dengan kapak Anda. Anda semua seperti, VROOM! KAPAK! Sekarang orang ini sudah mati karena kamu menebasnya dengan darah dingin.', 'Setelah kamu <kanji>memotong</kanji> orang malang ini, kamu lari ke <reading>Zan</reading>zibar (ざん). Zanzibar sangat jauh dari lokasi serangan pemotongan kendaraan yang mematikan, jadi Anda yakin polisi tidak akan menemukan Anda di sini.')
    RETURNING id INTO k_1950_mengiris;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '寧', 'lebih-tepatnya', 46, 12, 'Di <radical>atap</radical> adalah <radical>hati</radical> Anda. ATAU! Di <radical>net</radical> di <radical>jalan</radical>. Mana yang Anda <kanji>pilih</kanji>?', 'Saat kamu mencoba memutuskan <kanji>lebih suka</kanji> mana yang <kanji>lebih suka</kanji>, <reading>tetangga</reading>bor (ねい) kamu akan keluar dan mengambil hati itu dari tanganmu.')
    RETURNING id INTO k_1951_lebih_tepatnya;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '椅', 'kursi', 46, 13, '<radical>Pohon</radikal> ini sangat <radikal>aneh</radikal>. Bentuknya gila-gilaan semua, seperti sambaran petir yang tertancap di tanah, atau semacamnya. Oh tunggu, lihat ini. Saya bisa duduk di atasnya dengan sangat baik. Ini seperti <kanji>kursi</kanji>!', 'Namun, <kanji>kursi</kanji> pohon aneh ini juga merupakan rumah bagi <reading>ea</reading>gle (い). Ia menukik ke arah Anda saat Anda duduk, mencungkil mata Anda.')
    RETURNING id INTO k_1952_kursi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '歳', 'bertahun-tahun', 46, 14, 'Anda harus <radical>berhenti</radical> memelihara <radical>gigi taring</radical> yang <radical>kecil</radical> setelah Anda mencapai jumlah <kanji>tahun</kanji> tertentu. Anda akan mencapai batas usia tersebut <kanji>tahun</kanji> ini, yang berarti <kanji>waktu</kanji> Anda dengan anjing kecil Anda akan berakhir dan Anda harus tumbuh dan menjadi lebih besar.', 'Ingat kosakata 〜才 yang juga berarti "<kanji>berusia</kanji>"? Nah, ini bacaannya sama: さい.')
    RETURNING id INTO k_1953_bertahun_tahun;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '猿', 'monyet', 46, 15, '<radical>hewan</radikal> yang <radikal>menendang</radikal> <radikal>kotoran</radikal> ke dalam <radikal>mulut</radikal> orang adalah <kanji>monyet</kanji>. Monyet adalah makhluk kecil yang nakal. Anda seharusnya senang karena itu hanya kotoran yang masuk ke mulut Anda, dan bukan sesuatu yang lebih buruk.', 'Anda meludahkan kotoran dari mulut Anda dan melihat kembali ke <kanji>monyet</kanji> untuk melihat bahwa itu <reading>salu</reading>ting (さる) adalah Anda. Apakah... apakah itu mengejekmu?')
    RETURNING id INTO k_1955_monyet;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '瞳', 'murid', 46, 16, 'Di dalam <radical>mata</radical> <radical>stand</radical> Anda terdapat <radical>desa</radical> kecil yang membentuk <kanji>murid</kanji> Anda. Itu bagian hitam matamu!', 'Semua orang di <kanji>murid</kanji> Anda makan <reading>dou</reading>ghnuts (どう) sepanjang hari. Makanya matamu berbentuk donat, dengan “lubang” (desa) sebagai rumahnya.')
    RETURNING id INTO k_1956_murid;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '鍵', 'kunci', 46, 17, 'Anda mengambil beberapa <radical>emas</radical> dan menutupi <radical>yoga</radical> <radical>brush</radical> Anda di dalamnya, mengubahnya menjadi <kanji>kunci</kanji>. Anda memasukkan sikat yang biasa Anda gunakan untuk yoga ke dalam kunci mobil Anda dan menuangkan emas ke atasnya. Sekarang bentuknya yang tepat untuk menjadi kunci!', '<kanji>kunci</kanji> ini harus sempurna, karena jika tidak, <reading>ca</reading>r <reading>gui</reading>llotine (かぎ) akan turun dan memotong tangan Anda!')
    RETURNING id INTO k_1957_kunci;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '零', 'nol', 46, 18, 'Anda mendapatkan <radical>rain</radical> <radical>order</radical>. Perintah Anda adalah untuk memastikan <kanji>tidak ada</kanji> <kanji>tumpahan</kanji>.', 'Cara terbaik untuk memastikan <kanji>tidak ada</kanji> <kanji>tumpah</kanji> saat hujan adalah dengan membuang hujan tersebut. Anda menggunakan senjata <reading>ray</reading> (れい) khusus dan menyemprotkan hujan langsung dari langit. Tidak akan ada tumpahan karena tidak akan ada hujan.')
    RETURNING id INTO k_1958_nol;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '碁', 'pergi', 46, 19, 'Seekor <radical>kepiting</radikal> menggerakkan <radikal>batu</radikal> karena dia sedang memainkan permainan <kanji>go</kanji>. Anda tahu permainan ini, bukan? Anda meletakkan batu hitam atau putih di papan sampai Anda memenangkan permainan. Ini adalah permainan Jepang yang dikenal sebagai go. Kepiting ini cukup bagus.', '<kanji>Go</kanji> juga diucapkan <reading>go</reading> (ご) dalam bahasa Jepang. Seberapa nyamankah itu? Seperti, sangat nyaman. Sangat mudah bahkan seekor kepiting pun dapat mengingatnya!')
    RETURNING id INTO k_1959_pergi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '租', 'tarif', 46, 20, 'Seseorang dengan <radical>top hat</radical> datang dan memberi tahu Anda bahwa <radical>gandum</radical> Anda akan dikenakan pajak mulai sekarang. Pria bertopi tinggi mengatakan ada <kanji>tarif</kanji> yang diberlakukan pada biji-bijian. Beras? Tiga kali lipat harganya. Gandum? Melipatempatkan.', 'Anda mendengarkan semua hal dalam <kanji>tarif</kanji> ini dan akhirnya Anda muak dan bertanya apa yang tidak dikenakan pajak sekarang. Pria bertopi tinggi menatap Anda dan tersenyum, mengulurkan tangannya. Di tangannya ada beberapa <read>soa</reading>p (そ).')
    RETURNING id INTO k_1960_tarif;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '幽', 'terpencil', 46, 21, '<radical>Kotoran</radikal> <radikal>Kotoran</radikal> <radikal>Gunung</radikal> tertutup oleh kotoran karena merupakan tempat yang <kanji>terpencil</kanji>.', 'Gunung Poop Poop yang <kanji>terpencil</kanji> adalah favorit <reading>kamu</reading>mereka (ゆう). Mereka pergi ke sana untuk melepaskan diri dari ponsel agar bisa berhubungan dengan alam lagi.')
    RETURNING id INTO k_1961_terpencil;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '泡', 'gelembung', 46, 22, 'Jika <radical>tsunami</radical> <radical>membungkus</radical> di sekelilingnya, gelombang yang dihasilkan akan menciptakan banyak <kanji>gelembung</kanji>. Anda tahu bagaimana tsunami terjadi ketika gravitasi mulai bekerja, bukan? Nah, ketika gelombang itu menghantam, banyak sekali gelembung yang tercipta.', 'Salah satu <kanji>gelembung</kanji> terbesar mengarah langsung ke <reading>ho</reading>saya (ほう), menelannya, dan mengangkatnya ke udara!')
    RETURNING id INTO k_1962_gelembung;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '癖', 'kebiasaan', 46, 23, 'Saat Anda <radikal>sakit</radikal> Anda selalu makan <radikal>cabai</radikal>. Itu adalah <kanji>kebiasaan</kanji> yang Anda ambil dan sepertinya tidak bisa Anda hilangkan. Satu kali pilek, satu kali batuk, dan sebelum Anda menyadarinya, Anda sudah makan satu atau dua cabai.', 'Setiap orang yang Anda kenal memiliki <kanji>kebiasaan</kanji> yang berbeda ketika mereka sakit. Sebaliknya, mereka makan <reading>cous</reading>cous (くせ). Tapi menurut Anda couscous itu menjijikkan. Itu hambar dan tidak menyebabkan hidung tersumbat dan tenggorokan gatal. Saya bertanya-tanya bagaimana Anda bisa meyakinkan mereka untuk mengganti kebiasaan mereka dengan kebiasaan Anda.')
    RETURNING id INTO k_1963_kebiasaan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '鍛', 'menempa', 46, 24, 'Anda ingin mengubah <radical>emas</radical> <radical>sisir</radical> Anda menjadi <radical>senjata</radical>, jadi Anda melemparkannya ke <kanji>tempa</kanji>.', 'Anda mencoba mengerjakan <kanji>penempaan</kanji>, namun ternyata lebih sulit dari yang Anda kira. Anda akhirnya pergi keluar sepanjang hari dan mendapatkan <read>tan</reading> (たん) yang jahat.')
    RETURNING id INTO k_1964_menempa;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '錬', 'tempering', 46, 25, '<radical>emas</radikal> dari <radical>timur</radikal> perlu <kanji>tempering</kanji> sebelum dapat dijual. Emas dari timur bagus, hanya perlu ditempa sebelum benar-benar rapi. Anda tahu, marah seperti yang Anda lakukan di bengkel.', 'Bengkel tempat Anda melakukan <kanji>tempering</kanji> hanyalah <read>ren</reading>tal (れん). Anda memerlukan sewa untuk temper karena Anda belum menjual cukup emas untuk memiliki bengkel sendiri. Terlihat cukup temper, jadi ini adalah sewa yang cukup buruk…')
    RETURNING id INTO k_1965_tempering;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '穂', 'kepala-pabrik', 46, 26, 'Bagian <radikal>biji-bijian</radikal> yang paling <radikal>disukai</radikal> adalah <kanji>kepala tanaman</kanji>. Anda tidak memakan batang dan daun tanaman padi atau gandum, bukan? Anda memakan kepala tempat biji-bijian berada.', 'Saat kamu ingin memanen <kanji>kepala tanaman</kanji> yang ingin kamu makan, kamu perlu menggunakan <reading>cangkul</reading> (ほ). Dengan menggunakan cangkul, Anda bisa menggali bagian bawah tanaman tanpa melukai kepala.')
    RETURNING id INTO k_1966_kepala_pabrik;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '帝', 'berdaulat', 46, 27, 'Anda <radical>berdiri</radical> di atas <radical>handuk</radical> karena Anda adalah <kanji>yang berdaulat</kanji>. Sebagai seorang penguasa, Anda terlalu penting untuk mengotori sepatu Anda. Ke mana pun Anda pergi, Anda berdiri di atas handuk — itulah cara orang mengetahui bahwa Anda adalah penguasa.', 'Dan ini bukan sembarang handuk tempat Anda berdiri. Untuk menunjukkan bahwa Anda adalah <kanji>berdaulat</kanji>, ada simbol <reading>ta</reading>ter (てい) tot di atasnya. Tater tot yang perkasa dan berdaulat! Begitulah cara semua orang tahu bahwa itu milik penguasa.')
    RETURNING id INTO k_1967_berdaulat;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '瞬', 'berkedip', 46, 28, '<radical>Mata</radical> Anda akan ditendang dengan <radical>cleat</radical> yang meluncur ke arah <radical>dahi</radical> Anda ketika itu muncul dari seseorang yang sedang <radical>menari</radical>, dan Anda <kanji>berkedip</kanji>.', 'Kamu <kanji>berkedip</kanji> dan berkedip dan <membaca>segera</reading> (しゅん) ada air mata yang keluar juga. Anda mencoba mengedipkannya tetapi tidak berhasil. Segera Anda menangis, berkedip, dan menangis lagi.')
    RETURNING id INTO k_1968_berkedip;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '菊', 'krisan', 46, 29, 'Jika Anda memilih jenis <radical>bunga</radical> yang salah, Anda akan dimasukkan ke dalam <radical>penjara</radical> dan hanya memiliki <radical>nasi</radical> untuk dimakan. Anda sebaiknya menghindari memetik <kanji>krisan</kanji>.', 'Jika kamu masuk penjara karena memetik <kanji>krisan</kanji>, semua orang di penjara akan <read>menendang</reading> (きく) kamu tanpa henti. Anda melanggar hukum memetik krisan, jadi menendang adalah hukuman Anda. Dan percayalah, Anda tidak menginginkan tendangan ini.')
    RETURNING id INTO k_1969_krisan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '誇', 'kebanggaan', 46, 30, '<radical>Ucapkan</radical> "<radical>dua</radical> <radical>besar</radical> <radical>penjara</radical>" dengan <kanji>kebanggaan</kanji>! Tidak ada yang bilang Anda tidak bisa merasa bangga setelah menjalani hukuman di dua penjara besar. Jadi katakan dengan dadamu!', 'Setelah mengumpulkan semua <kanji>kebanggaan</kanji> Anda, Anda merasa seperti orang baru, hampir terlahir kembali. "Saya merasa seperti <read>子</reading> (こ) lagi!", Anda menyatakan kepada dunia.')
    RETURNING id INTO k_1970_kebanggaan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '阻', 'menggagalkan', 46, 31, 'Jika Anda melihat <radical>bangunan</radical> mengenakan <radical>topi</radical> raksasa, berhati-hatilah! Bangunan ini palsu dan berusaha <kanji>menggagalkan</kanji> semua rencana yang dimiliki orang-orang di gedung lain.', 'Bangunan di sebelahnya sedang dicat, dan bangunan paling atas membuat iri. Ia <kanji>menggagalkan</kanji> rencana pengecatan dengan melemparkan <reading>so</reading>ap (そ) keluar dari jendelanya dan mengenai para pelukis dan gedung!')
    RETURNING id INTO k_1972_menggagalkan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '黙', 'diam', 46, 32, 'Desa Anda ingin mengambil <radical>desa</radical> <radical>anjing</radical> dan <radical>merebus</radikal>, dan Anda tidak dapat memikirkan tanggapan lain selain <kanji>DIAM</kanji>!', 'Penduduk desa marah karena kamu menyuruh mereka <kanji>diam</kanji>, dan mereka mulai <read>mengejek</reading> (もく) kamu. Mereka meletakkan tangan mereka di pinggul, mencondongkan tubuh ke depan, julingkan mata, dan berteriak "DIAM!" kembali.')
    RETURNING id INTO k_1973_diam;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '俵', 'karung-jerami', 46, 33, '<radikal>tulang rusuk</radikal> <radikal>pemimpin</radikal> Anda adalah hal yang ingin Anda <radikal>tendang</radikal>, namun Anda tahu apa yang sebaiknya Anda tendang? <kanji>karung jerami</kanji>. Menendang karung jerami adalah cara yang bagus untuk melampiaskan amarah Anda — jauh lebih baik daripada menendang tulang rusuk pemimpin Anda dan <em>dipecat</em> sebagai akibatnya.', 'Setiap kali kamu menendang <kanji>karung jerami</kanji>, kamu berteriak "<reading>Hei</reading> (ひょう)!" Ini seperti versi "hi-ya" Anda, tetapi juga berfungsi sebagai cara untuk mengejek karung jerami (alias pemimpin Anda): "Hei, karung — lebih baik hati-hati! Hei, kamu akan ditendang lagi!"')
    RETURNING id INTO k_1974_karung_jerami;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '綿', 'kapas', 46, 34, '<radical>putih</radical> <radical>benang</radical> pada <radical>handuk</radical> Anda berasal dari <kanji>katun</kanji>. Kami menggunakan kapas untuk membuat banyak hal, seperti pakaian dan seprai. Tapi handuk putih selalu terbuat dari bahan katun yang lembut dan halus.', '<kanji>katun</kanji> ini dibuat oleh <reading>pria</reading> (めん).')
    RETURNING id INTO k_1975_kapas;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '架', 'rak', 46, 35, 'Dengan <radical>kekuatan</radikal> dari <radical>mulut</radikal> Anda, Anda memerintahkan <radikal>pohon</radikal> untuk menjadi <kanji>rak</kanji>. Seringkali seseorang harus menggunakan tangan dan peralatannya untuk mengubah pohon menjadi rak, tetapi Anda mampu mengubah pohon menjadi rak dengan menggunakan kekuatan mulut Anda.', 'Setelah Anda mengubah pohon menjadi <kanji>rak</kanji>, Anda meletakkan rak tersebut di <reading>ca</reading>r (か) Anda dan menjualnya di pegadaian setempat. Anda terus melakukan ini berulang-ulang sampai Anda kaya. Anda memerintahkan pohon-pohon itu untuk diubah menjadi rak dan kemudian Anda mengambil rak itu di mobil Anda untuk menjualnya. Uang mudah.')
    RETURNING id INTO k_1976_rak;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '孔', 'rongga', 46, 36, 'Anda melihat <radical>anak</radical> dengan <radical>payung</radical> di depan Anda. Tiba-tiba, mereka langsung terjatuh ke dalam <kanji>rongga</kanji> di jalan. Itu adalah <kanji>lubang</kanji> yang besar!', '"Ke dalam <kanji>rongga</kanji>ku, pergilah!" teriak sebuah suara. Itu adalah <membaca>こう</membaca>いち.')
    RETURNING id INTO k_2119_rongga;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '賜', 'menganugerahkan', 46, 37, '<radical>Kerang</radical> hanya <radical>mudah</radical> didapat ketika seseorang <kanji>memberikan</kanji> kepada Anda. Kalau tidak, Anda harus melepaskannya dari bebatuan bawah air atau menyelam di laut dalam atau semacamnya. Mendapatkannya diberikan kepada Anda jelas merupakan pilihan termudah.', 'Karena serakah, Anda meminta orang ini untuk <kanji>memberi</kanji> lebih banyak kerang, namun mereka hanya meminta Anda untuk "kembalilah <read>tuhmawah</reading> (たまわ)".')
    RETURNING id INTO k_9468_menganugerahkan;
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1941_tinta_hitam, 'Tinta Hitam', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1941_tinta_hitam, 'Tinta', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_1941_tinta_hitam, 'すみ', true, 'kunyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_1941_tinta_hitam, 'ぼく', false, 'onyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1942_merpati, 'Merpati', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1942_merpati, 'Merpati', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_1942_merpati, 'はと', true, 'kunyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_1942_merpati, 'く', false, 'onyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1943_tenang, 'Tenang', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_1943_tenang, 'おん', true, 'onyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_1943_tenang, 'おだ', false, 'kunyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1944_membosankan, 'Membosankan', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_1944_membosankan, 'どん', true, 'onyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_1944_membosankan, 'にぶ', false, 'kunyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_1944_membosankan, 'のろ', false, 'kunyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1945_iblis, 'Iblis', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_1945_iblis, 'ま', true, 'onyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1946_asrama, 'Asrama', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_1946_asrama, 'りょう', true, 'onyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1947_baki, 'Baki', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1947_baki, 'Festival Leluhur', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_1947_baki, 'ぼん', true, 'onyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1948_bangunan, 'Bangunan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1948_bangunan, 'Punggung bukit', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_1948_bangunan, 'とう', true, 'onyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_1948_bangunan, 'むね', false, 'kunyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_1948_bangunan, 'むな', false, 'kunyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1949_saya, 'SAYA', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1949_saya, 'Aku', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_1949_saya, 'わが', true, 'kunyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_1949_saya, 'ご', false, 'onyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1950_mengiris, 'Mengiris', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_1950_mengiris, 'ざん', true, 'onyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_1950_mengiris, 'き', false, 'kunyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1951_lebih_tepatnya, 'Lebih tepatnya', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_1951_lebih_tepatnya, 'ねい', true, 'onyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_1951_lebih_tepatnya, 'むし', false, 'kunyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1952_kursi, 'Kursi', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_1952_kursi, 'い', true, 'onyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1953_bertahun_tahun, 'Bertahun-tahun', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1953_bertahun_tahun, 'Tahun', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1953_bertahun_tahun, 'Waktu', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_1953_bertahun_tahun, 'さい', true, 'onyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_1953_bertahun_tahun, 'せい', false, 'onyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_1953_bertahun_tahun, 'とし', false, 'kunyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_1953_bertahun_tahun, 'とせ', false, 'kunyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1955_monyet, 'Monyet', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_1955_monyet, 'さる', true, 'kunyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_1955_monyet, 'えん', false, 'onyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1956_murid, 'Murid', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_1956_murid, 'どう', true, 'onyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_1956_murid, 'とう', false, 'onyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_1956_murid, 'ひとみ', false, 'kunyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1957_kunci, 'Kunci', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_1957_kunci, 'かぎ', true, 'kunyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_1957_kunci, 'けん', false, 'onyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1958_nol, 'Nol', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1958_nol, 'Tumpahan', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_1958_nol, 'れい', true, 'onyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_1958_nol, 'こぼ', false, 'kunyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1959_pergi, 'Pergi', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_1959_pergi, 'ご', true, 'onyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1960_tarif, 'Tarif', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_1960_tarif, 'そ', true, 'onyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1961_terpencil, 'Terpencil', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_1961_terpencil, 'ゆう', true, 'onyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1962_gelembung, 'Gelembung', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_1962_gelembung, 'ほう', true, 'onyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_1962_gelembung, 'あわ', false, 'kunyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1963_kebiasaan, 'Kebiasaan', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_1963_kebiasaan, 'くせ', true, 'kunyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_1963_kebiasaan, 'へき', false, 'onyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1964_menempa, 'Menempa', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_1964_menempa, 'たん', true, 'onyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_1964_menempa, 'きた', false, 'kunyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1965_tempering, 'Tempering', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_1965_tempering, 'れん', true, 'onyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_1965_tempering, 'ね', false, 'kunyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1966_kepala_pabrik, 'Kepala Pabrik', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1966_kepala_pabrik, 'Telinga Tanaman', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_1966_kepala_pabrik, 'ほ', true, 'kunyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_1966_kepala_pabrik, 'すい', false, 'onyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1967_berdaulat, 'Berdaulat', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_1967_berdaulat, 'てい', true, 'onyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_1967_berdaulat, 'みかど', false, 'kunyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1968_berkedip, 'Berkedip', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_1968_berkedip, 'しゅん', true, 'onyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_1968_berkedip, 'またた', false, 'kunyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_1968_berkedip, 'まばた', false, 'kunyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1969_krisan, 'Krisan', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_1969_krisan, 'きく', true, 'onyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1970_kebanggaan, 'Kebanggaan', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_1970_kebanggaan, 'こ', true, 'onyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_1970_kebanggaan, 'ほこ', false, 'kunyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1972_menggagalkan, 'Menggagalkan', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_1972_menggagalkan, 'そ', true, 'onyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_1972_menggagalkan, 'はば', false, 'kunyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1973_diam, 'Diam', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_1973_diam, 'もく', true, 'onyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_1973_diam, 'だま', false, 'kunyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1974_karung_jerami, 'Karung Jerami', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_1974_karung_jerami, 'ひょう', true, 'onyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_1974_karung_jerami, 'たわら', false, 'kunyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1975_kapas, 'Kapas', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_1975_kapas, 'めん', true, 'onyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_1975_kapas, 'わた', false, 'kunyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1976_rak, 'Rak', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_1976_rak, 'か', true, 'onyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_1976_rak, 'か', false, 'kunyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2119_rongga, 'Rongga', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2119_rongga, 'Lubang', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2119_rongga, 'こう', true, 'onyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2119_rongga, 'あな', false, 'kunyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_9468_menganugerahkan, 'Menganugerahkan', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_9468_menganugerahkan, 'たまわ', true, 'kunyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_9468_menganugerahkan, 'し', false, 'onyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_9468_menganugerahkan, 'たま', false, 'kunyomi');

  -- 3. VOCABULARIES
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '決', 'keputusan', 46, 38, 'Versi kata benda dari <kanji>memutuskan</kanji>? Itu adalah <vocabulary>keputusan</vocabulary>.

決 adalah kata formal yang mengacu pada <vocabulary>putusan</vocabulary> yang menentukan. Kata ini digunakan dalam frasa formal seperti 決を採る (mengambil suara) atau 決を下す (mengambil keputusan), keduanya berarti pengambilan keputusan atau penyampaian putusan.', 'Bacaan kata ini sama dengan kanji!')
    RETURNING id INTO v_3017_keputusan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '未決', 'tertunda', 46, 39, 'Sesuatu yang <kanji>belum</kanji> <kanji>putuskan</kanji>d... itu <vocabulary>menunggu</vocabulary>!

未決 adalah istilah formal, biasanya digunakan dalam konteks hukum atau administratif untuk merujuk pada hal-hal yang masih <vocabulary>belum terselesaikan</vocabulary> atau <vocabulary>belum diputuskan</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.')
    RETURNING id INTO v_3020_tertunda;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '網', 'bersih', 46, 40, 'Kanji dan kata-katanya sama persis, jadi ini artinya <vocabulary>net</vocabulary>.

網 biasanya berarti jaring untuk menangkap sesuatu, seperti 虫取り網 (jaring penangkap serangga) atau 魚を網で捕る (menangkap ikan dengan jaring). Namun, dapat juga digunakan untuk benda-benda lain yang terjalin atau berbentuk kisi-kisi yang berlubang, seperti 金属の網 (<vocabulary>mesh</vocabulary> kawat).', 'Karena kata ini terdiri dari satu kanji, kemungkinan besar menggunakan bacaan kun''yomi. Anda tidak mempelajari bacaan ini, jadi inilah mnemonik untuk membantu Anda:

Anda menangkap sesuatu di <vocabulary>net</vocabulary> Anda. Anda pergi untuk memeriksa apa itu, dan… itu <reading>Amy</reading> (あみ)! Jika Anda mengenal seorang Amy, bayangkan dia terjerat dalam jaring Anda, tampak agak kesal. Jika Anda tidak mengenal Amys, bayangkan saja selebriti paling terkenal Amy yang dapat Anda pikirkan. Anda telah berhasil menangkapnya di jaring Anda. Baik untukmu…?')
    RETURNING id INTO v_6633_bersih;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '網戸', 'pintu-kasa', 46, 41, '<kanji>net</kanji> <kanji>pintu</kanji> adalah <vocabulary>pintu kasa</vocabulary>, atau <vocabulary>layar jendela</vocabulary>. Masuk akal, bukan? Ini pada dasarnya adalah jaring yang dibuat menjadi pintu atau jendela, memungkinkan udara masuk sekaligus mencegah masuknya serangga!', 'Anda mempelajari kun''yomi untuk 網 ketika Anda mempelajarinya sebagai kosakata. Ambil bacaan itu, tambahkan 戸 bacaan dengan rendaku, dan Anda akan mendapatkan あみど.')
    RETURNING id INTO v_6769_pintu_kasa;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '素粒子', 'partikel-dasar', 46, 42, 'Sebuah <kanji>partikel</kanji> (粒子) yang merupakan versi <kanji>elemen</kanji> adalah <vocabulary>partikel elementer</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_6957_partikel_dasar;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', 'お握り', 'onigiri', 46, 43, '握り adalah "pegangan". Saat Anda menambahkan お, nilainya sedikit meningkat. Entah kenapa menjadi <vocabulary>rice ball</vocabulary> (alias <vocabulary>onigiri</vocabulary>). Untuk membuat bola nasi, gunakan genggaman Anda untuk membuatnya menjadi bentuk bola, mungkin dari situlah bola nasi tersebut berasal.', 'Bacaannya berasal dari 握り.

Perhatikan bahwa ini biasanya ditulis dalam hiragana sebagai おにぎり.')
    RETURNING id INTO v_6958_onigiri;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '揚げ出し', 'goreng', 46, 44, 'Ingat bagaimana 揚げる bisa berarti "menggoreng"? 揚げ出し adalah teknik memasak Jepang di mana Anda menggoreng sesuatu (biasanya tahu) dan menyajikannya dalam kaldu. Kata ini mungkin mudah diingat jika Anda mengetahui kaldu sup "dashi" sering digunakan untuk membuat kaldu agedashi.', 'Bacaannya adalah bacaan 揚げる dan 出す.')
    RETURNING id INTO v_6959_goreng;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '叫び', 'berteriak', 46, 45, '叫ぶ adalah "berteriak" dan "berteriak". Ini adalah versi kata benda. Ini adalah <vocabulary>teriakan</vocabulary> atau <vocabulary>jeritan</vocabulary>.', 'Bacaannya berasal dari 叫ぶ.')
    RETURNING id INTO v_6960_berteriak;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '叫び声', 'berteriak', 46, 46, '<kanji>teriakan</kanji> <kanji>suara</kanji> adalah <vocabulary>teriakan</vocabulary> atau <vocabulary>yell</vocabulary>.', 'Bacaannya berasal dari 叫ぶ dan 声, disatukan. Hati-hati dengan rendaku.')
    RETURNING id INTO v_6961_berteriak;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '新芽', 'tumbuh', 46, 47, '<kanji>kecambah</kanji> baru adalah <vocabulary>kecambah</vocabulary> atau <vocabulary>bud</vocabulary> atau <vocabulary>shoot</vocabulary>. Lagipula, semua kecambah itu baru.', 'Bacaannya adalah bacaan yang Anda pelajari dengan kanji, digabungkan.')
    RETURNING id INTO v_6962_tumbuh;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '焦り', 'ketidaksabaran', 46, 48, 'Ingat 焦る, yang artinya "terburu-buru" atau "tidak sabar"? Ini adalah versi kata bendanya, yaitu <kosakata>ketidaksabaran</vocabulary>.', 'Bacaannya berasal dari 焦る.')
    RETURNING id INTO v_6963_ketidaksabaran;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '墨', 'tinta', 46, 49, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.', 'Bacaannya sama dengan yang Anda pelajari dengan kanji.')
    RETURNING id INTO v_6964_tinta;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '墨絵', 'lukisan-tinta', 46, 50, '<kanji>tinta</kanji> <kanji>lukisan</kanji> adalah <vocabulary>lukisan tinta</vocabulary>.

墨絵 mengacu pada karya seni yang dibuat dalam warna monokrom, menggunakan tinta sumi hitam dengan kuas di atas kertas buatan tangan.', 'Bacaannya adalah bacaan yang dipelajari dengan kanji.')
    RETURNING id INTO v_6965_lukisan_tinta;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '入れ墨', 'tato', 46, 51, 'Jika Anda <kanji>memasukkan</kanji> <kanji>tinta</kanji> ke dalam (tubuh Anda), Anda akan mendapatkan <vocabulary>tato</vocabulary>.', 'Bacaannya berasal dari 入れる dan 墨 digabungkan menjadi satu. Hati-hati dengan rendaku.')
    RETURNING id INTO v_6966_tato;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '鳩', 'merpati', 46, 52, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.', 'Bacaannya sama dengan yang Anda pelajari dengan kanji.')
    RETURNING id INTO v_6967_merpati;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '穏やか', 'tenang', 46, 53, 'Ini adalah versi kata sifat な dari kanji yang berarti <kanji>tenang</kanji>. Versi kosakata di sini juga <vocabulary>tenang</vocabulary>, meskipun Anda dapat menggunakannya untuk mengartikan <vocabulary>mild</vocabulary> juga.', 'Tidak ada orang yang <vocabulary>tenang</vocabulary> dan <vocabulary>ringan</vocabulary> seperti <reading>ol'' da</reading>d (おだ). Baik saat dia duduk di kursi goyang sambil menyeruput teh atau berada di taman merawat anggrek, ayah selalu memberikan kesan tenang dan lembut.')
    RETURNING id INTO v_6968_tenang;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '穏当', 'sesuai', 46, 54, 'Semuanya <kanji>tenang</kanji> dan <kanji>benar</kanji>. Ini <vocabulary>pantas</vocabulary> dan <vocabulary>masuk akal</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_6969_sesuai;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '平穏', 'tenang', 46, 55, '<kanji>flat</kanji> <kanji>tenang</kanji> adalah tempat <vocabulary>tenang</vocabulary> dan <vocabulary>tenang</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_6970_tenang;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '不穏', 'kerusuhan', 46, 56, 'Sesuatu yang <kanji>tidak</kanji> <kanji>tenang</kanji> berada dalam kondisi <vocabulary>kerusuhan</vocabulary>. Ketika segala sesuatunya <vocabulary>tidak menentu</vocabulary>, hal itu <vocabulary>meresahkan</vocabulary> bagi orang-orang.

不穏 umumnya digunakan untuk menggambarkan suasana hati atau suasana suatu situasi yang meresahkan, menyoroti ketegangan dan kegelisahan daripada menggambarkan sesuatu yang bersifat fisik.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_6971_kerusuhan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '鈍い', 'membosankan', 46, 57, 'Ini adalah kanji tunggal dengan い di akhir, artinya Anda tahu itu mungkin kata sifat. Apa bentuk kata sifat dari <kanji>membosankan</kanji>? <vocabulary>membosankan</vocabulary>.', 'Untuk mengingat bacaan tersebut, pikirkan tentang bagaimana ketika Anda sedang <reading>neb</reading>riated (にぶ) Anda perlu menggunakan pisau <vocabulary>tumpul</vocabulary>. Bacaan にぶい berbicara tentang suatu hal yang membosankan. Untuk のろい, yang mengacu pada pikiran yang tumpul (seseorang yang <vocabulary>keras kepala</vocabulary>). Bayangkanlah tentang Tuhan <read>Nor</reading>se (のろ), Tuhan yang berotak tumpul.')
    RETURNING id INTO v_6972_membosankan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '鈍感', 'tidak-sensitif', 46, 58, 'Jika kamu terlalu <kanji>membosankan</kanji> untuk mempunyai <kanji>perasaan</kanji>, kamu <vocabulary>tidak peka</vocabulary>, atau <vocabulary>bebal</vocabulary>.

鈍感 sering kali berarti seseorang tidak terlalu peka terhadap emosi atau apa yang terjadi di sekitarnya. Sepertinya mereka bisa melewatkan petunjuk romantis yang halus atau tidak merasakan ketegangan diam di sebuah ruangan.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_6973_tidak_sensitif;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '鈍器', 'senjata-tumpul', 46, 59, 'Anda menggunakan <kanji>dull</kanji> <kanji>wadah</kanji> sebagai <vocabulary>senjata tumpul</vocabulary>. Hanya itu yang perlu Anda tangani.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_6974_senjata_tumpul;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '悪魔', 'iblis', 46, 60, '<kanji>jahat</kanji> <kanji>iblis</kanji> adalah <vocabulary>iblis</vocabulary> (karena mereka semua jahat), atau <vocabulary>iblis</vocabulary> atau <vocabulary>setan</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_6975_iblis;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '魔法', 'sihir', 46, 61, '<kanji>metode</kanji> iblis</kanji> adalah <vocabulary>sihir</vocabulary> dan <vocabulary>witchcraft</vocabulary>. Bagaimanapun, itulah metode mereka dalam melakukan sesuatu.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_6976_sihir;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '魔術', 'sihir', 46, 62, '<kanji>teknik</kanji> <kanji>iblis</kanji> adalah <vocabulary>sihir</vocabulary>. Hal yang iblis lakukan.

魔術 adalah kata yang mengacu pada <vocabulary>seni sihir</vocabulary>, dengan penekanan pada "kerajinan" sihir.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_6977_sihir;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '魔女', 'penyihir', 46, 63, '<kanji>iblis</kanji> <kanji>wanita</kanji> adalah <vocabulary>penyihir</vocabulary>. Dia menggunakan sihir, jadi dia pasti penyihir! Juga, apakah dia mengapung seperti kayu/batu yang sangat kecil?', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_6978_penyihir;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '寮', 'asrama', 46, 64, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna. Bisa juga merujuk ke <vocabulary>hostel</vocabulary>.', 'Ini adalah kata yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_6979_asrama;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '寮生', 'siswa-asrama', 46, 65, '<kanji>asrama</kanji> <kanji>siswa</kanji> (berasal dari 学生) adalah <vocabulary>siswa asrama</vocabulary> atau <vocabulary>asrama</vocabulary>. Ini adalah siswa yang tinggal di asrama.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_6980_siswa_asrama;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', 'お盆', 'baki', 46, 66, 'Kanji 盆 berarti <kanji>nampan</kanji> atau <kanji>festival leluhur</kanji>. Tanda お hanya menambahkan kesopanan atau rasa hormat. Jadi お盆 juga berarti <vocabulary>tray</vocabulary>, atau mengacu pada <vocabulary>festival leluhur</vocabulary> yang juga dikenal sebagai Obon.

Biasanya, konteksnya akan memberi tahu Anda arti お盆 yang digunakan, namun Anda juga dapat membedakannya berdasarkan aksen nada. お盆 untuk "baki" menggunakan aksen Rendah-Tinggi-Tinggi (seperti audio wanita), dan お盆 untuk "festival leluhur" menggunakan aksen Rendah-Tinggi-Rendah (seperti audio pria).', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_6981_baki;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '寧ろ', 'lebih-tepatnya', 46, 67, 'Ini sama dengan kanji, <vocabulary>lebih tepatnya</vocabulary>. Bisa juga berarti <vocabulary>lebih baik</vocabulary> atau <vocabulary>sebaliknya</vocabulary>.', 'Bayangkan saja: <vocabulary>daripada</vocabulary> daripada <reading>bug</reading> (むし), bagaimana dengan binatang?')
    RETURNING id INTO v_6982_lebih_tepatnya;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '丁寧', 'sopan', 46, 68, '<kanji>jalan</kanji> <kanji>bukan</kanji> daripada bukan jalan. Itulah yang saya tawarkan kepada Anda untuk terus berjalan. Jauh lebih bagus seperti ini. Saya bersikap <vocabulary>sopan</vocabulary> dan <vocabulary>sopan</vocabulary> dengan menawarkan jalan ini kepada Anda.', 'Pembacaan untuk 丁 sungguh tidak terduga. Namanya てい, bukan ちょう, jadi pikirkan bagaimana jalan ini dipenuhi dengan <reading>ta</reading>ter (てい) tots, dan bagaimana Anda bisa memakannya saat Anda berjalan di sepanjang perjalanan. Betapa <vocabulary>sopan</vocabulary> seseorang meninggalkannya di sana untuk Anda!')
    RETURNING id INTO v_6983_sopan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '病棟', 'ruang-rumah-sakit', 46, 69, '<kanji>gedung</kanji> <kanji>sakit</kanji> adalah bangunan (atau bagian dari bangunan) untuk orang sakit. Dengan kata lain, <vocabulary>bangsal rumah sakit</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_6984_ruang_rumah_sakit;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '吾輩', 'saya', 46, 70, '<kanji>Aku</kanji>, <kanji>kawan</kanji>ku (yaitu aku), adalah <vocabulary>aku</vocabulary>, itu adalah <vocabulary>diriku sendiri</vocabulary>, itu adalah <vocabulary>aku</vocabulary>. Ini adalah cara yang aneh untuk mengatakan "saya" dan memiliki sedikit arogansi.', 'Bacaannya berasal dari bacaan yang Anda pelajari dengan bacaan kanji.')
    RETURNING id INTO v_6985_saya;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '斬新', 'novel', 46, 71, 'Sesuatu yang memiliki <kanji>potongan</kanji>dan <kanji>kebaruan</kanji>ke dalam dunia adalah <vocabulary>novel</vocabulary> dan <vocabulary>asli</vocabulary>. Bayangkan saja dunia sebagai tempat di mana hal-hal telah dilakukan. Jika Anda ingin memasukkan sesuatu yang <vocabulary>inovatif</vocabulary> dan <vocabulary>inventif</vocabulary> di sana, Anda harus membuang hal-hal lama tersebut untuk memberikan ruang bagi hal-hal baru.

斬新 sering digunakan ketika Anda ingin memuji kreativitas, kebaruan, atau pemikiran maju seseorang. Namun, kata ini juga dapat digunakan sebagai cara yang sopan untuk mengatakan sesuatu yang tidak biasa atau berbeda secara tidak terduga, tanpa secara terang-terangan menyebutnya aneh.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_6986_novel;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '斬殺', 'membunuh-dengan-pedang', 46, 72, '<kanji>irisan</kanji> <kanji>membunuh</kanji> adalah <vocabulary>pembunuhan dengan pedang</vocabulary>. Anda tidak ingin mendengar ini, jika memungkinkan.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_6987_membunuh_dengan_pedang;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '斬る', 'untuk-mengurangi', 46, 73, 'Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanji itu sendiri berarti <kanji>mengiris</kanji> dan versi kosakata kata kerjanya berarti <vocabulary>memotong</vocabulary> atau <vocabulary>mengiris</vocabulary> atau <vocabulary>memotong</vocabulary>. 

Kata ini terutama mengacu pada menebas orang dengan pedang, jika Anda belum mengetahuinya.', 'Bacaannya sama dengan 切る yang artinya "memotong". Maknanya serupa, bacaannya sama.')
    RETURNING id INTO v_6988_untuk_mengurangi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '椅子', 'kursi', 46, 74, '<kanji>kursi</kanji> <kanji>anak</kanji> karena alasan tertentu hanyalah sebuah <vocabulary>kursi</vocabulary>. Tidak yakin mengapa itu anak-anak, tapi memang begitu.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Namun pembacaan す untuk 子 di sini kurang umum dan Anda belum pernah melihatnya sejak 様子, jadi inilah mnemonik yang dapat membantu Anda:

Bayangkan bagaimana Anda merusak <vocabulary>kursi</vocabulary> ini ketika Anda duduk di atasnya, sehingga Anda <reading>menuntut</reading> (す) orang yang membuat kursi tersebut. (Saya kira, siapa yang kebetulan masih anak-anak).')
    RETURNING id INTO v_6989_kursi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '歳月', 'waktu', 46, 75, '<kanji>Tahun</kanji> dan <kanji>bulan</kanji> menunjukkan perjalanan <vocabulary>waktu</vocabulary> atau <vocabulary>tahun</vocabulary> yang telah berlalu.

歳月 adalah kata yang relatif formal yang sering digunakan dalam sastra ketika merefleksikan perjalanan waktu yang lama — biasanya dalam cara yang puitis, bijaksana, atau emosional.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_6990_waktu;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '〜歳', 'bertahun-tahun', 46, 76, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna. Ini diletakkan di akhir angka untuk menunjukkan berapa umur seseorang.

Anda sudah mempelajari 〜才 (berusia tahun), dan 〜歳 memiliki arti yang sama persis. Tidak ada pertanyaan jebakan di sini. Perbedaannya adalah 歳 merupakan kanji yang cukup rumit, jadi 才 merupakan pilihan yang lebih sederhana dan kasual agar lebih mudah dibaca. Pada dasarnya, 才 adalah versi jeans-dan-t-shirt, sedangkan 歳 muncul dalam setelan jas dan dasi ketika keadaan sudah resmi.', 'Bacaannya sama dengan yang Anda pelajari dengan kanji.')
    RETURNING id INTO v_6991_bertahun_tahun;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '清涼', 'menyegarkan', 46, 77, '<kanji>murni</kanji> <kanji>keren</kanji> itu <vocabulary>menyegarkan</vocabulary> dan <vocabulary>keren</vocabulary>, bukan.', 'Semua bacaannya on''yomi, dan Anda tahu cara membaca 清. Anda tidak mempelajari on''yomi (りょう) 涼 dengan kanji, jadi inilah mnemonik untuk membantu:

Anda sangat menginginkan minuman <vocabulary>menyegarkan</vocabulary> dan <vocabulary>cool</vocabulary>. Mengapa? Anda hanya perlu <read>mendayung</reading> (りょう) melintasi danau besar. Dengan angin di wajahmu. Bayangkan betapa menyegarkannya minuman soda dingin setelah mendayung seharian!')
    RETURNING id INTO v_6997_menyegarkan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '涼風', 'angin-sejuk', 46, 78, '<kanji>sejuk</kanji> <kanji>angin</kanji> adalah <vocabulary>angin sejuk</vocabulary>.', 'Semua bacaannya on''yomi, dan Anda tahu cara membaca 風. Anda tidak mempelajari on''yomi (りょう) 涼 dengan kanji, jadi inilah mnemonik untuk membantu:

Bayangkan <vocabulary>angin sejuk</vocabulary> mendorong perahu <reading>row</reading> (りょう) kecil Anda, sehingga Anda tidak perlu mendayung apa pun. Ahh, angin sepoi-sepoi yang sejuk…')
    RETURNING id INTO v_6998_angin_sejuk;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '猿真似', 'monyet-lihat-monyet-lakukan', 46, 79, 'Jika 真似 adalah <kanji>imitasi</kanji> dan jika <kanji>monyet</kanji> melakukan imitasi tersebut, maka hal tersebut dapat disimpulkan dengan pepatah: <vocabulary>monyet melihat monyet melakukan</vocabulary>.

Kata ini mengacu pada saat seseorang melakukan <kosa kata>meniru orang lain tanpa berpikir panjang</vocabulary> tanpa pemikiran yang nyata, hal ini sering digunakan saat mengkritik orang lain.', 'Pembacaannya adalah 猿 plus 真似 yang disatukan.')
    RETURNING id INTO v_6999_monyet_lihat_monyet_lakukan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '猿', 'monyet', 46, 80, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.', 'Bacaannya sama dengan yang Anda pelajari dengan kanji.')
    RETURNING id INTO v_7000_monyet;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '瞳', 'murid', 46, 81, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna. Ingat, ini adalah pupil bola mata.', 'Bagian mata manakah yang memungkinkan seseorang melihat? <vocabulary>murid</vocabulary>! Murid mengucapkan <membaca>人 見</membaca>る (ひとみ). Begitulah cara Anda mengingat ひとみ.')
    RETURNING id INTO v_7001_murid;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '鍵', 'kunci', 46, 82, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.', 'Bacaannya sama dengan yang Anda pelajari dengan kanji.')
    RETURNING id INTO v_7002_kunci;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '零', 'nol', 46, 83, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.', 'Bacaannya sama dengan yang Anda pelajari dengan kanji. Itu 零 hal tambahan untuk Anda pelajari.')
    RETURNING id INTO v_7003_nol;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '零下', 'di-bawah-nol', 46, 84, '<kanji>Nol</kanji> <kanji>di bawah</kanji> adalah <vocabulary>di bawah nol</vocabulary>. <vocabulary>Di bawah nol</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_7004_di_bawah_nol;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '零時', 'tengah-malam', 46, 85, '<kanji>Nol</kanji> <kanji>jam</kanji> adalah 0:00. Saat itu <vocabulary>tengah malam</vocabulary> atau <vocabulary>jam dua belas</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_7005_tengah_malam;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '零点', 'poin-nol', 46, 86, '<kanji>Nol</kanji> <kanji>poin</kanji> berarti Anda mendapat <vocabulary>nol poin</vocabulary>. Bisa juga mengacu pada mendapatkan <vocabulary>nilai nol</vocabulary> pada ujian Anda.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_7006_poin_nol;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '碁', 'pergi', 46, 87, 'Kanji dan kata-katanya sama persis. Itu berarti keduanya memiliki arti yang sama, jadi ini adalah <vocabulary>go</vocabulary>, seperti dalam <vocabulary>permainan go</vocabulary>.

碁 adalah permainan strategi klasik Asia Timur yang dimainkan dengan batu hitam dan putih di papan kotak besar. Kata ini dapat digunakan sendiri, namun Anda juga akan sering melihatnya dalam kata majemuk seperti 碁石 (ごいし) atau 碁会所 (ごかいしょ).', 'Bacaannya sama dengan yang Anda pelajari dengan kanji.')
    RETURNING id INTO v_7008_pergi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '囲碁', 'pergi', 46, 88, 'Kapan kamu <kanji>mengepung</kanji> bidak <kanji>go</kanji> musuhmu dengan bidakmu sendiri? Saat Anda bermain <vocabulary>pergi</vocabulary>!

碁 dan 囲碁 adalah kata yang persis sama, namun 碁 terdengar sedikit lebih formal dan 囲碁 lebih umum ketika berbicara tentang <vocabulary>permainan go</vocabulary> dalam percakapan sehari-hari.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_7009_pergi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '碁盤', 'ayo-naik', 46, 89, '<kanji>go</kanji> <kanji>tray</kanji> adalah nampan untuk memainkan permainan go. Dengan kata lain, ini adalah <vocabulary>go board</vocabulary>.

碁盤 mengacu pada papan permainan kayu berjajar di mana pemain meletakkan batu pijakan mereka dan terlibat dalam pertarungan kecil dan sopan.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_7010_ayo_naik;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '碁会所', 'pergi-ke-ruang-tamu', 46, 90, '<kanji>go</kanji> <kanji>pertemuan</kanji>ing <kanji>tempat</kanji> adalah tempat di mana orang bertemu untuk bermain go. Ini adalah <vocabulary>go parlor</vocabulary> atau <vocabulary>go play parlor</vocabulary>.

碁会所 adalah tempat di mana orang berkumpul untuk bermain, mengobrol, dan diam-diam menilai pilihan hidup satu sama lain berdasarkan gerakan pembuka mereka. Di sana, Anda akan menemukan para veteran berpengalaman dan pemula yang penuh harapan berbagi meja yang sama… dan terkadang desahan penyesalan yang sama.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.

Tidak seperti kosakata 〜所 lainnya, しょ TIDAK disertai rendaku dengan 碁会所, jadi berhati-hatilah!')
    RETURNING id INTO v_7011_pergi_ke_ruang_tamu;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '租界', 'konsesi-asing', 46, 91, '<kanji>tarif</kanji> <kanji>dunia</kanji> tempat Anda tinggal ini adalah <vocabulary>konsesi asing</vocabulary>. Ini adalah <vocabulary>penyelesaian asing</vocabulary> di negara lain di mana orang asing harus membuat semua peraturan, jadi mereka pergi dan mengenakan tarif pada segala hal untuk mengganggu pemerintah asli negara tersebut.

租界 paling sering digunakan untuk merujuk pada wilayah yang dikuasai asing di Tiongkok yang memiliki peraturan dan penegakan hukum sendiri pada akhir tahun 1800-an dan awal tahun 1900-an. Anda kebanyakan akan melihatnya dalam konteks sejarah, namun terkadang juga digunakan dalam fiksi untuk menggambarkan distrik yang dikuasai asing dalam latar khayalan.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_7012_konsesi_asing;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '租税', 'pajak', 46, 92, '<kanji>tarif</kanji> <kanji>pajak</kanji> adalah suatu bentuk <vocabulary>pajak</vocabulary> atau <vocabulary>pajak</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_7013_pajak;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '泡', 'gelembung', 46, 93, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.', 'Itu adalah <vocabulary>gelembung</vocabulary>!

<read>A---</reading>? (あわ)

SEBUAH GELEMBUNG.

A APA???')
    RETURNING id INTO v_7014_gelembung;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '気泡', 'gelembung-udara', 46, 94, '<kanji>Energi</kanji> <kanji>gelembung</kanji> adalah gelembung yang berisi "energi" yang ada di sekitar kita (udara). Itu sebabnya ini disebut <vocabulary>gelembung udara</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_7015_gelembung_udara;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '水泡', 'busa', 46, 95, '<kanji>Air</kanji> <kanji>gelembung</kanji> adalah gelembung yang berasal dari air. Biasanya berbentuk <vocabulary>busa</vocabulary>, namun bisa juga dalam bentuk <vocabulary>gelembung</vocabulary>.

水泡 adalah kata sastra, terutama terlihat dalam idiom 水泡に帰す (tidak menghasilkan apa-apa). Ungkapan ini melukiskan gambaran usaha Anda yang sia-sia, berubah menjadi busa atau gelembung di air, dan akhirnya menghilang ke dalam ketiadaan.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_7016_busa;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '発泡', 'berbusa', 46, 96, '<kanji>keberangkatan</kanji> dari <kanji>gelembung</kanji> adalah saat gelembung meninggalkan sesuatu, seperti mulut. Itu sebabnya ini <vocabulary>berbusa</vocabulary>.

発泡 adalah kata teknis yang digunakan untuk sesuatu yang berisi gelembung udara atau menghasilkan busa. Ini sering digunakan dalam bahan dan nama produk, seperti 発泡スチロール (styrofoam), 発泡酒 (bir rendah malt), atau 発泡剤 (bahan pembusa).', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri. Berhati-hatilah saat memperhatikan perubahan bacaannya: はつ disingkat menjadi はっ, dan ほう berubah menjadi ぽう.')
    RETURNING id INTO v_7017_berbusa;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '癖', 'kebiasaan-buruk', 46, 97, 'Kanji itu sendiri berarti <kanji>kebiasaan</kanji> tetapi biasanya mengacu pada <vocabulary>kebiasaan buruk</vocabulary>, jadi cobalah untuk mengingat arti tersebut jika Anda bisa.', 'Bacaannya sama dengan yang Anda pelajari dengan kanji.')
    RETURNING id INTO v_7018_kebiasaan_buruk;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '幽閉', 'kurungan', 46, 98, '<kanji>Terpencil</kanji> dan <kanji>tertutup</kanji>, menempatkan Anda dalam <vocabulary>kurungan</vocabulary> dan <vocabulary>penjara</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_7019_kurungan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '幽霊', 'hantu', 46, 99, '<kanji>terpencil</kanji> <kanji>hantu</kanji> adalah seseorang yang terpencil dan menjadi hantu, karena semua orang telah melupakannya (dengan demikian disebut "hantu" dirinya). Benda ini adalah <vocabulary>hantu</vocabulary> atau <vocabulary>momok</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_7020_hantu;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '口癖', 'frase-favorit', 46, 100, '<kanji>mulut</kanji> <kanji>kebiasaan</kanji> adalah sesuatu yang sering Anda ucapkan dengan mulut. Itu sebuah kebiasaan. Itu adalah <vocabulary>frasa favorit</vocabulary> atau <vocabulary>catchphrase</vocabulary> Anda. Banyak orang mempunyai <vocabulary>kebiasaan mengucapkan</vocabulary> hal-hal tertentu berulang-ulang, baik mereka menginginkannya atau tidak.', 'Bacaannya merupakan bacaan vocab kun''yomi dari kedua kanji tersebut. 癖 adalah bacaan yang Anda pelajari dengan kanji. Hati-hati dengan rendaku.')
    RETURNING id INTO v_7021_frase_favorit;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '鍛錬', 'pelatihan', 46, 101, 'Saat Anda <kanji>menempa</kanji> dan <kanji>memanaskan</kanji> diri sendiri, Anda mungkin <vocabulary>melatih</vocabulary> tubuh Anda atau mencoba <vocabulary>mendisiplinkan</vocabulary> diri Anda agar lebih tangguh secara fisik dan mental.

鍛錬 pernah menggambarkan menempa logam, tapi sekarang biasanya tentang memperkuat diri sendiri. Pikirkan tentang bagaimana Anda mendorong diri Anda lagi dan lagi, seperti seorang pandai besi yang menumbuk besi panas, untuk membentuk pikiran, tubuh, dan kemampuan Anda menjadi sesuatu yang lebih kuat!! Itu 鍛錬.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_7022_pelatihan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '錬金術', 'alkimia', 46, 102, '<kanji>Tempering</kanji> <kanji>emas</kanji> adalah <kanji>teknik</kanji> yang sangat ajaib sehingga kita dapat menganggapnya sebagai <vocabulary>alchemy</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_7023_alkimia;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '鍛える', 'untuk-menempa', 46, 103, 'Kanjinya berarti <kanji>menempa</kanji>, jadi versi kosakata kata kerjanya adalah <vocabulary>to forge</vocabulary>. 

Saat ini 鍛える lebih sering berarti <vocabulary>untuk melatih</vocabulary>, dalam arti memperkuat tubuh Anda, mempertajam pikiran Anda, atau meningkatkan keterampilan Anda seiring berjalannya waktu. Anggap saja Anda seorang pandai besi, "menempa" beberapa aspek diri Anda menjadi versi yang lebih baik dari sebelumnya!', 'Jika Anda ingin <vocabulary>menempa</vocabulary> baja terkuat, pertama-tama Anda harus menguasai <reading>keytar</reading> (きた) — Anda tahu, salah satu keyboard yang Anda pegang dan mainkan seperti gitar. Semua pelatihan keytar itu akan memperkuat jari-jari Anda, dan mengubah Anda menjadi pandai besi terbaik.')
    RETURNING id INTO v_7024_untuk_menempa;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '穂', 'kepala-pabrik', 46, 104, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.', 'Bacaannya sama dengan yang Anda pelajari dengan kanji.')
    RETURNING id INTO v_7025_kepala_pabrik;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '稲穂', 'kepala-beras', 46, 105, '<kanji>kepala tanaman</kanji> dari <kanji>tanaman padi</kanji> adalah <vocabulary>kepala padi</vocabulary> atau <vocabulary>bulir padi</vocabulary>.', 'Kata ini menggunakan bacaan kun''yomi untuk 稲 (いな) dan 穂 (ほ). Anda mungkin belum familiar dengan bacaan いな, tapi ini muncul di banyak kata majemuk yang menggunakan 稲, jadi ada baiknya Anda mengetahuinya. Berikut ini mnemonik untuk membantu:

Untuk mendapatkan <vocabulary>beras</vocabulary> yang besar pada tanaman padi Anda, <read>makan</reading>t <reading>na</reading>chos (いな). Tentu saja tidak secara harfiah, tapi seperti… berikan pupuk nacho. Jika Anda membiarkan tanaman padi memakan nacho (pupuk), Anda akan mendapatkan hasil panen padi terbesar dan tertinggi yang pernah ada.')
    RETURNING id INTO v_7026_kepala_beras;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '皇帝', 'kaisar', 46, 106, '<kanji>berdaulat</kanji> <kanji>kaisar</kanji> Jepang juga merupakan <vocabulary>kaisar</vocabulary> di tempat lain juga!', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_7027_kaisar;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '帝', 'kaisar-jepang', 46, 107, 'Satu-satunya <kanji>yang berdaulat</kanji> adalah <vocabulary>Kaisar Jepang</vocabulary>, alias <vocabulary>kaisar Jepang</vocabulary>. Dengan sendirinya, 帝 hanya mengacu padanya, bukan kaisar lain di seluruh dunia.

帝 adalah istilah klasik untuk kaisar di Jepang. Ini ditemukan dalam karya sastra klasik, novel sejarah, atau drama periode yang berlatarkan zaman feodal Jepang. Dalam bahasa Jepang modern, kaisar Jepang disebut 天皇.', 'Untuk mengingat bacaan tersebut, pikirkan tentang bagaimana <vocabulary>Kaisar Jepang</vocabulary>, selalu dapat mengeluarkan "<reading>kartu saya</reading>" (みかど) ketika dia dalam masalah. Hal ini seperti sebuah "kartu truf" yang berada di atas segalanya, namun dengan sang kaisar dia selalu berada di atas sana, jadi itu adalah "kartu saya" baginya. Dan siapa yang akan berdebat dengan kaisar? Bukan aku.')
    RETURNING id INTO v_7028_kaisar_jepang;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '帝国', 'kerajaan', 46, 108, '<kanji>berdaulat</kanji> <kanji>negara</kanji> adalah negara yang merupakan bagian dari <vocabulary>kerajaan</vocabulary> miliknya sendiri.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_7029_kerajaan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '帝政', 'pemerintahan-kekaisaran', 46, 109, '<kanji>Berdaulat</kanji> <kanji>pemerintahan</kanji> dan <kanji>Politik</kanji> adalah mereka yang merupakan bagian dari <vocabulary>pemerintahan kekaisaran</vocabulary>. Jenis pemerintahan ini adalah <vocabulary>imperialisme</vocabulary>. Tentu saja, pada masa itu, jumlah pemerintahan yang berdaulat tidak sebanyak yang ada, jadi imperialisme adalah solusi yang tepat dalam kasus ini.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_7030_pemerintahan_kekaisaran;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '瞬く', 'untuk-berkedip', 46, 110, 'Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanjinya sendiri berarti <kanji>berkedip</kanji> dan versi kosakata kata kerjanya adalah <vocabulary>berkedip</vocabulary>.

Kata ini umumnya digunakan dalam frasa 瞬く間に (dalam sekejap mata).', '<reading>Mah ta-ta</reading> (またた) muncul, menyebabkan Anda <vocabulary>berkedip</vocabulary>. Saya tidak tahu apa itu "ta-ta", tapi saya yakin Anda bisa menemukan sesuatu yang layak untuk dilihat.')
    RETURNING id INTO v_7031_untuk_berkedip;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '瞬間', 'sejenak', 46, 111, '<kanji>berkedip</kanji> <kanji>interval waktu</kanji> adalah periode waktu yang sangat singkat. Ini adalah <vocabulary>instan</vocabulary> atau <vocabulary>momen</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_7032_sejenak;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '瞬時', 'momen', 46, 112, '<kanji>kedipan</kanji> dari <kanji>waktu</kanji> hanyalah <vocabulary>momen</vocabulary> atau <vocabulary>instan</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_7033_momen;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '白菊', 'krisan-putih', 46, 113, '<kanji>putih</kanji> <kanji>krisan</kanji> adalah <vocabulary>krisan putih</vocabulary>.', 'Pembacaan 白 sedikit berbeda dari biasanya. Itu adalah <reading>しら</reading> dan bukan しろ, jadi lakukan yang terbaik untuk mengingatnya. Hati-hati dengan rendaku.')
    RETURNING id INTO v_7034_krisan_putih;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '誇大', 'berlebihan', 46, 114, '<kanji>kebanggaan</kanji> Anda terlalu <kanji>besar</kanji>. Faktanya, Anda membuatnya lebih besar dari yang sebenarnya. Anda melakukan ini dengan <vocabulary>berlebihan</vocabulary> dan <vocabulary>hiperbola</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_7035_berlebihan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '瞬き', 'sekejap', 46, 115, '<kanji>kedipan</kanji> adalah <vocabulary>kedipan</vocabulary> dan juga <vocabulary>kedipan</vocabulary>, bergantung pada berapa banyak mata yang Anda gunakan.', '<vocabulary>Hanya perlu mengedipkan mata</vocabulary> untuk mendapatkan "<reading>Ma butter</reading>" (まばた) dari toko. Itu tersembunyi, dan mereka hanya mengeluarkannya jika Anda mengedipkan mata.')
    RETURNING id INTO v_7036_sekejap;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '一瞬', 'sejenak', 46, 116, '<kanji>Satu</kanji> <kanji>berkedip</kanji> terjadi dalam sekejap. Itulah <vocabulary>suatu saat</vocabulary> atau <vocabulary>suatu momen</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_7037_sejenak;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '誇る', 'berbesar-hati', 46, 117, 'Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanjinya sendiri berarti <kanji>kebanggaan</kanji> dan versi kata kerjanya adalah <vocabulary>bangga</vocabulary> atau <vocabulary>to membanggakan</vocabulary>.', '<reading>cangkul 子</reading> (ほこ) adalah anak yang selalu membawa cangkul, mengayunkannya, melakukan hal-hal bodoh dengannya. Namun dia sangat bangga akan hal itu, dan itu terlihat di wajahnya. Dia juga selalu membual tentang keterampilan cangkulnya.')
    RETURNING id INTO v_7038_berbesar_hati;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '誇張', 'berlebihan', 46, 118, 'Tunjukkan <kanji>kebanggaan</kanji> Anda dan <kanji>kembangkan</kanji>. Ini <vocabulary>berlebihan</vocabulary>, karena Anda sudah terlalu menonjolkan harga diri Anda.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_7039_berlebihan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '阻む', 'untuk-menggagalkan', 46, 119, 'Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanjinya sendiri berarti <kanji>menggagalkan</kanji> dan versi kosakata kata kerjanya adalah <vocabulary>to menggagalkan</vocabulary> atau <vocabulary>menghambat</vocabulary>.', 'Seseorang menghampiri Anda dan berkata "<reading>habbah</reading> habbah habbah" (seperti hubbah hubbah). Dia mencoba mem-flashmu atau apalah. Jadi, pergilah <vocabulary>untuk menggagalkan</vocabulary> dia dengan tasermu.')
    RETURNING id INTO v_7041_untuk_menggagalkan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '阻止', 'halangan', 46, 120, 'Jika Anda <kanji>menggagalkan</kanji> dan <kanji>menghentikan</kanji> sesuatu, Anda adalah <vocabulary>obstruction</vocabulary> atau <vocabulary>hindrance</vocabulary>.

阻止 adalah kata yang relatif formal yang berarti <vocabulary>mencegah</vocabulary> sesuatu terjadi, sering kali dengan menolak secara aktif daripada hanya menghentikan sesuatu secara pasif.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_7042_halangan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '阻害', 'halangan', 46, 121, '<kanji>Menggagalkan</kanji> dan <kanji>merusak</kanji> kemajuan sesuatu. Itu adalah <vocabulary>obstruction</vocabulary> dan <vocabulary>hambatan</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_7043_halangan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '黙る', 'untuk-diam', 46, 122, 'Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanjinya sendiri berarti <kanji>diam</kanji> sehingga versi kosakata kata kerjanya adalah <vocabulary>to shut up</vocabulary>.

黙る artinya <vocabulary>diam</vocabulary> atau <vocabulary>berhenti berbicara</vocabulary>, dengan arti sengaja menahan lidah. Ini adalah kata netral untuk mendeskripsikan seseorang yang memilih untuk tidak berbicara, namun bentuk tertentu — seperti 黙れ (diam) — bisa terdengar sangat kasar.', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi. Anda tidak belajar membaca dengan kanji ini, jadi inilah mnemonik untuk membantu Anda: 

Kamu menyuruh <vocabulary>temanmu untuk tutup mulut</vocabulary> karena dia tidak berhenti mengatakan dia "<reading>da ma</reading>n (だま)." Dia terus menyebut dirinya "da man" dan itu benar-benar membuatmu kesal, jadi kamu menyuruhnya <vocabulary>untuk diam</vocabulary> dan memaksanya <vocabulary>berhenti berbicara</vocabulary>. Sepertinya dia bukan da man.')
    RETURNING id INTO v_7044_untuk_diam;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '沈黙', 'kesunyian', 46, 123, 'Anda <kanji>tenggelam</kanji> dan <kanji>diam</kanji>. Anda masuk ke dalam <vocabulary>diam</vocabulary> dan <vocabulary>diam</vocabulary>. Ini cenderung menjadi keheningan atau kesunyian yang canggung.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_7045_kesunyian;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '黙殺', 'mengabaikan', 46, 124, '<kanji>Diam</kanji> dan <kanji>hentikan</kanji> pembicaraanmu atau aku akan mematikannya untukmu. Saya tidak mendengarkan ini. Saya <vocabulary>mengabaikan</vocabulary> itu.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_7046_mengabaikan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '俵', 'karung-jerami', 46, 125, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.', 'Kumpulan <vocabulary>karung jerami</vocabulary> atau <vocabulary>kantong jerami</vocabulary> ditumpuk satu sama lain untuk membuat menara (たわら). Bayangkan berjalan ke dalam menara karung ini dan bertanya-tanya bagaimana semuanya disatukan. Arsitektur yang buruk.')
    RETURNING id INTO v_7047_karung_jerami;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '土俵', 'cincin-sumo', 46, 126, 'Di atas <kanji>tanah</kanji> kami meletakkan <kanji>karung jerami</kanji> dalam lingkaran untuk menandai <vocabulary>cincin sumo</vocabulary>. Carilah beberapa gambar kata ini dalam bahasa Jepang dan Anda akan mengerti dengan tepat apa yang kami maksud. Lebih baik lagi, lihatlah sumo langsung!', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_7048_cincin_sumo;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '綿', 'tanaman-kapas', 46, 127, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.', 'Bacaannya bisa berupa bacaan kun''yomi atau on''yomi, jadi Anda punya pilihan disana. Mari kita belajar membaca わた. Bayangkan saja <reading>apa</reading> (わた) itu kapas? Apa itu? Apa maksudnya? Ajukan banyak pertanyaan “apa” tentang kapas kepada diri Anda sendiri.')
    RETURNING id INTO v_7049_tanaman_kapas;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '綿布', 'kain-katun', 46, 128, '<kanji>katun</kanji> <kanji>kain</kanji> adalah <vocabulary>kain katun</vocabulary> dari <vocabulary>bahan katun</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri. Hati-hati dengan rendaku.')
    RETURNING id INTO v_7050_kain_katun;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '架設', 'konstruksi', 46, 129, 'Jika Anda memiliki <kanji>rak</kanji> untuk <kanji>dipasang</kanji> di dinding, Anda perlu melakukan beberapa pekerjaan <vocabulary>konstruksi</vocabulary> dan <vocabulary>instalasi</vocabulary>. 

架設 cukup formal. Gunakan secara khusus untuk jenis konstruksi atau instalasi yang Anda lakukan dengan jembatan, kabel, saluran listrik, saluran pipa, dan benda lain yang membentang seperti "rak" dari satu titik ke titik lainnya.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_7051_konstruksi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '書架', 'rak-buku', 46, 130, '<kanji>tulis</kanji> <kanji>rak</kanji> adalah rak dengan tulisan di atasnya. Itu adalah <vocabulary>bookshelf</vocabulary> atau <vocabulary>bookcase</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_7052_rak_buku;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '担架', 'usungan', 46, 131, 'Ia akan <kanji>membawa</kanji> atau <kanji>menyandang</kanji> orang seperti <kanji>rak</kanji>. Benda yang membawa manusia ini adalah <vocabulary>tandu</vocabulary> atau <vocabulary>sampah</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_7053_usungan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '紛れもない', 'jelas', 46, 132, '紛らわしい berarti "membingungkan" atau "menyesatkan". Ini adalah sisi negatifnya (Anda dapat mengetahuinya dari ない), artinya kebalikan dari hal-hal tersebut. Kata ini <vocabulary>tidak salah lagi</vocabulary>, <vocabulary> tidak dapat disangkal </vocabulary>, dan <vocabulary>obvious</vocabulary>.', 'Bacaannya berasal dari 紛らわしい.')
    RETURNING id INTO v_7140_jelas;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '瞳孔', 'murid', 46, 133, '<kanji>murid</kanji> <kanji>lubang</kanji> Anda tetaplah <vocabulary>murid</vocabulary> Anda. Itu juga bisa disebut <vocabulary>pupilary</vocabulary> Anda.', 'Bacaannya sama dengan yang Anda pelajari dengan kanji!')
    RETURNING id INTO v_7509_murid;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '眼孔', 'rongga-mata', 46, 134, '<kanji>bola mata</kanji> <kanji>rongga</kanji> (lubang) Anda adalah tempat mata Anda berada. Ini adalah <vocabulary>rongga mata</vocabulary> Anda.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_7510_rongga_mata;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '寸暇', 'kenyamanan-saat-ini', 46, 135, 'Anda memiliki <kanji>pengukuran</kanji> (3,03 cm!) dari <kanji>waktu luang</kanji>. Ini bukanlah waktu luang yang banyak, namun ini adalah <vocabulary>menit luang</vocabulary> yang Anda miliki.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_7513_kenyamanan_saat_ini;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '魔', 'iblis', 46, 136, 'Kanji dan kata-katanya sama. Itu berarti mereka juga berbagi makna.', 'Bacaannya sama dengan kanji yang Anda pelajari, artinya Anda tahu bacaannya!')
    RETURNING id INTO v_7559_iblis;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '揺らぐ', 'untuk-mengguncang', 46, 137, 'Hei lihat! Jika Anda belum bosan, itu adalah kata kerja lain yang disertai dengan <kanji>goyang</kanji>! Yang ini artinya <vocabulary>mengguncang</vocabulary> juga!', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi. Anda mempelajari bacaan ini ketika mempelajari 揺る, 揺する, dan 揺れる jadi saya sangat berharap Anda dapat mengingatnya sekarang!')
    RETURNING id INTO v_7782_untuk_mengguncang;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '木綿', 'kapas', 46, 138, '<kanji>Kapas</kanji> yang berasal dari <kanji>pohon</kanji> tetaplah <vocabulary>kapas</vocabulary>!', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri selama Anda berhati-hati terhadap 木. Ia menghilangkan く dari もく sehingga bacaan ini hanya もめん.')
    RETURNING id INTO v_8692_kapas;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '遡る', 'untuk-menuju-hulu', 46, 139, 'Kata ini terdiri dari kanji dengan hiragana ditempelkan. Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanjinya sendiri berarti <kanji>pergi ke hulu</kanji>, jadi versi kosakata kata kerjanya adalah <vocabulary>to go upstream</vocabulary>.

遡る secara harafiah berarti pergi ke hulu melawan arus sungai, namun sering kali digunakan secara kiasan yang berarti kembali ke masa lalu atau menelusuri sesuatu kembali ke asalnya — gagasannya adalah bahwa Anda sedang "melawan arus" waktu. Anda akan melihatnya digunakan untuk hal-hal seperti sejarah, akar permasalahan, dan kenangan dengan frasa seperti 過去に遡る.', 'Bacaan kata ini, さかのぼる, terdengar sangat mirip dengan kombinasi dua kata lain yang sudah Anda ketahui: 逆らう dan 上る. Coba pikirkan: <vocabulary>untuk pergi ke hulu</vocabulary>, Anda perlu 逆らう (<reading>さか</reading>らう) dan 上る (<reading>のぼ</reading>る), karena Anda <em>melawan</em> arus saat Anda <em>naik</em> sungai.')
    RETURNING id INTO v_9467_untuk_menuju_hulu;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '賜る', 'untuk-diberikan', 46, 140, 'Kanji berarti <kanji>hibah</kanji>, namun di sini Anda berada di pihak penerima. Itu sebabnya versi kosakata kata kerja ini berarti <vocabulary>diberikan</vocabulary> atau <vocabulary>menerima</vocabulary>.

賜る adalah cara yang sangat formal dan rendah hati untuk berbicara tentang pemberian sesuatu. Ini digunakan ketika pembicara ingin menempatkan dirinya di bawah pemberi dan menunjukkan rasa hormat yang setinggi-tingginya. Anda akan melihatnya dalam pidato resmi, bahasa layanan pelanggan, atau pemberitahuan tertulis.', 'Bacaannya sama dengan yang Anda pelajari dengan kanji. Bersukacitalah, karena Anda telah diberikan sebuah kata dengan bacaan yang mudah!')
    RETURNING id INTO v_9486_untuk_diberikan;
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3017_keputusan, 'Keputusan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3017_keputusan, 'Dakwaan', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_3017_keputusan, 'けつ', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3017_keputusan, 'それでは、決を採りたいと思います。', 'Kalau begitu, kita akan melakukan pemungutan suara.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3017_keputusan, 'なかなか決が出ないみたいだね。', 'Tampaknya butuh waktu lama untuk mengambil keputusan, bukan?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3017_keputusan, 'この後、社長が決を下します。', 'Setelah itu, presiden mengambil keputusan.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3020_tertunda, 'Tertunda', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3020_tertunda, 'Belum terselesaikan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3020_tertunda, 'Bimbang', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_3020_tertunda, 'みけつ', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3020_tertunda, '未決状態の裁判は、当事者にとって大きなストレスです。', 'Kasus-kasus yang tertunda di pengadilan dapat menjadi sumber stres yang besar bagi pihak-pihak yang terlibat.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3020_tertunda, 'このプロジェクトは、予算が未決のため、まだ正式には進められません。', 'Proyek ini belum bisa berjalan secara resmi karena anggarannya belum diputuskan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3020_tertunda, '未決事項についての最終決定は、来月行われる予定です。', 'Keputusan akhir mengenai masalah yang belum terselesaikan dijadwalkan pada bulan depan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3020_tertunda, 'その事件は、証拠不足のため未決のまま保留されています。', 'Kasus tersebut ditunda karena kurangnya bukti.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6633_bersih, 'Bersih', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6633_bersih, 'Jala', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6633_bersih, 'Kelambu', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_6633_bersih, 'あみ', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6633_bersih, '網でセミを取ろうとしてるけど、中々取れない。', 'Saya mencoba menangkap jangkrik dengan jaring, tapi sepertinya saya tidak bisa menangkapnya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6633_bersih, 'その企業は規制の網をうまくくぐり抜けている。', 'Perusahaan dengan terampil menyiasati jaringan peraturan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6633_bersih, '漁師が海に網を投げた五分後には、もう魚が網にかかっていた。', 'Hanya lima menit setelah nelayan menebarkan jaringnya ke laut, ikan sudah tertangkap di dalamnya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6633_bersih, 'うちの娘が虫取り網が欲しいと鼻を鳴らしてせがむもんだから、ついつい買ってあげたんだよ。', 'Putri saya terus merengek dan memohon kepada saya agar diberi jaring kupu-kupu, jadi saya sendiri yang membelikannya jaring kupu-kupu.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6769_pintu_kasa, 'Pintu kasa', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6769_pintu_kasa, 'Layar Jendela', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_6769_pintu_kasa, 'あみど', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6769_pintu_kasa, '網戸をちゃんと閉めないと虫が入るよ！', 'Jika Anda tidak menutup layar dengan benar, bug akan masuk!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6769_pintu_kasa, 'あの古い網戸は本当に気持ち悪いね。', 'Pintu kasa tua itu sangat kotor.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6769_pintu_kasa, '庄司は網戸が破れているのに気がついた。', 'Shoji menyadari bahwa layar jendelanya robek.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6769_pintu_kasa, '最後に見たのは、網戸越しの静かな夜だった。', 'Hal terakhir yang kulihat adalah malam yang tenang di balik layar jendela.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6957_partikel_dasar, 'Partikel Dasar', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6957_partikel_dasar, 'Partikel', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_6957_partikel_dasar, 'そりゅうし', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6957_partikel_dasar, '「素粒子」って言葉は物理の教科書で見た事がある気がするよ。', 'Saya merasa seperti saya pernah melihat kata "partikel elementer" di buku teks fisika saya.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6958_onigiri, 'Onigiri', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6958_onigiri, 'Bola Nasi', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_6958_onigiri, 'おにぎり', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6958_onigiri, '私は息子がコンビニのお握りを食べることを禁止しました。', 'Saya melarang anak saya makan nasi kepal yang ada di toko swalayan.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6959_goreng, 'Goreng', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6959_goreng, 'Agedashi', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_6959_goreng, 'あげだし', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6959_goreng, 'これは出来たてホカホカの美味しい揚げ出し豆腐ですよ。	', 'Ini sepiring hot plate agedashi dōfu lezat yang baru saja saya buat.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6959_goreng, 'ナスを沢山買ったから今日の夕飯はナスの揚げ出しにしよう。', 'Saya membeli banyak terong, jadi ayo buat agedashi terong untuk makan malam hari ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6959_goreng, '揚げ出し豆腐は、豆腐に衣をまとわせて揚げ、だし汁などをかけた料理です。', 'Agedashi dōfu adalah hidangan di mana tahu dilapisi adonan, digoreng, dan disajikan dengan saus berbahan dasar dashi.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6960_berteriak, 'Berteriak', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6960_berteriak, 'Berteriak', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6960_berteriak, 'Sebuah Teriakan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6960_berteriak, 'Jeritan', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_6960_berteriak, 'さけび', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6960_berteriak, 'この人形に単四電池を入れて電源を入れると、叫び出すんです。', 'Jika Anda memasukkan baterai triple A ke dalam mainan ini dan menyalakannya, dia akan berteriak.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6961_berteriak, 'Berteriak', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6961_berteriak, 'Berteriak', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6961_berteriak, 'Berteriak', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_6961_berteriak, 'さけびごえ', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6961_berteriak, 'マミは叫び声を上げながら、ベーコンを上下に動かしました。', 'Mami mengangkat bacon ke atas dan ke bawah sambil berteriak.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6962_tumbuh, 'Tumbuh', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6962_tumbuh, 'Tunas', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6962_tumbuh, 'Menembak', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_6962_tumbuh, 'しんめ', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6962_tumbuh, 'このペースじゃ、夕方までにお茶の新芽を摘み終わるのは無理じゃないかな。', 'Jika terus begini, mustahil memetik seluruh tauge teh pada malam hari.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6963_ketidaksabaran, 'Ketidaksabaran', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_6963_ketidaksabaran, 'あせり', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6963_ketidaksabaran, '会議に行かなくちゃいけなかったのに、脚がやばいくらいつって全然動けなかったので、焦りを感じましたよ。', 'Saya mengalami kram yang parah di kaki saya dan saya tidak bisa menggerakkannya sama sekali meskipun saya harus pergi ke pertemuan, jadi saya merasa sangat tidak sabar.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6964_tinta, 'Tinta', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6964_tinta, 'Tinta Hitam', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_6964_tinta, 'すみ', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6964_tinta, 'おっと。墨が校章についちゃった。', 'Ups. Aku mendapat tinta di lencana sekolahku.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6965_lukisan_tinta, 'Lukisan Tinta', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_6965_lukisan_tinta, 'すみえ', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6965_lukisan_tinta, '彼女は、完成したと同時にその墨絵を真っすぐ立てました。', 'Segera setelah dia menyelesaikan lukisan tintanya, dia berdiri.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6966_tato, 'Tato', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_6966_tato, 'いれずみ', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6966_tato, 'その入れ墨には今までいくら費やしているんですか。', 'Berapa banyak uang yang Anda habiskan untuk tato?');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6967_merpati, 'Merpati', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6967_merpati, 'Merpati', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_6967_merpati, 'はと', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6967_merpati, '鳩たちは、一斉に飛び立ちました。', 'Merpati-merpati itu langsung lepas landas.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6968_tenang, 'Tenang', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6968_tenang, 'Lembut', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_6968_tenang, 'おだやか', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6968_tenang, '彼女は穏やかに眠っているようだった。', 'Wanita itu tampak tertidur dengan nyenyak.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6969_sesuai, 'Sesuai', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6969_sesuai, 'Wajar', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_6969_sesuai, 'おんとう', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6969_sesuai, '彼が嫌いだと言うわけじゃないんだけど、あそこであの発言はちょっと穏当でないなと思ったわけよ。', 'Bukannya saya tidak menyukainya, saya hanya menganggap ucapannya saat itu tidak pantas.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6970_tenang, 'Tenang', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6970_tenang, 'Tenang', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_6970_tenang, 'へいおん', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6970_tenang, '俺は平穏無事に暮らすことが嫌いだ。', 'Saya tidak suka hidup damai dan tenang.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6971_kerusuhan, 'Kerusuhan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6971_kerusuhan, 'Gelisah', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6971_kerusuhan, 'meresahkan', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_6971_kerusuhan, 'ふおん', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6971_kerusuhan, '今夜の三日月は、何だか不穏な感じがするわ。', 'Bulan sabit malam ini tampak sedikit meresahkan bagiku.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6972_membosankan, 'Membosankan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6972_membosankan, 'Keras kepala', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_6972_membosankan, 'にぶい', true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_6972_membosankan, 'のろい', false);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6972_membosankan, '現在妊娠中で、お腹に時々鈍い痛みを感じるんですが、これは普通ですか。', 'Saya sedang hamil dan terkadang saya merasakan sakit yang tumpul di perut saya. Apakah ini normal?');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6973_tidak_sensitif, 'Tidak sensitif', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6973_tidak_sensitif, 'Keras kepala', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6973_tidak_sensitif, 'Tumpul', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_6973_tidak_sensitif, 'どんかん', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6973_tidak_sensitif, 'あんたって、ほんと鈍感。今はフグの話はしたくないの。それくらい空気を読んでよ。', 'Kamu benar-benar tidak peka. Saya sedang tidak ingin membicarakan Fugu saat ini. Ambil petunjuk.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6974_senjata_tumpul, 'Senjata Tumpul', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_6974_senjata_tumpul, 'どんき', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6974_senjata_tumpul, '毎月の鈍器代はいくらですか。', 'Berapa banyak yang Anda keluarkan untuk membeli senjata tumpul setiap bulan?');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6975_iblis, 'Iblis', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6975_iblis, 'Setan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6975_iblis, 'Setan', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_6975_iblis, 'あくま', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6975_iblis, '今夜は悪魔と出かける気分じゃないの。', 'Aku sedang tidak mood untuk pergi keluar dengan setan malam ini.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6976_sihir, 'Sihir', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6976_sihir, 'Sihir', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_6976_sihir, 'まほう', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6976_sihir, 'わぁ、A級の新しい魔法を習得中なの？上手くいけば、すごいね！', 'Wow, apakah kamu mempelajari sihir peringkat A yang baru? Jika berjalan dengan baik, itu akan luar biasa!');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6977_sihir, 'Sihir', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6977_sihir, 'Seni Sulap', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_6977_sihir, 'まじゅつ', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6977_sihir, '「好き嫌いしないの！黒魔術だけじゃなくて白魔術もちゃんと勉強しなさい！」「はいはい。いつも同じこと言ってるよね。」「"はい"は一回でしょ！」', '"Jangan terlalu pilih-pilih! Seharusnya kamu tidak hanya mempelajari ilmu hitam, tetapi ilmu putih juga!" "Ya, ya. Kamu selalu mengatakan itu." "Satu ya sudah cukup!"');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6978_penyihir, 'Penyihir', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_6978_penyihir, 'まじょ', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6978_penyihir, '「ちょっと言ってもいいかな？」「もちろん。」「あのさ…やっぱいいや。」「ほら、白状しなって！」「えっと、実は私魔女なんだよね。」', '"Bolehkah aku memberitahumu sesuatu?" "Tentu saja." "Yah… sudahlah." "Oh ayolah, keluarlah." "Yah... sejujurnya, aku seorang penyihir."');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6979_asrama, 'Asrama', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6979_asrama, 'Asrama', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_6979_asrama, 'りょう', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6979_asrama, 'もしこの寮にご両親を宿泊させたいのであれば、この宿泊カードに記入をお願いします。', 'Jika Anda ingin orang tua Anda tinggal di asrama ini, bisakah Anda mengisi formulir pendaftaran ini?');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6980_siswa_asrama, 'Siswa Asrama', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6980_siswa_asrama, 'Pemondok', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_6980_siswa_asrama, 'りょうせい', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6980_siswa_asrama, '「新しい寮生はセクシー？」「ああ、セクシーだよ。フグなんて、すでに彼女に熱を上げているよ。」', '"Apakah siswi baru asrama itu seksi?" "Ya, benar. Fugu sudah tertarik padanya."');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6981_baki, 'Baki', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6981_baki, 'Festival Leluhur', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_6981_baki, 'おぼん', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6981_baki, '今日の宿題は、英語で「お盆」の説明を考えてくる事です。', 'PR hari ini adalah membuat penjelasan apa itu Obon dalam bahasa Inggris.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6982_lebih_tepatnya, 'Lebih tepatnya', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6982_lebih_tepatnya, 'Lebih baik', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6982_lebih_tepatnya, 'Alih-alih', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_6982_lebih_tepatnya, 'むしろ', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6982_lebih_tepatnya, 'お姫様よりも寧ろ猫になりたい。', 'Saya lebih suka menjadi kucing daripada seorang putri.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6983_sopan, 'Sopan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6983_sopan, 'Sopan', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_6983_sopan, 'ていねい', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6983_sopan, '有名人なのに、私の質問に丁寧に答えてくれて、すごく感激しました。', 'Aku sangat tersentuh karena meskipun seorang selebriti, mereka bersedia menjawab pertanyaanku dengan sangat sopan.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6984_ruang_rumah_sakit, 'Ruang rumah sakit', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_6984_ruang_rumah_sakit, 'びょうとう', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6984_ruang_rumah_sakit, 'あんたの病棟で、かっこいい男は見た？', 'Apakah Anda melihat pria keren di bangsal rumah sakit Anda?');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6985_saya, 'SAYA', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6985_saya, 'Aku', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6985_saya, 'Saya sendiri', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_6985_saya, 'わがはい', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6985_saya, '吾輩は猫である。名前はまだ無い。', 'Saya seekor kucing. Saya belum punya nama.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6985_saya, '吾輩が貴殿に久しく手紙を書いていなかったことをどうかお許しください。', 'Mohon maafkan saya karena sudah lama tidak menulis surat kepada Anda.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6986_novel, 'Novel', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6986_novel, 'Asli', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6986_novel, 'Inovatif', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6986_novel, 'Inventif', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_6986_novel, 'ざんしん', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6986_novel, 'すごく斬新なアイディアなので、後者よりも最初の案の方がいいと思います。', 'Saya lebih memilih ide yang pertama daripada yang kedua karena ini adalah ide yang jauh lebih orisinal.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6986_novel, '退屈を紛らすために音楽を聴くってのは聞いたことがあるけど、頭痛を紛らすためにバッハを弾くってのは斬新ですね。確かに脳内の血行は良くなりそうだけど。', 'Saya pernah mendengar tentang mendengarkan musik untuk menghilangkan kebosanan, tetapi memainkan Bach untuk meredakan sakit kepala — itu hal baru. Namun, tampaknya hal itu akan meningkatkan aliran darah ke otak.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6987_membunuh_dengan_pedang, 'Membunuh Dengan Pedang', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6987_membunuh_dengan_pedang, 'Menaruh Pedang', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_6987_membunuh_dengan_pedang, 'ざんさつ', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6987_membunuh_dengan_pedang, '僕のお気に入りのアニメキャラクターが斬殺されてしまった。', 'Karakter anime favorit saya dibantai.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6988_untuk_mengurangi, 'Untuk Mengurangi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6988_untuk_mengurangi, 'Untuk Memotong', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6988_untuk_mengurangi, 'Untuk Memotong', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_6988_untuk_mengurangi, 'きる', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6988_untuk_mengurangi, 'その侍は、早口言葉が上手く言えなければお前の舌を斬るぞ、と私に言いました。', 'Samurai itu memberitahuku bahwa dia akan memotong lidahku jika aku tidak bisa mengucapkan twister lidah dengan benar.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6989_kursi, 'Kursi', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_6989_kursi, 'いす', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6989_kursi, 'この椅子の色違いは置いてますか？', 'Apakah Anda memiliki kursi ini dengan warna lain?');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6990_waktu, 'Waktu', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6990_waktu, 'Bertahun-tahun', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_6990_waktu, 'さいげつ', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6990_waktu, 'それから半世紀の歳月が流れ、彼のことなんてほとんど忘れかけていた時に、私達は小さなパン屋さんで偶然再会したんです。', 'Setelah lima puluh tahun berlalu dan saya hampir mulai melupakan dia, kami bertemu satu sama lain di sebuah toko roti kecil.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6991_bertahun_tahun, 'Bertahun-tahun', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_6991_bertahun_tahun, 'さい', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6991_bertahun_tahun, '三十歳を過ぎてから、全身がすごく痒いんだよね。', 'Sejak saya berusia tiga puluh tahun, seluruh tubuh saya terasa gatal.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6997_menyegarkan, 'Menyegarkan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6997_menyegarkan, 'Dingin', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6997_menyegarkan, 'Segar', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_6997_menyegarkan, 'せいりょう', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6997_menyegarkan, '十分間にどれだけの炭酸入り清涼飲料水を飲めると思いますか？', 'Menurut Anda, berapa banyak minuman ringan berkarbonasi yang dapat Anda minum dalam sepuluh menit?');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6998_angin_sejuk, 'Angin Sejuk', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6998_angin_sejuk, 'Angin yang Menyegarkan', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_6998_angin_sejuk, 'りょうふう', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6998_angin_sejuk, '窓を開けると、心地よい涼風とともに美しいピアノの音色が舞い込んできた。', 'Ketika saya membuka jendela, ada angin sepoi-sepoi yang sejuk dan suara piano yang indah.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6999_monyet_lihat_monyet_lakukan, 'Monyet Lihat Monyet Lakukan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6999_monyet_lihat_monyet_lakukan, 'Peniruan Tanpa Pikiran', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_6999_monyet_lihat_monyet_lakukan, 'さるまね', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6999_monyet_lihat_monyet_lakukan, '猿真似をするのはよせ。みっともない。', 'Berhentilah melakukan apa pun yang dilakukan orang lain tanpa berpikir panjang. Menyedihkan sekali.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7000_monyet, 'Monyet', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7000_monyet, 'さる', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7000_monyet, 'その飼育員さんが、猿たちが囲いから出ることを防ぎました。', 'Penjaga kebun binatang itu mencegah monyet-monyet itu meninggalkan kandangnya.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7001_murid, 'Murid', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7001_murid, 'ひとみ', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7001_murid, '父の再婚相手の気怠い瞳を見ると、いつもたじろいでしまいます。', 'Saat aku menatap mata ibu tiriku yang lesu, aku selalu meringis.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7002_kunci, 'Kunci', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7002_kunci, 'Kunci', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7002_kunci, 'かぎ', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7002_kunci, 'いや〜鍵を中に置いたまま車に鍵をかけちゃってさ、今鍵屋さんが来るのを待ってるんだよ。', 'Ya, saya mengunci diri di luar mobil dan menunggu tukang kunci datang.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7003_nol, 'Nol', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7003_nol, 'れい', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7003_nol, '母は、僕が零点を取ったことにショックを受けて寝込んでしまった。', 'Ibu saya sangat terkejut karena saya mendapat nilai nol pada ujian saya sehingga dia terbaring di tempat tidur.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7004_di_bawah_nol, 'Di bawah Nol', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7004_di_bawah_nol, 'Di Bawah Nol', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7004_di_bawah_nol, 'れいか', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7004_di_bawah_nol, '零下十度だろうが二十度だろうがに関係なく、洗い物はここでします。', 'Tidak masalah jika suhunya sepuluh atau dua puluh di bawah nol, kami mencucinya di sini.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7005_tengah_malam, 'Tengah malam', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7005_tengah_malam, 'Jam dua belas', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7005_tengah_malam, 'れいじ', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7005_tengah_malam, '零時頃、彼女が町中を一人で猛スピードで歩いているのを見かけました。', 'Saya melihatnya berjalan sangat cepat di pusat kota sendirian sekitar tengah malam.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7006_poin_nol, 'Poin Nol', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7006_poin_nol, 'Tanda Nol', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7006_poin_nol, 'れいてん', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7006_poin_nol, '最大公約数を公分母にするということが全く理解できず、試験で零点を取ってしまった。', 'Saya tidak mengerti cara menjadikan pembagi persekutuan terbesar menjadi penyebut yang sama, jadi saya mendapat poin nol dalam ujian.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7008_pergi, 'Pergi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7008_pergi, 'Permainan Pergi', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7008_pergi, 'ご', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7008_pergi, '彼は子どものころから碁を打っています。', 'Dia telah bermain Go sejak kecil.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7008_pergi, '年寄りたちと碁は打ちたくないんだよね。', 'Aku hanya tidak ingin bermain Go dengan orang tua.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7008_pergi, '父は碁で負けたことをずっと根に持っているんだよ。', 'Ayah saya masih menyimpan dendam karena kalah di Go.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7008_pergi, '碁石を盤にパチっと打ちつけるイメージから、「碁を打つ」という言葉が使われます。', 'Ungkapan "碁を打つ" berasal dari gambaran ketukan ringan batu Go ke papan dengan suara yang tajam.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7009_pergi, 'Pergi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7009_pergi, 'Permainan Pergi', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7009_pergi, 'いご', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7009_pergi, '囲碁教室に通い始めてから、少し上達しました。', 'Saya mengalami sedikit peningkatan sejak saya mulai mengikuti kelas Go.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7009_pergi, '週末に友達と囲碁を打ちました。', 'Saya bermain Go dengan seorang teman selama akhir pekan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7009_pergi, '彼は囲碁トーナメントの決勝に進みました。', 'Dia melaju ke final turnamen Go.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7009_pergi, '僕が囲碁を始めたきっかけは、漫画だった。', 'Manga itulah yang membuat saya menyukai Go.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7009_pergi, '毎週月曜日にこの棋院に来て、囲碁を練習しています。', 'Saya datang ke klub go ini setiap hari Senin dan berlatih go.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7010_ayo_naik, 'Ayo naik', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7010_ayo_naik, 'ごばん', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7010_ayo_naik, '濡れ衣だよ。じいちゃんの碁盤を壊したのは俺じゃないよ。', 'Itu tuduhan palsu. Saya tidak merusak papan Go milik kakek.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7011_pergi_ke_ruang_tamu, 'Pergi ke Ruang Tamu', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7011_pergi_ke_ruang_tamu, 'Pergi Bermain Ruang Tamu', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7011_pergi_ke_ruang_tamu, 'ごかいしょ', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7011_pergi_ke_ruang_tamu, '今朝俺たちの碁会所を覗き見していた男を取っ捕まえてやったよ。', 'Aku memergokinya mengintip ke ruang tamu Go kami pagi ini.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7012_konsesi_asing, 'Konsesi Asing', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7012_konsesi_asing, 'Permukiman Asing', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7012_konsesi_asing, 'そかい', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7012_konsesi_asing, '昔の上海とフランス租界について知りたいのなら、彼がそれについては詳しいよ。', 'Jika Anda ingin tahu tentang sejarah Konsesi Perancis Shanghai, dia tahu banyak tentang itu.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7013_pajak, 'Pajak', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7013_pajak, 'Perpajakan', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7013_pajak, 'そぜい', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7013_pajak, '田んぼには特定の租税が課されているんですか？', 'Apakah ada pajak khusus untuk sawah?');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7014_gelembung, 'Gelembung', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7014_gelembung, 'Busa', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7014_gelembung, 'あわ', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7014_gelembung, 'マリファナを一服した瞬間、男は口から泡を吹いて地面に倒れ込んだ。', 'Saat dia menghirup ganja, dia jatuh ke tanah dengan mulut berbusa.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7015_gelembung_udara, 'Gelembung Udara', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7015_gelembung_udara, 'きほう', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7015_gelembung_udara, '一番最初にしなくちゃいけないことが、陶芸用の粘土から気泡を取り除くことです。', 'Hal pertama yang harus kita lakukan adalah menghilangkan gelembung udara dari tanah liat tembikar.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7016_busa, 'Busa', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7016_busa, 'Gelembung', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7016_busa, 'すいほう', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7016_busa, 'データを保存する前にブラウザがクラッシュしてしまったため、長文のメッセージを書いていた努力が水泡に帰してしまった。', 'Browser saya mogok sebelum saya menyimpan data sehingga usaha saya untuk menulis pesan panjang berakhir dengan kegagalan.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7017_berbusa, 'Berbusa', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7017_berbusa, 'mendesis', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7017_berbusa, 'はっぽう', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7017_berbusa, '発泡スチロールはこの袋に入れてもらってもいい？他のゴミとは分別して捨てるんだよね。', 'Bisakah Anda memasukkan styrofoam ke dalam kantong plastik ini? Kami membuang sisa sampah secara terpisah.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7018_kebiasaan_buruk, 'Kebiasaan Buruk', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7018_kebiasaan_buruk, 'Kebiasaan', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7018_kebiasaan_buruk, 'くせ', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7018_kebiasaan_buruk, '突き指が癖になってしまっているんです。', 'Saya memiliki kebiasaan jari saya terkilir.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7019_kurungan, 'Kurungan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7019_kurungan, 'Hukuman penjara', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7019_kurungan, 'ゆうへい', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7019_kurungan, '専業主婦になってからというもの、まるで捕虜になって、台所に幽閉されてでもいるかのようだわ。', 'Setelah menjadi ibu rumah tangga, saya seperti menjadi tawanan perang, terkurung di dapur.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7020_hantu, 'Hantu', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7020_hantu, 'Momok', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7020_hantu, 'Momok', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7020_hantu, 'Hantu', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7020_hantu, 'ゆうれい', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7020_hantu, '「今日、学校サボってゲーセン行こうぜ。人生は一度っきりだしな！」「そうかな。僕はよく幽霊を見るから、死後の世界を信じてるんだけど。」', '"Ayo bolos sekolah dan pergi ke arcade hari ini. YOLO!" "Kurasa tidak. Aku selalu melihat hantu, jadi aku percaya adanya dunia setelah kematian."');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7021_frase_favorit, 'Frase Favorit', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7021_frase_favorit, 'Frase menarik', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7021_frase_favorit, 'Kebiasaan Mengatakan', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7021_frase_favorit, 'くちぐせ', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7021_frase_favorit, '「何々が旬の季節です」ってあのシェフの口癖だよね。', 'Slogan koki itu adalah, "Ini dan itu sedang musimnya."');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7022_pelatihan, 'Pelatihan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7022_pelatihan, 'Disiplin', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7022_pelatihan, 'たんれん', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7022_pelatihan, '発音が一晩で上手くなる人なんていません。発音を上達させるには、継続的かつ正しい鍛錬が必要です。', 'Tidak ada yang bisa mendapatkan pengucapan sempurna dalam semalam. Untuk meningkatkan pengucapan Anda, Anda memerlukan pelatihan yang berkelanjutan dan tepat.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7023_alkimia, 'Alkimia', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7023_alkimia, 'れんきんじゅつ', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7023_alkimia, 'ある錬金術士が鉛を金に変えようとして失敗した日、外は雨がザザ降りでした。', 'Hujan turun deras di luar pada hari sang alkemis gagal mengubah timah menjadi emas.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7024_untuk_menempa, 'Untuk menempa', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7024_untuk_menempa, 'Untuk Melatih', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7024_untuk_menempa, 'Untuk Marah', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7024_untuk_menempa, 'きたえる', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7024_untuk_menempa, '毎日走って体を鍛えているんです。', 'Saya berlari setiap hari untuk meningkatkan kebugaran fisik saya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7024_untuk_menempa, '彼は海外で経験を積み、技術を鍛えました。', 'Ia memperoleh pengalaman di luar negeri dan mengasah keterampilannya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7024_untuk_menempa, '昔は、こうやってハンマーを使って鉄を打ち鍛えて形を整えていたんですよ。', 'Dahulu orang menggunakan palu untuk menempa besi, membentuknya dengan cara dipalu berkali-kali seperti ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7024_untuk_menempa, '生まれたての頃からミッチリ鍛えたおかげで、息子は今ピアノの天才児と呼ばれています。', 'Berkat pelatihan ketat yang saya berikan kepadanya sejak lahir, putra saya kini disebut sebagai anak ajaib dalam bermain piano.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7025_kepala_pabrik, 'Kepala Pabrik', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7025_kepala_pabrik, 'Telinga Tanaman', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7025_kepala_pabrik, 'ほ', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7025_kepala_pabrik, '私達はお腹がペコペコだったので、麦の穂を集めてそのまま生で食べたんです。', 'Kami sangat lapar sehingga kami mengumpulkan bulir gandum dan memakannya mentah-mentah.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7026_kepala_beras, 'Kepala Beras', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7026_kepala_beras, 'Telinga Beras', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7026_kepala_beras, 'いなほ', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7026_kepala_beras, 'お米は私達の主食ですが、だからといって日本人全員が風に靡く美しい金色の稲穂を見た事がある訳ではありません。', 'Nasi adalah makanan pokok kita, namun bukan berarti semua orang Jepang pernah melihat nasi yang indah dan berwarna keemasan tertunduk tertiup angin.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7027_kaisar, 'Kaisar', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7027_kaisar, 'こうてい', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7027_kaisar, '皇帝はお酒には目がない。', 'Kaisar memiliki kelemahan demi kepentingannya.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7028_kaisar_jepang, 'Kaisar Jepang', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7028_kaisar_jepang, 'Kaisar Jepang', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7028_kaisar_jepang, 'みかど', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7028_kaisar_jepang, '人々は、帝がお出でになるということで、国旗を掲げました。', 'Orang-orang mengibarkan bendera nasional untuk kunjungan Kaisar Jepang.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7029_kerajaan, 'Kerajaan', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7029_kerajaan, 'ていこく', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7029_kerajaan, 'トーフグ帝国では、殺人事件の時効は廃止されました。', 'Undang-undang pembatasan pembunuhan dihapuskan di Kekaisaran Tofugu.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7030_pemerintahan_kekaisaran, 'Pemerintahan Kekaisaran', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7030_pemerintahan_kekaisaran, 'Imperialisme', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7030_pemerintahan_kekaisaran, 'ていせい', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7030_pemerintahan_kekaisaran, 'ローマ帝政時代、皇帝はその村の人達に目をつけていました。', 'Pada masa Kekaisaran Romawi, kaisar mengawasi masyarakat desa.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7031_untuk_berkedip, 'Untuk Berkedip', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7031_untuk_berkedip, 'Untuk Berkedip', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7031_untuk_berkedip, 'Untuk berkelap-kelip', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7031_untuk_berkedip, 'またたく', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7031_untuk_berkedip, '辺りの景色は瞬く間に雪に覆われ、真っ白になった。', 'Pemandangannya tertutup salju dalam sekejap dan semuanya menjadi putih.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7032_sejenak, 'Sejenak', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7032_sejenak, 'Instan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7032_sejenak, 'Momen', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7032_sejenak, 'しゅんかん', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7032_sejenak, '蜘蛛の巣にぶつかった瞬間に、人は突然空手の達人へと変身する。', 'Saat mereka masuk ke jaring laba-laba, orang-orang tiba-tiba berubah menjadi ahli karate.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7032_sejenak, 'その瞬間、彼女の目に小さな光が灯った。', 'Saat itu, cahaya kecil muncul di matanya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7032_sejenak, '時計が時刻を告げた瞬間、全ての通信網が途絶えました。', 'Saat jam menunjukkan waktu, semua jaringan komunikasi berhenti.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7033_momen, 'Momen', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7033_momen, 'Instan', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7033_momen, 'しゅんじ', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7033_momen, '言いたかったことを彼が瞬時にズバッと言ってくれたので、とても感心しました。', 'Saya sangat terkesan padanya ketika dia mengatakan bahwa saat ini saya akan mengatakannya.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7034_krisan_putih, 'Krisan Putih', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7034_krisan_putih, 'しらぎく', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7034_krisan_putih, '家の前に大量の白菊を並べるなんて、迷惑行為以上のことだよ。だって、白菊は日本では死者を弔う花だからね。言ってる意味が分かりますか？', 'Meletakkan seikat bunga krisan putih di depan rumah lebih dari sekadar merepotkan karena di Jepang digunakan untuk berkabung atas kematian. Apakah Anda mengerti apa yang saya katakan?');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7035_berlebihan, 'Berlebihan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7035_berlebihan, 'Hiperbola', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7035_berlebihan, 'こだい', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7035_berlebihan, '四人に一人が広告は誇張されていると思っていることは知っていますが、私は全部が全部誇大広告ではないと思うんです。', 'Saya tahu satu dari empat orang menganggap iklan itu berlebihan, namun menurut saya tidak semua iklan itu berlebihan.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7036_sekejap, 'Sekejap', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7036_sekejap, 'Berkedip', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7036_sekejap, 'Mengedip', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7036_sekejap, 'まばたき', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7036_sekejap, '瞬きせずに、この絵を見続けてください。', 'Tolong jangan berkedip dan terus lihat gambarnya.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7037_sejenak, 'Sejenak', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7037_sejenak, 'Sesaat', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7037_sejenak, 'いっしゅん', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7037_sejenak, '「お前には捕まらないぞ！」「捕まえたっ！」「うわっ！速い！一瞬だったな。でも、大人げないよ。子どもなんだからもう少し手加減してよ。」', '"Kamu tidak akan pernah bisa menangkapku!" "Mengerti!" "Apa! Cepat sekali! Kamu menangkapku dalam sekejap, tapi itu kekanak-kanakan. Kamu harus bersikap lebih lunak pada anakmu."');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7037_sejenak, '昨日、アパートの契約更新したんだけど、去年から家賃が500ドルも上がったってどういうこと？一瞬引っ越そうかと思ったよ。', 'Saya memperbarui sewa apartemen saya kemarin, dan harga sewanya naik $500 dari tahun lalu — ada apa dengan itu? Saya berpikir untuk pindah sebentar.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7038_berbesar_hati, 'Berbesar hati', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7038_berbesar_hati, 'Untuk Dibanggakan', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7038_berbesar_hati, 'ほこる', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7038_berbesar_hati, 'この短編映画では、日本が世界に誇るロボット産業をテーマとしています。', 'Film pendek ini berkisah tentang industri robotika yang dibanggakan Jepang kepada dunia.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7039_berlebihan, 'Berlebihan', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7039_berlebihan, 'こちょう', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7039_berlebihan, 'レビューで今までで最高のカメラだとか何とか書かれてたけど、それはやっぱり誇張だったね。', 'Ulasannya mengatakan bahwa itu adalah kamera terbaik yang pernah ada, tapi itu berlebihan seperti yang saya kira.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7041_untuk_menggagalkan, 'Untuk menggagalkan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7041_untuk_menggagalkan, 'Untuk menghambat', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7041_untuk_menggagalkan, 'Untuk Mencegah', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7041_untuk_menggagalkan, 'はばむ', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7041_untuk_menggagalkan, '誰かが、彼が今日娘さんを連れてバージンロードを歩くのを阻もうとしているようなんです。', 'Sepertinya seseorang berusaha mencegahnya mengantar putrinya ke pelaminan hari ini.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7042_halangan, 'Halangan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7042_halangan, 'Halangan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7042_halangan, 'Mencegah', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7042_halangan, 'そし', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7042_halangan, 'その証人が法廷で証言するのを、何としてでも阻止するんだ。', 'Lakukan apa pun untuk mencegah saksi tersebut memberikan kesaksian di pengadilan.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7043_halangan, 'Halangan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7043_halangan, 'Inhibisi', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7043_halangan, 'そがい', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7043_halangan, 'カフェインを含む飲み物は、睡眠を阻害します。', 'Minuman yang mengandung kafein menghambat tidur.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7044_untuk_diam, 'Untuk Diam', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7044_untuk_diam, 'Diam', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7044_untuk_diam, 'Untuk Berhenti Berbicara', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7044_untuk_diam, 'だまる', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7044_untuk_diam, 'どうしたの？どうして黙っているの？', 'Ada apa? Kenapa kamu tidak bicara?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7044_untuk_diam, '彼は急に黙りこんだ。', 'Dia tiba-tiba terdiam.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7044_untuk_diam, 'その質問に、みんな黙ってしまった。', 'Semua orang terdiam mendengar pertanyaan itu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7044_untuk_diam, '父はいつも、怒ると黙るんですよ。', 'Ayah saya selalu diam ketika dia marah.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7044_untuk_diam, 'うるさい！黙れ！', 'Kamu terlalu berisik, diamlah!');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7045_kesunyian, 'Kesunyian', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7045_kesunyian, 'Diam', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7045_kesunyian, 'Keheningan yang Canggung', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7045_kesunyian, 'ちんもく', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7045_kesunyian, '気まずい沈黙の後、私は塩の入った小瓶を掴みました。', 'Ada keheningan yang canggung dan saya mengambil tempat garam.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7046_mengabaikan, 'Mengabaikan', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7046_mengabaikan, 'もくさつ', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7046_mengabaikan, '警察はその地域では多くの犯罪を黙殺しています。', 'Polisi mengabaikan sebagian besar kejahatan di daerah ini.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7047_karung_jerami, 'Karung Jerami', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7047_karung_jerami, 'Tas Jerami', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7047_karung_jerami, 'たわら', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7047_karung_jerami, '俵先生は、自分の名前が俵なので、あの金の米俵のキーホルダーを鞄に付けていると言っていましたよ。', 'Tawara-sensei memberi tahu kami bahwa namanya berarti tas jerami dan itulah mengapa dia memiliki gantungan kunci karung beras jerami emas di tasnya.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7048_cincin_sumo, 'Cincin Sumo', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7048_cincin_sumo, 'どひょう', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7048_cincin_sumo, '誰かが土俵にパンの欠片を投げ込みました。', 'Seseorang melemparkan sepotong roti ke arena sumo.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7049_tanaman_kapas, 'Tanaman Kapas', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7049_tanaman_kapas, 'Bahan Katun', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7049_tanaman_kapas, 'わた', true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7049_tanaman_kapas, 'めん', false);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7049_tanaman_kapas, '綿菓子が大好きなんです。', 'Saya suka permen kapas.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7049_tanaman_kapas, '手芸用の綿はどこで買えますか？', 'Dimana saya bisa membeli bahan katun untuk kerajinan tangan?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7049_tanaman_kapas, 'ヌイグルミから綿がはみ出ている。', 'Kapasnya mencuat dari boneka binatang ini');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7050_kain_katun, 'Kain Katun', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7050_kain_katun, 'Bahan Katun', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7050_kain_katun, 'めんぷ', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7050_kain_katun, '水をよく吸収するので、私は綿布を布巾に使います。', 'Saya menggunakan kain katun sebagai lap piring karena dapat menyerap air dengan baik.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7051_konstruksi, 'Konstruksi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7051_konstruksi, 'Instalasi', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7051_konstruksi, 'かせつ', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7051_konstruksi, '今まで一度も橋梁を架設したことがありません。', 'Saya belum pernah membangun jembatan sebelumnya.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7052_rak_buku, 'Rak buku', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7052_rak_buku, 'Rak buku', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7052_rak_buku, 'しょか', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7052_rak_buku, 'わっ！うちの父さん、お前のと全く同じ書架を持ってるぜ。お前もIKEAで買ったの？', 'Wow! Ayahku memiliki rak buku yang sama persis denganmu. Apakah Anda membelinya di IKEA?');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7053_usungan, 'Usungan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7053_usungan, 'Sampah', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7053_usungan, 'たんか', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7053_usungan, 'あそこ家の息子さん、交通事故に巻き込まれて担架で病院に担ぎ込まれたんだけど、結局植物状態になっちゃったんだって。', 'Putra mereka mengalami kecelakaan mobil dan dibawa ke rumah sakit dengan tandu, namun ia berakhir dalam kondisi vegetatif.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7140_jelas, 'Jelas', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7140_jelas, 'Tak terbantahkan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7140_jelas, 'Jelas', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7140_jelas, 'まぎれもない', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7140_jelas, '彼女は紛れもない田舎っぺの女の子だ。', 'Dia adalah gadis udik desa yang tidak salah lagi.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7509_murid, 'Murid', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7509_murid, 'どうこう', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7509_murid, 'いつ、どうして瞳孔の縮小と拡張が起きるのか、説明できますか？', 'Bisakah Anda menjelaskan kapan dan mengapa kontraksi dan perluasan pupil terjadi?');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7510_rongga_mata, 'Rongga mata', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7510_rongga_mata, 'がんこう', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7510_rongga_mata, '蒸しタオルで眼孔を覆うと気持ち良いですよ。', 'Rasanya nikmat sekali saat Anda menutup rongga mata dengan handuk kukus.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7513_kenyamanan_saat_ini, 'Kenyamanan Saat Ini', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7513_kenyamanan_saat_ini, 'Menit Gratis', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7513_kenyamanan_saat_ini, 'すんか', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7513_kenyamanan_saat_ini, '夫は、いつも寸暇を惜しんで働いています。', 'Suami saya mencurahkan setiap waktu luangnya untuk bekerja.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7559_iblis, 'Iblis', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7559_iblis, 'Setan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7559_iblis, 'Roh Jahat', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7559_iblis, 'ま', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7559_iblis, '今は「魔の二歳児」ですからねー。', 'Sekarang menjadi pasangan yang buruk, Anda tahu.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7782_untuk_mengguncang, 'Untuk Mengguncang', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7782_untuk_mengguncang, 'Bergoyang', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7782_untuk_mengguncang, 'Gemetar', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7782_untuk_mengguncang, 'ゆらぐ', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7782_untuk_mengguncang, 'それっぽっちのことで、気持ちが揺らぐんだ。', 'Perasaanmu terombang-ambing karena sesuatu yang sepele, ya?');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8692_kapas, 'Kapas', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8692_kapas, 'もめん', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8692_kapas, '木綿のハンカチをプレゼントしてもらいました。', 'Saya mendapat saputangan katun ini sebagai hadiah.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9467_untuk_menuju_hulu, 'Untuk Menuju Hulu', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9467_untuk_menuju_hulu, 'Untuk Kembali ke Masa Lalu', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9467_untuk_menuju_hulu, 'Untuk Melacak Kembali', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_9467_untuk_menuju_hulu, 'さかのぼる', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9467_untuk_menuju_hulu, '話は十年前に遡る。', 'Ceritanya kembali ke sepuluh tahun yang lalu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9467_untuk_menuju_hulu, '原因を遡って調べた。', 'Kami menyelidiki penyebabnya dengan menelusurinya kembali.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9467_untuk_menuju_hulu, '事件の経緯を遡って説明した。', 'Saya menjelaskan kejadian tersebut dengan menelusuri jalannya kejadian kembali ke awal.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9467_untuk_menuju_hulu, 'サケが川を遡るのをYouTubeで見ました。', 'Saya menyaksikan salmon berenang di hulu sungai di YouTube.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9486_untuk_diberikan, 'Untuk Diberikan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9486_untuk_diberikan, 'Untuk Menerima', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9486_untuk_diberikan, 'Untuk Diberikan', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_9486_untuk_diberikan, 'たまわる', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9486_untuk_diberikan, 'このような機会を賜り、誠に光栄に存じます。', 'Merupakan suatu kehormatan besar untuk diberikan kesempatan seperti itu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9486_untuk_diberikan, '多大なるご協力を賜り、心より感謝申し上げます。', 'Kami dengan tulus mengucapkan terima kasih yang tulus atas kerja sama Anda yang luar biasa.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9486_untuk_diberikan, '社長より直々に貴重なお言葉を賜りましたので、ここにご紹介させていただきます。', 'Saya mendapat kehormatan langka untuk menerima beberapa sambutan langsung dari presiden kita, dan saya ingin membaginya dengan Anda di sini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9486_untuk_diberikan, '日頃よりご高配を賜り、厚く御礼申し上げます。', 'Kami dengan rendah hati mengucapkan terima kasih yang sebesar-besarnya atas perhatian baik yang selalu Anda berikan kepada kami.');

  -- 4. PREREQUISITES
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_1941_tinta_hitam, id FROM items WHERE character = '黒' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_1941_tinta_hitam, id FROM items WHERE character = '土' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_1942_merpati, id FROM items WHERE character = '九' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_1942_merpati, id FROM items WHERE character = '鳥' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_1943_tenang, id FROM items WHERE character = '禾' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_1943_tenang, id FROM items WHERE character = '⺤' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_1943_tenang, id FROM items WHERE character = 'ヨ' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_1943_tenang, id FROM items WHERE character = '心' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_1944_membosankan, id FROM items WHERE character = '金' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_1944_membosankan, id FROM items WHERE character = '屯' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_1945_iblis, id FROM items WHERE character = '广' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_1945_iblis, id FROM items WHERE character = '木' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_1945_iblis, id FROM items WHERE character = '鬼' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_1946_asrama, id FROM items WHERE character = '宀' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_1946_asrama, id FROM items WHERE character = '尞' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_1947_baki, id FROM items WHERE character = '分' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_1947_baki, id FROM items WHERE character = '皿' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_1948_bangunan, id FROM items WHERE character = '木' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_1948_bangunan, id FROM items WHERE character = '東' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_1949_saya, id FROM items WHERE character = '五' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_1949_saya, id FROM items WHERE character = '口' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_1950_mengiris, id FROM items WHERE character = '車' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_1950_mengiris, id FROM items WHERE character = '斤' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_1951_lebih_tepatnya, id FROM items WHERE character = '宀' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_1951_lebih_tepatnya, id FROM items WHERE character = '心' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_1951_lebih_tepatnya, id FROM items WHERE character = '罒' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_1951_lebih_tepatnya, id FROM items WHERE character = '丁' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_1952_kursi, id FROM items WHERE character = '木' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_1952_kursi, id FROM items WHERE character = '奇' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_1953_bertahun_tahun, id FROM items WHERE character = '止' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_1953_bertahun_tahun, id FROM items WHERE character = '戌' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_1953_bertahun_tahun, id FROM items WHERE character = '小' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_1955_monyet, id FROM items WHERE character = '犭' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_1955_monyet, id FROM items WHERE character = '土' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_1955_monyet, id FROM items WHERE character = '口' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_1955_monyet, id FROM items WHERE character = '/radicals/kick.svg' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_1956_murid, id FROM items WHERE character = '目' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_1956_murid, id FROM items WHERE character = '立' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_1956_murid, id FROM items WHERE character = '里' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_1957_kunci, id FROM items WHERE character = '金' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_1957_kunci, id FROM items WHERE character = '廴' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_1957_kunci, id FROM items WHERE character = '聿' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_1958_nol, id FROM items WHERE character = '雨' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_1958_nol, id FROM items WHERE character = '令' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_1959_pergi, id FROM items WHERE character = '其' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_1959_pergi, id FROM items WHERE character = '石' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_1960_tarif, id FROM items WHERE character = '禾' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_1960_tarif, id FROM items WHERE character = '且' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_1961_terpencil, id FROM items WHERE character = '幺' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_1961_terpencil, id FROM items WHERE character = '山' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_1962_gelembung, id FROM items WHERE character = '氵' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_1962_gelembung, id FROM items WHERE character = '包' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_1963_kebiasaan, id FROM items WHERE character = '疒' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_1963_kebiasaan, id FROM items WHERE character = '辟' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_1964_menempa, id FROM items WHERE character = '金' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_1964_menempa, id FROM items WHERE character = '/radicals/comb.svg' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_1964_menempa, id FROM items WHERE character = '殳' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_1965_tempering, id FROM items WHERE character = '金' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_1965_tempering, id FROM items WHERE character = '東' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_1966_kepala_pabrik, id FROM items WHERE character = '禾' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_1966_kepala_pabrik, r_400_kebaikan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_1967_berdaulat, id FROM items WHERE character = '立' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_1967_berdaulat, id FROM items WHERE character = '巾' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_1968_berkedip, id FROM items WHERE character = '目' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_1968_berkedip, id FROM items WHERE character = '⺤' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_1968_berkedip, id FROM items WHERE character = '冖' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_1968_berkedip, id FROM items WHERE character = '舛' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_1969_krisan, id FROM items WHERE character = '艹' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_1969_krisan, id FROM items WHERE character = '勹' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_1969_krisan, id FROM items WHERE character = '米' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_1970_kebanggaan, id FROM items WHERE character = '言' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_1970_kebanggaan, id FROM items WHERE character = '大' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_1970_kebanggaan, id FROM items WHERE character = '二' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_1970_kebanggaan, id FROM items WHERE character = '勹' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_1972_menggagalkan, id FROM items WHERE character = '阝' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_1972_menggagalkan, id FROM items WHERE character = '且' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_1973_diam, id FROM items WHERE character = '里' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_1973_diam, id FROM items WHERE character = '犬' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_1973_diam, id FROM items WHERE character = '灬' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_1974_karung_jerami, id FROM items WHERE character = 'ｲ' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_1974_karung_jerami, id FROM items WHERE character = '/radicals/rib-cage.svg' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_1974_karung_jerami, id FROM items WHERE character = '/radicals/kick.svg' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_1975_kapas, id FROM items WHERE character = '糸' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_1975_kapas, id FROM items WHERE character = '白' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_1975_kapas, id FROM items WHERE character = '巾' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_1976_rak, id FROM items WHERE character = '力' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_1976_rak, id FROM items WHERE character = '口' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_1976_rak, id FROM items WHERE character = '木' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2119_rongga, id FROM items WHERE character = '子' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2119_rongga, id FROM items WHERE character = '乚' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_9468_menganugerahkan, id FROM items WHERE character = '貝' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_9468_menganugerahkan, id FROM items WHERE character = '易' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_3017_keputusan, id FROM items WHERE character = '決' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_3020_tertunda, id FROM items WHERE character = '未' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_3020_tertunda, id FROM items WHERE character = '決' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_6633_bersih, id FROM items WHERE character = '網' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_6769_pintu_kasa, id FROM items WHERE character = '網' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_6769_pintu_kasa, id FROM items WHERE character = '戸' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_6957_partikel_dasar, id FROM items WHERE character = '素' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_6957_partikel_dasar, id FROM items WHERE character = '粒' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_6957_partikel_dasar, id FROM items WHERE character = '子' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_6958_onigiri, id FROM items WHERE character = '握' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_6959_goreng, id FROM items WHERE character = '揚' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_6959_goreng, id FROM items WHERE character = '出' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_6960_berteriak, id FROM items WHERE character = '叫' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_6961_berteriak, id FROM items WHERE character = '叫' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_6961_berteriak, id FROM items WHERE character = '声' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_6962_tumbuh, id FROM items WHERE character = '新' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_6962_tumbuh, id FROM items WHERE character = '芽' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_6963_ketidaksabaran, id FROM items WHERE character = '焦' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6964_tinta, k_1941_tinta_hitam);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6965_lukisan_tinta, k_1941_tinta_hitam);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_6965_lukisan_tinta, id FROM items WHERE character = '絵' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_6966_tato, id FROM items WHERE character = '入' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6966_tato, k_1941_tinta_hitam);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6967_merpati, k_1942_merpati);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6968_tenang, k_1943_tenang);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6969_sesuai, k_1943_tenang);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_6969_sesuai, id FROM items WHERE character = '当' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_6970_tenang, id FROM items WHERE character = '平' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6970_tenang, k_1943_tenang);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_6971_kerusuhan, id FROM items WHERE character = '不' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6971_kerusuhan, k_1943_tenang);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6972_membosankan, k_1944_membosankan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6973_tidak_sensitif, k_1944_membosankan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_6973_tidak_sensitif, id FROM items WHERE character = '感' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6974_senjata_tumpul, k_1944_membosankan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_6974_senjata_tumpul, id FROM items WHERE character = '器' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_6975_iblis, id FROM items WHERE character = '悪' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6975_iblis, k_1945_iblis);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6976_sihir, k_1945_iblis);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_6976_sihir, id FROM items WHERE character = '法' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6977_sihir, k_1945_iblis);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_6977_sihir, id FROM items WHERE character = '術' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6978_penyihir, k_1945_iblis);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_6978_penyihir, id FROM items WHERE character = '女' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6979_asrama, k_1946_asrama);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6980_siswa_asrama, k_1946_asrama);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_6980_siswa_asrama, id FROM items WHERE character = '生' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6981_baki, k_1947_baki);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6982_lebih_tepatnya, k_1951_lebih_tepatnya);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_6983_sopan, id FROM items WHERE character = '丁' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6983_sopan, k_1951_lebih_tepatnya);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_6984_ruang_rumah_sakit, id FROM items WHERE character = '病' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6984_ruang_rumah_sakit, k_1948_bangunan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6985_saya, k_1949_saya);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_6985_saya, id FROM items WHERE character = '輩' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6986_novel, k_1950_mengiris);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_6986_novel, id FROM items WHERE character = '新' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6987_membunuh_dengan_pedang, k_1950_mengiris);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_6987_membunuh_dengan_pedang, id FROM items WHERE character = '殺' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6988_untuk_mengurangi, k_1950_mengiris);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6989_kursi, k_1952_kursi);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_6989_kursi, id FROM items WHERE character = '子' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6990_waktu, k_1953_bertahun_tahun);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_6990_waktu, id FROM items WHERE character = '月' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6991_bertahun_tahun, k_1953_bertahun_tahun);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_6997_menyegarkan, id FROM items WHERE character = '清' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_6997_menyegarkan, id FROM items WHERE character = '涼' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_6998_angin_sejuk, id FROM items WHERE character = '涼' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_6998_angin_sejuk, id FROM items WHERE character = '風' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6999_monyet_lihat_monyet_lakukan, k_1955_monyet);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_6999_monyet_lihat_monyet_lakukan, id FROM items WHERE character = '真' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_6999_monyet_lihat_monyet_lakukan, id FROM items WHERE character = '似' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7000_monyet, k_1955_monyet);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7001_murid, k_1956_murid);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7002_kunci, k_1957_kunci);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7003_nol, k_1958_nol);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7004_di_bawah_nol, k_1958_nol);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7004_di_bawah_nol, id FROM items WHERE character = '下' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7005_tengah_malam, k_1958_nol);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7005_tengah_malam, id FROM items WHERE character = '時' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7006_poin_nol, k_1958_nol);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7006_poin_nol, id FROM items WHERE character = '点' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7008_pergi, k_1959_pergi);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7009_pergi, id FROM items WHERE character = '囲' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7009_pergi, k_1959_pergi);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7010_ayo_naik, k_1959_pergi);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7010_ayo_naik, id FROM items WHERE character = '盤' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7011_pergi_ke_ruang_tamu, k_1959_pergi);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7011_pergi_ke_ruang_tamu, id FROM items WHERE character = '会' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7011_pergi_ke_ruang_tamu, id FROM items WHERE character = '所' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7012_konsesi_asing, k_1960_tarif);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7012_konsesi_asing, id FROM items WHERE character = '界' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7013_pajak, k_1960_tarif);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7013_pajak, id FROM items WHERE character = '税' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7014_gelembung, k_1962_gelembung);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7015_gelembung_udara, id FROM items WHERE character = '気' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7015_gelembung_udara, k_1962_gelembung);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7016_busa, id FROM items WHERE character = '水' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7016_busa, k_1962_gelembung);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7017_berbusa, id FROM items WHERE character = '発' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7017_berbusa, k_1962_gelembung);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7018_kebiasaan_buruk, k_1963_kebiasaan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7019_kurungan, k_1961_terpencil);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7019_kurungan, id FROM items WHERE character = '閉' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7020_hantu, k_1961_terpencil);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7020_hantu, id FROM items WHERE character = '霊' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7021_frase_favorit, id FROM items WHERE character = '口' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7021_frase_favorit, k_1963_kebiasaan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7022_pelatihan, k_1964_menempa);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7022_pelatihan, k_1965_tempering);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7023_alkimia, k_1965_tempering);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7023_alkimia, id FROM items WHERE character = '金' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7023_alkimia, id FROM items WHERE character = '術' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7024_untuk_menempa, k_1964_menempa);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7025_kepala_pabrik, k_1966_kepala_pabrik);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7026_kepala_beras, id FROM items WHERE character = '稲' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7026_kepala_beras, k_1966_kepala_pabrik);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7027_kaisar, id FROM items WHERE character = '皇' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7027_kaisar, k_1967_berdaulat);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7028_kaisar_jepang, k_1967_berdaulat);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7029_kerajaan, k_1967_berdaulat);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7029_kerajaan, id FROM items WHERE character = '国' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7030_pemerintahan_kekaisaran, k_1967_berdaulat);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7030_pemerintahan_kekaisaran, id FROM items WHERE character = '政' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7031_untuk_berkedip, k_1968_berkedip);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7032_sejenak, k_1968_berkedip);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7032_sejenak, id FROM items WHERE character = '間' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7033_momen, k_1968_berkedip);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7033_momen, id FROM items WHERE character = '時' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7034_krisan_putih, id FROM items WHERE character = '白' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7034_krisan_putih, k_1969_krisan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7035_berlebihan, k_1970_kebanggaan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7035_berlebihan, id FROM items WHERE character = '大' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7036_sekejap, k_1968_berkedip);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7037_sejenak, id FROM items WHERE character = '一' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7037_sejenak, k_1968_berkedip);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7038_berbesar_hati, k_1970_kebanggaan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7039_berlebihan, k_1970_kebanggaan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7039_berlebihan, id FROM items WHERE character = '張' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7041_untuk_menggagalkan, k_1972_menggagalkan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7042_halangan, k_1972_menggagalkan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7042_halangan, id FROM items WHERE character = '止' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7043_halangan, k_1972_menggagalkan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7043_halangan, id FROM items WHERE character = '害' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7044_untuk_diam, k_1973_diam);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7045_kesunyian, id FROM items WHERE character = '沈' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7045_kesunyian, k_1973_diam);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7046_mengabaikan, k_1973_diam);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7046_mengabaikan, id FROM items WHERE character = '殺' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7047_karung_jerami, k_1974_karung_jerami);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7048_cincin_sumo, id FROM items WHERE character = '土' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7048_cincin_sumo, k_1974_karung_jerami);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7049_tanaman_kapas, k_1975_kapas);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7050_kain_katun, k_1975_kapas);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7050_kain_katun, id FROM items WHERE character = '布' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7051_konstruksi, k_1976_rak);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7051_konstruksi, id FROM items WHERE character = '設' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7052_rak_buku, id FROM items WHERE character = '書' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7052_rak_buku, k_1976_rak);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7053_usungan, id FROM items WHERE character = '担' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7053_usungan, k_1976_rak);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7140_jelas, id FROM items WHERE character = '紛' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7509_murid, k_1956_murid);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7509_murid, k_2119_rongga);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7510_rongga_mata, id FROM items WHERE character = '眼' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7510_rongga_mata, k_2119_rongga);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7513_kenyamanan_saat_ini, id FROM items WHERE character = '寸' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7513_kenyamanan_saat_ini, id FROM items WHERE character = '暇' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7559_iblis, k_1945_iblis);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7782_untuk_mengguncang, id FROM items WHERE character = '揺' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8692_kapas, id FROM items WHERE character = '木' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8692_kapas, k_1975_kapas);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_9467_untuk_menuju_hulu, id FROM items WHERE character = '遡' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_9486_untuk_diberikan, k_9468_menganugerahkan);

END $$;