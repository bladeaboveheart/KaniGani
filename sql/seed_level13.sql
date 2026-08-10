-- ====================================================
-- KaniGani — Seed Data Level 13 (v2, relasional)
-- Auto-generated with Indonesian Slugs
-- ====================================================

DO $$
DECLARE
  -- ============ RADICAL IDs (Level 13) ============
  r_215_udang UUID; r_221_ide UUID; r_222_rahim UUID; r_223_lingkaran UUID; r_225_atap UUID; r_226_rak_buku UUID; r_227_produk UUID; r_230_asli UUID; r_232_jiwa UUID; r_234_tubuh UUID; r_235_buah UUID; r_239_ratus UUID; r_392_bisa UUID; r_8781_menjalar UUID; r_8822_bagus UUID; r_9389_anjing UUID;

  -- ============ KANJI IDs (Level 13) ============
  k_859_masalah UUID; k_860_mengajukan UUID; k_861_membayangkan UUID; k_862_merasa UUID; k_863_mengatur UUID; k_864_gelap UUID; k_865_nama_resmi_ender UUID; k_866_menjembatani UUID; k_868_hijau UUID; k_869_praktik UUID; k_870_puisi UUID; k_871_perak UUID; k_872_topik UUID; k_873_gedung_umum UUID; k_874_stasiun UUID; k_875_seratus_juta UUID; k_876_wadah UUID; k_877_samurai UUID; k_878_biaya UUID; k_879_plang UUID; k_880_membunuh UUID; k_881_alam UUID; k_882_panas UUID; k_883_bagian UUID; k_884_hadiah UUID; k_885_roda UUID; k_886_memilih UUID; k_887_cermin UUID; k_889_mengasuh UUID; k_891_merasa UUID; k_892_meminta_maaf UUID; k_894_ragu UUID; k_895_semua UUID; k_1883_saya UUID; k_1898_bisa UUID;

  -- ============ VOCABULARY IDs (Level 13) ============
  v_2741_konvensi UUID; v_2904_jujur UUID; v_3290_jari_kelingking UUID; v_3292_gaya_barat UUID; v_3312_ramah UUID; v_3394_untuk_tiba UUID; v_3515_peminum UUID; v_3524_membayangkan UUID; v_3527_seratus_juta UUID; v_3528_seratus_juta_yen UUID; v_3529_seratus_juta UUID; v_3530_masalah UUID; v_3531_ragu UUID; v_3532_wadah UUID; v_3533_tangkas UUID; v_3534_alat_musik UUID; v_3535_peralatan_makan UUID; v_3536_pegulat_sumo UUID; v_3537_pekerjaan_rumah UUID; v_3538_shinjuku UUID; v_3539_keadaan UUID; v_3540_perasaan_manusia UUID; v_3541_disayangkan UUID; v_3542_emosi UUID; v_3543_ekspektasi UUID; v_3544_kenangan UUID; v_3545_ideologi UUID; v_3548_pesta_minum UUID; v_3554_untuk_melihat_kembali UUID; v_3568_pada_awalnya UUID; v_3569_untuk_pertama_kalinya UUID; v_3570_kamikaze UUID; v_3571_untuk_membantu UUID; v_3572_tangan_kiri UUID; v_3573_kelas_pe UUID; v_3574_tangan_kanan UUID; v_3576_untuk_memunculkan UUID; v_3577_untuk_mengejar UUID; v_3578_untuk_berjuang UUID; v_3579_untuk_mengejar UUID; v_3580_untuk_memesan UUID; v_3581_sangat_suka UUID; v_3583_untuk_menjadi_longgar UUID; v_3586_untuk_merasakan UUID; v_3590_terima_kasih UUID; v_3592_uang_masuk UUID; v_3593_biaya UUID; v_3596_bioskop UUID; v_3597_gelap UUID; v_3598_pembunuhan UUID; v_3599_hafalan UUID; v_3600_nama_resmi_ender UUID; v_3603_sasaran UUID; v_3604_menjembatani UUID; v_3605_untuk_membunuh UUID; v_3606_pembunuhan UUID; v_3607_bunuh_diri UUID; v_3608_sepenuhnya UUID; v_3609_alami UUID; v_3610_alam UUID; v_3611_gairah UUID; v_3612_demam UUID; v_3613_hal_panas UUID; v_3614_antusiasme UUID; v_3615_setiap_orang UUID; v_3617_hijau UUID; v_3618_hijau UUID; v_3619_praktik UUID; v_3620_puisi UUID; v_3621_penyair UUID; v_3622_puisi UUID; v_3623_manajer_bagian UUID; v_3624_untuk_meminta_maaf UUID; v_3625_hadiah_uang_tunai UUID; v_3626_roda UUID; v_3627_cincin UUID; v_3628_untuk_memilih UUID; v_3629_atlet_pro UUID; v_3630_air_raksa UUID; v_3631_perak UUID; v_3632_perak UUID; v_3633_bank UUID; v_3634_cermin UUID; v_3635_sebanyak_yang_anda_inginkan UUID; v_3636_topik UUID; v_3639_untuk_membina UUID; v_3640_anak_angkat UUID; v_3641_penginapan_jepang UUID; v_3643_stasiun UUID; v_3644_depan_stasiun UUID; v_3645_pegawai_stasiun_kereta_api UUID; v_3646_kepala_stasiun UUID; v_3888_untuk_memanaskan_sesuatu UUID; v_3903_pengaturan UUID; v_4466_memahami UUID; v_4857_untuk_memecahkan UUID; v_4881_penginapan UUID; v_5897_pacar UUID; v_6030_dia UUID; v_6798_saya UUID; v_6800_kami UUID; v_6825_kaleng_bir UUID; v_6899_menjadi_lelah UUID; v_7055_kelelahan UUID; v_7474_hokkaido UUID; v_7495_untuk_memisahkan UUID; v_7496_untuk_berbagi UUID; v_7523_mengumpulkan UUID; v_7537_tashirojima UUID; v_7538_raut_wajah UUID; v_7576_jari_tengah UUID; v_7583_dewi UUID; v_7637_sekolah UUID; v_7694_anggapan UUID; v_7751_raja UUID; v_8667_ibu_jari UUID; v_8705_tuhan UUID; v_8746_ujung_jari UUID; v_8804_seleksi_khusus UUID; v_8943_agar_diterima UUID; v_9009_uranus UUID; v_9245_menjadi_kosong UUID;

BEGIN

  DELETE FROM items WHERE level = 13;

  -- 1. RADICALS
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '尺', 'udang', 13, 1, 'Radikal ini memiliki kepala kecil, perut melengkung, dan antena panjang kurus mencuat dari hidungnya. Tidak salah lagi — makhluk kecil ini adalah <radikal>udang</radikal>!')
    RETURNING id INTO r_215_udang;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '意', 'ide', 13, 2, 'Radikal ini sama dengan kanji. Artinya <radikal>ide</radikal>.')
    RETURNING id INTO r_221_ide;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '坴', 'rahim', 13, 3, 'Kaki muncul di antara dua gumpalan tanah. Ini adalah <radikal>rahim</radikal> versi bumi. Bayangkan seorang bayi mungil yang tumbuh di bawah tanah dan kemudian bertunas, dengan kaki pertama, ke dunia. Bayangkan berada di dalam rahim tanah ini. Ini hangat dan lembab. Anda merasa aman.')
    RETURNING id INTO r_222_rahim;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '丸', 'lingkaran', 13, 4, 'Radikal ini sama dengan kanji. Artinya <radikal>lingkaran</radikal>.

Kalau-kalau Anda tidak ingat ini, inilah arti mnemonik kanji: Apa itu sesuatu yang memiliki sisi <radikal>sembilan</radikal>? Cukup tambahkan <radical>drop</radical> dan Anda akan mendapatkan sesuatu yang hampir berbentuk <kanji>lingkaran</kanji>.')
    RETURNING id INTO r_223_lingkaran;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '亼', 'atap', 13, 5, 'Radikal ini tampak seperti <radikal>atap</radikal>, bukan?')
    RETURNING id INTO r_225_atap;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '冊', 'rak-buku', 13, 6, 'Ini terlihat seperti sekumpulan buku di rak. Ini adalah <radical>rak buku</radical>!')
    RETURNING id INTO r_226_rak_buku;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '品', 'produk', 13, 7, 'Anda melihat tiga kotak bertumpuk rapi. Jika diperiksa lebih dekat, Anda menyadari bahwa ini adalah <radical>produk</radical> dalam kotak yang menunggu untuk dikirim.')
    RETURNING id INTO r_227_produk;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '原', 'asli', 13, 8, 'Lihat tebing dengan potongan putih dan kecil di dalamnya? Itu adalah tebing <radikal>asli</radikal> — kami menyebutnya demikian karena pecahan putih dan kecilnya sebenarnya adalah tulang dan fosil penghuni asli planet kita, yang terkubur di sisi tebing. (Dan yang ini punya tanda besar bertuliskan "ASLI", karena semuanya pasti tempat wisata akhir-akhir ini… huh.)')
    RETURNING id INTO r_230_asli;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '忄', 'jiwa', 13, 9, 'Anda melihat bentuk tipis yang diapit oleh bola api halus. Jangan takut — ini hanyalah <radikal>jiwa</radikal> kecil yang ramah yang sedang dalam perjalanan untuk bereinkarnasi ke dalam tubuh baru.')
    RETURNING id INTO r_232_jiwa;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '身', 'tubuh', 13, 10, 'Radikalnya sama dengan kanji, jadi artinya <radikal>tubuh</radikal>. 

Kalau-kalau Anda perlu penyegaran, inilah mnemoniknya lagi: Saat diri Anda terjatuh dan terkena duri, itu adalah pengingat yang menyakitkan bahwa Anda memiliki tubuh. Kadang-kadang orang berpikir bahwa dirinya hanyalah semacam kesadaran yang mengambang dan tidak berwujud, namun duri yang tertancap di dalam dirinya saat menuruni perosotan akan dengan cepat mengingatkan seseorang akan keberadaan tubuhnya.')
    RETURNING id INTO r_234_tubuh;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '果', 'buah', 13, 11, 'Ada sawah di atas pohon… Secara kiasan, karena pohon tidak menghasilkan padi, mereka menghasilkan <radikal>buah</radikal>! Gunakan imajinasi Anda, dan keempat kotak kecil di atas pohon itu tampak seperti buah-buahan besar dan matang — menunggu untuk dipetik.')
    RETURNING id INTO r_235_buah;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '百', 'ratus', 13, 12, 'Radikal ini sama dengan kanji. Artinya <radikal>seratus</radikal>.')
    RETURNING id INTO r_239_ratus;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '缶', 'bisa', 13, 13, 'Agak sulit untuk melihatnya, tetapi jika Anda melihatnya dengan cara yang benar, ini terlihat seperti <radical>kaleng</radikal> makanan. Lihat tutupnya dibuka di pojok kiri atas? Dan garis horizontal di tengah itu? Itu label kalengnya.')
    RETURNING id INTO r_392_bisa;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '/radicals/creeper.svg', 'menjalar', 13, 14, 'Seseorang tergeletak di tanah dengan mulut terbuka berharap bisa menelan orang yang lewat. Orang ini aneh — benar-benar <radikal>menjalar</radikal>.')
    RETURNING id INTO r_8781_menjalar;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '良', 'bagus', 13, 15, 'Radikal ini sama dengan kanji. Artinya <radikal>baik</radikal>.

Kalau-kalau Anda tidak ingat ini, inilah arti mnemonik kanji: <radikal>setetes</radikal> air ke <radikal>akar</radikal> adalah <kanji>baik</kanji>. Baik bagi akar untuk tumbuh, hidup, dan berkembang. Dan apa yang baik untuk akar juga baik untuk tanaman kita dan kita manusia.')
    RETURNING id INTO r_8822_bagus;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '戌', 'anjing', 13, 16, 'Ini adalah kata radikal untuk <radical>anjing</radikal>, karena terlihat seperti anjing polisi — alias K-9 — yang sedang berpatroli. Anda dapat melihat kepala kecilnya yang bangga di kanan atas, kaki depannya bersilangan saat berjalan, dan rompi polisi berlabel "K-9" diikatkan di tubuhnya. Hati-hati bagi pelaku kejahatan - anjing ini akan mengendus Anda dan membawa Anda ke pengadilan.

Sebagai alternatif, Anda dapat melihat bentuk F di sebelah kiri sebagai seekor anjing ceria dengan kaki belakangnya menari bersama seorang pemabuk, bergandengan tangan saat mereka bergoyang bersama. Sungguh seekor anjing yang bahagia, menari seperti itu bersama orang mabuk.')
    RETURNING id INTO r_9389_anjing;

  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_215_udang, 'Udang', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_221_ide, 'Ide', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_222_rahim, 'Rahim', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_223_lingkaran, 'Lingkaran', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_225_atap, 'Atap', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_226_rak_buku, 'Rak buku', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_227_produk, 'Produk', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_230_asli, 'Asli', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_232_jiwa, 'Jiwa', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_234_tubuh, 'Tubuh', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_235_buah, 'Buah', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_239_ratus, 'Ratus', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_392_bisa, 'Bisa', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_8781_menjalar, 'menjalar', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_8822_bagus, 'Bagus', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_9389_anjing, 'Anjing', true, true);

  -- 2. KANJIS
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '問', 'masalah', 13, 17, 'Jika Anda pertama kali menemui <radical>gerbang</radical> <radical>mulut</radical>, Anda akan mendapat <kanji>masalah</kanji>. Menabrakkan mulutmu ke gerbang akan terasa sakit. Banyak. Masalah yang Anda hadapi sekarang adalah pergi ke rumah sakit dan menjahit mulut Anda kembali. <kanji>Pertanyaannya</kanji> adalah, bagaimana Anda akan pergi ke rumah sakit?', 'Alasan kamu pertama kali berlari ke gerbang ini adalah karena kamu dikejar oleh monster <reading>mon</reading> (もん). Monster itu sendiri sudah menjadi <kanji>masalah</kanji> yang cukup besar, apalagi membenturkan mulutmu ke gerbang. Kamu jiwa yang malang dan malang.')
    RETURNING id INTO k_859_masalah;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '宿', 'mengajukan', 13, 18, '<radikal>Atap</radikal> di mana <radikal>pemimpin</radikal> dapat menampung <radikal>seratus</radikal> rakyatnya berada di <kanji>penginapan</kanji> lokal.', '<kanji>pondok</kanji> <reading>berguncang</reading> (しゅく) saat seratus orang masuk melalui pintu. Itu bergetar, tapi tidak jatuh. Atapnya tetap kokoh di tempatnya, dan semua orang bisa tidur di bawahnya dengan baik.')
    RETURNING id INTO k_860_mengajukan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '想', 'membayangkan', 13, 19, 'Hanya <radical>pohon</radical> dengan <radical>mata</radical> dan <radical>hati</radical> yang memiliki kemampuan untuk <kanji>berimajinasi</kanji> dan <kanji>merenungkan</kanji>. Agar sebatang pohon dapat berimajinasi dan merenungkan berbagai hal, ia memerlukan mata untuk melihat dan hati untuk merasakan.', 'Jika <radical>pohon</radikal> dapat <kanji>berimajinasi</kanji>, kemungkinan besar ia memiliki <reading>jiwa</reading> (そう). Jiwanya yang memungkinkan pohon <kanji>merenungkan</kanji> berbagai hal, paham?')
    RETURNING id INTO k_861_membayangkan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '感', 'merasa', 13, 20, 'Saat <radical>anjing</radikal> menaruh <radikal>mulut</radikal> di <radikal>hati</radikal> Anda, itu adalah <kanji>perasaan</kanji> yang tak terlupakan.', 'Namun secara keseluruhan, ini adalah <kanji>perasaan</kanji> yang bagus — begitu menyenangkan sehingga Anda merasa seperti Jenghis <reading>Khan</reading> (かん)! Dengan anjing yang penuh kasih sayang ini di hati Anda, Anda merasa seperti bisa keluar dan menaklukkan dunia!')
    RETURNING id INTO k_862_merasa;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '整', 'mengatur', 13, 21, '<radical>bundel</radical> di <radical>musim dingin</radical> adalah cara yang <radical>benar</radical> untuk <kanji>menyusun</kanji> berbagai hal. Pastikan Anda <kanji>mengatur</kanji> semuanya sebelum musim dingin tiba, atau semuanya akan terlambat.', 'Namun hal yang paling penting untuk <kanji>diatur</kanji> dan <kanji>diatur</kanji> adalah <reading>sa</reading>bers (せい) Anda. Anda memiliki banyak koleksi pedang yang harus Anda atur sebelum musim dingin tiba.')
    RETURNING id INTO k_863_mengatur;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '暗', 'gelap', 13, 22, 'Jika <radical>matahari</radikal> mulai mengeluarkan <radikal>suara</radikal>, Anda tahu bahwa hari akan menjadi <kanji>gelap</kanji>. Matahari tidak seharusnya mengeluarkan suara, jadi jika Anda dapat mendengarnya, mungkin matahari akan padam atau semacamnya. Setelah hilang, jelas semuanya akan menjadi gelap gulita. Bersiaplah untuk berada dalam kegelapan!', 'Sekarang saat berkeliaran di sekitar rumah Anda dalam <kanji>kegelapan</kanji> Anda mulai merasa lapar, jadi Anda membabi buta mencari makanan dan menggigitnya. sial! Ini adalah <read>an</reading>chovies (あん). Anda bahkan tidak suka ikan teri, bagaimana mereka bisa sampai ke rumah Anda? Hmm… Kekuatan gelap sedang bekerja di sini…')
    RETURNING id INTO k_864_gelap;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '様', 'nama-resmi-ender', 13, 23, 'Di dekat <radical>pohon</radikal>, ada <radikal>domba</radikal> di <radikal>air</radikal> dengan <kanji>nama formal ender</kanji>. Itu berarti semua orang memanggilnya Domba-sama. Tidak ada yang memanggilnya hanya "Domba", karena dia adalah orang yang penting. Dia sebenarnya seperti bangsawan domba. Saat dia tidak berada di istananya, Sheep-sama menikmati bermain air di dekat pepohonan.

Ini juga bisa berarti <kanji>cara</kanji>, seperti cara Anda melakukan sesuatu. Saya kira seseorang dengan nama formal ender memiliki cara berbeda dalam melakukan sesuatu.', 'Domba dengan <kanji>nama resmi ender</kanji> ini hanya suka bermain di luar, di dalam air selama <reading>musim panas</reading> (さま). Musim panas adalah musim terbaik untuk domba mewah ini. Musim-musim lainnya tidak bisa dibandingkan.')
    RETURNING id INTO k_865_nama_resmi_ender;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '橋', 'menjembatani', 13, 24, '<radical>pohon</radical> ini pasti dikirim dari <radical>surga</radical>, karena memiliki <radical>mulut</radical> dan <radical>kumis</radical>. Seperti sejenis pohon surga istimewa yang dapat berbicara. Dan mengapa itu dikirim? Menjadi <kanji>jembatan</kanji>. Untuk menjadi jembatan besar surgawi yang suatu hari nanti kita semua harus lewati.', 'Sebenarnya, untuk menyeberangi <kanji>jembatan</kanji> ini kamu harus memberinya <reading>hash</reading> (はし) coklat. Untuk itulah mulut jembatan itu. Hash browns untuk menyeberangi jembatan surga? Harga kecil yang harus dibayar, sungguh.')
    RETURNING id INTO k_866_menjembatani;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '緑', 'hijau', 13, 25, 'Jika Anda mengikat <radical>benang</radikal> di sekitar <radical>Wolverine</radical> dan mencelupkannya ke dalam <radical>air</radical>, dia akan berubah <kanji>hijau</kanji>, seperti Hulk. Semacam reaksi kimia yang aneh. Tapi aku… aku tidak akan mencobanya jika aku jadi kamu. Anda tidak akan menyukainya ketika dia masih hijau.', 'Saat Wolverine yang sedang memukul-mukul mulai berubah menjadi lebih <kanji>hijau</kanji>, dia berteriak, "BANTU <read>ME DORY</reading> (みどり)!" Aku, Dori? Tidak, bukan kamu. Dia memanggil ikan itu dari Finding Nemo, IP Disney lainnya. "Bantu aku Dory, aku hijau!" Kemudian Dory melompat keluar dari air untuk menggigit benang dan menyelamatkan Wolverine… AKHIR. Memudar menjadi hijau.')
    RETURNING id INTO k_868_hijau;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '練', 'praktik', 13, 26, 'Mengarahkan <radical>utas</radikal> ke <radikal>timur</radikal> adalah hal yang Anda <kanji>latih</kanji> setiap hari. Anda sangat bersemangat dalam mengarahkan benang ke arah timur, jadi pastikan Anda berlatih setiap hari.', 'Anda melakukan semua <kanji>latihan</kanji> ini untuk mencoba dan membeli semua <membaca>ren</reading>tals (れん) Anda. Suatu hari nanti, semua latihan ini akan membayar semua sewa Anda.')
    RETURNING id INTO k_869_praktik;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '詩', 'puisi', 13, 27, 'Apa yang Anda <radikal>ucapkan</radikal> di <radikal>kuil</radikal> adalah sebuah <kanji>puisi</kanji>. Itu harus berupa puisi, karena jika Anda mengatakan hal lain, itu jelas tidak sopan. Semua biksu dan pendeta di kuil ini harus membaca dan melafalkan puisi sepanjang hari, dan jika mereka bisa melakukannya selamanya, Anda bisa melakukannya saat Anda berkunjung.', 'Saat Anda membacakan <kanji>puisi</kanji> panjang di kuil, Anda melihat <reading>shee</reading>p (し) di tengah kerumunan. Ia membuka dan menutup mulutnya seperti ingin mengucapkan puisi juga.')
    RETURNING id INTO k_870_puisi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '銀', 'perak', 13, 28, '<radical>Emas</radical>, pada <radical>akarnya</radical>, terdiri dari <kanji>perak</kanji>. Menggunakan perak sebagai akar koin adalah cara terbaik untuk menghemat emas! Itu sebabnya, sering kali, jika Anda baru saja menggores emas, Anda akan menemukan ada perak yang tersembunyi di bawahnya, pada akarnya.', 'Jika kamu ingin berburu <kanji>perak</kanji> untuk dirimu sendiri, yang kamu butuhkan hanyalah seekor babi <reading>guin</reading>ea (ぎん). Babi Guinea bisa mencium bau perak, jadi ambillah sepasang dan lepaskan di hutan dan mereka akan membawa Anda langsung ke sana.')
    RETURNING id INTO k_871_perak;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '題', 'topik', 13, 29, '<radical>matahari</radikal> menyinari <radikal>rak mantel</radikal> Anda untuk memperlihatkan jaket bermotif <radikal>geoduck</radikal> Anda, yang kemudian menjadi <kanji>topik</kanji> utama di seluruh kota.', 'Setelah beberapa hari, <kanji>topik</kanji> berubah dari desain geoduck yang keren menjadi <reading>pewarna</reading> (だい) yang Anda gunakan untuk mendapatkan warna geoduck yang nyata.')
    RETURNING id INTO k_872_topik;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '館', 'gedung-umum', 13, 30, '<radical>Memakan <radical>atap</radical> adalah <radical>beruang</radical>, karena atapnya adalah <kanji>gedung publik</kanji>. Karena ini bangunan umum beruang diperbolehkan memakan atapnya.', '<kanji>Bangunan umum</kanji> harus menyediakan atapnya untuk makan karena undang-undang yang disahkan oleh <reading>Khan</reading> Jenghis (かん).')
    RETURNING id INTO k_873_gedung_umum;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '駅', 'stasiun', 13, 31, 'Seekor <radikal>kuda</radikal> dan <radikal>udang</radikal> duduk bersebelahan. Mereka berdua berada di <kanji>stasiun</kanji> kereta, menunggu kereta datang dan membawa mereka pulang.', 'Kereta berhenti di <kanji>stasiun</kanji>. Mereka berjalan ke pintu kereta, tapi tidak terbuka. "Mungkin <reading>kunci</reading> (えき) bisa membantu?" tanya kepala stasiun sambil berjalan untuk membuka pintu kereta.')
    RETURNING id INTO k_874_stasiun;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '億', 'seratus-juta', 13, 32, '<radikal>pemimpin</radikal> sekte mempunyai <radikal>ide</radikal> hebat untuk merekrut <kanji>ratusan juta</kanji> anggota baru. Karena dia adalah orang yang memiliki semua ide, dia adalah pemimpin aliran sesat. Idenya adalah memberi setiap anggota baru seekor anak anjing gratis. Dia akan mendapatkan seratus juta anggota baru dalam waktu singkat.', 'Pemimpin sekte ini bermarkas di <read>Ok</reading>lahoma (おく). Apakah ada <kanji>seratus juta</kanji> orang di Oklahoma? Tidak, mungkin tidak. Tapi, hei, pemimpin ini mengincar bintang. Pertama Oklahoma, lalu alam semesta!')
    RETURNING id INTO k_875_seratus_juta;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '器', 'wadah', 13, 33, '<radical>Besar</radikal> <radikal>Produk</radikal> perlu dimasukkan ke dalam <kanji>wadah</kanji> yang besar. Wadah kecil tidak akan cukup. Produk-produk ini berukuran besar dan membutuhkan wadah yang besar untuk menampungnya.', 'Setelah Anda memasukkan produk-produk besar ke dalam <kanji>wadah</kanji>, Anda lalu menguncinya dengan <read>key</reading> (き). Anda tentu tidak ingin produk-produk ini keluar dari wadahnya, jadi sebaiknya kunci produk tersebut dengan kunci.')
    RETURNING id INTO k_876_wadah;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '士', 'samurai', 13, 34, 'Kanji <radikal>samurai</radikal> dan kanji <kanji>samurai</kanji> adalah sama!', '<kanji>samurai</kanji> paling terkenal dalam sejarah Jepang adalah samurai <reading>shee</reading>p (し) yang termasyhur. Dia bukan HANYA seekor domba yang mempelajari cara berpedang, dia akan menggunakan wol dari domba musuh yang dia bunuh untuk membuat baju besinya!')
    RETURNING id INTO k_877_samurai;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '料', 'biaya', 13, 35, 'Anda memiliki <radical>beras</radical> <radical>sendok</radikal> yang khusus digunakan untuk membayar <kanji>biaya</kanji> beras. Tiap sendok sesuatu dikenakan biaya tambahan, jadi saat kamu menggunakan <kanji>bahan</kanji>, ada biaya yang harus kamu bayar untuk bahan itu juga.', 'Suatu hari, sendok <kanji>biaya</kanji> tiba-tiba seukuran <reading>baris</reading> (りょう) dayung perahu! Apa! Anda seharusnya membayar biaya sebesar perahu dayung sekarang?!')
    RETURNING id INTO k_878_biaya;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '標', 'plang', 13, 36, 'Anda melihat <radical>pohon</radical> dengan <radical>helikopter</radical> dan <radical>jackhammer</radical> terikat padanya. Anda melihat lebih dekat, karena ini pemandangan yang aneh, dan menyadari bahwa ada tanda di sini juga. Ini memberitahu Anda untuk berhati-hati terhadap helikopter dan jackhammers di hutan ini. Itu adalah <kanji>papan penunjuk arah</kanji> yang dibuat dengan buruk!', 'Saat Anda melihat <kanji>plang</kanji> yang aneh ini, Anda melihat sebuah tombol. Anda menekannya karena ini akan memberi tahu Anda lebih banyak tentang helikopter dan jackhammer berbahaya ini. Sebaliknya, ia hanya berteriak dengan suara keras yang menjengkelkan: <reading>HEYO</reading> (ひょう)!!')
    RETURNING id INTO k_879_plang;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '殺', 'membunuh', 13, 37, 'Ada <radical>harta</radikal> di <radikal>pohon</radikal> ini jadi kamu keluarkan <radikal>senjata</radikal>mu dan <kanji>bunuh</kanji> itu.', 'Tapi setelah <kanji>membunuh</kanji>, <reading>Satsu</reading>ki (さつ) muncul dan berteriak padamu. Dia menyukai pohon — ingat bagaimana dia melindungi pohon di 札 mnemonik? — jadi Satsuki sangat kesal karena kamu membunuh orang seperti itu.')
    RETURNING id INTO k_880_membunuh;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '然', 'alam', 13, 38, 'Di bawah <radical>bulan</radical> sabit yang tidak berbentuk, <radical>anjing</radical> <radical>mendidih</radical> sebanyak <kanji>alam</kanji> yang dapat ditemukannya.', 'Menghancurkan <kanji>alam</kanji> seperti ini adalah cara anjing mempraktikkan <reading>Zen</reading> (ぜん) Buddhisme. Saat ia menghirup asap dari berbagai bagian alam yang direbus, anjing menjadi sangat tenang dan kedinginan.')
    RETURNING id INTO k_881_alam;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '熱', 'panas', 13, 39, '<radical>rahim</radikal> Anda berputar dalam <radical>lingkaran</radikal> dan mulai <radikal>mendidih</radikal> dengan <kanji>panas</kanji>. Uh oh, menurutku kamu sedang <kanji>demam</kanji>.', '<kanji>panas</kanji> dari <kanji>demam</kanji> Anda membuat bagian dalam, kepala, dan seluruh tubuh Anda berputar dan mendidih, sampai dokter Anda memasang <reading>jaring</reading> (ねつ) di sekitar Anda. Anda memukul-mukul dan mereka tidak bisa menghentikan Anda, jadi mereka harus menangkap Anda dengan serangkaian jaring.')
    RETURNING id INTO k_882_panas;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '課', 'bagian', 13, 40, 'Saya selalu <radikal>mengatakan</radikal> <radikal>buah</radikal> <kanji>bagian</kanji> di toko kelontong harus berada di depan toko. Itu tempat yang sempurna untuk bagian buah-buahan, kataku.', 'Untuk sampai ke bagian <kanji></kanji> buah, Anda harus pergi ke toko. Untuk sampai ke toko Anda harus mengendarai <reading>ca</reading>r (か). Mengendarai mobil adalah cara tercepat untuk sampai ke bagian buah di toko.')
    RETURNING id INTO k_883_bagian;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '賞', 'hadiah', 13, 41, '<radikal>Viking</radikal> membuka <radikal>mulutnya</radikal>, dan di bawahnya, ada <radikal>kerang</radikal> duduk. Ambil kerang itu dan lemparkan ke mulutnya untuk memenangkan <kanji>hadiah</kanji>!', '<kanji>hadiah</kanji> yang dengan susah payah Anda menangkan adalah makan siang dengan <reading>Shou</reading>gun (しょう). Ini adalah hadiah yang cukup besar, mengingat yang Anda lakukan hanyalah menjatuhkan sesuatu.')
    RETURNING id INTO k_884_hadiah;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '輪', 'roda', 13, 42, 'Untuk <radical>mobil</radical> Anda menggunakan <radical>topi</radical>, beberapa <radical>tanah</radical> dan <radical>rak buku</radical> untuk membuat <kanji>roda</kanji> baru. Maksud saya, umumnya berbentuk <kanji>cincin</kanji> dan <kanji>lingkaran</kanji>, hanya perlu berupa <kanji>lingkaran</kanji>, jadi bisa digunakan, bukan?', '<kanji>roda</kanji> Anda... umumnya berbentuk <read>rin</reading>g (りん), jadi itu bagus.')
    RETURNING id INTO k_885_roda;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '選', 'memilih', 13, 43, 'Anda ingin mendapatkan <radical>skuter</radical>, sehingga Anda memiliki satu diri (<radical>diri</radikal>) dan diri lainnya yang bekerja <radikal>bersama</radikal> untuk <kanji>memilih</kanji>. Kedua Anda yang mungil duduk di bahu Anda masing-masing, seperti malaikat dan iblis, dan berdebat tentang skuter mana yang harus Anda pilih.', 'Tiba-tiba Anda terkesiap dan <kanji>memilih</kanji> sebuah skuter di depan Anda yang bentuknya seperti <reading>cen</reading>taur (せん). Skuter ini didesain seperti manusia di bagian atas, jerujinya adalah lengannya, dan bagian bawah dengan jok dan rodanya semuanya kuda. Skuter centaur inilah yang Anda pilih untuk dikendarai.')
    RETURNING id INTO k_886_memilih;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '鏡', 'cermin', 13, 44, '<radical>Emas</radical> menampakkan dirinya ketika Anda <radical>berdiri</radical> dan <radical>melihat</radical> ke dalam <kanji>cermin</kanji> ini. Ya, bahkan kamu terbuat dari emas. Kamu begitu hebat dan berharga, berdiri di depan cermin itu. Tidak sulit untuk melihat, terutama di cermin – Anda adalah emas.', 'Saat Anda melihat ke dalam <kanji>cermin</kanji> Anda berpikir, "<reading>Kaga</reading>… <reading>saya</reading> (かがみ)?" Anda selalu lupa bahwa Anda adalah Ketua Kaga dari acara TV Iron Chef. Itu sebabnya kamu berkata "Kaga… aku?" setiap kali kamu melihat ke cermin.')
    RETURNING id INTO k_887_cermin;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '養', 'mengasuh', 13, 45, '<radical>Domba</radical> <radical>sirip</radical> <radical>baik</radical> untuk anak <kanji>asuh</kanji>. Domba secara genetik telah digabungkan dengan ikan, sehingga domba memiliki sirip (dan mereka kehilangan ekornya — itulah sebabnya bagian ekor dari radikal domba tidak ada dalam kanji ini). Sirip domba ini kaya akan nutrisi sehingga baik untuk membesarkan anak asuh yang besar dan kuat.', 'Cara terbaik untuk <kanji>membina</kanji> hubungan yang lebih baik dengan anak-anak asuh ini adalah dengan memberi mereka <reading>yo</reading>gurt (よう). Mungkin mereka bisa mencelupkan sirip domba ke dalam yogurt untuk membantu menutupi rasa anehnya. Yogurt juga sangat bergizi, sehingga merupakan suplemen yang baik untuk pola makan anak asuh.')
    RETURNING id INTO k_889_mengasuh;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '情', 'merasa', 13, 46, '<radical>jiwa</radikal> Anda <radikal>biru</radikal>. Seperti dalam, itu menyedihkan dan tidak enak badan. Ini karena jiwa Anda berubah warna tergantung pada <kanji>perasaan</kanji> Anda atau <kanji>emosi</kanji> apa yang Anda ekspresikan.', 'Mengapa jiwamu <kanji>merasa</kanji> biru? Karena <reading>Joe</reading> (じょう), buruh tani lokal yang besar, sangat kejam terhadap Anda.')
    RETURNING id INTO k_891_merasa;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '謝', 'meminta-maaf', 13, 47, 'Anda pikir sebaiknya <radical>mengucapkan</radical> <radical>tubuh</radical> <radical>ukuran</radical> semua orang di desa Anda dan sekarang Anda harus <kanji>meminta maaf</kanji>.', 'Kamu diberitahu bahwa kamu harus <kanji>meminta maaf</kanji> oleh <reading>sha</reading>man (しゃ) desa. Pada awalnya kamu bahkan tidak tahu mengapa semua orang memelototimu, tapi dukun itu membawamu ke samping dan menjelaskan. Dan sekarang dia berdiri di belakang Anda dengan tangan disilangkan saat Anda meminta maaf kepada semua orang.')
    RETURNING id INTO k_892_meminta_maaf;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '疑', 'ragu', 13, 48, 'Kamu meraih <radical>sendok</radical> untuk mulai makan, namun <radical>mama</radical>mu malah memberimu <radical>panah</radical> dan menunjuk ke arah <radical>rak mantel</radical>. Hm, bukan seperti itu dia… Tiba-tiba kamu diliputi <kanji>keraguan</kanji>. Apakah ini benar-benar ibumu? Anda meragukannya.', 'Sekarang penuh <kanji>keraguan</kanji>, kamu memutuskan untuk menguji ibumu dengan memasukkannya ke dalam <read>gui</reading>llotine (ぎ). Kedengarannya kasar, tetapi guillotine adalah satu-satunya cara untuk menghilangkan keraguan Anda.')
    RETURNING id INTO k_894_ragu;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '皆', 'semua', 13, 49, 'Jika Anda <radical>membandingkan</radical> cahaya <radical>putih</radical> dengan warna lain, Anda akan menyadari... putih terdiri dari <kanji>semua</kanji> warna dalam satu. Ini berisi semua warna dalam spektrum dalam satu warna. Ini adalah satu-satunya warna yang <kanji>segalanya</kanji>.', 'Anda memutuskan cahaya putih adalah warna tertinggi. Anda memutuskan ingin menerapkannya pada <kanji>semua</kanji> untuk menjadikan semuanya putih. "Ide yang bagus sekali," pikir Anda. Anda mencoba menerapkannya pada segala hal dan Anda hampir berhasil... kecuali, para <reading>penambang</reading> (みな). Mereka terus menjadi kotor saat melakukan semua urusan penambangan mereka. TIDAK, rencanamu hancur!')
    RETURNING id INTO k_895_semua;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '俺', 'saya', 13, 50, '<radical>pemimpin</radikal> <radikal>besar</radikal> <radikal>sawah</radikal> berdiri di tengah-tengah sawah tersebut dengan <radikal>payung</radikal>. Siapa pemimpin aneh ini? Wah, itu adalah <kanji>Saya</kanji>. Itu adalah <kanji>saya</kanji>.', 'Mengapa <kanji>Saya</kanji> berdiri di tengah sawah sambil membawa payung? Saya sedang menggali <reading>ore</reading> (おれ).')
    RETURNING id INTO k_1883_saya;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '缶', 'bisa', 13, 51, 'Kata radikal <radical>can</radical> sama dengan kanji <kanji>can</kanji>. Biasanya ketika kita membicarakan kaleng dengan kanji ini, yang kami maksud adalah <kanji>kaleng</kanji>.', 'Pembacaan <kanji>can</kanji> adalah かん, yang sepertinya sangat mudah. Jika itu belum cukup bagi Anda, bayangkan ini:

Jenghis <reading>Khan</reading> (かん) sedang minum dari kaleng. Dia glug glug glug, terengah-engah, dan menyeka wajahnya. Dia mengulurkan kalengnya, "Khan membuat kaleng," dan mengedipkan mata.')
    RETURNING id INTO k_1898_bisa;

  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_859_masalah, 'Masalah', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_859_masalah, 'Pertanyaan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_860_mengajukan, 'Mengajukan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_861_membayangkan, 'Membayangkan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_861_membayangkan, 'Merenungkan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_862_merasa, 'Merasa', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_863_mengatur, 'Mengatur', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_863_mengatur, 'Mengatur', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_864_gelap, 'Gelap', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_865_nama_resmi_ender, 'Nama Resmi Ender', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_865_nama_resmi_ender, 'Tata krama', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_866_menjembatani, 'Menjembatani', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_868_hijau, 'Hijau', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_869_praktik, 'Praktik', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_870_puisi, 'Puisi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_871_perak, 'Perak', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_872_topik, 'Topik', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_873_gedung_umum, 'Gedung Umum', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_874_stasiun, 'Stasiun', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_874_stasiun, 'Stasiun kereta', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_875_seratus_juta, 'Seratus Juta', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_876_wadah, 'Wadah', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_876_wadah, 'Kapal', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_876_wadah, 'Alat', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_877_samurai, 'Samurai', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_878_biaya, 'Biaya', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_878_biaya, 'Bahan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_879_plang, 'Plang', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_880_membunuh, 'Membunuh', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_881_alam, 'Alam', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_882_panas, 'Panas', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_882_panas, 'Demam', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_883_bagian, 'Bagian', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_884_hadiah, 'Hadiah', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_885_roda, 'Roda', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_885_roda, 'Cincin', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_885_roda, 'Lingkaran', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_885_roda, 'Lingkaran', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_886_memilih, 'Memilih', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_887_cermin, 'Cermin', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_889_mengasuh, 'Mengasuh', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_891_merasa, 'Merasa', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_891_merasa, 'Emosi', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_892_meminta_maaf, 'Meminta maaf', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_894_ragu, 'Ragu', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_895_semua, 'Semua', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_895_semua, 'Setiap orang', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_895_semua, 'Semuanya', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_895_semua, 'Semua orang', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1883_saya, 'SAYA', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1883_saya, 'Aku', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1898_bisa, 'Bisa', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1898_bisa, 'kaleng timah', false, true);

  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_859_masalah, 'もん', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_859_masalah, 'と', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_859_masalah, 'とん', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_860_mengajukan, 'しゅく', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_860_mengajukan, 'やど', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_861_membayangkan, 'そう', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_861_membayangkan, 'そ', 'onyomi', false, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_861_membayangkan, 'おも', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_862_merasa, 'かん', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_863_mengatur, 'せい', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_863_mengatur, 'ととの', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_864_gelap, 'あん', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_864_gelap, 'くら', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_864_gelap, 'くれ', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_865_nama_resmi_ender, 'さま', 'kunyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_865_nama_resmi_ender, 'よう', 'onyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_866_menjembatani, 'はし', 'kunyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_866_menjembatani, 'きょう', 'onyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_868_hijau, 'みどり', 'kunyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_868_hijau, 'りょく', 'onyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_869_praktik, 'れん', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_869_praktik, 'ね', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_870_puisi, 'し', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_870_puisi, 'うた', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_871_perak, 'ぎん', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_872_topik, 'だい', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_873_gedung_umum, 'かん', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_874_stasiun, 'えき', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_875_seratus_juta, 'おく', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_876_wadah, 'き', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_876_wadah, 'うつわ', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_877_samurai, 'し', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_877_samurai, 'さむらい', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_878_biaya, 'りょう', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_879_plang, 'ひょう', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_879_plang, 'しるし', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_880_membunuh, 'さつ', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_880_membunuh, 'さい', 'onyomi', false, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_880_membunuh, 'ころ', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_881_alam, 'ぜん', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_881_alam, 'ねん', 'onyomi', false, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_881_alam, 'しか', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_881_alam, 'さ', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_882_panas, 'ねつ', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_882_panas, 'あつ', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_883_bagian, 'か', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_884_hadiah, 'しょう', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_885_roda, 'りん', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_885_roda, 'わ', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_886_memilih, 'せん', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_886_memilih, 'えら', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_887_cermin, 'かがみ', 'kunyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_887_cermin, 'きょう', 'onyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_889_mengasuh, 'よう', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_889_mengasuh, 'やしな', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_891_merasa, 'じょう', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_891_merasa, 'なさ', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_892_meminta_maaf, 'しゃ', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_892_meminta_maaf, 'あやま', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_894_ragu, 'ぎ', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_894_ragu, 'うたが', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_895_semua, 'みな', 'kunyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_895_semua, 'みんな', 'kunyomi', false, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_895_semua, 'かい', 'onyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1883_saya, 'おれ', 'kunyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1898_bisa, 'かん', 'onyomi', true, true);

  -- 3. VOCABULARIES
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '大会', 'konvensi', 13, 52, 'Saat Anda mengadakan <kanji>besar</kanji> <kanji>pertemuan</kanji>, ada banyak orang yang berkumpul. Mengapa Anda mengumpulkan banyak orang? Mungkin untuk <vocabulary>konvensi</vocabulary> atau semacam <vocabulary>turnamen</vocabulary> atau <vocabulary>event</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Karena 大 mempunyai dua pembacaan on''yomi, berikut adalah mnemonik untuk membantu Anda mengingat mana yang harus digunakan:

Tahukah Anda bahwa Jepang mempunyai seluruh <vocabulary>convention</vocabulary> tentang <reading>tie</reading> <reading>kay</reading>aking (たいかい)? Mereka rutin mengadakan <vocabulary>turnamen</vocabulary> di mana mereka bermain kayak hanya dengan menggunakan dasi! Kedengarannya cukup melelahkan...', 'Konvensi, Turnamen, Peristiwa')
    RETURNING id INTO v_2741_konvensi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '正直', 'jujur', 13, 53, 'Mengatakan sesuatu yang <kanji>langsung</kanji> di depan wajah orang lain selalu <kanji>benar</kanji>. Ini disebut <vocabulary>jujur</vocabulary>. Apakah Anda orang yang jujur?', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Baik 正 maupun 直 memiliki beberapa bacaan on''yomi, dan Anda belum mempelajari bacaan 直 ini, jadi inilah mnemonik yang dapat membantu Anda:

<vocabulary>jujur</vocabulary> sepenuhnya, suara teraneh apa yang pernah kamu dengar? Pistol <reading>Shou</reading> (しょう) berbunyi "<reading>jiki</reading> jiki (じき)"?! <vocabulary>Sejujurnya</vocabulary>, kedengarannya sangat aneh... Mungkin itu semacam seruan perang samurai baru?', 'Jujur, Sejujurnya')
    RETURNING id INTO v_2904_jujur;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '小指', 'jari-kelingking', 13, 54, '<kanji>jari</kanji> kecil</kanji> adalah <vocabulary>jari kelingking</vocabulary> atau <vocabulary>jari kelingking</vocabulary> Anda. Masuk akal, tapi ini juga digunakan untuk jari kelingking kaki Anda. Anda tahu, <kosakata>jari kelingking</vocabulary> Anda.', 'Kata ini menggunakan bacaan kun''yomi dari kedua kanji tersebut, mungkin karena mengandung bagian tubuh. Anda sudah mengenal keduanya, jadi sekarang Anda juga mengetahuinya!', 'Jari kelingking, Jari Kelingking, kelingking, Kelingking kaki, Jari Kelingking')
    RETURNING id INTO v_3290_jari_kelingking;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '洋風', 'gaya-barat', 13, 55, 'Ingat bagaimana 風 bisa berarti "gaya" seperti dalam 和風? Nah, ini sekarang adalah <kanji>Gaya Barat</kanji> <kanji>gaya</kanji>, lebih sederhananya disebut sebagai <vocabulary>Gaya Barat</vocabulary>.

洋風 digunakan untuk menggambarkan sesuatu dengan tampilan atau pengaruh Barat, seperti 洋風の部屋 (ruangan bergaya Barat) atau 洋風スープ (sup gaya Barat).', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Gaya Barat')
    RETURNING id INTO v_3292_gaya_barat;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '仲良く', 'ramah', 13, 56, 'Jika <kanji>hubungan</kanji> <kanji>baik</kanji>, itu berarti Anda <vocabulary>ramah</vocabulary> dengan orang tersebut. Anda juga <vocabulary>hubungan baik</vocabulary>.', 'Bacaannya kun''yomi, tapi itu bacaan yang sudah kamu pelajari, jadi semoga hubungan kita tetap baik ya?', 'Ramah, Ketentuan yang Baik')
    RETURNING id INTO v_3312_ramah;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '着く', 'untuk-tiba', 13, 57, 'Kata ini terdiri dari kanji dengan hiragana ditempelkan. Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Ingat bagaimana 着 juga bisa berarti <kanji>tiba</kanji>? Ini adalah versi kata kerja dari arti tersebut, jadi artinya <kosa kata>tiba</vocabulary>.', 'Ini menggunakan bacaan kun''yomi yang berbeda dari yang baru saja Anda pelajari, namun 着く (つく) memiliki bacaan yang sama dengan 付く (untuk dilampirkan). Karena ketika Anda tiba di suatu tempat, Anda seperti akhirnya <em>terikat</em> pada tujuan Anda.

Jika koneksi tersebut tidak cukup, berikut mnemonik lainnya:

Anda ingin <vocabulary>tiba</vocabulary> tepat waktu tetapi Anda datang terlambat. Seberapa terlambat kamu? <reading>Tepatnya terlambat dua</reading> (つ) jam dua menit.', 'Untuk Tiba')
    RETURNING id INTO v_3394_untuk_tiba;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '酒好き', 'peminum', 13, 58, 'Kami punya <kanji>alkohol</kanji> dan 好き (suka). Jika Anda sangat menyukai alkohol, kemungkinan besar Anda adalah seorang <vocabulary>peminum</vocabulary>, atau setidaknya <vocabulary>pencinta alkohol</vocabulary>.

酒好き secara harfiah berarti "seseorang yang menyukai alkohol", dan meskipun mereka mungkin minum banyak, fokusnya adalah pada kesenangan mereka, bukan berlebihan. Dibandingkan dengan 酒飲み, ini terdengar lebih ramah dan kurang kritis, terutama jika Anda menambahkan お yang sopan, seperti dalam お酒好き.', 'Kata ini menggunakan bacaan kun''yomi, seperti yang mungkin bisa Anda tebak dari hiragana yang mencuat di akhir. Kamu seharusnya sudah mengetahui bacaannya sebagai kata yang terpisah (dari お酒 dan 好き), artinya yang perlu kamu perhatikan hanyalah rendaku: すき berubah menjadi ずき.', 'Peminum, Pencinta Alkohol')
    RETURNING id INTO v_3515_peminum;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '想像する', 'membayangkan', 13, 59, '<kanji>membayangkan</kanji> semacam <kanji>gambar</kanji> dalam pikiran Anda berarti <vocabulary>membayangkan</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Membayangkan')
    RETURNING id INTO v_3524_membayangkan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '一億', 'seratus-juta', 13, 60, '<kanji>Satu</kanji> <kanji>seratus juta</kanji> adalah <vocabulary>seratus juta</vocabulary>. Itu banyak sekali angka nolnya.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Seratus Juta')
    RETURNING id INTO v_3527_seratus_juta;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '一億円', 'seratus-juta-yen', 13, 61, '<kanji>Satu</kanji> <kanji>seratus juta</kanji> <kanji>yen</kanji>! Sangat kaya! Anda memiliki <vocabulary>seratus juta yen</vocabulary>!', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Seratus Juta Yen')
    RETURNING id INTO v_3528_seratus_juta_yen;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '億', 'seratus-juta', 13, 62, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.', 'Pembacaannya sama dengan yang Anda pelajari dengan kanji, mungkin karena biasanya ditempelkan pada angka lain untuk menandakan berapa ratus juta ____ yang ada.', 'Seratus Juta')
    RETURNING id INTO v_3529_seratus_juta;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '問題', 'masalah', 13, 63, '<kanji>masalah</kanji> <kanji>topik</kanji> adalah <vocabulary>masalah</vocabulary> atau <vocabulary>pertanyaan</vocabulary> yang harus Anda jawab. Kalau dipikir-pikir, topik sebagai masalah cenderung berhubungan dengan sekolah. Jadi, ketika harus menjawab soal di sekolah, itulah 問題.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Masalah, Pertanyaan')
    RETURNING id INTO v_3530_masalah;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '疑問', 'ragu', 13, 64, '<kanji>keraguan</kanji> <kanji>masalah</kanji> disebabkan oleh terlalu banyak <vocabulary>keraguan</vocabulary>. Pikirkan saja. Jangan meragukan diri sendiri, itu sebabnya Anda salah mengartikan kata-kata itu! :P', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Ragu, Pertanyaan')
    RETURNING id INTO v_3531_ragu;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '器', 'wadah', 13, 65, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna. 

器 mengacu pada <vocabulary>wadah</vocabulary> atau <vocabulary>mangkuk</vocabulary> dan sering digunakan dalam konteks kuliner. Kata ini juga dapat digunakan secara metaforis untuk menggambarkan <vocabulary>kapasitas</vocabulary> seseorang terhadap hal-hal tertentu. Misalnya, ketika seseorang memiliki 器 yang kecil, itu berarti mereka memiliki kapasitas yang terbatas untuk menangani tekanan, stres, atau kesulitan.', 'Karena kata ini terdiri dari satu kanji, maka sebaiknya menggunakan bacaan kun''yomi. Saat mempelajari kanji, Anda tidak mempelajari bacaan tersebut, jadi inilah mnemonik untuk membantu Anda dengan kata ini:

Anda memiliki <vocabulary>wadah</vocabulary> ini. Bentuknya terbalik dengan tongkat yang menahannya dan ada tali pada tongkatnya. Anda akan menangkap beberapa U2 (seperti, band). Anda menaruh makanan di bawahnya dan menunggu. Kemudian, dari semak-semak muncullah Bono. Dia mengendus-endus sebentar lalu masuk ke bawah wadah. Anda menarik! <read>U2 masuk (うつわ) tepat ke dalam jebakan! Ha ha!', 'Wadah, Mangkuk, Kapasitas')
    RETURNING id INTO v_3532_wadah;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '器用', 'tangkas', 13, 66, '<kanji>Tugas</kanji> Anda adalah membuka <kanji>wadah</kanji> acar ini. Kenapa kamu? Karena kamu sangat <vocabulary>cekatan</vocabulary> dan <vocabulary>terampil</vocabulary> dalam hal membuka acar.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Tangkas, Mahir')
    RETURNING id INTO v_3533_tangkas;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '楽器', 'alat-musik', 13, 67, 'Ingat bagaimana 楽 digunakan dalam 音楽 dan berarti "musik"? Nah ini dia 楽 lagi. <kanji>musik</kanji> <kanji>wadah</kanji> adalah sesuatu yang dapat menghasilkan musik. Ini adalah <vocabulary>alat musik</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. 

Anda telah mempelajari bacaan 器 dengan kanji, dan 楽 menggunakan bacaan "musik" sekunder yang Anda pelajari dengan 音楽. Ingatlah bahwa がく disingkat menjadi がっ.', 'Alat musik')
    RETURNING id INTO v_3534_alat_musik;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '食器', 'peralatan-makan', 13, 68, '<kanji>wadah</kanji>makan</kanji>Anda mengacu pada <vocabulary>peralatan makan</vocabulary>, termasuk <vocabulary>peralatan makan</vocabulary>, seperti pisau, garpu, sendok, dan sumpit, serta <vocabulary>peralatan makan</vocabulary>, seperti piring, mangkuk, dan tatakan. Pada dasarnya, itu adalah bahan yang Anda gunakan untuk memakan makanan Anda.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya. Pastikan untuk mencatat しょく yang disingkat.', 'Peralatan makan, Peralatan Makan, Peralatan Penyajian')
    RETURNING id INTO v_3535_peralatan_makan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '力士', 'pegulat-sumo', 13, 69, '<kanji>kekuatan</kanji> <kanji>samurai</kanji> bukanlah seorang samurai sama sekali. Lagipula, seorang Samurai mengutamakan presisi. Jadi, bayangkan seseorang yang memiliki massa otot (dan lemak) yang sangat besar. Prajurit Jepang ini sangat mementingkan kekuatan... menabrak orang sekuat yang mereka bisa untuk menjatuhkan mereka. Orang ini adalah <vocabulary>pegulat sumo</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Pegulat Sumo')
    RETURNING id INTO v_3536_pegulat_sumo;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '宿題', 'pekerjaan-rumah', 13, 70, '<kanji>penginapan</kanji> yang Anda tinggali memiliki <kanji>topik</kanji> di sekitarnya. Anggap saja sebagai sebuah tema. Tema ini mengerjakan <vocabulary>pekerjaan rumah</vocabulary> Anda. Jadi ya, Anda baru saja pergi ke penginapan yang bagus untuk berlibur hanya untuk mengerjakan pekerjaan rumah kemana-mana.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Pekerjaan rumah')
    RETURNING id INTO v_3537_pekerjaan_rumah;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '新宿', 'shinjuku', 13, 71, 'Area <kanji>baru</kanji> <kanji>penginapan</kanji> adalah <vocabulary>Shinjuku</vocabulary>, sebuah distrik populer di Tokyo. Mungkin ada banyak tempat menginap di Shinjuku. Apa pun itu, Anda harus mengunjunginya, itu menyenangkan! Akan sangat membantu jika Anda juga pernah mendengar tentang Shinjuku sebelumnya. Lakukan riset tentang Shinjuku jika Anda belum pernah mendengarnya.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya. Berhati-hatilah agar しゅく berubah menjadi じゅく. Sekali lagi, akan membantu jika Anda pernah mendengar tentang Shinjuku.', 'Shinjuku')
    RETURNING id INTO v_3538_shinjuku;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '事情', 'keadaan', 13, 72, '<kanji>Kejadian</kanji> dan <kanji>perasaan</kanji> membentuk <vocabulary>keadaan</vocabulary> Anda. 

事情 digunakan untuk menggambarkan <vocabulary>alasan</vocabulary> atau <vocabulary>situasi</vocabulary> di balik suatu peristiwa atau tindakan tertentu. Misalnya, jika Anda tidak bisa pergi ke pesta, Anda bisa menjelaskan perasaan Anda dengan mengatakan ada sesuatu yang terjadi atau Anda sedang tidak enak badan. Dan jika rekan kerja Anda sedang mengandung, Anda dapat mempertimbangkannya sebagai pendamping dan membantu mengurangi beban kerjanya.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Keadaan, Alasan, Situasi')
    RETURNING id INTO v_3539_keadaan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '人情', 'perasaan-manusia', 13, 73, '<kanji>Orang</kanji> <kanji>perasaan</kanji> adalah <vocabulary>perasaan manusia</vocabulary> yang dimiliki setiap orang. Itu adalah <vocabulary>kemanusiaan</vocabulary> dan <vocabulary>kebaikan</vocabulary> yang Anda rasakan terhadap orang lain. 

人情 sering digunakan dalam literatur untuk menggambarkan kehangatan yang ditemukan dalam interaksi manusia dan ikatan tulus yang mereka ciptakan. Secara harfiah berarti emosi alami manusia, tetapi sebenarnya ini tentang kebaikan, kasih sayang, dan empati yang ditunjukkan orang terhadap satu sama lain.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Perasaan Manusia, Kemanusiaan, Kebaikan')
    RETURNING id INTO v_3540_perasaan_manusia;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '情け', 'disayangkan', 13, 74, 'Anda mempunyai <kanji>perasaan</kanji>... ini adalah perasaan yang dimiliki manusia. Saat kamu meminta seseorang untuk mempunyai perasaan (Punya perasaan, <read>KAY</reading>?? (け di akhir)), kamu meminta mereka untuk <vocabulary>mengasihani</vocabulary> atau <vocabulary>merasa kasihan</vocabulary> pada kamu. Silakan! Miliki perasaan manusiawi yang dimiliki orang lain, seperti <vocabulary>simpati</vocabulary> atau <vocabulary>kasihan</vocabulary>. Jangan bunuh aku, kawan!', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi. Anda tidak belajar membaca dengan kanji ini, jadi inilah mnemonik untuk membantu Anda: Siapa yang Anda mohon untuk mengasihani Anda? Ini adalah <read>NASA</reading>. Mereka menempatkan Anda di luar stasiun luar angkasa dan mereka akan mendorong Anda menuju bumi dan Anda akan terbakar di atmosfer. Anda tidak menginginkan hal itu, jadi mohon maaf kepada pengontrol misi. Apa yang akan mereka lakukan? Anda yang memutuskan.', 'Disayangkan, Simpati, Belas kasihan, Kasih sayang')
    RETURNING id INTO v_3541_disayangkan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '感情', 'emosi', 13, 75, '<kanji>Perasaan</kanji>, dan lebih banyak lagi <kanji>perasaan</kanji>… Anda penuh dengan <vocabulary>emosi</vocabulary>! (Tidak mengherankan, ini juga bisa berarti <vocabulary>perasaan</vocabulary>.)

感情 adalah kata yang lebih formal dan terdengar objektif untuk emosi manusia — hal-hal seperti kegembiraan, kemarahan, kesedihan, ketakutan. Dibandingkan dengan 気持ち, ini terasa kurang pribadi dan lebih seperti Anda berbicara tentang emosi sebagai suatu kategori atau keadaan.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Emosi, Merasa')
    RETURNING id INTO v_3542_emosi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '予想', 'ekspektasi', 13, 76, 'Jika Anda mempertimbangkan masa depan <kanji>sebelumnya</kanji> dan <kanji>membayangkan</kanji> bagaimana segala sesuatunya akan terjadi (berdasarkan beberapa fakta), Anda akan memiliki <vocabulary>ekspektasi</vocabulary> atau <vocabulary>prediksi</vocabulary> yang terinformasi mengenai hal tersebut.

予想 mengacu pada ekspektasi atau prediksi tentang masa depan berdasarkan informasi atau tren terkini, seperti memprediksi kandidat mana yang akan memenangkan pemilu mendatang atau memperkirakan kondisi ekonomi di masa depan.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Ekspektasi, Ramalan')
    RETURNING id INTO v_3543_ekspektasi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '回想', 'kenangan', 13, 77, 'Peristiwa masa lalu <kanji>berputar</kanji> di sekitar pikiran Anda saat Anda <kanji>membayangkannya</kanji>. Itulah <vocabulary>reminiscence</vocabulary> atau <vocabulary>kenangan</vocabulary> pada masa-masa itu.

回想 mengacu pada kenang-kenangan atau ingatan akan pengalaman atau peristiwa masa lalu. Kata ini sering digunakan untuk mendeskripsikan adegan kilas balik dalam film atau drama, serta momen dalam sastra di mana karakter mengingat kembali masa lalunya.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Kenangan, Ingatan')
    RETURNING id INTO v_3544_kenangan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '思想', 'ideologi', 13, 78, 'Saat Anda <kanji>berpikir</kanji> dan <kanji>merenungkan</kanji> secara mendalam, Anda menghasilkan sesuatu yang lebih besar, seperti <vocabulary>ideologi</vocabulary>. Ini berarti memiliki sekelompok, atau satu <vocabulary>pikiran</vocabulary> atau <vocabulary>ide</vocabulary>(s) yang lebih besar.

思想 mengacu pada gagasan atau keyakinan besar yang dianut seseorang tentang dunia dan kehidupan. Kata ini sering digunakan untuk membicarakan pemikiran seseorang tentang filsafat, politik, agama, atau kepercayaan sejenis lainnya.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Anda belum mempelajari on''yomi untuk 思, jadi inilah mnemonik untuk membantu Anda:

Semua <vocabulary>pikiran</vocabulary> dan <vocabulary>ide</vocabulary> Anda saat ini adalah tentang <reading>shee</reading>p (し). Anda tidak bisa berhenti memikirkan domba. Apakah Anda sedang memikirkan domba saat ini? Domba macam apa mereka?', 'Ideologi, Pikiran, Ide')
    RETURNING id INTO v_3545_ideologi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '飲み会', 'pesta-minum', 13, 79, 'Anda tahu bahwa 飲む adalah minuman, jadi ini ada hubungannya dengan <kanji>minum</kanji>ing. Selain itu, 会 juga berarti <kanji>bertemu</kanji>, jadi ketika Anda bertemu untuk minum, Anda berkumpul dengan orang lain untuk minum. Ini adalah <vocabulary>pesta minum</vocabulary>!', 'Bacaannya berasal dari kosakata 飲む dan bacaan kanji biasa untuk 会. Semoga Anda sekarang sudah mengetahui keduanya sehingga bisa menerapkannya dalam bacaan kata ini juga!', 'Pesta Minum')
    RETURNING id INTO v_3548_pesta_minum;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '見返る', 'untuk-melihat-kembali', 13, 80, '<kanji>melihat</kanji>Anda adalah <kanji>mengembalikan</kanji>pada sesuatu. Kata kerja ini dapat bersifat transitif dan intransitif. Kalau bersifat transitif, artinya <vocabulary>melihat kembali</vocabulary>, dalam artian melihat kembali seseorang yang ada di belakang Anda, atau melihat kembali masa lalu Anda. Jika bersifat intransitif, artinya <vocabulary>melihat ke belakang</vocabulary>, dalam arti melihat dari balik bahu Anda.', 'Bacaannya hanya 見 dan vocab kata 返る, digabung menjadi satu. Selama Anda mengetahui keduanya, Anda harus bisa menggabungkannya ke dalam bacaan kata ini.', 'Untuk Melihat Kembali, Untuk Melihat Kembali, Untuk Melihat Kembali')
    RETURNING id INTO v_3554_untuk_melihat_kembali;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '初めに', 'pada-awalnya', 13, 81, 'Anda tahu 初 berarti <kanji>pertama</kanji>, dan に dapat menandai suatu titik waktu. Jadi 初めに berarti <vocabulary>di awal</vocabulary> atau <vocabulary>di awal</vocabulary>. 

初めに mempunyai banyak tumpang tindih dengan 始めに. Namun meskipun 始めに adalah awal dari suatu proses yang lebih besar, 初めに lebih mengacu pada melakukan sesuatu terlebih dahulu atau pada titik awal dalam jangka waktu tertentu. Anda bisa mengatakan 初めにアクビをしたのは私です (Saya yang pertama kali menguap), misalnya, atau 今年の初めに (di awal tahun ini).', 'Kata ini menggunakan kun''yomi, yang tidak Anda pelajari dengan kanji, jadi inilah mnemonik untuk membantu Anda. Apa yang kamu mulai? Anda memulai <reading>Haji</reading> (はじ). (Haji adalah rukun Islam yang kelima, dan merupakan ibadah haji ke Mekkah pada bulan Dhu al-Hijja).', 'Pada awalnya, Pada awalnya')
    RETURNING id INTO v_3568_pada_awalnya;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '初めて', 'untuk-pertama-kalinya', 13, 82, 'Anda tahu bahwa 初 berarti "pertama" Kata ini berarti <vocabulary>untuk pertama kalinya</vocabulary>. Bayangkan めて sebagai "bertemu". Kemudian pikirkan "saat kita bertemu <vocabulary>untuk pertama kalinya</vocabulary> ____ terjadi."', 'Kata ini menggunakan kun''yomi, yang tidak Anda pelajari dengan kanji, jadi inilah mnemonik untuk membantu Anda. Apa yang kamu mulai? Anda memulai <reading>Haji</reading> (はじ). (Haji adalah rukun Islam yang kelima, dan merupakan ibadah haji ke Mekkah pada bulan Dhu al-Hijja).', 'Untuk Pertama Kalinya, Pertama kali')
    RETURNING id INTO v_3569_untuk_pertama_kalinya;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '神風', 'kamikaze', 13, 83, '<kanji>Angin</kanji> dari <kanji>dewa</kanji>. Ini adalah <vocabulary>angin ilahi</vocabulary>. Yang lebih populer adalah kata yang dikenal sebagai <vocabulary>kamikaze</vocabulary>, yang dikenal karena pilot kamikaze selama Perang Dunia II. Ini digunakan sebelum Perang Dunia II, ketika seluruh armada Mongol dihancurkan oleh badai, sehingga mencegah invasi ke Jepang. Betapa beruntungnya.', 'Bacaannya merupakan bacaan kun''yomi untuk keduanya, mungkin karena ini adalah dua kata yang dirangkai menjadi satu. Semoga anda mengetahui bacaan 風 dari level sebelumnya. Sekarang yang perlu Anda lakukan hanyalah menerapkan pengetahuan Anda tentang kata 神 untuk bisa membaca sisanya.', 'Kamikaze, Angin Ilahi')
    RETURNING id INTO v_3570_kamikaze;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '手伝う', 'untuk-membantu', 13, 84, 'Saat Anda <kanji>mentransmisikan</kanji> <kanji>tangan</kanji> Anda kepada sesuatu atau seseorang, Anda mengulurkan <vocabulary>tangan Anda untuk membantu</vocabulary> mereka atau <vocabulary>untuk membantu</vocabulary> mereka.', 'Keduanya adalah bacaan kun''yomi yang sudah kamu pelajari! Masalahnya, た dari つた 伝 berubah menjadi だ entah kenapa. Mungkin Anda bisa meminta seseorang <vocabulary>untuk membantu</vocabulary> Anda untuk memahami perubahan bacaan bodoh ini.', 'Untuk Membantu, Untuk Membantu, Untuk Meminjamkan Tangan')
    RETURNING id INTO v_3571_untuk_membantu;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '左利き', 'tangan-kiri', 13, 85, 'Jika Anda <kanji>mendapatkan keuntungan</kanji> dari <kanji>kiri</kanji>, Anda mungkin melakukan segalanya di sebelah kiri. Itu sisi baikmu. Anda mungkin <vocabulary>kidal</vocabulary>.', 'Bacaannya merupakan bacaan kosakata kun''yomi, jadi gabungkan bacaan kata 左 dan 利く menjadi satu untuk mendapatkan bacaan yang satu ini. Masuk akal karena kata ini seperti dua kata yang disatukan.', 'Tangan Kiri')
    RETURNING id INTO v_3572_tangan_kiri;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '体育', 'kelas-pe', 13, 86, 'Ingat bagaimana 教育 berarti "pendidikan?" Ya, 育 di sini mengacu pada kata pendidikan, tapi kali ini adalah pendidikan <kanji>tubuh</kanji>. Apa yang disebut dengan pendidikan tubuh di sekolah? <vocabulary>Pendidikan jasmani</vocabulary> atau <vocabulary>PE</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Kelas PE, PE, Pendidikan Jasmani, Kelas Olahraga')
    RETURNING id INTO v_3573_kelas_pe;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '右利き', 'tangan-kanan', 13, 87, 'Sisi <kanji>kanji</kanji> dari tubuh Anda adalah sisi yang <kanji>mendapatkan keuntungan</kanji> paling banyak. Jadi, Anda lebih sering menggunakannya. Itu karena Anda <vocabulary>tidak kidal</vocabulary>.', 'Kedua kanji tersebut menggunakan bacaan vocab kun''yomi. Jadi, pikirkan kata 右 dan 利く untuk mempelajari cara membaca yang satu ini. Mungkin bunyinya seperti ini karena dua kata terpisah bersatu (kanan + tangan) dan bukan satu kata.', 'Tangan Kanan')
    RETURNING id INTO v_3574_tangan_kanan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '育てる', 'untuk-memunculkan', 13, 88, 'Ini mirip dengan 育つ, hanya saja sekarang Anda membesarkan seseorang. Kata ini berarti <vocabulary>memunculkan</vocabulary> atau <vocabulary>meningkatkan</vocabulary>. Anda dapat mengingat ini karena てる. Versi Anda dalam membesarkan anak melibatkan <reading>menyobek</reading>ing (てる) semua pakaian mereka untuk membuat mereka terlihat miskin sehingga mereka bisa mendapatkan makan siang yang lebih murah di sekolah. Anda kaya karena semua keringanan pajak yang Anda peroleh dari semua anak yang Anda besarkan, namun Anda selalu dapat menggunakan lebih banyak uang untuk memicu kecanduan StarCraft Anda (kita semua pernah mengalaminya).', 'Bacaannya berasal dari 育つ. Selama Anda mengetahuinya, Anda juga tahu cara membacanya.', 'Untuk Memunculkan, Untuk Meningkatkan, Untuk Berkultivasi')
    RETURNING id INTO v_3576_untuk_memunculkan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '追い付く', 'untuk-mengejar', 13, 89, '<kanji>mengikuti</kanji> lalu <kanji>melampirkan</kanji> diri Anda kepada siapa pun yang Anda ikuti berarti <vocabulary>mengejar</vocabulary> seseorang.', 'Bacaannya adalah yang Anda pelajari dengan kanji, tetapi Anda juga dapat memperhatikan bahwa kata ini mencakup gabungan 追う dan 付く.', 'Untuk Mengejar, Untuk Menyalip, Untuk Mengikuti')
    RETURNING id INTO v_3577_untuk_mengejar;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '戦う', 'untuk-berjuang', 13, 90, 'Ini adalah versi kata kerja dari kosakata <vocabulary>戦い</vocabulary>, yang saya harap Anda pelajari sebelumnya. Versi kata kerjanya tentu saja berarti <vocabulary>tofight</vocabulary> atau <vocabulary>to battle</vocabulary>.', 'Bacaannya berasal dari 戦い sebuah kata yang mudah-mudahan sudah Anda lihat sekarang. Kaitkan kata-kata ini dalam pikiran Anda dan Anda akan dapat membacanya selama Anda mengetahui kata lainnya.', 'Untuk Berjuang, Untuk Bertempur, Untuk Memerangi')
    RETURNING id INTO v_3578_untuk_berjuang;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '追いかける', 'untuk-mengejar', 13, 91, '追う berarti "mengikuti" atau "mengejar" dan かける dalam hal ini berarti "berlari", jadi kata ini berarti <vocabulary>mengejar</vocabulary>, <vocabulary>mengejar</vocabulary>, atau <vocabulary>mengejar</vocabulary> seseorang atau sesuatu.', 'Bacaannya berasal dari 追う dan juga bacaan kanji yang Anda pelajari juga.', 'Untuk Mengejar, Untuk Mengejar, Untuk Mengejar, Untuk Mengikuti')
    RETURNING id INTO v_3579_untuk_mengejar;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '注文する', 'untuk-memesan', 13, 92, 'Anda mungkin pernah melihat kata 注文 (pesanan, permintaan). Ini hanya versi kata kerjanya: <vocabulary>to order</vocabulary> / <vocabulary>to request</vocabulary>.', 'Ini hanya 注文 dengan する ditampar di akhir, jadi kamu harusnya sudah tahu cara membacanya. Jika Anda lupa bacaan 文 mana yang harus digunakan, ingatlah bagaimana Anda akan <vocabulary>memesan</vocabulary> sebuah <reading>mon</reading>ster (もん) secara online dan mengirimkannya langsung ke rumah Anda.', 'Untuk Memesan, Untuk Meminta')
    RETURNING id INTO v_3580_untuk_memesan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '大好き', 'sangat-suka', 13, 93, 'Mudah-mudahan Anda sudah melihat 好き sekarang, yaitu "menyukai". Jadi, apa jadinya kalau kamu punya like 大 (besar)? Anda <vocabulary>sangat menyukai</vocabulary>, <vocabulary>sangat menyukai</vocabulary>, atau <vocabulary>menyukai</vocabulary> sesuatu.

Ini sama dengan 好き dimana terjemahan yang lebih literal adalah <vocabulary>lovable</vocabulary>, tetapi umumnya diterjemahkan sebagai kata kerja dalam bahasa Inggris.', 'Bacaannya berasal dari 好き yang mudah-mudahan Anda lihat. Lalu, 大 adalah bacaan yang Anda pelajari dengan kanji.', 'Sangat Suka, Cinta, Seperti Banyak, Manis')
    RETURNING id INTO v_3581_sangat_suka;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '放れる', 'untuk-menjadi-longgar', 13, 94, 'Ingat bagaimana "melepaskan"? Sekarang Anda sedang mempelajari versi intransitif. Alih-alih Anda melakukan pelepasan, sesuatu justru dilepaskan atau dibebaskan. Jadi ini adalah <vocabulary>melepaskan</vocabulary>, <vocabulary>melepaskan</vocabulary>, atau <vocabulary>melepaskan</vocabulary>.

放れる menggambarkan sesuatu yang ditahan di tempatnya menjadi lepas dan mulai bergerak, seperti binatang yang melepaskan diri dari tambatannya atau anak panah dilepaskan dari tali busur. Kamu mengetahui hal ini karena sangat jarang (れる) sesuatu yang terkekang dapat melepaskan diri dari ikatannya. Melarikan diri tidaklah mudah, sehingga hanya terjadi pada kesempatan langka.', 'Bacaannya sama dengan yang Anda pelajari dengan 放す. Jika Anda dapat mengingat kata itu, Anda dapat menerapkan bacaannya di sini juga.', 'Untuk Menjadi Longgar, Untuk Melarikan Diri, Akan Dirilis')
    RETURNING id INTO v_3583_untuk_menjadi_longgar;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '感じる', 'untuk-merasakan', 13, 95, 'Kata ini terdiri dari kanji dengan hiragana ditempelkan. Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanji itu sendiri berarti <kanji>perasaan</kanji> sehingga versi kosakata kata kerjanya adalah <vocabulary>feeling</vocabulary>.', 'Coba tebak? Meskipun ini menggunakan bacaan vocab kun''yomi, biasanya bacaan on''yomi dan kun''yomi pada kanji ini sama, artinya kamu bisa membaca kata ini apapun yang terjadi. Merasa lebih baik sekarang?', 'Untuk Merasakan')
    RETURNING id INTO v_3586_untuk_merasakan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '感謝', 'terima-kasih', 13, 96, 'Anda memiliki <kanji>perasaan</kanji>untuk <kanji>meminta maaf</kanji>. Anehnya, kata ini berarti <vocabulary>terima kasih</vocabulary> dan <vocabulary>syukur</vocabulary>. Mungkin seseorang melakukan sesuatu yang sangat baik kepada Anda sehingga Anda ingin meminta maaf atas banyaknya hal baik yang mereka lakukan untuk Anda. Anda sangat berterima kasih kepada mereka!', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Terima kasih, Rasa syukur')
    RETURNING id INTO v_3590_terima_kasih;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '入館料', 'uang-masuk', 13, 97, '<kanji>biaya</kanji> untuk <kanji>memasuki</kanji>ke <kanji>gedung publik</kanji> adalah <vocabulary>biaya masuk</vocabulary>. Harus membayarnya jika Anda ingin masuk ke dalam.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Uang masuk, Biaya Masuk, Biaya Masuk')
    RETURNING id INTO v_3592_uang_masuk;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '料金', 'biaya', 13, 98, '<kanji>biaya</kanji> <kanji>emas</kanji> (atau uang) yang harus Anda bayarkan adalah <vocabulary>biaya</vocabulary> atau <vocabulary>biaya</vocabulary>.

Anda telah mempelajari 代金, yang umumnya mengacu pada uang yang dibayarkan untuk barang fisik, namun 料金 mengacu pada biaya atau beban untuk menggunakan suatu layanan — misalnya tarif bus, tol jalan raya, biaya masuk, biaya layanan bulanan, dan sebagainya.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Biaya, Mengenakan biaya, Kecepatan, Harga')
    RETURNING id INTO v_3593_biaya;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '映画館', 'bioskop', 13, 99, 'Anda telah mempelajari 映画 yang berarti "film". <kanji>gedung publik</kanji> untuk film adalah <vocabulary>bioskop</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Bioskop, Bioskop, Bioskop')
    RETURNING id INTO v_3596_bioskop;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '暗い', 'gelap', 13, 100, 'Ini adalah kanji tunggal dengan い di akhir, artinya Anda tahu itu mungkin kata sifat. Apa bentuk kata sifat dari <kanji>gelap</kanji>? <vocabulary>gelap</vocabulary>.', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi. Anda tidak belajar membaca dengan kanji ini, jadi inilah mnemonik untuk membantu Anda: 
Anda dilemparkan ke dalam sesuatu yang <vocabulary>gelap</vocabulary> dan kecil. Sebuah penutup tertutup di atasmu, dan kamu menjadi bingung. Kamu telah dilemparkan ke dalam apa? Anda mengetahui bahwa Anda telah dimasukkan ke dalam <reading>dingin</reading> (くら). Merasa takut seperti yang Anda rasakan jika Anda dilemparkan ke dalam pendingin yang gelap seperti ini. Apakah ini dingin?', 'Gelap')
    RETURNING id INTO v_3597_gelap;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '暗殺', 'pembunuhan', 13, 101, '<kanji>gelap</kanji> <kanji>pembunuhan</kanji> adalah <vocabulary>pembunuhan</vocabulary>. Itu dilakukan oleh seseorang yang mengenakan pakaian ninja dan berkulit gelap, bersembunyi di balik bayang-bayang untuk momen menyerang.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Pembunuhan')
    RETURNING id INTO v_3598_pembunuhan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '暗記', 'hafalan', 13, 102, 'Dalam <kanji>kegelapan</kanji> jika Anda mencoba <kanji>menulis</kanji> sesuatu, hal itu tidak akan berhasil dengan baik. Anda tidak dapat melihat. Jadi, bagaimana Anda bisa "menulis sesuatu" dalam kegelapan? Anda menuliskannya dalam pikiran Anda. Ini adalah <vocabulary>hafalan</vocabulary>! Kenali kata ini? Aplikasi SRS "Anki" berasal dari kata ini, menurutku!', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Hafalan, Menghafal')
    RETURNING id INTO v_3599_hafalan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '〜様', 'nama-resmi-ender', 13, 103, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.

Anda dapat menambahkan ini ke akhir nama seseorang. Sejujurnya, mungkin itu terlalu sopan, kecuali Anda sedang berbicara dengan salah satu pelanggan Anda atau semacamnya. Ada baiknya untuk mengetahuinya, tetapi Anda mungkin tidak akan sering menggunakannya, meskipun Anda cukup sering melihat dan mendengarnya.', 'Bacaannya sama dengan yang Anda pelajari dengan kanji.', 'Nama Resmi Ender, Gelar Nama Resmi, Sama')
    RETURNING id INTO v_3600_nama_resmi_ender;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '目標', 'sasaran', 13, 104, '<kanji>papan penunjuk</kanji> yang <kanji>perhatikan</kanji> Anda adalah <vocabulary>tujuan</vocabulary>, <vocabulary>target</vocabulary> dan <vocabulary>objective</vocabulary> Anda. Bayangkan saja melihat plang ini dari kejauhan. Anda tahu Anda harus mencapainya dari tempat Anda berada. Itulah tujuan perjalanan Anda.', 'Anda sudah membaca on''yomi 目 dengan 目次 di level 6. Untuk kosakata ini, Anda mencoba mencapai <vocabulary>tujuan</vocabulary> Anda, yaitu penunjuk arah di kejauhan. Saat Anda berjalan menuju tujuan tersebut, ada orang-orang yang berdiri di samping <reading>mengejek</reading>dan memberi tahu Anda bahwa Anda tidak akan pernah mencapai tujuan Anda. Bayangkan ini terjadi.', 'Sasaran, Target, Tujuan')
    RETURNING id INTO v_3603_sasaran;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '橋', 'menjembatani', 13, 105, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.', 'Bacaannya sama dengan yang Anda pelajari dengan kanji! Tidak perlu membakar kata apa pun dengan kata ini dan kanjinya.', 'Menjembatani')
    RETURNING id INTO v_3604_menjembatani;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '殺す', 'untuk-membunuh', 13, 106, 'Kata ini terdiri dari kanji dengan hiragana ditempelkan. Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanjinya sendiri berarti <kanji>membunuh</kanji> sehingga versi kosakata kata kerjanya adalah <vocabulary>to kill</vocabulary>.', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi. Anda tidak mempelajarinya dengan kanji ini, jadi inilah mnemonik yang dapat membantu Anda: Anda <vocabulary>membunuh</vocabulary> seseorang! Oh tidak, apa yang akan kamu lakukan? Di mana Anda akan meletakkan mayatnya? Anda memutuskan untuk memasukkannya ke dalam <reading>inti</reading> (ころ) dari silo nuklir. Itu akan meleleh dan hilang di sana, kan? Setidaknya, itulah yang Anda pikirkan. Bayangkan membuka inti silo nuklir dan merasakan dampak radiasinya. Anda melemparkan tubuh ke dalam dan menutup intinya, lalu melarikan diri. Sayangnya, inti nuklir ini pada akhirnya akan membunuh Anda juga. Kemudian, itu akan membunuh semua orang di area tersebut, karena tubuh yang Anda lemparkan akan membuat inti menjadi terlalu panas, sehingga menyebabkan ledakan raksasa.', 'Untuk Membunuh')
    RETURNING id INTO v_3605_untuk_membunuh;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '殺人', 'pembunuhan', 13, 107, 'Ketika <kanji>seseorang</kanji> <kanji>dibunuh</kanji>, Anda mengalami <vocabulary>pembunuhan</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Pembunuhan')
    RETURNING id INTO v_3606_pembunuhan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '自殺', 'bunuh-diri', 13, 108, '<kanji>diri</kanji> <kanji>membunuh</kanji> adalah saat Anda bunuh diri. Itu adalah <vocabulary>bunuh diri</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Bunuh diri')
    RETURNING id INTO v_3607_bunuh_diri;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '全然', 'sepenuhnya', 13, 109, 'Jika Anda mengetahui <kanji>semua</kanji> dari <kanji>sifat</kanji> sesuatu, maka Anda mengetahuinya <vocabulary>seluruhnya</vocabulary> dan <vocabulary>sepenuhnya</vocabulary>. Jika tidak, maka Anda mengetahuinya <kosa kata>tidak sama sekali</vocabulary>.

Kata ini aneh. Ini bisa berarti dua hal yang berlawanan tergantung pada jenis kata apa yang muncul setelahnya. Jika itu kata negatif, artinya "tidak sama sekali". Jika tidak negatif, artinya "sepenuhnya". Lihatlah pola penggunaan dan konteks kalimat untuk contohnya.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Sepenuhnya, Sama sekali, Sama sekali tidak')
    RETURNING id INTO v_3608_sepenuhnya;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '当然', 'alami', 13, 110, 'Sesuatu yang <kanji>benar</kanji> menurut <kanji>sifatnya</kanji> adalah <vocabulary>alami</vocabulary> dan <vocabulary>jelas</vocabulary>. 

当然 juga sering digunakan sebagai ungkapan yang berarti <vocabulary>tentu saja</vocabulary> atau <vocabulary>tentu saja</vocabulary>. Kata ini digunakan ketika ada sesuatu yang diharapkan atau tidak perlu dikatakan lagi, seperti kalimat percaya diri "ya, begitulah seharusnya".', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Alami, Jelas, Tentu saja, Tentu saja')
    RETURNING id INTO v_3609_alami;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '自然', 'alam', 13, 111, 'Untuk menemukan <kanji>sifat</kanji> sejati <kanji>diri</kanji> Anda, pergilah ke <vocabulary>alam</vocabulary>. Pergilah ke hutan dan ladang, membaca dan berpikir, dan temukan sifat sejati Anda.

Ini juga bisa berarti "alami" bila digunakan sebagai kata sifat な, seperti dalam 自然な日本語 (bahasa Jepang alami) atau 自然な色 (warna alami).', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya. Tunggu! Kecuali 自 adalah し dan bukan じ! Itu karena ketika Anda menambahkan dakuten kecil, Anda menambahkan し. Bila tidak ada dakutennya, maka ia berada dalam bentuk yang <vocabulary>nature</vocabulary> inginkan.', 'Alam, Alami')
    RETURNING id INTO v_3610_alam;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '情熱', 'gairah', 13, 112, 'Jika Anda <kanji>merasakan</kanji> <kanji>demam</kanji>, Anda sedang mengalami sesuatu yang membuat tubuh Anda memanas. Anda memiliki banyak <vocabulary>gairah</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Gairah, Antusiasme')
    RETURNING id INTO v_3611_gairah;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '熱', 'demam', 13, 113, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.', 'Pembacaannya sama dengan yang Anda pelajari dengan kanji, jadi jangan terburu-buru membaca yang satu ini.', 'Demam, Panas')
    RETURNING id INTO v_3612_demam;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '熱い', 'hal-panas', 13, 114, 'Ini untuk saat suatu benda sedang <kanji>panas</kanji>, menjadikan kata tersebut menjadi <vocabulary>benda panas</vocabulary>. Saat cuaca panas itulah 暑い. Ini adalah saat Anda menyentuh sesuatu dan Anda membakar diri sendiri.', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi. Anda tidak belajar membaca dengan kanji ini, jadi inilah mnemonik untuk membantu Anda: Bacaannya sama dengan 暑い, jadi jika Anda sudah mempelajarinya, Anda juga akan tahu cara membaca kata ini. Jika Anda belum menemukan kata itu, Anda mungkin setidaknya pernah menemukan kanji 暑. Itu menggunakan bacaan あつ. Dua konsep serupa, tetapi ada dua kanji yang membedakannya, sehingga membingungkan.', 'Hal Panas, Panas')
    RETURNING id INTO v_3613_hal_panas;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '熱心', 'antusiasme', 13, 115, 'Saat <kanji>hati</kanji> Anda sedang <kanji>demam</kanji> terhadap sesuatu, itu jelas merupakan sesuatu yang <vocabulary>antusiasme</vocabulary> Anda sangat tinggi. Pikirkan tentang hal-hal yang Anda sukai. Kemudian, bayangkan jantung Anda berdebar kencang dan menjadi panas karena memikirkannya. Mengapa lagi orang-orang menjadi begitu kesal ketika berbicara tentang agama dan politik? Itu adalah hati mereka yang demam! Antusiasme mereka!', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya. Hati-hati dengan porsi ねっ (biasanya ねつ).', 'Antusiasme, Gairah, Semangat')
    RETURNING id INTO v_3614_antusiasme;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '皆さん', 'setiap-orang', 13, 116, '<kanji>Semuanya</kanji> + さん (akhiran nama normal). Ini adalah cara normal untuk mengatakan <vocabulary>semua orang</vocabulary>', 'Bacaannya sama dengan yang Anda pelajari dengan kanji.', 'Setiap orang, Semua orang, Semua')
    RETURNING id INTO v_3615_setiap_orang;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '緑', 'hijau', 13, 117, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.', 'Bacaannya sama dengan yang Anda pelajari dengan kanji.', 'Hijau')
    RETURNING id INTO v_3617_hijau;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '緑色', 'hijau', 13, 118, '<kanji>hijau</kanji> <kanji>warna</kanji> adalah warna <vocabulary>hijau</vocabulary>.', 'Bacaannya adalah bacaan yang Anda pelajari dengan kanji, digabungkan!', 'Hijau, Warna Hijau, Warna Hijau')
    RETURNING id INTO v_3618_hijau;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '練習', 'praktik', 13, 119, 'Anda <kanji>berlatih</kanji> sesuatu untuk <kanji>mempelajari</kanji> itu. Itu masih disebut <vocabulary>latihan</vocabulary>! Bagian penting tentang ini adalah Anda juga belajar sambil berlatih. Itu benar dalam kata-katanya. Jadi, ketika Anda berlatih kanji dan kosakata bahasa Jepang, pastikan Anda belajar sekaligus berlatih. Jika Anda tidak belajar, berarti Anda tidak benar-benar berlatih, bukan?', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Praktik, Pelatihan, Mengebor')
    RETURNING id INTO v_3619_praktik;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '詩', 'puisi', 13, 120, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.', 'Bacaannya juga sama kanjinya! Kamu sangat bahagia bisa menulis puisi tentang ini...

Pembacaan kosakata
Sama dengan kanji
Cinta Crabigator

Bagaimana tadi?', 'Puisi')
    RETURNING id INTO v_3620_puisi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '詩人', 'penyair', 13, 121, '<kanji>puisi</kanji> <kanji>orang</kanji> adalah <vocabulary>penyair</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Penyair')
    RETURNING id INTO v_3621_penyair;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '詩歌', 'puisi', 13, 122, '<kanji>puisi</kanji> <kanji>lagu</kanji> adalah <vocabulary>puisi</vocabulary>. Ini bukan lagu yang bagus tapi menurutku Anda bisa menghubungkannya.

詩歌 dulunya digunakan untuk dua jenis puisi yang disebut kanshi dan waka, namun kini juga digunakan untuk bentuk puisi tradisional Jepang lainnya seperti tanka, haiku, senryu, dan banyak lagi.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Anda tahu bacaan ini, tapi biasanya ada tambahan い di tengahnya. Jangan khawatir, しか juga baik-baik saja, tapi しいか lebih umum. Anda dapat ini!', 'Puisi')
    RETURNING id INTO v_3622_puisi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '課長', 'manajer-bagian', 13, 123, 'Ingat bagaimana 社長 presiden perusahaan? Ini menggunakan arti 長 yang sama (yang artinya seperti "bos"). Karena 課 berarti <kanji>bagian</kanji>, ini adalah <vocabulary>manajer bagian</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Manajer Bagian, Kepala Seksi')
    RETURNING id INTO v_3623_manajer_bagian;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '謝る', 'untuk-meminta-maaf', 13, 124, 'Kata ini terdiri dari kanji dengan hiragana ditempelkan. Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanjinya sendiri berarti <kanji>meminta maaf</kanji> jadi versi kosakata kata kerjanya adalah <vocabulary>to minta maaf</vocabulary>.', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi. Anda tidak mempelajari cara membaca dengan kanji ini, jadi inilah mnemonik yang dapat membantu Anda: Saat Anda meminta maaf <vocabulary>untuk meminta maaf</vocabulary>, Anda mungkin akan memulai dengan: "<reading>Saya</reading> (あやま) maaf!"', 'Untuk Meminta Maaf')
    RETURNING id INTO v_3624_untuk_meminta_maaf;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '賞金', 'hadiah-uang-tunai', 13, 125, '<kanji>hadiah</kanji> berupa <kanji>emas</kanji> sudah sangat kuno. Saat ini kami menggunakan uang tunai, itulah sebabnya kata ini berarti <vocabulary>hadiah uang tunai</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Hadiah Uang Tunai, Hadiah Uang')
    RETURNING id INTO v_3625_hadiah_uang_tunai;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '車輪', 'roda', 13, 126, 'Bagian <kanji>mobil</kanji> <kanji>ring</kanji> mana dari mobil Anda? Tentu saja, roda <vocabulary></vocabulary>!

Tapi 車輪 bukan hanya untuk mobil! Anda akan melihat kata ini bergulir bersama dengan sepeda, sepeda motor, kereta, kereta bayi, troli… sebut saja. Nadanya sedikit formal atau teknis, sehingga dalam percakapan sehari-hari, Anda akan lebih sering mendengar タイヤ (ban) ketika berbicara tentang roda kendaraan.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Roda')
    RETURNING id INTO v_3626_roda;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '輪', 'cincin', 13, 127, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.', 'Karena kata ini terdiri dari satu kanji, maka sebaiknya menggunakan bacaan kun''yomi. Saat mempelajari kanji, Anda tidak mempelajari cara membacanya, jadi inilah mnemonik untuk membantu Anda dengan kata ini: Anda memasang <vocabulary>ring</vocabulary> yang Anda temukan, dengan harapan itu akan menjadi satu-satunya cincin yang mengatur semuanya (tembus pandang!). Sebaliknya, ternyata itu adalah cincin <read>Wa</reading>lken(わ) khusus, yang terbuat dari tulang Christopher Walken. Ini berbicara kepada Anda, memberi tahu Anda bagaimana dia menyimpan cincin ini di pantatnya (*ahem*) selama perang sehingga dia bisa memberikannya kepada Anda. Pertama-tama, mengapa cincin ini berbicara? Kedua, kenapa bicaranya seperti Walken. Ketiga, eww, kotor, itu ada di anusnya.', 'Cincin, Roda, Lingkaran, Lingkaran')
    RETURNING id INTO v_3627_cincin;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '選ぶ', 'untuk-memilih', 13, 128, 'Kata ini terdiri dari kanji dengan hiragana ditempelkan. Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanjinya sendiri berarti <kanji>"memilih"</kanji>, jadi versi kata kerjanya adalah <vocabulary>memilih</vocabulary>.', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi. Anda tidak belajar membaca dengan kanji ini, jadi inilah mnemonik untuk membantu Anda: 

Anda mempunyai kesempatan <vocabulary>untuk memilih</vocabulary>. Anda memilih, dan tanda terang menyala bertuliskan "<reading>error</reading>" (えら).', 'Untuk Memilih')
    RETURNING id INTO v_3628_untuk_memilih;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '選手', 'atlet-pro', 13, 129, 'Ingat bagaimana 手 bisa berarti "pelaku" dalam beberapa kata? Nah ini salah satunya. Dalam olahraga, Anda harus <kanji>memilih</kanji> <kanji>pelaku</kanji> terbaik untuk tim Anda. Dalam dunia olahraga, “pelaku terpilih” ini adalah <vocabulary>atlet profesional</vocabulary> dan <vocabulary>pemain olah raga</vocabulary>.', 'Pembacaan untuk 選 adalah apa yang Anda harapkan. 手 adalah pembacaan on''yomi yang dilakukan sesekali, terutama jika berkaitan dengan mewakili seseorang, jadi Anda harus mengingatnya. Saya rasa Anda sudah cukup melihat 手 menggunakan bacaan ini sehingga Anda dapat mengingatnya.', 'Atlet Pro, Pemain Olahraga, Atlet Profesional')
    RETURNING id INTO v_3629_atlet_pro;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '水銀', 'air-raksa', 13, 130, 'Ini menyenangkan. <kanji>Air</kanji> <kanji>perak</kanji> adalah <vocabulary>merkuri</vocabulary>, yang sangat masuk akal. Merkuri berbentuk cair seperti air, tetapi seluruhnya berwarna perak seperti perak. Jadi air perak bukanlah air mineral baru yang bisa Anda dapatkan seharga $4 di toko, melainkan <vocabulary>merkuri</vocabulary>! Atau <vocabulary>quicksilver</vocabulary>, jika Anda mau.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Air raksa, Air raksa')
    RETURNING id INTO v_3630_air_raksa;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '銀', 'perak', 13, 131, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.', 'Bacaannya sama dengan kanji.', 'Perak')
    RETURNING id INTO v_3631_perak;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '銀色', 'perak', 13, 132, '<kanji>perak</kanji> <kanji>warna</kanji> hanyalah <vocabulary>perak</vocabulary> (warna).', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Perak, Warna Perak, Warna Perak')
    RETURNING id INTO v_3632_perak;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '銀行', 'bank', 13, 133, 'Saatnya <kanji>pergi</kanji> dapatkan <kanji>perak</kanji> Anda dari <vocabulary>bank</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Bank')
    RETURNING id INTO v_3633_bank;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '鏡', 'cermin', 13, 134, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.', 'Bacaannya sama dengan yang Anda pelajari dengan kanji.', 'Cermin')
    RETURNING id INTO v_3634_cermin;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '〜放題', 'sebanyak-yang-anda-inginkan', 13, 135, 'Cukup <kanji>lepaskan</kanji> <kanji>topik</kanji>... biarkan saja! Biarkan ia melakukan apa pun yang diinginkannya. Terkadang topiknya adalah makanan... jika demikian, lepaskan saja diri Anda dan lakukan apa pun yang Anda inginkan dengan makanan tersebut (makan semuanya!). Jika itu minuman, minumlah semuanya! Kata ini ada hubungannya dengan melakukan apapun yang Anda inginkan dan <vocabulary>sebanyak yang Anda inginkan</vocabulary>. Anda akan melihat ini dilampirkan pada kata "sepuasnya ____", jadi nantikan kata-kata tersebut di beberapa level berikutnya.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Sebanyak yang Anda Inginkan, Semua yang Anda Bisa')
    RETURNING id INTO v_3635_sebanyak_yang_anda_inginkan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '話題', 'topik', 13, 136, '<kanji>topik</kanji> yang sedang kita <kanji>bicarakan</kanji>adalah <vocabulary>topik</vocabulary> yang sedang kita bicarakan. Itu adalah <vocabulary>subjek</vocabulary> percakapan kita.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Topik, Subjek')
    RETURNING id INTO v_3636_topik;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '養う', 'untuk-membina', 13, 137, 'Kata ini terdiri dari kanji dengan hiragana ditempelkan. Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanjinya sendiri berarti <kanji>mengasuh</kanji> sehingga versi kosakata kata kerjanya adalah <vocabulary>to Foster</vocabulary> atau <vocabulary>to raise</vocabulary>. Kata ini juga bisa merujuk pada pengembangan keterampilan atau kemampuan, bisa juga berarti <vocabulary>mengembangkan</vocabulary> atau <vocabulary>menumbuhkan</vocabulary>.', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi. Anda tidak belajar membaca dengan kanji ini, jadi inilah mnemonik untuk membantu Anda: 

Ketika Anda masih kecil, orang tua atau wali Anda melakukan <vocabulary>yang terbaik untuk menumbuhkan</vocabulary> disiplin saat mereka mencoba <vocabulary>membesarkan</vocabulary> Anda. Mengapa? Karena <read>ya shena</reading>nigans (やしな)! Oh, mereka mencoba menumbuhkan disiplin dalam diri Anda, oke - sampai kejahatan Anda tidak ada lagi.', 'Untuk membina, Untuk Meningkatkan, Untuk Berkembang, Untuk Berkultivasi')
    RETURNING id INTO v_3639_untuk_membina;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '養子', 'anak-angkat', 13, 138, 'Jika Anda <kanji>mengasuh</kanji> seorang <kanji>anak</kanji> dalam waktu yang cukup lama, pada akhirnya Anda pasti ingin mengadopsi mereka dan menjadikan mereka <vocabulary>anak angkat</vocabulary> Anda.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Anak Angkat')
    RETURNING id INTO v_3640_anak_angkat;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '旅館', 'penginapan-jepang', 13, 139, 'Saat Anda melakukan <kanji>perjalanan</kanji> ke <kanji>gedung publik</kanji>, Anda mungkin menginap di <vocabulary>penginapan Jepang</vocabulary>. Kalau dipikir-pikir, itu adalah bangunan umum untuk semua jenis wisatawan di masa lalu.

Atau, Anda dapat menyebutnya sebagai <vocabulary>hotel bergaya Jepang</vocabulary>, atau cukup dengan nama Jepangnya, <vocabulary>ryokan</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Penginapan Jepang, Hotel Gaya Jepang, Ryokan')
    RETURNING id INTO v_3641_penginapan_jepang;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '駅', 'stasiun', 13, 140, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna. Biasanya ini mengacu pada stasiun kereta api tertentu, tetapi bisa juga stasiun apa saja.', 'Kanji di sini menggunakan えき sebagai on''yomi dan kun''yomi, jadi jangan khawatir. Anda dapat pergi ke stasiun ini atau stasiun itu, dan kedua stasiun tersebut akan menggunakan bacaan yang sama sesuai kanji asalnya.', 'Stasiun, Stasiun kereta')
    RETURNING id INTO v_3643_stasiun;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '駅前', 'depan-stasiun', 13, 141, '<kanji>stasiun</kanji> <kanji>depan</kanji> adalah <vocabulary>depan stasiun</vocabulary>. Omong-omong, kata ini bagus untuk memberi tahu orang-orang di mana Anda ingin bertemu.', 'Ini seperti dua kata terpisah yang disatukan menjadi satu, jadi bisa dibayangkan itulah bacaan kun''yomi. Anda telah mempelajari cara membaca 駅 yang benar dalam kanji, dan Anda seharusnya sudah mengetahui kosakata 前 sekarang. Gabungkan keduanya dan Anda akan mendapatkan <vocabulary>di depan stasiun</vocabulary>.', 'Depan Stasiun, Di Depan Stasiun, Depan Stasiun, Di Depan Stasiun, Stasiun Depan')
    RETURNING id INTO v_3644_depan_stasiun;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '駅員', 'pegawai-stasiun-kereta-api', 13, 142, '<kanji>stasiun</kanji> <kanji>anggota</kanji> kereta api adalah seseorang yang bekerja di stasiun kereta. Mereka adalah <vocabulary>pegawai stasiun kereta</vocabulary>. Jangan ragu untuk bertanya kepada mereka apakah Anda memerlukan bantuan untuk mengetahui arah mana yang harus Anda latih.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Pegawai Stasiun Kereta Api, Staf Stasiun Kereta Api, Petugas Stasiun Kereta, Petugas Stasiun, Pegawai Stasiun')
    RETURNING id INTO v_3645_pegawai_stasiun_kereta_api;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '駅長', 'kepala-stasiun', 13, 143, 'Kata ini menggunakan 長 dengan cara yang sama seperti 社長, yang artinya seperti "bos" atau "manajer". Jadi, 長 ini adalah bos dari <kanji>stasiun</kanji>, kan? Apa yang kamu sebut orang seperti itu? Anda menyebut mereka <vocabulary>stationmaster</vocabulary> (kecuali jika Anda ingin dilempar ke kereta).', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Kepala Stasiun, Kepala stasiun, Kepala Stasiun Kereta Api, Kepala Stasiun Kereta Api')
    RETURNING id INTO v_3646_kepala_stasiun;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '温める', 'untuk-memanaskan-sesuatu', 13, 144, 'Anda tahu bahwa kanji 温 berarti <kanji>hangat</kanji>, dan kata kerjanya terkait. Artinya <vocabulary>memanaskan sesuatu</vocabulary> atau <vocabulary>menghangatkan sesuatu</vocabulary>. Ini semua tentang Anda melakukan sesuatu pada benda lain untuk membuatnya panas, seperti memasukkannya ke dalam microwave.', 'Pembacaan kanji sama dengan 温かい. Selama Anda mengetahui bacaan itu, Anda harus bisa mengaitkannya dengan kata ini.

Seperti halnya Anda mengucapkan あったかい untuk 温かい, orang sering mengucapkan あっためる dalam percakapan. Pembacaan "resmi" masih あたためる, jadi saat mengetik kanji atau mengerjakan ujian, usahakan tetap menggunakan あたためる.', 'Untuk Memanaskan Sesuatu, Untuk Menghangatkan Sesuatu')
    RETURNING id INTO v_3888_untuk_memanaskan_sesuatu;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '整理', 'pengaturan', 13, 145, 'Ketika Anda <kanji>menyusun</kanji> sesuatu berdasarkan <kanji>alasan</kanji>, hasilnya adalah <vocabulary>pengaturan</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Pengaturan, Penyortiran, Organisasi, Pengaturan')
    RETURNING id INTO v_3903_pengaturan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '理解', 'memahami', 13, 146, 'Ketika <kanji>alasan</kanji> <kanji>terpecahkan</kanji>d, Anda mencapai <kosakata>pemahaman</vocabulary> tentang sesuatu. Anda mencapai <vocabulary>pemahaman</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Memahami, Pemahaman')
    RETURNING id INTO v_4466_memahami;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '解く', 'untuk-memecahkan', 13, 147, 'Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanjinya sendiri berarti <kanji>memecahkan</kanji> jadi versi kosakata kata kerjanya adalah <vocabulary>to solve</vocabulary>. Anda tahu kata kerja ini digunakan ketika Anda sedang melakukan penyelesaian karena menurut Anda sangat <reading>coo</reading>'' (く) untuk menyelesaikan sesuatu.', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi. Anda tidak belajar membaca dengan kanji ini, jadi inilah mnemonik untuk membantu Anda:

Ada sesuatu yang telah Anda coba <vocabulary>pecahkan</vocabulary> sepanjang hidup Anda: <reading>jari kaki</reading> Anda (と). Mengapa bentuknya seperti itu? Kenapa agak bengkok? Apa yang direncanakannya? Mungkin suatu hari nanti Anda akan memecahkan misteri jari kaki Anda…', 'Untuk Memecahkan, Untuk Memecahkan Sesuatu')
    RETURNING id INTO v_4857_untuk_memecahkan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '宿', 'penginapan', 13, 148, '<kanji>penginapan</kanji> adalah suatu bentuk <vocabulary>penginapan</vocabulary>. Ini juga dianggap sebagai <vocabulary>penginapan</vocabulary> atau <vocabulary>hotel</vocabulary>.', '<reading>Yah, lakukan</reading> (やど) apa yang harus kamu dapatkan untuk mendapatkan <vocabulary>penginapan</vocabulary> untuk malam ini. Entah itu <vocabulary>penginapan</vocabulary> atau <vocabulary>hotel</vocabulary> atau apa pun. <reading>Yah, lakukan</reading> apa yang harus kamu lakukan.', 'Penginapan, Losmen, Hotel, Mengajukan')
    RETURNING id INTO v_4881_penginapan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '彼氏', 'pacar', 13, 149, '<kanji>he</kanji> <kanji>mister</kanji> bukan hanya dia, melainkan "mister he", dan mister he adalah dia, <vocabulary>pacar</vocabulary> Anda.', 'Bacaannya adalah yang Anda pelajari dengan kanji.', 'Pacar')
    RETURNING id INTO v_5897_pacar;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '彼女', 'dia', 13, 150, '<kanji>he</kanji> <kanji>wanita</kanji> adalah <vocabulary>dia</vocabulary>. Bisa juga berarti <vocabulary>pacar</vocabulary>, bergantung pada cara penggunaannya.', 'Pembacaannya agak aneh, setidaknya untuk bagian 彼. Bayangkan saja bagaimana <vocabulary>dia</vocabulary> (<vocabulary>pacar</vocabulary> Anda) adalah seorang <reading>kano</reading> (かの), dan Anda mencintai pacar kano itu lebih dari apa pun. Dia adalah sahabat dan kekasihmu, dan semua orang menganggapmu aneh. Bayangkan semua orang menganggap Anda aneh saat Anda memberikan ciuman kepada pacar kano Anda.', 'Dia, Pacar perempuan')
    RETURNING id INTO v_6030_dia;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '俺', 'saya', 13, 151, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.

Ingatlah bahwa 俺 memiliki bunyi yang lebih informal dan maskulin dibandingkan opsi netral seperti 私 dan 僕. Meskipun memiliki kesan yang lebih kasar, ini tidak hanya diperuntukkan bagi orang yang berkepribadian keras dan sangat umum dalam obrolan santai antar teman.', 'Bacaannya sama dengan yang Anda pelajari dengan kanji.', 'SAYA, Aku')
    RETURNING id INTO v_6798_saya;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '俺たち', 'kami', 13, 152, 'Jika たち dilekatkan pada kata yang mengacu pada seseorang, maka itu menjadikannya jamak. Jadi, ketika kamu menambahkan たち ke 俺 (<kanji>I</kanji>), artinya <vocabulary>we</vocabulary> atau <vocabulary>us</vocabulary>.

Ingatlah bahwa 俺 terdengar cukup santai dan kasar, jadi sebaiknya gunakan hanya dengan teman dekat (atau saat Anda mengguncang seseorang...).', 'Bacaannya sama dengan yang Anda pelajari dengan kanji. Anda seharusnya bisa membaca ini sendiri.', 'Kami, Kita')
    RETURNING id INTO v_6800_kami;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '缶ビール', 'kaleng-bir', 13, 153, '<kanji>kaleng</kanji> berisi <kanji>bir</kanji> (ビール) adalah <vocabulary>kaleng bir</vocabulary> atau <vocabulary>bir kaleng</vocabulary>. Bukan yang botolan.', 'Bacaannya adalah yang Anda pelajari dengan kanji.', 'Kaleng Bir, Bir Kaleng')
    RETURNING id INTO v_6825_kaleng_bir;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '疲れる', 'menjadi-lelah', 13, 154, 'Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanjinya sendiri berarti <kanji>lelah</kanji>, jadi versi verbanya berarti <vocabulary>to cape</vocabulary>. 

疲れる mengacu pada jenis kelelahan fisik atau mental, seperti Anda baru saja berolahraga atau belajar, namun tidak digunakan untuk menggambarkan rasa kantuk.', 'Misalnya, Anda pasti <vocabulary>lelah</vocabulary> jika mencoba mengangkat <reading>dua kaki</reading>r (つか), bukan? Jadi pikirkan hal itu saat Anda mempelajari bacaan kata ini.', 'Menjadi Lelah')
    RETURNING id INTO v_6899_menjadi_lelah;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '疲れ', 'kelelahan', 13, 155, '疲れる berarti "lelah." Ini adalah versi kata bendanya, yang menjadikannya <vocabulary>kelelahan</vocabulary> atau <vocabulary>fatigue</vocabulary>.

疲れ adalah versi 疲労 yang lebih kasual, jadi orang biasanya memilih 疲れ daripada 疲労 dalam percakapan sehari-hari.', 'Bacaannya berasal dari 疲れる.', 'Kelelahan, Kelelahan')
    RETURNING id INTO v_7055_kelelahan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '北海道', 'hokkaido', 13, 156, '<kanji>utara</kanji> <kanji>laut</kanji> <kanji>jalan</kanji> adalah jalan yang Anda ambil untuk sampai ke laut utara. Sebenarnya ini adalah pulau besar di utara Jepang, dan disebut <vocabulary>Hokkaido</vocabulary>. Ini adalah tempat yang sangat bagus, jadi pastikan untuk mengunjunginya untuk menikmati makanan laut segar di sekitarnya.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri. Namun ほく diperpendek, jadi berhati-hatilah!', 'Hokkaido')
    RETURNING id INTO v_7474_hokkaido;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '別れる', 'untuk-memisahkan', 13, 157, 'Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanjinya sendiri memiliki arti <kanji>terpisah</kanji>, jadi bisa ditebak maksudnya adalah <vocabulary>memisahkan</vocabulary> atau <vocabulary>dibagi</vocabulary>.', 'Ingat kata 分ける? Kata itu juga berarti "memisahkan". Bacaannya serupa, meski tidak sama, tapi setidaknya kita bisa menggunakannya sebagai titik awal. Kita beralih dari わける ke わかれる. Ini seperti kita telah "memisahkan" け dan る dan menggabungkannya di tengah. け, membuat かれ, yang membawamu ke <reading>わか</reading>れる.', 'Untuk Memisahkan, Untuk Dibagi, Untuk Berpisah Dari, Untuk Putus')
    RETURNING id INTO v_7495_untuk_memisahkan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '共有する', 'untuk-berbagi', 13, 158, 'Ini sama dengan 共有 tetapi versi kata kerjanya.', 'Bacaannya berasal dari 共有 serta bacaan yang Anda pelajari melalui kanji.', 'Untuk Berbagi, Untuk Memiliki Bersama, Untuk Milik Bersama')
    RETURNING id INTO v_7496_untuk_berbagi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '会', 'mengumpulkan', 13, 159, 'Ini adalah versi kata benda dari kanji <kanji>bertemu</kanji>, dan artinya <vocabulary>pertemuan</vocabulary> atau <vocabulary>meeting</vocabulary>, seperti yang Anda harapkan! Namun, ini tidak benar-benar digunakan untuk jenis rapat yang Anda adakan di kantor. Ini lebih dalam artian sekelompok orang berkumpul untuk tujuan tertentu, seperti <vocabulary>group</vocabulary> sukarelawan, atau <vocabulary>pesta</vocabulary> ulang tahun.', 'Bacaannya sama dengan kanji yang Anda pelajari, artinya Anda tahu bacaannya!', 'Mengumpulkan, Pertemuan, Kelompok, Berpesta')
    RETURNING id INTO v_7523_mengumpulkan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '田代島', 'tashirojima', 13, 160, '<kanji>sawah</kanji> digunakan sebagai <kanji>pengganti</kanji> untuk <kanji>pulau</kanji>. Pulau manakah itu? Benar sekali, <vocabulary>Tashirojima</vocabulary>. Bayangkan sebuah sawah di tengah laut, melambangkan <vocabulary>Pulau Tashiro</vocabulary>', 'Ini adalah nama tempat dan menggunakan kun''yomi. Anda belum mempelajari kun''yomi khusus ini untuk 代, jadi inilah mnemonik untuk membantu Anda mengingatnya:

Saat Anda pergi ke <vocabulary>Tashirojima</vocabulary>, pastikan Anda mengunjungi wanita tua itu. Anda tahu wanita apa yang saya bicarakan, orang yang membintangi Murder <reading>dia menulis</reading>te (しろ). Kurasa dia banyak menulis tentang kucing sekarang.', 'Tashirojima')
    RETURNING id INTO v_7537_tashirojima;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '表情', 'raut-wajah', 13, 161, 'Saat Anda <kanji>mengekspresikan</kanji> sebuah <kanji>perasaan</kanji>, hal itu terlihat di wajah Anda. Ini disebut <vocabulary>ekspresi wajah</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Raut wajah')
    RETURNING id INTO v_7538_raut_wajah;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '中指', 'jari-tengah', 13, 162, '<kanji>jari tengah</kanji> <kanji>jari</kanji> tentu saja adalah <vocabulary>jari tengah</vocabulary>! Dan karena kami tidak melihat perbedaannya, itu adalah <vocabulary>jari kaki tengah</vocabulary> Anda juga. Pertahankan hal itu jika lain kali seseorang membuat Anda marah.', 'Kata ini menggunakan bacaan kun''yomi dari kedua kanji tersebut, mungkin karena mengandung bagian tubuh. Anda sudah mengenal keduanya, jadi sekarang Anda juga mengetahuinya!', 'Jari tengah, Jari Kedua, Jari Tengah')
    RETURNING id INTO v_7576_jari_tengah;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '女神', 'dewi', 13, 163, 'Seorang <kanji>wanita</kanji> yang juga merupakan <kanji>dewa</kanji> adalah <vocabulary>dewi</vocabulary>.', 'Bacaan kata ini sama-sama bacaan kun''yomi. Anda belum mempelajari bacaan ini untuk 女, jadi inilah mnemonik untuk membantu Anda:

<vocabulary>dewi</vocabulary> ini memiliki <reading>目</reading> (め) terindah yang pernah Anda lihat. Anda tidak bisa berhenti menatap mereka. Ini pasti cara orang mengetahui bahwa mereka telah bertemu dewa.', 'Dewi, Dewa Wanita')
    RETURNING id INTO v_7583_dewi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '学問', 'sekolah', 13, 164, 'Bagaimana cara mengatasi <kanji>belajar</kanji> <kanji>masalah</kanji> Anda? Dengan sedikit tambahan <vocabulary>sekolah</vocabulary>, <vocabulary>study</vocabulary>, dan <vocabulary>learning</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Sekolah, Belajar, Sedang belajar, Beasiswa')
    RETURNING id INTO v_7637_sekolah;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '想定', 'anggapan', 13, 165, 'Ketika Anda <kanji>membayangkan</kanji> sesuatu yang agak <kanji>ditentukan</kanji>d, itu berarti Anda sudah memiliki semacam <vocabulary>asumsi</vocabulary> atau <vocabulary>expectation</vocabulary> tentang hal tersebut.

想定 biasanya mengacu pada asumsi yang dibuat sebelumnya tentang kondisi atau situasi tertentu. Kata ini sering digunakan ketika berbicara tentang persiapan atau antisipasi peristiwa di masa depan, terutama peristiwa yang mungkin memerlukan perencanaan, seperti bencana alam.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Anggapan, Ekspektasi')
    RETURNING id INTO v_7694_anggapan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '王様', 'raja', 13, 166, '<kanji>raja</kanji> (<kanji>nama formal ender</kanji>) adalah <vocabulary>raja</vocabulary>, dan Anda berbicara dengannya dengan sopan. Bagaimanapun juga, dialah rajanya! Jika tidak, dia mungkin akan memenggal kepalamu!', 'Kata ini terdiri dari bacaan on''yomi untuk 王 dan bacaan kun''yomi untuk 様. Anda telah mempelajari keduanya sehingga Anda seharusnya bisa membaca kata ini juga!', 'Raja')
    RETURNING id INTO v_7751_raja;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '親指', 'ibu-jari', 13, 167, '<kanji>orang tua</kanji> <kanji>jari</kanji> Anda adalah <vocabulary>ibu jari</vocabulary> Anda! Ini lebih besar dari jari Anda yang lain, jadi itu berarti ia juga memegang kendali! Ini juga berlaku untuk jari-jari kaki Anda, maksud saya, jari-jari kaki Anda. Jadi jari kaki orang tua adalah <vocabulary>ibu jari kaki</vocabulary> Anda.', 'Kata ini menggunakan bacaan kun''yomi dari kedua kanji tersebut, mungkin karena mengandung bagian tubuh. Anda sudah mengenal keduanya, jadi sekarang Anda juga mengetahuinya!', 'Ibu jari, jempol kaki')
    RETURNING id INTO v_8667_ibu_jari;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '神様', 'tuhan', 13, 168, '<kanji>Tuhan</kanji> (<kanji>nama resmi ender</kanji>) adalah <vocabulary>God</vocabulary>! Atau <vocabulary>dewa</vocabulary>, jika Anda berbicara dengan lebih dari satu. Anda harus bersikap sopan kepada mereka, jadi tambahkan akhiran itu di sana.', 'Bacaan kata ini sama-sama bacaan kun''yomi. Anda sudah mempelajari keduanya jadi Anda harus bisa membacanya juga!', 'Tuhan, Dewa')
    RETURNING id INTO v_8705_tuhan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '指先', 'ujung-jari', 13, 169, 'Anda tahu bagian <kanji>sebelumnya</kanji> dari <kanji>jari</kanji> Anda? Bagian yang baru saja saya potong? Itu tadi <vocabulary>ujung jari</vocabulary> Anda! Saya hanya punya waktu untuk mendapatkan tipnya. Dulunya ada di jarimu dan sekarang ada di sini, di tanganku. Maaf, menurutku. Oh, tapi jangan khawatir, saya akan meratakan semuanya dan mendapatkan ujung jari kaki Anda dengan cepat juga.', 'Kata ini menggunakan bacaan kun''yomi dari kedua kanji tersebut, mungkin karena mengandung bagian tubuh. Anda sudah mengenal keduanya, jadi sekarang Anda juga mengetahuinya!', 'Ujung jari, Ujung Jari Kaki')
    RETURNING id INTO v_8746_ujung_jari;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '特選', 'seleksi-khusus', 13, 170, 'Jika ada sesuatu yang <kanji>istimewa</kanji> Anda <kanji>memilih</kanji> itu. Itu menjadikannya <vocabulary>pilihan spesial</vocabulary> milik Anda dan mendapat <vocabulary>hadiah spesial</vocabulary> yang hanya bisa Anda berikan!', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Seleksi Khusus, Pilihan Khusus, Hadiah Khusus')
    RETURNING id INTO v_8804_seleksi_khusus;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '受かる', 'agar-diterima', 13, 171, 'Kata ini terdiri dari kanji dengan hiragana ditempelkan. Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanji 受 berarti <kanji>menerima</kanji> dan kata kerjanya terkait. Artinya <vocabulary>diterima</vocabulary>, biasanya pada sesuatu yang bagus seperti universitas atau pekerjaan baru. Bisa juga berarti <vocabulary>lulus</vocabulary>, sering kali dalam konteks ujian atau ujian.

Ini adalah kata kerja intransitif, jadi tidak diperlukan objek langsung. Petunjuknya adalah kata ini diakhiri dengan okurigana yang berima dengan ある, dan kata kerja semacam itu cenderung intransitif. Selain itu, berhati-hatilah: dalam bahasa Inggris Anda akan menggunakan ungkapan transitif "lulus ujian", namun dalam bahasa Jepang Anda akan mengucapkan 試験に受かる. Seperti mengatakan Anda lulus <em>dalam</em> ujian — jadi ini masih intransitif!', 'Karena kata ini memiliki okurigana (hiragana yang melekat pada kanji), Anda tahu bahwa kemungkinan besar itu adalah bacaan kun''yomi. Berikut ini sedikit mnemonik untuk membantu Anda mengingat:

<vocabulary>Untuk diterima</vocabulary> dalam program ini, kamu harus menyulap <reading>u</reading>nis (う)—ya, bulu babi runcing itu! Menangani universitas itu sulit, namun jika Anda ingin <vocabulary>lulus</vocabulary> ujian dan diterima, Anda harus menguasai tantangan universitas.', 'Agar Diterima, Untuk Lulus')
    RETURNING id INTO v_8943_agar_diterima;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '天王星', 'uranus', 13, 172, '<kanji>surga</kanji> <kanji>raja</kanji> <kanji>bintang</kanji> adalah planet <vocabulary>Uranus</vocabulary>. Pengetahuan tentang mitologi Yunani pasti akan membantu Anda di sini, karena nama Inggris mengacu pada dewa langit Yunani, dan nama Jepang adalah terjemahan langsung dari itu!', 'Ini adalah kata jukugo dan menggunakan on''yomi, namun seiring waktu pembacaan 王 berubah dari おう menjadi のう, agar lebih mudah diucapkan. Anda masih akan melihatnya terdaftar sebagai bacaan alternatif di beberapa kamus, tetapi bacaan tersebut hampir tidak pernah digunakan saat ini, jadi kami hanya menerima bacaan てんのうせい. Berikut ini mnemonik untuk membantu Anda mengingat:

Siapa yang meramalkan penemuan <vocabulary>Uranus</vocabulary>? <read>Tidak</reading>stradamus (のう), tentu saja!', 'Uranus')
    RETURNING id INTO v_9009_uranus;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '空く', 'menjadi-kosong', 13, 173, 'Anda mempunyai kanji untuk <kanji>kosong</kanji>, jadi kata kerja ini berarti <vocabulary>menjadi kosong</vocabulary>. Pikirkan botol-botol kosong, kamar mandi kosong, bahkan blok terbuka dalam jadwal Anda - hal-hal semacam itu.', 'Setiap kali ada sesuatu yang <vocabulary>menjadi kosong</vocabulary>, Anda pasti mengatakan "<reading>Ah</reading> (あ)..." untuk mengungkapkan kekecewaan Anda. Gelas air Anda menjadi kosong? Ah… Kantong keripikmu kosong? Ah… Berseru sedikit "Ah..." adalah satu-satunya hal yang membantu Anda mengatasi kesedihan karena barang kesayangan Anda menjadi kosong.

Perhatikan bahwa kata ini juga dapat dibaca sebagai すく dalam beberapa situasi, meskipun nuansanya sedikit berubah. Anda akan mempelajarinya melalui kata lain nanti, jadi untuk saat ini fokus saja pada bacaan あく!', 'Menjadi Kosong, Menjadi Kosong, Menjadi Tersedia')
    RETURNING id INTO v_9245_menjadi_kosong;

  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2741_konvensi, 'Konvensi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2741_konvensi, 'Turnamen', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2741_konvensi, 'Peristiwa', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2904_jujur, 'Jujur', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2904_jujur, 'Sejujurnya', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3290_jari_kelingking, 'Jari kelingking', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3290_jari_kelingking, 'Jari Kelingking', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3290_jari_kelingking, 'kelingking', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3290_jari_kelingking, 'Kelingking kaki', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3290_jari_kelingking, 'Jari Kelingking', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3292_gaya_barat, 'Gaya Barat', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3312_ramah, 'Ramah', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3312_ramah, 'Ketentuan yang Baik', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3394_untuk_tiba, 'Untuk Tiba', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3515_peminum, 'Peminum', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3515_peminum, 'Pencinta Alkohol', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3524_membayangkan, 'Membayangkan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3527_seratus_juta, 'Seratus Juta', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3528_seratus_juta_yen, 'Seratus Juta Yen', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3529_seratus_juta, 'Seratus Juta', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3530_masalah, 'Masalah', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3530_masalah, 'Pertanyaan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3531_ragu, 'Ragu', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3531_ragu, 'Pertanyaan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3532_wadah, 'Wadah', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3532_wadah, 'Mangkuk', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3532_wadah, 'Kapasitas', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3533_tangkas, 'Tangkas', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3533_tangkas, 'Mahir', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3534_alat_musik, 'Alat musik', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3535_peralatan_makan, 'Peralatan makan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3535_peralatan_makan, 'Peralatan Makan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3535_peralatan_makan, 'Peralatan Penyajian', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3536_pegulat_sumo, 'Pegulat Sumo', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3537_pekerjaan_rumah, 'Pekerjaan rumah', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3538_shinjuku, 'Shinjuku', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3539_keadaan, 'Keadaan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3539_keadaan, 'Alasan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3539_keadaan, 'Situasi', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3540_perasaan_manusia, 'Perasaan Manusia', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3540_perasaan_manusia, 'Kemanusiaan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3540_perasaan_manusia, 'Kebaikan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3541_disayangkan, 'Disayangkan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3541_disayangkan, 'Simpati', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3541_disayangkan, 'Belas kasihan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3541_disayangkan, 'Kasih sayang', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3542_emosi, 'Emosi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3542_emosi, 'Merasa', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3543_ekspektasi, 'Ekspektasi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3543_ekspektasi, 'Ramalan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3544_kenangan, 'Kenangan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3544_kenangan, 'Ingatan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3545_ideologi, 'Ideologi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3545_ideologi, 'Pikiran', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3545_ideologi, 'Ide', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3548_pesta_minum, 'Pesta Minum', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3554_untuk_melihat_kembali, 'Untuk Melihat Kembali', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3554_untuk_melihat_kembali, 'Untuk Melihat Kembali', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3554_untuk_melihat_kembali, 'Untuk Melihat Kembali', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3568_pada_awalnya, 'Pada awalnya', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3568_pada_awalnya, 'Pada awalnya', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3569_untuk_pertama_kalinya, 'Untuk Pertama Kalinya', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3569_untuk_pertama_kalinya, 'Pertama kali', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3570_kamikaze, 'Kamikaze', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3570_kamikaze, 'Angin Ilahi', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3571_untuk_membantu, 'Untuk Membantu', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3571_untuk_membantu, 'Untuk Membantu', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3571_untuk_membantu, 'Untuk Meminjamkan Tangan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3572_tangan_kiri, 'Tangan Kiri', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3573_kelas_pe, 'Kelas PE', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3573_kelas_pe, 'PE', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3573_kelas_pe, 'Pendidikan Jasmani', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3573_kelas_pe, 'Kelas Olahraga', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3574_tangan_kanan, 'Tangan Kanan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3576_untuk_memunculkan, 'Untuk Memunculkan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3576_untuk_memunculkan, 'Untuk Meningkatkan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3576_untuk_memunculkan, 'Untuk Berkultivasi', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3577_untuk_mengejar, 'Untuk Mengejar', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3577_untuk_mengejar, 'Untuk Menyalip', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3577_untuk_mengejar, 'Untuk Mengikuti', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3578_untuk_berjuang, 'Untuk Berjuang', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3578_untuk_berjuang, 'Untuk Bertempur', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3578_untuk_berjuang, 'Untuk Memerangi', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3579_untuk_mengejar, 'Untuk Mengejar', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3579_untuk_mengejar, 'Untuk Mengejar', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3579_untuk_mengejar, 'Untuk Mengejar', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3579_untuk_mengejar, 'Untuk Mengikuti', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3580_untuk_memesan, 'Untuk Memesan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3580_untuk_memesan, 'Untuk Meminta', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3581_sangat_suka, 'Sangat Suka', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3581_sangat_suka, 'Cinta', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3581_sangat_suka, 'Seperti Banyak', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3581_sangat_suka, 'Manis', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3583_untuk_menjadi_longgar, 'Untuk Menjadi Longgar', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3583_untuk_menjadi_longgar, 'Untuk Melarikan Diri', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3583_untuk_menjadi_longgar, 'Akan Dirilis', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3586_untuk_merasakan, 'Untuk Merasakan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3590_terima_kasih, 'Terima kasih', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3590_terima_kasih, 'Rasa syukur', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3592_uang_masuk, 'Uang masuk', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3592_uang_masuk, 'Biaya Masuk', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3592_uang_masuk, 'Biaya Masuk', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3593_biaya, 'Biaya', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3593_biaya, 'Mengenakan biaya', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3593_biaya, 'Kecepatan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3593_biaya, 'Harga', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3596_bioskop, 'Bioskop', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3596_bioskop, 'Bioskop', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3596_bioskop, 'Bioskop', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3597_gelap, 'Gelap', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3598_pembunuhan, 'Pembunuhan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3599_hafalan, 'Hafalan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3599_hafalan, 'Menghafal', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3600_nama_resmi_ender, 'Nama Resmi Ender', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3600_nama_resmi_ender, 'Gelar Nama Resmi', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3600_nama_resmi_ender, 'Sama', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3603_sasaran, 'Sasaran', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3603_sasaran, 'Target', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3603_sasaran, 'Tujuan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3604_menjembatani, 'Menjembatani', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3605_untuk_membunuh, 'Untuk Membunuh', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3606_pembunuhan, 'Pembunuhan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3607_bunuh_diri, 'Bunuh diri', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3608_sepenuhnya, 'Sepenuhnya', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3608_sepenuhnya, 'Sama sekali', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3608_sepenuhnya, 'Sama sekali tidak', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3609_alami, 'Alami', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3609_alami, 'Jelas', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3609_alami, 'Tentu saja', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3609_alami, 'Tentu saja', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3610_alam, 'Alam', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3610_alam, 'Alami', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3611_gairah, 'Gairah', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3611_gairah, 'Antusiasme', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3612_demam, 'Demam', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3612_demam, 'Panas', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3613_hal_panas, 'Hal Panas', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3613_hal_panas, 'Panas', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3614_antusiasme, 'Antusiasme', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3614_antusiasme, 'Gairah', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3614_antusiasme, 'Semangat', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3615_setiap_orang, 'Setiap orang', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3615_setiap_orang, 'Semua orang', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3615_setiap_orang, 'Semua', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3617_hijau, 'Hijau', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3618_hijau, 'Hijau', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3618_hijau, 'Warna Hijau', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3618_hijau, 'Warna Hijau', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3619_praktik, 'Praktik', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3619_praktik, 'Pelatihan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3619_praktik, 'Mengebor', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3620_puisi, 'Puisi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3621_penyair, 'Penyair', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3622_puisi, 'Puisi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3623_manajer_bagian, 'Manajer Bagian', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3623_manajer_bagian, 'Kepala Seksi', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3624_untuk_meminta_maaf, 'Untuk Meminta Maaf', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3625_hadiah_uang_tunai, 'Hadiah Uang Tunai', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3625_hadiah_uang_tunai, 'Hadiah Uang', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3626_roda, 'Roda', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3627_cincin, 'Cincin', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3627_cincin, 'Roda', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3627_cincin, 'Lingkaran', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3627_cincin, 'Lingkaran', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3628_untuk_memilih, 'Untuk Memilih', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3629_atlet_pro, 'Atlet Pro', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3629_atlet_pro, 'Pemain Olahraga', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3629_atlet_pro, 'Atlet Profesional', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3630_air_raksa, 'Air raksa', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3630_air_raksa, 'Air raksa', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3631_perak, 'Perak', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3632_perak, 'Perak', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3632_perak, 'Warna Perak', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3632_perak, 'Warna Perak', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3633_bank, 'Bank', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3634_cermin, 'Cermin', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3635_sebanyak_yang_anda_inginkan, 'Sebanyak yang Anda Inginkan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3635_sebanyak_yang_anda_inginkan, 'Semua yang Anda Bisa', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3636_topik, 'Topik', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3636_topik, 'Subjek', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3639_untuk_membina, 'Untuk membina', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3639_untuk_membina, 'Untuk Meningkatkan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3639_untuk_membina, 'Untuk Berkembang', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3639_untuk_membina, 'Untuk Berkultivasi', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3640_anak_angkat, 'Anak Angkat', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3641_penginapan_jepang, 'Penginapan Jepang', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3641_penginapan_jepang, 'Hotel Gaya Jepang', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3641_penginapan_jepang, 'Ryokan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3643_stasiun, 'Stasiun', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3643_stasiun, 'Stasiun kereta', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3644_depan_stasiun, 'Depan Stasiun', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3644_depan_stasiun, 'Di Depan Stasiun', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3644_depan_stasiun, 'Depan Stasiun', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3644_depan_stasiun, 'Di Depan Stasiun', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3644_depan_stasiun, 'Stasiun Depan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3645_pegawai_stasiun_kereta_api, 'Pegawai Stasiun Kereta Api', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3645_pegawai_stasiun_kereta_api, 'Staf Stasiun Kereta Api', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3645_pegawai_stasiun_kereta_api, 'Petugas Stasiun Kereta', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3645_pegawai_stasiun_kereta_api, 'Petugas Stasiun', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3645_pegawai_stasiun_kereta_api, 'Pegawai Stasiun', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3646_kepala_stasiun, 'Kepala Stasiun', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3646_kepala_stasiun, 'Kepala stasiun', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3646_kepala_stasiun, 'Kepala Stasiun Kereta Api', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3646_kepala_stasiun, 'Kepala Stasiun Kereta Api', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3888_untuk_memanaskan_sesuatu, 'Untuk Memanaskan Sesuatu', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3888_untuk_memanaskan_sesuatu, 'Untuk Menghangatkan Sesuatu', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3903_pengaturan, 'Pengaturan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3903_pengaturan, 'Penyortiran', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3903_pengaturan, 'Organisasi', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3903_pengaturan, 'Pengaturan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4466_memahami, 'Memahami', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4466_memahami, 'Pemahaman', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4857_untuk_memecahkan, 'Untuk Memecahkan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4857_untuk_memecahkan, 'Untuk Memecahkan Sesuatu', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4881_penginapan, 'Penginapan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4881_penginapan, 'Losmen', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4881_penginapan, 'Hotel', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4881_penginapan, 'Mengajukan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5897_pacar, 'Pacar', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6030_dia, 'Dia', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6030_dia, 'Pacar perempuan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6798_saya, 'SAYA', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6798_saya, 'Aku', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6800_kami, 'Kami', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6800_kami, 'Kita', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6825_kaleng_bir, 'Kaleng Bir', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6825_kaleng_bir, 'Bir Kaleng', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6899_menjadi_lelah, 'Menjadi Lelah', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7055_kelelahan, 'Kelelahan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7055_kelelahan, 'Kelelahan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7474_hokkaido, 'Hokkaido', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7495_untuk_memisahkan, 'Untuk Memisahkan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7495_untuk_memisahkan, 'Untuk Dibagi', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7495_untuk_memisahkan, 'Untuk Berpisah Dari', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7495_untuk_memisahkan, 'Untuk Putus', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7496_untuk_berbagi, 'Untuk Berbagi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7496_untuk_berbagi, 'Untuk Memiliki Bersama', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7496_untuk_berbagi, 'Untuk Milik Bersama', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7523_mengumpulkan, 'Mengumpulkan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7523_mengumpulkan, 'Pertemuan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7523_mengumpulkan, 'Kelompok', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7523_mengumpulkan, 'Berpesta', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7537_tashirojima, 'Tashirojima', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7538_raut_wajah, 'Raut wajah', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7576_jari_tengah, 'Jari tengah', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7576_jari_tengah, 'Jari Kedua', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7576_jari_tengah, 'Jari Tengah', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7583_dewi, 'Dewi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7583_dewi, 'Dewa Wanita', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7637_sekolah, 'Sekolah', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7637_sekolah, 'Belajar', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7637_sekolah, 'Sedang belajar', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7637_sekolah, 'Beasiswa', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7694_anggapan, 'Anggapan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7694_anggapan, 'Ekspektasi', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7751_raja, 'Raja', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8667_ibu_jari, 'Ibu jari', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8667_ibu_jari, 'jempol kaki', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8705_tuhan, 'Tuhan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8705_tuhan, 'Dewa', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8746_ujung_jari, 'Ujung jari', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8746_ujung_jari, 'Ujung Jari Kaki', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8804_seleksi_khusus, 'Seleksi Khusus', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8804_seleksi_khusus, 'Pilihan Khusus', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8804_seleksi_khusus, 'Hadiah Khusus', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8943_agar_diterima, 'Agar Diterima', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8943_agar_diterima, 'Untuk Lulus', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9009_uranus, 'Uranus', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9245_menjadi_kosong, 'Menjadi Kosong', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9245_menjadi_kosong, 'Menjadi Kosong', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9245_menjadi_kosong, 'Menjadi Tersedia', false, true);

  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2741_konvensi, 'たいかい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2904_jujur, 'しょうじき', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3290_jari_kelingking, 'こゆび', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3292_gaya_barat, 'ようふう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3312_ramah, 'なかよく', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3394_untuk_tiba, 'つく', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3515_peminum, 'さけずき', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3524_membayangkan, 'そうぞうする', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3527_seratus_juta, 'いちおく', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3528_seratus_juta_yen, 'いちおくえん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3529_seratus_juta, 'おく', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3530_masalah, 'もんだい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3531_ragu, 'ぎもん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3532_wadah, 'うつわ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3533_tangkas, 'きよう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3534_alat_musik, 'がっき', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3535_peralatan_makan, 'しょっき', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3536_pegulat_sumo, 'りきし', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3537_pekerjaan_rumah, 'しゅくだい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3538_shinjuku, 'しんじゅく', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3539_keadaan, 'じじょう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3540_perasaan_manusia, 'にんじょう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3541_disayangkan, 'なさけ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3542_emosi, 'かんじょう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3543_ekspektasi, 'よそう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3544_kenangan, 'かいそう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3545_ideologi, 'しそう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3548_pesta_minum, 'のみかい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3554_untuk_melihat_kembali, 'みかえる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3568_pada_awalnya, 'はじめに', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3569_untuk_pertama_kalinya, 'はじめて', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3570_kamikaze, 'かみかぜ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3571_untuk_membantu, 'てつだう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3572_tangan_kiri, 'ひだりきき', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3573_kelas_pe, 'たいいく', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3574_tangan_kanan, 'みぎきき', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3576_untuk_memunculkan, 'そだてる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3577_untuk_mengejar, 'おいつく', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3578_untuk_berjuang, 'たたかう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3579_untuk_mengejar, 'おいかける', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3580_untuk_memesan, 'ちゅうもんする', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3581_sangat_suka, 'だいすき', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3583_untuk_menjadi_longgar, 'はなれる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3586_untuk_merasakan, 'かんじる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3590_terima_kasih, 'かんしゃ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3592_uang_masuk, 'にゅうかんりょう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3593_biaya, 'りょうきん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3596_bioskop, 'えいがかん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3597_gelap, 'くらい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3598_pembunuhan, 'あんさつ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3599_hafalan, 'あんき', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3600_nama_resmi_ender, 'さま', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3603_sasaran, 'もくひょう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3604_menjembatani, 'はし', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3605_untuk_membunuh, 'ころす', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3606_pembunuhan, 'さつじん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3607_bunuh_diri, 'じさつ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3608_sepenuhnya, 'ぜんぜん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3609_alami, 'とうぜん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3610_alam, 'しぜん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3611_gairah, 'じょうねつ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3612_demam, 'ねつ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3613_hal_panas, 'あつい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3614_antusiasme, 'ねっしん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3615_setiap_orang, 'みなさん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3617_hijau, 'みどり', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3618_hijau, 'みどりいろ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3619_praktik, 'れんしゅう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3620_puisi, 'し', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3621_penyair, 'しじん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3622_puisi, 'しいか', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3622_puisi, 'しか', NULL, false, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3623_manajer_bagian, 'かちょう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3624_untuk_meminta_maaf, 'あやまる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3625_hadiah_uang_tunai, 'しょうきん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3626_roda, 'しゃりん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3627_cincin, 'わ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3628_untuk_memilih, 'えらぶ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3629_atlet_pro, 'せんしゅ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3630_air_raksa, 'すいぎん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3631_perak, 'ぎん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3632_perak, 'ぎんいろ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3633_bank, 'ぎんこう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3634_cermin, 'かがみ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3635_sebanyak_yang_anda_inginkan, 'ほうだい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3636_topik, 'わだい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3639_untuk_membina, 'やしなう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3640_anak_angkat, 'ようし', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3641_penginapan_jepang, 'りょかん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3643_stasiun, 'えき', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3644_depan_stasiun, 'えきまえ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3645_pegawai_stasiun_kereta_api, 'えきいん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3646_kepala_stasiun, 'えきちょう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3888_untuk_memanaskan_sesuatu, 'あたためる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3888_untuk_memanaskan_sesuatu, 'あっためる', NULL, false, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3903_pengaturan, 'せいり', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4466_memahami, 'りかい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4857_untuk_memecahkan, 'とく', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4881_penginapan, 'やど', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5897_pacar, 'かれし', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6030_dia, 'かのじょ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6798_saya, 'おれ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6800_kami, 'おれたち', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6825_kaleng_bir, 'かんびーる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6825_kaleng_bir, 'かんビール', NULL, false, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6899_menjadi_lelah, 'つかれる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_7055_kelelahan, 'つかれ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_7474_hokkaido, 'ほっかいどう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_7495_untuk_memisahkan, 'わかれる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_7496_untuk_berbagi, 'きょうゆうする', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_7523_mengumpulkan, 'かい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_7537_tashirojima, 'たしろじま', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_7538_raut_wajah, 'ひょうじょう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_7576_jari_tengah, 'なかゆび', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_7583_dewi, 'めがみ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_7637_sekolah, 'がくもん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_7694_anggapan, 'そうてい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_7751_raja, 'おうさま', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_8667_ibu_jari, 'おやゆび', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_8705_tuhan, 'かみさま', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_8746_ujung_jari, 'ゆびさき', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_8804_seleksi_khusus, 'とくせん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_8943_agar_diterima, 'うかる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_9009_uranus, 'てんのうせい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_9245_menjadi_kosong, 'あく', NULL, true, true);

  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2741_konvensi, '六日は、サッカーの大会です。', 'Turnamen sepak bola diadakan pada tanggal 6.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2741_konvensi, '毎年、花火大会では、アイスクリームとホットドッグが人気です。', 'Setiap tahun di festival kembang api, es krim dan hot dog menjadi populer.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2741_konvensi, 'マラソン大会で日本一になったの？すごすぎじゃない？', 'Anda yang terbaik di Jepang pada maraton? Bukankah itu luar biasa?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2904_jujur, '川田さんは、とても正直な人です。', 'Kawata adalah orang yang sangat jujur.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2904_jujur, '正直に言って下さい。あなた、ニコラス・ケイジさんですよね？', 'Harap jujur. Anda Nicholas Cage, kan?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2904_jujur, '正直、私は大人になっても一人でベッドに行けません。', 'Sejujurnya, aku sudah dewasa tapi aku tidak bisa tidur sendirian.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3290_jari_kelingking, 'なんでグラスで飲み物を飲む時に小指を立てるの？', 'Mengapa jari kelingkingmu memanjang saat kamu minum dari gelas?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3290_jari_kelingking, 'いってぇー、そこのタンスの角に右足の小指ぶつけた。', 'Aduh! Aku baru saja membenturkan jari kelingking kananku ke sudut meja rias.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3290_jari_kelingking, 'どうしたの？小指、ケガしてるじゃん。', 'Apa yang telah terjadi? Jari kelingkingmu terluka ya?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3292_gaya_barat, 'バターを入れて、うどんを洋風にアレンジしました。', 'Saya memasukkan mentega ke dalam udon untuk memberikan sentuhan gaya barat.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3292_gaya_barat, 'えっ、日本のアーティストの曲なの？なんだか洋風なメロディだね。', 'Oh, apakah itu lagu dari artis Jepang? Kedengarannya seperti melodi gaya barat.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3292_gaya_barat, '私の家は、家具を全て洋風に揃えているので、畳はありません。', 'Rumah saya seluruhnya dilengkapi dengan gaya Barat, jadi tidak ada tikar tatami.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3312_ramah, 'さとみちゃんとは、仲良くなれそう？', 'Apakah kamu pikir hubunganmu akan baik-baik saja dengan Satomi?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3312_ramah, 'あの二人、仲良くないの？', 'Bukankah keduanya akur?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3312_ramah, 'ケンカばかりせずにもっと仲良くしなさい！', 'Berhentilah berkelahi dan rukunlah!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3394_untuk_tiba, '今、成田空港に着きました。', 'Saya baru saja tiba di Bandara Narita.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3394_untuk_tiba, '着く時間が分かったら、またラインして。', 'Setelah Anda mengetahui waktu kedatangan Anda, kirimi saya pesan lagi di LINE.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3394_untuk_tiba, '電車が時間通りに着かなかったんです。', 'Kereta tidak tiba tepat waktu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3515_peminum, '私の彼氏は酒好きです。', 'Pacarku adalah seorang peminum.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3515_peminum, 'あの酒好き、今日も朝から引っかけてやがるぜ。', 'Pecandu alkohol itu minum lagi di pagi hari hari ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3515_peminum, '私の妻は酒好きなので、アル中にならないか心配だ。', 'Istri saya adalah seorang peminum dan saya khawatir dia akan menjadi seorang pecandu alkohol.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3524_membayangkan, 'ゲ、想像するのもヤダ！', 'Ugh, aku bahkan tidak mau membayangkannya!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3524_membayangkan, 'そのシーンを想像してみてください。', 'Silakan coba bayangkan adegan itu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3524_membayangkan, 'コウイチは仕事中、たまに想像できないような動きをする。', 'Sesekali Koichi akan bergerak dengan cara yang tidak terbayangkan saat dia sedang bekerja.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3527_seratus_juta, 'コウイチは東京に一億円のマンションを持っています。', 'Koichi memiliki kondominium seharga seratus juta yen di Tokyo.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3527_seratus_juta, '日本という小さな島国に一億もの人が住んでいるなんて、びっくりだよね。', 'Sungguh mengejutkan bahwa negara kepulauan kecil seperti Jepang memiliki populasi lebih dari seratus juta orang, bukan?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3527_seratus_juta, '宝くじで一億ドル当たったって聞いたんだけど、本当？', 'Saya dengar Anda memenangkan lotere seratus juta dolar. Apakah itu benar?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3528_seratus_juta_yen, 'え、この絵、一億円もするんですか？', 'Tunggu, apakah lukisan ini benar-benar berharga seratus juta yen?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3528_seratus_juta_yen, 'やばい、一億円が入ったスーツケースがない！さっきまでここにあったのに。', 'Oh tidak, koper berisi seratus juta yen hilang! Itu ada di sini beberapa saat yang lalu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3528_seratus_juta_yen, '一億円とか大きな注文は入ってないけど、コンスタントに注文はあるよ。', 'Kami tidak mendapatkan pesanan dalam jumlah besar, ratusan juta yen, tapi kami mendapatkan pesanan tetap.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3529_seratus_juta, '私たちは、今年は五億円を売り上げました。', 'Kami menghasilkan penjualan lima ratus juta yen tahun ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3529_seratus_juta, 'あのドクターは、三億ドルの車に乗っています。', 'Dokter itu mengendarai mobil seharga tiga ratus juta dolar.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3529_seratus_juta, '私は友達が二億人います。', 'Saya punya dua ratus juta teman.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3530_masalah, 'ワニカニの売り上げが落ちるのはトーフグにとって大きな問題です。', 'Akan menjadi masalah besar bagi Tofugu jika pendapatan WaniKani turun.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3530_masalah, 'この数学の問題、全然分からないんだけど。', 'Saya sama sekali tidak mengerti soal matematika ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3530_masalah, '「週末、私の犬の世話をしてもらえないかな？」「問題ないよ。任せといて。」', '"Bisakah kamu menjaga anjingku untuk akhir pekan?" “Tidak masalah. Kamu bisa mengandalkanku.”');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3530_masalah, '試験の問題は一問だけだった。「あなたは本当にあなたですか。」', 'Ujian hanya berisi satu pertanyaan. "Apakah kamu benar-benar kamu?"');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3531_ragu, 'コウイチが本当に肉を食べられないかは疑問です。', 'Diragukan apakah Koichi sebenarnya tidak bisa makan daging.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3531_ragu, 'その考えには、少し疑問を持つ人も多いんじゃないでしょうか。', 'Saya pikir banyak orang mungkin meragukan gagasan itu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3531_ragu, 'それって本当に必要なんでしょうか。正直、私は疑問に思います。　', 'Apakah itu benar-benar diperlukan? Sejujurnya, saya meragukannya.　');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3532_wadah, 'この器は母のです。', 'Mangkuk ini milik ibuku.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3532_wadah, 'どうしよう？これって、コウイチが大切にしていたフグの器だよね？', 'Apa yang harus kita lakukan? Ini mangkuk ikan buntal kesayangan Koichi, kan?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3532_wadah, 'あの人ってホント器が大きいよね。', 'Orang itu sungguh mempunyai hati yang besar, bukan?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3533_tangkas, 'コウイチは手先がとても器用です。', 'Koichi sangat cekatan dengan jari-jarinya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3533_tangkas, 'ビエトはワニカニの着ぐるみを着たまま、器用にコカ・コーラを飲んだ。', 'Viet dengan lihai meminum coca cola sambil mengenakan pakaian maskot WaniKani.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3533_tangkas, '彼女はいつも明るくて良い子なんだけど、あまり器用じゃないのがネックなんだよね。', 'Dia selalu menjadi gadis yang ceria dan baik, tapi kelemahannya adalah dia tidak terlalu terampil.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3534_alat_musik, 'これって何て言う楽器？初めて見た。', 'Apa nama alat musik ini? Saya belum pernah melihatnya sebelumnya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3534_alat_musik, '楽器ってどこで買えばいいの？この辺りにお店ってある？', 'Dimana saya harus membeli alat musik? Apakah ada toko di sekitar sini?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3534_alat_musik, '楽器にも色々ありますが、どんな楽器が好きですか。私は打楽器が好きです。', 'Ada berbagai macam jenis alat musik. Tipe mana yang kamu suka? Saya suka perkusi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3535_peralatan_makan, 'この食器をテーブルの上にならべてくれませんか。', 'Bisakah Anda mengatur piring dan peralatan ini di atas meja?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3535_peralatan_makan, 'あなたが池に落としたのはこの金の食器ですか、それともこの銀の食器ですか。', 'Peralatan apa yang kamu jatuhkan ke dalam kolam, yang emas atau yang perak?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3535_peralatan_makan, 'どうして、食器が１セット多いの？', 'Kenapa kita punya satu set peralatan makan tambahan?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3536_pegulat_sumo, '私の彼氏は力士です。', 'Pacar saya adalah pegulat sumo.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3536_pegulat_sumo, 'あそこにいる力士、有名な人だよね？名前なんだっけ？', 'Pegulat sumo di sana, dia terkenal kan? Siapa namanya lagi?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3536_pegulat_sumo, '大好きな力士からサインをもらいました。', 'Saya mendapat tanda tangan dari pegulat sumo favorit saya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3537_pekerjaan_rumah, '宿題、もうした？', 'Apakah Anda sudah menyelesaikan pekerjaan rumah Anda?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3537_pekerjaan_rumah, '今日の私の宿題、ちょっと見てもらえないかな？', 'Bisakah Anda melihat sekilas pekerjaan rumah saya mulai hari ini?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3537_pekerjaan_rumah, 'つべこべ言わずに、さっさと宿題をしなさい！', 'Berhentilah membuat alasan dan selesaikan pekerjaan rumah Anda!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3538_shinjuku, 'この新宿のホテルのシャワーは、水かぬるま湯しか出ない。', 'Kamar mandi di hotel Shinjuku ini hanya memiliki air dingin atau suam-suam kuku.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3538_shinjuku, 'え、マリアって新宿でバイトしてるの？', 'Tunggu, Maria bekerja paruh waktu di Shinjuku?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3538_shinjuku, '新宿二丁目は今はゲイタウンとして知られています。', 'Shinjuku 2-chome sekarang dikenal sebagai kota gay.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3539_keadaan, '大人には大人の事情があるんですよ。', 'Orang dewasa mempunyai keadaan yang dewasa.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3539_keadaan, '警察はすべての事情を考慮しなければならない。', 'Polisi harus mempertimbangkan semua keadaan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3539_keadaan, '事情は分かりました。こちらで何とかならないか上に話してみます。', 'Saya memahami situasinya. Saya akan berbicara dengan atasan saya untuk mengetahui apakah kami dapat melakukan sesuatu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3540_perasaan_manusia, '昔の人にはもっと人情があった。', 'Di masa lalu, manusia memiliki lebih banyak rasa kemanusiaan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3540_perasaan_manusia, 'ヤクザは人情を重んじます。', 'Yakuza menghargai emosi manusia.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3540_perasaan_manusia, 'あの人、ああ見えて、わりと人情家だよね。', 'Orang itu, meski berpenampilan, cukup manusiawi, bukan?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3541_disayangkan, 'アイツは情けのカケラもない男だよ。', 'Dia adalah pria yang tidak memiliki sedikit pun belas kasihan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3541_disayangkan, 'お前に情けをかけられるなんて、ホント情けないよ。', 'Sungguh menyedihkan aku harus menerima belas kasihan darimu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3541_disayangkan, '70点が合格点のテストで69点だったが、お情けで合格させてもらえた。', 'Saya mendapat enam puluh sembilan poin pada tes di mana tujuh puluh poin adalah skor kelulusan, tetapi saya diizinkan lulus karena belas kasihan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3542_emosi, '私は感情のコントロールがうまく出来ません。', 'Aku tidak bisa mengendalikan emosiku dengan baik.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3542_emosi, 'すごく感情がこもった歌い方だね。', 'Itu cara menyanyi yang sangat emosional, bukan?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3542_emosi, '感情に流されすぎてはいけないよ。', 'Anda tidak boleh membiarkan emosi menguasai diri Anda.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3543_ekspektasi, '私は未来が予想できるんです。', 'Saya bisa memprediksi masa depan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3543_ekspektasi, '私の予想は見事に外れてしまいました。', 'Prediksi saya ternyata salah total.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3543_ekspektasi, 'それは予想外でした。', 'Itu tidak terduga.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3544_kenangan, 'この映画のこの回想のシーンがすごく好きなんだよね。', 'Saya sangat menyukai adegan retrospektif dalam film ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3544_kenangan, 'ポールはビーチで、とりとめのない回想にふけっていた。', 'Paul tersesat dalam kenangan tanpa tujuan di pantai.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3544_kenangan, 'ビエトが時々、仕事中にヤクザ時代のことを回想しているのを私は知っている。', 'Saya tahu Viet terkadang mengenang hari-hari yakuza-nya selama jam kerja.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3545_ideologi, 'コウイチの思想にはついていけません。', 'Saya tidak bisa setuju dengan ide Koichi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3545_ideologi, 'あの人、ちょっと思想が強そうだよね。', 'Orang itu tampaknya mempunyai pandangan yang kuat, bukan begitu?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3545_ideologi, 'もちろん、内心にどんな思想を持つかはその人の自由です。', 'Tentunya setiap orang mempunyai kebebasan untuk menyimpan ide apapun yang diinginkannya di dalam hati.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3548_pesta_minum, 'トーフグの飲み会はとても楽しいですよ！', 'Pesta minum Tofugu sangat menyenangkan!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3548_pesta_minum, '飲み会で一気飲みを強要するのはアルハラだよ。', 'Memaksa seseorang menenggak minuman di pesta minum adalah pelecehan alkohol.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3548_pesta_minum, 'うちの親が飲み会には行っちゃダメだって言うんだよね。', 'Orang tuaku bilang aku tidak bisa pergi ke pesta minum.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3554_untuk_melihat_kembali, 'チラリと見返ると、彼もまだ私のことを見ていました。', 'Saat aku menoleh ke belakang, dia masih menatapku.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3554_untuk_melihat_kembali, '青緑色のチョウチョウがヒラヒラしているのを見ながら、私はふと森君の方を見返りました。', 'Saat aku menyaksikan kepakan kupu-kupu biru kehijauan, aku tiba-tiba melirik ke arah Mori-kun.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3554_untuk_melihat_kembali, 'ガシャーンと大きな音がして、私は思わず後ろを見返った。', 'Terjadi tabrakan besar dan tanpa sadar saya melihat ke belakang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3568_pada_awalnya, '花さんとは、4月の初めに出会いました。', 'Saya bertemu Hana-san pada awal April.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3568_pada_awalnya, 'うちは毎年、年の初めに家族みんなで朝日を見に行きます。', 'Keluarga kami pergi melihat matahari terbit bersama di setiap awal tahun.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3568_pada_awalnya, '初めに口を開いたのはカオルだった。', 'Kaoru-lah yang pertama kali membuka mulutnya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3568_pada_awalnya, '初めになぐりかかってきたのはそっちだろ！', 'Kaulah yang melakukan pukulan pertama!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3569_untuk_pertama_kalinya, '日本は初めてですか？', 'Apakah ini pertama kalinya Anda ke Jepang?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3569_untuk_pertama_kalinya, '初めてのことばかりで、四苦八苦しています。', 'Saya berjuang dengan semua pengalaman baru ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3569_untuk_pertama_kalinya, '初めて会った時から、ずっと気になっていました。', 'Aku tertarik padamu sejak pertama kali kita bertemu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3570_kamikaze, '「風の神様」が、神風を起こしたんだよ。', '''Dewa Angin'' menghasilkan angin ilahi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3570_kamikaze, '神風のおかげで、日本が大勝利をするミラクルが起きたんだ。', 'Berkat angin ilahi, Jepang mengalami kemenangan ajaib.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3570_kamikaze, '五年前、神風が吹き、コウイチはビエトの軍隊を海岸から後退させた。', 'Lima tahun yang lalu, Koichi mengusir pasukan Viet kembali dari pantainya dan mereka ditelan oleh angin dewa.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3571_untuk_membantu, 'あ、手伝うよ。', 'Oh, aku akan membantu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3571_untuk_membantu, 'ごめん、ちょっと手伝ってくれない？', 'Maaf, bisakah kamu membantuku sedikit?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3571_untuk_membantu, '手伝ってあげたいのはやまやまなんだけど、私にはどうにもできないんです。', 'Aku sangat ingin membantu, tapi tidak ada yang bisa kulakukan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3572_tangan_kiri, '私は左利きです。', 'Saya kidal.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3572_tangan_kiri, '左利きの人向けのハサミはありますか？', 'Apakah Anda punya gunting untuk orang kidal?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3572_tangan_kiri, 'あなたは右利きですか？それとも左利きですか？', 'Apakah Anda tidak kidal? Atau apakah Anda kidal?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3573_kelas_pe, '明日は体育があります。', 'Kami ada pendidikan jasmani besok.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3573_kelas_pe, '体育の前には、必ずツメを切って来てください。', 'Sebelum kelas pendidikan jasmani, pastikan untuk memotong kuku Anda.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3573_kelas_pe, '「体育の日」っていつだっけ？十月だよね。', 'Kapan "Hari Kesehatan dan Olahraga" lagi? Ini bulan Oktober, kan?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3574_tangan_kanan, '私の息子は右利きではありません。', 'Anak saya tidak kidal.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3574_tangan_kanan, '左利きなのに、右利きのグローブを買っちゃったんだ。', 'Walaupun saya kidal, saya tidak sengaja membeli sarung tangan kanan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3574_tangan_kanan, '彼女のこと、すごく好きだったんだけど、右利きだって分かってからムリになっちゃったんだよね。どうしてかは分からないけど。', 'Saya sangat menyukainya, tetapi keadaan menjadi canggung setelah saya mengetahui bahwa dia tidak kidal. Saya tidak tahu kenapa.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3576_untuk_memunculkan, '次はオフィスでワサビを育てるつもりです。', 'Selanjutnya saya berencana menanam wasabi di kantor.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3576_untuk_memunculkan, 'この子犬を私の代わりに育ててくれませんか。', 'Bisakah Anda membesarkan anak anjing ini?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3576_untuk_memunculkan, '小学校の時、クラスで何を育ててた？うちのクラスはおたまじゃくしとハムスターとなすを育ててたよ。', 'Apa yang Anda angkat di kelas ketika Anda masih di sekolah dasar? Kelas kami memelihara berudu, hamster, dan terong.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3577_untuk_mengejar, 'あと五分くらいで追い付くと思う。', 'Saya pikir saya akan menyusul dalam waktu sekitar lima menit.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3577_untuk_mengejar, '100メートル走でクリステンに追い付くことができたらオリンピックに出られるよ。', 'Jika Anda bisa mengejar Kristen dalam lari seratus meter, Anda bisa berkompetisi di Olimpiade.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3577_untuk_mengejar, 'まだちょっと気持ちが追い付いてないんです。', 'Aku masih mencoba untuk mengejar ketinggalan secara emosional.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3578_untuk_berjuang, '一人で戦うつもりなの？', 'Apakah Anda berencana untuk bertarung sendirian?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3578_untuk_berjuang, '第二次世界大戦で日本とアメリカは戦いました。', 'Jepang dan Amerika bertempur dalam Perang Dunia II.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3578_untuk_berjuang, '私の兄は病気と戦っています。', 'Adikku sedang berjuang melawan suatu penyakit.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3579_untuk_mengejar, 'マリのこと、追いかけるつもりはないよ。', 'Saya tidak punya niat mengejar Mari.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3579_untuk_mengejar, 'あいつ、パスポート忘れてる！今すぐ追いかけなきゃ。', 'Dia lupa paspornya! Aku harus mengejarnya sekarang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3579_untuk_mengejar, 'あそこで、ウサギを追いかけるライオンを見ました。', 'Saya melihat seekor singa mengejar kelinci di sana.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3580_untuk_memesan, 'Amazonで注文するよ！', 'Saya akan memesannya di Amazon!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3580_untuk_memesan, '銀色のラメの入ったラッピングペーパーを注文しました。', 'Saya memesan kertas kado yang dilapisi glitter perak.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3580_untuk_memesan, '外食でも、お持ち帰りで注文しても、僕はどちらでも構わないよ。', 'Kita bisa makan di luar atau memesan makanan untuk dibawa pulang. Saya tidak keberatan dengan satu atau lain cara.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3581_sangat_suka, '大好きです。', 'Aku mencintaimu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3581_sangat_suka, 'なんだかんだ言っても、フグはワニカニのことが大好きなんですよ。', 'Apapun yang dia katakan, Fugu tetap sangat menyukai WaniKani.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3581_sangat_suka, '体に良くないのは分かってるけど、マクドナルドのポテト、大好きなんだよね。', 'Saya tahu ini tidak baik untuk kesehatan saya, tapi saya sangat menyukai kentang goreng McDonald''s.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3583_untuk_menjadi_longgar, '風船が女の子の手から放れた。', 'Balon itu terlepas dari tangan gadis itu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3583_untuk_menjadi_longgar, 'あの犬はどうやってクサリから放れることができたんだろう。', 'Saya bertanya-tanya bagaimana anjing itu bisa melepaskan tali pengikatnya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3583_untuk_menjadi_longgar, '息子が私たちの手から放れたら、アメリカに住むつもりです。', 'Setelah putra kami lepas kendali, kami berencana untuk tinggal di AS.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3586_untuk_merasakan, 'どう感じるかは人それぞれです。', 'Bagaimana perasaan seseorang berbeda-beda pada setiap orang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3586_untuk_merasakan, '見るのではなく、心で感じてください。', 'Jangan dilihat, rasakan dengan hatimu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3586_untuk_merasakan, '最近兄に冷たくされていると感じます。', 'Aku merasa kakak laki-lakiku bersikap dingin padaku akhir-akhir ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3590_terima_kasih, '感謝祭の日にはみんなに感謝しましょう。', 'Mari kita tunjukkan rasa terima kasih kita kepada semua orang di Hari Thanksgiving.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3590_terima_kasih, '言葉には出さないけど、親にはいつも感謝しています。', 'Aku tidak pernah mengatakannya dengan lantang, tapi aku selalu berterima kasih kepada orang tuaku.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3590_terima_kasih, '皆さんには感謝してもしきれません。私がここにいる立てるのは、皆さんのおかげです。', 'Saya tidak bisa cukup berterima kasih kepada semua orang. Karena kalian semua aku bisa berdiri di sini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3592_uang_masuk, '入館料はいくらですか？', 'Berapa biaya masuknya?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3592_uang_masuk, 'ここの入館料は高すぎます。', 'Biaya masuk ke sini terlalu mahal.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3592_uang_masuk, '今日は入館料はいりません。', 'Tidak ada biaya masuk yang diperlukan hari ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3593_biaya, '日本はガスの料金は高いですか。', 'Apakah tagihan bahan bakar mahal di Jepang?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3593_biaya, 'まずは料金プランを見せてもらえますか？', 'Bisakah Anda menunjukkan kepada saya rencana biaya Anda terlebih dahulu?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3593_biaya, '初回は料金はかかりません。', 'Tidak ada biaya yang dikenakan untuk pertama kalinya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3596_bioskop, 'あ、新しい映画館ができてる。', 'Oh, bioskop baru telah dibangun.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3596_bioskop, '映画館のキャラメルバターのポップコーンが大好きなんです。', 'Saya suka popcorn mentega karamel di bioskop.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3596_bioskop, '今週末、私たちは映画館で新作映画を見る予定です。', 'Kami berencana menonton film baru di bioskop akhir pekan ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3596_bioskop, 'あそこの映画館、いつ行ってもガラガラだから、かなりリラックスして映画が見れるんだよね。', 'Bioskop itu selalu sepi setiap kali kita pergi, jadi kita bisa bersantai dan menikmati filmnya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3596_bioskop, '「今夜、映画館に行かない？」「そうできればいいんだけど、このレポートを仕上げなくちゃいけないんだ。」', '"Apakah kamu ingin pergi ke bioskop malam ini?" "Saya harap saya bisa, tetapi saya harus menyelesaikan makalah ini."');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3597_gelap, 'アレ？なんか画面がいつもより暗い。', 'Hah? Layarnya lebih gelap dari biasanya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3597_gelap, '田中さんの部屋はいつも暗い。', 'Kamar Pak Tanaka selalu gelap.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3597_gelap, '最近は、暗いニュースばっかりでホントにイヤになります。', 'Aku sangat benci dengan semua berita suram akhir-akhir ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3598_pembunuhan, 'そのヤクザの組長は暗殺されてしまいました。', 'Bos yakuza itu akhirnya dibunuh.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3598_pembunuhan, 'もう暗殺教室の映画は見ましたか？', 'Apakah kamu sudah menonton film Assassination Classroom?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3598_pembunuhan, 'ねぇ、ビエト！どうやってこんなに面白い暗殺計画を思いついたの？', 'Hei, Vietnam! Bagaimana Anda bisa membuat rencana pembunuhan yang unik?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3599_hafalan, '暗記は苦手なんです。', 'Aku tidak pandai menghafal.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3599_hafalan, 'え、これを丸暗記したの？', 'Oh, apakah kamu menghafal kata demi kata ini?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3599_hafalan, '彼はクラスのお調子者で、いつもボケているが、暗記力はすごい。', 'Dia badut kelas dan selalu bersikap bodoh, tapi dia sangat pandai menghafal.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3600_nama_resmi_ender, 'コウイチ様は、何もかもが自分の思い通りにならないと気がすまないんですよ。', 'Koichi-sama tidak tahan jika semuanya tidak sesuai keinginannya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3600_nama_resmi_ender, '日本で手紙を送る時には相手の名前に様をつけないと失礼になります。', 'Tidak sopan jika Anda tidak melampirkan nama formal ender, sama, pada nama penerima saat Anda mengirim surat di Jepang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3600_nama_resmi_ender, 'トーフグのコウイチ様御一行九名様ですね。お席のご用意ができましたのでどうぞ。', 'Tuan Koichi dari Tofugu, rombongan sembilan. Meja Anda sudah siap.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3603_sasaran, '川村さんの人生の目標はなんですか。', 'Tuan Kawamura, apa tujuan hidup Anda?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3603_sasaran, 'まずは目標を立てましょう！', 'Pertama, mari kita tetapkan tujuan!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3603_sasaran, '五十メートル先の目標に向かって矢を放ちました。', 'Saya menembakkan anak panah ke arah sasaran lima puluh meter di depan saya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3604_menjembatani, '彼氏に橋の上でキスされちゃった。', 'Pacarku menciumku di jembatan!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3604_menjembatani, 'これは何という橋ですか？', 'Apa nama jembatan ini?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3604_menjembatani, 'その橋の名前は日本橋といいます。日本橋は、その名の通りまさに日本の中心でした。', 'Nama jembatan itu adalah Nihonbashi. Sesuai dengan namanya, kota ini benar-benar merupakan pusat Jepang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3605_untuk_membunuh, 'あのハエ、どうやって殺すつもりなの？', 'Bagaimana rencanamu untuk membunuh lalat itu?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3605_untuk_membunuh, 'お前なんか殺してやる！', 'Aku akan membunuhmu!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3605_untuk_membunuh, 'うちの子は、虫を殺すこともできないくらい気の弱い子なんです。', 'Anak saya sangat penakut sehingga mereka bahkan tidak sanggup membunuh serangga.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3606_pembunuhan, '私はドラマの殺人のシーンとかも苦手なんです。', 'Aku juga tidak pandai dengan adegan pembunuhan di drama.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3606_pembunuhan, 'えっ、うちの学校で殺人！？それ、マジ？', 'Hah, pembunuhan di sekolah kita!? Apakah itu nyata?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3606_pembunuhan, 'この殺人計画じゃうまくいかないと思うよ。', 'Saya tidak berpikir rencana pembunuhan ini akan berjalan dengan baik.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3607_bunuh_diri, '自殺をしてはいけません。', 'Anda tidak boleh bunuh diri.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3607_bunuh_diri, '自殺が頭によぎったら、すぐヘルプラインに電話してください。', 'Ketika pikiran untuk bunuh diri muncul, harap hubungi saluran bantuan untuk mendapatkan bantuan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3607_bunuh_diri, 'フォーラムで色々な人とやりとりをするうちに、自然と自殺を思いとどまることができたという人もいました。', 'Ada orang yang, melalui interaksi dengan berbagai individu di forum, secara alami menahan diri dari pikiran untuk bunuh diri.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3608_sepenuhnya, 'え、全然そんなことないよ。', 'Eh, bukan seperti itu sama sekali.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3608_sepenuhnya, '「すみません。今、ちょっといいですか？」「はい、全然いいですよ！」', '"Permisi. Bolehkah aku menanyakan sesuatu padamu sekarang?" "Ya, tentu saja, silakan!"');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3608_sepenuhnya, '彼が何を言っているのか、全然分かりませんでした。', 'Saya tidak tahu apa yang dia bicarakan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3609_alami, '「すごい！あのテストで百点とったの？」「当然さ。」', '"Wow! Kamu mendapat nilai seratus pada tes itu?" "Tentu saja."');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3609_alami, '日本語が上手くなりたいのなら、毎日少しずつでも練習するのは当然でしょう！', 'Jika Anda ingin mahir berbahasa Jepang, wajar jika Anda berlatih meski hanya sedikit setiap hari bukan?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3609_alami, 'あんな良い彼女がいるなんて、お前は本当に運がいいよな。当然のことだなんて思うなよ。', 'Kamu sangat beruntung mempunyai pacar yang baik. Jangan anggap remeh dia.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3610_alam, '日本の自然が大好きです。', 'Saya suka alam Jepang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3610_alam, 'そう感じてしまうのは、自然なことですよ。', 'Wajar jika kita merasa seperti itu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3610_alam, 'ユーザーから、ワニカニを自然に返すように言われました。', 'Kami disuruh oleh pengguna untuk melepaskan WaniKani ke alam liar.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3611_gairah, '情熱さえあれば何だってできるよ！', 'Anda dapat melakukan apapun yang Anda inginkan selama Anda memiliki passion.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3611_gairah, '私たちはみんな、情熱を持って日本語を教えています。', 'Kami semua mengajar bahasa Jepang dengan penuh semangat.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3611_gairah, 'すごい！ついに情熱を注げることが見つかったんですね！', 'Luar biasa! Anda akhirnya menemukan sesuatu yang dapat Anda curahkan!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3612_demam, '今日は少し熱があるので外出できません。', 'Saya sedikit demam hari ini jadi saya tidak bisa keluar.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3612_demam, 'ちょっと熱っぽいし、ダルいんだよね。', 'Saya sedikit demam dan lesu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3612_demam, 'え、やば。熱、40度もあるじゃん。', 'Oh tidak, aku demam empat puluh derajat?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3613_hal_panas, '私は熱いお茶が好きです。', 'Saya suka teh panas.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3613_hal_panas, 'でも、これはちょっと熱すぎます。', 'Tapi ini agak terlalu panas.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3613_hal_panas, 'うちらの高２の時の先生、すごい熱い先生だったよね。', 'Guru kami di tahun kedua sekolah menengah kami sangat bersemangat, bukan?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3614_antusiasme, 'みんな、とても熱心に先生の話を聞いていましたよ。', 'Semua orang mendengarkan guru dengan penuh perhatian.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3614_antusiasme, 'このアイドルグループには熱心なファンがたくさんいる。', 'Grup idola ini memiliki banyak penggemar setia.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3614_antusiasme, 'サオリさんの母親はとても教育熱心です。', 'Ibu Saori sangat bersemangat dalam bidang pendidikan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3615_setiap_orang, 'それは皆さんが決めてください。', 'Itu terserah kalian semua.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3615_setiap_orang, '私は皆さんと仲良くなりたいだけなんです。決して下心なんてありません。', 'Saya hanya ingin bergaul dengan semua orang. Saya sama sekali tidak punya motif tersembunyi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3615_setiap_orang, '皆さん、こんにちは。お元気ですか？', 'Halo semuanya. Apa kabarmu?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3617_hijau, 'このネコ、目の色が緑なんだよ。', 'Kucing ini memiliki mata berwarna hijau.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3617_hijau, 'え、カーペット、緑にしたの？', 'Apa, apakah kamu memilih karpet hijau?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3617_hijau, 'ここは緑がいっぱいで、気持ちいいね！', 'Tempat ini penuh dengan tanaman hijau, rasanya menyegarkan sekali!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3618_hijau, 'この玉子、なんで緑色なの！？', 'Mengapa telur ini berwarna hijau!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3618_hijau, 'クリスマスっぽいメイクをしようと思って、赤色と緑色のアイシャドウを買いました。', 'Saya membeli eyeshadow merah dan hijau untuk membuat riasan seperti Natal.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3618_hijau, 'どっちかっていうと、そっちの緑色のネクタイの方がいい気がする。', 'Sejujurnya, saya merasa dasi hijau di sana akan lebih baik.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3619_praktik, '一年間、毎日休まず練習しました。', 'Saya berlatih setiap hari tanpa henti selama setahun.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3619_praktik, '今日はピアノの練習、もうしたの？', 'Sudahkah Anda berlatih piano hari ini?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3619_praktik, '練習しないと上手くならないよ。', 'Anda tidak akan menjadi lebih baik jika Anda tidak berlatih.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3620_puisi, '詩が大好きで、毎日詩を読んでいます。', 'Saya sangat menyukai puisi, jadi saya membacanya setiap hari.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3620_puisi, '十四才の時に詩を作り始めました。', 'Saya mulai menulis puisi ketika saya berumur empat belas tahun.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3620_puisi, '今日の宿題は、日本語で詩を書くことです。', 'Pekerjaan rumah hari ini adalah menulis puisi dalam bahasa Jepang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3621_penyair, 'サーモンは今世紀を代表する詩人です。', 'Salmon adalah seorang penyair yang mewakili abad saat ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3621_penyair, '友人に詩人が一人います。', 'Saya mempunyai seorang teman yang merupakan seorang penyair.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3621_penyair, '彼はカナダの生まれの詩人です。', 'Dia adalah seorang penyair yang lahir di Kanada.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3622_puisi, '私たちは詩歌の作り方を学んでいます。', 'Kami sedang belajar menulis puisi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3622_puisi, '最近は詩歌をたしなんでいます。', 'Akhir-akhir ini aku sedang menikmati puisi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3622_puisi, 'これは詩歌を楽しむために作られたラジオ番組です。', 'Ini adalah program radio yang dibuat untuk menikmati puisi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3623_manajer_bagian, '先月、課長になりました。', 'Saya menjadi manajer bagian bulan lalu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3623_manajer_bagian, '課長になれて、うれしいです。', 'Saya senang menjadi kepala bagian.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3623_manajer_bagian, 'うちの課の課長、少しうざいんだよね。', 'Kepala bagian di bagian kami agak menyebalkan lho.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3624_untuk_meminta_maaf, '自分がしたことじゃないのに謝るつもりはないよ。', 'Saya menolak untuk meminta maaf atas sesuatu yang tidak saya lakukan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3624_untuk_meminta_maaf, 'コウイチちゃんに今すぐ謝りなさい！', 'Minta maaf pada Koichi sekarang juga!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3624_untuk_meminta_maaf, 'いや、何でお前が謝るんだよ。謝らなくていいよ。', 'Tidak, kenapa kamu meminta maaf? Anda tidak perlu meminta maaf.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3625_hadiah_uang_tunai, '実はコウイチの首には賞金がかけられているって知っていましたか。', 'Tahukah kamu kalau hadiah uang sebenarnya ada di kepala Koichi?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3625_hadiah_uang_tunai, 'このレースの賞金は一億円です。', 'Hadiah uang untuk perlombaan ini adalah 100 juta yen.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3625_hadiah_uang_tunai, 'コンテストの賞金は、いつもらえますか？', 'Kapan saya akan menerima hadiah uang dari kontes?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3626_roda, 'バイクの車輪が外れてしまいました。', 'Roda sepeda motor saya lepas.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3626_roda, 'え、四角い車輪なんてあるんですか？', 'Tunggu, apakah roda persegi itu ada?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3626_roda, '三輪車の車輪で足の小指を打ったんです！', 'Jari kelingkingku terbentur roda roda tiga!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3627_cincin, '早くこの輪投げの輪を投げてくださいよ！', 'Tolong lempar cincin Quoits ini dengan cepat!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3627_cincin, 'パーティーに行くと、友だちの輪が広がります。', 'Jika saya pergi ke pesta, lingkaran pertemanan saya bertambah.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3627_cincin, '天使たちは、それぞれの輪っかをキラキラさせながら、みんなで輪になってダンスしました。', 'Para malaikat menari dalam lingkaran, masing-masing lingkaran cahayanya bersinar terang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3628_untuk_memilih, 'うちの子はいつも選ぶのに時間がかかるんです。', 'Anak saya selalu butuh waktu lama untuk menentukan pilihan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3628_untuk_memilih, '好きなものを選んでいいよ！', 'Anda dapat memilih apa pun yang Anda suka!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3628_untuk_memilih, '色々ありすぎて選べないよ！', 'Ada terlalu banyak pilihan, dan saya tidak bisa memutuskan!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3629_atlet_pro, 'あのハンサムな選手は誰ですか。', 'Siapakah atlet profesional tampan itu?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3629_atlet_pro, '彼はメジャーリーグでプレイする日本人のプロ野球選手です。', 'Dia adalah pemain bisbol profesional Jepang yang bermain di Major League Baseball.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3629_atlet_pro, 'ダルビッシュ選手からサインをもらいました。', 'Saya mendapat tanda tangan dari pemain bernama Darvish.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3630_air_raksa, '海魚の体が大きいほど体内にたくさん水銀がたまっています。', 'Semakin besar ikan laut, semakin banyak merkuri dalam tubuhnya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3630_air_raksa, '何で水星も水銀もどっちもマーキュリーなの？', 'Mengapa Merkurius dan planet Merkurius disebut “merkuri”?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3630_air_raksa, '水に落ちたその花は、月明かりで少し水銀色に光って見えた。', 'Bunga yang jatuh ke dalam air tampak agak berwarna merkuri di bawah sinar bulan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3631_perak, 'スプーンは、銀か金、どちらにする？', 'Apakah Anda lebih suka sendok perak atau emas?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3631_perak, 'うちの子、銀歯があるからグミは食べれないんだ。', 'Anak saya tidak bisa makan permen karet karena isinya berwarna perak.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3631_perak, '銀の軽トラが私の横に止まった。', 'Sebuah truk pick-up berwarna perak berhenti di sampingku.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3632_perak, 'このキャラの目の色は銀色がいいと思います。', 'Menurut saya perak akan menjadi warna yang bagus untuk mata karakter ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3632_perak, 'コウイチの銀色のヒゲを私に売ってくれませんか？', 'Bisakah Anda menjual kumis perak Koichi kepada saya?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3632_perak, '私のダンスの相手は、あの銀色のコスチュームを着たフグって男よ。', 'Rekan dansaku adalah pria berkostum perak itu. Namanya Fugu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3633_bank, '銀行にお金を下ろしに行かないといけないんです。', 'Saya harus pergi ke bank untuk menarik sejumlah uang tunai.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3633_bank, '私の姉は銀行で働いています。', 'Kakak perempuan saya bekerja di bank.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3633_bank, 'この辺りに、みずほ銀行はありますか？', 'Apakah ada Bank Mizuho di area ini?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3634_cermin, 'ヘアブラシなら、鏡の前にあります。', 'Jika Anda sedang mencari sikat rambut, ada di depan cermin.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3634_cermin, 'あはは、ほっぺにケチャップついてるよ。鏡、見てきな！', 'Haha, ada saus tomat di pipimu. Pergi periksa di cermin!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3634_cermin, 'こんなところに手鏡が落ちてる。なんでだろう。', 'Sebuah cermin tangan tergeletak di sini. Kenapa ya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3635_sebanyak_yang_anda_inginkan, '食べ放題に行くといつも食べすぎてしまいます。', 'Setiap kali saya pergi ke restoran makan sepuasnya, saya akhirnya makan terlalu banyak.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3635_sebanyak_yang_anda_inginkan, 'カラオケに行くなら、朝まで歌い放題のプランにしようよ。', 'Kalau kita pergi karaoke, kenapa kita tidak memilih plan dimana kita bisa bernyanyi sepuasnya sampai pagi hari?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3635_sebanyak_yang_anda_inginkan, 'ワニカニをサブスクライブすれば、漢字の勉強がし放題ですよ。', 'Jika Anda berlangganan Wanikani, Anda dapat mempelajari kanji sebanyak yang Anda mau.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3636_topik, '次の話題はこちらです。', 'Topik selanjutnya adalah yang ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3636_topik, '友だちと話題のフグをかいに行きました。', 'Kami pergi membeli fugu yang banyak dibicarakan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3636_topik, 'それ、SNSでめっちゃ話題になってたよね。', 'Itu banyak tren di media sosial, bukan?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3639_untuk_membina, '家族を養うにはお金がかかります。', 'Dibutuhkan uang untuk membesarkan sebuah keluarga.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3639_untuk_membina, 'ワニカニがトーフグを養っているの？それともトーフグがワニカニを養っているの？', 'Apakah WaniKani menumbuhkan Tofugu atau Tofugu menumbuhkan WaniKani?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3639_untuk_membina, 'うちの学校では、考える力を養う教育に力を入れています。', 'Di sekolah kami, kami fokus pada pendidikan yang memupuk keterampilan berpikir kritis.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3640_anak_angkat, '駅長の子は、どうやら養子らしいです。', 'Kudengar anak kepala stasiun sebenarnya adalah anak angkat.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3640_anak_angkat, '私の友人は、赤ちゃんを養子に出すことにしました。', 'Teman saya memutuskan untuk menyerahkan bayinya untuk diadopsi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3640_anak_angkat, '二人は養子をもらって育てました。', 'Pasangan itu mengadopsi dan membesarkan seorang anak.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3641_penginapan_jepang, 'すごくいい旅館ですね！', 'Ini ryokan yang sangat bagus!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3641_penginapan_jepang, '来月日本に旅行に行くんだけど、旅館とホテルとどっちにステイするのがいいと思う？', 'Saya akan bepergian ke Jepang bulan depan. Menurut Anda di mana saya harus tinggal: penginapan atau hotel bergaya Jepang?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3641_penginapan_jepang, 'なんでこの旅館、こんなにゴキブリが出るの？', 'Kenapa banyak sekali kecoa di penginapan jepang ini?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3643_stasiun, '次は新宿駅です。', 'Berikutnya adalah Stasiun Shinjuku.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3643_stasiun, '今、上野駅の駅前にいます。', 'Saat ini saya berada di depan Stasiun Ueno.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3643_stasiun, 'まさか駅でバッタリお会いするなんて思ってもいませんでしたよ。', 'Aku tidak pernah menyangka akan bertemu denganmu di stasiun.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3644_depan_stasiun, '駅前のマンションに住んでいます。', 'Saya tinggal di sebuah apartemen di depan stasiun.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3644_depan_stasiun, '駅前で先生を見かけたよ。', 'Saya melihat guru saya di depan stasiun.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3644_depan_stasiun, 'コンビニなら駅前にあるよ。', 'Jika Anda mencari toko serba ada, letaknya di depan stasiun.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3645_pegawai_stasiun_kereta_api, 'あそこの駅員さんに聞いてみましょう。', 'Mari kita bertanya kepada petugas stasiun di sana.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3645_pegawai_stasiun_kereta_api, 'この駅には、駅員はいません。', 'Tidak ada petugas stasiun di stasiun ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3645_pegawai_stasiun_kereta_api, 'スペイン語が話せる駅員さんはいますか？', 'Apakah ada petugas stasiun yang bisa berbahasa Spanyol?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3646_kepala_stasiun, '今日は好きなアイドルがこの駅で一日駅長をしているんです。', 'Hari ini, idola favoritku bertugas sebagai kepala stasiun di stasiun ini pada hari itu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3646_kepala_stasiun, '川田さんはここの駅長と親友なんです。', 'Kawada-san adalah teman dekat kepala stasiun di sini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3646_kepala_stasiun, 'えっ！あの駅長、元プロゴルファーだよね？', 'Apa?! Kepala stasiun itu dulunya adalah pegolf profesional, bukan?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3888_untuk_memanaskan_sesuatu, 'おにぎり、温める？', 'Apakah Anda ingin menghangatkan onigiri?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3888_untuk_memanaskan_sesuatu, '牛乳を温めてホットミルクにして飲むのが好きです。', 'Saya suka memanaskan susu dan meminumnya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3888_untuk_memanaskan_sesuatu, 'そのアイディアは私がずっと温めてきたものです。', 'Ide itu adalah sesuatu yang telah saya pelihara sejak lama.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3903_pengaturan, 'このアパートの住民の部屋はみんなきちんと整理されています。', 'Kamar-kamar penghuni apartemen ini semuanya tertata rapi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3903_pengaturan, 'まだ考えがちゃんと整理できていません。', 'Saya belum mengatur pikiran saya dengan baik.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3903_pengaturan, '今日はスマホのフォトライブラリーを整理しました。', 'Hari ini saya mengatur perpustakaan foto di ponsel saya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4466_memahami, '理解ができたら、次のステップに進みましょう！', 'Setelah Anda memahaminya, mari lanjutkan ke langkah berikutnya!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4466_memahami, 'うちの社長のアイデアは、いつもみんなの理解をこえています。', 'Ide-ide presiden perusahaan kami selalu di luar pemahaman semua orang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4466_memahami, '大好きだよ、ソファー。お前だけはオレのことを理解してくれる。', 'Aku mencintaimu, sofa. Hanya kamu yang mengerti aku.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4466_memahami, '油と水が混じらないということは理解しています。', 'Saya mengerti bahwa minyak dan air tidak dapat bercampur.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4857_untuk_memecahkan, 'パズルを解くのが好きなんです。', 'Saya suka memecahkan teka-teki.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4857_untuk_memecahkan, 'その天才少年は、そのナゾを３分で解くことができました。', 'Bocah jenius itu mampu memecahkan misteri itu dalam tiga menit.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4857_untuk_memecahkan, '「こんな問題、三分で解けるさ！」って言ってたのに、三週間たってもまだ解答が送られてこないんだよね。', 'Dia berkata, "Saya bisa menyelesaikan masalah seperti ini dalam tiga menit!" tapi bahkan setelah tiga minggu, dia masih belum mengirimkan jawabannya padaku.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4857_untuk_memecahkan, '私たちは今、この暗号を解くためのヒントをさがしています。', 'Kami sedang mencari petunjuk untuk memecahkan kode ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4881_penginapan, 'こんな宿、ここにあったっけ？', 'Apakah ada penginapan seperti itu di sini?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4881_penginapan, '宿がまだ決まってないんだよ。', 'Kami masih belum memutuskan hotel.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4881_penginapan, 'ここはすごく有名な宿なんです。', 'Ini adalah penginapan yang sangat terkenal.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5897_pacar, 'あれ、カオルの彼氏じゃない？', 'Hei, bukankah itu pacar Kaoru?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5897_pacar, 'このネックレス、彼氏にもらったんだ。', 'Aku mendapat kalung ini dari pacarku.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5897_pacar, 'え、彼氏できたの？', 'Oh, kamu punya pacar?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5897_pacar, 'ねぇ、私、あなたと喋るだけで、いい気分になるわ。あなたって、私にとって本当に理想の彼氏だわ。', 'Tahukah Anda, suasana hati saya menjadi baik hanya dengan berbicara dengan Anda. Kamu benar-benar pacar idealku.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6030_dia, '彼女はハナさんです。', 'Dia adalah Hana.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6030_dia, '彼女とディズニーランドに行ってきた。', 'Saya pergi ke Disneyland dengan pacar saya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6030_dia, '俺の彼女、めっちゃかわいいだろ？', 'Pacarku manis sekali ya?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6030_dia, '彼女は服のセンスがいい。', 'Dia memiliki selera pakaian yang bagus.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6798_saya, '俺は生ビールにするよ。', 'Aku akan minum bir.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6798_saya, 'こいつ、俺のツレなんだ。', 'Dia temanku.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6798_saya, 'あ、いいよ、俺がやるから。', 'Oh, tidak apa-apa, aku akan melakukannya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6798_saya, 'やあ、コウイチ！俺、久しぶりにお前に会ったから、話したいことが山ほどあるよ。', 'Hai Koichi, banyak hal yang harus kita kejar.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6800_kami, '俺たち、一年生です。', 'Kami mahasiswa baru.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6800_kami, 'それ、俺たちのバイクです。', 'Itu adalah sepeda motor kami.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6800_kami, '誰もやらないんだったら、俺たちがやるしかないだろ！', 'Jika tidak ada orang lain yang mau melakukannya, kita harus melakukannya!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6825_kaleng_bir, 'これはジュースじゃないです。缶ビールです。', 'Ini bukan jus. Ini sekaleng bir.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6825_kaleng_bir, '缶ビールも1本、買ってきてくれない？', 'Bisakah kamu juga memberiku sekaleng bir?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6825_kaleng_bir, '缶ビールはあまり好きじゃないんです。', 'Saya tidak terlalu suka bir kaleng.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6899_menjadi_lelah, 'うちの犬はおじいちゃんなので、すぐ疲れるんです。', 'Anjing saya sudah tua dan mudah lelah.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6899_menjadi_lelah, 'もう考えるのに疲れちゃったんだよ。', 'Aku lelah berpikir.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6899_menjadi_lelah, '目が疲れてるんじゃない？', 'Mungkin matamu lelah.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7055_kelelahan, 'ネコは疲れをいやしてくれるよ。', 'Kucing akan menenangkan Anda saat Anda lelah.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7055_kelelahan, '年のせいか、疲れが中々とれないんだよね。', 'Mungkin karena aku sudah tua, tapi aku tidak bisa menghilangkan rasa lelahku dengan mudah.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7055_kelelahan, 'うちの子は、疲れ知らずで、一日中ずーっと走り回ってられるんです。', 'Anak kecil kami tidak kenal lelah dan bisa berlarian sepanjang hari.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7474_hokkaido, '北海道は日本の北にあります。', 'Hokkaido terletak di utara Jepang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7474_hokkaido, '北海道では、ラベンダーやメロンが有名です。', 'Lavender dan melon terkenal di Hokkaido.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7474_hokkaido, '冬休みに北海道に行って、おいしいカニや魚とみそラーメンが食べたいです。', 'Saya ingin pergi ke Hokkaido selama liburan musim dingin dan makan kepiting, ikan, dan miso ramen yang lezat.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7474_hokkaido, '私の父は「北海道はでっかいどう」というダジャレを言うのが大好きです。これは、「北海道」と「でっかいぞ」の言葉遊びです。', 'Ayah saya suka membuat permainan kata-kata "Hokkaido wa dekkai do". Ini adalah plesetan dari kata "Hokkaido" dan "dekkai zo" (artinya "sangat besar").');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7495_untuk_memisahkan, '別れるのはイヤ！', 'Saya tidak ingin putus!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7495_untuk_memisahkan, '先月、彼氏と別れました。', 'Saya putus dengan pacar saya bulan lalu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7495_untuk_memisahkan, 'え、なんで別れたの？', 'Tunggu, kenapa kamu putus?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7496_untuk_berbagi, 'そのデータはどうやって共有するつもりですか？', 'Bagaimana Anda berencana membagikan data tersebut?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7496_untuk_berbagi, '社内では、Dropboxを使って共有しています。', 'Kami membagikannya secara internal menggunakan Dropbox.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7496_untuk_berbagi, '画像やビデオって家族で共有してますか？', 'Apakah Anda berbagi gambar atau video dengan keluarga Anda?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7523_mengumpulkan, 'ボランティアの会に入った。', 'Saya bergabung dengan pertemuan sukarelawan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7523_mengumpulkan, '夕べ、女子会をしました。', 'Kami mengadakan pesta khusus perempuan tadi malam.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7523_mengumpulkan, '日本では、学校に行くとまずクラスの朝の会があります。', 'Di Jepang, ketika Anda pergi ke sekolah, hal pertama yang Anda lakukan adalah mengadakan pertemuan kelas pagi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7537_tashirojima, '田代島の人口は百人以下です。', 'Populasi Tashirojima kurang dari seratus.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7537_tashirojima, '田代島にはガソリンスタンドがありません。', 'Tidak ada pompa bensin di Tashirojima.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7537_tashirojima, '田代島にはネコがたくさんいます。', 'Ada banyak kucing di Pulau Tashirojima.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7538_raut_wajah, 'このイラストの女の子の表情、めっちゃいいね。', 'Saya sangat menyukai ekspresi wajah gadis dalam ilustrasi ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7538_raut_wajah, 'アンタ、なんか表情がソフトになったね。', 'Hei, ekspresimu tampak lebih lembut sekarang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7538_raut_wajah, 'うちの子、いつも表情がカタイんだよね。', 'Anak saya selalu mempunyai ekspresi kaku lho?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7576_jari_tengah, 'ネコに中指をなめられました。', 'Seekor kucing menjilat jari tengahku.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7576_jari_tengah, '中指にタコができちゃいました。', 'Saya mendapat kapalan di jari tengah saya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7576_jari_tengah, '中指を立てるんじゃない！', 'Jangan mengacungkan jari tengahmu!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7583_dewi, '彼女はオレの女神様なんだ！', 'Dia dewiku!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7583_dewi, 'あなたは女神のように美しいですね。', 'Kamu secantik dewi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7583_dewi, '実は、自由の女神があるのは、ニューヨーク州じゃなく、ニュージャージー州だって知っていましたか？ ', 'Tahukah Anda kalau Patung Liberty sebenarnya terletak di New Jersey, bukan New York?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7637_sekolah, '学問と文学は切っても切れない関係にある。', 'Beasiswa selalu dikaitkan dengan sastra.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7637_sekolah, '戦争によって、学問の自由は失われたんです。', 'Kebebasan akademis hilang akibat perang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7637_sekolah, 'この神社は、学問の神様のいる神社として知られています。', 'Kuil ini dikenal sebagai kuil tempat bersemayamnya dewa pembelajaran.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7694_anggapan, '心配いりません。それは想定内です。', 'Jangan khawatir. Hal ini memang diharapkan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7694_anggapan, '想定外のことが起きても、落ち着いて行動できるようトレーニングを重ねています。', 'Bahkan jika hal tak terduga terjadi, saya melatih diri saya untuk tetap tenang dan bertindak sesuai dengan itu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7694_anggapan, '地震を想定した避難訓練を行います。', 'Kami sekarang akan melakukan latihan bencana dengan asumsi ada gempa bumi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7751_raja, '王様は料理が大好きです。', 'Raja suka memasak.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7751_raja, 'あの王様は、とんでもなくケチなんだ。', 'Raja itu sangat pelit.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7751_raja, 'あの王様の画像、もう見ましたか？', 'Pernahkah Anda melihat gambar raja itu?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8667_ibu_jari, '親指を放してくれ！', 'Lepaskan jempolku!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8667_ibu_jari, 'うちの家族は全員親指にホクロがあります。', 'Semua orang di keluarga saya memiliki tahi lalat di ibu jari mereka.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8667_ibu_jari, '足の親指にイボができました。', 'Aku punya kutil di jempol kakiku.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8705_tuhan, 'あそこにいるのは神様です。', 'Itu adalah dewa di sana.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8705_tuhan, 'ギターの神様と言えば、誰を思いうかべますか？', 'Jika berbicara tentang dewa gitar, siapa yang terlintas dalam pikiran Anda?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8705_tuhan, 'あれは多分神様のイタズラだったのだろう。', 'Itu mungkin semacam lelucon yang dilakukan para dewa.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8746_ujung_jari, 'マリアって、左の小指の指先のホクロがセクシーだよね？', 'Tidakkah menurutmu Maria memiliki tahi lalat yang seksi di ujung kelingking kirinya?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8746_ujung_jari, 'コウイチは、考え事をしている時、サッカーボールを指先でクルクルと回すクセがあります。', 'Koichi memiliki kebiasaan memutar bola di ujung jarinya sambil berpikir.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8746_ujung_jari, '指先が赤くなってるね。', 'Ujung jarimu merah.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8804_seleksi_khusus, '親分の絵が、コンクールで特選に入賞したぞ！', 'Lukisan bos kami memenangkan hadiah spesial di kontes!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8804_seleksi_khusus, '今日のディナーは特選和牛のシャブシャブです。', 'Makan malam malam ini adalah shabu-shabu daging sapi Jepang premium.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8804_seleksi_khusus, '社長から特選米をプレゼントしていただきました。', 'Saya menerima hadiah beras premium dari presiden perusahaan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8943_agar_diterima, 'やった！シアトル市の大学に受かったよ！', 'Hore! Saya diterima di universitas di Seattle!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8943_agar_diterima, '次回受からなければ、医者になれるチャンスは少なくなるよ。', 'Jika Anda tidak lulus di lain waktu, peluang Anda untuk menjadi dokter akan lebih kecil.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8943_agar_diterima, '試験に受かるまで週末は出かけないって決心したんだ。', 'Saya membuat resolusi bahwa saya tidak akan keluar pada akhir pekan sampai saya lulus ujian.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9009_uranus, 'これは天王星の画像です。', 'Ini dalam gambar Uranus.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9009_uranus, '天王星の発見者はウィリアム・ハーシェルです。', 'Penemu Uranus adalah William Herschel.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9009_uranus, '天王星は一回りするのに八十四年かかります。', 'Uranus membutuhkan delapan puluh empat tahun untuk menyelesaikan satu orbit.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9245_menjadi_kosong, 'マサオのグラスが空くと、ミチコはそっとワインを注いだ。', 'Saat gelas Masao menjadi kosong, Michiko diam-diam menuangkan anggur ke dalamnya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9245_menjadi_kosong, 'スケジュールが空いてる日を教えてください。', 'Tolong beri tahu saya hari-hari ketika jadwal Anda senggang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9245_menjadi_kosong, 'ラッキーなことに、テーブルが一つ空いていたのですぐ店に入れました。', 'Untungnya, ada satu meja yang tersedia, jadi kami bisa langsung duduk di restoran.');

  -- 4. PREREQUISITES
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_859_masalah, id FROM items WHERE type = 'radical' AND (slug = '214' OR id = '214') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_859_masalah, id FROM items WHERE type = 'radical' AND (slug = '16' OR id = '16') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_860_mengajukan, id FROM items WHERE type = 'radical' AND (slug = '78' OR id = '78') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_860_mengajukan, id FROM items WHERE type = 'radical' AND (slug = '75' OR id = '75') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_860_mengajukan, r_239_ratus);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_861_membayangkan, id FROM items WHERE type = 'radical' AND (slug = '23' OR id = '23') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_861_membayangkan, id FROM items WHERE type = 'radical' AND (slug = '53' OR id = '53') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_861_membayangkan, id FROM items WHERE type = 'radical' AND (slug = '65' OR id = '65') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_862_merasa, r_9389_anjing);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_862_merasa, id FROM items WHERE type = 'radical' AND (slug = '16' OR id = '16') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_862_merasa, id FROM items WHERE type = 'radical' AND (slug = '65' OR id = '65') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_863_mengatur, id FROM items WHERE type = 'radical' AND (slug = '219' OR id = '219') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_863_mengatur, id FROM items WHERE type = 'radical' AND (slug = '60' OR id = '60') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_863_mengatur, id FROM items WHERE type = 'radical' AND (slug = '229' OR id = '229') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_864_gelap, id FROM items WHERE type = 'radical' AND (slug = '22' OR id = '22') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_864_gelap, id FROM items WHERE type = 'radical' AND (slug = '197' OR id = '197') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_865_nama_resmi_ender, id FROM items WHERE type = 'radical' AND (slug = '23' OR id = '23') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_865_nama_resmi_ender, id FROM items WHERE type = 'radical' AND (slug = '136' OR id = '136') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_865_nama_resmi_ender, id FROM items WHERE type = 'radical' AND (slug = '45' OR id = '45') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_866_menjembatani, id FROM items WHERE type = 'radical' AND (slug = '23' OR id = '23') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_866_menjembatani, id FROM items WHERE type = 'radical' AND (slug = '40' OR id = '40') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_866_menjembatani, id FROM items WHERE type = 'radical' AND (slug = '16' OR id = '16') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_866_menjembatani, id FROM items WHERE type = 'radical' AND (slug = '121' OR id = '121') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_868_hijau, id FROM items WHERE type = 'radical' AND (slug = '86' OR id = '86') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_868_hijau, id FROM items WHERE type = 'radical' AND (slug = '105' OR id = '105') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_868_hijau, id FROM items WHERE type = 'radical' AND (slug = '45' OR id = '45') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_869_praktik, id FROM items WHERE type = 'radical' AND (slug = '86' OR id = '86') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_869_praktik, id FROM items WHERE type = 'radical' AND (slug = '224' OR id = '224') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_870_puisi, id FROM items WHERE type = 'radical' AND (slug = '117' OR id = '117') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_870_puisi, id FROM items WHERE type = 'radical' AND (slug = '192' OR id = '192') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_871_perak, id FROM items WHERE type = 'radical' AND (slug = '118' OR id = '118') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_871_perak, id FROM items WHERE type = 'radical' AND (slug = '196' OR id = '196') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_872_topik, id FROM items WHERE type = 'radical' AND (slug = '22' OR id = '22') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_872_topik, id FROM items WHERE type = 'radical' AND (slug = '420' OR id = '420') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_872_topik, id FROM items WHERE type = 'radical' AND (slug = '184' OR id = '184') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_873_gedung_umum, id FROM items WHERE type = 'radical' AND (slug = '139' OR id = '139') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_873_gedung_umum, id FROM items WHERE type = 'radical' AND (slug = '78' OR id = '78') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_873_gedung_umum, id FROM items WHERE type = 'radical' AND (slug = '8777' OR id = '8777') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_874_stasiun, id FROM items WHERE type = 'radical' AND (slug = '165' OR id = '165') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_874_stasiun, r_215_udang);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_875_seratus_juta, id FROM items WHERE type = 'radical' AND (slug = '75' OR id = '75') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_875_seratus_juta, r_221_ide);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_876_wadah, id FROM items WHERE type = 'radical' AND (slug = '18' OR id = '18') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_876_wadah, r_227_produk);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_877_samurai, id FROM items WHERE type = 'radical' AND (slug = '97' OR id = '97') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_878_biaya, id FROM items WHERE type = 'radical' AND (slug = '98' OR id = '98') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_878_biaya, id FROM items WHERE type = 'radical' AND (slug = '129' OR id = '129') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_879_plang, id FROM items WHERE type = 'radical' AND (slug = '23' OR id = '23') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_879_plang, id FROM items WHERE type = 'radical' AND (slug = '424' OR id = '424') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_879_plang, id FROM items WHERE type = 'radical' AND (slug = '207' OR id = '207') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_880_membunuh, id FROM items WHERE type = 'radical' AND (slug = '31' OR id = '31') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_880_membunuh, id FROM items WHERE type = 'radical' AND (slug = '23' OR id = '23') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_880_membunuh, id FROM items WHERE type = 'radical' AND (slug = '160' OR id = '160') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_881_alam, id FROM items WHERE type = 'radical' AND (slug = '43' OR id = '43') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_881_alam, id FROM items WHERE type = 'radical' AND (slug = '47' OR id = '47') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_881_alam, id FROM items WHERE type = 'radical' AND (slug = '131' OR id = '131') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_882_panas, r_222_rahim);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_882_panas, r_223_lingkaran);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_882_panas, id FROM items WHERE type = 'radical' AND (slug = '131' OR id = '131') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_883_bagian, id FROM items WHERE type = 'radical' AND (slug = '117' OR id = '117') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_883_bagian, r_235_buah);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_884_hadiah, id FROM items WHERE type = 'radical' AND (slug = '8769' OR id = '8769') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_884_hadiah, id FROM items WHERE type = 'radical' AND (slug = '16' OR id = '16') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_884_hadiah, id FROM items WHERE type = 'radical' AND (slug = '94' OR id = '94') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_885_roda, id FROM items WHERE type = 'radical' AND (slug = '93' OR id = '93') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_885_roda, id FROM items WHERE type = 'radical' AND (slug = '8764' OR id = '8764') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_885_roda, id FROM items WHERE type = 'radical' AND (slug = '1' OR id = '1') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_885_roda, r_226_rak_buku);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_886_memilih, id FROM items WHERE type = 'radical' AND (slug = '114' OR id = '114') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_886_memilih, id FROM items WHERE type = 'radical' AND (slug = '228' OR id = '228') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_886_memilih, id FROM items WHERE type = 'radical' AND (slug = '269' OR id = '269') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_887_cermin, id FROM items WHERE type = 'radical' AND (slug = '118' OR id = '118') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_887_cermin, id FROM items WHERE type = 'radical' AND (slug = '55' OR id = '55') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_887_cermin, id FROM items WHERE type = 'radical' AND (slug = '91' OR id = '91') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_889_mengasuh, id FROM items WHERE type = 'radical' AND (slug = '136' OR id = '136') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_889_mengasuh, id FROM items WHERE type = 'radical' AND (slug = '2' OR id = '2') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_889_mengasuh, r_8822_bagus);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_891_merasa, r_232_jiwa);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_891_merasa, id FROM items WHERE type = 'radical' AND (slug = '120' OR id = '120') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_892_meminta_maaf, id FROM items WHERE type = 'radical' AND (slug = '117' OR id = '117') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_892_meminta_maaf, r_234_tubuh);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_892_meminta_maaf, id FROM items WHERE type = 'radical' AND (slug = '74' OR id = '74') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_894_ragu, id FROM items WHERE type = 'radical' AND (slug = '57' OR id = '57') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_894_ragu, id FROM items WHERE type = 'radical' AND (slug = '141' OR id = '141') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_894_ragu, id FROM items WHERE type = 'radical' AND (slug = '72' OR id = '72') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_894_ragu, id FROM items WHERE type = 'radical' AND (slug = '420' OR id = '420') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_895_semua, id FROM items WHERE type = 'radical' AND (slug = '161' OR id = '161') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_895_semua, id FROM items WHERE type = 'radical' AND (slug = '52' OR id = '52') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1883_saya, id FROM items WHERE type = 'radical' AND (slug = '75' OR id = '75') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1883_saya, id FROM items WHERE type = 'radical' AND (slug = '18' OR id = '18') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1883_saya, id FROM items WHERE type = 'radical' AND (slug = '51' OR id = '51') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1883_saya, id FROM items WHERE type = 'radical' AND (slug = '211' OR id = '211') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_1898_bisa, r_392_bisa);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_2741_konvensi, id FROM items WHERE type = 'kanji' AND (slug = '453' OR id = '453') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_2741_konvensi, id FROM items WHERE type = 'kanji' AND (slug = '566' OR id = '566') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_2904_jujur, id FROM items WHERE type = 'kanji' AND (slug = '488' OR id = '488') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_2904_jujur, id FROM items WHERE type = 'kanji' AND (slug = '630' OR id = '630') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3290_jari_kelingking, id FROM items WHERE type = 'kanji' AND (slug = '463' OR id = '463') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3290_jari_kelingking, id FROM items WHERE type = 'kanji' AND (slug = '797' OR id = '797') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3292_gaya_barat, id FROM items WHERE type = 'kanji' AND (slug = '798' OR id = '798') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3292_gaya_barat, id FROM items WHERE type = 'kanji' AND (slug = '853' OR id = '853') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3312_ramah, id FROM items WHERE type = 'kanji' AND (slug = '776' OR id = '776') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3312_ramah, id FROM items WHERE type = 'kanji' AND (slug = '805' OR id = '805') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3394_untuk_tiba, id FROM items WHERE type = 'kanji' AND (slug = '846' OR id = '846') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3515_peminum, id FROM items WHERE type = 'kanji' AND (slug = '743' OR id = '743') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3515_peminum, id FROM items WHERE type = 'kanji' AND (slug = '779' OR id = '779') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3524_membayangkan, k_861_membayangkan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3524_membayangkan, id FROM items WHERE type = 'kanji' AND (slug = '890' OR id = '890') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3527_seratus_juta, id FROM items WHERE type = 'kanji' AND (slug = '440' OR id = '440') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3527_seratus_juta, k_875_seratus_juta);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3528_seratus_juta_yen, id FROM items WHERE type = 'kanji' AND (slug = '440' OR id = '440') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3528_seratus_juta_yen, k_875_seratus_juta);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3528_seratus_juta_yen, id FROM items WHERE type = 'kanji' AND (slug = '472' OR id = '472') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3529_seratus_juta, k_875_seratus_juta);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3530_masalah, k_859_masalah);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3530_masalah, k_872_topik);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3531_ragu, k_894_ragu);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3531_ragu, k_859_masalah);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3532_wadah, k_876_wadah);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3533_tangkas, k_876_wadah);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3533_tangkas, id FROM items WHERE type = 'kanji' AND (slug = '525' OR id = '525') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3534_alat_musik, id FROM items WHERE type = 'kanji' AND (slug = '704' OR id = '704') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3534_alat_musik, k_876_wadah);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3535_peralatan_makan, id FROM items WHERE type = 'kanji' AND (slug = '644' OR id = '644') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3535_peralatan_makan, k_876_wadah);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3536_pegulat_sumo, id FROM items WHERE type = 'kanji' AND (slug = '447' OR id = '447') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3536_pegulat_sumo, k_877_samurai);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3537_pekerjaan_rumah, k_860_mengajukan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3537_pekerjaan_rumah, k_872_topik);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3538_shinjuku, id FROM items WHERE type = 'kanji' AND (slug = '857' OR id = '857') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3538_shinjuku, k_860_mengajukan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3539_keadaan, id FROM items WHERE type = 'kanji' AND (slug = '708' OR id = '708') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3539_keadaan, k_891_merasa);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3540_perasaan_manusia, id FROM items WHERE type = 'kanji' AND (slug = '444' OR id = '444') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3540_perasaan_manusia, k_891_merasa);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3541_disayangkan, k_891_merasa);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3542_emosi, k_862_merasa);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3542_emosi, k_891_merasa);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3543_ekspektasi, id FROM items WHERE type = 'kanji' AND (slug = '854' OR id = '854') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3543_ekspektasi, k_861_membayangkan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3544_kenangan, id FROM items WHERE type = 'kanji' AND (slug = '569' OR id = '569') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3544_kenangan, k_861_membayangkan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3545_ideologi, id FROM items WHERE type = 'kanji' AND (slug = '637' OR id = '637') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3545_ideologi, k_861_membayangkan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3548_pesta_minum, id FROM items WHERE type = 'kanji' AND (slug = '755' OR id = '755') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3548_pesta_minum, id FROM items WHERE type = 'kanji' AND (slug = '566' OR id = '566') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3554_untuk_melihat_kembali, id FROM items WHERE type = 'kanji' AND (slug = '558' OR id = '558') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3554_untuk_melihat_kembali, id FROM items WHERE type = 'kanji' AND (slug = '858' OR id = '858') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3568_pada_awalnya, id FROM items WHERE type = 'kanji' AND (slug = '784' OR id = '784') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3569_untuk_pertama_kalinya, id FROM items WHERE type = 'kanji' AND (slug = '784' OR id = '784') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3570_kamikaze, id FROM items WHERE type = 'kanji' AND (slug = '799' OR id = '799') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3570_kamikaze, id FROM items WHERE type = 'kanji' AND (slug = '853' OR id = '853') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3571_untuk_membantu, id FROM items WHERE type = 'kanji' AND (slug = '474' OR id = '474') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3571_untuk_membantu, id FROM items WHERE type = 'kanji' AND (slug = '777' OR id = '777') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3572_tangan_kiri, id FROM items WHERE type = 'kanji' AND (slug = '486' OR id = '486') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3572_tangan_kiri, id FROM items WHERE type = 'kanji' AND (slug = '786' OR id = '786') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3573_kelas_pe, id FROM items WHERE type = 'kanji' AND (slug = '583' OR id = '583') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3573_kelas_pe, id FROM items WHERE type = 'kanji' AND (slug = '795' OR id = '795') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3574_tangan_kanan, id FROM items WHERE type = 'kanji' AND (slug = '484' OR id = '484') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3574_tangan_kanan, id FROM items WHERE type = 'kanji' AND (slug = '786' OR id = '786') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3576_untuk_memunculkan, id FROM items WHERE type = 'kanji' AND (slug = '795' OR id = '795') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3577_untuk_mengejar, id FROM items WHERE type = 'kanji' AND (slug = '802' OR id = '802') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3577_untuk_mengejar, id FROM items WHERE type = 'kanji' AND (slug = '652' OR id = '652') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3578_untuk_berjuang, id FROM items WHERE type = 'kanji' AND (slug = '803' OR id = '803') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3579_untuk_mengejar, id FROM items WHERE type = 'kanji' AND (slug = '802' OR id = '802') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3580_untuk_memesan, id FROM items WHERE type = 'kanji' AND (slug = '794' OR id = '794') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3580_untuk_memesan, id FROM items WHERE type = 'kanji' AND (slug = '475' OR id = '475') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3581_sangat_suka, id FROM items WHERE type = 'kanji' AND (slug = '453' OR id = '453') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3581_sangat_suka, id FROM items WHERE type = 'kanji' AND (slug = '779' OR id = '779') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3583_untuk_menjadi_longgar, id FROM items WHERE type = 'kanji' AND (slug = '791' OR id = '791') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3586_untuk_merasakan, k_862_merasa);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3590_terima_kasih, k_862_merasa);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3590_terima_kasih, k_892_meminta_maaf);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3592_uang_masuk, id FROM items WHERE type = 'kanji' AND (slug = '445' OR id = '445') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3592_uang_masuk, k_873_gedung_umum);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3592_uang_masuk, k_878_biaya);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3593_biaya, k_878_biaya);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3593_biaya, id FROM items WHERE type = 'kanji' AND (slug = '602' OR id = '602') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3596_bioskop, id FROM items WHERE type = 'kanji' AND (slug = '893' OR id = '893') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3596_bioskop, id FROM items WHERE type = 'kanji' AND (slug = '629' OR id = '629') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3596_bioskop, k_873_gedung_umum);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3597_gelap, k_864_gelap);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3598_pembunuhan, k_864_gelap);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3598_pembunuhan, k_880_membunuh);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3599_hafalan, k_864_gelap);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3599_hafalan, id FROM items WHERE type = 'kanji' AND (slug = '664' OR id = '664') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3600_nama_resmi_ender, k_865_nama_resmi_ender);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3603_sasaran, id FROM items WHERE type = 'kanji' AND (slug = '492' OR id = '492') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3603_sasaran, k_879_plang);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3604_menjembatani, k_866_menjembatani);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3605_untuk_membunuh, k_880_membunuh);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3606_pembunuhan, k_880_membunuh);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3606_pembunuhan, id FROM items WHERE type = 'kanji' AND (slug = '444' OR id = '444') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3607_bunuh_diri, id FROM items WHERE type = 'kanji' AND (slug = '578' OR id = '578') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3607_bunuh_diri, k_880_membunuh);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3608_sepenuhnya, id FROM items WHERE type = 'kanji' AND (slug = '610' OR id = '610') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3608_sepenuhnya, k_881_alam);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3609_alami, id FROM items WHERE type = 'kanji' AND (slug = '571' OR id = '571') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3609_alami, k_881_alam);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3610_alam, id FROM items WHERE type = 'kanji' AND (slug = '578' OR id = '578') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3610_alam, k_881_alam);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3611_gairah, k_891_merasa);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3611_gairah, k_882_panas);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3612_demam, k_882_panas);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3613_hal_panas, k_882_panas);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3614_antusiasme, k_882_panas);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3614_antusiasme, id FROM items WHERE type = 'kanji' AND (slug = '508' OR id = '508') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3615_setiap_orang, k_895_semua);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3617_hijau, k_868_hijau);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3618_hijau, k_868_hijau);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3618_hijau, id FROM items WHERE type = 'kanji' AND (slug = '579' OR id = '579') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3619_praktik, k_869_praktik);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3619_praktik, id FROM items WHERE type = 'kanji' AND (slug = '746' OR id = '746') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3620_puisi, k_870_puisi);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3621_penyair, k_870_puisi);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3621_penyair, id FROM items WHERE type = 'kanji' AND (slug = '444' OR id = '444') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3622_puisi, k_870_puisi);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3622_puisi, id FROM items WHERE type = 'kanji' AND (slug = '761' OR id = '761') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3623_manajer_bagian, k_883_bagian);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3623_manajer_bagian, id FROM items WHERE type = 'kanji' AND (slug = '632' OR id = '632') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3624_untuk_meminta_maaf, k_892_meminta_maaf);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3625_hadiah_uang_tunai, k_884_hadiah);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3625_hadiah_uang_tunai, id FROM items WHERE type = 'kanji' AND (slug = '602' OR id = '602') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3626_roda, id FROM items WHERE type = 'kanji' AND (slug = '562' OR id = '562') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3626_roda, k_885_roda);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3627_cincin, k_885_roda);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3628_untuk_memilih, k_886_memilih);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3629_atlet_pro, k_886_memilih);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3629_atlet_pro, id FROM items WHERE type = 'kanji' AND (slug = '474' OR id = '474') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3630_air_raksa, id FROM items WHERE type = 'kanji' AND (slug = '479' OR id = '479') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3630_air_raksa, k_871_perak);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3631_perak, k_871_perak);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3632_perak, k_871_perak);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3632_perak, id FROM items WHERE type = 'kanji' AND (slug = '579' OR id = '579') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3633_bank, k_871_perak);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3633_bank, id FROM items WHERE type = 'kanji' AND (slug = '580' OR id = '580') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3634_cermin, k_887_cermin);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3635_sebanyak_yang_anda_inginkan, id FROM items WHERE type = 'kanji' AND (slug = '791' OR id = '791') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3635_sebanyak_yang_anda_inginkan, k_872_topik);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3636_topik, id FROM items WHERE type = 'kanji' AND (slug = '705' OR id = '705') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3636_topik, k_872_topik);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3639_untuk_membina, k_889_mengasuh);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3640_anak_angkat, k_889_mengasuh);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3640_anak_angkat, id FROM items WHERE type = 'kanji' AND (slug = '462' OR id = '462') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3641_penginapan_jepang, id FROM items WHERE type = 'kanji' AND (slug = '816' OR id = '816') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3641_penginapan_jepang, k_873_gedung_umum);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3643_stasiun, k_874_stasiun);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3644_depan_stasiun, k_874_stasiun);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3644_depan_stasiun, id FROM items WHERE type = 'kanji' AND (slug = '633' OR id = '633') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3645_pegawai_stasiun_kereta_api, k_874_stasiun);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3645_pegawai_stasiun_kereta_api, id FROM items WHERE type = 'kanji' AND (slug = '821' OR id = '821') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3646_kepala_stasiun, k_874_stasiun);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3646_kepala_stasiun, id FROM items WHERE type = 'kanji' AND (slug = '632' OR id = '632') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3888_untuk_memanaskan_sesuatu, id FROM items WHERE type = 'kanji' AND (slug = '842' OR id = '842') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3903_pengaturan, k_863_mengatur);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3903_pengaturan, id FROM items WHERE type = 'kanji' AND (slug = '669' OR id = '669') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4466_memahami, id FROM items WHERE type = 'kanji' AND (slug = '669' OR id = '669') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4466_memahami, id FROM items WHERE type = 'kanji' AND (slug = '1150' OR id = '1150') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4857_untuk_memecahkan, id FROM items WHERE type = 'kanji' AND (slug = '1150' OR id = '1150') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4881_penginapan, k_860_mengajukan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5897_pacar, id FROM items WHERE type = 'kanji' AND (slug = '1594' OR id = '1594') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5897_pacar, id FROM items WHERE type = 'kanji' AND (slug = '647' OR id = '647') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6030_dia, id FROM items WHERE type = 'kanji' AND (slug = '1594' OR id = '1594') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6030_dia, id FROM items WHERE type = 'kanji' AND (slug = '454' OR id = '454') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6798_saya, k_1883_saya);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6800_kami, k_1883_saya);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6825_kaleng_bir, k_1898_bisa);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6899_menjadi_lelah, id FROM items WHERE type = 'kanji' AND (slug = '1926' OR id = '1926') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_7055_kelelahan, id FROM items WHERE type = 'kanji' AND (slug = '1926' OR id = '1926') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_7474_hokkaido, id FROM items WHERE type = 'kanji' AND (slug = '517' OR id = '517') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_7474_hokkaido, id FROM items WHERE type = 'kanji' AND (slug = '640' OR id = '640') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_7474_hokkaido, id FROM items WHERE type = 'kanji' AND (slug = '700' OR id = '700') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_7495_untuk_memisahkan, id FROM items WHERE type = 'kanji' AND (slug = '785' OR id = '785') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_7496_untuk_berbagi, id FROM items WHERE type = 'kanji' AND (slug = '778' OR id = '778') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_7496_untuk_berbagi, id FROM items WHERE type = 'kanji' AND (slug = '615' OR id = '615') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_7523_mengumpulkan, id FROM items WHERE type = 'kanji' AND (slug = '566' OR id = '566') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_7537_tashirojima, id FROM items WHERE type = 'kanji' AND (slug = '490' OR id = '490') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_7537_tashirojima, id FROM items WHERE type = 'kanji' AND (slug = '530' OR id = '530') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_7537_tashirojima, id FROM items WHERE type = 'kanji' AND (slug = '822' OR id = '822') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_7538_raut_wajah, id FROM items WHERE type = 'kanji' AND (slug = '720' OR id = '720') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7538_raut_wajah, k_891_merasa);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_7576_jari_tengah, id FROM items WHERE type = 'kanji' AND (slug = '469' OR id = '469') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_7576_jari_tengah, id FROM items WHERE type = 'kanji' AND (slug = '797' OR id = '797') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_7583_dewi, id FROM items WHERE type = 'kanji' AND (slug = '454' OR id = '454') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_7583_dewi, id FROM items WHERE type = 'kanji' AND (slug = '799' OR id = '799') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_7637_sekolah, id FROM items WHERE type = 'kanji' AND (slug = '599' OR id = '599') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7637_sekolah, k_859_masalah);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7694_anggapan, k_861_membayangkan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_7694_anggapan, id FROM items WHERE type = 'kanji' AND (slug = '714' OR id = '714') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_7751_raja, id FROM items WHERE type = 'kanji' AND (slug = '482' OR id = '482') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7751_raja, k_865_nama_resmi_ender);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_8667_ibu_jari, id FROM items WHERE type = 'kanji' AND (slug = '770' OR id = '770') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_8667_ibu_jari, id FROM items WHERE type = 'kanji' AND (slug = '797' OR id = '797') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_8705_tuhan, id FROM items WHERE type = 'kanji' AND (slug = '799' OR id = '799') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8705_tuhan, k_865_nama_resmi_ender);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_8746_ujung_jari, id FROM items WHERE type = 'kanji' AND (slug = '797' OR id = '797') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_8746_ujung_jari, id FROM items WHERE type = 'kanji' AND (slug = '543' OR id = '543') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_8804_seleksi_khusus, id FROM items WHERE type = 'kanji' AND (slug = '807' OR id = '807') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8804_seleksi_khusus, k_886_memilih);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_8943_agar_diterima, id FROM items WHERE type = 'kanji' AND (slug = '711' OR id = '711') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_9009_uranus, id FROM items WHERE type = 'kanji' AND (slug = '473' OR id = '473') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_9009_uranus, id FROM items WHERE type = 'kanji' AND (slug = '482' OR id = '482') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_9009_uranus, id FROM items WHERE type = 'kanji' AND (slug = '638' OR id = '638') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_9245_menjadi_kosong, id FROM items WHERE type = 'kanji' AND (slug = '601' OR id = '601') LIMIT 1;

END $$;
