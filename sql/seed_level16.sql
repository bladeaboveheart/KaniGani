-- ====================================================
-- KaniGani — Seed Data Level 16 (v2, relasional)
-- Auto-generated with Indonesian Slugs
-- ====================================================

DO $$
DECLARE
  -- ============ RADICAL IDs (Level 16) ============
  r_248_menempel UUID; r_249_lembah UUID; r_250_menghadapi UUID; r_421_drum UUID; r_8784_zombi UUID;

  -- ============ KANJI IDs (Level 16) ============
  k_960_kebun UUID; k_961_hari_dalam_seminggu UUID; k_962_menulis UUID; k_963_jauh UUID; k_964_gerbang UUID; k_965_koneksi UUID; k_967_produk UUID; k_968_melindungi UUID; k_969_kebahagiaan UUID; k_970_buru_buru UUID; k_971_realitas UUID; k_972_kotak UUID; k_973_bagasi UUID; k_974_menghadapi UUID; k_975_aturan UUID; k_977_pemerintah UUID; k_978_menyembuhkan UUID; k_979_mandi UUID; k_980_tertawa UUID; k_981_berhenti UUID; k_982_terkait UUID; k_984_dialek UUID; k_985_politik UUID; k_986_menahan UUID; k_987_bukti UUID; k_988_berisiko UUID; k_989_berbahaya UUID; k_990_ada UUID; k_991_khusus UUID; k_992_berani UUID; k_993_tak_berguna UUID; k_994_osaka UUID; k_1153_rencana UUID;

  -- ============ VOCABULARY IDs (Level 16) ============
  v_2828_rawat_jalan UUID; v_2896_tidak_dikenal UUID; v_3294_samudra_pasifik UUID; v_3453_untuk_mengevaluasi_kembali UUID; v_3584_ruang_tunggu UUID; v_3587_menjadi_tergerak_secara_emosional UUID; v_3691_meliput_suatu_acara UUID; v_3702_penampilan UUID; v_3720_berjanji UUID; v_3799_masker UUID; v_3801_konservatif UUID; v_3802_kelestarian UUID; v_3804_asuransi UUID; v_3805_menjamin UUID; v_3808_patung_buddha UUID; v_3809_klasik UUID; v_3810_kitab_suci_budha UUID; v_3811_kamus_karakter UUID; v_3812_ensiklopedi UUID; v_3813_petualangan UUID; v_3814_candaan UUID; v_3815_berisiko UUID; v_3816_berbahaya UUID; v_3818_mentah UUID; v_3819_sebuah_karya UUID; v_3820_artikel UUID; v_3821_baru UUID; v_3822_barang_dagangan UUID; v_3824_taman_umum UUID; v_3826_untuk_mengetahui UUID; v_3827_adanya UUID; v_3828_untuk_melindungi UUID; v_3829_ketiadaan UUID; v_3830_kebenaran UUID; v_3831_khusus UUID; v_3832_ketidakbahagiaan UUID; v_3833_kebahagiaan UUID; v_3834_pemerintah UUID; v_3835_bento UUID; v_3836_dialek_tokyo UUID; v_3837_dialek UUID; v_3838_untuk_bergegas UUID; v_3839_tiba_tiba UUID; v_3840_kematian_mendadak UUID; v_3841_cepat UUID; v_3842_politik UUID; v_3843_untuk_menulis UUID; v_3846_pemulihan_lengkap UUID; v_3847_ketidakhancuran UUID; v_3848_era_meiji UUID; v_3849_untuk_mandi UUID; v_3850_berjemur UUID; v_3851_kereta_ekspres_terbatas UUID; v_3852_belajar_di_luar_negeri UUID; v_3853_foto UUID; v_3854_hitam_pekat UUID; v_3855_kebahagiaan UUID; v_3856_tertawa UUID; v_3857_senyum UUID; v_3858_tong_sampah UUID; v_3859_kotak UUID; v_3860_bagasi UUID; v_3861_bukti UUID; v_3862_saksi UUID; v_3863_kesaksian UUID; v_3865_kamus UUID; v_3866_untuk_berhenti UUID; v_3867_sanjungan UUID; v_3868_jauh UUID; v_3869_penerimaan UUID; v_3870_untuk_berhubungan_dengan UUID; v_3871_koneksi UUID; v_3872_hanshin UUID; v_3873_depan UUID; v_3874_tanah UUID; v_3875_penampilan_luar UUID; v_3876_layar UUID; v_3877_permukaan UUID; v_3878_menarik UUID; v_3879_perpustakaan UUID; v_3907_seorang_juru_masak UUID; v_3908_artis UUID; v_3910_otomatis UUID; v_3911_mendasar UUID; v_3912_melipat UUID; v_3914_upacara_wisuda UUID; v_3915_tidak_lengkap UUID; v_3916_museum UUID; v_3917_origami UUID; v_3920_berharap UUID; v_3921_teknik UUID; v_3922_untuk_berkompromi UUID; v_3929_untuk_lulus UUID; v_3930_untuk_meninggalkan UUID; v_3931_untuk_membuat_sesuatu_menjadi_sulit UUID; v_3947_bukti UUID; v_3948_hari_dalam_seminggu UUID; v_3952_osaka UUID; v_4362_jumat UUID; v_4374_kekhawatiran UUID; v_4475_rencana UUID; v_5389_di_dalam UUID; v_5618_untuk_menutup_sesuatu UUID; v_6884_langit_langit UUID; v_7469_mobil UUID; v_7476_buku_pelajaran UUID; v_7491_wajah_seseorang UUID; v_7545_tiba_tiba UUID; v_7586_kebun_binatang UUID; v_7587_peringatan_tahunan UUID; v_7636_ceria UUID; v_7641_pemandangan UUID; v_7642_kamus UUID; v_7698_semoga_beruntung UUID; v_7755_untuk_istirahat UUID; v_7756_gerbang UUID; v_8671_bahan_makanan UUID; v_8708_ketertiban_umum UUID; v_8728_pembayaran UUID; v_8806_menandai UUID; v_8818_tamasya UUID; v_8947_untuk_mengirim_seseorang_kembali UUID; v_9150_saku_dalam UUID; v_9239_kemerosotan UUID; v_9262_untuk_bertanya UUID; v_9270_sederhana_dan_mudah UUID; v_9276_terjadi UUID; v_9281_garis UUID; v_9294_untuk_menumpuk UUID; v_9302_perdana_menteri UUID; v_9368_tanaman_hijau_baru UUID; v_9465_kereta UUID; v_9478_untuk_tetap_berteman UUID;

BEGIN

  DELETE FROM items WHERE level = 16;

  -- 1. RADICALS
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '付', 'menempel', 16, 1, 'Radikal ini sama dengan kanji. Artinya <radikal>melampirkan</radikal>.')
    RETURNING id INTO r_248_menempel;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '谷', 'lembah', 16, 2, 'Radikal ini sama dengan kanji. Artinya <radikal>lembah</radikal>.')
    RETURNING id INTO r_249_lembah;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '面', 'menghadapi', 16, 3, 'Ini adalah <radikal>wajah</radikal> radikal, karena terlihat seperti wajah. Lihat alis rata di atas? Bayangkan beberapa mata di bawahnya, hidung tersumbat di tengah, dan beberapa pipi besar di kedua sisinya. Bentuknya agak persegi, tapi seperti itulah wajah ketika Anda menghilangkan kepalanya dan yang tersisa hanyalah wajah.')
    RETURNING id INTO r_250_menghadapi;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '壴', 'drum', 16, 4, 'Lihat samurai di atas kacang raksasa? Dia berdiri di atasnya dan menggunakannya sebagai <radical>drum</radical>. Dulu, samurai menggunakan drum untuk berkomunikasi dan menguatkan diri dalam pertempuran, dan ketika keadaan sedang genting, kacang raksasa mana pun bisa digunakan. Dapatkah Anda membayangkan seorang samurai menabuh genderang perang dengan genderang kacang raksasa?')
    RETURNING id INTO r_421_drum;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '袁', 'zombi', 16, 5, 'Radikal ini memiliki sosok yang mengulurkan kedua tangannya ke arah Anda dengan sedikit kotoran di kepalanya. Ini adalah <radikal>zombie</radikal>, dan sepertinya dia baru saja keluar dari kuburnya.')
    RETURNING id INTO r_8784_zombi;

  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_248_menempel, 'Menempel', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_249_lembah, 'Lembah', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_250_menghadapi, 'Menghadapi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_421_drum, 'Drum', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_8784_zombi, 'Zombi', true, true);

  -- 2. KANJIS
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '園', 'kebun', 16, 6, 'Anda memeriksa <radical>mulut</radikal> <radikal>zombie</radikal> dan menemukan <kanji>taman</kanji> kecil di sana. Bahkan ada bangku... terlihat seperti <kanji>taman</kanji>.', 'Anda melihat lebih dekat ke <kanji>taman</kanji> dan tiba-tiba semuanya <reading>en</reading>ds (えん).')
    RETURNING id INTO k_960_kebun;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '曜', 'hari-dalam-seminggu', 16, 7, 'Anda dapat mengamati bagaimana <radical>matahari</radical> memberikan bayangan di belakang dua <radical>Wolverine</radical> dan <radical>kalkun</radical> untuk mengetahui <kanji>hari dalam seminggu</kanji>. Di luar kalender, ini adalah cara terbaik untuk mengetahui hari apa sekarang.', 'Sekarang setelah kamu tahu cara mengetahui <kanji>hari dalam seminggu</kanji> itu, kamu bisa mulai membuat <reading>yo</reading>gurt (よう). Diperlukan waktu hingga 24 jam untuk membuat yogurt. Mengetahui hari apa dalam seminggu pada saat tertentu berarti Anda dapat menyempurnakan jadwal pembuatan yogurt Anda.')
    RETURNING id INTO k_961_hari_dalam_seminggu;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '書', 'menulis', 16, 8, 'Mengapa Anda mencoba membawa <radical>sikat</radikal> ke <radical>matahari</radikal>? Ini hampir terlalu jelas, karena Anda ingin <kanji>menulis</kanji> sesuatu.', 'Tentang apa yang <kanji>tulis</kanji>? Anda sedang menulis tentang <reading>pertunjukan</reading> (しょ) sirkus menakjubkan yang baru saja Anda tonton di bawah sinar matahari. Anda tidak menyangka akan ada pertunjukan apa pun di sini, namun ternyata Anda salah!')
    RETURNING id INTO k_962_menulis;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '遠', 'jauh', 16, 9, 'Anda melihat <radical>skuter</radical> dengan <radical>zombie</radical> di atasnya, melaju sangat <kanji>jauh</kanji>. Seseorang mengikat zombie itu ke skuter dan sekarang dia berada jauh di kejauhan, mengerang dan menggeram.', 'Zombi itu melangkah <kanji>jauh</kanji>, hingga kehidupannya <reading>en</reading>ds (えん). Zombi perlu makan untuk hidup (hanya itu yang mereka butuhkan), tapi perjalanan skuter mereka terlalu jauh, sehingga mereka menyerah dan mengakhiri semuanya.')
    RETURNING id INTO k_963_jauh;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '門', 'gerbang', 16, 10, 'Kata radikal untuk <radical>gerbang</radikal> dan kanji untuk <kanji>gerbang</kanji> adalah sama!', 'Anda ingin melewati <kanji>gerbang</kanji> ini tetapi dijaga oleh… monster <reading>mon</reading> (もん)!')
    RETURNING id INTO k_964_gerbang;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '係', 'koneksi', 16, 11, 'Seorang <radikal>pemimpin</radikal> psikis berlutut di <radikal>tanah</radikal>, mengambil <radikal>utas</radikal>, dan langsung membuat <kanji>koneksi</kanji> dengan orang asalnya. Pemimpin ini sangat kuat, sehingga seutas benang pun sudah cukup bagi mereka untuk membuat hubungan psikis dengan orang yang memakainya.', 'Saat Anda mengembangkan <kanji>koneksi</kanji> psikis ini dengan pemilik thread, Anda dapat mengetahui bahwa mereka sedang makan <reading>ca</reading>ke (けい).')
    RETURNING id INTO k_965_koneksi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '品', 'produk', 16, 12, 'Kanji sama dengan kata radikal <radical>products</radical>, jadi artinya <kanji>product</kanji> — lho, jenis <kanji>artikel</kanji> atau <kanji>barang</kanji> yang Anda beli dan jual.', 'Saat Anda mencoba menjual beberapa <kanji>produk</kanji>, Anda akhirnya mendapatkan pembeli. Itu adalah orang <read>Hin</reading>du (ひん). Dia masuk dan langsung membeli produk Anda!')
    RETURNING id INTO k_967_produk;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '守', 'melindungi', 16, 13, '<radical>Atap</radical> Anda perlu <radical>pengukuran</radical> dilakukan setiap tahun untuk memastikan atap tersebut <kanji>melindungi</kanji> Anda dengan baik.', 'Jika pengukurannya salah, dan atap Anda tidak <kanji>melindungi</kanji> Anda, maka Anda harus <reading>menuntut</reading> (す)! Jika Anda masih hidup, itu saja.')
    RETURNING id INTO k_968_melindungi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '幸', 'kebahagiaan', 16, 14, 'Tutupi <radical>penutup</radikal> pada sesuatu yang <radikal>pedas</radikal> dan Anda akan memasak <kanji>kebahagiaan</kanji> yang murni.', 'Dari makanan pedas kamu membuat <kanji>kebahagiaan</kanji> murni. Anda memberikannya kepada teman Anda yang sedih <reading>こう</reading>いち, yang menunggu di meja.')
    RETURNING id INTO k_969_kebahagiaan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '急', 'buru-buru', 16, 15, 'Di <radical>penjara</radical> tempat Anda pernah menyimpan <radical>Wolverine</radical>, Anda menemukan <radical>jantung</radical> yang berdebar kencang. Anda tidak mengerti bagaimana kelanjutannya, tapi Anda tahu bahwa Anda harus <kanji>cepat</kanji> melakukan sesuatu, atau hal ini mungkin akan berhenti <kanji>tiba-tiba</kanji>.', 'Tubuhmu mulai kepanasan saat <kanji>bergegas</kanji> berkeliling, jadi ambillah <reading>cu</reading>cumber (きゅう) untuk mendinginkan tubuhmu. Kandungan air yang tinggi akan menghidrasi kembali Anda dan memungkinkan Anda terus bergegas untuk membantu menyelamatkan jantung ini.')
    RETURNING id INTO k_970_buru_buru;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '真', 'realitas', 16, 16, 'Jika <radical>paus</radikal> tetap terpaku pada <radikal>tanah</radikal>, menatap <radikal>sirip</radikal>, dia akan kehilangan kontak dengan <kanji>realitas</kanji>. Dia seharusnya fokus pada tugas kepausannya, tapi dia malah melihat sirip ikan yang dia jatuhkan, dan sekarang tidak bisa makan karena kotor. Paus konyol. Anda tidak bisa membiarkan hal ini membuat Anda kecewa. Ada hal lain yang harus kamu lakukan.', 'Anda melakukan yang terbaik untuk membawa Paus kembali ke <kanji>kenyataan</kanji> saat dia membentak dan menendang Anda di <reading>tulang kering</reading> (しん). Aduh! Apa-apaan ini, Paus! Tapi dia sudah kembali menatap siripnya dan tulang keringmu berdenyut-denyut saat dia menendangnya.')
    RETURNING id INTO k_971_realitas;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '箱', 'kotak', 16, 17, 'Dengan <radical>bambu</radical> dari <radical>pohon</radical> itu, <radical>mata</radical> Anda yang terlatih akan tahu bahwa itu akan menjadi <kanji>kotak</kanji> yang bagus. Kotak yang terbuat dari pohon bambu sangat kokoh dan modis. Anda juga memiliki minat terhadap fashion.', 'Sekarang Anda dapat menggunakan <kanji>kotak</kanji> itu untuk menyimpan semua piringan hitam <reading>ha</reading>rd<reading>co</reading>re (はこ) punk Anda. Anda benar-benar ahli, jadi Anda tahu bahwa musik hardcore hanya boleh disimpan di kotak bambu.')
    RETURNING id INTO k_972_kotak;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '荷', 'bagasi', 16, 18, 'Anda menawarkan <radical>bunga</radical> kepada <radical>pemimpin</radical> Anda dan memuji mereka atas <radical>cincin bibir</radical> mereka. Anda mengira dengan melakukan ini mereka mungkin akan membawa <kanji>bagasi</kanji> Anda.', 'Tidak yakin dengan sanjungan Anda, pemimpin menolak untuk membawa <kanji>bagasi</kanji> Anda, jadi Anda berlutut (に) dan meminta mereka untuk membawanya.')
    RETURNING id INTO k_973_bagasi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '面', 'menghadapi', 16, 19, 'Radikal <radikal>wajah</radikal> dan kanji <kanji>wajah</kanji> adalah sama! Tapi ini bukan hanya wajah seperti yang Anda lihat di komputer/ponsel. Itu juga tipe wajah <kanji>permukaan</kanji>!', '<kanji>wajah</kanji> yang Anda lihat ini, yang memiliki banyak luas <kanji>permukaan</kanji>, milik <reading>men</reading> (めん). Bukan seorang pria lajang, tapi semua pria disatukan. Ada ratusan ribu wajah pria berturut-turut.')
    RETURNING id INTO k_974_menghadapi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '典', 'aturan', 16, 20, 'Jika Anda memainkan <radical>musik</radikal> dengan <radical>sirip</radikal> Anda, salah satu <kanji>aturan</kanji> adalah Anda harus menjadi seekor ikan. Anda tidak dapat memutar musik menggunakan sirip ikan yang bukan milik Anda. Itulah aturannya. Dan itu juga tidak sopan.', 'Terdapat juga <kanji>aturan</kanji> yang membatasi jumlah musisi sirip ikan. Tidak lebih dari <reading>sepuluh</reading> (てん) diperbolehkan berkumpul dan memainkan musik mereka bersama. Itulah aturannya. Tidak lebih dari sepuluh.')
    RETURNING id INTO k_975_aturan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '府', 'pemerintah', 16, 21, '<radikal>kanopi</radikal> <radikal>yang menghubungkan</radikal>yang seluruh negara Anda adalah <kanji>pemerintah</kanji>. Mereka membayangi Anda semua dan mencoba membuat Anda semua tetap teratur dan bersama-sama di bawah kendali mereka.', 'Cobalah untuk keluar dari bawah naungan <kanji>pemerintah</kanji> ini dan Anda akan diberi label <reading>foo</reading>l (ふ). Kecuali... Anda bisa membodohi mereka!')
    RETURNING id INTO k_977_pemerintah;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '治', 'menyembuhkan', 16, 22, 'Setelah <radikal>tsunami</radikal>, gunakan <radikal>mesin</radikal> ini untuk <kanji>menyembuhkan</kanji> masyarakat dan negara dari kerusakan. <kanji>Mesin penyembuhan ada di seluruh Jepang untuk berjaga-jaga jika tsunami menimbulkan kerusakan yang jauh lebih besar daripada yang bisa mereka tangani. 

Oh, dan siapa pun yang menyembuhkan dan menyembuhkan banyak orang akan mampu <kanji>memerintah</kanji> setelah semuanya mulai kembali normal. Jadi ingatlah itu, ya?', 'Cara alternatif untuk <kanji>menyembuhkan</kanji> diri sendiri setelah tsunami adalah dengan berdoa kepada <reading>Je</reading>sus (じ) atau memakan berat badan Anda di <reading>chee</reading>se (ち). Aku tidak yakin apakah aku punya cukup keju untuk semua orang yang tertabrak... Hmm, apa kamu punya keju?

Sebelum mengambil keputusan, ingatlah bahwa siapa pun yang menyembuhkan Anda akan mampu <kanji>memerintah</kanji> atas Anda dan rakyat Anda. Jadi, apakah Anda ingin dipimpin oleh Yesus atau oleh keju? Pilihan ada di tangan Anda.')
    RETURNING id INTO k_978_menyembuhkan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '浴', 'mandi', 16, 23, '<radikal>tsunami</radikal> menghantam <radikal>lembah</radikal>, mengisinya dengan air. Beruntungnya kamu, kamu seorang raksasa, jadi kamu hanya berbaring di lembah dan menggunakannya untuk <kanji>mandi</kanji>.', 'Anda tahu apa yang membuat pengalaman <kanji>mandi</kanji> menjadi lebih baik? Jika Anda punya <reading>kuning telur</reading> (よく) untuk dimakan. Pecahkan saja kuning telur tersebut ke dalam air yang Anda gunakan untuk mandi, dan kuning telur akan matang dengan sempurna. enak!')
    RETURNING id INTO k_979_mandi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '笑', 'tertawa', 16, 24, '<radical>Bambu</radical> <radical>surga</radical> adalah tempat untuk <kanji>tertawa</kanji>. Bambu adalah tanaman yang sangat periang, dan mereka suka tertawa. Bahkan setelah kematian di surga bambu, bambu terus tertawa gembira. Surga bambu benar-benar tempat tertawa.', 'Sebenarnya sedang terjadi perang di surga bambu itu, tahu? Kamu mungkin belum pernah mendengarnya karena semua <kanji>tertawa</kanji>sedang terjadi, tapi pasti ada <membaca>perang</reading> (わら) yang terjadi di surga bambu, kamu dengar? Bambu-bambu itu ketakutan, itulah sebabnya mereka tertawa terbahak-bahak. Mereka gugup.')
    RETURNING id INTO k_980_tertawa;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '辞', 'berhenti', 16, 25, 'Ketika <radical>lidah</radikal> Anda menjadi terlalu <radikal>pedas</radikal> untuk Anda tanggung, inilah waktunya untuk <kanji>keluar</kanji> dari kontes makan jalapeño. Anda sudah memakannya selama tiga jam dan rasa pedas dari paprika benar-benar membakar lidah Anda. Menyerahlah, saatnya keluar dari kontes.

Kanji ini juga memiliki arti lain:

Makan bukanlah satu-satunya hal yang membuat <radical>lidah</radikal> Anda <radikal>pedas</radikal>, begitu juga dengan <kanji>kata</kanji> tertentu. Ucapkan kata-kata favorit Anda dengan lantang sekarang. Rasakan di lidah Anda. Kata-kata adalah makanan pedas bagi bahasa!', 'Oh, Anda mungkin bertanya-tanya siapa yang memenangkan kontes makanan pedas itu setelah Anda <kanji>berhenti</kanji> dan malah terobsesi dengan <kanji>kata</kanji>. Itu adalah <read>Je</reading>sus (じ). Siapa yang kamu harapkan? Dia hebat dalam berkata-kata DAN tidak pernah berhenti ketika keadaan menjadi pedas.')
    RETURNING id INTO k_981_berhenti;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '関', 'terkait', 16, 26, '<radikal>gerbang</radikal> <radikal>tanduk</radikal> ini akan membawa Anda ke <radikal>surga</radikal>. Tanduk ini <kanji>berhubungan</kanji> dan <kanji>terhubung</kanji> dengan surga dalam beberapa cara.', 'Mereka <kanji>berhubungan</kanji> dan <kanji>terhubung</kanji> dengan surga karena ini adalah tanduk yang dibuat Jenghis <reading>Khan</reading> (かん) dari musuh-musuhnya. Tuhan bilang dia bisa masuk surga kalau dia membuat gerbang dari tanduk, jadi itulah yang dia lakukan.')
    RETURNING id INTO k_982_terkait;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '弁', 'dialek', 16, 27, 'Jika Anda mendengarkan kehidupan <radical>pribadi</radikal> dari <radical>dua puluh</radikal> orang, semuanya akan memiliki <kanji>dialek</kanji> dan cara <kanji>berbicara</kanji> yang berbeda. Apakah mereka benar-benar menggunakan dialek ini dengan Anda adalah cerita lain. Namun ketika mereka sendirian, atau bersama orang lain yang berasal dari tempat yang sama, cara bicaranya akan berbeda.', 'Cara terbaik untuk mempelajari <kanji>dialek</kanji> seseorang adalah dengan membelikan mereka <reading>ben</reading>to (べん) dari tempat asalnya. Bento ini tidak hanya memiliki tulisan dalam dialeknya, tetapi cara bicaranya akan segera berubah agar sesuai. Kemudian Anda akan dapat mendengar bunyinya di kepala mereka dan secara pribadi!')
    RETURNING id INTO k_984_dialek;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '政', 'politik', 16, 28, '<radikal>benar</radikal> di <radikal>musim dingin</radikal> adalah fokus pada <kanji>politik</kanji> dan <kanji>pemerintahan</kanji>. Pemilu sedang berlangsung, di tahun baru para politisi dilantik. Musim dingin adalah waktu pemerintahan!', 'Setiap orang yang terlibat dalam <kanji>politik</kanji> dan <kanji>pemerintahan</kanji> menggunakan <reading>sa</reading>ber (せい) khusus. Jika dua partai politik sedang berdebat, mereka akan mencabut pedangnya dan mulai menebas!')
    RETURNING id INTO k_985_politik;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '留', 'menahan', 16, 29, 'Sekelompok orang <radical>pribadi</radikal> <radikal>pedang</radikal> ada di <radikal>sawah</radikal> Anda. Anda harus <kanji>menahan</kanji> mereka segera! Orang pedang swasta adalah orang yang bekerja di perusahaan swasta dan menggunakan pedangnya pada orang lain. Mereka pada dasarnya adalah pembunuh bayaran. Dan Anda akan menahan mereka!', 'Anda kehabisan tenaga dan Anda takut tidak dapat <kanji>menahan</kanji> semua orang ini ketika <reading>Ryu</reading> (りゅう) dari Street Fighter muncul. Dia membenci pedang, dan hanya akan menggunakan tinju karena itu cara bertarung yang terhormat, jadi dia mulai membantu Anda menahannya!

Dia juga menemukan lubang <read>loo</reading> (る) di sistem dan kamu juga tidak perlu bersikap terlalu lembut terhadap orang-orang ini. Jadi tahan mereka sekuat yang Anda inginkan. Bagaimanapun juga, mereka berada di sawahmu.')
    RETURNING id INTO k_986_menahan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '証', 'bukti', 16, 30, 'Apa yang saya <radikal>katakan</radikal> adalah <radikal>benar</radikal> 100%! Anda dapat menggunakannya sebagai <kanji>bukti</kanji> dalam kasus pembunuhan ini.', 'Para pejabat memaksa Anda untuk menunjukkan <kanji>bukti</kanji> ini di depan <reading>Shou</reading>gun (しょう), dirinya sendiri. Lututmu gemetar, kamu merasa ingin mual, tapi kamu mencoba berdiri tegak dan menceritakan semuanya padanya. Lagi pula, Anda tahu <kanji>bukti</kanji> Anda benar, jadi Anda tidak perlu terlalu takut.')
    RETURNING id INTO k_987_bukti;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '険', 'berisiko', 16, 31, 'Memasuki <radical>gedung</radical> yang dibuat oleh <radical>cumi-cumi</radical> adalah <kanji>berisiko</kanji>. Pertama-tama, cumi-cumi hanya memiliki tentakel, tidak memiliki tulang, dan seluruh bangunannya terbuat dari bahan berbahaya seperti rumput laut dan karang tajam.', '"Itu terlalu <kanji>berisiko</kanji>, tinggalkan aku!" cumi-cumi itu menangis. "Aku akan menyelamatkanmu, warga bawah air! Tidak ada yang terlalu berisiko bagi <reading>Ken</reading> (けん) sang samurai!" Bangunan itu runtuh menimpa cumi-cumi, risikonya sangat besar, tetapi Ken sang samurai menyelam dan menyelamatkannya!')
    RETURNING id INTO k_988_berisiko;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '危', 'berbahaya', 16, 32, 'Ada <radical>penjara</radical> di <radical>tebing</radical> yang dikelilingi oleh <radical>ular</radical>. Itu adalah tempat yang <kanji>berbahaya</kanji>. Jika Anda mencoba melarikan diri dari penjara, Anda akan mati terjatuh dari tebing atau digigit/diperas sampai mati oleh ular. Dapatkah Anda memikirkan hal yang lebih berbahaya dari ini? saya tidak bisa.', 'Beruntungnya Anda, meski terjebak di tempat <kanji>berbahaya</kanji> ini, masih ada harapan. Ada tombol <reading></reading> (き). Semua penjara berbahaya memiliki kuncinya. Kamu tinggal mencari dan mencurinya agar bisa terhindar dari tebing dan ular!')
    RETURNING id INTO k_989_berbahaya;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '存', 'ada', 16, 33, 'Jika <radical>narwhal</radical> <radical>stick</radical> adalah <radical>anak</radical> yang bertanduk, maka Anda harus mengakui bahwa <kanji>ada</kanji> itu ada. Kami tahu beberapa dari Anda meragukan narwhal dan apakah itu nyata. Nah, sekarang anak Anda sudah menjadi kebab, jadi apakah Anda yakin mereka ada sekarang? Saya <kanji>kira</kanji> begitu.', 'Oh, dan anak yang harus kami tusuk narwhal untuk membuktikan bahwa mereka <kanji>ada</kanji> - itu adalah <reading>anak</reading> Anda (そん). Mungkin Anda seharusnya mendengarkan dan menjauhkan putra Anda dari <reading>Zona</reading> (ぞん) Narwhal setelah kami memperingatkan Anda tentang hal itu.')
    RETURNING id INTO k_990_ada;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '専', 'khusus', 16, 34, 'Menempelkan <radical>salib</radikal> ke <radikal>sawah</radikal> untuk mendapatkan <radikal>pengukuran</radikal> adalah <kanji>keistimewaan</kanji> Anda. Kebanyakan orang merasa bingung saat harus mengukur luas sawahnya, namun di situlah peran Anda. Anda menanam salib tepat di tengah, melihat ke bawah dari satu ujung ke ujung yang lain, dan voila! Anda segera mengetahui ukurannya. Itu sebabnya ini adalah spesialisasi Anda!', 'Mendengar <kanji>keahlian</kanji> dan kemampuan pengukuran silang Anda yang luar biasa, seorang <reading>cen</reading>taur (せん) dari negeri jauh merekrut Anda untuk suatu pekerjaan. Ayah centaur baru saja meninggal dan centaur ingin Anda mengukur sawah yang ditinggalkan kepadanya.')
    RETURNING id INTO k_991_khusus;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '冒', 'berani', 16, 35, 'Saat <radical>matahari</radikal> memasuki <radical>mata</radikal> Anda, saya <kanji>menantang</kanji> Anda untuk menatapnya. Saya menantang Anda untuk melihat langsung ke matahari. Saya tantang kamu.', 'Setelah Anda membutakan diri dari <kanji>tantangan</kanji> menatap matahari dan kehilangan penglihatan di setiap mata, pria tersebut menantang Anda untuk <reading>membungkuk</reading>ling (ぼう). Anda buta sekarang, jadi bowling akan menjadi tantangan yang cukup besar.')
    RETURNING id INTO k_992_berani;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '冗', 'tak-berguna', 16, 36, '<radical>dahi</radical> <radical>tabel</radical> sepenuhnya <kanji>berlebihan</kanji>.', 'Satu-satunya orang yang Anda kenal dengan meja dahi <kanji>berlebihan</kanji> adalah <reading>Joe</reading> (じょう), buruh tani sederhana setinggi sepuluh kaki.')
    RETURNING id INTO k_993_tak_berguna;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '阪', 'osaka', 16, 37, 'Tempat yang <radikal>bangunan</radikal> rasakan sangat <radikal>anti</radikal>- adalah <kanji>Osaka</kanji>. Osaka adalah tempat terakhir yang ingin mereka bangun. Mengapa? Karena kemungkinan besar mereka akan dibangun di <kanji>lereng</kanji>. Osaka memiliki banyak lereng yang besar, dan bangunan tidak suka dibangun di lereng.', 'Siapa yang tinggal di <kanji>Osaka</kanji> di puncak <kanji>lereng</kanji> yang besar? Itu <read>Han</reading> (はん) Solo.')
    RETURNING id INTO k_994_osaka;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '企', 'rencana', 16, 38, '<radical>topi</radikal> terhenti <radikal>berhenti</radikal>, memikirkan sebuah <kanji>rencana</kanji>. Topi itu telah mondar-mandir selama beberapa saat, mencoba memikirkan cara melepaskan kepala tempat dia beristirahat dan kembali ke rumah yang nyaman dan nyaman, dan tiba-tiba menyadari sebuah rencana. Hal ini menyebabkan topinya berhenti.', '<kanji>rencana</kanji> yang membuat topi ini berhenti di jalurnya sangatlah sederhana. Pertama, dapatkan <reading>key</reading> (き) ke rumah. Kemudian, gunakan kunci untuk masuk ke pintu depan. Sederhana sekali!')
    RETURNING id INTO k_1153_rencana;

  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_960_kebun, 'Kebun', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_960_kebun, 'Taman', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_961_hari_dalam_seminggu, 'Hari Dalam Seminggu', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_962_menulis, 'Menulis', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_962_menulis, 'Menulis', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_963_jauh, 'Jauh', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_964_gerbang, 'Gerbang', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_964_gerbang, 'Gerbang', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_965_koneksi, 'Koneksi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_967_produk, 'Produk', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_967_produk, 'Artikel', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_967_produk, 'Barang-barang', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_968_melindungi, 'Melindungi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_969_kebahagiaan, 'Kebahagiaan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_970_buru_buru, 'Buru-buru', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_970_buru_buru, 'Tiba-tiba', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_971_realitas, 'Realitas', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_972_kotak, 'Kotak', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_973_bagasi, 'Bagasi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_974_menghadapi, 'Menghadapi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_974_menghadapi, 'Permukaan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_975_aturan, 'Aturan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_977_pemerintah, 'Pemerintah', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_978_menyembuhkan, 'Menyembuhkan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_978_menyembuhkan, 'Sembuh', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_978_menyembuhkan, 'Memerintah', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_978_menyembuhkan, 'Aturan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_979_mandi, 'Mandi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_980_tertawa, 'Tertawa', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_981_berhenti, 'Berhenti', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_981_berhenti, 'Kata', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_982_terkait, 'Terkait', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_982_terkait, 'Terhubung', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_984_dialek, 'Dialek', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_984_dialek, 'Pidato', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_985_politik, 'Politik', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_985_politik, 'Pemerintah', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_986_menahan, 'Menahan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_987_bukti, 'Bukti', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_987_bukti, 'Bukti', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_988_berisiko, 'Berisiko', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_988_berisiko, 'Curam', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_989_berbahaya, 'Berbahaya', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_990_ada, 'Ada', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_990_ada, 'Memperkirakan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_991_khusus, 'Khusus', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_992_berani, 'Berani', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_993_tak_berguna, 'Tak berguna', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_993_tak_berguna, 'Tidak perlu', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_993_tak_berguna, 'Ketidakgunaan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_994_osaka, 'Osaka', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_994_osaka, 'Lereng', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1153_rencana, 'Rencana', true, true);

  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_960_kebun, 'えん', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_960_kebun, 'その', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_961_hari_dalam_seminggu, 'よう', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_962_menulis, 'しょ', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_962_menulis, 'か', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_963_jauh, 'えん', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_963_jauh, 'とお', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_964_gerbang, 'もん', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_964_gerbang, 'と', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_964_gerbang, 'かど', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_965_koneksi, 'けい', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_965_koneksi, 'かか', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_965_koneksi, 'かかり', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_967_produk, 'ひん', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_967_produk, 'しな', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_968_melindungi, 'す', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_968_melindungi, 'しゅ', 'onyomi', false, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_968_melindungi, 'まも', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_968_melindungi, 'もり', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_969_kebahagiaan, 'こう', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_969_kebahagiaan, 'しあわ', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_969_kebahagiaan, 'さいわ', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_969_kebahagiaan, 'さち', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_970_buru_buru, 'きゅう', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_970_buru_buru, 'いそ', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_971_realitas, 'しん', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_971_realitas, 'ま', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_972_kotak, 'はこ', 'kunyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_973_bagasi, 'に', 'kunyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_973_bagasi, 'か', 'onyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_974_menghadapi, 'めん', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_974_menghadapi, 'おも', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_974_menghadapi, 'おもて', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_974_menghadapi, 'つら', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_975_aturan, 'てん', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_977_pemerintah, 'ふ', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_978_menyembuhkan, 'じ', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_978_menyembuhkan, 'ち', 'onyomi', false, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_978_menyembuhkan, 'なお', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_979_mandi, 'よく', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_979_mandi, 'あ', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_980_tertawa, 'わら', 'kunyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_980_tertawa, 'え', 'kunyomi', false, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_980_tertawa, 'しょう', 'onyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_981_berhenti, 'じ', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_981_berhenti, 'や', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_982_terkait, 'かん', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_982_terkait, 'かか', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_982_terkait, 'せき', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_984_dialek, 'べん', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_985_politik, 'せい', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_986_menahan, 'る', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_986_menahan, 'りゅう', 'onyomi', false, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_986_menahan, 'と', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_986_menahan, 'とど', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_987_bukti, 'しょう', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_987_bukti, 'あかし', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_988_berisiko, 'けん', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_988_berisiko, 'けわ', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_989_berbahaya, 'き', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_989_berbahaya, 'あぶ', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_989_berbahaya, 'あや', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_990_ada, 'そん', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_990_ada, 'ぞん', 'onyomi', false, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_991_khusus, 'せん', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_991_khusus, 'もっぱ', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_992_berani, 'ぼう', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_992_berani, 'おか', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_993_tak_berguna, 'じょう', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_994_osaka, 'はん', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_994_osaka, 'さか', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1153_rencana, 'き', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1153_rencana, 'くわだ', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1153_rencana, 'たくら', 'kunyomi', false, false);

  -- 3. VOCABULARIES
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '外来', 'rawat-jalan', 16, 39, 'Dari negeri <kanji>asing</kanji>, Anda harus <kanji>datang</kanji> ke rumah sakit ini. Itu menjadikan Anda <vocabulary>rawat jalan</vocabulary>. 

外来 menggambarkan sesuatu atau seseorang yang berasal dari tempat lain. Anda paling sering melihatnya di rumah sakit, yang artinya rawat jalan, namun juga digunakan dalam konteks formal untuk membicarakan spesies <vocabulary>asing</vocabulary> atau kata-kata <vocabulary>yang diimpor</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Rawat jalan, Luar negeri, Impor')
    RETURNING id INTO v_2828_rawat_jalan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '不明', 'tidak-dikenal', 16, 40, 'Jika <kanji>tidak</kanji> <kanji>cerah</kanji>, Anda tidak dapat melihat apa yang ada di sekitar Anda. Dalam kegelapan, semuanya terasa <vocabulary>tidak diketahui</vocabulary>, <vocabulary>tidak jelas</vocabulary>, dan <vocabulary>uncertain</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Anda tidak mempelajari on''yomi untuk 明 (めい) dengan kanji, jadi inilah mnemonik untuk membantu Anda mengingatnya:

Semuanya terasa <vocabulary>unknown</vocabulary>, <vocabulary>unclear</vocabulary>, dan <vocabulary>uncertain</vocabulary> di <reading>Mei</reading> (めい) karena Mei adalah saat Anda tiba-tiba menyadari bahwa Anda masih belum tahu apa yang Anda lakukan tahun ini — rencana Anda sama berkabutnya dengan kabut pagi. Anda menghela nafas, "めい-jadi bulan depan saya akan mengadakannya bersama."', 'Tidak dikenal, Tidak jelas, Tidak pasti, Tidak yakin')
    RETURNING id INTO v_2896_tidak_dikenal;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '太平洋', 'samudra-pasifik', 16, 41, '<kanji>lemak</kanji> <kanji>kedamaian</kanji> <kanji>lautan</kanji> adalah <vocabulary>Samudra Pasifik</vocabulary>. Orang Jepang menganggap lautan ini damai, sama seperti bahasa Inggris (kata 太平 sebenarnya berarti "perdamaian").

Perhatikan bahwa kami menggunakan arti alternatif 洋 di sini! Jika Anda tidak mempelajarinya dengan kanji, bayangkan saja untuk mencapai tempat-tempat bergaya Barat Anda harus menyeberangi lautan dari Jepang.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Anda telah melihat pembacaan たい untuk 太 di 太陽, namun berikut adalah penyegaran mnemonik untuk berjaga-jaga:

Saat Anda melintasi <vocabulary>Samudra Pasifik</vocabulary>, Anda harus mengenakan <reading>dasi</reading> (たい). Dasi Anda terasa sangat ketat saat Anda menyaksikan Pasifik meluncur di bawah Anda. Namun Anda ingin tampil terbaik dalam perjalanan penting ini, bukan? Tidak masalah jika Anda bepergian dengan perahu atau pesawat, Anda harus mengenakan dasi saat melintasi Pasifik.', 'Samudra Pasifik')
    RETURNING id INTO v_3294_samudra_pasifik;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '見直す', 'untuk-mengevaluasi-kembali', 16, 42, 'Anda tahu kata 直す dari beberapa tingkat yang lalu. Artinya "memperbaiki". Jadi, ketika Anda memperbaiki cara Anda melihat sesuatu, apa yang Anda lakukan? Anda sedang mengevaluasinya kembali. Itu sebabnya kata ini berarti <vocabulary>mengevaluasi kembali</vocabulary>.', 'Bacaannya berasal dari 見る dan 直す. Ketahuilah itu dan Anda akan tahu cara membaca kata ini juga!', 'Untuk Mengevaluasi Kembali, Untuk Melihat Lagi, Untuk Menilai Kembali')
    RETURNING id INTO v_3453_untuk_mengevaluasi_kembali;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '待合室', 'ruang-tunggu', 16, 43, '<kanji>ruangan</kanji> tempat Anda <kanji>bergabung</kanji> dengan orang lain untuk <kanji>menunggu</kanji>. Ini adalah <vocabulary>ruang tunggu</vocabulary>.', 'Ingat bagaimana kamu sudah mempelajari 待合? Ayo lemparkan on''yomi untuk 室 di akhir dan Anda sudah membaca!', 'Ruang tunggu')
    RETURNING id INTO v_3584_ruang_tunggu;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '感動する', 'menjadi-tergerak-secara-emosional', 16, 44, 'Anda tahu ini adalah kata kerja dari する. <kanji>perasaan</kanji> Anda semakin <kanji>tergerak</kanji>d, jadi ini berarti <vocabulary>tergerak secara emosional</vocabulary> — menggambarkan betapa Anda sangat terpengaruh oleh sesuatu. Dalam bahasa Inggris, kata ini terkadang diutarakan sebagai <vocabulary>to be moving</vocabulary>, mengacu pada dampak emosional yang dimiliki sesuatu, seperti film yang menyentuh hati.

感動する digunakan setiap kali sesuatu menyentuh Anda secara mendalam dan tulus, seperti saat Anda tergerak oleh pidato yang emosional, cerita yang menyentuh, atau pemandangan yang menakjubkan.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Menjadi Tergerak Secara Emosional, Menjadi Bergerak')
    RETURNING id INTO v_3587_menjadi_tergerak_secara_emosional;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '取材', 'meliput-suatu-acara', 16, 45, 'Tugas Anda adalah <kanji>mengambil</kanji> <kanji>materi</kanji> dari sekelompok orang yang berbeda karena Anda <vocabulary>meliput suatu acara</vocabulary>. <vocabulary>pengumpulan data</vocabulary> ini harus menyeluruh, jadi cobalah mengambil semua materi yang Anda bisa dari sebanyak mungkin orang yang Anda temukan.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda belum mempelajari on''yomi 取, jadi inilah mnemonik untuk membantu Anda:

Anda <vocabulary>meliput acara</vocabulary> yang menampilkan semua jenis <reading>chu</reading>tes (しゅ). Mereka mempunyai berbagai macam saluran, mulai dari saluran cucian dan saluran sampah, hingga saluran evakuasi dan masih banyak lagi. Anda akan melakukan <vocabulary>pengumpulan data</vocabulary> dan wawancara tentang semua peluncuran ini, dan Anda tidak sabar menunggu!', 'Meliput Suatu Acara, Pengumpulan Data, Wawancara')
    RETURNING id INTO v_3691_meliput_suatu_acara;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '格好', 'penampilan', 16, 46, 'Seseorang mempunyai <kanji>status</kanji> <kanji>disukai</kanji> oleh Anda, dan itu karena <vocabulary>penampilan</vocabulary> dan <vocabulary>bentuk</vocabulary> mereka yang luar biasa. Mereka memiliki <vocabulary>tampilan</vocabulary> yang bagus, dan itu benar-benar membuat Anda menyukainya (Anda agak dangkal).

Dengan sendirinya, 格好 biasanya mengacu pada penampilan seseorang secara visual, terutama pakaian atau gaya luarnya. Namun dalam frasa tertentu, kata ini juga dapat menggambarkan keseluruhan getaran suatu hal, itulah sebabnya 格好いい cocok untuk orang yang berpenampilan menarik, lagu jammin, atau bahkan dialog yang terdengar sangat keren.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya. Pastikan untuk mencatat pembacaan かく, yang kemudian diubah menjadi かっ.

Perhatikan bahwa dalam percakapan santai, orang sering mempersingkat pembacaan 格好 dari かっこう menjadi かっこ. Hal ini umum terjadi pada frasa 格好いい dan 格好悪い, yang cenderung disingkat menjadi かっこいい dan かっこわるい — dan bahkan terkadang ditulis seperti itu dalam kana. TAPI… jika tiba waktunya ujian kanji, ingatlah untuk menggunakan bacaan resmi かっこう untuk 格好!', 'Penampilan, Membentuk, Lihat')
    RETURNING id INTO v_3702_penampilan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '約束する', 'berjanji', 16, 47, '約束 adalah sebuah “janji.” Jadi ketika Anda menambahkan する ke dalamnya, Anda menjadikannya kata kerja, yang berarti <vocabulary>menjanjikan</vocabulary>. Sekarang berjanjilah Anda akan mengingatnya!', 'Bacaannya sama dengan 約束 dengan tambahan する. Pastikan Anda mengetahui 約束 dan Anda juga akan mengetahui kata ini.', 'Berjanji')
    RETURNING id INTO v_3720_berjanji;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '仮面', 'masker', 16, 48, '<kanji>sementara</kanji> <kanji>wajah</kanji> adalah sesuatu yang Anda letakkan di wajah Anda untuk menutupinya. Itu adalah <vocabulary>topeng</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Masker')
    RETURNING id INTO v_3799_masker;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '保守的', 'konservatif', 16, 49, 'Siapa saja yang <kanji>seperti</kanji> "Saya ingin <kanji>melestarikan</kanji> dan <kanji>melindungi</kanji> apa yang saya miliki, keluar dari urusan saya, pemerintah!"? Tentu saja, orang-orang <vocabulary>Konservatif</vocabulary>.', 'Bacaannya tidak cocok dengan 守 kata ini. Bacaannya adalah しゅ, tapi Anda dapat mengingatnya karena kaum konservatif ingin melindungi dan melestarikan <reading>cangkul</reading> (ほ) dan <reading>chute</reading> (しゅ) mereka dari pemerintah. Untuk beberapa alasan mereka dikenakan pajak yang banyak.', 'Konservatif')
    RETURNING id INTO v_3801_konservatif;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '保存', 'kelestarian', 16, 50, 'Kami mencoba <kanji>melestarikan</kanji> apa pun yang kami ingin <kanji>ada</kanji> dengan <vocabulary>pelestarian</vocabulary>. Ingin makhluk laut atau burung istimewa ada? Tingkatkan upaya <vocabulary>konservasi</vocabulary>! Dan, jika Anda ingin menyimpan data (seperti di komputer), Anda juga dapat menggunakan kata ini untuk <vocabulary> saving</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Kelestarian, Konservasi, Penghematan')
    RETURNING id INTO v_3802_kelestarian;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '保険', 'asuransi', 16, 51, 'Ketika Anda dapat <kanji>menjamin</kanji> terhadap <kanji>risiko</kanji>, itu mungkin karena Anda membeli <vocabulary>asuransi</vocabulary> yang bagus! Apa yang kamu gunakan? Tokek 保険?', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Asuransi')
    RETURNING id INTO v_3804_asuransi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '保証', 'menjamin', 16, 52, 'Memberikan <kanji>bukti</kanji> (atau <kanji>jaminan</kanji>) bahwa Anda akan <kanji>melestarikan</kanji> sesuatu, berarti memberikan <vocabulary>jaminan</vocabulary>, <vocabulary>assurance</vocabulary>, atau <vocabulary>garansi</vocabulary>.

Kata ini digunakan ketika penekanannya adalah pada mengambil tanggung jawab atas sesuatu, seperti dalam penjaminan, jaminan produk, atau jaminan kualitas.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Menjamin, Jaminan, Jaminan')
    RETURNING id INTO v_3805_menjamin;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '仏像', 'patung-buddha', 16, 53, 'Anda memiliki <kanji>Buddha</kanji> dan 像, yang Anda pelajari terutama sebagai "gambar" namun bisa juga berarti <kanji>patung</kanji>. Sehingga menjadikan ini <vocabulary>patung Buddha</vocabulary>. 仏像 juga bisa berarti <kosa kata>gambar Buddha</vocabulary>, tentu saja.

仏像 mengacu pada patung, lukisan, atau representasi artistik tokoh Buddha yang digunakan sebagai objek pemujaan. Meskipun sering kali berarti patung Buddha, kata ini juga mencakup penggambaran tidak hanya Sang Buddha sendiri tetapi juga dewa Buddha lainnya.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Patung Buddha, Gambar Buddha')
    RETURNING id INTO v_3808_patung_buddha;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '古典的', 'klasik', 16, 54, 'Ketika sesuatu itu "<kanji>kuno</kanji> <kanji>aturan</kanji>-<kanji>seperti</kanji>", itu tidak terlalu modern. Itu terjadi di masa lalu. Ini adalah <vocabulary>klasik</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Klasik')
    RETURNING id INTO v_3809_klasik;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '仏典', 'kitab-suci-budha', 16, 55, '<kanji>Buddha</kanji> menuliskan semua <kanji>aturan</kanji> agama Buddha dalam <vocabulary>Kitab Suci Buddha</vocabulary> dan <vocabulary>Tulisan Buddha</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya. Perhatikan bahwa ぶつ disingkat menjadi ぶっ.', 'Kitab Suci Budha, Tulisan Buddha')
    RETURNING id INTO v_3810_kitab_suci_budha;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '字典', 'kamus-karakter', 16, 56, '<kanji>Huruf</kanji> <kanji>aturan</kanji> dapat ditemukan di <vocabulary>kamus karakter</vocabulary>. Dalam bahasa Jepang, satu "huruf" atau "karakter" kanji dapat menyimpan banyak informasi, jadi Anda memiliki kamus yang didedikasikan untuk arti kanji. Itulah yang terjadi.

Kata ini agak kuno saat ini, jadi Anda mungkin juga melihat 漢字辞典 digunakan untuk kamus karakter. (Anda akan segera mempelajari 辞典, jika Anda belum melakukannya!)', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Kamus Karakter, Kamus Kanji')
    RETURNING id INTO v_3811_kamus_karakter;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '事典', 'ensiklopedi', 16, 57, 'Jika kamu menemukan <kanji>masalah</kanji> yang <kanji>aturannya</kanji> tidak jelas, kamu perlu melihatnya di <vocabulary>ensiklopedia</vocabulary>!', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Ensiklopedi, Kamus')
    RETURNING id INTO v_3812_ensiklopedi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '冒険', 'petualangan', 16, 58, 'Anda <kanji>berani</kanji> melakukan sesuatu yang <kanji>berisiko</kanji>. Saatnya <vocabulary>petualangan</vocabulary>! Bayangkan diri Anda menantang diri sendiri untuk melakukan hal-hal yang berisiko. Apakah ini sebuah petualangan? Jika tidak, buatlah demikian!', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Petualangan')
    RETURNING id INTO v_3813_petualangan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '冗談', 'candaan', 16, 59, 'Jika Anda <kanji>berlebihan</kanji> <kanji>berbicara</kanji>, Anda tidak serius, Anda hanya menceritakan <vocabulary>lelucon</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Candaan')
    RETURNING id INTO v_3814_candaan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '危険', 'berisiko', 16, 60, 'Sesuatu yang <kanji>berbahaya</kanji> dan <kanji>berisiko</kanji> mungkin cukup <vocabulary>berisiko</vocabulary>, <vocabulary>berbahaya</vocabulary>, dan <vocabulary>tidak aman</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Berisiko, Tidak aman, Berbahaya, Bahaya, Bahaya, Bahaya')
    RETURNING id INTO v_3815_berisiko;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '危ない', 'berbahaya', 16, 61, 'Ini adalah kanji tunggal dengan い di akhir, artinya Anda tahu itu mungkin kata sifat. Apa bentuk kata sifat dari <kanji>berbahaya</kanji>? Itu <vocabulary>berbahaya</vocabulary>.', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi. Anda tidak mempelajarinya dengan kanji ini, jadi inilah mnemonik untuk membantu Anda: Seseorang dalam bahaya! Itu adalah <read>abe</reading> (あぶ) Lincoln yang malang. Anda mencoba menyelamatkannya, berteriak 危ないよ!!!!, tapi dia tetap tertembak di bagian belakang kepala.', 'Berbahaya, Berisiko')
    RETURNING id INTO v_3816_berbahaya;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '下品', 'mentah', 16, 62, 'Barang yang berada <kanji>di bawah</kanji> <kanji>produk</kanji> normal adalah barang tiruan yang murah dan kualitasnya buruk. Barang-barang ini sangat <vocabulary>kasar</vocabulary> dan <vocabulary>vulgar</vocabulary> dalam pembuatan dan desainnya. Begitu banyak <vocabulary>vulgarity</vocabulary>!', 'Anda belum melihat bacaan ini untuk 下 (maaf kanji ini banyak sekali!) jadi inilah mnemonik untuk membantu Anda:

Barang-barang itu sangat <vocabulary>kasar</vocabulary> sehingga Anda bahkan tidak tahu barang apa yang seharusnya. Sejujurnya mereka semua terlihat seperti patung <reading>ge</reading>cko (げ) yang kental. Katanya itu lampu tapi lebih mirip tokek yang melihat ke langit. Kursi itu? Pasti sekelompok tokek yang sedang mengadakan pesta biliar. Apakah Anda yakin tidak mendapatkan barang ini dari seniman tokek yang aneh?', 'Mentah, Vulgar, Kekasaran')
    RETURNING id INTO v_3818_mentah;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '作品', 'sebuah-karya', 16, 63, 'Jika Anda <kanji>membuat</kanji> sebuah <kanji>produk</kanji>, itu sebenarnya bukan sebuah produk lagi, melainkan <vocabulary>sebuah karya</vocabulary>. Ini adalah <vocabulary>karya</vocabulary> seni atau sastra Anda, atau mungkin <vocabulary>produksi</vocabulary> teater.

Ini bisa berupa kreasi artistik apa pun: buku, komposisi, lukisan, film, drama... Ini tidak berarti "produk" (Anda akan mempelajari kata itu nanti!) tetapi dapat digunakan untuk suatu produk ketika Anda ingin menonjolkan bakat artistik di baliknya.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Sebuah Karya, Bekerja, Produksi')
    RETURNING id INTO v_3819_sebuah_karya;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '品', 'artikel', 16, 64, 'Anda telah mengetahui bahwa kanji berarti <kanji>produk</kanji>, dan kosakata di sini juga bisa berarti demikian, namun lebih sering memiliki arti yang lebih luas seperti <vocabulary>article</vocabulary> atau <vocabulary>item</vocabulary>. Anda mungkin mendengar pramuniaga menyebut barang mereka sebagai 品, namun Anda juga akan melihatnya dalam frasa seperti 思い出の品 (kenang-kenangan) dan 感謝の品 (tanda terima kasih).', 'Jika kanji ini digunakan sebagai kosa kata berkarakter tunggal, biasanya kanji tersebut memiliki bacaan kun''yomi しな. Anda belum melihat bacaan しな, jadi inilah mnemonik untuk membantu Anda mengingatnya:

<vocabulary>artikel</vocabulary> dan <vocabulary>item</vocabulary> favorit Anda semuanya memiliki <reading>kemilau</reading> (しな) khusus yang hanya dapat dilihat oleh Anda. Mungkin karena semua kenangan dan emosi yang Anda lekatkan pada barang-barang itu, tapi semuanya tampak bersinar dengan kilau yang membuat Anda merasa hangat dan tidak nyaman di dalam saat Anda melihatnya.

Ingatlah bahwa ini akan memiliki bacaan on''yomi ひん ketika digunakan sebagai sufiks di akhir beberapa kata majemuk, seperti ブランド品 (barang bermerek). Tapi しな akan menjadi bacaan utama Anda karena merupakan kosakata mandiri yang digunakan untuk berbicara tentang barang, artikel, dan barang!', 'Artikel, Barang')
    RETURNING id INTO v_3820_artikel;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '新品', 'baru', 16, 65, '<kanji>baru</kanji> <kanji>produk</kanji> adalah sesuatu yang <vocabulary>baru</vocabulary> atau <vocabulary>item baru</vocabulary>. Saya suka melihat-lihat toko untuk mencari barang baru karena menarik!', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya. Namun perhatikan bahwa ひん berubah menjadi ぴん. Ini karena Anda membeli beberapa pin <vocabulary>baru</vocabulary>?', 'Baru, Barang Baru, Produk Baru')
    RETURNING id INTO v_3821_baru;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '商品', 'barang-dagangan', 16, 66, '<kanji>Artikel</kanji> dari <kanji>merchandise</kanji> masih merupakan <vocabulary>merchandise</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Barang dagangan, Produk, Barang-barang')
    RETURNING id INTO v_3822_barang_dagangan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '公園', 'taman-umum', 16, 67, '<kanji>umum</kanji> <kanji>taman</kanji> adalah taman yang bersifat umum. Itu adalah <vocabulary>taman umum</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Taman Umum, Taman')
    RETURNING id INTO v_3824_taman_umum;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '存じる', 'untuk-mengetahui', 16, 68, 'Ini seperti cara yang sangat formal dan sederhana untuk mengatakan <kosakata>mengetahui</vocabulary> atau <vocabulary>percaya</vocabulary>. Tentu saja, kanjinya berarti <kanji>seandainya</kanji>, tapi anggaplah seperti ini... Saat Anda mengatakan "Saya kira" itu seperti cara sederhana untuk mengatakan "Saya tahu" atau "Saya percaya." Anda tidak bersikap blak-blakan seperti ini, dan dalam bahasa Jepang, hal itu membuat Anda lebih rendah hati dan sopan. Jadi, itu sebabnya 存じる berarti <kosa kata>mengetahui</vocabulary> atau <vocabulary>percaya</vocabulary>.

Perhatikan bahwa kata ini biasanya digunakan dalam bentuk ます yang sopan. Saat Anda rendah hati, saya rasa Anda mungkin ingin bersikap sesopan mungkin!', 'Bacaannya sama dengan yang Anda pelajari dengan kanji. Jika Anda ingat bacaan kanji, Anda tidak akan kesulitan mengingat bacaan kosakata ini juga!', 'Untuk Mengetahui, Untuk Diwaspadai, Percaya')
    RETURNING id INTO v_3826_untuk_mengetahui;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '生存', 'adanya', 16, 69, '<kanji>Kehidupan</kanji> yang ada</kanji> ada dalam <vocabulary>keberadaan</vocabulary> di planet ini... Apa yang dimaksud dengan <vocabulary>kehidupan</vocabulary> dan <vocabulary>survival</vocabulary> di tempat yang tak kenal ampun?', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Adanya, Kehidupan, Kelangsungan hidup')
    RETURNING id INTO v_3827_adanya;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '守る', 'untuk-melindungi', 16, 70, 'Kata ini terdiri dari kanji dengan hiragana ditempelkan. Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanjinya sendiri berarti <kanji>melindungi</kanji> jadi versi kosakata kata kerjanya adalah <vocabulary>to protected</vocabulary> dan juga <vocabulary>to defence</vocabulary>. Ini juga bisa berarti <vocabulary>menaati</vocabulary>, dalam arti menaati aturan.', 'Anda memerlukan <vocabulary>untuk melindungi</vocabulary> dari kanker payudara, sehingga Anda mendapatkan <reading>mammo</reading>gram (まも).', 'Untuk Melindungi, Untuk Membela, Untuk Mematuhi')
    RETURNING id INTO v_3828_untuk_melindungi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '留守', 'ketiadaan', 16, 71, 'Anda telah mendapat misi. Anda harus keluar dan <kanji>menahan</kanji> penjahat berbahaya untuk <kanji>melindungi</kanji> negara Anda. Saat Anda melakukan hal tersebut, Anda akan <vocabulary>jauh dari rumah</vocabulary> dan <vocabulary>absen</vocabulary> dari masyarakat.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Ketiadaan, Jauh dari Rumah')
    RETURNING id INTO v_3829_ketiadaan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '真実', 'kebenaran', 16, 72, '<kanji>realitas</kanji> dari <kanji>kebenaran</kanji> tidak lebih dari <vocabulary>kebenaran</vocabulary> dan <vocabulary>reality</vocabulary>. Tidak ada yang lebih nyata dari ini.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Kebenaran, Realitas')
    RETURNING id INTO v_3830_kebenaran;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '専門', 'khusus', 16, 73, '<kanji>keahlian</kanji> <kanji>gerbang</kanji> Anda adalah hal yang Anda buka untuk mengeluarkan <vocabulary>keahlian</vocabulary> Anda. Bayangkan hal terbaik yang Anda kuasai (keahlian Anda). Sekarang bayangkan membuka sebuah gerbang di dada Anda yang memungkinkannya keluar, memungkinkan Anda untuk menjadi ahli dalam hal itu.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Khusus, Khusus, Bidang Studi, Besar')
    RETURNING id INTO v_3831_khusus;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '不幸', 'ketidakbahagiaan', 16, 74, 'Ketika Anda <kanji>tidak</kanji> memiliki <kanji>kebahagiaan</kanji>, Anda memiliki <vocabulary>ketidakbahagiaan</vocabulary>, <vocabulary>misfortune</vocabulary> dan <vocabulary>misery</vocabulary>. Ini juga bisa berarti <vocabulary>kematian</vocabulary>, biasanya pada anggota keluarga.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Ketidakbahagiaan, Kemalangan, Penderitaan, Kematian')
    RETURNING id INTO v_3832_ketidakbahagiaan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '幸せ', 'kebahagiaan', 16, 75, 'Ini adalah versi kata benda dari kanji 幸. Kanji berarti <kanji>kebahagiaan</kanji> dan kosakatanya berarti <kosakata>kebahagiaan</vocabulary>.

Dibandingkan dengan 幸福, 幸せ lebih umum digunakan dalam bahasa sehari-hari dan mengacu pada perasaan bahagia atau kepuasan pribadi yang lebih langsung.', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi. Anda tidak belajar membaca dengan kanji ini, jadi inilah mnemonik untuk membantu Anda: 

Dalam pencarian Anda akan <vocabulary>kebahagiaan</vocabulary> sejati, Anda bertemu dengan seorang guru kebahagiaan. <read>Dia selalu berkata</reading> (しあわせ), "berbahagialah!" Dia selalu mengatakan itu, dan kamu selalu mendengarkan. Anda tidak dapat mempercayai betapa sederhana namun mendalamnya pendekatannya!', 'Kebahagiaan')
    RETURNING id INTO v_3833_kebahagiaan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '政府', 'pemerintah', 16, 76, '<kanji>Politik</kanji> dan <kanji>pemerintahan</kanji>. Mereka diperlukan untuk menjaga <vocabulary>pemerintah</vocabulary> tetap berjalan.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Pemerintah')
    RETURNING id INTO v_3834_pemerintah;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '弁当', 'bento', 16, 77, 'Tahukah Anda bagaimana 弁 berarti <kanji>dialek</kanji> dan 当 berarti <kanji>sukses</kanji>? Ya, ini tidak akan banyak membantu Anda, karena ini berarti <vocabulary>bento</vocabulary> atau <vocabulary>kotak makan siang</vocabulary>. Namun kemungkinan besar Anda tahu kata "bento" dari bahasa Inggris. Jadi, jika kamu membaca kata ini (yang seharusnya bisa kamu baca), kamu bisa mengetahui bahwa itu adalah べんとう. Jika Anda melakukannya, Anda akan menyadari bahwa kata ini juga berarti <vocabulary>bento</vocabulary>!', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Bento, Kotak Makan Siang')
    RETURNING id INTO v_3835_bento;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '東京弁', 'dialek-tokyo', 16, 78, 'Anda tahu bahwa 東京 adalah <kanji>Tokyo</kanji>, dan Anda tahu bahwa 弁 adalah <kanji>dialek</kanji>, jadi di sini Anda memiliki <vocabulary>dialek Tokyo</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Seharusnya tidak ada kejutan di sini, terutama jika Anda ingat cara membaca 東京.', 'Dialek Tokyo')
    RETURNING id INTO v_3836_dialek_tokyo;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '〜弁', 'dialek', 16, 79, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna. Tanda 〜 ada untuk menunjukkan kemelekatan pada sesuatu, seperti 東京弁, yang berarti "Dialek Tokyo".', 'Bacaannya sama dengan yang Anda pelajari dengan kanji. Karena biasanya dilekatkan pada kata lain, maka menggunakan bacaan on''yomi seperti kata jukugo pada umumnya.', 'Dialek')
    RETURNING id INTO v_3837_dialek;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '急ぐ', 'untuk-bergegas', 16, 80, 'Kata ini terdiri dari kanji dengan hiragana ditempelkan. Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanjinya sendiri berarti <kanji>cepat</kanji> jadi versi kosakata kata kerjanya adalah <kosakata>cepat</vocabulary>.', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi. Anda tidak belajar membaca dengan kanji ini, jadi inilah mnemonik untuk membantu Anda: Seseorang yang mencoba <vocabulary>untuk bergegas</vocabulary> adalah seseorang yang tidak <reading>nyaman</reading> (いそ).', 'Untuk bergegas')
    RETURNING id INTO v_3838_untuk_bergegas;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '急に', 'tiba-tiba', 16, 81, 'Sesuatu yang terjadi <kanji>tiba-tiba</kanji> terjadi <vocabulary>tiba-tiba</vocabulary>, <vocabulary>segera</vocabulary>, atau <vocabulary>tiba-tiba</vocabulary>.', 'Bacaannya sama dengan yang Anda pelajari dengan kanji. <vocabulary>Tiba-tiba</vocabulary> Anda dapat membaca kata baru!', 'Tiba-tiba, Langsung, Tiba-tiba')
    RETURNING id INTO v_3839_tiba_tiba;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '急死', 'kematian-mendadak', 16, 82, '<kanji>mendadak</kanji> <kanji>kematian</kanji> menghasilkan hal itu, <vocabulary>kematian mendadak</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Kematian Mendadak')
    RETURNING id INTO v_3840_kematian_mendadak;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '急行', 'cepat', 16, 83, 'Hal-hal yang <kanji>cepat</kanji> dan <kanji>berjalan</kanji> lebih cepat dibandingkan hal-hal lain adalah <vocabulary>ekspresikan</vocabulary>. Ini sering digunakan pada kereta api atau kereta bawah tanah, jadi berhati-hatilah jika Anda ingin pergi ke suatu tempat dengan tergesa-gesa. Berhati-hatilah juga jika kereta tidak berhenti di halte Anda, karena 急行 kereta tidak berhenti di setiap stasiun (yang membuatnya menjadi ekspres!).', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Cepat')
    RETURNING id INTO v_3841_cepat;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '政治', 'politik', 16, 84, 'Jika Anda ingin <kanji>menyembuhkan</kanji> <kanji>pemerintah</kanji>, Anda harus terjun ke dalam <vocabulary>politik</vocabulary>. Harus bergabung dengan mereka untuk memperbaikinya... tetapi bisakah Anda bertahan selama itu tanpa merusak diri Anda sendiri?', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Politik, Pemerintah')
    RETURNING id INTO v_3842_politik;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '書く', 'untuk-menulis', 16, 85, 'Kata ini terdiri dari kanji dengan hiragana ditempelkan. Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanjinya sendiri berarti <kanji>menulis</kanji> sehingga versi verbanya berarti <vocabulary>to write</vocabulary>.', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi. Anda tidak belajar membaca dengan kanji ini, jadi inilah mnemonik untuk membantu Anda:

Tempat favorit Anda untuk <vocabulary>menulis</vocabulary> adalah di <reading>ca</reading>r (か). Ada sesuatu tentang dengungan mesin dan getaran halus di jalan yang benar-benar membuat kata-kata mengalir dari pena Anda. Pastikan saja ada orang lain yang mengemudikan mobil tersebut, kecuali Anda ingin menjadi salah satu penulis terkenal setelah meninggal.', 'Untuk Menulis')
    RETURNING id INTO v_3843_untuk_menulis;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '全治', 'pemulihan-lengkap', 16, 86, '<kanji>Semua</kanji> <kanji>menyembuhkan</kanji>d! Itu berarti Anda telah melakukan <vocabulary>pemulihan total</vocabulary>! Anda <vocabulary>sembuh total</vocabulary>!', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Pemulihan Lengkap, Sembuh Sepenuhnya, Sembuh Sepenuhnya')
    RETURNING id INTO v_3846_pemulihan_lengkap;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '不治', 'ketidakhancuran', 16, 87, 'Ketika Anda <kanji>tidak</kanji> <kanji>menyembuhkan</kanji> sesuatu, ini adalah masalah <vocabulary>tidak dapat disembuhkan</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Ketidakhancuran, Tak tersembuhkan')
    RETURNING id INTO v_3847_ketidakhancuran;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '明治', 'era-meiji', 16, 88, 'Ini adalah era <kanji>cerah</kanji> <kanji>pemerintahan</kanji>! Jika ini tidak masuk akal, jangan khawatir. Lebih fokus pada bacaannya yaitu めいじ. Kedengarannya familier? Ini adalah <vocabulary>era Meiji</vocabulary> atau <vocabulary>Kaisar Meiji</vocabulary> yang terkenal. Jika Anda belum mengetahuinya, pertimbangkan untuk membaca, ini sejarah yang menarik!', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Anda tidak mempelajari on''yomi untuk 明 (めい) dengan kanji, jadi inilah mnemonik untuk membantu Anda mengingatnya:

<vocabulary>Era Meiji dimulai</vocabulary> dengan banyak perubahan — dan pada <reading>Mei</reading> (めい), Jepang baru telah terbentuk.', 'Era Meiji, Kaisar Meiji, Meiji')
    RETURNING id INTO v_3848_era_meiji;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '浴びる', 'untuk-mandi', 16, 89, 'Kata ini terdiri dari kanji dengan hiragana ditempelkan. Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanjinya sendiri berarti <kanji>mandi</kanji> jadi versi kosakata kata kerjanya adalah <vocabulary>mandi</vocabulary>.

Kata kerja ini bersifat transitif, dan objeknya adalah apa pun yang Anda "mandikan". Bisa jadi mandi atau mandi, tapi bisa juga matahari. Jadi Anda bisa keduanya シャワーを浴びる dan 日の光を浴びる. Lebih negatifnya, hal ini juga dapat berarti <vocabulary>terkena</vocabulary> sesuatu, seperti kritik atau radioaktivitas.', 'Anda ingin tahu cara terbaik <vocabulary>mandi</vocabulary> sesuatu? Dengan sekelompok <read>a</reading>ardvark (あ) di dalam air. Mereka menggunakan lidah kecilnya yang lengket untuk membersihkan semua celah dan celah Anda.', 'Untuk Mandi, Untuk Dikenakan')
    RETURNING id INTO v_3849_untuk_mandi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '日光浴', 'berjemur', 16, 90, 'Anda tahu bahwa 日光 adalah "sinar matahari" jadi ketika Anda menambahkan <kanji>mandi</kanji> Anda mendapatkan "mandi sinar matahari" ... tapi kedengarannya bodoh, jadi sebut saja kata ini <vocabulary>berjemur</vocabulary>!', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Berjemur')
    RETURNING id INTO v_3850_berjemur;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '特急', 'kereta-ekspres-terbatas', 16, 91, 'Sesuatu yang <kanji>istimewa</kanji> dan dalam keadaan <kanji>terburu-buru</kanji> pastilah istimewa. Ini merujuk pada <vocabulary>kereta ekspres terbatas</vocabulary> di Jepang. Mereka melaju dengan cepat, berhenti di pemberhentian yang lebih sedikit (karena pemberhentian tersebut istimewa!) dan mereka bergegas. Carilah ini jika Anda ingin mencapai suatu tempat dalam sekejap.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya. Perhatikan saja bahwa とく menuju ke とっ.', 'Kereta Ekspres Terbatas, Ekspres Terbatas')
    RETURNING id INTO v_3851_kereta_ekspres_terbatas;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '留学', 'belajar-di-luar-negeri', 16, 92, 'Anda <kanji>menahan</kanji> <kanji>studi</kanji> Anda dan membawanya ke tempat asing. Tempat asing itu membuat Anda <vocabulary>belajar di luar negeri</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya. Pembacaan 留 adalah versi りゅう. Anda dapat mengingat ini karena <reading>Ryu</reading> (りゅう) dari petarung jalanan sedang mengikuti program belajar di luar negeri untuk mempelajari lebih lanjut karate.', 'Belajar di Luar Negeri, Belajar di Luar Negeri')
    RETURNING id INTO v_3852_belajar_di_luar_negeri;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '写真', 'foto', 16, 93, '<kanji>salinan</kanji> dari <kanji>realitas</kanji> sangat mirip dengan sihir. Namun, bagaimana Anda membuat salinan kenyataan? Anda mengambil <vocabulary>foto</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Foto, Foto, Gambar')
    RETURNING id INTO v_3853_foto;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '真っ黒', 'hitam-pekat', 16, 94, '<kanji>kenyataannya</kanji> adalah <kanji>hitam</kanji>. Seperti, sangat hitam sehingga melebihi hitam palsu, itu adalah hitam nyata. Ini sangat hitam hingga <vocabulary>gelap gulita</vocabulary>.', 'Bacaan 真 merupakan bacaan kun''yomi yang belum anda pelajari. Bayangkan apa yang gelap gulita. Itu adalah <read>Ma</reading>mu yang malang (ま). Dia sangat gelap sehingga dia menyedot cahaya, seperti lubang hitam... tunggu, dia adalah lubang hitam, itu menjelaskan mengapa ibumu gelap gulita.', 'Hitam pekat, Hitam Murni')
    RETURNING id INTO v_3854_hitam_pekat;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '幸福', 'kebahagiaan', 16, 95, 'Dengan sedikit <kanji>kebahagiaan</kanji> dan <kanji>keberuntungan</kanji> Anda dapat mencapai <vocabulary>kebahagiaan</vocabulary>, meskipun hal tersebut tidak perlu dikatakan lagi.

幸福 sering digunakan untuk membahas kebahagiaan dalam arti yang lebih luas dan abstrak, seperti kebahagiaan suatu populasi atau konsep kebahagiaan dalam konteks filosofis.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Kebahagiaan')
    RETURNING id INTO v_3855_kebahagiaan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '笑う', 'tertawa', 16, 96, 'Kata ini terdiri dari kanji dengan hiragana ditempelkan. Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanjinya sendiri berarti <kanji>tertawa</kanji> jadi versi kosakata kata kerjanya adalah <vocabulary>tertawa</vocabulary>.', 'Bacaannya sama dengan yang Anda pelajari dengan kanji. Anda bisa tertawa bebas sekarang!', 'Tertawa')
    RETURNING id INTO v_3856_tertawa;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '笑顔', 'senyum', 16, 97, '<kanji>tertawa</kanji>ing <kanji>wajah</kanji> adalah <vocabulary> wajah tersenyum</vocabulary> (atau hanya <vocabulary>senyum</vocabulary>!). 笑顔 ada di mana-mana!', 'Namun, membaca kata ini tidak akan membuat Anda <vocabulary>tersenyum</vocabulary>. Anda tersenyum, tetapi kemudian Anda mendengar tentang pembacaan kanji ini. Itu membuatmu berteriak "<reading>EH</reading>??" (え). Hati-hati dengan rendaku dari かお hingga がお.', 'Senyum, Wajah Tersenyum')
    RETURNING id INTO v_3857_senyum;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', 'ゴミ箱', 'tong-sampah', 16, 98, 'ゴミ berarti "sampah". Tambahkan <kanji>kotak</kanji> ke dalamnya dan Anda akan mendapatkan kotak sampah alias <vocabulary>tempat sampah</vocabulary> atau <vocabulary>tempat sampah</vocabulary>.', 'Bacaannya hanyalah bacaan kun''yomi, yang dipelajari dengan kanji. Pastikan untuk memperhatikan rendaku. はこ berubah menjadi ばこ.', 'Tong sampah, Tempat Sampah, Tempat sampah, Tempat Sampah, Tempat Sampah, Tempat Sampah, Tong sampah, Tempat sampah')
    RETURNING id INTO v_3858_tong_sampah;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '箱', 'kotak', 16, 99, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.', 'Bacaannya sama dengan yang Anda pelajari dengan kanji.', 'Kotak')
    RETURNING id INTO v_3859_kotak;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '荷物', 'bagasi', 16, 100, '<kanji>bagasi</kanji> <kanji>barang</kanji> adalah <vocabulary>bagasi</vocabulary> Anda. Ini juga merupakan <vocabulary>bagasi</vocabulary> dan <vocabulary>load</vocabulary> Anda juga.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Anda harus mengingat bacaan 物 sebagai もつ. Mengapa? Karena semua barang bawaan Anda baru saja dibuang ke berbagai <read>parit</reading> di sepanjang pedesaan. Anda akan membutuhkan waktu lama untuk mengambil barang bawaan Anda dari parit ini dan pada saat itu semuanya akan basah. Sial...', 'Bagasi, Bagasi, Memuat')
    RETURNING id INTO v_3860_bagasi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '証', 'bukti', 16, 101, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.', 'Karena kata ini terdiri dari satu kanji, maka sebaiknya menggunakan bacaan kun''yomi. Saat mempelajari kanji, Anda tidak mempelajari bacaan tersebut, jadi inilah mnemonik untuk membantu Anda dengan kata ini: 
Pencarian Anda yang tiada henti untuk <vocabulary>bukti</vocabulary> akhirnya mengungkap keberadaan <reading>a</reading> <reading>car</reading> <reading>shee</reading>p (あかし)! Ini adalah hibrida yang aneh, memiliki tubuh mobil tetapi kepala dan kaki domba. "Ah, mobil domba! Akhirnya aku menemukan bukti yang membuktikan bahwa kamu nyata!"', 'Bukti, Bukti')
    RETURNING id INTO v_3861_bukti;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '証人', 'saksi', 16, 102, '<kanji>bukti</kanji> <kanji>orang</kanji> adalah <vocabulary>saksi</vocabulary>, karena saksi adalah orang yang memberikan bukti (lho, dengan mulut atau semacamnya).', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Saksi')
    RETURNING id INTO v_3862_saksi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '証言', 'kesaksian', 16, 103, '<kanji>Bukti</kanji> yang Anda <kanji>ucapkan</kanji> adalah <vocabulary>kesaksian</vocabulary>. Anda juga dapat mengatakan bahwa Anda memberikan <vocabulary>bukti verbal</vocabulary>. Mudah-mudahan Anda tidak perlu memberikan terlalu banyak hal ini dalam hidup Anda.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Kesaksian, Bukti Verbal')
    RETURNING id INTO v_3863_kesaksian;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '辞書', 'kamus', 16, 104, 'Ambil semua <kanji>kata</kanji> yang Anda gunakan dalam <kanji>tulisan</kanji>, gabungkan semuanya dan Anda memiliki <vocabulary>kamus</vocabulary>!', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Kamus')
    RETURNING id INTO v_3865_kamus;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '辞める', 'untuk-berhenti', 16, 105, 'Kata ini terdiri dari kanji dengan hiragana ditempelkan. Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanjinya sendiri berarti <kanji>berhenti</kanji> sehingga versi kosakata kata kerjanya adalah <vocabulary>to quit</vocabulary>.', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi. Anda tidak belajar membaca dengan kanji ini, jadi inilah mnemonik untuk membantu Anda: "Hei, kamu akan <vocabulary>berhenti</vocabulary>?" "<reading>Yah</reading> (や) kawan, aku akan berhenti."', 'Untuk Berhenti, Untuk Mengundurkan Diri Sebagai')
    RETURNING id INTO v_3866_untuk_berhenti;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', 'お世辞', 'sanjungan', 16, 106, 'Saat Anda <kanji>keluar</kanji> dari <kanji>generasi</kanji> Anda saat ini untuk bergabung dengan generasi yang lebih lama, Anda harus menggunakan semua jenis <vocabulary>sanjungan</vocabulary>. Orang yang lebih tua senang disanjung; jadi bersikaplah baik dan beri mereka <vocabulary>pujian</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Hati-hati, karena 世 dipersingkat dari せい menjadi せ! Kamu bisa menghafalnya dengan mengingat sanjunganmu harus singkat dan manis, jangan terlalu panjang dan berbelit-belit!', 'Sanjungan, Pujian')
    RETURNING id INTO v_3867_sanjungan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '遠い', 'jauh', 16, 107, 'Ini adalah kanji tunggal dengan い di akhir, artinya Anda tahu itu mungkin kata sifat. Apa bentuk kata sifat dari <kanji>jauh</kanji>? Itu juga <vocabulary>jauh</vocabulary> (atau <vocabulary>jauh</vocabulary>).', 'Kamu ingin <vocabulary>jauh</vocabulary>, <vocabulary>jauh sekali</vocabulary> ketika kamu melihat <reading>jari kaki... oh</reading> (とお)! Anda menyadari ada jari kaki zombi di tanah dan itu mengingatkan Anda ke mana Anda bisa pergi yang jauh dari sini—ke mana perginya zombi yang pernah memiliki jari kaki ini! (Ingat mnemonik kanji? Jari kaki zombi skuter itulah yang membuatmu berkata oh dan ingin pergi.)', 'Jauh, Jauh sekali')
    RETURNING id INTO v_3868_jauh;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '入門', 'penerimaan', 16, 108, 'Jika Anda dapat <kanji>memasuki</kanji> <kanji>gerbang</kanji> maka Anda telah memperoleh <vocabulary>tiket</vocabulary> dan <vocabulary>pintu masuk</vocabulary> ke fasilitas tersebut.  Terkadang Anda melakukan ini untuk memulai <vocabulary>magang</vocabulary>, di mana Anda mendapatkan <vocabulary>pengenalan</vocabulary> pada beberapa keterampilan baru yang menarik, seperti cara masuk.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Penerimaan, Pintu masuk, Perkenalan, Magang')
    RETURNING id INTO v_3869_penerimaan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '関する', 'untuk-berhubungan-dengan', 16, 109, 'Anda tahu bahwa 関 berarti <kanji>berhubungan</kanji>. Jadi, ketika Anda menambahkan する ke dalamnya, Anda menjadikannya kata kerja. Sekarang artinya <vocabulary>berhubungan dengan</vocabulary>.', 'Bacaannya sama dengan yang Anda pelajari dengan kanji.', 'Untuk Berhubungan Dengan, Untuk Menjadi Peduli, Untuk Berhubungan Dengan')
    RETURNING id INTO v_3870_untuk_berhubungan_dengan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '関係', 'koneksi', 16, 110, '<kanji>koneksi</kanji> <kanji>terkait</kanji> dengan <kanji>koneksi</kanji> lain jelas memiliki semacam <vocabulary>koneksi</vocabulary>, setidaknya di antara semua makna tersebut.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Koneksi, Hubungan')
    RETURNING id INTO v_3871_koneksi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '阪神', 'hanshin', 16, 111, '<kanji>Osaka</kanji> dan <kanji>dewa</kanji>… ? Sebenarnya, wilayah ini dikenal sebagai <vocabulary>Hanshin</vocabulary>. Ini adalah area antara Osaka (大阪) dan Kobe (神戸). Anggap saja seperti ini: 大阪 + 神戸 = 阪神. Bukankah itu pintar? Bahkan ada perusahaan kereta api Hanshin dan tim bisbol Hanshin Tigers — keduanya berbasis di daerah 阪神, tentu saja.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Hanshin')
    RETURNING id INTO v_3872_hanshin;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '前面', 'depan', 16, 112, '<kanji>depan</kanji> <kanji>wajah</kanji> sesuatu adalah <vocabulary>depan</vocabulary> atau <vocabulary>sisi depan</vocabulary> sesuatu itu (semacam 外面 adalah bagian luarnya karena merupakan bagian luarnya). Ini juga berarti <vocabulary>depan</vocabulary> atau <vocabulary>depan</vocabulary>, terutama bila digunakan secara metaforis.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Depan, Sisi Depan, Depan, Garis terdepan')
    RETURNING id INTO v_3873_depan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '地面', 'tanah', 16, 113, '<kanji>tanah</kanji>/<kanji>bumi</kanji> <kanji>wajah</kanji> adalah permukaan yang membentuk <vocabulary>tanah</vocabulary> atau <vocabulary>permukaan bumi</vocabulary>.', 'Pembacaan untuk 面 adalah apa yang Anda harapkan. 地 di sisi lain adalah じ, yang sedikit berbeda (meskipun terdengar mirip) dengan apa yang Anda pelajari sebelumnya. Terima kasih kepada orang-orang Tiongkok dan bahasa mereka yang selalu berubah untuk hal ini. Bayangkan <reading>Je</reading>sus (じ) berbaring di tanah, memberi tahu Anda betapa nyamannya tanah tersebut. Anda berkata, "Ya Tuhan, kamu harus turun, kamu harus makan malam," tetapi dia tidak ingin pergi.', 'Tanah, Permukaan Bumi')
    RETURNING id INTO v_3874_tanah;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '外面', 'penampilan-luar', 16, 114, '<kanji>luar</kanji> <kanji>wajah</kanji> terhadap sesuatu adalah <vocabulary>penampilan luar</vocabulary> dari benda itu.

Meskipun 外面 bisa merujuk pada permukaan luar suatu benda, 外面 lebih umum digunakan untuk mendeskripsikan <vocabulary>penampilan luar</vocabulary>, perilaku, atau sikap seseorang pada <vocabulary>permukaan</vocabulary>.', 'Ini adalah kata jukugo yang biasanya berarti pembacaan kanji on''yomi, jadi ini がいめん. Namun perhatikan bahwa ini juga bisa menggunakan pembacaan kun''yomi, yang menjadikannya そとづら.

Meskipun がいめん bersifat netral, そとづら bersifat sedikit negatif, sering kali menyiratkan bahwa penampilan luar seseorang mungkin menipu, menyembunyikan sifat aslinya.', 'Penampilan Luar, Pulasan, Permukaan')
    RETURNING id INTO v_3875_penampilan_luar;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '画面', 'layar', 16, 115, '<kanji>gambar</kanji> <kanji>permukaan</kanji> adalah <vocabulary>layar</vocabulary>. Bayangkan saja layar komputer Anda. Ada gambar di permukaannya, kan? Itu terjadi begitu saja sepanjang waktu, seperti kebanyakan gambar di layar saat ini.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Layar, Memantau')
    RETURNING id INTO v_3876_layar;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '面', 'permukaan', 16, 116, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.', 'Bacaannya sama dengan yang Anda pelajari dengan kanji.', 'Permukaan, Menghadapi')
    RETURNING id INTO v_3877_permukaan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '面白い', 'menarik', 16, 117, '<kanji>wajah</kanji> objek ini sangat <kanji>putih</kanji>! Mengapa warnanya sangat putih dibandingkan yang lainnya? Ini sangat <kosakata>menarik</vocabulary>...', 'Cara membacanya tidak seperti yang pernah Anda pelajari sebelumnya, setidaknya pada bagian 面 (白い sama seperti kosakata 白い). Saat kamu melihat bagian putih benda tersebut, kamu berkata kepada temanmu Moe: "<reading>Oh mo</reading>!" (おも) karena kamu ingin dia datang dan melihat ini. Coba bayangkan seseorang yang Anda kenal bernama Moe, atau setidaknya seorang selebriti atau sesuatu yang bernama Moe.', 'Menarik, Menyenangkan, Lucu')
    RETURNING id INTO v_3878_menarik;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '図書館', 'perpustakaan', 16, 118, 'Sebuah <kanji>gedung publik</kanji> tempat <kanji>tertulis</kanji>n segala sesuatu <kanji>diagram</kanji> dibuat sedemikian rupa sehingga Anda dapat menemukan hal-hal tertulis tersebut? Kedengarannya seperti <vocabulary>perpustakaan</vocabulary> bagi saya!', 'Bagian 書館 seharusnya dapat dibaca oleh Anda, tetapi bagian 図 itulah yang menyusahkan dengan bacaan alternatif dari yang Anda pelajari. Bayangkan diri Anda berada di perpustakaan. Anda membaca setiap buku yang Anda bisa tentang <reading>jari kaki</reading> manusia (と). Anda mempunyai setumpuk besar buku di atasnya, lalu Anda menjatuhkannya... ironisnya di jari kaki Anda. Anda memutuskan untuk <reading>menunjukkan kepada Khan</reading> (teman Anda) jari kaki Anda yang patah.', 'Perpustakaan')
    RETURNING id INTO v_3879_perpustakaan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '料理人', 'seorang-juru-masak', 16, 119, 'Anda pernah melihat 料理 dan mungkin tahu artinya "memasak". Jadi, apa yang dimaksud dengan <kanji>orang</kanji> yang memasak? Yaitu <vocabulary>seorang juru masak</vocabulary> atau <vocabulary>chef</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Seorang juru masak, Memasak, Koki')
    RETURNING id INTO v_3907_seorang_juru_masak;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '芸術家', 'artis', 16, 120, 'Anda tahu bahwa 芸術 adalah <kanji>seni</kanji> jadi Anda akan berpikir bahwa 芸術家 adalah sesuatu seperti "rumah seni". Ya, ternyata tidak. Coba pikirkan seperti ini: Siapakah orang yang bekerja untuk "House Art"? Itu adalah <vocabulary>artis</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Artis')
    RETURNING id INTO v_3908_artis;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '自動的', 'otomatis', 16, 121, 'Sesuatu yang <kanji>otomatis</kanji><kanji>al</kanji> (自動 + 的) tentu saja tidak "otomatis". Cara yang lebih baik untuk mengatakannya adalah dengan memotong -al dan menyebutnya <vocabulary>automatic</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya. Mengetahui cara membaca 自動 juga akan membantu.', 'Otomatis')
    RETURNING id INTO v_3910_otomatis;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '基本的', 'mendasar', 16, 122, 'Hal-hal yang <kanji>dasar</kanji> (基本) <kanji>seperti</kanji> (的) adalah <vocabulary>basic</vocabulary> dan <vocabulary>fundamental</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya. Mengetahui cara membaca kata 基本 juga akan membantu.', 'Mendasar, Dasar, Standar')
    RETURNING id INTO v_3911_mendasar;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '折り目', 'melipat', 16, 123, '<kanji>lipatan</kanji> yang dapat Anda lihat dengan <kanji>mata</kanji> Anda adalah <vocabulary>lipatan</vocabulary> atau <vocabulary>lipatan</vocabulary> pada sesuatu.', 'Bacaannya sama-sama bacaan kosakata kun''yomi. Anda seharusnya sudah melihat 折る sekarang yang akan membantu Anda membaca 折り. Lalu ada 目, yang menurut saya tidak akan menjadi masalah bagi Anda.', 'Melipat, Lipatan')
    RETURNING id INTO v_3912_melipat;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '卒業式', 'upacara-wisuda', 16, 124, 'Anda tahu bahwa 卒業 adalah <kanji>wisuda</kanji> jadi bagaimana jika Anda menambahkan <kanji>upacara</kanji> ke dalamnya? Itu menjadikannya <vocabulary>upacara wisuda</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya. Akan membantu jika Anda juga mengetahui cara membaca 卒業 sebagai sebuah kata.', 'Upacara Wisuda, Kelulusan')
    RETURNING id INTO v_3914_upacara_wisuda;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '不完全', 'tidak-lengkap', 16, 125, 'Anda tahu bahwa 完全 berarti "lengkap" atau "sempurna". Jadi, <kanji>tidak</kanji> "lengkap" atau "sempurna" adalah sesuatu yang <vocabulary>tidak lengkap</vocabulary> atau <vocabulary>imperfect</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya. Ini juga akan membantu jika Anda bisa membaca 完全.', 'Tidak lengkap, Tidak sempurna')
    RETURNING id INTO v_3915_tidak_lengkap;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '美術館', 'museum', 16, 126, 'Anda tahu 美術 adalah <kanji>seni rupa</kanji>. Lalu apa yang dimaksud dengan <kanji>gedung publik</kanji> yang berisi seni rupa tersebut? Ini adalah <vocabulary>museum</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Museum, Museum Seni, Galeri seni')
    RETURNING id INTO v_3916_museum;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '折り紙', 'origami', 16, 127, 'Anda tahu bahwa 折る berarti "melipat", lalu bagaimana dengan "melipat <kanji>kertas</kanji>"? Pernah mendengar sesuatu yang melibatkan banyak pelipatan kertas dalam bahasa Jepang? Kemungkinan besar Anda pernah mengalaminya. Inilah <vocabulary>origami</vocabulary> alias <vocabulary>seni melipat kertas</vocabulary>.', 'Bacaannya berasal dari 折る dan kosakata kata 紙. Selama Anda mengetahuinya, Anda seharusnya bisa membaca ini. Selain itu, Anda mungkin sudah mengetahui bacaan ini karena ini juga merupakan kata dalam bahasa Inggris.', 'Origami, Seni Melipat Kertas')
    RETURNING id INTO v_3917_origami;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '希望する', 'berharap', 16, 128, 'Anda tahu bahwa 希望 adalah sebuah "keinginan". Saat Anda "melakukan suatu keinginan", itu berarti <vocabulary>berharap</vocabulary>, <vocabulary>meminta</vocabulary>, atau <vocabulary>berharap</vocabulary>.

Ini adalah cara formal untuk mengatakan bahwa Anda menginginkan sesuatu, jadi Anda dapat menggunakannya di tempat kerja untuk meminta kesempatan bekerja di luar negeri, atau memberi tahu mereka dengan sopan bahwa Anda mengundurkan diri.', 'Bacaannya berasal dari 希望. Itu juga bacaan on''yomi jukugo, jika itu membantu.', 'Berharap, Untuk Meminta, Untuk Berharap, Untuk Mencari')
    RETURNING id INTO v_3920_berharap;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '技術', 'teknik', 16, 129, 'Anda pernah melihat 技 sebagai kosakata yang berarti "teknik", dan kanji 術 berarti <kanji>teknik</kanji>. Jadi ini artinya <vocabulary>teknik</vocabulary>! Teknik Anda juga merupakan <vocabulary>keahlian</vocabulary> Anda, dan apa yang dibutuhkan untuk <vocabulary>teknologi</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Teknik, Keahlian, Teknologi, Keahlian')
    RETURNING id INTO v_3921_teknik;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '妥協する', 'untuk-berkompromi', 16, 130, 'Anda tahu bahwa 妥協 berarti <kanji>kompromi</kanji>. Jadi, apa yang terjadi jika Anda menjadikannya kata kerja? Menjadi <vocabulary>berkompromi</vocabulary>.', 'Bacaannya sama dengan vocab kata 妥協, jadi kalau tahu harus jago (juga, baca kanjinya saja yang bisa).', 'Untuk Berkompromi')
    RETURNING id INTO v_3922_untuk_berkompromi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '卒業する', 'untuk-lulus', 16, 131, 'Anda tahu bahwa 卒業 adalah "wisuda". Jadikan itu kata kerja, dan Anda memiliki <vocabulary>untuk lulus</vocabulary>.', 'Bacaannya sama saja dengan vocab kata 卒業.', 'Untuk Lulus')
    RETURNING id INTO v_3929_untuk_lulus;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '残す', 'untuk-meninggalkan', 16, 132, 'Kata ini terdiri dari kanji dengan hiragana ditempelkan. Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanji itu sendiri berarti <kanji>sisa</kanji>, tetapi Anda tidak bisa benar-benar "meninggalkannya". Hal serupa apa yang masuk akal? Bagaimana kalau <vocabulary>meninggalkan</vocabulary>. Ini adalah saat Anda benar-benar melakukan tindakan meninggalkan juga. Misalnya saja, kamu makan sedikit dan nasimu tertinggal karena kamu adalah anak yang nakal. Anda dapat mengingat ini karena す. Setiap kali kamu meninggalkan makanan, ibumu akan <reading>menuntut</reading> kamu, karena dia adalah ibu yang buruk. Bayangkan ini.', 'Pembacaan kata ini bisa berasal dari item level 14 残る. Kaitkan keduanya dalam pikiran Anda dan Anda akan dapat membaca keduanya.', 'Untuk Meninggalkan, Untuk Meninggalkan')
    RETURNING id INTO v_3930_untuk_meninggalkan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '固める', 'untuk-membuat-sesuatu-menjadi-sulit', 16, 133, 'Kata ini terdiri dari kanji dengan hiragana ditempelkan. Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanjinya sendiri artinya <kanji>keras</kanji> jadi versi vocab verbanya? <vocabulary>Untuk membuat sesuatu menjadi sulit</vocabulary>. Namun, Anda perlu membedakannya dengan 固まる, yang berarti "mengeras" (pengerasan terjadi dengan sendirinya). Kata ini berarti "membuat sesuatu menjadi keras", karena Andalah yang melakukan pengerasan tersebut. Anda dapat mengingat ini karena Anda ingin membuat sesuatu menjadi keras. Dan untuk melakukan itu, Anda mengirim "<reading>mail</reading>" (める) khusus ke hal yang ingin Anda buat menjadi sulit, dan email ini melakukannya untuk Anda.', 'Karena pembacaan 固 (かた) berbeda dengan yang Anda pelajari dengan kanji, berikut ini mnemonik untuk membantu Anda:

Mengapa Anda ingin <vocabulary>membuat sesuatu menjadi sulit</vocabulary>? Tentu saja karena Anda ingin meletakkannya di <reading>cata</reading>pult (かた). Lagi pula, tidak ada gunanya memasukkan benda lunak ke dalam ketapel.', 'Untuk Membuat Sesuatu Menjadi Sulit, Untuk Mengeras Sesuatu, Untuk Memperkuat Sesuatu')
    RETURNING id INTO v_3931_untuk_membuat_sesuatu_menjadi_sulit;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '証明', 'bukti', 16, 134, 'Apakah <kanji>bukti</kanji> <kanji>jelas</kanji> cukup untuk meyakinkan saya? Apakah <vocabulary>bukti</vocabulary> ini cukup untuk <vocabulary>membuktikan</vocabulary>?', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Anda tidak mempelajari on''yomi untuk 明 (めい) dengan kanji, jadi inilah mnemonik untuk membantu Anda mengingatnya:

Anda perlu menunjukkan kepada saya <vocabulary>bukti</vocabulary> untuk membuat saya percaya pada bulan <reading>Mei</reading> (めい). Apakah itu ada? Ini mungkin nyata atau mungkin tidak (itulah sebabnya disebut Mei), jadi Anda harus <vocabulary>membuktikan</vocabulary> kepada saya.', 'Bukti, Membuktikan, Memeriksa')
    RETURNING id INTO v_3947_bukti;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '曜日', 'hari-dalam-seminggu', 16, 135, 'Hari dalam <kanji>hari dalam seminggu</kanji> <kanji>hari</kanji> tetap saja <vocabulary>hari dalam seminggu</vocabulary> — seperti Senin, Selasa, Rabu, dll. Anda akan segera mempelajari kata-kata untuk setiap hari tertentu dalam seminggu, namun untuk saat ini Anda harus ingat 曜日 untuk bersiap-siap.', 'Kata ini menggunakan bacaan on''yomi untuk 曜 dan bacaan kun''yomi untuk 日. Anda sudah mempelajari keduanya, tapi hati-hati karena ひ dari 日 berubah menjadi び di sini.', 'Hari Dalam Seminggu')
    RETURNING id INTO v_3948_hari_dalam_seminggu;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '大阪', 'osaka', 16, 136, 'Tempat <kanji>besar</kanji> bernama <kanji>Osaka</kanji>? Ini adalah kota <vocabulary>Osaka</vocabulary>! Pernah mendengarnya? Ini kota besar, dan menyaingi Tokyo.', 'Pembacaan おおさか untuk kata ini terdiri dari kun''yomi untuk setiap kanji. Kamu sudah mempelajari bacaan おお (seperti di 大きい), tapi kamu belum melihat bacaan さか untuk 阪. 

Meski begitu, bukankah 阪 sangat mirip dengan 坂, yang juga berarti "lereng"? Ternyata mereka juga membagikan bacaan さか, jadi kalau kamu ingat kata 坂 kamu bisa menerapkan bacaan itu di sini. (Faktanya, 大阪 kadang-kadang ditulis sebagai 大坂 di masa lalu.) Namun, mnemonik termudah mungkin hanya memikirkan kota <vocabulary>Osaka</vocabulary>… Tapi jangan lupakan kata ganda おお.', 'Osaka, Oosaka')
    RETURNING id INTO v_3952_osaka;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '金曜日', 'jumat', 16, 137, 'Ini adalah hari dalam seminggu. Anda tahu ini karena ada 曜日 di dalamnya. Tapi hari apa dalam seminggu ini? Hari <kanji>emas</kanji> dalam seminggu adalah hari terhebat. Ini adalah hari yang membuat Anda merasa seperti emas karena ini adalah akhir hari kerja dan awal akhir pekan! Hari ini adalah <vocabulary>Jumat</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya. Berhati-hatilah agar ひ menjadi び seperti pada kata 曜日.', 'Jumat')
    RETURNING id INTO v_4362_jumat;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '関心', 'kekhawatiran', 16, 138, 'Hal-hal yang <kanji>berkaitan</kanji> dengan <kanji>hati</kanji> Anda adalah hal-hal yang <vocabulary>memprihatinkan</vocabulary> dan <vocabulary>menarik</vocabulary> paling Anda.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Kekhawatiran, Minat')
    RETURNING id INTO v_4374_kekhawatiran;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '企画', 'rencana', 16, 139, 'Ambil <kanji>rencana</kanji> Anda dan tambahkan beberapa <kanji>gambar</kanji> ke dalamnya. Ini adalah <vocabulary>rencana</vocabulary> Anda.

Meskipun 計画 mengacu pada rencana secara umum, 企画 secara khusus mengacu pada perencanaan acara, proyek, atau inisiatif, serta proyek aktual yang sedang direncanakan.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya. Namun bacaan untuk 画 adalah bacaan sekunder (かく), jadi perhatikanlah itu.', 'Rencana, Perencanaan, Proyek')
    RETURNING id INTO v_4475_rencana;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '内', 'di-dalam', 16, 140, 'Kanji dan kata-katanya sama persis, jadi ini berarti <vocabulary>di dalam</vocabulary> atau <vocabulary>di dalam</vocabulary>.

Meskipun 中 mengacu pada bagian dalam sesuatu dalam arti dasar dan posisional, 内 cenderung mengekspresikan versi "di dalam" yang lebih abstrak, seperti 心の内を話す (mengekspresikan perasaan batin Anda) atau 温かい内に飲む (minum selagi masih hangat). 

Kata ini juga mengandung kontras tersirat dengan 外 (di luar), sehingga sering digunakan untuk berbicara tentang diri Anda atau kelompok Anda, seperti うちの犬 (anjing kami) atau うちの会社 (perusahaan tempat saya bekerja). Dalam hal ini, hampir selalu ditulis dalam hiragana sebagai うち — itulah sebabnya kami menggunakannya seperti itu dalam contoh berikut (tapi hei, sekarang Anda tahu dari mana うち itu berasal!).', 'Karena kata ini terdiri dari satu kanji, maka sebaiknya menggunakan bacaan kun''yomi. Saat mempelajari kanji, Anda tidak mempelajari bacaan tersebut, jadi inilah mnemonik untuk membantu Anda dengan kata ini:

Jika seseorang mengintip <vocabulary>ke dalam</vocabulary> hatimu, mereka akan berkata, "<reading>Ooh, chee</reading>se (うち)!" Hati kebanyakan orang penuh dengan emosi dan rasa tidak aman yang melumpuhkan serta hal-hal lain, tetapi hati Anda tidak memiliki apa-apa selain <vocabulary>keju di dalamnya</vocabulary>. "Ooh, keju… aku sangat mencintaimu." Hanya itu yang pernah diucapkan oleh suara hati Anda.', 'Di dalam, Di dalam')
    RETURNING id INTO v_5389_di_dalam;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '閉める', 'untuk-menutup-sesuatu', 16, 141, 'Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanji itu sendiri artinya <kanji>tertutup</kanji> sehingga versi kosakata kata kerjanya adalah <vocabulary>to close sesuatu</vocabulary>.

閉める pada dasarnya berarti <vocabulary>menutup sesuatu</vocabulary> secara fisik (seringkali dengan gerakan menggeser atau memutar), seperti saat Anda menutup pintu, jendela, gorden, keran, dan sebagainya. Selain itu, bisa juga digunakan untuk menutup toko, baik untuk sehari-hari maupun permanen.', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi. Anda tidak belajar membaca dengan kanji ini, jadi inilah mnemonik untuk membantu Anda:

Bila Anda ingin <vocabulary>menutup sesuatu</vocabulary>, gunakan <reading>shee</reading>p (し). Domba terkenal sebagai penutup yang baik. Pintu, jendela, gorden, apa saja. Tentu saja, mereka akan terus-terusan mengeluh karena mereka bukan orang terdekat Anda, mereka punya pintu sendiri yang harus ditutup, dan bah bah bla, tapi diam-diam mereka senang memiliki kesempatan <vocabulary>untuk menutup sesuatu</vocabulary> untuk Anda.', 'Untuk Menutup Sesuatu, Untuk Menutup Sesuatu')
    RETURNING id INTO v_5618_untuk_menutup_sesuatu;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '天井', 'langit-langit', 16, 142, '<kanji>surga</kanji> <kanji>sumur</kanji> adalah sumur yang naik ke surga. Ini berada di atas Anda, dan merupakan <vocabulary>langit-langit</vocabulary>. Mungkin bagian "sumur" mengacu pada cerobong asap yang naik melalui langit-langit ke langit ketika Anda melihat ke dalam sebuah rumah yang sangat tua?', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda tidak mempelajari bacaan itu untuk 井, jadi kami punya mnemonik untuk membantu Anda melakukannya. Perhatikan bahwa on''yomi untuk 井 sebenarnya bukan じょう, melainkan しょう, yang berakhir dengan rendaku di sini!

Memperbaiki <vocabulary>langit-langit</vocabulary> adalah tugas yang sulit, tapi Anda punya orang yang tepat untuk melakukannya: <reading>Joe</reading> (じょう). Buruh tani lokal Anda yang melakukan semuanya, tidak ada yang terlalu rumit atau di luar jangkauannya, Anda mulai berpikir bahwa pria ini dapat melakukan apa saja. Sungguh orang yang berguna untuk diajak bergaul.', 'Langit-langit')
    RETURNING id INTO v_6884_langit_langit;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '自動車', 'mobil', 16, 143, 'Anda tahu bahwa 自動 adalah <vocabulary>otomatis</vocabulary>. Jadi apa itu <kanji>mobil</kanji> matic? Itu adalah <vocabulary>mobil</vocabulary>, atau sekadar <vocabulary>mobil</vocabulary>.', 'Bacaannya berasal dari 自動 dan bacaan kanji 車, digabungkan.', 'Mobil, Mobil')
    RETURNING id INTO v_7469_mobil;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '教科書', 'buku-pelajaran', 16, 144, 'Hal yang Anda gunakan untuk <kanji>mengajar</kanji> <kanji>kursus</kanji> dengan <kanji>tulisan</kanji> adalah <vocabulary>buku teks</vocabulary>. Ini adalah buku tulisan yang Anda gunakan untuk mengajar mata kuliah Anda!', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Buku pelajaran')
    RETURNING id INTO v_7476_buku_pelajaran;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '顔面', 'wajah-seseorang', 16, 145, '<kanji>wajah</kanji> dari <kanji>wajah</kanji> adalah wajah, namun lebih khusus lagi adalah <vocabulary>wajah seseorang</vocabulary>. Mungkin karena wajah paling mirip yang pernah Anda miliki adalah wajah manusia... setidaknya di mata kita (yang saya maksud dengan "kita" adalah mata umat manusia, karena saya sepenuhnya setuju dengan kalian dalam hal itu).', 'Pembacaan 顔 bukan yang Anda pelajari dengan kanji. Tapi, kita akan mempelajari bacaan itu sekarang.

Hal terburuk yang dapat terjadi pada sebuah wajah adalah jika sebuah wajah menghilang. Jika <read>hilang</reading> total (がん). Pria yang berjalan ke arahmu tanpa wajah, adalah pria yang wajahnya hilang. Laki-laki itu adalah laki-laki yang merupakan bagian dari <read>orang yang telah tiada</reading> (がんめん). Wajah, hilang sama sekali!', 'Wajah Seseorang, Wajah Orang, Menghadapi')
    RETURNING id INTO v_7491_wajah_seseorang;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '急', 'tiba-tiba', 16, 146, 'Maknanya diambil dari bagian <kanji>mendadak</kanji> dalam kanji, artinya <vocabulary>mendadak</vocabulary>, <vocabulary>mendesak</vocabulary>, atau <vocabulary>darurat</vocabulary>!', 'Bacaannya sama dengan kanji yang Anda pelajari, artinya Anda tahu bacaannya!', 'Tiba-tiba, Mendesak, Keadaan darurat, Curam')
    RETURNING id INTO v_7545_tiba_tiba;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '動物園', 'kebun-binatang', 16, 147, 'Ingat bagaimana 動物 berarti binatang? Ketika Anda menambahkan <kanji>taman</kanji> maka itu menjadi <vocabulary>kebun binatang</vocabulary>. Itu adalah taman untuk binatang. Kecuali hewan-hewan itu tidak bisa pergi. Pernah.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Kebun binatang, Taman Zoologi, kebun binatang')
    RETURNING id INTO v_7586_kebun_binatang;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '記念日', 'peringatan-tahunan', 16, 148, 'Anda harus <kanji>menulis</kanji> semua <kanji>pikiran</kanji> Anda pada <kanji>hari</kanji> ini, karena ini bukan hari sembarang — ini adalah <vocabulary>ulang tahun</vocabulary>!

Ingin tahu apa perbedaan 記念日 dengan 周年? 周年 biasanya untuk hari jadi yang bernomor, seperti 十周年 (ulang tahun ke 10), sedangkan 記念日 mengacu pada tanggal tertentu di mana suatu peristiwa yang berkesan terjadi di masa lalu.', 'Pembacaannya merupakan kombinasi on''yomi untuk dua yang pertama dan kun''yomi untuk yang terakhir. Meski begitu, semua bacaan kanji adalah bacaan yang sudah Anda pelajari, jadi Anda harus bisa membaca kata ini juga. Hati-hati saja karena ひ adalah rendaku yang dimasukkan ke dalam び.', 'Peringatan tahunan, Hari Peringatan')
    RETURNING id INTO v_7587_peringatan_tahunan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '陽気', 'ceria', 16, 149, 'Jika Anda memiliki <kanji>sinar matahari</kanji> <kanji>semangat</kanji>, Anda mungkin adalah orang yang benar-benar <vocabulary>ceria</vocabulary> dan <vocabulary>riang</vocabulary>. 

陽気 bisa juga merujuk pada <vocabulary>cuaca hangat</vocabulary>. (Secara teknis ini mengacu pada cuaca atau iklim secara umum, namun saat ini orang mengasosiasikannya dengan cuaca hangat dan cerah karena kanjinya.)', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Ceria, Periang, Cuaca Hangat')
    RETURNING id INTO v_7636_ceria;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '場面', 'pemandangan', 16, 150, 'Segala sesuatu yang ada di <kanji>permukaan</kanji> <kanji>lokasi</kanji> sebenarnya hanyalah bagian dari <vocabulary>adegan</vocabulary> di hadapan Anda. Ini adalah jenis adegan yang akan diatur dalam sebuah novel. Itu adalah <vocabulary>pengaturan</vocabulary>.', 'Bacaannya merupakan gabungan bacaan kun''yomi dan on''yomi. Anda tidak mempelajari pembacaan kun''yomi untuk 場 dengan kanji, jadi inilah mnemonik untuk membantu Anda mengingatnya:

<vocabulary>Adegan</vocabulary> di mana semua orang mengatakan "<reading>baa</reading>" (ば) bukanlah hal yang umum… Kecuali jika Anda membaca novel yang semua karakternya adalah domba! Menurut Anda, <vocabulary>setting</vocabulary> yang berpusat pada hewan di novel ini cukup unik dan menarik, namun sejujurnya, semua baaing tersebut membuat dialognya agak sulit untuk diikuti.', 'Pemandangan, Pengaturan, Lokal')
    RETURNING id INTO v_7641_pemandangan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '辞典', 'kamus', 16, 151, 'Anda perlu mengetahui <kanji>kata</kanji> <kanji>aturan</kanji> dari bahasa yang Anda pelajari, bukan? Maka Anda memerlukan <vocabulary>kamus</vocabulary> yang bagus yang dapat menjelaskan <vocabulary>leksikon</vocabulary>-nya!', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Kamus, Kamus')
    RETURNING id INTO v_7642_kamus;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '幸運', 'semoga-beruntung', 16, 152, 'Saat Anda <kanji>membawa</kanji> <kanji>kebahagiaan</kanji> bersama Anda, Anda melihat sisi baik dari segalanya dan akhirnya mendapatkan <vocabulary>keberuntungan</vocabulary> yang sesungguhnya. Seseorang yang membawa kebahagiaan akan sangat beruntung dalam hidupnya.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Semoga beruntung, Harta benda')
    RETURNING id INTO v_7698_semoga_beruntung;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '折れる', 'untuk-istirahat', 16, 153, 'Anda sudah mempelajari bagaimana 折る berarti "melipat sesuatu" atau "mematahkan sesuatu". Ini adalah versi intransitif, yang berarti tidak memiliki objek. Anda baru saja melipat sesuatu terlalu jauh, dan sekarang <vocabulary>mulai rusak</vocabulary>.', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi. Anda mempelajari bacaan ini ketika mempelajari 折る, jadi Anda harus mengetahuinya juga!', 'Untuk Istirahat, Untuk Memotret, Untuk Patah')
    RETURNING id INTO v_7755_untuk_istirahat;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '門', 'gerbang', 16, 154, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.', 'Bacaannya sama dengan kanji yang Anda pelajari, artinya Anda tahu bacaannya!', 'Gerbang')
    RETURNING id INTO v_7756_gerbang;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '食料品', 'bahan-makanan', 16, 155, '<kanji>Produk</kanji> yang Anda bayar <kanji>biaya</kanji> untuk <kanji>makan</kanji> nanti adalah <vocabulary>bahan makanan</vocabulary> Anda. Beli sekarang, makan nanti, enak!', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Bahan makanan, Bahan makanan')
    RETURNING id INTO v_8671_bahan_makanan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '治安', 'ketertiban-umum', 16, 156, 'Jika Anda <kanji>memerintah</kanji> agar rakyat Anda bisa <kanji>santai</kanji>, maka akan ada <vocabulary>ketertiban umum</vocabulary> yang baik. Anda tidak ingin orang-orang yang Anda pimpin menjadi kesal atau stres, Anda menginginkan <vocabulary>keamanan publik</vocabulary> dan <vocabulary>kedamaian publik</vocabulary> untuk semua!

治安 mengacu pada keadaan keamanan suatu tempat secara keseluruhan, terutama dalam hal kejahatan dan stabilitas sosial. Anda akan mendengarnya dalam frasa seperti 治安がいい (daerah tersebut aman) atau 治安が悪い (daerah tersebut memiliki keamanan publik yang buruk), biasanya mengacu pada kota atau lingkungan tertentu.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. 治 memiliki beberapa bacaan on''yomi, jadi inilah mnemonik untuk membantu Anda mengingat 治安 menggunakan bacaan ち:

Untuk meningkatkan <vocabulary>ketertiban umum</vocabulary>, Anda memasang <reading>chee</reading>se (ち) di setiap sudut jalan. Aroma keju mengusir penjahat dan penjahat. Atau mungkin keju gratis membuat semua orang begitu bahagia sehingga mereka berhenti melakukan kejahatan? Apa pun yang terjadi, cara terbaik untuk memastikan <vocabulary>keamanan publik</vocabulary> adalah dengan keju.', 'Ketertiban Umum, Keamanan Publik, Perdamaian Publik')
    RETURNING id INTO v_8708_ketertiban_umum;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '支払い', 'pembayaran', 16, 157, '<kanji>pembayaran</kanji> yang <kanji>mendukung</kanji> Anda dilakukan dalam <vocabulary>pembayaran</vocabulary>. Apakah Anda melakukan pembayaran untuk mempertahankan rumah atau mobil Anda, atau Anda menerima pembayaran dari atasan Anda, hal itu membuat Anda terus maju.', 'Ini merupakan kombinasi bacaan on''yomi 支 dan bacaan kun''yomi 払. Anda telah mempelajari keduanya, jadi Anda juga mengetahuinya!', 'Pembayaran')
    RETURNING id INTO v_8728_pembayaran;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '荷札', 'menandai', 16, 158, '<kanji>bagasi</kanji> <kanji>tag</kanji> adalah <vocabulary>tag</vocabulary> yang Anda masukkan ke dalam bagasi. Ini juga merupakan <vocabulary>label</vocabulary> yang dapat Anda tempelkan pada paket sebelum mengirimkannya, seperti <vocabulary>label pengiriman</vocabulary>.', 'Kata ini menggunakan bacaan kun''yomi untuk kedua kanjinya. Anda sudah mempelajari kedua bacaan ini, jadi Anda harus bisa membaca kata ini juga.', 'Menandai, Label Pengiriman, Label')
    RETURNING id INTO v_8806_menandai;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '遠足', 'tamasya', 16, 159, '<kanji>Jauh</kanji> <kanji>kaki</kanji> adalah kaki yang telah melakukan <vocabulary>perjalanan</vocabulary> jauh. Kaki ini telah melakukan beberapa <vocabulary>trip</vocabulary>, kawan. Mereka telah melihat beberapa hal.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Tamasya, Tamasya, Perjalanan')
    RETURNING id INTO v_8818_tamasya;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '帰す', 'untuk-mengirim-seseorang-kembali', 16, 160, 'Hiragana diakhiri dengan bunyi う, sehingga Anda tahu bahwa ini adalah kata kerja. Kanji sendiri berarti <kanji>kembali</kanji>, dan kata kerja ini bersifat transitif, artinya mengambil objek langsung. Anda mengirim seseorang kembali. Anda mengirim mereka pulang. Dan beritahu mereka untuk tidak pernah mendekatimu lagi. Jadi ini berarti <vocabulary>mengirim seseorang kembali</vocabulary> atau <vocabulary>mengirim seseorang pulang</vocabulary>.

Faktanya, sebagian besar kata kerja yang diakhiri dengan す bersifat transitif. Untuk membantu Anda mengingatnya, pikirkan <reading>su</reading>ing (す) seseorang untuk memastikan mereka pulang!', 'Pembacaan kata ini sama dengan yang Anda pelajari dengan kanji. Hore! Namun karena kata ini memiliki kata kerja berpasangan, mari pikirkan cara untuk mengingat bagian akhirnya:

Apa cara paling jitu untuk memulangkan seseorang? Mengancam akan <reading>menuntut</reading> (す) jika tidak melakukannya!', 'Untuk Mengirim Seseorang Kembali, Untuk Mengirim Seseorang Pulang')
    RETURNING id INTO v_8947_untuk_mengirim_seseorang_kembali;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '内ポケット', 'saku-dalam', 16, 161, '<kanji>di dalam</kanji> ポケット adalah <vocabulary>kantong dalam</vocabulary> Anda.

内ポケット biasanya mengacu pada saku bagian dalam barang-barang seperti jaket atau jas, tempat Anda menyimpan barang-barang berharga, seperti dalam 内ポケットにスマホを入れる (meletakkan ponsel pintar di saku bagian dalam).', 'Kata ini menggunakan kun''yomi untuk kanjinya. Anda pernah melihat bacaan tersebut dengan kosakata 内, namun inilah mnemonik untuk berjaga-jaga jika Anda lupa:

Anda melihat <vocabulary>di dalam saku</vocabulary> Anda, dan… <reading>Ooh, chee</reading>se (うち)! Apakah ini benar-benar terjadi? Anda memeriksanya lagi hanya untuk memastikan itu bukan fatamorgana, dan… Ooh, keju! Yup, masih ada di saku dalammu. Kejutan yang menyenangkan.', 'Saku Dalam')
    RETURNING id INTO v_9150_saku_dalam;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '悪化', 'kemerosotan', 16, 162, '<kanji>buruk</kanji> <kanji>perubahan</kanji> persis seperti apa bunyinya: <vocabulary>kemunduran</vocabulary>, alias <vocabulary>semakin buruk</vocabulary> .', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Pembacaan kanji on''yomi adalah あく dan か, namun di sini menjadi あっか, agar kata tersebut lebih mudah diucapkan. Coba ucapkan dengan lantang untuk melihat apakah Anda setuju.', 'Kemerosotan, Menjadi Lebih Buruk')
    RETURNING id INTO v_9239_kemerosotan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '問い合わせる', 'untuk-bertanya', 16, 163, 'Ingat bagaimana 問う berarti "mempertanyakan sesuatu" dan 合わせる berarti "bergabung bersama"? Jika Anda menggabungkan pertanyaan-pertanyaan Anda, Anda mungkin mencoba <vocabulary>menanyakan</vocabulary> tentang sesuatu. Lagipula, bertanya jauh lebih melibatkan daripada bertanya biasa.

問い合わせる adalah frasa yang dapat Anda gunakan saat menghubungi kantor bisnis atau pemerintah untuk meminta informasi atau menyelesaikan suatu masalah. Ini agak formal, tetapi dalam gaya bicara bisnis sehari-hari, dan tidak memiliki nada filosofis atau berbobot seperti 問う.', 'Anda mungkin sudah tahu cara membaca 問う dan 合わせる. 問う masih cukup baru, jadi inilah mnemonik untuk membantu Anda mengingat bagian 問:

Anda suka <vocabulary>bertanya</vocabulary> dengan <reading>jari kaki</reading> Anda (と). Setiap kali Anda mengisi salah satu formulir online untuk menghubungi dukungan pelanggan dengan pertanyaan, Anda mengetik dengan jari kaki. Mereka tidak tahu bahwa Anda menanyakan pertanyaan ini dengan hati-hati - tetapi Anda mengetahuinya, dan itu membuat Anda tertawa.', 'Untuk Bertanya')
    RETURNING id INTO v_9262_untuk_bertanya;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '手軽', 'sederhana-dan-mudah', 16, 164, '<kanji>tangan</kanji> Anda <kanji>ringan</kanji> karena merupakan tugas <vocabulary>sederhana dan mudah</vocabulary>, sehingga tangan Anda tidak terlalu sibuk. Kata ini menggambarkan sesuatu yang tidak merepotkan dan tidak memerlukan banyak usaha, waktu, atau terkadang biaya untuk melakukannya.', 'Kedua kanji tersebut menggunakan bacaan kun''yomi pada kata ini, yang telah Anda pelajari. Pastikan Anda merendaku 軽.', 'Sederhana Dan Mudah, Nyaman, Cepat')
    RETURNING id INTO v_9270_sederhana_dan_mudah;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '生じる', 'terjadi', 16, 165, 'Ingat bagaimana 生まれる berarti "dilahirkan"? Kata ini serupa, tetapi digunakan ketika benda mati “dilahirkan”. Jadi sebagai kata kerja intransitif, ini berarti <vocabulary>terjadi</vocabulary> atau <vocabulary>timbul</vocabulary>. Jika digunakan secara transitif, artinya <vocabulary>menyebabkan sesuatu</vocabulary>. Anda mungkin akan lebih sering menemukan penggunaan intransitif.', 'Anda mungkin berpikir ini akan menggunakan kun''yomi, tapi sebenarnya tidak! Seperti kata kerja lain yang berakhiran じる, kata kerja ini memerlukan pembacaan kanji on''yomi. 生 memiliki dua diantaranya, jadi inilah mnemonik untuk membantu Anda mengingat mana yang akan digunakan: 

Jika Anda ingin <vocabulary>terjadi</vocabulary> di Jepang abad pertengahan, Anda perlu berbicara dengan <reading>Shou</reading>gun. Anda selalu membutuhkan bantuan Shougun <vocabulary>untuk menyebabkan sesuatu</vocabulary>. Tanpa Shougun, tidak akan terjadi apa-apa!', 'Terjadi, Untuk Bangkit, Untuk Menyebabkan Sesuatu')
    RETURNING id INTO v_9276_terjadi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '行列', 'garis', 16, 166, 'Anda tahu dua kata yang membentuk kata ini, 行 dan 列, dan keduanya memiliki arti yang mirip: garis dan baris. Gabungkan keduanya dan Anda akan mendapatkan <vocabulary>baris</vocabulary> atau <vocabulary>antrean</vocabulary>.

Biasanya yang dimaksud adalah antrean orang yang menunggu giliran, misalnya untuk memasuki restoran. Bisa juga digunakan untuk barisan yang berbaris, seperti barisan dalam parade. Dalam konteks matematika, ini bisa merujuk pada <vocabulary>matriks</vocabulary>, yang masuk akal karena merupakan garis-garis angka dan sebagainya.', 'Kata ini mengambil bacaan dari dua kata yang menyusunnya, jadi sebaiknya kamu antri untuk membacanya!', 'Garis, Antre, Matriks')
    RETURNING id INTO v_9281_garis;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '重ねる', 'untuk-menumpuk', 16, 167, 'Anda punya banyak <kanji>berat</kanji>, jadi satu-satunya hal yang logis adalah <vocabulary>menumpuk</vocabulary> semuanya. 

Selain hal-hal fisik yang berat, Anda juga dapat menggunakan kata ini ketika Anda akan <vocabulary>mengumpulkan</vocabulary> hal-hal seperti pengalaman, latihan, atau tahun-tahun yang telah Anda lalui.', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi. Anda tidak belajar membaca dengan kanji ini, jadi inilah mnemonik untuk membantu Anda:

Semua hal yang telah <vocabulary>tumpukan</vocabulary>adalah untuk persiapan <reading>casa</reading> (かさ) baru Anda. Dengan semua yang ada di dalam kotak dan tertumpuk rapi, Anda akhirnya siap untuk pindah ke rumah baru Anda. Hore!', 'Untuk Menumpuk, Untuk Menumpuk, Untuk Akumulasi')
    RETURNING id INTO v_9294_untuk_menumpuk;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '首相', 'perdana-menteri', 16, 168, '<kanji>leher</kanji> <kanji>menteri</kanji>? Arti <vocabulary>perdana menteri</vocabulary> ini masuk akal jika Anda menganggap leher sebagai bagian tubuh yang paling penting, seperti kepala!', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Ini juga menggunakan bacaan 相 yang belum Anda pelajari, jadi inilah mnemonik untuk membantu Anda:

<kosakata>perdana menteri</vocabulary> pertama di Jepang sebenarnya adalah <reading>sho</reading>guns (しょう)… semacam itu.', 'Perdana Menteri')
    RETURNING id INTO v_9302_perdana_menteri;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '新緑', 'tanaman-hijau-baru', 16, 169, 'Apa yang <kanji>baru</kanji> dan <kanji>hijau</kanji>? Itu akan menjadi <vocabulary>tanaman hijau baru</vocabulary> yang Anda lihat di pepohonan dan tanaman lain setiap tahun!

新緑 mengacu pada <kosa kata>dedaunan baru</vocabulary> — daun hijau segar di akhir musim semi dan awal musim panas, tepat setelah mereka muncul sepenuhnya. Di Jepang, ini dipandang sebagai simbol waktu dalam setahun, sehingga sering kali memiliki nuansa yang sedikit puitis.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Anda pernah melihatnya sebelumnya (ingat bacaan りょく dari 緑茶?), jadi sebaiknya Anda pergi ke sini.', 'Tanaman Hijau Baru, Dedaunan Baru, Daun Hijau Baru')
    RETURNING id INTO v_9368_tanaman_hijau_baru;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '列車', 'kereta', 16, 170, 'Anda melihat <kanji>barisan</kanji> <kanji>mobil</kanji> yang berjejer rapi. Apakah mereka terjebak kemacetan? Tidak. Itu gerbong kereta. Selamat, Anda telah menemukan <vocabulary>kereta</vocabulary>!

Anda telah mengetahui bahwa 電車 berarti "kereta api", namun secara teknis hanya merujuk pada kereta listrik. Di sisi lain, 列車 adalah istilah yang lebih luas dan diterima di semua kereta. solar? Uap? Ingin ekspres jarak jauh? Semua tertutup. Namun 列車 terdengar lebih formal, jadi meskipun 電車 adalah kata sehari-hari, Anda mungkin lebih sering menemukan 列車 dalam tulisan atau deskripsi resmi yang digunakan oleh perusahaan kereta api.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya. Pastikan untuk mencatat pembacaan れつ, ​​yang kemudian diubah menjadi れっ.', 'Kereta')
    RETURNING id INTO v_9465_kereta;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '付き合う', 'untuk-tetap-berteman', 16, 171, 'Kata ini merupakan gabungan dari 付く (diikat) dan 合う (sesuai). Anda dan orang lain sepertinya hampir terikat karena Anda sangat cocok satu sama lain, dan mungkin itu sebabnya Anda memilih <vocabulary>untuk berteman</vocabulary> satu sama lain.

付き合う adalah kata serbaguna untuk menghabiskan waktu atau pergi bersama seseorang. Biasanya bersifat romantis, seperti 彼と付き合っている (Saya berkencan dengannya), tetapi bisa juga bersifat netral, seperti 仕事仲間と付き合う (bergaul dengan teman kerja).

Dari sini, hal ini juga dapat meluas ke situasi negatif, seperti わがままに付き合う (menahan keegoisan seseorang) atau 病気と付き合う (hidup dengan penyakit). Anda "menemani" hal ini dari waktu ke waktu - bahkan ketika hal itu tidak nyaman atau sulit.', 'Pembacaannya berasal dari 付く dan 合う, jadi jika Anda mengingatnya, Anda akan baik-baik saja di sini.', 'Untuk Tetap Berteman, Hingga saat ini, Untuk Menemani')
    RETURNING id INTO v_9478_untuk_tetap_berteman;

  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2828_rawat_jalan, 'Rawat jalan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2828_rawat_jalan, 'Luar negeri', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2828_rawat_jalan, 'Impor', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2896_tidak_dikenal, 'Tidak dikenal', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2896_tidak_dikenal, 'Tidak jelas', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2896_tidak_dikenal, 'Tidak pasti', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2896_tidak_dikenal, 'Tidak yakin', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3294_samudra_pasifik, 'Samudra Pasifik', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3453_untuk_mengevaluasi_kembali, 'Untuk Mengevaluasi Kembali', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3453_untuk_mengevaluasi_kembali, 'Untuk Melihat Lagi', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3453_untuk_mengevaluasi_kembali, 'Untuk Menilai Kembali', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3584_ruang_tunggu, 'Ruang tunggu', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3587_menjadi_tergerak_secara_emosional, 'Menjadi Tergerak Secara Emosional', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3587_menjadi_tergerak_secara_emosional, 'Menjadi Bergerak', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3691_meliput_suatu_acara, 'Meliput Suatu Acara', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3691_meliput_suatu_acara, 'Pengumpulan Data', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3691_meliput_suatu_acara, 'Wawancara', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3702_penampilan, 'Penampilan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3702_penampilan, 'Membentuk', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3702_penampilan, 'Lihat', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3720_berjanji, 'Berjanji', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3799_masker, 'Masker', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3801_konservatif, 'Konservatif', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3802_kelestarian, 'Kelestarian', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3802_kelestarian, 'Konservasi', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3802_kelestarian, 'Penghematan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3804_asuransi, 'Asuransi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3805_menjamin, 'Menjamin', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3805_menjamin, 'Jaminan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3805_menjamin, 'Jaminan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3808_patung_buddha, 'Patung Buddha', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3808_patung_buddha, 'Gambar Buddha', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3809_klasik, 'Klasik', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3810_kitab_suci_budha, 'Kitab Suci Budha', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3810_kitab_suci_budha, 'Tulisan Buddha', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3811_kamus_karakter, 'Kamus Karakter', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3811_kamus_karakter, 'Kamus Kanji', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3812_ensiklopedi, 'Ensiklopedi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3812_ensiklopedi, 'Kamus', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3813_petualangan, 'Petualangan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3814_candaan, 'Candaan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3815_berisiko, 'Berisiko', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3815_berisiko, 'Tidak aman', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3815_berisiko, 'Berbahaya', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3815_berisiko, 'Bahaya', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3815_berisiko, 'Bahaya', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3815_berisiko, 'Bahaya', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3816_berbahaya, 'Berbahaya', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3816_berbahaya, 'Berisiko', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3818_mentah, 'Mentah', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3818_mentah, 'Vulgar', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3818_mentah, 'Kekasaran', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3819_sebuah_karya, 'Sebuah Karya', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3819_sebuah_karya, 'Bekerja', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3819_sebuah_karya, 'Produksi', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3820_artikel, 'Artikel', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3820_artikel, 'Barang', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3821_baru, 'Baru', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3821_baru, 'Barang Baru', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3821_baru, 'Produk Baru', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3822_barang_dagangan, 'Barang dagangan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3822_barang_dagangan, 'Produk', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3822_barang_dagangan, 'Barang-barang', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3824_taman_umum, 'Taman Umum', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3824_taman_umum, 'Taman', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3826_untuk_mengetahui, 'Untuk Mengetahui', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3826_untuk_mengetahui, 'Untuk Diwaspadai', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3826_untuk_mengetahui, 'Percaya', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3827_adanya, 'Adanya', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3827_adanya, 'Kehidupan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3827_adanya, 'Kelangsungan hidup', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3828_untuk_melindungi, 'Untuk Melindungi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3828_untuk_melindungi, 'Untuk Membela', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3828_untuk_melindungi, 'Untuk Mematuhi', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3829_ketiadaan, 'Ketiadaan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3829_ketiadaan, 'Jauh dari Rumah', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3830_kebenaran, 'Kebenaran', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3830_kebenaran, 'Realitas', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3831_khusus, 'Khusus', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3831_khusus, 'Khusus', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3831_khusus, 'Bidang Studi', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3831_khusus, 'Besar', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3832_ketidakbahagiaan, 'Ketidakbahagiaan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3832_ketidakbahagiaan, 'Kemalangan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3832_ketidakbahagiaan, 'Penderitaan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3832_ketidakbahagiaan, 'Kematian', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3833_kebahagiaan, 'Kebahagiaan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3834_pemerintah, 'Pemerintah', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3835_bento, 'Bento', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3835_bento, 'Kotak Makan Siang', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3836_dialek_tokyo, 'Dialek Tokyo', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3837_dialek, 'Dialek', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3838_untuk_bergegas, 'Untuk bergegas', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3839_tiba_tiba, 'Tiba-tiba', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3839_tiba_tiba, 'Langsung', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3839_tiba_tiba, 'Tiba-tiba', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3840_kematian_mendadak, 'Kematian Mendadak', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3841_cepat, 'Cepat', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3842_politik, 'Politik', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3842_politik, 'Pemerintah', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3843_untuk_menulis, 'Untuk Menulis', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3846_pemulihan_lengkap, 'Pemulihan Lengkap', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3846_pemulihan_lengkap, 'Sembuh Sepenuhnya', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3846_pemulihan_lengkap, 'Sembuh Sepenuhnya', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3847_ketidakhancuran, 'Ketidakhancuran', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3847_ketidakhancuran, 'Tak tersembuhkan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3848_era_meiji, 'Era Meiji', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3848_era_meiji, 'Kaisar Meiji', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3848_era_meiji, 'Meiji', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3849_untuk_mandi, 'Untuk Mandi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3849_untuk_mandi, 'Untuk Dikenakan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3850_berjemur, 'Berjemur', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3851_kereta_ekspres_terbatas, 'Kereta Ekspres Terbatas', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3851_kereta_ekspres_terbatas, 'Ekspres Terbatas', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3852_belajar_di_luar_negeri, 'Belajar di Luar Negeri', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3852_belajar_di_luar_negeri, 'Belajar di Luar Negeri', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3853_foto, 'Foto', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3853_foto, 'Foto', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3853_foto, 'Gambar', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3854_hitam_pekat, 'Hitam pekat', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3854_hitam_pekat, 'Hitam Murni', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3855_kebahagiaan, 'Kebahagiaan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3856_tertawa, 'Tertawa', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3857_senyum, 'Senyum', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3857_senyum, 'Wajah Tersenyum', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3858_tong_sampah, 'Tong sampah', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3858_tong_sampah, 'Tempat Sampah', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3858_tong_sampah, 'Tempat sampah', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3858_tong_sampah, 'Tempat Sampah', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3858_tong_sampah, 'Tempat Sampah', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3858_tong_sampah, 'Tempat Sampah', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3858_tong_sampah, 'Tong sampah', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3858_tong_sampah, 'Tempat sampah', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3859_kotak, 'Kotak', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3860_bagasi, 'Bagasi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3860_bagasi, 'Bagasi', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3860_bagasi, 'Memuat', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3861_bukti, 'Bukti', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3861_bukti, 'Bukti', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3862_saksi, 'Saksi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3863_kesaksian, 'Kesaksian', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3863_kesaksian, 'Bukti Verbal', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3865_kamus, 'Kamus', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3866_untuk_berhenti, 'Untuk Berhenti', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3866_untuk_berhenti, 'Untuk Mengundurkan Diri Sebagai', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3867_sanjungan, 'Sanjungan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3867_sanjungan, 'Pujian', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3868_jauh, 'Jauh', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3868_jauh, 'Jauh sekali', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3869_penerimaan, 'Penerimaan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3869_penerimaan, 'Pintu masuk', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3869_penerimaan, 'Perkenalan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3869_penerimaan, 'Magang', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3870_untuk_berhubungan_dengan, 'Untuk Berhubungan Dengan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3870_untuk_berhubungan_dengan, 'Untuk Menjadi Peduli', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3870_untuk_berhubungan_dengan, 'Untuk Berhubungan Dengan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3871_koneksi, 'Koneksi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3871_koneksi, 'Hubungan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3872_hanshin, 'Hanshin', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3873_depan, 'Depan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3873_depan, 'Sisi Depan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3873_depan, 'Depan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3873_depan, 'Garis terdepan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3874_tanah, 'Tanah', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3874_tanah, 'Permukaan Bumi', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3875_penampilan_luar, 'Penampilan Luar', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3875_penampilan_luar, 'Pulasan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3875_penampilan_luar, 'Permukaan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3876_layar, 'Layar', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3876_layar, 'Memantau', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3877_permukaan, 'Permukaan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3877_permukaan, 'Menghadapi', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3878_menarik, 'Menarik', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3878_menarik, 'Menyenangkan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3878_menarik, 'Lucu', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3879_perpustakaan, 'Perpustakaan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3907_seorang_juru_masak, 'Seorang juru masak', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3907_seorang_juru_masak, 'Memasak', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3907_seorang_juru_masak, 'Koki', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3908_artis, 'Artis', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3910_otomatis, 'Otomatis', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3911_mendasar, 'Mendasar', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3911_mendasar, 'Dasar', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3911_mendasar, 'Standar', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3912_melipat, 'Melipat', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3912_melipat, 'Lipatan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3914_upacara_wisuda, 'Upacara Wisuda', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3914_upacara_wisuda, 'Kelulusan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3915_tidak_lengkap, 'Tidak lengkap', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3915_tidak_lengkap, 'Tidak sempurna', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3916_museum, 'Museum', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3916_museum, 'Museum Seni', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3916_museum, 'Galeri seni', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3917_origami, 'Origami', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3917_origami, 'Seni Melipat Kertas', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3920_berharap, 'Berharap', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3920_berharap, 'Untuk Meminta', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3920_berharap, 'Untuk Berharap', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3920_berharap, 'Untuk Mencari', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3921_teknik, 'Teknik', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3921_teknik, 'Keahlian', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3921_teknik, 'Teknologi', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3921_teknik, 'Keahlian', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3922_untuk_berkompromi, 'Untuk Berkompromi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3929_untuk_lulus, 'Untuk Lulus', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3930_untuk_meninggalkan, 'Untuk Meninggalkan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3930_untuk_meninggalkan, 'Untuk Meninggalkan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3931_untuk_membuat_sesuatu_menjadi_sulit, 'Untuk Membuat Sesuatu Menjadi Sulit', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3931_untuk_membuat_sesuatu_menjadi_sulit, 'Untuk Mengeras Sesuatu', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3931_untuk_membuat_sesuatu_menjadi_sulit, 'Untuk Memperkuat Sesuatu', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3947_bukti, 'Bukti', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3947_bukti, 'Membuktikan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3947_bukti, 'Memeriksa', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3948_hari_dalam_seminggu, 'Hari Dalam Seminggu', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3952_osaka, 'Osaka', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3952_osaka, 'Oosaka', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4362_jumat, 'Jumat', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4374_kekhawatiran, 'Kekhawatiran', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4374_kekhawatiran, 'Minat', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4475_rencana, 'Rencana', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4475_rencana, 'Perencanaan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4475_rencana, 'Proyek', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5389_di_dalam, 'Di dalam', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5389_di_dalam, 'Di dalam', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5618_untuk_menutup_sesuatu, 'Untuk Menutup Sesuatu', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5618_untuk_menutup_sesuatu, 'Untuk Menutup Sesuatu', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6884_langit_langit, 'Langit-langit', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7469_mobil, 'Mobil', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7469_mobil, 'Mobil', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7476_buku_pelajaran, 'Buku pelajaran', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7491_wajah_seseorang, 'Wajah Seseorang', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7491_wajah_seseorang, 'Wajah Orang', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7491_wajah_seseorang, 'Menghadapi', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7545_tiba_tiba, 'Tiba-tiba', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7545_tiba_tiba, 'Mendesak', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7545_tiba_tiba, 'Keadaan darurat', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7545_tiba_tiba, 'Curam', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7586_kebun_binatang, 'Kebun binatang', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7586_kebun_binatang, 'Taman Zoologi', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7586_kebun_binatang, 'kebun binatang', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7587_peringatan_tahunan, 'Peringatan tahunan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7587_peringatan_tahunan, 'Hari Peringatan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7636_ceria, 'Ceria', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7636_ceria, 'Periang', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7636_ceria, 'Cuaca Hangat', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7641_pemandangan, 'Pemandangan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7641_pemandangan, 'Pengaturan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7641_pemandangan, 'Lokal', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7642_kamus, 'Kamus', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7642_kamus, 'Kamus', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7698_semoga_beruntung, 'Semoga beruntung', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7698_semoga_beruntung, 'Harta benda', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7755_untuk_istirahat, 'Untuk Istirahat', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7755_untuk_istirahat, 'Untuk Memotret', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7755_untuk_istirahat, 'Untuk Patah', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7756_gerbang, 'Gerbang', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8671_bahan_makanan, 'Bahan makanan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8671_bahan_makanan, 'Bahan makanan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8708_ketertiban_umum, 'Ketertiban Umum', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8708_ketertiban_umum, 'Keamanan Publik', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8708_ketertiban_umum, 'Perdamaian Publik', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8728_pembayaran, 'Pembayaran', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8806_menandai, 'Menandai', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8806_menandai, 'Label Pengiriman', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8806_menandai, 'Label', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8818_tamasya, 'Tamasya', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8818_tamasya, 'Tamasya', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8818_tamasya, 'Perjalanan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8947_untuk_mengirim_seseorang_kembali, 'Untuk Mengirim Seseorang Kembali', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8947_untuk_mengirim_seseorang_kembali, 'Untuk Mengirim Seseorang Pulang', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9150_saku_dalam, 'Saku Dalam', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9239_kemerosotan, 'Kemerosotan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9239_kemerosotan, 'Menjadi Lebih Buruk', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9262_untuk_bertanya, 'Untuk Bertanya', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9270_sederhana_dan_mudah, 'Sederhana Dan Mudah', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9270_sederhana_dan_mudah, 'Nyaman', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9270_sederhana_dan_mudah, 'Cepat', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9276_terjadi, 'Terjadi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9276_terjadi, 'Untuk Bangkit', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9276_terjadi, 'Untuk Menyebabkan Sesuatu', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9281_garis, 'Garis', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9281_garis, 'Antre', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9281_garis, 'Matriks', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9294_untuk_menumpuk, 'Untuk Menumpuk', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9294_untuk_menumpuk, 'Untuk Menumpuk', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9294_untuk_menumpuk, 'Untuk Akumulasi', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9302_perdana_menteri, 'Perdana Menteri', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9368_tanaman_hijau_baru, 'Tanaman Hijau Baru', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9368_tanaman_hijau_baru, 'Dedaunan Baru', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9368_tanaman_hijau_baru, 'Daun Hijau Baru', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9465_kereta, 'Kereta', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9478_untuk_tetap_berteman, 'Untuk Tetap Berteman', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9478_untuk_tetap_berteman, 'Hingga saat ini', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9478_untuk_tetap_berteman, 'Untuk Menemani', false, true);

  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2828_rawat_jalan, 'がいらい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2896_tidak_dikenal, 'ふめい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3294_samudra_pasifik, 'たいへいよう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3453_untuk_mengevaluasi_kembali, 'みなおす', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3584_ruang_tunggu, 'まちあいしつ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3587_menjadi_tergerak_secara_emosional, 'かんどうする', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3691_meliput_suatu_acara, 'しゅざい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3702_penampilan, 'かっこう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3720_berjanji, 'やくそくする', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3799_masker, 'かめん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3801_konservatif, 'ほしゅてき', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3802_kelestarian, 'ほぞん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3804_asuransi, 'ほけん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3805_menjamin, 'ほしょう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3808_patung_buddha, 'ぶつぞう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3809_klasik, 'こてんてき', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3810_kitab_suci_budha, 'ぶってん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3811_kamus_karakter, 'じてん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3812_ensiklopedi, 'じてん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3813_petualangan, 'ぼうけん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3814_candaan, 'じょうだん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3815_berisiko, 'きけん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3816_berbahaya, 'あぶない', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3818_mentah, 'げひん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3819_sebuah_karya, 'さくひん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3820_artikel, 'しな', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3821_baru, 'しんぴん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3822_barang_dagangan, 'しょうひん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3824_taman_umum, 'こうえん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3826_untuk_mengetahui, 'ぞんじる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3827_adanya, 'せいぞん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3828_untuk_melindungi, 'まもる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3829_ketiadaan, 'るす', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3830_kebenaran, 'しんじつ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3831_khusus, 'せんもん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3832_ketidakbahagiaan, 'ふこう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3833_kebahagiaan, 'しあわせ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3834_pemerintah, 'せいふ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3835_bento, 'べんとう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3836_dialek_tokyo, 'とうきょうべん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3837_dialek, 'べん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3838_untuk_bergegas, 'いそぐ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3839_tiba_tiba, 'きゅうに', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3840_kematian_mendadak, 'きゅうし', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3841_cepat, 'きゅうこう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3842_politik, 'せいじ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3843_untuk_menulis, 'かく', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3846_pemulihan_lengkap, 'ぜんち', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3847_ketidakhancuran, 'ふじ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3848_era_meiji, 'めいじ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3849_untuk_mandi, 'あびる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3850_berjemur, 'にっこうよく', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3851_kereta_ekspres_terbatas, 'とっきゅう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3852_belajar_di_luar_negeri, 'りゅうがく', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3853_foto, 'しゃしん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3854_hitam_pekat, 'まっくろ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3855_kebahagiaan, 'こうふく', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3856_tertawa, 'わらう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3857_senyum, 'えがお', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3858_tong_sampah, 'ごみばこ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3858_tong_sampah, 'ゴミばこ', NULL, false, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3859_kotak, 'はこ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3860_bagasi, 'にもつ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3861_bukti, 'あかし', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3862_saksi, 'しょうにん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3863_kesaksian, 'しょうげん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3865_kamus, 'じしょ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3866_untuk_berhenti, 'やめる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3867_sanjungan, 'おせじ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3868_jauh, 'とおい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3869_penerimaan, 'にゅうもん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3870_untuk_berhubungan_dengan, 'かんする', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3871_koneksi, 'かんけい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3872_hanshin, 'はんしん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3873_depan, 'ぜんめん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3874_tanah, 'じめん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3875_penampilan_luar, 'がいめん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3875_penampilan_luar, 'そとづら', NULL, false, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3876_layar, 'がめん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3877_permukaan, 'めん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3878_menarik, 'おもしろい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3879_perpustakaan, 'としょかん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3907_seorang_juru_masak, 'りょうりにん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3908_artis, 'げいじゅつか', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3910_otomatis, 'じどうてき', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3911_mendasar, 'きほんてき', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3912_melipat, 'おりめ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3914_upacara_wisuda, 'そつぎょうしき', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3915_tidak_lengkap, 'ふかんぜん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3916_museum, 'びじゅつかん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3917_origami, 'おりがみ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3920_berharap, 'きぼうする', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3921_teknik, 'ぎじゅつ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3922_untuk_berkompromi, 'だきょうする', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3929_untuk_lulus, 'そつぎょうする', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3930_untuk_meninggalkan, 'のこす', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3931_untuk_membuat_sesuatu_menjadi_sulit, 'かためる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3947_bukti, 'しょうめい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3948_hari_dalam_seminggu, 'ようび', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3952_osaka, 'おおさか', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4362_jumat, 'きんようび', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4374_kekhawatiran, 'かんしん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4475_rencana, 'きかく', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5389_di_dalam, 'うち', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5618_untuk_menutup_sesuatu, 'しめる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6884_langit_langit, 'てんじょう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_7469_mobil, 'じどうしゃ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_7476_buku_pelajaran, 'きょうかしょ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_7491_wajah_seseorang, 'がんめん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_7545_tiba_tiba, 'きゅう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_7586_kebun_binatang, 'どうぶつえん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_7587_peringatan_tahunan, 'きねんび', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_7636_ceria, 'ようき', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_7641_pemandangan, 'ばめん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_7642_kamus, 'じてん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_7698_semoga_beruntung, 'こううん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_7755_untuk_istirahat, 'おれる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_7756_gerbang, 'もん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_8671_bahan_makanan, 'しょくりょうひん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_8708_ketertiban_umum, 'ちあん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_8728_pembayaran, 'しはらい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_8806_menandai, 'にふだ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_8818_tamasya, 'えんそく', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_8947_untuk_mengirim_seseorang_kembali, 'かえす', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_9150_saku_dalam, 'うちぽけっと', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_9150_saku_dalam, 'うちポケット', NULL, false, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_9239_kemerosotan, 'あっか', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_9262_untuk_bertanya, 'といあわせる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_9270_sederhana_dan_mudah, 'てがる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_9276_terjadi, 'しょうじる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_9281_garis, 'ぎょうれつ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_9294_untuk_menumpuk, 'かさねる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_9302_perdana_menteri, 'しゅしょう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_9368_tanaman_hijau_baru, 'しんりょく', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_9465_kereta, 'れっしゃ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_9478_untuk_tetap_berteman, 'つきあう', NULL, true, true);

  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2828_rawat_jalan, 'こちらは、外来クリニックの先生です。', 'Ini adalah dokter klinik rawat jalan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2828_rawat_jalan, 'マングースって特定外来生物でしょ？', 'Luwak termasuk spesies invasif, bukan?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2828_rawat_jalan, 'コンペイトウは外来語ですよ。ポルトガル語の「confeito」から来てるんです。', '"Konpeitō" adalah kata pinjaman, lho. Itu berasal dari kata Portugis "confeito."');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2896_tidak_dikenal, 'このホテルは、オーナーが不明です。', 'Pemilik hotel ini tidak diketahui.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2896_tidak_dikenal, '生まれた日は不明です。', 'Hari lahirnya tidak diketahui.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2896_tidak_dikenal, '私の兄は今どこにいるか不明なんです。', 'Tidak pasti dimana kakakku sekarang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3294_samudra_pasifik, 'ここから太平洋まで車で行けますか？', 'Bisakah saya mencapai Samudra Pasifik dari sini?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3294_samudra_pasifik, '太平洋の魚はやっぱり味が良いんだよな。', 'Lagipula, ikan dari Samudera Pasifik rasanya enak.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3294_samudra_pasifik, '太平洋の海はキラキラしてて綺麗ですね。', 'Samudera Pasifik berkilau dan indah.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3453_untuk_mengevaluasi_kembali, '一年に一回、プランを見直すことが大切です。', 'Penting untuk meninjau rencana tersebut setahun sekali.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3453_untuk_mengevaluasi_kembali, '今回は自分の弱点を見直すチャンスになりました。', 'Kali ini adalah kesempatan untuk menilai kembali kelemahan saya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3453_untuk_mengevaluasi_kembali, '大学では文学を学び、平安時代の作家を見直したいと思っています。', 'Di universitas, saya ingin belajar sastra dan mengevaluasi kembali para penulis dari zaman Heian.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3584_ruang_tunggu, '今、歯医者の待合室にいます。', 'Aku berada di ruang tunggu dokter gigi sekarang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3584_ruang_tunggu, '病院の待合室にはたくさんの人がいました。', 'Ada banyak orang di ruang tunggu rumah sakit.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3584_ruang_tunggu, '待合室がないので、夜行バスを外で待つのが寒すぎた。待合室作ってくれ！', 'Terlalu dingin menunggu di luar bus malam karena tidak ada ruang tunggu. Tolong bangun ruang tunggu!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3587_menjadi_tergerak_secara_emosional, 'あー、感動したい。感動する映画のおすすめがあったら教えてください。', 'Oh, aku ingin dipindahkan. Tolong beri tahu saya jika Anda memiliki rekomendasi untuk film bergerak.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3587_menjadi_tergerak_secara_emosional, 'このミュージカル、めっちゃ感動しました！', 'Musikal ini sangat mengharukan!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3587_menjadi_tergerak_secara_emosional, 'ワニカニのシステムに感動したって言ってくれるユーザーさんの声を聞いて、私たちも感動しました。', 'Kami juga terharu ketika mendengar pengguna mengatakan bahwa mereka terkesan dengan sistem WaniKani.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3691_meliput_suatu_acara, '取材にご協力いただけませんか。', 'Saya ingin tahu apakah Anda mengizinkan kami melakukan wawancara?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3691_meliput_suatu_acara, '明日は、スポーツイベントの取材に行きます。', 'Saya akan pergi untuk meliput acara olahraga besok.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3691_meliput_suatu_acara, '今は有名アーティストのコンサートの取材をしています。', 'Saya sedang meliput konser artis terkenal sekarang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3691_meliput_suatu_acara, 'マスコミの取材が一斉に始まりました。', 'Liputan media dimulai secara bersamaan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3702_penampilan, 'ステキな格好だね。', 'Itu pakaian yang bagus.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3702_penampilan, '格好いい車ですね。', 'Itu mobil yang keren.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3702_penampilan, 'いや、その格好はダサいよ。', 'Nah, pakaian itu jelek.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3702_penampilan, '格好悪いことしちゃったな。', 'Yah, aku benar-benar mempermalukan diriku sendiri.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3720_berjanji, '「約束する？」「うん、約束するよ。」', '"Janji?" "Ya. Saya berjanji."');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3720_berjanji, 'ゼッタイに誰にも言わないって、約束してくれる？', 'Bisakah kamu berjanji tidak akan memberitahukan hal ini pada orang lain?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3720_berjanji, '大好きな人とデートの約束したんだけど、インフルになって行けそうもなくて泣いてる。', 'Aku membuat rencana kencan dengan seseorang yang sangat kusukai, tapi aku terserang flu dan sekarang aku menangis karena sepertinya aku tidak bisa pergi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3799_masker, 'わぁ、びっくりした！何で仮面なんてかぶってるの？', 'Ah, kamu mengagetkanku! Kenapa kamu memakai topeng itu?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3799_masker, '彼女は笑顔の仮面の下で、本当は泣いているのかもしれないよ。', 'Di balik topeng senyumannya, dia mungkin sebenarnya sedang menangis.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3799_masker, 'ハロウィンの日の夜、仮面ライダーのコスプレをしながら、チョコレートを一箱平らげたビエトを見ました。', 'Pada malam Halloween, saya melihat Viet mengenakan kostum Masked Rider dan memakan sekotak coklat.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3801_konservatif, '私の通っていた高校は、とても保守的な学校でした。', 'Sekolah menengah tempat saya bersekolah sangat konservatif.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3801_konservatif, 'あのアーティストには、保守的な考え方のファンが多い。', 'Artis itu memiliki banyak penggemar dengan pandangan konservatif.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3801_konservatif, '年を重ねるにつれて保守的になる人が多いけど、私はそうはなりたくありません。', 'Orang-orang cenderung menjadi lebih konservatif seiring bertambahnya usia, namun saya tidak ingin menjadi seperti itu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3802_kelestarian, 'バナナの保存方法を教えてください。', 'Tolong beritahu saya cara menyimpan pisang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3802_kelestarian, 'データは定期的にバックアップして保存しておくべきです。', 'Data harus dicadangkan dan disimpan secara teratur.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3802_kelestarian, 'レシートっていつまで保存しておけばいいんですか？', 'Berapa lama saya harus menyimpan kuitansi tersebut?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3804_asuransi, '生命保険、入ってる？', 'Apakah Anda memiliki asuransi jiwa?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3804_asuransi, '旅行保険、どこのやつにした？', 'Asuransi perjalanan mana yang Anda pilih?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3804_asuransi, 'しまった。また家に保険証を忘れてきちゃった。', 'Oh tidak, kartu asuransi kesehatan saya tertinggal lagi di rumah.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3805_menjamin, '保証書を失くさないようにしてください。', 'Harap simpan sertifikat garansi dengan aman.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3805_menjamin, 'この商品には一年間の保証が付いています。', 'Produk ini dilengkapi dengan garansi satu tahun.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3805_menjamin, '私はワニカニのライフタイムメンバーですが、トーフグが五年後もあるなんて保証はないから本当にライフタイムでワニカニが使えるなんて思っていませんよ。', 'Saya adalah anggota WaniKani seumur hidup, tapi saya rasa saya tidak bisa menggunakannya seumur hidup, karena tidak ada jaminan bahwa Tofugu akan tetap ada dalam lima tahun.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3808_patung_buddha, '日本で仏像を三体買いました。', 'Saya membeli tiga patung Buddha di Jepang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3808_patung_buddha, 'あそこの公園で、五十体もの仏像が出土されたそうです。', 'Sebanyak lima puluh patung Budha telah digali di taman sana.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3808_patung_buddha, '誰かがうちのオフィスに毎月仏像を一体ずつ送ってくるんです。心当たりのある方は、どうか名乗り出て下さい。', 'Seseorang mengirimkan patung Buddha ke kantor kami setiap bulan. Jika Anda adalah orang tersebut, silakan maju ke depan dan identifikasikan diri Anda.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3809_klasik, 'ずいぶん古典的なギャグだね。', 'Itu lelucon yang klasik, bukan?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3809_klasik, 'こんな古典的なサギに引っかかってしまって、本当に情けないです。', 'Sangat memalukan bahwa saya tertipu oleh penipuan klasik seperti itu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3809_klasik, 'デートアプリで出会った彼は、古典的名作に対する考え方が古典的すぎて、私とは意見が合わなかったので別れました。', 'Saya putus dengan pria yang saya temui di aplikasi kencan karena pandangannya tentang karya klasik terlalu kuno dan tidak sejalan dengan pandangan saya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3810_kitab_suci_budha, 'この言葉は、仏典の中に登場します。', 'Kata ini muncul dalam kitab suci Buddha.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3810_kitab_suci_budha, '彼らはサンスクリット語仏典、パーリ語仏典、漢語仏典を全て丸暗記しています。', 'Mereka telah hafal seluruh kitab suci Buddha Sansekerta, kitab suci Buddha Pali, dan kitab suci Buddha Tiongkok.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3810_kitab_suci_budha, '私はあなたの笑顔が大好きです。あなたの笑顔には、仏典数冊分以上のパワーが感じられます。', 'Aku suka senyummu. Rasanya seperti memiliki kekuatan lebih dari beberapa jilid kitab suci Buddha.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3811_kamus_karakter, 'え、明日のテスト、字典使ってOKなの？', 'Oh, apakah kamus boleh digunakan untuk ujian besok?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3811_kamus_karakter, '私は古代文字字典を読むのが大好きです。', 'Saya suka membaca kamus karakter kuno.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3811_kamus_karakter, 'この国字字典はあそこの古本屋で買ったんです。', 'Kamus kanji asal Jepang ini saya beli di toko buku bekas di sana.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3812_ensiklopedi, 'それ、何の事典？', 'Ensiklopedia macam apa itu?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3812_ensiklopedi, 'この事典には、写真やイラストがたくさん使われています。', 'Ensiklopedia ini banyak menggunakan foto dan ilustrasi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3812_ensiklopedi, '毎年、サンタさんからクリスマスに百科事典をプレゼントしてもらっていました。', 'Setiap tahun, saya menerima ensiklopedia dari Santa Claus sebagai hadiah Natal.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3813_petualangan, '明日からの冒険のために、力を残しておいた方がいいよ。', 'Kita harus menyimpan energi untuk petualangan kita besok.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3813_petualangan, 'へー、冒険者の酒場っぽいイメージのイラストだね。', 'Wah, ilustrasi ini memberi kesan seperti kedai petualang ya?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3813_petualangan, 'コウイチはワニカニでの仕事を残したまま、ピカチュウと新たな冒険に出かけた。', 'Koichi meninggalkan pekerjaannya di WaniKani dan memulai petualangan baru bersama Pikachu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3814_candaan, '冗談でもそんなこと言わないで。', 'Tolong jangan mengatakan hal seperti itu meskipun hanya sebagai lelucon.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3814_candaan, '彼女は冗談が上手で、いつも楽しませてくれます。', 'Dia pandai menceritakan lelucon dan selalu menghibur kita.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3814_candaan, 'トーフグはポッドキャストで冗談ばかり言っている。', 'Tofugu suka bercanda di podcast mereka.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3815_berisiko, 'これは世界一危険な仕事です。', 'Ini adalah pekerjaan paling berbahaya di dunia.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3815_berisiko, '駅ではよく、「危険ですから黄色い線の内がわまでお下がりください」というアナウンスが流れています。', 'Di stasiun-stasiun, sering kali ada pengumuman yang berbunyi, "Ini tidak aman, jadi harap tetap berada di belakang garis kuning."');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3815_berisiko, 'コタツに入ると、気持ち良すぎて出られなくなるので危険です。', 'Masuk ke kotatsu berbahaya karena rasanya terlalu enak dan Anda tidak bisa keluar lagi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3816_berbahaya, '危ない！気をつけて。', 'Hati-hati! Hati-Hati!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3816_berbahaya, 'スピードを出しすぎると危ないですよ。', 'Mengemudi terlalu cepat itu berbahaya lho.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3816_berbahaya, '夜道を一人で歩くのは危ないです。', 'Berjalan sendirian di jalanan pada malam hari berbahaya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3818_mentah, 'このアニメは少し下品です。', 'Anime ini agak kasar.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3818_mentah, '下品な声がすると思ったら、お前かよ！', 'Kupikir aku mendengar suara vulgar, dan ternyata itu kamu!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3818_mentah, 'あの芸人のネタは下品だから好きじゃないんだよね。', 'Saya tidak suka rutinitas komedian itu karena vulgar.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3819_sebuah_karya, 'その映画なら、すごくいい作品だったよ。', 'Film itu adalah karya yang sangat hebat.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3819_sebuah_karya, 'その作家のマンガは全部読んだよ。彼の作品、すごく好きなんだ。', 'Saya sudah membaca semua manga penulis itu. Saya sangat menyukai karya-karyanya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3819_sebuah_karya, 'そのアーティストの箱庭の作品、マッチ箱で作られてるんだって！', 'Kudengar miniatur taman karya seniman itu terbuat dari kotak korek api!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3820_artikel, 'こちらは、アパタイザー、メインディッシュ、デザートの三品のコース料理となっています。', 'Di sini, kami memiliki satu set hidangan yang terdiri dari tiga hidangan: hidangan pembuka, hidangan utama, dan hidangan penutup.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3820_artikel, 'こちらのお品は、まとめ買いしておくと便利ですよ。', 'Barang ini nyaman untuk dibeli dalam jumlah besar.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3820_artikel, '感謝の気持ちに、お礼の品を送りました。', 'Saya mengirimkan tanda terima kasih sebagai tanda terima kasih.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3821_baru, 'このジーパンは新品です。', 'Celana jeans ini masih baru.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3821_baru, '線路に新品のそろばんを落としてしまいました。', 'Saya menjatuhkan sempoa baru saya ke rel kereta.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3821_baru, '「新しいパソコンを買ったんだって？」「うーん。新品ではないんだけどね。ビエトのお下がりだよ。」', '"Aku dengar kamu membeli komputer baru." “Yah, ini bukan barang baru. Ini adalah warisan dari Viet.”');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3822_barang_dagangan, 'ワニカニは、トーフグのヒット商品です。', 'WaniKani adalah produk andalan Tofugu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3822_barang_dagangan, '私、新商品のチョコには目がないんです。', 'Saya tidak bisa menolak produk coklat baru.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3822_barang_dagangan, 'あの会社の商品にはいつも保証がついてるから、私はそこで買うことが多いかな。', 'Barang dagangan mereka selalu bergaransi, jadi saya cenderung membeli barang dari mereka.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3824_taman_umum, 'この通りを真っ直ぐ行くと、公園があります。', 'Jika Anda lurus ke jalan ini, ada sebuah taman.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3824_taman_umum, 'あそこの公園にはトイレがあります。', 'Ada toilet di taman sebelah sana.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3824_taman_umum, '今の日本には、走ったりボールを使ったりしてはいけない公園があるんだって。', 'Saya dengar saat ini ada taman di Jepang yang melarang orang berlari atau menggunakan bola.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3826_untuk_mengetahui, 'ご心配のことと存じます。', 'Saya memahami bahwa Anda sangat prihatin dengan hal ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3826_untuk_mengetahui, 'あのお店ってなくなったんですか！？全く存じませんでした。', 'Toko itu hilang? Saya tidak tahu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3826_untuk_mengetahui, '年末でお忙しいとは存じますが、この記事を読んでいただければ幸いに存じます。', 'Saya tahu akhir tahun memang sibuk, tapi saya akan sangat menghargai jika Anda bisa membaca artikel ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3827_adanya, '生存者は一人だけでした。', 'Hanya ada satu yang selamat.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3827_adanya, '体力はかなり落ちてるけど、かろうじて生存はしてます。', 'Kekuatan fisikku telah menurun secara signifikan, tapi aku masih belum bisa bertahan hidup.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3827_adanya, 'エアコン、水、電気、ガスは生存に関わるから、インフレさせちゃいけないと思う。', 'Saya pikir kita tidak boleh membiarkan inflasi mempengaruhi hal-hal penting seperti AC, air, listrik, dan gas, karena hal-hal tersebut sangat penting untuk kelangsungan hidup.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3828_untuk_melindungi, '弟のことは俺がゼッタイ守るんで。', 'Aku pasti akan melindungi adikku, apa pun yang terjadi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3828_untuk_melindungi, 'コウイチの犬は、コウイチを危険から守りました。', 'Anjing Koichi melindunginya dari bahaya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3828_untuk_melindungi, '約束を守るのは社会人として当たり前のことです。', 'Masyarakat pekerja diharapkan menepati janjinya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3829_ketiadaan, 'コウイチの家に行ってみたけど、留守でした。', 'Saya mengunjungi rumah Koichi, tapi dia tidak ada di sana.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3829_ketiadaan, '留守中に、友人が訪ねてきたようです。', 'Sepertinya seorang teman berkunjung saat saya keluar.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3829_ketiadaan, '母は買い物に出かけているので、私と妹が留守番をしています。', 'Ibuku sedang berbelanja, jadi aku dan adikku sedang menjaga rumah.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3830_kebenaran, '真実はいつも一つしかありません。', 'Selalu hanya ada satu kebenaran.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3830_kebenaran, '私が皆さんに真実を伝えます。', 'Saya akan mengatakan yang sejujurnya kepada Anda.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3830_kebenaran, '真実を茶化して、あたかもその真実こそがデマであるかのように思わせるマスコミには、もうウンザリです。', 'Saya bosan dengan media yang mengejek kebenaran dan menjadikannya seolah-olah kebenaran adalah berita palsu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3831_khusus, 'それは私の専門外です。', 'Itu di luar bidang studi saya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3831_khusus, '私の姉は、ペット専門の目医者です。', 'Kakak perempuan saya adalah seorang dokter spesialis mata hewan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3831_khusus, '私の専門は天文学です。新しい星を発見したいです。', 'Spesialisasi saya adalah astronomi. Saya ingin menemukan bintang baru.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3832_ketidakbahagiaan, '身内に不幸があったので、今日はお休みします。', 'Saya akan mengambil cuti hari ini karena tragedi keluarga.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3832_ketidakbahagiaan, 'まるで不幸のどん底のようにいるような顔をしてるけど、どうしたの？', 'Anda tampak seperti sedang berada dalam kemalangan. Apa yang telah terjadi?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3832_ketidakbahagiaan, 'ワニカニ教に入ると幸せになれますが、辞めると不幸になるんで気をつけてくださいね。', 'Memasuki agama WaniKani mungkin membawa kebahagiaan, namun hati-hati, karena meninggalkannya bisa membawa ketidakbahagiaan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3833_kebahagiaan, '末長くお幸せにね。', 'Saya berharap Anda bahagia selama bertahun-tahun yang akan datang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3833_kebahagiaan, 'あなたに会えて、私、幸せだったよ。今までありがとう。', 'Bertemu denganmu membuatku bahagia. Terima kasih untuk semuanya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3833_kebahagiaan, '「私はお金で幸せは買えると思います。私は花火を見ていると幸せな気持ちになるからです。もし私が大金持ちだったら、毎日花火を楽しんでずっと幸せな気持ちでいられることができます。」彼女は幸せそうな口調でそう言った。', '“Menurutku uang bisa membeli kebahagiaan karena menonton kembang api membuatku bahagia. Kalau aku punya banyak uang, aku bisa menikmati kembang api setiap hari dan merasa bahagia sepanjang waktu,” ujarnya bahagia.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3834_pemerintah, 'その時、政府は市民を助けてくれないんだってことだけ学びました。', 'Pada saat itu, yang saya ketahui hanyalah bahwa pemerintah tidak akan membantu warganya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3834_pemerintah, 'あのジャーナリストは、いつもアメリカ政府についての記事を書いている。', 'Jurnalis itu selalu menulis artikel tentang pemerintah Amerika.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3834_pemerintah, '私の国では、子育てに対する政府からのサポートがたくさんあります。', 'Di negara saya, ada banyak dukungan pemerintah untuk pengasuhan anak.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3835_bento, '学生の時は、母が毎日手作りのお弁当を作ってくれました。', 'Ketika saya masih pelajar, ibu saya membuatkan saya kotak bento buatan sendiri setiap hari.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3835_bento, 'お弁当のおかずを少し残しておいて、子猫にあげました。', 'Saya meninggalkan beberapa sisi di kotak makan siang saya dan memberikannya kepada anak kucing.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3835_bento, '明日あなたにお弁当作ってあげようと思うんだけど、何か苦手なものとかあるの？', 'Kurasa aku akan membuatkan kotak bento untukmu besok. Apakah ada sesuatu yang Anda tidak ingin miliki?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3836_dialek_tokyo, '東京弁は共通語とほとんど同じですよ。', 'Dialek Tokyo hampir sama dengan bahasa Jepang standar.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3836_dialek_tokyo, '私は東京生まれ東京育ちですが、親が京都出身なので東京弁より京都弁の方が強いです。', 'Saya lahir dan besar di Tokyo, tapi orang tua saya berasal dari Kyoto, jadi dialek Kyoto saya lebih kuat dari dialek Tokyo saya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3836_dialek_tokyo, '「ねえ、タダで東京弁のレッスンを受けたいんだけど。」「コウイチに聞けよ。アイツは何でもするぞ。」', '"Saya perlu mendapatkan pelajaran dialek Tokyo gratis." "Tanyakan pada Koichi. Dia akan melakukan apa saja."');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3837_dialek, 'それって何弁？', 'Dialek apa itu?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3837_dialek, '私は京都弁が好きです。', 'Saya suka dialek Kyoto.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3837_dialek, '私は日本語の共通語も関西弁も話せるからバイリンガルなんですよ。', 'Saya bilingual karena saya bisa berbicara bahasa Jepang standar dan juga dialek Kansai.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3838_untuk_bergegas, 'ごめん、ちょっと急ぐから先に行くね！', 'Maaf, saya sedang terburu-buru, saya pergi dulu!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3838_untuk_bergegas, 'もっと急いでよ！急げばまだ間に合うはずだよ。', 'Ayo cepat! Jika kita bergegas, kita masih bisa melakukannya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3838_untuk_bergegas, 'ビエトが運ばれたと聞いて、コウイチは病院へ急ぎました。', 'Koichi bergegas ke rumah sakit ketika dia mendengar bahwa Viet telah dibawa masuk.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3839_tiba_tiba, '急に空からマッチ箱が一箱ふってきたんです。', 'Sebuah kotak korek api tiba-tiba jatuh dari langit.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3839_tiba_tiba, 'えっ、急にそんなことを言われても...。', 'Apa? Bahkan jika kamu tiba-tiba mengatakan hal seperti itu…');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3839_tiba_tiba, 'ファミリー・ガイは、急にバカげた回想シーンを使うことで良く知られている。', 'Family Guy terkenal dengan kilas baliknya yang acak dan bodoh.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3840_kematian_mendadak, '父が急死した時、私は高校生でした。', 'Saya masih seorang siswa sekolah menengah ketika ayah saya tiba-tiba meninggal.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3840_kematian_mendadak, 'マルちゃんのところのおじいさん、モチがノドにつまって急死だったんだって。', 'Rupanya, lelaki tua di tempat Maru-chan itu meninggal mendadak karena kue ketan tersangkut di tenggorokannya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3840_kematian_mendadak, '彼とはよくケンカになっちゃって、それが本当にイヤだったんだけど、今ではケンカもできなくなっちゃってすっごく悲しいよ。まさか急死しちゃうなんて思ってもみなかったからさ。', 'Aku sering berdebat dengan pacarku dan aku membencinya, tapi aku malah merindukan pertengkaran itu sekarang. Saya tidak pernah menyangka dia akan mati.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3841_cepat, '京都行き急行は三番乗り場から出るみたいだよ。', 'Sepertinya kereta ekspres menuju Kyoto berangkat dari peron tiga.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3841_cepat, 'あそこの角で、どこかに急行するパトカーを見ました。', 'Saya melihat sebuah mobil patroli melaju di suatu tempat di tikungan itu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3841_cepat, '今日乗った急行列車の車内放送の人の声、めっちゃイケボだった！', 'Orang yang membuat pengumuman di kereta ekspres yang saya tumpangi hari ini mempunyai suara yang sangat menarik!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3842_politik, '日本は政治に関心がない人が多すぎます。', 'Terlalu banyak orang di Jepang yang tidak tertarik dengan politik.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3842_politik, 'サーモンの政治に対する考えはとても保守的です。', 'Sikap Salmon terhadap pemerintah sangat konservatif.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3842_politik, '政治って何のためのものか分かりますか？国民の生活を守るためと、ゼッタイに戦争をしないためですよ。', 'Tahukah Anda apa gunanya politik? Ini untuk melindungi kehidupan warga dan mencegah perang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3843_untuk_menulis, 'ブログに書くこと考えなきゃ！', 'Saya perlu memikirkan apa yang akan saya tulis di blog!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3843_untuk_menulis, 'せっかく書いたメモがどこかに行ってしまった。', 'Catatan yang saya tulis hilang entah kemana.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3843_untuk_menulis, 'コウイチは、お世辞にも字を書くのが上手だとは言えません。', 'Tulisan tangan Koichi jauh dari kata bagus.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3846_pemulihan_lengkap, '全治六ヶ月みたい。', 'Sepertinya butuh waktu sekitar enam bulan untuk pulih sepenuhnya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3846_pemulihan_lengkap, 'トラックにはねられて全治一年の大ケガをしました。', 'Saya tertabrak truk dan mengalami cedera parah yang membutuhkan waktu satu tahun untuk pulih sepenuhnya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3846_pemulihan_lengkap, 'うちの子、体育で骨にヒビが入って全治二ヶ月だったんですが、最初は校長先生から「これぐらいでこんなに泣くなんて…」みたいに言われてたんですよ。ありえなくないですか？', 'Anak saya mengalami patah tulang karena stres saat mengikuti kelas olahraga, dan dokter mengatakan perlu waktu dua bulan untuk sembuh. Namun pada awalnya, kepala sekolah mengatakan sesuatu seperti, "Menangis karena hal seperti ini..." Bukankah itu buruk?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3847_ketidakhancuran, 'その病気は今はまだ不治の病とされています。', 'Penyakit tersebut saat ini masih dianggap tidak dapat disembuhkan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3847_ketidakhancuran, 'アイツは不治のSNS中毒だから、もうダメだよ。', 'Dia kecanduan media sosial yang tidak dapat disembuhkan, jadi tidak ada harapan lagi baginya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3847_ketidakhancuran, '私は不治の苦しみと戦うよりも、安楽死する方を選ぶかもしれません。', 'Daripada berjuang melawan penderitaan yang tidak dapat disembuhkan, saya mungkin memilih eutanasia.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3848_era_meiji, '私のおばあちゃんは明治生まれです。', 'Nenek saya lahir di era Meiji.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3848_era_meiji, '明治文学についての作文を書いています。', 'Saya sedang menulis esai tentang sastra Meiji.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3848_era_meiji, '明治時代は一万円が大金だったんですよ。', 'Pada zaman Meiji, sepuluh ribu yen adalah jumlah uang yang besar.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3849_untuk_mandi, 'ウチの犬はシャワーを浴びるのが好きです。', 'Anjing saya suka mandi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3849_untuk_mandi, 'これは朝日を浴びるアサガオの写真です。', 'Ini adalah gambaran kejayaan pagi di bawah sinar matahari pagi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3849_untuk_mandi, 'クリスマスは家にこもって日本のアニメを浴びるほど見るつもりです。', 'Untuk Natal, saya berencana untuk tinggal di rumah dan menonton anime Jepang sebanyak yang saya bisa.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3850_berjemur, 'トトロの大きなおなかの上に乗って日光浴がしたいです。', 'Saya ingin berjemur di perut buncit Totoro.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3850_berjemur, '私は平日は日光浴だけで入浴はしないポリシーなんです。', 'Kebijakan saya bukan mandi, tapi berjemur di hari kerja.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3850_berjemur, 'トーフグのワンコは、ベランダで日光浴をするのが大好きです。', 'Anjing Tofugu suka berjemur di balkon.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3851_kereta_ekspres_terbatas, 'ノリで特急に乗ることに決めました。', 'Kami memutuskan, secara mendadak, untuk naik kereta ekspres terbatas.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3851_kereta_ekspres_terbatas, '特急料金はいくらですか？', 'Berapa tarif ekspres terbatas?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3851_kereta_ekspres_terbatas, 'チケットを先に買っておいたので、今出れば三時五十分の特急に間に合うよ。', 'Saya sudah punya tiket untuk Anda, jadi jika Anda berangkat sekarang Anda masih bisa naik kereta ekspres pukul 3:50.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3852_belajar_di_luar_negeri, '私は2013年に北京大学に留学しました。', 'Saya belajar di Universitas Beijing pada tahun 2013.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3852_belajar_di_luar_negeri, '留学先で、日本語を自然にしゃべる練習をたくさんしました。', 'Ketika saya belajar di luar negeri, saya banyak berlatih berbicara bahasa Jepang secara alami.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3852_belajar_di_luar_negeri, '「兄は親の言いつけを守らず、留学してしまいました。」「留学先はどこなんですか？」「アメリカです。」', '“Kakak laki-lakiku tidak menuruti perintah orang tua kami dan pergi belajar ke luar negeri.” “Di mana dia belajar di luar negeri?” "Itu di AS."');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3853_foto, 'ここの写真をSNSに上げてもいいですか？', 'Bolehkah saya memposting foto tempat ini di media sosial?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3853_foto, 'この写真、見て！お父さん、昔のまんま。変わったことと言えば、ちょっと太ったことくらいじゃない？', 'Lihat foto ini. Ayah tidak berubah sama sekali sejak saat itu. Yah, berat badannya bertambah, tapi tidak ada yang berubah, bukan?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3853_foto, 'コウイチの高校時代の写真が流出してしまいました。', 'Foto Koichi saat SMA bocor.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3854_hitam_pekat, 'コウイチは真っ黒なニンニクが好きなんです。', 'Koichi menyukai bawang putih hitam murni.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3854_hitam_pekat, 'ビエトはハワイのビーチで真っ黒に日やけして帰ってきました。', 'Viet kembali dari pantai di Hawaii dengan kulit sawo matang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3854_hitam_pekat, 'このカラコン、黒目が真っ黒でもめっちゃ発色するよ！', 'Kontak berwarna ini terlihat sangat baik, bahkan pada pupil yang gelap gulita!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3855_kebahagiaan, 'ヤグルマギクの花言葉は「幸福」です。', 'Arti bunga jagung (yagurumagiku) adalah ''kebahagiaan''.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3855_kebahagiaan, '私の場合は、「やりたいことができる」より「やりたくないことをやらなくていい」仕事の方が幸福度が高い気がします。', 'Dalam kasus saya, saya merasa lebih bahagia dengan pekerjaan di mana saya tidak harus melakukan hal-hal yang tidak ingin saya lakukan, daripada bisa melakukan apa yang saya inginkan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3855_kebahagiaan, '同じ人生を歩んでいても、幸福と感じる人もいれば、不幸と感じる人もいる。幸福か不幸かは、「あなたがその人生をどう切り取って見るか」、それだけなんですよ。', 'Sekalipun orang menjalani jalan hidup yang sama, beberapa orang mungkin merasakan kebahagiaan sementara yang lain mungkin merasakan ketidakbahagiaan. Apakah itu kebahagiaan atau ketidakbahagiaan hanya bergantung pada "bagaimana Anda memandang kehidupan itu", itu saja yang ada di sana.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3856_tertawa, '人のことを笑うと自分にも返ってくる、おばあちゃんが言ってたよ。', 'Nenekku berkata, ''Jika kamu menertawakan orang lain, hal itu akan kembali padamu.''');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3856_tertawa, 'これは面白い。大声で笑いました。', 'Ini lucu. Saya tertawa terbahak-bahak.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3856_tertawa, '「昨夜、フグとデートをしたの。」「どうだった？」「楽しかった。めちゃくちゃ笑ったわ。」', '"Aku berkencan dengan Fugu tadi malam." "Bagaimana hasilnya?" "Menyenangkan. Saya banyak tertawa."');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3857_senyum, '君の笑顔がマジで大好きなんだよ！', 'Aku sangat menyukai senyummu!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3857_senyum, '王子の笑顔に、王様も女王様もメロメロでした。', 'Senyuman sang pangeran membuat raja dan ratu luluh.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3857_senyum, '皆様が、今日も笑顔でステキな一日になりますように…', 'Saya berharap Anda semua mendapatkan hari yang indah dengan senyuman di wajah Anda...');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3858_tong_sampah, 'ゴミ箱はどこですか？', 'Dimana tempat sampahnya?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3858_tong_sampah, 'この部屋にはゴミ箱が必要です。', 'Kami membutuhkan tempat sampah di ruangan ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3858_tong_sampah, 'ペットボトルのリサイクルボックスはゴミ箱の横にあります。', 'Tempat sampah daur ulang botol plastik terletak di sebelah tempat sampah.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3859_kotak, 'この箱、重いから気をつけてね。', 'Hati-hati dengan kotak ini; itu berat.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3859_kotak, 'このダンボール箱には、いらなくなった服が入っています。', 'Kotak kardus ini berisi pakaian yang tidak diinginkan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3859_kotak, '夫がトマトを箱で買ってきて、食べきれなくてこまっています。', 'Suami saya membeli sekotak tomat, dan kami kesulitan menghabiskannya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3860_bagasi, '荷物を持ち運ぶには、バックパックが便利です。', 'Ransel nyaman untuk membawa barang bawaan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3860_bagasi, '彼女は急いで大きなスーツケースに荷物を入れました。', 'Dia buru-buru mengemas barang-barangnya ke dalam koper besar.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3860_bagasi, '荷物、そっちに送ったよ！三日ぐらいで着くみたい。', 'Saya sudah mengirimkan paketnya ke sana! Itu akan tiba dalam waktu sekitar tiga hari.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3861_bukti, '友情の証として、このふじ山のキーホルダーをあげます。', 'Sebagai bukti persahabatan kita, aku akan memberimu gantungan kunci Gunung Fuji ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3861_bukti, 'それって、彼が君のことを大切にしている証なんじゃないかな。', 'Itu bukti dia peduli padamu, bukan?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3861_bukti, '見よ。このクリスタルこそが、王の証なのだ！', 'Melihat! Kristal ini adalah bukti kewibawaan raja!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3862_saksi, '証人はいません。', 'Tidak ada saksi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3862_saksi, '私も証人の一人です。', 'Saya juga salah satu saksinya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3862_saksi, '彼はエホバの証人です。', 'Dia adalah seorang Saksi Yehova.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3863_kesaksian, '全トーフグ社員が、コウイチがビエトのミートボールを食べるのを見たと証言しました。', 'Semua pekerja Tofugu bersaksi bahwa mereka melihat Koichi memakan bakso Viet.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3863_kesaksian, 'マイケルだけは、コウイチに不利な証言はしたくないと言って、証言しませんでした。', 'Hanya Michael yang menolak karena tidak mau bersaksi melawan Koichi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3863_kesaksian, 'フグが先生のリンゴにフグ毒を付けたと疑われた時、クラスメート全員が彼はやってないと証言しました。', 'Ketika Fugu diduga memasukkan racun ikan buntal ke dalam apel gurunya, semua teman sekelasnya bersaksi bahwa dia tidak melakukannya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3865_kamus, 'この辞書アプリ、おすすめだよ。', 'Aplikasi kamus ini direkomendasikan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3865_kamus, 'これは、世界で一番売れている辞書です。', 'Ini adalah kamus terlaris di dunia.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3865_kamus, '私は紙の辞書を引くのが好きなので、すぐにボロボロになります。', 'Karena saya suka menggunakan kamus kertas, kamus tersebut cenderung cepat rusak.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3866_untuk_berhenti, 'え、会社辞めるの？', 'Oh, kamu akan keluar dari perusahaan?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3866_untuk_berhenti, '実は昨日、バイト辞めたんだ。', 'Saya sebenarnya berhenti dari pekerjaan paruh waktu saya kemarin.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3866_untuk_berhenti, '日曜の夜は「仕事辞めたい」しか考えられない。', 'Pada Minggu malam, yang terpikir oleh saya hanyalah "Saya ingin berhenti dari pekerjaan saya".');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3867_sanjungan, 'コウイチは心にもないお世辞を言うのが下手です。', 'Koichi tidak pandai memberikan pujian yang tidak tulus.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3867_sanjungan, 'お世辞で日本語が上手だと言われるのは好きではありません。', 'Saya tidak suka diberitahu bahwa bahasa Jepang saya bagus hanya untuk menyanjung saya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3867_sanjungan, 'うーん、これはお世辞にも上手とは言えないね。', 'Hmm, tidak ada cara untuk menutup-nutupinya: ini tidak dilakukan dengan baik.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3868_jauh, 'コウイチのアパートはトーフグオフィスから三時間ほど行った、遠い林の中にあります。', 'Apartemen Koichi terletak sekitar tiga jam dari kantor Tofugu, di hutan yang jauh.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3868_jauh, 'あのマンション、とてもよかったんですけど、駅から遠すぎて買うのをあきらめました。', 'Kondominium itu sangat bagus tetapi kami menyerah untuk membelinya, karena letaknya terlalu jauh dari stasiun.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3868_jauh, '東京は、ポートランドからどれくらい遠いんですか？歩くにはちょっと遠すぎますか？', 'Seberapa jauh Tokyo dari Portland? Apakah terlalu jauh bagiku untuk berjalan?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3869_penerimaan, 'まずは入門コースから始めましょう。', 'Mari kita mulai dengan kursus pengantar terlebih dahulu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3869_penerimaan, '彼は有名なヨガの先生のところに入門したそうですよ。', 'Saya mendengar dia memulai pelatihannya di bawah bimbingan instruktur yoga terkenal.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3869_penerimaan, 'この本はプログラミングの入門書です。', 'Buku ini merupakan teks pengantar tentang pemrograman.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3870_untuk_berhubungan_dengan, 'この問題に関するあなたの意見を教えてください。', 'Apa pendapat Anda tentang masalah ini?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3870_untuk_berhubungan_dengan, 'サヤカは、日本文学に関する研究を行っています。	', 'Sayaka sedang melakukan penelitian tentang sastra Jepang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3870_untuk_berhubungan_dengan, '日本語の文法に関して、聞きたいことがあるんです。', 'Saya punya pertanyaan tentang tata bahasa Jepang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3871_koneksi, '二人はどういう関係なの？', 'Hubungan seperti apa yang kalian berdua miliki?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3871_koneksi, 'それは今は関係ないでしょ？', 'Itu tidak relevan sekarang, bukan?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3871_koneksi, 'ビエトはヤクザとズブズブの関係らしいよ。', 'Sepertinya Viet memiliki hubungan yang mendalam dengan yakuza.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3872_hanshin, '阪神電車で行く予定です。', 'Kami berencana untuk pergi melalui kereta Hanshin.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3872_hanshin, '私は阪神タイガースのファンです。', 'Saya penggemar Harimau Hanshin.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3872_hanshin, '今度、阪神地区に家を買おうと思ってるんですが、相場はいくらぐらいなんですか。', 'Saya sedang berpikir untuk membeli rumah di distrik Hanshin. Kira-kira berapa harga pasarnya?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3873_depan, 'このTシャツは前面のデザインがすごく良い。', 'Desain bagian depan T-shirt ini sangat bagus.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3873_depan, 'カナダのレストランで食べたウドンのスープは、玉ねぎの味が前面に出ている感じで少しびっくりした。', 'Sup udon yang saya makan di sebuah restoran di Kanada ternyata memiliki rasa bawang yang kuat di awal.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3873_depan, 'この時、ビエトは「タコスの日」を休みにしようという運動の前面に立つようになった。', 'Saat ini, Viet menjadi garda terdepan dalam gerakan menjadikan Hari Taco sebagai hari libur.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3874_tanah, '地面にはたくさんの葉っぱが落ちていました。', 'Ada banyak dedaunan di tanah.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3874_tanah, '雨で地面がビシャビシャになる前にワンコをちょっと歩かせてくるよ。', 'Saya akan mengajak anjing jalan-jalan sebentar sebelum tanah basah kuyup karena hujan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3874_tanah, '海の中じゃなくて地面の中に住めたらいいのに、とフグは言いました。', 'Fugu mengatakan bahwa dia lebih suka tinggal di bawah tanah daripada di bawah air.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3875_penampilan_luar, '彼女の外面にだまされない方がいいですよ。', 'Anda tidak boleh tertipu dengan penampilan luarnya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3875_penampilan_luar, '彼は外面が良く、人前ではいつも笑顔を見せています。', 'Ia mempunyai penampilan luar yang baik dan selalu tersenyum di depan umum.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3875_penampilan_luar, 'このメガネは、レンズの外面のカーブをフラットにしているので、周辺部のボヤケやユガミが少ないんです。', 'Kacamata ini memiliki kelengkungan datar pada permukaan luar lensanya, sehingga distorsi dan silau di area tepinya berkurang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3876_layar, 'ずっとコンピューターの画面ばかり見ていると目が悪くなるよ。', 'Jika Anda menatap layar komputer dalam waktu lama, penglihatan Anda akan semakin buruk.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3876_layar, '画面の明るさをもう少し下げてもらってもいいですか？', 'Bolehkah saya meminta Anda menurunkan kecerahan layar sedikit?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3876_layar, '最近、よく犬の画像が自動で画面に出てくるんです。', 'Akhir-akhir ini gambar anjing sering muncul di layar saya secara otomatis.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3877_permukaan, 'あなたに、面と向かってお話したいことがあります。ご予定は、いつが空いていますか？', 'Ada yang ingin kubicarakan denganmu secara tatap muka. Kapan Anda tersedia?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3878_menarik, 'それは今まで聞いた中で、一番面白い話でした。', 'Itu adalah hal terlucu yang pernah saya dengar.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3878_menarik, 'このマンガは、ちょっと下品だけどとても面白いんです。', 'Manga ini agak kasar tapi sangat menarik.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3878_menarik, 'あいつは面白いやつだけど、ちょっとしたことですぐ切れるのがネックだよな。', 'Dia adalah pria yang lucu, satu-satunya kelemahannya adalah dia mudah marah karena hal-hal terkecil.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3879_perpustakaan, '図書館で新しい本を見つけました。', 'Saya menemukan buku baru di perpustakaan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3879_perpustakaan, '図書館の利用にお金はかかりませんよ。', 'Penggunaan perpustakaan tidak dipungut biaya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3879_perpustakaan, '私は図書館で勉強するのが好きなんです。', 'Saya suka belajar di perpustakaan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3907_seorang_juru_masak, '彼は世界的に有名な料理人です。', 'Dia adalah koki terkenal di dunia.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3907_seorang_juru_masak, '僕の彼女は料理人としてレストランで働いています。', 'Pacar saya bekerja sebagai juru masak di sebuah restoran.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3907_seorang_juru_masak, '料理人は料理のプレゼンテーションにも気を配らなくてはなりません。', 'Koki juga perlu memperhatikan penyajian masakannya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3908_artis, '彼は有名な芸術家ではありません。', 'Dia bukan artis terkenal.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3908_artis, '彼女は、多くの賞を受賞している、世界的に名の知れた芸術家です。', 'Dia adalah artis terkenal secara global yang telah menerima banyak penghargaan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3908_artis, 'その芸術家は、弟子に留守番をたのんで、ヨーロッパに留学しました。', 'Seniman tersebut meminta muridnya untuk menjaga rumahnya selama dia pergi dan berangkat ke Eropa untuk belajar.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3910_otomatis, 'この電車のドアは、自動的には開きません。', 'Pintu kereta ini tidak terbuka secara otomatis.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3910_otomatis, 'あの国が戦争を始めると、俺たちの国も自動的に戦うことになるんだよ。', 'Jika negara itu memulai perang, otomatis negara kita akan ikut terlibat dalam konflik tersebut.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3910_otomatis, 'こちらに自動的にバックアップされたデータは、今度は一定期間後に自動的に消去されるシステムになっています。', 'Data yang dibackup otomatis di sini dikelola oleh sistem yang juga akan otomatis menghapusnya setelah jangka waktu tertentu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3910_otomatis, 'これは、30分以上何もしなかった場合の自動的なログアウトによるものですね。', 'Hal ini disebabkan logout otomatis setelah lebih dari 30 menit tidak aktif.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3911_mendasar, '私は基本的にはスピリチュアルな事は信じません。', 'Saya biasanya tidak percaya pada hal-hal spiritual.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3911_mendasar, '上司に、基本的な事も知らない役立たずだと言われました。', 'Saya diberitahu oleh atasan saya bahwa saya bahkan tidak mengetahui dasar-dasarnya dan saya tidak berguna.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3911_mendasar, '基本的に政治に関心がないんです。', 'Pada dasarnya, saya tidak tertarik pada politik.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3912_melipat, '彼はゼッタイに折り目をつけずに本を読みます。', 'Dia membaca buku tanpa pernah melipat halamannya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3912_melipat, '折り紙を半分に折って、折り目をつけてからまた開いてください。', 'Silakan buka kembali origami setelah Anda melipatnya menjadi dua untuk menambah lipatan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3912_melipat, 'ズボンには折り目を付けてもらえますか？', 'Bisakah Anda membuat lipatan di celana saya?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3914_upacara_wisuda, '明日は私の卒業式です。', 'Besok adalah upacara kelulusanku.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3914_upacara_wisuda, 'あ、これ、卒業式の後の写真だね。なつかしい！', 'Ah, ini foto setelah acara wisuda ya? Sungguh nostalgia!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3914_upacara_wisuda, 'はあ？卒業式にビヨンセが来て歌を歌ってくれた？まさか！冗談でしょう？', 'Hah? Apakah Anda mengatakan bahwa Beyonce datang ke pesta wisuda dan bernyanyi untuk kalian? Mustahil! Anda pasti bercanda!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3915_tidak_lengkap, '人間はみんな不完全です。', 'Setiap orang tidak sempurna.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3915_tidak_lengkap, '完全なものよりも不完全なものの方が人情味があってよくない？', 'Bukankah hal-hal yang tidak lengkap lebih baik daripada hal-hal yang lengkap, karena ada sisi kemanusiaannya?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3915_tidak_lengkap, '勝ち試合が雨で中止になり、トーフグソフトボールチームのシーズンが不完全に終わった。', 'Tim softball Tofugu mengalami akhir musim yang tidak lengkap ketika pertandingan yang mereka menangkan dihentikan karena hujan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3916_museum, '美術館のワークショップに行ってきました。', 'Saya pergi ke lokakarya museum seni.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3916_museum, '週末は美術館デートでした。', 'Kami mengadakan kencan di museum seni selama akhir pekan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3916_museum, 'パリのルーヴル美術館に行った時に「モナリザ」などの有名なアート作品を見ました。', 'Ketika saya pergi ke Museum Louvre di Paris, saya melihat karya seni terkenal seperti "Mona Lisa".');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3917_origami, '私はプロの折り紙アーティストです。', 'Saya seorang seniman origami profesional.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3917_origami, 'Amazonのセールで、日用品、コスメ、食料品、折り紙を買いだめしました。', 'Saya menimbun barang sehari-hari, kosmetik, bahan makanan, dan kertas origami selama penjualan Amazon.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3917_origami, '今日のコウイチの弁当箱の中には、なぜか食べ物の代わりに折り紙が入っていました。', 'Hari ini, Koichi menemukan origami sebagai pengganti makanan di kotak bentonya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3920_berharap, '希望する大学に入学できるといいですね！', 'Saya harap Anda bisa masuk ke universitas pilihan Anda!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3920_berharap, '日本への留学を希望しています。', 'Saya berharap untuk belajar di luar negeri di Jepang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3920_berharap, 'できるだけ希望するシフトでバイトに入ってもらえるようにしますが、みんなの希望が合わない時は調整が必要なこともあるので、そこはよろしくお願いします。', 'Saya akan melakukan yang terbaik untuk menjadwalkan giliran kerja untuk Anda sesuai dengan preferensi Anda, namun terkadang penyesuaian mungkin diperlukan jika preferensi semua orang tidak selaras. Terima kasih atas pengertian Anda dalam masalah ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3921_teknik, '私は医者ではありませんが、ある医者から、手術の技術を学びました。', 'Saya bukan seorang dokter, tapi saya belajar teknik bedah dari seorang dokter.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3921_teknik, '以前に働いていた会社で、ウエブ開発の最新技術を身につけました。', 'Saya mempelajari keterampilan pengembangan web terbaru dari perusahaan tempat saya bekerja.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3921_teknik, 'プレゼン中、グーグルの技術者が急に立ち上がり、カラオケを始めたんです。', 'Saat presentasi, seorang teknisi Google tiba-tiba berdiri dan mulai bernyanyi karaoke.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3922_untuk_berkompromi, '十万円で妥協するよ。', 'Saya akan berkompromi dengan 100.000 yen.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3922_untuk_berkompromi, 'コウイチとビエトは、マクドナルドに行くことで妥協しました。', 'Koichi dan Viet berkompromi dengan pergi ke McDonald''s.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3922_untuk_berkompromi, 'やっぱり、自分の家のデザインやインテリアは妥協したくないじゃん。', 'Lagi pula, Anda tidak ingin berkompromi dengan desain dan interior rumah Anda sendiri, bukan?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3929_untuk_lulus, 'この業界、そろそろ卒業するつもりなんだって言ったらどうする？', 'Bagaimana jika saya memberi tahu Anda bahwa saya berencana untuk segera lulus dari industri ini?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3929_untuk_lulus, '学校は早く卒業したいけど、大人にはなりたくないな。', 'Saya tidak sabar untuk menyelesaikan sekolah, tetapi saya tidak ingin tumbuh dewasa.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3929_untuk_lulus, '美大や芸大を卒業しても、アートの仕事が見つからないこともあるんですか？', 'Apakah mungkin untuk lulus dari sekolah seni atau perguruan tinggi seni dan masih belum mendapatkan pekerjaan di bidang seni?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3930_untuk_meninggalkan, '食べ物を残すのは良くないですよ。', 'Tidak baik meninggalkan makanan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3930_untuk_meninggalkan, 'ブログにコメントを残しました。', 'Saya meninggalkan komentar di blog Anda.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3930_untuk_meninggalkan, 'いつか世に名を残せるような大物になるつもりです。', 'Saya berniat menjadi nama besar di dunia suatu hari nanti.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3931_untuk_membuat_sesuatu_menjadi_sulit, 'これはゼラチンも火も使わずにレンジでチンして固めるレアチーズケーキのレシピです。', 'Ini adalah resep kue keju langka yang mengeras di microwave tanpa gelatin atau api.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3931_untuk_membuat_sesuatu_menjadi_sulit, 'ビエトは毎朝一時間かけてリーゼントをワックスで固めます。', 'Viet membutuhkan waktu satu jam untuk membuat pompadournya keras setiap pagi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3931_untuk_membuat_sesuatu_menjadi_sulit, 'コウイチは、ワニカニを世界一の日本語学習サイトにする決意を固めた。', 'Koichi bertekad menjadikan WaniKani sebagai tempat belajar bahasa Jepang terbaik di dunia.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3947_bukti, '何か身分を証明できる物は持っていますか？', 'Apakah Anda memiliki sesuatu untuk memverifikasi identitas Anda?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3947_bukti, '日付スタンプのある証明写真が必要なんです。', 'Saya memerlukan foto bersertifikat dengan cap tanggal.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3947_bukti, 'ワニカニのレベル60まで終わったっていう証明を見せてください。証明がないなら信じませんよ。', 'Tolong tunjukkan saya bukti bahwa Anda telah menyelesaikan WaniKani hingga level enam puluh. Jika Anda tidak membuktikannya, saya tidak akan mempercayai Anda.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3948_hari_dalam_seminggu, '今日って何曜日だっけ？', 'Hari apa dalam seminggu hari ini?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3948_hari_dalam_seminggu, '金曜日は、日本語のレッスンがあります。', 'Saya ada pelajaran bahasa Jepang pada hari Jumat.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3948_hari_dalam_seminggu, 'うちの家では、曜日ごとに夕飯のメニューを決めてるんです。', 'Di tempat kami, kami telah memutuskan set menu makan malam untuk setiap hari dalam seminggu');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3952_osaka, '私は生まれは大阪です。', 'Saya lahir di Osaka.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3952_osaka, '大阪には美味しい食べ物がたくさんあります。', 'Osaka punya banyak makanan enak.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3952_osaka, '大阪旅行が楽しみすぎて、勉強がすっかりお留守になってしまっていました。', 'Saya begitu gembira dengan perjalanan ke Osaka sehingga saya benar-benar mengabaikan studi saya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4362_jumat, 'ようやく金曜日です。', 'Akhirnya, ini hari Jumat.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4362_jumat, '金曜日の午後までにはできていると思います。', 'Saya pikir itu akan siap pada Jumat sore.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4362_jumat, '金曜日に飲みに行く約束だったよね？', 'Kami berencana pergi minum pada Jumat malam, bukan?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4374_kekhawatiran, 'アイツは他人に関心がないんだよ。', 'Dia tidak tertarik pada orang lain, lho.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4374_kekhawatiran, 'うちの場合は、父親の子育てへの関心がゼロだったんですよね。', 'Dalam kasus kami, ayah saya sama sekali tidak peduli dalam mengasuh anak.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4374_kekhawatiran, '皆さん、もっと政治に関心を持ってください。', 'Semuanya, mohon lebih tertarik pada politik.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4475_rencana, 'すごくいい企画ですね！', 'Itu rencana yang sangat bagus!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4475_rencana, '今、クリスマスイベントの企画を進めてるんだ。', 'Saat ini saya sedang mengerjakan perencanaan acara Natal.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4475_rencana, 'がんばって考えた企画だったけど、ボツになったよ。', 'Itu adalah rencana yang saya kerjakan dengan keras, tetapi dibatalkan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4475_rencana, '来年の頭に、社員旅行を企画しています。', 'Kami merencanakan retret perusahaan pada awal tahun depan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4475_rencana, '初めまして。私は事業企画部部長のコウイチと申します。', 'Senang berkenalan dengan Anda. Saya Koichi, kepala manajemen proyek.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5389_di_dalam, 'このジャケット、内ポケットがいっぱいついてるよ。', 'Jaket ini memiliki banyak saku di bagian dalam.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5389_di_dalam, 'このマスク、どっちが内でどっちが外か分かる？', 'Bisakah Anda membedakan sisi mana dari topeng ini yang bagian dalam dan mana yang bagian luar?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5389_di_dalam, 'またその内、ごはんでも食べに行こうよ！', 'Ayo kita makan sesuatu kapan-kapan!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5389_di_dalam, '彼はストレスで内にこもってしまった。', 'Dia menarik diri karena stres.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5389_di_dalam, '心の内をメッセージにしました。', 'Aku mengubah apa yang ada di hatiku menjadi sebuah pesan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5618_untuk_menutup_sesuatu, '寒いから、ドア閉めるね！', 'Ini dingin, jadi aku akan menutup pintunya, oke?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5618_untuk_menutup_sesuatu, 'この店、閉めることになったんだ。', 'Toko ini tutup.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5618_untuk_menutup_sesuatu, 'ちゃんとフタを閉めておかないと、虫が入るかもしれないよ！', 'Jika Anda tidak menutup penutupnya dengan benar, serangga mungkin masuk!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5618_untuk_menutup_sesuatu, '旦那がペットボトルのキャップを閉める時、キツく締めすぎるのが嫌です。', 'Aku benci kalau suamiku memutar kembali tutup botol plastik dengan sangat erat.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6884_langit_langit, '天井にクモがいる！', 'Ada laba-laba di langit-langit!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6884_langit_langit, 'このプランター、天井からつるしたいんだ。', 'Saya ingin menggantung penanam ini di langit-langit.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6884_langit_langit, 'どうやらあの日が相場の天井だったようだね。', 'Sepertinya hari itu adalah puncaknya pasar saham.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7469_mobil, '私の父は自動車のディーラーです。', 'Ayah saya adalah seorang dealer mobil.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7469_mobil, '今はどの自動車メーカーも、電気自動車の開発に力を入れています。', 'Saat ini, setiap produsen mobil sedang berupaya mengembangkan kendaraan listrik.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7469_mobil, '新しい自動車を買いたいんですが、どれがおすすめですか？', 'Saya ingin membeli mobil baru, tapi yang mana yang Anda rekomendasikan?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7476_buku_pelajaran, 'その日本語の教科書は高すぎて買えません。', 'Saya tidak bisa membeli buku pelajaran bahasa Jepang karena terlalu mahal.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7476_buku_pelajaran, '教科書はウェブから不正ダウンロードしないで、ちゃんと買ってくださいね。', 'Mohon jangan mengunduh buku teks secara ilegal dari web; sebaliknya, belilah dengan benar.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7476_buku_pelajaran, '明日、計算ドリルと国語の教科書を持って行かなきゃいけないんだって。', 'Kami diberitahu bahwa besok, saya harus membawa latihan matematika dan buku pelajaran bahasa Jepang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7491_wajah_seseorang, '彼はアスファルトに顔面を強打した。', 'Wajahnya terbentur aspal dengan keras.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7491_wajah_seseorang, '体育の時間、顔面に思いっきりバスケットボールが当たったんです。', 'Saat kelas olahraga, wajahku terkena pukulan bola basket.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7491_wajah_seseorang, 'どうやら顔面に少しマヒが出ているようですね。', 'Tampaknya ada sedikit kelumpuhan di area wajah Anda.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7545_tiba_tiba, 'それはいくら何でも急すぎない？', 'Bukankah itu terlalu mendadak?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7545_tiba_tiba, 'それはとても急な知らせだったので、彼女はビックリしました。', 'Itu adalah berita yang sangat mendadak sehingga dia terkejut.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7545_tiba_tiba, '急な仕事を引き受けちゃったので、今日の帰りは九時くらいになります。', 'Saya mengambil pekerjaan mendesak, jadi saya akan pulang sekitar jam sembilan hari ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7586_kebun_binatang, 'ヤクザだって動物園に来ることもあるさ。', 'Bahkan yakuza pun bisa datang ke kebun binatang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7586_kebun_binatang, '動物園で間近で見たフラミンゴは、とてもきれいでした。', 'Flamingo itu tampak begitu cantik ketika saya melihatnya dari dekat di kebun binatang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7586_kebun_binatang, '多くのコアラはコアラレトロウィルスというウイルスを先天的に保持しており、ストレスなどを受けると、死につながることがあります。ですので、動物園では、カメラのフラッシュや大声を出すなどしないよう、十分気をつけてください。', 'Banyak koala yang secara bawaan membawa virus yang disebut koala retrovirus, dan jika mereka mengalami stres, hal itu dapat berakibat fatal. Oleh karena itu, di kebun binatang, harap berhati-hati untuk tidak menggunakan lampu kilat kamera atau meninggikan suara secara berlebihan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7587_peringatan_tahunan, '記念日には、彼とディナーに行く予定です。', 'Aku berencana untuk pergi makan malam bersamanya di hari jadi kami.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7587_peringatan_tahunan, '今は『サラダ記念日』を読んでいます。', 'Saya sedang membaca "Salad Anniversary."');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7587_peringatan_tahunan, '今日は『ワニカニ様』の放送開始記念日です。', 'Hari ini adalah hari peringatan debut siaran "WaniKani-sama."');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7636_ceria, 'コウイチ君は本当に陽気な男の子ですね。', 'Koichi adalah anak yang sangat ceria.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7636_ceria, '今日みたいに温かい陽気の日にはピクニックがしたくなりますね。', 'Hari dengan cuaca hangat seperti hari ini membuatku ingin piknik.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7636_ceria, 'うちの家族は貧乏だが陽気だ。', 'Keluarga saya miskin tapi periang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7641_pemandangan, 'これ、色んな場面で活用できてすごく便利ですよ！', 'Ini sangat nyaman dan dapat digunakan dalam banyak situasi!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7641_pemandangan, 'このフレーズは、ビジネスの場面でよく使います。', 'Frasa ini sering digunakan dalam situasi bisnis.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7641_pemandangan, '最後の場面で泣いてしまいました。', 'Saya menangis saat adegan terakhir.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7642_kamus, '辞典の使い方がよく分からないんですが、教えてもらえませんか？', 'Saya kurang paham cara menggunakan kamus, bisakah Anda mengajari saya?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7642_kamus, '日本語辞典なら、私のデスクの上にありますよ。', 'Jika Anda mencari kamus bahasa Jepang, ada di meja saya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7642_kamus, '電子辞書には色んな辞典が入っています。', 'Kamus elektronik mempunyai berbagai kamus di dalamnya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7698_semoga_beruntung, '幸運になるおまじないよ。', 'Saya akan mendapatkan keberuntungan dengan jimat keberuntungan ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7698_semoga_beruntung, '彼は幸運にも宝くじに当たり、賞金一億円を手に入れました。', 'Dia cukup beruntung bisa memenangkan lotre dan menerima hadiah seratus juta yen.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7698_semoga_beruntung, 'コウイチの名前の意味は、一番幸運な人っていう意味なんじゃないかと思ってるんだけど、どう思う？', 'Menurutku, arti nama Koichi adalah orang yang "paling beruntung". Bagaimana menurutmu?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7755_untuk_istirahat, 'そんなことを言われると、心が折れるよ。', 'Hatiku hancur saat kamu mengatakan itu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7755_untuk_istirahat, 'バレーボールをしてる時に、指の骨が折れてしまいました。', 'Jari saya patah saat bermain bola voli.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7755_untuk_istirahat, 'ええっ、ひどい。チューリップ、根元からポッキリ折れてる！', 'Ya Tuhan, ini mengerikan. Tulipnya patah di pangkalnya!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7756_gerbang, '私たちの家は、茶色い門のある家のすぐとなりです。', 'Rumah kami bersebelahan dengan rumah yang gerbangnya berwarna coklat.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7756_gerbang, 'あそこの大きい門をくぐるとお寺が見えるよ。', 'Jika Anda lewat di bawah gerbang besar, Anda akan melihat candi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7756_gerbang, '門にはカギがかかっているんだ。', 'Gerbangnya terkunci.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8671_bahan_makanan, '週末には食料品を買いにコストコに行きます。', 'Saya pergi ke Costco untuk membeli bahan makanan di akhir pekan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8671_bahan_makanan, '食料品を買いに行く前に、いつも買い出しリストを作ります。', 'Sebelum berbelanja, saya selalu membuat daftar belanjaan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8671_bahan_makanan, '食料品売場はどこにありますか。', 'Bisakah Anda memberi tahu saya di mana bagian toko kelontong berada?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8708_ketertiban_umum, 'この辺りは治安も悪くないけど、あの辺りは治安が良くないからね。', 'Daerah ini tidak memiliki keamanan publik yang buruk, tapi daerah itu memilikinya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8708_ketertiban_umum, 'このまま日本の少子化が進むと、治安も悪化するでしょう。', 'Jika angka kelahiran di Jepang terus menurun, keamanan masyarakat akan semakin buruk.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8708_ketertiban_umum, '俺は実はスーパーマンなんだ。この辺りの治安を守っているのはこの俺様なんだぜ。', 'Saya sebenarnya Superman dan sayalah yang menjaga perdamaian di sekitar sini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8728_pembayaran, 'お支払い方法はどうなさいますか？', 'Bagaimana Anda ingin membayar?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8728_pembayaran, '支払いはカードでお願いします。', 'Silakan melakukan pembayaran dengan kartu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8728_pembayaran, 'よかったー、これで支払いができる！', 'Syukurlah, sekarang saya bisa membayar tagihan saya!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8806_menandai, '旅行カバンに付ける荷札をさがしています。', 'Saya mencari label untuk dimasukkan ke dalam koper saya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8806_menandai, '荷札の書き方を教えてください。', 'Tolong beritahu saya cara menulis label paket.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8806_menandai, 'そのパッケージ、荷札がはがれてるよ。', 'Labelnya terlepas dari bungkusannya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8818_tamasya, '遠足って来週だったよね？', 'Bukankah piknik sekolah dijadwalkan minggu depan?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8818_tamasya, 'うちの子、さっき遠足から帰ってきたよ。めっちゃ楽しかったみたい！', 'Anak saya baru saja kembali dari piknik sekolah beberapa waktu yang lalu. Sepertinya mereka bersenang-senang!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8818_tamasya, '学校の遠足で、動物園に行きました。', 'Kami melakukan piknik sekolah ke kebun binatang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8947_untuk_mengirim_seseorang_kembali, '小さいシャコは海に帰すようにしています。', 'Kami memastikan untuk melepaskan udang mantis kecil itu kembali ke laut.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8947_untuk_mengirim_seseorang_kembali, '今日は少し早く運転手を帰した。', 'Saya mengirim sopir saya pulang sedikit lebih awal hari ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8947_untuk_mengirim_seseorang_kembali, '作業が全部終わらないと帰してもらえないよ。', 'Mereka tidak akan mengirim Anda pulang kecuali Anda menyelesaikan semua pekerjaan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9150_saku_dalam, 'このスーツのジャケットには内ポケットがありません。', 'Jas ini tidak memiliki saku dalam.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9150_saku_dalam, 'このノートは、バッグの内ポケットに入ります。', 'Buku catatan ini muat di saku bagian dalam tas.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9150_saku_dalam, '見て、あの子、内ポケットに虫を入れてるよ！', 'Lihat, anak itu memasukkan serangga ke dalam sakunya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9239_kemerosotan, 'ストレスのせいで、病気の悪化が早い。', 'Stres menyebabkan penyakit ini memburuk dengan cepat.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9239_kemerosotan, '昨日の夜、インフルエンザが一気に悪化した。', 'Tadi malam, flu saya tiba-tiba bertambah parah.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9239_kemerosotan, '最近この辺りは治安がかなり悪化している。', 'Belakangan ini, terjadi penurunan signifikan dalam keamanan keseluruhan lingkungan ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9262_untuk_bertanya, 'メーカーに問い合わせるよ。', 'Saya akan menghubungi produsennya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9262_untuk_bertanya, 'メールで問い合わせてみたら？', 'Mengapa Anda tidak mencoba mengirimkan pertanyaan melalui email?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9262_untuk_bertanya, '事前に問い合わせたかったんだけど、電話がつながらなかったんだよね。', 'Saya ingin bertanya terlebih dahulu, tetapi saya tidak dapat menghubungi melalui telepon.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9270_sederhana_dan_mudah, 'ソースにつけてレンジでチンするだけのお手軽レシピです。', 'Berikut resep cepat dan mudah yang perlu Anda lakukan hanyalah mencelupkannya ke dalam saus dan memasukkannya ke dalam microwave.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9270_sederhana_dan_mudah, '「ワニカニカード」が手軽にコレクションできるアプリを作りました。', 'Kami telah membuat aplikasi yang memudahkan pengumpulan "Kartu WaniKani".');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9270_sederhana_dan_mudah, '手軽にできるエクササイズで体を動かしましょう。', 'Mari gerakkan tubuh kita dengan olahraga yang mudah.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9276_terjadi, 'コミュニケーションが上手くできていないと、トラブルが生じるかもしれません。', 'Jika komunikasi tidak dilakukan dengan baik, beberapa masalah mungkin timbul.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9276_terjadi, 'そこから多くの問題が生じました。', 'Dari situlah banyak permasalahan yang muncul.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9276_terjadi, 'システムのアップデートにより一時的にシステムを止める必要が生じます。', 'Karena pembaruan sistem, sistem perlu dihentikan sementara.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9281_garis, '行列のできるラーメン屋を見つけた。', 'Saya menemukan restoran ramen yang antre.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9281_garis, 'あ、アリの行列だ！', 'Oh, sederet semut!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9281_garis, 'コンサートのチケットを買うために、夜中から行列にならびました。', 'Saya mengantri di tengah malam untuk membeli tiket konser.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9281_garis, '今日は数学のクラスで行列について学びました。', 'Saya belajar tentang matriks hari ini di kelas matematika.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9294_untuk_menumpuk, 'そんなにお皿を重ねると危ないですよ。', 'Berbahaya jika menumpuk begitu banyak piring.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9294_untuk_menumpuk, 'プリンセスは、年を重ねるごとに美しくなっていきました。', 'Sang putri menjadi semakin cantik seiring bertambahnya usia.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9294_untuk_menumpuk, '答えのないことにディスカッションを重ねるのってムダじゃないですか？', 'Bukankah membuang-buang waktu jika berdiskusi tentang hal-hal yang tidak ada jawabannya?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9302_perdana_menteri, 'あれ、森元首相じゃない？', 'Hei, bukankah itu mantan Perdana Menteri Mori?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9302_perdana_menteri, '昨日の首相の発言について、どう思いますか？', 'Apa pendapat Anda tentang pernyataan Perdana Menteri kemarin?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9302_perdana_menteri, 'これは首相のリーダーシップの見せ所ですね。', 'Di sinilah Perdana Menteri benar-benar bisa menunjukkan kepemimpinannya, bukan?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9368_tanaman_hijau_baru, '新緑の時期にまた来てくださいね。', 'Silakan datang lagi ketika tanaman hijau baru sudah keluar.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9368_tanaman_hijau_baru, '新緑が一番きれいなのはやっぱり四月と五月ですよ。', 'April dan Mei jelas merupakan bulan-bulan di mana dedaunan baru terlihat paling indah.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9368_tanaman_hijau_baru, '新緑の山をずーっと見てたら目が良くなった気がするんだ。', 'Saya merasa penglihatan saya meningkat hanya dengan menatap pegunungan yang ditutupi dedaunan hijau baru.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9465_kereta, '次の列車は10分後です。', 'Kereta berikutnya dalam 10 menit.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9465_kereta, '列車はゆっくりと動き出しました。', 'Kereta perlahan mulai bergerak.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9465_kereta, '夜行列車に乗ったことはありますか？', 'Pernahkah Anda naik kereta malam?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9465_kereta, '列車がトンネルに入ると、音だけが大きくなった。', 'Saat kereta memasuki terowongan, hanya suaranya yang semakin keras.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9478_untuk_tetap_berteman, '彼と付き合うことにしたの。', 'Saya memutuskan untuk mulai berkencan dengannya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9478_untuk_tetap_berteman, 'ちょっと付き合ってくれない？', 'Bolehkah ikut denganku sebentar?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9478_untuk_tetap_berteman, '姉に付き合って買い物に行った。', 'Aku ikut bersama kakak perempuanku dalam perjalanan berbelanja.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9478_untuk_tetap_berteman, 'たまには子どものわがままに付き合ってあげてもいいんじゃない？', 'Tidakkah menurutmu tidak apa-apa membiarkan seorang anak melakukan apa yang diinginkannya sesekali?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9478_untuk_tetap_berteman, '彼は病気と戦うことをやめ、うまく付き合うことを選んだ。', 'Dia berhenti melawan penyakitnya dan memilih untuk hidup bersamanya.');

  -- 4. PREREQUISITES
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_960_kebun, id FROM items WHERE type = 'radical' AND (slug = '16' OR id = '16') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_960_kebun, r_8784_zombi);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_961_hari_dalam_seminggu, id FROM items WHERE type = 'radical' AND (slug = '22' OR id = '22') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_961_hari_dalam_seminggu, id FROM items WHERE type = 'radical' AND (slug = '105' OR id = '105') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_961_hari_dalam_seminggu, id FROM items WHERE type = 'radical' AND (slug = '240' OR id = '240') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_962_menulis, id FROM items WHERE type = 'radical' AND (slug = '220' OR id = '220') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_962_menulis, id FROM items WHERE type = 'radical' AND (slug = '22' OR id = '22') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_963_jauh, id FROM items WHERE type = 'radical' AND (slug = '114' OR id = '114') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_963_jauh, r_8784_zombi);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_964_gerbang, id FROM items WHERE type = 'radical' AND (slug = '214' OR id = '214') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_965_koneksi, id FROM items WHERE type = 'radical' AND (slug = '75' OR id = '75') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_965_koneksi, id FROM items WHERE type = 'radical' AND (slug = '1' OR id = '1') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_965_koneksi, id FROM items WHERE type = 'radical' AND (slug = '86' OR id = '86') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_967_produk, id FROM items WHERE type = 'radical' AND (slug = '227' OR id = '227') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_968_melindungi, id FROM items WHERE type = 'radical' AND (slug = '78' OR id = '78') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_968_melindungi, id FROM items WHERE type = 'radical' AND (slug = '74' OR id = '74') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_969_kebahagiaan, id FROM items WHERE type = 'radical' AND (slug = '8' OR id = '8') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_969_kebahagiaan, id FROM items WHERE type = 'radical' AND (slug = '178' OR id = '178') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_970_buru_buru, id FROM items WHERE type = 'radical' AND (slug = '14' OR id = '14') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_970_buru_buru, id FROM items WHERE type = 'radical' AND (slug = '105' OR id = '105') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_970_buru_buru, id FROM items WHERE type = 'radical' AND (slug = '65' OR id = '65') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_971_realitas, id FROM items WHERE type = 'radical' AND (slug = '8773' OR id = '8773') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_971_realitas, id FROM items WHERE type = 'radical' AND (slug = '1' OR id = '1') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_971_realitas, id FROM items WHERE type = 'radical' AND (slug = '2' OR id = '2') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_972_kotak, id FROM items WHERE type = 'radical' AND (slug = '85' OR id = '85') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_972_kotak, id FROM items WHERE type = 'radical' AND (slug = '23' OR id = '23') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_972_kotak, id FROM items WHERE type = 'radical' AND (slug = '53' OR id = '53') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_973_bagasi, id FROM items WHERE type = 'radical' AND (slug = '90' OR id = '90') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_973_bagasi, id FROM items WHERE type = 'radical' AND (slug = '75' OR id = '75') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_973_bagasi, id FROM items WHERE type = 'radical' AND (slug = '113' OR id = '113') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_974_menghadapi, r_250_menghadapi);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_975_aturan, id FROM items WHERE type = 'radical' AND (slug = '185' OR id = '185') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_975_aturan, id FROM items WHERE type = 'radical' AND (slug = '2' OR id = '2') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_977_pemerintah, id FROM items WHERE type = 'radical' AND (slug = '62' OR id = '62') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_977_pemerintah, r_248_menempel);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_978_menyembuhkan, id FROM items WHERE type = 'radical' AND (slug = '103' OR id = '103') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_978_menyembuhkan, id FROM items WHERE type = 'radical' AND (slug = '417' OR id = '417') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_979_mandi, id FROM items WHERE type = 'radical' AND (slug = '103' OR id = '103') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_979_mandi, r_249_lembah);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_980_tertawa, id FROM items WHERE type = 'radical' AND (slug = '85' OR id = '85') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_980_tertawa, id FROM items WHERE type = 'radical' AND (slug = '40' OR id = '40') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_981_berhenti, id FROM items WHERE type = 'radical' AND (slug = '174' OR id = '174') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_981_berhenti, id FROM items WHERE type = 'radical' AND (slug = '178' OR id = '178') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_982_terkait, id FROM items WHERE type = 'radical' AND (slug = '214' OR id = '214') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_982_terkait, id FROM items WHERE type = 'radical' AND (slug = '8767' OR id = '8767') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_982_terkait, id FROM items WHERE type = 'radical' AND (slug = '40' OR id = '40') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_984_dialek, id FROM items WHERE type = 'radical' AND (slug = '140' OR id = '140') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_984_dialek, id FROM items WHERE type = 'radical' AND (slug = '106' OR id = '106') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_985_politik, id FROM items WHERE type = 'radical' AND (slug = '229' OR id = '229') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_985_politik, id FROM items WHERE type = 'radical' AND (slug = '60' OR id = '60') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_986_menahan, id FROM items WHERE type = 'radical' AND (slug = '140' OR id = '140') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_986_menahan, id FROM items WHERE type = 'radical' AND (slug = '24' OR id = '24') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_986_menahan, id FROM items WHERE type = 'radical' AND (slug = '51' OR id = '51') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_987_bukti, id FROM items WHERE type = 'radical' AND (slug = '117' OR id = '117') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_987_bukti, id FROM items WHERE type = 'radical' AND (slug = '229' OR id = '229') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_988_berisiko, id FROM items WHERE type = 'radical' AND (slug = '176' OR id = '176') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_988_berisiko, id FROM items WHERE type = 'radical' AND (slug = '8785' OR id = '8785') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_989_berbahaya, id FROM items WHERE type = 'radical' AND (slug = '14' OR id = '14') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_989_berbahaya, id FROM items WHERE type = 'radical' AND (slug = '116' OR id = '116') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_989_berbahaya, id FROM items WHERE type = 'radical' AND (slug = '158' OR id = '158') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_990_ada, id FROM items WHERE type = 'radical' AND (slug = '26' OR id = '26') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_990_ada, id FROM items WHERE type = 'radical' AND (slug = '8761' OR id = '8761') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_990_ada, id FROM items WHERE type = 'radical' AND (slug = '34' OR id = '34') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_991_khusus, id FROM items WHERE type = 'radical' AND (slug = '15' OR id = '15') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_991_khusus, id FROM items WHERE type = 'radical' AND (slug = '51' OR id = '51') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_991_khusus, id FROM items WHERE type = 'radical' AND (slug = '74' OR id = '74') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_992_berani, id FROM items WHERE type = 'radical' AND (slug = '22' OR id = '22') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_992_berani, id FROM items WHERE type = 'radical' AND (slug = '53' OR id = '53') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_993_tak_berguna, id FROM items WHERE type = 'radical' AND (slug = '76' OR id = '76') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_993_tak_berguna, id FROM items WHERE type = 'radical' AND (slug = '177' OR id = '177') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_994_osaka, id FROM items WHERE type = 'radical' AND (slug = '176' OR id = '176') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_994_osaka, id FROM items WHERE type = 'radical' AND (slug = '218' OR id = '218') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1153_rencana, id FROM items WHERE type = 'radical' AND (slug = '8764' OR id = '8764') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1153_rencana, id FROM items WHERE type = 'radical' AND (slug = '44' OR id = '44') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_2828_rawat_jalan, id FROM items WHERE type = 'kanji' AND (slug = '521' OR id = '521') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_2828_rawat_jalan, id FROM items WHERE type = 'kanji' AND (slug = '590' OR id = '590') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_2896_tidak_dikenal, id FROM items WHERE type = 'kanji' AND (slug = '563' OR id = '563') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_2896_tidak_dikenal, id FROM items WHERE type = 'kanji' AND (slug = '626' OR id = '626') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3294_samudra_pasifik, id FROM items WHERE type = 'kanji' AND (slug = '505' OR id = '505') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3294_samudra_pasifik, id FROM items WHERE type = 'kanji' AND (slug = '535' OR id = '535') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3294_samudra_pasifik, id FROM items WHERE type = 'kanji' AND (slug = '798' OR id = '798') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3453_untuk_mengevaluasi_kembali, id FROM items WHERE type = 'kanji' AND (slug = '558' OR id = '558') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3453_untuk_mengevaluasi_kembali, id FROM items WHERE type = 'kanji' AND (slug = '630' OR id = '630') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3584_ruang_tunggu, id FROM items WHERE type = 'kanji' AND (slug = '726' OR id = '726') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3584_ruang_tunggu, id FROM items WHERE type = 'kanji' AND (slug = '852' OR id = '852') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3584_ruang_tunggu, id FROM items WHERE type = 'kanji' AND (slug = '635' OR id = '635') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3587_menjadi_tergerak_secara_emosional, id FROM items WHERE type = 'kanji' AND (slug = '862' OR id = '862') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3587_menjadi_tergerak_secara_emosional, id FROM items WHERE type = 'kanji' AND (slug = '827' OR id = '827') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3691_meliput_suatu_acara, id FROM items WHERE type = 'kanji' AND (slug = '966' OR id = '966') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3691_meliput_suatu_acara, id FROM items WHERE type = 'kanji' AND (slug = '909' OR id = '909') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3702_penampilan, id FROM items WHERE type = 'kanji' AND (slug = '920' OR id = '920') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3702_penampilan, id FROM items WHERE type = 'kanji' AND (slug = '779' OR id = '779') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3720_berjanji, id FROM items WHERE type = 'kanji' AND (slug = '915' OR id = '915') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3720_berjanji, id FROM items WHERE type = 'kanji' AND (slug = '910' OR id = '910') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3799_masker, id FROM items WHERE type = 'kanji' AND (slug = '739' OR id = '739') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3799_masker, k_974_menghadapi);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3801_konservatif, id FROM items WHERE type = 'kanji' AND (slug = '983' OR id = '983') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3801_konservatif, k_968_melindungi);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3801_konservatif, id FROM items WHERE type = 'kanji' AND (slug = '914' OR id = '914') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3802_kelestarian, id FROM items WHERE type = 'kanji' AND (slug = '983' OR id = '983') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3802_kelestarian, k_990_ada);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3804_asuransi, id FROM items WHERE type = 'kanji' AND (slug = '983' OR id = '983') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3804_asuransi, k_988_berisiko);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3805_menjamin, id FROM items WHERE type = 'kanji' AND (slug = '983' OR id = '983') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3805_menjamin, k_987_bukti);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3808_patung_buddha, id FROM items WHERE type = 'kanji' AND (slug = '956' OR id = '956') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3808_patung_buddha, id FROM items WHERE type = 'kanji' AND (slug = '890' OR id = '890') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3809_klasik, id FROM items WHERE type = 'kanji' AND (slug = '519' OR id = '519') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3809_klasik, k_975_aturan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3809_klasik, id FROM items WHERE type = 'kanji' AND (slug = '914' OR id = '914') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3810_kitab_suci_budha, id FROM items WHERE type = 'kanji' AND (slug = '956' OR id = '956') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3810_kitab_suci_budha, k_975_aturan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3811_kamus_karakter, id FROM items WHERE type = 'kanji' AND (slug = '545' OR id = '545') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3811_kamus_karakter, k_975_aturan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3812_ensiklopedi, id FROM items WHERE type = 'kanji' AND (slug = '708' OR id = '708') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3812_ensiklopedi, k_975_aturan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3813_petualangan, k_992_berani);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3813_petualangan, k_988_berisiko);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3814_candaan, k_993_tak_berguna);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3814_candaan, id FROM items WHERE type = 'kanji' AND (slug = '736' OR id = '736') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3815_berisiko, k_989_berbahaya);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3815_berisiko, k_988_berisiko);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3816_berbahaya, k_989_berbahaya);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3818_mentah, id FROM items WHERE type = 'kanji' AND (slug = '451' OR id = '451') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3818_mentah, k_967_produk);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3819_sebuah_karya, id FROM items WHERE type = 'kanji' AND (slug = '584' OR id = '584') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3819_sebuah_karya, k_967_produk);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3820_artikel, k_967_produk);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3821_baru, id FROM items WHERE type = 'kanji' AND (slug = '857' OR id = '857') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3821_baru, k_967_produk);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3822_barang_dagangan, id FROM items WHERE type = 'kanji' AND (slug = '828' OR id = '828') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3822_barang_dagangan, k_967_produk);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3824_taman_umum, id FROM items WHERE type = 'kanji' AND (slug = '499' OR id = '499') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3824_taman_umum, k_960_kebun);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3826_untuk_mengetahui, k_990_ada);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3827_adanya, id FROM items WHERE type = 'kanji' AND (slug = '850' OR id = '850') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3827_adanya, k_990_ada);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3828_untuk_melindungi, k_968_melindungi);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3829_ketiadaan, k_986_menahan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3829_ketiadaan, k_968_melindungi);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3830_kebenaran, k_971_realitas);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3830_kebenaran, id FROM items WHERE type = 'kanji' AND (slug = '715' OR id = '715') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3831_khusus, k_991_khusus);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3831_khusus, k_964_gerbang);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3832_ketidakbahagiaan, id FROM items WHERE type = 'kanji' AND (slug = '563' OR id = '563') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3832_ketidakbahagiaan, k_969_kebahagiaan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3833_kebahagiaan, k_969_kebahagiaan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3834_pemerintah, k_985_politik);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3834_pemerintah, k_977_pemerintah);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3835_bento, k_984_dialek);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3835_bento, id FROM items WHERE type = 'kanji' AND (slug = '571' OR id = '571') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3836_dialek_tokyo, id FROM items WHERE type = 'kanji' AND (slug = '627' OR id = '627') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3836_dialek_tokyo, id FROM items WHERE type = 'kanji' AND (slug = '620' OR id = '620') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3836_dialek_tokyo, k_984_dialek);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3837_dialek, k_984_dialek);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3838_untuk_bergegas, k_970_buru_buru);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3839_tiba_tiba, k_970_buru_buru);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3840_kematian_mendadak, k_970_buru_buru);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3840_kematian_mendadak, id FROM items WHERE type = 'kanji' AND (slug = '617' OR id = '617') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3841_cepat, k_970_buru_buru);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3841_cepat, id FROM items WHERE type = 'kanji' AND (slug = '580' OR id = '580') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3842_politik, k_985_politik);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3842_politik, k_978_menyembuhkan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3843_untuk_menulis, k_962_menulis);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3846_pemulihan_lengkap, id FROM items WHERE type = 'kanji' AND (slug = '610' OR id = '610') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3846_pemulihan_lengkap, k_978_menyembuhkan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3847_ketidakhancuran, id FROM items WHERE type = 'kanji' AND (slug = '563' OR id = '563') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3847_ketidakhancuran, k_978_menyembuhkan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3848_era_meiji, id FROM items WHERE type = 'kanji' AND (slug = '626' OR id = '626') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3848_era_meiji, k_978_menyembuhkan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3849_untuk_mandi, k_979_mandi);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3850_berjemur, id FROM items WHERE type = 'kanji' AND (slug = '476' OR id = '476') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3850_berjemur, id FROM items WHERE type = 'kanji' AND (slug = '567' OR id = '567') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3850_berjemur, k_979_mandi);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3851_kereta_ekspres_terbatas, id FROM items WHERE type = 'kanji' AND (slug = '807' OR id = '807') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3851_kereta_ekspres_terbatas, k_970_buru_buru);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3852_belajar_di_luar_negeri, k_986_menahan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3852_belajar_di_luar_negeri, id FROM items WHERE type = 'kanji' AND (slug = '599' OR id = '599') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3853_foto, id FROM items WHERE type = 'kanji' AND (slug = '531' OR id = '531') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3853_foto, k_971_realitas);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3854_hitam_pekat, k_971_realitas);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3854_hitam_pekat, id FROM items WHERE type = 'kanji' AND (slug = '677' OR id = '677') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3855_kebahagiaan, k_969_kebahagiaan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3855_kebahagiaan, id FROM items WHERE type = 'kanji' AND (slug = '867' OR id = '867') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3856_tertawa, k_980_tertawa);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3857_senyum, k_980_tertawa);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3857_senyum, id FROM items WHERE type = 'kanji' AND (slug = '772' OR id = '772') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3858_tong_sampah, k_972_kotak);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3859_kotak, k_972_kotak);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3860_bagasi, k_973_bagasi);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3860_bagasi, id FROM items WHERE type = 'kanji' AND (slug = '718' OR id = '718') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3861_bukti, k_987_bukti);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3862_saksi, k_987_bukti);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3862_saksi, id FROM items WHERE type = 'kanji' AND (slug = '444' OR id = '444') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3863_kesaksian, k_987_bukti);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3863_kesaksian, id FROM items WHERE type = 'kanji' AND (slug = '593' OR id = '593') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3865_kamus, k_981_berhenti);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3865_kamus, k_962_menulis);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3866_untuk_berhenti, k_981_berhenti);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3867_sanjungan, id FROM items WHERE type = 'kanji' AND (slug = '527' OR id = '527') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3867_sanjungan, k_981_berhenti);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3868_jauh, k_963_jauh);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3869_penerimaan, id FROM items WHERE type = 'kanji' AND (slug = '445' OR id = '445') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3869_penerimaan, k_964_gerbang);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3870_untuk_berhubungan_dengan, k_982_terkait);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3871_koneksi, k_982_terkait);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3871_koneksi, k_965_koneksi);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3872_hanshin, k_994_osaka);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3872_hanshin, id FROM items WHERE type = 'kanji' AND (slug = '799' OR id = '799') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3873_depan, id FROM items WHERE type = 'kanji' AND (slug = '633' OR id = '633') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3873_depan, k_974_menghadapi);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3874_tanah, id FROM items WHERE type = 'kanji' AND (slug = '608' OR id = '608') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3874_tanah, k_974_menghadapi);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3875_penampilan_luar, id FROM items WHERE type = 'kanji' AND (slug = '521' OR id = '521') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3875_penampilan_luar, k_974_menghadapi);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3876_layar, id FROM items WHERE type = 'kanji' AND (slug = '629' OR id = '629') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3876_layar, k_974_menghadapi);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3877_permukaan, k_974_menghadapi);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3878_menarik, k_974_menghadapi);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3878_menarik, id FROM items WHERE type = 'kanji' AND (slug = '491' OR id = '491') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3879_perpustakaan, id FROM items WHERE type = 'kanji' AND (slug = '585' OR id = '585') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3879_perpustakaan, k_962_menulis);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3879_perpustakaan, id FROM items WHERE type = 'kanji' AND (slug = '873' OR id = '873') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3907_seorang_juru_masak, id FROM items WHERE type = 'kanji' AND (slug = '878' OR id = '878') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3907_seorang_juru_masak, id FROM items WHERE type = 'kanji' AND (slug = '669' OR id = '669') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3907_seorang_juru_masak, id FROM items WHERE type = 'kanji' AND (slug = '444' OR id = '444') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3908_artis, id FROM items WHERE type = 'kanji' AND (slug = '916' OR id = '916') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3908_artis, id FROM items WHERE type = 'kanji' AND (slug = '922' OR id = '922') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3908_artis, id FROM items WHERE type = 'kanji' AND (slug = '660' OR id = '660') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3910_otomatis, id FROM items WHERE type = 'kanji' AND (slug = '578' OR id = '578') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3910_otomatis, id FROM items WHERE type = 'kanji' AND (slug = '827' OR id = '827') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3910_otomatis, id FROM items WHERE type = 'kanji' AND (slug = '914' OR id = '914') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3911_mendasar, id FROM items WHERE type = 'kanji' AND (slug = '917' OR id = '917') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3911_mendasar, id FROM items WHERE type = 'kanji' AND (slug = '487' OR id = '487') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3911_mendasar, id FROM items WHERE type = 'kanji' AND (slug = '914' OR id = '914') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3912_melipat, id FROM items WHERE type = 'kanji' AND (slug = '907' OR id = '907') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3912_melipat, id FROM items WHERE type = 'kanji' AND (slug = '492' OR id = '492') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3914_upacara_wisuda, id FROM items WHERE type = 'kanji' AND (slug = '897' OR id = '897') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3914_upacara_wisuda, id FROM items WHERE type = 'kanji' AND (slug = '756' OR id = '756') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3914_upacara_wisuda, id FROM items WHERE type = 'kanji' AND (slug = '939' OR id = '939') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3915_tidak_lengkap, id FROM items WHERE type = 'kanji' AND (slug = '563' OR id = '563') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3915_tidak_lengkap, id FROM items WHERE type = 'kanji' AND (slug = '904' OR id = '904') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3915_tidak_lengkap, id FROM items WHERE type = 'kanji' AND (slug = '610' OR id = '610') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3916_museum, id FROM items WHERE type = 'kanji' AND (slug = '732' OR id = '732') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3916_museum, id FROM items WHERE type = 'kanji' AND (slug = '922' OR id = '922') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3916_museum, id FROM items WHERE type = 'kanji' AND (slug = '873' OR id = '873') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3917_origami, id FROM items WHERE type = 'kanji' AND (slug = '907' OR id = '907') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3917_origami, id FROM items WHERE type = 'kanji' AND (slug = '663' OR id = '663') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3920_berharap, id FROM items WHERE type = 'kanji' AND (slug = '905' OR id = '905') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3920_berharap, id FROM items WHERE type = 'kanji' AND (slug = '908' OR id = '908') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3921_teknik, id FROM items WHERE type = 'kanji' AND (slug = '919' OR id = '919') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3921_teknik, id FROM items WHERE type = 'kanji' AND (slug = '922' OR id = '922') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3922_untuk_berkompromi, id FROM items WHERE type = 'kanji' AND (slug = '925' OR id = '925') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3922_untuk_berkompromi, id FROM items WHERE type = 'kanji' AND (slug = '898' OR id = '898') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3929_untuk_lulus, id FROM items WHERE type = 'kanji' AND (slug = '897' OR id = '897') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3929_untuk_lulus, id FROM items WHERE type = 'kanji' AND (slug = '756' OR id = '756') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3930_untuk_meninggalkan, id FROM items WHERE type = 'kanji' AND (slug = '912' OR id = '912') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3931_untuk_membuat_sesuatu_menjadi_sulit, id FROM items WHERE type = 'kanji' AND (slug = '902' OR id = '902') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3947_bukti, k_987_bukti);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3947_bukti, id FROM items WHERE type = 'kanji' AND (slug = '626' OR id = '626') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3948_hari_dalam_seminggu, k_961_hari_dalam_seminggu);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3948_hari_dalam_seminggu, id FROM items WHERE type = 'kanji' AND (slug = '476' OR id = '476') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3952_osaka, id FROM items WHERE type = 'kanji' AND (slug = '453' OR id = '453') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3952_osaka, k_994_osaka);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4362_jumat, id FROM items WHERE type = 'kanji' AND (slug = '602' OR id = '602') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4362_jumat, k_961_hari_dalam_seminggu);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4362_jumat, id FROM items WHERE type = 'kanji' AND (slug = '476' OR id = '476') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4374_kekhawatiran, k_982_terkait);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4374_kekhawatiran, id FROM items WHERE type = 'kanji' AND (slug = '508' OR id = '508') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4475_rencana, k_1153_rencana);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4475_rencana, id FROM items WHERE type = 'kanji' AND (slug = '629' OR id = '629') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5389_di_dalam, id FROM items WHERE type = 'kanji' AND (slug = '500' OR id = '500') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5618_untuk_menutup_sesuatu, id FROM items WHERE type = 'kanji' AND (slug = '1514' OR id = '1514') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6884_langit_langit, id FROM items WHERE type = 'kanji' AND (slug = '473' OR id = '473') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6884_langit_langit, id FROM items WHERE type = 'kanji' AND (slug = '1918' OR id = '1918') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_7469_mobil, id FROM items WHERE type = 'kanji' AND (slug = '578' OR id = '578') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_7469_mobil, id FROM items WHERE type = 'kanji' AND (slug = '827' OR id = '827') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_7469_mobil, id FROM items WHERE type = 'kanji' AND (slug = '562' OR id = '562') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_7476_buku_pelajaran, id FROM items WHERE type = 'kanji' AND (slug = '668' OR id = '668') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_7476_buku_pelajaran, id FROM items WHERE type = 'kanji' AND (slug = '642' OR id = '642') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7476_buku_pelajaran, k_962_menulis);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_7491_wajah_seseorang, id FROM items WHERE type = 'kanji' AND (slug = '772' OR id = '772') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7491_wajah_seseorang, k_974_menghadapi);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7545_tiba_tiba, k_970_buru_buru);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_7586_kebun_binatang, id FROM items WHERE type = 'kanji' AND (slug = '827' OR id = '827') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_7586_kebun_binatang, id FROM items WHERE type = 'kanji' AND (slug = '718' OR id = '718') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7586_kebun_binatang, k_960_kebun);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_7587_peringatan_tahunan, id FROM items WHERE type = 'kanji' AND (slug = '664' OR id = '664') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_7587_peringatan_tahunan, id FROM items WHERE type = 'kanji' AND (slug = '906' OR id = '906') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_7587_peringatan_tahunan, id FROM items WHERE type = 'kanji' AND (slug = '476' OR id = '476') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_7636_ceria, id FROM items WHERE type = 'kanji' AND (slug = '834' OR id = '834') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_7636_ceria, id FROM items WHERE type = 'kanji' AND (slug = '548' OR id = '548') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_7641_pemandangan, id FROM items WHERE type = 'kanji' AND (slug = '694' OR id = '694') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7641_pemandangan, k_974_menghadapi);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7642_kamus, k_981_berhenti);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7642_kamus, k_975_aturan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7698_semoga_beruntung, k_969_kebahagiaan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_7698_semoga_beruntung, id FROM items WHERE type = 'kanji' AND (slug = '752' OR id = '752') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_7755_untuk_istirahat, id FROM items WHERE type = 'kanji' AND (slug = '907' OR id = '907') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7756_gerbang, k_964_gerbang);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_8671_bahan_makanan, id FROM items WHERE type = 'kanji' AND (slug = '644' OR id = '644') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_8671_bahan_makanan, id FROM items WHERE type = 'kanji' AND (slug = '878' OR id = '878') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8671_bahan_makanan, k_967_produk);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8708_ketertiban_umum, k_978_menyembuhkan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_8708_ketertiban_umum, id FROM items WHERE type = 'kanji' AND (slug = '612' OR id = '612') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_8728_pembayaran, id FROM items WHERE type = 'kanji' AND (slug = '678' OR id = '678') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_8728_pembayaran, id FROM items WHERE type = 'kanji' AND (slug = '1608' OR id = '1608') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8806_menandai, k_973_bagasi);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_8806_menandai, id FROM items WHERE type = 'kanji' AND (slug = '649' OR id = '649') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8818_tamasya, k_963_jauh);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_8818_tamasya, id FROM items WHERE type = 'kanji' AND (slug = '561' OR id = '561') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_8947_untuk_mengirim_seseorang_kembali, id FROM items WHERE type = 'kanji' AND (slug = '930' OR id = '930') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_9150_saku_dalam, id FROM items WHERE type = 'kanji' AND (slug = '500' OR id = '500') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_9239_kemerosotan, id FROM items WHERE type = 'kanji' AND (slug = '829' OR id = '829') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_9239_kemerosotan, id FROM items WHERE type = 'kanji' AND (slug = '607' OR id = '607') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_9262_untuk_bertanya, id FROM items WHERE type = 'kanji' AND (slug = '859' OR id = '859') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_9262_untuk_bertanya, id FROM items WHERE type = 'kanji' AND (slug = '852' OR id = '852') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_9270_sederhana_dan_mudah, id FROM items WHERE type = 'kanji' AND (slug = '474' OR id = '474') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_9270_sederhana_dan_mudah, id FROM items WHERE type = 'kanji' AND (slug = '751' OR id = '751') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_9276_terjadi, id FROM items WHERE type = 'kanji' AND (slug = '850' OR id = '850') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_9281_garis, id FROM items WHERE type = 'kanji' AND (slug = '580' OR id = '580') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_9281_garis, id FROM items WHERE type = 'kanji' AND (slug = '936' OR id = '936') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_9294_untuk_menumpuk, id FROM items WHERE type = 'kanji' AND (slug = '735' OR id = '735') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_9302_perdana_menteri, id FROM items WHERE type = 'kanji' AND (slug = '645' OR id = '645') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_9302_perdana_menteri, id FROM items WHERE type = 'kanji' AND (slug = '730' OR id = '730') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_9368_tanaman_hijau_baru, id FROM items WHERE type = 'kanji' AND (slug = '857' OR id = '857') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_9368_tanaman_hijau_baru, id FROM items WHERE type = 'kanji' AND (slug = '868' OR id = '868') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_9465_kereta, id FROM items WHERE type = 'kanji' AND (slug = '936' OR id = '936') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_9465_kereta, id FROM items WHERE type = 'kanji' AND (slug = '562' OR id = '562') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_9478_untuk_tetap_berteman, id FROM items WHERE type = 'kanji' AND (slug = '652' OR id = '652') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_9478_untuk_tetap_berteman, id FROM items WHERE type = 'kanji' AND (slug = '852' OR id = '852') LIMIT 1;

END $$;
