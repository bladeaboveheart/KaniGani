-- ====================================================
-- KaniGani — Seed Data Level 48 (v2, relasional)
-- Auto-generated with Indonesian Slugs
-- ====================================================

DO $$
DECLARE
  -- ============ RADICAL IDs (Level 48) ============
  r_404_membentuk UUID; r_405_lampu UUID;
  -- ============ KANJI IDs (Level 48) ============
  k_2012_buku_catatan UUID; k_2013_nyamuk UUID; k_2014_ular UUID; k_2015_pasta UUID; k_2016_menghina UUID; k_2017_pot_bunga UUID; k_2018_kegelapan UUID; k_2019_celah UUID; k_2020_embun_beku UUID; k_2021_kelaparan UUID; k_2022_kelaparan UUID; k_2023_ternak UUID; k_2024_cepat UUID; k_2025_menunggang_kuda UUID; k_2026_mengumpulkan UUID; k_2027_menghabiskan UUID; k_2028_warna UUID; k_2029_ingatan UUID; k_2030_meleleh UUID; k_2031_tahan UUID; k_2032_menari UUID; k_2033_cerdik UUID; k_2034_cahaya UUID; k_2035_mengancam UUID; k_2036_rami UUID; k_2038_mekar UUID; k_2039_mengolah UUID; k_2040_menyesali UUID; k_2041_ketiak UUID; k_2042_menyelesaikan UUID; k_2043_pasukan UUID; k_2044_cat UUID; k_2045_diagonal UUID; k_2046_memukul UUID; k_2047_tameng UUID; k_2048_memanen UUID;
  -- ============ VOCABULARY IDs (Level 48) ============
  v_6992_dua_puluh_tahun UUID; v_7057_untuk_menghancurkan UUID; v_7123_untuk_memasak UUID; v_7152_namun UUID; v_7153_imperialisme UUID; v_7154_kursi_roda UUID; v_7155_tepi_cincin_sumo UUID; v_7156_kebetulan UUID; v_7158_ancaman UUID; v_7159_penyihir UUID; v_7161_toko_darurat UUID; v_7162_tabungan UUID; v_7163_untuk_menyimpan UUID; v_7164_nyamuk UUID; v_7165_kawat_nyamuk UUID; v_7166_registri UUID; v_7167_buku_catatan UUID; v_7168_buku_memo UUID; v_7169_buku_telepon UUID; v_7170_ular UUID; v_7171_untuk_menempel UUID; v_7172_untuk_mempermalukan UUID; v_7173_aib UUID; v_7174_aib UUID; v_7175_pot_bunga UUID; v_7176_anglo UUID; v_7177_ikat_kepala UUID; v_7178_kegelapan UUID; v_7179_kegelapan UUID; v_7180_tanpa_berpikir_panjang UUID; v_7181_celah UUID; v_7182_celah UUID; v_7183_embun_beku UUID; v_7184_kelaparan UUID; v_7185_untuk_kelaparan UUID; v_7186_kematian_karena_kelaparan UUID; v_7187_peternakan UUID; v_7188_hewan_domestik UUID; v_7189_brengsek UUID; v_7190_cepat UUID; v_7191_ksatria UUID; v_7193_joki UUID; v_7195_untuk_digunakan UUID; v_7196_tidak_masuk_akal UUID; v_7197_upaya UUID; v_7198_untuk_mewarnai_sesuatu UUID; v_7199_warna UUID; v_7200_kamuflase UUID; v_7201_lukisan_cat_air UUID; v_7202_lukisan_cat_minyak UUID; v_7203_ingatan UUID; v_7204_tebakan UUID; v_7205_untuk_melelehkan_sesuatu UUID; v_7206_lahar UUID; v_7207_larut_dalam_air UUID; v_7208_untuk_bertahan UUID; v_7209_ketahanan UUID; v_7210_tahan_panas UUID; v_7211_tahan_api UUID; v_7212_daya_tahan UUID; v_7213_untuk_menari UUID; v_7214_menari UUID; v_7215_pendaratan UUID; v_7216_tarian_festival_leluhur UUID; v_7217_cerdik UUID; v_7218_sage UUID; v_7219_bijak UUID; v_7220_untuk_bersinar UUID; v_7221_kecerahan UUID; v_7222_pencahayaan UUID; v_7223_ganja UUID; v_7224_ganja UUID; v_7225_anestesi UUID; v_7229_untuk_mekar UUID; v_7230_bunga_terlambat UUID; v_7231_kembali UUID; v_7232_untuk_berkultivasi UUID; v_7233_penanaman UUID; v_7234_sangat_disesalkan UUID; v_7235_menyesali UUID; v_7236_ketiak UUID; v_7237_memalingkan_muka UUID; v_7238_aktor_pendukung UUID; v_7239_percobaan UUID; v_7240_prestasi UUID; v_7241_pasukan UUID; v_7243_pemimpin_pasukan UUID; v_7244_aplikasi UUID; v_7245_untuk_melukis UUID; v_7246_lapisan UUID; v_7247_cat UUID; v_7248_diagonal UUID; v_7249_miring UUID; v_7250_huruf_miring UUID; v_7251_untuk_meninju UUID; v_7252_memukul UUID; v_7253_tameng UUID; v_7254_kontradiksi UUID; v_7255_dukungan UUID; v_7256_memanen UUID; v_8937_agar_tertumpah UUID; v_9489_hadiah UUID;

BEGIN

  DELETE FROM items WHERE level = 48;

  -- 1. RADICALS
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '容', 'membentuk', 48, 1, 'Radikal ini sama dengan kanji. Artinya <radikal>bentuk</radikal>.')
    RETURNING id INTO r_404_membentuk;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '光', 'lampu', 48, 2, 'Radikal ini sama dengan kanji. Artinya <radikal>ringan</radikal>.')
    RETURNING id INTO r_405_lampu;
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_404_membentuk, 'Membentuk', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_405_lampu, 'Lampu', true, true);

  -- 2. KANJIS
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '帳', 'buku-catatan', 48, 3, 'Ambil <radical>handuk</radical> Anda dan buatlah <radical>panjang</radical>. Itu harus lebih lama dari itu! Karena ini akan menjadi <kanji>buku catatan</kanji> Anda, tempat Anda akan menulis semua catatan Anda.', 'Di dalam <kanji>buku catatan</kanji> handuk panjangmu, kamu cukup menulis nama yang sama berulang kali: "Nyonya <reading>Chou</reading>" (ちょう).')
    RETURNING id INTO k_2012_buku_catatan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '蚊', 'nyamuk', 48, 4, 'Jenis <radical>serangga</radikal> yang merusak <radikal>tulisan</radikal> Anda adalah <kanji>nyamuk</kanji>. Anda sedang mencoba menulis, ketika Anda mendengar suara nyamuk bernada tinggi yang mengerikan di telinga Anda. Anda menyentakkan kepala dan memukulnya dan itu hilang. Namun ketika Anda melihat ke bawah, ada garis-garis di seluruh tulisan Anda.', 'Suara <kanji>nyamuk</kanji> itu terdengar seperti suara <reading>ca</reading>r (か) kecil di telinga Anda. Bagaimana Anda bisa menulis dengan bug yang berkeliling dengan bzzz bzzz seperti mobil yang berputar?')
    RETURNING id INTO k_2013_nyamuk;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '蛇', 'ular', 48, 5, 'Ada <radical>serangga</radical> di <radical>atap</radical> dalam <radical>sendok</radical>. Itu ada di sana untuk makan, dan itulah cara Anda berencana menarik <kanji>ular</kanji> ke atap Anda.', 'Mengapa kamu tidak membawa sendiri <kanji>ular</kanji> ke atap? Karena ular <reading>berat</reading> (へび).')
    RETURNING id INTO k_2014_ular;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '貼', 'pasta', 48, 6, 'Anda baru saja mengetahui bahwa <radical>kerang</radikal> membawa kebaikan <radikal>keberuntungan</radikal>, jadi Anda memutuskan untuk <kanji>menempelkannya</kanji> sebanyak mungkin ke dinding rumah Anda.', 'Saat Anda <kanji>menempelkan</kanji> kerang ke dinding di sekitar Anda, Anda dengan antusias mengucapkan "<reading>Hah</reading> (は)!" kapan saja mereka berhasil menempel.')
    RETURNING id INTO k_2015_pasta;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '辱', 'menghina', 48, 7, '<radical>longsor</radikal> <radikal>pengukuran</radikal> <kanji>mempermalukan</kanji> Anda. Anda memberi tahu semua orang bahwa Anda tidak bisa masuk kerja, bahwa rumah Anda telah hancur dan mobil Anda terbawa, namun kemudian para ilmuwan mengukur tanah longsor tersebut, dan jaraknya hanya beberapa meter.', 'Teman dan rekan kerja Anda <kanji>mempermalukan</kanji> Anda lebih banyak dengan melontarkan <reading>lelucon</reading> (じょく). "Uh oh, kudengar nanti akan turun hujan, kuharap kamu tidak tenggelam dalam air yang datang sejengkal pun!"')
    RETURNING id INTO k_2016_menghina;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '鉢', 'pot-bunga', 48, 8, 'Lelehkan <radical>emas</radical> <radical>buku</radical> ini dan susun kembali menjadi <kanji>pot bunga</kanji>. Buku yang terbuat dari emas murni terlalu berat untuk dipegang dan terlalu berkilau untuk dibaca, tetapi pot bunga dari emas murni bisa menjadi tambahan baru yang mewah untuk taman Anda.', '<kanji>pot bunga</kanji> emas memiliki <reading>palka</reading> (はち) yang melekat padanya, yang digunakan sebagai sampul belakang buku. Tidak apa-apa, Anda menggunakan palka sebagai penutup pot bunga!')
    RETURNING id INTO k_2017_pot_bunga;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '闇', 'kegelapan', 48, 9, '<radical>gerbang</radikal> ini mengeluarkan <radikal>suara</radikal> <kanji>kegelapan</kanji>. Gerbangnya terlihat seperti kegelapan, tapi lebih menyeramkan lagi karena terdengar seperti kegelapan juga.', 'Anda memutuskan untuk mencicipi <kanji>kegelapan</kanji> dan menemukan bahwa itu sangat <reading>lezat</reading> (やみ)! Siapa yang tahu bahwa kegelapan itu begitu nikmat? Mmm… kegelapan ini terasa enak sekali!')
    RETURNING id INTO k_2018_kegelapan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '隙', 'celah', 48, 10, 'Di <radical>gedung</radical> ini terdapat <radical>kecil</radikal> <radical>matahari</radikal> yang <radikal>kecil</radikal>. Mereka menyimpan matahari kecil ini di dalam <kanji>celah</kanji>.', 'Mereka menaruh sinar matahari di <kanji>celah</kanji> karena ini adalah tempat orang-orang <reading>ski</reading> (すき).')
    RETURNING id INTO k_2019_celah;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '霜', 'embun-beku', 48, 11, '<radical>Hujan</radical> jatuh dari <radical>pohon</radical> dan mendarat di <radical>mata</radical> Anda dan berubah menjadi <kanji>embun beku</kanji>. Berubah menjadi beku karena di luar sangat dingin dan tubuh Anda kedinginan. Air hujan yang jatuh dari pohon berubah menjadi embun beku begitu mengenai mata Anda.', 'Keseluruhan deskripsi ini cukup emo. Kamu mendapat ide emo <kanji>frost</kanji> ini karena kamu adalah seorang <reading>shemo</reading> (しも). Seorang emo yang lewat dia mengucapkan kata ganti.')
    RETURNING id INTO k_2020_embun_beku;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '飢', 'kelaparan', 48, 12, 'Anda sangat lapar sehingga Anda <radical>makan</radical> <radical>meja</radical> agar Anda tidak <kanji>kelaparan</kanji>. Jika Anda tidak memakan meja ini, Anda pasti akan kelaparan, jadi Anda memakan meja tersebut agar tetap hidup.', 'Setelah Anda menyelesaikan meja, Anda masih merasa <kanji>kelaparan</kanji> sehingga Anda memutuskan untuk memakan setiap <reading>kunci</reading> (き) dari gantungan kunci Anda. Satu demi satu, Anda memakan setiap kunci agar Anda tidak kelaparan.')
    RETURNING id INTO k_2021_kelaparan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '餓', 'kelaparan', 48, 13, 'Jika Anda tidak punya apa-apa untuk <radikal>dimakan</radikal> selain <radikal>ego</radikal> Anda, Anda akan <kanji>kelaparan</kanji>. Anda tidak bisa memakannya, dan ego Anda menghalangi Anda untuk menerima makanan sebenarnya atau bantuan dari orang lain.', 'Kamu <kanji>kelaparan</kanji> (terima kasih ego) dan berubah menjadi <reading>ga</reading>rgoyle (が). Saat perut Anda sakit, kulit Anda berubah menjadi abu-abu dan perlahan-lahan Anda mengeras hingga posisi berjongkok.')
    RETURNING id INTO k_2022_kelaparan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '畜', 'ternak', 48, 14, 'Di <radical>misterius</radical> <radical>sawah</radical> ada beberapa <kanji>ternak</kanji>. Ternak ini juga misterius karena tidak ada yang tahu dari mana asalnya. Ternak misterius hanya terlihat di sawah misterius. Sungguh misterius.', 'Anggota favoritmu dari kru <kanji>ternak</kanji> yang misterius adalah <reading>cewek</reading> kecil (ちく). Anak ayam itu sangat lucu dan kecil. Anak ayam ini juga sangat misterius karena dapat melayang tanpa mengepakkan sayap kecilnya.')
    RETURNING id INTO k_2023_ternak;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '迅', 'cepat', 48, 15, 'Saat Anda mengendarai <radical>skuter</radical>, Anda mengenakan <radical>jubah</radical> dan membawa <radical>salib</radical> untuk bergerak dengan kecepatan <kanji>cepat</kanji>. Tentu saja, jubah memberi Anda kekuatan kecepatan, dan salib memungkinkan Anda berdoa kepada kekuatan ilahi untuk membantu Anda bergerak lebih cepat di jalan.', 'Anda bergerak dengan kecepatan <kanji>cepat</kanji> sekarang, <reading>jean</reading> (じん) Anda langsung robek dari tubuh Anda.')
    RETURNING id INTO k_2024_cepat;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '騎', 'menunggang-kuda', 48, 16, '<radical>kuda</radikal> ini mungkin terlihat <radikal>aneh</radikal> namun sebenarnya sempurna untuk <kanji>menunggang kuda</kanji>!', 'Sebelum <kanji>menunggang kuda</kanji>, Anda memerlukan <reading>kunci</reading> (き) untuk mengakses kandang dan mengeluarkan kuda aneh yang akan Anda tunggangi.')
    RETURNING id INTO k_2025_menunggang_kuda;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '蓄', 'mengumpulkan', 48, 17, '<radical>Bunga</radical> secara <radical>misterius</radical>muncul di <radical>sawah</radical>. Apa pun yang Anda lakukan terhadap mereka, mereka terus <kanji>mengumpulkan</kanji>.', 'Saat bunga <kanji>mengumpulkan</kanji>, ia mulai menarik perhatian satwa liar. Tak lama kemudian, ribuan bayi <reading>anak ayam</reading> (ちく) juga berkumpul di sawah.')
    RETURNING id INTO k_2026_mengumpulkan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '尽', 'menghabiskan', 48, 18, 'Anda melihat <radical>udang</radical> di atas <radical>es</radical> di pasar pada pagi hari. "Aku akan membelikannya dalam perjalanan pulang" pikirmu dalam hati. Sore harinya, Anda tidak melihat udang, hanya es. Persediaan udang telah <kanji>habis</kanji>ed. Semuanya hilang! Anda tidak pernah mengira mereka akan <kanji>menghabiskan</kanji> persediaan udang mereka secepat itu.', 'Bagaimana toko <kanji>menghabiskan</kanji> persediaan udangnya begitu cepat? Tiba-tiba Anda melihat pekerja di belakang konter ikan sedang memasukkan udang ke dalam <reading>jean</reading> mereka (じん) . Ya! Pelakunya!')
    RETURNING id INTO k_2027_menghabiskan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '彩', 'warna', 48, 19, 'Anda menggunakan <radical>cleat</radical> untuk memanjat <radical>pohon</radical> dan <radical>rambut</radical> Anda mendapatkan <kanji>pewarnaan</kanji> yang sama dengan dedaunan karena rambut Anda seperti bunglon. Pewarnaan rambut Anda berubah sesuai warna apa pun yang ada di sekitar Anda, jadi Anda menggunakan gerigi sepatu untuk memanjat pohon agar rambut Anda berubah menjadi hijau dan coklat, dan di musim gugur, menjadi kuning, oranye, dan merah!', '<kanji>pewarnaan</kanji> keren ini hanya dapat terjadi karena Anda mengubah diri Anda menjadi <reading>cy</reading>borg (さい). Rambut dan kulit kepala Anda sekarang terbuat dari komponen berteknologi tinggi, bukan komponen manusia.')
    RETURNING id INTO k_2028_warna;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '憶', 'ingatan', 48, 20, 'Ketika <radical>jiwa</radikal> Anda mempunyai <radikal>ide</radikal> itu hanyalah <kanji>ingatan</kanji> dari sesuatu yang telah Anda ketahui. Hanya otak Anda yang dapat memiliki ide-ide orisinal, jadi ketika jiwa Anda mencoba memunculkannya, itu hanyalah ingatan akan sesuatu yang Anda pikirkan sebelumnya.', 'Jiwa Anda saat ini mengirimkan <kanji>kenangan</kanji> tentang... kehidupan masa lalu Anda sebagai petani di <reading>Ok</reading>lahoma (おく). Anda melihat diri Anda bertani dan berkeringat serta menjalani kehidupan yang indah. Hmm, mungkin sebaiknya Anda pindah ke Oklahoma dan menjalani hidup sederhana lagi.')
    RETURNING id INTO k_2029_ingatan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '溶', 'meleleh', 48, 21, '<radikal>tsunami</radikal> menghantam <radikal>bentuk</radikal> Anda dan Anda mulai <kanji>meleleh</kanji>. Kamu adalah seorang penyihir dan air membuatmu meleleh. Tsunami mengandung banyak air, jadi begitu menyentuh wujudmu, kamu mulai mencair.', 'Satu-satunya cara untuk membalikkan proses <kanji>meleleh</kanji> adalah dengan memakan <reading>yo</reading>gurt (よう). Yoghurt mencegah pencairan air dan bentuk Anda akan menjadi utuh kembali. Cepat, makan yogurt!')
    RETURNING id INTO k_2030_meleleh;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '耐', 'tahan', 48, 22, 'Anda mengambil <radical>rake</radical> untuk <radical>pengukuran</radical> tetapi <radical>tahan</kanji>. Penggaruk tidak ingin pengukurannya dilakukan. Penggaruk ini tahan terhadap pengukuran apa pun karena terasa lebih rendah dibandingkan penggaruk lainnya dan tidak mau malu jika ternyata lebih kecil dari penggaruk lainnya.', 'Karena penggaruknya selalu <kanji>tahan</kanji>, Anda akhirnya mengikatnya ke meja dengan <reading>dasi</reading> (たい) leher Anda. Dasinya tidak akan bertahan lama, jadi Anda harus melakukan setiap pengukuran dengan cepat.')
    RETURNING id INTO k_2031_tahan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '踊', 'menari', 48, 23, '<radical>kaki</radical>mu, seperti kata <radical>mama</radical>mu, diberi <radical>tugas</radical> untuk <kanji>menari</kanji>. Goyangkan kedua kaki yang diberikan ibumu dan menari dansa!', 'Kalian berdua <kanji>menari</kanji> sedemikian rupa hingga kalian mengembangkan <reading>odo</reading>r (おど). Bukan sembarang bau, bau khas kaki menari yang bau.')
    RETURNING id INTO k_2032_menari;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '賢', 'cerdik', 48, 24, '<radical>Pelayan</radical> Anda menggunakan <radical>bangku</radical> untuk membuka <radical>kerang</radical>. Ini sungguh <kanji>pintar</kanji>, karena mengupas kerang membutuhkan banyak pekerjaan. Ini juga merupakan langkah yang <kanji>bijaksana</kanji>, karena akan menghemat waktu yang bisa dia habiskan untuk semua tugas pelayannya yang lain.', '"Ya, lebih <kanji>pintar</kanji> darimu!" dia berteriak, merobek penyamaran pelayannya. "Ini aku, <read>Ken</reading> (けん) sang samurai. Aku tidak akan membiarkanmu memakan kerang-kerangan ini. Aku akan membawanya kembali ke laut, ke tempat asalnya!"')
    RETURNING id INTO k_2033_cerdik;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '輝', 'cahaya', 48, 25, '<radical>Cahaya</radikal> menyinari <radikal>dahi</radikal> Anda di <radikal>mobil</radikal> Anda dengan <kanji>pancaran</kanji> yang luar biasa. Mobil yang Anda tumpangi adalah mobil convertible, jadi cahayanya menyinari dahi besar Anda yang botak. Cahayanya memiliki pancaran yang cukup kuat, namun kemilau dari cahaya yang mengenai dahi Anda adalah pancaran paling kuat yang pernah disaksikan manusia.', '<kanji>pancaran</kanji> ini adalah <reading>kunci</reading> (き) untuk memberi daya pada mobil Anda. Mobil Anda beroperasi dengan pantulan energi matahari, dan pancaran sinar dari dahi Anda adalah sumber pancaran sinar matahari paling kuat yang pernah dibayangkan. Dahi Anda adalah kunci sempurna untuk mobil ini.')
    RETURNING id INTO k_2034_cahaya;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '脅', 'mengancam', 48, 26, 'Ada <radical>kekuatan</radikal>, <radikal>kekuatan</radikal>, dan <radikal>kekuatan</radikal> yang bertumpuk di atas <radikal>bulan</radikal>, <kanji>mengancam</kanji> untuk menjatuhkannya!', 'Bulan yang dipenuhi kekuatan ekstra ini sekarang mencoba <kanji>mengancam</kanji> keselamatan <reading>きょう</reading>と. Seluruh きょうと bergetar dan menjadi gelap saat bulan semakin dekat.')
    RETURNING id INTO k_2035_mengancam;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '麻', 'rami', 48, 27, '<radical>kanopi</radikal> <radikal>pohon</radikal> ini sebenarnya bukanlah kanopi pohon sama sekali. Jika Anda perhatikan lebih dekat, Anda akan melihat pohon-pohon ini sebenarnya adalah batang <kanji>rami</kanji> raksasa.', 'Siapa yang menanam semua <kanji>rami</kanji> ini? <reading>ma</reading>ma ​​(ま) Anda melakukannya.')
    RETURNING id INTO k_2036_rami;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '咲', 'mekar', 48, 28, 'Jika sekuntum bunga terlihat seperti <radical>mulut</radical> dengan <radical>tanduk</radical> yang menjulang hingga ke <radical>surga</radical>, Anda tahu bahwa bunga itu sedang dalam <kanji>mekar</kanji>. Semuanya terbuka seperti mulut, dan putik serta benang sari seperti tanduk yang menjulang ke langit untuk mendapatkan sinar matahari dan hujan.', 'Jika bentuknya seperti mulut dengan tanduk menyembul, Anda pasti tahu itu akan menjadi <kanji>mekar</kanji> kecil yang keras. Itu sebabnya Anda memerlukan <reading>gergaji</reading> (さ) jika Anda punya harapan untuk menebangnya untuk koleksi bunga Anda.')
    RETURNING id INTO k_2038_mekar;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '培', 'mengolah', 48, 29, '<radical>kotoran</radikal> Anda memerlukan <radical>badut</radikal> di dalamnya jika Anda ingin <kanji>mengolah</kanji> tanaman yang baik. Badut bertindak sebagai pupuk alami, dan ini akan memudahkan Anda menanam tanaman apa pun yang Anda inginkan di tanah ini. Bukankah alam menakjubkan?', 'Namun sebelum kamu dapat memulai seluruh proses <kanji>kultivasi</kanji> ini, kamu harus mengucapkan <read>bye</reading> (ばい) kepada badut tersebut. Ucapkan selamat tinggal padanya, lalu pukul kepalanya, dan jatuhkan dia ke tanah.')
    RETURNING id INTO k_2039_mengolah;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '悔', 'menyesali', 48, 30, 'Jika Anda mencoba memasukkan <radical>jiwa</radikal> Anda ke dalam <radikal>segala sesuatu</radikal>hal, Anda akan <kanji>menyesali</kanji> itu. Bukan berarti memasukkan jiwa Anda ke dalam sesuatu itu buruk, tapi setiap hal? Anda akan segera kehabisan tenaga. Anda tidak akan bisa menjadi ahli dalam hal-hal tersebut. Dan Anda akan menyesali semua waktu yang Anda sia-siakan untuk berusaha menjadi yang terbaik dalam segala hal.', '<kanji>penyesalan</kanji> terlalu kuat untuk Anda abaikan, jadi Anda memutuskan untuk meninggalkan segalanya kecuali <reading>kay</reading>aking (かい). Jika ada satu hal yang tidak ingin Anda sesali, itu adalah kayak oranye terang Anda dan semua teman yang Anda jalin di klub kayak.')
    RETURNING id INTO k_2040_menyesali;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '脇', 'ketiak', 48, 31, '<radical>bulan</radical> mempunyai banyak sekali <radical>kekuatan</radikal> yaitu <radikal>kekuatan</radikal> yang didapatnya dari <radikal>kekuatan</radikal> yang ada di setiap <kanji>ketiak</kanji> setiap manusia di muka bumi! Mengapa ketiakmu berbau? Itu karena bulan menguras tenaga dari ketiakmu. Bulan menyedot kekuatan dari ketiak Anda dan kekuatan itu disedot ke langit tempat bulan mengumpulkan kekuatan untuk perangkatnya sendiri.', 'Ini gambar <read>aneh</reading> (わき) <kanji>ketiak</kanji> yang cukup <read>aneh</reading> bukan? Melihat garis-garis kekuatan menjalar dari ketiak ke bulan. Benar-benar aneh. Pernahkah Anda melihat sesuatu yang aneh ini di kehidupan nyata?')
    RETURNING id INTO k_2041_ketiak;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '遂', 'menyelesaikan', 48, 32, 'Sebuah <radical>skuter</radikal> dengan <radikal>tanduk</radikal> dan <radikal>babi</radikal> yang menungganginya akan mampu <kanji>mencapai</kanji> apa pun.', 'Ia bahkan berhasil <kanji>mencapai</kanji> suatu prestasi yang mengharuskannya melompati skuternya tepat ke dalam <reading>swi</reading>ng (すい), berayun maju mundur, lalu melompat.')
    RETURNING id INTO k_2042_menyelesaikan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '班', 'pasukan', 48, 33, 'Jika <radical>raja</radical> memberi Anda <radical>pisau</radical> Anda menjadi bagian dari <kanji>pasukan</kanji> miliknya. Setiap raja memiliki satu atau dua regu pisau yang melindunginya dan memastikan rakyatnya tetap menjaga barisan.', '<kanji>Pasukan</kanji> ini dipimpin oleh <reading>Han</reading> (はん) Solo, jadi pada dasarnya adalah tembakan 50/50 bahwa raja akan mati.')
    RETURNING id INTO k_2043_pasukan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '塗', 'cat', 48, 34, '<radikal>tsunami</radikal> <radikal>kelebihan</radikal> akan menutupi semua <radikal>kotoran</radikal> dengan <kanji>cat</kanji>. Surplus tsunami akan menyerang pabrik-pabrik cat terlebih dahulu (semua orang tahu bahwa pabrik-pabrik cat dibangun di dekat laut). Kemudian cat akan mengalir ke seluruh kotoran dan mengecatnya dengan banyak warna pelangi.', 'Anda menyentuh <kanji>cat</kanji> di tanah dengan <reading>jari kaki</reading> (と) untuk melihat apakah masih basah. Dia. Catnya masih sangat basah dan sekarang jari kaki Anda terlihat seperti pelangi kecil.')
    RETURNING id INTO k_2044_cat;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '斜', 'diagonal', 48, 35, 'Anda memiliki <radical>kelebihan</radikal> <radical>sendok</radikal> yang ditata <kanji>secara diagonal</kanji> di depan Anda. Mengapa bentuknya diagonal? Dan mengapa kamu mempunyai begitu banyak sendok? Mengapa surplus? Tunggu, kita akan sampai di sana.', 'Di depan pola <kanji>diagonal</kanji> ini adalah seorang <reading>sha</reading>man (しゃ) yang sedang menatap Anda. Anda perlahan-lahan meraih ke bawah dan memutar salah satu sendok, secara diagonal, dan melihat kembali ke atas. Mata dukun itu melebar, dan sekarang dia sedang menulis di buku catatan.')
    RETURNING id INTO k_2045_diagonal;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '殴', 'memukul', 48, 36, '<radical>Distrik</radikal> Anda penuh dengan <radical>senjata</radikal>, tapi semua orang lebih suka <kanji>meninju</kanji> satu sama lain. Jika semua orang bersenjata, segala sesuatunya dapat meningkat dengan cepat, jadi lebih baik tetap berpegang pada tangan agar aman.', 'Penduduk distrik <kanji>meninju</kanji> satu sama lain di depan <reading>王</reading> (おう). Pertandingan tinju ini sebenarnya adalah pertarungan gladiator untuk hiburan 王.')
    RETURNING id INTO k_2046_memukul;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '盾', 'tameng', 48, 37, 'Di <radical>tebing</radikal>, <radikal>paus</radikal> memegang <kanji>perisai</kanji>. Paus berada di dekat tepi tebing dan menggunakan perisai untuk mengusir setan. Para iblis ingin mendorong Paus dari tebing, namun Paus menggunakan perisai suci kepausannya untuk menangkis mereka.', 'Cahaya <kanji>perisai</kanji> Paus mulai memudar. Kekuatan suci perisai itu berkurang! Saat iblis hendak mendorongnya dari tebing, matahari mulai terbit. Itu benar! Saat ini <reading>Juni</reading> (じゅん) dan musim panas baru saja dimulai. Perisai Paus memantulkan kekuatan sinar matahari bulan Juni ke mata para iblis, mengusir mereka dari tebing di belakangnya dan kembali ke neraka!')
    RETURNING id INTO k_2047_tameng;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '穫', 'memanen', 48, 38, 'Anda perlu memberi makan <radical>biji-bijian</radikal> ini ke <radikal>bunga</radikal> yang memakai <radikal>kalkun</radikal> di <radikal>bangku</radikal> sehingga Anda dapat memulai <kanji>panen</kanji>. Biji-bijian tidak bisa dipetik sendiri, Anda harus memanennya.', 'Anda baru saja mulai <kanji>memanen</kanji> biji-bijian ketika <reading>ayam</reading> (かく) yang marah muncul! Dia marah karena ini adalah biji-bijiannya dan Anda akan memanennya dan memberikannya ke kalkun, bukan dia.')
    RETURNING id INTO k_2048_memanen;
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2012_buku_catatan, 'Buku catatan', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2012_buku_catatan, 'ちょう', true, 'onyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2012_buku_catatan, 'とばり', false, 'kunyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2013_nyamuk, 'Nyamuk', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2013_nyamuk, 'か', true, 'kunyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2014_ular, 'Ular', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2014_ular, 'へび', true, 'kunyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2014_ular, 'じゃ', false, 'onyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2015_pasta, 'Pasta', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2015_pasta, 'は', true, 'kunyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2015_pasta, 'ちょう', false, 'onyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2016_menghina, 'Menghina', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2016_menghina, 'じょく', true, 'onyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2016_menghina, 'はずかし', false, 'kunyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2017_pot_bunga, 'Pot Bunga', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2017_pot_bunga, 'Mangkuk', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2017_pot_bunga, 'はち', true, 'onyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2018_kegelapan, 'Kegelapan', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2018_kegelapan, 'やみ', true, 'kunyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2018_kegelapan, 'あん', false, 'onyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2018_kegelapan, 'おん', false, 'onyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2019_celah, 'Celah', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2019_celah, 'すき', true, 'kunyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2019_celah, 'げき', false, 'onyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2020_embun_beku, 'Embun beku', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2020_embun_beku, 'しも', true, 'kunyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2020_embun_beku, 'そう', false, 'onyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2021_kelaparan, 'Kelaparan', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2021_kelaparan, 'き', true, 'onyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2021_kelaparan, 'う', false, 'kunyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2022_kelaparan, 'Kelaparan', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2022_kelaparan, 'が', true, 'onyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2022_kelaparan, 'う', false, 'kunyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2023_ternak, 'Ternak', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2023_ternak, 'ちく', true, 'onyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2024_cepat, 'Cepat', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2024_cepat, 'じん', true, 'onyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2025_menunggang_kuda, 'Menunggang Kuda', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2025_menunggang_kuda, 'き', true, 'onyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2026_mengumpulkan, 'Mengumpulkan', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2026_mengumpulkan, 'ちく', true, 'onyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2026_mengumpulkan, 'たくわ', false, 'kunyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2027_menghabiskan, 'Menghabiskan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2027_menghabiskan, 'Knalpot', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2027_menghabiskan, 'じん', true, 'onyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2027_menghabiskan, 'つ', false, 'kunyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2028_warna, 'Warna', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2028_warna, 'Warna', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2028_warna, 'さい', true, 'onyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2028_warna, 'いろど', false, 'kunyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2028_warna, 'あや', false, 'nanori');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2029_ingatan, 'Ingatan', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2029_ingatan, 'おく', true, 'onyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2030_meleleh, 'Meleleh', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2030_meleleh, 'よう', true, 'onyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2030_meleleh, 'と', false, 'kunyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2031_tahan, 'Tahan', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2031_tahan, 'たい', true, 'onyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2031_tahan, 'た', false, 'kunyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2032_menari, 'Menari', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2032_menari, 'おど', true, 'kunyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2032_menari, 'よう', false, 'onyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2033_cerdik, 'Cerdik', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2033_cerdik, 'Bijak', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2033_cerdik, 'けん', true, 'onyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2033_cerdik, 'かしこ', false, 'kunyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2034_cahaya, 'Cahaya', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2034_cahaya, 'き', true, 'onyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2034_cahaya, 'かがや', false, 'kunyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2035_mengancam, 'Mengancam', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2035_mengancam, 'きょう', true, 'onyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2035_mengancam, 'おど', false, 'kunyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2035_mengancam, 'おびや', false, 'kunyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2036_rami, 'Rami', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2036_rami, 'ま', true, 'onyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2036_rami, 'あさ', false, 'kunyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2038_mekar, 'Mekar', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2038_mekar, 'Bunga', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2038_mekar, 'さ', true, 'kunyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2038_mekar, 'しょう', false, 'onyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2039_mengolah, 'Mengolah', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2039_mengolah, 'ばい', true, 'onyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2039_mengolah, 'つちか', false, 'kunyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2040_menyesali, 'Menyesali', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2040_menyesali, 'かい', true, 'onyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2040_menyesali, 'くや', false, 'kunyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2040_menyesali, 'く', false, 'kunyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2041_ketiak, 'Ketiak', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2041_ketiak, 'わき', true, 'kunyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2041_ketiak, 'きょう', false, 'onyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2042_menyelesaikan, 'Menyelesaikan', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2042_menyelesaikan, 'すい', true, 'onyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2042_menyelesaikan, 'と', false, 'kunyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2042_menyelesaikan, 'つい', false, 'kunyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2043_pasukan, 'Pasukan', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2043_pasukan, 'はん', true, 'onyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2044_cat, 'Cat', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2044_cat, 'と', true, 'onyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2044_cat, 'ぬ', false, 'kunyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2045_diagonal, 'Diagonal', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2045_diagonal, 'しゃ', true, 'onyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2045_diagonal, 'なな', false, 'kunyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2046_memukul, 'Memukul', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2046_memukul, 'Memukul', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2046_memukul, 'おう', true, 'onyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2046_memukul, 'なぐ', false, 'kunyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2047_tameng, 'Tameng', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2047_tameng, 'じゅん', true, 'onyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2047_tameng, 'たて', false, 'kunyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2048_memanen, 'Memanen', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2048_memanen, 'かく', true, 'onyomi');

  -- 3. VOCABULARIES
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '二十歳', 'dua-puluh-tahun', 48, 39, '<kanji>Dua</kanji> kali <kanji>sepuluh</kanji> <kanji>tahun</kanji> adalah <vocabulary>dua puluh tahun</vocabulary>.

Karena 〜歳 bisa diganti dengan 〜才, 二十歳 juga bisa ditulis 二十才. Apa pun yang terjadi, itu tetap berarti Anda sudah resmi menjadi orang dewasa di Jepang… meskipun Anda belum merasa seperti itu.', 'Bacaan untuk anak usia dua puluh tahun khususnya adalah bacaan yang sangat aneh. Itu はたち. Saat Anda berusia <vocabulary>dua puluh tahun</vocabulary> Anda menjadi pembenci keju. Seorang <read>pembenci keju</reading> (はたち) adalah orang yang baik hati.')
    RETURNING id INTO v_6992_dua_puluh_tahun;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '砕く', 'untuk-menghancurkan', 48, 40, 'Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanji itu sendiri berarti <kanji>menghancurkan</kanji> dan versi kosakata kata kerja dari kanji tersebut adalah <vocabulary>to smash</vocabulary> atau <vocabulary>to break</vocabulary>.', 'Anda ingin <vocabulary>menghancurkan</vocabulary> barang-barang saya? Itu <reading>coo'' だ</reading> (くだ). Apapun yang ingin kamu lakukan.')
    RETURNING id INTO v_7057_untuk_menghancurkan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '炊く', 'untuk-memasak', 48, 41, 'Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanjinya sendiri berarti <kanji>memasak</kanji> dan versi kosakata kata kerjanya adalah <vocabulary>memasak</vocabulary> atau <vocabulary>merebus</vocabulary>. Seringkali hal ini ada hubungannya dengan memasak biji-bijian (<vocabulary>memasak biji-bijian</vocabulary>).', 'Saat Anda memasak sesuatu, itu seperti Anda<reading>menyerang</reading>memakan (たく) makanan tersebut dengan air mendidih atau api atau apa pun. Serang makanan dengan memasaknya!')
    RETURNING id INTO v_7123_untuk_memasak;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '癖に', 'namun', 48, 42, 'Meskipun Anda memiliki <kanji>kebiasaan</kanji> ini, Anda tetap bisa menang. Oleh karena itu, ini disebut <vocabulary>Namun</vocabulary>, <vocabulary>meskipun</vocabulary>, dan <vocabulary>meskipun</vocabulary>. Sebab, <vocabulary>walaupun</vocabulary> kebiasaan buruk Anda, Anda tetap menang. Membuat frustrasi.', 'Bacaannya berasal dari kata 癖.')
    RETURNING id INTO v_7152_namun;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '帝国主義', 'imperialisme', 48, 43, '<kanji>Kekaisaran</kanji> (帝国) <kanji>isme</kanji> (主義) adalah saat Anda melakukan <vocabulary>imperialisme</vocabulary>. Hidup Kaisar!', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri. Akan membantu untuk mengetahui dua kata yang terdiri dari kata ini, 帝国 dan 主義.')
    RETURNING id INTO v_7153_imperialisme;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '車椅子', 'kursi-roda', 48, 44, 'Anda tahu bahwa 椅子 adalah "kursi". Bagaimana dengan <kanji>mobil</kanji> <kanji>kursi</kanji>? Itu adalah kursi dengan roda. <vocabulary>kursi roda</vocabulary>.', 'Bacaan 車 adalah bacaan kosakata, くるま. Lalu, 椅子 adalah いす.')
    RETURNING id INTO v_7154_kursi_roda;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '土俵際', 'tepi-cincin-sumo', 48, 45, 'Ingat bagaimana 土俵 ring sumo? Sekarang Anda berada di <kanji>tepi</kanji>, yang berarti ini adalah <vocabulary>tepi ring sumo</vocabulary>. Ini juga bisa merujuk pada <vocabulary>momen terakhir</vocabulary> atau <vocabulary>momen kritis</vocabulary> dalam suatu waktu, seperti momen sebelum Anda dikeluarkan dari ring.', 'Ini menggabungkan bacaan on''yomi dalam vocab 土俵 dengan bacaan kun''yomi yang Anda pelajari dari vocab 際. Anggap saja ini sebagai dua kosakata familiar yang digabungkan menjadi satu dan Anda siap melakukannya!')
    RETURNING id INTO v_7155_tepi_cincin_sumo;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '紛れ', 'kebetulan', 48, 46, 'Saat Anda <kanji>terganggu</kanji>, semua yang Anda lakukan hanyalah <vocabulary>kebetulan</vocabulary>. Anda tidak fokus, jadi semuanya terjadi pada <vocabulary>kebetulan</vocabulary>.

Perhatikan bahwa kata ini sebagian besar ditulis dalam huruf kana saja!', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi. Ini menggunakan bacaan yang berbeda dari yang sudah Anda pelajari, jadi inilah mnemonik untuk membantu Anda:

Seseorang sedang mencoba <reading>mug</reading> (まぐ) Anda, tapi Anda berhasil melarikan diri hanya karena <vocabulary>kebetulan</vocabulary>! Pelarianmu mungkin hanya <vocabulary>kebetulan</vocabulary>, tapi setidaknya kamu tidak dirampok!')
    RETURNING id INTO v_7156_kebetulan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '脅迫', 'ancaman', 48, 47, 'Hal yang akan <kanji>mengancam</kanji> dan kemudian <kanji>mendorong</kanji> Anda untuk melakukan hal lain adalah <vocabulary>ancaman</vocabulary> dan <vocabulary>menace</vocabulary>.

Perhatikan bahwa 脅迫 sering kali melibatkan ancaman terbuka dan serius yang mungkin melampaui batas hukum.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_7158_ancaman;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '魔法使い', 'penyihir', 48, 48, 'Anda tahu bahwa 魔法 adalah "sihir", lalu bagaimana dengan seseorang yang <kanji>menggunakan</kanji>sihir</kanji>? Apa sebutannya? Bagaimana dengan <vocabulary>penyihir</vocabulary>, <vocabulary>penyihir</vocabulary>, atau <vocabulary>penyihir</vocabulary>?', 'Pembacaan 魔法 adalah apa yang Anda pelajari dengan kanji. Bacaan 使い sama dengan 使う.')
    RETURNING id INTO v_7159_penyihir;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '備蓄', 'toko-darurat', 48, 49, 'Saya butuh sesuatu untuk <kanji>disediakan</kanji> untuk saya dalam keadaan darurat, jadi saya <kanji>mengumpulkan</kanji>di <vocabulary>toko darurat</vocabulary>. Saya sedang membangun <vocabulary>stockpile</vocabulary> dari <vocabulary>reserve</vocabulary>, untuk berjaga-jaga.

備蓄 adalah kata formal untuk menimbun atau memesan persediaan untuk digunakan di masa depan, terutama dalam persiapan menghadapi keadaan darurat atau kekurangan. Biasanya digunakan untuk menyimpan makanan, air, bahan bakar, atau kebutuhan lainnya jika terjadi bencana.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_7161_toko_darurat;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '貯蓄', 'tabungan', 48, 50, 'Ambil <kanji>tabungan</kanji> Anda dan <kanji>kumpulkan</kanji>. Itulah <vocabulary>tabungan</vocabulary> Anda.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_7162_tabungan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '蓄える', 'untuk-menyimpan', 48, 51, 'Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanjinya sendiri berarti <kanji>mengumpulkan</kanji> dan versi kosakata kata kerjanya adalah <vocabulary>to store up</vocabulary> — seperti mengumpulkan dan menyimpan sesuatu secara bertahap sehingga selalu ada saat Anda membutuhkannya.

Hal ini sering kali berkaitan dengan menyimpan makanan atau persediaan. Demikian pula, ini bisa berarti <kosakata>mengumpulkan</vocabulary> kekayaan untuk digunakan nanti, atau <vocabulary>mengumpulkan</vocabulary> hal-hal seperti stamina dan pengetahuan untuk mempersiapkan diri secara perlahan menghadapi sesuatu. Anda bahkan bisa mengucapkan ヒゲを蓄える (untuk menumbuhkan atau menumbuhkan rambut wajah). Kesiapan datang dalam berbagai bentuk, lho?', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi. Anda tidak belajar membaca dengan kanji ini, jadi inilah mnemonik untuk membantu Anda:

Anda perlu <vocabulary>untuk menyimpan</vocabulary> sesuatu, jadi Anda <reading>mengambil satu</reading> (たくわ) dan menyimpannya, lalu mengambil satu lagi dan menyimpannya lagi. Ulangi <vocabulary>ini untuk mengumpulkan</vocabulary> segala macam hal seiring waktu. Ini adalah cara terbaik <vocabulary>untuk membangun</vocabulary> simpanan kecil yang bagus.')
    RETURNING id INTO v_7163_untuk_menyimpan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '蚊', 'nyamuk', 48, 52, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.', 'Bacaannya sama dengan yang Anda pelajari dengan kanji.')
    RETURNING id INTO v_7164_nyamuk;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '蚊帳', 'kawat-nyamuk', 48, 53, '<kanji>nyamuk</kanji> <kanji>buku catatan</kanji>, entah kenapa, adalah <vocabulary>kelambu</vocabulary>. Bayangkan sebuah buku catatan dengan garis-garis kertas grafik di atasnya, mungkin. Garis-garis ini berbentuk seperti jaring. Kelilingi diri Anda dengan itu untuk membuat <vocabulary>kelambu</vocabulary> Anda sendiri.', 'Kanji pertama, 蚊, menggunakan bacaan yang Anda pelajari. Kanji kedua memiliki bacaan yang luar biasa, や. Untuk mengingat や, pikirkan tentang bagaimana Anda harus mengambil <vocabulary>kelambu nyamuk</vocabulary> raksasa dan menutupi seluruh Stadion <reading>Ya</reading>nkee (や). Mereka mempunyai masalah nyamuk yang parah.')
    RETURNING id INTO v_7165_kawat_nyamuk;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '記帳', 'registri', 48, 54, 'Silakan <kanji>catat</kanji> di <kanji>buku catatan</kanji>. Ini akan menjadi <vocabulary>registrasi</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_7166_registri;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '手帳', 'buku-catatan', 48, 55, '<kanji>tangan</kanji> <kanji>buku catatan</kanji> adalah buku catatan yang dapat Anda pegang. Ini bisa saja berupa <vocabulary>notebook</vocabulary>, namun bisa juga berupa <vocabulary>planner</vocabulary>.', 'Bacaannya adalah bacaan yang Anda pelajari dengan kanji.')
    RETURNING id INTO v_7167_buku_catatan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', 'メモ帳', 'buku-memo', 48, 56, '<kanji>memo</kanji> (メモ) <kanji>notebook</kanji> adalah <vocabulary>memobook</vocabulary> atau <vocabulary>memo pad</vocabulary> yang Anda gunakan untuk menulis catatan.', 'Bacaannya adalah yang Anda pelajari dengan kanji, ditambah メモ.')
    RETURNING id INTO v_7168_buku_memo;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '電話帳', 'buku-telepon', 48, 57, '<kanji>telepon</kanji> (電話) <kanji>buku catatan</kanji> adalah buku yang Anda gunakan dengan telepon Anda. Ini adalah <vocabulary>buku telepon</vocabulary> atau <vocabulary>direktori telepon</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_7169_buku_telepon;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '蛇', 'ular', 48, 58, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.', 'Bacaannya sama dengan yang Anda pelajari dengan kanji.')
    RETURNING id INTO v_7170_ular;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '貼る', 'untuk-menempel', 48, 59, 'Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanji itu sendiri berarti <kanji>menempel</kanji> sehingga kata kerjanya adalah <vocabulary>to paste</vocabulary> (atau <vocabulary>to stick</vocabulary>).', 'Bacaannya sama dengan yang Anda pelajari dengan kanji.')
    RETURNING id INTO v_7171_untuk_menempel;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '辱める', 'untuk-mempermalukan', 48, 60, 'Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanjinya sendiri berarti <kanji>mempermalukan</kanji> jadi versi kosakata kata kerjanya adalah <vocabulary>to merendahkan</vocabulary> atau <vocabulary>to aib</vocabulary>.

Ini adalah kata formal untuk menggambarkan suatu tindakan yang merusak reputasi seseorang atau membuat mereka merasa sangat malu, sering kali dalam situasi publik. Dalam beberapa konteks, ini juga bisa berarti pelecehan seksual, jadi penggunaannya harus hati-hati.', 'Ingat kata 恥ずかしい? Bacaannya sama dengan yang ini, dan maknanya juga serupa.')
    RETURNING id INTO v_7172_untuk_mempermalukan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '恥辱', 'aib', 48, 61, 'Jika Anda <kanji>mempermalukan</kanji> dan <kanji>mempermalukan</kanji> saya, saya akan merasakan <vocabulary>aib</vocabulary>, <vocabulary>malu</vocabulary>.', 'Bacaan dari 恥 adalah bacaan ち, bacaan yang belum Anda pelajari. Untuk mengingat hal ini, coba pikirkan bagaimana <reading>chee</reading>se <reading>atlet</reading> adalah aib terbesar bagi tim olahraga ini. Bagaimanapun, dia adalah keju. Dia berantakan dan berbau lucu.')
    RETURNING id INTO v_7173_aib;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '屈辱', 'aib', 48, 62, '<kanji>Hasilkan</kanji> sebuah <kanji>penghinaan</kanji>ke dalam hidup Anda. Benar-benar <vocabulary>memalukan</vocabulary>. Benar-benar sebuah <vocabulary>penghinaan</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_7174_aib;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '鉢', 'pot-bunga', 48, 63, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.', 'Bacaannya sama dengan yang Anda pelajari dengan kanji.')
    RETURNING id INTO v_7175_pot_bunga;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '火鉢', 'anglo', 48, 64, 'Nyalakan <kanji>api</kanji> di <kanji>pot bunga</kanji> Anda untuk membuat <vocabulary>anglo</vocabulary>. Anglo buatan sendiri yang bagus. Ini mungkin merusak estetika taman Anda, tapi setidaknya Anda akan merasa hangat. (Atau Anda mungkin akan membakar rumah Anda.)', 'Bacaannya adalah bacaan vocab untuk 火 dan bacaan yang dipelajari untuk 鉢, rendaku''d.')
    RETURNING id INTO v_7176_anglo;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '鉢巻', 'ikat-kepala', 48, 65, 'Di atas <kanji>pot bunga</kanji> Anda tergantung <kanji>gulungan</kanji>, namun tidak hanya digunakan sebagai hiasan — Anda juga dapat menggunakannya sebagai <vocabulary>ikat kepala</vocabulary> saat Anda berkebun! Menanam bunga adalah pekerjaan yang melelahkan, dan ikat kepala yang bagus dapat membuat perbedaan besar.', 'Bacaannya adalah bacaan 鉢 dan 巻く yang dirangkai menjadi satu kata. Bacaannya cukup aneh, tapi mudah-mudahan Anda bisa memahaminya.')
    RETURNING id INTO v_7177_ikat_kepala;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '闇', 'kegelapan', 48, 66, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.', 'Bacaannya sama dengan yang Anda pelajari dengan kanji.')
    RETURNING id INTO v_7178_kegelapan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '暗闇', 'kegelapan', 48, 67, '<kanji>gelap</kanji> <kanji>kegelapan</kanji> adalah <vocabulary>kegelapan</vocabulary>. Itu adalah <vocabulary>kegelapan</vocabulary>.', 'Bacaannya merupakan bacaan kun''yomi dari kedua kanji tersebut. Pembacaan dari 暗い dan pembacaan kanji 闇.')
    RETURNING id INTO v_7179_kegelapan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '無闇に', 'tanpa-berpikir-panjang', 48, 68, '"<kanji>Kegelapan</kanji> <kanji>tidak ada</kanji> yang perlu dikhawatirkan," kataku <vocabulary>tanpa berpikir panjang</vocabulary> dan <vocabulary>tidak masuk akal</vocabulary>. Tentu saja kegelapan patut dikhawatirkan. Ini kegelapan! Siapa yang tahu apa yang ada di sana!', 'Bacaannya adalah yang Anda pelajari dengan kanji.')
    RETURNING id INTO v_7180_tanpa_berpikir_panjang;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '隙', 'celah', 48, 69, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.', 'Bacaannya sama dengan yang Anda pelajari dengan kanji.')
    RETURNING id INTO v_7181_celah;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '隙間', 'celah', 48, 70, '<kanji>celah</kanji> <kanji>interval</kanji> adalah area dengan <vocabulary>celah</vocabulary> atau <vocabulary>crack</vocabulary>.', 'Bacaan 隙 adalah yang Anda pelajari dengan kanji dan 間 adalah bacaan 間に合う.')
    RETURNING id INTO v_7182_celah;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '霜', 'embun-beku', 48, 71, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.', 'Bacaannya sama dengan yang Anda pelajari dengan kanji.')
    RETURNING id INTO v_7183_embun_beku;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '飢餓', 'kelaparan', 48, 72, 'Satu orang <kanji>kelaparan</kanji> dan orang lain <kanji>kelaparan</kanji>. Lalu lebih banyak orang. Begitu banyak kelaparan sehingga <vocabulary>starvation</vocabulary> terjadi. <vocabulary>kelaparan</vocabulary> dan <vocabulary>kelaparan</vocabulary> ada di mana-mana.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_7184_kelaparan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '飢える', 'untuk-kelaparan', 48, 73, 'Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanjinya sendiri berarti <kanji>kelaparan</kanji> dan versi kosakata kata kerjanya adalah <vocabulary>to starve</vocabulary>.

Ini adalah kata formal dan sering digunakan dalam frasa seperti 愛情に飢える (<vocabulary>haus akan</vocabulary> cinta) atau 知識に飢える (<vocabulary>haus akan</vocabulary> pengetahuan).', 'Ketika Anda hampir <vocabulary>kelaparan</vocabulary>, apa yang Anda rindukan? <read>U</reading>ni (う), tentu saja! Saat rasa lapar Anda semakin meningkat, yang terpikir oleh Anda hanyalah uni!')
    RETURNING id INTO v_7185_untuk_kelaparan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '餓死', 'kematian-karena-kelaparan', 48, 74, '<kanji>Lapar</kanji> sampai <kanji>mati</kanji> adalah <vocabulary>kematian karena kelaparan</vocabulary>... <vocabulary>Laparan sampai mati</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_7186_kematian_karena_kelaparan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '畜産', 'peternakan', 48, 75, '<kanji>Ternak</kanji> akan <kanji>melahirkan</kanji> lebih banyak ternak. Anda berkecimpung dalam bisnis <vocabulary>peternakan</vocabulary>, itulah alasannya. Ini adalah <vocabulary>peternakan</vocabulary>.

畜産 adalah istilah pertanian formal, sering digunakan dalam diskusi tentang industri pertanian, produksi pangan, dan dampak lingkungan.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_7187_peternakan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '家畜', 'hewan-domestik', 48, 76, '<kanji>Rumah</kanji> <kanji>ternak</kanji> yang rusak adalah <vocabulary>hewan peliharaan</vocabulary> / <vocabulary>ternak</vocabulary>. Mereka dibuat untuk tinggal bersama kita di dalam atau di dekat rumah kita.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_7188_hewan_domestik;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '畜生', 'brengsek', 48, 77, '<kanji>ternak</kanji> <kanji>kehidupan</kanji>. Kehidupan <vocabulary>binatang</vocabulary>! Arghhh, <vocabulary>sialan</vocabulary>, aku benci kehidupan binatang. Brengsek.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_7189_brengsek;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '迅速', 'cepat', 48, 78, 'Hal-hal yang <kanji>cepat</kanji> dan <kanji>cepat</kanji> akan menjadi <vocabulary>cepat</vocabulary> dan <vocabulary>cepat</vocabulary> dan <vocabulary>cepat</vocabulary> dan <vocabulary>cepat</vocabulary>. Begitu banyak hal yang cepat.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_7190_cepat;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '騎士', 'ksatria', 48, 79, '<kanji>menunggang kuda</kanji> <kanji>samurai</kanji> juga dikenal sebagai <vocabulary>kesatria</vocabulary>. Majulah, para ksatria bulat! Pergi untuk menemukan cawan suci!', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_7191_ksatria;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '騎手', 'joki', 48, 80, '手 mengambil arti alternatifnya "pelaku" di sini, sehingga memberi kita <kanji>menunggang kuda</kanji> <kanji>pelaku</kanji>. Siapa yang menunggang kuda? Itu adalah <vocabulary>joki</vocabulary>.

Kata ini biasanya mengacu pada pengendara profesional atau terampil dalam balap kuda atau olahraga berkuda.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_7193_joki;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '尽きる', 'untuk-digunakan', 48, 81, 'Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanji itu sendiri berarti <kanji>habis</kanji> atau <kanji>habis</kanji>, dan kata kerja ini adalah <kosakata>habis</vocabulary>, <vocabulary>habis</vocabulary>, atau <vocabulary>habis</vocabulary>.', 'Jika ada sesuatu yang habis itu karena Anda <membaca>terlalu</reading> (つ) banyak, dan sekarang semuanya hilang.')
    RETURNING id INTO v_7195_untuk_digunakan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '理不尽', 'tidak-masuk-akal', 48, 82, '<kanji>Alasan</kanji> <kanji>tidak</kanji> <kanji>habis</kanji>ed... tapi yang Anda tanyakan <vocabulary>tidak masuk akal</vocabulary>. Namun, alasanku akan segera habis.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_7196_tidak_masuk_akal;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '尽力', 'upaya', 48, 83, 'Jika Anda <kanji>menghabiskan</kanji> <kanji>tenaga</kanji> Anda mengeluarkan <vocabulary>usaha</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_7197_upaya;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '彩る', 'untuk-mewarnai-sesuatu', 48, 84, 'Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanjinya sendiri artinya <kanji>mewarnai</kanji> jadi versi kosakata verbanya adalah <vocabulary>mewarnai sesuatu</vocabulary>, karena sedang melakukan pewarnaan.', 'Anda dapat <vocabulary>mewarnai sesuatu</vocabulary>, mengecat seluruh dinding dengan warna tersebut. Soalnya, pewarnanya terbuat dari ACID. Hal ini menyebabkan dinding <reading>erosi</reading> (いろど).')
    RETURNING id INTO v_7198_untuk_mewarnai_sesuatu;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '色彩', 'warna', 48, 85, '<kanji>warna</kanji> <kanji>pewarnaan</kanji> adalah <vocabulary>warna</vocabulary> dari sesuatu.', '色 menggunakan bacaan しき (ingat 景色?). Gunakan itu di sini dengan pembacaan 彩 kanji.')
    RETURNING id INTO v_7199_warna;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '迷彩', 'kamuflase', 48, 86, '<kanji>Astray</kanji> <kanji>pewarnaan</kanji> adalah pewarnaan yang ada dimana-mana. Itu tersesat di seluruh pakaianmu. Pewarnaan sesat ini adalah <vocabulary>kamuflase</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_7200_kamuflase;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '水彩画', 'lukisan-cat-air', 48, 87, '<kanji>air</kanji> <kanji>pewarnaan</kanji> <kanji>lukisan</kanji> adalah <vocabulary>lukisan cat air</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_7201_lukisan_cat_air;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '油彩', 'lukisan-cat-minyak', 48, 88, '<kanji>Minyak</kanji> <kanji>pewarnaan</kanji> lebih dikenal dengan <vocabulary>lukisan cat minyak</vocabulary>. Pukulan yang bagus sekali! Garis yang sangat bagus!', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_7202_lukisan_cat_minyak;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '記憶', 'ingatan', 48, 89, 'Ketika Anda <kanji>merekam</kanji> <kanji>ingatan</kanji> di pikiran Anda, konsep itu adalah konsep <vocabulary>memori</vocabulary>. Kata ini bukanlah ingatan yang spesifik, melainkan gagasan tentang ingatan itu sendiri. Jadi, eh, cobalah untuk menghafalnya.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_7203_ingatan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '憶測', 'tebakan', 48, 90, '<kanji>ingatan</kanji> dan <kanji>pengukuran</kanji>situasi inilah yang saya gunakan untuk membuat <vocabulary>tebakan</vocabulary> dan <vocabulary>spekulasi</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_7204_tebakan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '溶かす', 'untuk-melelehkan-sesuatu', 48, 91, 'Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanji itu sendiri berarti <kanji>meleleh</kanji> dan kata ini berarti <vocabulary>meleleh sesuatu</vocabulary> atau <vocabulary>meleleh</vocabulary>. Anda melakukan pencairan, dan Anda mengetahuinya karena Anda adalah <reading>penyebab</reading> (かす) pencairan tersebut.', 'Hal yang kamu lelehkan dalam situasi ini adalah <reading>jari kaki</reading> (と). Rasakan jari kaki Anda meleleh. Aduhh sakit.')
    RETURNING id INTO v_7205_untuk_melelehkan_sesuatu;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '溶岩', 'lahar', 48, 92, 'Bisakah <kanji>melelehkan</kanji> sebuah <kanji>batu besar</kanji>? Benda apa yang begitu panas ini? Itu adalah <vocabulary>lava</vocabulary>. Itu juga mungkin terbuat dari batu-batu besar yang meleleh, kalau dipikir-pikir.', 'Kata ini menggunakan bacaan on''yomi untuk kanjinya, namun kamu belum mempelajari bacaan on''yomi untuk 岩, yaitu がん. Saat Anda memikirkan <vocabulary>lava</vocabulary>, pikirkan tentang <reading>Ga</reading>ndhi, yang keluar dari lava. Dia kebal, karena dia robot.')
    RETURNING id INTO v_7206_lahar;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '水溶性', 'larut-dalam-air', 48, 93, 'Dengan <kanji>air</kanji> itu akan <kanji>mencair</kanji>. Memang <kanji>alami</kanji> seperti ini. <vocabulary>larut dalam air</vocabulary>.

水溶性 adalah istilah ilmiah dan teknis yang merujuk pada <kosakata>kelarutan dalam air</vocabulary>. Ini biasanya digunakan dalam kimia, kedokteran, dan deskripsi produk.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_7207_larut_dalam_air;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '耐える', 'untuk-bertahan', 48, 94, 'Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanji itu sendiri berarti <kanji>tahan</kanji>. Jika Anda menolak sesuatu, maka Anda bertahan dan menahannya. Itulah mengapa ini adalah <vocabulary>bertahan</vocabulary> dan <vocabulary>menahan</vocabulary>.', 'Apa yang <vocabulary>harus Anda tanggung</vocabulary>? Rentetan <reading>ta</reading>cos (た), datang ke arah Anda.')
    RETURNING id INTO v_7208_untuk_bertahan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '忍耐', 'ketahanan', 48, 95, 'Saya <kanji>tahan</kanji> dan saya <kanji>bertahan</kanji>. Saya memiliki banyak <vocabulary>ketahanan</vocabulary> dan <vocabulary>perseverance</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_7209_ketahanan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '耐熱', 'tahan-panas', 48, 96, 'Jika sesuatu <kanji>tahan</kanji> terhadap <kanji>panas</kanji> maka benda tersebut <vocabulary>tahan panas</vocabulary> atau <vocabulary>tahan panas</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_7210_tahan_panas;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '耐火', 'tahan-api', 48, 97, 'Jika sesuatu <kanji>tahan</kanji> terhadap <kanji>api</kanji> maka benda tersebut <vocabulary>tahan api</vocabulary> atau <vocabulary>tahan api</vocabulary>. Kura-kura bukan ini.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_7211_tahan_api;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '耐久性', 'daya-tahan', 48, 98, 'Saya memiliki <kanji>sifat</kanji> yaitu <kanji>tahan</kanji> untuk <kanji>waktu yang lama</kanji>. Benda yang tahan dalam jangka waktu lama mempunyai <vocabulary>daya tahan</vocabulary> yang baik.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_7212_daya_tahan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '踊る', 'untuk-menari', 48, 99, 'Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanji itu sendiri berarti <kanji>menari</kanji> dan versi vocab verbanya berarti <vocabulary>menari</vocabulary>.', 'Bacaannya sama dengan yang Anda pelajari dengan kanji.')
    RETURNING id INTO v_7213_untuk_menari;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '踊り', 'menari', 48, 100, '<kanji>tarian</kanji> adalah <vocabulary>tarian</vocabulary>.', 'Bacaannya adalah yang Anda pelajari dengan kanji.')
    RETURNING id INTO v_7214_menari;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '踊り場', 'pendaratan', 48, 101, 'Meskipun <kanji>dansa</kanji> <kanji>lokasi</kanji> bisa menjadi lokasi di mana Anda menari, kata ini sebenarnya berarti <vocabulary>landing</vocabulary> (seperti dalam, pendaratan di antara dua anak tangga di sebuah tangga) atau <vocabulary>dataran tinggi</vocabulary> (seperti dalam, misalnya, perekonomian yang stabil) hampir sepanjang waktu.

Meskipun maknanya telah berubah dari waktu ke waktu dan sebagian besar mengacu pada pendaratan di tangga, kata ini masih dapat digunakan untuk <kosakata>ruang dansa</vocabulary> atau <vocabulary>lantai dansa</vocabulary>, meskipun kata pinjaman seperti ダンスホール lebih umum digunakan saat ini.', 'Anda sudah mengetahui semua bacaan untuk kosakata ini, pastikan untuk menggunakan yang kun''yomi!')
    RETURNING id INTO v_7215_pendaratan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '盆踊り', 'tarian-festival-leluhur', 48, 102, '<kanji>festival leluhur</kanji> <kanji>tarian</kanji> adalah <vocabulary>tarian festival leluhur</vocabulary>, atau <vocabulary>tarian festival bon</vocabulary>.

盆踊り (<vocabulary>bon odori</vocabulary>) adalah tarian festival yang ditampilkan untuk Obon, sebuah acara Budha yang menghormati roh leluhur seseorang. Dalam tarian ini, orang sering mengenakan yukata dan menari berputar-putar di sekitar platform pusat, bergerak dalam pola yang sinkron. Ini saat yang menyenangkan, pastikan untuk menghadirinya jika Anda bisa!', 'Bacaannya adalah 盆 ditambah 躍り yang dirangkai menjadi satu kata.')
    RETURNING id INTO v_7216_tarian_festival_leluhur;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '賢い', 'cerdik', 48, 103, 'Ini adalah kanji tunggal dengan い di akhir, artinya Anda tahu itu mungkin kata sifat. Apa bentuk kata sifat dari <kanji>pintar</kanji>? Itu <vocabulary>pintar</vocabulary> atau <vocabulary>cerdas</vocabulary>.', 'Jika Anda cukup <vocabulary>pintar</vocabulary>, Anda dapat memulai sebuah perusahaan hebat yang menghasilkan banyak uang. Sebuah <membaca>uang tunai</reading> (かしこ).')
    RETURNING id INTO v_7217_cerdik;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '賢人', 'sage', 48, 104, 'A <kanji>wise</kanji> <kanji>person</kanji> is a <vocabulary>sage</vocabulary>! Or you can just be straightforward and call them a <vocabulary>wise person</vocabulary>. 

賢人 is a somewhat old-fashioned word used to describe someone with deep knowledge or good judgment. It has a dignified, antiquated feel that makes you think of wise figures in old legends or classical literature.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_7218_sage;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '賢明', 'bijak', 48, 105, 'You''re <kanji>wise</kanji> and <kanji>bright</kanji> so obviously you''re going to make <vocabulary>wise</vocabulary> decisions too — <vocabulary>sensible</vocabulary> in every regard. In fact, when you make these very wise choices and judgment calls, your brain glows brightly.

賢明 is a formal word that is often seen in writing. It''s commonly used to say how someone made a wise decision or sensible choice.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_7219_bijak;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '輝く', 'untuk-bersinar', 48, 106, 'Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanji itu sendiri berarti <kanji>cahaya</kanji>. Bayangkan jika ada sesuatu yang memancar ke benda lain. Hal itu akan menyebabkan <vocabulary>bersinar</vocabulary> atau <vocabulary>berkilau</vocabulary> atau <vocabulary>berkilau</vocabulary>.', '<reading>roda yak</reading> sangat berkilau. Sangat berkilau sehingga mulai <vocabulary>bersinar</vocabulary> dan berkilauan. Saya tidak tahu apa itu roda gigi, tapi bayangkan di kepala Anda dan bayangkan itu sangat berkilau, bersinar dan berkilau.')
    RETURNING id INTO v_7220_untuk_bersinar;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '光輝', 'kecerahan', 48, 107, '<kanji>cahaya</kanji> <kanji>pancaran</kanji> adalah <vocabulary>kecerahan</vocabulary> dan <vocabulary>kemegahan</vocabulary>.

光輝 dapat merujuk pada pancaran fisik atau kecemerlangan metaforis dari pencapaian seseorang. Ini adalah kata formal yang sebagian besar digunakan dalam konteks tertulis tingkat lanjut, namun Anda mungkin juga menemukannya sebagai nama (biasanya untuk pria) dalam kehidupan sehari-hari.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_7221_kecerahan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '輝度', 'pencahayaan', 48, 108, '<kanji>pancaran</kanji> <kanji>derajat</kanji> menunjukkan <vocabulary>pencahayaan</vocabulary> dan <vocabulary>kecerahan</vocabulary> sesuatu.

Ini adalah istilah teknis yang digunakan dalam fisika. Ini mengacu pada jumlah cahaya yang dipantulkan atau dipancarkan dari suatu permukaan.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_7222_pencahayaan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '麻', 'ganja', 48, 109, 'Kanji dan kata-katanya sama persis. Itu berarti keduanya mempunyai arti yang sama, tapi itu juga berarti <vocabulary>ganja</vocabulary>.', 'Anda selalu menghisap <vocabulary>ganja</vocabulary> Anda di <reading>朝</reading> (あさ). Tidak ada waktu lain. Hanya 朝.')
    RETURNING id INTO v_7223_ganja;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '大麻', 'ganja', 48, 110, '<kanji>Besar</kanji> <kanji>rami</kanji> adalah <vocabulary>marijuana</vocabulary> atau <vocabulary>ganja</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_7224_ganja;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '麻酔', 'anestesi', 48, 111, '<kanji>rami</kanji> <kanji>mabuk</kanji> adalah ketika Anda mengambil "rami" dan memasukkannya ke dalam tubuh Anda sehingga Anda tidak merasakan apa-apa lagi. Ini adalah <vocabulary>anestesi</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_7225_anestesi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '咲く', 'untuk-mekar', 48, 112, 'Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanji itu sendiri berarti <kanji>mekar</kanji> atau <kanji>mekar</kanji> dan versi kata kerjanya adalah <vocabulary>mekar</vocabulary>.', 'Bacaannya sama dengan yang Anda pelajari dengan kanji.')
    RETURNING id INTO v_7229_untuk_mekar;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '遅咲き', 'bunga-terlambat', 48, 113, '<kanji>lambat</kanji> <kanji>mekar</kanji> adalah mekar yang terjadi terlambat. Itu adalah <vocabulary>bunga terlambat</vocabulary> atau <vocabulary>mekar terlambat</vocabulary>. Penting untuk mengetahui apakah Anda akan pergi melakukan 花見.', 'Bacaannya adalah 遅い dan 咲く yang digabungkan (bacaan yang sama yang Anda pelajari dari 咲 kanji). Hati-hati dengan rendaku.')
    RETURNING id INTO v_7230_bunga_terlambat;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '返り咲き', 'kembali', 48, 114, '<kanji>kembalinya</kanji> <kanji>mekar</kanji> adalah saat mekarnya kembali. <vocabulary>mekar kedua</vocabulary>. Ini adalah kata lain dari <vocabulary>comeback</vocabulary>.', 'Bacaannya adalah bacaan dari 返る dan kanji 咲. Hati-hati dengan rendaku yang mengubah さ menjadi ざ.')
    RETURNING id INTO v_7231_kembali;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '培う', 'untuk-berkultivasi', 48, 115, 'Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanjinya sendiri berarti <kanji>mengolah</kanji> dan versi vocab verbanya berarti <vocabulary>mengolah</vocabulary>.', 'Anda ingin <vocabulary>menumbuhkan</vocabulary> pertemanan baru, jadi Anda memutuskan <vocabulary>untuk membina</vocabulary> hubungan dengan <reading>dua chica</reading> (つちか), dengan harapan dapat mendatangkan lebih banyak orang ke dalam hidup Anda. Sekarang, apa pun yang ingin Anda kembangkan, Anda akan selalu mempunyai dua chica yang siap membantu Anda.')
    RETURNING id INTO v_7232_untuk_berkultivasi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '培養', 'penanaman', 48, 116, '<kanji>Mengolah</kanji> dan <kanji>menumbuhkan</kanji> sesuatu. Itulah <vocabulary>kultivasi</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_7233_penanaman;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '悔しい', 'sangat-disesalkan', 48, 117, 'Kanjinya adalah <kanji>penyesalan</kanji> dan ini <vocabulary>disesalkan</vocabulary>. Dan sesuatu yang disesalkan mungkin akan <vocabulary>membuat frustrasi</vocabulary>, <vocabulary>menjengkelkan</vocabulary>, atau <vocabulary>mengecewakan</vocabulary>.

悔しい umumnya mengungkapkan perasaan frustrasi, penyesalan, atau kekesalan, seringkali karena rasa gagal atau kehilangan peluang. Ini menyampaikan respons emosional yang kuat terhadap situasi di mana seseorang merasa kecewa atau pahit karena tidak mencapai sesuatu yang diinginkannya, terutama ketika mereka sudah dekat dengan kesuksesan atau ketika hasilnya terasa tidak adil.', '<vocabulary>disesalkan</vocabulary> jika kamu tidak <reading>coo</reading>l, <reading>yah</reading> (くや)? Ya, itu akan sangat <vocabulary>menjengkelkan</vocabulary>.')
    RETURNING id INTO v_7234_sangat_disesalkan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '後悔', 'menyesali', 48, 118, '<kanji>dibalik</kanji> <kanji>penyesalan</kanji>ku adalah penyesalan dari sebelumnya, yang semuanya adalah penyesalan. Jadi ini berarti <vocabulary>penyesalan</vocabulary>, atau <vocabulary>pertobatan</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_7235_menyesali;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '脇', 'ketiak', 48, 119, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.', 'Bacaannya sama dengan yang Anda pelajari dengan kanji. Bukankah itu sedikit <read>aneh</reading> (わき)?')
    RETURNING id INTO v_7236_ketiak;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '脇見', 'memalingkan-muka', 48, 120, 'Jika Anda melihat ke <kanji>ketiak</kanji> untuk <kanji>melihat</kanji>, Anda <vocabulary>memandang</vocabulary> dari tempat yang seharusnya Anda lihat. Misalnya, jika Anda terlalu sibuk menatap ketiak saat mengemudi, kemungkinan besar Anda akan mengalami kecelakaan. Jadi jangan berpaling seperti ini!', 'Bacaannya adalah bacaan yang dipelajari dengan 脇 dan bacaan untuk 見る.')
    RETURNING id INTO v_7237_memalingkan_muka;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '脇役', 'aktor-pendukung', 48, 121, 'Jika Anda sedang <kanji>ketiak</kanji> <kanji>tugas</kanji> Anda pastinya bukan yang memimpin. Anda berdiri di samping ketiak pemeran utama, karena Anda adalah <vocabulary>aktor pendukung</vocabulary>. Anda berada dalam <vocabulary>peran pendukung</vocabulary>.', 'Bacaannya adalah bacaan 脇 dan bacaan 役, disatukan.')
    RETURNING id INTO v_7238_aktor_pendukung;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '未遂', 'percobaan', 48, 122, 'Saat Anda mencoba sesuatu namun <kanji>belum</kanji> <kanji>menyelesaikannya</kanji>, itu hanyalah <vocabulary>percobaan</vocabulary> yang gagal atau tetap tidak lengkap. Itu 未遂, dan sering digunakan dalam konteks hukum untuk kejahatan yang tidak berhasil.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_7239_percobaan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '遂行', 'prestasi', 48, 123, '<kanji>Selesaikan</kanji> dan <kanji>maju</kanji>! Ini adalah <vocabulary>pencapaian</vocabulary> Anda. Ini adalah <vocabulary>eksekusi</vocabulary> tindakan Anda.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_7240_prestasi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '班', 'pasukan', 48, 124, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.', 'Bacaannya sama dengan yang Anda pelajari dengan kanji.')
    RETURNING id INTO v_7241_pasukan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '班長', 'pemimpin-pasukan', 48, 125, '<kanji>pasukan</kanji> <kanji>pemimpin</kanji> adalah <vocabulary>pemimpin regu</vocabulary>. Bisa juga menjadi <vocabulary>honcho</vocabulary> (pernah bertanya-tanya dari mana kata ini berasal?).', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_7243_pemimpin_pasukan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '塗布', 'aplikasi', 48, 126, 'Mari kita <kanji>melukis</kanji> dengan cat senilai <kanji>kain</kanji> di dinding. Ini adalah salah satu <vocabulary>aplikasi</vocabulary> atau <vocabulary>pelapisan</vocabulary> cat.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_7244_aplikasi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '塗る', 'untuk-melukis', 48, 127, 'Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanji itu sendiri berarti <kanji>melukis</kanji> dan versi kosakata kata kerjanya adalah <vocabulary>to paint</vocabulary> dan <vocabulary>to plester</vocabulary> dan <vocabulary>to lacquer</vocabulary>.', 'Mari kita beri lapisan cat <reading>baru</reading> (ぬ) di dinding. Lalu kita akan memplesternya.')
    RETURNING id INTO v_7245_untuk_melukis;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '塗装', 'lapisan', 48, 128, 'Dengan <kanji>cat</kanji> saya ingin <kanji>mendandani</kanji> dinding. Mari kita letakkan <vocabulary>coating</vocabulary> dari <vocabulary>lukisan</vocabulary> di dinding.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_7246_lapisan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '塗料', 'cat', 48, 129, '<kanji>Cat</kanji> <kanji>bahan</kanji> adalah <vocabulary>cat</vocabulary>, atau <vocabulary>bahan lukisan</vocabulary>.

塗料 mengacu pada cat atau <vocabulary>coating</vocabulary> yang digunakan pada permukaan seperti dinding atau barang industri untuk menghias atau melindunginya.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_7247_cat;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '斜め', 'diagonal', 48, 130, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.', '<vocabulary>diagonal</vocabulary> adalah segala sesuatu yang sudutnya tidak siku-siku. Bahkan jika sesuatu berada pada sudut 七 (なな) persen adalah sudut <vocabulary>miring</vocabulary> diagonal, <vocabulary>miring</vocabulary>.')
    RETURNING id INTO v_7248_diagonal;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '斜面', 'miring', 48, 131, '<kanji>diagonal</kanji> <kanji>permukaan</kanji> adalah <vocabulary>miring</vocabulary>. Sebuah <vocabulary>kemiringan</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_7249_miring;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '斜体', 'huruf-miring', 48, 132, 'Jika teks memiliki <kanji>diagonal</kanji> <kanji>body</kanji>, maka teks tersebut condong. Bentuknya <vocabulary>italic</vocabulary> atau <vocabulary>gaya font italic</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_7250_huruf_miring;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '殴る', 'untuk-meninju', 48, 133, 'Karena hiragana diakhiri dengan bunyi う, Anda tahu bahwa kata ini adalah kata kerja. Kanjinya sendiri berarti <kanji>meninju</kanji>, jadi kata kerjanya berarti <vocabulary>meninju</vocabulary>, <vocabulary>menyerang</vocabulary>, atau <vocabulary>memukul</vocabulary>.', 'Seseorang <read>mengomeli</reading>mengolok-olok (なぐ) Anda dan mengomeli Anda tentang sesuatu. Anda tidak tahan lagi, jadi Anda berbalik <vocabulary>untuk meninju</vocabulary> wajah mereka.')
    RETURNING id INTO v_7251_untuk_meninju;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '殴打', 'memukul', 48, 134, '<kanji>pukulan</kanji> <kanji>pukulan</kanji> adalah <vocabulary>pukulan</vocabulary> atau <vocabulary>strike</vocabulary> atau <vocabulary>pukulan</vocabulary>. Bukan serangan persahabatan, itu sudah pasti.', 'Pembacaannya adalah pembacaan on''yomi pada kanji.')
    RETURNING id INTO v_7252_memukul;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '盾', 'tameng', 48, 135, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.', 'Bayangkan <vocabulary>perisai</vocabulary> yang besar. Ini sangat besar sehingga akan berdiri (<reading>立て</reading>) tepat di depan Anda.')
    RETURNING id INTO v_7253_tameng;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '矛盾', 'kontradiksi', 48, 136, 'Sebuah <kanji>tombak</kanji> dan <kanji>perisai</kanji>. Hal yang sangat berbeda. Sama sekali tidak menyukai satu sama lain. Sebuah <kosakata>kontradiksi</kosakata> yang lengkap.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_7254_kontradiksi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '後ろ盾', 'dukungan', 48, 137, '<kanji>belakang</kanji> <kanji>perisai</kanji> adalah perisai yang melindungi punggung Anda. Ini adalah <vocabulary>dukungan</vocabulary> atau <vocabulary>dukungan</vocabulary> Anda. Jadi, bukan perisai literal, tapi jenis perlindungan yang ingin Anda miliki.', 'Bacaannya berasal dari 後ろ dan 盾 disatukan. Hati-hati dengan rendaku.')
    RETURNING id INTO v_7255_dukungan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '収穫', 'memanen', 48, 138, '<kanji>Dapatkan</kanji> <kanji>panen</kanji>. Saat Anda melakukan ini, Anda mendapatkan <vocabulary>panen</vocabulary> atau <vocabulary>panen</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_7256_memanen;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '零れる', 'agar-tertumpah', 48, 139, 'Kata ini terdiri dari kanji dengan hiragana ditempelkan. Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja.

Ini adalah kata kerja intransitif, jadi kata kerja ini berarti <vocabulary>tumpah</vocabulary>, <vocabulary>fall out</vocabulary>, atau <vocabulary>overover</vocabulary>.', 'Karena kata ini memiliki okurigana (hiragana yang melekat pada kanji), Anda tahu bahwa kemungkinan besar itu adalah bacaan kun''yomi.

Beruntungnya Anda, pembacaan kanji untuk kata kerja transitif dan intransitif hampir selalu sama. Setelah Anda mempelajarinya, Anda akan mengetahui keduanya! Bacaan ini sama dengan 零す.')
    RETURNING id INTO v_8937_agar_tertumpah;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '賜物', 'hadiah', 48, 140, 'Seseorang <kanji>memberi</kanji>memberimu <kanji>sesuatu</kanji> — woo, kamu mendapat <vocabulary>hadiah</vocabulary>!

賜物 adalah kata formal untuk sesuatu — seringkali tidak berwujud — yang Anda terima sebagai hadiah atau berkah. Kata ini bisa mengandung nuansa syukur, seperti mengatakan bahwa sesuatu adalah <vocabulary>hasil</vocabulary> dari kebaikan atau nikmat ilahi, atau bisa juga menyiratkan sesuatu yang diperoleh melalui pengorbanan dan kerja keras Anda sendiri — dengan kata lain, <vocabulary>buah</vocabulary> dari kerja keras Anda.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji kun''yomi. 賜 menggunakan pembacaan kun''yomi yang sedikit tidak beraturan pada kata ini, jadi inilah mnemonik untuk membantu Anda mengingatnya:

Orang bilang bakat olahragamu adalah <vocabulary>hadiah</vocabulary> ilahi, tapi kamu tahu itu adalah <reading>Tama</reading>ra (たま), gadis bola lokal, yang benar-benar harus kamu ucapkan terima kasih. Dengan pengetahuan gadis bolanya, Tamara melatih Anda dalam setiap olahraga yang Anda tahu, jadi keterampilan Anda adalah <vocabulary>hasil</vocabulary> dari pelatihannya. Tentu saja, Tamara mengatakan bahwa itu semua adalah hasil kerja keras Anda sendiri — dia adalah pelatih yang sangat baik. Terima kasih Tamara!')
    RETURNING id INTO v_9489_hadiah;
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6992_dua_puluh_tahun, 'Dua Puluh Tahun', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_6992_dua_puluh_tahun, 'はたち', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6992_dua_puluh_tahun, '「僕は二十歳になる前に社長になるよ。」「そうだといいけどね。」', '"Saya akan menjadi presiden perusahaan sebelum saya berumur dua puluh tahun." "Saya harap Anda benar tentang hal itu."');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7057_untuk_menghancurkan, 'Untuk Menghancurkan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7057_untuk_menghancurkan, 'Untuk Istirahat', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7057_untuk_menghancurkan, 'くだく', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7057_untuk_menghancurkan, 'クッキーが粉々になるまで、伸ばし棒で叩いて砕きました。', 'Saya menghancurkan kue tersebut dengan penggilas adonan hingga pecah menjadi potongan-potongan kecil.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7123_untuk_memasak, 'Untuk Memasak', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7123_untuk_memasak, 'Untuk Merebus', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7123_untuk_memasak, 'Untuk Memasak Biji-bijian', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7123_untuk_memasak, 'たく', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7123_untuk_memasak, 'ご飯を炊きながら、妹は私に家計が火の車だとぼやきました。', 'Kakak perempuan saya mengomel kepada saya tentang betapa keluarganya berada dalam kemiskinan ekstrem saat dia memasak nasi.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7152_namun, 'Namun', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7152_namun, 'Meskipun', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7152_namun, 'Meskipun', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7152_namun, 'くせに', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7152_namun, '彼は陰では顧客のことを「カモ」と呼んでいる癖に、表ではペコペコ頭を下げておべっかを言っている。', 'Dia menyebut kliennya bodoh di belakang mereka, namun dia menggelengkan kepalanya dan mengatakan hal-hal yang menyanjung di depan wajah mereka.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7153_imperialisme, 'Imperialisme', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7153_imperialisme, 'ていこくしゅぎ', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7153_imperialisme, 'あなたの国は、帝国主義国家ですか？', 'Apakah negara Anda termasuk negara imperialis?');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7154_kursi_roda, 'Kursi roda', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7154_kursi_roda, 'くるまいす', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7154_kursi_roda, 'あの車椅子に座ってる女の子、めちゃくちゃセクシーじゃない？', 'Bukankah gadis di kursi roda itu sangat i?');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7155_tepi_cincin_sumo, 'Tepi Cincin Sumo', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7155_tepi_cincin_sumo, 'Momen Terakhir', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7155_tepi_cincin_sumo, 'Momen Kritis', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7155_tepi_cincin_sumo, 'どひょうぎわ', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7155_tepi_cincin_sumo, 'その力士は土俵際で踏ん張り、相手力士に打っ棄りを食らわせた。', 'Pegulat sumo itu menguatkan dirinya di tepi ring dan mampu mengusir lawannya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7155_tepi_cincin_sumo, '平和交渉は土俵際で難航して、打ち切りになった。', 'Perundingan perdamaian mengalami masalah pada saat-saat terakhir dan terhenti.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7156_kebetulan, 'Kebetulan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7156_kebetulan, 'Peluang', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7156_kebetulan, 'まぐれ', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7156_kebetulan, 'そのクイズの答えが当たったのはただの紛れです。', 'Kebetulan saja saya bisa menjawab pertanyaan-pertanyaan di kuis tersebut.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7158_ancaman, 'Ancaman', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7158_ancaman, 'Ancaman', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7158_ancaman, 'きょうはく', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7158_ancaman, '脅迫電話を受けた直後に警察に電話をしましたが、彼らは何だか対応したくなさそうでした。', 'Saya menelepon polisi segera setelah saya menerima panggilan ancaman tersebut, tetapi karena alasan tertentu sepertinya mereka tidak mau menanganinya.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7159_penyihir, 'Penyihir', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7159_penyihir, 'Penyihir', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7159_penyihir, 'Tukang sihir', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7159_penyihir, 'まほうつかい', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7159_penyihir, '約束を守らないと、みんなから相手にされなくなるぞ。いいから、お前が先日会ったっていう、その魔法使いを連れてこいよ！', 'Jika kamu tidak menepati janjimu, orang lain tidak akan menganggapmu serius, jadi bawalah penyihir yang kamu bilang kamu temui kemarin!');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7161_toko_darurat, 'Toko Darurat', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7161_toko_darurat, 'Persediaan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7161_toko_darurat, 'Cadangan', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7161_toko_darurat, 'びちく', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7161_toko_darurat, '地下室に一年分のトイレットペーパーの備蓄をしてるんです。', 'Kami memiliki persediaan tisu toilet selama setahun yang disimpan di ruang bawah tanah kami.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7161_toko_darurat, 'これで石油を備蓄する必要がなくなりましたね。', 'Jadi kita tidak perlu menimbun minyak lagi kan?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7161_toko_darurat, 'ひどい霜で穀物が全部やられてしまった。今年は穀物の備蓄は出来ないかもしれないな。', 'Semua biji-bijian rusak karena embun beku yang lebat. Saya rasa kita tidak akan mampu menimbun gandum tahun ini.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7162_tabungan, 'Tabungan', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7162_tabungan, 'ちょちく', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7162_tabungan, ' うちの祖母は葬式代分しか貯蓄していないと言っていました。', 'Nenekku bilang tabungannya hanya cukup untuk biaya pemakamannya.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7163_untuk_menyimpan, 'Untuk Menyimpan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7163_untuk_menyimpan, 'Untuk Mengumpulkan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7163_untuk_menyimpan, 'Untuk Membangun', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7163_untuk_menyimpan, 'たくわえる', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7163_untuk_menyimpan, '朝ごはんを食べて脳にエネルギーを蓄えるのは大切なことです。', 'Penting untuk sarapan dan menyimpan energi untuk otak Anda.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7163_untuk_menyimpan, '何年もかけて蓄えたノウハウを千円で売れって言うんですか？', 'Apakah Anda menyuruh saya menjual pengetahuan yang telah saya bangun selama bertahun-tahun hanya dengan seribu yen?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7163_untuk_menyimpan, '何で毎日プリン食べてるかって？冬に向けて脂肪を蓄えてるのよ。', 'Anda bertanya mengapa saya makan puding setiap hari? Saya menyimpan lemak untuk musim dingin.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7163_untuk_menyimpan, '彼はとても立派な口髭を蓄えています。', 'Dia menumbuhkan kumis yang indah.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7164_nyamuk, 'Nyamuk', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7164_nyamuk, 'か', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7164_nyamuk, '根っからの蚊取り線香派なんで、電気のやつを使うのは好きじゃないんですよね。', 'Saya pengguna obat nyamuk bakar, saya tidak suka yang elektrik.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7165_kawat_nyamuk, 'Kawat nyamuk', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7165_kawat_nyamuk, 'かや', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7165_kawat_nyamuk, '十人用の大きな蚊帳はありますか？', 'Apakah Anda memiliki kelambu yang cukup besar untuk sepuluh orang?');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7166_registri, 'Registri', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7166_registri, 'Pintu masuk', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7166_registri, 'きちょう', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7166_registri, '帳簿に記帳をし忘れたため、上司に叱られました。', 'Saya dimarahi atasan saya karena lupa mendaftarkan beberapa barang di buku rekening.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7167_buku_catatan, 'Buku catatan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7167_buku_catatan, 'Perencana', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7167_buku_catatan, 'Buku Memo', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7167_buku_catatan, 'てちょう', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7167_buku_catatan, '手帳を盗み見すると、彼女は物凄く怒りました。', 'Dia menjadi sangat marah padaku ketika aku mengintip buku catatannya.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7168_buku_memo, 'Buku Memo', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7168_buku_memo, 'Buku Memo', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7168_buku_memo, 'Buku catatan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7168_buku_memo, 'buku catatan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7168_buku_memo, 'Papan penggaris', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7168_buku_memo, 'めもちょう', true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7168_buku_memo, 'メモちょう', false);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7168_buku_memo, '話の途中で申し訳ありませんが、あなたのメモ帳のことでどうしても質問したいんです。', 'Maafkan saya mengganggu, tapi saya harus mengajukan pertanyaan tentang memo pad Anda.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7169_buku_telepon, 'Buku Telepon', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7169_buku_telepon, 'Direktori Telepon', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7169_buku_telepon, 'でんわちょう', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7169_buku_telepon, 'この電話帳を整理してしまう方がいいと思います。', 'Kita harus menyelesaikan pengaturan buku telepon ini.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7170_ular, 'Ular', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7170_ular, 'へび', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7170_ular, 'この町で蛇がペットとして普及した時には、身震いしましたよ。', 'Saat memelihara ular sebagai hewan peliharaan tersebar di seluruh kota, saya gemetar.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7171_untuk_menempel, 'Untuk Menempel', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7171_untuk_menempel, 'Untuk Menempel', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7171_untuk_menempel, 'はる', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7171_untuk_menempel, '肩がこったので、湿布を貼りました。', 'Bahuku kaku jadi aku mengompresnya.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7172_untuk_mempermalukan, 'Untuk Mempermalukan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7172_untuk_mempermalukan, 'Untuk Memalukan', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7172_untuk_mempermalukan, 'はずかしめる', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7172_untuk_mempermalukan, 'みんなの前で私の事を辱めるのが、どうしてそんなに面白いんですか？', 'Mengapa menurutmu sangat lucu mempermalukanku di depan semua orang?');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7173_aib, 'Aib', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7173_aib, 'Malu', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7173_aib, 'ちじょく', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7173_aib, '彼女を雑誌の表紙に起用することは、恥辱を受けるようなものです。', 'Menggunakan dia untuk sampul majalah kita seperti menutupinya dengan aib.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7174_aib, 'Aib', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7174_aib, 'Penghinaan', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7174_aib, 'くつじょく', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7174_aib, '前年度優勝校と一回戦で当たってしまい、屈辱的な敗北を味わったが、相手が悪かった。', 'Kami bertemu di babak pertama dengan juara tahun lalu dan menderita kekalahan yang memalukan. Itu adalah pertandingan yang buruk.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7175_pot_bunga, 'Pot Bunga', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7175_pot_bunga, 'Mangkuk', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7175_pot_bunga, 'はち', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7175_pot_bunga, '私は鉢にピーナッツを植えました。', 'Saya menanam kacang di pot bunga.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7176_anglo, 'Anglo', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7176_anglo, 'hibachi', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7176_anglo, 'ひばち', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7176_anglo, '私は正座をして、火鉢に手をかざしました。', 'Aku duduk dengan kaki ditekuk di bawah dan menghangatkan tanganku di atas anglo.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7177_ikat_kepala, 'Ikat kepala', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7177_ikat_kepala, 'はちまき', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7177_ikat_kepala, 'そのラーメン屋の店主は、いつも色あせた綿の鉢巻を絞めていました。', 'Pemilik kedai ramen itu selalu mengenakan ikat kepala berbahan katun yang sudah pudar.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7178_kegelapan, 'Kegelapan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7178_kegelapan, 'Kegelapan', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7178_kegelapan, 'やみ', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7178_kegelapan, '僕はある梟と目を交換したから、暗闇でも目が見えるんだよ。', 'Aku menukar mataku dengan burung hantu sehingga sekarang aku bisa melihat dalam kegelapan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7178_kegelapan, '彼は静かに顔を近づけ、闇の奥を覗き込んだ。だが、覗き込んだ先に、見てはいけないものがあった。', 'Dia diam-diam mencondongkan tubuh lebih dekat dan mengintip ke dalam kegelapan. Namun di dalam kegelapan itu ada sesuatu yang seharusnya tidak pernah terlihat.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7179_kegelapan, 'Kegelapan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7179_kegelapan, 'Kegelapan', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7179_kegelapan, 'くらやみ', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7179_kegelapan, '暗闇で戦う時は、相手の出方を見て、その上でどうするか判断した方がいいよ。', 'Saat Anda bertarung dalam kegelapan, Anda harus membiarkan orang lain mengambil tindakan terlebih dahulu dan kemudian memutuskan apa yang harus dilakukan.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7180_tanpa_berpikir_panjang, 'Tanpa berpikir panjang', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7180_tanpa_berpikir_panjang, 'Tidak masuk akal', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7180_tanpa_berpikir_panjang, 'Secara serampangan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7180_tanpa_berpikir_panjang, 'Bukan kepalang', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7180_tanpa_berpikir_panjang, 'むやみに', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7180_tanpa_berpikir_panjang, '無闇に女の子に声をかけるのはよした方がいいよ。', 'Anda tidak boleh mendekati perempuan tanpa pandang bulu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7180_tanpa_berpikir_panjang, '海外では夜、無闇に外を出歩くと、危ない目にあうかもしれないよ。', 'Berjalan-jalan tanpa berpikir panjang di malam hari di negara asing dapat membahayakan Anda.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7180_tanpa_berpikir_panjang, '無闇に「みだらな」という言葉を使わない方がいいよ。', 'Anda tidak boleh menggunakan kata "cabul" tanpa berpikir panjang.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7181_celah, 'Celah', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7181_celah, 'Celah', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7181_celah, 'Ruang angkasa', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7181_celah, 'Peluang', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7181_celah, 'Kesalahan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7181_celah, 'Ruang', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7181_celah, 'すき', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7181_celah, '彼女がマシンガントークを繰り広げていたので、私が会話に入る隙はこれっぽっちもありませんでした。', 'Dia berbicara seperti senapan mesin dan tidak ada ruang bagi saya untuk terlibat dalam percakapan tersebut.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7182_celah, 'Celah', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7182_celah, 'Retakan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7182_celah, 'Celah', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7182_celah, 'Pembukaan', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7182_celah, 'すきま', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7182_celah, '二台の自販機の隙間に、小銭が2-3枚落ちているのを見つけました。', 'Saya menemukan beberapa koin di celah antara dua mesin penjual otomatis.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7182_celah, '網戸の隙間から小さな虫が入ったみたい。', 'Tampaknya ada bug kecil yang masuk melalui celah di layar.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7182_celah, 'ふと窓際を見ると、カーテンの隙間から、誰かがこちらを覗いていた。', 'Ketika aku melirik ke arah jendela, aku melihat seseorang mengintip ke arahku melalui celah tirai.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7183_embun_beku, 'Embun beku', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7183_embun_beku, 'しも', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7183_embun_beku, 'お父さんなら今うちの冷蔵庫の霜取りをしてるよ。', 'Ayah saya sedang mengeluarkan es dari lemari es kami sekarang.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7184_kelaparan, 'Kelaparan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7184_kelaparan, 'Kelaparan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7184_kelaparan, 'Kelaparan', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7184_kelaparan, 'きが', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7184_kelaparan, 'どうしてそんな風にクッキーを踏みつけたりしたんだ？毎日何千何百人という人が飢餓で亡くなるのを知らないのか。', 'Mengapa kamu menginjak kue seperti itu? Tahukah Anda bahwa ribuan orang meninggal karena kelaparan setiap hari?');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7185_untuk_kelaparan, 'Untuk kelaparan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7185_untuk_kelaparan, 'Menjadi Kelaparan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7185_untuk_kelaparan, 'Untuk Memiliki Haus', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7185_untuk_kelaparan, 'うえる', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7185_untuk_kelaparan, '長年日本語を独学してきたんですが、今は誰かと日本語の会話をすることに飢えています。', 'Saya telah belajar bahasa Jepang secara mandiri selama bertahun-tahun dan sekarang saya ingin sekali bercakap-cakap dalam bahasa Jepang dengan seseorang.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7186_kematian_karena_kelaparan, 'Kematian Karena Kelaparan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7186_kematian_karena_kelaparan, 'Kelaparan Sampai Mati', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7186_kematian_karena_kelaparan, 'がし', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7186_kematian_karena_kelaparan, '警察は、その寝たきりの老人は餓死したと考えている。', 'Polisi mengira lelaki tua yang terbaring di tempat tidur itu mati kelaparan.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7187_peternakan, 'Peternakan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7187_peternakan, 'Peternakan', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7187_peternakan, 'ちくさん', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7187_peternakan, 'このトウモロコシは畜産用飼料なので、人間用ではありません。', 'Jagung ini merupakan pakan ternak dan bukan untuk konsumsi manusia.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7188_hewan_domestik, 'Hewan Domestik', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7188_hewan_domestik, 'Ternak', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7188_hewan_domestik, 'Ternak', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7188_hewan_domestik, 'かちく', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7188_hewan_domestik, '日本独特の家畜っていうのはいるんですか？', 'Apakah ada hewan ternak yang unik di Jepang?');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7189_brengsek, 'Brengsek', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7189_brengsek, 'Binatang buas', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7189_brengsek, 'Dasar bajingan', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7189_brengsek, 'ちくしょう', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7189_brengsek, 'この畜生め！何でシラチャソースを俺のベッドにぶちまけやがったんだ！', 'Dasar bajingan bodoh! Beraninya kamu menyemprotkan saus sriracha ke tempat tidurku!');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7190_cepat, 'Cepat', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7190_cepat, 'Cepat', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7190_cepat, 'Cepat', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7190_cepat, 'Cepat', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7190_cepat, 'じんそく', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7190_cepat, 'こちらの件に関して、迅速かつ丁寧にご対応頂き誠に有り難うございます。', 'Saya menghargai tanggapan Anda yang cepat dan sopan terhadap masalah ini.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7191_ksatria, 'Ksatria', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7191_ksatria, 'きし', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7191_ksatria, 'その騎士は、アメリカ国旗を掲げることを断った。', 'Ksatria itu menolak mengibarkan bendera Amerika.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7193_joki, 'Joki', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7193_joki, 'きしゅ', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7193_joki, 'その騎手は、自分の初めてのG1レースの日に朝寝坊をしました。', 'Joki ketiduran pada hari balapan G1 pertamanya.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7195_untuk_digunakan, 'Untuk Digunakan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7195_untuk_digunakan, 'Menjadi Lelah', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7195_untuk_digunakan, 'Kehabisan', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7195_untuk_digunakan, 'つきる', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7195_untuk_digunakan, 'ついに食料の備蓄が尽きた。', 'Persediaan makanan kami akhirnya habis.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7195_untuk_digunakan, '人は、命が尽きる瞬間が一番輝いていると思わない？', 'Tidakkah menurut Anda orang-orang bersinar paling terang di akhir hidup mereka?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7195_untuk_digunakan, '長い髪を手櫛で梳かしながら、彼女は僕に、あんたにはもう愛想が尽きたわと言った。', 'Sambil menyisir rambutnya dengan jari, dia memberitahuku bahwa dia sudah jatuh cinta padaku.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7196_tidak_masuk_akal, 'Tidak masuk akal', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7196_tidak_masuk_akal, 'Irasional', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7196_tidak_masuk_akal, 'りふじん', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7196_tidak_masuk_akal, '超理不尽な上司とやっていかなくちゃいけなくて、理想の仕事が一気に悪夢になったよ。', 'Pekerjaan impian saya seketika berubah menjadi mimpi buruk karena harus berhadapan dengan atasan yang tidak masuk akal.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7197_upaya, 'Upaya', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7197_upaya, 'Bantuan', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7197_upaya, 'じんりょく', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7197_upaya, 'トーフグの社長として、コウイチはサービスの向上に尽力致します。', 'Sebagai presiden Tofugu, Koichi melakukan yang terbaik untuk meningkatkan layanan.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7198_untuk_mewarnai_sesuatu, 'Untuk Mewarnai Sesuatu', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7198_untuk_mewarnai_sesuatu, 'Untuk Mewarnai', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7198_untuk_mewarnai_sesuatu, 'いろどる', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7198_untuk_mewarnai_sesuatu, '環境に優しいアイテムに切り替えることは、あなたの暮らしを彩ります。', 'Beralih ke barang ramah lingkungan tentu akan mewarnai hidup Anda.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7199_warna, 'Warna', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7199_warna, 'しきさい', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7199_warna, '先生は、その生徒は鋭い色彩感覚を持っていると判断しました。', 'Guru menyimpulkan bahwa siswa tersebut memiliki indra warna yang tajam.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7200_kamuflase, 'Kamuflase', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7200_kamuflase, 'kamuflase', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7200_kamuflase, 'めいさい', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7200_kamuflase, '今日迷彩柄のズボンを買いに行ったんだけど、ひとつも見つけられなかったよ。', 'Saya keluar untuk membeli celana kamuflase hari ini, tetapi saya tidak dapat menemukannya.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7201_lukisan_cat_air, 'Lukisan Cat Air', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7201_lukisan_cat_air, 'すいさいが', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7201_lukisan_cat_air, '彼女は素晴らしい水彩画家だそうですよ。', 'Dia seharusnya menjadi pelukis cat air yang luar biasa.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7202_lukisan_cat_minyak, 'Lukisan Cat Minyak', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7202_lukisan_cat_minyak, 'ゆさい', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7202_lukisan_cat_minyak, '油彩画のコツをつかんできました。', 'Saya mulai memahami lukisan cat minyak.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7203_ingatan, 'Ingatan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7203_ingatan, 'Ingatan', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7203_ingatan, 'きおく', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7203_ingatan, '春風が吹くたびに、記憶がよみがえる。', 'Setiap kali angin musim semi bertiup, kenangan kembali muncul.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7203_ingatan, 'ある臭いが、ある記憶を引き起こすって、聞いたことある？俺は今まさに、下水道に落ちた時のことを思い出しているんだけど。', 'Tahukah Anda bagaimana bau tertentu dapat memicu ingatan tertentu? Nah, saat ini aku sedang memikirkan saat aku terjatuh di selokan.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7204_tebakan, 'Tebakan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7204_tebakan, 'Spekulasi', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7204_tebakan, 'おくそく', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7204_tebakan, '人々は、その試合は八百長だったのではないかと憶測している。', 'Orang-orang berspekulasi bahwa pertandingan itu mungkin telah diperbaiki.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7204_tebakan, 'これはただの憶測だけどね。', 'Itu hanya dugaanku.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7204_tebakan, 'コウイチの引退について、憶測が飛び交っている。', 'Ada banyak spekulasi tentang pensiunnya Koichi.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7205_untuk_melelehkan_sesuatu, 'Untuk Melelehkan Sesuatu', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7205_untuk_melelehkan_sesuatu, 'Meleleh', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7205_untuk_melelehkan_sesuatu, 'とかす', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7205_untuk_melelehkan_sesuatu, '電子レンジでもバターを溶かすことができますよ。', 'Anda juga bisa melelehkan mentega dalam microwave.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7206_lahar, 'Lahar', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7206_lahar, 'ようがん', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7206_lahar, '火山が溶岩を吹き出していて危険なので、これ以上近づくことはできません。', 'Kita tidak bisa mendekat karena gunung berapi tersebut mengeluarkan lava dan itu berbahaya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7206_lahar, 'ハワイでは、真っ赤な溶岩が流れ出る様子を見ることもできますよ。', 'Di Hawaii, Anda bahkan bisa menyaksikan lava merah cerah mengalir.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7206_lahar, '地表の下にある時は「マグマ」、それが地表に流れ出ると「溶岩」なんだって。', 'Tampaknya disebut "magma" saat berada di bawah permukaan bumi, namun begitu mengalir ke permukaan, ia menjadi "lava".');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7206_lahar, '溶岩浴は岩盤浴と似てて、温かい溶岩石の床に寝転んで楽しむんです。', 'Pemandian batu lava mirip dengan pemandian batu panas. Anda menikmatinya dengan berbaring di lantai yang terbuat dari bebatuan lava hangat.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7207_larut_dalam_air, 'Larut dalam Air', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7207_larut_dalam_air, 'Kelarutan Air', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7207_larut_dalam_air, 'すいようせい', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7207_larut_dalam_air, '水溶性のビタミンCはすぐに体内から排出されるので、私達の体に蓄えることはできないと読みましたよ。', 'Saya membaca bahwa vitamin C yang larut dalam air umumnya cepat keluar dari tubuh, sehingga tubuh kita tidak dapat menyimpannya.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7208_untuk_bertahan, 'Untuk Bertahan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7208_untuk_bertahan, 'Untuk menahan', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7208_untuk_bertahan, 'たえる', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7208_untuk_bertahan, '彼のひどい寝起きの口臭に、耐えられなかったんです。', 'Aku tidak tahan dengan nafas paginya yang mengerikan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7208_untuk_bertahan, '無理無理、もう無理！ゴキブリとの暮らし、もう耐えられないよ！', 'Tidak, tidak — aku sudah selesai! Saya tidak tahan lagi hidup dengan kecoa!');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7209_ketahanan, 'Ketahanan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7209_ketahanan, 'Kegigihan', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7209_ketahanan, 'にんたい', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7209_ketahanan, '俺は社長の腰巾着かもしれないが、それって俺にはすごい忍耐力があるってことにもならないかな？', 'Saya mungkin mengikuti presiden kita seperti bayangan, tetapi bukankah itu berarti saya memiliki daya tahan yang tinggi?');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7210_tahan_panas, 'Tahan Panas', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7210_tahan_panas, 'Tahan panas', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7210_tahan_panas, 'たいねつ', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7210_tahan_panas, '友達が耐熱容器の漫画を書いてるんだけど、主人公の容器の「耐熱容器としての限界を感じた」っていう台詞が気に入ってるのよね。', 'Teman saya sedang menulis manga tentang wadah tahan panas. Wadah protagonis berkata, "Saya telah mencapai batas saya sebagai wadah tahan panas." Saya sangat suka kalimat itu.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7211_tahan_api, 'Tahan Api', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7211_tahan_api, 'Tahan api', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7211_tahan_api, 'たいか', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7211_tahan_api, 'この消防士さんの人形は、実際に耐火性の服と手袋を身につけています。', 'Patung pemadam kebakaran ini sebenarnya mengenakan pakaian dan sarung tangan tahan api di tubuhnya.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7212_daya_tahan, 'Daya tahan', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7212_daya_tahan, 'たいきゅうせい', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7212_daya_tahan, '太陽光発電のパネルの耐久性がどんなもんなのか気になっています。', 'Saya bertanya-tanya seberapa tahan lama panel surya.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7213_untuk_menari, 'Untuk Menari', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7213_untuk_menari, 'おどる', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7213_untuk_menari, '海の中の魚達は、みんな太鼓の音に合わせて一斉に踊り出しました。', 'Semua ikan di laut mulai menari mengikuti suara genderang.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7214_menari, 'Menari', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7214_menari, 'おどり', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7214_menari, '盆踊りの練習をして時間を潰しました。', 'Saya menghabiskan waktu dengan berlatih Tari Festival Bon.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7215_pendaratan, 'Pendaratan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7215_pendaratan, 'Dataran tinggi', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7215_pendaratan, 'Lantai Dansa', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7215_pendaratan, 'Ruang dansa', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7215_pendaratan, 'おどりば', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7215_pendaratan, 'クリスなら、さっき階段の踊り場ですれ違ったよ。', 'Jika Anda mencari Chris, kami baru saja berpapasan di tangga.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7215_pendaratan, '今の局面は、景気の踊り場と言えるでしょうね。', 'Saya kira, situasi saat ini bisa disamakan dengan kondisi perekonomian yang stagnan.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7216_tarian_festival_leluhur, 'Tarian Festival Leluhur', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7216_tarian_festival_leluhur, 'Tarian Festival Bon', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7216_tarian_festival_leluhur, 'Selamat Odori', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7216_tarian_festival_leluhur, 'ぼんおどり', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7216_tarian_festival_leluhur, 'みんなが、私に一緒に盆踊りをやってみるようにしつこく言ってきたんです。', 'Semua orang mendesak saya untuk mencoba menari Festival Bon bersama mereka.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7217_cerdik, 'Cerdik', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7217_cerdik, 'Cerdas', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7217_cerdik, 'かしこい', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7217_cerdik, '僕はあまり賢くはないけど、やるときはちゃんとやってみせるよ。', 'Saya tidak terlalu pintar, tapi saya punya momen.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7218_sage, 'Sage', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7218_sage, 'Orang Bijaksana', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7218_sage, 'けんじん', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7218_sage, 'あの教授、外では賢人って言われてるけど、実は内弁慶らしいぜ。', 'Profesor itu disebut orang bijak di luar rumah, tapi kudengar dia sebenarnya pembual di rumah.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7219_bijak, 'Bijak', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7219_bijak, 'Masuk akal', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7219_bijak, 'けんめい', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7219_bijak, 'このビールを買うのは賢明なご決断ですよ。コクがあるだけでなく、喉ごしもとてもいいですからね。', 'Membeli bir ini adalah keputusan yang bijaksana. Tidak hanya memiliki rasa yang utuh, tetapi juga memiliki hasil akhir yang bersih dan menyenangkan.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7220_untuk_bersinar, 'Untuk Bersinar', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7220_untuk_bersinar, 'Untuk Berkilau', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7220_untuk_bersinar, 'Untuk Berkilau', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7220_untuk_bersinar, 'かがやく', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7220_untuk_bersinar, '明るく輝く月の下で、飲酒運転取締り検問所にひっかかり、飲酒運転の罪で速攻逮捕されてしまいました。', 'Di bawah sinar bulan yang cerah dan bersinar, saya ditangkap di pos pemeriksaan kesadaran dan segera ditangkap karena mengemudi di bawah pengaruh alkohol.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7221_kecerahan, 'Kecerahan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7221_kecerahan, 'Kemegahan', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7221_kecerahan, 'こうき', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7221_kecerahan, '彼は光輝燦然と旗を掲げました。', 'Dia mengibarkan bendera itu dengan segala kemegahannya.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7222_pencahayaan, 'Pencahayaan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7222_pencahayaan, 'Kecerahan', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7222_pencahayaan, 'きど', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7222_pencahayaan, '例えば、太陽の輝度値はとても高いです。', 'Misalnya nilai luminositas matahari yang sangat tinggi.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7223_ganja, 'Ganja', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7223_ganja, 'Rami', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7223_ganja, 'あさ', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7223_ganja, 'これは麻の木じゃないって、何回説明したら分かってもらえるんですか？', 'Berapa kali saya harus memberitahu Anda bahwa ini bukan tanaman rami?');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7224_ganja, 'Ganja', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7224_ganja, 'Ganja', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7224_ganja, 'たいま', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7224_ganja, 'この国では大麻の使用は禁止されています。', 'Dilarang menggunakan ganja di negara ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7224_ganja, 'この葉っぱは大麻の葉っぱに似ているけど大麻じゃないよ。', 'Daun ini terlihat seperti daun ganja, namun bukan ganja.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7224_ganja, '君が失業したのは本当に気の毒に思うけど、でも一体どうして大麻なんて庭で育てていたんだい？', 'Menurutku sangat disayangkan kamu menganggur, tapi kenapa kamu menanam ganja di kebun kami?');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7225_anestesi, 'Anestesi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7225_anestesi, 'Anestesi', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7225_anestesi, 'ますい', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7225_anestesi, '麻酔でまだ寝ぼけています。', 'Saya masih setengah tertidur karena anestesi.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7229_untuk_mekar, 'Untuk Mekar', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7229_untuk_mekar, 'Untuk Mekar', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7229_untuk_mekar, 'さく', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7229_untuk_mekar, 'この桃の木は、今までに一度も花が咲いた事がないんですよ。', 'Pohon persik ini belum pernah berbunga sebelumnya.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7230_bunga_terlambat, 'Bunga Terlambat', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7230_bunga_terlambat, 'Mekar Terlambat', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7230_bunga_terlambat, 'おそざき', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7230_bunga_terlambat, '冬が長引いたため、今年はうちのお庭の桜は遅咲きでした。', 'Pohon sakura di halaman kami mengalami mekarnya bunga yang terlambat pada tahun ini karena musim dingin yang masih panjang.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7231_kembali, 'Kembali', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7231_kembali, 'Mekar Kedua', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7231_kembali, 'かえりざき', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7231_kembali, '彼女は世界ランキング1位への返り咲きを狙っている。', 'Dia bertujuan untuk mendapatkan kembali peringkat nomor satu dunia.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7231_kembali, '一度はオワコンになったゲームが若者の間で返り咲きを果たした。', 'Game yang sempat dianggap mati kini kembali populer di kalangan anak muda.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7231_kembali, 'バラは春に咲いたあと、秋にも返り咲きをするんですよ。', 'Mawar mekar kembali di musim gugur setelah berbunga di musim semi.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7232_untuk_berkultivasi, 'Untuk Berkultivasi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7232_untuk_berkultivasi, 'Untuk membina', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7232_untuk_berkultivasi, 'つちかう', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7232_untuk_berkultivasi, '高校時代のクラブ活動を通じて、友情を培うことの大切さについてたくさんのことを学びました。', 'Saya belajar banyak tentang pentingnya membina persahabatan melalui kegiatan klub di sekolah menengah.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7233_penanaman, 'Penanaman', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7233_penanaman, 'Membina', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7233_penanaman, 'ばいよう', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7233_penanaman, '細胞培養を作るには、何を準備する必要がありますか。', 'Persiapan apa saja yang diperlukan untuk membuat kultur sel?');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7234_sangat_disesalkan, 'Sangat disesalkan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7234_sangat_disesalkan, 'Membuat frustrasi', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7234_sangat_disesalkan, 'Menjengkelkan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7234_sangat_disesalkan, 'Mengecewakan', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7234_sangat_disesalkan, 'くやしい', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7234_sangat_disesalkan, '他の人が日本語で何を話しているのか理解できない時、私はいつも悔しい思いをします。', 'Saya selalu merasa frustasi ketika saya tidak mengerti apa yang orang lain katakan dalam bahasa Jepang.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7235_menyesali, 'Menyesali', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7235_menyesali, 'Tobat', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7235_menyesali, 'こうかい', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7235_menyesali, '本当に後悔はないんですね。', 'Anda benar-benar tidak menyesal, bukan?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7235_menyesali, 'そんなことをしたら、自分が一生後悔の念に苛まれるだけだぞ！', 'Jika kamu melakukan itu, kamu hanya akan tersiksa oleh penyesalan seumur hidupmu!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7235_menyesali, '美人局にいとも簡単に引っ掛かってしまったことを後悔しています。', 'Saya menyesali betapa mudahnya saya terjebak dalam permainan luaknya.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7236_ketiak, 'Ketiak', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7236_ketiak, 'Di Bawah Lengan Seseorang', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7236_ketiak, 'わき', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7236_ketiak, '俺が逆らうと、兄貴はよく脇をこしょばしてきました。', 'Kakak laki-laki saya biasa menggelitik ketiak saya ketika saya menentangnya.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7237_memalingkan_muka, 'Memalingkan muka', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7237_memalingkan_muka, 'Melihat ke Samping', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7237_memalingkan_muka, 'わきみ', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7237_memalingkan_muka, 'いてぇ。どこに目ぇつけて歩いてるんだ！脇見しながら歩いてんじゃねぇぞ！', 'Aduh. Perhatikan kemana kamu pergi! Jangan berpaling saat Anda berjalan!');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7238_aktor_pendukung, 'Aktor Pendukung', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7238_aktor_pendukung, 'Peran Pendukung', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7238_aktor_pendukung, 'Peran Kecil', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7238_aktor_pendukung, 'わきやく', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7238_aktor_pendukung, '彼女、オーディションに受かったって言いふらしてるけど、ただの脇役みたいだよ。', 'Dia terus berbicara tentang bagaimana dia lulus audisi, tapi sepertinya dia hanya mendapat peran pendukung.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7239_percobaan, 'Percobaan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7239_percobaan, 'Upaya Gagal', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7239_percobaan, 'みすい', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7239_percobaan, '彼は取り付け騒ぎを防ぐ為にもう少しで預金者に嘘をつくところだったが、結局未遂に終わった。', 'Dia nyaris berbohong kepada deposan untuk mencegah bank run, namun pada akhirnya dia menyerah.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7240_prestasi, 'Prestasi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7240_prestasi, 'Eksekusi', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7240_prestasi, 'すいこう', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7240_prestasi, '恥ずかしいことに、その任務の遂行に失敗してしまいました。', 'Saya malu karena gagal menjalankan misi.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7241_pasukan, 'Pasukan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7241_pasukan, 'Kelompok', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7241_pasukan, 'Berpesta', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7241_pasukan, 'Tim', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7241_pasukan, 'はん', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7241_pasukan, 'あの班は、五輪の左端の輪っかに間違った色を選びました。', 'Kelompok tersebut salah memilih warna cincin Olimpiade paling kiri.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7243_pemimpin_pasukan, 'Pemimpin Pasukan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7243_pemimpin_pasukan, 'Honcho', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7243_pemimpin_pasukan, 'Ketua Tim', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7243_pemimpin_pasukan, 'Ketua Kelompok', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7243_pemimpin_pasukan, 'はんちょう', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7243_pemimpin_pasukan, '彼は社交的でみんなから好かれているので、班長に選ばれました。', 'Dia mudah bergaul dan semua orang menyukainya, jadi dia terpilih menjadi pemimpin tim.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7244_aplikasi, 'Aplikasi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7244_aplikasi, 'Lapisan', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7244_aplikasi, 'とふ', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7244_aplikasi, '昨日は一日中石膏を乾式工法の壁に塗布していました。', 'Saya mengaplikasikan plester ke drywall sepanjang hari kemarin.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7245_untuk_melukis, 'Untuk Melukis', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7245_untuk_melukis, 'Untuk Plester', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7245_untuk_melukis, 'Untuk Pernis', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7245_untuk_melukis, 'Untuk Menyebar', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7245_untuk_melukis, 'ぬる', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7245_untuk_melukis, 'マニキュアを塗り終わってからまた電話してもいい？', 'Bisakah saya menghubungi Anda kembali setelah saya selesai mengecat kuku saya?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7245_untuk_melukis, 'スムージーを飲みながら壁をペンキで塗ってるところです。', 'Saya minum smoothie sambil mengecat dinding saya.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7246_lapisan, 'Lapisan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7246_lapisan, 'Lukisan', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7246_lapisan, 'とそう', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7246_lapisan, '遅くなって、本当にすみません。トイレの壁の塗装が思ったよりも長引いてしまって。', 'Saya sangat menyesal karena terlambat. Mengecat dinding kamar mandi membutuhkan waktu lebih lama dari yang saya kira.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7247_cat, 'Cat', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7247_cat, 'Bahan Lukisan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7247_cat, 'Lapisan', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7247_cat, 'とりょう', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7247_cat, '刷毛に蛍光塗料を付けました。', 'Saya mencelupkan kuas cat ke dalam cat neon.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7248_diagonal, 'Diagonal', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7248_diagonal, 'Miring', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7248_diagonal, 'Miring', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7248_diagonal, 'ななめ', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7248_diagonal, '水平な横線を引くように言ったのに、ちょっと斜めになっています。', 'Saya menyuruhnya menggambar garis horizontal, tapi agak diagonal.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7249_miring, 'Miring', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7249_miring, 'Lereng', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7249_miring, 'しゃめん', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7249_miring, 'うちの私道は急斜面になってるので、上まで上がってくるにはスノータイヤがいります。', 'Jalan masuk kami merupakan lereng yang curam, jadi Anda memerlukan ban salju untuk mendakinya.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7250_huruf_miring, 'Huruf miring', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7250_huruf_miring, 'Gaya Font Miring', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7250_huruf_miring, 'しゃたい', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7250_huruf_miring, 'どうしてこの単語の文字のフォントを斜体に変えたんですか。', 'Mengapa Anda mengubah font kata ini menjadi miring?');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7251_untuk_meninju, 'Untuk Meninju', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7251_untuk_meninju, 'Untuk Menyerang', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7251_untuk_meninju, 'Untuk Memukul', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7251_untuk_meninju, 'なぐる', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7251_untuk_meninju, 'ゴングが鳴った瞬間、そのボクサーは相手の顎を思い切り殴り付けた。', 'Saat gong dibunyikan, petinju itu meninju rahang lawannya dengan sekuat tenaga.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7252_memukul, 'Memukul', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7252_memukul, 'Memukul', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7252_memukul, 'Meniup', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7252_memukul, 'おうだ', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7252_memukul, '突然、背後から知らない男に後頭部を殴打されました。', 'Tiba-tiba, bagian belakang kepalaku dipukul dari belakang oleh seseorang yang tidak kukenal.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7253_tameng, 'Tameng', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7253_tameng, 'たて', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7253_tameng, '盾を買いたいんだけど、どこに行けば買えるのか知りませんか？', 'Saya ingin membeli perisai, tahukah Anda di mana saya bisa membelinya?');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7254_kontradiksi, 'Kontradiksi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7254_kontradiksi, 'Inkonsistensi', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7254_kontradiksi, 'むじゅん', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7254_kontradiksi, 'それってすごく矛盾した状況じゃない？', 'Keadaannya sangat bertolak belakang, bukan?');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7255_dukungan, 'Dukungan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7255_dukungan, 'Mendukung', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7255_dukungan, 'Penyokong', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7255_dukungan, 'Pendukung', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7255_dukungan, 'うしろだて', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7255_dukungan, '私は友人の後ろ盾に勇気づけられました。', 'Saya terdorong oleh dukungan teman saya.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7256_memanen, 'Memanen', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7256_memanen, 'Tanaman', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7256_memanen, 'しゅうかく', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7256_memanen, 'お米の収穫期は今年はいつ頃になりそうですか？', 'Menurut Anda, kapan panen padi tahun ini?');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8937_agar_tertumpah, 'Agar Tertumpah', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8937_agar_tertumpah, 'Menumpahkan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8937_agar_tertumpah, 'Jatuh', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8937_agar_tertumpah, 'Meluap', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8937_agar_tertumpah, 'こぼれる', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8937_agar_tertumpah, 'おならをした瞬間、目から涙が零れた。', 'Saat saya kentut, setetes air mata jatuh dari mata saya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8937_agar_tertumpah, 'ソファに紅茶が零れてるんだけど！誰が犯人だ？', 'Seseorang menumpahkan teh di sofa! Siapa yang bersalah?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8937_agar_tertumpah, '窓から美しいメロディが零れてきた。', 'Melodi yang indah keluar dari jendela.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9489_hadiah, 'Hadiah', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9489_hadiah, 'Hasil', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9489_hadiah, 'Buah', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_9489_hadiah, 'たまもの', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9489_hadiah, 'これはミノリの努力の賜物だよ。', 'Ini adalah hasil kerja kerasmu, Minori.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9489_hadiah, '長年の研究の賜物として、この発見があります。', 'Penemuan ini merupakan hasil penelitian bertahun-tahun.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9489_hadiah, 'この成果は皆様のご支援の賜物です。', 'Pencapaian ini adalah hasil dukungan Anda.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9489_hadiah, '彼の才能は神の賜物だと言われている。', 'Bakatnya dikatakan sebagai anugerah dari Tuhan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9489_hadiah, 'このプロジェクトの進展はチームの理解と協力の賜物です。', 'Kemajuan proyek ini merupakan hasil pemahaman dan kerja sama tim.');

  -- 4. PREREQUISITES
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2012_buku_catatan, id FROM items WHERE character = '巾' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2012_buku_catatan, id FROM items WHERE character = '長' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2013_nyamuk, id FROM items WHERE character = '虫' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2013_nyamuk, id FROM items WHERE character = '文' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2014_ular, id FROM items WHERE character = '虫' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2014_ular, id FROM items WHERE character = '宀' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2014_ular, id FROM items WHERE character = '匕' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2015_pasta, id FROM items WHERE character = '貝' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2015_pasta, id FROM items WHERE character = '占' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2016_menghina, id FROM items WHERE character = '辰' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2016_menghina, id FROM items WHERE character = '寸' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2017_pot_bunga, id FROM items WHERE character = '金' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2017_pot_bunga, id FROM items WHERE character = '本' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2018_kegelapan, id FROM items WHERE character = '門' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2018_kegelapan, id FROM items WHERE character = '音' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2019_celah, id FROM items WHERE character = '阝' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2019_celah, id FROM items WHERE character = '小' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2019_celah, id FROM items WHERE character = '日' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2020_embun_beku, id FROM items WHERE character = '雨' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2020_embun_beku, id FROM items WHERE character = '木' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2020_embun_beku, id FROM items WHERE character = '目' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2021_kelaparan, id FROM items WHERE character = '食' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2021_kelaparan, id FROM items WHERE character = '几' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2022_kelaparan, id FROM items WHERE character = '食' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2022_kelaparan, id FROM items WHERE character = '我' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2023_ternak, id FROM items WHERE character = '玄' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2023_ternak, id FROM items WHERE character = '田' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2024_cepat, id FROM items WHERE character = '⻌' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2024_cepat, id FROM items WHERE character = '𠃌' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2024_cepat, id FROM items WHERE character = '十' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2025_menunggang_kuda, id FROM items WHERE character = '馬' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2025_menunggang_kuda, id FROM items WHERE character = '奇' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2026_mengumpulkan, id FROM items WHERE character = '艹' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2026_mengumpulkan, id FROM items WHERE character = '玄' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2026_mengumpulkan, id FROM items WHERE character = '田' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2027_menghabiskan, id FROM items WHERE character = '尺' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2027_menghabiskan, id FROM items WHERE character = '冫' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2028_warna, id FROM items WHERE character = '⺤' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2028_warna, id FROM items WHERE character = '木' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2028_warna, id FROM items WHERE character = '彡' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2029_ingatan, id FROM items WHERE character = '忄' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2029_ingatan, id FROM items WHERE character = '意' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2030_meleleh, id FROM items WHERE character = '氵' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_2030_meleleh, r_404_membentuk);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2031_tahan, id FROM items WHERE character = '而' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2031_tahan, id FROM items WHERE character = '寸' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2032_menari, id FROM items WHERE character = '足' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2032_menari, id FROM items WHERE character = 'マ' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2032_menari, id FROM items WHERE character = '用' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2033_cerdik, id FROM items WHERE character = '臣' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2033_cerdik, id FROM items WHERE character = '又' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2033_cerdik, id FROM items WHERE character = '貝' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_2034_cahaya, r_405_lampu);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2034_cahaya, id FROM items WHERE character = '冖' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2034_cahaya, id FROM items WHERE character = '車' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2035_mengancam, id FROM items WHERE character = '力' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2035_mengancam, id FROM items WHERE character = '月' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2036_rami, id FROM items WHERE character = '广' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2036_rami, id FROM items WHERE character = '木' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2038_mekar, id FROM items WHERE character = '口' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2038_mekar, id FROM items WHERE character = '丷' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2038_mekar, id FROM items WHERE character = '天' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2039_mengolah, id FROM items WHERE character = '土' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2039_mengolah, id FROM items WHERE character = '咅' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2040_menyesali, id FROM items WHERE character = '忄' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2040_menyesali, id FROM items WHERE character = '毎' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2041_ketiak, id FROM items WHERE character = '月' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2041_ketiak, id FROM items WHERE character = '力' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2042_menyelesaikan, id FROM items WHERE character = '⻌' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2042_menyelesaikan, id FROM items WHERE character = '丷' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2042_menyelesaikan, id FROM items WHERE character = '豕' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2043_pasukan, id FROM items WHERE character = '王' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2043_pasukan, id FROM items WHERE character = '刂' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2044_cat, id FROM items WHERE character = '氵' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2044_cat, id FROM items WHERE character = '余' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2044_cat, id FROM items WHERE character = '土' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2045_diagonal, id FROM items WHERE character = '余' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2045_diagonal, id FROM items WHERE character = '斗' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2046_memukul, id FROM items WHERE character = '区' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2046_memukul, id FROM items WHERE character = '殳' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2047_tameng, id FROM items WHERE character = '厂' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2047_tameng, id FROM items WHERE character = '/radicals/pope.svg' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2048_memanen, id FROM items WHERE character = '禾' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2048_memanen, id FROM items WHERE character = '艹' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2048_memanen, id FROM items WHERE character = '隹' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2048_memanen, id FROM items WHERE character = '又' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_6992_dua_puluh_tahun, id FROM items WHERE character = '二' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_6992_dua_puluh_tahun, id FROM items WHERE character = '十' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_6992_dua_puluh_tahun, id FROM items WHERE character = '歳' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7057_untuk_menghancurkan, id FROM items WHERE character = '砕' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7123_untuk_memasak, id FROM items WHERE character = '炊' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7152_namun, id FROM items WHERE character = '癖' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7153_imperialisme, id FROM items WHERE character = '帝' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7153_imperialisme, id FROM items WHERE character = '国' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7153_imperialisme, id FROM items WHERE character = '主' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7153_imperialisme, id FROM items WHERE character = '義' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7154_kursi_roda, id FROM items WHERE character = '車' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7154_kursi_roda, id FROM items WHERE character = '椅' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7154_kursi_roda, id FROM items WHERE character = '子' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7155_tepi_cincin_sumo, id FROM items WHERE character = '土' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7155_tepi_cincin_sumo, id FROM items WHERE character = '俵' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7155_tepi_cincin_sumo, id FROM items WHERE character = '際' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7156_kebetulan, id FROM items WHERE character = '紛' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7158_ancaman, k_2035_mengancam);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7158_ancaman, id FROM items WHERE character = '迫' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7159_penyihir, id FROM items WHERE character = '魔' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7159_penyihir, id FROM items WHERE character = '法' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7159_penyihir, id FROM items WHERE character = '使' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7161_toko_darurat, id FROM items WHERE character = '備' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7161_toko_darurat, k_2026_mengumpulkan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7162_tabungan, id FROM items WHERE character = '貯' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7162_tabungan, k_2026_mengumpulkan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7163_untuk_menyimpan, k_2026_mengumpulkan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7164_nyamuk, k_2013_nyamuk);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7165_kawat_nyamuk, k_2013_nyamuk);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7165_kawat_nyamuk, k_2012_buku_catatan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7166_registri, id FROM items WHERE character = '記' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7166_registri, k_2012_buku_catatan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7167_buku_catatan, id FROM items WHERE character = '手' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7167_buku_catatan, k_2012_buku_catatan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7168_buku_memo, k_2012_buku_catatan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7169_buku_telepon, id FROM items WHERE character = '電' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7169_buku_telepon, id FROM items WHERE character = '話' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7169_buku_telepon, k_2012_buku_catatan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7170_ular, k_2014_ular);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7171_untuk_menempel, k_2015_pasta);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7172_untuk_mempermalukan, k_2016_menghina);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7173_aib, id FROM items WHERE character = '恥' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7173_aib, k_2016_menghina);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7174_aib, id FROM items WHERE character = '屈' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7174_aib, k_2016_menghina);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7175_pot_bunga, k_2017_pot_bunga);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7176_anglo, id FROM items WHERE character = '火' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7176_anglo, k_2017_pot_bunga);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7177_ikat_kepala, k_2017_pot_bunga);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7177_ikat_kepala, id FROM items WHERE character = '巻' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7178_kegelapan, k_2018_kegelapan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7179_kegelapan, id FROM items WHERE character = '暗' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7179_kegelapan, k_2018_kegelapan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7180_tanpa_berpikir_panjang, id FROM items WHERE character = '無' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7180_tanpa_berpikir_panjang, k_2018_kegelapan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7181_celah, k_2019_celah);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7182_celah, k_2019_celah);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7182_celah, id FROM items WHERE character = '間' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7183_embun_beku, k_2020_embun_beku);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7184_kelaparan, k_2021_kelaparan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7184_kelaparan, k_2022_kelaparan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7185_untuk_kelaparan, k_2021_kelaparan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7186_kematian_karena_kelaparan, k_2022_kelaparan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7186_kematian_karena_kelaparan, id FROM items WHERE character = '死' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7187_peternakan, k_2023_ternak);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7187_peternakan, id FROM items WHERE character = '産' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7188_hewan_domestik, id FROM items WHERE character = '家' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7188_hewan_domestik, k_2023_ternak);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7189_brengsek, k_2023_ternak);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7189_brengsek, id FROM items WHERE character = '生' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7190_cepat, k_2024_cepat);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7190_cepat, id FROM items WHERE character = '速' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7191_ksatria, k_2025_menunggang_kuda);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7191_ksatria, id FROM items WHERE character = '士' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7193_joki, k_2025_menunggang_kuda);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7193_joki, id FROM items WHERE character = '手' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7195_untuk_digunakan, k_2027_menghabiskan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7196_tidak_masuk_akal, id FROM items WHERE character = '理' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7196_tidak_masuk_akal, id FROM items WHERE character = '不' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7196_tidak_masuk_akal, k_2027_menghabiskan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7197_upaya, k_2027_menghabiskan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7197_upaya, id FROM items WHERE character = '力' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7198_untuk_mewarnai_sesuatu, k_2028_warna);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7199_warna, id FROM items WHERE character = '色' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7199_warna, k_2028_warna);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7200_kamuflase, id FROM items WHERE character = '迷' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7200_kamuflase, k_2028_warna);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7201_lukisan_cat_air, id FROM items WHERE character = '水' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7201_lukisan_cat_air, k_2028_warna);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7201_lukisan_cat_air, id FROM items WHERE character = '画' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7202_lukisan_cat_minyak, id FROM items WHERE character = '油' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7202_lukisan_cat_minyak, k_2028_warna);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7203_ingatan, id FROM items WHERE character = '記' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7203_ingatan, k_2029_ingatan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7204_tebakan, k_2029_ingatan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7204_tebakan, id FROM items WHERE character = '測' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7205_untuk_melelehkan_sesuatu, k_2030_meleleh);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7206_lahar, k_2030_meleleh);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7206_lahar, id FROM items WHERE character = '岩' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7207_larut_dalam_air, id FROM items WHERE character = '水' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7207_larut_dalam_air, k_2030_meleleh);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7207_larut_dalam_air, id FROM items WHERE character = '性' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7208_untuk_bertahan, k_2031_tahan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7209_ketahanan, id FROM items WHERE character = '忍' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7209_ketahanan, k_2031_tahan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7210_tahan_panas, k_2031_tahan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7210_tahan_panas, id FROM items WHERE character = '熱' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7211_tahan_api, k_2031_tahan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7211_tahan_api, id FROM items WHERE character = '火' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7212_daya_tahan, k_2031_tahan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7212_daya_tahan, id FROM items WHERE character = '久' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7212_daya_tahan, id FROM items WHERE character = '性' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7213_untuk_menari, k_2032_menari);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7214_menari, k_2032_menari);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7215_pendaratan, k_2032_menari);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7215_pendaratan, id FROM items WHERE character = '場' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7216_tarian_festival_leluhur, id FROM items WHERE character = '盆' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7216_tarian_festival_leluhur, k_2032_menari);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7217_cerdik, k_2033_cerdik);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7218_sage, k_2033_cerdik);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7218_sage, id FROM items WHERE character = '人' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7219_bijak, k_2033_cerdik);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7219_bijak, id FROM items WHERE character = '明' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7220_untuk_bersinar, k_2034_cahaya);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7221_kecerahan, id FROM items WHERE character = '光' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7221_kecerahan, k_2034_cahaya);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7222_pencahayaan, k_2034_cahaya);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7222_pencahayaan, id FROM items WHERE character = '度' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7223_ganja, k_2036_rami);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7224_ganja, id FROM items WHERE character = '大' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7224_ganja, k_2036_rami);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7225_anestesi, k_2036_rami);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7225_anestesi, id FROM items WHERE character = '酔' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7229_untuk_mekar, k_2038_mekar);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7230_bunga_terlambat, id FROM items WHERE character = '遅' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7230_bunga_terlambat, k_2038_mekar);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7231_kembali, id FROM items WHERE character = '返' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7231_kembali, k_2038_mekar);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7232_untuk_berkultivasi, k_2039_mengolah);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7233_penanaman, k_2039_mengolah);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7233_penanaman, id FROM items WHERE character = '養' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7234_sangat_disesalkan, k_2040_menyesali);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7235_menyesali, id FROM items WHERE character = '後' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7235_menyesali, k_2040_menyesali);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7236_ketiak, k_2041_ketiak);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7237_memalingkan_muka, k_2041_ketiak);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7237_memalingkan_muka, id FROM items WHERE character = '見' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7238_aktor_pendukung, k_2041_ketiak);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7238_aktor_pendukung, id FROM items WHERE character = '役' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7239_percobaan, id FROM items WHERE character = '未' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7239_percobaan, k_2042_menyelesaikan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7240_prestasi, k_2042_menyelesaikan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7240_prestasi, id FROM items WHERE character = '行' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7241_pasukan, k_2043_pasukan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7243_pemimpin_pasukan, k_2043_pasukan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7243_pemimpin_pasukan, id FROM items WHERE character = '長' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7244_aplikasi, k_2044_cat);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7244_aplikasi, id FROM items WHERE character = '布' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7245_untuk_melukis, k_2044_cat);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7246_lapisan, k_2044_cat);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7246_lapisan, id FROM items WHERE character = '装' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7247_cat, k_2044_cat);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7247_cat, id FROM items WHERE character = '料' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7248_diagonal, k_2045_diagonal);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7249_miring, k_2045_diagonal);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7249_miring, id FROM items WHERE character = '面' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7250_huruf_miring, k_2045_diagonal);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7250_huruf_miring, id FROM items WHERE character = '体' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7251_untuk_meninju, k_2046_memukul);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7252_memukul, k_2046_memukul);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7252_memukul, id FROM items WHERE character = '打' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7253_tameng, k_2047_tameng);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7254_kontradiksi, id FROM items WHERE character = '矛' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7254_kontradiksi, k_2047_tameng);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7255_dukungan, id FROM items WHERE character = '後' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7255_dukungan, k_2047_tameng);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7256_memanen, id FROM items WHERE character = '収' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7256_memanen, k_2048_memanen);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8937_agar_tertumpah, id FROM items WHERE character = '零' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_9489_hadiah, id FROM items WHERE character = '賜' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_9489_hadiah, id FROM items WHERE character = '物' LIMIT 1;

END $$;