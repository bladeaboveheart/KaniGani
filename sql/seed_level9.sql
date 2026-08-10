-- ====================================================
-- KaniGani — Seed Data Level 9 (v2, relasional)
-- Auto-generated with Indonesian Slugs
-- ====================================================

DO $$
DECLARE
  -- ============ RADICAL IDs (Level 9) ============
  r_166_terjebak_di UUID; r_167_sejarah UUID; r_168_tenda UUID; r_175_badut UUID; r_176_bangunan UUID; r_178_pedas UUID; r_188_berat UUID; r_218_anti UUID; r_220_sikat UUID; r_229_benar UUID; r_417_mesin UUID; r_420_rak_mantel UUID; r_424_helikopter UUID; r_8772_cleat UUID; r_8779_musim_semi UUID; r_8785_cumi_cumi UUID; r_8787_yurt UUID; r_8819_budak UUID; r_8820_keabadian UUID;

  -- ============ KANJI IDs (Level 9) ============
  k_587_menjual UUID; k_708_kejadian UUID; k_709_menggunakan UUID; k_710_alat UUID; k_711_menerima UUID; k_712_perdamaian UUID; k_714_menentukan UUID; k_715_kebenaran UUID; k_716_pakaian UUID; k_717_berenang UUID; k_718_benda UUID; k_719_menderita UUID; k_720_cepat UUID; k_721_bagian UUID; k_722_mengendarai UUID; k_723_tamu UUID; k_724_atap UUID; k_725_derajat UUID; k_727_memegang UUID; k_728_dunia UUID; k_729_keberangkatan UUID; k_730_saling UUID; k_731_prefektur UUID; k_732_kecantikan UUID; k_733_kehilangan UUID; k_734_mengirim UUID; k_735_berat UUID; k_736_bicara UUID; k_737_membutuhkan UUID; k_738_menang UUID; k_739_sementara UUID; k_854_sebelumnya UUID; k_857_baru UUID; k_858_kembali UUID; k_890_gambar UUID; k_983_melestarikan UUID; k_1029_mencoba UUID; k_1048_tes UUID; k_1069_sejarah UUID; k_1088_membandingkan UUID; k_1122_sejarah UUID; k_1880_pedas UUID;

  -- ============ VOCABULARY IDs (Level 9) ============
  v_2816_untuk_menjual_sesuatu UUID; v_2823_berbentuk_hati UUID; v_2872_daftar_isi UUID; v_2915_bintang UUID; v_2917_laut UUID; v_2984_ikan_laut UUID; v_2996_penduduk UUID; v_3024_laboratorium UUID; v_3082_benda UUID; v_3083_tugas UUID; v_3084_konstruksi UUID; v_3085_penting UUID; v_3086_membalas UUID; v_3087_makanan UUID; v_3088_untuk_digunakan UUID; v_3089_alat UUID; v_3090_mebel UUID; v_3091_untuk_menerima_sesuatu UUID; v_3092_gaya_jepang UUID; v_3093_perdamaian UUID; v_3094_makanan_gaya_jepang UUID; v_3095_kamar_bergaya_jepang UUID; v_3096_pakaian_gaya_jepang UUID; v_3100_rencana UUID; v_3101_keputusan UUID; v_3102_kebenaran UUID; v_3103_fakta UUID; v_3104_kekuatan_sejati UUID; v_3105_pakaian UUID; v_3106_berenang UUID; v_3107_benda UUID; v_3109_spesialisasi_lokal UUID; v_3111_menyakitkan UUID; v_3112_untuk_berkendara UUID; v_3115_tamu UUID; v_3116_kamar_tamu UUID; v_3117_toko UUID; v_3118_ruang UUID; v_3119_toko_daging UUID; v_3120_toko_teh UUID; v_3121_toko_ikan UUID; v_3122_nagoya UUID; v_3123_kali_ini UUID; v_3124_tepat UUID; v_3125_setiap_saat UUID; v_3126_sudut UUID; v_3127_derajat UUID; v_3130_untuk_memegang_sesuatu UUID; v_3133_dunia UUID; v_3134_penjualan UUID; v_3135_pengucapan UUID; v_3136_penemuan UUID; v_3137_konsultasi UUID; v_3139_prefektur UUID; v_3140_cantik UUID; v_3141_wanita_cantik UUID; v_3142_kalah UUID; v_3143_cocok UUID; v_3144_untuk_menang UUID; v_3145_pemenang UUID; v_3146_tentu_kemenangan UUID; v_3147_kemenangan_mudah UUID; v_3148_untuk_mengirim_sesuatu UUID; v_3151_penting UUID; v_3152_berat_badan UUID; v_3153_dobel UUID; v_3154_diperlukan UUID; v_3155_poin_utama UUID; v_3156_seandainya UUID; v_3157_kana UUID; v_3158_anggapan UUID; v_3429_menjadi_bengkok UUID; v_3430_amerika_selatan UUID; v_3466_untuk_berpotongan UUID; v_3469_sekolah_dasar UUID; v_3470_jalan UUID; v_3471_hati_hati UUID; v_3472_baru UUID; v_3473_siswa_sma UUID; v_3474_sekolah_menengah UUID; v_3475_untuk_dilampirkan UUID; v_3476_untuk_menemukan UUID; v_3477_orang_lemah UUID; v_3478_tampak_lemah UUID; v_3479_untuk_terkelupas UUID; v_3483_tinggi UUID; v_3514_hitam_dan_putih UUID; v_3523_untuk_mengembalikan_sesuatu UUID; v_3525_rekaman UUID; v_3526_gambar UUID; v_3803_menyimpan UUID; v_3806_asuransi_jiwa UUID; v_3807_untuk_melestarikan_sesuatu UUID; v_4147_untuk_mencoba_melakukan_sesuatu UUID; v_4150_contoh_makanan UUID; v_4162_pengalaman UUID; v_4163_mengikuti_ujian UUID; v_4164_percobaan UUID; v_4165_penyelidikan UUID; v_4215_sejarah UUID; v_4219_kontras UUID; v_4376_pengumuman UUID; v_4377_untuk_mengekspresikan_sesuatu UUID; v_4380_keberangkatan UUID; v_6790_pedas UUID; v_6792_moster UUID; v_7149_toko_buku UUID; v_7460_semua UUID; v_7464_malaikat UUID; v_7475_tahun_baru UUID; v_7478_untuk_membutuhkan UUID; v_7487_bicara UUID; v_7533_bagian UUID; v_7571_tidak_nyaman UUID; v_7572_pengajaran UUID; v_7573_bagian_depan UUID; v_7625_lingkungan UUID; v_7682_berapa_kali UUID; v_7683_renang UUID; v_7684_artikel UUID; v_7740_api UUID; v_7741_membiarkan_sesuatu_lewat UUID; v_8701_makhluk_hidup UUID; v_8702_tugas_rumah UUID; v_8800_menandai UUID; v_8802_menggunakan UUID; v_8812_rasa_pedas UUID; v_9020_asal_usul_seseorang UUID; v_9078_mengubah UUID; v_9082_karate UUID; v_9142_semula UUID; v_9145_meyakinkan UUID; v_9237_sudut UUID; v_9261_untuk_turun UUID; v_9279_untuk_menerima_sesuatu UUID; v_9286_satu_bulan UUID; v_9287_penghitung_selama_berbulan_bulan UUID; v_9300_sepuluh_menit UUID; v_9351_negara_tropis UUID; v_9354_angin_selatan UUID; v_9510_sejarah_jepang UUID;

BEGIN

  DELETE FROM items WHERE level = 9;

  -- 1. RADICALS
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '介', 'terjebak-di', 9, 1, 'Radikal ini tampak seperti topi dengan beberapa kaki di bawahnya. Jika yang Anda lihat hanyalah kaki, orang yang memakai topi itu pasti benar-benar <radikal>terjebak</radikal> di sana. Pernahkah Anda mencoba menjejalkan diri ke dalam topi yang begitu keras hingga menutupi tubuh Anda? Ya, menurutku tidak. Tapi bayangkan betapa Anda akan terjebak dalam topi itu jika melakukannya.')
    RETURNING id INTO r_166_terjebak_di;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '史', 'sejarah', 9, 2, 'Inilah radikal <radikal>sejarah</radikal>. Anda dapat melihat buku teks dan sepasang pedang bersilang. Karena pada dasarnya itulah cara kerja sejarah - berperang, mencatat hasilnya, dan mengulanginya lagi. Sejarah!')
    RETURNING id INTO r_167_sejarah;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '癶', 'tenda', 9, 3, 'Saya akui, semacam <radikal>tenda</radikal> yang aneh, tetapi tenda yang akan melindungi Anda dari benda-benda yang mencoba masuk (itulah sebabnya tenda ini memiliki banyak paku). Itu yang terbaik yang bisa Anda lakukan, mengingat Anda berada di tenda kain.')
    RETURNING id INTO r_168_tenda;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '咅', 'badut', 9, 4, 'Wajah <radikal>badut</radikal>, dengan topi lucu di bagian atas, mata konyol di tengah, dan mulut besar tertawa di bagian bawah. Benda ini sangat lucu, tidak seperti kebanyakan badut…

Anda juga dapat melihat ini sebagai sikap radikal di atas mulut yang radikal, karena berdiri di atas mulut mereka adalah jenis trik aneh yang dilakukan badut.')
    RETURNING id INTO r_175_badut;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '阝', 'bangunan', 9, 5, 'Bentuk radikal ini seperti huruf B yang melengkung. Apa kepanjangan dari B? <radikal>Bangunan</radikal>! Radikal ini sering muncul dalam kanji yang berhubungan dengan pertemuan atau tempat berkumpulnya orang… seperti gedung.')
    RETURNING id INTO r_176_bangunan;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '辛', 'pedas', 9, 6, 'Ini adalah radikal <radikal>pedas</radikal>. Lihat betapa lebarnya di bagian atas, dengan batang kecil mencuat ke atas, dan menyempit di bagian bawah? Sama seperti cabai. Pedas sekali sampai-sampai tidak bisa menahan panasnya sendiri!')
    RETURNING id INTO r_178_pedas;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '重', 'berat', 9, 7, 'Ini adalah radikal yang <radikal>berat</radikal>. Lihat kepalan tangan persegi di tengah, memegang gagang halter yang memiliki dua pelat berat di bagian atas dan bawah? Yang radikal sepertinya akan berat lho?')
    RETURNING id INTO r_188_berat;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '反', 'anti', 9, 8, 'Radikal ini sama dengan kanji. Artinya <radikal>anti</radikal>.

Kalau-kalau Anda tidak ingat ini, inilah arti mnemonik kanji: Bangku (又) ada di tebing (厂). Jika seseorang memiliki bangku jauh di dalam tebing, kemungkinan besar mereka adalah masyarakat yang cukup <kanji>anti</kanji>, bersembunyi seperti itu.')
    RETURNING id INTO r_218_anti;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '聿', 'sikat', 9, 9, 'Bentuk radikal ini terlihat seperti <radical>sikat</radikal>. Bagian atas berupa tangan yang memegang gagang kuas, dan bagian bawah berupa ujung berbulu.')
    RETURNING id INTO r_220_sikat;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '正', 'benar', 9, 10, 'Anda tersesat, tetapi Anda menemukan rambu bertuliskan "<radikal>benar</radikal>" di segala arah. "Benar," "benar," "benar," katanya. Ke mana pun Anda pergi, itu jalan yang benar! Sungguh melegakan!

Anda juga bisa menggunakan mnemonik yang Anda pelajari dengan kanji: Ada garis di tanah sehingga Anda berhenti, membuat tanda raksasa muncul bertuliskan BENAR! Anda mematuhi peraturan lalu lintas dan melakukan hal yang benar. Bagus untukmu.')
    RETURNING id INTO r_229_benar;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '台', 'mesin', 9, 11, 'Radikal ini sama dengan kanji. Artinya <radikal>mesin</radikal>.

Kalau-kalau Anda tidak ingat ini, inilah arti mnemonik kanji: Anda mempunyai <radical>pribadi</radikal> <radikal>mulut</radikal> yang merupakan <kanji>mesin</kanji>. Namun Anda harus merahasiakan mulut mesin Anda karena hal itu akan menakuti semua orang non-mesin di sekitar Anda.')
    RETURNING id INTO r_417_mesin;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '疋', 'rak-mantel', 9, 12, 'Lihat semua lengan yang mencuat dari kelompok radikal ini? Itu untuk menggantung banyak mantel dan barang-barang lainnya, karena ini adalah <radikal>rak mantel</radikal>. Agak aneh rak mantel, tapi yang pasti rak mantel.')
    RETURNING id INTO r_420_rak_mantel;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '覀', 'helikopter', 9, 13, 'Radikal ini tampak seperti <radikal>helikopter</radikal> yang datang langsung ke arah Anda, bukan? Anda tidak dapat melihat bagian ekornya karena berada di belakang kabin depan helikopter yang lebih besar. Tapi Anda bisa melihat jendela depan dan bilah berputar besar di atasnya.')
    RETURNING id INTO r_424_helikopter;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '⺤', 'cleat', 9, 14, 'Ada bagian bawah sepatu dengan paku yang keluar. Hanya satu jenis sepatu yang seperti ini, yaitu <radical>cleat</radical>. Anda tahu, seperti sepatu bertabur yang dipakai para atlet. Sepatu sepak bola, sepatu baseball, sepatu lari… Anda tahu itu disebut sepatu cleat, bukan?')
    RETURNING id INTO r_8772_cleat;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '𡗗', 'musim-semi', 9, 15, 'Ini adalah <radikal>musim semi</radikal> yang radikal, karena sepertinya tunas tanaman baru menerobos lapisan tanah, salju, dan es untuk mengumumkan datangnya musim semi. Musim semi adalah musim (dan musim radikal) yang penuh dengan kehidupan baru yang terus berkembang!')
    RETURNING id INTO r_8779_musim_semi;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '㑒', 'cumi-cumi', 9, 16, 'Lihat bentuk <radical>cumi-cumi</radical> di sini? Ada kepalanya yang lancip, matanya, dan tentakelnya (dua). Sangat mirip cumi-cumi jika Anda bertanya kepada saya!')
    RETURNING id INTO r_8785_cumi_cumi;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '/radicals/yurt.svg', 'yurt', 9, 17, 'Terdapat kanopi dengan bingkai seperti kisi-kisi di dekat bagian atas. Ini adalah <radical>yurt</radical> dengan jendela! Yurt adalah gubuk berbentuk kubah yang digunakan para pengembara. Setelah Anda menyiapkan kanopi dengan bingkai jendela, pada dasarnya Anda sudah membuatnya. Bayangkan menatap ke luar jendela, bersantai di yurt Anda. Yurt yurt yang manis!')
    RETURNING id INTO r_8787_yurt;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '龹', 'budak', 9, 18, 'Seseorang menanduk suamimu dan berkata dia harus berjuang demi mereka sekarang. Mereka mengubahnya menjadi <radikal>gladiator</radikal>! Sekarang suamimu harus berjuang demi hiburan mereka. Apakah kamu tidak terhibur?!

P.S. Anda tahu ini gladiator, bukan viking, karena tanduknya ada di bantalan bahu gladiator, bukan di helmnya, dan helmnya memiliki lambang besar di atasnya.')
    RETURNING id INTO r_8819_budak;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '永', 'keabadian', 9, 19, 'Setetes air akan bertahan <radikal>keabadian</radikal>. Apalagi jika dijatuhkan ke dalam aliran sungai tiada akhir yang tak pernah berhenti mengalir. Anda dapat melihat aliran-aliran ini berkumpul dari segala arah di sini, mengalir selamanya.')
    RETURNING id INTO r_8820_keabadian;

  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_166_terjebak_di, 'Terjebak di', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_167_sejarah, 'Sejarah', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_168_tenda, 'Tenda', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_175_badut, 'Badut', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_176_bangunan, 'Bangunan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_178_pedas, 'Pedas', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_188_berat, 'Berat', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_218_anti, 'Anti', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_220_sikat, 'Sikat', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_229_benar, 'Benar', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_417_mesin, 'Mesin', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_420_rak_mantel, 'Rak Mantel', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_424_helikopter, 'Helikopter', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_8772_cleat, 'Cleat', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_8779_musim_semi, 'Musim semi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_8785_cumi_cumi, 'Cumi-cumi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_8787_yurt, 'Yurt', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_8819_budak, 'Budak', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_8820_keabadian, 'Keabadian', true, true);

  -- 2. KANJIS
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '売', 'menjual', 9, 20, 'Seorang <radical>samurai</radical> datang dengan <radical>dahi</radical> dan <radical>kaki</radical> yang dia coba <kanji>jual</kanji>. Dia pikir akan sia-sia meninggalkan semua musuhnya yang terbunuh di medan perang, jadi dia mengumpulkan dahi dan kaki mereka untuk dijual di pasar gelap untuk mendapatkan uang tambahan. Hei, jangan menghakimi! Seorang samurai harus menjual apa yang harus dijual oleh seorang samurai, oke?', 'Jika kamu bertemu dengan samurai yang <kanji>menjual</kanji> potongan dahi dan kaki, kamu sebaiknya mengucapkan "<reading>sampai jumpa</reading> (ばい)!" dan keluar dari sana. Sebenarnya, jika ada orang yang mencoba menjual potongan tubuh kepada Anda - baik samurai atau bukan - Anda mungkin harus mengucapkan selamat tinggal berulang kali sampai Anda bisa menjauh darinya.')
    RETURNING id INTO k_587_menjual;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '事', 'kejadian', 9, 21, 'Anda menemukan <radical>salib</radikal> di <radikal>mulut</radikal> <radikal>Wolverine</radikal>. <kanji>kejadian</kanji> yang aneh. Kurasa dia menaruhnya di sana, tapi kenapa dia melakukan <kanji>hal</kanji> seperti itu? Anda bertanya padanya, tapi dia bilang itu adalah <kanji>masalah</kanji> pribadi yang sangat dirahasiakan.', '<kanji>kejadian</kanji> ini tidak membuat <reading>Je</reading>sus (じ) terkesan, yang muncul dan dengan lembut menghilangkan salib dari mulut Wolverine.')
    RETURNING id INTO k_708_kejadian;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '使', 'menggunakan', 9, 22, '<radikal>pemimpin</radikal> yang baik dapat memanfaatkan <radikal>sejarah</radikal> <radikal>tanah</radikal> untuk <kanji>penggunaan</kanji> yang baik. Anda adalah pemimpin yang baik. Anda telah mempelajari tanah dan kotoran bumi sepanjang hidup Anda. Anda tahu sejarah lapangan dan Anda tahu cara menggunakannya.', 'Anda <kanji>menggunakan</kanji> tanah untuk menaikkan <reading>shee</reading>p (し). Ketika Anda berada di sana sambil mengendus-endus, Anda menyadari bahwa orang-orang Anda akan berkembang paling baik jika Anda menggunakan tanah ini untuk penggembalaan dan beternak domba.')
    RETURNING id INTO k_709_menggunakan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '具', 'alat', 9, 23, 'Ada <radical>mata</radical> di <radical>tanah</radical>, di antara beberapa <radical>sirip</radical>. Apa yang telah terjadi? Anda membunuh seekor ikan, dan sekarang Anda harus menyembunyikan <kanji>alat</kanji> pembunuhnya. Cepat, sembunyikan alat tersebut sebelum seseorang mengetahui bahwa itu memang Anda.', '<kanji>alat</kanji> meneteskan <reading>goo</reading> (ぐ). Goopy, memberatkan goo. Itu adalah isi perut ikan yang baru saja kamu bunuh dan semuanya ada di tanganmu juga. sial.')
    RETURNING id INTO k_710_alat;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '受', 'menerima', 9, 24, 'Seseorang melempar <radical>cleat</radical> ke <radical>dahi</radical> Anda saat Anda duduk di <radical>bangku</radical>. Anda harus <kanji>menerima</kanji> ini. Kemudian pria lain memukul dahi Anda, namun Anda tetap di bangku dan <kanji>menerimanya</kanji> tanpa mengeluh. Ini semacam ritual penerimaan klub sepak bola Spanyol paling bergengsi di dunia. Jika cleat di dahi tidak membuat Anda terjatuh, Anda akan menerima tawaran untuk bergabung.', 'Setelah mereka <kanji>menerima</kanji> Anda, mereka memberi Anda sebuah kotak es (じゅ) kecil. Ini untuk membantu Anda pulih dari trauma ditendang. Dan Anda <kanji>menerima</kanji> jusnya dengan anggun.')
    RETURNING id INTO k_711_menerima;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '和', 'perdamaian', 9, 25, 'Ketika setiap orang memiliki <radical>gandum</radikal> di <radical>mulut</radikal> mereka, Anda akan memiliki <kanji>kedamaian</kanji>. Itulah <kanji>gaya Jepang</kanji> dalam melakukan sesuatu.', '<kanji>Kedamaian</kanji> adalah <kanji>gaya Jepang</kanji>. Para <read>wa</reading>lrus (わ) yang tinggal di luar Jepang melihat hal ini, dan mulai menirunya.')
    RETURNING id INTO k_712_perdamaian;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '定', 'menentukan', 9, 26, 'Anda membangun <radical>atap</radical> di atas <radical>rak mantel</radical> karena Anda <kanji>menentukan</kanji> bahwa ini adalah cara terbaik untuk melindungi mantel Anda dari cuaca buruk.', 'Mengapa Anda <kanji>menentukan</kanji> rak mantel Anda memerlukan atap? Karena saku jasmu penuh dengan <read>ta</reading>ter (てい) tots! Anda tidak boleh membiarkan tater tots Anda kehujanan, jadi Anda memutuskan bahwa tater tots Anda perlu dilindungi dengan baik dengan atap.')
    RETURNING id INTO k_714_menentukan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '実', 'kebenaran', 9, 27, 'Naiklah ke <radical>atap</radical> di <radical>musim semi</radical> untuk melihat <kanji>kebenaran</kanji>. <kanji>realitas</kanji> dunia terungkap saat musim dingin berakhir dan pepohonan kembali menghasilkan <kanji>buah</kanji>.', 'Saat salju mencair dan mengungkapkan <kanji>kebenaran</kanji> dan <kanji>realitas</kanji> dunia kepada Anda, Anda melihat salah satu pohon yang Anda lihat telah menghasilkan dua potong <kanji>buah</kanji>. <read>Wah, dua</reading> (じつ)?! Banyak sekali buah untuk awal musim semi ini.')
    RETURNING id INTO k_715_kebenaran;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '服', 'pakaian', 9, 28, 'Ambil <radical>bulan</radical> <radical>cap</radical> pada <radical>bangku</radical> di depan Anda dan gunakan pada semua <kanji>pakaian</kanji> Anda. Sekarang bahkan jika Anda menjual atau kehilangan sepotong <kanji>pakaian</kanji>, Anda akan dapat menemukannya lagi dengan memeriksa stempel bulan khusus Anda.', 'Beberapa hari kemudian Anda bersama seorang teman dan Anda mengenali <kanji>pakaian</kanji> yang mereka kenakan. Anda mengambilnya, merobeknya, dan berteriak, "<reading>F**k</reading> (ふく) kamu!" Itu stempel bulanmu! Ini pakaianmu!!')
    RETURNING id INTO k_716_pakaian;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '泳', 'berenang', 9, 29, 'Jika <radical>tsunami</radical> akan berlangsung <radical>selamanya</radical> sebaiknya Anda belajar cara <kanji>berenang</kanji> sekarang. Kita akan berada di bawah air selama sisa waktu dan jika Anda tidak bisa berenang, Anda tidak akan berhasil.', '<membaca>Oy</baca> (およ)! Oy, berhentilah melamun tentang <kanji>berenang</kanji>dan lakukanlah!')
    RETURNING id INTO k_717_berenang;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '物', 'benda', 9, 30, 'Seekor <radical>sapi</radikal> dengan <radikal>sayap</radikal> terbang di udara. Sungguh <kanji>hal</kanji> yang aneh! Anda pernah mendengar tentang babi terbang sebelumnya, tapi sapi? Ini memang suatu hal yang baru dan aneh! Sapi dengan sayap! Sungguh hal yang konyol.', 'Anda menginginkan <kanji>sesuatu</kanji> yang dapat membantu Anda terbang bersama sapi sehingga Anda mengenakan <reading>sepatu bot</reading> terbang Anda (ぶつ). Sepatu bot terbang Anda memang cukup aneh, tetapi itulah satu-satunya cara agar Anda bisa mengimbanginya.')
    RETURNING id INTO k_718_benda;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '苦', 'menderita', 9, 31, '<radikal>Bunga</radikal> telah menjadi <radikal>tua</radikal>, jadi mereka <kanji>menderita</kanji>.', 'Jika sekuntum bunga atau seseorang menjadi tua dan <kanji>menderita</kanji>, beri mereka <reading>coo</reading>kie (く).')
    RETURNING id INTO k_719_menderita;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '表', 'cepat', 9, 32, 'Jika <radical>tulang rusuk</radical> Anda tiba-tiba <radical>ditendang</radical>, Anda mungkin ingin <kanji>mengekspresikan</kanji> sesuatu. Marah atau terkejut, kurasa. Bagaimanapun, banyak hal yang akan terlihat di <kanji>permukaan</kanji> wajah Anda.', 'Satu-satunya hal yang dapat Anda <kanji>ungkapkan</kanji> adalah "<reading>Hai</reading>" (ひょう)! Semacam persilangan antara "hei" dan "yo." Seperti "heyo, hentikan!" Memang tidak cocok dengan momennya, tapi begitulah cara Anda mengekspresikan diri.')
    RETURNING id INTO k_720_cepat;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '部', 'bagian', 9, 33, '<radical>badut</radikal> <radikal>Bangunan</radikal> sudah berakhir di <kanji>bagian</kanji> kota itu. Kami memisahkan bagian badut dari orang normal lainnya. Faktanya, seluruh <kanji>departemen</kanji> pendidikan badut dan <kanji>klub</kanji> badut mereka harus tetap berada di bagian mereka, mereka tidak bisa ikut bagian kami.', 'Anda lihat, <kanji>bagian</kanji> kota itu penuh dengan <reading>boo</reading>ze (ぶ). Badut membutuhkan banyak minuman keras agar sandiwaranya tetap berjalan, jadi biarkan saja mereka meminumnya. Tapi mereka tidak diperbolehkan lagi berada di wilayah kami, karena semuanya berbau minuman keras badut yang tidak enak.')
    RETURNING id INTO k_721_bagian;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '乗', 'mengendarai', 9, 34, 'Anda memasukkan <radical>biji-bijian</radikal> ke dalam <radikal>mulut</radikal> Anda dan membiarkannya <kanji>berjalan</kanji>. Kanji ini memiliki radikal yang sama dengan 和, tapi kali ini butirannya ada <i>di</i> mulutmu, itulah sebabnya ada potongan-potongan kecil butiran yang mencuat dari bagian 口 ;)', 'Anda memutuskan bahwa biji-bijian itu mungkin sepi dalam <kanji>perjalanan</kanji> ini sendirian, jadi Anda menambahkan beberapa rumput laut <reading>no</reading>ri (の), sehingga ia mempunyai teman.')
    RETURNING id INTO k_722_mengendarai;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '客', 'tamu', 9, 35, 'Di bawah <radical>atap</radical> Anda di <radical>musim dingin</radical> ada lebih banyak <radical>mulut</radical> yang harus diberi makan karena Anda membiarkan <kanji>tamu</kanji> tinggal bersama Anda saat cuaca dingin. Beberapa dari mereka bukan keluarga, jadi mereka harus membayar untuk tinggal di rumah Anda dan mendapatkan makanan. Mereka adalah <kanji>pelanggan</kanji>.', 'Salah satu <kanji>tamu</kanji> Anda adalah <reading>Kyaku</reading> (きゃく) yang merupakan <kanji>pelanggan</kanji>. Kyaku selalu menginap di suatu tempat atau tempat lain, jadi semua orang tahu namanya.')
    RETURNING id INTO k_723_tamu;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '屋', 'atap', 9, 36, 'Anda menanam <radical>bendera</radical> di <radical>tanah</radical>, menandai petak <radical>pribadi</radical> Anda yang berisi <radical>kotoran</radical>. Di tempat ini Anda menaikkan <kanji>atap</kanji>, lalu mengisi ruang di bawahnya dengan beberapa <kanji>toko</kanji> dan <kanji>toko</kanji>.', '<kanji>Atap</kanji> yang menutupi tanah dibuat agar <reading>Ya</reading>nkees (や) dapat bermain bisbol sepanjang tahun. <kanji>toko</kanji> dan <kanji>toko</kanji> hadir untuk menjual hot dog dan memorabilia Yankees.')
    RETURNING id INTO k_724_atap;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '度', 'derajat', 9, 37, '<radical>bangku</radikal> <radical>yurt</radical> selalu ditempatkan pada <kanji>derajat</kanji> tertentu. Derajatnya berubah bergantung pada <kanji>kejadian</kanji> tertentu.', 'Yang juga bersudut tepat <kanji>derajat</kanji> adalah <reading>do</reading>g (ど).')
    RETURNING id INTO k_725_derajat;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '持', 'memegang', 9, 38, 'Anda perlu menggerakkan <radical>jari</radical> Anda di sekitar <radical>kuil</radical> jika Anda ingin <kanji>memegang</kanji> itu. Apakah kuilnya terlalu besar? Ada juga kuil-kuil kecil yang bisa Anda beli di toko suvenir kuil.', 'Saat Anda <kanji>memegang</kanji> kuil, Anda akan mendengar sebuah suara. Anda melihat ke bawah melalui jari-jari Anda dan melihat <reading>Je</reading>sus (じ) kecil. Dia tersenyum dan mengacungkan jempolnya padamu. Ah, terima kasih Yesus!')
    RETURNING id INTO k_727_memegang;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '界', 'dunia', 9, 39, 'Setiap <radical>sawah</radical> berada <radical>terjebak</radical> ke dalam <kanji>dunia</kanji>.', 'Untuk menjelajahi <kanji>dunia</kanji> sawah ini, Anda perlu menggunakan <reading>kay</reading>ak (かい).')
    RETURNING id INTO k_728_dunia;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '発', 'keberangkatan', 9, 40, 'Pergi ke <radical>tenda</radical> dan ambil <radical>lentera</radical> dari sana, lalu kita akan siap untuk <kanji>keberangkatan</kanji>. Kita tidak bisa meninggalkan lentera di dalam tenda; itu bahaya kebakaran. Sebaiknya kami membawanya sebelum keberangkatan. Apakah kamu tidak setuju?', 'Oh! Jangan lupa <reading>topi</reading> (はつ) ​​Anda juga. Tidak ingin memulai <kanji>keberangkatan</kanji> tanpa topi atau lentera. Itu akan menjadi perjalanan singkat.')
    RETURNING id INTO k_729_keberangkatan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '相', 'saling', 9, 41, 'Anda perlu melihat <radical>pohon</radical> di <radical>mata</radical> untuk mendapatkan <kanji>saling</kanji> menghormati satu sama lain. Berdiri tegak, tatap pohon langsung ke matanya. Jika melihat ke belakang, Anda tahu bahwa semuanya saling menguntungkan.', 'Jika rasa hormat Anda terhadap pohon itu <kanji>saling</kanji> dengan rasa hormat yang dirasakan pohon terhadap Anda, Anda akan dapat melihat <reading>sou</reading>l (そう) pohon tersebut. Saat ini jiwanya terlihat sangat sedih, seperti mencoba mengatakan, "Mengapa orang-orangmu membantai semua temanku? Kupikir kita sudah saling pengertian."')
    RETURNING id INTO k_730_saling;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '県', 'prefektur', 9, 42, '<radikal>mata</radikal> seekor <radikal>singa</radikal>, yang masih <radikal>kecil</radikal> dan penuh rasa ingin tahu, menatap <kanji>prefektur</kanji> yang suatu hari nanti akan menjadi miliknya. Dia seekor singa kecil, tapi begitu dia besar nanti, semua yang terpantul di matanya akan menjadi prefektur yang dia kuasai.', '<kanji>prefektur</kanji>> singa kecil ini dilindungi oleh <reading>Ken</reading> (けん) sang samurai, karena singa itu terlalu kecil untuk melindungi seluruh negeri ini sendiri. Ken sang samurai terbiasa mengembara jauh dan luas, jadi satu prefektur tidak berarti apa-apa baginya.')
    RETURNING id INTO k_731_prefektur;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '美', 'kecantikan', 9, 43, '<radical>domba</radical> yang <radical>besar</radical> adalah <kanji>keindahan</kanji> sejati. Besar itu <kanji>indah</kanji>, dan hal itu terlebih lagi berlaku bagi domba.', '<kanji>keindahan</kanji> domba besar telah menarik segerombolan <reading>lebah</reading> (び). Domba itu begitu cantik sehingga lebah salah mengiranya sebagai bunga.')
    RETURNING id INTO k_732_kecantikan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '負', 'kehilangan', 9, 44, 'Saat Anda berada di <radical>penjara</radical>, siapa pun yang mendapatkan <radical>kerang</radikal> akan <kanji>kalah</kanji>. Ini adalah permainan yang dimainkan semua tahanan. Ini seperti menjauhi kerang. Dan jika Anda berakhir dengan kerang BZZZZTT itu saja, Anda yang kalah.', 'Jika kamu <kanji>kalah</kanji>, kamu adalah <reading>foo</reading>l (ふ). Yang harus Anda lakukan hanyalah tidak memegang kerang penjara. Seharusnya tidak terlalu sulit untuk tidak kalah, bodoh.')
    RETURNING id INTO k_733_kehilangan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '送', 'mengirim', 9, 45, 'Di atas <radical>skuter</radical>, makhluk dengan <radical>tanduk</radical> dari <radical>surga</radical> akan membawa barang yang ingin Anda <kanji>kirim</kanji> ke sana.', 'Anda ingin <kanji>mengirimkan</kanji> <reading>sou</reading>l (そう) Anda ke surga. Maksud saya, Anda tidak ingin pergi ke tempat-tempat lain yang pernah Anda dengar, jadi mengapa tidak mengirimkan jiwa Anda?')
    RETURNING id INTO k_734_mengirim;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '重', 'berat', 9, 46, 'Kanji <radikal>berat</radikal> dan kanji <kanji>berat</kanji> adalah sama.', 'Di tanganmu ada el (じゅう) yang sangat <kanji>berat</kanji> <reading>jew</reading>. Permata asli selalu lebih berat dari yang terlihat.')
    RETURNING id INTO k_735_berat;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '談', 'bicara', 9, 47, 'Anda <radical>mengatakan</radical> hal-hal di sekitar <radical>api</radikal>. Faktanya, ada dua <radikal>api</radikal>, dan Anda sedang <kanji>berbicara</kanji> dengan sekelompok orang, semuanya duduk mengelilingi dua api unggun yang indah.', 'Anda <kanji>berbicara</kanji> dengan cara yang intens dan berapi-api sampai <reading>fajar</reading> (だん), tapi sekarang tidak lagi! Begitu fajar tiba, diskusi perlu diselesaikan.')
    RETURNING id INTO k_736_bicara;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '要', 'membutuhkan', 9, 48, 'Saat <radical>helikopter</radical> dikemudikan oleh <radical>wanita</radical>, hal ini membangkitkan <kanji>kebutuhan</kanji> yang tak terpuaskan dalam dirinya. Dia tidak tahu apa itu. Tapi dia membutuhkannya. Dan itulah mengapa dia terbang berkeliling mencarinya!', 'Akhirnya dia tahu apa yang <kanji>butuhkan</kanji>! Ini <read>yo</reading>gurt (よう)! Yoghurt yang lezat dan lembut!')
    RETURNING id INTO k_737_membutuhkan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '勝', 'menang', 9, 49, '<radical>bulan</radikal> memberi <radikal>gladiator</radikal> <radikal>kekuatan</radikal> sehingga dia akan <kanji>menang</kanji>! <kanji>Kemenangan</kanji> akan menjadi miliknya!', 'Dia <kanji>menang</kanji> berulang kali, dan tak lama kemudian <reading>Shou</reading>gun (しょう) bahkan mendukungnya. Faktanya, Shougun mengklaim dia sebagai gladiator pilihan pribadinya.')
    RETURNING id INTO k_738_menang;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '仮', 'sementara', 9, 50, '<radikal>pemimpin</radikal> Anda sangat <radikal>anti</radikal>-segalanya, menjadikan semuanya <kanji>sementara</kanji>. Anda mendapat baju baru, "Saya anti kaos!" dia berteriak, dan keluarlah.', 'Kepemilikan paling <kanji>sementara</kanji> pemimpin adalah <reading>ca</reading>r (か) miliknya. Atau... mobil, karena semuanya bersifat sementara. Dia membeli satu, mengendarainya, dan tiba-tiba dia anti mobil merah. Dia membutuhkan yang biru!')
    RETURNING id INTO k_739_sementara;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '予', 'sebelumnya', 9, 51, 'Apa yang <radical>mama</radical> suruh kamu lakukan di <radical>jalan</radical>? Lihatlah sebelum Anda menyeberang! Anda harus melakukannya <kanji>sebelumnya</kanji>, atau mungkin sudah terlambat.', 'Saat Anda melihat <kanji>sebelumnya</kanji>, Anda melihat <reading>yo-</reading>yo (よ) tergeletak di jalan.')
    RETURNING id INTO k_854_sebelumnya;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '新', 'baru', 9, 52, 'Ada <radical>berdiri</radikal>pohon <radikal></radikal> yang sedang Anda <radikal>kapak</radikal> ambil. Anda akan menebang pohon ini agar pohon <kanji>baru</kanji> tumbuh.', 'Kamu menebang pohon itu untuk memberi ruang bagi pohon <kanji>baru</kanji>, tapi pohon itu jatuh menimpa <reading>tulang kering</reading> (しん) kamu.')
    RETURNING id INTO k_857_baru;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '返', 'kembali', 9, 53, '<radikal>Skuter</radikal> Anda <radikal>anti</radikal> cepat. Ia tidak mau lari. Jadi, Anda harus <kanji>mengembalikannya</kanji>.', 'Anda <kanji>kembali</kanji> ke toko dan mengantri untuk mengembalikan skuter, namun petugas pengembalian tidak ingin Anda mengembalikannya. Dia menatap matamu, melambaikan tangannya, dan mengubahmu menjadi <reading>ayam</reading> (へん)!')
    RETURNING id INTO k_858_kembali;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '像', 'gambar', 9, 54, '<radikal>pemimpin</radikal> dari <radikal>gajah</radikal> sangat hebat, mereka memasang <kanji>gambar</kanji> atau <kanji>patung</kanji> dirinya di mana-mana. Setiap rumah, setiap sudut jalan – gambarannya selalu memandang rendah semua gajah lainnya.', 'Saat mereka mengungkap <kanji>gambar</kanji> dan <kanji>patung</kanji> pemimpin gajah, semua orang terkesiap. Mereka mirip dia, tapi dia adalah <reading>zo</reading>mbie (ぞう). Terkesiap!')
    RETURNING id INTO k_890_gambar;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '保', 'melestarikan', 9, 55, '<radikal>mulut</radikal> dari <radikal>pohon</radikal> <radikal>pemimpin</radikal> adalah tentang upaya untuk <kanji>melestarikan</kanji> pepohonan. Bahkan, dia <kanji>menjamin</kanji> bahwa dia akan melestarikan pohon-pohon itu jika itu adalah hal terakhir yang dia lakukan.', 'Dia mengikat dirinya ke pohon untuk <kanji>melestarikan</kanji> mereka. Namun sayangnya, para penebang pohon hanya mengambil <read>cangkul</reading> (ほ) raksasa dan merobek pemimpin pohon ini dan pohon tempat dia menempel menjadi dua.')
    RETURNING id INTO k_983_melestarikan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '試', 'mencoba', 9, 56, 'Jika Anda ingin <radical>mengatakan</radical> sesuatu di <radical>upacara</radical> untuk pekerja <radical>konstruksi</radical> Anda harus <kanji>berusaha</kanji> dengan sangat keras. Konstruksinya keras, jadi jika Anda ingin didengar, Anda harus <kanji>mencoba</kanji> untuk lebih keras daripada mengebor, menghancurkan, menggali, dan membagikan penghargaan.', 'Anda <kanji>mencoba</kanji> untuk menarik perhatian mereka satu-satunya cara yang Anda tahu caranya, yaitu dengan mengangkat <reading>shee</reading>p (し) di atas kepala Anda. Domba baas dan tiba-tiba semuanya sunyi, semua mata tertuju padamu. Yah, mereka berada di atas domba.')
    RETURNING id INTO k_1029_mencoba;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '験', 'tes', 9, 57, 'Seekor <radical>kuda</radikal> dan <radikal>cumi-cumi</radikal> akan <kanji>menguji</kanji> Anda.', '<kanji>tes</kanji> diawasi oleh <reading>Ken</reading> (けん) sang samurai.')
    RETURNING id INTO k_1048_tes;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '歴', 'sejarah', 9, 58, 'Anda menggali di bawah <radical>tebing</radical> untuk menemukan dua <radical>pohon</radical> dan tanda <radical>berhenti</radical>. Hal-hal ini pasti punya <kanji>sejarah</kanji>! Coba bayangkan sejarah apa yang diungkapkan oleh kedua pohon dan tanda berhenti ini kepada Anda, di sini, di bawah tebing ini.', 'Untuk benar-benar menggali lebih banyak <kanji>sejarah</kanji> seperti ini, Anda memerlukan bola <reading>wrecki</reading>ng (れき). Untungnya Anda membawa satu, jadi Anda harus bekerja menghancurkan tebing untuk membalikkan sejarah sebanyak yang Anda bisa, dengan bola penghancur Anda.')
    RETURNING id INTO k_1069_sejarah;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '比', 'membandingkan', 9, 59, 'Kanji <radikal>bandingkan</radikal> dan kanji <kanji>bandingkan</kanji> sama persis! Sabas!', '<kanji>Bandingkan</kanji> <reading>dia</reading>di (ひ) hari ini dengan panasnya kemarin. Apakah hari ini lebih panas? Terserah Anda untuk membandingkannya.')
    RETURNING id INTO k_1088_membandingkan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '史', 'sejarah', 9, 60, 'Radikal <radikal>sejarah</radikal> dan kanji <kanji>sejarah</kanji> adalah sama.', '<kanji>Sejarah</kanji> penuh dengan <reading>shee</reading>p (し) yang terkenal. Tentu saja, ada orang-orang penting dalam sejarah juga, tapi domba bersejarah adalah tempatnya.')
    RETURNING id INTO k_1122_sejarah;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '辛', 'pedas', 9, 61, 'Kanji <radikal>pedas</radikal> radikal dan <kanji>pedas</kanji> sama persis! Panas!', 'Saat kamu memakan makanan <kanji>pedas</kanji>, mulutmu akan terasa <reading>から</reading>て. Dari situlah rasa pedas itu berasal!')
    RETURNING id INTO k_1880_pedas;

  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_587_menjual, 'Menjual', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_708_kejadian, 'Kejadian', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_708_kejadian, 'Benda', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_708_kejadian, 'Urusan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_709_menggunakan, 'Menggunakan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_710_alat, 'Alat', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_711_menerima, 'Menerima', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_711_menerima, 'Menerima', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_712_perdamaian, 'Perdamaian', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_712_perdamaian, 'Gaya Jepang', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_714_menentukan, 'Menentukan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_715_kebenaran, 'Kebenaran', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_715_kebenaran, 'Realitas', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_715_kebenaran, 'Buah', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_716_pakaian, 'Pakaian', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_716_pakaian, 'Pakaian', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_717_berenang, 'Berenang', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_718_benda, 'Benda', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_719_menderita, 'Menderita', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_720_cepat, 'Cepat', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_720_cepat, 'Permukaan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_721_bagian, 'Bagian', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_721_bagian, 'Departemen', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_721_bagian, 'Klub', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_722_mengendarai, 'Mengendarai', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_723_tamu, 'Tamu', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_723_tamu, 'Pelanggan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_724_atap, 'Atap', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_724_atap, 'Toko', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_724_atap, 'Toko', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_725_derajat, 'Derajat', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_725_derajat, 'Kejadian', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_727_memegang, 'Memegang', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_728_dunia, 'Dunia', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_729_keberangkatan, 'Keberangkatan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_730_saling, 'Saling', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_730_saling, 'Menteri', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_731_prefektur, 'Prefektur', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_732_kecantikan, 'Kecantikan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_732_kecantikan, 'Cantik', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_733_kehilangan, 'Kehilangan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_734_mengirim, 'Mengirim', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_735_berat, 'Berat', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_736_bicara, 'Bicara', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_737_membutuhkan, 'Membutuhkan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_738_menang, 'Menang', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_738_menang, 'Kemenangan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_739_sementara, 'Sementara', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_854_sebelumnya, 'Sebelumnya', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_857_baru, 'Baru', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_858_kembali, 'Kembali', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_890_gambar, 'Gambar', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_890_gambar, 'Patung', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_983_melestarikan, 'Melestarikan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_983_melestarikan, 'Menjamin', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1029_mencoba, 'Mencoba', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1029_mencoba, 'Percobaan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1048_tes, 'Tes', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1069_sejarah, 'Sejarah', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1088_membandingkan, 'Membandingkan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1122_sejarah, 'Sejarah', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1880_pedas, 'Pedas', true, true);

  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_587_menjual, 'ばい', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_587_menjual, 'う', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_708_kejadian, 'じ', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_708_kejadian, 'こと', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_708_kejadian, 'つか', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_709_menggunakan, 'し', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_709_menggunakan, 'つか', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_710_alat, 'ぐ', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_711_menerima, 'じゅ', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_711_menerima, 'う', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_712_perdamaian, 'わ', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_712_perdamaian, 'お', 'onyomi', false, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_712_perdamaian, 'なご', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_712_perdamaian, 'やわ', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_712_perdamaian, 'かず', 'nanori', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_712_perdamaian, 'より', 'nanori', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_714_menentukan, 'てい', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_714_menentukan, 'じょう', 'onyomi', false, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_714_menentukan, 'さだ', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_715_kebenaran, 'じつ', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_715_kebenaran, 'み', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_715_kebenaran, 'みの', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_715_kebenaran, 'さね', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_716_pakaian, 'ふく', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_717_berenang, 'およ', 'kunyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_717_berenang, 'えい', 'onyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_718_benda, 'ぶつ', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_718_benda, 'もつ', 'onyomi', false, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_718_benda, 'もの', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_719_menderita, 'く', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_719_menderita, 'くる', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_719_menderita, 'にが', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_720_cepat, 'ひょう', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_720_cepat, 'あらわ', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_720_cepat, 'おもて', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_721_bagian, 'ぶ', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_721_bagian, 'へ', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_722_mengendarai, 'の', 'kunyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_722_mengendarai, 'じょう', 'onyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_723_tamu, 'きゃく', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_724_atap, 'や', 'kunyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_724_atap, 'おく', 'onyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_725_derajat, 'ど', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_725_derajat, 'たく', 'onyomi', false, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_725_derajat, 'たび', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_727_memegang, 'じ', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_727_memegang, 'も', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_728_dunia, 'かい', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_729_keberangkatan, 'はつ', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_730_saling, 'そう', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_730_saling, 'しょう', 'onyomi', false, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_730_saling, 'あい', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_731_prefektur, 'けん', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_732_kecantikan, 'び', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_732_kecantikan, 'み', 'onyomi', false, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_732_kecantikan, 'うつく', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_733_kehilangan, 'ふ', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_733_kehilangan, 'ま', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_733_kehilangan, 'お', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_734_mengirim, 'そう', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_734_mengirim, 'おく', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_735_berat, 'じゅう', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_735_berat, 'ちょう', 'onyomi', false, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_735_berat, 'おも', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_735_berat, 'かさ', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_735_berat, 'え', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_736_bicara, 'だん', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_737_membutuhkan, 'よう', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_737_membutuhkan, 'い', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_737_membutuhkan, 'かなめ', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_738_menang, 'しょう', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_738_menang, 'か', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_739_sementara, 'か', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_739_sementara, 'かり', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_739_sementara, 'か', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_739_sementara, 'け', 'onyomi', false, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_854_sebelumnya, 'よ', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_854_sebelumnya, 'あらかじ', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_857_baru, 'しん', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_857_baru, 'あたら', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_857_baru, 'あら', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_857_baru, 'にい', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_858_kembali, 'へん', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_858_kembali, 'かえ', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_890_gambar, 'ぞう', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_983_melestarikan, 'ほ', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_983_melestarikan, 'たも', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1029_mencoba, 'し', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1029_mencoba, 'こころ', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1029_mencoba, 'ため', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1048_tes, 'けん', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1048_tes, 'ため', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1048_tes, 'ためし', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1069_sejarah, 'れき', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1088_membandingkan, 'ひ', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1088_membandingkan, 'くら', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1122_sejarah, 'し', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1880_pedas, 'から', 'kunyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1880_pedas, 'つら', 'kunyomi', false, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1880_pedas, 'しん', 'onyomi', false, false);

  -- 3. VOCABULARIES
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '売る', 'untuk-menjual-sesuatu', 9, 62, 'Kata ini terdiri dari kanji dengan hiragana ditempelkan. Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanji itu sendiri berarti <kanji>menjual</kanji>, dan ini merupakan kata kerja transitif yang berarti <vocabulary>menjual sesuatu</vocabulary>.', 'Anda ingin <vocabulary>menjual sesuatu</vocabulary>, tapi apa? Apa yang bisa Anda jual yang membutuhkan sedikit tenaga kerja? <membaca>U</reading>ni (う)! Mereka hanya nongkrong di laut, siap untuk diambil. Ambil beberapa, hati-hati terhadap bagian yang runcing, dan jual untuk mendapatkan uang tunai cepat!', 'Untuk Menjual Sesuatu')
    RETURNING id INTO v_2816_untuk_menjual_sesuatu;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', 'ハート形', 'berbentuk-hati', 9, 63, 'ハート tentu saja berarti "hati" dan kamu tahu bahwa 形 berarti <kanji>bentuk</kanji>. Anda mungkin sudah mengetahui hal ini. <vocabulary>berbentuk hati</vocabulary>. 

Anda juga dapat menambahkan kanji ini ke berbagai hal lainnya untuk mengatakan "berbentuk ____". Cobalah!', 'Pembacaan bagian kanji menggunakan bacaan kun''yomi. Ini seperti bacaan yang sudah Anda pelajari untuk 形 tanpa bagian ち. Dan rendaku juga terjadi, jadi jadi がた. Jika Anda bisa mengingatnya, Anda juga harus bisa mengingat bacaan ini!', 'Berbentuk Hati')
    RETURNING id INTO v_2823_berbentuk_hati;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '目次', 'daftar-isi', 9, 64, '<kanji>Mata</kanji> Anda tertuju pada apa yang <kanji>berikutnya</kanji>. Bagaimana mungkin untuk melihat apa yang akan terjadi? Itu karena Anda sedang melihat <vocabulary>daftar isi</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda pernah melihatnya sebelumnya, namun pembacaan もく untuk 目 masih cukup baru, jadi inilah mnemoniknya:

Anda selalu memberikan <vocabulary>daftar isi</vocabulary> ketika Anda <reading>mengolok-olok</reading> (もく) seseorang. Ejekan Anda cenderung rumit dan berlangsung lama, seperti Anda seorang komedian panggang atau semacamnya, jadi ada baiknya Anda membagikan daftar isi kepada orang yang Anda ejek. Mereka sangat menghargainya.', 'Daftar isi')
    RETURNING id INTO v_2872_daftar_isi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '星', 'bintang', 9, 65, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.', 'Karena kata ini terdiri dari satu kanji, kemungkinan besar menggunakan bacaan kun''yomi. Anda tidak mempelajari cara membaca dengan kanji, jadi inilah mnemonik untuk membantu Anda:

Tahukah Anda bahwa gugus <vocabulary>bintang</vocabulary> Aries dulu disebut konstelasi <reading>Hoe Shee</reading>p (ほし)? Nah, saya hanya main-main, tapi Aries diwakili oleh seekor domba jantan dan sebenarnya terlihat seperti cangkul. Dan hei, "domba cangkul" terdengar seperti ほし. Jadi, tahukah Anda, jangan biarkan kebenaran menghalangi cerita yang bagus.', 'Bintang')
    RETURNING id INTO v_2915_bintang;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '海', 'laut', 9, 66, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.', 'Karena kata ini terdiri dari satu kanji, maka sebaiknya menggunakan bacaan kun''yomi. Saat mempelajari kanji, Anda tidak mempelajari bacaan tersebut, jadi inilah mnemonik untuk membantu Anda dengan kata ini: 

Anda mengunjungi <vocabulary>laut</vocabulary>. Anehnya, ia menanyakan siapa yang berkunjung. Anda begitu penuh dengan diri sendiri (bahkan di depan laut/samudera) sehingga Anda menjawab: "<reading>um, saya</reading>?" (うみ). Bayangkan diri Anda merasa sepuas ini.', 'Laut, Laut')
    RETURNING id INTO v_2917_laut;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '海魚', 'ikan-laut', 9, 67, '<kanji>ocean</kanji> <kanji>fish</kanji> hanyalah <vocabulary>ocean fish</vocabulary>. Mereka juga merupakan jenis ikan yang paling enak.

海魚 sering digunakan sebagai kontras dengan 川魚 (ikan sungai), terutama jika berbicara tentang ikan sebagai makanan.', 'Anda mungkin berpikir ini semua akan menjadi on''yomi, dan memang bisa saja terjadi, tapi sebenarnya kami ingin Anda fokus pada pembacaan kun''yomi うみざかな di sini. Menggunakan on''yomi juga benar, tetapi terdengar formal dan ilmiah, sedangkan うみざかな lebih bersifat sehari-hari, jadi cobalah mengingat bacaan ini! Anda sudah mengetahui pembacaan kun''yomi individu untuk ini, tapi hati-hati dengan rendakunya.', 'Ikan Laut, Ikan Air Asin')
    RETURNING id INTO v_2984_ikan_laut;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '住民', 'penduduk', 9, 68, 'Mereka <kanji>tinggal</kanji> di sini, <kanji>orang-orang</kanji> ini. Jadi apa itu? Mereka adalah <vocabulary>penduduk</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Penduduk, Warga negara')
    RETURNING id INTO v_2996_penduduk;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '研究室', 'laboratorium', 9, 69, 'Ingat bagaimana 研究 berarti "penelitian"? <kanji>ruangan</kanji> tempat Anda melakukan penelitian adalah <vocabulary>laboratorium</vocabulary>!

研究室 mengacu pada <vocabulary>ruang laboratorium</vocabulary>, seringkali dalam institusi yang lebih besar seperti universitas atau perguruan tinggi.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Laboratorium, Ruang Lab')
    RETURNING id INTO v_3024_laboratorium;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '事', 'benda', 9, 70, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.

Sebagai kata kosakata tersendiri, 事 biasanya mengacu pada <vocabulary>hal</vocabulary> yang tidak berwujud atau abstrak, seperti いい事 (hal yang baik) atau する事 (hal yang harus dilakukan). 

Tergantung konteksnya, kata ini juga bisa berarti <vocabulary>materi</vocabulary> atau <vocabulary>occurrence</vocabulary>, seperti 大切な事 (hal penting) atau きのうの事 (apa yang terjadi kemarin).', 'Karena kata ini terdiri dari satu kanji, maka sebaiknya menggunakan bacaan kun''yomi. Anda belum mempelajari bacaan tersebut, jadi inilah mnemonik untuk membantu Anda:

Anda telah melakukan segala macam <vocabulary>hal</vocabulary> di <reading>mantel</reading> Anda (こと). Kalau dipikir-pikir, Anda hanya memakai mantel saat ada urusan. Cobalah mengingat semua hal yang pernah Anda lakukan saat mengenakan mantel. Itu banyak! Secara simbolis, mantel Anda = semua hal dan <vocabulary>kejadian</vocabulary> yang pernah Anda alami, dan semua <vocabulary>masalah</vocabulary> yang harus Anda hadapi dalam hidup.', 'Benda, Urusan, Kejadian')
    RETURNING id INTO v_3082_benda;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '用事', 'tugas', 9, 71, 'Jika ada <kanji>tugas</kanji> <kanji>kejadian</kanji>, maka ada sesuatu yang harus Anda lakukan, alias <vocabulary>tugas</vocabulary> atau <vocabulary>tugas</vocabulary>.

用事 umumnya mengacu pada tugas-tugas yang perlu Anda selesaikan secara pribadi. Seringkali itu berarti keperluan seperti membeli bahan makanan atau membayar tagihan. Bisa juga berarti janji temu dengan dokter, pertemuan dengan teman, atau tugas pekerjaan seperti menghadiri rapat dan menyelesaikan tugas. Itu semua yang ada dalam daftar <vocabulary>hal yang harus dilakukan</vocabulary> Anda!', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Tugas, Tugas, Hal yang Harus Dilakukan')
    RETURNING id INTO v_3083_tugas;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '工事', 'konstruksi', 9, 72, '<kanji>Konstruksi</kanji> <kanji>kejadian</kanji> hanyalah jenis <vocabulary>konstruksi</vocabulary> yang berbeda!

工事 sering merujuk pada <kosakata>pekerjaan konstruksi</vocabulary>, terutama untuk gedung, jalan, dan proyek infrastruktur lainnya. Tapi itu juga bisa mencakup perbaikan, peningkatan, dan pemasangan hal-hal seperti sistem kelistrikan, pipa ledeng, saluran telepon, dan juga internet.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Konstruksi, Ada Pekerjaan Konstruksi')
    RETURNING id INTO v_3084_konstruksi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '大事', 'penting', 9, 73, 'Anda tahu 事 berarti "kejadian", tetapi bisa juga berarti "materi". Dan jika sesuatu adalah <kanji>besar</kanji> <kanji>masalah</kanji> bagi seseorang, itu pasti menjadi hal yang sangat <vocabulary>penting</vocabulary> dan <vocabulary>berharga</vocabulary> bagi mereka.

大事 menggambarkan sesuatu yang sangat penting atau bernilai. Misalnya, Anda dapat menggunakan 大事 untuk mendeskripsikan sesuatu atau seseorang yang sangat berarti bagi Anda. Anda juga dapat menggunakan 大事 untuk mendeskripsikan tugas atau momen penting. Dan jika Anda ingin mengangkat topik yang serius, Anda bisa mengatakan bahwa Anda mempunyai sesuatu yang ingin dibicarakan.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Karena 大 mempunyai dua pembacaan on''yomi, berikut adalah mnemonik untuk membantu Anda mengingat mana yang harus digunakan:

Tidak ada sesuatu pun dalam hidup Anda yang lebih <vocabulary>penting</vocabulary> atau <vocabulary>berharga</vocabulary> bagi Anda selain <reading>pewarna</reading> (だい). Anda benar-benar menyukai pewarna lebih dari apa pun. Pewarna, pewarna, pewarna!', 'Penting, Berharga')
    RETURNING id INTO v_3085_penting;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '返事', 'membalas', 9, 74, 'Anda tahu 事 berarti "kejadian", tetapi bisa juga berarti "materi". Dan jika Anda <kanji>mengembalikan</kanji> <kanji>masalah</kanji> ke orang lain, Anda memberikan <vocabulary>balasan</vocabulary> atau <vocabulary>respons</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Membalas, Tanggapan')
    RETURNING id INTO v_3086_membalas;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '食事', 'makanan', 9, 75, '<kanji>makan</kanji>dan <kanji>kejadian</kanji> yang teratur juga dikenal sebagai <vocabulary>makan</vocabulary>. 

食事 bisa merujuk pada makanan tertentu, seperti sarapan, makan siang, atau makan malam. Ini juga bisa berarti <vocabulary>diet</vocabulary> Anda secara keseluruhan, seperti jenis makanan yang biasa Anda makan. 食事 bahkan bisa menjadi kata benda verbal untuk tindakan <vocabulary>dining</vocabulary>, jadi 食事する bisa digunakan untuk membicarakan tentang makan.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Makanan, Diet, Makan')
    RETURNING id INTO v_3087_makanan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '使う', 'untuk-digunakan', 9, 76, 'Kata ini terdiri dari kanji dengan hiragana ditempelkan. Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanjinya sendiri berarti <kanji>menggunakan</kanji> sehingga versi kata kerjanya adalah <vocabulary>to use</vocabulary>. Jika Anda berbicara tentang uang, ini juga bisa berarti <vocabulary>menghabiskan</vocabulary>.', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi. Anda tidak belajar membaca dengan kanji ini, jadi inilah mnemonik untuk membantu Anda:

Anda merasa <vocabulary>sangat berguna untuk menggunakan</vocabulary> <reading>dua mobil</reading> (つか) dalam kehidupan sehari-hari Anda. Minivan besar? Anda menggunakannya untuk berbelanja dan mengajak anak-anak berlatih sepak bola. Mobil convertible kecil dengan dua tempat duduk? Anda menggunakan yang itu untuk mencetak tanggal dan berlomba untuk mendapatkan slip merah muda. Mobil yang berbeda untuk kegunaan yang berbeda, Anda tahu? Itu sebabnya sebaiknya menggunakan dua mobil.', 'Untuk Digunakan, Untuk Menghabiskan')
    RETURNING id INTO v_3088_untuk_digunakan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '道具', 'alat', 9, 77, '<kanji>alat</kanji> yang Anda gunakan dalam <kanji>jalan</kanji> kehidupan penting untuk dimiliki. Apa <vocabulary>alat</vocabulary> Anda yang paling penting?', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Alat')
    RETURNING id INTO v_3089_alat;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '家具', 'mebel', 9, 78, '<kanji>rumah</kanji> <kanji>peralatan</kanji> Anda bukanlah peralatan yang Anda gunakan untuk membangun rumah. Mereka lebih seperti benda-benda yang merupakan bagian dari rumah Anda yang Anda gunakan seperti peralatan. Hal-hal tersebut akan menjadi <vocabulary>furniture</vocabulary> Anda. Jadi ingat, peralatan rumah Anda hanyalah furnitur.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Anda mempelajari pembacaan か dengan 家事, namun inilah mnemonik jika Anda memerlukan penyegaran:

Jenis <vocabulary>furnitur</vocabulary> terbaik adalah <reading>mobil</reading> (か). Jika dipikir-pikir, siapa pun akan terkesan menemukan mobil di dalam rumah Anda. Apakah itu mobil, mereka akan bertanya. Oh, itu hanya sebuah perabot, katamu, saya menggunakannya sebagai tempat tidur. Perabotan mobil sangat fleksibel.', 'Mebel')
    RETURNING id INTO v_3090_mebel;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '受ける', 'untuk-menerima-sesuatu', 9, 79, 'Kata ini terdiri dari kanji dengan hiragana ditempelkan. Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanji itu sendiri berarti <kanji>menerima</kanji>, dan kata kerja ini mempunyai arti yang hampir sama: <vocabulary>menerima sesuatu</vocabulary>!

Ini merupakan kata kerja transitif, sehingga memerlukan objek langsung. Namun 受ける sering kali menyiratkan penerimaan pasif, umumnya terhadap objek tak berwujud seperti pendidikan, atau kerusakan. Bisa juga berarti <vocabulary>mengambil sesuatu</vocabulary>, seperti mengikuti ujian atau tawaran pekerjaan.', 'Ada makhluk di depan Anda yang hendak <vocabulary>menerima sesuatu</vocabulary>, tapi apakah itu? Itu adalah <read>u</reading>ni (う), dan itu akan menerima sambutan hangat dan pendidikan. Bayangkan seekor landak laut menerima hal-hal ini, dan kemudian mengikuti ujian untuk membuktikan seberapa banyak pendidikan yang diterimanya.', 'Untuk Menerima Sesuatu, Untuk Menerima Sesuatu, Untuk Mengambil Sesuatu')
    RETURNING id INTO v_3091_untuk_menerima_sesuatu;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '和風', 'gaya-jepang', 9, 80, '<kanji>Gaya Jepang</kanji> <kanji>gaya</kanji>. Orang Jepang sering kali berpikir bahwa mereka sangat unik dan memiliki gaya yang sangat istimewa (dan sering kali memang begitu). Jadi, Anda akan mendengar kata ini digunakan ketika seseorang ingin menggambarkan selera gaya yang unik ini. Wafuuuuu! 

Perhatikan bahwa kata ini menggunakan arti kanji alternatif di kedua kanji tersebut. Kata-kata tersebut ada dalam penjelasan kanji, namun bukan kata utama, jadi mungkin perlu sedikit usaha ekstra untuk mempelajari kata ini tergantung pada apa yang Anda pelajari!', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Gaya Jepang')
    RETURNING id INTO v_3092_gaya_jepang;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '平和', 'perdamaian', 9, 81, '<kanji>datar</kanji> <kanji>kedamaian</kanji>. Ini adalah perdamaian yang akan bertahan lama, karena tidak ada gelombang... tidak ada riak... hanya datar. Ini adalah <kosakata>perdamaian</vocabulary> yang sudah lama ada.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Perdamaian, Harmoni')
    RETURNING id INTO v_3093_perdamaian;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '和食', 'makanan-gaya-jepang', 9, 82, '<kanji>Gaya Jepang</kanji> <kanji>makan</kanji> ... baiklah, mari kita ubah "makan" menjadi "makanan" dan Anda akan mendapatkan <vocabulary>makanan gaya Jepang</vocabulary>. Ini adalah cara yang baik untuk membedakan antara restoran bergaya Amerika dan restoran bergaya Jepang. Makanan seperti apa yang kamu sukai malam ini? Oh, bagaimana dengan 和食?', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Makanan Gaya Jepang, Makanan Jepang')
    RETURNING id INTO v_3094_makanan_gaya_jepang;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '和室', 'kamar-bergaya-jepang', 9, 83, '<kanji>gaya Jepang</kanji> <kanji>ruangan</kanji> cenderung cukup kecil. Ini terutama mengacu pada jenis ruangan yang ditutupi tikar tatami. Jika Anda mencari tempat tinggal di Jepang, 和室 akan menjadi seperti itu. Anda akan mengeluarkan futon dari lemari dan tidur di lantai. Nyaman sekali, <vocabulary>kamar bergaya Jepang</vocabulary> ini!', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Kamar Bergaya Jepang')
    RETURNING id INTO v_3095_kamar_bergaya_jepang;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '和服', 'pakaian-gaya-jepang', 9, 84, '<kanji>Pakaian</kanji>gaya Jepang</kanji> (<vocabulary>Pakaian Gaya Jepang</vocabulary>). Kita berbicara tentang kimono dan yukata dan hal-hal seperti itu. Pada dasarnya inilah yang membedakan pakaian Jepang dengan pakaian Barat. 

Pakaian apa yang akan kamu kenakan ke festival malam ini? Oh, mungkin beberapa 和服.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Pakaian Gaya Jepang, Pakaian Jepang, Pakaian Gaya Jepang, Pakaian Jepang')
    RETURNING id INTO v_3096_pakaian_gaya_jepang;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '予定', 'rencana', 9, 85, 'Sesuatu telah <kanji>ditentukan</kanji>d <kanji>sebelumnya</kanji>. Benda apa ini? Tindakan ini? Ini adalah <vocabulary>rencana</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Rencana, Jadwal, Memperkirakan')
    RETURNING id INTO v_3100_rencana;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '決定', 'keputusan', 9, 86, 'Sudah <kanji>memutuskan</kanji>d dan <kanji>menentukan</kanji>d. <vocabulary>keputusan</vocabulary> telah dibuat.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya. Pastikan untuk memperhatikan singkatan けつ dalam 決. Ini menuju ke けっ.', 'Keputusan, Tekad')
    RETURNING id INTO v_3101_keputusan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '実', 'kebenaran', 9, 87, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.', 'Bacaannya adalah bacaan on''yomi, sama seperti yang Anda pelajari dengan kanji. Itu kebenarannya, aku janji.', 'Kebenaran, Realitas')
    RETURNING id INTO v_3102_kebenaran;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '事実', 'fakta', 9, 88, '<kanji>kejadian</kanji> dari <kanji>kebenaran</kanji> adalah <vocabulary>fakta</vocabulary>.

事実 pada dasarnya digunakan sebagai kata benda, namun bisa juga digunakan untuk menyatakan sesuatu yang <vocabulary>faktual</vocabulary>. Selain itu, dalam penulisan yang relatif formal, kata ini dapat digunakan sebagai kata keterangan yang berarti <vocabulary>sebenarnya</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Fakta, Nyata, Nyatanya')
    RETURNING id INTO v_3103_fakta;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '実力', 'kekuatan-sejati', 9, 89, '<kanji>kebenaran</kanji> di balik <kanji>kekuatan</kanji> seseorang adalah <vocabulary>kekuatan sejati</vocabulary> mereka. Itu juga merupakan <vocabulary>kemampuan sebenarnya</vocabulary> mereka.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Karena 力 memiliki dua pembacaan on''yomi, berikut adalah mnemonik untuk membantu Anda mengingat mana yang akan digunakan:

<vocabulary>kekuatan sejati</vocabulary> Anda tersegel di balik dua gembok. <reading>Wah, dua</reading> <reading>kunci</reading> (じつりょく)?! Orang-orang pasti takut dengan <vocabulary>kekuatan sejati</vocabulary> Anda hingga menyegelnya di balik dua kunci!', 'Kekuatan Sejati, Kemampuan Sejati, Kekuatan Sejati')
    RETURNING id INTO v_3104_kekuatan_sejati;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '服', 'pakaian', 9, 90, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.', 'Bacaannya adalah bacaan yang dipelajari dengan kanji dan menggunakan on''yomi meskipun hanya satu kata. Sangat aneh, tetapi nyaman bagi Anda selama Anda mengingat kata bacaan pengecualian ini.', 'Pakaian, Pakaian')
    RETURNING id INTO v_3105_pakaian;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '泳ぐ', 'berenang', 9, 91, 'Kata ini terdiri dari kanji dengan hiragana ditempelkan. Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanjinya sendiri berarti <kanji>berenang</kanji> sehingga versi kosakata kata kerjanya adalah <vocabulary>berenang</vocabulary>.', 'Bacaannya kun''yomi (lihat hiragana yang menonjol?) tapi itulah bacaan yang Anda pelajari dengan kanji.', 'Berenang')
    RETURNING id INTO v_3106_berenang;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '物', 'benda', 9, 92, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna. Selain <vocabulary>thing</vocabulary>, kata ini mempunyai arti terkait dengan <vocabulary>object</vocabulary> dan <vocabulary>item</vocabulary>.', 'Karena kata ini terdiri dari satu kanji, seharusnya menggunakan bacaan kun''yomi, tetapi Anda belum mempelajarinya. Berikut ini mnemonik untuk membantu Anda:

Game apa yang memiliki <vocabulary>hal</vocabulary> paling banyak di dalamnya? <read>Mono</reading>poli (もの). Anda dapat memilih dari banyak hal acak untuk dimainkan, Anda tahu? Dan tidak ada seorang pun yang tahu apa sebenarnya benda-benda itu. Apa sih bidal itu? Sebut saja itu suatu hal.', 'Benda, Obyek, Barang')
    RETURNING id INTO v_3107_benda;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '名物', 'spesialisasi-lokal', 9, 93, '<kanji>terkenal</kanji> <kanji>hal</kanji> suatu daerah adalah <vocabulary>produk terkenal</vocabulary> mereka, namun kedengarannya lebih baik dalam bahasa Inggris jika Anda mengatakan itu adalah <vocabulary>makanan khas lokal</vocabulary>. Saat Anda bepergian keliling Jepang, pastikan untuk mencari 名物! Itu selalu menyenangkan.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Spesialisasi Lokal, Produk Terkenal, Khusus, Barang Terkenal')
    RETURNING id INTO v_3109_spesialisasi_lokal;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '苦しい', 'menyakitkan', 9, 94, 'Kata ini berakhiran い, artinya kamu tahu itu mungkin kata sifat. Faktanya, kata tersebut diakhiri dengan しい, sehingga kemungkinan besar itu adalah kata sifat. Karena kanji 苦 berarti <kanji>penderitaan</kanji>, kata ini adalah versi kata sifatnya: <vocabulary>menyakitkan</vocabulary>.

苦しい biasanya menggambarkan perasaan menyakitkan atau <vocabulary>disstress</vocabulary> yang berlangsung terus-menerus dan sulit untuk ditahan, bukan sensasi fisik dari rasa sakit. Misalnya, Anda dapat menggunakan 苦しい saat sulit bernapas, saat Anda merasakan sakit hati, atau bahkan saat keuangan Anda <vocabulary>tegang</vocabulary>.', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi. Anda tidak belajar membaca dengan kanji ini, jadi inilah mnemonik untuk membantu Anda: 

Semuanya sungguh <vocabulary>menyakitkan</vocabulary> saat ini. Mengapa? Ada sesuatu yang berat di atas tubuhmu, <reading>menghancurkan</reading>menghantam (くる) kamu.', 'Menyakitkan, Menyedihkan, Tegang')
    RETURNING id INTO v_3111_menyakitkan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '乗る', 'untuk-berkendara', 9, 95, 'Kata ini terdiri dari kanji dengan hiragana ditempelkan. Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanjinya sendiri berarti <kanji>naik</kanji> jadi versi vocab verbanya berarti <vocabulary>naik</vocabulary>.', 'Bacaannya kun''yomi (lihat hiragana itu?) tapi itulah bacaan yang kamu pelajari dengan kanji. Nikmati perjalanannya!', 'Untuk Berkendara, Untuk melanjutkan, Ke Naik')
    RETURNING id INTO v_3112_untuk_berkendara;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', 'お客さん', 'tamu', 9, 96, 'Huruf さん di akhir adalah nama kehormatan さん. Itu ada di sana untuk menunjukkan rasa hormat. Ini seperti mengatakan "Tuan Tamu!" atau sesuatu seperti itu. Tapi itu terdengar bodoh dalam bahasa Inggris. Kita sebut saja kata ini sebagai <vocabulary>guest</vocabulary>, <vocabulary>visitor</vocabulary>, atau <vocabulary>customer</vocabulary>. Anda akan sering mendengar kata ini ketika Anda berada di toko atau menjadi pelanggan di suatu tempat di Jepang. Anda adalah お客さん, dalam situasi itu. Alternatifnya, Anda juga akan mendengar お客さま yang merupakan versi lebih sopan dari kata ini (karena diakhiri dengan さま dan bukan さん).', 'Bacaannya adalah bacaan yang Anda pelajari dengan kanji. Cukup tambahkan hiragana di bagian akhir dan Anda siap melakukannya.', 'Tamu, Pengunjung, Pelanggan')
    RETURNING id INTO v_3115_tamu;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '客室', 'kamar-tamu', 9, 97, '<kanji>ruangan</kanji> tamu adalah <vocabulary>ruang tamu</vocabulary> (ruangan tempat Anda menaruh tamu, ya!).', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Kamar Tamu')
    RETURNING id INTO v_3116_kamar_tamu;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '〜屋', 'toko', 9, 98, 'Anda akan melihatnya melekat pada kata lain... seperti "daging" atau "ikan". Saat Anda melihat ini, Anda akan mengetahui bahwa ini adalah ___ store, sehingga kata ini berarti <vocabulary>store</vocabulary> (sama seperti kanji).', 'Bacaannya adalah bacaan kun''yomi. Jangan mengetikkan 〜 saat menulis jawabannya. Itu hanya untuk memberi tahu Anda bahwa biasanya ada sesuatu yang melekat pada kata ini.', 'Toko, Toko')
    RETURNING id INTO v_3117_toko;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '部屋', 'ruang', 9, 99, 'Jika Anda memiliki <kanji>bagian</kanji> dari <kanji>atap</kanji>, bagian itu adalah <vocabulary>ruangan</vocabulary> Anda. Bayangkan saja sebuah atap yang terbagi menjadi beberapa bagian dalam sebuah rumah, dan bagian-bagiannya turun ke tanah. Setiap bagian adalah ruangannya sendiri, bukan?', '部屋 agak rumit karena merupakan salah satu dari sedikit kata dalam bahasa Jepang yang menggunakan bacaan へ untuk 部. Anda hanya harus ingat yang ini spesial. Berikut ini mnemonik untuk membantu Anda:

Bayangkan Anda menyewa <vocabulary>room</vocabulary>, namun yang Anda dengar di malam hari hanyalah kalimat "<reading>heh</reading> (へ)… heh... heh... hehehe". Sebuah tawa tak henti-hentinya, datang dari suatu tempat di dalam kamarmu. Hehehe.', 'Ruang')
    RETURNING id INTO v_3118_ruang;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '肉屋', 'toko-daging', 9, 100, '<kanji>daging</kanji> <kanji>toko</kanji> adalah tempat yang menjual daging. Siapa yang menjual daging? <vocabulary>toko daging</vocabulary>!

肉屋 sering kali mengacu pada toko daging, tetapi bisa juga berarti tukang daging sebenarnya yang bekerja di sana. Anda mungkin juga melihatnya sebagai お肉屋さん, tapi itu tidak akan mengubah artinya — bisa saja toko atau tukang daging, tergantung konteksnya!', 'Untuk 肉 Anda menggunakan bacaan にく (yang Anda pelajari dengan kanji). Untuk 屋 kamu menggunakan kun''yomi, yang kamu pelajari dengan kanji. Pada dasarnya, jika Anda mempelajari pembacaan kanji, Anda dapat membaca kata ini!', 'Toko daging, Toko Daging, Toko Daging')
    RETURNING id INTO v_3119_toko_daging;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '茶屋', 'toko-teh', 9, 101, '<kanji>teh</kanji> <kanji>toko</kanji> adalah <vocabulary>kedai teh</vocabulary>. Mmm, teh yang enak dan nikmat.

Secara tradisional, 茶屋 adalah <vocabulary>kedai teh</vocabulary> Jepang di mana wisatawan dapat beristirahat dan menikmati teh dan makanan ringan. Jenis 茶屋 ini kurang umum saat ini, namun istilah ini masih sering digunakan untuk kafe atau restoran yang dirancang untuk membangkitkan pesona kedai teh Jepang yang bersejarah.', 'Kata ini menggunakan bacaan yang Anda pelajari dengan kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Toko Teh, Kedai teh')
    RETURNING id INTO v_3120_toko_teh;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '魚屋', 'toko-ikan', 9, 102, '<kanji>ikan</kanji> <kanji>toko</kanji> adalah <vocabulary>toko ikan</vocabulary>, tempat Anda membeli ikan. Khususnya di Jepang, sangat penting.', 'Kata jukugo ini menggunakan bacaan kun''yomi untuk kedua kanjinya. Anda mempelajari pembacaan さかな beberapa tingkat yang lalu dengan kosakata kata 魚, dan Anda harus mengetahui pembacaan や dari 屋 dari kanji. Gabungkan saja keduanya untuk mendapatkan bacaan yang satu ini: さかなや.', 'Toko Ikan, Pasar Ikan, Penjual Ikan, Toko Ikan, Penjual ikan')
    RETURNING id INTO v_3121_toko_ikan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '名古屋', 'nagoya', 9, 103, 'Tempat yang <kanji>terkenal</kanji> dengan <kanji>atap</kanji> yang <kanji>tua</kanji>. Saya tidak tahu kenapa, tapi ini adalah kota <vocabulary>Nagoya</vocabulary>. Gabungkan saja kedua hal tersebut dan Anda akan sulit untuk melupakannya (selama Anda pernah mendengar tentang Nagoya sebelumnya - jika belum, bacalah tentangnya!).', 'Seperti banyak nama tempat lainnya, pembacaan di sini sedikit berantakan. 名 menggunakan kun''yomi な, 古 menggunakan on''yomi こ, tetapi rendaku menggunakan ご, dan 屋 menggunakan kun''yomi や. Cukup rumit, tapi kalau kamu tahu arti kata ini adalah Nagoya, kamu pasti tahu kalau bacaannya juga なごや — tidak perlu terlalu memikirkan banyak hal.', 'Nagoya')
    RETURNING id INTO v_3122_nagoya;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '今度', 'kali-ini', 9, 104, 'Dalam <kanji>sekarang</kanji> <kanji>kejadian</kanji> Anda akan mempelajari kanji Anda, bukan? Kata ini berarti <vocabulary>kali ini</vocabulary>. Meskipun "kali ini", namun ada perasaan <vocabulary>next time</vocabulary>. Ini seperti mengatakan "oke, kali ini kita akan mendapatkannya" sedangkan "kali ini" sebenarnya berarti "lain kali", membuatnya sedikit berbeda dari 今回.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Kali ini, Lain kali')
    RETURNING id INTO v_3123_kali_ini;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '丁度', 'tepat', 9, 105, 'Oke, kita akan sedikit curang untuk mengingat arti kata ini. Katakanlah Anda mengukur suhu <kanji>jalan</kanji>. Tepatnya seratus <kanji>derajat</kanji>. <vocabulary>persis</vocabulary> memang seperti itu. <vocabulary>Hanya</vocabulary> 100 derajat, tidak lebih atau kurang satu derajat. Anda menaruh telur Anda di jalan dan melihatnya memasak.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Tepat, Hanya')
    RETURNING id INTO v_3124_tepat;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '毎度', 'setiap-saat', 9, 106, 'Ketika sesuatu terjadi <kanji>setiap</kanji> <kanji>kejadian</kanji> dan <kanji>setiap</kanji> <kanji>derajat</kanji>, itu adalah sesuatu yang <vocabulary>sering</vocabulary>. Itu terjadi <vocabulary>setiap kali</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Setiap Saat, Setiap Saat, Sering')
    RETURNING id INTO v_3125_setiap_saat;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '角度', 'sudut', 9, 107, '<kanji>sudut</kanji> <kanji>derajat</kanji> hanyalah sebuah <vocabulary>sudut</vocabulary>. 90 derajat? 160 derajat? Semuanya masih bersudut saat Anda melakukannya.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Sudut')
    RETURNING id INTO v_3126_sudut;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '〜度', 'derajat', 9, 108, 'Kanji <kanji>derajat</kanji> dapat berarti derajat dalam hal sudut dan derajat dalam hal suhu. Kata ini adalah cara Anda membicarakan hal-hal ini. Cukup lampirkan ke sebuah angka dan Anda akan mendapatkan sendiri jumlah <vocabulary>derajat</vocabulary> sesuatu itu. Setelah angka 1, 2 dan 3 (dan dalam beberapa situasi lainnya) ini juga bisa berarti <vocabulary>kali</vocabulary>.', 'Bacaannya sama dengan bacaan kanji yang Anda pelajari. Saat menulis jawaban untuk bacaan ini, hilangkan tanda 〜 karena tanda tersebut hanya untuk memberi tahu Anda bahwa ada kata lain yang harus didahulukan.', 'Derajat, Kali')
    RETURNING id INTO v_3127_derajat;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '持つ', 'untuk-memegang-sesuatu', 9, 109, 'Kata ini terdiri dari kanji dengan hiragana ditempelkan. Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja.

Kanji itu sendiri berarti <kanji>memegang</kanji> dan versi kata kerjanya adalah <vocabulary>memegang sesuatu</vocabulary>, <vocabulary>membawa sesuatu</vocabulary>, <vocabulary>memiliki sesuatu</vocabulary>, atau <vocabulary>menyimpan sesuatu</vocabulary>.

Ini merupakan kata kerja transitif, artinya mengambil objek langsung. Anda memegang sesuatu, seperti sumpit, memiliki sesuatu, seperti listrik, atau menyimpan sesuatu, seperti buku teman Anda selama akhir pekan.', 'Jika kamu mencoba <vocabulary>memegang sesuatu</vocabulary> di tanganmu cukup lama, hal itu akan <reading>mo</reading>ld (も). Lalu jamur itu akan menutupi tangan Anda, lalu lengan Anda, lalu seluruh tubuh Anda. Pada dasarnya, Anda tidak boleh memegang apa pun terlalu lama atau Anda akan menjadi orang yang berjamur.', 'Untuk Memegang Sesuatu, Untuk Membawa Sesuatu, Untuk Memiliki Sesuatu, Untuk Menyimpan Sesuatu')
    RETURNING id INTO v_3130_untuk_memegang_sesuatu;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '世界', 'dunia', 9, 110, 'Kedua kanji tersebut berarti <kanji>dunia</kanji>, jadi mudah ditebak bahwa ini adalah kata untuk <vocabulary>dunia</vocabulary>. Kata ini juga berarti <vocabulary>masyarakat</vocabulary> atau <vocabulary>alam semesta</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Anda tahu cara membaca on''yomi untuk 界, tetapi Anda tidak mempelajari cara membaca on''yomi untuk 世, jadi inilah mnemonik untuk membantu Anda mengingat:

Sayuran apa yang paling dibenci di <vocabulary>dunia</vocabulary>? <reading>Ce</reading>lery (せ), mungkin. Dunia terbagi menjadi mereka yang menyukai seledri dan mereka yang membenci seledri. Kamu yang mana?', 'Dunia, Masyarakat, Alam Semesta')
    RETURNING id INTO v_3133_dunia;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '発売', 'penjualan', 9, 111, 'Anda ingin barang <kanji>berangkat</kanji> dari toko Anda sehingga Anda harus <kanji>menjual</kanji>. Anda menjual semua ini untuk <vocabulary>dijual</vocabulary>. Anda <vocabulary>menjual</vocabulary> item ini.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Penjualan, Penjualan')
    RETURNING id INTO v_3134_penjualan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '発音', 'pengucapan', 9, 112, '<kanji>suara</kanji> yang <kanji>keluar</kanji> dari mulut Anda adalah Anda sedang berbicara. Bayangkan diri Anda mengucapkan sesuatu dan kata-kata yang keluar dari mulut Anda. Mereka dibengkokkan dengan cara berbeda dan memiliki warna berbeda, menyorot <vocabulary>pengucapan</vocabulary> Anda pada kata dan frasa tertentu.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Pengucapan')
    RETURNING id INTO v_3135_pengucapan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '発見', 'penemuan', 9, 113, 'Anda melakukan <kanji>keberangkatan</kanji> dari rumah Anda menuju dunia luar. Anda akan <kanji>melihat</kanji> yang tak terlihat, dan semoga mendapatkan <vocabulary>penemuan</vocabulary> yang hebat.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Anda tahu bagian はつ, yang disingkat menjadi はっ. Namun, 見 tidak seperti yang Anda pelajari dengan 見. 

Untuk mengingat bahwa ini adalah けん, bayangkan Anda pergi keluar untuk menemukan beberapa daratan baru yang aneh. Dengan negeri baru yang asing, datanglah orang-orang baru yang aneh. Yang ini memiliki seorang samurai bernama <reading>Ken</reading> (けん) di atasnya. Dia juga mencoba menemukan hal-hal baru!', 'Penemuan')
    RETURNING id INTO v_3136_penemuan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '相談', 'konsultasi', 9, 114, '<kanji>saling</kanji> <kanji>pembicaraan</kanji>. Kedua belah pihak berbicara satu sama lain dan perasaan saling menguntungkan. Bayangkan Anda sedang mendiskusikan suatu masalah. Anda ingin mendapatkan bantuan, jadi dapatkan <vocabulary>konsultasi</vocabulary> dari teman Anda. <vocabulary>diskusi</vocabulary> ini sangat membantu.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Konsultasi, Diskusi, Nasihat')
    RETURNING id INTO v_3137_konsultasi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '〜県', 'prefektur', 9, 115, 'Lampirkan kata ini di akhir nama tempat prefektur dan Anda akan mendapatkan bagian <kanji>prefektur</kanji> dari _____ <vocabulary>prefektur</vocabulary>. Ini sangat mirip dengan negara bagian atau provinsi.', 'Pembacaannya sama dengan yang dipelajari dengan kanji, mungkin karena selalu melekat pada benda (jadi seperti jukugo). Jangan menulis 〜 saat kamu menulis jawabannya, cukup bagian けん saja, dan kamu akan mendapatkan jawabannya dengan benar.', 'Prefektur')
    RETURNING id INTO v_3139_prefektur;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '美しい', 'cantik', 9, 116, 'Ini adalah kanji tunggal dengan い di akhir, artinya Anda tahu itu mungkin kata sifat. Lebih tepatnya, ada しい di akhir, yang membuatnya lebih mungkin merupakan kata sifat. Apa bentuk kata sifat dari <kanji>kecantikan</kanji>? <vocabulary>indah</vocabulary>.', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi. Anda tidak belajar membaca dengan kanji ini, jadi inilah mnemonik untuk membantu Anda. Ini bacaan yang panjang untuk sebuah mnemonik, tapi cobalah yang terbaik. 

Anda melihat seseorang yang <vocabulary>cantik</vocabulary>. Betapa mudahnya kehidupan yang mereka jalani. Tidak ada kerja keras dan yang mereka lakukan hanyalah memanjakan diri agar tetap cantik. Merasa jijik. Anda menghampiri orang ini dan berkata: "<reading>Kamu terlalu enak</reading>! (うつくしい). 

Maaf karena menambahkan seluruh kata di sana untuk mnemonik pembacaan, tapi menurut saya cara itu lebih berhasil. Ketahuilah bahwa kata tersebut bukanlah うつくしいしい atau sesuatu yang aneh seperti itu. Hiragana di akhir juga merupakan bagian dari mnemonik.', 'Cantik')
    RETURNING id INTO v_3140_cantik;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '美人', 'wanita-cantik', 9, 117, '<kanji>cantik</kanji> <kanji>orang</kanji> adalah <vocabulary>wanita cantik</vocabulary>. Tunggu, kenapa orang ini tidak cantik? Sebenarnya, kata ini dulunya memiliki arti yang lebih luas, namun entah kenapa kata ini umumnya hanya digunakan untuk wanita di Jepang modern.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Karena 人 memiliki dua bacaan on''yomi, berikut adalah mnemonik untuk membantu Anda mengingat mana yang harus digunakan:

Di tempat asalmu, setiap <vocabulary>wanita cantik</vocabulary> memakai <reading>bee</reading> <reading>jean</reading>s (びじん). Benar sekali, jeans terbuat dari lebah. Kecantikan tidak mengenal rasa sakit sama sekali!', 'Wanita Cantik')
    RETURNING id INTO v_3141_wanita_cantik;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '負ける', 'kalah', 9, 118, 'Kata ini terdiri dari kanji dengan hiragana ditempelkan. Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanjinya sendiri berarti <kanji>kalah</kanji> sehingga versi kosakata kata kerjanya berarti <vocabulary>kehilangan</vocabulary>.', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi. Anda tidak belajar membaca dengan kanji ini, jadi inilah mnemonik untuk membantu Anda: 

Anda kalah dalam turnamen/permainan sepak bola/apa pun (Anda memutuskan sesuatu yang sesuai untuk Anda). Kamu sedih tentang hal ini. Siapa yang ada di sana untuk menghiburmu? <membaca>Ibu</membaca> Anda (ま). Dia wanita yang baik.', 'Kalah, Untuk Dikalahkan')
    RETURNING id INTO v_3142_kalah;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '勝負', 'cocok', 9, 119, '<kanji>Menang</kanji>, <kanji>kalah</kanji>... keduanya akan terjadi dalam <vocabulary>pertandingan</vocabulary> malam ini! Sungguh <vocabulary>pertarungan</vocabulary> yang akan terjadi!

Perhatikan bahwa 勝負 juga dapat menggambarkan situasi ketika seseorang mengambil risiko besar atau mengambil langkah berani— <vocabulary>pertaruhan </vocabulary>—yang melibatkan pertaruhan besar.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya. Ingatlah bahwa ふ menjadi ぶ karena rendaku di sini.', 'Cocok, Pertikaian, Sebuah Perjudian')
    RETURNING id INTO v_3143_cocok;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '勝つ', 'untuk-menang', 9, 120, 'Kata ini terdiri dari kanji dengan hiragana ditempelkan. Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanjinya sendiri berarti <kanji>menang</kanji> jadi versi kata kerjanya adalah <vocabulary>to win</vocabulary>.', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi. Anda tidak belajar membaca dengan kanji ini, jadi inilah mnemonik untuk membantu Anda: 

Apa yang baru saja Anda <vocabulary>menangkan</vocabulary>? Anda memenangkan <reading>ca</reading>r (か) baru!', 'Untuk Menang')
    RETURNING id INTO v_3144_untuk_menang;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '勝者', 'pemenang', 9, 121, '<kanji>Seseorang</kanji> yang <kanji>menang</kanji> adalah <vocabulary>pemenang</vocabulary> / <vocabulary>pemenang</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Pemenang, Pemenang')
    RETURNING id INTO v_3145_pemenang;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '必勝', 'tentu-kemenangan', 9, 122, '<kanji>kemenangan</kanji> tertentu terdengar seperti hal yang hebat. Ketika kedua kanji ini disatukan, <vocabulary>kemenangan pasti</vocabulary> tidak bisa dihindari.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya. Perhatikan bahwa つ dalam ひつ diubah menjadi っ kecil.', 'Tentu Kemenangan, Kemenangan Tertentu, Tentu Menang, Kemenangan Pasti')
    RETURNING id INTO v_3146_tentu_kemenangan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '楽勝', 'kemenangan-mudah', 9, 123, 'Sebuah <kanji>kemenangan</kanji> yang merupakan <kanji>kemudahan</kanji>. Itu adalah <vocabulary>kemenangan mudah</vocabulary> atau <vocabulary>kemenangan mudah</vocabulary>. Namun, jangan berharap banyak pada hal ini. Sebaliknya, berharap untuk kemenangan yang sulit, itu justru membuat Anda lebih baik.

Perhatikan bahwa ini dapat digunakan secara harfiah, untuk menggambarkan kemenangan mudah dalam sebuah permainan atau kontes; atau lebih kiasannya, untuk menggambarkan sesuatu sebagai “mudah” secara umum.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Kemenangan Mudah, Menang Mudah, Sepotong Kue')
    RETURNING id INTO v_3147_kemenangan_mudah;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '送る', 'untuk-mengirim-sesuatu', 9, 124, 'Kata ini terdiri dari kanji dengan hiragana ditempelkan. Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanjinya sendiri berarti <kanji>mengirim</kanji>, dan versi kata kerjanya adalah <vocabulary>to send Something</vocabulary>. Jika objek dari verba ini adalah orang, artinya “mengutus” dalam arti <vocabulary>mengawal seseorang</vocabulary>, mungkin ke stasiun, atau ke pintu.', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi. Anda tidak belajar membaca dengan kanji ini, jadi inilah mnemonik untuk membantu Anda: 

Anda perlu mengirimkan seluruh pohon <reading>oak</reading> (おく) melalui pos, tetapi ukurannya terlalu besar. Bayangkan diri Anda menyeretnya ke kantor pos. Mereka memberitahu Anda bahwa Anda tidak dapat mengirimkannya ke sini... Pergi ke fasilitas pengiriman pohon ek.', 'Untuk Mengirim Sesuatu, Untuk Mengawal Seseorang')
    RETURNING id INTO v_3148_untuk_mengirim_sesuatu;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '重要', 'penting', 9, 125, 'Ketika sesuatu mempunyai <kanji>berat</kanji> <kanji>kebutuhan</kanji>, Anda tahu bahwa hal itu <vocabulary>penting</vocabulary>. Ini <vocabulary>penting</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Penting, Penting, Diperlukan')
    RETURNING id INTO v_3151_penting;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '体重', 'berat-badan', 9, 126, 'Seberapa <kanji>berat</kanji> <kanji>tubuh</kanji> Anda? Cari tahu dan Anda akan mendapatkan <vocabulary>berat badan</vocabulary> Anda.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Berat Badan')
    RETURNING id INTO v_3152_berat_badan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '二重', 'dobel', 9, 127, 'Saat Anda memiliki <kanji>dua</kanji> <kanji>berat</kanji> benda, Anda memiliki <vocabulary>double</vocabulary> dan <vocabulary>dual</vocabulary> yang berat (setidaknya dibandingkan dengan satu). 

Kata ini merupakan awalan yang ditempelkan pada kata lain untuk menunjukkan bahwa ia bersifat "ganda". 二重 waktu kanji!', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Dobel, Ganda')
    RETURNING id INTO v_3153_dobel;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '必要', 'diperlukan', 9, 128, '<kanji>pasti</kanji> Anda <kanji>membutuhkannya</kanji>. Hal ini <vocabulary>diperlukan</vocabulary>. Ini <vocabulary>diperlukan</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Diperlukan, Diperlukan, Penting')
    RETURNING id INTO v_3154_diperlukan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '要点', 'poin-utama', 9, 129, '<kanji>yang diperlukan</kanji><kanji>poin</kanji> adalah <vocabulary>poin utama</vocabulary>. Ini adalah <vocabulary>inti</vocabulary> dari apa yang ingin Anda katakan.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Poin Utama, Inti, Ide Utama, Esensi')
    RETURNING id INTO v_3155_poin_utama;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '仮に', 'seandainya', 9, 130, 'Kanji sendiri artinya <kanji>sementara</kanji>. Saat Anda menambahkan に, kami meminta Anda membayangkan suatu situasi untuk sementara, sehingga maknanya berubah menjadi <vocabulary>seandainya</vocabulary> atau <vocabulary>jika</vocabulary>.', 'Bacaannya kun''yomi, jadi berikut mnemonik untuk mengingatnya: 

<vocabulary>Jika</vocabulary> Anda tidak keberatan, bisakah Anda <reading>membawakan</reading> (かり) ini untuk saya? <vocabulary>Seandainya</vocabulary> tentu saja tidak terlalu merepotkan.', 'Seandainya, Jika')
    RETURNING id INTO v_3156_seandainya;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '仮名', 'kana', 9, 131, '<kanji>sementara</kanji> <kanji>nama</kanji>. Ini adalah <vocabulary>kana</vocabulary> (yaitu hiragana dan katakana). Mengapa kana disebut "nama sementara"? Mungkin itu hanya sebagai cara sementara untuk menulis nama kanji yang belum Anda ketahui cara menulisnya. Itu hanya tebakan saja, namun akan membantu Anda mengingat bahwa kata ini berarti "kana".', 'Oke, jadi 仮 menggunakan bacaan kun''yomi langka か yang belum kamu pelajari, tapi untungnya sama dengan on''yomi yang sudah kamu pelajari! Dan 名 juga menggunakan bacaan kun''yomi yang Anda pelajari dengan kosakata 名 (な). Jadi, Anda sudah mengetahui bacaan ini, tetapi masih banyak yang harus dipahami, jadi inilah mnemonik yang dapat membantu: 

Pembacaannya sangat rumit untuk <vocabulary>kana</vocabulary> sehingga membuat Anda mengucapkan <reading>かな</reading>… (Entahlah…) setiap kali Anda mencoba membacanya. Kamu terus berpikir, "Apakah bacaannya kana, かな? Atau mungkin yang lain, かな?" Anda hanya tidak yakin.', 'Kana')
    RETURNING id INTO v_3157_kana;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '仮定', 'anggapan', 9, 132, '<kanji>sementara</kanji> <kanji>penetapan</kanji> adalah sesuatu yang Anda tidak sepenuhnya yakin. Anda telah memutuskan untuk memikirkan sesuatu dengan cara tertentu, tetapi hanya untuk saat ini. Jika lebih banyak informasi terungkap, Anda mungkin berubah pikiran. Itu sebabnya kata ini berarti <vocabulary>asumsi</vocabulary>.

仮定 mengacu pada pembuatan asumsi tentatif tentang situasi tertentu untuk mendiskusikan apa yang mungkin terjadi dalam kondisi tertentu, seperti "jika kita <vocabulary>mengasumsikan</vocabulary> saya menjatuhkan dompet saya di sini kemarin..."', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Anggapan, Menganggap')
    RETURNING id INTO v_3158_anggapan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '曲がる', 'menjadi-bengkok', 9, 133, 'Kata ini terdiri dari kanji dengan hiragana ditempelkan. Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanji itu sendiri berarti <kanji>musik</kanji> dan <kanji>tikungan</kanji>. Untuk kata ini, kita sedang melihat "tikungan". Jadi kata kerja 曲がる adalah <vocabulary>menjadi bengkok</vocabulary>. 

Ini intransitif, jadi jangan berikan objek langsung. Gunakan kata ini untuk mengatakan ada sesuatu yang bengkok atau tertekuk: lutut tertekuk, jalan tertekuk - hal-hal semacam itu. 

Kata kerja yang berakhiran okurigana yang berima dengan ある cenderung bersifat intransitif seperti ini. Anda dapat mengingat hal ini karena jika ada sesuatu yang ある, ia hanya ada di sana, ada, tidak bertindak <em>pada</em> hal lain. Itu sebabnya kata kerja yang terdengar seperti itu seringkali juga bersifat intransitif!', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi. Anda sudah mempelajari bacaan ini dengan 曲げる, jadi sebaiknya Anda mulai!', 'Menjadi Bengkok, Untuk Membungkuk, Untuk Melengkung, Untuk Berbelok')
    RETURNING id INTO v_3429_menjadi_bengkok;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '南米', 'amerika-selatan', 9, 134, 'Ingat bagaimana 米国 berarti "Amerika" (negara)? Kanji 米 sebenarnya dapat digunakan untuk salah satu benua Amerika. Dalam kata ini kita memiliki <kanji>selatan</kanji> yang digabungkan dengan <kanji>Amerika</kanji>, jadi itu pasti berarti… <vocabulary>Amerika Selatan</vocabulary>!', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Anda belum pernah melihat bacaan 南 (なん), jadi inilah mnemonik untuk membantu Anda:

Di <vocabulary>Amerika Selatan</vocabulary> semua orang makan <reading>naan</reading> (なん). Anda mungkin terkejut, karena naan tidak dianggap sebagai makanan Amerika Selatan. Tapi sebenarnya apa itu tortilla tepung? Ini naan Amerika Selatan!', 'Amerika Selatan')
    RETURNING id INTO v_3430_amerika_selatan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '交わる', 'untuk-berpotongan', 9, 135, 'Anda tahu bahwa kanji berarti <kanji>campuran</kanji> dan kata 交ぜる berarti "mencampur", jadi mungkin ada hubungannya dengan itu. Kata ini berarti <vocabulary>berpotongan</vocabulary>, yang artinya seperti percampuran. Ketika dua hal saling bersinggungan, keduanya menjadi tercampur, sehingga dari situlah kata ini mendapatkan maknanya. 

Untuk mengingat bahwa yang satu ini berarti "berpotongan", ingatlah わ sebagai <reading>wa</reading>lk. Anda sedang berjalan-jalan, lalu Anda berpapasan dengan beberapa orang di jalan.', 'Bacaannya hampir sama dengan 交ぜる yang pasti sudah Anda ketahui sekarang. Ia memiliki ま tetapi juga memiliki tambahan じ di sana.じ itu ada karena Anda bersinggungan dengan sekelompok <reading>penyihir</reading> (まじ) yang membuat Anda terbakar saat Anda berjalan melewatinya.', 'Untuk berpotongan, Untuk Menyeberang, Untuk berbaur')
    RETURNING id INTO v_3466_untuk_berpotongan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '小学校', 'sekolah-dasar', 9, 136, 'Anda telah melihat 学校 dari beberapa level yang lalu. Sekarang kita menambahkan <kanji>kecil</kanji> ke dalamnya. Apa itu "sekolah kecil"? Itu sekolah untuk rakyat kecil, menjadikannya <vocabulary>sekolah dasar</vocabulary>.', 'Bacaannya adalah bacaan on''yomi reguler 小 ditambah kosakata kata 学校 yang pernah Anda lihat sebelumnya. Gabungkan kedua hal ini untuk pembacaan 小学校.', 'Sekolah Dasar, Sekolah dasar, Sekolah Dasar')
    RETURNING id INTO v_3469_sekolah_dasar;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '通り', 'jalan', 9, 137, 'Anda sudah tahu kata 通る semoga sekarang. Itu adalah versi kata kerja dari kata ini, yang berarti “melewati”. Jadi, jika ini versi kata bendanya, apa yang Anda gunakan untuk melewati sesuatu? Untuk mengemudi atau berjalan bersama? Itu akan berupa <vocabulary>jalan</vocabulary> (atau <vocabulary>jalan</vocabulary>, <vocabulary>road</vocabulary>, dll). Ini adalah kata yang cukup umum di Jepang, dan bagus agar tidak tersesat.', 'Bacaannya sama dengan kata 通る, jadi asalkan kalian mengetahuinya, kalian harus bisa membaca yang ini juga. Perhatikan suara お panjang yang aneh!', 'Jalan, Jalan, Jalan, Jalan')
    RETURNING id INTO v_3470_jalan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '気を付けて', 'hati-hati', 9, 138, 'Anda menggunakan 気 (energi) dan 付ける (melekatkannya) pada apa pun yang Anda lakukan, sehingga memungkinkan Anda untuk fokus dan <vocabulary>berhati-hati</vocabulary>. Karena kata ini berbentuk te, maka ini merupakan perintah lunak. Pada dasarnya Anda memberi tahu seseorang, "hei, <vocabulary>hati-hati</vocabulary>, oke?"

気を付けて adalah ungkapan sehari-hari yang banyak digunakan ketika memberitahu seseorang untuk berhati-hati, tetap aman, atau memperhatikan sesuatu. Perhatikan bahwa 気をつけて tanpa kanji 付 juga umum digunakan, terutama dalam penulisan santai.', 'Bacaannya berasal dari dua kata 気 dan 付ける. Selama Anda mengetahui level-level sebelumnya, Anda harus bisa membaca yang ini juga.', 'Hati-hati, Hati-hati')
    RETURNING id INTO v_3471_hati_hati;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '新しい', 'baru', 9, 139, 'Ini adalah kanji tunggal dengan い di akhir, artinya Anda tahu itu mungkin kata sifat. Apa bentuk kata sifat dari <kanji>baru</kanji>? Ini <vocabulary>baru</vocabulary>.', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi. Anda tidak belajar membaca dengan kanji ini, jadi inilah mnemonik untuk membantu Anda: 

Keluargamu membelikanmu Atari <vocabulary>baru</vocabulary>! Kamu sangat bersemangat! Tapi tunggu... apa ini? Ini bukan Atari. Ini adalah <reading>Atara</reading>... sistem video game tiruan :(', 'Baru')
    RETURNING id INTO v_3472_baru;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '高校生', 'siswa-sma', 9, 140, 'Anda tahu 高校 berarti "sekolah menengah". Jadi, “kehidupan” yang dilakukan SMA adalah <vocabulary>siswa SMA</vocabulary>. Ini seperti 中学生 adalah siswa sekolah menengah dan 小学生 adalah siswa sekolah dasar!', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya. Gunakan bacaan 高校 sebelumnya untuk mempelajari bacaan kata ini juga, jika itu membantu.', 'Siswa SMA, Siswa Sekolah Menengah')
    RETURNING id INTO v_3473_siswa_sma;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '中学校', 'sekolah-menengah', 9, 141, 'Anda tahu bahwa 学校 berarti sekolah. Jadi, orang-orang yang berada di <kanji>menengah</kanji> <kanji>sekolah</kanji> berada di... tunggu dulu... <vocabulary>sekolah menengah</vocabulary>. 

Dan tentunya jika Anda salah satu dari orang yang menyebutnya <vocabulary>junior high school</vocabulary> Anda juga bisa melakukannya.', 'Bacaannya merupakan gabungan dari 学校 dan 中. Sungguh, semuanya on''yomi juga, jadi kamu harus bisa membaca yang ini. Namun perhatikan がく yang berubah menjadi がっ.', 'Sekolah Menengah, Sekolah Menengah Pertama')
    RETURNING id INTO v_3474_sekolah_menengah;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '付く', 'untuk-dilampirkan', 9, 142, 'Anda tahu bahwa kata 付ける berarti "melampirkan" dan Anda tahu bahwa kanji 付 berarti <kanji>melampirkan</kanji>. Jadi, kata ini mungkin ada hubungannya dengan melampirkan. Ini adalah versi intransitif, di mana ada sesuatu yang dilampirkan (dan Anda tidak melakukan lampiran). Anda dapat menggunakan く sebagai petunjuk. Anda melihat sesuatu menempel di dinding. Anda mengatakan "Coo''"', 'Bacaannya bisa berasal dari 付ける, sebuah kata yang seharusnya Anda lihat beberapa tingkat yang lalu. Jika Anda mengetahui bacaan kata tersebut, Anda seharusnya bisa mengetahui bacaan kata tersebut juga (dan sebaliknya).', 'Untuk Dilampirkan')
    RETURNING id INTO v_3475_untuk_dilampirkan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '見付ける', 'untuk-menemukan', 9, 143, 'Anda tahu bahwa 付ける berarti "melampirkan" dan 見 berarti "melihat". Jadi, ketika Anda melekatkan penglihatan Anda pada sesuatu, itu seperti Anda sedang mencari-cari <vocabulary>menemukan</vocabulary> sesuatu. Ketika Anda menemukan apa yang Anda cari, bayangkan bola mata Anda terbang keluar dan menempel pada benda itu, lalu berteriak "AKU TEMUKANNYA!"

Biasanya Anda akan melihat kata ini dengan 付 dalam kana, jadi 見つける.', 'Bacaannya berasal dari 見る dan 付ける. Jika kamu menggunakan bacaan tersebut, kamu pasti bisa membaca kata ini juga.', 'Untuk Menemukan, Untuk Menemukan Sesuatu')
    RETURNING id INTO v_3476_untuk_menemukan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '弱虫', 'orang-lemah', 9, 144, '<kanji>lemah</kanji> <kanji>serangga</kanji>. Inilah yang disebut orang sebagai <vocabulary>lemah</vocabulary> di Jepang. Ini adalah kata yang bagus untuk mengetahui apakah Anda seorang penindas, atau semacamnya.', 'Bacaan yang satu ini aneh. Ini menggunakan pembacaan kun''yomi untuk keduanya, artinya Anda harus memanfaatkan pengetahuan Anda tentang kata 弱い dari sebelumnya dan menerapkannya di sini. 虫 seharusnya tidak masalah, karena ini adalah bacaan yang kamu pelajari dengan kanji.

Ingat saja, hanya bug lemah yang menggunakan kun''yomi, dan bug lemah itu adalah Anda dalam hal ini.', 'Orang lemah, Pengecut')
    RETURNING id INTO v_3477_orang_lemah;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '弱々しい', 'tampak-lemah', 9, 145, 'Sesuatu yang <kanji>lemah</kanji> ganda mungkin cukup lemah. Anda juga tahu bahwa ini adalah kata sifat karena diakhiri dengan い. Anda tahu bahwa 弱い itu lemah, jadi mungkin bukan itu. Sebaliknya, yang ini <vocabulary>tampak lemah</vocabulary> atau <vocabulary>lemah</vocabulary>. Jika Anda tahu tata bahasanya らしい, Anda bisa menggunakannya sebagai petunjuk. Huruf しい di akhir mengingatkanku pada らしい yang artinya "sepertinya". Jadi, "tampaknya lemah" = "tampak lemah".', 'Pembacaannya adalah kun''yomi ganda, seperti yang mungkin bisa Anda tebak karena semua hiragana terlibat. Jadi, gandakan よわ lalu tambahkan しい untuk membaca kosakata ini.', 'Tampak Lemah, Lemah, Tampak Lemah, Tampaknya Lemah')
    RETURNING id INTO v_3478_tampak_lemah;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '欠ける', 'untuk-terkelupas', 9, 146, 'Kata ini terdiri dari kanji dengan hiragana ditempelkan. Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja.

Kanji itu sendiri berarti <kanji>kekurangan</kanji>, dan kata kerja ini memiliki beberapa arti terkait dengan itu. Anda akan sering melihatnya berarti <vocabulary>terkelupas</vocabulary>, seperti ketika berbicara tentang cangkir teh atau gigi Anda. Saya kira cangkir teh yang terkelupas kurang... bagiannya sendiri?

欠ける juga bisa secara harafiah berarti <vocabulary>kurang</vocabulary>, seperti dalam "kiper yang baik masih kekurangan di timnya." Anda dapat menggunakannya seperti ini ketika Anda kekurangan sesuatu, atau ketika ada sesuatu yang hilang yang dapat melengkapi satu set. Dalam situasi ini, Anda biasanya akan melihatnya sebagai 欠けている!', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi. Anda tidak belajar membaca dengan kanji ini, jadi inilah mnemonik untuk membantu Anda: 

Ada yang kurang... itu adalah <reading>ca</reading>r (か). Anda tidak bisa berhenti memikirkan hal ini karena Anda harus berjalan kaki sejauh 40 mil untuk sampai ke tujuan. Kalau saja mobil itu tidak hilang, ini akan lebih mudah. Bayangkan keringatnya... sakitnya... hausnya... semua karena mobil itu tidak ada.', 'Untuk Terkelupas, Menjadi Kurang')
    RETURNING id INTO v_3479_untuk_terkelupas;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '高さ', 'tinggi', 9, 147, 'Anda pernah melihat kata 高い beberapa tingkat yang lalu. Kata ini ada hubungannya dengan itu. Ini seperti 大きい versus 大きさ, yang satu menggambarkan yang lain. Dalam hal ini, 高さ adalah <vocabulary>tinggi</vocabulary> sesuatu (sementara 高い adalah tinggi). Kata ini bukanlah “harga”. Untuk itu Anda akan bertanya いくらですか？ (berapa harganya?).', 'Gunakan bacaan 高い (たかい) untuk membantumu mempelajari dan mengingat bacaan yang satu ini. Semuanya sama kecuali hiragana di akhir.', 'Tinggi')
    RETURNING id INTO v_3483_tinggi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '白黒', 'hitam-dan-putih', 9, 148, 'Sesuatu itu <kanji>putih</kanji> dan <kanji>hitam</kanji>. Bentuknya <vocabulary>hitam dan putih</vocabulary> (Anda juga bisa mengucapkan <vocabulary>putih dan hitam</vocabulary> jika Anda mau).', 'Bacaannya adalah kun''yomi, tetapi Anda seharusnya sudah melihat 白 dan 黒い secara terpisah sebagai kosa kata sekarang. Bacaannya sama di sini, jadi Anda bisa menerapkan ilmu itu dan membaca kata ini!', 'Hitam Dan Putih, Putih Dan Hitam')
    RETURNING id INTO v_3514_hitam_dan_putih;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '返す', 'untuk-mengembalikan-sesuatu', 9, 149, 'Kata ini terdiri dari kanji dengan hiragana ditempelkan. Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanjinya sendiri berarti <kanji>kembali</kanji> jadi versi verbanya berarti <vocabulary>mengembalikan sesuatu</vocabulary>. 

Ini lebih seperti "mengembalikan sesuatu" daripada kembali ke rumah, yang berarti 帰る, sebuah kata yang belum pernah Anda lihat (tapi saya yakin itu akan segera terjadi!).', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi. Anda tidak belajar membaca dengan kanji ini, jadi inilah mnemonik untuk membantu Anda: 

Anda memiliki <vocabulary>untuk mengembalikan</vocabulary> <reading>Ca</reading>r <reading>e</reading>gg (かえ) yang Anda temukan di pinggir jalan. Ia akan melahirkan sebuah mobil kecil, namun ia membutuhkan induknya. Jadi, Anda mencoba mencari cara untuk mengembalikannya. Silakan dan pikirkan proses itu dalam pikiran Anda. Pikirkan juga betapa anehnya telur mobil.', 'Untuk Mengembalikan Sesuatu, Untuk Kembali')
    RETURNING id INTO v_3523_untuk_mengembalikan_sesuatu;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '映像', 'rekaman', 9, 150, 'Anda melihat <kanji>pantulan</kanji>ion dari <kanji>gambar</kanji> di layar, dan pantulan gambar tersebut bergerak! Artinya ini adalah <vocabulary>footage</vocabulary>, atau <vocabulary>video</vocabulary>.

映像 merujuk pada <vocabulary>image</vocabulary> dalam berbagai bentuk media visual. Meskipun paling umum digunakan untuk mendeskripsikan gambar bergerak dalam video atau film, kata ini juga dapat merujuk pada gambaran mental — gambar atau adegan yang terlintas dalam pikiran, yang mencerminkan kenangan atau imajinasi pribadi.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Rekaman, Video, Gambar')
    RETURNING id INTO v_3525_rekaman;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '画像', 'gambar', 9, 151, 'Sebuah <kanji>gambar</kanji> dari sebuah <kanji>gambar</kanji> tetaplah sebuah <vocabulary>image</vocabulary>. Ini juga bisa berupa <vocabulary>gambar</vocabulary>.

画像 dapat merujuk pada semua jenis gambar dan gambar, namun saat ini sebagian besar digunakan untuk bentuk digital.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Gambar, Gambar')
    RETURNING id INTO v_3526_gambar;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '保持', 'menyimpan', 9, 152, 'Saat Anda <kanji>melestarikan</kanji> hal-hal yang Anda <kanji>pegang</kanji>, Anda <vocabulary>mempertahankan</vocabulary>-nya. Dengan kata lain, Anda <vocabulary>menahan</vocabulary>dan <vocabulary>mempertahankan</vocabulary>mereka!

Perhatikan bahwa 保持 adalah kata formal yang biasa digunakan dalam konteks profesional atau resmi.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Menyimpan, Memegang, Menjaga, Mempertahankan')
    RETURNING id INTO v_3803_menyimpan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '生保', 'asuransi-jiwa', 9, 153, '<kanji>Hidup</kanji> <kanji>jaminan</kanji> adalah sesuatu yang Anda dapatkan dari orang lain. Jika nyawa mereka berakhir, dijamin dengan uang. Itu polis <vocabulary>asuransi jiwa</vocabulary>, ya! (A.K.A. <vocabulary>jaminan hidup</vocabulary> di beberapa bagian dunia!)', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Asuransi jiwa')
    RETURNING id INTO v_3806_asuransi_jiwa;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '保つ', 'untuk-melestarikan-sesuatu', 9, 154, 'Kata ini terdiri dari kanji dengan hiragana ditempelkan. Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanjinya sendiri berarti <kanji>melestarikan</kanji> dan versi kosakata kata kerjanya adalah <vocabulary>melestarikan sesuatu</vocabulary>, <vocabulary>menjaga sesuatu</vocabulary>, atau <vocabulary>menjaga sesuatu</vocabulary>.

Ini merupakan kata kerja transitif, sehingga memerlukan objek langsung. Anda melestarikan sesuatu, seperti masa muda Anda.', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi. Anda tidak belajar membaca dengan kanji ini, jadi inilah mnemonik untuk membantu Anda: 

Jika kamu ingin mempelajari <vocabulary>mengawetkan sesuatu</vocabulary> seperti buah-buahan dan sayuran, kamu harus mulai dengan <reading>tamots</reading> (たも), yang merupakan bahasa gaul untuk tomat lezat. Setelah diawetkan, Anda bisa membuat semua orang yang Anda sayangi memakan tamot lezat itu. Hmm!', 'Untuk Melestarikan Sesuatu, Untuk Menyimpan Sesuatu, Untuk Mempertahankan Sesuatu')
    RETURNING id INTO v_3807_untuk_melestarikan_sesuatu;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '試みる', 'untuk-mencoba-melakukan-sesuatu', 9, 155, 'Kata ini terdiri dari kanji dengan hiragana ditempelkan. Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanjinya sendiri berarti <kanji>mencoba</kanji> sehingga versi kosakata kata kerjanya adalah <vocabulary>to try to do Something</vocabulary> atau <vocabulary>to try Something</vocabulary>.

Kata kerja ini bersifat transitif, artinya mengambil objek langsung. Di sini, objek langsungnya adalah apa pun yang Anda coba lakukan.', 'Tahukah Anda bagaimana ketika Anda mencoba melakukan sesuatu, Anda mengerahkan seluruh hati Anda ke dalamnya? Nah, pikirkan itu dalam bahasa Jepang. Anda memasukkan seluruh <read>心</reading> (こころ) Anda ke dalamnya.', 'Untuk Mencoba Melakukan Sesuatu, Untuk Mencoba Sesuatu')
    RETURNING id INTO v_4147_untuk_mencoba_melakukan_sesuatu;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '試食', 'contoh-makanan', 9, 156, 'Silakan <kanji>mencoba</kanji> dan <kanji>makan</kanji>. Bagaimana percobaan kecil itu? <vocabulary>sampel makanan</vocabulary> kecil itu? <vocabulary>rasa</vocabulary> kecil itu?

Anda tahu ketika Anda masuk ke supermarket dan ada orang yang menawari Anda sepotong keju terkecil? Itulah yang terjadi. Jadi kata ini biasa digunakan dalam konteks demonstrasi produk atau acara kuliner.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Contoh Makanan, Mencicipi')
    RETURNING id INTO v_4150_contoh_makanan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '体験', 'pengalaman', 9, 157, '<kanji>Tubuh</kanji> Anda melewati <kanji>ujian</kanji> dan setiap kali melewatinya, ia memperoleh lebih banyak <vocabulary>pengalaman</vocabulary>. Apa yang dialami tubuh Anda? Tes apa yang telah dilalui tubuh Anda?', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Pengalaman')
    RETURNING id INTO v_4162_pengalaman;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '受験', 'mengikuti-ujian', 9, 158, 'Saat Anda <kanji>menerima</kanji> sebuah <kanji>tes</kanji>, Anda sedang <vocabulary>sedang mengikuti ujian</vocabulary> atau <vocabulary>sedang mengikuti tes</vocabulary>. Semoga beruntung! SEBUAH++++!', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Mengikuti Ujian, Mengikuti Tes')
    RETURNING id INTO v_4163_mengikuti_ujian;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '実験', 'percobaan', 9, 159, 'Sebuah <kanji>tes</kanji> yang mencoba menemukan <kanji>kebenaran</kanji> adalah sebuah <vocabulary>eksperimen</vocabulary>. Ini karena Anda tidak mengetahui kebenarannya, jadi satu-satunya cara untuk menemukannya adalah dengan mencoba dan mengujinya. Jadi, bereksperimenlah!', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri. Perhatikan bahwa つ dalam じつ diubah menjadi っ kecil.', 'Percobaan')
    RETURNING id INTO v_4164_percobaan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '試験', 'penyelidikan', 9, 160, 'Jika Anda <kanji>mencoba</kanji> sebuah <kanji>tes</kanji>, Anda sedang mengikuti <vocabulary>ujian</vocabulary>. Ada banyak hal seperti ini di Jepang, jadi pastikan Anda mengetahui kata ini jika Anda ingin menyesuaikan diri dengan semua rengekan dan keluhan yang dilakukan siswa, terutama menjelang tahun terakhir sekolah menengah atas.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Penyelidikan, Tes, Percobaan')
    RETURNING id INTO v_4165_penyelidikan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '歴史', 'sejarah', 9, 161, 'Ada <kanji>sejarah</kanji>, lalu ada <kanji>sejarah</kanji>. Jadi yang mana ini? Tentu saja itu adalah <vocabulary>sejarah</vocabulary>. Kata ini ditujukan untuk sejarah sebagai sebuah konsep dan untuk mata pelajaran sekolah yang sangat disukai semua orang.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Sejarah')
    RETURNING id INTO v_4215_sejarah;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '対比', 'kontras', 9, 162, 'Saat Anda melihat sesuatu <kanji>versus</kanji> sesuatu yang lain, Anda <kanji>membandingkan</kanji> satu sama lain. Anda melihat <vocabulary>kontras</vocabulary> di antara keduanya dan membuat <vocabulary>perbandingan</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Kontras, Perbandingan')
    RETURNING id INTO v_4219_kontras;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '発表', 'pengumuman', 9, 163, 'Saya akan <kanji>mengungkapkan</kanji> <kanji>keberangkatan</kanji> saya. Itulah satu-satunya <vocabulary>pengumuman</vocabulary> saya.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya. Namun, ひょう berubah menjadi ぴょう dan はつ dipersingkat, jadi hampir semua hal tentang kata ini terasa aneh.', 'Pengumuman, Presentasi')
    RETURNING id INTO v_4376_pengumuman;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '表す', 'untuk-mengekspresikan-sesuatu', 9, 164, 'Kata ini terdiri dari kanji dengan hiragana ditempelkan. Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanjinya sendiri berarti <kanji>mengekspresikan</kanji> dan versi vocab verbanya bersifat transitif, artinya dilakukan terhadap sesuatu. Jadi kata kerja ini berarti <vocabulary>mengungkapkan sesuatu</vocabulary> atau <vocabulary>menunjukkan sesuatu</vocabulary>.', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi. Anda tidak belajar membaca dengan kanji ini, jadi inilah mnemonik untuk membantu Anda:

Anda kesulitan <vocabulary>untuk mengungkapkan sesuatu</vocabulary> kepada teman Anda: misalnya, bahwa Anda <reading>adalah wa</reading>lrus (あらわ). Semua teman Anda mengira Anda manusia, jadi mereka akan terkejut saat Anda mengungkapkan fakta bahwa sebenarnya Anda adalah seekor walrus. Tapi kau harus melepaskannya… Dada walrusmu yang besar dan tebal.', 'Untuk Mengekspresikan Sesuatu, Untuk Menunjukkan Sesuatu')
    RETURNING id INTO v_4377_untuk_mengekspresikan_sesuatu;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '出発', 'keberangkatan', 9, 165, 'Anda <kanji>keluar</kanji> lalu melakukan <kanji>keberangkatan</kanji>. Ini hanyalah sebuah <vocabulary>keberangkatan</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.しゅつ dipersingkat dan はつ berubah menjadi ぱつ. Pantas saja Anda ingin berangkat, ingin lepas dari bacaan gila seperti ini.', 'Keberangkatan')
    RETURNING id INTO v_4380_keberangkatan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '辛い', 'pedas', 9, 166, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna. Meski begitu, ini juga bisa berarti <vocabulary>sulit</vocabulary> atau <vocabulary>menyakitkan</vocabulary>, sering kali dalam arti psikologis, meskipun bisa juga bersifat fisik. Saya kira jika Anda berada dalam situasi yang pedas, itu akan menjadi situasi yang sulit.', 'Tergantung pada konteksnya, bacaan untuk kata ini bisa jadi からい atau つらい. 

Pembacaan からい adalah <vocabulary>spicy</vocabulary> yang Anda pelajari dengan kanji, yang dapat Anda ingat karena makanan pedas memberikan <reading>から</reading>て memotong mulut Anda. 

Pembacaan つらい adalah yang <vocabulary>sulit</vocabulary> atau <vocabulary>menyakitkan</vocabulary>. Anda dapat mengingat ini karena <reading>dua Ra</reading> (つら) jauh lebih sulit untuk dihadapi daripada satu Ra.', 'Pedas, Panas, Sulit, Menyakitkan')
    RETURNING id INTO v_6790_pedas;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '辛子', 'moster', 9, 167, '<kanji>pedas</kanji> <kanji>anak</kanji> adalah anak dari pedas. Jadi, tidak pedas seperti mama pedas, tapi tetap sedikit pedas. Pedas anak ini adalah <vocabulary>mustard</vocabulary>. Tidak terlalu pedas, tapi tidak terlalu ringan.

辛子 umumnya mengacu pada <kosa kata>mustard Jepang</vocabulary>, yang cenderung lebih coklat dan kuat dibandingkan マスタード (mustard Barat). Kadang-kadang, terutama sebagai awalan, ini juga dapat menunjukkan kepedasan dari cabai merah, seperti 辛子マヨネーズ (mayo pedas).', 'Bacaannya adalah 辛い (からい) dan bacaan on''yomi untuk 子 digabungkan menjadi satu. Itu salah satu kata aneh yang memadukan bacaan on''yomi dan kun''yomi.', 'Moster, Mustard Jepang, Karashi')
    RETURNING id INTO v_6792_moster;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '本屋', 'toko-buku', 9, 168, '<kanji>buku</kanji> <kanji>toko</kanji> adalah toko yang menjual buku. <vocabulary>toko buku</vocabulary>.', 'Bacaannya adalah yang Anda pelajari dengan kanji.', 'Toko buku, Toko buku')
    RETURNING id INTO v_7149_toko_buku;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '全部', 'semua', 9, 169, 'Jika Anda mengambil <kanji>semua</kanji> <kanji>bagian</kanji> dan menggabungkannya, Anda memiliki <vocabulary>semua</vocabulary> semuanya. Koleksi <vocabulary>keseluruhan</vocabulary>. Ini adalah <vocabulary>keseluruhan</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Semua, Seluruh, Utuh')
    RETURNING id INTO v_7460_semua;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '天使', 'malaikat', 9, 170, 'Apa yang <kanji>surga</kanji> <kanji>gunakan</kanji> untuk mengirim pesan dan berinteraksi dengan kita? <vocabulary>malaikat</vocabulary>. Malaikat selalu digunakan oleh kekuatan surgawi untuk menjalankan tugas, menyampaikan pesan, dan memukul satu atau dua orang jahat.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Malaikat')
    RETURNING id INTO v_7464_malaikat;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '新年', 'tahun-baru', 9, 171, '<kanji>baru</kanji> <kanji>tahun</kanji> adalah <vocabulary>tahun baru</vocabulary>. Semoga Anda pernah/memiliki/sedang mengalami hal yang baik, tergantung kapan Anda membaca ini.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Tahun Baru')
    RETURNING id INTO v_7475_tahun_baru;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '要る', 'untuk-membutuhkan', 9, 172, 'Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanjinya sendiri berarti <kanji>kebutuhan</kanji> dan versi kosakata kata kerjanya adalah <vocabulary>to need</vocabulary>.

Yang ini agak rumit, karena meskipun biasanya diterjemahkan sebagai "membutuhkan" dalam bahasa Inggris, penggunaannya lebih seperti <vocabulary>to be need</vocabulary> atau <vocabulary>to be need</vocabulary>. Artinya, dalam bahasa Jepang merupakan kata kerja intransitif, sehingga tidak mengambil objek langsung.', 'Karena bacaannya tidak seperti yang Anda pelajari, pikirkan tentang apa yang <vocabulary>butuhkan</vocabulary>... seperti, apa yang benar-benar Anda perlukan, lebih dari apa pun. Kemudian, pikirkan sebuah <read>ea</reading>gle, karena Anda sangat membutuhkan seekor elang. Anda harus mengetahui alasan mengapa Anda membutuhkan elang, semoga itu bagus.', 'Untuk Membutuhkan, Dibutuhkan, Menjadi Diperlukan')
    RETURNING id INTO v_7478_untuk_membutuhkan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '対談', 'bicara', 9, 173, '<kanji>versus</kanji> <kanji>pembicaraan</kanji> adalah saat Anda duduk bersama orang lain dan melakukan <vocabulary>talk</vocabulary>. Saat Anda berbicara, hal itu mungkin berkembang menjadi <vocabulary>diskusi</vocabulary>. Atau mungkin Anda berada di sana untuk melakukan <vocabulary>wawancara</vocabulary>.

対談 biasanya merupakan diskusi formal antara dua individu atau lebih, sering kali diselenggarakan sebelumnya, dan dengan tujuan atau topik tertentu.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Bicara, Diskusi, Wawancara')
    RETURNING id INTO v_7487_bicara;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '部分', 'bagian', 9, 174, '<kanji>Bagian</kanji> dari <kanji>bagian</kanji>? Itu adalah <vocabulary>porsi</vocabulary>, <vocabulary>bagian</vocabulary> dari bagian itu, dan bahkan <vocabulary>part</vocabulary> itu sendiri!', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Selama Anda mengetahui bacaan kanji ini, Anda seharusnya bisa membaca kata ini dengan baik.', 'Bagian, Bagian, Bagian')
    RETURNING id INTO v_7533_bagian;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '不自由', 'tidak-nyaman', 9, 175, 'Ingat bagaimana 自由 berarti kebebasan? Nah, ketika Anda menambahkan <kanji>bukan</kanji> itu menyebabkan Anda <vocabulary>ketidaknyamanan</vocabulary> dan benar-benar <vocabulary>ketidaknyamanan</vocabulary> Anda. Itu tidak menghalangi kebebasan Anda.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Tidak nyaman, Ketidaknyamanan, Disabilitas, Penurunan nilai, Kemiskinan, Kemiskinan')
    RETURNING id INTO v_7571_tidak_nyaman;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '教え', 'pengajaran', 9, 176, 'Ini adalah versi kata benda dari kanji <kanji>mengajar</kanji>. Jadi artinya <vocabulary>mengajar</vocabulary>.', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi. Anda sudah mempelajari bacaan ini ketika mempelajari 教える, jadi Anda seharusnya bisa membaca kata ini juga.', 'Pengajaran, Petunjuk, Ajaran, Pelajaran, Doktrin')
    RETURNING id INTO v_7572_pengajaran;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '表', 'bagian-depan', 9, 177, 'Ingat bagaimana 表 berarti <kanji>ekspresikan</kanji> dan <kanji>permukaan</kanji>? Hal ini memperluas arti kedua, menjadikan <vocabulary>bagian depan</vocabulary> atau <vocabulary>permukaan</vocabulary>. 

表 mengacu pada sisi sesuatu yang terlihat dan menghadap ke luar, berbeda dengan sisi belakang yang tersembunyi. Ini digunakan untuk permukaan yang dipajang, seperti bagian depan bangunan, permukaan koin, sampul buku, atau permukaan atas paket.', 'Karena kata ini terdiri dari satu kanji, maka sebaiknya menggunakan bacaan kun''yomi. Anda belum mempelajari bacaan ini, jadi inilah mnemonik untuk membantu Anda:

Anda berdiri di sana, menatap <vocabulary>bagian depan</vocabulary> gedung ini. Anda meluangkan waktu untuk memandanginya sebelum Anda menyadari apa itu. "<reading>Oh</reading>, <reading>mote</reading>l (おもて)," katamu keras-keras. <vocabulary>Permukaan</vocabulary> bangunan ini benar-benar memperlihatkannya. "Oh, motel!"', 'Bagian depan, Permukaan')
    RETURNING id INTO v_7573_bagian_depan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '付近', 'lingkungan', 9, 178, 'Jika Anda <kanji>melampirkan</kanji> sesuatu <kanji>di dekat</kanji> Anda, benda tersebut akan berada di <vocabulary>lingkungan</vocabulary> yang sama dengan Anda. Mereka <vocabulary>berdekatan</vocabulary> terpasang sehingga mereka tidak bisa melangkah lebih jauh.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda tidak mempelajari bacaan ini untuk 付, jadi inilah mnemonik untuk membantu Anda:

<vocabulary>lingkungan</vocabulary> Anda penuh dengan <reading>foo</reading>ls (ふ). Orang bodoh dimana-mana. Anda mungkin juga salah satunya, karena Anda tinggal <vocabulary>dekat</vocabulary>.', 'Lingkungan, Sekitarnya, Lingkungan, Di dekat sini, Lokalitas')
    RETURNING id INTO v_7625_lingkungan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '何度', 'berapa-kali', 9, 179, 'Jika seseorang bertanya <kanji>apa</kanji> <kanji>kejadian</kanji> atau <kanji>berapa</kanji> <kanji>derajat</kanji> mereka sebenarnya mencoba menanyakan <vocabulary>berapa kali</vocabulary> sesuatu terjadi. Terkadang mereka juga menanyakan <vocabulary>berapa suhu</vocabulary>.', 'Bacaannya merupakan gabungan bacaan kun''yomi dan on''yomi. Meski begitu, kedua bacaan untuk kedua kanji tersebut adalah bacaan yang sudah Anda pelajari, jadi Anda harus bisa membaca ini.', 'Berapa kali, Seberapa sering, Berapa Suhu')
    RETURNING id INTO v_7682_berapa_kali;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '泳ぎ', 'renang', 9, 180, 'Ini adalah versi kata benda dari kanji <kanji>berenang</kanji>, jadi artinya <vocabulary>renang</vocabulary>.', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi. Anda sudah mempelajari bacaan ini jadi Anda harus bisa membacanya!', 'Renang, Berenang')
    RETURNING id INTO v_7683_renang;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '記事', 'artikel', 9, 181, 'Saat Anda <kanji>menulis</kanji> banyak hal yang berfokus pada satu <kanji>hal</kanji>, itu disebut <vocabulary>artikel</vocabulary>. Jika itu tentang sesuatu yang baru saja terjadi, itu mungkin akan menjadi <vocabulary>berita</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Artikel, Cerita Berita, Laporan, Akun, Artikel Berita')
    RETURNING id INTO v_7684_artikel;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '火事', 'api', 9, 182, '<kanji>api</kanji> <kanji>materi</kanji> adalah <vocabulary>api</vocabulary>, seperti pembakaran sesuatu yang merusak. Ada api! Lari, lari!

火事 sering digunakan ketika rumah atau bangunan lain terbakar. Jika Anda mendengar seseorang berteriak 火事だ, mungkin inilah saatnya untuk keluar dari mana pun Anda berada.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Api')
    RETURNING id INTO v_7740_api;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '通す', 'membiarkan-sesuatu-lewat', 9, 183, 'Kata ini terdiri dari kanji dengan hiragana ditempelkan. Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Anda sudah mengetahui bahwa 通る berarti "melewati" atau "melewati", namun ini sedikit berbeda. Bukan kamu yang lewat, Sue (す) yang lewat. Jadi, kamu harus membiarkan Sue lewat. Dengan kata lain, verba ini bersifat transitif, artinya mempunyai objek. Itu sebabnya artinya <vocabulary>membiarkan sesuatu berlalu</vocabulary> atau <vocabulary>melakukan sesuatu</vocabulary>.

Cara menerjemahkan kata kerja ini ke dalam bahasa Inggris banyak berubah tergantung pada kata benda yang dipasangkannya. Misalnya 火を通す secara harafiah berarti "membiarkan api melewatinya" dan berarti "memanaskan". 針に糸を通す secara harfiah berarti "memasukkan benang ke dalam jarum", jadi artinya "memasukkan benang ke dalam jarum".', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi. Anda mempelajari bacaan ini ketika Anda mempelajari 通る. Ganti る dengan す dan Anda akan siap!', 'Membiarkan Sesuatu Lewat, Untuk Memasukkan Sesuatu')
    RETURNING id INTO v_7741_membiarkan_sesuatu_lewat;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '生物', 'makhluk-hidup', 9, 184, '<kanji>kehidupan</kanji> <kanji>benda</kanji> adalah <vocabulary>makhluk hidup</vocabulary>, <vocabulary>makhluk</vocabulary>, atau <vocabulary>organism</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Makhluk Hidup, Makhluk, Organisme')
    RETURNING id INTO v_8701_makhluk_hidup;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '家事', 'tugas-rumah', 9, 185, 'Anda tahu 事 berarti "kejadian", tetapi juga berarti "materi". Jadi, Anda bisa menganggap <kanji>rumah</kanji> <kanji>materi</kanji> sebagai <vocabulary>pekerjaan rumah</vocabulary> atau <vocabulary>tugas</vocabulary>. Bagaimanapun juga, pekerjaan rumah tangga dan pekerjaan rumah hanyalah urusan rumah tangga yang harus Anda tangani.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda belum mempelajari cara membaca 家 ini, jadi inilah mnemonik yang dapat membantu Anda:

<vocabulary>Pekerjaan rumah</vocabulary> yang dilakukan di dalam <reading>mobil</reading> (か) tetaplah pekerjaan rumah. Pikirkan semua saat Anda merapikan mobil Anda. Itu juga pekerjaan rumah!', 'Tugas rumah, Pekerjaan rumah tangga')
    RETURNING id INTO v_8702_tugas_rumah;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '札', 'menandai', 9, 186, 'Kata ini hampir sama dengan kanji, namun hanya setengahnya saja. Artinya <vocabulary>tag</vocabulary> atau <vocabulary>amulet</vocabulary>. Bentuk dan ukurannya hampir sama dengan uang, tetapi Anda tidak bisa membeli rumah dengan uang tersebut (...mungkin).', 'Karena kata ini terdiri dari satu kanji, maka sebaiknya menggunakan bacaan kun''yomi. Saat mempelajari kanji, Anda tidak mempelajari bacaan tersebut, jadi inilah mnemonik untuk membantu Anda dengan kata ini:

Anda tidak dapat menemukan <vocabulary>tag</vocabulary> Anda di mana pun. Tadinya ada di sana, sumpah, tapi sekarang sudah tidak bisa ditemukan. Anda mencarinya kemana-mana, lalu Anda menyadari... itu ada di sana selama ini. Dengan serius? Kamu benar-benar <reading>foo</reading>l, <reading>duh</reading> (ふだ)!', 'Menandai, Jimat, Label, Kartu')
    RETURNING id INTO v_8800_menandai;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '使用', 'menggunakan', 9, 187, 'Sesuatu yang Anda <kanji>gunakan</kanji> yang memiliki <kanji>penggunaan</kanji> memiliki... yah, <vocabulary>use</vocabulary>. Anda bahkan dapat menggunakannya untuk <vocabulary>aplikasi</vocabulary> praktis.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Menggunakan, Aplikasi, Pekerjaan')
    RETURNING id INTO v_8802_menggunakan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '辛口', 'rasa-pedas', 9, 188, 'Jika kamu memasukkan sesuatu yang <kanji>pedas</kanji> ke dalam <kanji>mulut</kanji> kamu akan mendapatkan <vocabulary>rasa pedas</vocabulary> atau <vocabulary>rasa kering</vocabulary> di sana. Rempah-rempah menyedot semua kelembapan mulut Anda.', 'Inilah bacaan kun''yomi bersama. Anda seharusnya sudah mempelajari keduanya sekarang.', 'Rasa Pedas, Rasa Kering, Mencicipi Kering')
    RETURNING id INTO v_8812_rasa_pedas;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '出身', 'asal-usul-seseorang', 9, 189, '<kanji>keluar</kanji> asal <kanji>tubuh</kanji> seseorang juga bisa disebut <vocabulary>asal usul</vocabulary> seseorang.

出身 sering diterjemahkan sebagai <vocabulary>kampung halaman seseorang</vocabulary> atau <vocabulary>tempat lahir seseorang</vocabulary>. Namun Anda juga dapat menggunakannya untuk sekolah atau perusahaan tempat seseorang "berasal", seperti dalam frasa ハーバード大学出身 (lulusan Harvard), atau トヨタ出身 (seseorang yang kariernya dimulai di Toyota).', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri. Hati-hati dengan つ dari 出, yang menjadi っ.', 'Asal Usul Seseorang, Kampung Halaman Seseorang, Tempat Lahirnya Seseorang')
    RETURNING id INTO v_9020_asal_usul_seseorang;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '交代', 'mengubah', 9, 190, 'Jika Anda <kanji>mencampur</kanji> dan <kanji>menggantikan</kanji> dua orang, itu adalah <vocabulary>perubahan</vocabulary> personel, atau <vocabulary>substitusi</vocabulary>. Mungkin orang-orang itu bahkan bekerja dalam <vocabulary>shift</vocabulary>, jadi mereka mencampur dan mengganti satu sama lain secara berkala.

Anda akan melihat kata ini dalam konteks yang cukup beragam, karena kata ini bisa merujuk pada apa saja, mulai dari perubahan rezim politik, pergantian pemain saat pertandingan, hingga pergantian pabrik. Makna yang mendasarinya adalah bahwa satu orang atau kelompok tertukar dengan orang lain.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda belum mempelajari bacaan ini untuk 代, jadi inilah mnemonik untuk membantu Anda:

<vocabulary>perubahan</vocabulary> membutuhkan <reading>dasi</reading> (たい). Jika Anda adalah presiden perusahaan yang baru, atau Anda akan masuk kerja untuk memulai shift Anda, sebaiknya pastikan Anda berpenampilan sesuai peran, jadi kenakan dasi yang bagus dan lurus.', 'Mengubah, Substitusi, Menggeser')
    RETURNING id INTO v_9078_mengubah;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '空手', 'karate', 9, 191, 'Apa yang bisa kamu lakukan dengan <kanji>tangan</kanji> <kanji>kosong? <vocabulary>Karate</vocabulary>, itulah yang terjadi. Karate dipraktekkan tanpa senjata, jadi dengan tangan kosong!', 'Kata ini menggunakan kun''yomi dari kedua kanji, dan Anda belum mempelajari kun''yomi ini untuk 空. Selama Anda tahu artinya, bacaannya seharusnya mudah, tapi berikut ini mnemonik untuk membantu Anda berjaga-jaga:

<vocabulary>Karate</vocabulary> berasal dari (<reading>から</reading>) Jepang!', 'Karate')
    RETURNING id INTO v_9082_karate;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '元々', 'semula', 9, 192, 'Itu adalah <kanji>asal</kanji> dari semua <kanji>asal</kanji>, jadi begitulah <vocabulary>aslinya</vocabulary>, <vocabulary>dari awal</vocabulary>, atau <vocabulary>secara alami</vocabulary>. Anda mengerti idenya.

Perhatikan bahwa ini sering kali ditulis hanya dalam hiragana, tetapi Anda juga akan menemukan versi kanji!', 'Ini hanya bacaan kun''yomi yang kamu pelajari dengan 元, tapi dua kali, jadi sebaiknya kamu mulai!', 'Semula, Sejak Awal, Secara Alam')
    RETURNING id INTO v_9142_semula;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '心強い', 'meyakinkan', 9, 193, 'Hal-hal yang membuat <kanji>hati</kanji> <kanji>kuat</kanji> Anda adalah <vocabulary>meyakinkan</vocabulary> dan <vocabulary>menggembirakan</vocabulary> untuk didengar. Praktis Anda bisa merasakan jantung Anda menjadi lebih kuat di dada Anda.', 'Bacaan kata ini sama-sama bacaan kun''yomi. Anda mempelajarinya saat mempelajari kata 心 dan 強い, jadi Anda seharusnya bisa membacanya sendiri. Perhatikan saja bahwa つよい membuat rendaku menjadi づよい!', 'Meyakinkan, Menggembirakan')
    RETURNING id INTO v_9145_meyakinkan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '立場', 'sudut', 9, 194, '<kanji>berdiri</kanji> <kanji>lokasi</kanji> Anda adalah tempat Anda berdiri. Dengan kata lain, ini adalah <vocabulary>pandangan</vocabulary> Anda, seperti dalam diskusi atau suatu masalah. 

Meskipun 立場 bisa berarti tempat berdiri secara harafiah, kata ini hampir selalu digunakan secara metaforis — untuk mendeskripsikan pendirian Anda dalam sebuah argumen atau kompleksitas <kosakata>posisi</vocabulary> Anda dalam masyarakat, situasi, atau hubungan.', 'Kata ini menggunakan bacaan kun''yomi untuk kedua kanjinya. 立 berasal dari 立ち (bentuk kata benda dari 立つ), dan Anda mempelajari bacaan kun''yomi untuk 場 dengan 場所. Namun inilah mnemonik untuk keduanya jika Anda memerlukan penyegaran:

Seekor domba mencoba memberi Anda <vocabulary>sudut pandang</vocabulary> tentang subjek yang <reading>sensitif</reading> (たち), namun yang bisa ia lakukan hanyalah mengucapkan "<reading>baa</reading>" (ば). Anda mulai merasa tersinggung karena tidak ada gunanya mengambil sudut pandang yang lebih berbeda mengenai masalah sensitif seperti itu!', 'Sudut, Posisi')
    RETURNING id INTO v_9237_sudut;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '下る', 'untuk-turun', 9, 195, 'Kata ini terdiri dari kanji dengan hiragana ditempelkan. Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanjinya berarti <kanji>di bawah</kanji>, jadi Anda bisa menebak arah kata kerja pergerakan ini: ini adalah <vocabulary>turun</vocabulary>, atau <vocabulary>turun</vocabulary>.

Sebagai kata kerja gerakan, biasanya menggambarkan gerakan ke bawah secara bertahap. Misalnya, Anda akan menggunakan kata kerja ini untuk mendeskripsikan berjalan menuruni gunung, berkendara menuruni bukit, atau menyusuri sungai dengan perahu.', 'Kata kerja ini menggunakan bacaan luar biasa yang juga digunakan oleh 下さい. Jadi ganti saja さい dengan る dan Anda siap melakukannya!', 'Untuk Turun, Untuk Turun')
    RETURNING id INTO v_9261_untuk_turun;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '受け取る', 'untuk-menerima-sesuatu', 9, 196, 'Anda tahu bahwa 受ける berarti "menerima sesuatu". Gabungkan dengan 取る (mengambil sesuatu), dan 受け取る… tetap berarti <vocabulary>menerima sesuatu</vocabulary>.

Namun, meskipun 受ける secara umum menyiratkan penerimaan pasif, 受け取る memiliki konotasi yang lebih kuat yaitu mengambil kepemilikan sesuatu secara aktif. Ini digunakan ketika menerima paket atau hadiah, atau bahkan ketika menafsirkan kata-kata seseorang memiliki arti tertentu, seperti penghinaan atau pujian.', 'Jika Anda tahu cara membaca 受ける dan 取る, Anda sebaiknya melakukannya dengan baik.', 'Untuk Menerima Sesuatu, Untuk Mengambil Sesuatu, Untuk Mendapatkan Sesuatu')
    RETURNING id INTO v_9279_untuk_menerima_sesuatu;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '一ヶ月', 'satu-bulan', 9, 197, 'Ingat penghitung 〜ヶ月? Ganti 〜 dengan <kanji>satu</kanji> dan ini menjadi <vocabulary>satu bulan</vocabulary>.', '一 menggunakan on''yomi yang Anda pelajari, tetapi disingkat menjadi いっ, jadi berhati-hatilah. Pembacaan 月 adalah げつ on''yomi yang telah Anda pelajari. Anda bisa menebaknya げつ di sini karena tidak digunakan pada nama bulan tertentu.', 'Satu Bulan')
    RETURNING id INTO v_9286_satu_bulan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '〜ヶ月', 'penghitung-selama-berbulan-bulan', 9, 198, 'Baiklah, jadi yang ini agak aneh. Lihat yang anehnya kecil ヶ di sana? Nah, bersama dengan 月 (<kanji>bulan</kanji>), itu menjadi <vocabulary>penghitung bulan</vocabulary>. Anda akan menggunakan ini ketika Anda ingin berbicara tentang jumlah bulan tertentu, bukan ketika Anda mengatakan Januari, Februari, dll.

Perhatikan bahwa Anda akan menemukan varian yang berbeda dari ini. Meskipun 一ヶ月 adalah yang paling umum, Anda juga akan menemukan 一か月, 一カ月, dan jarang sekali 一箇月. Untungnya, semuanya dibaca sama, hanya penulisannya saja yang berbeda. Berbicara tentang membaca, mari kita mulai.', 'Huruf ヶ kecilnya mungkin sedikit menyesatkan, karena Anda harus membacanya sebagai か. Selebihnya mudah, karena 月 hanya membutuhkan pembacaan on''yomi yang normal. Dan karena kita tidak berbicara tentang bulan tertentu, itu berarti hanya げつ, menjadikannya 〜かげつ.', 'Penghitung Selama Berbulan-bulan, Penghitung Bulan')
    RETURNING id INTO v_9287_penghitung_selama_berbulan_bulan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '十分間', 'sepuluh-menit', 9, 199, 'Anda punya <kanji>sepuluh</kanji> <kanji>menit</kanji> <kanji>interval waktu</kanji>. Itu berarti <vocabulary>sepuluh menit</vocabulary>.

Perhatikan bahwa, seperti yang kami sebutkan di halaman 〜間, Anda dapat menghilangkan 間 dan ini tetap berarti <vocabulary>sepuluh menit</vocabulary>! Anda terutama akan melihat ini dalam percakapan dan konteks yang lebih santai.', 'Ini adalah kata jukugo yang artinya pembacaan on''yomi dari kanji. Anda tahu semua itu, tapi perilakunya sedikit berbeda di sini. 十 (じゅう) dan 分 (～ふん) bersama-sama berubah menjadi じゅっぷん di sini. Hal ini terkadang terjadi ketika menggunakan ～分 yang berarti "menit" dalam kombinasi dengan angka-angka tertentu, jadi cobalah untuk memperhatikan hal ini!', 'Sepuluh Menit')
    RETURNING id INTO v_9300_sepuluh_menit;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '南国', 'negara-tropis', 9, 200, 'Jika Anda pergi cukup jauh ke <kanji>selatan</kanji>, setiap <kanji>negara</kanji> adalah <vocabulary>negara tropis</vocabulary>. Kalau dibandingkan dengan Jepang sih… Mungkin berbeda jika Anda tinggal di belahan bumi selatan. 

Dalam bahasa Jepang, 南国 sering merujuk pada negara atau pulau tropis seperti Thailand, Guam, dan Hawaii. Terkadang kata ini juga merujuk pada wilayah selatan Jepang yang lebih hangat, seperti Okinawa.', 'Ini adalah kata jukugo yang menggunakan bacaan on''yomi untuk 南 (なん) dan 国 (こく, tapi rendaku akan menjadi ごく di sini). Anda pernah melihat bacaan tersebut sebelumnya, namun bacaan なん masih cukup baru, jadi inilah mnemonik untuk berjaga-jaga:

Saat Anda berada di <vocabulary>negara tropis</vocabulary>, Anda selalu menginginkan roti <reading>naan</reading> (なん). Anda bisa saja berada di <vocabulary>negara selatan</vocabulary> mana saja yang memiliki iklim tropis yang hangat — entah kenapa panasnya membuat Anda ingin makan naan.', 'Negara Tropis, Negara Selatan')
    RETURNING id INTO v_9351_negara_tropis;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '南風', 'angin-selatan', 9, 201, '<kanji>angin</kanji> selatan</kanji> adalah… <vocabulary>angin selatan</vocabulary>!

南風 adalah angin yang bertiup dari selatan. Di Jepang, hal ini dikaitkan dengan suhu hangat yang dibawa dari daerah tropis.', 'Kata ini menggunakan pembacaan kun''yomi untuk kedua kanji yang pernah Anda lihat sebelumnya. Pembacaan かぜ sama dengan yang Anda pelajari dengan kata vocab 風, jadi jika Anda dapat mengingatnya, Anda tidak akan mengalami kesulitan dengan kata ini!', 'Angin Selatan')
    RETURNING id INTO v_9354_angin_selatan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '日本史', 'sejarah-jepang', 9, 202, 'Anda tahu 日本 adalah Jepang, dan 史 berarti <kanji>sejarah</kanji>. Gabungkan keduanya dan Anda akan mendapatkan <vocabulary>Sejarah Jepang</vocabulary>.', 'Kata jukugo ini menggabungkan 日本 dan 史, keduanya telah Anda pelajari cara membacanya, jadi sebaiknya Anda mulai melakukannya.', 'Sejarah Jepang')
    RETURNING id INTO v_9510_sejarah_jepang;

  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2816_untuk_menjual_sesuatu, 'Untuk Menjual Sesuatu', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2823_berbentuk_hati, 'Berbentuk Hati', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2872_daftar_isi, 'Daftar isi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2915_bintang, 'Bintang', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2917_laut, 'Laut', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2917_laut, 'Laut', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2984_ikan_laut, 'Ikan Laut', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2984_ikan_laut, 'Ikan Air Asin', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2996_penduduk, 'Penduduk', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2996_penduduk, 'Warga negara', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3024_laboratorium, 'Laboratorium', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3024_laboratorium, 'Ruang Lab', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3082_benda, 'Benda', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3082_benda, 'Urusan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3082_benda, 'Kejadian', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3083_tugas, 'Tugas', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3083_tugas, 'Tugas', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3083_tugas, 'Hal yang Harus Dilakukan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3084_konstruksi, 'Konstruksi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3084_konstruksi, 'Ada Pekerjaan Konstruksi', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3085_penting, 'Penting', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3085_penting, 'Berharga', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3086_membalas, 'Membalas', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3086_membalas, 'Tanggapan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3087_makanan, 'Makanan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3087_makanan, 'Diet', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3087_makanan, 'Makan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3088_untuk_digunakan, 'Untuk Digunakan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3088_untuk_digunakan, 'Untuk Menghabiskan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3089_alat, 'Alat', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3090_mebel, 'Mebel', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3091_untuk_menerima_sesuatu, 'Untuk Menerima Sesuatu', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3091_untuk_menerima_sesuatu, 'Untuk Menerima Sesuatu', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3091_untuk_menerima_sesuatu, 'Untuk Mengambil Sesuatu', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3092_gaya_jepang, 'Gaya Jepang', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3093_perdamaian, 'Perdamaian', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3093_perdamaian, 'Harmoni', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3094_makanan_gaya_jepang, 'Makanan Gaya Jepang', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3094_makanan_gaya_jepang, 'Makanan Jepang', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3095_kamar_bergaya_jepang, 'Kamar Bergaya Jepang', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3096_pakaian_gaya_jepang, 'Pakaian Gaya Jepang', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3096_pakaian_gaya_jepang, 'Pakaian Jepang', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3096_pakaian_gaya_jepang, 'Pakaian Gaya Jepang', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3096_pakaian_gaya_jepang, 'Pakaian Jepang', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3100_rencana, 'Rencana', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3100_rencana, 'Jadwal', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3100_rencana, 'Memperkirakan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3101_keputusan, 'Keputusan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3101_keputusan, 'Tekad', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3102_kebenaran, 'Kebenaran', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3102_kebenaran, 'Realitas', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3103_fakta, 'Fakta', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3103_fakta, 'Nyata', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3103_fakta, 'Nyatanya', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3104_kekuatan_sejati, 'Kekuatan Sejati', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3104_kekuatan_sejati, 'Kemampuan Sejati', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3104_kekuatan_sejati, 'Kekuatan Sejati', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3105_pakaian, 'Pakaian', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3105_pakaian, 'Pakaian', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3106_berenang, 'Berenang', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3107_benda, 'Benda', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3107_benda, 'Obyek', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3107_benda, 'Barang', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3109_spesialisasi_lokal, 'Spesialisasi Lokal', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3109_spesialisasi_lokal, 'Produk Terkenal', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3109_spesialisasi_lokal, 'Khusus', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3109_spesialisasi_lokal, 'Barang Terkenal', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3111_menyakitkan, 'Menyakitkan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3111_menyakitkan, 'Menyedihkan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3111_menyakitkan, 'Tegang', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3112_untuk_berkendara, 'Untuk Berkendara', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3112_untuk_berkendara, 'Untuk melanjutkan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3112_untuk_berkendara, 'Ke Naik', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3115_tamu, 'Tamu', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3115_tamu, 'Pengunjung', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3115_tamu, 'Pelanggan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3116_kamar_tamu, 'Kamar Tamu', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3117_toko, 'Toko', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3117_toko, 'Toko', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3118_ruang, 'Ruang', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3119_toko_daging, 'Toko daging', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3119_toko_daging, 'Toko Daging', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3119_toko_daging, 'Toko Daging', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3120_toko_teh, 'Toko Teh', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3120_toko_teh, 'Kedai teh', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3121_toko_ikan, 'Toko Ikan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3121_toko_ikan, 'Pasar Ikan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3121_toko_ikan, 'Penjual Ikan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3121_toko_ikan, 'Toko Ikan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3121_toko_ikan, 'Penjual ikan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3122_nagoya, 'Nagoya', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3123_kali_ini, 'Kali ini', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3123_kali_ini, 'Lain kali', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3124_tepat, 'Tepat', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3124_tepat, 'Hanya', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3125_setiap_saat, 'Setiap Saat', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3125_setiap_saat, 'Setiap Saat', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3125_setiap_saat, 'Sering', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3126_sudut, 'Sudut', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3127_derajat, 'Derajat', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3127_derajat, 'Kali', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3130_untuk_memegang_sesuatu, 'Untuk Memegang Sesuatu', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3130_untuk_memegang_sesuatu, 'Untuk Membawa Sesuatu', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3130_untuk_memegang_sesuatu, 'Untuk Memiliki Sesuatu', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3130_untuk_memegang_sesuatu, 'Untuk Menyimpan Sesuatu', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3133_dunia, 'Dunia', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3133_dunia, 'Masyarakat', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3133_dunia, 'Alam Semesta', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3134_penjualan, 'Penjualan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3134_penjualan, 'Penjualan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3135_pengucapan, 'Pengucapan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3136_penemuan, 'Penemuan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3137_konsultasi, 'Konsultasi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3137_konsultasi, 'Diskusi', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3137_konsultasi, 'Nasihat', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3139_prefektur, 'Prefektur', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3140_cantik, 'Cantik', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3141_wanita_cantik, 'Wanita Cantik', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3142_kalah, 'Kalah', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3142_kalah, 'Untuk Dikalahkan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3143_cocok, 'Cocok', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3143_cocok, 'Pertikaian', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3143_cocok, 'Sebuah Perjudian', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3144_untuk_menang, 'Untuk Menang', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3145_pemenang, 'Pemenang', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3145_pemenang, 'Pemenang', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3146_tentu_kemenangan, 'Tentu Kemenangan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3146_tentu_kemenangan, 'Kemenangan Tertentu', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3146_tentu_kemenangan, 'Tentu Menang', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3146_tentu_kemenangan, 'Kemenangan Pasti', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3147_kemenangan_mudah, 'Kemenangan Mudah', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3147_kemenangan_mudah, 'Menang Mudah', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3147_kemenangan_mudah, 'Sepotong Kue', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3148_untuk_mengirim_sesuatu, 'Untuk Mengirim Sesuatu', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3148_untuk_mengirim_sesuatu, 'Untuk Mengawal Seseorang', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3151_penting, 'Penting', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3151_penting, 'Penting', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3151_penting, 'Diperlukan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3152_berat_badan, 'Berat Badan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3153_dobel, 'Dobel', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3153_dobel, 'Ganda', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3154_diperlukan, 'Diperlukan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3154_diperlukan, 'Diperlukan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3154_diperlukan, 'Penting', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3155_poin_utama, 'Poin Utama', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3155_poin_utama, 'Inti', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3155_poin_utama, 'Ide Utama', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3155_poin_utama, 'Esensi', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3156_seandainya, 'Seandainya', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3156_seandainya, 'Jika', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3157_kana, 'Kana', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3158_anggapan, 'Anggapan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3158_anggapan, 'Menganggap', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3429_menjadi_bengkok, 'Menjadi Bengkok', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3429_menjadi_bengkok, 'Untuk Membungkuk', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3429_menjadi_bengkok, 'Untuk Melengkung', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3429_menjadi_bengkok, 'Untuk Berbelok', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3430_amerika_selatan, 'Amerika Selatan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3466_untuk_berpotongan, 'Untuk berpotongan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3466_untuk_berpotongan, 'Untuk Menyeberang', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3466_untuk_berpotongan, 'Untuk berbaur', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3469_sekolah_dasar, 'Sekolah Dasar', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3469_sekolah_dasar, 'Sekolah dasar', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3469_sekolah_dasar, 'Sekolah Dasar', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3470_jalan, 'Jalan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3470_jalan, 'Jalan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3470_jalan, 'Jalan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3470_jalan, 'Jalan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3471_hati_hati, 'Hati-hati', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3471_hati_hati, 'Hati-hati', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3472_baru, 'Baru', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3473_siswa_sma, 'Siswa SMA', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3473_siswa_sma, 'Siswa Sekolah Menengah', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3474_sekolah_menengah, 'Sekolah Menengah', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3474_sekolah_menengah, 'Sekolah Menengah Pertama', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3475_untuk_dilampirkan, 'Untuk Dilampirkan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3476_untuk_menemukan, 'Untuk Menemukan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3476_untuk_menemukan, 'Untuk Menemukan Sesuatu', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3477_orang_lemah, 'Orang lemah', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3477_orang_lemah, 'Pengecut', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3478_tampak_lemah, 'Tampak Lemah', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3478_tampak_lemah, 'Lemah', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3478_tampak_lemah, 'Tampak Lemah', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3478_tampak_lemah, 'Tampaknya Lemah', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3479_untuk_terkelupas, 'Untuk Terkelupas', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3479_untuk_terkelupas, 'Menjadi Kurang', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3483_tinggi, 'Tinggi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3514_hitam_dan_putih, 'Hitam Dan Putih', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3514_hitam_dan_putih, 'Putih Dan Hitam', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3523_untuk_mengembalikan_sesuatu, 'Untuk Mengembalikan Sesuatu', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3523_untuk_mengembalikan_sesuatu, 'Untuk Kembali', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3525_rekaman, 'Rekaman', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3525_rekaman, 'Video', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3525_rekaman, 'Gambar', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3526_gambar, 'Gambar', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3526_gambar, 'Gambar', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3803_menyimpan, 'Menyimpan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3803_menyimpan, 'Memegang', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3803_menyimpan, 'Menjaga', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3803_menyimpan, 'Mempertahankan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3806_asuransi_jiwa, 'Asuransi jiwa', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3807_untuk_melestarikan_sesuatu, 'Untuk Melestarikan Sesuatu', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3807_untuk_melestarikan_sesuatu, 'Untuk Menyimpan Sesuatu', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3807_untuk_melestarikan_sesuatu, 'Untuk Mempertahankan Sesuatu', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4147_untuk_mencoba_melakukan_sesuatu, 'Untuk Mencoba Melakukan Sesuatu', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4147_untuk_mencoba_melakukan_sesuatu, 'Untuk Mencoba Sesuatu', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4150_contoh_makanan, 'Contoh Makanan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4150_contoh_makanan, 'Mencicipi', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4162_pengalaman, 'Pengalaman', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4163_mengikuti_ujian, 'Mengikuti Ujian', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4163_mengikuti_ujian, 'Mengikuti Tes', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4164_percobaan, 'Percobaan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4165_penyelidikan, 'Penyelidikan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4165_penyelidikan, 'Tes', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4165_penyelidikan, 'Percobaan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4215_sejarah, 'Sejarah', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4219_kontras, 'Kontras', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4219_kontras, 'Perbandingan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4376_pengumuman, 'Pengumuman', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4376_pengumuman, 'Presentasi', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4377_untuk_mengekspresikan_sesuatu, 'Untuk Mengekspresikan Sesuatu', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4377_untuk_mengekspresikan_sesuatu, 'Untuk Menunjukkan Sesuatu', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4380_keberangkatan, 'Keberangkatan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6790_pedas, 'Pedas', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6790_pedas, 'Panas', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6790_pedas, 'Sulit', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6790_pedas, 'Menyakitkan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6792_moster, 'Moster', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6792_moster, 'Mustard Jepang', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6792_moster, 'Karashi', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7149_toko_buku, 'Toko buku', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7149_toko_buku, 'Toko buku', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7460_semua, 'Semua', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7460_semua, 'Seluruh', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7460_semua, 'Utuh', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7464_malaikat, 'Malaikat', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7475_tahun_baru, 'Tahun Baru', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7478_untuk_membutuhkan, 'Untuk Membutuhkan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7478_untuk_membutuhkan, 'Dibutuhkan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7478_untuk_membutuhkan, 'Menjadi Diperlukan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7487_bicara, 'Bicara', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7487_bicara, 'Diskusi', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7487_bicara, 'Wawancara', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7533_bagian, 'Bagian', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7533_bagian, 'Bagian', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7533_bagian, 'Bagian', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7571_tidak_nyaman, 'Tidak nyaman', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7571_tidak_nyaman, 'Ketidaknyamanan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7571_tidak_nyaman, 'Disabilitas', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7571_tidak_nyaman, 'Penurunan nilai', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7571_tidak_nyaman, 'Kemiskinan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7571_tidak_nyaman, 'Kemiskinan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7572_pengajaran, 'Pengajaran', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7572_pengajaran, 'Petunjuk', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7572_pengajaran, 'Ajaran', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7572_pengajaran, 'Pelajaran', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7572_pengajaran, 'Doktrin', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7573_bagian_depan, 'Bagian depan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7573_bagian_depan, 'Permukaan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7625_lingkungan, 'Lingkungan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7625_lingkungan, 'Sekitarnya', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7625_lingkungan, 'Lingkungan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7625_lingkungan, 'Di dekat sini', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7625_lingkungan, 'Lokalitas', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7682_berapa_kali, 'Berapa kali', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7682_berapa_kali, 'Seberapa sering', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7682_berapa_kali, 'Berapa Suhu', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7683_renang, 'Renang', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7683_renang, 'Berenang', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7684_artikel, 'Artikel', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7684_artikel, 'Cerita Berita', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7684_artikel, 'Laporan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7684_artikel, 'Akun', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7684_artikel, 'Artikel Berita', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7740_api, 'Api', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7741_membiarkan_sesuatu_lewat, 'Membiarkan Sesuatu Lewat', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7741_membiarkan_sesuatu_lewat, 'Untuk Memasukkan Sesuatu', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8701_makhluk_hidup, 'Makhluk Hidup', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8701_makhluk_hidup, 'Makhluk', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8701_makhluk_hidup, 'Organisme', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8702_tugas_rumah, 'Tugas rumah', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8702_tugas_rumah, 'Pekerjaan rumah tangga', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8800_menandai, 'Menandai', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8800_menandai, 'Jimat', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8800_menandai, 'Label', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8800_menandai, 'Kartu', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8802_menggunakan, 'Menggunakan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8802_menggunakan, 'Aplikasi', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8802_menggunakan, 'Pekerjaan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8812_rasa_pedas, 'Rasa Pedas', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8812_rasa_pedas, 'Rasa Kering', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8812_rasa_pedas, 'Mencicipi Kering', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9020_asal_usul_seseorang, 'Asal Usul Seseorang', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9020_asal_usul_seseorang, 'Kampung Halaman Seseorang', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9020_asal_usul_seseorang, 'Tempat Lahirnya Seseorang', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9078_mengubah, 'Mengubah', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9078_mengubah, 'Substitusi', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9078_mengubah, 'Menggeser', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9082_karate, 'Karate', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9142_semula, 'Semula', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9142_semula, 'Sejak Awal', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9142_semula, 'Secara Alam', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9145_meyakinkan, 'Meyakinkan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9145_meyakinkan, 'Menggembirakan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9237_sudut, 'Sudut', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9237_sudut, 'Posisi', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9261_untuk_turun, 'Untuk Turun', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9261_untuk_turun, 'Untuk Turun', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9279_untuk_menerima_sesuatu, 'Untuk Menerima Sesuatu', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9279_untuk_menerima_sesuatu, 'Untuk Mengambil Sesuatu', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9279_untuk_menerima_sesuatu, 'Untuk Mendapatkan Sesuatu', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9286_satu_bulan, 'Satu Bulan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9287_penghitung_selama_berbulan_bulan, 'Penghitung Selama Berbulan-bulan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9287_penghitung_selama_berbulan_bulan, 'Penghitung Bulan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9300_sepuluh_menit, 'Sepuluh Menit', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9351_negara_tropis, 'Negara Tropis', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9351_negara_tropis, 'Negara Selatan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9354_angin_selatan, 'Angin Selatan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9510_sejarah_jepang, 'Sejarah Jepang', true, true);

  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2816_untuk_menjual_sesuatu, 'うる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2823_berbentuk_hati, 'はーとがた', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2823_berbentuk_hati, 'ハートがた', NULL, false, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2872_daftar_isi, 'もくじ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2915_bintang, 'ほし', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2917_laut, 'うみ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2984_ikan_laut, 'うみざかな', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2996_penduduk, 'じゅうみん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3024_laboratorium, 'けんきゅうしつ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3082_benda, 'こと', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3083_tugas, 'ようじ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3084_konstruksi, 'こうじ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3085_penting, 'だいじ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3086_membalas, 'へんじ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3087_makanan, 'しょくじ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3088_untuk_digunakan, 'つかう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3089_alat, 'どうぐ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3090_mebel, 'かぐ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3091_untuk_menerima_sesuatu, 'うける', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3092_gaya_jepang, 'わふう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3093_perdamaian, 'へいわ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3094_makanan_gaya_jepang, 'わしょく', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3095_kamar_bergaya_jepang, 'わしつ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3096_pakaian_gaya_jepang, 'わふく', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3100_rencana, 'よてい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3101_keputusan, 'けってい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3102_kebenaran, 'じつ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3103_fakta, 'じじつ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3104_kekuatan_sejati, 'じつりょく', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3105_pakaian, 'ふく', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3106_berenang, 'およぐ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3107_benda, 'もの', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3109_spesialisasi_lokal, 'めいぶつ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3111_menyakitkan, 'くるしい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3112_untuk_berkendara, 'のる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3115_tamu, 'おきゃくさん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3116_kamar_tamu, 'きゃくしつ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3117_toko, 'や', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3118_ruang, 'へや', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3119_toko_daging, 'にくや', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3120_toko_teh, 'ちゃや', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3121_toko_ikan, 'さかなや', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3122_nagoya, 'なごや', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3123_kali_ini, 'こんど', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3124_tepat, 'ちょうど', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3125_setiap_saat, 'まいど', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3126_sudut, 'かくど', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3127_derajat, 'ど', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3130_untuk_memegang_sesuatu, 'もつ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3133_dunia, 'せかい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3134_penjualan, 'はつばい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3135_pengucapan, 'はつおん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3136_penemuan, 'はっけん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3137_konsultasi, 'そうだん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3139_prefektur, 'けん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3140_cantik, 'うつくしい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3141_wanita_cantik, 'びじん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3142_kalah, 'まける', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3143_cocok, 'しょうぶ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3144_untuk_menang, 'かつ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3145_pemenang, 'しょうしゃ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3146_tentu_kemenangan, 'ひっしょう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3147_kemenangan_mudah, 'らくしょう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3148_untuk_mengirim_sesuatu, 'おくる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3151_penting, 'じゅうよう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3152_berat_badan, 'たいじゅう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3153_dobel, 'にじゅう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3154_diperlukan, 'ひつよう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3155_poin_utama, 'ようてん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3156_seandainya, 'かりに', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3157_kana, 'かな', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3158_anggapan, 'かてい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3429_menjadi_bengkok, 'まがる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3430_amerika_selatan, 'なんべい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3466_untuk_berpotongan, 'まじわる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3469_sekolah_dasar, 'しょうがっこう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3470_jalan, 'とおり', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3471_hati_hati, 'きをつけて', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3472_baru, 'あたらしい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3473_siswa_sma, 'こうこうせい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3474_sekolah_menengah, 'ちゅうがっこう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3475_untuk_dilampirkan, 'つく', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3476_untuk_menemukan, 'みつける', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3477_orang_lemah, 'よわむし', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3478_tampak_lemah, 'よわよわしい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3479_untuk_terkelupas, 'かける', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3483_tinggi, 'たかさ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3514_hitam_dan_putih, 'しろくろ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3523_untuk_mengembalikan_sesuatu, 'かえす', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3525_rekaman, 'えいぞう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3526_gambar, 'がぞう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3803_menyimpan, 'ほじ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3806_asuransi_jiwa, 'せいほ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3807_untuk_melestarikan_sesuatu, 'たもつ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4147_untuk_mencoba_melakukan_sesuatu, 'こころみる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4150_contoh_makanan, 'ししょく', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4162_pengalaman, 'たいけん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4163_mengikuti_ujian, 'じゅけん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4164_percobaan, 'じっけん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4165_penyelidikan, 'しけん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4215_sejarah, 'れきし', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4219_kontras, 'たいひ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4376_pengumuman, 'はっぴょう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4377_untuk_mengekspresikan_sesuatu, 'あらわす', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4380_keberangkatan, 'しゅっぱつ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6790_pedas, 'からい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6790_pedas, 'つらい', NULL, false, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6792_moster, 'からし', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_7149_toko_buku, 'ほんや', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_7460_semua, 'ぜんぶ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_7464_malaikat, 'てんし', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_7475_tahun_baru, 'しんねん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_7478_untuk_membutuhkan, 'いる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_7487_bicara, 'たいだん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_7533_bagian, 'ぶぶん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_7571_tidak_nyaman, 'ふじゆう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_7572_pengajaran, 'おしえ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_7573_bagian_depan, 'おもて', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_7625_lingkungan, 'ふきん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_7682_berapa_kali, 'なんど', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_7683_renang, 'およぎ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_7684_artikel, 'きじ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_7740_api, 'かじ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_7741_membiarkan_sesuatu_lewat, 'とおす', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_8701_makhluk_hidup, 'せいぶつ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_8702_tugas_rumah, 'かじ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_8800_menandai, 'ふだ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_8802_menggunakan, 'しよう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_8812_rasa_pedas, 'からくち', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_9020_asal_usul_seseorang, 'しゅっしん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_9078_mengubah, 'こうたい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_9082_karate, 'からて', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_9142_semula, 'もともと', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_9145_meyakinkan, 'こころづよい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_9237_sudut, 'たちば', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_9261_untuk_turun, 'くだる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_9279_untuk_menerima_sesuatu, 'うけとる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_9286_satu_bulan, 'いっかげつ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_9287_penghitung_selama_berbulan_bulan, 'かげつ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_9300_sepuluh_menit, 'じゅっぷんかん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_9300_sepuluh_menit, 'じっぷんかん', NULL, false, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_9351_negara_tropis, 'なんごく', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_9354_angin_selatan, 'みなみかぜ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_9510_sejarah_jepang, 'にほんし', NULL, true, true);

  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2816_untuk_menjual_sesuatu, '道に絵を売る人がいました。', 'Ada seseorang yang menjual gambar di jalan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2816_untuk_menjual_sesuatu, 'このバイク、いくらだったら売ってくれますか？', 'Berapa harga jual sepeda motor ini?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2816_untuk_menjual_sesuatu, '私の心はお金じゃ売らないよ。', 'Aku tidak akan menjual hatiku demi uang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2823_berbentuk_hati, 'ハート形の風船を買いました。', 'Saya membeli balon berbentuk hati.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2823_berbentuk_hati, 'これは、ネイルアート用のハート形のストーンです。', 'Ini adalah batu berbentuk hati untuk seni kuku.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2823_berbentuk_hati, 'うちのおばあちゃんは、ハート形のおにぎりを作るのが上手です。', 'Nenek saya pandai membuat nasi kepal berbentuk hati.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2872_daftar_isi, '先ず、本の目次を見て下さい。', 'Pertama, silakan lihat daftar isi bukunya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2872_daftar_isi, '目次を見るだけでも、本の中について少し分かりますよ。', 'Bahkan hanya dengan melihat daftar isinya saja sudah memberi tahu Anda sedikit tentang buku tersebut.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2872_daftar_isi, '次は、目次のページです。', 'Berikutnya adalah halaman untuk daftar isi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2915_bintang, '夜には、星がとてもきれいでした。', 'Malam itu bintang-bintang sangat cantik.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2915_bintang, '青森には美しい星空が広がっています。', 'Langit berbintang yang indah membentang di atas Aomori.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2915_bintang, 'フルーツをハート形や星形に切るとかわいいし、小さい子にも人気ですよ。', 'Buah-buahan yang dipotong berbentuk hati dan bintang memang lucu dan disukai anak-anak.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2917_laut, 'その海の色はエメラルドグリーンでした。', 'Warna lautnya hijau zamrud.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2917_laut, '夏休みに友人たちと海に行く予定です。', 'Saya berencana pergi ke laut bersama teman-teman saya selama liburan musim panas.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2917_laut, 'いつか、海の近くに住みたいなぁ。', 'Suatu hari nanti, saya ingin tinggal di dekat laut.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2917_laut, 'ワニカニは海の生物なのでしょうか？川の生物なのでしょうか？', 'Apakah WaniKani adalah makhluk laut? Apakah itu makhluk sungai?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2984_ikan_laut, 'サケは海魚ですか？それとも川魚ですか？', 'Apakah salmon termasuk ikan air asin? Atau apakah itu ikan air tawar?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2984_ikan_laut, '海魚はペットに出来ますか？', 'Bisakah ikan laut dijadikan hewan peliharaan?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2984_ikan_laut, 'スキューバダイビングで海の中に行くと、色々な海魚やクラゲを見ることができます。', 'Jika Anda terjun ke laut dengan scuba diving, Anda bisa melihat berbagai ikan laut dan ubur-ubur.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2996_penduduk, 'この町の住民は、おばあちゃんとおじいちゃんが多いです。', 'Banyak penduduk di kota ini yang merupakan nenek dan kakek.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2996_penduduk, 'アパートの住民たちで、ピザパーティをしたいんです。', 'Saya ingin mengadakan pesta pizza dengan penghuni apartemen.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2996_penduduk, '２０１１年のつなみでは多くの住民が家を失いました。', 'Banyak warga yang kehilangan rumahnya akibat tsunami tahun 2011.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3024_laboratorium, 'この研究室には毎回たくさんの学生がいます。', 'Ada banyak siswa di lab ini setiap saat.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3024_laboratorium, '明日、研究室で新しい化学実験を行う予定です。', 'Kami berencana melakukan percobaan kimia baru di laboratorium besok.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3024_laboratorium, 'このハムスターは研究室で生まれました。', 'Hamster ini lahir di laboratorium.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3082_benda, 'その事については、後でまたゆっくり話しませんか。', 'Bisakah kita membicarakan masalah ini nanti?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3082_benda, '先生が言ってる事は半分しか分かりませんでした。', 'Saya hanya mengerti setengah dari apa yang guru katakan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3082_benda, '車で会社に行く事が歩いて行く事よりも多いです。', 'Saya lebih sering pergi bekerja dengan mobil daripada berjalan kaki.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3083_tugas, 'その日、大切な用事があります。', 'Pada hari itu, saya ada urusan penting.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3083_tugas, 'あっ、田中先生。ドン・キホーテに一体何の用事ですか？', 'Oh, Tanaka-sensei. Bisnis apa yang membawamu ke Don Quijote?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3083_tugas, 'すみません。用事を思い出したので、お先に失礼します。', 'Permisi. Aku minta maaf karena harus berangkat lebih awal, tapi aku baru ingat ada sesuatu yang harus kulakukan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3084_konstruksi, '工事は今日から明日までです。', 'Pembangunannya mulai hari ini hingga besok.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3084_konstruksi, 'この道は今工事中なので、左に行って下さい。', 'Jalan ini sedang dibangun, jadi silakan belok kiri.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3084_konstruksi, '夕べは工事の音がうるさくて、ねむれませんでした。', 'Saya tidak bisa tidur karena kebisingan konstruksi tadi malam.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3085_penting, 'きちんと「ありがとう」と言うことは大事です。', 'Penting untuk mengucapkan "terima kasih" dengan benar.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3085_penting, '大事なノートを失ってしまった。', 'Saya kehilangan buku catatan penting.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3085_penting, '明日は大事なテストがあるんです。', 'Saya ada ujian penting besok.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3086_membalas, '今日は、メールの返事が来なかった。', 'Hari ini, saya tidak mendapat balasan ke email saya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3086_membalas, 'もう少し時間をくれませんか？返事をする前によく考えたいんです。', 'Maukah Anda memberi saya sedikit waktu lagi? Saya ingin memikirkannya sebelum menjawab.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3086_membalas, 'プロポーズの返事が一年以上ないんですが、どうしたらいいですか？', 'Sudah setahun lebih tidak ada tanggapan terhadap usulan saya, apa yang harus saya lakukan?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3087_makanan, '一日に三回の食事では足りないんですよ。', 'Makan tiga kali sehari tidaklah cukup.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3087_makanan, '今食事中なので、後でまた電話しますね。', 'Saya sedang makan sekarang, jadi saya akan menelepon lagi nanti.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3087_makanan, 'もし人生で毎回同じ食事しか出来ないとしたら、何がいいですか？', 'Jika kamu hanya bisa makan makanan yang sama seumur hidupmu, makanan apa yang kamu suka?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3088_untuk_digunakan, '私たちは、毎日電気を使います。', 'Kami menggunakan listrik setiap hari.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3088_untuk_digunakan, '知っている活用形を全て使って文を作って下さい。', 'Gunakan semua bentuk konjugasi yang Anda ketahui untuk membuat kalimat.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3088_untuk_digunakan, '今日は青森県のリンゴを使ってパイを作りたいと思います。', 'Hari ini saya ingin membuat pai menggunakan apel dari Prefektur Aomori.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3089_alat, 'まずは、ペンや紙などの道具が必要です。', 'Pertama, Anda memerlukan alat seperti pena dan kertas.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3089_alat, 'それは科学実験のための道具です。', 'Ini adalah alat untuk eksperimen ilmiah.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3089_alat, '明日の工事に必要な道具は全て有りますか？', 'Apakah Anda memiliki semua peralatan yang Anda perlukan untuk konstruksi besok?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3090_mebel, '日本で安い家具を手に入れるには、「イケア」か「ニトリ」がおすすめです。', 'Untuk mendapatkan furniture murah di Jepang, saya merekomendasikan IKEA atau Nitori.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3090_mebel, '入り口が小さいので、大きい家具が入るか分かりません。', 'Pintu masuknya kecil, jadi saya tidak yakin apakah furnitur berukuran besar bisa muat.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3090_mebel, 'この家具屋さんにはベッド、ソファ、テーブルなど、色々なの家具があります。', 'Toko furnitur ini memiliki berbagai macam furnitur, seperti tempat tidur, sofa, meja, dan lainnya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3090_mebel, 'これは、あなたが家具を買うためのお金です。ホストクラブに行くためのお金ではありません。', 'Ini adalah uang bagi Anda untuk membeli furnitur. Ini bukan uang untuk pergi ke klub tuan rumah.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3091_untuk_menerima_sesuatu, '明日、先生から電話を受ける。', 'Saya akan menerima panggilan telepon dari guru saya besok.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3091_untuk_menerima_sesuatu, '今回はJLPTの試験を冬に受ける事にしました。', 'Kali ini saya memutuskan untuk mengikuti ujian JLPT di musim dingin.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3091_untuk_menerima_sesuatu, '他人から言われた事を、毎回まともに受けなくてもいいんだよ。', 'Anda tidak harus menganggap serius apa yang orang lain katakan setiap saat.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3092_gaya_jepang, '私、和風スイーツがすきなんです。', 'Saya suka manisan Jepang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3092_gaya_jepang, '和風ごまドレッシングが切れちゃったんだけど、買ってきてくれる？', 'Kami kehabisan saus wijen ala Jepang, bisakah Anda membelinya?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3092_gaya_jepang, '和風の客室がいいんですが、空室はありますか？', 'Saya ingin kamar bergaya Jepang. Apakah ada lowongan?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3093_perdamaian, '住人にとって平和な町にしたいです。', 'Saya ingin menjadikannya kota yang damai bagi penduduknya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3093_perdamaian, '「日本は平和すぎる」と言う人も、多いですよ。', 'Banyak orang bilang Jepang terlalu damai.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3093_perdamaian, '一日でも早く世界が平和になりますように。', 'Semoga dunia menjadi damai sesegera mungkin.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3094_makanan_gaya_jepang, '朝ごはんは、和食がいいです。', 'Saya suka sarapan ala Jepang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3094_makanan_gaya_jepang, '日本人の主人は毎日和食を作ってくれます。', 'Suami saya yang orang Jepang memasak makanan Jepang setiap hari.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3094_makanan_gaya_jepang, '和食レストランで、和牛のステーキを食べました。', 'Saya makan steak wagyu di restoran Jepang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3095_kamar_bergaya_jepang, 'この和室にアンティークのソファを買いたいと思っています。', 'Saya ingin membeli sofa antik untuk ruangan bergaya Jepang ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3095_kamar_bergaya_jepang, '姉の家には、お茶を飲むための和室があります。', 'Rumah kakakku memiliki ruangan bergaya Jepang untuk minum teh di dalamnya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3095_kamar_bergaya_jepang, 'タタミがある部屋のことを和室と言います。', 'Ruangan yang berlantai tatami disebut ruangan bergaya Jepang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3096_pakaian_gaya_jepang, 'キモノなどの和服は、日本の文化の一部です。', 'Pakaian gaya Jepang seperti kimono adalah bagian dari budaya Jepang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3096_pakaian_gaya_jepang, 'うちのおばあちゃんは和服を作るのが上手です。', 'Nenek saya pandai membuat pakaian gaya Jepang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3096_pakaian_gaya_jepang, '和服でマラソンをする日本人を見たことがありますか？', 'Pernahkah Anda melihat orang Jepang lari maraton dengan pakaian ala Jepang?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3100_rencana, '明日の予定は何ですか？', 'Apa rencanamu besok?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3100_rencana, '今週末は友人とかき氷を食べに行く予定です。', 'Saya berencana pergi makan es serut bersama teman-teman akhir pekan ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3100_rencana, 'せっかく来週の予定を立てたのに、インフルエンザのせいで休まなければいけません。', 'Saya harus istirahat karena flu, padahal saya sudah membuat rencana untuk minggu depan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3101_keputusan, '今すぐは決定出来ません。', 'Saya tidak bisa langsung mengambil keputusan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3101_keputusan, 'アメリカに支店をオープンするかどうかは明日のミーティングで決定します。', 'Kami akan memutuskan dalam pertemuan besok apakah akan membuka cabang di Amerika Serikat.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3101_keputusan, 'ホリコシ先生、ご自分のマンガのアニメ化決定について、どう思われますか？', 'Horikoshi-sensei, bagaimana perasaan Anda tentang keputusan untuk menganimasikan manga Anda?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3102_kebenaran, 'この女の人は、私の実の母ではありません。', 'Wanita ini bukan ibu kandungku.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3102_kebenaran, 'プロフィールでは２５才と言ってるんですが、実は私３５才なんです。', 'Profil saya mengatakan berusia dua puluh lima tahun, namun kenyataannya, saya sebenarnya berusia tiga puluh lima tahun.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3102_kebenaran, '実を言うと私、こう見えてもオリンピックに出たことがあるんです。', 'Faktanya, saya pernah mengikuti Olimpiade meskipun penampilan saya tidak seperti itu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3103_fakta, '以上は、全て事実です。', 'Semua hal di atas adalah fakta.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3103_fakta, 'この本には、数学にまつわる事実がたくさんのってます。', 'Buku ini memiliki banyak fakta tentang matematika.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3103_fakta, '全日本の人々が知っている事実だが、鳥取のカニはおいしい。', 'Itu fakta yang diketahui semua orang Jepang, tapi kepiting di Tottori enak.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3103_fakta, '父は事実、それを知っていました。', 'Ayah sebenarnya tahu tentang itu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3104_kekuatan_sejati, '全ての実力を出しても、同点の引き分けでした。', 'Bahkan jika aku menggunakan seluruh kekuatanku yang sebenarnya, itu tetap saja seri.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3104_kekuatan_sejati, '弟は実力があるのに、なぜプロになれないのか不安に思っているようです。', 'Adik laki-lakinya sepertinya khawatir mengapa dia tidak bisa menjadi seorang profesional, meskipun dia memiliki kekuatan yang sebenarnya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3104_kekuatan_sejati, 'コウイチのフラダンスの実力は本物です。', 'Kemampuan menari hula Koichi memang asli.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3105_pakaian, 'その服、かわいいね。', 'Pakaiannya lucu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3105_pakaian, 'うちの母は、ラッキーカラーが赤なので、いつも赤い服をきています。', 'Warna keberuntungan ibuku adalah merah, jadi dia selalu memakai baju merah.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3105_pakaian, 'どれだけ持っていても服が足りないのは、なぜ？！', 'Mengapa aku tidak pernah punya cukup pakaian, tidak peduli berapa banyak yang kumiliki?!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3105_pakaian, '服を全部引き出しの中に入れてください。', 'Taruh semua pakaian di laci.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3106_berenang, '台風が近づいてるので、海で泳ぐのは安全ではありません。', 'Berenang di laut tidak aman karena topan sudah dekat.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3106_berenang, 'いつか人魚みたいに泳ぎたいんだ。', 'Saya ingin berenang seperti putri duyung suatu hari nanti.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3106_berenang, '市立プールだからといって、泳ぐにはお金がかかります。', 'Meskipun ini kolam renang kota, tetap membutuhkan biaya untuk berenang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3106_berenang, 'あんた、目が泳いでるよ。', 'Hei, matamu licik.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3107_benda, 'この家には物がありすぎます。', 'Ada terlalu banyak barang di rumah ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3107_benda, '明日食べる物がないので、スーパーに買いに行ってきます。', 'Kami tidak punya makanan untuk besok, jadi saya pergi ke supermarket.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3107_benda, '先日、一年前に失くした物を見つけたんです。', 'Suatu hari, saya menemukan sesuatu yang hilang setahun yang lalu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3109_spesialisasi_lokal, '九州の名物は何ですか？', 'Apa saja makanan khas lokal Kyushu?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3109_spesialisasi_lokal, 'コウイチは、トーフグの名物社長です。', 'Koichi adalah presiden Tofugu yang terkenal.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3109_spesialisasi_lokal, 'ポートランドの名物は、ヒップスターと、古いカーペットと、おいしいコーヒーです。', 'Spesialisasi Portland adalah hipster, karpet tua, dan kopi nikmat.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3111_menyakitkan, '食べすぎて苦しい。', 'Aku makan terlalu banyak hingga aku kesakitan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3111_menyakitkan, '一ヶ月前くらいから、このジーンズ、苦しいんだ。', 'Celana jeans ini terasa ketat dan tidak nyaman sejak sekitar sebulan yang lalu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3111_menyakitkan, 'あの時のことを思い出すと、今でも心が苦しい。', 'Mengingat kejadian saat itu masih membuat hatiku sakit.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3111_menyakitkan, '村では、冬になると食べ物が不足して、村人はみんな苦しい生活を送っていました。', 'Di desa, tidak ada cukup makanan di musim dingin, dan semua penduduk desa hidup dalam kesulitan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3112_untuk_berkendara, '会社へ行くのに、バスに乗る日もあります。', 'Ada hari-hari ketika saya naik bus untuk pergi ke kantor.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3112_untuk_berkendara, '東京行きのフライトには乗れませんでした。', 'Saya tidak bisa naik penerbangan ke Tokyo.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3112_untuk_berkendara, 'あのサーフボードに乗ってる犬、かわいいね！', 'Anjing di papan selancar itu lucu!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3115_tamu, 'お客さんが入ってくると、このベルの音がします。', 'Saat pelanggan masuk, Anda akan mendengar suara bel ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3115_tamu, 'お客さんにお茶を出しました。', 'Saya menyajikan teh kepada pelanggan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3115_tamu, 'あなたは大切なワニカニのお客さんの一人なんですよ。', 'Anda adalah salah satu pelanggan WaniKani kami yang berharga.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3116_kamar_tamu, '客室は広く、ベッドが二つありました。', 'Kamar tamunya besar dan memiliki dua tempat tidur.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3116_kamar_tamu, '海が見える客室は、やはり高いです。', 'Benar saja, kamar dengan pemandangan laut harganya mahal.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3116_kamar_tamu, 'このホテルでは全ての客室にコンシェルジュサービスが付いてきます。', 'Di hotel ini, semua kamar memiliki layanan pramutamu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3117_toko, '小さい時は、大人になったらケーキ屋さんになりたいと思ってました。', 'Ketika saya masih kecil, saya ingin bekerja di toko kue ketika saya dewasa.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3117_toko, 'この町には有名なとんこつラーメン屋があります。', 'Ada toko ramen tonkotsu yang terkenal di kota ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3117_toko, 'この前、パン屋で会った男の人に電話番号をきかれたんです。', 'Suatu hari, seorang pria yang saya temui di toko roti menanyakan nomor telepon saya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3118_ruang, '私の部屋にはベッドがあります。', 'Ada tempat tidur di kamarku.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3118_ruang, '南を向いた部屋なので、日当たりがすごくいいんです。', 'Ruangan menghadap ke selatan, sehingga mendapat sinar matahari yang baik.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3118_ruang, '今日の午後は部屋のクリーニングをする予定です。', 'Saya berencana membersihkan kamar sore ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3119_toko_daging, '肉屋さんで牛肉を四百グラム買いました。', 'Saya membeli 400 gram daging sapi di toko daging.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3119_toko_daging, '日本の肉屋さんでは、コロッケやカツなどが売ってますよ。', 'Tukang daging Jepang menjual kroket dan irisan daging.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3119_toko_daging, '私の生まれた小さい町には「お肉屋さん」と言う名前のベジタリアンのレストランがあったの。今思い出すと、なんだか皮肉な名前よね。', 'Di kota kecil tempat saya dilahirkan, ada sebuah restoran vegetarian bernama "Tukang Daging". Sekarang aku mengingatnya, itu semacam nama yang sarkastik.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3120_toko_teh, 'この町には古い茶屋があります。', 'Kota ini memiliki rumah teh tua.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3120_toko_teh, '茶屋に入って少し休みませんか？', 'Apakah Anda ingin pergi ke kedai teh dan istirahat sebentar?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3120_toko_teh, '茶屋の前には竹林があって、赤い和風のパラソルもあります。', 'Ada rerimbunan bambu di depan kedai teh, dan juga ada payung Jepang berwarna merah.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3121_toko_ikan, '魚屋さんで生のサーモンを買いました。', 'Kami membeli beberapa salmon mentah di toko ikan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3121_toko_ikan, '魚屋さんは買った魚を切ってくれますよ。', 'Toko ikan akan memotong ikan yang Anda beli.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3121_toko_ikan, 'あそこの魚屋さんのご主人、日中は魚屋さんだけど、夜はロックバンドのドラマーなんですって。', 'Pemilik toko ikan itu menjalankan tokonya pada siang hari, tetapi pada malam hari dia menjadi drummer di sebuah band rock.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3122_nagoya, '私の友人は名古屋でデザイナーをしています。', 'Teman saya adalah seorang desainer di Nagoya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3122_nagoya, '名古屋の朝ごはん文化は全国で有名です。', 'Budaya sarapan di Nagoya terkenal di seluruh negeri.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3122_nagoya, '名古屋市内で一番高いビルはどれですか？', 'Bangunan manakah yang tertinggi di Kota Nagoya?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3123_kali_ini, 'じゃあ、やっぱり今度にしよう。', 'Oke, kalau begitu mari kita lakukan lain kali.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3123_kali_ini, '今度、友人と花見に行く予定です。', 'Aku berencana pergi melihat bunga sakura bersama teman-temanku kali ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3123_kali_ini, '今度の夏休みは四国に行くつもりです。', 'Liburan musim panas ini aku akan pergi ke Shikoku.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3124_tepat, '丁度、おふろから出たところです。', 'Saya baru saja keluar dari kamar mandi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3124_tepat, 'この服の大きさが丁度いいです。', 'Ukuran pakaian ini pas.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3124_tepat, '丁度その本を探していたんです。', 'Aku hanya mencari buku itu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3124_tepat, 'あら！今丁度あなたに電話をしようと思っていたところよ！', 'Oh! Tadinya aku berencana meneleponmu sekarang!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3125_setiap_saat, '毎度、同じエラーが出るんですよ。', 'Setiap kali, saya mendapatkan kesalahan yang sama.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3125_setiap_saat, 'もちろんクソリプは毎度スルーだよ。', 'Tentu saja, saya selalu mengabaikan balasan yang penuh kebencian.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3125_setiap_saat, '毎度のことだが、キョーコは今日も服を決めるのに時間がかかっている。', 'Hal ini selalu terjadi, namun butuh waktu lama bagi Kyoko untuk memutuskan apa yang akan ia kenakan hari ini juga.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3126_sudut, '正しい角度にするのに時間がかかりました。', 'Butuh beberapa saat untuk mendapatkan sudut yang tepat.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3126_sudut, 'これについては、色々な角度から見て考えてみたいと思います。', 'Saya ingin memikirkan hal ini dari berbagai sudut.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3126_sudut, '一つの角度が全て六十度ということは、それは「正三角形」ですよ。', 'Setiap sudutnya enam puluh derajat, yang berarti "segitiga sama sisi".');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3127_derajat, '東京の夏は、三十度以上になる日が多いです。', 'Di Tokyo pada musim panas, sering kali suhu mencapai di atas tiga puluh derajat.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3127_derajat, '先ず、オーブンを１９０度にして下さい。', 'Pertama, panaskan oven hingga 190 derajat.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3127_derajat, 'ここの角度は、９０度です。', 'Sudut di sini adalah sembilan puluh derajat.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3130_untuk_memegang_sesuatu, '三十才になるまでに自分の車を持つと決めたんです。', 'Saya memutuskan untuk memiliki mobil sendiri sebelum saya berusia tiga puluh tahun.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3130_untuk_memegang_sesuatu, 'あの男、左手に何を持ってるんですか？', 'Apa yang dipegang pria itu di tangan kirinya?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3130_untuk_memegang_sesuatu, '夏に出かけるときは、水とタオルを必ず持っていきましょう。', 'Saat Anda keluar di musim panas, pastikan untuk membawa air dan handuk.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3133_dunia, '世界は広いから、色々な国に行きたいです。', 'Dunia ini besar, jadi saya ingin pergi ke berbagai negara.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3133_dunia, 'このドキュメンタリーは全世界で人気の大作になりました。', 'Film dokumenter ini telah menjadi mahakarya populer di seluruh dunia.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3133_dunia, 'アーティストは、自分の世界を持ってる人が多いです。', 'Banyak seniman mempunyai dunianya sendiri.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3134_penjualan, '今日から「手作りチーズケーキ」の発売です！', '"Kue Keju Buatan Tangan" dijual mulai hari ini!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3134_penjualan, 'ファンのみんなにお知らせです。私たちのグッズが先ずはオンラインで発売されることになりました。', 'Ini adalah pengumuman untuk semua penggemar kami. Merchandise kami akan dirilis secara online terlebih dahulu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3134_penjualan, '私の姉は、新しいスマートフォン発売の十二時間前から、お店の前にいます。', 'Adikku sudah berada di depan toko sejak dua belas jam sebelum peluncuran smartphone baru.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3135_pengucapan, '「Otolaryngology」の発音を教えてくれませんか？', 'Bisakah Anda memberi tahu saya pengucapan "Otolaringologi"?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3135_pengucapan, '先生がLとRの発音を正してくれてからは、上手に発音出来るようになりました。', 'Setelah guru mengoreksi pengucapan L dan R saya, saya bisa mengucapkannya dengan baik.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3135_pengucapan, 'スピーキング力を上げるため、発音のトレーニングをしています。', 'Saya berlatih pengucapan untuk meningkatkan keterampilan berbicara saya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3136_penemuan, '木の上に毛虫を発見しました。', 'Saya menemukan ulat di pohon.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3136_penemuan, '外国で生活をしていると、毎日発見があります。', 'Jika Anda tinggal di negara asing, Anda akan menemukan sesuatu setiap hari.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3136_penemuan, 'この古い地図があれば、宝を発見することが出来るかもしれない。', 'Dengan peta lama ini, Anda mungkin bisa menemukan harta karun.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3137_konsultasi, 'ねえ、相談があるんだけど。', 'Hei, ada yang ingin kubicarakan denganmu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3137_konsultasi, '家のローン相談は、午後六時から午後九時です。', 'Konsultasi pinjaman rumah dimulai dari jam 6 sore. sampai jam 9 malam.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3137_konsultasi, '医者に相談したら「先ずはストレスのない生活をして下さい」と言われました。', 'Ketika saya berkonsultasi dengan dokter, saya diberitahu, "Pertama, cobalah menjalani hidup tanpa stres."');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3139_prefektur, '何県の出身ですか。', 'Anda berasal dari prefektur mana?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3139_prefektur, '石川県には三回行ったことがありますよ。', 'Saya telah ke prefektur Ishikawa tiga kali.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3139_prefektur, '山口県の名物はフグです。', 'Keistimewaan Prefektur Yamaguchi adalah ikan buntal.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3140_cantik, 'この青い花、とても美しいですね。', 'Bunga biru ini sangat indah.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3140_cantik, '四国の「四万十川」という名の川は日本の美しい川の一つです。', 'Sungai yang disebut "Sungai Shimanto" di Shikoku adalah salah satu sungai indah di Jepang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3140_cantik, 'この人形の目は、宝石のように美しいですね。', 'Mata boneka ini indah seperti permata.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3141_wanita_cantik, 'あの女の人は、とてもエレガントな美人ですね。', 'Wanita itu adalah kecantikan yang sangat elegan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3141_wanita_cantik, '電話番号をきく時、「あなた美人ですね」ってどうしても言えなかったんだよ。', 'Ketika saya meminta nomor teleponnya, saya tidak bisa berkata, "Kamu wanita yang cantik."');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3141_wanita_cantik, 'あいつ、「だれの助言もいらない」って言ってたのに、美人の助言はウェルカムなんだとよ。', 'Dia berkata, "Saya tidak membutuhkan nasihat siapa pun," tetapi kemudian dia berkata bahwa dia akan menerima nasihat dari wanita cantik.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3142_kalah, '兄は、いつも負けることを不安に思っています。', 'Adikku selalu khawatir akan kekalahan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3142_kalah, '体は負けても、心は負けないで。', 'Sekalipun kamu kalah dengan tubuhmu, jangan kalah dengan hatimu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3142_kalah, '「何食べようか？」「あなたが決めてよ。私はじゃんけんに負けたんだから。」', '“Apa yang harus kita makan?” "Itu keputusanmu. Aku kalah dalam batu-gunting-kertas."');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3143_cocok, '勝負は引き分けだった。', 'Pertandingan itu seri.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3143_cocok, '今年は、私にとって勝負の年だと思っています。', 'Saya rasa tahun ini adalah tahun yang penuh tantangan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3143_cocok, 'これは一発勝負なので、全力を出して下さいね。', 'Anda hanya punya satu kesempatan untuk melakukan ini, jadi tolong berikan semuanya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3144_untuk_menang, 'トムはいつも実力で勝つ。', 'Tom selalu menang dengan keterampilan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3144_untuk_menang, '勝つために、たくさんトレーニングをしました。', 'Saya melakukan banyak latihan untuk menang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3144_untuk_menang, 'マリアはいつも勝つためにがんばっている。	', 'Maria selalu bekerja keras untuk menang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3145_pemenang, 'このレースの勝者はお金がもらえますよ。', 'Pemenang lomba ini akan mendapatkan sejumlah uang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3145_pemenang, '勝者だけが次のステージにすすめます。', 'Hanya pemenang yang dapat melanjutkan ke tahap berikutnya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3145_pemenang, '有名な大学に行ったら人生の勝者になれるだなんて考え方、古いですよ。', 'Gagasan bahwa kuliah di universitas terkenal akan membuat Anda menjadi pemenang dalam hidup adalah cara berpikir lama.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3146_tentu_kemenangan, 'プロポーズ必勝の本が今年のベストセラーになりそうです。', 'Buku tentang lamaran pernikahan yang sukses kemungkinan besar akan menjadi buku terlaris tahun ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3146_tentu_kemenangan, '姉は必勝すると思い、宝くじに二百万円もつかった。', 'Berpikir dia pasti akan menang, adikku menghabiskan 2.000.000 yen untuk lotere.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3146_tentu_kemenangan, 'この『パチンコ必勝マニュアル』で本当に勝てるのでしょうか？', 'Bisakah saya benar-benar menang jika saya menggunakan "Pachinko Surefire Win Manual" ini?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3147_kemenangan_mudah, '今回のテストは、楽勝だったね。', 'Tes ini sangat mudah.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3147_kemenangan_mudah, '「JLPT5はどうだった？」「ワニカニのおかげで、楽勝だったよ。」', '“Bagaimana JLPT5nya?” ''Berkat WaniKani, semuanya mudah sekali.''');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3147_kemenangan_mudah, 'あのゲームは楽勝すぎて、なんかつまらないんだよね。', 'Permainan itu sangat mudah sehingga agak membosankan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3148_untuk_mengirim_sesuatu, '毎年、年末には友人に手作りのポストカードを送る。', 'Setiap akhir tahun, saya mengirimkan kartu pos buatan tangan kepada teman-teman saya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3148_untuk_mengirim_sesuatu, 'さっきのビデオ、LINEで送るね。', 'Saya akan mengirimkan video dari sebelumnya melalui LINE.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3148_untuk_mengirim_sesuatu, '今日は、ここまでにしよう。家まで送るよ。', 'Anggap saja ini sehari. Aku akan mengantarmu pulang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3151_penting, '重要なのは、元気でいることです。', 'Yang penting sehat.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3151_penting, '小学生の時、私は学校で友達を作ることが重要だと思っていました。', 'Ketika saya masih di sekolah dasar, saya pikir penting untuk mendapatkan teman di sekolah.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3151_penting, 'それは、国民にとって重要なお知らせでした。', 'Itu adalah pengumuman penting bagi masyarakat.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3152_berat_badan, 'アンナさんの体重は、何キロですか？', 'Berapa berat badan Anna dalam kilogram?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3152_berat_badan, 'うちの犬は去年太ったが、必死のダイエットで一気に体重が下がりました。', 'Anjing kami menjadi gemuk tahun lalu, tetapi berat badannya turun sekaligus karena diet yang putus asa.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3152_berat_badan, 'すみません。この体重、コンタクトレンズの分も入ってますよね？', 'Permisi. Berat ini juga memperhitungkan lensa kontak saya, bukan?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3153_dobel, '分からない文字の下に、二重のラインを引いて下さい。', 'Harap buat garis ganda di bawah karakter yang Anda tidak yakin.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3153_dobel, 'この魚はニオイが強いので、ラップを二重にしておきますね。', 'Ikan ini baunya menyengat, jadi saya bungkus dua kali.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3153_dobel, 'これは、二重アゴをなくすためのエクササイズです。', 'Ini adalah latihan untuk menghilangkan dagu ganda.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3154_diperlukan, 'スーパーに行くけど、何か必要なものはありますか？', 'Aku akan pergi ke supermarket. Apakah Anda memerlukan sesuatu?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3154_diperlukan, 'バスをおりてから、少し歩く必要があります。', 'Anda perlu berjalan sedikit setelah turun dari bus.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3154_diperlukan, 'その服の山、本当に全部必要なんですか？', 'Apakah Anda benar-benar membutuhkan semua yang ada di tumpukan pakaian itu?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3155_poin_utama, '要点だけ先に言ってください。', 'Silakan sampaikan poin utamanya terlebih dahulu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3155_poin_utama, '早く要点を言ってよ！小さいことはどうでもいいの。', 'Langsung ke intinya! Saya tidak peduli dengan detail kecil.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3155_poin_utama, '文の要点が明らかでない時は、AIに助けてもらいます。', 'Jika maksud kalimatnya kurang jelas, mintalah bantuan AI.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3156_seandainya, '仮に明日雨だったら、ピクニックは中止になる。', 'Seandainya besok hujan, pikniknya dibatalkan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3156_seandainya, '仮に大学に入学できなかったら、父の会社に入社するのも一つの手だと思っています。', 'Secara hipotesis, jika saya tidak bisa masuk universitas, saya pikir bergabung dengan perusahaan ayah saya juga merupakan sebuah pilihan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3156_seandainya, '仮に、このベッドが草で出来ていたとしたら、牛たちに食べられてしまったかもしれないよ。', 'Jika tempat tidur ini terbuat dari rumput, mungkin saja sudah dimakan sapi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3157_kana, 'もう全ての仮名を学びましたか？', 'Sudahkah kamu mempelajari semua kana?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3157_kana, '仮名だけで書かれた文は、分かりにくいです。', 'Kalimat yang hanya ditulis dalam huruf kana sulit untuk dipahami.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3157_kana, 'この本には、ふり仮名がついてますか？', 'Apakah buku ini memiliki kana?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3158_anggapan, 'それは、仮定ではなく、本当のことです。', 'Ini bukanlah asumsi, tapi kebenaran.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3158_anggapan, 'たとえば、一ドル百円と仮定すると、一本一ドルのコカコーラは百円になりますよね？', 'Misalnya, jika kita mengatakan satu dolar adalah seratus yen, maka satu kaleng coca cola seharga $1 adalah seratus yen, bukan?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3158_anggapan, '仮定を立てる前に、もう一回しっかりと仮定を立てる理由を考えましょう。', 'Sebelum membuat hipotesis, pikirkan kembali alasan Anda membuat hipotesis.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3429_menjadi_bengkok, 'この道を右に曲がると、コンビニがあります。', 'Belok kanan di jalan ini dan Anda akan menemukan toko serba ada.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3429_menjadi_bengkok, '足首が曲がっている気がするんです。', 'Aku merasa pergelangan kakiku tertekuk.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3429_menjadi_bengkok, 'そのマスタード色のネクタイ、ちょっと曲がってるよ。', 'Dasi warna mustard Anda agak bengkok.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3430_amerika_selatan, 'ペルーは南米の国の一つです。', 'Peru merupakan salah satu negara di Amerika Selatan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3430_amerika_selatan, '学生時代に、バックパッカーとして南米に行きました。', 'Ketika saya masih pelajar, saya pergi ke Amerika Selatan sebagai backpacker.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3430_amerika_selatan, '南米は決して米国の一部ではありませんよ！', 'Amerika Selatan sama sekali bukan bagian dari Amerika Serikat!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3466_untuk_berpotongan, 'パーティで色々な人と交わるのが下手なんです。', 'Aku tidak pandai bergaul dengan berbagai orang di pesta.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3466_untuk_berpotongan, '二つの道が交わって、ここで一つの道になります。', 'Kedua jalan tersebut berpotongan dan menjadi satu jalan di sini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3466_untuk_berpotongan, 'トーフグは、アメリカと日本の文化が交わった会社です。', 'Tofugu adalah perusahaan tempat budaya Amerika dan Jepang berbaur.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3469_sekolah_dasar, '私は小学校の先生です。', 'Saya seorang guru sekolah dasar.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3469_sekolah_dasar, 'この町の小学校には、外国生まれの生徒もたくさんいますよ。', 'Ada banyak siswa kelahiran asing di sekolah dasar di kota ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3469_sekolah_dasar, '小学校の子どもたちに、絵本をよむボランティアの会に入ってます。', 'Saya berada di klub sukarelawan yang membacakan buku bergambar untuk anak-anak sekolah dasar.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3469_sekolah_dasar, '小学校の時から、君のこと、ずっと気になっていたんだ。', 'Aku tertarik padamu sejak kita masih di sekolah dasar.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3470_jalan, 'この通りを右に行って下さい。', 'Belok kanan di jalan ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3470_jalan, '下町の通りには、たくさんのお店が有って、一日中、人々が行ったり来たりします。', 'Jalanan di kawasan Shitamachi dipenuhi banyak toko, dan orang-orang datang dan pergi sepanjang hari.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3470_jalan, '東京には、「竹下通り」という名の通りがあって、中学生や高校生に人気です。', 'Ada jalan bernama "Jalan Takeshita" di Tokyo yang populer di kalangan siswa SMP dan SMA.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3471_hati_hati, 'ストーブの火に気を付けて下さい。', 'Harap berhati-hati terhadap api di pemanas.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3471_hati_hati, '今日は雨かもしれないから、外出する時は気を付けてレインコートをもってね。', 'Hari ini mungkin akan turun hujan, jadi berhati-hatilah dan bawalah jas hujan saat keluar.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3471_hati_hati, 'この国の大きな町では、スリが多いから気を付けてね。', 'Hati-hati di kota besar tanah air, karena banyak pencopetnya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3471_hati_hati, '辺りは明るくないので、足元に気を付けて下さい。', 'Tidak banyak cahaya di sekitar sini, jadi berhati-hatilah.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3472_baru, 'この本は新しいです。', 'Buku ini baru.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3472_baru, '新しいアパートはきれいだし、広いし、会社からも近いんですよ。', 'Apartemen baru bersih, luas, dan dekat dengan perusahaan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3472_baru, 'ごめんなさい。この白いシャツまだ新しいので、今日は赤ワインじゃなくて白ワインでもいいですか？', 'Maaf, kemeja putih ini masih baru, jadi hari ini bisakah kami mendapatkan anggur putih sebagai pengganti anggur merah?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3473_siswa_sma, '私の弟は高校生です。', 'Adik laki-laki saya adalah seorang siswa sekolah menengah.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3473_siswa_sma, '高校生の時は、テニス部に入ってました。', 'Ketika saya masih di sekolah menengah, saya berada di klub tenis.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3473_siswa_sma, '今日は、高校生たちが、このパン工場の見学に来ます。パン工場の本気を見せましょう！', 'Saat ini, siswa sekolah menengah datang untuk mengunjungi pabrik roti ini. Mari kita tunjukkan kepada mereka apa yang bisa dilakukan oleh pabrik roti!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3474_sekolah_menengah, 'このコンビニには中学校の生徒がよく来ます。', 'Siswa SMP sering datang ke minimarket ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3474_sekolah_menengah, '中学校には茶道のクラブもありますよ。', 'Ada juga klub upacara minum teh di sekolah menengah pertama.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3474_sekolah_menengah, '中学校の時の先生のおかげで、空手をはじめたんです。', 'Berkat guru SMP saya, saya mulai karate.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3475_untuk_dilampirkan, 'この手紙には、まだ切手が付いてないですよ。', 'Surat ini belum ada stempelnya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3475_untuk_dilampirkan, 'あーあ。白いティシャツにケチャップが付いちゃった。', 'Ugh, ada saus tomat di kaos putihku.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3475_untuk_dilampirkan, 'あなたの耳たぶに付いてるそれ、何？', 'Benda apa yang menempel di daun telingamu itu?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3476_untuk_menemukan, '私の母を見付けることが出来ますか？', 'Bisakah kamu menemukan ibuku?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3476_untuk_menemukan, '先日、あの木の下で宝石を見付けたんです。', 'Suatu hari, saya menemukan permata di bawah pohon itu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3476_untuk_menemukan, '今日は、自分の気に入った本を見付けることが出来たので、よかったです。', 'Saya senang bisa menemukan buku yang saya sukai hari ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3477_orang_lemah, '弟は弱虫だと言われている。', 'Orang bilang adikku pengecut.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3477_orang_lemah, '気は強いけど、ちょっと弱虫な男がタイプです。', 'Tipeku adalah pria dengan kemauan kuat tapi sedikit lemah.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3477_orang_lemah, '弱虫だって毛虫だってなんだって、君は君のままでいいよ。', 'Tidak peduli siapa Anda — apakah Anda pengecut, atau bahkan ulat bulu, Anda harus tetap apa adanya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3478_tampak_lemah, '主人は弱々しい体ながら全力で走った。', 'Suamiku berlari sekuat tenaga, meski tubuhnya terlihat lemah.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3478_tampak_lemah, 'その車両は弱々しいエンジン音を立てていた。', 'Kendaraan itu mengeluarkan suara mesin yang lemah.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3478_tampak_lemah, '母は弱々しい声で、おばあちゃんに「ゆっくり、休んで」と言った。', 'Ibu saya dengan suara lemah berkata kepada neneknya, “Luangkan waktu untuk istirahat.”');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3479_untuk_terkelupas, 'マグカップの口の所が欠けてしまった。', 'Mulut mugnya terkelupas.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3479_untuk_terkelupas, '夕べの月、少しだけ欠けてましたね。', 'Bulan sedikit kurang dari purnama tadi malam.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3479_untuk_terkelupas, 'うちのおじいちゃんは、よくデリカシーに欠ける失礼な事を言います。', 'Kakek saya sering mengatakan hal-hal yang kasar dan kurang halus.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3483_tinggi, 'あのアパートの高さは三十メートルです。', 'Ketinggian apartemen itu tiga puluh meter.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3483_tinggi, 'ギャグセンの高さでは、どうしてもコウイチとマイケルには勝てないよ。', 'Saya tidak pernah bisa mengalahkan Koichi dan Michael dalam hal tingkat humor mereka.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3483_tinggi, 'ふじ山には、高さだけでなく、美しさもある。', 'Gunung Fuji tidak hanya memiliki ketinggian tetapi juga keindahan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3514_hitam_dan_putih, '七十年前、テレビは白黒でした。', 'Tujuh puluh tahun yang lalu, TV berwarna hitam putih.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3514_hitam_dan_putih, '白黒ハッキリつけようぜ。', 'Mari kita jelaskan secara hitam-putih.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3514_hitam_dan_putih, 'カナエちゃん、今日の全身白黒の服は、ちょっとパンダみたいじゃない？', 'Kanae-chan, bukankah kamu terlihat seperti panda dalam pakaian hitam putih hari ini?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3523_untuk_mengembalikan_sesuatu, '今日は、父に車のお金を返す日です。', 'Hari ini adalah hari saya mengembalikan uang mobil kepada ayah saya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3523_untuk_mengembalikan_sesuatu, '本を返したいんだけど、明日は家にいる？', 'Saya ingin mengembalikan buku Anda. Apakah kamu pulang besok?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3523_untuk_mengembalikan_sesuatu, '「昨日あげたクッキー返してくれない？」「えっ、口から出せってこと？」', '"Bisakah kamu mengembalikan kue yang kuberikan padamu kemarin?" "Hah? Maksudmu, aku harus meludahkannya?"');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3525_rekaman, 'すごくいい映像ですね。', 'Itu rekaman yang sangat bagus.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3525_rekaman, 'この映像は小さい子には見せられないね。', 'Ya, kami tidak dapat menampilkan video ini kepada anak-anak kecil.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3525_rekaman, 'YouTubeのマイケルの映像、もう見た？', 'Apakah Anda sudah menonton video Michael di YouTube?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3525_rekaman, 'あの映像、ちょっとトラウマになっちゃいました。', 'Video itu menjadi sedikit traumatis bagi saya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3525_rekaman, 'その映画、ストーリーはイマイチだけど、映像がめっちゃ美しいんですよ。', 'Cerita filmnya biasa-biasa saja, tapi visualnya luar biasa indah.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3525_rekaman, '映画リングを見てからというもの、古イドからさだ子が出てくる映像がアタマからはなれないんです。', 'Sejak saya menonton Ringu, saya tidak bisa melupakan gambaran Sadako yang keluar dari sumur tua itu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3526_gambar, 'おもしろい画像ですね。', 'Itu gambaran yang menarik.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3526_gambar, 'この画像、ちょっとぼやけてるね。', 'Gambar ini agak buram, bukan?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3526_gambar, 'あとで画像を送るよ！', 'Saya akan mengirimkan gambarnya nanti!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3526_gambar, '画像データはどこにありますか？', 'Di manakah lokasi data gambar?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3526_gambar, '今、画像をダウンロードしています。', 'Saya sedang mengunduh gambarnya sekarang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3803_menyimpan, '高いクオリティを保持するのは工場にとって大切なことです。', 'Penting bagi pabrik untuk menjaga kualitas yang tinggi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3803_menyimpan, '今年も全米タイトルを保持しました。', 'Saya juga mempertahankan gelar AS tahun ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3803_menyimpan, 'データは一ヶ月保持された後は、全てなくなります。', 'Datanya akan disimpan selama satu bulan, lalu hilang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3806_asuransi_jiwa, 'さっき生保のセールスマネジャーが家に来ましたよ。', 'Seorang manajer penjualan asuransi jiwa pulang lebih awal.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3806_asuransi_jiwa, '亡くなった主人の生保のお金は、一体いつもらえるんですか？', 'Kapan sih saya bisa mendapatkan uang dari asuransi jiwa almarhum suami saya?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3806_asuransi_jiwa, '生保に入れば、万が一自分に何かあったとしても安心です。', 'Jika Anda membeli asuransi jiwa, Anda akan merasa tenang jika terjadi sesuatu pada Anda.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3807_untuk_melestarikan_sesuatu, '体力を保つには毎日トレーニングしなくてはいけません。', 'Untuk menjaga kekuatan fisik, Anda harus berlatih setiap hari.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3807_untuk_melestarikan_sesuatu, '元気な心を保つために、ヨガやメディテーションをします。', 'Saya melakukan yoga dan meditasi untuk menjaga kesehatan jantung.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3807_untuk_melestarikan_sesuatu, 'ヘルシーな生活を送って、今の体重を保ちたいと思います。', 'Saya ingin hidup sehat dan menjaga berat badan saya saat ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4147_untuk_mencoba_melakukan_sesuatu, '今日は、やり方を試みる。', 'Hari ini saya akan mencoba metode ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4147_untuk_mencoba_melakukan_sesuatu, '女スパイは、バーで男の人に近づくことを試みた。', 'Mata-mata wanita itu berusaha mendekati pria di bar.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4147_untuk_mencoba_melakukan_sesuatu, '新しいアプローチを試みる事に決めました。', 'Saya memutuskan untuk mencoba pendekatan baru.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4150_contoh_makanan, '先ずは何も言わないで試食してみて。', 'Pertama, cicipi saja tanpa berkata apa-apa.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4150_contoh_makanan, '試食の後、買う気を失ったんです。', 'Saya kehilangan minat untuk membeli ini setelah mencicipinya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4150_contoh_makanan, 'コストコには試食のサンプルを食べるために行くようなものです。', 'Ini hampir seperti saya pergi ke Costco untuk memakan sampel makanan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4162_pengalaman, '海外へ一人でバックパッキングに行ったのは、すばらしい体験でした。', 'Sungguh pengalaman yang luar biasa pergi backpacking ke luar negeri sendirian.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4162_pengalaman, 'スタッフ全員、九州でじゃがいも作りと言う一生に一回の体験をしました。', 'Semua staf kami memiliki pengalaman menanam kentang sekali seumur hidup di Kyushu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4162_pengalaman, 'インターンをするというのは、体験入社をするようなものです。', 'Melakukan magang ibarat melakukan trial run di perusahaan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4163_mengikuti_ujian, '大学受験のために、毎日勉強しています。', 'Saya belajar setiap hari untuk ujian masuk universitas.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4163_mengikuti_ujian, '受験の不安とストレスが大きい一年でした。', 'Itu adalah tahun yang penuh kecemasan dan stres dalam menghadapi ujian.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4163_mengikuti_ujian, '受験がうまくいけば、新しいゲームを買ってもらえるんです。', 'Jika ujianku berjalan lancar, mereka akan membelikanku permainan baru.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4164_percobaan, 'これは科学の実験です。', 'Ini adalah eksperimen sains.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4164_percobaan, '実験を行う時は、安全のために必ずヘルメットをして下さい。', 'Saat melakukan percobaan, pastikan untuk memakai helm untuk keselamatan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4164_percobaan, 'これから、お母さんは何と言ったらお金をくれるのか、実験したいと思います。', 'Sekarang, saya ingin mencoba eksperimen untuk melihat apa yang harus saya katakan agar ibu saya memberi saya uang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4165_penyelidikan, 'あれ、JLPTの試験、明日だっけ？今、思い出した。', 'Oh, besok ujian JLPT? Saya baru ingat.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4165_penyelidikan, '「ところで、試験はどうだった？」「パパ、しずかにして。」', '“Ngomong-ngomong, bagaimana ujiannya?” "Ayah, diamlah."');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4165_penyelidikan, '試験のためにカンニングペーパーを作っています。', 'Saya sedang membuat lembar contekan untuk ujian.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4215_sejarah, '日本の歴史について教えてください。', 'Ceritakan tentang sejarah Jepang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4215_sejarah, 'そのころは、高校の歴史の先生になりたいと思っていたんです。', 'Sekitar waktu itu, saya ingin menjadi guru sejarah di sekolah menengah.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4215_sejarah, 'このおばあさんは、トーフグの歴史を一番よく知っています。', 'Nenek ini mengetahui sejarah Tofugu lebih baik dari siapapun.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4215_sejarah, 'アダムは歴史上の人物について、とってもくわしいんです。', 'Adam memang tahu banyak tentang tokoh sejarah.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4219_kontras, '日本の生活とアメリカの生活じゃ、いい対比にならないよ。', 'Kehidupan orang Jepang dan kehidupan orang Amerika bukanlah perbandingan yang baik.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4219_kontras, 'では、この魚とその魚を対比してみましょう。', 'Sekarang mari kita bandingkan ikan ini dengan ikan itu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4219_kontras, '日本とアメリカの映画のポスターを対比してみました。', 'Saya membandingkan poster film Jepang dan Amerika.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4376_pengumuman, 'それでは、発表します。スピーチコンテストの勝者は田中さんです！', 'Sekarang untuk pengumumannya. Pemenang lomba pidato adalah Pak Tanaka!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4376_pengumuman, '大学のプレゼンテーション発表会に参加しました。', 'Saya berpartisipasi dalam konferensi presentasi universitas.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4376_pengumuman, '社長が会社とスタッフにとって、とても大切な発表をしたいそうです。', 'Rupanya, presiden ingin menyampaikan pengumuman yang sangat penting bagi perusahaan dan stafnya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4377_untuk_mengekspresikan_sesuatu, 'データは全てを表す。', 'Data menunjukkan segalanya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4377_untuk_mengekspresikan_sesuatu, 'この赤い玉は、「日の丸」と言って、日の出を表しています。', 'Bola merah ini disebut "hinomaru" dan melambangkan matahari terbit.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4377_untuk_mengekspresikan_sesuatu, '先生へのお礼を表すために、クッキーを作ったんです。', 'Aku membuat kue untuk mengungkapkan rasa terima kasihku padamu, Sensei.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4380_keberangkatan, '出発まで五分です。', 'Ada lima menit lagi sampai keberangkatan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4380_keberangkatan, '二週間後に、東京に出発する予定です。', 'Aku akan berangkat ke Tokyo dalam dua minggu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4380_keberangkatan, 'フェリーが出発するまでの時間、お茶でものみましょうよ。', 'Mari kita minum teh sampai feri berangkat.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6790_pedas, '「やばい〜！めっちゃ辛い～！でも、このカレーすっげ〜美味しい！」', '"Ya ampun! Mulutku terbakar, tapi kari ini enak sekali!"');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6790_pedas, '私、辛いものは食べれないんです。', 'Saya tidak bisa makan makanan pedas.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6790_pedas, 'え、そんなことがあったの？それは辛いね。', 'Oh, itu yang terjadi? Itu sulit.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6792_moster, 'やっぱりオデンには辛子でしょ。', 'Kalau soal oden, mustard Jepang adalah suatu keharusan, bukan?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6792_moster, '辛子、チューブのやつしかないけどいい？', 'Saya hanya punya mustard Jepang dalam bentuk tabung, tapi bolehkah?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6792_moster, '辛子もマスタードも、同じカラシナのタネから作られます。', 'Mustard Jepang dan mustard Barat dibuat dari biji tanaman yang sama, yaitu sawi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6792_moster, '「それですか？ただの辛子ですよ」と女は言った。その後、小声で「たぶん…」と付け足した。', '"Itu? Itu hanya mustard," kata wanita itu. Kemudian, dengan suara rendah, dia menambahkan, "Mungkin..."');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7149_toko_buku, '先日、友人と本屋に行きました。', 'Suatu hari, saya pergi ke toko buku bersama seorang teman.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7149_toko_buku, '三日前、本屋で有名な作家の本を買いました。', 'Tiga hari yang lalu, saya membeli buku karya seorang penulis terkenal di toko buku.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7149_toko_buku, '私は新しい本を買うために、前の日から本屋の前でキャンプをしました。', 'Saya berkemah di depan toko buku sehari lebih awal untuk membeli buku baru.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7460_semua, 'リンゴを全部買うつもりです。', 'Saya akan membeli semua apel.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7460_semua, '全部の科目のテストで良いスコアでした。', 'Saya mendapat nilai ujian yang bagus di semua mata pelajaran.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7460_semua, '私のベーコンクッキー全部食べたのは一体だれ！？', 'Siapa yang memakan semua kue baconku?!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7464_malaikat, '子犬は天使みたいでした。', 'Anak anjing itu seperti malaikat.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7464_malaikat, 'コウイチ君は、天使のようなスマイルがチャームポイントです。', 'Yang menarik dari Koichi adalah senyuman bidadarinya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7464_malaikat, '本当に、あなた天使なんですか？', 'Apakah kamu benar-benar malaikat?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7464_malaikat, '天使は毎週やって来た。ただし来るのはゴミの日だけだった。', 'Malaikat itu datang setiap minggu. Tapi hanya pada hari sampah.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7475_tahun_baru, '新年に大きいセールを行います。', 'Kami akan mengadakan penjualan besar di tahun baru.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7475_tahun_baru, '新年になると、多くの人が一年のゴールを立てます。', 'Di awal tahun baru, banyak orang menetapkan tujuan di tahun tersebut.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7475_tahun_baru, '新年は、宝くじを買う人が多いです。', 'Di tahun baru, banyak orang membeli tiket lotre.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7478_untuk_membutuhkan, '考えるのに、もっと時間が要る。', 'Saya perlu lebih banyak waktu untuk berpikir.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7478_untuk_membutuhkan, 'ふくろは要りますか？', 'Apakah Anda membutuhkan tas?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7478_untuk_membutuhkan, 'これは要る物と要らない物のリストです。', 'Ini adalah daftar hal-hal yang Anda perlukan dan apa yang tidak Anda perlukan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7487_bicara, '工学と心理学の学者の対談のイベントに行きました。', 'Saya menghadiri sebuah acara untuk berdiskusi antara pakar teknik dan psikologi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7487_bicara, '先週、有名な作家と天才モダンアーティストとの対談が行われました。', 'Minggu lalu, diadakan diskusi antara seorang penulis terkenal dan seniman modern yang jenius.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7487_bicara, '今月号には、私の対談がのってるはずです。', 'Edisi bulan ini seharusnya memuat wawancara saya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7533_bagian, 'この部分を見て下さい。', 'Silakan lihat bagian ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7533_bagian, '台風の影響で、水道の一部分が止まっています。', 'Sebagian pasokan air terhenti akibat topan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7533_bagian, 'ビデオのこの一部分だけカットしてもらえますか？', 'Bisakah Anda memotong satu bagian saja dari video?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7571_tidak_nyaman, '母は足が不自由なので、車をつかうことが多いです。', 'Ibu saya cacat kaki, jadi dia sering menggunakan mobil.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7571_tidak_nyaman, 'ここは、おじいちゃん・おばあちゃん、体の不自由な方のためのベンチです。', 'Ini adalah bangku untuk kakek, nenek, dan penyandang disabilitas fisik.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7571_tidak_nyaman, '不自由な生活を送っている人々をサポートするために、国民全員が助力するべきです。', 'Setiap warga negara harus membantu mendukung mereka yang hidup dengan disabilitas.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7572_pengajaran, '「毎日全力で生きる」というのは、父からの教えです。', '"Hidup setiap hari semaksimal mungkin" adalah ajaran ayah saya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7572_pengajaran, 'それは、すばらしい教えですね。', 'Ini merupakan pelajaran yang sangat bagus, bukan?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7572_pengajaran, 'うちの子は、マナーに対する教えが足りず、失礼なことがあったらすみません。', 'Anak saya belum cukup diajarkan tentang sopan santun, dan saya minta maaf jika mereka bersikap kasar.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7573_bagian_depan, 'この紙の表はピンク色にぬってください。', 'Silakan cat bagian depan kertas ini dengan warna merah muda.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7573_bagian_depan, '十円玉コインの表はどちらですか？', 'Sisi mana dari koin sepuluh yen yang bagian depannya?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7573_bagian_depan, 'コウイチは、トーフグの社長です。表向きは。', 'Koichi adalah presiden Tofugu. Secara resmi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7625_lingkungan, 'この付近に、コンビニはありますか？', 'Apakah lingkungan ini memiliki toko serba ada?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7625_lingkungan, '付近にいた医者が助けてくれました。', 'Seorang dokter terdekat membantu saya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7625_lingkungan, '山の付近ではヘビに気をつけて下さい。', 'Harap berhati-hati terhadap ular di dekat pegunungan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7682_berapa_kali, 'この曲は一年に何度も思い出す名曲です。', 'Lagu ini adalah mahakarya yang saya ingat berkali-kali dalam setahun.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7682_berapa_kali, '同じレストランで同じものをオーダーしたことが何度もあります。', 'Saya telah memesan hal yang sama di restoran yang sama berkali-kali.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7682_berapa_kali, '何度もファンレターを出したけど、中々返事が来ない。', 'Aku menulis surat penggemar berkali-kali, tapi aku tidak mendapat balasan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7683_renang, 'マイケルは魚よりも泳ぎが上手です。', 'Renang Michael lebih baik dari pada ikan!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7683_renang, 'プロの先生に泳ぎのフォームを正してほしいです。', 'Saya ingin instruktur profesional memperbaiki bentuk renang saya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7683_renang, 'すばらしい泳ぎでしたよ。', 'Itu adalah renang yang luar biasa.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7684_artikel, 'この記事の作者は、アメリカ人ジャーナリストです。', 'Penulis artikel ini adalah seorang jurnalis Amerika.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7684_artikel, '外交についての記事があまりない。', 'Tidak banyak artikel tentang diplomasi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7684_artikel, '今月号の記事はデタラメばっかりだよ。', 'Artikel-artikel terbitan bulan ini penuh dengan omong kosong.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7740_api, '火事だ！！', 'Api!!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7740_api, '火事にならないよう、タバコの火には気をつけて下さいね。', 'Harap berhati-hati dengan rokok yang menyala agar tidak menimbulkan kebakaran.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7740_api, '昨日、３丁目で火事があったそうです。死者やケガ人は出ませんでした。', 'Sepertinya ada kebakaran di 3-chome kemarin. Tidak ada kematian atau cedera.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7741_membiarkan_sesuatu_lewat, 'ガラスは光を通します。', 'Kaca memungkinkan cahaya melewatinya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7741_membiarkan_sesuatu_lewat, 'お肉には、しっかり火を通してください。', 'Harap masak daging sampai matang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7741_membiarkan_sesuatu_lewat, '会ったばかりの他人を家に通しちゃダメです。', 'Jangan biarkan orang asing yang baru Anda temui masuk ke rumah Anda.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8701_makhluk_hidup, '海の中には、色々な生物がいます。', 'Ada berbagai macam makhluk di laut.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8701_makhluk_hidup, 'あの生物は一体何だったんでしょう。', 'Aku ingin tahu makhluk apa itu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8701_makhluk_hidup, '前回の生物のクラスのノート、見せてくれないかな。', 'Saya ingin tahu apakah Anda dapat menunjukkan kepada saya catatan Anda dari kelas biologi terakhir.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8702_tugas_rumah, '大体の家事はハウスキーパーの方がしてくれます。', 'Pengurus rumah tangga mengurus sebagian besar pekerjaan rumah.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8702_tugas_rumah, '家事のせいで、テレビを見る時間が不足していると思っています。', 'Saya rasa saya tidak punya cukup waktu untuk menonton TV karena pekerjaan rumah.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8702_tugas_rumah, '元々私は家事に向いてないので、毎日時間がかかってしまいます。', 'Pekerjaan rumah tangga bukanlah keahlian bawaan saya, jadi saya membutuhkan waktu setiap hari.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8800_menandai, '村の入り口にお札がたくさんありました。', 'Ada banyak jimat di pintu masuk desa.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8800_menandai, '自分の札を見せないようにした方がいいよ。', 'Anda harus berhati-hati untuk tidak menunjukkan tangan Anda.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8800_menandai, '空室の札がかかってたので、ノックしなかったんです。', 'Saya tidak mengetuk karena label kamar kosong digantung.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8802_menggunakan, 'このトイレは使用中です。', 'Toilet ini sedang ditempati.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8802_menggunakan, 'プールにどれくらいの水を使用されているか知ってますか？', 'Tahukah Anda berapa banyak air yang digunakan dalam sebuah kolam?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8802_menggunakan, 'この字はワニカニでやったので知っています。でも、使用したことはほとんどないですね。', 'Saya mengetahui karakter ini karena saya mempelajarinya di WaniKani. Tapi saya hampir tidak pernah punya kesempatan untuk menggunakannya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8812_rasa_pedas, 'カレーはいつも辛口を買います。', 'Kalau saya beli kari, saya selalu beli yang pedas.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8812_rasa_pedas, 'アサヒスーパードライはシャープなのどごしの辛口ビールです。', 'Asahi Super Dry adalah bir kering yang memiliki rasa tajam dan renyah saat masuk ke tenggorokan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8812_rasa_pedas, 'みんなは辛口コメントだったけど、私はこのドラマの大ファンです。', 'Semua orang memberikan pendapat yang kasar, tapi sebenarnya saya adalah penggemar berat drama ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9020_asal_usul_seseorang, '私はマレーシア出身です。', 'Saya dari Malaysia.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9020_asal_usul_seseorang, '青森出身なので、九州の方言は分かりません。', 'Saya dari Aomori, jadi saya tidak tahu dialek Kyushu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9020_asal_usul_seseorang, 'この本の作者は私と同じ場所の出身なんです。', 'Penulis buku ini berasal dari tempat yang sama dengan saya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9020_asal_usul_seseorang, 'あなたのご主人はどこの出身なんですか？', 'Suamimu dari mana?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9078_mengubah, 'ラグビーなど、多くのスポーツで交代のルールがあります。', 'Di banyak cabang olahraga, seperti rugbi, terdapat aturan pergantian pemain.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9078_mengubah, '父と母は毎日交代で夜ごはんを作ります。', 'Ayah dan ibuku bergiliran membuat makan malam setiap hari.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9078_mengubah, '先日、十六年ぶりに社長交代がありました。', 'Suatu hari, terjadi pergantian presiden perusahaan untuk pertama kalinya dalam enam belas tahun.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9078_mengubah, 'そろそろ交代してもらえませんか？', 'Bisakah Anda segera menggantikan saya?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9082_karate, 'こちらは私の空手の先生、ジェフ先生です。', 'Ini guru karate saya, Jeff-sensei.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9082_karate, '大学でも空手をやりたいと思ってます。', 'Saya ingin melakukan karate di universitas juga.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9082_karate, '近くのスポーツセンターに、新しく空手の道場ができたそうですよ。', 'Tampaknya ada dojo karate baru di pusat olahraga terdekat.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9142_semula, 'このホテルは元々アパートだったんです。', 'Hotel ini awalnya adalah sebuah apartemen.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9142_semula, 'あのモデルさんって、元々はデザイナーだったんでしょ？', 'Model itu dulunya seorang desainer, bukan?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9142_semula, '元々この家にはトイレもキッチンもあったんです。', 'Rumah ini awalnya memiliki kamar mandi dan dapur di dalamnya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9145_meyakinkan, 'これは心強いデータですね！', 'Ini adalah data yang menggembirakan!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9145_meyakinkan, 'プロのプレイヤーがパートナーになってくれるなんて、心強いです。', 'Sangat meyakinkan untuk memiliki pemain profesional sebagai mitra saya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9145_meyakinkan, '先生の助言は、私たち学生にとって心強いサポートとなりました。', 'Nasehat guru menjadi dukungan yang menenteramkan bagi siswa kami.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9237_sudut, 'この家では父が弱い立場にいます。', 'Di rumah ini, posisi ayah berada dalam posisi yang lemah.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9237_sudut, '私はそんなこと言える立場じゃありません。', 'Saya tidak dalam posisi untuk mengatakan hal seperti itu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9237_sudut, 'ユーザーの立場から言うと、このアプリは高すぎます。', 'Dari sudut pandang pengguna, aplikasi ini terlalu mahal.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9261_untuk_turun, 'あとはそのまま来た道を下るだけだ。', 'Setelah itu, kita tinggal kembali ke jalan semula.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9261_untuk_turun, 'スケボーに乗った男が山を下っていった。', 'Seorang pria yang mengendarai skateboard meluncur menuruni gunung.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9261_untuk_turun, '日本では、北に行くことを「上る」、南に行くことを「下る」と言うことがあります。', 'Di Jepang, ada konsep yang menyebut pergi ke utara sebagai "naik" dan pergi ke selatan sebagai "turun".');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9279_untuk_menerima_sesuatu, '海外から年金を受け取る方法ってありますか？', 'Apakah ada cara untuk menerima pensiun dari luar negeri?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9279_untuk_menerima_sesuatu, '明日出発なのにまだチケットを受け取ってないんです。', 'Saya belum menerima tiket saya, padahal saya akan berangkat besok.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9279_untuk_menerima_sesuatu, '家にいるから、アマゾンのパッケージ、代わりに受け取っておくよ。', 'Karena saya di rumah, saya akan menerima paket Amazon atas nama Anda.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9286_satu_bulan, 'クリスマスまであと一ヶ月ですね！', 'Satu bulan lagi menuju Natal!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9286_satu_bulan, '一ヶ月半、日本で学校に行くんです。', 'Saya akan bersekolah di Jepang selama satu setengah bulan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9286_satu_bulan, '一ヶ月間、家から出ずにゲームをした。', 'Saya bermain game di rumah tanpa keluar selama sebulan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9287_penghitung_selama_berbulan_bulan, '日本の学校の夏休みは一ヶ月しかありません。', 'Sekolah-sekolah di Jepang hanya mempunyai satu bulan libur musim panas.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9287_penghitung_selama_berbulan_bulan, 'これが出来上がるまでに数ヶ月かかりました。', 'Butuh beberapa bulan untuk menyelesaikannya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9287_penghitung_selama_berbulan_bulan, '赤ちゃん、今何ヶ月ですか？', 'Berapa bulan umur bayinya?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9287_penghitung_selama_berbulan_bulan, 'うちの子は八ヶ月でハイハイをして、九ヶ月で歩き出しました。', 'Anak saya mulai merangkak pada usia delapan bulan dan mulai berjalan pada usia sembilan bulan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9300_sepuluh_menit, 'ここで十分間休みましょう。', 'Mari kita istirahat di sini selama sepuluh menit.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9300_sepuluh_menit, '十分間だけゲームしていい？', 'Bisakah saya bermain game hanya selama sepuluh menit?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9300_sepuluh_menit, '十分間あれば出来ると思いますよ。', 'Saya rasa saya bisa melakukannya jika saya punya sepuluh menit.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9351_negara_tropis, '南国は一年中あたたかいです。', 'Negara-negara tropis hangat sepanjang tahun.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9351_negara_tropis, '私は南国で生まれました。', 'Saya lahir di negara tropis.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9351_negara_tropis, '南国のフルーツはとてもあまいです。', 'Buah-buahan di wilayah selatan sangat manis.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9354_angin_selatan, 'あたたかい南風がふいています。', 'Angin selatan yang hangat bertiup.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9354_angin_selatan, '南風で花がゆれています。', 'Bunganya bergoyang tertiup angin selatan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9354_angin_selatan, '今日は南風が気もちいいです。', 'Angin selatan terasa menyenangkan hari ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9510_sejarah_jepang, 'この日本史の先生のおかげで、少しだけ日本史がキライじゃなくなったんです。', 'Berkat guru sejarah Jepang ini, rasa tidak suka saya terhadap sejarah Jepang mulai berkurang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9510_sejarah_jepang, '日本史のテストでは、心の中で「何年だっけ？」「だれだっけ？」を千回ぐらいつぶやいてます。', 'Saat ujian sejarah Jepang, pada dasarnya saya berbisik, "Tahun berapa lagi?" dan "Siapa itu tadi?" di kepalaku sekitar seribu kali.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9510_sejarah_jepang, '日本史について学ぶつもりだったのに、気づいたらひたすら刀についてAIとおしゃべりしていた。', 'Aku seharusnya belajar tentang sejarah Jepang, tapi sebelum aku menyadarinya, aku hanya mengobrol tanpa henti dengan AI tentang pedang.');

  -- 4. PREREQUISITES
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_587_menjual, id FROM items WHERE type = 'radical' AND (slug = '97' OR id = '97') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_587_menjual, id FROM items WHERE type = 'radical' AND (slug = '76' OR id = '76') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_587_menjual, id FROM items WHERE type = 'radical' AND (slug = '28' OR id = '28') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_708_kejadian, id FROM items WHERE type = 'radical' AND (slug = '15' OR id = '15') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_708_kejadian, id FROM items WHERE type = 'radical' AND (slug = '16' OR id = '16') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_708_kejadian, id FROM items WHERE type = 'radical' AND (slug = '105' OR id = '105') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_709_menggunakan, id FROM items WHERE type = 'radical' AND (slug = '75' OR id = '75') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_709_menggunakan, id FROM items WHERE type = 'radical' AND (slug = '1' OR id = '1') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_709_menggunakan, r_167_sejarah);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_710_alat, id FROM items WHERE type = 'radical' AND (slug = '53' OR id = '53') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_710_alat, id FROM items WHERE type = 'radical' AND (slug = '1' OR id = '1') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_710_alat, id FROM items WHERE type = 'radical' AND (slug = '2' OR id = '2') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_711_menerima, r_8772_cleat);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_711_menerima, id FROM items WHERE type = 'radical' AND (slug = '76' OR id = '76') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_711_menerima, id FROM items WHERE type = 'radical' AND (slug = '30' OR id = '30') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_712_perdamaian, id FROM items WHERE type = 'radical' AND (slug = '135' OR id = '135') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_712_perdamaian, id FROM items WHERE type = 'radical' AND (slug = '16' OR id = '16') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_714_menentukan, id FROM items WHERE type = 'radical' AND (slug = '78' OR id = '78') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_714_menentukan, r_420_rak_mantel);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_715_kebenaran, id FROM items WHERE type = 'radical' AND (slug = '78' OR id = '78') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_715_kebenaran, r_8779_musim_semi);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_716_pakaian, id FROM items WHERE type = 'radical' AND (slug = '43' OR id = '43') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_716_pakaian, id FROM items WHERE type = 'radical' AND (slug = '145' OR id = '145') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_716_pakaian, id FROM items WHERE type = 'radical' AND (slug = '30' OR id = '30') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_717_berenang, id FROM items WHERE type = 'radical' AND (slug = '103' OR id = '103') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_717_berenang, r_8820_keabadian);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_718_benda, id FROM items WHERE type = 'radical' AND (slug = '126' OR id = '126') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_718_benda, id FROM items WHERE type = 'radical' AND (slug = '173' OR id = '173') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_719_menderita, id FROM items WHERE type = 'radical' AND (slug = '90' OR id = '90') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_719_menderita, id FROM items WHERE type = 'radical' AND (slug = '69' OR id = '69') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_720_cepat, id FROM items WHERE type = 'radical' AND (slug = '9452' OR id = '9452') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_720_cepat, id FROM items WHERE type = 'radical' AND (slug = '8770' OR id = '8770') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_721_bagian, r_175_badut);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_721_bagian, r_176_bangunan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_722_mengendarai, id FROM items WHERE type = 'radical' AND (slug = '135' OR id = '135') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_722_mengendarai, id FROM items WHERE type = 'radical' AND (slug = '16' OR id = '16') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_723_tamu, id FROM items WHERE type = 'radical' AND (slug = '78' OR id = '78') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_723_tamu, id FROM items WHERE type = 'radical' AND (slug = '60' OR id = '60') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_723_tamu, id FROM items WHERE type = 'radical' AND (slug = '16' OR id = '16') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_724_atap, id FROM items WHERE type = 'radical' AND (slug = '37' OR id = '37') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_724_atap, id FROM items WHERE type = 'radical' AND (slug = '1' OR id = '1') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_724_atap, id FROM items WHERE type = 'radical' AND (slug = '140' OR id = '140') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_724_atap, id FROM items WHERE type = 'radical' AND (slug = '17' OR id = '17') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_725_derajat, r_8787_yurt);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_725_derajat, id FROM items WHERE type = 'radical' AND (slug = '30' OR id = '30') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_727_memegang, id FROM items WHERE type = 'radical' AND (slug = '63' OR id = '63') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_727_memegang, id FROM items WHERE type = 'radical' AND (slug = '192' OR id = '192') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_728_dunia, id FROM items WHERE type = 'radical' AND (slug = '51' OR id = '51') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_728_dunia, r_166_terjebak_di);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_729_keberangkatan, r_168_tenda);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_729_keberangkatan, id FROM items WHERE type = 'radical' AND (slug = '171' OR id = '171') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_730_saling, id FROM items WHERE type = 'radical' AND (slug = '23' OR id = '23') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_730_saling, id FROM items WHERE type = 'radical' AND (slug = '53' OR id = '53') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_731_prefektur, id FROM items WHERE type = 'radical' AND (slug = '53' OR id = '53') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_731_prefektur, id FROM items WHERE type = 'radical' AND (slug = '56' OR id = '56') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_731_prefektur, id FROM items WHERE type = 'radical' AND (slug = '35' OR id = '35') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_732_kecantikan, id FROM items WHERE type = 'radical' AND (slug = '136' OR id = '136') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_732_kecantikan, id FROM items WHERE type = 'radical' AND (slug = '18' OR id = '18') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_733_kehilangan, id FROM items WHERE type = 'radical' AND (slug = '14' OR id = '14') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_733_kehilangan, id FROM items WHERE type = 'radical' AND (slug = '94' OR id = '94') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_734_mengirim, id FROM items WHERE type = 'radical' AND (slug = '114' OR id = '114') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_734_mengirim, id FROM items WHERE type = 'radical' AND (slug = '8767' OR id = '8767') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_734_mengirim, id FROM items WHERE type = 'radical' AND (slug = '40' OR id = '40') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_735_berat, r_188_berat);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_736_bicara, id FROM items WHERE type = 'radical' AND (slug = '117' OR id = '117') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_736_bicara, id FROM items WHERE type = 'radical' AND (slug = '46' OR id = '46') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_737_membutuhkan, r_424_helikopter);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_737_membutuhkan, id FROM items WHERE type = 'radical' AND (slug = '19' OR id = '19') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_738_menang, id FROM items WHERE type = 'radical' AND (slug = '43' OR id = '43') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_738_menang, r_8819_budak);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_738_menang, id FROM items WHERE type = 'radical' AND (slug = '13' OR id = '13') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_739_sementara, id FROM items WHERE type = 'radical' AND (slug = '75' OR id = '75') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_739_sementara, r_218_anti);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_854_sebelumnya, id FROM items WHERE type = 'radical' AND (slug = '141' OR id = '141') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_854_sebelumnya, id FROM items WHERE type = 'radical' AND (slug = '27' OR id = '27') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_857_baru, id FROM items WHERE type = 'radical' AND (slug = '55' OR id = '55') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_857_baru, id FROM items WHERE type = 'radical' AND (slug = '23' OR id = '23') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_857_baru, id FROM items WHERE type = 'radical' AND (slug = '115' OR id = '115') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_858_kembali, id FROM items WHERE type = 'radical' AND (slug = '114' OR id = '114') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_858_kembali, r_218_anti);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_890_gambar, id FROM items WHERE type = 'radical' AND (slug = '75' OR id = '75') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_890_gambar, id FROM items WHERE type = 'radical' AND (slug = '8823' OR id = '8823') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_983_melestarikan, id FROM items WHERE type = 'radical' AND (slug = '75' OR id = '75') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_983_melestarikan, id FROM items WHERE type = 'radical' AND (slug = '16' OR id = '16') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_983_melestarikan, id FROM items WHERE type = 'radical' AND (slug = '23' OR id = '23') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1029_mencoba, id FROM items WHERE type = 'radical' AND (slug = '117' OR id = '117') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1029_mencoba, id FROM items WHERE type = 'radical' AND (slug = '79' OR id = '79') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1029_mencoba, id FROM items WHERE type = 'radical' AND (slug = '25' OR id = '25') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1048_tes, id FROM items WHERE type = 'radical' AND (slug = '165' OR id = '165') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_1048_tes, r_8785_cumi_cumi);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1069_sejarah, id FROM items WHERE type = 'radical' AND (slug = '116' OR id = '116') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1069_sejarah, id FROM items WHERE type = 'radical' AND (slug = '23' OR id = '23') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1069_sejarah, id FROM items WHERE type = 'radical' AND (slug = '44' OR id = '44') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1088_membandingkan, id FROM items WHERE type = 'radical' AND (slug = '161' OR id = '161') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_1122_sejarah, r_167_sejarah);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_1880_pedas, r_178_pedas);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2816_untuk_menjual_sesuatu, k_587_menjual);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_2823_berbentuk_hati, id FROM items WHERE type = 'kanji' AND (slug = '589' OR id = '589') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_2872_daftar_isi, id FROM items WHERE type = 'kanji' AND (slug = '492' OR id = '492') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_2872_daftar_isi, id FROM items WHERE type = 'kanji' AND (slug = '616' OR id = '616') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_2915_bintang, id FROM items WHERE type = 'kanji' AND (slug = '638' OR id = '638') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_2917_laut, id FROM items WHERE type = 'kanji' AND (slug = '640' OR id = '640') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_2984_ikan_laut, id FROM items WHERE type = 'kanji' AND (slug = '640' OR id = '640') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_2984_ikan_laut, id FROM items WHERE type = 'kanji' AND (slug = '674' OR id = '674') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_2996_penduduk, id FROM items WHERE type = 'kanji' AND (slug = '679' OR id = '679') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_2996_penduduk, id FROM items WHERE type = 'kanji' AND (slug = '650' OR id = '650') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3024_laboratorium, id FROM items WHERE type = 'kanji' AND (slug = '691' OR id = '691') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3024_laboratorium, id FROM items WHERE type = 'kanji' AND (slug = '688' OR id = '688') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3024_laboratorium, id FROM items WHERE type = 'kanji' AND (slug = '635' OR id = '635') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3082_benda, k_708_kejadian);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3083_tugas, id FROM items WHERE type = 'kanji' AND (slug = '525' OR id = '525') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3083_tugas, k_708_kejadian);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3084_konstruksi, id FROM items WHERE type = 'kanji' AND (slug = '457' OR id = '457') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3084_konstruksi, k_708_kejadian);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3085_penting, id FROM items WHERE type = 'kanji' AND (slug = '453' OR id = '453') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3085_penting, k_708_kejadian);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3086_membalas, k_858_kembali);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3086_membalas, k_708_kejadian);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3087_makanan, id FROM items WHERE type = 'kanji' AND (slug = '644' OR id = '644') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3087_makanan, k_708_kejadian);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3088_untuk_digunakan, k_709_menggunakan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3089_alat, id FROM items WHERE type = 'kanji' AND (slug = '700' OR id = '700') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3089_alat, k_710_alat);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3090_mebel, id FROM items WHERE type = 'kanji' AND (slug = '660' OR id = '660') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3090_mebel, k_710_alat);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3091_untuk_menerima_sesuatu, k_711_menerima);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3092_gaya_jepang, k_712_perdamaian);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3092_gaya_jepang, id FROM items WHERE type = 'kanji' AND (slug = '853' OR id = '853') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3093_perdamaian, id FROM items WHERE type = 'kanji' AND (slug = '535' OR id = '535') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3093_perdamaian, k_712_perdamaian);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3094_makanan_gaya_jepang, k_712_perdamaian);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3094_makanan_gaya_jepang, id FROM items WHERE type = 'kanji' AND (slug = '644' OR id = '644') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3095_kamar_bergaya_jepang, k_712_perdamaian);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3095_kamar_bergaya_jepang, id FROM items WHERE type = 'kanji' AND (slug = '635' OR id = '635') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3096_pakaian_gaya_jepang, k_712_perdamaian);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3096_pakaian_gaya_jepang, k_716_pakaian);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3100_rencana, k_854_sebelumnya);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3100_rencana, k_714_menentukan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3101_keputusan, id FROM items WHERE type = 'kanji' AND (slug = '687' OR id = '687') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3101_keputusan, k_714_menentukan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3102_kebenaran, k_715_kebenaran);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3103_fakta, k_708_kejadian);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3103_fakta, k_715_kebenaran);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3104_kekuatan_sejati, k_715_kebenaran);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3104_kekuatan_sejati, id FROM items WHERE type = 'kanji' AND (slug = '447' OR id = '447') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3105_pakaian, k_716_pakaian);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3106_berenang, k_717_berenang);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3107_benda, k_718_benda);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3109_spesialisasi_lokal, id FROM items WHERE type = 'kanji' AND (slug = '544' OR id = '544') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3109_spesialisasi_lokal, k_718_benda);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3111_menyakitkan, k_719_menderita);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3112_untuk_berkendara, k_722_mengendarai);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3115_tamu, k_723_tamu);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3116_kamar_tamu, k_723_tamu);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3116_kamar_tamu, id FROM items WHERE type = 'kanji' AND (slug = '635' OR id = '635') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3117_toko, k_724_atap);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3118_ruang, k_721_bagian);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3118_ruang, k_724_atap);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3119_toko_daging, id FROM items WHERE type = 'kanji' AND (slug = '577' OR id = '577') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3119_toko_daging, k_724_atap);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3120_toko_teh, id FROM items WHERE type = 'kanji' AND (slug = '643' OR id = '643') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3120_toko_teh, k_724_atap);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3121_toko_ikan, id FROM items WHERE type = 'kanji' AND (slug = '674' OR id = '674') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3121_toko_ikan, k_724_atap);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3122_nagoya, id FROM items WHERE type = 'kanji' AND (slug = '544' OR id = '544') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3122_nagoya, id FROM items WHERE type = 'kanji' AND (slug = '519' OR id = '519') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3122_nagoya, k_724_atap);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3123_kali_ini, id FROM items WHERE type = 'kanji' AND (slug = '497' OR id = '497') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3123_kali_ini, k_725_derajat);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3124_tepat, id FROM items WHERE type = 'kanji' AND (slug = '464' OR id = '464') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3124_tepat, k_725_derajat);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3125_setiap_saat, id FROM items WHERE type = 'kanji' AND (slug = '572' OR id = '572') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3125_setiap_saat, k_725_derajat);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3126_sudut, id FROM items WHERE type = 'kanji' AND (slug = '592' OR id = '592') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3126_sudut, k_725_derajat);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3127_derajat, k_725_derajat);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3130_untuk_memegang_sesuatu, k_727_memegang);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3133_dunia, id FROM items WHERE type = 'kanji' AND (slug = '527' OR id = '527') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3133_dunia, k_728_dunia);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3134_penjualan, k_729_keberangkatan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3134_penjualan, k_587_menjual);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3135_pengucapan, k_729_keberangkatan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3135_pengucapan, id FROM items WHERE type = 'kanji' AND (slug = '606' OR id = '606') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3136_penemuan, k_729_keberangkatan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3136_penemuan, id FROM items WHERE type = 'kanji' AND (slug = '558' OR id = '558') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3137_konsultasi, k_730_saling);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3137_konsultasi, k_736_bicara);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3139_prefektur, k_731_prefektur);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3140_cantik, k_732_kecantikan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3141_wanita_cantik, k_732_kecantikan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3141_wanita_cantik, id FROM items WHERE type = 'kanji' AND (slug = '444' OR id = '444') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3142_kalah, k_733_kehilangan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3143_cocok, k_738_menang);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3143_cocok, k_733_kehilangan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3144_untuk_menang, k_738_menang);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3145_pemenang, k_738_menang);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3145_pemenang, id FROM items WHERE type = 'kanji' AND (slug = '690' OR id = '690') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3146_tentu_kemenangan, id FROM items WHERE type = 'kanji' AND (slug = '655' OR id = '655') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3146_tentu_kemenangan, k_738_menang);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3147_kemenangan_mudah, id FROM items WHERE type = 'kanji' AND (slug = '704' OR id = '704') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3147_kemenangan_mudah, k_738_menang);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3148_untuk_mengirim_sesuatu, k_734_mengirim);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3151_penting, k_735_berat);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3151_penting, k_737_membutuhkan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3152_berat_badan, id FROM items WHERE type = 'kanji' AND (slug = '583' OR id = '583') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3152_berat_badan, k_735_berat);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3153_dobel, id FROM items WHERE type = 'kanji' AND (slug = '441' OR id = '441') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3153_dobel, k_735_berat);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3154_diperlukan, id FROM items WHERE type = 'kanji' AND (slug = '655' OR id = '655') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3154_diperlukan, k_737_membutuhkan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3155_poin_utama, k_737_membutuhkan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3155_poin_utama, id FROM items WHERE type = 'kanji' AND (slug = '641' OR id = '641') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3156_seandainya, k_739_sementara);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3157_kana, k_739_sementara);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3157_kana, id FROM items WHERE type = 'kanji' AND (slug = '544' OR id = '544') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3158_anggapan, k_739_sementara);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3158_anggapan, k_714_menentukan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3429_menjadi_bengkok, id FROM items WHERE type = 'kanji' AND (slug = '614' OR id = '614') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3430_amerika_selatan, id FROM items WHERE type = 'kanji' AND (slug = '634' OR id = '634') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3430_amerika_selatan, id FROM items WHERE type = 'kanji' AND (slug = '574' OR id = '574') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3466_untuk_berpotongan, id FROM items WHERE type = 'kanji' AND (slug = '565' OR id = '565') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3469_sekolah_dasar, id FROM items WHERE type = 'kanji' AND (slug = '463' OR id = '463') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3469_sekolah_dasar, id FROM items WHERE type = 'kanji' AND (slug = '599' OR id = '599') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3469_sekolah_dasar, id FROM items WHERE type = 'kanji' AND (slug = '658' OR id = '658') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3470_jalan, id FROM items WHERE type = 'kanji' AND (slug = '665' OR id = '665') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3471_hati_hati, id FROM items WHERE type = 'kanji' AND (slug = '548' OR id = '548') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3471_hati_hati, id FROM items WHERE type = 'kanji' AND (slug = '652' OR id = '652') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3472_baru, k_857_baru);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3473_siswa_sma, id FROM items WHERE type = 'kanji' AND (slug = '666' OR id = '666') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3473_siswa_sma, id FROM items WHERE type = 'kanji' AND (slug = '658' OR id = '658') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3473_siswa_sma, id FROM items WHERE type = 'kanji' AND (slug = '850' OR id = '850') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3474_sekolah_menengah, id FROM items WHERE type = 'kanji' AND (slug = '469' OR id = '469') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3474_sekolah_menengah, id FROM items WHERE type = 'kanji' AND (slug = '599' OR id = '599') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3474_sekolah_menengah, id FROM items WHERE type = 'kanji' AND (slug = '658' OR id = '658') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3475_untuk_dilampirkan, id FROM items WHERE type = 'kanji' AND (slug = '652' OR id = '652') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3476_untuk_menemukan, id FROM items WHERE type = 'kanji' AND (slug = '558' OR id = '558') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3476_untuk_menemukan, id FROM items WHERE type = 'kanji' AND (slug = '652' OR id = '652') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3477_orang_lemah, id FROM items WHERE type = 'kanji' AND (slug = '661' OR id = '661') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3477_orang_lemah, id FROM items WHERE type = 'kanji' AND (slug = '553' OR id = '553') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3478_tampak_lemah, id FROM items WHERE type = 'kanji' AND (slug = '661' OR id = '661') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3478_tampak_lemah, id FROM items WHERE type = 'kanji' AND (slug = '856' OR id = '856') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3479_untuk_terkelupas, id FROM items WHERE type = 'kanji' AND (slug = '646' OR id = '646') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3483_tinggi, id FROM items WHERE type = 'kanji' AND (slug = '666' OR id = '666') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3514_hitam_dan_putih, id FROM items WHERE type = 'kanji' AND (slug = '491' OR id = '491') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3514_hitam_dan_putih, id FROM items WHERE type = 'kanji' AND (slug = '677' OR id = '677') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3523_untuk_mengembalikan_sesuatu, k_858_kembali);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3525_rekaman, id FROM items WHERE type = 'kanji' AND (slug = '893' OR id = '893') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3525_rekaman, k_890_gambar);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3526_gambar, id FROM items WHERE type = 'kanji' AND (slug = '629' OR id = '629') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3526_gambar, k_890_gambar);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3803_menyimpan, k_983_melestarikan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3803_menyimpan, k_727_memegang);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3806_asuransi_jiwa, id FROM items WHERE type = 'kanji' AND (slug = '850' OR id = '850') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3806_asuransi_jiwa, k_983_melestarikan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3807_untuk_melestarikan_sesuatu, k_983_melestarikan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4147_untuk_mencoba_melakukan_sesuatu, k_1029_mencoba);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4150_contoh_makanan, k_1029_mencoba);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4150_contoh_makanan, id FROM items WHERE type = 'kanji' AND (slug = '644' OR id = '644') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4162_pengalaman, id FROM items WHERE type = 'kanji' AND (slug = '583' OR id = '583') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4162_pengalaman, k_1048_tes);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4163_mengikuti_ujian, k_711_menerima);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4163_mengikuti_ujian, k_1048_tes);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4164_percobaan, k_715_kebenaran);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4164_percobaan, k_1048_tes);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4165_penyelidikan, k_1029_mencoba);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4165_penyelidikan, k_1048_tes);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4215_sejarah, k_1069_sejarah);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4215_sejarah, k_1122_sejarah);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4219_kontras, id FROM items WHERE type = 'kanji' AND (slug = '683' OR id = '683') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4219_kontras, k_1088_membandingkan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4376_pengumuman, k_729_keberangkatan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4376_pengumuman, k_720_cepat);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4377_untuk_mengekspresikan_sesuatu, k_720_cepat);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4380_keberangkatan, id FROM items WHERE type = 'kanji' AND (slug = '483' OR id = '483') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4380_keberangkatan, k_729_keberangkatan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6790_pedas, k_1880_pedas);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6792_moster, k_1880_pedas);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6792_moster, id FROM items WHERE type = 'kanji' AND (slug = '462' OR id = '462') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_7149_toko_buku, id FROM items WHERE type = 'kanji' AND (slug = '487' OR id = '487') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7149_toko_buku, k_724_atap);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_7460_semua, id FROM items WHERE type = 'kanji' AND (slug = '610' OR id = '610') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7460_semua, k_721_bagian);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_7464_malaikat, id FROM items WHERE type = 'kanji' AND (slug = '473' OR id = '473') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7464_malaikat, k_709_menggunakan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7475_tahun_baru, k_857_baru);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_7475_tahun_baru, id FROM items WHERE type = 'kanji' AND (slug = '546' OR id = '546') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7478_untuk_membutuhkan, k_737_membutuhkan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_7487_bicara, id FROM items WHERE type = 'kanji' AND (slug = '683' OR id = '683') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7487_bicara, k_736_bicara);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7533_bagian, k_721_bagian);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_7533_bagian, id FROM items WHERE type = 'kanji' AND (slug = '501' OR id = '501') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_7571_tidak_nyaman, id FROM items WHERE type = 'kanji' AND (slug = '563' OR id = '563') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_7571_tidak_nyaman, id FROM items WHERE type = 'kanji' AND (slug = '578' OR id = '578') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_7571_tidak_nyaman, id FROM items WHERE type = 'kanji' AND (slug = '648' OR id = '648') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_7572_pengajaran, id FROM items WHERE type = 'kanji' AND (slug = '668' OR id = '668') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7573_bagian_depan, k_720_cepat);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_7625_lingkungan, id FROM items WHERE type = 'kanji' AND (slug = '652' OR id = '652') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_7625_lingkungan, id FROM items WHERE type = 'kanji' AND (slug = '596' OR id = '596') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_7682_berapa_kali, id FROM items WHERE type = 'kanji' AND (slug = '582' OR id = '582') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7682_berapa_kali, k_725_derajat);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7683_renang, k_717_berenang);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_7684_artikel, id FROM items WHERE type = 'kanji' AND (slug = '664' OR id = '664') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7684_artikel, k_708_kejadian);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_7740_api, id FROM items WHERE type = 'kanji' AND (slug = '480' OR id = '480') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7740_api, k_708_kejadian);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_7741_membiarkan_sesuatu_lewat, id FROM items WHERE type = 'kanji' AND (slug = '665' OR id = '665') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_8701_makhluk_hidup, id FROM items WHERE type = 'kanji' AND (slug = '850' OR id = '850') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8701_makhluk_hidup, k_718_benda);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_8702_tugas_rumah, id FROM items WHERE type = 'kanji' AND (slug = '660' OR id = '660') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8702_tugas_rumah, k_708_kejadian);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_8800_menandai, id FROM items WHERE type = 'kanji' AND (slug = '649' OR id = '649') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8802_menggunakan, k_709_menggunakan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_8802_menggunakan, id FROM items WHERE type = 'kanji' AND (slug = '525' OR id = '525') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8812_rasa_pedas, k_1880_pedas);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_8812_rasa_pedas, id FROM items WHERE type = 'kanji' AND (slug = '452' OR id = '452') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_9020_asal_usul_seseorang, id FROM items WHERE type = 'kanji' AND (slug = '483' OR id = '483') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_9020_asal_usul_seseorang, id FROM items WHERE type = 'kanji' AND (slug = '689' OR id = '689') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_9078_mengubah, id FROM items WHERE type = 'kanji' AND (slug = '565' OR id = '565') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_9078_mengubah, id FROM items WHERE type = 'kanji' AND (slug = '530' OR id = '530') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_9082_karate, id FROM items WHERE type = 'kanji' AND (slug = '601' OR id = '601') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_9082_karate, id FROM items WHERE type = 'kanji' AND (slug = '474' OR id = '474') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_9142_semula, id FROM items WHERE type = 'kanji' AND (slug = '498' OR id = '498') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_9142_semula, id FROM items WHERE type = 'kanji' AND (slug = '856' OR id = '856') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_9145_meyakinkan, id FROM items WHERE type = 'kanji' AND (slug = '508' OR id = '508') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_9145_meyakinkan, id FROM items WHERE type = 'kanji' AND (slug = '667' OR id = '667') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_9237_sudut, id FROM items WHERE type = 'kanji' AND (slug = '494' OR id = '494') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_9237_sudut, id FROM items WHERE type = 'kanji' AND (slug = '694' OR id = '694') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_9261_untuk_turun, id FROM items WHERE type = 'kanji' AND (slug = '451' OR id = '451') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_9279_untuk_menerima_sesuatu, k_711_menerima);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_9279_untuk_menerima_sesuatu, id FROM items WHERE type = 'kanji' AND (slug = '966' OR id = '966') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_9286_satu_bulan, id FROM items WHERE type = 'kanji' AND (slug = '440' OR id = '440') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_9286_satu_bulan, id FROM items WHERE type = 'kanji' AND (slug = '477' OR id = '477') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_9287_penghitung_selama_berbulan_bulan, id FROM items WHERE type = 'kanji' AND (slug = '477' OR id = '477') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_9300_sepuluh_menit, id FROM items WHERE type = 'kanji' AND (slug = '448' OR id = '448') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_9300_sepuluh_menit, id FROM items WHERE type = 'kanji' AND (slug = '501' OR id = '501') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_9300_sepuluh_menit, id FROM items WHERE type = 'kanji' AND (slug = '701' OR id = '701') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_9351_negara_tropis, id FROM items WHERE type = 'kanji' AND (slug = '634' OR id = '634') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_9351_negara_tropis, id FROM items WHERE type = 'kanji' AND (slug = '621' OR id = '621') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_9354_angin_selatan, id FROM items WHERE type = 'kanji' AND (slug = '634' OR id = '634') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_9354_angin_selatan, id FROM items WHERE type = 'kanji' AND (slug = '853' OR id = '853') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_9510_sejarah_jepang, id FROM items WHERE type = 'kanji' AND (slug = '476' OR id = '476') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_9510_sejarah_jepang, id FROM items WHERE type = 'kanji' AND (slug = '487' OR id = '487') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_9510_sejarah_jepang, k_1122_sejarah);

END $$;
