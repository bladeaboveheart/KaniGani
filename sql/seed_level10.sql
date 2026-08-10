-- ====================================================
-- KaniGani — Seed Data Level 10 (v2, relasional)
-- Auto-generated with Indonesian Slugs
-- ====================================================

DO $$
DECLARE
  -- ============ RADICAL IDs (Level 10) ============
  r_179_batu_nisan UUID; r_180_ciuman UUID; r_181_kacang_polong UUID; r_182_alkohol UUID; r_183_tanah_longsor UUID; r_184_geoduck UUID; r_185_musik UUID; r_186_dinamit UUID; r_187_sakit UUID; r_200_tangga UUID; r_219_bundel UUID; r_240_turki UUID; r_275_kesalahan UUID; r_439_menjual UUID; r_8773_paus UUID; r_8774_cina UUID; r_8821_lurus UUID;

  -- ============ KANJI IDs (Level 10) ============
  k_465_menyelesaikan UUID; k_499_publik UUID; k_630_lurus UUID; k_713_mulai UUID; k_740_bangun UUID; k_741_cepat UUID; k_742_mendistribusikan UUID; k_743_alkohol UUID; k_744_lembaga UUID; k_745_akhir UUID; k_746_mempelajari UUID; k_747_berputar UUID; k_748_maju UUID; k_749_jatuh UUID; k_750_daun UUID; k_751_ringan UUID; k_752_membawa UUID; k_753_membuka UUID; k_754_mengumpulkan UUID; k_755_minum UUID; k_756_bisnis UUID; k_757_cina UUID; k_758_jalan UUID; k_759_pertanian UUID; k_760_besi UUID; k_761_lagu UUID; k_762_menghitung UUID; k_763_mendengar UUID; k_764_bahasa UUID; k_765_membaca UUID; k_766_kicauan UUID; k_767_garis UUID; k_768_samping UUID; k_769_menyelidiki UUID; k_770_induk UUID; k_771_kepala UUID; k_772_menghadapi UUID; k_773_sakit UUID; k_774_paling UUID; k_913_meminta UUID; k_1150_menyelesaikan UUID; k_9051_halaman UUID;

  -- ============ VOCABULARY IDs (Level 10) ============
  v_2870_berikutnya UUID; v_2900_tenggara UUID; v_2999_asisten UUID; v_3009_konflik UUID; v_3018_untuk_memutuskan UUID; v_3097_untuk_memulai_sesuatu UUID; v_3110_rasanya_pahit UUID; v_3113_untuk_memberi_seseorang_tumpangan UUID; v_3150_berat UUID; v_3159_untuk_bangun UUID; v_3160_sekaligus UUID; v_3161_kecepatan UUID; v_3162_untuk_mendistribusikan UUID; v_3163_demi UUID; v_3164_alkohol_gaya_jepang UUID; v_3165_rsud UUID; v_3166_akademi UUID; v_3167_untuk_mengakhiri UUID; v_3168_perhentian_terakhir UUID; v_3169_akhir UUID; v_3170_terakhir UUID; v_3171_untuk_belajar UUID; v_3172_untuk_berguling UUID; v_3173_sepeda UUID; v_3174_untuk_mengemudi UUID; v_3175_transfer UUID; v_3176_berputar UUID; v_3177_untuk_maju UUID; v_3178_evolusi UUID; v_3179_maju UUID; v_3180_jatuh UUID; v_3181_daun_segar UUID; v_3182_ringan UUID; v_3183_untuk_membawa UUID; v_3184_beruntung UUID; v_3185_untuk_membuka_sesuatu UUID; v_3186_terbuka_untuk_umum UUID; v_3187_membuka_bisnis UUID; v_3188_perkembangan UUID; v_3189_untuk_mengumpulkan_sesuatu UUID; v_3190_konsentrasi UUID; v_3191_mengumpulkan_uang UUID; v_3192_untuk_minum UUID; v_3193_industri UUID; v_3194_kanji UUID; v_3195_jalan_beraspal UUID; v_3196_jalur_kereta_api UUID; v_3197_gang UUID; v_3199_petani UUID; v_3200_pertanian UUID; v_3201_kereta_bawah_tanah UUID; v_3202_pria_kuat UUID; v_3203_kereta_api_listrik UUID; v_3204_lagu UUID; v_3205_penyanyi UUID; v_3206_hitung UUID; v_3208_untuk_mendengar UUID; v_3209_koran UUID; v_3210_bahasa_jepang UUID; v_3211_bahasa_perancis UUID; v_3212_bahasa_spanyol UUID; v_3214_subjek UUID; v_3215_untuk_membaca UUID; v_3216_cara_membaca UUID; v_3217_untuk_membuat_suara_binatang UUID; v_3218_garis UUID; v_3219_samping UUID; v_3220_kondisi UUID; v_3221_tekanan UUID; v_3222_untuk_menyelidiki UUID; v_3223_induk UUID; v_3224_intim UUID; v_3225_baik UUID; v_3226_teman_dekat UUID; v_3227_kepala UUID; v_3228_menghadapi UUID; v_3229_ekspresi UUID; v_3230_sakit UUID; v_3231_penyakit UUID; v_3232_orang_sakit UUID; v_3233_yang_paling_banyak UUID; v_3234_terbaik UUID; v_3235_terakhir UUID; v_3236_terkini UUID; v_3426_kanji_fonetik UUID; v_3427_satu_demi_satu UUID; v_3445_untuk_mengganti_sesuatu UUID; v_3480_dokter_mata UUID; v_3481_hal_pertama UUID; v_3484_menantikan UUID; v_3485_dibuat_untuk UUID; v_3486_lembaga_penelitian UUID; v_3487_jalan_pintas UUID; v_3488_untuk_dibantu UUID; v_3491_untuk_menikmati_sesuatu UUID; v_3493_untuk_melempar_melawan UUID; v_3494_untuk_menyihir UUID; v_3495_cerita UUID; v_3505_untuk_memutuskan UUID; v_3506_untuk_bertemu_secara_kebetulan UUID; v_3564_sebuah_kekhawatiran UUID; v_3594_untuk_dicerminkan UUID; v_3707_untuk_meminta_sesuatu UUID; v_3717_kereta_api_swasta UUID; v_3924_tuntutan UUID; v_4129_perguruan_tinggi_swasta UUID; v_4375_awal UUID; v_4379_melengkung UUID; v_4465_pemecahan UUID; v_7458_bahasa UUID; v_7472_cepat UUID; v_7534_chiba UUID; v_7535_tanpa_berpikir UUID; v_7536_berdiri_dan_minum UUID; v_7574_bekerja UUID; v_7575_menjadi_sakit UUID; v_7621_untuk_menjual UUID; v_7628_rawat_inap UUID; v_7629_daun UUID; v_7680_balai_kota UUID; v_7685_nada UUID; v_7686_untuk_berbicara UUID; v_7742_dapur UUID; v_7743_peternakan UUID; v_8666_sekolah_pascasarjana UUID; v_8703_pagi_ini UUID; v_8741_radikal UUID; v_8742_lingkungan UUID; v_8743_tambahan UUID; v_8744_pengurangan UUID; v_8803_tag_bernomor UUID; v_8938_menjadi_menyala UUID; v_8962_jalan_gunung UUID; v_9022_ketinggian UUID; v_9037_menjawab UUID; v_9052_halaman UUID; v_9240_untuk_mempelajari_sesuatu_dari_seseorang UUID; v_9250_untuk_pergi UUID; v_9288_besok_lusa UUID; v_9306_satu_tempat UUID; v_9384_garis_lurus UUID; v_9385_berjalan_lurus_ke_depan UUID;

BEGIN

  DELETE FROM items WHERE level = 10;

  -- 1. RADICALS
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '圣', 'batu-nisan', 10, 1, 'Ada bangku yang mencuat dari tanah. Anda berjalan dan menyadari ada tulisan di atasnya. Ini sebenarnya adalah <radical>batu nisan</radical>. Anda bisa duduk di atasnya dan mengingat orang-orang yang berada di bawah tanah sekarang.')
    RETURNING id INTO r_179_batu_nisan;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '各', 'ciuman', 10, 2, 'Di musim dingin, mulut Anda merindukan <radikal>ciuman</radikal>. Anda tahu, karena bibir Anda menjadi dingin dan Anda ingin seseorang menghangatkannya. Menurut Anda bagaimana semua hal mistletoe itu dimulai? Mulut musim dingin yang dingin, rindu akan ciuman. Jadi bayangkan bagian atas dari radikal ini sebagai mistletoe musim dingin (atau daun holly, karena itu mungkin lebih mudah), dan bagian bawah sebagai mulut yang berciuman.')
    RETURNING id INTO r_180_ciuman;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '豆', 'kacang-polong', 10, 3, 'Radikal ini memiliki kacang (persegi di tengah) antara tanah dan beberapa akar. Kacang itu akan berubah menjadi tanaman suatu hari nanti. Apa yang akan dihasilkan tanaman itu? <radikal>kacang</radikal> yang besar, seperti yang ada di Jack and the Beanstalk.')
    RETURNING id INTO r_181_kacang_polong;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '酉', 'alkohol', 10, 4, 'Ini terlihat seperti radikal barat dengan sedikit tambahan di bawahnya… Dan jika Anda meminta "sedikit tambahan" di Wild West, Anda akan mendapatkan sebotol besar bourbon, minuman keras, atau jenis <radikal>alkohol</radikal> yang sangat kuat lainnya — yang kebetulan persis seperti apa radikal ini! Garis ekstra di bagian bawah hanyalah sedikit alkohol yang tersisa di dalam botol.')
    RETURNING id INTO r_182_alkohol;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '辰', 'tanah-longsor', 10, 5, 'Jika Anda menendang tebing dua kali, Anda akan memulai <radikal>longsor</radikal>! Oh tidak!')
    RETURNING id INTO r_183_tanah_longsor;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '頁', 'geoduck', 10, 6, 'Tonjolan berbentuk daun keluar dari kerang. Apa itu? <radikal>geoduck</radikal> yang misterius! Geoduck merupakan kerang raksasa yang berukuran sangat besar sehingga sebagian besar tumbuh di luar cangkangnya. Jika Anda belum pernah melihat geoduck, carilah sekarang. Anda tidak akan pernah bisa mengabaikannya.')
    RETURNING id INTO r_184_geoduck;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '曲', 'musik', 10, 7, 'Radikal ini sama dengan kanji. Artinya <radikal>musik</radikal>! 曲 bahkan tampak seperti partitur musik dengan dua nada di tengahnya. Hah? Lembaran musik asli memiliki lebih banyak baris, katamu? Hei, ini radikal - kami menghemat tinta, bukan menampilkan Beethoven di sini.

Alternatifnya, Anda bisa menggunakan mnemonik kanji yang Anda pelajari: Ada dua puluh mulut yang menyanyikan musik indah bersama-sama.')
    RETURNING id INTO r_185_musik;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '丙', 'dinamit', 10, 8, 'Bukankah radikal ini terlihat seperti <radikal>dinamit</radikal> kuno yang didorong untuk mengatur sumbunya? Itu membuat dinamit ini!')
    RETURNING id INTO r_186_dinamit;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '疒', 'sakit', 10, 9, 'Ini adalah kanopi radikal dengan es mengalir di bagian belakang. Kalau nongkrong di kanopi yang dingin seperti ini pasti <radikal>sakit</radikal>. Bayangkan Anda sedang sakit dan sendirian di dalam kanopi yang dingin. Brrrr, oh tidak... ACHOO!')
    RETURNING id INTO r_187_sakit;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '乃', 'tangga', 10, 10, 'Radikal ini tampak seperti <radical>tangga</radikal>, bukan begitu? Perhatikan juga bahwa itu ditahan oleh pilar atau balok atau sesuatu di sisi kiri. Lagi pula, Anda tidak ingin tangga Anda runtuh saat Anda menaikinya.')
    RETURNING id INTO r_200_tangga;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '束', 'bundel', 10, 11, 'Ini tampak seperti pohon dengan sesuatu yang diikatkan di tengahnya dan dipegang erat-erat. Jika Anda melepaskan ikatan bagian tengahnya, Anda akan menyadari bahwa itu sebenarnya adalah sekumpulan pohon kecil (alias ranting dan batang) yang diikat dalam satu <radical>bundel</radical>!')
    RETURNING id INTO r_219_bundel;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '隹', 'turki', 10, 12, 'Ini adalah radikal <radikal>kalkun</radikal>. Bentuknya seperti kalkun menghadap ke kiri, dengan bulu ekor besar menyebar di belakangnya. Lihat itu? Anda praktis bisa mendengar benda ini melahap!')
    RETURNING id INTO r_240_turki;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '失', 'kesalahan', 10, 13, 'Radikal ini sama dengan kanji. Artinya <radikal>kesalahan</radikal>.

Kalau-kalau Anda tidak ingat arti mnemonik kanji, inilah intinya: Slide itu adalah satu-satunya <kanji>kesalahan</kanji> suami Anda. Dia menghabiskan sepanjang hari meluncur ke bawah seperti orang gila, itulah sebabnya rambutnya menempel lurus ke atas. Mungkin itu kesalahan yang lain… Ini juga merupakan cara untuk mengingat bahwa ini adalah 失 (kesalahan), bukan 矢 (panah).')
    RETURNING id INTO r_275_kesalahan;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '売', 'menjual', 10, 14, 'Radikal ini sama dengan kanji. Artinya <radikal>jual</radikal>.

Kalau-kalau Anda tidak ingat, inilah kanji yang berarti mnemonik: Seorang samurai datang dengan membawa dahi dan kaki yang dia coba <kanji>jual</kanji>. Dia pikir akan sia-sia meninggalkan semua musuhnya yang terbunuh di medan perang, jadi dia mengumpulkan dahi dan kaki mereka untuk dijual di pasar gelap untuk mendapatkan uang tambahan. Hei, jangan menghakimi! Seorang samurai harus menjual apa yang harus dijual oleh seorang samurai, oke?')
    RETURNING id INTO r_439_menjual;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '/radicals/pope.svg', 'paus', 10, 15, 'Ini adalah radikal <radikal>paus</radikal>. Mengapa? Karena bentuknya seperti topi paus! Yang ini mempunyai salib tua yang besar di atasnya, dan hanya dapat dipakai oleh Paus.')
    RETURNING id INTO r_8773_paus;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '𦰩', 'cina', 10, 16, 'Ini adalah radikal <radikal>Tiongkok</radikal>. Mengapa? Karena bentuknya seperti pagoda tradisional Tiongkok! Salah satu menara yang atapnya bertingkat-tingkat, lho? Tentu saja, banyak negara di Asia yang memiliki pagoda, tapi jujur ​​saja — orang Tiongkok mungkin yang pertama kali menciptakannya.')
    RETURNING id INTO r_8774_cina;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '直', 'lurus', 10, 17, 'Oh tidak, biarkan topi paus direnggut singa! Anda mendapatkannya kembali, namun semuanya bengkok, jadi Anda harus membuatnya <radikal>lurus</radikal> lagi. Paus membutuhkan topi yang lurus dan bermartabat, jadi sebaiknya Anda meluruskannya.')
    RETURNING id INTO r_8821_lurus;

  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_179_batu_nisan, 'Batu nisan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_180_ciuman, 'Ciuman', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_181_kacang_polong, 'kacang polong', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_182_alkohol, 'Alkohol', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_183_tanah_longsor, 'Tanah longsor', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_184_geoduck, 'Geoduck', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_185_musik, 'Musik', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_186_dinamit, 'Dinamit', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_187_sakit, 'Sakit', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_200_tangga, 'Tangga', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_219_bundel, 'Bundel', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_240_turki, 'Turki', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_275_kesalahan, 'Kesalahan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_439_menjual, 'Menjual', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_8773_paus, 'Paus', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_8774_cina, 'Cina', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_8821_lurus, 'Lurus', true, true);

  -- 2. KANJIS
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '了', 'menyelesaikan', 10, 18, 'Pikirkan seperti ini. Ada seorang penemu umpan pancing terkenal, sedang mengerjakan karya terbaiknya. Dia sudah tua, dan dia telah mencoba membuat umpan pancing terbaik selama 50 tahun terakhir, dan tahu ini akan menjadi penemuan terakhirnya. Lalu dia memikirkannya. Dia mengambil satu <radical>duri</radikal>, dan menghubungkan ujungnya ke bagian atas <radikal>duri</radikal> lainnya. Ketika dia melakukan ini, dia tahu pekerjaannya akhirnya <kanji>selesai</kanji>.', 'Bagaimana cara pembuat umpan ikan menguji <kanji>selesai</kanji> umpannya yang baru? Yang baru saja dia selesaikan? Dia naik perahu <reading>barisan</reading> (りょう) dan mendayung ke laut.')
    RETURNING id INTO k_465_menyelesaikan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '公', 'publik', 10, 19, 'Anda memiliki <radical>fins</radical> di <radical>pribadi</radical>. Namun, Anda ingin dunia melihatnya, jadi Anda menjadikannya <kanji>publik</kanji>.', 'Anda pergi ke <kanji>publik</kanji> di mana semua orang dapat melihat sirip Anda, tapi... segalanya telah berubah. Semua orang sama. Ada ribuan <read>こう</reading>いち yang berjalan-jalan, dan mereka semua menatap Anda (meskipun mereka berpura-pura tidak melakukannya).')
    RETURNING id INTO k_499_publik;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '直', 'lurus', 10, 20, 'Kanji ini sama dengan kanji radikal — <kanji>lurus</kanji>.

Bisa juga berarti <kanji>langsung</kanji>, karena ketika Anda langsung menuju suatu tempat, Anda langsung menuju ke sana. Tergantung pada konteksnya, kata ini bahkan bisa berarti <kanji>memperbaiki</kanji>, karena memperbaiki sesuatu berarti meluruskan semua bagian yang bengkok dan kacau.', 'Masukkan makanan <kanji>langsung</kanji> ke kerongkongan Anda tanpa dikunyah dan Anda akan <reading>tersedak</reading> (ちょく). Anda ingin langsung ke bagian terpenting dari makan - bagian pencernaan - tetapi jika Anda tidak mengikuti semua langkah perantara, Anda akan tersedak.')
    RETURNING id INTO k_630_lurus;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '始', 'mulai', 10, 21, 'Jika Anda memberi <radical>wanita</radical> sebuah <radical>mesin</radical> dia akan <kanji>mulai</kanji> mempelajari cara menggunakannya segera. Dia juga akan <kanji>memulai</kanji> sebelum orang lain bisa melakukannya. Wanita sangat pandai menyalakan mesin baru!', 'Sebenarnya, sebelum dia bisa <kanji>memulai</kanji>, dia harus mencukur <reading>shee</reading>p (し) di sana. Mesin ini akan mengubah wol menjadi benang, tetapi Anda tidak bisa memulai proses itu hanya dengan memasukkan domba ke dalamnya. Anda harus menjaga domba kecil itu tetap aman!')
    RETURNING id INTO k_713_mulai;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '起', 'bangun', 10, 22, '<radical>Berjalan</radikal> ke dalam <radical>diri sendiri</radikal> dalam mimpi dan Anda pasti akan <kanji>terbangun</kanji>.', 'Jika seseorang menabrak dirinya sendiri dan Anda tidak <kanji>bangun</kanji>, lihat saja pinggang Anda. Jika kamu mengenakan <reading>o</reading>bi (お) kamu tahu itu hanya mimpi dan pada akhirnya kamu akan terbangun. Jika Anda tidak mengenakan obi maka itu bukanlah mimpi dan Anda tidak perlu membangunkan apa pun.')
    RETURNING id INTO k_740_bangun;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '速', 'cepat', 10, 23, 'Anda menaiki <radical>skuter</radical> Anda dengan <radical>paket</radical> besar untuk melaju <kanji>secepat</kanji> semampu Anda! Anda memiliki seikat pizza di sini, dan pizza tersebut harus diantar secepat mungkin!', 'Kamu melaju sangat <kanji>cepat</kanji>, kamu hanya mengenakan <reading>kaus kaki</reading> (そく). Jadi sekarang Anda meluncur di jalan dengan kecepatan tinggi hanya dengan kaus kaki putih sedih Anda.')
    RETURNING id INTO k_741_cepat;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '配', 'mendistribusikan', 10, 24, 'Anda tidak ingin menyimpan semua <radical>alkohol</radical> untuk diri Anda sendiri (<radical>diri sendiri</radical>), jadi Anda <kanji>mendistribusikan</kanji> ke semua teman Anda. Heck, bukan hanya teman Anda, untuk semua orang yang dapat Anda temukan!', 'Saat Anda <kanji>mendistribusikan</kanji> alkohol, ucapkan <reading>hai</reading>ku (はい):

Ini dia teman-temanku
Alkohol untuk semua orang
Jangan pernah minum sendirian')
    RETURNING id INTO k_742_mendistribusikan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '酒', 'alkohol', 10, 25, '<radikal>tsunami</radikal> adalah minuman <radikal>alkohol</radikal> yang mengandung banyak <kanji>alkohol</kanji>. Ini 3 jenis rum, jus nanas, dan grenadine yang berbeda. Namun itu akan menghantammu seperti tsunami. Minuman beralkohol ini sangat nikmat.', 'Saat Anda berbaring di pantai ini, <kanji>alkohol</kanji> terus turun <read>chu</reading>te (しゅ), langsung ke mulut Anda. Anda dapat merasakan pasir di jari-jari kaki Anda dan alkohol mengalir ke tenggorokan Anda dari saluran khusus tsunami ini.')
    RETURNING id INTO k_743_alkohol;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '院', 'lembaga', 10, 26, '<radical>Bangunan</radical> ini memiliki <radical>atap</radical> dan akan mengajarkan Anda tentang <radical>asal-usul</radical> banyak hal. Ini adalah <kanji>institusi</kanji>!', '<kanji>institusi</kanji> dimulai dengan apa? Dalam (いん)!')
    RETURNING id INTO k_744_lembaga;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '終', 'akhir', 10, 27, '<radical>jalur</radikal> <radikal>musim dingin</radikal> dan <radikal>es</radikal> telah mengakhiri tahun ini <kanji>kanji>. Begitu Anda berada di tengah musim dingin dan es yang panjang, Anda tahu bahwa tahun akan segera berakhir.', 'Setiap kali musim dingin <kanji>berakhir</kanji>, ambillah benang yang dilapisi es, dan ikatkan ke dalam <reading>sepatu</reading> (しゅう).')
    RETURNING id INTO k_745_akhir;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '習', 'mempelajari', 10, 28, 'Anda menemukan beberapa <radical>bulu</radical> yang sangat <radical>putih</radical>, Anda ingin <kanji>mempelajari</kanji> lebih lanjut tentang dari mana bulu tersebut berasal dan terbuat dari apa.', 'Anda <kanji>belajar</kanji> bahwa Anda harus mengikat bulu-bulu putih ini ke <reading>sepatu</reading> (しゅう) Anda. Anda melakukannya sebelum Anda mengetahui apa yang akan dilakukannya, dan kemudian tiba-tiba Anda melompat keluar dari gedung.')
    RETURNING id INTO k_746_mempelajari;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '転', 'berputar', 10, 29, 'Jika <radical>mobil</radical> Anda menabrak <radical>awan</radical> Anda akan <kanji>berputar</kanji> mengelilinginya alih-alih langsung melewatinya. Awan sangat sulit untuk dilihat, jadi meskipun Anda berusaha untuk tidak melihatnya, Anda tetap berputar dalam lingkaran rapat di atas dan mengelilingi awan.', 'Anda harus <kanji>berputar</kanji> mengelilingi awan <reading>sepuluh</reading> (てん) kali sebelum awan itu menghilang dan Anda dapat melewatinya.')
    RETURNING id INTO k_747_berputar;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '進', 'maju', 10, 30, 'Anda memberikan <radical>skuter</radical> Anda kepada <radical>kalkun</radical> agar ia dapat <kanji>maju</kanji>. Kalkun itu mencoba dan gagal berjalan melalui jalan yang ramai, jadi karena kebaikan hati Anda, Anda memberinya skuter agar dia bisa melaju.', 'Anda melambai saat <kanji>maju</kanji> kalkun ke jalan dengan kecepatan tinggi, bertabrakan dengan mobil, dan segera menggores tulang keringnya (しん). Ah!')
    RETURNING id INTO k_748_maju;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '落', 'jatuh', 10, 31, '<radical>Bunga</radical> dirobohkan oleh <radical>tsunami</radical> yang hebat, dan berputar di udara untuk <radical>mencium</radical> wajah Anda dengan lembut saat mereka <kanji>jatuh</kanji>. Bersamaan dengan tsunami datanglah badai berangin besar yang meniupkan bunga-bunga tersebut. Di antara semua kehancuran, sungguh pemandangan yang indah menyaksikan mereka berjatuhan.', 'Anda ingin menyelamatkan bunga-bunga yang <kanji>jatuh</kanji> di sekitar Anda, jadi Anda mengeluarkan <reading>rak</reading> (らく) pengering dan meletakkannya dengan hati-hati di atasnya. Bunga apa pun yang jatuh akan disimpan di rak seperti ini, jadi bisa disimpan untuk nanti.')
    RETURNING id INTO k_749_jatuh;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '葉', 'daun', 10, 32, 'Semua <radikal>bunga</radikal> di <radikal>dunia</radikal> <radikal>pohon</radikal> keberadaannya berasal dari <kanji>daun</kanji> yang sederhana. Hal ini karena daun berperan penting bagi pohon, dan juga bunga, mendapatkan nutrisi dari sinar matahari.', 'Bayangkan seekor bunga kecil yang bekerja sangat keras untuk menumbuhkan daun pertamanya. <kanji>daun</kanji> menyembul dan berteriak, "<reading>Hah</reading> (は)!”')
    RETURNING id INTO k_750_daun;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '軽', 'ringan', 10, 33, 'Untuk <radical>mobil</radical>, <radical>batu nisan</radical> <kanji>ringan</kanji>. Mobil itu sangat kuat, jadi sesuatu yang berat seperti batu nisan bukanlah tandingannya. Semua mobil menganggap batu nisan <kanji>ringan</kanji> dan mudah diangkut.', 'Apa yang Anda harap Anda harus mengangkut batu nisan ini? Oh, benar, sebuah mobil. Jadi, Anda memerlukan semacam <reading>car</reading> <reading>loo</reading>phole (かる). Jika Anda punya mobil, bisnis pindahan batu nisan ini tidak akan menjadi masalah. Bagi mobil, batu nisan hanyalah kerikil <kanji>ringan</kanji>! Namun aturannya mengatakan Anda tidak boleh menggunakan mobil untuk membawa batu nisan, jadi Anda perlu mencari celah mobil.')
    RETURNING id INTO k_751_ringan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '運', 'membawa', 10, 34, 'Saat mengendarai <radical>skuter</radical>, Anda membenturkan <radical>dahi</radical> Anda ke <radical>mobil</radical> di depan. Skuter Anda rusak, jadi Anda harus <kanji>membawanya</kanji> pulang. Anda memerlukan banyak <kanji>keberuntungan</kanji> untuk membawa skuter itu pulang dengan selamat.', 'Saat Anda <kanji>membawa</kanji> skuter, <kanji>keberuntungan</kanji> Anda berubah, dan hujan mulai turun, jadi Anda mengeluarkan <reading>um</reading>brella (うん) Anda. Sekarang Anda memegang skuter, dahi, dan payung.')
    RETURNING id INTO k_752_membawa;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '開', 'membuka', 10, 35, '<radical>gerbang</radikal> dengan <radical>lentera</radikal> <kanji>terbuka</kanji> untuk Anda. Itu nyaman, karena di luar cukup gelap dan Anda mungkin tidak akan melihat gerbang yang terbuka tanpa bantuan lentera.', 'Gerbang <kanji>terbuka</kanji> ini berada di dalam air, jadi Anda memerlukan <reading>kay</reading>ak (かい) untuk masuk. Untungnya, Anda membawa kayak untuk berjaga-jaga.')
    RETURNING id INTO k_753_membuka;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '集', 'mengumpulkan', 10, 36, 'Anda mengejar <radical>kalkun</radikal> ke atas <radikal>pohon</radikal> untuk <kanji>mengumpulkan</kanji> itu. Setidaknya, Anda akan <kanji>mengumpulkan</kanji>cukup banyak kalkun di satu pohon ini.', 'Setelah kamu <kanji>mengumpulkan</kanji> cukup kalkun, kamu akan mengubahnya menjadi <reading>sepatu</reading> (しゅう). Mungkin bahkan dua sepatu, tapi itu berarti <kanji>mengumpulkan</kanji> lebih banyak kalkun!')
    RETURNING id INTO k_754_mengumpulkan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '飲', 'minum', 10, 37, 'Anda bisa <radical>makan</radical> sepuasnya, namun Anda masih <radical>kekurangan</radical> sesuatu untuk <kanji>minum</kanji>. Anda tidak bisa hidup hanya dengan makan, Anda juga harus minum!', 'Anda merasa sangat ingin <kanji>minum</kanji> dan memasukkan rumput laut <reading>no</reading>ri (の) ke dalam blender, mencoba membuat minuman Anda sendiri.')
    RETURNING id INTO k_755_minum;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '業', 'bisnis', 10, 38, 'Anda memiliki <radical>paku</radical> yang tumbuh dari <radical>domba</radical> dengan <radical>sirip</radical>. Ubah hal ini menjadi <kanji>bisnis</kanji>! Anda benar-benar dapat membebankan biaya kepada orang lain untuk melihatnya. Tentu, Anda juga dapat menyumbangkannya untuk ilmu pengetahuan, tetapi orang yang berpikiran bisnis seperti Anda mengetahui peluang bisnis ketika Anda melihatnya. Ayo maju! Hanya lima dolar untuk melihat sekilas domba mer runcing yang langka!', 'Saat Anda mengembangkan <kanji>bisnis</kanji> Anda, Anda mengizinkan pelanggan memberi makan pangsit <reading>gyo</reading>za (ぎょう) domba, camilan favoritnya. Tentu saja dengan biaya yang tidak sedikit. Orang-orang menyukainya ketika domba mutan memakan gyoza dari tangan mereka. Bukankah begitu?')
    RETURNING id INTO k_756_bisnis;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '漢', 'cina', 10, 39, '<radikal>tsunami</radikal> melanda <radikal>Tiongkok</radikal> kuno dan membentuk negara <kanji>Tiongkok</kanji> yang sekarang kita kenal sebagai... <kanji>Tiongkok</kanji>!

Terkadang kanji ini juga berarti <kanji>manusia</kanji>. Sebenarnya, istilah ini dulunya merujuk secara khusus pada orang-orang Dinasti Han, namun seiring berjalannya waktu berkembang menjadi istilah untuk laki-laki dalam konteks tertentu.', 'Anda melihat lebih dekat ke <kanji>Tiongkok</kanji> dan melihat seorang pria, Jenghis <reading>Khan</reading> (かん), memimpin pasukannya ke negara yang luas, siap untuk menaklukkan seluruh rakyat Tiongkok yang tinggal di Tiongkok!')
    RETURNING id INTO k_757_cina;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '路', 'jalan', 10, 40, 'Jika Anda telah berjalan sepanjang hari, <radical>kaki</radical> Anda adalah hal terakhir yang ingin <radical>cium</radical>, terutama setelah berjalan tanpa alas kaki di <kanji>jalan</kanji>. Kaki Anda kotor, berkeringat, dan bau. Tidak ada seorang pun yang mau mencium kaki itu.', 'Apa yang sedang dilalui orang ini? Oh, benar – sebuah <reading>ro</reading>ad (ろ). Mereka berjalan di jalan yang kotor.')
    RETURNING id INTO k_758_jalan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '農', 'pertanian', 10, 41, 'Anda meledakkan <radical>musik</radikal> Anda dengan keras sehingga menyebabkan <radikal>tanah longsor</radikal>, sehingga menghasilkan tanah yang sempurna untuk <kanji>bertani</kanji>! Tanah yang dipindahkan secara musikal sangat cocok untuk <kanji>pertanian</kanji>.', 'Orang pertama yang menemukan metode <kanji>bertani</kanji> ini adalah <reading>No</reading>stradamus (のう), ahli peramal dan peramal terkenal. Dia memperkirakan manusia di masa depan akan menggunakan “yell cube” khusus untuk “memindahkan bumi yang baik itu.”')
    RETURNING id INTO k_759_pertanian;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '鉄', 'besi', 10, 42, 'Anda melihat beberapa <radical>emas</radical> dan melihat <radical>kesalahan</radical> di dalamnya. Anda mengikis bagian patahannya dan melihat bahwa patahannya hanya disemprot cat emas. Itu bukan emas, itu (relatif) <kanji>besi</kanji> yang tidak berharga!', 'Tahukah Anda film itu, <reading>Tetsu</reading>o (てつ) the <kanji>Iron</kanji> Man? Kami membicarakannya di Tofugu beberapa waktu lalu. Itu salah satu film Jepang paling aneh sepanjang masa. Jika Anda belum tahu tentang Tetsuo the Iron Man, Anda harus mencarinya (jika Anda tidak menolak film horor/kekerasan). Tetsuo adalah salah satu film paling gila dalam sejarah.')
    RETURNING id INTO k_760_besi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '歌', 'lagu', 10, 43, 'Jika <radical>cincin bibir</radikal> (atau dua dalam hal ini) adalah apa yang <radikal>kekurangan</radikal> Anda, akan lebih mudah bagi Anda untuk <kanji>menyanyikan</kanji> sebuah <kanji>lagu</kanji>.', 'Ngomong-ngomong, di mana kamu selalu menyanyikan <kanji>lagu</kanji>? Di <reading>ca</reading>r (か) Anda. Bukan hanya kamu juga. Hampir semua orang suka bernyanyi di mobil mereka.')
    RETURNING id INTO k_761_lagu;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '算', 'menghitung', 10, 44, 'Jika seseorang menusukkan <radical>bambu</radical> ke <radical>mata</radical> Anda <radical>dua puluh</radical> kali, hal pertama yang dilakukan otak Anda adalah <kanji>menghitung</kanji> betapa menyakitkannya hal itu. <kanji>perhitungan</kanji> sakit otak Anda akan menentukan bagaimana Anda menghitung langkah Anda selanjutnya.', 'Selanjutnya Anda ingin <kanji>menghitung</kanji> berapa banyak hukuman yang pantas untuk penyerang bambu Anda, jadi Anda memanggil <read>San</reading>ta-san (さん). Santa-san selalu menghitung berapa banyak batu bara yang layak diterima oleh anak-anak nakal, jadi dia sempurna untuk pekerjaan <kanji>perhitungan</kanji> ini.')
    RETURNING id INTO k_762_menghitung;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '聞', 'mendengar', 10, 45, 'Jika Anda pergi ke <radical>gerbang</radical> dan menekan <radical>telinga</radical> Anda ke sana, Anda akan <kanji>mendengar</kanji> apa yang terjadi di sisi lain. Orang-orang di seberang sana tidak akan menyangka Anda bisa mendengar percakapan mereka.', 'Dari sisi lain gerbang, Anda <kanji>mendengar</kanji> salah satu orang mulai memutar lagu di alat perekam. Anda mengenali lagu itu sebagai "Hot Cross <reading>Bun</reading>s (ぶん)." Anda belum pernah mendengar lagu ini sejak sekolah dasar. "Roti salib panas, roti salib panas~"')
    RETURNING id INTO k_763_mendengar;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '語', 'bahasa', 10, 46, 'Apa yang Anda <radical>ucapkan</radical> di antara <radical>lima</radical> <radical>mulut</radical> adalah <kanji>bahasa</kanji>. Selama ada lima orang berbeda yang mengucapkan kata-kata yang sama dengan kelima mulutnya, itu dianggap sebagai bahasanya sendiri.', 'Mulut yang lain ikut berbicara <kanji>bahasa</kanji>, tetapi warnanya hijau dan bersisik dan... itu adalah mulut <reading>Go</reading>dzilla (ご)! Godzilla juga berbicara bahasa ini.')
    RETURNING id INTO k_764_bahasa;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '読', 'membaca', 10, 47, 'Anda harus <radical>mengatakan</radical> apa yang Anda <radical>jual</radical> karena orang tidak suka <kanji>membaca</kanji>. Jika mereka lewat dan tidak membaca, lebih baik Anda katakan apa yang Anda jual agar mereka tahu! Bacakan dengan lantang kepada mereka.', 'Apa yang terpaksa Anda <kanji>bacakan</kanji> untuk dijual? <membaca>Yo-</reading>yo (よ) instruksi! Anda mungkin berpikir itu sudah cukup jelas, namun sebenarnya ada banyak aturan dan trik yang harus Anda baca agar mahir dalam bermain yo-yo. Bacalah semua ini dengan lantang sehingga Anda bisa menjualnya.')
    RETURNING id INTO k_765_membaca;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '鳴', 'kicauan', 10, 48, 'Saat <radical>mulut</radical> <radical>burung</radical> terbuka, kemungkinan besar Anda akan mendengar <kanji>kicauan</kanji>. Beginilah cara burung berkomunikasi. Mereka membuka mulut dan mengeluarkan serangkaian kicauan. Kicauan kicauan kicauan!', 'Cara terbaik untuk merasakan <kanji>kicauan</kanji>-kicauan burung adalah dengan menawarkan <reading>na</reading>chos (な) kepada mereka. Burung sangat menyukai nacho, ini adalah cara yang dijamin akan membuat mereka berkicau kegirangan.')
    RETURNING id INTO k_766_kicauan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '線', 'garis', 10, 49, 'Anda dapat menggunakan <radical>benang</radikal> panjang selama arung jeram <radical>putih</radikal> <radikal>air</radikal> sebagai <kanji>jalur</kanji> yang aman. Memang tipis, tapi jika ada yang berlebihan bahkan seutas benang pun lebih baik daripada tidak sama sekali. Beri mereka garis dan seret mereka kembali ke kapal!', 'Orang yang melemparkan <kanji>baris</kanji> itu kepada Anda sebenarnya adalah seorang <reading>cen</reading>taur (せん). Dia baik sekali. Setelah Anda aman, Anda naik ke punggung centaur dan berkeliling untuk mendapatkan angin yang mengeringkan Anda.')
    RETURNING id INTO k_767_garis;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '横', 'samping', 10, 50, '<radikal>pohon</radikal> yang ditandai dengan tanda X <radikal>kuning</radikal> di <kanji>sisi</kanji> rumah akan ditebang. Anda telah menandainya dengan tanda X kuning sehingga petugas sewaan mengetahui pohon mana yang harus ditebang. Terdapat banyak pohon di samping rumah, namun pohon yang diberi tanda X kuning adalah satu-satunya pohon yang berisiko menyebabkan kerusakan pada atap Anda jika terjadi badai.', 'Tunggu, wanita dengan gergaji mesin itu adalah <read>Yoko</reading> (よこ) Ono! Ya, Yoko Ono yang sama yang menikah dengan John Lennon dari The Beatles. Apa yang dia lakukan menebang pohon di <kanji>sisi</kanji> rumahmu? Siapa yang tahu. Yoko yang konyol.')
    RETURNING id INTO k_768_samping;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '調', 'menyelidiki', 10, 51, 'Anda <radical>mengatakan</radical> sesuatu tentang <radical>lingkaran</radikal> area ini. Anda telah melihat sekeliling seluruh area ini, membuat lingkaran besar di sekelilingnya, karena Anda mencoba <kanji>menyelidiki</kanji> sesuatu yang terjadi di sini. Anda juga mengucapkan hal ini dengan <kanji>nada</kanji> yang sangat pelan, karena Anda tidak ingin orang atau hal yang Anda selidiki mengetahui bahwa Anda sedang menyelidikinya.', '"Saya datang ke sini untuk <kanji>menyelidiki</kanji> tempat ini, dan saya memang menemukan siapa penjahatnya... tidak lain adalah Nyonya <reading>Chou</reading> (ちょう)!"')
    RETURNING id INTO k_769_menyelidiki;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '親', 'induk', 10, 52, 'Jika kamu <radical>berdiri</radical>di bawah <radical>pohon</radical> dan kamu <radical>melihat</radical> <kanji>orang tua</kanji> kamu, ini adalah kesempatan bagus untuk mendapatkan momen <kanji>keintiman</kanji>.', 'Sambil berdiri di bawah pohon, kamu hendak memberikan pelukan erat pada <kanji>orang tua</kanji>mu, tapi kamu berhasil membenturkan <reading>tulang kering</reading> (しん)mu ke akar pohon yang besar. Orang tuamu menarikmu untuk pelukan hangat dan menggosok tulang keringmu. Meski menyakitkan, itu menjadi momen "shin-time" yang tak terlupakan.')
    RETURNING id INTO k_770_induk;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '頭', 'kepala', 10, 53, 'Jika Anda memberi banyak <radical>kacang</radikal> ke <radical>geoduck</radical>, <kanji>kepala</kanji>-nya akan bertambah besar. Bagi seekor geoduck, kacang-kacangan adalah makanan otak, jadi dengan memakan kacang-kacangan, ia bisa menumbuhkan kepalanya yang sangat besar. Geoduck sudah terlihat cukup aneh, apalagi dengan kepala besar.', 'Semakin banyak geoduck memakan kacang, <kanji>kepalanya</kanji> semakin membesar, hingga akhirnya kepalanya meledak seperti bom <reading>atomi</reading>c (あたま). LEDAKAN! Bagian-bagian Geoduck beterbangan ke mana-mana dan potongan kepalanya yang besar melayang ke tanah sebagai dampak atom.')
    RETURNING id INTO k_771_kepala;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '顔', 'menghadapi', 10, 54, 'Anda <radical>berdiri</radical> di atas <radical>tebing</radical>, <radical>sehelai rambut</radical> dari tepinya, ketika entah dari mana <radical>geoduck</radical> menampar <kanji>wajah</kanji> Anda. Kekuatannya membuat Anda mundur dari tepi tebing, dan wajah Anda berlendir karena sisa geoduck.', 'Tapi darimana geoduck itu berasal? Saat Anda berbelok dari tepi tebing, Anda mendapati diri Anda <kanji>berhadapan</kanji> dengan <reading>sapi</reading> (かお). Sapi inilah yang memukul wajahmu dengan geoduck. Kamu tidak tahu kenapa, tapi ada sesuatu di wajahmu yang membuat sapi itu kesal.')
    RETURNING id INTO k_772_menghadapi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '病', 'sakit', 10, 55, 'Sebatang <radical>sakit</radical> dari <radical>dynamite</radical> akan menjadi <kanji>sakit</kanji> selamanya. Sayangnya tidak ada obat yang efektif untuk batang dinamit, jadi begitu tertular penyakit, mereka akan sakit selamanya.', 'Merasa gugup sepanjang waktu karena meledak secara spontan mungkin akan membuat Anda berkeringat banyak. Dan tahukah Anda apa penyebab berkeringat? <read>B.O.</reading> (びょう). Anda akan menjadi dinamit yang bau. B.O. adalah bau yang sangat tidak enak, dan <kanji>sakit</kanji> bukanlah alasan.')
    RETURNING id INTO k_773_sakit;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '最', 'paling', 10, 56, 'Biarkan <radical>matahari</radikal> menyinari <radikal>telinga</radikal> Anda sambil duduk di <radikal>bangku</radikal> dan pastikan <kanji>sebagian besar</kanji> masuk ke dalam kepala Anda. Anda ingin mengisi otak Anda dengan sinar matahari terbanyak yang pernah dimiliki siapa pun.', '<kanji>Sebagian besar</kanji> dari ini adalah untuk <reading>cy</reading>borg (さい) Anda. Anda sedang menguji cara baru untuk menyalakannya, tapi jika Anda tidak bisa mendapatkan sebagian besar sinar matahari di telinga Anda, itu tidak akan cukup untuk memberi daya pada sebagian besar komponen robot cyborg.')
    RETURNING id INTO k_774_paling;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '求', 'meminta', 10, 57, 'Lihatlah <radikal>tanah</radikal>! Anda menumpahkan <radical>air</radical> <radical>tetesan</radical>, jadi saya <kanji>meminta</kanji> agar Anda menyekanya. Aku akan melakukannya sendiri, tapi kaulah yang menumpahkannya, jadi aku memintamu melakukannya. Permintaan yang cukup masuk akal bukan?', 'Oh, satu hal lagi. Saya <kanji>meminta</kanji> agar Anda menyeka air dengan <reading>cu</reading>cumber (きゅう) ini.')
    RETURNING id INTO k_913_meminta;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '解', 'menyelesaikan', 10, 58, '<radical>Sudutkan</radical> <radical>pedang</radical> Anda dengan benar ke <radical>sapi</radical> ini untuk <kanji>memecahkan</kanji> teka-tekinya. Kuncinya adalah <kanji>melepaskan</kanji> sapi dengan pedang tanpa melukainya.', 'Apakah saya sudah menyebutkan bahwa Anda harus <kanji>memecahkan</kanji> seluruh teka-teki ini saat berada di <reading>kay</reading>ak (かい)? TIDAK?! Ups.')
    RETURNING id INTO k_1150_menyelesaikan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '頁', 'halaman', 10, 59, 'Tahukah Anda bahwa makhluk <radical>geoduck</radical> aneh tersebut pernah digunakan untuk membuat <kanji>halaman</kanji>? Oke mungkin tidak, tapi itu akan menghasilkan gambar yang berkesan!', '<kanji>halaman</kanji> adalah <membaca>halaman</membaca> (ページ).')
    RETURNING id INTO k_9051_halaman;

  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_465_menyelesaikan, 'Menyelesaikan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_465_menyelesaikan, 'Menyelesaikan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_465_menyelesaikan, 'Akhir', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_499_publik, 'Publik', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_630_lurus, 'Lurus', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_630_lurus, 'Langsung', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_630_lurus, 'Memperbaiki', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_713_mulai, 'Mulai', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_713_mulai, 'Awal', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_740_bangun, 'Bangun', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_741_cepat, 'Cepat', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_742_mendistribusikan, 'Mendistribusikan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_743_alkohol, 'Alkohol', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_744_lembaga, 'Lembaga', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_745_akhir, 'Akhir', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_745_akhir, 'Menyelesaikan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_746_mempelajari, 'Mempelajari', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_747_berputar, 'Berputar', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_748_maju, 'Maju', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_749_jatuh, 'Jatuh', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_750_daun, 'Daun', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_750_daun, 'Daun-daun', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_751_ringan, 'Ringan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_751_ringan, 'Lampu', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_751_ringan, 'Ringan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_752_membawa, 'Membawa', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_752_membawa, 'Keberuntungan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_753_membuka, 'Membuka', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_754_mengumpulkan, 'Mengumpulkan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_754_mengumpulkan, 'Mengumpulkan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_755_minum, 'Minum', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_756_bisnis, 'Bisnis', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_757_cina, 'Cina', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_757_cina, 'Pria', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_757_cina, 'Cina', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_758_jalan, 'Jalan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_759_pertanian, 'Pertanian', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_759_pertanian, 'Pertanian', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_760_besi, 'Besi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_761_lagu, 'Lagu', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_761_lagu, 'Menyanyi', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_762_menghitung, 'Menghitung', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_762_menghitung, 'Perhitungan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_763_mendengar, 'Mendengar', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_764_bahasa, 'Bahasa', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_765_membaca, 'Membaca', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_766_kicauan, 'Kicauan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_767_garis, 'Garis', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_768_samping, 'Samping', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_768_samping, 'Horisontal', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_769_menyelidiki, 'Menyelidiki', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_769_menyelidiki, 'Nada', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_770_induk, 'Induk', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_770_induk, 'Keintiman', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_771_kepala, 'Kepala', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_772_menghadapi, 'Menghadapi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_773_sakit, 'Sakit', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_773_sakit, 'Penyakit', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_773_sakit, 'Sakit', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_773_sakit, 'Penyakit', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_774_paling, 'Paling', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_913_meminta, 'Meminta', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1150_menyelesaikan, 'Menyelesaikan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1150_menyelesaikan, 'Membuka', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_9051_halaman, 'Halaman', true, true);

  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_465_menyelesaikan, 'りょう', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_499_publik, 'こう', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_499_publik, 'おおやけ', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_499_publik, 'く', 'onyomi', false, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_630_lurus, 'ちょく', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_630_lurus, 'じき', 'onyomi', false, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_630_lurus, 'なお', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_713_mulai, 'し', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_713_mulai, 'はじ', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_740_bangun, 'お', 'kunyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_740_bangun, 'き', 'onyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_741_cepat, 'そく', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_741_cepat, 'はや', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_742_mendistribusikan, 'はい', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_742_mendistribusikan, 'くば', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_743_alkohol, 'しゅ', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_743_alkohol, 'さけ', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_743_alkohol, 'さか', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_744_lembaga, 'いん', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_745_akhir, 'しゅう', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_745_akhir, 'おわ', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_745_akhir, 'お', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_746_mempelajari, 'しゅう', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_746_mempelajari, 'なら', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_747_berputar, 'てん', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_747_berputar, 'ころ', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_748_maju, 'しん', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_748_maju, 'すす', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_749_jatuh, 'らく', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_749_jatuh, 'お', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_750_daun, 'は', 'kunyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_750_daun, 'よう', 'onyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_750_daun, 'ば', 'kunyomi', false, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_751_ringan, 'かる', 'kunyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_751_ringan, 'かろ', 'kunyomi', false, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_751_ringan, 'けい', 'onyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_752_membawa, 'うん', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_752_membawa, 'はこ', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_753_membuka, 'かい', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_753_membuka, 'あ', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_753_membuka, 'ひら', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_754_mengumpulkan, 'しゅう', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_754_mengumpulkan, 'あつ', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_755_minum, 'の', 'kunyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_755_minum, 'いん', 'onyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_756_bisnis, 'ぎょう', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_757_cina, 'かん', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_757_cina, 'おとこ', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_758_jalan, 'ろ', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_758_jalan, 'じ', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_758_jalan, 'みち', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_759_pertanian, 'のう', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_760_besi, 'てつ', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_761_lagu, 'か', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_761_lagu, 'うた', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_762_menghitung, 'さん', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_762_menghitung, 'そろ', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_763_mendengar, 'ぶん', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_763_mendengar, 'もん', 'onyomi', false, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_763_mendengar, 'き', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_764_bahasa, 'ご', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_764_bahasa, 'かた', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_765_membaca, 'よ', 'kunyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_765_membaca, 'とう', 'onyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_765_membaca, 'どく', 'onyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_765_membaca, 'とく', 'onyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_766_kicauan, 'な', 'kunyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_766_kicauan, 'めい', 'onyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_767_garis, 'せん', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_768_samping, 'よこ', 'kunyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_768_samping, 'おう', 'onyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_769_menyelidiki, 'ちょう', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_769_menyelidiki, 'しら', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_770_induk, 'しん', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_770_induk, 'おや', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_770_induk, 'した', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_771_kepala, 'あたま', 'kunyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_771_kepala, 'かしら', 'kunyomi', false, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_771_kepala, 'ず', 'onyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_771_kepala, 'とう', 'onyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_771_kepala, 'こうべ', 'kunyomi', false, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_772_menghadapi, 'かお', 'kunyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_772_menghadapi, 'がん', 'onyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_773_sakit, 'びょう', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_773_sakit, 'へい', 'onyomi', false, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_773_sakit, 'や', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_773_sakit, 'やまい', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_774_paling, 'さい', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_774_paling, 'もっと', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_913_meminta, 'きゅう', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_913_meminta, 'もと', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1150_menyelesaikan, 'かい', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1150_menyelesaikan, 'と', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_9051_halaman, 'ページ', 'kunyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_9051_halaman, 'ぺーじ', 'kunyomi', false, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_9051_halaman, 'かしら', 'kunyomi', false, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_9051_halaman, 'けつ', 'onyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_9051_halaman, 'よう', 'onyomi', false, false);

  -- 3. VOCABULARIES
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '次', 'berikutnya', 10, 60, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.', 'Karena kata ini terdiri dari satu kanji, maka sebaiknya menggunakan bacaan kun''yomi. Saat mempelajari kanji, Anda tidak mempelajari bacaan tersebut, jadi inilah mnemonik untuk membantu Anda dengan kata ini: 

Seseorang berteriak "BERIKUTNYA!" karena hal pertama tidak berhasil pada Anda. Itu adalah sebuah guillotine tunggal. Sekarang mereka akan mencoba <reading>dua gui</reading>llotines (つぎ) dan melihat cara kerjanya pada leher tebal Anda. BERIKUTNYA!', 'Berikutnya')
    RETURNING id INTO v_2870_berikutnya;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '南東', 'tenggara', 10, 61, '<kanji>Selatan</kanji> <kanji>Timur</kanji> adalah <vocabulary>Tenggara</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan on''yomi untuk kedua kanjinya. Anda pernah melihat bacaan tersebut sebelumnya di 南米 dan 東京, misalnya, jadi sebaiknya Anda pergi ke sini!', 'Tenggara')
    RETURNING id INTO v_2900_tenggara;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '助手', 'asisten', 10, 62, 'Ingat bagaimana 手 bisa berarti "pelaku" dalam beberapa kata? Menurut Anda, apa <kanji>bantuan</kanji> <kanji>pelaku</kanji> Anda? Ia adalah seseorang yang membantu Anda, jadi ia adalah <vocabulary>asisten</vocabulary>, <vocabulary>helper</vocabulary>, atau <vocabulary>aide</vocabulary> Anda.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda mempelajari pembacaan on''yomi 手 dengan kosakata 投手.', 'Asisten, Pembantu, Pembantu')
    RETURNING id INTO v_2999_asisten;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '対立', 'konflik', 10, 63, 'Jika Anda <kanji>versus</kanji> orang lain dan Anda <kanji>berdiri</kanji>menghalangi satu sama lain, Anda berada dalam <vocabulary>konflik</vocabulary>. Lebih baik berharap mereka tidak lebih besar dari Anda, atau <vocabulary>konfrontasi</vocabulary> ini mungkin akan menjadi ide yang buruk…

対立 adalah saat dua pihak berkonflik, biasanya karena ide, tujuan, atau kepentingan mereka tidak cocok. Ini adalah jenis <vocabulary>oposisi</vocabulary> di mana tidak ada pihak yang mau mundur, dan mereka terus berdiri melawan satu sama lain.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Konflik, Konfrontasi, Oposisi')
    RETURNING id INTO v_3009_konflik;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '決める', 'untuk-memutuskan', 10, 64, 'Kata ini terdiri dari kanji dengan hiragana ditempelkan. Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanjinya sendiri berarti <kanji>memutuskan</kanji> jadi versi kata kerjanya adalah <vocabulary>to memutuskan</vocabulary>.', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi. Anda tidak belajar membaca dengan kanji ini, jadi inilah mnemonik untuk membantu Anda: 

Anda memiliki <vocabulary>untuk memutuskan</vocabulary>. Anda memiliki dua kunci <reading></reading> (き) di depan Anda. Anda harus memutuskan salah satunya dan menggunakannya untuk membuka kunci pintu untuk melarikan diri dari monster itu. Mengapa serangan monster selalu berujung pada kunci dan pintu?', 'Untuk Memutuskan')
    RETURNING id INTO v_3018_untuk_memutuskan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '始める', 'untuk-memulai-sesuatu', 10, 65, 'Kata ini terdiri dari kanji dengan hiragana ditempelkan. Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanji itu sendiri berarti <kanji>mulai</kanji> atau <kanji>mulai</kanji>, dan versi kata kerjanya adalah <vocabulary>memulai</vocabulary>, <vocabulary>memulai sesuatu</vocabulary>, <vocabulary>memulai</vocabulary>, atau <vocabulary>memulai sesuatu</vocabulary>.

Ini adalah kata kerja transitif. Artinya dibutuhkan objek langsung. Anda memulai sesuatu. Suka belajar! Tapi kamu seharusnya mulai belajar lebih awal, ya?', 'Karena kata ini memiliki okurigana (hiragana yang melekat pada kanji), Anda tahu bahwa itu mungkin pembacaan kun''yomi, yang tidak Anda pelajari dengan kanji. Berikut ini mnemonik untuk membantu Anda:

Sekarang waktunya <vocabulary>memulai</vocabulary> <reading>Haji</reading> (はじ). (Haji adalah rukun Islam yang kelima, dan merupakan ibadah haji ke Mekkah pada bulan Dhu al-Hijja). Anda harus memulai haji sekarang!', 'Untuk Memulai Sesuatu, Untuk Memulai Sesuatu, Untuk Memulai, Untuk Memulai')
    RETURNING id INTO v_3097_untuk_memulai_sesuatu;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '苦い', 'rasanya-pahit', 10, 66, 'Kanji untuk 苦 berarti <kanji>penderitaan</kanji>. Namun, kata ini sedikit berbeda, tetapi Anda akan melihat kaitannya. Artinya <vocabulary>rasanya pahit</vocabulary>. Bayangkan memasukkan hal paling <vocabulary>pahit</vocabulary> di dunia ke dalam mulut Anda. Anda merasa mual, mulut Anda terasa aneh, dan Anda mencoba meludahkannya tetapi rasa pahitnya tetap ada. Tentu saja memakan makanan yang rasanya pahit akan menyebabkan Anda menderita.', 'Pembacaan kanji ini unik untuk arti kata tersebut, jadi inilah mnemonik untuk membantu Anda!

Rasanya <vocabulary>pahit</vocabulary> sampai-sampai Anda jatuh berlutut. Untungnya, kamu mengenakan <reading>pelindung lutut</reading>rds (にが). Rasakan leganya Anda memakainya. Ack, tidak lega sekarang. Masih terasa pahit di mulutmu.', 'Rasanya Pahit, Pahit')
    RETURNING id INTO v_3110_rasanya_pahit;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '乗せる', 'untuk-memberi-seseorang-tumpangan', 10, 67, 'Kata ini terdiri dari kanji dengan hiragana ditempelkan. Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanjinya sendiri berarti <kanji>naik</kanji> jadi kata ini ada hubungannya dengan berkuda. Ada kata lain yang serupa (乗る yang artinya mengendarai). Yang ini bersifat transitif, artinya ada objek langsung. Tindakan tersebut dilakukan terhadap seseorang atau sesuatu. Jadi ini berarti <vocabulary>memberi tumpangan</vocabulary> ketika digunakan untuk orang lain, dan <vocabulary>meletakkan sesuatu di</vocabulary>, atau <vocabulary>memuat sesuatu</vocabulary> ketika digunakan untuk sesuatu. 

Gunakan せ sebagai petunjuk.せ adalah "layar" (せ) yang Anda gunakan di perahu Anda untuk memberi tumpangan kepada seseorang. Kamu baik sekali.', 'Bacaannya kun''yomi (lihat hiragana itu?) tapi itu bacaan yang kamu pelajari dengan kanji jadi kamu seharusnya baik-baik saja dengan ini. Izinkan saya memberi Anda tumpangan ke item berikutnya untuk dipelajari.', 'Untuk Memberi Seseorang Tumpangan, Untuk Menempatkan Sesuatu, Untuk Memuat Sesuatu')
    RETURNING id INTO v_3113_untuk_memberi_seseorang_tumpangan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '重い', 'berat', 10, 68, 'Ini adalah kanji tunggal dengan い di akhir, artinya Anda tahu itu mungkin kata sifat. Apa bentuk kata sifat dari <kanji>berat</kanji>? Ini juga <vocabulary>berat</vocabulary>.', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi. Anda tidak belajar membaca dengan kanji ini, jadi inilah mnemonik untuk membantu Anda: 

Anda sedang mengangkat sesuatu yang <vocabulary>berat</vocabulary>. Aduh! Anda mengangkatnya di atas kepala Anda. Kamu luar biasa. Anda berteriak: "<reading>OH! MO</reading>RE!" (おも) mereka menambahkan lebih banyak. Anda berteriak lagi: "OH, LEBIH BANYAK!" dan lagi: "OH, LEBIH BANYAK!" Lanjutkan dan lakukan hal ini di mana pun Anda berada, berpura-puralah Anda sedang memegang satu atau dua atau tiga sofa di atas kepala Anda, sambil berkata, "OH LEBIH BANYAK!"', 'Berat')
    RETURNING id INTO v_3150_berat;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '起きる', 'untuk-bangun', 10, 69, 'Kata ini terdiri dari kanji dengan hiragana ditempelkan. Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanjinya sendiri berarti <kanji>bangun</kanji> sehingga versi kosakata kata kerjanya adalah <vocabulary>to wake up</vocabulary> atau <vocabulary>to wake up</vocabulary>.

Kata ini juga memiliki arti sekunder yaitu <vocabulary>terjadi</vocabulary>. Anggap saja seperti ini: ketika suatu tindakan "bangun", maka tindakan tersebut juga terjadi.', 'Bacaannya sama dengan yang dipelajari dengan kanji, jadi besok kalau bangun semoga tidak perlu mempelajari kembali bacaan vocab ini.', 'Untuk Bangun, Untuk Bangun, Terjadi')
    RETURNING id INTO v_3159_untuk_bangun;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '早速', 'sekaligus', 10, 70, 'Melakukan sesuatu <kanji>cepat</kanji> dan <kanji>lebih awal</kanji> mungkin mengharuskan Anda melakukannya <vocabulary>sekaligus</vocabulary> atau <vocabulary>segera</vocabulary>. Apapun itu, pastikan untuk melakukannya <vocabulary>tanpa penundaan</vocabulary>.', 'Pembacaan yang satu ini aneh. Pembacaan untuk 速 (そく) sesuai dengan yang Anda harapkan (on''yomi), namun 早 mendapat pembacaan yang belum pernah Anda lihat sebelumnya, artinya Anda harus menganggap ini sebagai pengecualian. Bayangkan saja bagaimana Anda mempelajari kata ini <vocabulary>sekaligus</vocabulary> dan <vocabulary>tanpa penundaan</vocabulary> sehingga tidak ada waktu untuk <reading>sa</reading>ss (さっ), hanya belajar kanji.', 'Sekaligus, Langsung, Tanpa Penundaan, Segera, Sekarang')
    RETURNING id INTO v_3160_sekaligus;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '速度', 'kecepatan', 10, 71, '<kanji>kecepatan</kanji><kanji>derajat</kanji> Anda adalah <vocabulary>kecepatan</vocabulary> Anda. 

Anda menggunakan 速度 untuk berbicara tentang kecepatan tertentu seperti mobil atau kereta api. Jika ingin membicarakan kecepatan dengan lebih santai, cukup ucapkan スピード atau 速さ.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Kecepatan')
    RETURNING id INTO v_3161_kecepatan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '配る', 'untuk-mendistribusikan', 10, 72, 'Kata ini terdiri dari kanji dengan hiragana ditempelkan. Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanjinya sendiri berarti <kanji>mendistribusikan</kanji> sehingga versi kosakata kata kerjanya adalah <vocabulary>to distribution</vocabulary>.', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi. Anda tidak belajar membaca dengan kanji ini, jadi inilah mnemonik untuk membantu Anda:

Anda akan <vocabulary>mendistribusikan</vocabulary> brosur tentang negara favorit Anda: <reading>Kuba</reading> (くば). Anda adalah Cubaboo terbesar yang pernah ada, jadi Anda akan dengan senang hati berdiri di jalan sambil membagikan brosur tentang Kuba sepanjang hari… bukan?', 'Untuk Mendistribusikan, Pingsan, Untuk Memberikan')
    RETURNING id INTO v_3162_untuk_mendistribusikan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', 'お酒', 'demi', 10, 73, 'Ini hanya versi kata benda dari kanji 酒 - ada お yang membuatnya bagus. Kata ini dapat berarti <vocabulary>alcohol</vocabulary> (seperti kanji induknya) atau <vocabulary>sake</vocabulary> (jenis utama alkohol Jepang, setidaknya pada zaman kanji).', 'Pembacaannya adalah kun''yomi, yang bukan seperti yang Anda pelajari dengan kanji. Tapi, itu seharusnya cukup mudah. Anda sudah tahu apa sebutan alkohol Jepang, bukan? <reading>さけ</reading>, sesederhana itu. Selama Anda pernah mendengar tentang sake, Anda pasti setuju dengan bacaan ini.', 'Demi, Alkohol')
    RETURNING id INTO v_3163_demi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '日本酒', 'alkohol-gaya-jepang', 10, 74, 'Anda tahu bahwa 日本 adalah "Jepang", jadi ketika Anda menambahkan <kanji>alkohol</kanji> di akhir kata tersebut, Anda akan mendapatkan <vocabulary>Alkohol Gaya Jepang</vocabulary> (apa jenis alkohol Jepang terhebat yang diketahui semua orang? Itu adalah <vocabulary>sake</vocabulary>).', 'Pembacaan untuk ini hanyalah bacaan utama vocab 日本 ditambah on''yomi yang Anda pelajari untuk 酒, disatukan.', 'Alkohol Gaya Jepang, Alkohol Jepang, Demi')
    RETURNING id INTO v_3164_alkohol_gaya_jepang;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '病院', 'rsud', 10, 75, '<kanji>lembaga</kanji> <kanji>sakit</kanji> adalah tempat orang sakit pergi. Itu adalah <vocabulary>rumah sakit</vocabulary>.

病院 adalah kata luas yang digunakan tidak hanya untuk rumah sakit besar namun juga <vocabulary>kantor dokter</vocabulary> atau <vocabulary>clinic</vocabulary> biasa. Jadi ketika orang Jepang berbicara bahasa Inggris, mereka mungkin akan mengatakan "rumah sakit" meskipun mereka baru saja pergi ke klinik kecil setempat.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'RSUD, Kantor Dokter, Klinik')
    RETURNING id INTO v_3165_rsud;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '学院', 'akademi', 10, 76, '<kanji>studi</kanji> <kanji>institusi</kanji> adalah <vocabulary>akademi</vocabulary>. Di sanalah semua orang-orang mewah belajar.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Akademi, Lembaga')
    RETURNING id INTO v_3166_akademi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '終わる', 'untuk-mengakhiri', 10, 77, 'Kata ini terdiri dari kanji dengan hiragana ditempelkan. Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanji sendiri berarti <kanji>berakhir</kanji>, jadi kata kerja ini berarti <vocabulary>to end</vocabulary> atau <vocabulary>to be over</vocabulary>.

Kata kerja yang diakhiri dengan okurigana yang berima dengan ある cenderung bersifat intransitif, dan 終わる biasanya juga bersifat intransitif. Namun terkadang bisa bersifat transitif dan mengambil objek langsung. Seperti "to end" dalam bahasa Inggris — Anda bisa mengatakan kelas berakhir (intransitif) atau guru mengakhiri kelasnya (transitif).', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi. Anda tidak belajar membaca dengan kanji ini, jadi inilah mnemonik untuk membantu Anda: 

Situasi ini <vocabulary>harus berakhir</vocabulary>. Anda adalah <read>berhutang</reading> (おわ) dari banyak uang. Agar ini berakhir, Anda harus membayar kembali semua uang itu. Cobalah memikirkan cara untuk berhenti berhutang agar situasi stres ini bisa berakhir!', 'Untuk Mengakhiri, Akan Berakhir')
    RETURNING id INTO v_3167_untuk_mengakhiri;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '終点', 'perhentian-terakhir', 10, 78, '<kanji>akhir</kanji> <kanji>titik</kanji> adalah tempat segalanya berakhir... tetapi untuk contoh ini, bayangkan sebuah peta dengan rute di atasnya. Tempat terakhir pada rute tersebut adalah "titik terakhir". Ini adalah <vocabulary>perhentian terakhir</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Perhentian Terakhir, Perhentian Terakhir, terminal')
    RETURNING id INTO v_3168_perhentian_terakhir;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '終了', 'akhir', 10, 79, 'Ini adalah <kanji>akhir</kanji>. Ini adalah <kanji>selesai</kanji>. Kata ini berarti <vocabulary>end</vocabulary>. Atau <vocabulary>selesai</vocabulary>! Betapa nyamannya.

Perhatikan bahwa 終了 sedikit lebih formal daripada 終わる.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Akhir, Menyelesaikan, Menutup')
    RETURNING id INTO v_3169_akhir;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '最終', 'terakhir', 10, 80, 'Hal <kanji>yang paling</kanji> <kanji>akhir</kanji> adalah hal <vocabulary>terakhir</vocabulary>. Hal ini terutama digunakan untuk merujuk pada <vocabulary>terakhir</vocabulary> dari urutan yang diurutkan.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Terakhir, Terakhir, Yang Terakhir, Akhir')
    RETURNING id INTO v_3170_terakhir;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '習う', 'untuk-belajar', 10, 81, 'Kata ini terdiri dari kanji dengan hiragana ditempelkan. Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanjinya sendiri berarti <kanji>belajar</kanji> sehingga versi vocab verbanya berarti <vocabulary>to learn</vocabulary> atau <vocabulary>to take learning</vocabulary> sesuatu.', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi. Anda tidak belajar membaca dengan kanji ini, jadi inilah mnemonik untuk membantu Anda: 

Anda harus <vocabulary>belajar</vocabulary> tentang <reading>Nara</reading>, kota rusa... banyak sekali rusa. Jika Anda tidak mengetahuinya, bagaimana dengan mempelajarinya?', 'Untuk Belajar, Untuk Mengambil Pelajaran')
    RETURNING id INTO v_3171_untuk_belajar;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '転がる', 'untuk-berguling', 10, 82, 'Anda tahu kanji di sini artinya <kanji>berputar</kanji>. Versi kata kerjanya serupa. Artinya <vocabulary>berguling</vocabulary> atau <vocabulary>jatuh</vocabulary>. Anda harus berputar agar bisa berguling atau terjatuh, bukan? 転がる bersifat intransitif, sehingga tidak mengambil objek langsung. Sebuah bola menggelinding menuruni bukit. Sebuah tumbleweed jatuh. Tidak ada objek langsung, bukan?

Kata kerja yang berakhiran okurigana yang berima dengan ある cenderung bersifat intransitif seperti ini. Anda dapat mengingat hal ini karena jika ada sesuatu yang ある, ia hanya ada di sana, ada, tidak bertindak <em>pada</em> hal lain. Itu sebabnya kata kerja yang terdengar seperti itu seringkali juga bersifat intransitif!', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi. Anda tidak belajar membaca dengan kanji ini, jadi inilah mnemonik untuk membantu Anda: 

Apa yang harus Anda lakukan saat ingin <vocabulary>berguling</vocabulary> menuruni bukit? Menjadi sebotol <read>Coro</reading>na (ころ). Bayangkan saja diri Anda sebagai sebotol Corona, yang menggelinding menuruni bukit. Anda adalah botol Corona, jadi Anda bisa menggulungnya dengan sangat mudah. Sekarang rasakan rumput di bawah kaca Anda saat Anda berguling menuruni bukit itu. Bagus, bukan?', 'Untuk Berguling, Jatuh, Untuk Berbaring, Untuk Disebarkan')
    RETURNING id INTO v_3172_untuk_berguling;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '自転車', 'sepeda', 10, 83, '<kanji>diri</kanji> <kanji>berputar</kanji> <kanji>mobil</kanji>. Anda mungkin berpikir ini adalah mobil biasa, namun <vocabulary>sepeda</vocabulary> mungkin sudah diperkenalkan sebelum mobil ada, artinya mobil yang dapat berputar sendiri adalah sepedanya, bukan mobilnya. Bayangkan saja diri Anda sedang mengendarai sepeda, dan Anda bahkan tidak perlu mengayuhnya. Mereka berputar sendiri, tapi sekarang Anda melaju terlalu cepat dan itu menakutkan.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Sepeda, Sepeda, sepeda dorong')
    RETURNING id INTO v_3173_sepeda;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '運転する', 'untuk-mengemudi', 10, 84, 'Sesuatu yang <kanji>membawa</kanji> <kanji>rotasi</kanji> (pikirkan roda!) adalah sebagian besar jenis kendaraan. Jadi, ini seperti mengatakan Anda sedang "membuat kendaraan" di sini... tapi itu tidak masuk akal. Apa yang Anda lakukan terhadap kendaraan? Anda mengendarainya. Itu sebabnya kata ini berarti <vocabulary>mengemudi</vocabulary>.', 'Ini adalah kata jukugo dengan bacaan on''yomi yang telah Anda pelajari, ditambah する yang dilampirkan di akhir untuk mengubahnya menjadi kata kerja. Selama Anda mengetahui pembacaan kanji Anda, Anda juga akan tahu cara membacanya.', 'Untuk Mengemudi')
    RETURNING id INTO v_3174_untuk_mengemudi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '転送', 'transfer', 10, 85, 'Anda <kanji>memutar</kanji> sesuatu, membuatnya menggelinding, lalu <kanji>mengirimkannya</kanji> ke suatu tempat. Ini berarti Anda <vocabulary>mentransfer</vocabulary>ring atau meneruskannya ke orang lain.

転送 sering digunakan dalam konteks logistik atau sistem komunikasi, seperti mentransfer paket atau meneruskan email.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Transfer, Penerusan')
    RETURNING id INTO v_3175_transfer;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '回転', 'berputar', 10, 86, 'Anda <kanji>berputar</kanji> X sebanyak <kanji>kali</kanji>. Sebenarnya, waktu tidaklah begitu penting, namun perputaranlah yang penting. Itu sebabnya kata ini <vocabulary>revolve</vocabulary> atau <vocabulary>rotate</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya. P.S. Pernah mendengar tentang "回転ずし?" Itu adalah jenis sushi yang ada di ban berjalan, berputar-putar, membawakan Anda sepiring makanan lezat.', 'Berputar, Memutar, Rotasi')
    RETURNING id INTO v_3176_berputar;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '進む', 'untuk-maju', 10, 87, 'Kata ini terdiri dari kanji dengan hiragana ditempelkan. Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanjinya sendiri berarti <kanji>maju</kanji> jadi versi vocab verbanya berarti <vocabulary>maju</vocabulary>.

進む adalah kata kerja intransitif, artinya menggambarkan sesuatu atau seseorang yang bergerak (む) ke depan. Ini dapat digunakan untuk gerakan fisik, seperti orang yang berjalan ke depan atau jam yang berjalan cepat, atau untuk kemajuan abstrak, seperti dalam pekerjaan atau studi seseorang.', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi. Anda tidak belajar membaca dengan kanji ini, jadi inilah mnemonik untuk membantu Anda:

Untuk <vocabulary>meningkatkan</vocabulary>, Anda harus <reading>menuntut Sue</reading> (すす) atas kesalahannya terhadap Anda. Bayangkan dia menghalangi Anda, secara harfiah. Dia terus berkata, "Kamu harus menuntut saya jika kamu ingin <vocabulary>maju</vocabulary>!" Jadi, Anda melakukannya - Anda menuntut Sue. Dengan begitu, Anda akhirnya bisa melanjutkan hidup Anda.', 'Untuk Maju, Untuk Maju, Untuk Kemajuan')
    RETURNING id INTO v_3177_untuk_maju;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '進化', 'evolusi', 10, 88, 'Pikirkan hal-hal yang <kanji>maju</kanji> dan <kanji>berubah</kanji>. Apakah ini terdengar familier? Apakah ini terdengar seperti <vocabulary>evolusi</vocabulary>?', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Evolusi, Kemajuan')
    RETURNING id INTO v_3178_evolusi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '進行', 'maju', 10, 89, 'Ketika sesuatu <kanji>maju</kanji> dan <kanji>berjalan</kanji>, maka ia bergerak maju. Jadi ini berarti <vocabulary>kemajuan</vocabulary> atau <vocabulary>kemajuan</vocabulary>.

進行 dapat digunakan untuk menggambarkan berbagai situasi, seperti ketika suatu proyek berlangsung; tetapi juga ketika suatu penyakit sudah mencapai tahap yang lebih serius.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Maju, Kemajuan')
    RETURNING id INTO v_3179_maju;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '落ちる', 'jatuh', 10, 90, 'Kata ini terdiri dari kanji dengan hiragana ditempelkan. Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanjinya sendiri berarti <kanji>jatuh</kanji> dan versi vocab verbanya berarti <vocabulary>jatuh</vocabulary>, <vocabulary>jatuh</vocabulary>, dan <vocabulary>jatuh</vocabulary>. Bisa juga berarti <vocabulary>gagal</vocabulary>, dalam artian gagal dalam ujian.', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi. Anda tidak belajar membaca dengan kanji ini, jadi inilah mnemonik untuk membantu Anda: 

Jika Anda mulai <vocabulary>jatuh</vocabulary>, apa yang Anda teriakkan? "<membaca>OHHHH</membaca> (お)!"', 'Jatuh, Jatuh, Untuk Menjatuhkan, Gagal')
    RETURNING id INTO v_3180_jatuh;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '青葉', 'daun-segar', 10, 91, '<kanji>muda</kanji> <kanji>daun</kanji> persis seperti yang Anda harapkan, meskipun kebanyakan orang biasanya hanya menyebutnya <vocabulary>daun segar</vocabulary>.

Ingat bagaimana ada tumpang tindih antara biru dan hijau dalam bahasa Jepang? 青葉 adalah contoh lainnya!  Itu sebabnya 青 digunakan untuk menggambarkan daun hijau segar dan subur, terutama yang ada di pepohonan pada awal musim panas.', 'Bacaan kanji pada kata ini adalah bacaan kun''yomi. Karena Anda sudah pernah melihat kata 青, mudah-mudahan Anda bisa menggabungkannya dengan 葉 (Anda sudah mempelajari bacaan bagian ini dengan kanji). Namun, pastikan untuk memperhatikan rendaku. は menjadi ば pada kata ini, menjadikannya <reading>あおば</reading>.', 'Daun Segar, Tanaman hijau, Daun Muda')
    RETURNING id INTO v_3181_daun_segar;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '軽い', 'ringan', 10, 92, 'Ini adalah kanji tunggal dengan い di akhir, artinya Anda tahu itu mungkin kata sifat. Apa bentuk kata sifat dari <kanji>ringan</kanji>? Ini juga <vocabulary>ringan</vocabulary>.', 'Bacaan yang Anda pelajari dengan kanji adalah bacaan yang akan Anda gunakan di sini. Oleh karena itu, kata ini termasuk <vocabulary>ringan</vocabulary>.', 'Ringan, Lampu, Ringan')
    RETURNING id INTO v_3182_ringan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '運ぶ', 'untuk-membawa', 10, 93, 'Kata ini terdiri dari kanji dengan hiragana ditempelkan. Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanjinya sendiri berarti <kanji>membawa</kanji> jadi versi kata kerjanya adalah <vocabulary>to carry</vocabulary>.', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi. Anda tidak belajar membaca dengan kanji ini, jadi inilah mnemonik untuk membantu Anda: 

Bayangkan Anda harus <vocabulary>membawa</vocabulary> seorang <reading>har</reading>d<reading>co</reading>re (はこ) penggemar musik ke rumah setelah konser. Mereka menghabiskan sepanjang malam mendengarkan suara-suara keras, dan sekarang mereka terlalu lelah untuk berjalan. Tapi kamu? Anda adalah teman setia, jadi Anda dengan senang hati membawanya.', 'Untuk Membawa, Untuk Transportasi, Untuk Bergerak')
    RETURNING id INTO v_3183_untuk_membawa;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '運がいい', 'beruntung', 10, 94, 'Bagian いい berarti "baik". Jadi, ketika apa yang <kanji>bawa</kanji> Anda bagus, Anda <vocabulary>beruntung</vocabulary>. Anggap saja keberuntungan adalah benda fisik yang Anda bawa di tangan. Sekarang bayangkan diri Anda membawanya. Sekarang pikirkan dalam hati “yang saya bawa bagus, untung!”', 'Pembacaan kanji pada vocab ini sama dengan yang kamu pelajari dengan kanji, artinya kamu harus bisa membacanya.', 'Beruntung, Beruntung')
    RETURNING id INTO v_3184_beruntung;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '開ける', 'untuk-membuka-sesuatu', 10, 95, 'Kata ini terdiri dari kanji dengan hiragana ditempelkan. Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanji itu sendiri berarti <kanji>membuka</kanji> dan versi kosakata kata kerjanya adalah <kosa kata>membuka sesuatu</vocabulary>.', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi. Anda tidak belajar membaca dengan kanji ini, jadi inilah mnemonik untuk membantu Anda:

Anda pergi <vocabulary>untuk membuka</vocabulary> sebuah pintu. Ketika Anda melakukannya, Anda akan mendengar ucapan kaget "<reading>Ah</reading> (あ)!" dari dalam. Karena malu, kamu melontarkan kata "Ah!" dan buru-buru menutup pintu lagi. Mungkin kamu harus belajar mengetuk sebelum membuka pintu, lho?', 'Untuk Membuka Sesuatu')
    RETURNING id INTO v_3185_untuk_membuka_sesuatu;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '公開', 'terbuka-untuk-umum', 10, 96, 'Ketika sesuatu <kanji>publik</kanji> <kanji>terbuka</kanji> maka itu adalah <vocabulary>terbuka untuk umum</vocabulary>. Anda dapat melihat hal-hal yang 公開. Anda juga dapat menggunakan ini saat Anda <vocabulary>merilis</vocabulary> sesuatu ke publik, yang berarti Anda membuatnya dapat diakses oleh publik.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Terbuka Untuk Umum, Melepaskan')
    RETURNING id INTO v_3186_terbuka_untuk_umum;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '開業', 'membuka-bisnis', 10, 97, 'Ini adalah salah satu kata yang memiliki kanji yang pada dasarnya memberi tahu Anda artinya. Anda <kanji>membuka</kanji> sebuah <kanji>bisnis</kanji>... alias <vocabulary>membuka bisnis</vocabulary>.

Meskipun hal ini dapat digunakan untuk membuka segala jenis bisnis, hal ini umumnya dikaitkan dengan dokter, pengacara, dan profesional lainnya yang membuka praktik atau kantor mereka sendiri.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Membuka Bisnis, Memulai Bisnis')
    RETURNING id INTO v_3187_membuka_bisnis;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '開発', 'perkembangan', 10, 98, 'Anda sekarang <kanji>buka</kanji> untuk <kanji>keberangkatan</kanji>. Anda naik perahu dan meninggalkan tempat ini. Anda akan pergi ke tempat lain untuk memulai <vocabulary>pengembangan</vocabulary>, tempat Anda akan menciptakan dunia baru.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Perkembangan')
    RETURNING id INTO v_3188_perkembangan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '集める', 'untuk-mengumpulkan-sesuatu', 10, 99, 'Kata ini terdiri dari kanji dengan hiragana ditempelkan. Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanji sendiri berarti <kanji>mengumpulkan</kanji> dan kata kerja ini bersifat transitif, artinya tindakan yang dilakukan terhadap sesuatu atau seseorang. Jadi kata kerja ini memiliki arti seperti <vocabulary>mengumpulkan sesuatu</vocabulary> dan <vocabulary>mengumpulkan sesuatu</vocabulary>.', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi. Anda tidak belajar membaca dengan kanji ini, jadi inilah mnemonik untuk membantu Anda:

Anda punya sesuatu, tapi koleksinya tidak banyak. Apa yang harus Anda dapatkan jika ingin <vocabulary>mengumpulkan sesuatu</vocabulary>? <read>Ah, dua</reading> (あつ)! Dua hal itu! Ya, ketika Anda sudah merasa cukup untuk berkata "Ah, dua..." Anda tahu bahwa Anda sudah benar-benar mulai mengumpulkan sesuatu. Ah, dua kartu perdagangan Crabigator! Melihat?', 'Untuk Mengumpulkan Sesuatu, Untuk Mengumpulkan Sesuatu')
    RETURNING id INTO v_3189_untuk_mengumpulkan_sesuatu;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '集中', 'konsentrasi', 10, 100, 'Ketika Anda <kanji>mengumpulkan</kanji> ke <kanji>tengah</kanji> diri Anda, Anda mengumpulkan menuju otak Anda. Semua energi diarahkan ke sana, berkumpul di tengah, memberi Anda <vocabulary>konsentrasi</vocabulary> dan <vocabulary>fokus</vocabulary> yang ekstrim.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Konsentrasi, Fokus')
    RETURNING id INTO v_3190_konsentrasi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '集金', 'mengumpulkan-uang', 10, 101, 'Saat Anda <kanji>mengumpulkan</kanji> <kanji>emas</kanji> Anda <vocabulary>mengumpulkan uang</vocabulary> (atau melakukan <vocabulary>pengumpulan uang</vocabulary>). Tentu saja, pada masa lalu, emas disamakan dengan uang, itulah sebabnya kata ini berfungsi sebagaimana mestinya. Semoga Anda tidak harus berurusan dengan terlalu banyak 集金 dalam kehidupan sehari-hari Anda. Kami akan berusaha menjaga WaniKani tetap bagus dan harga terjangkau untuk Anda.

集金 sering kali mengacu pada pengumpulan tagihan, iuran, atau biaya secara langsung atau melalui perwakilan yang ditunjuk. Hal ini dapat dilakukan oleh suatu bisnis, organisasi, atau bahkan hanya sekelompok kecil orang.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Mengumpulkan uang, Pengumpulan Uang')
    RETURNING id INTO v_3191_mengumpulkan_uang;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '飲む', 'untuk-minum', 10, 102, 'Kata ini terdiri dari kanji dengan hiragana ditempelkan. Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanjinya sendiri berarti <kanji>minum</kanji> sehingga versi vocab verbanya adalah <vocabulary>to drink</vocabulary>.', 'Bacaannya sama dengan yang Anda pelajari dengan kanji. Pergilah minum atas nama Allicrab yang agung!', 'Untuk Minum')
    RETURNING id INTO v_3192_untuk_minum;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '工業', 'industri', 10, 103, '<kanji>bisnis</kanji> dari <kanji>industri</kanji> adalah... yah... <vocabulary>industri</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Industri')
    RETURNING id INTO v_3193_industri;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '漢字', 'kanji', 10, 104, '<kanji>Huruf</kanji>Cina</kanji>... Anda akhirnya mempelajari kata untuk mereka, hal yang telah Anda pelajari selama ini sejak lama! Ini adalah <vocabulary>kanji</vocabulary>, sahabat baru Anda (berasal dari Tiongkok, itulah sebabnya hurufnya berbahasa Mandarin).', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Kanji, Surat Cina, Karakter Cina')
    RETURNING id INTO v_3194_kanji;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '道路', 'jalan-beraspal', 10, 105, '<kanji>jalan</kanji> <kanji>jalan</kanji> jelas merupakan jenis jalan terbaik. Ini jalan ganda. Jadi, apa jalan terakhir ini? Ini adalah <vocabulary>jalan beraspal</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Jalan Beraspal, Jalan, Jalan Tertutup')
    RETURNING id INTO v_3195_jalan_beraspal;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '線路', 'jalur-kereta-api', 10, 106, '<kanji>jalur</kanji> yang berjalan di <kanji>jalan</kanji> adalah <vocabulary>jalur kereta api</vocabulary>. Pertama, Anda harus ingat bahwa "jalur" yang dimaksud adalah jalur kereta api. Lalu, jalur kereta api apa yang melintasi suatu jalan dan jenis jalan apa itu? Itu adalah <vocabulary>jalur kereta api</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Jalur Kereta Api, Ban, Jalur Kereta Api, Melacak, Garis')
    RETURNING id INTO v_3196_jalur_kereta_api;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '路地', 'gang', 10, 107, 'Jika dipikir-pikir, <kanji>bumi</kanji> <kanji>jalan</kanji> tidak akan menjadi jalan utama. Ini akan menjadi jalan yang jarang dilalui. Anda bisa menyebutnya <vocabulary>jalan</vocabulary> (Anda tahu, seperti jalan tanah!) atau <vocabulary>jalan tanah</vocabulary>. Alternatifnya, jalan lain yang jarang dilalui dan mungkin terbuat dari tanah di masa lalu (sebelum semuanya diaspal) adalah <vocabulary>gang</vocabulary>. Bayangkan diri Anda berjalan menyusuri gang tanah di malam hari tanpa sepatu. Menakutkan!', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Anda sudah mempelajari bacaan ini, jadi Anda seharusnya bisa membaca kata ini juga! Dan ingat, itu adalah bacaan じ yang Anda pelajari dengan 生地 di sini.', 'Gang, Jalur, Jalan Tanah')
    RETURNING id INTO v_3197_gang;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '農民', 'petani', 10, 108, 'Di masa lalu, <kanji>masyarakat</kanji> yang bekerja di <kanji>pertanian</kanji> adalah <vocabulary>petani</vocabulary>.

農民 berarti <vocabulary>petani</vocabulary>, tetapi biasanya tidak dalam pengertian modern tentang orang yang melakukan pekerjaan bertani sebagai pekerjaan sehari-hari mereka. Sebaliknya, yang dimaksud adalah <vocabulary>kelas petani</vocabulary> — orang-orang yang terlahir dalam kehidupan bertani, sering kali dalam konteks sejarah.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Petani, Petani, Kelas Pertanian')
    RETURNING id INTO v_3199_petani;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '農業', 'pertanian', 10, 109, 'Apa cara lain untuk menyebut <kanji>pertanian</kanji> sebagai <kanji>bisnis</kanji>? Jika Anda merangkumnya menjadi satu kata (dengan asumsi kita berbicara tentang budidaya tanaman di sini), Anda dapat menyebutnya <vocabulary>agriculture</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Pertanian')
    RETURNING id INTO v_3200_pertanian;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '地下鉄', 'kereta-bawah-tanah', 10, 110, '<kanji>tanah</kanji> <kanji>di bawah</kanji> <kanji>besi</kanji> adalah besi yang berada di bawah tanah. Tapi itu bukan deposit besi. Itu buatan manusia. Dan apa yang terbuat dari besi? Kereta api. Dalam hal ini, karena berada di bawah tanah, maka itu adalah <vocabulary>kereta bawah tanah</vocabulary>. Tergantung di mana Anda tinggal, Anda mungkin menyebutnya <vocabulary>Bawah Tanah</vocabulary>, <vocabulary>Tube</vocabulary>, atau <vocabulary>Metro</vocabulary>', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Kereta bawah tanah, Bawah Tanah, Tabung, Metro')
    RETURNING id INTO v_3201_kereta_bawah_tanah;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '鉄人', 'pria-kuat', 10, 111, '<kanji>manusia</kanji> yang terbuat dari <kanji>besi</kanji> adalah <vocabulary>manusia kuat</vocabulary>... alias <vocabulary>badass</vocabulary> yang sangat besar. Pernahkah Anda melihat "Koki Besi?" Terjemahan bahasa Jepangnya adalah 料理の鉄人, yang berarti "Chef Iron Man" alias "Chef Badass", setidaknya dalam buku saya.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Karena 人 memiliki dua bacaan on''yomi, berikut adalah mnemonik untuk membantu Anda mengingat mana yang harus digunakan:

Lihat <vocabulary>pria kuat</vocabulary> yang hanya mengenakan pakaian <reading>jean</reading> (じん). Dia tampak seperti orang keren dengan celana jinsnya, melenturkan otot dada. Sangat mengesankan, tapi juga sedikit menakutkan.', 'Pria Kuat, keren, Manusia Besi, Pria Macho, Pria Tangguh')
    RETURNING id INTO v_3202_pria_kuat;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '電鉄', 'kereta-api-listrik', 10, 112, '<kanji>listrik</kanji> <kanji>besi</kanji> terdengar menakutkan, tetapi jika Anda berpikir ke masa lalu dan di mana besi banyak digunakan, Anda mungkin berpikir tentang sistem kereta api... potongan besi besar yang diletakkan di tanah untuk membuat rel kereta api. Jadi, Anda dapat meningkatkan hal ini dengan menambahkan listrik sebagai pengganti batu bara, sehingga menciptakan <vocabulary>kereta api listrik</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Kereta Api Listrik')
    RETURNING id INTO v_3203_kereta_api_listrik;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '歌', 'lagu', 10, 113, 'Salah satu arti kanji adalah <kanji>lagu</kanji> dan kata ini memiliki arti yang persis sama: <vocabulary>lagu</vocabulary>.', 'Karena kata ini terdiri dari satu kanji, maka sebaiknya menggunakan bacaan kun''yomi. Saat mempelajari kanji, Anda tidak mempelajari bacaan tersebut, jadi inilah mnemonik untuk membantu Anda dengan kata ini: 

Pikirkan tentang sebuah lagu... tapi bukan sembarang lagu... pikirkan tentang lagu <reading>ucapan</reading> (うた), dan buatlah lagu itu sekarang juga dan nyanyikan dengan lantang. Seperti apa suara lagu aslinya? Mengapa Anda sangat menyukai ucapan sehingga Anda membuat lagu tentangnya?', 'Lagu')
    RETURNING id INTO v_3204_lagu;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '歌手', 'penyanyi', 10, 114, 'Ingat bagaimana 手 terkadang bisa berarti “pelaku”? Menurut Anda, <kanji>lagu</kanji> <kanji>pelaku</kanji> itu apa? Seorang <vocabulary>penyanyi</vocabulary>, tentu saja', 'Bacaannya adalah bacaan on''yomi. Anda sudah mempelajari keduanya (Anda mempelajari cara membaca on''yomi 手 dengan kata 投手), jadi Anda seharusnya bisa membaca ini seperti <vocabulary>penyanyi</vocabulary> bernyanyi dengan sekumpulan <reading>kacang mete</reading> di mulutnya. CEPAT DAN KERAS!', 'Penyanyi')
    RETURNING id INTO v_3205_penyanyi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '算数', 'hitung', 10, 115, 'Apa sebutannya ketika Anda <kanji>menghitung</kanji> <kanji>angka</kanji>? Yaitu pelajaran tentang <vocabulary>matematika</vocabulary> dan <vocabulary>aritmatika</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Hitung, Matematika, Matematika, Matematika')
    RETURNING id INTO v_3206_hitung;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '聞く', 'untuk-mendengar', 10, 116, 'Kata ini terdiri dari kanji dengan hiragana ditempelkan. Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanjinya sendiri berarti <kanji>mendengar</kanji> sehingga versi vocab verb-nya adalah <vocabulary>mendengar</vocabulary>.

Ini juga bisa berarti <vocabulary>bertanya</vocabulary> atau <vocabulary>mendengarkan</vocabulary>, seperti mengajukan pertanyaan kepada seseorang atau mendengarkan apa yang dikatakan orang lain. Ini pada dasarnya mencakup segala sesuatu yang melibatkan tindakan membiarkan sesuatu masuk melalui 門 (gerbang) 耳 (telinga) Anda.', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi. Anda tidak belajar membaca dengan kanji ini, jadi inilah mnemonik untuk membantu Anda:

Anda perlu <vocabulary>mendengar</vocabulary> sesuatu yang sangat penting, namun Anda tidak bisa. Untuk mendengar, Anda harus mengambil <reading>key</reading> (き) dan membuka kunci pintu yang menutupi telinga Anda. Silakan bayangkan diri Anda melakukan itu, dengan fokus pada kunci yang memungkinkan Anda mendengar.', 'Untuk Mendengar, Untuk Bertanya, Untuk Mendengarkan')
    RETURNING id INTO v_3208_untuk_mendengar;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '新聞', 'koran', 10, 117, '<kanji>yang baru</kanji> <kanji>mendengar</kanji> adalah seperti apa bunyinya. Ini adalah hal-hal baru yang Anda dengar di telinga Anda... setidaknya itulah yang terjadi di masa lalu. Sekarang hal-hal baru yang sampai ke telinga Anda sampai kepada Anda melalui media lain. Dalam hal ini, <vocabulary>surat kabar</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Koran')
    RETURNING id INTO v_3209_koran;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '日本語', 'bahasa-jepang', 10, 118, 'Anda tahu 日本 adalah "Jepang." Jadi, ketika Anda menambahkan <kanji>bahasa</kanji> di akhir, Anda memiliki <vocabulary>Bahasa Jepang</vocabulary>.', 'Yang dibaca hanyalah kosakata 日本 (にほん) ditambah on''yomi yang kamu pelajari untuk 語. Gabungkan keduanya untuk mendapatkan bacaan untuk kata ini.', 'Bahasa Jepang, Jepang')
    RETURNING id INTO v_3210_bahasa_jepang;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', 'フランス語', 'bahasa-perancis', 10, 119, 'Saya yakin Anda bisa menebak bahwa フランス berarti "Prancis". Jadi apa yang terjadi jika Anda menambahkan <kanji>bahasa</kanji> ke dalamnya? Anda mendapatkan "Bahasa Perancis" alias <vocabulary>Bahasa Perancis</vocabulary>.', 'Pembacaannya hanyalah bacaan on''yomi untuk 語 yang merupakan bacaan yang Anda pelajari dengan kanji. Ini mungkin karena kata tersebut ditambahkan ke banyak kata lain sehingga dianggap seperti jukugo. Misalnya: 日本語 = "Bahasa Jepang". 中国語 = "Bahasa Cina." スペイン語 = "Bahasa Spanyol."', 'Bahasa Perancis, Perancis')
    RETURNING id INTO v_3211_bahasa_perancis;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', 'スペイン語', 'bahasa-spanyol', 10, 120, 'Anda mungkin bisa mengetahui bahwa スペイン adalah "Spanyol" hanya dengan membacanya. Tambahkan <kanji>bahasa</kanji> kanji di sana dan Anda akan mendapatkan <vocabulary>bahasa Spanyol</vocabulary> (atau hanya <vocabulary>Spanyol</vocabulary>), jika Anda mau.', 'Pembacaan bagian kanji hanyalah pembacaan yang Anda pelajari dengan kanji. Karena melekat pada sesuatu, itu seperti kata jukugo.', 'Bahasa Spanyol, Spanyol')
    RETURNING id INTO v_3212_bahasa_spanyol;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '主語', 'subjek', 10, 121, '<kanji>utama</kanji> yang Anda bicarakan dalam <kanji>bahasa</kanji> Anda menjadi <vocabulary>subjek</vocabulary> kalimat.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Subjek')
    RETURNING id INTO v_3214_subjek;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '読む', 'untuk-membaca', 10, 122, 'Kata ini terdiri dari kanji dengan hiragana ditempelkan. Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanji itu sendiri berarti <kanji>membaca</kanji> sehingga versi kosakata kata kerjanya adalah <vocabulary>to read</vocabulary>.', 'Bacaannya sama dengan yang Anda pelajari dengan kanji. Bacalah yang lain, sekarang.', 'Untuk Membaca')
    RETURNING id INTO v_3215_untuk_membaca;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '読み方', 'cara-membaca', 10, 123, 'Anda tahu bahwa 読む berarti "membaca", bukan? Nah, <kanji>cara</kanji> membaca sesuatu disebut juga <vocabulary>cara membaca</vocabulary> itu. Dalam kasus kanji atau nama, ini mengacu pada <vocabulary>pembacaan</vocabulary>, namun secara lebih luas, ini juga bisa merujuk pada <vocabulary>cara membaca</vocabulary> tertentu — cara Anda mendekati membaca buku atau esai, misalnya.', 'Kata ini menggunakan bacaan kun''yomi untuk kedua kanjinya. Untuk 読, itulah bacaan yang Anda pelajari dengan kanji. Untuk 方, kun''yomi bukanlah bacaan utama yang Anda pelajari, jadi inilah mnemonik untuk membantu Anda mengingatnya:

Jika Anda ingin mengetahui <vocabulary>cara membaca</vocabulary> sebuah kanji, Anda harus menuliskannya pada sesuatu dan kemudian <reading>cata</reading>membawa (かた) melintasi laut menuju Jepang. Kemudian, seseorang di Jepang akan menuliskan <vocabulary>bacaan</vocabulary> untuk Anda dan melontarkannya kembali kepada Anda. Sebenarnya ini sistem yang cukup keren.', 'Cara Membaca, Membaca, Cara Membaca')
    RETURNING id INTO v_3216_cara_membaca;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '鳴く', 'untuk-membuat-suara-binatang', 10, 124, 'Kata ini terdiri dari kanji dengan hiragana ditempelkan. Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanji itu sendiri berarti <kanji>kicauan</kanji> tetapi kata kerjanya memiliki arti yang lebih luas yaitu <vocabulary>membuat suara binatang</vocabulary>. Variasinya mencakup <vocabulary>menggonggong</vocabulary> atau <vocabulary>kicau</vocabulary>, namun ini dapat digunakan untuk suara binatang apa pun.', 'Bacaannya sama dengan bacaan yang dipelajari dengan kanji. Jadi perbanyaklah waktu untuk berkicau dan kurangi waktu untuk menghafal ya.', 'Untuk Membuat Suara Binatang, Untuk Menggonggong, Untuk berkicau')
    RETURNING id INTO v_3217_untuk_membuat_suara_binatang;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '線', 'garis', 10, 125, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna. Ini juga berfungsi untuk "jalur kereta". Anda akan melihat ini terlampir di akhir nama yang menjelaskannya.', 'Pembacaan yang Anda pelajari dengan kanji sama untuk kosakata ini. Selamat menikmati!', 'Garis')
    RETURNING id INTO v_3218_garis;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '横', 'samping', 10, 126, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna. Harap dicatat bahwa kata ini mengacu pada "sisi dari sesuatu". Bukan "sisi kiri", misalnya. Itu akan menjadi 左側.', 'Pembacaan vocab ini sama dengan yang kamu pelajari dengan kanji, beruntunglah kamu!', 'Samping, Di samping, Di sebelah, Horisontal')
    RETURNING id INTO v_3219_samping;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '調子', 'kondisi', 10, 127, 'Bayangkan diri Anda <kanji>menyelidiki</kanji> seorang <kanji>anak</kanji>. Anda mendengar anak ini mengalami masa sulit, jadi Anda perlu datang memeriksa <vocabulary>kondisi</vocabulary> rumah dan kehidupannya. Anda mendapati kondisinya sangat buruk, dan Anda memberi tahu orang tuanya bahwa Anda harus membawa anak tersebut pergi karena kondisi ini (bayangkan kondisi mereka sangat buruk... mungkin mereka memelihara rakun di dapurnya?).', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Kondisi, Nada')
    RETURNING id INTO v_3220_kondisi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '強調', 'tekanan', 10, 128, 'Jika Anda menggunakan <kanji>kuat</kanji> <kanji>nada</kanji> pada kata-kata tertentu, maka Anda memberi <vocabulary>penekanan</vocabulary> pada apa pun yang sedang Anda bicarakan. Itu adalah <vocabulary>stress</vocabulary> yang Anda berikan pada hal-hal yang penting karena nada Anda menjadi lebih kuat pada kata atau suku kata tersebut.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Tekanan, Menyorot, Menekankan')
    RETURNING id INTO v_3221_tekanan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '調べる', 'untuk-menyelidiki', 10, 129, 'Kata ini terdiri dari kanji dengan hiragana ditempelkan. Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanjinya sendiri berarti <kanji>menyelidiki</kanji> sehingga versi vocab verbanya berarti <vocabulary>menyelidiki</vocabulary>.', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi. Anda tidak belajar membaca dengan kanji ini, jadi inilah mnemonik untuk membantu Anda: 

Anda dipekerjakan <vocabulary>untuk menyelidiki</vocabulary> istri seseorang. Dikatakan bahwa <read>dia mencintai</reading>s (しら) pria lain... tetapi Anda perlu menyelidikinya untuk mengetahui apakah itu benar, tentu saja untuk suaminya.', 'Untuk Menyelidiki, Untuk Memeriksa, Untuk Meneliti, Untuk Melihat Ke Dalam')
    RETURNING id INTO v_3222_untuk_menyelidiki;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '親', 'induk', 10, 130, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.', 'Karena kata ini terdiri dari satu kanji, maka sebaiknya menggunakan bacaan kun''yomi. Saat mempelajari kanji, Anda tidak mempelajari bacaan tersebut, jadi inilah mnemonik untuk membantu Anda dengan kata ini: 

Bayangkan saja orang tuamu berkata <reading>oh yah</reading> (おや) berulang kali kepadamu. Apa yang kamu lakukan di sekolah hari ini? Aku memukuli anak ini. "Oh ya?"', 'Induk')
    RETURNING id INTO v_3223_induk;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '親しい', 'intim', 10, 131, 'Ini adalah kanji tunggal dengan beberapa kana dan い di akhir, artinya Anda tahu itu mungkin kata sifat. Apa bentuk kata sifat dari <kanji>keintiman</kanji>? Ini <vocabulary>intim</vocabulary>! Tergantung pada konteksnya, ini juga berarti <vocabulary>ramah</vocabulary> atau <vocabulary>close</vocabulary>.', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi. Anda tidak belajar membaca dengan kanji ini, jadi inilah mnemonik untuk membantu Anda: 

Mereka yang paling <vocabulary>intim</vocabulary> dengan Anda bergaul dengan Anda bahkan ketika Anda sedang melakukan hal-hal kotor, seperti duduk di <reading>sh*tter</reading> (した). Kotor, keluargamu.', 'Intim, Ramah, Menutup')
    RETURNING id INTO v_3224_intim;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '親切', 'baik', 10, 132, 'Saat <kanji>orang tua</kanji>mu <kanji>memotong</kanji> kamu, kamu akan mengira mereka jahat... padahal sebenarnya tidak. Mereka mengeluarkan semua darah buruk darimu. Mereka benar-benar <vocabulary>baik</vocabulary>. 

Coba bayangkan betapa gilanya jika orang tuamu memotongmu... lalu pikirkan cara lain untuk membuat mereka bersikap baik.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Baik, Kebaikan')
    RETURNING id INTO v_3225_baik;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '親友', 'teman-dekat', 10, 133, '<kanji>teman</kanji> yang seperti salah satu <kanji>orang tua</kanji> Anda adalah seseorang yang akan menjaga Anda. Faktanya, mereka sudah seperti keluarga! Itu sebabnya kata ini berarti <vocabulary>sahabat</vocabulary> atau <vocabulary>sahabat dekat</vocabulary>. Bayangkan saja seseorang yang mengawasi Anda seperti halnya orang tua. Ini adalah cara untuk menggambarkannya.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Teman Dekat, Sahabat terbaik, Teman baik')
    RETURNING id INTO v_3226_teman_dekat;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '頭', 'kepala', 10, 134, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.

頭 berarti <vocabulary>head</vocabulary>, namun bisa juga merujuk pada banyak hal terkait lainnya. Misalnya, 頭がいい berarti Anda pintar (Anda memiliki "kepala yang baik") dan 話の頭 berarti awal sebuah cerita (bagian di "kepala" cerita tersebut). Ingat saja arti "kepala", dan Anda biasanya akan dapat menebak arti kiasannya berdasarkan konteksnya!', 'Karena kata ini terdiri dari satu kanji, maka sebaiknya menggunakan bacaan kun''yomi yang telah Anda pelajari dengan kanji sebelumnya. Tidak masalah!', 'Kepala')
    RETURNING id INTO v_3227_kepala;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '顔', 'menghadapi', 10, 135, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.', 'Pembacaannya adalah kun''yomi, karena ini adalah kanji tersendiri tanpa apa pun yang melekat. Untungnya, itu juga bacaan yang sudah Anda pelajari, jadi kaitkan dengan kosakata ini.', 'Menghadapi')
    RETURNING id INTO v_3228_menghadapi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '顔付き', 'ekspresi', 10, 136, 'Benda yang <kanji>ditempelkan</kanji> ke <kanji>wajah</kanji> Anda bukanlah booger besar atau sejenisnya. Itu adalah sesuatu yang selalu ada. Itu adalah <vocabulary>ekspresi</vocabulary> Anda.', 'Bacaannya sama-sama kun''yomi, tapi itu adalah bacaan yang sudah Anda pelajari saat mempelajari kanji.', 'Ekspresi, Raut wajah')
    RETURNING id INTO v_3229_ekspresi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '病気', 'sakit', 10, 137, 'Ketika <kanji>energi</kanji> Anda adalah <kanji>penyakit</kanji>, Anda mungkin <vocabulary>sakit</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Sakit, Penyakit, Penyakit, Penyakit')
    RETURNING id INTO v_3230_sakit;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '〜病', 'penyakit', 10, 138, 'Seperti yang mungkin bisa Anda bayangkan, saat Anda menambahkan kanji <kanji>sakit</kanji> ke kata lain, Anda sedang mengatakan <vocabulary>penyakit</vocabulary> apa itu; Anda menyebutkan <vocabulary>penyakit</vocabulary> apa itu.', 'Karena ini melekat pada kata lain, maka diperlakukan seperti jukugo dan mendapat perlakuan on''yomi. Ini adalah bacaan yang Anda pelajari dengan kanji.', 'Penyakit, Penyakit, Penyakit')
    RETURNING id INTO v_3231_penyakit;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '病人', 'orang-sakit', 10, 139, '<kanji>orang</kanji> yang <kanji>sakit</kanji> adalah <vocabulary>orang sakit</vocabulary>. Mereka juga <vocabulary>sabar</vocabulary>, setidaknya kita bisa berharap demikian, demi mereka.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Karena 人 memiliki dua bacaan on''yomi, berikut adalah mnemonik untuk membantu Anda mengingat mana yang harus digunakan:

Setiap <vocabulary>orang sakit</vocabulary> senang bermain <reading>Nin</reading>tendo (にん) miliknya. Anda menderita flu yang paling parah, tetapi Anda masih memiliki Nintendo, jadi semuanya baik-baik saja.', 'Orang Sakit, Sabar')
    RETURNING id INTO v_3232_orang_sakit;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '最も', 'yang-paling-banyak', 10, 140, 'Ini adalah versi kata keterangan dari kanji, jadi pada dasarnya memiliki arti yang sama. Bisa dibilang ini adalah <vocabulary>yang paling</vocabulary> atau hanya <vocabulary>paling</vocabulary>. Anda juga dapat menggunakannya sebagai <vocabulary>extremely</vocabulary>.', 'Bacaannya ini adalah bacaan yang tidak dipelajari dengan kanji (bacaan kun''yomi). Untuk mempelajarinya, mari kita lihat mnemonik. 

Pikirkan <kosakata>motto</reading> (もっと) paling konyol yang pernah Anda dengar. Sekarang bayangkan sebuah moto yang lebih konyol lagi. Berikut adalah beberapa semboyan nyata yang paling konyol: "Apa yang Dapat Dilakukan Brown untuk Anda?" "Ini Bukan untuk Wanita" "Jika Tidak Ada di Semua Tempat, Itu Tidak Cocok di Wajah Anda" dan tentu saja, "Mengapa Tidak Dinikmati?"', 'Yang Paling Banyak, Paling, Sangat')
    RETURNING id INTO v_3233_yang_paling_banyak;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '最高', 'terbaik', 10, 141, '<kanji>yang paling</kanji> <kanji>tinggi</kanji> sebenarnya bukanlah yang paling tinggi. Saat Anda memikirkan sesuatu yang lebih tinggi dari yang lain, Anda memikirkan sesuatu yang <vocabulary>yang terbaik</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Terbaik, Terbaik, Tertinggi')
    RETURNING id INTO v_3234_terbaik;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '最後', 'terakhir', 10, 142, 'Hal yang <kanji>paling</kanji> <kanji>setelah</kanji> yang lainnya berada di <vocabulary>akhir</vocabulary>. Ini adalah <vocabulary>terakhir</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Terakhir, Akhir, Kesimpulan, Terakhir')
    RETURNING id INTO v_3235_terakhir;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '最近', 'terkini', 10, 143, '<kanji>paling</kanji> <kanji>terdekat</kanji> adalah sesuatu yang terjadi dekat dengan saat ini. Hal ini terjadi <vocabulary>baru-baru ini</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Terkini, Terbaru, Akhir-akhir ini, Baru-baru ini')
    RETURNING id INTO v_3236_terkini;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '当て字', 'kanji-fonetik', 10, 144, '当てる berarti "menebak" atau "memukul", dan 字 berarti <kanji>huruf</kanji>. Jadi ini huruf tebakan? Seperti itulah yang disebut <vocabulary>fonetic kanji</vocabulary>, atau <vocabulary>ateji</vocabulary>.

Ini mengacu pada kasus di mana kanji digunakan semata-mata untuk bunyinya, bukan maknanya. Ada juga beberapa kasus ateji di mana kanji hanya digunakan untuk maknanya dan bukan bunyinya, namun hal ini kurang umum.', 'Bacaannya adalah bacaan kun''yomi untuk 当て dan bacaan on''yomi untuk 字. Anda pernah melihat 当てる sebelumnya, jadi Anda harus bisa membaca bagian ini juga. Gabungkan keduanya dan Anda akan mendapatkan bacaan yang bagus.', 'Kanji Fonetik, Ateji, Karakter Pengganti')
    RETURNING id INTO v_3426_kanji_fonetik;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '次々', 'satu-demi-satu', 10, 145, 'Ketika sesuatu terjadi dengan cara <kanji>berikutnya</kanji>, <kanji>berikutnya</kanji> (berikutnya, berikutnya, berikutnya…), hal itu terjadi <vocabulary>satu demi satu</vocabulary>.

Bayangkan lini pabrik untuk pemeriksaan barang. Orang-orang di sana terus berteriak, "Selanjutnya! Berikutnya!" karena item datang <vocabulary>berturut-turut</vocabulary> tanpa henti!', 'Bacaannya sama dengan kata 次 (jadi つぎ), namun kali ini dilakukan dua kali. Tidak ada rendaku yang aneh atau semacamnya juga, yang membuat semua orang lebih bahagia.', 'Satu demi satu, Dalam Suksesi')
    RETURNING id INTO v_3427_satu_demi_satu;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '代える', 'untuk-mengganti-sesuatu', 10, 146, 'Anda tahu kanji adalah <kanji>pengganti</kanji>, dan Anda tahu ini adalah kata kerja. Ada yang serupa lainnya, tapi yang ini berarti <vocabulary>mengganti sesuatu</vocabulary>. Untuk mengingat bahwa kata khusus ini berarti "mengganti sesuatu" fokuslah pada え. Anda memiliki sebutir telur di tangan yang menurut Anda tidak ada gunanya (warnanya hitam dan berjamur). Jadi, Anda menggantinya dengan telur lain (atau menggantinya dengan telur lain, atau menukarnya dengan telur lain, dan seterusnya).

Kata kerja ini bersifat transitif, artinya mempunyai objek langsung. Anda mengganti sesuatu, seperti telur itu!', 'Pembacaan kali ini sama dengan 代わる yang telah dipelajari pada level sebelumnya. Selama Anda mengetahuinya, Anda harus bisa mempelajari bacaan yang satu ini juga.', 'Untuk Mengganti Sesuatu, Untuk Mengganti Sesuatu, Untuk Bertukar Sesuatu')
    RETURNING id INTO v_3445_untuk_mengganti_sesuatu;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '目医者', 'dokter-mata', 10, 147, 'Apakah Anda ingat 医者 (dokter)? Apa yang terjadi jika Anda menambahkan <kanji>mata</kanji> di sana? Anda memiliki <vocabulary>dokter mata</vocabulary>.', 'Bacaannya hanya kosakata 医者 (いしゃ) ditambah bacaan 目 (め), sama seperti bacaan yang dipelajari dengan kanji.', 'Dokter Mata, Dokter mata, Dokter mata')
    RETURNING id INTO v_3480_dokter_mata;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '一番目', 'hal-pertama', 10, 148, 'Anda pernah melihat 一番 (nomor satu), jadi apa sebenarnya mata pada akhirnya ini? Mata (目) ini digunakan untuk menandai posisi sesuatu secara berurutan. Jadi, tambahkan ini ke "nomor satu" dan Anda akan mendapatkan <vocabulary>yang pertama</vocabulary> atau cukup <vocabulary>yang pertama</vocabulary>.

Bayangkan saja koleksi bola mata yang Anda miliki di rumah. (Anda punya koleksi bola mata, kan?) Anda menaruhnya di etalase dan Anda menjelaskan yang pertama kepada teman Anda. Ini bukan yang pertama karena ini yang terbaik atau apa pun - lagipula, Anda sama-sama menyukai semua mata Anda - tetapi ini memang terjadi di urutan pertama dalam tampilan Anda saat ini.', 'Bacaan kata ini hanya vocab kata 一番 ditambah kata 目. Jika Anda mengetahui kedua bacaan tersebut, Anda akan dapat membaca yang ini juga.', 'Hal Pertama, Yang Pertama, Hal Pertama')
    RETURNING id INTO v_3481_hal_pertama;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '楽しみ', 'menantikan', 10, 149, 'Anda pernah melihat kata 楽しい, yang artinya "menyenangkan". Ini jelas terlihat sangat mirip, meskipun yang ini berarti <vocabulary>menanti-nantikan</vocabulary>. Mengapa? Karena ada tanda み di akhir, yang berbunyi "siapa yang akan bersenang-senang? Ini <reading>saya</reading>! Itu sebabnya saya menantikannya!"', 'Bacaannya seperti 楽しい, jadi pastikan Anda mengetahuinya dan Anda akan bisa membaca yang ini juga.', 'Menantikan, Harapan, Ekspektasi, Antisipasi, Kesenangan, Kenikmatan')
    RETURNING id INTO v_3484_menantikan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '〜向け', 'dibuat-untuk', 10, 150, 'Mudah-mudahan Anda sudah melihat 向く dan 向ける sekarang. Artinya "menghadapi" dan "berbalik ke arah". Ini memiliki gagasan serupa. Saat Anda menambahkan 向け ke sesuatu, bayangkan Anda memutarnya, mengarahkannya ke seseorang. Ini ditujukan kepada mereka, artinya <vocabulary>dibuat untuk</vocabulary> mereka. Arahkan buku ke seseorang, sekarang <vocabulary>ditujukan untuk</vocabulary> mereka, dibuat untuk mereka. Lihat hubungannya?', 'Bacaannya sama dengan kata 向く jadi kerjakanlah kata tersebut agar bisa membaca yang ini.', 'Dibuat Untuk, Ditujukan Untuk, Ditujukan Pada')
    RETURNING id INTO v_3485_dibuat_untuk;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '研究所', 'lembaga-penelitian', 10, 151, 'Anda pernah melihat bahwa 研究 adalah "penelitian" dari kosakata sebelumnya, dan Anda mungkin ingat 所 dapat berarti "fasilitas". Jadi kata ini berarti <vocabulary>lembaga penelitian</vocabulary> atau, tentu saja, <vocabulary>fasilitas penelitian</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya. Ini juga akan membantu jika Anda sudah mengetahui bacaan 研究.

Perhatikan juga bahwa 所 normal pada bacaan pertama, tetapi mendapat rendaku pada bacaan kedua, artinya しょ menjadi じょ. Kedua bacaan tersebut valid dan tidak mempengaruhi maknanya, jadi tergantung pada preferensi pribadi!', 'Lembaga Penelitian, Fasilitas Penelitian')
    RETURNING id INTO v_3486_lembaga_penelitian;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '近道', 'jalan-pintas', 10, 152, 'Mengambil <kanji>jalan</kanji> <kanji>terdekat</kanji> akan membawa Anda ke tujuan lebih cepat (karena jaraknya lebih dekat!). Ini adalah <vocabulary>shortcut</vocabulary> alias <vocabulary>jalan pintas</vocabulary>.', 'Pembacaannya agak aneh dalam hal ini. Ini menggunakan pembacaan kun''yomi untuk kedua kanji, meskipun sepertinya semuanya harus dibaca on''yomi. Ini seperti Anda mengambil <vocabulary>jalan pintas</vocabulary> dengan pembacaan kanji Anda dan melakukan pembacaan asli bahasa Jepang (kun''yomi) daripada pembacaan bahasa Cina yang lebih intelektual (on''yomi). Untungnya, Anda mungkin sudah melihat kedua kanji ini sebagai kosakata. Anda memiliki ちか untuk 近 (kependekan dari 近い) dan Anda memiliki 道 (みち), sama seperti kata "jalan" yang Anda pelajari sebelumnya. Gabungkan ini bersama-sama dan Anda akan mendapatkan bacaan untuk kata ini. Mungkin seperti ini karena Anda menggabungkan beberapa konsep menjadi satu kata, setidaknya dalam hal "pendek + cara".', 'Jalan pintas, Jalan Singkat')
    RETURNING id INTO v_3487_jalan_pintas;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '助かる', 'untuk-dibantu', 10, 153, 'Anda tahu bahwa 助ける berarti "membantu". Kata ini, 助かる, ada hubungannya, tapi sedikit berbeda. Artinya <vocabulary>ditolong</vocabulary> atau <vocabulary>diselamatkan</vocabulary>. Bersifat intransitif, jadi tidak mengambil objek langsung. Bayangkan berteriak, "Saya selamat!" Tidak ada objek langsung, bukan?

Kata kerja yang berakhiran okurigana yang berima dengan ある cenderung bersifat intransitif seperti ini. Anda dapat mengingat hal ini karena jika ada sesuatu yang ある, ia hanya ada di sana, ada, tidak bertindak <em>pada</em> hal lain. Itu sebabnya kata kerja yang terdengar seperti itu seringkali juga bersifat intransitif!', 'Bacaannya sama dengan 助ける, jadi semoga anda mengetahui kata tersebut dan dapat mengaplikasikan ilmu tersebut disini.', 'Untuk Dibantu, Untuk Diselamatkan, Untuk Diselamatkan')
    RETURNING id INTO v_3488_untuk_dibantu;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '楽しむ', 'untuk-menikmati-sesuatu', 10, 154, 'Anda mungkin pernah melihat kata 楽しい, yang artinya "menyenangkan". Ini pada dasarnya adalah versi kata kerjanya (diakhiri dengan bunyi う, kan?). Artinya, ini adalah <vocabulary>untuk menikmati sesuatu</vocabulary>, atau sekadar <vocabulary>untuk bersenang-senang</vocabulary>.', 'Bacaannya sama dengan kata 楽しい, jadi pastikan Anda mengetahui kata tersebut dan Anda akan bisa menerapkannya di sini.', 'Untuk Menikmati Sesuatu, Untuk bersenang-senang')
    RETURNING id INTO v_3491_untuk_menikmati_sesuatu;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '投げ付ける', 'untuk-melempar-melawan', 10, 155, 'Anda tahu bahwa Anda sedang <kanji>melempar</kanji> sesuatu yang <kanji>melekatkan</kanji> pada sesuatu yang lain. Bagaimana lagi kamu bisa mengatakan itu? Cara terbaik adalah dengan mengatakan <vocabulary>melempar</vocabulary> atau <vocabulary>melempar</vocabulary>.', 'Pembacaannya hanya berasal dari dua kosakata yang mudah-mudahan sudah Anda lihat: 投げる dan 付ける. Selama Anda mengetahui bacaan kata-kata tersebut, maka bacaan kata ini seharusnya tidak menjadi masalah bagi Anda.', 'Untuk Melempar Melawan, Untuk Melempar')
    RETURNING id INTO v_3493_untuk_melempar_melawan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '化かす', 'untuk-menyihir', 10, 156, 'Anda pernah melihat kata 化ける (mengubah) sebelumnya, dan inilah kata terkaitnya: 化かす. Artinya <vocabulary>menyihir</vocabulary>, <vocabulary>menipu</vocabulary>, atau <vocabulary>menipu</vocabulary>.

Mengapa? Dalam cerita rakyat Jepang, rubah, roh, dan yokai lainnya sering bertransformasi untuk menyihir, mengelabui, atau menipu manusia. Dengan kata lain, kepada mereka.

Kata kerja ini bersifat transitif, sehingga memerlukan objek langsung — Anda menyihir, mengelabui, atau menipu seseorang. Kamu mengetahui hal ini karena ketika rubah ingin menyihir seseorang, mereka harus <reading>menyumpah</reading> (かす). Mereka mengucapkan kata-kata makian ajaib yang memungkinkan mereka mengubah wujud dan membodohi orang. Rubah licik itu…', 'Cara membacanya sama dengan 化ける, jadi pastikan Anda mengetahui kata tersebut dan Anda akan dapat mempelajari cara membaca kata tersebut juga.', 'Untuk Menyihir, Untuk Menipu, Untuk Menipu')
    RETURNING id INTO v_3494_untuk_menyihir;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '話', 'cerita', 10, 157, 'Versi kanji dari 話 berarti <kanji>berbicara</kanji>. Kata ini juga berarti <vocabulary>talk</vocabulary>, namun juga memiliki arti lain. Ini bisa merujuk pada <vocabulary>pidato</vocabulary> atau <vocabulary>story</vocabulary> juga. Pada dasarnya segala sesuatu yang melibatkan sesi pembicaraan. Jadi, sebelum Anda pergi, saya harap Anda tinggal sebentar dan mendengarkan 話 saya.', 'Hei, ceritakan <vocabulary>cerita</vocabulary> itu tentang saat kamu bertemu <reading>花-shee</reading>p (はなし). Anda tahu - domba yang tumbuh darinya, bukan wol. Tidak ada orang lain di sini yang pernah bertemu dengan 花-domba, jadi saya yakin mereka semua akan senang mendengar cerita Anda.', 'Cerita, Bicara, Pidato, Percakapan')
    RETURNING id INTO v_3495_cerita;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '決定する', 'untuk-memutuskan', 10, 158, 'Sebuah 決定 adalah sebuah "keputusan." Jadi, saat kamu menambahkan する ke dalamnya, kamu menjadikannya kata kerja, yang artinya kata ini berarti <vocabulary>untuk memutuskan</vocabulary>.', 'Bacaannya sama dengan 決定 dengan tambahan する. Pastikan Anda mengetahui 決定 dan Anda juga akan mengetahui kata ini.', 'Untuk Memutuskan, Untuk Menentukan')
    RETURNING id INTO v_3505_untuk_memutuskan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '出会う', 'untuk-bertemu-secara-kebetulan', 10, 159, 'Anda <kanji>keluar</kanji> rumah Anda dan <kanji>bertemu</kanji> seseorang. Anda tidak bermaksud untuk bertemu mereka, tetapi hal itu tetap terjadi. Itu sebabnya kata ini berarti <vocabulary>bertemu secara kebetulan</vocabulary>.', 'Bacaannya adalah kata 出る dan kata 会う, yang keduanya mudah-mudahan sudah Anda lihat. Bagian 出 mungkin membingungkan, tetapi Anda biasanya dapat berasumsi bahwa jika salah satu bagian dari kata tersebut adalah kun''yomi / bacaan vocab, maka bagian lainnya juga demikian, itulah sebabnya 出 menggunakan bacaan vocab.

Oh ngomong-ngomong, kata ini juga bisa ditulis seperti ini: 出合う. Ini tidak umum, tetapi Anda mungkin menemukannya sesekali, jadi ada baiknya Anda mengetahuinya!', 'Untuk Bertemu Secara Kebetulan, Untuk Bertemu Secara Tak Terduga, Untuk Menemukan, Untuk Bertemu, Untuk Bertemu')
    RETURNING id INTO v_3506_untuk_bertemu_secara_kebetulan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '心配', 'sebuah-kekhawatiran', 10, 160, 'Saat Anda <kanji>mendistribusikan</kanji> <kanji>hati</kanji> Anda ke sekeliling Anda, rasanya seperti hati Anda ada di mana-mana sekaligus, namun tidak di dalam tubuh Anda. Kamu merasa panik, kamu tidak tahu harus berbuat apa karena hatimu ada di luar sana. Ini mewakili perasaan yang Anda rasakan ketika Anda mempunyai <vocabulary>kekhawatiran</vocabulary> atau <vocabulary>kekhawatiran</vocabulary>. 心配しないでね！', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya. Perhatikan bahwa ぱい di 配 juga mendapat rendaku dari はい.', 'Sebuah Kekhawatiran, Kekhawatiran')
    RETURNING id INTO v_3564_sebuah_kekhawatiran;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '映る', 'untuk-dicerminkan', 10, 161, 'Kata ini terdiri dari kanji dengan hiragana ditempelkan. Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanji sendiri berarti <kanji>mencerminkan</kanji>. Versi kosakata kata kerjanya berarti <vocabulary>direfleksikan</vocabulary>. Anda tidak melakukan refleksi secara langsung. Anda dapat mengingat ini dengan memikirkan betapa kasarnya (る) ketika seseorang memantulkan bayangan Anda menggunakan cermin agar semua orang di luar ruang ganti dapat melihatnya.', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi. Anda tidak belajar membaca dengan kanji ini, jadi inilah mnemonik untuk membantu Anda: 

Bayanganmu terpantul di cermin. Anda tidak menyukainya, itu tidak terlihat seperti Anda. Refleksi penipu! Anda mengambil palu dan <reading>打つ</reading> (うつ) memukulnya sekuat tenaga, kaca beterbangan ke mana-mana. Kemudian beberapa dubstep mulai diputar dari cermin yang pecah: <reading>うつ</reading>うつうつうつ. 

Anda mungkin ingat bahwa bacaan ini sama dengan <reading>写</reading>る dan mungkin bertanya-tanya apakah keduanya ada kaitannya. Benar! Mereka berdua berbicara tentang gambaran sesuatu yang muncul di tempat lain, dan menggunakan kanji berbeda untuk membedakannya. Dalam kasus 写る, biasanya berupa foto, dan untuk 映る, dalam bentuk pantulan atau proyeksi (yang mencakup konten layar, seperti TV atau komputer).', 'Untuk Dicerminkan, Untuk Diproyeksikan')
    RETURNING id INTO v_3594_untuk_dicerminkan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '求める', 'untuk-meminta-sesuatu', 10, 162, 'Apa bentuk kata kerja dari <kanji>permintaan</kanji>? Itu adalah <vocabulary>untuk meminta sesuatu</vocabulary>. Bisa juga berupa <vocabulary>menginginkan sesuatu</vocabulary> atau bahkan <vocabulary>menuntut sesuatu</vocabulary>.

求める ​​berarti berusaha secara aktif untuk memperoleh sesuatu, entah itu benda, jawaban, bantuan, atau bahkan cita-cita. Terjemahannya akan berubah tergantung konteks: アドバイスを求める (meminta saran), 助けを求める (meminta bantuan), dan 答えを求める (mencari jawaban) adalah kemungkinan penggunaan.', 'Kata ini memiliki kanji yang dibubuhi hiragana, jadi bisa ditebak pasti menggunakan bacaan kun''yomi. Berikut ini mnemonik untuk membantu Anda mengingatnya:

Anda akan <vocabulary>meminta sesuatu</vocabulary>, tapi apa itu? Itu adalah <read>parit</reading> (もと). Parit di sekitar rumah Anda. Faktanya, Anda akan memintanya. Kucing tetangga Anda terus buang air besar di halaman Anda, tetapi jika Anda memiliki parit, mereka tidak akan bisa sampai ke halaman Anda, karena kucing membenci air (dan aligator). Anda meminta parit, sialan!', 'Untuk Meminta Sesuatu, Menginginkan Sesuatu, Untuk Menuntut Sesuatu')
    RETURNING id INTO v_3707_untuk_meminta_sesuatu;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '私鉄', 'kereta-api-swasta', 10, 163, '<kanji>besi</kanji> <kanji>pribadi</kanji> (ingat bagaimana 鉄 sering ada hubungannya dengan rel kereta api dan sejenisnya? Hal yang sama berlaku di sini) adalah <vocabulary>kereta api swasta</vocabulary>. Ada banyak sekali jenis ini di Jepang.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Kereta Api Swasta')
    RETURNING id INTO v_3717_kereta_api_swasta;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '要求', 'tuntutan', 10, 164, 'Anda <kanji>membutuhkan</kanji> <kanji>permintaan</kanji> ini terjadi, jadi Anda tidak hanya meminta dengan baik, Anda juga <vocabulary>menuntut</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Tuntutan, Persyaratan')
    RETURNING id INTO v_3924_tuntutan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '私大', 'perguruan-tinggi-swasta', 10, 165, 'Anda tahu bagaimana 私 bisa berarti <kanji>pribadi</kanji> dan bagaimana 大 adalah bagian pertama dari 大学? Gabungkan semuanya dan Anda akan mendapatkan versi singkat dari <vocabulary>perguruan tinggi swasta</vocabulary> atau <vocabulary>universitas swasta</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Karena 大 mempunyai dua pembacaan on''yomi, berikut adalah mnemonik untuk membantu Anda mengingat mana yang harus digunakan:

Anda kuliah di <vocabulary>perguruan tinggi swasta</vocabulary> tertentu hanya untuk mempelajari <reading>pewarna</reading> (だい). Anda sangat menyukai pewarna sehingga Anda memutuskan untuk kuliah di <vocabulary>universitas swasta</vocabulary> yang sangat mahal dan berspesialisasi dalam pewarna. Bagus untukmu!', 'Perguruan Tinggi Swasta, Universitas Swasta, Universitas Swasta')
    RETURNING id INTO v_4129_perguruan_tinggi_swasta;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '開始', 'awal', 10, 166, 'Kata <kanji>terbuka</kanji> dari <kanji>awal</kanji> adalah <vocabulary>awal</vocabulary> atau <vocabulary>awal</vocabulary>.

Perhatikan bahwa 開始 sedikit lebih formal daripada 始める.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Awal, Awal, Pembukaan')
    RETURNING id INTO v_4375_awal;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '曲線', 'melengkung', 10, 167, '<kanji>tikungan</kanji> pada <kanji>garis</kanji> hanyalah sebuah <vocabulary>kurva</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Melengkung, Garis Melengkung')
    RETURNING id INTO v_4379_melengkung;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '解決', 'pemecahan', 10, 168, 'Anda duduk untuk <kanji>menyelesaikan</kanji> suatu masalah dan dengan tegas <kanji>memutuskan</kanji> tindakan Anda. Proses ini disebut <vocabulary>solusi</vocabulary>, dan ini mengarah pada <vocabulary>solusi</vocabulary> dan <vocabulary>penyelesaian</vocabulary>.

解決 adalah tentang menemukan resolusi atau menyelesaikan suatu masalah. Ini dapat digunakan baik untuk masalah pribadi berskala kecil maupun untuk masalah berskala besar seperti masalah sosial dan politik.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Pemecahan, Larutan, Hunian')
    RETURNING id INTO v_4465_pemecahan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '言語', 'bahasa', 10, 169, 'Saat Anda <kanji>mengucapkan</kanji> kata-kata dalam <kanji>bahasa</kanji>, Anda sedang mengucapkan <vocabulary>bahasa</vocabulary>. Tidak yakin bahasa apa itu, tapi karena Anda mengatakannya, itu pasti nyata.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Bahasa, Sebuah Bahasa')
    RETURNING id INTO v_7458_bahasa;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '速い', 'cepat', 10, 170, 'Sama seperti arti kanji (<kanji>cepat</kanji>), kata sifat ini juga berarti <vocabulary>fast</vocabulary>.', 'Ingat bagaimana 早い berarti "awal"? Jika Anda terlalu dini dalam melakukan sesuatu, itu mungkin berarti Anda bergerak <vocabulary>cepat</vocabulary> untuk mencapainya. Kedua kata ini memiliki pengertian yang sama (dan memiliki arti yang mirip juga!).', 'Cepat')
    RETURNING id INTO v_7472_cepat;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '千葉', 'chiba', 10, 171, 'Hanya ada satu tempat di Jepang yang memiliki <kanji>seribu</kanji> <kanji>daun</kanji> dan itu adalah <vocabulary>Chiba</vocabulary>. Bayangkan semua dedaunan berputar-putar di sekitar Anda saat liburan ke Chiba. Cantik.', 'Ini adalah nama tempat dan menggunakan kun''yomi. Anda belum mempelajari kun''yomi untuk 千, jadi inilah mnemonik untuk membantu Anda mengingatnya:

Saat Anda mengagumi semua dedaunan di <vocabulary>Chiba</vocabulary>, Anda menyadari bahwa Anda menginginkan sesuatu. Apa yang cocok dengan mengamati dedaunan? Mengapa, <read>chee</reading>se (ち) tentu saja. Keju Chiba yang lezat.', 'Chiba')
    RETURNING id INTO v_7534_chiba;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '思わず', 'tanpa-berpikir', 10, 172, 'Ini adalah kata keterangan, namun berasal dari bentuk negatif kata kerja 思う yang berarti <kosa kata>tanpa berpikir</vocabulary>. Jika Anda melakukan sesuatu tanpa berpikir, Anda melakukannya <vocabulary>secara tidak sengaja</vocabulary> atau <vocabulary>secara refleks</vocabulary>.

思わず digunakan ketika kamu bereaksi terhadap sesuatu yang bertentangan dengan keinginanmu, seperti 思わず笑った (Aku tidak bisa menahan tawa) atau 思わず目を閉じた (Aku memejamkan mata secara refleks).', 'Bacaannya ini adalah bacaan kun''yomi yang sudah kamu pelajari, jadi kamu harus bisa membaca kata ini juga.', 'Tanpa Berpikir, Secara tidak sengaja, Secara refleks')
    RETURNING id INTO v_7535_tanpa_berpikir;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '立ち飲み', 'berdiri-dan-minum', 10, 173, '立つ berarti "berdiri", dan 飲む berarti "minum", bukan? Nah, jika Anda melakukan keduanya secara bersamaan, Anda <vocabulary>berdiri dan minum</vocabulary> atau <vocabulary>minum sambil berdiri</vocabulary>.

Ini juga mengacu pada <kosakata>bar berdiri</vocabulary> santai yang tidak memiliki kursi — pelanggan berdiri sambil menikmati minuman dan makanan ringan.', 'Bacaannya berasal dari kata 立つ dan 飲む yang disatukan.', 'Berdiri Dan Minum, Minum Sambil Berdiri, Bar Berdiri')
    RETURNING id INTO v_7536_berdiri_dan_minum;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '作業', 'bekerja', 10, 174, 'Jika Anda ingin <kanji>membuat</kanji> sebuah <kanji>bisnis</kanji> sukses, Anda harus bersiap untuk melakukan banyak <vocabulary>pekerjaan</vocabulary>. Bersiaplah untuk menangani banyak <vocabulary>tugas</vocabulary> dan <vocabulary>operasi</vocabulary>!

作業 sering kali berfokus pada tugas-tugas individu dan langsung yang dilakukan untuk mencapai tujuan tertentu.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Karena 作 memiliki dua pembacaan on''yomi, berikut adalah mnemonik untuk membantu Anda mengingat mana yang harus digunakan:

Jika kamu ingin menyelesaikan <vocabulary>pekerjaan</vocabulary>, pertama-tama kamu harus membuat <reading>gergaji</reading> (さ). Hal ini karena Anda harus membagi pekerjaan menjadi <vocabulary>tugas</vocabulary> tersendiri.', 'Bekerja, Tugas, Operasi')
    RETURNING id INTO v_7574_bekerja;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '病む', 'menjadi-sakit', 10, 175, 'Kata ini terdiri dari kanji dengan hiragana ditempelkan. Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanjinya sendiri berarti <kanji>sakit</kanji>, jadi versi kata kerjanya adalah <vocabulary>to getick</vocabulary>. 

病む berarti jatuh sakit dalam konteks yang lebih formal atau sastra. Dalam percakapan santai, terutama di kalangan anak muda, 病む digunakan untuk menggambarkan seseorang yang sedang merasa sedih, sehingga bisa juga berarti mengalami depresi.

Perhatikan bahwa kata ini dapat bersifat transitif dan mengambil objek langsung, seperti 心を病む (tidak sehat secara mental), namun dapat juga digunakan secara intransitif tanpa objek langsung.', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi. Anda tidak belajar membaca dengan kanji ini, jadi inilah mnemonik untuk membantu Anda:

Hanya ada satu saat Anda membiarkan diri Anda <vocabulary>sakit</vocabulary>, dan saat itulah <reading>Ya</reading>nkees (や) sedang bermain. Anda tidak boleh melewatkan pertandingan apa pun sehingga Anda <vocabulary>jatuh sakit</vocabulary> setiap kali pertandingan tersebut dimainkan sehingga Anda dapat tinggal di rumah dan menonton. Cukup nyaman, bukan?', 'Menjadi Sakit, Jatuh Sakit, Menjadi Depresi')
    RETURNING id INTO v_7575_menjadi_sakit;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '売れる', 'untuk-menjual', 10, 176, 'Anda tahu bahwa kanji berarti <kanji>menjual</kanji> dan kata 売る berarti "menjual sesuatu". 売れる adalah versi intransitif dari kata ini, jadi kata ini berarti sesuatu <vocabulary>untuk dijual</vocabulary> atau <vocabulary>untuk dijual</vocabulary>.

Ini juga dapat digunakan untuk sesuatu <vocabulary>menjual dengan baik</vocabulary>, yang sering kali menyebabkan hal tersebut mulai <vocabulary>menjadi populer</vocabulary>.

Anda dapat mengingat hal ini karena <read>jarang</reading> (れる) melihat sesuatu terjual dengan sangat baik hingga menjadi populer!', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi. Anda sudah mempelajari bacaan ini, jadi Anda harus bisa membacanya! Ini bacaan yang sama dengan 売る di mana Anda mencoba menjual beberapa <reading>U</reading>ni (う)!', 'Untuk Menjual, Untuk Dijual, Untuk Menjual Dengan Baik, Menjadi Populer')
    RETURNING id INTO v_7621_untuk_menjual;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '入院', 'rawat-inap', 10, 177, 'Jadi, Anda <kanji>memasuki</kanji>sebuah <kanji>institusi</kanji>. Namun kita tidak berbicara tentang institusi apa pun, kita berbicara secara khusus tentang rumah sakit. Jadi kata ini berarti <vocabulary>rawat inap</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Rawat Inap, Penerimaan Rumah Sakit')
    RETURNING id INTO v_7628_rawat_inap;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '葉', 'daun', 10, 178, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.', 'Bacaannya sama dengan kanji yang Anda pelajari, artinya Anda tahu bacaannya!', 'Daun, Daun-daun')
    RETURNING id INTO v_7629_daun;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '役場', 'balai-kota', 10, 179, '<kanji>layanan</kanji> <kanji>lokasi</kanji> adalah tempat yang dikunjungi orang ketika mereka membutuhkan layanan. Tempat terbaik untuk ini adalah <vocabulary>balai kota</vocabulary>. Semua orang datang ke satu lokasi ini untuk menyuarakan keluhan mereka, dan sebagai imbalannya, kebutuhan mereka dilayani oleh pejabat di balai kota.

役場 secara khusus mengacu pada kantor administrasi kota (町) atau desa (村) daripada kota (市). Tergantung pada lokasinya, ini mungkin juga disebut 町役場 atau 村役場.', 'Kata ini menggunakan bacaan on''yomi untuk kanji pertama dan bacaan kun''yomi untuk kanji kedua. Anda tidak mempelajari pembacaan kun''yomi untuk 場 dengan kanji, jadi inilah mnemonik untuk membantu Anda mengingatnya:

Di <vocabulary>balai kota</vocabulary>, Anda mengucapkan "<reading>baa</reading>" (ば) saat berbicara dengan petugas. Anda tinggal di kota yang penuh dengan domba, jadi Anda perlu berbicara bahasa Sheepan setiap kali Anda menjalankan tugas di balai kota. "Baa, baa, baa," katamu sambil menyerahkan setumpuk besar dokumen ke petugas.', 'Balai kota, Kantor Kota, Kantor Publik')
    RETURNING id INTO v_7680_balai_kota;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '口調', 'nada', 10, 180, 'Saat <kanji>mulut</kanji> Anda mengeluarkan <kanji>nada</kanji>, kami menyebutnya <vocabulary>nada</vocabulary> atau <vocabulary>nada suara</vocabulary> Anda. Itu adalah berbagai jenis suara yang Anda buat dengan mulut yang membuat Anda terdengar bahagia, sedih, jahat, dll.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda belum mempelajari bacaan ini untuk 口. Ingatkah saat Anda mempelajari kosakata kata 口? Lepaskan saja ち dan Anda akan mendapatkan pembacaan on''yomi lainnya く. Itu mudah, bukan?', 'Nada, Nada Suara, Ekspresi Verbal')
    RETURNING id INTO v_7685_nada;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '語る', 'untuk-berbicara', 10, 181, 'Kata ini terdiri dari kanji dengan hiragana ditempelkan. Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanji itu sendiri berarti <kanji>bahasa</kanji>, jadi ketika Anda menggunakan bahasa, Anda akan <vocabulary>berbicara</vocabulary> tentang sesuatu. Mungkin Anda akan <vocabulary>menceritakan</vocabulary> sebuah cerita, atau kebenarannya.

Kata kerja ini bersifat transitif, sehingga umumnya menggunakan objek langsung dalam bahasa Jepang, meskipun terjemahan bahasa Inggrisnya mungkin tidak.', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi. Anda tidak belajar membaca dengan kanji ini, jadi inilah mnemonik untuk membantu Anda:

Setiap kali Anda membuka mulut <vocabulary>untuk berbicara</vocabulary>, sebuah <reading>cata</reading>pult (かた) dalam diri Anda meluncurkan sesuatu yang memalukan dari masa lalu Anda. Ketapel menyerang lagi, pembicaraan terhenti lagi!', 'Untuk Berbicara, Untuk Memberitahu, Untuk Membaca')
    RETURNING id INTO v_7686_untuk_berbicara;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '台所', 'dapur', 10, 182, '<kanji>tempat</kanji> apa di rumah Anda yang memiliki sebagian besar <kanji>mesin</kanji> di dalamnya? <vocabulary>dapur</vocabulary> Anda! Pikirkan saja. Kulkas, freezer, mesin pencuci piring, kompor, microwave, WOW! Itu sangat banyak. Dapur pasti memiliki mesin paling banyak.', 'Kata ini terdiri dari bacaan on''yomi untuk 台 dan bacaan kun''yomi untuk 所. Kamu sudah mempelajari keduanya, jadi asal kamu ingat rendaku, kamu pasti bisa membaca kata ini juga!', 'Dapur')
    RETURNING id INTO v_7742_dapur;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '農場', 'peternakan', 10, 183, '<kanji>tempat</kanji> Anda melakukan <kanji>bertani</kanji> adalah <vocabulary>pertanian</vocabulary>!', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Peternakan')
    RETURNING id INTO v_7743_peternakan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '大学院', 'sekolah-pascasarjana', 10, 184, 'Ingat bagaimana Anda mengetahui bahwa 大学 berarti "perguruan tinggi?" <kanji>institusi</kanji> yang Anda tuju setelah kuliah adalah <vocabulary>sekolah pascasarjana</vocabulary>!', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Sekolah Pascasarjana, Sekolah Pascasarjana')
    RETURNING id INTO v_8666_sekolah_pascasarjana;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '今朝', 'pagi-ini', 10, 185, '<kanji>Sekarang</kanji> <kanji>pagi</kanji> hanyalah cara lain untuk mengucapkan <vocabulary>pagi ini</vocabulary>. Ini adalah pagi yang paling dekat dengan saat ini!', 'Bacaan ini merupakan pengecualian. Mari gunakan mnemonik ini untuk mengingatnya:

<vocabulary>Pagi ini</vocabulary> Anda ingin <reading>quesa</reading>dilla (けさ) untuk sarapan. Anda tidak bisa menunggu sampai besok pagi, Anda MEMBUTUHKANnya pagi ini! Bayangkan makan quesadilla yang lezat pagi ini. Hmm!', 'Pagi ini')
    RETURNING id INTO v_8703_pagi_ini;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '部首', 'radikal', 10, 186, 'Bayangkan <kanji>bagian</kanji> tubuh Anda yang membentuk <kanji>leher</kanji> Anda. Apakah Anda membayangkannya? Itu adalah bahan penyusun yang membentuk tubuh Anda. Yang sangat penting. Jika Anda tidak memiliki leher itu, Anda tidak akan terlihat seperti manusia sama sekali. Kedengarannya familier? Itu harus! Karena bagian lehermu itu adalah <vocabulary>radikal</vocabulary>! Sama seperti bagian leher Anda yang merupakan bahan penyusun tubuh Anda, radikal adalah bahan penyusun kanji. Mengerti? Saya harap demikian!', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda belum mempelajari bacaan ini untuk 首, jadi inilah mnemonik untuk membantu Anda:

Saat Anda membutuhkan <vocabulary>radikal</vocabulary> untuk membuat kanji baru, Anda cukup menekan sebuah tombol dan radikal tersebut akan memunculkan <reading>chu</reading>te (しゅ) radikal. Jelas tidak ada alasan atau alasan untuk memilih secara radikal, yang ada hanyalah apa pun yang muncul begitu saja.', 'Radikal')
    RETURNING id INTO v_8741_radikal;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '近所', 'lingkungan', 10, 187, '<kanji>tempat</kanji> tempat Anda tinggal <kanji>dekat</kanji> adalah <vocabulary>lingkungan</vocabulary> Anda!', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Seharusnya kamu bisa membacanya sendiri asalkan kamu ingat rendaku di しょ pembuatannya じょ.', 'Lingkungan')
    RETURNING id INTO v_8742_lingkungan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '足し算', 'tambahan', 10, 188, 'Ingat bagaimana 足す berarti "menambahkan?" Tambahkan <kanji>hitung</kanji> ke dalamnya dan Anda akan mendapatkan <vocabulary>tambahan</vocabulary>! Ini adalah jenis penghitungan yang Anda lakukan saat menambahkan.', 'Ini adalah bacaan kun''yomi untuk 足 dan on''yomi untuk 算. Dan bacaan さん di rendaku menjadi ざん. Ini sama untuk semua kata matematika (penjumlahan, pengurangan, perkalian, dan pembagian), jadi cobalah mengingatnya, karena Anda akan melihatnya lagi!', 'Tambahan')
    RETURNING id INTO v_8743_tambahan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '引き算', 'pengurangan', 10, 189, 'Ingat bagaimana 引く berarti "menarik" dan "menarik"? Nah, jika Anda <kanji>menghitung</kanji> dengan menarik atau menarik satu angka dari angka lain, Anda sedang melakukan <vocabulary>pengurangan</vocabulary>. Mirip seperti bagaimana saldo bank Anda semakin berkurang setiap kali Anda mengurangi (menarik) uang darinya, Anda tahu?', 'Ini adalah bacaan kun''yomi untuk 引 dan on''yomi untuk 算. Dan bacaan さん di rendaku menjadi ざん. Ini sama untuk semua kata matematika (penjumlahan, pengurangan, perkalian, dan pembagian), jadi cobalah mengingatnya, karena Anda akan melihatnya lagi!', 'Pengurangan')
    RETURNING id INTO v_8744_pengurangan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '番号札', 'tag-bernomor', 10, 190, 'Anda tahu 番号 berarti "angka" jadi tambahkan <kanji>tag</kanji> padanya dan Anda akan mendapatkan <vocabulary>tag bernomor</vocabulary>.', 'Ini adalah kata jukugo (番号) dengan tambahan satu kata kanji. Itu berarti Anda memiliki dua bacaan on''yomi dari kata jukugo dan bacaan kun''yomi dari satu kanji (ふだ). Gabungkan semuanya dan Anda akan mendapatkan pembacaan kanji ini!', 'Tag Bernomor, Tiket Bernomor')
    RETURNING id INTO v_8803_tag_bernomor;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '点く', 'menjadi-menyala', 10, 191, 'Kata ini terdiri dari kanji dengan hiragana ditempelkan. Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja.

Kanji 点 berarti <kanji>titik</kanji>, namun kata kerja ini sebenarnya berarti <vocabulary>dinyalakan</vocabulary> atau <vocabulary>dinyalakan</vocabulary>. Anggap saja seperti ini, ketika senter menyala, ia mengarahkan seberkas cahaya.

Anda sudah mempelajari 点ける, yang digunakan saat Anda menyalakan sesuatu. 点く, sebaliknya, adalah kata kerja intransitif. Artinya hal itu terjadi dengan sendirinya. Seperti, "Oh, lihat! Lampunya menyala! <reading>keren</reading> (く)!"', 'Anda sudah mempelajari bacaan ini ketika mempelajari 点ける tetapi berikut adalah mnemonik untuk berjaga-jaga:

Setiap kali Anda menghitung sampai <read>dua</reading> (つ), lampu akan menyala. Betapa kerennya ia melakukan semuanya sendiri!!', 'Menjadi Menyala, Untuk Disulut, Untuk Aktif, Ayo')
    RETURNING id INTO v_8938_menjadi_menyala;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '山道', 'jalan-gunung', 10, 192, '<kanji>gunung</kanji> <kanji>jalan</kanji> adalah <vocabulary>jalan gunung</vocabulary>! Atau <vocabulary>jalur gunung</vocabulary>, atau <vocabulary>jalur gunung</vocabulary>.', 'Kedua kanji pada kata ini menggunakan kun''yomi, yang Anda pelajari saat mempelajari kosakatanya. Bila menggunakan bacaan ini, terdengar biasa saja, dan lumrah dalam percakapan. Namun, dapat juga dibaca dengan menggunakan on''yomi, sehingga memiliki kesan yang lebih formal. Itu ciri khas on''yomi, yang cenderung menambah formalitas pada sebuah kata!', 'Jalan Gunung, Jalur Gunung, Jalur Gunung')
    RETURNING id INTO v_8962_jalan_gunung;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '高度', 'ketinggian', 10, 193, 'Sesuatu yang <kanji>tinggi</kanji> dalam <kanji>derajat</kanji> bisa merujuk pada <vocabulary>ketinggian</vocabulary>, atau fakta bahwa itu cukup <vocabulary>tingkat tinggi</vocabulary>. 

Perhatikan bahwa ini bisa merujuk pada ketinggian apa pun, bahkan yang lebih rendah. Namun bila digunakan untuk merujuk, misalnya, keterampilan atau suatu teknik, selalu berbicara tentang tingkat atau gelar yang tinggi.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Ketinggian, Tingkat tinggi')
    RETURNING id INTO v_9022_ketinggian;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '回答', 'menjawab', 10, 194, 'Anda tahu 回 berarti "waktu", tetapi bisa juga berarti "berputar". Anda <kanji>berputar</kanji> di sekitar <kanji>jawaban</kanji> hingga Anda siap memberikan <vocabulary>jawaban</vocabulary> atau <vocabulary>respons</vocabulary> Anda terhadap pertanyaan!

回答 mengacu pada menanggapi pertanyaan, pertanyaan, atau permintaan. Misalnya, Anda menggunakan 回答 saat menjawab kuesioner atau memberi tahu seseorang apakah Anda boleh menghadiri pesta.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda tidak mempelajari on''yomi untuk 答 dengan kanji, jadi inilah mnemonik untuk membantu Anda:

Berikan <vocabulary>jawaban</vocabulary> Anda dan saya akan membawa Anda ke <reading>とう</reading>きょう. Bagaimana kedengarannya? Yang saya butuhkan hanyalah balasan Anda, dan kami akan tiba di sana sebelum Anda menyadarinya.', 'Menjawab, Tanggapan')
    RETURNING id INTO v_9037_menjawab;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '頁', 'halaman', 10, 195, 'Kanji dan kosakatanya sama persis, jadi artinya juga sama.

Kata ini sering ditulis dalam katakana sebagai ページ, terutama dalam tulisan informal dan online. Namun Anda juga akan melihat versi kanjinya, terutama untuk merujuk pada halaman teks cetak dan tulisan yang lebih formal.', 'Kata ini menggunakan bacaan yang Anda pelajari dengan kanji.', 'Halaman')
    RETURNING id INTO v_9052_halaman;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '教わる', 'untuk-mempelajari-sesuatu-dari-seseorang', 10, 196, 'Kata ini terdiri dari kanji dengan hiragana ditempelkan. Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja.

Kanji itu sendiri berarti <kanji>mengajar</kanji>, dan kata kerja ini berarti <vocabulary>mempelajari sesuatu dari seseorang</vocabulary> atau <vocabulary>mendapatkan sesuatu</vocabulary>. Saat Anda menggunakan kata kerja ini, Anda tidak mempelajari sesuatu sendiri, Anda diajar oleh orang lain.', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi. Anda belum mempelajari kun''yomi ini, jadi inilah mnemonik untuk membantu Anda:

Saat Anda ingin <vocabulary>mempelajari sesuatu dari seseorang</vocabulary>, ucapkan "<reading>Oh</reading>, <reading>jadi</reading>..." (おそ) dan ulangi apa yang baru saja Anda pelajari. Mengatakan "oh, jadi..." membantu Anda memastikan bahwa Anda memahaminya dengan benar, dan menunjukkan bahwa Anda benar-benar memperhatikan. Itu penting ketika Anda belajar dari seseorang!', 'Untuk Mempelajari Sesuatu Dari Seseorang, Untuk Diajarkan Sesuatu')
    RETURNING id INTO v_9240_untuk_mempelajari_sesuatu_dari_seseorang;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '去る', 'untuk-pergi', 10, 197, 'Kanji di sini berarti <kanji>masa lalu</kanji>, tetapi kata kerja ini berarti <vocabulary>pergi</vocabulary>. Pikirkan seperti ini: ketika Anda pergi, Anda melupakan suatu tempat atau sesuatu, di masa lalu.', 'Ini menggunakan bacaan baru untuk 去, jadi inilah mnemonik untuk membantu Anda:

Anda pasti ingin <vocabulary>pergi</vocabulary> jika Anda melihat <reading>gergaji</reading> (さ) menunjuk ke arah Anda. Gergaji bisa menjadi senjata yang mematikan, jadi sebaiknya segera pergi jika ada yang mengacungkannya ke arah Anda. Anda baru saja melihat gergaji? Saatnya berangkat.', 'Untuk Pergi, Untuk Pergi, Untuk Lulus')
    RETURNING id INTO v_9250_untuk_pergi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '明後日', 'besok-lusa', 10, 198, 'Segalanya akan <kanji>cerah</kanji> <kanji>setelah</kanji> <kanji>hari</kanji> berikutnya. Atau Anda dapat menganggapnya seperti menambahkan 後 di antara 明日 Anda. Dan apa yang terjadi setelah besok? Ini adalah <vocabulary>lusa</vocabulary>.', 'Sayangnya, pembacaannya tidak teratur, jadi inilah mnemonik yang dapat membantu Anda:

Apa yang akan kamu makan <vocabulary>lusa</vocabulary>? <read>Sate</reading> (あさって). Anda tahu, tusuk sate Indonesia — sate. Ada festival makanan Indonesia lusa, dan Anda berangkat. Mmm iya, udah gak sabar mau makan sate lusa.', 'Besok lusa')
    RETURNING id INTO v_9288_besok_lusa;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '一ヶ所', 'satu-tempat', 10, 199, 'Ingat ヶ kecil yang berfungsi sebagai counter? Bersama dengan <kanji>satu</kanji> dan <kanji>tempat</kanji>, menjadikan <vocabulary>satu tempat</vocabulary> atau <vocabulary>satu tempat</vocabulary>.

Sama seperti 〜ヶ月, Anda juga akan menemukan ini ditulis sebagai 一箇所, 一か所, atau 一カ所.', 'Sama seperti sebelumnya, ヶ kecil sebenarnya dibaca sebagai か. Sisanya menggunakan on''yomi yang sudah Anda pelajari dengan kanji. Hati-hati dengan 一 yang ada di sini adalah いっ, bukan いち, karena akan memudahkan pengucapan keseluruhan kata. Sekarang, bacalah dengan lantang dan coba sendiri!', 'Satu Tempat, Satu Tempat')
    RETURNING id INTO v_9306_satu_tempat;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '直線', 'garis-lurus', 10, 200, '<kanji>lurus</kanji> <kanji>garis</kanji> adalah <vocabulary>garis lurus</vocabulary>. Tahukah Anda, jarak terpendek antara dua titik dan sebagainya.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Garis lurus')
    RETURNING id INTO v_9384_garis_lurus;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '直進', 'berjalan-lurus-ke-depan', 10, 201, 'Jika Anda <kanji>lurus</kanji> <kanji>maju</kanji>, Anda <vocabulary>bergerak lurus ke depan</vocabulary>. 

直進 adalah kata yang terdengar agak formal untuk <vocabulary>gerakan maju langsung</vocabulary>. Anda akan sering mendengarnya sehubungan dengan pergerakan kendaraan, seperti saat GPS memberitahu Anda untuk berjalan lurus ke lampu atau pengumuman di kereta yang memberi tahu Anda bahwa kereta akan melaju lurus di persimpangan berikutnya.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Berjalan Lurus ke Depan, Gerak Maju Langsung')
    RETURNING id INTO v_9385_berjalan_lurus_ke_depan;

  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2870_berikutnya, 'Berikutnya', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2900_tenggara, 'Tenggara', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2999_asisten, 'Asisten', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2999_asisten, 'Pembantu', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2999_asisten, 'Pembantu', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3009_konflik, 'Konflik', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3009_konflik, 'Konfrontasi', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3009_konflik, 'Oposisi', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3018_untuk_memutuskan, 'Untuk Memutuskan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3097_untuk_memulai_sesuatu, 'Untuk Memulai Sesuatu', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3097_untuk_memulai_sesuatu, 'Untuk Memulai Sesuatu', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3097_untuk_memulai_sesuatu, 'Untuk Memulai', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3097_untuk_memulai_sesuatu, 'Untuk Memulai', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3110_rasanya_pahit, 'Rasanya Pahit', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3110_rasanya_pahit, 'Pahit', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3113_untuk_memberi_seseorang_tumpangan, 'Untuk Memberi Seseorang Tumpangan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3113_untuk_memberi_seseorang_tumpangan, 'Untuk Menempatkan Sesuatu', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3113_untuk_memberi_seseorang_tumpangan, 'Untuk Memuat Sesuatu', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3150_berat, 'Berat', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3159_untuk_bangun, 'Untuk Bangun', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3159_untuk_bangun, 'Untuk Bangun', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3159_untuk_bangun, 'Terjadi', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3160_sekaligus, 'Sekaligus', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3160_sekaligus, 'Langsung', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3160_sekaligus, 'Tanpa Penundaan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3160_sekaligus, 'Segera', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3160_sekaligus, 'Sekarang', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3161_kecepatan, 'Kecepatan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3162_untuk_mendistribusikan, 'Untuk Mendistribusikan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3162_untuk_mendistribusikan, 'Pingsan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3162_untuk_mendistribusikan, 'Untuk Memberikan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3163_demi, 'Demi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3163_demi, 'Alkohol', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3164_alkohol_gaya_jepang, 'Alkohol Gaya Jepang', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3164_alkohol_gaya_jepang, 'Alkohol Jepang', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3164_alkohol_gaya_jepang, 'Demi', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3165_rsud, 'RSUD', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3165_rsud, 'Kantor Dokter', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3165_rsud, 'Klinik', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3166_akademi, 'Akademi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3166_akademi, 'Lembaga', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3167_untuk_mengakhiri, 'Untuk Mengakhiri', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3167_untuk_mengakhiri, 'Akan Berakhir', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3168_perhentian_terakhir, 'Perhentian Terakhir', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3168_perhentian_terakhir, 'Perhentian Terakhir', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3168_perhentian_terakhir, 'terminal', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3169_akhir, 'Akhir', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3169_akhir, 'Menyelesaikan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3169_akhir, 'Menutup', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3170_terakhir, 'Terakhir', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3170_terakhir, 'Terakhir', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3170_terakhir, 'Yang Terakhir', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3170_terakhir, 'Akhir', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3171_untuk_belajar, 'Untuk Belajar', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3171_untuk_belajar, 'Untuk Mengambil Pelajaran', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3172_untuk_berguling, 'Untuk Berguling', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3172_untuk_berguling, 'Jatuh', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3172_untuk_berguling, 'Untuk Berbaring', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3172_untuk_berguling, 'Untuk Disebarkan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3173_sepeda, 'Sepeda', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3173_sepeda, 'Sepeda', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3173_sepeda, 'sepeda dorong', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3174_untuk_mengemudi, 'Untuk Mengemudi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3175_transfer, 'Transfer', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3175_transfer, 'Penerusan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3176_berputar, 'Berputar', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3176_berputar, 'Memutar', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3176_berputar, 'Rotasi', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3177_untuk_maju, 'Untuk Maju', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3177_untuk_maju, 'Untuk Maju', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3177_untuk_maju, 'Untuk Kemajuan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3178_evolusi, 'Evolusi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3178_evolusi, 'Kemajuan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3179_maju, 'Maju', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3179_maju, 'Kemajuan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3180_jatuh, 'Jatuh', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3180_jatuh, 'Jatuh', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3180_jatuh, 'Untuk Menjatuhkan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3180_jatuh, 'Gagal', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3181_daun_segar, 'Daun Segar', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3181_daun_segar, 'Tanaman hijau', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3181_daun_segar, 'Daun Muda', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3182_ringan, 'Ringan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3182_ringan, 'Lampu', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3182_ringan, 'Ringan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3183_untuk_membawa, 'Untuk Membawa', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3183_untuk_membawa, 'Untuk Transportasi', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3183_untuk_membawa, 'Untuk Bergerak', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3184_beruntung, 'Beruntung', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3184_beruntung, 'Beruntung', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3185_untuk_membuka_sesuatu, 'Untuk Membuka Sesuatu', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3186_terbuka_untuk_umum, 'Terbuka Untuk Umum', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3186_terbuka_untuk_umum, 'Melepaskan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3187_membuka_bisnis, 'Membuka Bisnis', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3187_membuka_bisnis, 'Memulai Bisnis', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3188_perkembangan, 'Perkembangan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3189_untuk_mengumpulkan_sesuatu, 'Untuk Mengumpulkan Sesuatu', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3189_untuk_mengumpulkan_sesuatu, 'Untuk Mengumpulkan Sesuatu', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3190_konsentrasi, 'Konsentrasi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3190_konsentrasi, 'Fokus', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3191_mengumpulkan_uang, 'Mengumpulkan uang', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3191_mengumpulkan_uang, 'Pengumpulan Uang', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3192_untuk_minum, 'Untuk Minum', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3193_industri, 'Industri', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3194_kanji, 'Kanji', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3194_kanji, 'Surat Cina', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3194_kanji, 'Karakter Cina', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3195_jalan_beraspal, 'Jalan Beraspal', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3195_jalan_beraspal, 'Jalan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3195_jalan_beraspal, 'Jalan Tertutup', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3196_jalur_kereta_api, 'Jalur Kereta Api', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3196_jalur_kereta_api, 'Ban', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3196_jalur_kereta_api, 'Jalur Kereta Api', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3196_jalur_kereta_api, 'Melacak', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3196_jalur_kereta_api, 'Garis', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3197_gang, 'Gang', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3197_gang, 'Jalur', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3197_gang, 'Jalan Tanah', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3199_petani, 'Petani', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3199_petani, 'Petani', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3199_petani, 'Kelas Pertanian', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3200_pertanian, 'Pertanian', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3201_kereta_bawah_tanah, 'Kereta bawah tanah', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3201_kereta_bawah_tanah, 'Bawah Tanah', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3201_kereta_bawah_tanah, 'Tabung', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3201_kereta_bawah_tanah, 'Metro', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3202_pria_kuat, 'Pria Kuat', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3202_pria_kuat, 'keren', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3202_pria_kuat, 'Manusia Besi', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3202_pria_kuat, 'Pria Macho', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3202_pria_kuat, 'Pria Tangguh', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3203_kereta_api_listrik, 'Kereta Api Listrik', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3204_lagu, 'Lagu', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3205_penyanyi, 'Penyanyi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3206_hitung, 'Hitung', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3206_hitung, 'Matematika', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3206_hitung, 'Matematika', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3206_hitung, 'Matematika', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3208_untuk_mendengar, 'Untuk Mendengar', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3208_untuk_mendengar, 'Untuk Bertanya', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3208_untuk_mendengar, 'Untuk Mendengarkan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3209_koran, 'Koran', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3210_bahasa_jepang, 'Bahasa Jepang', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3210_bahasa_jepang, 'Jepang', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3211_bahasa_perancis, 'Bahasa Perancis', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3211_bahasa_perancis, 'Perancis', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3212_bahasa_spanyol, 'Bahasa Spanyol', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3212_bahasa_spanyol, 'Spanyol', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3214_subjek, 'Subjek', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3215_untuk_membaca, 'Untuk Membaca', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3216_cara_membaca, 'Cara Membaca', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3216_cara_membaca, 'Membaca', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3216_cara_membaca, 'Cara Membaca', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3217_untuk_membuat_suara_binatang, 'Untuk Membuat Suara Binatang', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3217_untuk_membuat_suara_binatang, 'Untuk Menggonggong', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3217_untuk_membuat_suara_binatang, 'Untuk berkicau', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3218_garis, 'Garis', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3219_samping, 'Samping', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3219_samping, 'Di samping', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3219_samping, 'Di sebelah', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3219_samping, 'Horisontal', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3220_kondisi, 'Kondisi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3220_kondisi, 'Nada', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3221_tekanan, 'Tekanan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3221_tekanan, 'Menyorot', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3221_tekanan, 'Menekankan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3222_untuk_menyelidiki, 'Untuk Menyelidiki', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3222_untuk_menyelidiki, 'Untuk Memeriksa', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3222_untuk_menyelidiki, 'Untuk Meneliti', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3222_untuk_menyelidiki, 'Untuk Melihat Ke Dalam', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3223_induk, 'Induk', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3224_intim, 'Intim', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3224_intim, 'Ramah', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3224_intim, 'Menutup', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3225_baik, 'Baik', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3225_baik, 'Kebaikan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3226_teman_dekat, 'Teman Dekat', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3226_teman_dekat, 'Sahabat terbaik', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3226_teman_dekat, 'Teman baik', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3227_kepala, 'Kepala', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3228_menghadapi, 'Menghadapi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3229_ekspresi, 'Ekspresi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3229_ekspresi, 'Raut wajah', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3230_sakit, 'Sakit', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3230_sakit, 'Penyakit', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3230_sakit, 'Penyakit', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3230_sakit, 'Penyakit', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3231_penyakit, 'Penyakit', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3231_penyakit, 'Penyakit', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3231_penyakit, 'Penyakit', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3232_orang_sakit, 'Orang Sakit', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3232_orang_sakit, 'Sabar', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3233_yang_paling_banyak, 'Yang Paling Banyak', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3233_yang_paling_banyak, 'Paling', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3233_yang_paling_banyak, 'Sangat', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3234_terbaik, 'Terbaik', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3234_terbaik, 'Terbaik', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3234_terbaik, 'Tertinggi', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3235_terakhir, 'Terakhir', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3235_terakhir, 'Akhir', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3235_terakhir, 'Kesimpulan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3235_terakhir, 'Terakhir', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3236_terkini, 'Terkini', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3236_terkini, 'Terbaru', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3236_terkini, 'Akhir-akhir ini', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3236_terkini, 'Baru-baru ini', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3426_kanji_fonetik, 'Kanji Fonetik', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3426_kanji_fonetik, 'Ateji', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3426_kanji_fonetik, 'Karakter Pengganti', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3427_satu_demi_satu, 'Satu demi satu', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3427_satu_demi_satu, 'Dalam Suksesi', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3445_untuk_mengganti_sesuatu, 'Untuk Mengganti Sesuatu', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3445_untuk_mengganti_sesuatu, 'Untuk Mengganti Sesuatu', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3445_untuk_mengganti_sesuatu, 'Untuk Bertukar Sesuatu', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3480_dokter_mata, 'Dokter Mata', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3480_dokter_mata, 'Dokter mata', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3480_dokter_mata, 'Dokter mata', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3481_hal_pertama, 'Hal Pertama', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3481_hal_pertama, 'Yang Pertama', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3481_hal_pertama, 'Hal Pertama', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3484_menantikan, 'Menantikan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3484_menantikan, 'Harapan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3484_menantikan, 'Ekspektasi', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3484_menantikan, 'Antisipasi', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3484_menantikan, 'Kesenangan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3484_menantikan, 'Kenikmatan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3485_dibuat_untuk, 'Dibuat Untuk', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3485_dibuat_untuk, 'Ditujukan Untuk', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3485_dibuat_untuk, 'Ditujukan Pada', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3486_lembaga_penelitian, 'Lembaga Penelitian', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3486_lembaga_penelitian, 'Fasilitas Penelitian', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3487_jalan_pintas, 'Jalan pintas', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3487_jalan_pintas, 'Jalan Singkat', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3488_untuk_dibantu, 'Untuk Dibantu', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3488_untuk_dibantu, 'Untuk Diselamatkan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3488_untuk_dibantu, 'Untuk Diselamatkan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3491_untuk_menikmati_sesuatu, 'Untuk Menikmati Sesuatu', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3491_untuk_menikmati_sesuatu, 'Untuk bersenang-senang', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3493_untuk_melempar_melawan, 'Untuk Melempar Melawan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3493_untuk_melempar_melawan, 'Untuk Melempar', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3494_untuk_menyihir, 'Untuk Menyihir', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3494_untuk_menyihir, 'Untuk Menipu', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3494_untuk_menyihir, 'Untuk Menipu', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3495_cerita, 'Cerita', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3495_cerita, 'Bicara', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3495_cerita, 'Pidato', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3495_cerita, 'Percakapan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3505_untuk_memutuskan, 'Untuk Memutuskan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3505_untuk_memutuskan, 'Untuk Menentukan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3506_untuk_bertemu_secara_kebetulan, 'Untuk Bertemu Secara Kebetulan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3506_untuk_bertemu_secara_kebetulan, 'Untuk Bertemu Secara Tak Terduga', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3506_untuk_bertemu_secara_kebetulan, 'Untuk Menemukan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3506_untuk_bertemu_secara_kebetulan, 'Untuk Bertemu', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3506_untuk_bertemu_secara_kebetulan, 'Untuk Bertemu', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3564_sebuah_kekhawatiran, 'Sebuah Kekhawatiran', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3564_sebuah_kekhawatiran, 'Kekhawatiran', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3594_untuk_dicerminkan, 'Untuk Dicerminkan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3594_untuk_dicerminkan, 'Untuk Diproyeksikan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3707_untuk_meminta_sesuatu, 'Untuk Meminta Sesuatu', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3707_untuk_meminta_sesuatu, 'Menginginkan Sesuatu', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3707_untuk_meminta_sesuatu, 'Untuk Menuntut Sesuatu', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3717_kereta_api_swasta, 'Kereta Api Swasta', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3924_tuntutan, 'Tuntutan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3924_tuntutan, 'Persyaratan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4129_perguruan_tinggi_swasta, 'Perguruan Tinggi Swasta', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4129_perguruan_tinggi_swasta, 'Universitas Swasta', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4129_perguruan_tinggi_swasta, 'Universitas Swasta', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4375_awal, 'Awal', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4375_awal, 'Awal', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4375_awal, 'Pembukaan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4379_melengkung, 'Melengkung', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4379_melengkung, 'Garis Melengkung', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4465_pemecahan, 'Pemecahan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4465_pemecahan, 'Larutan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4465_pemecahan, 'Hunian', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7458_bahasa, 'Bahasa', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7458_bahasa, 'Sebuah Bahasa', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7472_cepat, 'Cepat', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7534_chiba, 'Chiba', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7535_tanpa_berpikir, 'Tanpa Berpikir', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7535_tanpa_berpikir, 'Secara tidak sengaja', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7535_tanpa_berpikir, 'Secara refleks', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7536_berdiri_dan_minum, 'Berdiri Dan Minum', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7536_berdiri_dan_minum, 'Minum Sambil Berdiri', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7536_berdiri_dan_minum, 'Bar Berdiri', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7574_bekerja, 'Bekerja', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7574_bekerja, 'Tugas', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7574_bekerja, 'Operasi', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7575_menjadi_sakit, 'Menjadi Sakit', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7575_menjadi_sakit, 'Jatuh Sakit', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7575_menjadi_sakit, 'Menjadi Depresi', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7621_untuk_menjual, 'Untuk Menjual', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7621_untuk_menjual, 'Untuk Dijual', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7621_untuk_menjual, 'Untuk Menjual Dengan Baik', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7621_untuk_menjual, 'Menjadi Populer', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7628_rawat_inap, 'Rawat Inap', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7628_rawat_inap, 'Penerimaan Rumah Sakit', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7629_daun, 'Daun', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7629_daun, 'Daun-daun', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7680_balai_kota, 'Balai kota', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7680_balai_kota, 'Kantor Kota', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7680_balai_kota, 'Kantor Publik', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7685_nada, 'Nada', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7685_nada, 'Nada Suara', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7685_nada, 'Ekspresi Verbal', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7686_untuk_berbicara, 'Untuk Berbicara', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7686_untuk_berbicara, 'Untuk Memberitahu', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7686_untuk_berbicara, 'Untuk Membaca', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7742_dapur, 'Dapur', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7743_peternakan, 'Peternakan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8666_sekolah_pascasarjana, 'Sekolah Pascasarjana', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8666_sekolah_pascasarjana, 'Sekolah Pascasarjana', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8703_pagi_ini, 'Pagi ini', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8741_radikal, 'Radikal', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8742_lingkungan, 'Lingkungan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8743_tambahan, 'Tambahan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8744_pengurangan, 'Pengurangan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8803_tag_bernomor, 'Tag Bernomor', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8803_tag_bernomor, 'Tiket Bernomor', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8938_menjadi_menyala, 'Menjadi Menyala', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8938_menjadi_menyala, 'Untuk Disulut', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8938_menjadi_menyala, 'Untuk Aktif', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8938_menjadi_menyala, 'Ayo', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8962_jalan_gunung, 'Jalan Gunung', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8962_jalan_gunung, 'Jalur Gunung', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8962_jalan_gunung, 'Jalur Gunung', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9022_ketinggian, 'Ketinggian', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9022_ketinggian, 'Tingkat tinggi', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9037_menjawab, 'Menjawab', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9037_menjawab, 'Tanggapan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9052_halaman, 'Halaman', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9240_untuk_mempelajari_sesuatu_dari_seseorang, 'Untuk Mempelajari Sesuatu Dari Seseorang', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9240_untuk_mempelajari_sesuatu_dari_seseorang, 'Untuk Diajarkan Sesuatu', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9250_untuk_pergi, 'Untuk Pergi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9250_untuk_pergi, 'Untuk Pergi', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9250_untuk_pergi, 'Untuk Lulus', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9288_besok_lusa, 'Besok lusa', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9306_satu_tempat, 'Satu Tempat', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9306_satu_tempat, 'Satu Tempat', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9384_garis_lurus, 'Garis lurus', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9385_berjalan_lurus_ke_depan, 'Berjalan Lurus ke Depan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9385_berjalan_lurus_ke_depan, 'Gerak Maju Langsung', false, true);

  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2870_berikutnya, 'つぎ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2900_tenggara, 'なんとう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2999_asisten, 'じょしゅ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3009_konflik, 'たいりつ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3018_untuk_memutuskan, 'きめる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3097_untuk_memulai_sesuatu, 'はじめる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3110_rasanya_pahit, 'にがい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3113_untuk_memberi_seseorang_tumpangan, 'のせる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3150_berat, 'おもい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3159_untuk_bangun, 'おきる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3160_sekaligus, 'さっそく', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3161_kecepatan, 'そくど', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3162_untuk_mendistribusikan, 'くばる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3163_demi, 'おさけ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3164_alkohol_gaya_jepang, 'にほんしゅ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3165_rsud, 'びょういん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3166_akademi, 'がくいん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3167_untuk_mengakhiri, 'おわる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3168_perhentian_terakhir, 'しゅうてん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3169_akhir, 'しゅうりょう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3170_terakhir, 'さいしゅう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3171_untuk_belajar, 'ならう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3172_untuk_berguling, 'ころがる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3173_sepeda, 'じてんしゃ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3174_untuk_mengemudi, 'うんてんする', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3175_transfer, 'てんそう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3176_berputar, 'かいてん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3177_untuk_maju, 'すすむ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3178_evolusi, 'しんか', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3179_maju, 'しんこう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3180_jatuh, 'おちる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3181_daun_segar, 'あおば', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3182_ringan, 'かるい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3183_untuk_membawa, 'はこぶ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3184_beruntung, 'うんがいい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3185_untuk_membuka_sesuatu, 'あける', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3186_terbuka_untuk_umum, 'こうかい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3187_membuka_bisnis, 'かいぎょう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3188_perkembangan, 'かいはつ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3189_untuk_mengumpulkan_sesuatu, 'あつめる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3190_konsentrasi, 'しゅうちゅう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3191_mengumpulkan_uang, 'しゅうきん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3192_untuk_minum, 'のむ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3193_industri, 'こうぎょう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3194_kanji, 'かんじ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3195_jalan_beraspal, 'どうろ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3196_jalur_kereta_api, 'せんろ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3197_gang, 'ろじ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3199_petani, 'のうみん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3200_pertanian, 'のうぎょう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3201_kereta_bawah_tanah, 'ちかてつ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3202_pria_kuat, 'てつじん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3203_kereta_api_listrik, 'でんてつ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3204_lagu, 'うた', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3205_penyanyi, 'かしゅ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3206_hitung, 'さんすう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3208_untuk_mendengar, 'きく', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3209_koran, 'しんぶん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3210_bahasa_jepang, 'にほんご', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3211_bahasa_perancis, 'ふらんすご', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3211_bahasa_perancis, 'フランスご', NULL, false, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3212_bahasa_spanyol, 'すぺいんご', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3212_bahasa_spanyol, 'スペインご', NULL, false, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3214_subjek, 'しゅご', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3215_untuk_membaca, 'よむ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3216_cara_membaca, 'よみかた', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3217_untuk_membuat_suara_binatang, 'なく', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3218_garis, 'せん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3219_samping, 'よこ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3220_kondisi, 'ちょうし', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3221_tekanan, 'きょうちょう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3222_untuk_menyelidiki, 'しらべる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3223_induk, 'おや', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3224_intim, 'したしい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3225_baik, 'しんせつ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3226_teman_dekat, 'しんゆう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3227_kepala, 'あたま', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3228_menghadapi, 'かお', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3229_ekspresi, 'かおつき', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3230_sakit, 'びょうき', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3231_penyakit, 'びょう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3232_orang_sakit, 'びょうにん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3233_yang_paling_banyak, 'もっとも', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3234_terbaik, 'さいこう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3235_terakhir, 'さいご', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3236_terkini, 'さいきん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3426_kanji_fonetik, 'あてじ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3427_satu_demi_satu, 'つぎつぎ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3445_untuk_mengganti_sesuatu, 'かえる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3480_dokter_mata, 'めいしゃ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3481_hal_pertama, 'いちばんめ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3484_menantikan, 'たのしみ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3485_dibuat_untuk, 'むけ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3486_lembaga_penelitian, 'けんきゅうしょ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3486_lembaga_penelitian, 'けんきゅうじょ', NULL, false, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3487_jalan_pintas, 'ちかみち', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3488_untuk_dibantu, 'たすかる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3491_untuk_menikmati_sesuatu, 'たのしむ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3493_untuk_melempar_melawan, 'なげつける', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3494_untuk_menyihir, 'ばかす', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3495_cerita, 'はなし', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3505_untuk_memutuskan, 'けっていする', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3506_untuk_bertemu_secara_kebetulan, 'であう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3564_sebuah_kekhawatiran, 'しんぱい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3594_untuk_dicerminkan, 'うつる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3707_untuk_meminta_sesuatu, 'もとめる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3717_kereta_api_swasta, 'してつ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3924_tuntutan, 'ようきゅう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4129_perguruan_tinggi_swasta, 'しだい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4375_awal, 'かいし', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4379_melengkung, 'きょくせん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4465_pemecahan, 'かいけつ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_7458_bahasa, 'げんご', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_7472_cepat, 'はやい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_7534_chiba, 'ちば', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_7535_tanpa_berpikir, 'おもわず', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_7536_berdiri_dan_minum, 'たちのみ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_7574_bekerja, 'さぎょう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_7575_menjadi_sakit, 'やむ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_7621_untuk_menjual, 'うれる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_7628_rawat_inap, 'にゅういん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_7629_daun, 'は', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_7680_balai_kota, 'やくば', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_7685_nada, 'くちょう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_7686_untuk_berbicara, 'かたる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_7742_dapur, 'だいどころ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_7743_peternakan, 'のうじょう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_8666_sekolah_pascasarjana, 'だいがくいん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_8703_pagi_ini, 'けさ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_8741_radikal, 'ぶしゅ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_8742_lingkungan, 'きんじょ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_8743_tambahan, 'たしざん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_8744_pengurangan, 'ひきざん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_8803_tag_bernomor, 'ばんごうふだ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_8938_menjadi_menyala, 'つく', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_8962_jalan_gunung, 'やまみち', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_8962_jalan_gunung, 'さんどう', NULL, false, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_9022_ketinggian, 'こうど', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_9037_menjawab, 'かいとう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_9052_halaman, 'ページ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_9052_halaman, 'ぺーじ', NULL, false, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_9240_untuk_mempelajari_sesuatu_dari_seseorang, 'おそわる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_9250_untuk_pergi, 'さる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_9288_besok_lusa, 'あさって', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_9306_satu_tempat, 'いっかしょ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_9384_garis_lurus, 'ちょくせん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_9385_berjalan_lurus_ke_depan, 'ちょくしん', NULL, true, true);

  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2870_berikutnya, '次のバスで行きましょう。', 'Ayo pergi dengan bus berikutnya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2870_berikutnya, '次の日は、お休みですか？', 'Apakah Anda mempunyai hari libur pada hari berikutnya?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2870_berikutnya, '次は、あなたです。', 'Berikutnya giliran Anda.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2900_tenggara, '車は、南東の方に行った。', 'Mobil melaju ke arah tenggara.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2900_tenggara, '会社のビルは南東を向いています。', 'Gedung perkantoran menghadap ke tenggara.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2900_tenggara, '南東は、よく日が当たります。', 'Bagian tenggara mendapat sinar matahari yang baik.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2999_asisten, '弟は心理学者の助手です。', 'Adikku adalah asisten psikolog.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2999_asisten, '私の助手は三人の子の母でもあります。', 'Asisten saya juga ibu dari tiga anak.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2999_asisten, '社長の助手として、コーヒーを買ってきたり、電話に出たりします。', 'Sebagai asisten presiden, saya melakukan hal-hal seperti membuatkan kopi dan menjawab telepon mereka.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2999_asisten, '仮に私が首になった助手の助手だとしたら、それってつまり私も首になっちゃったってこと？', 'Jika saya asisten dari asisten yang baru saja dipecat, apakah itu berarti saya juga dipecat?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3009_konflik, 'あの姉妹はまだ対立している。', 'Saudari-saudari itu masih saling berhadapan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3009_konflik, '父と兄の対立を止めたいです。', 'Saya ingin menghentikan konflik antara ayah dan saudara laki-laki saya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3009_konflik, '対立の理由を教えて下さい。', 'Tolong beri tahu saya alasan konflik tersebut.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3018_untuk_memutuskan, '毎日、ネクタイを決めるのに時間がかかります。', 'Butuh waktu untuk memutuskan dasi mana yang akan dikenakan setiap hari.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3018_untuk_memutuskan, '私立大学に入学することに決めました。', 'Saya memutuskan untuk mendaftar di universitas swasta.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3018_untuk_memutuskan, '今日の夜、コウイチと行くレストランは、もう決めましたか？', 'Sudahkah kamu memutuskan restoran mana yang akan kamu datangi bersama Koichi malam ini?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3097_untuk_memulai_sesuatu, '去年、名古屋での新しい生活を始めました。', 'Tahun lalu, saya memulai hidup baru di Nagoya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3097_untuk_memulai_sesuatu, '私は、まだワニカニを始めたばかりです。', 'Saya baru saja memulai WaniKani.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3097_untuk_memulai_sesuatu, 'スペイン語を学びたいけど、何から始めるのがいいのか、分かりません。', 'Saya ingin belajar bahasa Spanyol, tapi saya tidak tahu harus mulai dari mana.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3110_rasanya_pahit, '父は苦いコーヒーを気に入ってます。', 'Ayah saya suka kopi pahit.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3110_rasanya_pahit, '苦いフルーツなんて、この世の中に有るんですか？', 'Apakah ada buah yang pahit di dunia ini?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3110_rasanya_pahit, 'カラメルは、こがさないように気を付けてください。でないと、苦い味になってしまいます。', 'Hati-hati jangan sampai karamel gosong karena akan terasa pahit.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3113_untuk_memberi_seseorang_tumpangan, '日本では、犬をタクシーに乗せることは出来ますか？', 'Di Jepang, bolehkah membawa anjing bersama Anda dengan taksi?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3113_untuk_memberi_seseorang_tumpangan, '今、車内にスーツケースを乗せました。', 'Saya memasukkan koper ke dalam kendaraan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3113_untuk_memberi_seseorang_tumpangan, 'テーブルに足を乗せるのは失礼ですよ。', 'Tidak sopan meletakkan kakimu di atas meja.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3150_berat, 'このスーツケースは重いですよ。', 'Koper ini berat.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3150_berat, 'この大きくて重い石を、ベンチの代わりにしましょう。', 'Mari kita gunakan batu yang besar dan berat ini sebagai bangku.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3150_berat, '今日の試験のことを思い出すと、学校への足が重い。', 'Sekarang aku ingat ujian hari ini, aku merasa enggan untuk pergi ke sekolah.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3159_untuk_bangun, '父は、毎朝六時に起きる。', 'Ayah saya bangun jam 6:00 setiap pagi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3159_untuk_bangun, 'もう起きたの？まだ午前四時だよ。', 'Apakah kamu sudah bangun? Ini masih jam 4 pagi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3159_untuk_bangun, 'ミラクルが起きたかもしれない。', 'Sebuah keajaiban mungkin telah terjadi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3160_sekaligus, '早速、新しいアプリをダウンロードしました。', 'Saya segera mengunduh aplikasi baru.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3160_sekaligus, '早速のお返事、どうもありがとうございます。', 'Terima kasih banyak atas balasan cepat Anda.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3160_sekaligus, '自立してから早速、自分の車を自分のお金で買いました。', 'Segera setelah mandiri, saya membeli mobil sendiri dengan uang saya sendiri.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3161_kecepatan, 'インターネットの速度がおそすぎてイライラしています。', 'Kecepatan internet ini terlalu lambat dan membuatku kesal.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3161_kecepatan, 'もう少し速度を下げて走行してください。', 'Tolong turunkan kecepatannya sedikit lagi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3161_kecepatan, '姉は朝ごはんの食パンを口に入れたまま、すごい速度で学校に走っていきました。', 'Kakak perempuanku berlari ke sekolah dengan kecepatan luar biasa, dengan roti di mulutnya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3162_untuk_mendistribusikan, '先生が試験の紙を配る。', 'Guru membagikan kertas untuk ujian.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3162_untuk_mendistribusikan, '日本の女子学生たちは、バレンタインデーに学校で手作りのチョコレートを配るんです。', 'Siswa perempuan di Jepang membagikan coklat buatan tangan di sekolah pada Hari Valentine.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3162_untuk_mendistribusikan, '新聞を配るバイトって、ランニングしながらでも出来ますか？', 'Bisakah saya melakukan pekerjaan paruh waktu untuk mendistribusikan koran sambil berlari?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3162_untuk_mendistribusikan, 'このパーティー、本気でつまんない。道でティシュでも配ってる方がマシだよ。', 'Pesta ini meledak. Bahkan membagikan tisu saku di jalan akan lebih baik.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3163_demi, 'このドリンクはお酒が入ってますか？', 'Apakah minuman ini mengandung alkohol?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3163_demi, '日本で、お酒を飲めるのは二十才以上の大人だけです。', 'Di Jepang, hanya orang dewasa berusia di atas dua puluh tahun yang boleh minum.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3163_demi, 'お酒に弱いので、お茶をいただきます。', 'Saya tidak terlalu toleran terhadap alkohol, jadi saya akan minum teh.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3164_alkohol_gaya_jepang, '父は平日は日本酒をあまり口にしない。', 'Ayah saya tidak banyak minum sake di hari kerja.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3164_alkohol_gaya_jepang, 'バーテンダーが日本酒を交ぜたカクテルを作りました。', 'Bartender membuat koktail yang dicampur dengan sake.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3164_alkohol_gaya_jepang, '日本にいる間に、たくさんのんでね。アメリカで日本酒を買うと高いですから。', 'Anda harus minum banyak sake saat berada di Jepang. Membeli sake di Amerika mahal.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3165_rsud, '病院までタクシーで、千円ぐらいです。', 'Dibutuhkan sekitar seribu yen untuk sampai ke rumah sakit dengan taksi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3165_rsud, 'お母さんが病院にいるので、毎日病院に通っています。', 'Ibuku ada di rumah sakit, jadi aku pergi ke sana setiap hari.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3165_rsud, 'あの白いビルは、市立病院です。', 'Gedung putih itu adalah rumah sakit kota.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3166_akademi, '私はトーフグ学院で心理学を学んでいます。', 'Saya belajar psikologi di Tofugu Institute.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3166_akademi, '友人は、2014年に文化学院に入学しました。', 'Teman saya masuk Bunka Gakuin pada tahun 2014.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3166_akademi, '学院では主に科学と数学の科目を教えています。', 'Akademi ini terutama mengajarkan sains dan matematika.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3166_akademi, '青山学院大学は東京にある大学の名前です。', 'Universitas Aoyama Gakuin adalah nama sebuah universitas di Tokyo.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3167_untuk_mengakhiri, '夏休みが終わる前に、海に行きたいです。', 'Saya ingin pergi ke laut sebelum liburan musim panas berakhir.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3167_untuk_mengakhiri, '今日のクラスは全て終わりました。', 'Kelas hari ini sudah selesai.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3167_untuk_mengakhiri, 'スタジオの前の道路の工事が中々終わらないので、ポッドキャストのレコーディングに集中できません。', 'Pembangunan jalan di depan studio memakan waktu lama untuk diselesaikan, jadi saya tidak bisa konsentrasi merekam podcast.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3168_perhentian_terakhir, 'この電車は終点まで走行します。', 'Kereta ini berjalan hingga pemberhentian terakhir.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3168_perhentian_terakhir, 'このシカゴ発のアムトラックの終点の駅は何ていう名前ですか。', 'Apa nama pemberhentian terakhir Amtrak yang berangkat dari Chicago?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3168_perhentian_terakhir, 'このハイキングコースの終点は、地図で見ると、大体この辺りです。', 'Titik akhir jalur pendakian ini kira-kira ada di sekitar sini pada peta.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3168_perhentian_terakhir, '私が仮に何と言っても、何をしようとも、終点までは、私が電車から出ないようにして。分かった？', 'Apapun yang saya katakan, apapun yang saya lakukan, tolong jangan biarkan saya keluar dari kereta sampai kereta mencapai perhentian terakhir. Oke?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3169_akhir, 'ミーティングは終了しました。', 'Pertemuan telah berakhir.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3169_akhir, '全ての作業は月末までに終了する予定です。', 'Seluruh pekerjaan dijadwalkan selesai pada akhir bulan ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3169_akhir, '気に入ったドラマが一シーズンで終了してしまった。', 'Drama favoritku berakhir dalam satu musim.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3170_terakhir, '最終のバスはいつ出発ですか？', 'Kapan bus terakhir berangkat?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3170_terakhir, 'このエピソードがシリーズの最終回です。', 'Episode ini adalah episode terakhir dari serial ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3170_terakhir, '最終決定は、後で社長がします。', 'Keputusan akhir nanti akan diambil oleh presiden.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3171_untuk_belajar, 'ここは、日本のマナーを習う教室です。', 'Ini adalah ruang kelas untuk belajar tata krama Jepang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3171_untuk_belajar, 'すみません、スペイン語の作文を習いたいんですが。', 'Permisi, saya ingin belajar komposisi bahasa Spanyol.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3171_untuk_belajar, 'この町の中学生は、みんなピアノかサッカーを習っています。', 'Siswa SMP di kota ini semuanya mengikuti pelajaran piano atau sepak bola.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3172_untuk_berguling, 'ボールが転がる音がした。', 'Terdengar suara bola menggelinding.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3172_untuk_berguling, '毛虫なら、その辺りにたくさん転がってるでしょう。', 'Untuk ulat, mungkin banyak yang tergeletak disekitar sana.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3172_untuk_berguling, '転がる石？イギリスのロックバンド「ザ・ローリング・ストーンズ」のことですか？', 'Batu yang menggelinding? Apakah yang Anda maksud: band rock Inggris The Rolling Stones?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3173_sepeda, 'すみません。この辺に自転車のパーキングはありますか？', 'Permisi. Apakah ada tempat parkir sepeda di sekitar sini?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3173_sepeda, '私は毎日自転車でパン作り教室に通っています。', 'Saya pergi ke bengkel pembuatan kue setiap hari dengan sepeda.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3173_sepeda, '自転車を買ってあげるよ。お返しは要らないからね！', 'Aku akan membelikanmu sepeda baru. Saya tidak butuh imbalan apa pun!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3174_untuk_mengemudi, '父は毎日、会社と家の間を車かバイクで運転する。', 'Ayah saya mengendarai mobil atau sepeda motornya setiap hari antara perusahaan dan rumahnya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3174_untuk_mengemudi, '私は休日しか運転しません。', 'Saya hanya mengemudi pada hari libur saya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3174_untuk_mengemudi, '船を運転するライセンスは持ってますか？', 'Apakah Anda memiliki izin untuk mengemudikan kapal?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3175_transfer, 'そのメール、私にも転送してくれない？', 'Bisakah Anda meneruskan email itu kepada saya?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3175_transfer, '海外に住んでいる日本人は、よく日本のウェブサイトから物を買って、海外の住所に転送しています。', 'Orang Jepang yang tinggal di luar negeri sering kali membeli barang dari situs web Jepang dan meneruskannya ke alamat luar negeri.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3175_transfer, '五ギガバイト以上の大きなデータは、転送するのに時間がかかります。', 'Data besar di atas lima gigabyte memerlukan waktu untuk ditransfer.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3176_berputar, '車は、走る時にタイヤが回転します。', 'Ban berputar saat mobil berjalan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3176_berputar, 'これは、ペットのハムスターが回し車を回転させている音です。', 'Ini adalah suara hamster peliharaan yang memutar rodanya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3176_berputar, '先日、回転ずし屋に出かけました。', 'Suatu hari, saya pergi ke restoran sushi berputar.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3177_untuk_maju, 'もう少し前に進んで下さい。', 'Silakan bergerak sedikit lebih maju.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3177_untuk_maju, 'プロジェクトは進んでますか？', 'Apakah proyek ini bergerak maju?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3177_untuk_maju, 'アクセルをふんでるのに、なぜか車が進みません。', 'Mobil entah kenapa tidak mau maju, padahal saya injak pedal gas.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3178_evolusi, 'コスプレ文化は日々進化し続けている。', 'Budaya cosplay terus berkembang dari hari ke hari.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3178_evolusi, '進化した科学テクノロジーが私たちの生活を支えています。', 'Teknologi ilmiah yang berkembang mendukung kehidupan kita.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3178_evolusi, 'ねえ、ママ。人間は進化したら何になるの？', 'Hei, ibu. Akan jadi apa manusia saat kita berevolusi?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3179_maju, '道の工事が進行しています。', 'Pembangunan jalan tersebut sedang berjalan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3179_maju, '先日、プロジェクトの進行ステータスをリポートしました。', 'Suatu hari, saya melaporkan status kemajuan proyek.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3179_maju, 'フグのエキスから作られた新しいワクチンが病気の進行を止めました。', 'Vaksin baru yang terbuat dari ekstrak ikan buntal telah menekan perkembangan penyakit ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3180_jatuh, '今、雪が落ちる音がしませんでした？', 'Apakah Anda baru saja mendengar salju turun?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3180_jatuh, '弟は虫を取ろうとして、木から落ちてしまいました。', 'Adikku jatuh dari pohon saat mencoba menangkap serangga.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3180_jatuh, '土の上にはカラフルな葉がたくさん落ちていました。', 'Banyak daun berwarna-warni berjatuhan ke tanah.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3181_daun_segar, '去年の夏、青葉が美しい山へ行きました。', 'Musim panas lalu, kami pergi ke gunung dengan dedaunan segar yang indah.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3181_daun_segar, '三日前、青葉の中に小さな白い花があるのを見つけた。', 'Tiga hari yang lalu, saya menemukan bunga putih kecil di tengah tanaman hijau');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3181_daun_segar, '青葉を見るのは目にいい事ですよ。', 'Baik bagi mata Anda untuk melihat tanaman hijau.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3182_ringan, 'このクッション、すごく軽いですね。', 'Bantalan ini sangat ringan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3182_ringan, '毎日の朝ごはんは、フルーツやシリアルといった軽い物を食べています。', 'Saya makan makanan ringan seperti buah-buahan dan sereal setiap hari untuk sarapan');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3182_ringan, '軽いエクササイズで、ストレスがなくなりました。', 'Dengan sedikit olahraga ringan, stres saya hilang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3183_untuk_membawa, '鳥が木の一部を運ぶのを見ました。', 'Saya melihat seekor burung membawa sebagian dari pohon itu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3183_untuk_membawa, 'お茶を、お客さんの部屋に運びました。', 'Saya membawa teh ke kamar pelanggan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3183_untuk_membawa, 'えっ、一人で三つのスーツケースを運んだんですか？', 'Apa? Apakah Anda membawa ketiga koper sendirian?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3184_beruntung, '宝くじが当たるなんて、運がいいよ。', 'Beruntung bisa memenangkan lotre.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3184_beruntung, 'スロットで十万円勝つなんて、お前は運がいいよ。', 'Anda beruntung memenangkan 100.000 yen dari slot.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3184_beruntung, '今回の台風では、死人もケガ人も出ず、本当に運がよかった。', 'Kami beruntung karena tidak ada korban jiwa atau cedera akibat topan ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3185_untuk_membuka_sesuatu, 'ドアを開けると、外から風が入ってきた。', 'Saat saya membuka pintu, angin masuk dari luar.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3185_untuk_membuka_sesuatu, '「ねぇ。このワイン、開けてもらえないかな？」「もちろん。そんなの楽勝さ。」', '"Hei. Bisakah kamu membuka anggur ini?" “Tentu saja. Sangat mudah.”');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3185_untuk_membuka_sesuatu, '一日も休まずに、毎朝魚屋開けるというのは大役です。', 'Membuka toko ikan setiap pagi tanpa melewatkan satu hari pun memiliki peran yang besar.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3186_terbuka_untuk_umum, '新しいドラマの公開は今年の三月です。', 'Drama baru ini akan dirilis pada bulan Maret tahun ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3186_terbuka_untuk_umum, 'この作品が公開してから、間もなく二十年です。', 'Sudah hampir dua puluh tahun sejak karya ini dirilis.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3186_terbuka_untuk_umum, '有名人のプライベートの電話番号が公開されてしまった。', 'Nomor telepon pribadi selebriti tersebut telah dirilis.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3187_membuka_bisnis, '私は社長ですが、開業したばかりで、お金がありません。', 'Saya presiden perusahaan, tetapi saya baru saja memulai perusahaan dan saya tidak punya uang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3187_membuka_bisnis, '私の兄は来月、マーケティングの会社を開業する予定です。', 'Adikku akan memulai perusahaan pemasaran bulan depan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3187_membuka_bisnis, '友人が海外で開業したビジネスが大成功し、今回は日本でも同じような事をするつもりだそうです。', 'Bisnis yang dimulai oleh teman saya di luar negeri telah sukses besar, dan kali ini mereka akan melakukan hal yang sama di Jepang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3188_perkembangan, 'この町は今、開発中です。', 'Kota ini sedang dalam pengembangan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3188_perkembangan, '開発チームのリーダーなんて、大役じゃないか。', 'Pemimpin tim pengembangan memiliki peran yang sangat besar.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3188_perkembangan, 'この会社は新しいプロダクトの開発に全力で集中しています。', 'Perusahaan ini fokus penuh pada pengembangan produk baru.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3189_untuk_mengumpulkan_sesuatu, '私は古いビー玉を集めるのが、すきです。', 'Saya suka mengumpulkan kelereng tua.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3189_untuk_mengumpulkan_sesuatu, '全国から美しい花を集めて、手作りのブーケを作りました。', 'Kami mengumpulkan bunga-bunga indah dari seluruh negeri dan membuat karangan bunga buatan tangan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3189_untuk_mengumpulkan_sesuatu, 'ユーザーからのフィードバックを集めています。', 'Kami mengumpulkan masukan dari pengguna.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3190_konsentrasi, '試験の間は、集中しましょう。', 'Mari berkonsentrasi selama ujian.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3190_konsentrasi, 'パパがゲームに集中している時は、話しかけない方がいいよ。', 'Kamu tidak boleh berbicara dengan Ayah saat dia sedang berkonsentrasi dalam permainan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3190_konsentrasi, 'ミーティングに集中しすぎて、朝ごはんをまだ食べてないことを今思い出しました。', 'Aku terlalu fokus pada pertemuan itu sehingga aku baru teringat bahwa aku belum sarapan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3190_konsentrasi, '日本は、東京などの大きな町に人口が集中しています。', 'Di Jepang, penduduknya terkonsentrasi di kota-kota besar seperti Tokyo.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3191_mengumpulkan_uang, '今日は集金の日です。', 'Hari ini adalah hari pengumpulan uang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3191_mengumpulkan_uang, 'もしもし、集金のお知らせでお電話しました。', 'Halo, saya menelepon untuk memberi tahu Anda tentang pengumpulan uang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3191_mengumpulkan_uang, '先日、集金に行ったら、お客さんのお金が足りなかったので、代わりに玉ねぎを二つもらってきました。', 'Ketika saya pergi mengumpulkan uang beberapa hari yang lalu, klien tidak punya cukup uang, jadi saya mendapat dua bawang bombay.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3192_untuk_minum, '母は毎日お茶を飲む。', 'Ibuku minum teh setiap hari.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3192_untuk_minum, '兄は一気にウイスキーを飲んで顔が赤くなった。', 'Adikku minum wiski dan wajahnya langsung memerah.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3192_untuk_minum, 'この水道水は飲めますか？', 'Bolehkah kamu meminum air keran ini?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3192_untuk_minum, '何をお飲みになりますか？ ジン、ウォッカ、ビール、ワイン、日本酒、それともチューハイ？ 何でも言ってくださいね。お酒なら何でもありますから。', 'Anda mau minum apa? Gin, vodka, bir, anggur, sake, atau chuhai? Sebut saja, kami punya apa pun yang mengandung alkohol.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3193_industri, 'こちらは、工業デザイナーの中山さんです。', 'Ini Tuan Nakayama, seorang desainer industri.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3193_industri, '家の近くは工業エリアなので、多くの工場があります。', 'Dekat dengan kawasan industri, jadi banyak pabrik disekitarnya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3193_industri, '工業テクノロジーの進歩により、近年はロボットがペットとしても活用されています。', 'Dengan kemajuan teknologi industri, robot telah digunakan sebagai hewan peliharaan dalam beberapa tahun terakhir.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3194_kanji, '「目」という漢字の形が気に入ってます。', 'Saya suka bentuk kanji "mata".');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3194_kanji, 'これは、小学校で学んだ漢字じゃないよ。', 'Ini bukan kanji yang saya pelajari di sekolah dasar.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3194_kanji, '中国出身だと、漢字を知ってる人がほとんどなので、日本語を学ぶのが少し楽です。', 'Kebanyakan orang Tiongkok mengetahui kanji, sehingga lebih mudah bagi mereka untuk belajar bahasa Jepang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3195_jalan_beraspal, 'アメリカの道路は広いですね。', 'Jalan-jalan di Amerika lebar.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3195_jalan_beraspal, 'ここは、いつも道路の工事をやってて車が通れません。', 'Saya tidak bisa melewati jalan beraspal ini karena selalu ada pekerjaan konstruksi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3195_jalan_beraspal, '道路には車両だけでなく、自転車や歩いてる人もいるので、気を付けて下さいね。', 'Harap berhati-hati tidak hanya terhadap kendaraan, tetapi juga terhadap sepeda dan pejalan kaki di jalan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3196_jalur_kereta_api, '線路には、何があっても入らないで下さい。', 'Jangan pernah melewati rel kereta api, apa pun yang terjadi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3196_jalur_kereta_api, '家の前に線路があるので、電車の音が大きいです。', 'Depan rumah ada rel kereta api, jadi suara keretanya nyaring.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3196_jalur_kereta_api, '兄は必ず線路が見えるよう、電車の後ろの車両に乗ります。', 'Kakak laki-laki saya selalu naik gerbong terakhir agar dia bisa melihat rel kereta.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3197_gang, '下町の路地には、たくさんのネコが住んでいます。', 'Banyak kucing yang tinggal di gang pusat kota.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3197_gang, 'その魚屋は、西通りから少し路地に入った所にあります。', 'Toko ikan berada di gang tak jauh dari Western Street.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3197_gang, 'この辺の路地、夜に歩く時は、安全に気を付けてね。', 'Berhati-hatilah demi keselamatan Anda saat berjalan di gang sekitar sini pada malam hari.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3199_petani, '学校で、むかしの農民のくらしを学びました。', 'Di sekolah, kami belajar tentang gaya hidup para petani zaman dahulu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3199_petani, 'いつも農民たちは、朝日がのぼる前からはたらき出しました。', 'Para petani selalu mulai bekerja sebelum matahari terbit.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3199_petani, '農民たちは、毎日、日がくれるまでクワをふるいました。', 'Para petani mengayunkan cangkulnya setiap hari hingga matahari terbenam.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3199_petani, '農民の手は、土のにおいにそまっていました。', 'Tangan para petani basah kuyup oleh bau tanah.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3200_pertanian, '私たちの町では、米の農業をしてる人々が多いです。', 'Di kota kami, banyak orang yang bertani padi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3200_pertanian, '農業はハードワークですが、国民の生活にとって大切です。', 'Pertanian adalah pekerjaan berat, namun penting bagi kehidupan masyarakat.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3200_pertanian, 'アイルランドから、日本の農業の文化を学びに来ました。', 'Saya datang dari Irlandia untuk belajar tentang budaya pertanian Jepang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3200_pertanian, '今、バイオダイナミックという農業の方法が人気です。', 'Metode pertanian yang disebut Biodinamika sedang populer sekarang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3201_kereta_bawah_tanah, '私は地下鉄に乗って大学へ行っていました。', 'Saya biasa naik kereta bawah tanah ke perguruan tinggi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3201_kereta_bawah_tanah, '地下鉄の出口は色々な所にあります。', 'Ada pintu keluar kereta bawah tanah di berbagai tempat.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3201_kereta_bawah_tanah, 'ニューヨークの地下鉄には本当に色々な人が乗ってますね。', 'Ada banyak jenis orang di kereta bawah tanah New York.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3202_pria_kuat, 'うちの社長はトライアスロンの後に出社するような鉄人です。', 'Presiden kita adalah orang kuat yang mulai bekerja setelah triathlon.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3202_pria_kuat, 'この有名女子プロレスラーは鉄人のように強いです。', 'Pegulat profesional wanita terkenal ini kuat seperti seorang badass.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3202_pria_kuat, 'あの男の人は、かつては「鉄人シェフ」とよばれたフレンチシェフです。', 'Pria itu adalah seorang chef Perancis, yang pernah juga disebut sebagai "Koki Besi".');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3202_pria_kuat, 'スーパーで赤ちゃんに「いないいないばぁ」をしている鉄人を見てしまった。', 'Saya melihat seorang pria tangguh bermain-main dengan bayi di toko kelontong.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3203_kereta_api_listrik, '大人になったら、電鉄会社に入社したいです。', 'Ketika saya besar nanti, saya ingin bergabung dengan perusahaan kereta api listrik.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3203_kereta_api_listrik, '京王電鉄の青い車両はカッコイイですよね。', 'Gerbong kereta biru Keio Electric Railway memang keren.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3203_kereta_api_listrik, 'えのしま電鉄のニックネームは「えのでん」です。', 'Julukan Kereta Listrik Enoshima adalah "Enoden".');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3204_lagu, 'これって、日本の歌ですよね？', 'Ini lagu Jepang ya?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3204_lagu, '今日ショッピングモールでかかってた歌の名前、知ってますか？', 'Tahukah Anda nama lagu yang diputar di pusat perbelanjaan hari ini?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3204_lagu, '君のために作った歌だよ。', 'Itu adalah lagu yang aku buat untukmu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3205_penyanyi, '会社をやめて、今すぐ歌手になりたい。', 'Saya ingin keluar dari perusahaan dan menjadi penyanyi sekarang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3205_penyanyi, 'レストランには日本人のピアニストと歌手がいました。', 'Ada seorang pianis dan penyanyi Jepang di restoran.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3205_penyanyi, 'シンディ・ローパーはニューヨーク出身の有名な歌手です。', 'Cindy Lauper adalah penyanyi terkenal dari New York.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3206_hitung, '算数の先生は、田中先生です。', 'Guru aritmatika adalah Tanaka-sensei.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3206_hitung, '明日の算数のクラスに必要な道具は全部持ったの？', 'Apakah Anda memiliki semua peralatan yang diperlukan untuk kelas aritmatika besok?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3206_hitung, '算数のテストで答えが分からない時は、とりあえず一か四と答えておけば平気です。', 'Jika Anda tidak mengetahui jawaban pada tes aritmatika, Anda cukup menjawab satu atau empat dan semuanya akan baik-baik saja.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3208_untuk_mendengar, '私は毎日ラジオを聞く。', 'Saya mendengarkan radio setiap hari.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3208_untuk_mendengar, 'こんな事聞いて、すみません。今お金持ってますか？', 'Aku minta maaf menanyakan hal ini padamu. Apakah kamu punya uang?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3208_untuk_mendengar, '五才の子でも先生の話をよく聞けるのに、大人のあなたが人の話を聞けない理由は一体何なんですか？', 'Mengapa sebagai orang dewasa Anda tidak bisa mendengarkan seseorang, padahal anak berusia lima tahun bisa mendengarkan gurunya?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3209_koran, '新聞ジャーナリストになりたい。', 'Saya ingin menjadi reporter surat kabar.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3209_koran, '近年、新聞のニュースはオンラインでチェックします。', 'Dalam beberapa tahun terakhir, saya memeriksa berita dari surat kabar online.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3209_koran, '全国で有名な新聞は、「朝日新聞」や「毎日新聞」などがあります。', 'Surat kabar terkenal di seluruh negeri, misalnya, Asahi Shinbun dan Mainichi Shinbun.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3210_bahasa_jepang, '週に一回、日本語の教室に通っています。', 'Saya pergi ke kelas bahasa Jepang seminggu sekali.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3210_bahasa_jepang, 'この本は日本語バージョンもありますか？', 'Apakah buku ini memiliki versi Jepang?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3210_bahasa_jepang, '「GENKI」という本と、「ワニカニ」というアプリで日本語を学んでいます。', 'Saya belajar bahasa Jepang dengan buku berjudul "GENKI" dan aplikasi bernama "WaniKani."');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3211_bahasa_perancis, 'フランス語を学ぶために大学に行きました。', 'Saya kuliah untuk belajar bahasa Prancis.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3211_bahasa_perancis, 'フランス語が上手なので、てっきりフランス人かと思ってました。', 'Bahasa Prancis Anda bagus dan saya pikir Anda orang Prancis.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3211_bahasa_perancis, '日本には、フランス語の本はあまりありません。', 'Tidak banyak buku berbahasa Prancis di Jepang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3212_bahasa_spanyol, '友人にスペイン語を教えてあげました。', 'Saya mengajari teman saya bahasa Spanyol.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3212_bahasa_spanyol, 'スペイン語の発音は、日本語の発音と大体同じらしいですよ。', 'Rupanya, pengucapan bahasa Spanyol hampir sama dengan pengucapan bahasa Jepang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3212_bahasa_spanyol, 'ニンニクはスペイン語で「ajo」っていうんだけど、「アホ」って発音されるんだよ。「アホ」は日本語で「stupid」って意味だよ。', 'Bawang putih dalam bahasa Spanyol adalah "ajo", yang diucapkan "aho". "Aho" berarti "bodoh" dalam bahasa Jepang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3214_subjek, 'この文の主語は何ですか？', 'Apa subjek kalimat ini?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3214_subjek, '先週の日本語のクラスで、日本語の主語について学びました。', 'Di kelas bahasa Jepang minggu lalu, saya belajar tentang mata pelajaran dalam bahasa Jepang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3214_subjek, '日本語では、いちいち主語を言わなくても相手に分かってもらえる事が多いんですよね。', 'Dalam bahasa Jepang, meskipun Anda tidak mengucapkan subjeknya setiap kali, pendengar akan sering memahaminya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3215_untuk_membaca, '家にいる時は本を読む時間がありません。', 'Saya tidak punya waktu untuk membaca buku ketika saya di rumah.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3215_untuk_membaca, '私には速く読む力が足りないと思うんです。', 'Saya rasa saya tidak mempunyai kemampuan membaca cepat.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3215_untuk_membaca, '入社してからは、毎朝電車で新聞を読んでいます。', 'Setelah bergabung dengan perusahaan, saya membaca koran di kereta setiap pagi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3216_cara_membaca, 'すみません。お名前の読み方を教えてもらってもいいですか？', 'Permisi. Bisakah Anda memberi tahu saya cara membaca nama Anda?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3216_cara_membaca, 'フランス語は話せるけど、フランス語の読み方は知らない。', 'Saya bisa berbahasa Prancis, tapi saya tidak bisa membaca bahasa Prancis.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3216_cara_membaca, 'この漢字には読み方が四通りもあるんですか？！', 'Apakah kanji ini memiliki empat bacaan yang berbeda?!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3217_untuk_membuat_suara_binatang, '外から鳥が鳴く声がしますね。', 'Kami mendengar kicauan burung di luar.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3217_untuk_membuat_suara_binatang, '子犬がワンワン鳴いています。', 'Anak anjing itu menggonggong.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3217_untuk_membuat_suara_binatang, 'ニワトリが「コケコッコー！」と鳴く音が農場の朝を始めます。', 'Suara ayam yang berkata "cock-a-doodle-doo" mengawali pagi hari di peternakan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3218_garis, '全ての線が、曲がってます。', 'Semua garisnya bengkok.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3218_garis, '地図上の、この線は一体何を表しているんですか？', 'Garis pada peta ini melambangkan apa?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3218_garis, '正しくない場所は、二重線でマークしておいて下さい。', 'Harap tandai tempat yang salah dengan garis ganda.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3218_garis, '山手線の電車で、東京の色々な場所に回ることができます。', 'Jalur kereta Yamanote dapat membawa Anda ke banyak tempat di Tokyo.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3219_samping, 'ベランダのプランターの横に毛虫がいた。', 'Ada seekor ulat di samping penanam di balkon.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3219_samping, '家の横に木で出来たフェンスが立っています。', 'Ada pagar yang terbuat dari kayu berdiri di samping rumah.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3219_samping, '横でボーっと見てないで、あんたも助けてよ！', 'Jangan hanya berdiri di samping dan menonton – bantulah!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3220_kondisi, '今日の調子はどうですか？', 'Apa kabarmu hari ini?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3220_kondisi, 'お母さんの調子がよくないので、今週は家事を手伝います。', 'Saya akan membantu pekerjaan rumah minggu ini karena kondisi ibumu sedang tidak baik.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3220_kondisi, '調子のいいことばっかり言う男には、ハート形の絵文字だけ返しておけばいいのよ。', 'Untuk pria yang hanya mengatakan hal-hal yang menyanjung, sebaiknya balas SMS dengan emoji berbentuk hati.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3221_tekanan, '先生は、重要なポイントを強調しました。', 'Guru menekankan poin-poin penting.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3221_tekanan, '工事の時は、何よりも安全が重要だという事を強調したい。', 'Saya ingin menekankan bahwa keselamatan adalah hal terpenting selama konstruksi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3221_tekanan, '自分の考えを強調するために、何度も同じことを言いました。', 'Saya mengatakan hal yang sama berkali-kali untuk menekankan pikiran saya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3221_tekanan, '二十年前のバービー人形は、まだボディラインを強調するものが多かった気がします。', 'Saya merasa boneka Barbie dua puluh tahun lalu masih menonjolkan garis tubuh.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3222_untuk_menyelidiki, '毎朝、妹がいるドイツの天気を調べるのが私のルーティンです。', 'Sudah menjadi rutinitasku untuk mengecek cuaca di Jerman, tempat adik perempuanku berada, setiap pagi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3222_untuk_menyelidiki, '自分で調べる気がないなら、早くアレクサに聞いてください。', 'Jika Anda tidak ingin mencarinya sendiri, tanyakan pada Alexa sekarang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3222_untuk_menyelidiki, 'アメリカ人の天才科学者が、鳥のフンを調べるために日本に来ました。', 'Seorang ilmuwan jenius Amerika datang ke Jepang untuk meneliti kotoran burung.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3222_untuk_menyelidiki, 'カピバラが食べられるのかどうか、ちょっと調べてくれない？', 'Bisakah Anda meneliti kapibara dan melihat apakah kapibara dapat dimakan?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3223_induk, 'この子犬の親は両方ジャーマンシェパードです。', 'Kedua orang tua anak anjing ini adalah Anjing Gembala Jerman.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3223_induk, '親にサインをもらわないといけない。', 'Saya harus mendapatkan tanda tangan dari orang tua saya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3223_induk, '親が白鳥だったら、子も白鳥のはずでしょ？', 'Kalau kedua orang tuanya adalah angsa, maka anaknya juga harus menjadi angsa, bukan?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3224_intim, 'まだ親しい友人にしか話してないの。', 'Saya hanya menceritakan hal ini kepada teman dekat.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3224_intim, '大学生の時に親しかった先生に、道でバッタリ会ったんです。', 'Saya bertemu dengan seorang guru yang dekat dengan saya di kampus di jalan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3224_intim, 'いくら親しいからって、トイレに入ってきちゃダメだよ。', 'Tidak peduli seberapa dekat Anda, Anda tidak boleh masuk ke kamar mandi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3225_baik, 'いつも親切にしていただいて、ありがとうございます。', 'Terima kasih karena selalu bersikap baik.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3225_baik, '道にいたお姉さんが、失くした財布を親切に見つけるのを助けてくれた。', 'Seorang wanita muda di jalan dengan baik hati membantu saya menemukan dompet saya yang hilang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3225_baik, '家に行くと、マイケルのママはいつも親切にお茶を出してくれる。', 'Saat aku sampai di rumah mereka, ibu Michael selalu dengan ramah menawariku teh.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3226_teman_dekat, '親友の考えに反対した。', 'Aku menentang pemikiran sahabatku.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3226_teman_dekat, '私たちって、友人以上、親友以下よね。', 'Kita lebih dari sekedar teman tapi kurang dari teman baik, bukan begitu?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3226_teman_dekat, 'レイチェルとは去年の夏に出会って、すぐに親友になりました。', 'Saya bertemu Rachel musim panas lalu dan segera berteman baik dengannya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3226_teman_dekat, '親友のバースデープレゼントに一頭のラマをあげようと思ってるんです。', 'Saya sedang berpikir untuk memberikan llama kepada sahabat saya sebagai hadiah ulang tahun.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3227_kepala, '頭に何か糸のような物が付いてますよ。', 'Ada sesuatu yang tampak seperti benang menempel di kepala Anda.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3227_kepala, 'このアパートは高さがあまりないので、頭の上に気をつけてください。', 'Apartemen ini memiliki langit-langit yang rendah, jadi harap jaga kepala Anda.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3227_kepala, '「頭がいい人」というのは、一体、どういう人の事ですか？', 'Orang seperti apa yang dimaksud dengan "orang pintar"?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3227_kepala, '最近、父の頭が白くなってきた。', 'Akhir-akhir ini, rambut ayah saya mulai memutih.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3227_kepala, 'あの話、頭からウソだったんだよ。', 'Cerita itu bohong sejak awal.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3228_menghadapi, '顔が赤いのは、アルコールのせいです。', 'Wajah merah itu karena minum alkohol.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3228_menghadapi, '小学校の時の先生の顔が思い出せません。', 'Saya tidak ingat wajah guru saya dari sekolah dasar.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3228_menghadapi, '今度の町民たちの花見には、顔を出しておこうかな。', 'Saya mungkin harus mampir untuk menyaksikan pemandangan bunga sakura berikutnya yang dilakukan warga kota.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3229_ekspresi, 'この前より、顔付きがリラックスしてるね。', 'Kamu terlihat lebih santai dari sebelumnya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3229_ekspresi, 'このブルドッグ、顔付きが女の子っぽいですね。', 'Bulldog ini memiliki ekspresi wajah yang girly.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3229_ekspresi, 'あなたは、心の広そうな人の顔付きをしてますよ。', 'Anda terlihat seperti orang dengan hati yang besar.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3230_sakit, 'ドライアイは目の病気です。', 'Mata kering merupakan salah satu penyakit mata.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3230_sakit, '昨日、クラスメイトが病気で学校を休みました。', 'Kemarin, teman-teman sekelasku tidak masuk sekolah karena sakit.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3230_sakit, '病気の時は、早くベッドに行って、よく休むことが重要です。', 'Saat Anda sakit, penting untuk tidur lebih awal dan istirahat yang cukup.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3231_penyakit, 'アルツハイマー病のせいで、色々な事を思い出せない時があります。', 'Ada kalanya saya tidak bisa mengingat berbagai hal karena penyakit Alzheimer.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3231_penyakit, '重いメニエール病になってから、もうすぐ三年です。', 'Sudah tiga tahun saya menderita penyakit Meniere yang parah.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3231_penyakit, 'うつ病と上手く生きていくためにも、心体が元気でいたいです。', 'Untuk mengatasi depresi saya, saya ingin tetap sehat secara fisik dan mental.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3232_orang_sakit, '病人や、ケガ人はいますか？', 'Apakah ada yang sakit atau terluka?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3232_orang_sakit, '病人には早くよくなってほしいですが、やっぱり近づかないでほしいです。', 'Aku ingin para pasien segera merasa lebih baik, tapi tetap saja aku tidak ingin mereka mendekatiku.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3232_orang_sakit, 'お母さん、病人にそんな重い物持たさないでよ！', 'Bu, jangan biarkan orang sakit membawa barang seberat itu!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3232_orang_sakit, 'うちの姉は病人に対してだけ天使のように親切にする事ができます。', 'Adikku bisa menjadi seperti malaikat bagi orang sakit.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3233_yang_paling_banyak, 'ふじ山は日本で最も高い山です。', 'Gunung Fuji adalah gunung tertinggi di Jepang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3233_yang_paling_banyak, 'アメフトでは、最もスコアが高いチームが勝者となります。', 'Dalam sepak bola Amerika, tim dengan skor tertinggi adalah pemenangnya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3233_yang_paling_banyak, '人生で最も大切な物は何ですか？お金ですか？それとも自由ですか？', 'Apa hal terpenting dalam hidup? Apakah itu uang? Atau apakah itu kebebasan?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3234_terbaik, 'かき氷は夏に食べるのが最高です。', 'Es serut paling enak dimakan di musim panas.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3234_terbaik, '仕事が終わってからのビールは、やっぱり最高だな。', 'Minum bir setelah bekerja adalah yang terbaik.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3234_terbaik, 'この名曲は何十年も人気があり、J-POPヒストリー上最高の音楽として知られています。', 'Mahakarya ini telah populer selama beberapa dekade dan dikenal sebagai musik terbaik dalam sejarah J-pop.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3235_terakhir, 'お前に金をやるのは、これが最後だ。分かったか？', 'Ini terakhir kalinya aku memberimu uang. Mengerti?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3235_terakhir, '出発する前に、最後にもう一回、町民の人々にお礼を言います。', 'Saya akan mengucapkan terima kasih kepada penduduk kota untuk terakhir kalinya sebelum pergi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3235_terakhir, 'このドラマの最後のシーンは有名です。', 'Adegan terakhir drama ini terkenal.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3235_terakhir, '私たち、最後に会ったのはいつだっけ？', 'Kapan terakhir kali kita bertemu?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3236_terkini, '最近は出社しないで家でリモートワークをしています。', 'Akhir-akhir ini, saya tidak pergi bekerja dan bekerja jarak jauh dari rumah.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3236_terkini, '最近、私は自立の仕方を本気で考えています。', 'Baru-baru ini, saya serius memikirkan cara untuk menjadi mandiri.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3236_terkini, 'テレビを持ってないので、最近の有名人や人気の曲を全く知りません。', 'Saya tidak punya TV, jadi saya tidak tahu selebriti terkini atau lagu populer.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3426_kanji_fonetik, '「珈琲」は「コーヒー」の有名な当て字です。', '珈琲 adalah kanji fonetik terkenal untuk kata コーヒー (kopi).');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3426_kanji_fonetik, 'この本は、当て字を多く使用しているため、少し分かりにくいです。', 'Buku ini agak membingungkan karena banyak menggunakan ateji.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3426_kanji_fonetik, '「先生、この当て字はどう読むんですか？」と聞くと、先生は少し青い顔になってこう言った。「その読み方は…知らないほうがいいです。今はまだ…ね。」 ', '“Profesor, bagaimana Anda membaca ateji ini?” saya bertanya. Dia menjadi sedikit pucat dan menjawab: "Kamu... lebih baik tidak mengetahui pengucapan itu. Belum."');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3427_satu_demi_satu, 'パンダが次々に竹を食べました。', 'Panda memakan tanaman bambu satu demi satu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3427_satu_demi_satu, '前回のミーティングでは次々にアイディアが出た。', 'Pada pertemuan terakhir, ide-ide bermunculan silih berganti.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3427_satu_demi_satu, 'レストランには色々なヘアスタイルの人が次々に来ました。', 'Orang-orang dengan berbagai gaya rambut datang ke restoran secara berurutan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3445_untuk_mengganti_sesuatu, 'このパーツ、金に代える？', 'Haruskah kita mengganti bagian ini dengan emas?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3445_untuk_mengganti_sesuatu, '牛のミルクをアーモンドミルクに代えて下さい。', 'Silakan ganti susu sapi dengan susu almond.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3445_untuk_mengganti_sesuatu, 'この子犬の一生はお金に代えることは出来ません。', 'Nyawa anak anjing ini tidak bisa digantikan dengan uang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3480_dokter_mata, '町民の中には、目医者に通っている人も多いです。', 'Banyak orang di kota ini pergi menemui dokter mata.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3480_dokter_mata, '目医者の先生って、みんなメガネかけてない？', 'Bukankah semua dokter mata memakai kacamata?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3480_dokter_mata, '今日は、目医者に行って新しい度のコンタクトレンズを作ってきました。', 'Hari ini, saya pergi ke dokter mata dan mendapatkan lensa kontak dengan resep baru saya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3481_hal_pertama, '右に曲がって一番目の部屋に入ってください。', 'Silakan belok kanan dan masuk ke ruangan pertama.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3481_hal_pertama, 'その朝、一番目に家を出たのは兄でした。', 'Pagi itu, kakak laki-lakiku yang pertama keluar rumah.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3481_hal_pertama, '東京大学に入学できる事を一番目に知らせたかった人は、受験中ずっと支えてくれた父でした。', 'Orang pertama yang ingin saya informasikan bahwa saya akan diterima di Universitas Tokyo adalah ayah saya, yang mendukung saya selama ujian masuk.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3484_menantikan, '明日のデートが楽しみです。', 'Aku menantikan tanggalnya besok.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3484_menantikan, 'まだ一月ですが、もう夏休みが楽しみです。', 'Ini masih bulan Januari, tapi aku sudah menantikan liburan musim panas.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3484_menantikan, '日本酒と生ビールが休日の楽しみです。', 'Sake dan bir draft adalah sesuatu yang saya nantikan di hari libur saya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3485_dibuat_untuk, 'このカレーは、日本人向けのスパイスで作っています。', 'Kami membuat kari ini dengan bumbu yang ditujukan untuk orang Jepang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3485_dibuat_untuk, 'このゲームはビギナー向けですよ。', 'Game ini ditujukan untuk pemula.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3485_dibuat_untuk, 'この本は三才くらいの子ども向けの絵本です。', 'Buku ini merupakan buku bergambar untuk anak-anak yang berusia sekitar tiga tahun.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3486_lembaga_penelitian, 'ここは、全国でも有名な研究所です。', 'Lembaga penelitian ini terkenal di seluruh negeri.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3486_lembaga_penelitian, 'このシャンプーは、アメリカの研究所で、生まれました。', 'Shampo ini diciptakan di sebuah lembaga penelitian di Amerika Serikat.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3486_lembaga_penelitian, '平日は、日本語研究所で平安時代の文学の研究をしています。', 'Pada hari kerja, saya meneliti literatur dari zaman Heian di laboratorium bahasa Jepang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3487_jalan_pintas, 'この道を右に曲がった方が、近道ですよ。', 'Ada jalan pintas jika Anda berbelok ke kanan jalan ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3487_jalan_pintas, '全ての近道が、安全な道という事じゃない。', 'Tidak semua jalan pintas merupakan jalan yang aman.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3487_jalan_pintas, '近道をすると、花見の場所にすぐに行けますよ。', 'Jika mengambil jalan pintas, Anda bisa menuju tempat melihat bunga sakura dengan cepat.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3488_untuk_dibantu, 'きっと助かるよ。平気。', 'Saya yakin mereka akan baik-baik saja. Tidak apa-apa.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3488_untuk_dibantu, '家を出たら、目の前にタクシーがいて、助かった。', 'Ketika saya meninggalkan rumah, ada taksi tepat di depan mata saya dan saya terselamatkan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3488_untuk_dibantu, '今回の試験については、どんな答えを聞かれるか、先生が前もって教えてくれたので、とても助かった。', 'Guru memberi tahu kami sebelumnya jawaban seperti apa yang akan diminta pada tes ini, dan itu sangat membantu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3491_untuk_menikmati_sesuatu, '夏はかき氷を食べたり花火を楽しむシーズンです。', 'Musim panas adalah musim untuk makan es serut dan menikmati kembang api.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3491_untuk_menikmati_sesuatu, '今週末は、友人たちと川でバーベキューを楽しむ予定だ。', 'Akhir pekan ini, saya berencana menikmati barbekyu bersama teman-teman di sungai.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3491_untuk_menikmati_sesuatu, 'このトランポリン、今大人気なんです。大人も子どもも楽しめますよ。', 'Trampolin ini sangat populer sekarang. Baik orang dewasa maupun anak-anak bisa bersenang-senang di sana.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3493_untuk_melempar_melawan, '人に対して小石を投げ付けるなんて、失礼だろ！', 'Tidak sopan melempar kerikil ke orang!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3493_untuk_melempar_melawan, '父は、怒って母に風船を投げ付けた。', 'Ayah saya marah dan melemparkan balon ke ibu saya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3493_untuk_melempar_melawan, '王子は、とりあえずドラキュラに玉ねぎを投げ付けてみた。', 'Sang pangeran mencoba melemparkan bawang ke arah vampir untuk sementara waktu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3494_untuk_menyihir, '日本では、タヌキは人間を化かす生物だと言われている。', 'Di Jepang, rakun dikatakan sebagai makhluk yang menyihir manusia.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3494_untuk_menyihir, 'このキツネは人を化かす天才だ。', 'Rubah ini jenius dalam memikat orang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3494_untuk_menyihir, '「先日は来れなくて、すみませんでした。キツネに化かされちまってねえ。」「心配しないでください。それはどうしようもない事ですから。」', '"Maaf, aku tidak bisa hadir beberapa hari yang lalu. Aku disihir oleh seekor rubah." "Jangan khawatir. Hal seperti itu mau bagaimana lagi."');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3495_cerita, '同じ話を何回されても、よく分かりません。', 'Tidak peduli berapa kali kamu menceritakan kisah yang sama padaku, aku tetap tidak mengerti.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3495_cerita, 'また日本のトイレの話ですか？', 'Pembicaraan tentang toilet Jepang lagi?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3495_cerita, '少しだけでいいので、話を聞いてもらえないですか？', 'Bisakah kamu mendengarkanku sebentar saja?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3505_untuk_memutuskan, 'コウイチの赤ちゃんの名前が決定したら、すぐにお知らせしますね。', 'Setelah mereka memutuskan nama untuk bayi Koichi, saya akan segera memberi tahu Anda.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3505_untuk_memutuskan, 'コンテストの勝者を決定しました。', 'Pemenang kontes telah ditentukan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3505_untuk_memutuskan, 'クソワロタwwwこのテレビ番組クソほどおもしろいじゃねーかよ。俺の一番好きな番組に決定したわ。', 'ROFL! Acara TV ini lucu sekali, kawan. Saya telah memutuskan bahwa ini sekarang adalah acara favorit saya yang baru.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3506_untuk_bertemu_secara_kebetulan, 'この国では、日本人に出会うチャンスがあまりない。', 'Di negara ini, tidak banyak kesempatan untuk bertemu dengan orang Jepang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3506_untuk_bertemu_secara_kebetulan, 'この町では色々な人に出会って、親切にしてもらいました。', 'Saya bertemu berbagai orang di kota ini dan mereka baik kepada saya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3506_untuk_bertemu_secara_kebetulan, 'ご主人とは、一体どこで出会ったんですか？', 'Di mana kamu bertemu suamimu?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3564_sebuah_kekhawatiran, '心配しないで、平気ですよ。全て上手くいくはず。', 'Jangan khawatir, tidak apa-apa. Semuanya harus berhasil.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3564_sebuah_kekhawatiran, '明日の試験が心配で、安心していられません。', 'Saya sangat khawatir tentang ujian besok sehingga saya tidak merasa nyaman.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3564_sebuah_kekhawatiran, '父にいつもの元気がないので、少し心配です。', 'Saya sedikit khawatir karena ayah saya tidak memiliki energi seperti biasanya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3564_sebuah_kekhawatiran, 'この船の進行方向が西なのか東なのか分からなくて心配になった。', 'Saya khawatir karena saya tidak tahu apakah kapal itu menuju ke timur atau barat.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3594_untuk_dicerminkan, 'スクリーンにパスワードが映っていますよ。', 'Kata sandi sedang diproyeksikan di layar.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3594_untuk_dicerminkan, 'テレビに映ると太って見えるって本当ですか？', 'Benarkah kamu terlihat lebih gemuk di TV?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3594_untuk_dicerminkan, 'ちゃんとスクリーンに映るかな。', 'Saya ingin tahu apakah itu akan muncul dengan benar di layar.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3594_untuk_dicerminkan, '今、テレビにお父さん映らなかった？', 'Bukankah Ayah baru saja muncul di TV?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3594_untuk_dicerminkan, 'テレビ電話をしていると、犬の顔がひょっこり映ってほっこりした。', 'Selama video call, wajah anjing itu tiba-tiba muncul dan itu mengharukan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3594_untuk_dicerminkan, 'その夜、君と二人で見た、あの水に映る美しい月が忘れられません。', 'Tak bisa kulupa indahnya bulan yang terpantul di air yang kita lihat bersama malam itu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3707_untuk_meminta_sesuatu, '社長交代を求めるメールを送りました。', 'Saya mengirim email meminta penggantian presiden perusahaan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3707_untuk_meminta_sesuatu, '父は、いつも新しいビジネスアイディアを求めている。', 'Ayah saya selalu mencari ide bisnis baru.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3707_untuk_meminta_sesuatu, '漢字を学ぶためのツールを求めるお客さんには、このワニカニってアプリをオススメしてるよ。', 'Bagi pelanggan yang mencari alat untuk mempelajari kanji, saya merekomendasikan aplikasi bernama WaniKani ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3707_untuk_meminta_sesuatu, '今日だけで返金を求める電話が二十回ありました。', 'Kami menerima dua puluh panggilan yang meminta pengembalian dana hari ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3717_kereta_api_swasta, '四月に私鉄の会社に入社しました。', 'Saya bergabung dengan perusahaan kereta api swasta pada bulan April.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3717_kereta_api_swasta, '東京のこの辺りは、私鉄もJRも通ってて、土地がすごく高いですよ。', 'Nilai properti di sekitar kawasan Tokyo ini sangat tinggi karena jalur kereta api swasta dan jalur JR lewat di sini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3717_kereta_api_swasta, '東京には、JRの「Suica」だけではなくて、他の私鉄でも作れる「PASMO」という名前のICカードもありますよ。', 'Di Tokyo, tidak hanya ada kartu "Suica" JR, tapi kartu "PASMO" kereta api lain yang bisa Anda gunakan di kereta api swasta.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3924_tuntutan, 'うちの犬は要求が多い。', 'Anjing kami memiliki banyak tuntutan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3924_tuntutan, 'ユーザーは、コストダウンを要求しています。', 'Pengguna menuntut pengurangan biaya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3924_tuntutan, '犬でも人でも、要求にこたえすぎると、要求がエスカレートしていきます。', 'Entah itu anjing atau manusia, jika Anda terlalu mudah menyerah pada tuntutan mereka, tuntutan tersebut hanya akan semakin meningkat.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4129_perguruan_tinggi_swasta, '私大に入学したいと思っています。', 'Saya ingin mendaftar di perguruan tinggi swasta.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4129_perguruan_tinggi_swasta, '私大の学生もバイトしてる子が多いですよ。', 'Banyak anak-anak di universitas swasta juga memiliki pekerjaan paruh waktu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4129_perguruan_tinggi_swasta, '私大は入学にお金がかかります。', 'Mendaftar di universitas swasta memerlukan biaya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4375_awal, 'イベントの開始時間は何時ですか？', 'Jam berapa acaranya dimulai?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4375_awal, '明日から新しいプロジェクトが開始します。', 'Sebuah proyek baru akan dimulai besok.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4375_awal, 'ミーティングの開始がおくれるって、社長にはもう言った？', 'Apakah Anda memberi tahu presiden bahwa waktu mulai pertemuan akan ditunda?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4379_melengkung, 'このドレスは、体の曲線をキレイに見せてくれる。', 'Gaun ini membuat lekuk tubuh terlihat indah.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4379_melengkung, 'この家具のデザインは、曲線が美しいので気に入ってます。', 'Saya menyukai desain furnitur ini karena lekukannya sangat indah.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4379_melengkung, '曲線のような花火が夜空を明るくしました。', 'Kembang api yang bentuknya seperti garis melengkung telah mencerahkan langit malam.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4379_melengkung, 'この道は曲線が多くて車で走るのがむずかしいです。', 'Jalan ini banyak berkelok dan sulit dikendarai dengan mobil.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4465_pemecahan, 'コウイチはお金で何でも解決できると思っている。', 'Koichi berpikir dia bisa menyelesaikan masalah apa pun dengan uang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4465_pemecahan, 'これですべてが解決したと思うのはまだ早いよ。', 'Masih terlalu dini untuk berpikir bahwa semuanya telah terselesaikan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4465_pemecahan, '「ただそこに立っているだけでは、何の解決にもなりませんよ」と、フグはきっぱりと言った。', '"Hanya berdiri di sana tidak akan menyelesaikan apa pun," kata Fugu terus terang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4465_pemecahan, 'いい解決方法が思いつかないんだよね。', 'Saya tidak dapat memberikan solusi yang baik.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7458_bahasa, '色々な言語を学ぶために海外へ行きました。', 'Saya pergi ke luar negeri untuk belajar berbagai bahasa.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7458_bahasa, '多くの言語を話す事が出来る人をポリグロットと言うんですね。', 'Orang yang bisa berbicara banyak bahasa disebut poliglot.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7458_bahasa, '言語学を学ぶために、去年大学院へ進んだ。', 'Saya mulai masuk sekolah pascasarjana tahun lalu untuk belajar linguistik.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7472_cepat, 'うちの兄はクロールで泳ぐのが速い。', 'Kakak laki-laki saya adalah perenang merangkak cepat.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7472_cepat, 'この車のスピード、さすがに速すぎない？', 'Bukankah mobil ini melaju terlalu cepat?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7472_cepat, '大谷君は、足も速いし、顔もイケメンだし、投手としても、バッターとしてもパーフェクトなんだよ。', 'Ohtani adalah pelari cepat, tampan, dan dia sempurna sebagai pelempar atau pemukul.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7534_chiba, '東京ディズニーリゾートは、千葉県にあります。', 'Tokyo Disney Resort terletak di Prefektur Chiba.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7534_chiba, '千葉から東京まで電車で行くと、大体四十分かかります。', 'Dibutuhkan sekitar empat puluh menit dengan kereta api untuk pergi dari Chiba ke Tokyo.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7534_chiba, '千葉のピーナッツは、家の中で対立が生まれるほど、おいしいんです。', 'Kacang tanah dari Chiba sangat lezat sehingga menimbulkan konflik di rumah.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7535_tanpa_berpikir, '思わず本音を口にしてしまいました。', 'Tanpa pikir panjang, aku mengutarakan apa yang sebenarnya kupikirkan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7535_tanpa_berpikir, 'このテーブルは安すぎて、思わず買ってしまった。', 'Meja ini sangat murah sehingga saya membelinya secara refleks.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7535_tanpa_berpikir, '思わず「ニコラス・ケイジさんですか？」と言ってしまった。', 'Tanpa berpikir panjang, saya bertanya, "Apakah Anda Nicolas Cage?"');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7536_berdiri_dan_minum, 'この立ち飲み屋は、生ビールが安くて、おつまみもおいしいですよ。', 'Bar berdiri ini memiliki bir murah dan makanan ringan yang lezat.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7536_berdiri_dan_minum, '一時間後の電車に乗るので、立ち飲みで平気ですよ。', 'Minum sambil berdiri bermanfaat bagi saya karena saya akan naik kereta satu jam kemudian.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7536_berdiri_dan_minum, '先日、立ち飲みバーでウイスキーをのんでいたら色々な人と出会いました。', 'Suatu hari, saya bertemu berbagai orang sambil minum wiski di bar berdiri.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7574_bekerja, 'これからクリーニングの作業をします。', 'Saya akan mulai membersihkan sekarang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7574_bekerja, '地下での作業はどうでしたか？', 'Bagaimana operasi bawah tanah Anda?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7574_bekerja, '二人で作業をすると早く終わります。', 'Ketika dua orang mengerjakan suatu tugas bersama-sama, maka tugas itu akan selesai dengan cepat.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7574_bekerja, '今日は一日中「作業ハンドブックを作る」という作業をしていました。', 'Hari ini, saya mengerjakan buku pegangan pengoperasian sepanjang hari.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7575_menjadi_sakit, 'この日が当たらないアパートに住んでたら、心が病むよ。', 'Jika Anda tinggal di apartemen yang tidak mendapat sinar matahari, hal itu akan memengaruhi kesehatan mental Anda.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7575_menjadi_sakit, '新しい会社のストレスで病みそうです。', 'Saya merasa seperti sakit karena stres di perusahaan baru.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7575_menjadi_sakit, 'だれだって病む事はあるんだから、出来るだけ他人に親切にしよう。', 'Semua orang bisa sakit, jadi mari kita berbuat baik kepada orang lain semaksimal mungkin.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7621_untuk_menjual, 'この車、いくらで売れるかな？', 'Saya penasaran berapa harga jual mobil ini?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7621_untuk_menjual, 'このトラックは毎月二千万台売れるんです。', 'Dua puluh juta truk ini terjual setiap bulan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7621_untuk_menjual, '千円札を五百円でネットオークションに出したら、必ず売れると思う？', 'Jika Anda menaruh uang seribu yen di lelang online seharga lima ratus yen, menurut Anda apakah uang itu pasti akan terjual?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7628_rawat_inap, '明日から母が三日間入院します。', 'Lusa, ibu saya akan dirawat di rumah sakit selama tiga hari.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7628_rawat_inap, '入院してから毎日朝ごはんはヨーグルトとリンゴでした。', 'Setiap hari sejak saya dirawat di rumah sakit, sarapan saya adalah yogurt dan apel.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7628_rawat_inap, '入院中は、テレビを見たり、友人に電話をしたりしてました。', 'Selama dirawat di rumah sakit, saya menonton TV dan menelepon teman-teman saya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7629_daun, 'これは、竹の葉です。', 'Ini adalah daun bambu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7629_daun, 'お茶の葉っぱは、一回だけでなく、何回か使えますよ。', 'Anda bisa menggunakan daun teh tidak hanya sekali, tapi beberapa kali.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7629_daun, '十一月になると、木の葉に色がついて山が美しいです。', 'Di bulan November, pegunungannya indah dengan warna dedaunan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7680_balai_kota, '今日の朝、役場に行ってきました。', 'Saya pergi ke balai kota pagi ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7680_balai_kota, '町の役場の近くにコンビニはありますか？', 'Apakah ada toko serba ada di dekat kantor kota?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7680_balai_kota, '役場の前で午後二時に会いましょう。', 'Sampai jumpa di depan kantor publik pada pukul 14.00.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7685_nada, '姉に対する父の口調は強かった。', 'Nada bicara ayahku terhadap adikku kuat.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7685_nada, '高校生の弟には、もう少しきつい口調で話してもらえませんか？', 'Bisakah kamu menggunakan nada yang lebih keras saat berbicara dengan kakakmu yang duduk di bangku SMA?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7685_nada, '先生は、いつも同じ口調で話します。', 'Guru selalu berbicara dengan nada yang sama.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7686_untuk_berbicara, '次のセミナーでは、何について語る予定ですか？', 'Apa yang ingin Anda bicarakan pada seminar berikutnya?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7686_untuk_berbicara, 'これは有名作家が、自分の一生を語った本です。', 'Ini adalah buku di mana seorang penulis terkenal berbicara tentang kehidupan mereka.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7686_untuk_berbicara, 'モダンアート作家が海外生活の体験を語ってくれました。', 'Seorang seniman modern bercerita tentang pengalamannya tinggal di luar negeri.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7742_dapur, 'この台所、広いですね。', 'Dapur ini luas.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7742_dapur, '家の台所は母の大切な空間なんです。', 'Dapur di rumah merupakan ruang yang penting bagi ibu saya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7742_dapur, 'うちでは、父が台所に立つ事が多いです。', 'Di keluargaku, ayahkulah yang paling sering memasak.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7743_peternakan, '青森の農場で生のトウモロコシを食べました。', 'Kami makan jagung mentah di sebuah peternakan di Aomori.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7743_peternakan, 'うちの子は、オーガニックのトマト農場に入社したんです。', 'Anak saya mulai bekerja di pertanian tomat organik.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7743_peternakan, '農場のスタッフは毎日午前四時には起きますよ。', 'Staf pertanian bangun setiap hari pada pukul 4:00 pagi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8666_sekolah_pascasarjana, '大学院を出て、すぐに入社しました。', 'Saya meninggalkan sekolah pascasarjana dan segera mendapat pekerjaan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8666_sekolah_pascasarjana, '私の友人は大学院で文学を学んでいます。', 'Teman saya sedang belajar sastra di sekolah pascasarjana.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8666_sekolah_pascasarjana, '大学院に進むか、バイトリーダーとして生きていくか、助言をいただけませんか？', 'Bisakah Anda memberi saya saran apakah saya akan melanjutkan ke sekolah pascasarjana atau mencoba mencari nafkah sebagai pemimpin untuk pekerja paruh waktu?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8703_pagi_ini, '今朝になってから「あ！テスト今日じゃん！」って思い出したんです。', 'Saya teringat pagi ini, "Oh! Ujiannya hari ini!"');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8703_pagi_ini, '今朝は思ったより冬らしい天気だったので、コートで会社に行きました。', 'Pagi ini, cuacanya lebih mirip musim dingin daripada perkiraanku, jadi aku pergi bekerja dengan mengenakan mantel.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8703_pagi_ini, '今朝は早く起きて、お父さんと一緒に手作りの朝食を作った。', 'Saya bangun pagi-pagi sekali dan membuat sarapan buatan tangan dengan ayah saya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8741_radikal, 'この字の部首は何ですか？', 'Apa yang radikal dari karakter ini?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8741_radikal, '部首の名前はたくさんあります。', 'Ada banyak nama radikal.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8741_radikal, '「切」の漢字の部首は「刀」です。', 'Kata radikal kanji untuk "memotong" adalah "pedang".');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8742_lingkungan, '近所にコインランドリーがある。', 'Ada binatu koin di lingkungan ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8742_lingkungan, 'あの女の子たちは、近所の小学生です。', 'Gadis-gadis di sana adalah siswa sekolah dasar di lingkungan itu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8742_lingkungan, '近所の友人にミソをもらいに行きました。', 'Saya pergi membeli miso dari seorang teman di lingkungan sekitar.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8742_lingkungan, '近所の犬が、私の戸口に向かって「ワン！」と大きな声で言うんです。', 'Anjing tetangga berkata, "Guk!" menuju pintu masukku.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8743_tambahan, '私の兄は、足し算が上手で早いです。', 'Adikku pandai dan cepat dalam menambahkan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8743_tambahan, 'この足し算の答えは正しくありません。', 'Jawaban atas penambahan ini salah.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8743_tambahan, '次回の数学のクラスで足し算のテストがあります。', 'Akan ada tes penambahan pada kelas matematika berikutnya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8744_pengurangan, 'もちろん、わたしは引き算ができます！', 'Tentu saja saya bisa melakukan pengurangan!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8744_pengurangan, '引き算は、たとえば「六から二を引いて、答えが四」ということです。', 'Pengurangan, misalnya, adalah "mengurangi dua dari enam sama dengan empat".');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8744_pengurangan, '小学校三年生レベルの引き算なのに、答えがどうしても分からない。', 'Walaupun ini soal pengurangan tingkat kelas tiga sekolah dasar, saya masih belum bisa menemukan jawabannya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8803_tag_bernomor, '番号札をとって、お待ちください。', 'Silakan ambil tiket bernomor dan tunggu giliran Anda.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8803_tag_bernomor, 'すみません、この辺りに番号札はありませんでしたか？', 'Maaf, bukankah ada tiket bernomor di sekitar sini?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8803_tag_bernomor, 'スーツケースの番号札を失ってしまった。', 'Saya kehilangan tiket bernomor untuk koper saya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8803_tag_bernomor, 'かき氷屋さんで番号札をもらって、待っている間にお茶でもしましょう。', 'Ayo beli tiket bernomor di toko es serut, lalu minum teh sambil menunggu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8938_menjadi_menyala, '人が来ると、セキュリティのためのライトが点くんです。', 'Saat orang datang, lampu keamanan menyala.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8938_menjadi_menyala, 'やっとキャンドルに火が点いて、テーブルの上は明るくなりました。', 'Akhirnya lilin menyala, dan meja menjadi lebih terang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8938_menjadi_menyala, '「アレクサ、電気を点けて」と言うと、家の全ての電気が点きます。', 'Saat saya bilang "Alexa, nyalakan lampunya", semua lampu di rumah menyala.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8962_jalan_gunung, '山道を歩くのは体力が必要だ。', 'Berjalan di jalur pegunungan membutuhkan kekuatan fisik.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8962_jalan_gunung, 'この山道は曲がる所がたくさんあるので、常に車のブレーキの上に足をおいて下さいね。', 'Ada banyak tikungan di jalan pegunungan ini, jadi selalu injak rem mobil.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8962_jalan_gunung, '山道には草や虫が多いので、タンクトップ、ハーフパンツ、ビーチサンダルで来ないでくださいね。', 'Ada banyak rumput liar dan serangga di jalan pegunungan ini, jadi mohon jangan membawa tank top, celana pendek, atau sandal jepit.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9022_ketinggian, 'このUFOは、今、高度3万3000フィートのところにいる。', 'UFO ini kini berada di ketinggian 33.000 kaki.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9022_ketinggian, 'マイケルは、高度なテクニックで、むずかしいゲームを次々クリアした。', 'Michael menyelesaikan satu demi satu permainan sulit dengan teknik-teknik canggih.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9022_ketinggian, '高度が一気に上ると、エンジンが止まっちゃうんだよ。', 'Ketika ketinggian menjadi terlalu tinggi, mesin akan mati secara tiba-tiba.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9037_menjawab, 'こちらに回答を入力してください。', 'Silakan masukkan jawaban Anda di sini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9037_menjawab, 'アンケートへのご回答、ありがとうございました。', 'Terima kasih atas tanggapan Anda terhadap survei ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9037_menjawab, '社長はインタビューを受ける事について、まだ回答を出していない。', 'Presiden belum menjawab soal menerima wawancara atau tidak.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9052_halaman, 'この本は五百頁以上ある。', 'Buku ini memiliki lebih dari 500 halaman.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9052_halaman, 'この漫画は全頁フルカラーです。', 'Manga ini sepenuhnya berwarna di semua halaman.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9052_halaman, 'PDFの次頁がエラーになって見れません。', 'Saya tidak dapat melihat halaman PDF berikutnya karena ada kesalahan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9052_halaman, '毎日一頁ずつ読み進めた。', 'Saya membaca satu halaman setiap hari.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9240_untuk_mempelajari_sesuatu_dari_seseorang, 'アップルパイのレシピは、おばあちゃんに教わるといいよ。', 'Kamu harus belajar resep pai apel dari Nenek.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9240_untuk_mempelajari_sesuatu_dari_seseorang, 'ひらがなとカタカナは、もう教わりましたか？', 'Apakah seseorang sudah mengajarimu hiragana dan katakana?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9240_untuk_mempelajari_sesuatu_dari_seseorang, '学校で教わったことが全て人生で役に立つわけじゃない。', 'Tidak semua yang Anda pelajari di sekolah berguna dalam kehidupan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9250_untuk_pergi, 'どうせすぐブームは去るよ。', 'Bagaimanapun, booming ini akan segera berakhir.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9250_untuk_pergi, 'そのマネージャーは去年会社を去りました。', 'Manajer itu meninggalkan perusahaan tahun lalu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9250_untuk_pergi, 'ようやく台風が去ってくれたね。', 'Akhirnya topannya sudah reda juga ya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9288_besok_lusa, '明後日の予定を教えてもらえますか？', 'Bisakah Anda memberi tahu saya tentang rencana lusa?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9288_besok_lusa, '明後日から一ヶ月日本に行くんです。', 'Saya akan ke Jepang selama satu bulan mulai lusa.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9288_besok_lusa, '明後日までに仕上げることはできますか？', 'Mungkinkah menyelesaikannya lusa?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9306_satu_tempat, 'テストで一ヶ所だけミスをしてしまった。', 'Saya hanya membuat satu kesalahan dalam ujian.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9306_satu_tempat, 'プレゼンの前に、もう一度見ておきたいところが一ヶ所あるんだ。', 'Sebelum presentasi, ada satu bagian yang ingin saya lihat lagi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9306_satu_tempat, '一ヶ所、大文字にしなくちゃいけないのに、小文字になってるところがあったよ。', 'Ada satu tempat yang harus menggunakan huruf kapital, tetapi menggunakan huruf kecil.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9384_garis_lurus, '紙に直線を引いてください。', 'Tolong buat garis lurus di atas kertas.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9384_garis_lurus, 'この図形は三本の直線でできています。', 'Bentuk ini terbuat dari tiga garis lurus.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9384_garis_lurus, 'ふと前を見ると、白い石が直線上にならんでいました。', 'Saat aku melirik ke depan, ada deretan batu putih lurus.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9385_berjalan_lurus_ke_depan, '車はゆっくり直進していた。', 'Mobil itu perlahan berjalan lurus ke depan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9385_berjalan_lurus_ke_depan, '右に曲がる時は、直進車に気をつけてください。', 'Saat berbelok ke kanan, hati-hati terhadap kendaraan yang datang lurus ke depan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9385_berjalan_lurus_ke_depan, 'ここから直進100mのところにマクドナルドがあります。', 'Ada McDonald''s 100 meter di depan dari sini.');

  -- 4. PREREQUISITES
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_465_menyelesaikan, id FROM items WHERE type = 'radical' AND (slug = '6' OR id = '6') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_499_publik, id FROM items WHERE type = 'radical' AND (slug = '2' OR id = '2') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_499_publik, id FROM items WHERE type = 'radical' AND (slug = '140' OR id = '140') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_630_lurus, r_8821_lurus);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_713_mulai, id FROM items WHERE type = 'radical' AND (slug = '19' OR id = '19') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_713_mulai, id FROM items WHERE type = 'radical' AND (slug = '417' OR id = '417') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_740_bangun, id FROM items WHERE type = 'radical' AND (slug = '124' OR id = '124') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_740_bangun, id FROM items WHERE type = 'radical' AND (slug = '228' OR id = '228') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_741_cepat, id FROM items WHERE type = 'radical' AND (slug = '114' OR id = '114') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_741_cepat, r_219_bundel);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_742_mendistribusikan, r_182_alkohol);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_742_mendistribusikan, id FROM items WHERE type = 'radical' AND (slug = '228' OR id = '228') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_743_alkohol, id FROM items WHERE type = 'radical' AND (slug = '103' OR id = '103') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_743_alkohol, r_182_alkohol);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_744_lembaga, id FROM items WHERE type = 'radical' AND (slug = '176' OR id = '176') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_744_lembaga, id FROM items WHERE type = 'radical' AND (slug = '78' OR id = '78') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_744_lembaga, id FROM items WHERE type = 'radical' AND (slug = '64' OR id = '64') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_745_akhir, id FROM items WHERE type = 'radical' AND (slug = '86' OR id = '86') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_745_akhir, id FROM items WHERE type = 'radical' AND (slug = '60' OR id = '60') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_745_akhir, id FROM items WHERE type = 'radical' AND (slug = '123' OR id = '123') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_746_mempelajari, id FROM items WHERE type = 'radical' AND (slug = '213' OR id = '213') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_746_mempelajari, id FROM items WHERE type = 'radical' AND (slug = '52' OR id = '52') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_747_berputar, id FROM items WHERE type = 'radical' AND (slug = '93' OR id = '93') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_747_berputar, id FROM items WHERE type = 'radical' AND (slug = '159' OR id = '159') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_748_maju, id FROM items WHERE type = 'radical' AND (slug = '114' OR id = '114') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_748_maju, r_240_turki);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_749_jatuh, id FROM items WHERE type = 'radical' AND (slug = '90' OR id = '90') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_749_jatuh, id FROM items WHERE type = 'radical' AND (slug = '103' OR id = '103') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_749_jatuh, r_180_ciuman);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_750_daun, id FROM items WHERE type = 'radical' AND (slug = '90' OR id = '90') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_750_daun, id FROM items WHERE type = 'radical' AND (slug = '83' OR id = '83') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_750_daun, id FROM items WHERE type = 'radical' AND (slug = '23' OR id = '23') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_751_ringan, id FROM items WHERE type = 'radical' AND (slug = '93' OR id = '93') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_751_ringan, r_179_batu_nisan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_752_membawa, id FROM items WHERE type = 'radical' AND (slug = '114' OR id = '114') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_752_membawa, id FROM items WHERE type = 'radical' AND (slug = '76' OR id = '76') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_752_membawa, id FROM items WHERE type = 'radical' AND (slug = '93' OR id = '93') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_753_membuka, id FROM items WHERE type = 'radical' AND (slug = '214' OR id = '214') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_753_membuka, id FROM items WHERE type = 'radical' AND (slug = '171' OR id = '171') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_754_mengumpulkan, r_240_turki);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_754_mengumpulkan, id FROM items WHERE type = 'radical' AND (slug = '23' OR id = '23') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_755_minum, id FROM items WHERE type = 'radical' AND (slug = '139' OR id = '139') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_755_minum, id FROM items WHERE type = 'radical' AND (slug = '142' OR id = '142') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_756_bisnis, id FROM items WHERE type = 'radical' AND (slug = '8768' OR id = '8768') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_756_bisnis, id FROM items WHERE type = 'radical' AND (slug = '136' OR id = '136') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_756_bisnis, id FROM items WHERE type = 'radical' AND (slug = '2' OR id = '2') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_757_cina, id FROM items WHERE type = 'radical' AND (slug = '103' OR id = '103') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_757_cina, r_8774_cina);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_758_jalan, id FROM items WHERE type = 'radical' AND (slug = '95' OR id = '95') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_758_jalan, r_180_ciuman);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_759_pertanian, r_185_musik);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_759_pertanian, r_183_tanah_longsor);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_760_besi, id FROM items WHERE type = 'radical' AND (slug = '118' OR id = '118') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_760_besi, r_275_kesalahan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_761_lagu, id FROM items WHERE type = 'radical' AND (slug = '113' OR id = '113') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_761_lagu, id FROM items WHERE type = 'radical' AND (slug = '142' OR id = '142') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_762_menghitung, id FROM items WHERE type = 'radical' AND (slug = '85' OR id = '85') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_762_menghitung, id FROM items WHERE type = 'radical' AND (slug = '53' OR id = '53') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_762_menghitung, id FROM items WHERE type = 'radical' AND (slug = '106' OR id = '106') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_763_mendengar, id FROM items WHERE type = 'radical' AND (slug = '214' OR id = '214') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_763_mendengar, id FROM items WHERE type = 'radical' AND (slug = '88' OR id = '88') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_764_bahasa, id FROM items WHERE type = 'radical' AND (slug = '117' OR id = '117') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_764_bahasa, id FROM items WHERE type = 'radical' AND (slug = '39' OR id = '39') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_764_bahasa, id FROM items WHERE type = 'radical' AND (slug = '16' OR id = '16') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_765_membaca, id FROM items WHERE type = 'radical' AND (slug = '117' OR id = '117') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_765_membaca, r_439_menjual);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_766_kicauan, id FROM items WHERE type = 'radical' AND (slug = '16' OR id = '16') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_766_kicauan, id FROM items WHERE type = 'radical' AND (slug = '151' OR id = '151') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_767_garis, id FROM items WHERE type = 'radical' AND (slug = '86' OR id = '86') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_767_garis, id FROM items WHERE type = 'radical' AND (slug = '52' OR id = '52') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_767_garis, id FROM items WHERE type = 'radical' AND (slug = '45' OR id = '45') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_768_samping, id FROM items WHERE type = 'radical' AND (slug = '23' OR id = '23') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_768_samping, id FROM items WHERE type = 'radical' AND (slug = '152' OR id = '152') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_769_menyelidiki, id FROM items WHERE type = 'radical' AND (slug = '117' OR id = '117') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_769_menyelidiki, id FROM items WHERE type = 'radical' AND (slug = '169' OR id = '169') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_770_induk, id FROM items WHERE type = 'radical' AND (slug = '55' OR id = '55') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_770_induk, id FROM items WHERE type = 'radical' AND (slug = '23' OR id = '23') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_770_induk, id FROM items WHERE type = 'radical' AND (slug = '91' OR id = '91') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_771_kepala, r_181_kacang_polong);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_771_kepala, r_184_geoduck);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_772_menghadapi, id FROM items WHERE type = 'radical' AND (slug = '55' OR id = '55') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_772_menghadapi, id FROM items WHERE type = 'radical' AND (slug = '116' OR id = '116') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_772_menghadapi, id FROM items WHERE type = 'radical' AND (slug = '38' OR id = '38') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_772_menghadapi, r_184_geoduck);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_773_sakit, r_187_sakit);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_773_sakit, r_186_dinamit);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_774_paling, id FROM items WHERE type = 'radical' AND (slug = '22' OR id = '22') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_774_paling, id FROM items WHERE type = 'radical' AND (slug = '88' OR id = '88') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_774_paling, id FROM items WHERE type = 'radical' AND (slug = '30' OR id = '30') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_913_meminta, id FROM items WHERE type = 'radical' AND (slug = '1' OR id = '1') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_913_meminta, id FROM items WHERE type = 'radical' AND (slug = '45' OR id = '45') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_913_meminta, id FROM items WHERE type = 'radical' AND (slug = '3' OR id = '3') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1150_menyelesaikan, id FROM items WHERE type = 'radical' AND (slug = '281' OR id = '281') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1150_menyelesaikan, id FROM items WHERE type = 'radical' AND (slug = '24' OR id = '24') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1150_menyelesaikan, id FROM items WHERE type = 'radical' AND (slug = '126' OR id = '126') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_9051_halaman, r_184_geoduck);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_2870_berikutnya, id FROM items WHERE type = 'kanji' AND (slug = '616' OR id = '616') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_2900_tenggara, id FROM items WHERE type = 'kanji' AND (slug = '634' OR id = '634') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_2900_tenggara, id FROM items WHERE type = 'kanji' AND (slug = '627' OR id = '627') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_2999_asisten, id FROM items WHERE type = 'kanji' AND (slug = '680' OR id = '680') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_2999_asisten, id FROM items WHERE type = 'kanji' AND (slug = '474' OR id = '474') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3009_konflik, id FROM items WHERE type = 'kanji' AND (slug = '683' OR id = '683') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3009_konflik, id FROM items WHERE type = 'kanji' AND (slug = '494' OR id = '494') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3018_untuk_memutuskan, id FROM items WHERE type = 'kanji' AND (slug = '687' OR id = '687') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3097_untuk_memulai_sesuatu, k_713_mulai);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3110_rasanya_pahit, id FROM items WHERE type = 'kanji' AND (slug = '719' OR id = '719') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3113_untuk_memberi_seseorang_tumpangan, id FROM items WHERE type = 'kanji' AND (slug = '722' OR id = '722') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3150_berat, id FROM items WHERE type = 'kanji' AND (slug = '735' OR id = '735') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3159_untuk_bangun, k_740_bangun);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3160_sekaligus, id FROM items WHERE type = 'kanji' AND (slug = '547' OR id = '547') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3160_sekaligus, k_741_cepat);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3161_kecepatan, k_741_cepat);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3161_kecepatan, id FROM items WHERE type = 'kanji' AND (slug = '725' OR id = '725') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3162_untuk_mendistribusikan, k_742_mendistribusikan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3163_demi, k_743_alkohol);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3164_alkohol_gaya_jepang, id FROM items WHERE type = 'kanji' AND (slug = '476' OR id = '476') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3164_alkohol_gaya_jepang, id FROM items WHERE type = 'kanji' AND (slug = '487' OR id = '487') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3164_alkohol_gaya_jepang, k_743_alkohol);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3165_rsud, k_773_sakit);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3165_rsud, k_744_lembaga);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3166_akademi, id FROM items WHERE type = 'kanji' AND (slug = '599' OR id = '599') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3166_akademi, k_744_lembaga);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3167_untuk_mengakhiri, k_745_akhir);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3168_perhentian_terakhir, k_745_akhir);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3168_perhentian_terakhir, id FROM items WHERE type = 'kanji' AND (slug = '641' OR id = '641') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3169_akhir, k_745_akhir);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3169_akhir, k_465_menyelesaikan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3170_terakhir, k_774_paling);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3170_terakhir, k_745_akhir);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3171_untuk_belajar, k_746_mempelajari);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3172_untuk_berguling, k_747_berputar);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3173_sepeda, id FROM items WHERE type = 'kanji' AND (slug = '578' OR id = '578') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3173_sepeda, k_747_berputar);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3173_sepeda, id FROM items WHERE type = 'kanji' AND (slug = '562' OR id = '562') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3174_untuk_mengemudi, k_752_membawa);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3174_untuk_mengemudi, k_747_berputar);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3175_transfer, k_747_berputar);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3175_transfer, id FROM items WHERE type = 'kanji' AND (slug = '734' OR id = '734') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3176_berputar, id FROM items WHERE type = 'kanji' AND (slug = '569' OR id = '569') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3176_berputar, k_747_berputar);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3177_untuk_maju, k_748_maju);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3178_evolusi, k_748_maju);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3178_evolusi, id FROM items WHERE type = 'kanji' AND (slug = '607' OR id = '607') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3179_maju, k_748_maju);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3179_maju, id FROM items WHERE type = 'kanji' AND (slug = '580' OR id = '580') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3180_jatuh, k_749_jatuh);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3181_daun_segar, id FROM items WHERE type = 'kanji' AND (slug = '604' OR id = '604') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3181_daun_segar, k_750_daun);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3182_ringan, k_751_ringan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3183_untuk_membawa, k_752_membawa);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3184_beruntung, k_752_membawa);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3185_untuk_membuka_sesuatu, k_753_membuka);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3186_terbuka_untuk_umum, k_499_publik);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3186_terbuka_untuk_umum, k_753_membuka);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3187_membuka_bisnis, k_753_membuka);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3187_membuka_bisnis, k_756_bisnis);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3188_perkembangan, k_753_membuka);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3188_perkembangan, id FROM items WHERE type = 'kanji' AND (slug = '729' OR id = '729') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3189_untuk_mengumpulkan_sesuatu, k_754_mengumpulkan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3190_konsentrasi, k_754_mengumpulkan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3190_konsentrasi, id FROM items WHERE type = 'kanji' AND (slug = '469' OR id = '469') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3191_mengumpulkan_uang, k_754_mengumpulkan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3191_mengumpulkan_uang, id FROM items WHERE type = 'kanji' AND (slug = '602' OR id = '602') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3192_untuk_minum, k_755_minum);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3193_industri, id FROM items WHERE type = 'kanji' AND (slug = '457' OR id = '457') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3193_industri, k_756_bisnis);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3194_kanji, k_757_cina);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3194_kanji, id FROM items WHERE type = 'kanji' AND (slug = '545' OR id = '545') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3195_jalan_beraspal, id FROM items WHERE type = 'kanji' AND (slug = '700' OR id = '700') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3195_jalan_beraspal, k_758_jalan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3196_jalur_kereta_api, k_767_garis);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3196_jalur_kereta_api, k_758_jalan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3197_gang, k_758_jalan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3197_gang, id FROM items WHERE type = 'kanji' AND (slug = '608' OR id = '608') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3199_petani, k_759_pertanian);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3199_petani, id FROM items WHERE type = 'kanji' AND (slug = '650' OR id = '650') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3200_pertanian, k_759_pertanian);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3200_pertanian, k_756_bisnis);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3201_kereta_bawah_tanah, id FROM items WHERE type = 'kanji' AND (slug = '608' OR id = '608') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3201_kereta_bawah_tanah, id FROM items WHERE type = 'kanji' AND (slug = '451' OR id = '451') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3201_kereta_bawah_tanah, k_760_besi);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3202_pria_kuat, k_760_besi);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3202_pria_kuat, id FROM items WHERE type = 'kanji' AND (slug = '444' OR id = '444') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3203_kereta_api_listrik, id FROM items WHERE type = 'kanji' AND (slug = '706' OR id = '706') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3203_kereta_api_listrik, k_760_besi);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3204_lagu, k_761_lagu);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3205_penyanyi, k_761_lagu);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3205_penyanyi, id FROM items WHERE type = 'kanji' AND (slug = '474' OR id = '474') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3206_hitung, k_762_menghitung);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3206_hitung, id FROM items WHERE type = 'kanji' AND (slug = '703' OR id = '703') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3208_untuk_mendengar, k_763_mendengar);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3209_koran, id FROM items WHERE type = 'kanji' AND (slug = '857' OR id = '857') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3209_koran, k_763_mendengar);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3210_bahasa_jepang, id FROM items WHERE type = 'kanji' AND (slug = '476' OR id = '476') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3210_bahasa_jepang, id FROM items WHERE type = 'kanji' AND (slug = '487' OR id = '487') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3210_bahasa_jepang, k_764_bahasa);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3211_bahasa_perancis, k_764_bahasa);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3212_bahasa_spanyol, k_764_bahasa);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3214_subjek, id FROM items WHERE type = 'kanji' AND (slug = '528' OR id = '528') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3214_subjek, k_764_bahasa);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3215_untuk_membaca, k_765_membaca);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3216_cara_membaca, k_765_membaca);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3216_cara_membaca, id FROM items WHERE type = 'kanji' AND (slug = '510' OR id = '510') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3217_untuk_membuat_suara_binatang, k_766_kicauan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3218_garis, k_767_garis);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3219_samping, k_768_samping);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3220_kondisi, k_769_menyelidiki);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3220_kondisi, id FROM items WHERE type = 'kanji' AND (slug = '462' OR id = '462') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3221_tekanan, id FROM items WHERE type = 'kanji' AND (slug = '667' OR id = '667') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3221_tekanan, k_769_menyelidiki);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3222_untuk_menyelidiki, k_769_menyelidiki);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3223_induk, k_770_induk);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3224_intim, k_770_induk);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3225_baik, k_770_induk);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3225_baik, id FROM items WHERE type = 'kanji' AND (slug = '502' OR id = '502') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3226_teman_dekat, k_770_induk);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3226_teman_dekat, id FROM items WHERE type = 'kanji' AND (slug = '504' OR id = '504') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3227_kepala, k_771_kepala);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3228_menghadapi, k_772_menghadapi);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3229_ekspresi, k_772_menghadapi);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3229_ekspresi, id FROM items WHERE type = 'kanji' AND (slug = '652' OR id = '652') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3230_sakit, k_773_sakit);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3230_sakit, id FROM items WHERE type = 'kanji' AND (slug = '548' OR id = '548') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3231_penyakit, k_773_sakit);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3232_orang_sakit, k_773_sakit);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3232_orang_sakit, id FROM items WHERE type = 'kanji' AND (slug = '444' OR id = '444') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3233_yang_paling_banyak, k_774_paling);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3234_terbaik, k_774_paling);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3234_terbaik, id FROM items WHERE type = 'kanji' AND (slug = '666' OR id = '666') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3235_terakhir, k_774_paling);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3235_terakhir, id FROM items WHERE type = 'kanji' AND (slug = '636' OR id = '636') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3236_terkini, k_774_paling);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3236_terkini, id FROM items WHERE type = 'kanji' AND (slug = '596' OR id = '596') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3426_kanji_fonetik, id FROM items WHERE type = 'kanji' AND (slug = '571' OR id = '571') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3426_kanji_fonetik, id FROM items WHERE type = 'kanji' AND (slug = '545' OR id = '545') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3427_satu_demi_satu, id FROM items WHERE type = 'kanji' AND (slug = '616' OR id = '616') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3427_satu_demi_satu, id FROM items WHERE type = 'kanji' AND (slug = '856' OR id = '856') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3445_untuk_mengganti_sesuatu, id FROM items WHERE type = 'kanji' AND (slug = '530' OR id = '530') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3480_dokter_mata, id FROM items WHERE type = 'kanji' AND (slug = '492' OR id = '492') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3480_dokter_mata, id FROM items WHERE type = 'kanji' AND (slug = '681' OR id = '681') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3480_dokter_mata, id FROM items WHERE type = 'kanji' AND (slug = '690' OR id = '690') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3481_hal_pertama, id FROM items WHERE type = 'kanji' AND (slug = '440' OR id = '440') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3481_hal_pertama, id FROM items WHERE type = 'kanji' AND (slug = '696' OR id = '696') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3481_hal_pertama, id FROM items WHERE type = 'kanji' AND (slug = '492' OR id = '492') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3484_menantikan, id FROM items WHERE type = 'kanji' AND (slug = '704' OR id = '704') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3485_dibuat_untuk, id FROM items WHERE type = 'kanji' AND (slug = '611' OR id = '611') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3486_lembaga_penelitian, id FROM items WHERE type = 'kanji' AND (slug = '691' OR id = '691') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3486_lembaga_penelitian, id FROM items WHERE type = 'kanji' AND (slug = '688' OR id = '688') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3486_lembaga_penelitian, id FROM items WHERE type = 'kanji' AND (slug = '707' OR id = '707') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3487_jalan_pintas, id FROM items WHERE type = 'kanji' AND (slug = '596' OR id = '596') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3487_jalan_pintas, id FROM items WHERE type = 'kanji' AND (slug = '700' OR id = '700') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3488_untuk_dibantu, id FROM items WHERE type = 'kanji' AND (slug = '680' OR id = '680') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3491_untuk_menikmati_sesuatu, id FROM items WHERE type = 'kanji' AND (slug = '704' OR id = '704') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3493_untuk_melempar_melawan, id FROM items WHERE type = 'kanji' AND (slug = '686' OR id = '686') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3493_untuk_melempar_melawan, id FROM items WHERE type = 'kanji' AND (slug = '652' OR id = '652') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3494_untuk_menyihir, id FROM items WHERE type = 'kanji' AND (slug = '607' OR id = '607') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3495_cerita, id FROM items WHERE type = 'kanji' AND (slug = '705' OR id = '705') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3505_untuk_memutuskan, id FROM items WHERE type = 'kanji' AND (slug = '687' OR id = '687') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3505_untuk_memutuskan, id FROM items WHERE type = 'kanji' AND (slug = '714' OR id = '714') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3506_untuk_bertemu_secara_kebetulan, id FROM items WHERE type = 'kanji' AND (slug = '483' OR id = '483') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3506_untuk_bertemu_secara_kebetulan, id FROM items WHERE type = 'kanji' AND (slug = '566' OR id = '566') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3564_sebuah_kekhawatiran, id FROM items WHERE type = 'kanji' AND (slug = '508' OR id = '508') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3564_sebuah_kekhawatiran, k_742_mendistribusikan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3594_untuk_dicerminkan, id FROM items WHERE type = 'kanji' AND (slug = '893' OR id = '893') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3707_untuk_meminta_sesuatu, k_913_meminta);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3717_kereta_api_swasta, id FROM items WHERE type = 'kanji' AND (slug = '923' OR id = '923') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3717_kereta_api_swasta, k_760_besi);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3924_tuntutan, id FROM items WHERE type = 'kanji' AND (slug = '737' OR id = '737') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3924_tuntutan, k_913_meminta);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4129_perguruan_tinggi_swasta, id FROM items WHERE type = 'kanji' AND (slug = '923' OR id = '923') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4129_perguruan_tinggi_swasta, id FROM items WHERE type = 'kanji' AND (slug = '453' OR id = '453') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4375_awal, k_753_membuka);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4375_awal, k_713_mulai);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4379_melengkung, id FROM items WHERE type = 'kanji' AND (slug = '614' OR id = '614') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4379_melengkung, k_767_garis);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4465_pemecahan, k_1150_menyelesaikan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4465_pemecahan, id FROM items WHERE type = 'kanji' AND (slug = '687' OR id = '687') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_7458_bahasa, id FROM items WHERE type = 'kanji' AND (slug = '593' OR id = '593') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7458_bahasa, k_764_bahasa);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7472_cepat, k_741_cepat);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_7534_chiba, id FROM items WHERE type = 'kanji' AND (slug = '460' OR id = '460') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7534_chiba, k_750_daun);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_7535_tanpa_berpikir, id FROM items WHERE type = 'kanji' AND (slug = '637' OR id = '637') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_7536_berdiri_dan_minum, id FROM items WHERE type = 'kanji' AND (slug = '494' OR id = '494') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7536_berdiri_dan_minum, k_755_minum);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_7574_bekerja, id FROM items WHERE type = 'kanji' AND (slug = '584' OR id = '584') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7574_bekerja, k_756_bisnis);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7575_menjadi_sakit, k_773_sakit);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_7621_untuk_menjual, id FROM items WHERE type = 'kanji' AND (slug = '587' OR id = '587') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_7628_rawat_inap, id FROM items WHERE type = 'kanji' AND (slug = '445' OR id = '445') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7628_rawat_inap, k_744_lembaga);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7629_daun, k_750_daun);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_7680_balai_kota, id FROM items WHERE type = 'kanji' AND (slug = '685' OR id = '685') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_7680_balai_kota, id FROM items WHERE type = 'kanji' AND (slug = '694' OR id = '694') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_7685_nada, id FROM items WHERE type = 'kanji' AND (slug = '452' OR id = '452') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7685_nada, k_769_menyelidiki);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7686_untuk_berbicara, k_764_bahasa);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_7742_dapur, id FROM items WHERE type = 'kanji' AND (slug = '520' OR id = '520') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_7742_dapur, id FROM items WHERE type = 'kanji' AND (slug = '707' OR id = '707') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7743_peternakan, k_759_pertanian);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_7743_peternakan, id FROM items WHERE type = 'kanji' AND (slug = '694' OR id = '694') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_8666_sekolah_pascasarjana, id FROM items WHERE type = 'kanji' AND (slug = '453' OR id = '453') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_8666_sekolah_pascasarjana, id FROM items WHERE type = 'kanji' AND (slug = '599' OR id = '599') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8666_sekolah_pascasarjana, k_744_lembaga);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_8703_pagi_ini, id FROM items WHERE type = 'kanji' AND (slug = '497' OR id = '497') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_8703_pagi_ini, id FROM items WHERE type = 'kanji' AND (slug = '695' OR id = '695') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_8741_radikal, id FROM items WHERE type = 'kanji' AND (slug = '721' OR id = '721') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_8741_radikal, id FROM items WHERE type = 'kanji' AND (slug = '645' OR id = '645') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_8742_lingkungan, id FROM items WHERE type = 'kanji' AND (slug = '596' OR id = '596') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_8742_lingkungan, id FROM items WHERE type = 'kanji' AND (slug = '707' OR id = '707') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_8743_tambahan, id FROM items WHERE type = 'kanji' AND (slug = '561' OR id = '561') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8743_tambahan, k_762_menghitung);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_8744_pengurangan, id FROM items WHERE type = 'kanji' AND (slug = '507' OR id = '507') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8744_pengurangan, k_762_menghitung);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_8803_tag_bernomor, id FROM items WHERE type = 'kanji' AND (slug = '696' OR id = '696') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_8803_tag_bernomor, id FROM items WHERE type = 'kanji' AND (slug = '533' OR id = '533') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_8803_tag_bernomor, id FROM items WHERE type = 'kanji' AND (slug = '649' OR id = '649') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_8938_menjadi_menyala, id FROM items WHERE type = 'kanji' AND (slug = '641' OR id = '641') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_8962_jalan_gunung, id FROM items WHERE type = 'kanji' AND (slug = '455' OR id = '455') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_8962_jalan_gunung, id FROM items WHERE type = 'kanji' AND (slug = '700' OR id = '700') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_9022_ketinggian, id FROM items WHERE type = 'kanji' AND (slug = '666' OR id = '666') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_9022_ketinggian, id FROM items WHERE type = 'kanji' AND (slug = '725' OR id = '725') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_9037_menjawab, id FROM items WHERE type = 'kanji' AND (slug = '569' OR id = '569') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_9037_menjawab, id FROM items WHERE type = 'kanji' AND (slug = '697' OR id = '697') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_9052_halaman, k_9051_halaman);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_9240_untuk_mempelajari_sesuatu_dari_seseorang, id FROM items WHERE type = 'kanji' AND (slug = '668' OR id = '668') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_9250_untuk_pergi, id FROM items WHERE type = 'kanji' AND (slug = '532' OR id = '532') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_9288_besok_lusa, id FROM items WHERE type = 'kanji' AND (slug = '626' OR id = '626') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_9288_besok_lusa, id FROM items WHERE type = 'kanji' AND (slug = '636' OR id = '636') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_9288_besok_lusa, id FROM items WHERE type = 'kanji' AND (slug = '476' OR id = '476') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_9306_satu_tempat, id FROM items WHERE type = 'kanji' AND (slug = '440' OR id = '440') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_9306_satu_tempat, id FROM items WHERE type = 'kanji' AND (slug = '707' OR id = '707') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_9384_garis_lurus, k_630_lurus);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_9384_garis_lurus, k_767_garis);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_9385_berjalan_lurus_ke_depan, k_630_lurus);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_9385_berjalan_lurus_ke_depan, k_748_maju);

END $$;
