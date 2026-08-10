-- ====================================================
-- KaniGani — Seed Data Level 6 (v2, relasional)
-- Auto-generated with Indonesian Slugs
-- ====================================================

DO $$
DECLARE
  -- ============ RADICAL IDs (Level 6) ============
  r_56_singa UUID; r_128_pisau UUID; r_129_sendok UUID; r_130_malaikat UUID; r_131_mendidihkan UUID; r_132_yakuza UUID; r_133_cyclops UUID; r_134_jet UUID; r_135_bulir UUID; r_136_domba UUID; r_137_darah UUID; r_138_panjang UUID; r_139_makan UUID; r_141_mama UUID; r_143_harta_benda UUID; r_156_leher UUID; r_174_lidah UUID; r_212_kematian UUID; r_224_timur UUID; r_267_kota UUID; r_311_mengubah UUID; r_398_rumah UUID;

  -- ============ KANJI IDs (Level 6) ============
  k_607_mengubah UUID; k_608_bumi UUID; k_609_keduanya UUID; k_610_semua UUID; k_611_di_sana UUID; k_612_santai UUID; k_613_negara UUID; k_614_musik UUID; k_615_memiliki UUID; k_617_kematian UUID; k_618_domba UUID; k_619_darah UUID; k_621_negara UUID; k_623_adik UUID; k_624_kakak UUID; k_625_toko UUID; k_627_timur UUID; k_628_berjalan UUID; k_631_tahu UUID; k_632_panjang UUID; k_633_depan UUID; k_635_ruang UUID; k_636_di_belakang UUID; k_637_memikirkan UUID; k_638_bintang UUID; k_639_hidup UUID; k_640_laut UUID; k_641_titik UUID; k_642_sains UUID; k_643_teh UUID; k_644_makan UUID; k_645_leher UUID; k_660_rumah UUID; k_851_kematian UUID; k_923_saya UUID; k_966_mengambil UUID;

  -- ============ VOCABULARY IDs (Level 6) ============
  v_2510_seribu UUID; v_2596_asal UUID; v_2601_untuk_dipotong UUID; v_2661_huruf_besar UUID; v_2688_bisikan_di_telinga UUID; v_2717_tidak_dapat_ditolong UUID; v_2722_substitusi UUID; v_2724_berada_dalam_sebuah_foto UUID; v_2776_untuk_melakukan_sesuatu UUID; v_2846_budaya UUID; v_2848_bawah_tanah UUID; v_2849_tanah UUID; v_2850_peta UUID; v_2851_kedua_tangan UUID; v_2852_kedua_hari UUID; v_2853_keduanya UUID; v_2854_semua UUID; v_2855_upaya_penuh UUID; v_2856_seluruh_jepang UUID; v_2857_keamanan UUID; v_2858_arah UUID; v_2859_murah UUID; v_2860_lega UUID; v_2861_rasa_gelisah UUID; v_2862_perdamaian UUID; v_2863_negara UUID; v_2864_kyuushuu UUID; v_2865_honshuu UUID; v_2866_lagu UUID; v_2867_musik_terkenal UUID; v_2868_untuk_memiliki UUID; v_2869_terkenal UUID; v_2874_untuk_mati UUID; v_2875_mayat UUID; v_2876_kematian UUID; v_2877_domba UUID; v_2878_wol UUID; v_2879_darah UUID; v_2880_perdarahan UUID; v_2881_negara UUID; v_2882_cina UUID; v_2883_surga UUID; v_2884_nasional UUID; v_2885_shikoku UUID; v_2886_negara_asing UUID; v_2887_orang_asing UUID; v_2888_amerika_serikat UUID; v_2891_saudara_perempuan UUID; v_2892_adik UUID; v_2893_kakak UUID; v_2894_toko UUID; v_2901_berjalan UUID; v_2906_panjang UUID; v_2907_presiden_perusahaan UUID; v_2908_depan UUID; v_2909_pagi UUID; v_2911_di_belakang UUID; v_2912_setelah UUID; v_2913_pm UUID; v_2914_untuk_berpikir UUID; v_2916_kehidupan UUID; v_2918_luar_negeri UUID; v_2919_titik UUID; v_2920_sains UUID; v_2921_teh UUID; v_2922_cokelat UUID; v_2923_untuk_makan UUID; v_2924_leher UUID; v_2925_pergelangan_kaki UUID; v_2926_untuk_dipecat UUID; v_2954_rumah UUID; v_3237_empat_puluh_dua UUID; v_3406_untuk_meninggal UUID; v_3411_huruf_kecil UUID; v_3415_liburan_musim_dingin UUID; v_3418_untuk_mampu_melakukan UUID; v_3419_dialek UUID; v_3439_pembicara_cepat UUID; v_3440_tidak_cukup UUID; v_3441_lebih_tua UUID; v_3444_tahun_ini UUID; v_3446_lebih_muda UUID; v_3458_pintu_keluar_timur UUID; v_3496_untuk_berbalik_ke_arah UUID; v_3522_timur UUID; v_3714_saya UUID; v_3715_kehidupan_pribadi UUID; v_3716_pribadi UUID; v_3817_untuk_mengambil UUID; v_4378_untuk_menyebar UUID; v_4971_babi UUID; v_5633_harta_nasional UUID; v_5846_lotere UUID; v_7451_satu_langkah UUID; v_7456_tiga_ratus UUID; v_7477_untuk_menambahkan_sesuatu UUID; v_7482_kendaraan UUID; v_7524_lebih_awal UUID; v_7525_kematian UUID; v_7526_kakak UUID; v_7527_ruang UUID; v_7566_padang_rumput UUID; v_7618_raja UUID; v_7619_air_raksa UUID; v_7620_venus UUID; v_7671_untuk_tumbuh UUID; v_7673_saturnus UUID; v_7674_energi UUID; v_7732_bawah_tanah UUID; v_7733_memanfaatkan UUID; v_8697_untuk_mengetahui UUID; v_8737_pergelangan_tangan UUID; v_9084_pergi_ke_kantor UUID; v_9143_mantan_mitra UUID; v_9151_batu_kecil UUID; v_9155_orang_lain UUID; v_9166_sepuluh_juta UUID; v_9282_cukup UUID; v_9353_eropa_barat UUID;

BEGIN

  DELETE FROM items WHERE level = 6;

  -- 1. RADICALS
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', 'L', 'singa', 6, 1, 'Radikal berbentuk L ini adalah radikal <radikal>singa</radikal>, karena "L" berarti "Singa". Ini juga terlihat seperti mulut singa yang terbuka sangat-sangat lebar. Bayangkan seekor singa membuka mulutnya untuk menguap. Sepertinya ini radikal!')
    RETURNING id INTO r_56_singa;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '刂', 'pisau', 6, 2, 'Ini adalah <radikal>pisau</radikal>. Lihat ujung tajam di kiri dan ujung runcing di atas? Dan ada pegangan kecil di bagian bawah untuk... yah, pegangannya. Berhati-hatilah agar Anda tidak melukai diri sendiri karena pisau ini!')
    RETURNING id INTO r_128_pisau;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '斗', 'sendok', 6, 3, 'Ada <radical>sendok</radikal> yang menyendok dua tetes cairan. Lihat bagian gagang dan sendok sendoknya? Bayangkan menyendok air ke dalam mulut Anda. MM.')
    RETURNING id INTO r_129_sendok;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', 'ホ', 'malaikat', 6, 4, 'Pertama, ada tanda silang di tengah, yang otomatis menjadikan ini radikal berbasis agama. Salib itu adalah kerangka tubuh seseorang dan yang keluar darinya adalah sayap. Ini adalah <radikal>malaikat</radikal>.')
    RETURNING id INTO r_130_malaikat;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '灬', 'mendidihkan', 6, 5, 'Radikal ini tampak seperti api yang berasal dari kompor. Itu karena ini adalah radikal yang <radikal>mendidih</radikal>. Anda perlu merebus banyak air di atas api.')
    RETURNING id INTO r_131_mendidihkan;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '歹', 'yakuza', 6, 6, 'Radikal ini terlihat seperti <radikal>yakuza</radikal>. Lihat dia menghadap ke kiri, dengan garis rahang yang mengancam dan gaya rambut pompadour yang besar? Mungkin bayangkan beberapa bekas luka di wajahnya juga. Anda tahu, benar-benar mirip yakuza.

Anda juga dapat mengingat hal ini karena ini adalah radikal malam yang bersifat radikal bawah tanah, dan orang-orang yang melakukan hal-hal bawah tanah pada malam hari (atau malam hari) sudah pasti adalah yakuza.')
    RETURNING id INTO r_132_yakuza;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '向', 'cyclops', 6, 7, 'Ada kepala dengan sedikit rambut di atasnya. Ada juga satu mata besar di tengahnya. Hanya satu makhluk yang memiliki kepala seperti ini, dan makhluk itu adalah <radikal>siklop</radikal>.')
    RETURNING id INTO r_133_cyclops;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '未', 'jet', 6, 8, 'Ini seperti salah satu <radical>jet</radical> yang mempunyai sayap hidung kecil. Bayangkan Anda sedang melihat jet dari atas ke bawah: seperti inilah tampilannya. Itu juga mengapa ini disebut jet radikal.')
    RETURNING id INTO r_134_jet;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '禾', 'bulir', 6, 9, 'Ini adalah pohon dengan bentuk bukit yang terkulai di atasnya. Apa penyebab pucuk tanaman melorot? <radikal>biji-bijian</radikal>. Bayangkan melihat bulir gandum atau padi terkulai saat siap dipanen. Ini akan terlihat radikal. Lihatlah semua biji-bijian yang matang itu!

Ini mungkin mengingatkan Anda pada 米, yang memiliki tiga batang yang tumbuh ke atas. Anda bisa membedakannya karena bagian atasnya miring karena berat bulirnya yang matang.')
    RETURNING id INTO r_135_bulir;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '羊', 'domba', 6, 10, 'Ini adalah <radical>domba</radical> yang sangat lembut. Lihat kedua tanduknya menyembul dan semua bulunya menyembul ke samping? Sangat halus sehingga Anda hampir tidak dapat melihat kaki kecilnya. Domba yang lucu!')
    RETURNING id INTO r_136_domba;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '血', 'darah', 6, 11, 'Anda melihat setetes kecil sesuatu di piring Anda. Oh tidak… itu <radikal>DARAH</radikal>!!! Ya, kamu berdarah. Sekarang Anda harus mencuci piring itu lagi — segera setelah pendarahannya berhenti. Jangan khawatir, trombosit Anda akan segera menghentikan pendarahannya. Haha, mengerti? PLATE-ayo? Seperti trombosit darah? Lelucon darah Jepang.')
    RETURNING id INTO r_137_darah;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '長', 'panjang', 6, 12, 'Ketika figur tongkat memiliki rambut yang terseret ke tanah dan selalu ditendang, Anda tahu bahwa rambutnya harus <radikal>panjang</radikal>. Kenapa lama sekali?!')
    RETURNING id INTO r_138_panjang;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '食', 'makan', 6, 13, 'Anda memakai topi dan pergi keluar untuk menendang sesuatu yang berwarna putih. Itu angsa putih besar dan kamu membunuhnya dengan tendanganmu. Itu karena Anda akan memasak dan <radikal>memakannya</radikal> itu. enak!')
    RETURNING id INTO r_139_makan;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', 'マ', 'mama', 6, 14, 'Radikal ini sama seperti karakter katakana "ma" (マ). Jadi mari kita buat semuanya tetap sederhana dan jadikan <radikal>mama</radikal> yang radikal. Bahkan terlihat seperti seorang mama yang mencondongkan tubuh dan menepuk lembut bayinya untuk membantunya tertidur.')
    RETURNING id INTO r_141_mama;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '占', 'harta-benda', 6, 15, 'Seseorang memiliki jari kaki di mulutnya. Dia adalah seorang peramal yang meramal <radikal>keberuntungan</radikal> Anda. Tapi agar dia bisa melakukannya, dia harus mengambil salah satu jari kakimu dan mencicipinya. Ini akan menjadi keberuntungan bagi Anda untuk membiarkan dia memasukkan kaki Anda ke dalam mulutnya.')
    RETURNING id INTO r_143_harta_benda;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '首', 'leher', 6, 16, 'Ini adalah radikal untuk <radical>leher</radical>. Lihat, Anda dapat melihat semua tulang belakang bertumpuk, dan ligamen kecil yang menghubungkannya ke dasar tengkorak! Itu sebabnya ini radikal untuk leher.')
    RETURNING id INTO r_156_leher;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '舌', 'lidah', 6, 17, 'Inilah radikal <radikal>lidah</radikal>. Lihat perosotan kokoh yang menampung seribu orang di atas mulutnya? Mulut yang terbuka tidak dapat menopang beban sebanyak itu, tetapi lidah yang kuat dapat menopangnya — bagaimanapun juga, itulah otot mulut.

Atau, Anda dapat menganggap ini sebagai sesuatu yang keluar dari mulut dengan ribuan pengecap kecil di atasnya. Itu lidahmu!')
    RETURNING id INTO r_174_lidah;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '亡', 'kematian', 6, 18, 'Ada penutup pada singa. Dan Anda terjebak di bawah naungan singa, yang berarti Anda pasti akan menemui <radikal>kematian</radikal> Anda. Atau jika Anda tidak ingin mati, pikirkanlah tentang singa yang malang. Jika Anda meninggalkan singa di bawah penutup terlalu lama, kematian juga akan menimpanya. Bagaimanapun, seseorang akan mati hari ini.')
    RETURNING id INTO r_212_kematian;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '東', 'timur', 6, 19, 'Di balik pohon itu matahari terbit di <radical>timur</radical>. Matahari selalu terbit di timur, jadi jika Anda menuju ke sana, melewati pohon, Anda juga akan menuju ke timur.')
    RETURNING id INTO r_224_timur;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '市', 'kota', 6, 20, 'Radikal ini sama dengan kanji. Artinya <radikal>kota</radikal>.

Jika Anda tidak ingat arti mnemonik kanji, berikut penyegarannya:

Anda melihat <radical>penutup</radical> lubang got dan <radical>handuk</radical>, keduanya bertuliskan nama <kanji>kota</kanji>. Tutup lubang got dekoratif dan handuk suvenir — dua hal yang disukai kota-kota, terutama di Jepang.')
    RETURNING id INTO r_267_kota;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '化', 'mengubah', 6, 21, 'Pemimpinmu (ｲ) telah menjadi sendok bengkok (匕). Ya, itu adalah <radikal>perubahan</radikal>. Mengapa pemimpin Anda berubah seperti ini? Mungkin mereka memimpin gerakan orang yang berubah menjadi sendok, seperti protes atau semacamnya. Dan mengapa tidak? Jika Anda ingin mengubah dunia, mulailah dengan mengubah diri Anda sendiri. Ke dalam sendok.')
    RETURNING id INTO r_311_mengubah;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '家', 'rumah', 6, 22, 'Di bawah atap ini ada seekor babi bersama anak-anaknya yang kecil. Babimu, karena ini adalah <radikal>rumah</radikal>mu! Anda menyimpan babi Anda di dalam tempat yang nyaman dan hangat. Mereka semua adalah anggota keluarga Anda, jadi mereka juga berhak tinggal di rumah Anda.')
    RETURNING id INTO r_398_rumah;

  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_56_singa, 'Singa', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_128_pisau, 'Pisau', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_129_sendok, 'Sendok', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_130_malaikat, 'Malaikat', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_131_mendidihkan, 'Mendidihkan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_132_yakuza, 'Yakuza', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_133_cyclops, 'Cyclops', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_134_jet, 'Jet', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_135_bulir, 'Bulir', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_136_domba, 'Domba', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_137_darah, 'Darah', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_138_panjang, 'Panjang', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_139_makan, 'Makan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_141_mama, 'Mama', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_143_harta_benda, 'Harta benda', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_156_leher, 'Leher', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_174_lidah, 'Lidah', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_212_kematian, 'Kematian', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_224_timur, 'Timur', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_267_kota, 'Kota', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_311_mengubah, 'Mengubah', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_398_rumah, 'Rumah', true, true);

  -- 2. KANJIS
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '化', 'mengubah', 6, 23, 'Kanji <radikal>perubahan</radikal> radikal dan <kanji>perubahan</kanji> sama persis. Hanya saja kanji ini juga bisa berarti <kanji>mengubah</kanji>. Tapi itu hanyalah perubahan lain, bukan?', 'Bayangkan pemimpin negara Anda mengambil sendok ini dan membisikkan kata-kata ajaib ke dalamnya untuk <kanji>mengubahnya</kanji>menjadi <membaca>mobil</kanji> (か).')
    RETURNING id INTO k_607_mengubah;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '地', 'bumi', 6, 24, '<radical>kotoran</radikal> <radikal>buaya</radikal> hidup di <kanji>bumi</kanji>, bukan di air. Mereka bisa berenang menembus bumi itu sendiri! Itu cukup menakutkan.

Anda juga bisa menganggap kata ini sebagai <kanji>tanah</kanji>, karena bumi terbuat dari bahan tersebut.', 'Satu-satunya cara untuk mencegah aligator kotoran ini menyeret Anda ke bawah <kanji>bumi</kanji> dan memakan Anda adalah dengan memberinya makan <reading>chee</reading>se (ち). Dengan begitu, ia tidak akan membawa Anda pada kematian yang mengerikan di bawah bumi dengan menyeret Anda ke bawah dan memutar Anda sampai Anda memakan tanah (secara harfiah).')
    RETURNING id INTO k_608_bumi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '両', 'keduanya', 6, 25, 'Saat Anda menggali di bawah <radical>tanah</radical> Anda menemukan <radical>kepala</radical> terletak di dekat <radical>gunung</radical>, yang <kanji>keduanya</kanji> merupakan benda aneh yang dapat ditemukan di bawah bumi.', 'Tapi, Anda menggali terlalu dalam dan air mengalir ke tempat Anda berada. Satu-satunya harapan Anda hanyalah perahu <reading>baris</reading> (りょう) yang melayang di kejauhan.')
    RETURNING id INTO k_609_keduanya;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '全', 'semua', 6, 26, '<radikal>topi</radikal> memahkotai <radikal>raja</radikal>, karena <kanji>semua</kanji> raja harus memilikinya.', 'Namun, saat Anda menelusuri <kanji>semua</kanji> raja, ternyata tidak semuanya memiliki topi. Yang terakhir Anda datangi adalah yang tanpa topi. Dia adalah raja <reading>Zen</reading> (ぜん). Dia memiliki pakaian sederhana dan kepala gundul, tidak seperti raja-raja mewah lainnya yang berdiri di dekatnya.')
    RETURNING id INTO k_610_semua;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '向', 'di-sana', 6, 27, '<radical>tetesan</radikal> mengenai <radikal>kumis</radikal> Anda. Dari mana asalnya? "Ah, itu datangnya dari <kanji>di sana</kanji>," katamu, <kanji>menghadap</kanji> ke sana.', 'Siapa yang menembakkan benda ini ke arahmu dari <kanji>di sana</kanji>? Anda melihat ke sana, dan melihat sesosok tubuh. Itu adalah <membaca>こう</membaca>いち.')
    RETURNING id INTO k_611_di_sana;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '安', 'santai', 6, 28, 'Dengan <radical>atap</radikal> di atas kepalanya, seorang <radikal>wanita</radikal> dapat <kanji>bersantai</kanji>. Dia tidak perlu khawatir tentang hujan atau salju atau mencari tempat untuk tidur. Atapnya juga super <kanji>murah</kanji>, sehingga dia bisa bersantai dengan keuangannya.', 'Saat dia <kanji>bersantai</kanji>es, dia mengeluarkan makanan <kanji>termurah</kanji>yang paling menenangkan di dunia: <reading>an</reading>chovies (あん).')
    RETURNING id INTO k_612_santai;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '州', 'negara', 6, 29, 'Pikirkan tentang Jepang. Jepang adalah negara yang terdiri dari pulau-pulau. Pada dasarnya mereka adalah tiga <radical>drop</radical> <radical>drop</radical> <radical>drop</radical> di <radical>sungai</radical> besar yaitu Samudera Pasifik. Ini adalah <kanji>negara bagian</kanji> atau <kanji>provinsi</kanji> Jepang.', 'Setiap <kanji>negara bagian</kanji> memiliki <reading>sepatu</reading> (しゅう) sendiri untuk mewakilinya. Bagian bawah setiap sepatu berbentuk negara, sehingga ketika diinjak akan meninggalkan bekas berbentuk negara di tanah.')
    RETURNING id INTO k_613_negara;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '曲', 'musik', 6, 30, 'Ada <radical>mulut</radikal>, <radical>dua puluh</radikal>, menyanyikan <kanji>musik</kanji> yang indah bersama-sama. Musiknya sepertinya <kanji>membungkuk</kanji> ke arah Anda melalui udara.', 'Kedua puluh mulutnya menghasilkan begitu banyak <kanji>musik</kanji> sehingga mereka benar-benar <membaca>menyelubungi Anda</reading> (きょく) dengannya. Mereka menyelubungi Anda dengan musik.')
    RETURNING id INTO k_614_musik;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '有', 'memiliki', 6, 31, 'Hanya <radical>narwhal</radical> dan <radical>moon</radical> yang Anda <kanji>miliki</kanji>. Bayangkan masing-masing satu di bawah lengan Anda.', 'Segala sesuatu yang <kanji>miliki</kanji> (kecuali narwhal dan bulan) diambil darimu oleh sekelompok <reading>kamu</reading>ths (ゆう) keliling.')
    RETURNING id INTO k_615_memiliki;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '死', 'kematian', 6, 32, 'Jika <radical>yakuza</radical> memberi Anda <radical>sendok</radical>, <kanji>kematian</kanji> akan datang untuk Anda. Itu adalah sendok kematian, pertanda kedatangan yakuza yang menyebabkan kematianmu.', '<kanji>Kematian</kanji> hadir dalam bentuk <reading>shee</reading>p (し). Domba kematian bekerja untuk yakuza, dan membunuh siapa saja yang memiliki sendoknya.')
    RETURNING id INTO k_617_kematian;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '羊', 'domba', 6, 33, 'Radikal <radikal>domba</radikal> dan kanji <kanji>domba</kanji> memiliki tampilan dan makna yang sama.', 'Untuk mengingat よう, kami menggunakan kata "Yogurt". <kanji>domba</kanji> mengejarmu. Jumlah mereka terlalu banyak, dan mereka mengejarmu, menguntitmu... karena kamu mencuri susu domba mereka <reading>yo</reading>gurt (よう). Sekarang Anda berlari dan menangis dan mencoba memakan yogurt sebelum domba-domba itu menyusul dan menginjak-injak Anda dengan kukunya.')
    RETURNING id INTO k_618_domba;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '血', 'darah', 6, 34, 'Radikal <radikal>darah</radikal> dan <kanji>darah</kanji> memiliki bentuk dan makna yang sama.', 'Untuk mengingat bacaan けつ, kita menggunakan kata "ketsup". Perpaduan sempurna antara saus tomat dan saus tomat!

Radikal secara teknis adalah <radikal>darah</radikal>, tetapi tahukah Anda bahwa radikal hanyalah setetes (darah) di piring. Jadi, Anda bertanya pada diri sendiri... Apakah itu benar-benar darah di piring? Mungkinkah itu? Anda memutuskan untuk bertaruh dan menjilatnya. Kalau dicicipi, sudah pasti itu bukan darah. Bukan, itu <reading>ketsup</reading> (けつ).')
    RETURNING id INTO k_619_darah;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '国', 'negara', 6, 35, '<radikal>mulut</radikal> dari <radikal>raja</radikal> meluas ke sekelilingnya (seperti dalam kanji ini). Dimana mulutnya mencapai, itulah <kanji>negara</kanji> miliknya, memberi atau menerima beberapa <radikal>tetes</radikal>.', 'Ternyata raja <kanji>negara</kanji> ini suka minum <reading>Coke</reading> (こく). Setiap pagi mulut besarnya itu menelan sebotol Coke berukuran 2 liter untuk sarapan.')
    RETURNING id INTO k_621_negara;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '妹', 'adik', 6, 36, 'Siapakah <radical>wanita</radical> yang berpura-pura menjadi <radical>jet</radical> itu? Itu <kanji>adik perempuanku</kanji>. *Mendesah*', '<kanji>adik</kanji>mu sedang memberikan beberapa <read>mi</reading>ce (まい) tumpangan di punggungnya seperti jet.')
    RETURNING id INTO k_623_adik;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '姉', 'kakak', 6, 37, 'Satu-satunya <radical>wanita</radical> di <radical>kota</radical> ini adalah <kanji>kakak perempuan</kanji> Anda. Dia satu-satunya wanita yang dikelilingi oleh sekelompok pria, tapi dia mengejar mimpinya di kota besar.', '<kanji>kakak</kanji>mu mungkin telah pindah ke kota, tapi dia memelihara <reading>shee</reading>p (し) peliharaannya bersamanya. Sekarang satu-satunya wanita di kota ini adalah kakak perempuanmu, dan satu-satunya domba adalah hewan peliharaannya.')
    RETURNING id INTO k_624_kakak;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '店', 'toko', 6, 38, 'Dahulu kala, seseorang memasang <radical>kanopi</radikal> di atas <radical>keberuntungan</radikal> mereka dan menciptakan <kanji>toko</kanji> pertama. <kanji>toko</kanji> ini didasarkan pada keberuntungan, tetapi sejak itu banyak toko berbeda bermunculan!', '<kanji>toko</kanji> ini dengan cepat berubah menjadi <reading>sepuluh</reading> (てん) toko! Itu adalah ide yang bagus, jadi semua orang yang menjual barang dan jasa memutuskan untuk menirunya dan membuat toko mereka sendiri. Keesokan harinya ada sepuluh lagi.')
    RETURNING id INTO k_625_toko;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '東', 'timur', 6, 39, 'Ini sama dengan kata radikal untuk <radical>timur</radikal>, jadi artinya <kanji>timur</kanji> juga.', 'Anda melihat seorang pria berjalan lurus menuju matahari terbit di <kanji>timur</kanji>. Saking terangnya dia tidak bisa melihat apa pun, jadi dia tersandung dan <reading>dia melukai</reading> lututnya di atas batu. Astaga… Tapi dia bangkit kembali, bertekad untuk menuju ke timur, dan, oh tidak, lututnya yang lain terluka! Oke, dia mungkin harus menyerah untuk pergi ke timur.')
    RETURNING id INTO k_627_timur;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '歩', 'berjalan', 6, 40, 'Anda <radical>berhenti</radical> pada <radical>slide</radical> <radical>kecil</radical>. Apa yang kamu lakukan sebelum berhenti di sini? Anda sedang <kanji>berjalan</kanji>ing.', 'Jadi, Anda sedang <kanji>berjalan</kanji>, mengurus urusan Anda sendiri, ketika tiba-tiba sesuatu terjadi dan menghantam wajah Anda. Anda menginjak kepala <reading>cangkul</reading> (ほ) dan itu menyebabkannya terayun dari tanah dan mengenai Anda.')
    RETURNING id INTO k_628_berjalan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '知', 'tahu', 6, 41, 'Anda mengambil <radical>panah</radical> ke <radical>mulut</radical> karena Anda <kanji>tahu</kanji> terlalu banyak. Anda mengetahui beberapa informasi yang sangat sensitif, dan seseorang mengirim petugas yang memegang busur untuk menutup mulut pengoceh Anda dengan panah.', 'Salah satu hal yang <kanji>ketahui</kanji> terlalu banyak adalah rencana <reading>shee</reading>p (し) untuk menguasai dunia. Ya, Anda tahu bahwa domba sebenarnya berencana untuk menggulingkan umat manusia dan mengambil alih dunia.')
    RETURNING id INTO k_631_tahu;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '長', 'panjang', 6, 42, 'Radikal <radikal>panjang</radikal> dan kanji <kanji>panjang</kanji> adalah sama! 

Kanji ini juga berarti <kanji>pemimpin</kanji>, karena semakin lama seseorang, semakin baik pula pemimpinnya. Atau mungkin... semakin lama mereka berada di suatu tempat? Terserahlah, panjang umur = kepemimpinan, tahu?', 'Anda melihat orang yang sangat <kanji>panjang</kanji>. Itu Nyonya <reading>Chou</reading> (ちょう), yang telah membuat dirinya panjang, seperti jalanannya. "Saya membuat diri saya panjang sehingga saya bisa mengawasi jalan lebih banyak, wilayah kekuasaan saya. Saya adalah <kanji>pemimpin</kanji> jalan-jalan ini. Jagalah diri Anda sendiri, jangan lama-lama," kata Ny. Chou.')
    RETURNING id INTO k_632_panjang;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '前', 'depan', 6, 43, 'Ada beberapa <radical>tanduk</radikal> di <radikal>tanah</radikal> dan <radikal>bulan</radikal> <radikal>pisau</radikal> di <kanji>depan</kanji> Anda. Saat Anda mencoba bergerak, mereka selalu berputar bersama Anda, tetap berada di depan. Anda tidak dapat melarikan diri dari objek-objek ini, karena alasan tertentu.

Kanji ini juga berarti <kanji>sebelum</kanji>. Bagaimanapun, sesuatu yang ada di depan Anda ada di depan Anda.', 'Anda akan menjadi gila dengan hal-hal ini di <kanji>depan</kanji> Anda sepanjang waktu. Anda akhirnya mencari bantuan dari seorang guru <reading>Zen</reading> (ぜん), yang memberi tahu Anda bahwa meditasi akan menyelamatkan Anda dari kutukan ini. Anda mencobanya, dan benar saja, benda-benda itu hilang! Itu berhasil!')
    RETURNING id INTO k_633_depan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '室', 'ruang', 6, 44, 'Anda memasang <radical>atap</radical> di atas <radical>tanah</radical> untuk membuat tambalan <radical>pribadi</radical> Anda sendiri dari <radical>tanah</radical>. Ini adalah <kanji>ruangan</kanji> Anda! Hanya itu saja sebuah ruangan, kau tahu? Tempat tertutup dan pribadi di mana Anda dapat memiliki waktu sendiri.', 'Satu-satunya masalah dengan <kanji>kamar</kanji> Anda adalah Anda tidak bisa selalu sendirian. Karena <read>shih tzu</reading> (しつ) ayahmu. Shih tzu suka masuk ke kamar Anda dan buang air kecil di mana-mana. Merusak privasi Anda sepenuhnya.')
    RETURNING id INTO k_635_ruang;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '後', 'di-belakang', 6, 45, 'Jika Anda <radical>berkeliaran</radical> untuk <radical>buang air besar</radical> di <radical>musim dingin</radical> Anda tidak akan pernah tahu apa yang mungkin terjadi <kanji>di belakang</kanji> Anda. <kanji>Setelah</kanji> selesai, Anda dapat <kanji>kembali</kanji> untuk melihat sesuatu yang benar-benar gila yang Anda lewatkan karena terlalu lama buang air besar dalam cuaca dingin.', 'Anda akhirnya melihat <kanji>di belakang</kanji> Anda dan melihat <reading>Go</reading>dzilla (ご) dan <reading>こう</reading>いち raksasa sedang melakukan pertempuran sengit <kanji>di belakang</kanji> di sana!')
    RETURNING id INTO k_636_di_belakang;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '思', 'memikirkan', 6, 46, 'Di <radical>sawah</radical> Anda menemukan <radical>hati</radikal> dan itu membuat Anda <kanji>berpikir</kanji>. Kamu pikir banyak <kanji>pikiran</kanji> yang seperti, "Hati siapa ini? Kenapa di sawah? Kenapa aku berpikir keras?"', 'Saat Anda <kanji>memikirkan</kanji>memikirkan <kanji>pikiran</kanji> ini, Anda melihat seseorang di tepi sawah. Dia benar-benar mengingatkanmu pada seseorang. Tapi siapa? Itu saja! Dia mengingatkanmu pada bartender di The Simpsons. Siapa namanya? Anda berpikir lagi. Apa itu? <membaca>Oh! Moe</reading> (おも) adalah namanya!')
    RETURNING id INTO k_637_memikirkan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '星', 'bintang', 6, 47, '<radikal>matahari</radikal> yang memberi <radikal>kehidupan</radikal> adalah <kanji>bintang</kanji> kita sendiri (yang kebetulan kita sebut matahari). Tentu saja, semua bintang lainnya mungkin juga memberikan kehidupan ke planet lain.', '"Semua <kanji>bintang</kanji> pemberi kehidupan ini membutuhkan pelindung," katamu sambil mengeluarkan <read>sa</reading>ber (せい) milikmu. Ini adalah tanggung jawab yang besar, tetapi dengan pedang terpercaya di tangan, Anda yakin dapat mempertahankan sistem bintang kita.')
    RETURNING id INTO k_638_bintang;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '活', 'hidup', 6, 48, '<radikal>tsunami</radikal> <radikal>lidah</radikal> sedang menghampiri Anda. Saat ia menyapu Anda, Anda merasakan setiap lidah bergerak di sekitar tubuh Anda, menjilati Anda. Mereka membuatmu merasa begitu... <kanji>hidup</kanji>!', 'Perasaan <kanji>hidup</kanji> ini tidak hanya terjadi pada Anda saja, tsunami lidah juga melanda seluruh <reading>kucing</reading> (かつ) di lingkungan Anda!')
    RETURNING id INTO k_639_hidup;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '海', 'laut', 6, 49, '<radikal>tsunami</radikal> akan datang, jadi arahkan <radikal>senjata</radikal> Anda ke luar <radikal>jendela</radikal> ke arah tsunami tersebut. "Sebaiknya kau kembali, <kanji>laut</kanji>, atau aku akan menembak!"', '<kanji>laut</kanji> memutuskan tidak ingin mati hari ini, jadi ia membalikkan tsunaminya dan pergi ke arah lain. Kamu naik <reading>kay</reading>ak (かい) dan mengejarnya dengan senjatamu, untuk memastikan dia benar-benar kembali ke laut dan tidak menenggelamkan orang lain.')
    RETURNING id INTO k_640_laut;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '点', 'titik', 6, 50, '<radical>Keberuntungan</radical> <radical>mendidih</radical> Anda hingga ke satu <kanji>titik</kanji> pada waktunya. Satu titik waktu menentukan bagaimana masa depan Anda selanjutnya.', 'Saat Anda menatap <kanji>titik</kanji>, Anda menyaksikan dengan kagum saat titik tersebut berpindah ke titik <reading>sepuluh</reading> (てん) dalam serangkaian angka yang panjang.')
    RETURNING id INTO k_641_titik;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '科', 'sains', 6, 51, 'Anda menyendok beberapa <radical>biji-bijian</radikal> ke dalam <radical>sendok</radikal> untuk melakukan <kanji>sains</kanji>. Anda melakukan eksperimen pada butiran ini dalam <kanji>kursus</kanji> sains Anda.', 'Dengan menggunakan keterampilan <kanji>sains</kanji> Anda, suhu dan pengukuran yang tepat, Anda berhasil membuat butiran ini tumbuh menjadi <read>ca</reading>r (か). Inilah mobil spesial <kanji>departemen</kanji> sains sekarang!')
    RETURNING id INTO k_642_sains;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '茶', 'teh', 6, 52, 'Jika Anda bisa mencuri <radical>bunga</radical> yang menghiasi <radical>topi</radical> yang dikenakan oleh <radical>malaikat</radical>, Anda bisa menggunakannya untuk membuat <kanji>teh</kanji> yang lezat. Secara alami, para malaikat menghiasi topi mereka hanya dengan bunga paling harum dan lezat yang cocok untuk diseduh.', 'Setelah menyeduh <kanji>teh</kanji>, lihat topinya lagi dan temukan papan nama di dalamnya yang bertuliskan <reading>Cha</reading>d (ちゃ). Anda memutuskan bahwa mulai sekarang jenis teh ini akan dikenal sebagai teh Chad, untuk menghormati Chad.')
    RETURNING id INTO k_643_teh;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '食', 'makan', 6, 53, 'Kata radikal untuk <radikal>makan</radikal> dan kanji untuk <kanji>makan</kanji> adalah sama! Beruntungnya kamu.', 'Syukurlah, Anda akhirnya bisa <kanji>memakan</kanji> <kanji>makanan</kanji> Anda. Kamu sangat lapar. Seseorang telah membuatmu kelaparan dan sekarang mereka akhirnya memberimu makanan. Namun sayangnya, setiap kali Anda menggigitnya, Anda mendapat <read>kejutan</reading> (しょく) dari suatu tempat.')
    RETURNING id INTO k_644_makan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '首', 'leher', 6, 54, '<radikal>leher</radikal> radikal dan <kanji>leher</kanji> kanji sama persis!', 'Satu-satunya hal yang Anda lakukan dengan <kanji>leher</kanji> Anda adalah menggunakannya untuk menelan banyak <reading>coo</reading>l <reading>bea</reading>ns (くび). Mm mm. Rasakan kacang sejuk dan sejuk itu meluncur ke leher Anda. Anda tidak benar-benar mencicipinya, tetapi Anda tahu itu ada.')
    RETURNING id INTO k_645_leher;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '家', 'rumah', 6, 55, 'Radikal <radikal>rumah</radikal> membentuk kanji <kanji>rumah</kanji>! Cukup mudah. Kanji ini juga digunakan untuk berarti <kanji>rumah</kanji>, jadi cobalah untuk mengingatnya juga.', 'Apa yang kamu lakukan di <kanji>rumah</kanji>mu? Anda <read>ea</reading>t <reading>e</reading>ggs (いえ), itulah yang terjadi. Anda makan telur tiga kali sehari, setiap hari. Anda sangat suka makan telur di <kanji>rumah</kanji> Anda!')
    RETURNING id INTO k_660_rumah;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '亡', 'kematian', 6, 56, '<radikal>kematian</radikal> radikal dan <kanji>kematian</kanji> kanji adalah sama.', '<kanji>kematian</kanji>mu disebabkan oleh kecelakaan <reading>busur</reading>ling (ぼう). Oh, kamu tidak tahu? Anda akan terkena bola bowling raksasa dan hancur berkeping-keping.')
    RETURNING id INTO k_851_kematian;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '私', 'saya', 6, 57, '<radical>pribadi</radikal> <radical>biji-bijian</radikal> Anda dimaksudkan untuk tetap <kanji>pribadi</kanji>! Anda tidak boleh membaginya dengan seluruh kota, itu hanya untuk Anda.

Kanji ini juga berarti <kanji>Saya</kanji>. Mengapa? Karena apa yang lebih pribadi darimu? Maksudku, aku! Pada dasarnya, beberapa hal hanyalah urusan Anda (saya) dan hal-hal itu harus bersifat pribadi.', 'Anda memasuki zona tersebut, memikirkan tentang diri Anda sendiri (<kanji>Saya</kanji>) dan betapa Anda sangat menyukai hal-hal yang <kanji>pribadi</kanji> dan hanya milik Anda, ketika Anda menyadari ada <reading>shee</reading>p (し) di dalam kantong gandum ini. Dan itu memakan semua biji-bijian pribadi Anda. TIDAK!')
    RETURNING id INTO k_923_saya;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '取', 'mengambil', 6, 58, 'Ada <radical>telinga</radical> yang hanya duduk di <radical>bangku</radical>. Tidak ada yang melihat, jadi <kanji>ambil</kanji> itu.', 'Anda adalah tipe orang yang suka <vocabulary>mengambil</vocabulary> sesuatu. “Hal apa?” kamu bertanya. Jari kaki kecil (と). Karena itu tidak menyeramkan.')
    RETURNING id INTO k_966_mengambil;

  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_607_mengubah, 'Mengubah', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_607_mengubah, 'Mengubah', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_608_bumi, 'Bumi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_608_bumi, 'Tanah', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_608_bumi, 'Tanah', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_609_keduanya, 'Keduanya', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_610_semua, 'Semua', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_610_semua, 'Utuh', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_611_di_sana, 'Di sana', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_611_di_sana, 'Menghadapi', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_612_santai, 'Santai', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_612_santai, 'Murah', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_613_negara, 'Negara', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_613_negara, 'Propinsi', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_613_negara, 'Daerah', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_614_musik, 'Musik', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_614_musik, 'Membengkokkan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_615_memiliki, 'Memiliki', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_617_kematian, 'Kematian', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_618_domba, 'Domba', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_619_darah, 'Darah', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_621_negara, 'Negara', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_623_adik, 'Adik', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_623_adik, 'Adik perempuan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_624_kakak, 'Kakak', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_624_kakak, 'Kakak', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_624_kakak, 'Kakak Perempuan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_625_toko, 'Toko', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_625_toko, 'Toko', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_627_timur, 'Timur', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_628_berjalan, 'Berjalan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_631_tahu, 'Tahu', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_632_panjang, 'Panjang', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_632_panjang, 'Pemimpin', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_633_depan, 'Depan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_633_depan, 'Sebelum', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_635_ruang, 'Ruang', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_636_di_belakang, 'Di belakang', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_636_di_belakang, 'Setelah', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_636_di_belakang, 'Kembali', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_636_di_belakang, 'Nanti', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_637_memikirkan, 'Memikirkan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_637_memikirkan, 'Pikiran', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_638_bintang, 'Bintang', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_639_hidup, 'Hidup', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_640_laut, 'Laut', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_640_laut, 'Laut', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_641_titik, 'Titik', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_642_sains, 'Sains', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_642_sains, 'Kursus', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_642_sains, 'Departemen', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_643_teh, 'Teh', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_644_makan, 'Makan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_644_makan, 'Makanan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_645_leher, 'Leher', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_660_rumah, 'Rumah', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_660_rumah, 'Rumah', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_851_kematian, 'Kematian', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_851_kematian, 'Almarhum', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_923_saya, 'SAYA', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_923_saya, 'Pribadi', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_966_mengambil, 'Mengambil', true, true);

  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_607_mengubah, 'か', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_607_mengubah, 'け', 'onyomi', false, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_607_mengubah, 'ば', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_608_bumi, 'ち', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_608_bumi, 'じ', 'onyomi', false, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_609_keduanya, 'りょう', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_610_semua, 'ぜん', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_610_semua, 'すべ', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_610_semua, 'まった', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_611_di_sana, 'こう', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_611_di_sana, 'む', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_611_di_sana, 'なた', 'nanori', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_612_santai, 'あん', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_612_santai, 'やす', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_613_negara, 'しゅう', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_614_musik, 'きょく', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_614_musik, 'ま', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_615_memiliki, 'ゆう', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_615_memiliki, 'う', 'onyomi', false, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_615_memiliki, 'あ', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_617_kematian, 'し', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_617_kematian, 'し', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_618_domba, 'よう', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_618_domba, 'ひつじ', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_619_darah, 'けつ', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_619_darah, 'ち', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_621_negara, 'こく', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_621_negara, 'くに', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_623_adik, 'まい', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_623_adik, 'いもうと', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_624_kakak, 'し', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_624_kakak, 'お', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_624_kakak, 'あね', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_624_kakak, 'ねえ', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_625_toko, 'てん', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_625_toko, 'みせ', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_627_timur, 'ひがし', 'kunyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_627_timur, 'とう', 'onyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_628_berjalan, 'ほ', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_628_berjalan, 'ある', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_628_berjalan, 'あゆ', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_631_tahu, 'し', 'kunyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_631_tahu, 'ち', 'onyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_632_panjang, 'ちょう', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_632_panjang, 'なが', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_632_panjang, 'は', 'nanori', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_633_depan, 'ぜん', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_633_depan, 'まえ', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_635_ruang, 'しつ', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_635_ruang, 'むろ', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_636_di_belakang, 'ご', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_636_di_belakang, 'こう', 'onyomi', false, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_636_di_belakang, 'うし', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_636_di_belakang, 'あと', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_636_di_belakang, 'のち', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_637_memikirkan, 'おも', 'kunyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_637_memikirkan, 'し', 'onyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_638_bintang, 'せい', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_638_bintang, 'ほし', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_639_hidup, 'かつ', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_639_hidup, 'い', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_640_laut, 'かい', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_640_laut, 'うみ', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_641_titik, 'てん', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_641_titik, 'つ', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_642_sains, 'か', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_643_teh, 'ちゃ', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_643_teh, 'さ', 'onyomi', false, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_644_makan, 'しょく', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_644_makan, 'た', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_644_makan, 'く', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_645_leher, 'くび', 'kunyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_645_leher, 'しゅ', 'onyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_660_rumah, 'いえ', 'kunyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_660_rumah, 'や', 'kunyomi', false, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_660_rumah, 'うち', 'kunyomi', false, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_660_rumah, 'か', 'onyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_660_rumah, 'け', 'onyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_851_kematian, 'ぼう', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_851_kematian, 'な', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_923_saya, 'し', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_923_saya, 'わたし', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_966_mengambil, 'と', 'kunyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_966_mengambil, 'しゅ', 'onyomi', false, false);

  -- 3. VOCABULARIES
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '一千', 'seribu', 6, 59, 'Jika Anda memiliki <kanji>satu</kanji> <kanji>seribu</kanji>, Anda memiliki... <vocabulary>seribu</vocabulary>.

Sekadar mengatakan 千 adalah cara paling umum untuk mengatakan 1.000, namun terkadang Anda mungkin menggunakan 一千 untuk menekankan atau memperjelas angka pastinya.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya. Satu-satunya hal yang agak aneh adalah pembacaan 一.ち berubah menjadi っ kecil, sehingga pembacaan kata ini menjadi <reading>いっせん</reading>.', 'Seribu')
    RETURNING id INTO v_2510_seribu;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '元', 'asal', 6, 60, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna. Jika digunakan sebagai prefiks, kata ini memiliki arti terkait dengan <vocabulary>ex-</vocabulary> atau <vocabulary>mantan</vocabulary>.', 'Karena kata ini terdiri dari satu kanji, maka sebaiknya menggunakan bacaan kun''yomi. Saat mempelajari kanji, Anda tidak mempelajari bacaan tersebut, jadi inilah mnemonik untuk membantu Anda dengan kata ini: 

Anda mencoba melacak asal usul seseorang sehingga Anda dapat mempelajari lebih lanjut tentang orang tersebut. Anda akhirnya sampai di sana - itu adalah sebuah kastil. Masalahnya adalah tempat itu dikelilingi oleh <reading>parit</reading> (もと) yang sangat besar dan kamu tidak bisa melewatinya karena jembatan angkatnya sudah terpasang. Rasakan frustrasinya ini. Pikirkan tentang tujuan Anda dan seberapa dekat Anda untuk mencapainya jika bukan karena parit yang buruk ini.', 'Asal, Mantan, Mantan')
    RETURNING id INTO v_2596_asal;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '切れる', 'untuk-dipotong', 6, 61, 'Kata ini terdiri dari kanji dengan hiragana ditempelkan. Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja.

Ini adalah kata kerja intransitif. Artinya tidak mengambil objek secara langsung. Kanji berarti <kanji>memotong</kanji> jadi secara umum ini berarti ada sesuatu yang dipotong. Sesuatu rusak atau patah. Tidak ada objek langsung di sini. Itu sebabnya kata kerja ini berarti <vocabulary>dipotong</vocabulary> atau <vocabulary>menjentikkan</vocabulary>. Arti lain dari kata kerja ini adalah <vocabulary>kedaluwarsa</vocabulary> atau <vocabulary>kehabisan</vocabulary>. Ini bisa berupa berbagai hal seperti paspor Anda, atau batas waktu suatu tugas.', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi. Berikut penyegaran untuk membantu Anda mengingat bagian き dari kata ini: 

Ada yang <vocabulary>snap</vocabulary>ping. Ternyata ada sesuatu di lenganmu. Lengan Anda adalah <reading>木</reading> (き) yang tumbuh dari diri Anda suatu hari nanti. "Apa yang ki ini lakukan di sini?" kamu bertanya. Lalu tiba-tiba <vocabulary>pecah</vocabulary> menjadi dua! "OW OW OW! Ki-ku! Sudah dipotong!!"', 'Untuk Dipotong, Untuk Memotret, Akan Kedaluwarsa, Kehabisan')
    RETURNING id INTO v_2601_untuk_dipotong;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '大文字', 'huruf-besar', 6, 62, 'Anda memiliki <kanji>besar</kanji> <kanji>tulisan</kanji> <kanji>huruf</kanji>. Menurut Anda apa ini? ITU HARUS <vocabulary>HURUF BESAR</vocabulary>, kan? Ups, maaf, caps lock aktif sebentar, itu.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Namun, 大 menggunakan bacaan kun''yomi dan 文 merupakan pengecualian di sini, jadi inilah mnemonik untuk membantu Anda mengingatnya:

Setiap kali Anda melihat <vocabulary>huruf besar</vocabulary>, Anda berteriak "<reading>おお</reading>, <reading>Moe</reading>!" (おおも). Temanmu, Moe, yang mengajarimu huruf-huruf itu sejak awal, jadi ketika kamu mengalami kebuntuan, kamu berteriak padanya untuk datang membantumu. Dan dia selalu melakukannya. Pria yang baik.', 'Huruf Besar, Huruf Kapital, Huruf besar')
    RETURNING id INTO v_2661_huruf_besar;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '耳打ち', 'bisikan-di-telinga', 6, 63, 'Anda merasakan <kanji>telinga</kanji> Anda… <kanji>dipukul</kanji>? Ini adalah perasaan <vocabulary>bisikan di</vocabulary> <vocabulary>telinga</vocabulary> Anda; mungkin sebuah rahasia, atau informasi rahasia lainnya. Apapun itu, hal itu mempunyai dampak, itulah mengapa rasanya seperti sebuah pukulan!

Perhatikan bahwa kata ini lebih sering digunakan dalam tulisan daripada percakapan biasa.', 'Kata ini menggunakan bacaan kun''yomi untuk kedua kanjinya, tapi kamu sudah mengetahui keduanya sekarang, jadi kamu harus bisa membacanya juga!', 'Bisikan Di Telinga, Berbisik di Telinga Seseorang')
    RETURNING id INTO v_2688_bisikan_di_telinga;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '仕方がない', 'tidak-dapat-ditolong', 6, 64, 'Anda telah mempelajari 仕方, yang Anda tahu berarti "metode" atau "cara melakukan". Ketika Anda <em>tidak</em> (itulah bagiannya) mempunyai cara untuk melakukan atau mencapai sesuatu, Anda bisa mengatakan <vocabulary>tidak dapat ditolong</vocabulary>, <vocabulary>tidak ada gunanya</vocabulary>, atau <vocabulary>tidak ada cara lain</vocabulary>. Masuk akal, bukan? Ini adalah ungkapan populer dalam bahasa Jepang, jadi kami yakin Anda akan sering menemukannya!', 'Anda sudah tahu cara membaca ini setelah mempelajari 仕方, jadi sebaiknya Anda segera melakukannya!', 'Tidak dapat ditolong, Tidak ada gunanya, Tidak Ada Jalan Lain')
    RETURNING id INTO v_2717_tidak_dapat_ditolong;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '代用', 'substitusi', 6, 65, '<kanji>pengganti</kanji> <kanji>tugas</kanji> adalah <vocabulary>substitusi</vocabulary>.

Perhatikan bahwa kata ini memiliki kesan yang sedikit formal.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Substitusi')
    RETURNING id INTO v_2722_substitusi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '写る', 'berada-dalam-sebuah-foto', 6, 66, 'Kata ini terdiri dari kanji dengan hiragana ditempelkan. Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanji sendiri berarti <kanji>salinan</kanji>, tapi apa itu salinan? Pada dasarnya itu adalah sebuah foto, itulah sebabnya kata ini berarti <vocabulary>berada di dalam sebuah foto</vocabulary>. 

Dengan kata lain, ini adalah kata yang Anda gunakan saat menunjuk sebuah foto dan berkata, "hei, saya di sini!" Anda tahu artinya "berada di dalam foto" karena setiap kali Anda muncul di foto, Anda melakukan sesuatu <reading>ru</reading>de (る), seperti menjulurkan lidah atau mengacungkan jari kepada seseorang.', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi. Anda telah mempelajarinya dengan kosakata 写す, namun berikut ini penyegaran untuk berjaga-jaga:

Anda akan <vocabulary>digambarkan</vocabulary> di koran. Mengapa? Karena kamu menyebabkan keributan dengan melakukan beatbox secara kasar di depan umum: <reading>うつ</reading>うつうつ. Anda mungkin juga akan muncul di foto orang-orang di media sosial. Sayang sekali foto-foto itu tidak mampu menyampaikan irama phat yang Anda うつうつうつ ke gendang telinga semua orang.', 'Berada Dalam Sebuah Foto, Untuk Muncul Dalam Sebuah Foto')
    RETURNING id INTO v_2724_berada_dalam_sebuah_foto;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '行う', 'untuk-melakukan-sesuatu', 6, 67, 'Arti kata ini cukup aneh, tidak ada hubungannya dengan arti kanji yang Anda pelajari. Kata ini berarti <vocabulary>melaksanakan sesuatu</vocabulary>. Mungkin Anda bisa menganggapnya seperti seseorang berkata "<reading>Kamu</reading> (う) <kanji>pergi</kanji> lakukan tugas itu!" untuk membuat diri Anda <vocabulary>melaksanakan</vocabulary> tugas tersebut. Apa pun yang Anda lakukan, ketahuilah bahwa ini adalah kata pengecualian yang aneh, jadi Anda mungkin harus bekerja ekstra untuk mengingatnya.', 'Pembacaannya juga merupakan pengecualian yang aneh. Anda harus mengingat bagian おこな. Mungkin mnemonik ini bisa membantu: 

Anda mempunyai <vocabulary>untuk melaksanakan</vocabulary> suatu tugas tetapi tidak tahu caranya. “<reading>Oh</reading>, <reading>Cona</reading>n!” (おこな) kamu berteriak. Anda selalu berteriak "Oh, Conan!" ketika harus melakukan sesuatu yang berat, karena memanggil semangat Detektif Conan. Dia jenius, jadi rohnya bisa membantumu dalam hal apa pun. Bahkan ulasan WaniKani Anda. Silakan dan coba sekarang. Berteriak "Oh, Conan!" Apakah kamu melakukannya? Bagus. Sekarang lakukan tinjauan tersebut!', 'Untuk Melakukan Sesuatu, Untuk Melakukan Sesuatu')
    RETURNING id INTO v_2776_untuk_melakukan_sesuatu;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '文化', 'budaya', 6, 68, '<kanji>Menulis</kanji> telah <kanji>mengubah</kanji>seluruh <vocabulary>budaya</vocabulary> kita. Faktanya, ketika seseorang membaca sebuah tulisan yang bagus, hal itu akan mengubah dirinya dan mengubah budayanya juga. Tulisan apa yang begitu mengubah Anda hingga mengubah budaya dan cara Anda bertindak?', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Karena 文 mempunyai dua bacaan on''yomi, berikut adalah mnemonik untuk membantu Anda mengingat mana yang harus digunakan:

Dalam <vocabulary>budaya</vocabulary> Anda, semua orang mengendarai <reading>bun</reading> <reading>car</reading> (ぶんか). Memang, mobil sanggul adalah puncak budaya. Dan karena terbuat dari roti, bahayanya tidak terlalu besar.', 'Budaya')
    RETURNING id INTO v_2846_budaya;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '地下', 'bawah-tanah', 6, 69, '<kanji>Di bawah</kanji> <kanji>tanah</kanji> adalah <vocabulary>bawah tanah</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Bawah tanah, Ruang bawah tanah, Gudang di bawah tanah')
    RETURNING id INTO v_2848_bawah_tanah;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '土地', 'tanah', 6, 70, '<kanji>tanah</kanji> dari <kanji>bumi</kanji> adalah bagian bumi yang terdiri dari <vocabulary>tanah</vocabulary>.', 'Bacaannya adalah bacaan on''yomi, tetapi 土 diubah menjadi と karena alasan tertentu. Ingatlah bahwa tanah tempat Anda berdiri terbuat dari... jutaan jari kaki. sial.', 'Tanah')
    RETURNING id INTO v_2849_tanah;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '地図', 'peta', 6, 71, '<kanji>diagram</kanji> dari <kanji>bumi</kanji>. Apa lagi selain <vocabulary>peta</vocabulary>?', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Peta')
    RETURNING id INTO v_2850_peta;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '両手', 'kedua-tangan', 6, 72, 'Jangan gunakan satu tangan ketika Anda bisa menggunakan <vocabulary>kedua tangan</vocabulary>. Ini hanyalah <kanji>keduanya</kanji> ditambah <kanji>tangan</kanji> yang disatukan. Bisa juga berarti <vocabulary>kedua lengan</vocabulary>.', 'Kata ini menggunakan bacaan yang Anda pelajari dengan kedua kanji. Tidak masalah bagi master kanji seperti Anda.', 'Kedua Tangan, Kedua Lengan')
    RETURNING id INTO v_2851_kedua_tangan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '両日', 'kedua-hari', 6, 73, 'Kanji tidak cocok bersama-sama lebih baik dari ini. <kanji>Keduanya</kanji> ditambah <kanji>hari</kanji> sama dengan <vocabulary>kedua hari</vocabulary>.

Ini adalah kata yang sedikit formal, Anda akan mendengar orang-orang penting mengatakannya lebih dari teman Anda.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Karena 日 mempunyai dua pembacaan on''yomi, berikut adalah mnemonik untuk membantu Anda mengingat mana yang harus digunakan:

Pada <vocabulary>kedua hari</vocabulary> liburan Anda, Anda mendapatkan dua perahu untuk <reading>mendayung</reading>! <read>Wah, dua</reading> (りょうじつ) perahu sekaligus? Cobalah untuk tidak jatuh!', 'Kedua Hari')
    RETURNING id INTO v_2852_kedua_hari;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '両方', 'keduanya', 6, 74, 'Di sini Anda memiliki <kanji>keduanya</kanji> <kanji>arah</kanji> / <kanji>jalan</kanji>. Setiap kali Anda harus memilih di antara sesuatu, rasanya seperti harus memilih di antara dua cara. Itu sebabnya kata ini hanyalah <vocabulary>keduanya</vocabulary>. 

Dekat dengan kanji juga memiliki arti <vocabulary>kedua sisi</vocabulary>. Pelajari salah satu dari 両方, keduanya sangat mirip.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Keduanya, Kedua Sisi, Kedua Cara')
    RETURNING id INTO v_2853_keduanya;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '全て', 'semua', 6, 75, 'Ini memiliki sedikit hiragana yang melekat padanya tetapi tidak ada yang menunjukkan bahwa itu adalah kata kerja atau kata sifat. Artinya, Anda dapat berasumsi bahwa kata ini memiliki arti yang sama dengan kanji induknya.', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi. Anda tidak belajar membaca dengan kanji ini, jadi inilah mnemonik untuk membantu Anda: 

Anda ingin mengingat <vocabulary>segala sesuatu</vocabulary> tentang perjalanan Anda, jadi Anda membeli setiap <reading>souve</reading>nir (すべ) yang tersedia di seluruh toko untuk memastikan Anda memiliki semua kenang-kenangan yang ada.', 'Semua, Seluruh, Semuanya')
    RETURNING id INTO v_2854_semua;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '全力', 'upaya-penuh', 6, 76, 'Saat Anda mengerahkan <kanji>segala</kanji> <kanji>kekuatan</kanji> Anda ke dalam sesuatu, Anda mengerahkan <kosakata>usaha penuh</vocabulary> Anda ke dalamnya. Semoga itu juga yang Anda masukkan ke dalam pembelajaran kanji Anda!', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Karena 力 memiliki dua pembacaan on''yomi, berikut adalah mnemonik untuk membantu Anda mengingat mana yang akan digunakan:

Dengan <vocabulary>usaha penuh</vocabulary> Anda, Anda mampu menghasilkan <reading>Zen</reading> <reading>lock</reading> (ぜんりょく). Itu adalah kunci yang dipenuhi dengan kekuatan Zen, artinya tidak ada seorang pun dan tidak ada yang dapat memecahkannya. Itu adalah satu-satunya kunci yang mengatur semuanya.', 'Upaya Penuh, Setiap Upaya, Upaya Terbaik, Kekuatan Penuh')
    RETURNING id INTO v_2855_upaya_penuh;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '全日本', 'seluruh-jepang', 6, 77, 'Anda tahu 日本 berarti "Jepang". Jadi, sekarang Anda sudah menambahkan kanji untuk <kanji>semua</kanji> ke dalamnya, sehingga menjadi kata <vocabulary>Seluruh Jepang</vocabulary> (seperti dalam "All Japan Railways" atau semacamnya).', 'Anda tahu bacaan 日本. Sekarang tambahkan saja bacaan on''yomi dari 全 dan Anda seharusnya bisa membaca kata ini.', 'Seluruh Jepang, Seluruh Jepang')
    RETURNING id INTO v_2856_seluruh_jepang;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '安全', 'keamanan', 6, 78, 'Ketika Anda <kanji>semua</kanji> <kanji>santai</kanji>, Anda akhirnya <vocabulary>aman</vocabulary> dan dalam <vocabulary>safe</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Keamanan, Aman')
    RETURNING id INTO v_2857_keamanan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '方向', 'arah', 6, 79, '<kanji>arah</kanji> <kanji>di sana</kanji> di sana tetap saja <vocabulary>arah</vocabulary> dari sesuatu, meskipun cara yang rumit untuk mengatakannya, menurutku. Arah ini adalah "ke arah mana dia pergi?" semacam arah.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Arah')
    RETURNING id INTO v_2858_arah;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '安い', 'murah', 6, 80, 'Ini adalah kanji tunggal dengan い di akhir, artinya Anda tahu itu mungkin kata sifat. Salah satu arti dari 安 adalah <kanji>murah</kanji>, jadi ini hanya sebagai kata sifat, <vocabulary>cheap</vocabulary>. Saatnya pergi ke toko 100円 dan membeli beberapa barang, oke?', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi. Anda tidak belajar membaca dengan kanji ini, jadi inilah mnemonik untuk membantu Anda: 

"Apakah kamu ingin item ini dengan harga <vocabulary>murah</vocabulary>?" 

"<reading>YAASS</reading> (やす), kumohon!"', 'Murah, Murah')
    RETURNING id INTO v_2859_murah;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '安心', 'lega', 6, 81, 'Ketika <kanji>hati</kanji> Anda <kanji>rileks</kanji>, bagaimana perasaan Anda? Bagaimana jika hal ini terjadi setelah sesuatu yang mengejutkan terjadi? Anda akan merasakan <vocabulary>lega</vocabulary> atau <vocabulary>ketenangan pikiran</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Lega, Ketenangan Pikiran')
    RETURNING id INTO v_2860_lega;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '不安', 'rasa-gelisah', 6, 82, 'Saat Anda <kanji>tidak</kanji> <kanji>santai</kanji>, apa yang Anda rasakan? <vocabulary>Kegelisahan</vocabulary> adalah apa yang Anda rasakan.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Rasa gelisah, Kecemasan, Kegelisahan')
    RETURNING id INTO v_2861_rasa_gelisah;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '平安', 'perdamaian', 6, 83, 'Ada yang <kanji>datar</kanji> dan <kanji>santai</kanji>. Itu kamu. Kata-kata apa yang menggambarkan hal itu? Bagi saya, itu adalah <vocabulary>perdamaian</vocabulary>. Bayangkan saja sesuatu yang datar dan santai, seperti padang rumput dengan orang-orang bahagia di dalamnya. <vocabulary>damai</vocabulary> sekali!

Ini adalah cara Anda menulis periode <vocabulary>Heian</vocabulary> dalam sejarah Jepang, yang mungkin merupakan tempat di mana Anda paling sering melihat kata ini.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Perdamaian, Tenang, Heian')
    RETURNING id INTO v_2862_perdamaian;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '州', 'negara', 6, 84, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.', 'Bacaannya adalah bacaan on''yomi yang dipelajari dengan kanji, mungkin karena biasanya ditambahkan pada hal lain, seperti nama negara. Contoh: カリフォルニア州, ニューヨーク州, dll.', 'Negara, Propinsi, Daerah')
    RETURNING id INTO v_2863_negara;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '九州', 'kyuushuu', 6, 85, '<kanji>sembilan</kanji> <kanji>status</kanji>. Ini mengacu pada bagian Jepang dari masa lalu yang mungkin terdiri dari sembilan negara bagian. Sekarang hanya ada satu pulau besar, dan pulau itu adalah <vocabulary>Kyuushuu</vocabulary>. Lihatlah peta dan temukan pulau raksasa ini, bagian Jepang yang keren!', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Kyuushuu, Kyushu')
    RETURNING id INTO v_2864_kyuushuu;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '本州', 'honshuu', 6, 86, 'Anda memiliki <kanji>asal</kanji> <kanji>negara</kanji> Anda. Untuk Jepang (karena ini adalah kata dalam bahasa Jepang), itu akan menjadi pulau utama, pulau besar di tengahnya: <vocabulary>Honshu</vocabulary>. Anda harus mengetahui sedikit geografi Jepang untuk ini. Lihatlah peta Jepang dan pelajari dengan cepat untuk mengetahui di mana saya bicarakan jika Anda belum mengetahuinya.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Honshuu, Honshu')
    RETURNING id INTO v_2865_honshuu;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '曲', 'lagu', 6, 87, 'Ini hampir mempunyai arti yang sama dengan kanji. Pada dasarnya adalah hal yang sama, meskipun jika hanya mengacu pada <vocabulary>karya musik</vocabulary> tertentu (alias <vocabulary>tune</vocabulary>).', 'Bacaannya sama dengan yang kamu pelajari dengan kanji juga, jadi kamu harus bisa membacanya.', 'Lagu, Sepotong Musik, Lagu, Melodi')
    RETURNING id INTO v_2866_lagu;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '名曲', 'musik-terkenal', 6, 88, '<kanji>Terkenal</kanji> <kanji>musik</kanji> adalah <vocabulary>musik terkenal</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Musik Terkenal, Lagu Terkenal, Lagu Terkenal, Mahakarya')
    RETURNING id INTO v_2867_musik_terkenal;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '有る', 'untuk-memiliki', 6, 89, 'Kata ini terdiri dari kanji dengan hiragana ditempelkan. Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanjinya sendiri berarti <kanji>memiliki</kanji>, jadi versi verba ini berarti <vocabulary>to has</vocabulary>. Arti alternatifnya adalah <vocabulary>ada</vocabulary>, karena memiliki sesuatu berarti sesuatu itu ada untuk Anda.

Kanji tidak terlalu sering digunakan untuk kata ini, jadi gunakan saja kana saat Anda menulisnya. Namun terkadang Anda akan melihat kanji yang digunakan, jadi penting untuk bisa mengenalinya!', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi. Anda tidak belajar membaca dengan kanji ini, jadi inilah mnemonik untuk membantu Anda:

<vocabulary>Memiliki</vocabulary> sesuatu itu sangat menyenangkan. Anda mengucapkan "<reading>Ah</reading> (あ)..." dengan puas setiap kali Anda memikirkan semua barang yang Anda miliki. <vocabulary>Untuk ada</vocabulary> juga cukup rapi, tapi jangan terlalu memikirkan hal itu — kita tidak ingin kata "Ah..." yang memuaskan itu berubah menjadi "AHHH" ketakutan eksistensial.', 'Untuk Memiliki, Untuk Ada')
    RETURNING id INTO v_2868_untuk_memiliki;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '有名', 'terkenal', 6, 90, 'Ketika Anda <kanji>memiliki <kanji>nama</kanji> (yang dikenal orang) atau Anda <kanji>memiliki</kanji> <kanji>terkenal</kanji>, Anda mungkin adalah seseorang yang <vocabulary>terkenal</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Terkenal')
    RETURNING id INTO v_2869_terkenal;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '死ぬ', 'untuk-mati', 6, 91, 'Kata ini terdiri dari kanji dengan hiragana ditempelkan. Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanjinya sendiri berarti <kanji>kematian</kanji>, jadi versi kata kerjanya adalah <vocabulary>to die</vocabulary>.', 'Bacaannya sama dengan yang Anda pelajari dengan kanji.', 'Untuk Mati')
    RETURNING id INTO v_2874_untuk_mati;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '死体', 'mayat', 6, 92, 'Kanji untuk <kanji>kematian</kanji> dan <kanji>tubuh</kanji> digabungkan menjadi <vocabulary>mayat</vocabulary>. Semoga Anda tidak terlalu sering menggunakan atau melihat vocab ini.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Mayat, Mayat, Mayat')
    RETURNING id INTO v_2875_mayat;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '死亡', 'kematian', 6, 93, '<kanji>Kematian</kanji> dan <kanji>meninggal</kanji>. Itu banyak sekali kematian. Inilah <vocabulary>kematian</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Kematian, Kematian')
    RETURNING id INTO v_2876_kematian;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '羊', 'domba', 6, 94, 'Kanji dan kata-katanya sama persis. Artinya, keduanya juga memiliki arti yang sama — <vocabulary>domba</vocabulary>!

羊 juga bisa berarti <vocabulary>ram</vocabulary> dalam beberapa konteks. Bagaimanapun, seekor domba jantan hanyalah seekor domba jantan.', 'Karena kata ini terdiri dari satu kanji, maka sebaiknya menggunakan bacaan kun''yomi. Saat mempelajari kanji, Anda tidak mempelajari bacaan tersebut, jadi inilah mnemonik untuk membantu Anda dengan kata ini: 

Bayangkan <vocabulary>domba</vocabulary> berkelahi dengan Yesus. Hal pertama yang dilakukannya adalah <reading>memukul perut Yesus (ひつじ) dengan tinjunya, lalu memukul Yesus lagi dengan tanduknya. Coba bayangkan hal ini terjadi, dengan seorang penyiar yang mengambil keputusan juga.', 'Domba, Rama')
    RETURNING id INTO v_2877_domba;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '羊毛', 'wol', 6, 95, '<kanji>bulu</kanji> <kanji>domba</kanji> adalah <vocabulary>wol</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Wol')
    RETURNING id INTO v_2878_wol;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '血', 'darah', 6, 96, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.', 'Karena kata ini terdiri dari satu kanji, maka sebaiknya menggunakan bacaan kun''yomi. Saat mempelajari kanji, Anda tidak mempelajari bacaan tersebut, jadi inilah mnemonik untuk membantu Anda dengan kata ini: 

Anda melukai diri sendiri dan ada <vocabulary>darah</vocabulary> di mana-mana. Anda perlu menghentikan pendarahan dengan sesuatu, tetapi satu-satunya yang ada di dekatnya hanyalah sebongkah <reading>chee</reading>se. Anda mengambil keju dan memasukkannya ke dalam luka Anda, tetapi darah keluar dari lubang tersebut (itu keju Swiss, blargh!). Bayangkan ini dengan sangat detail agar dapat mengingatnya dengan baik.', 'Darah')
    RETURNING id INTO v_2879_darah;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '出血', 'perdarahan', 6, 97, 'Jika yang <kanji>keluar</kanji>adalah <kanji>darah</kanji>, kemungkinan besar Anda <vocabulary>berdarah</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya. 

Perhatikan bahwa しゅつ dari 出 disingkat menjadi しゅっ. Itu kecil つ di sana, bukan yang besar.', 'Perdarahan, Berdarah')
    RETURNING id INTO v_2880_perdarahan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '国', 'negara', 6, 98, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.', 'Karena kata ini terdiri dari satu kanji, maka sebaiknya menggunakan bacaan kun''yomi. Saat mempelajari kanji, Anda tidak mempelajari bacaan tersebut, jadi inilah mnemonik untuk membantu Anda dengan kata ini: 

Ceritakan tentang <vocabulary>negara</vocabulary> Anda. Sekarang bayangkan semua orang di negara Anda memiliki <reading>coo</reading>l <reading>lutut</reading> (くに). Itu karena aturan berpakaian nasional adalah celana pendek, sehingga lutut semua orang terasa dingin. Itu sebabnya lutut mereka dingin. Anda juga bisa membayangkan lutut keren dalam arti lutut trendi. Menurut Anda, apa yang membuat lutut terasa sejuk?', 'Negara, Bangsa')
    RETURNING id INTO v_2881_negara;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '中国', 'cina', 6, 99, '<kanji>tengah</kanji> <kanji>negara</kanji>... siapakah itu? Mari kita pikirkan tentang hal ini. Siapa yang menemukan kanji dan karena itu mungkin mengira itu adalah dunia tengah? Siapakah negara besar yang menguasai sebagian besar Asia? Itu tidak lain adalah <vocabulary>China</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya. Pastikan Anda memperhatikan rendaku.', 'Cina')
    RETURNING id INTO v_2882_cina;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '天国', 'surga', 6, 100, 'Ini adalah <kanji>surga</kanji> <kanji>negara</kanji>. Dimana itu? Mungkin hanya di <vocabulary>surga</vocabulary> atau <vocabulary>surga</vocabulary>.

天国 adalah istilah umum untuk surga. Tergantung pada konteksnya, kata ini juga bisa secara kiasan merujuk pada tempat mana pun yang terasa surgawi.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya. Huruf 国 diubah menjadi bacaan ごく karena rendaku. Bahkan surga pun berubah sedikit.', 'Surga, Surga')
    RETURNING id INTO v_2883_surga;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '全国', 'nasional', 6, 101, 'Ketika sesuatu melibatkan <kanji>semua</kanji> <kanji>negara</kanji> Anda tahu bahwa itu adalah <vocabulary>nasional</vocabulary> atau <vocabulary>nasional</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Nasional, Nasional, Di seluruh negeri')
    RETURNING id INTO v_2884_nasional;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '四国', 'shikoku', 6, 102, '<kanji>empat</kanji> <kanji>negara</kanji> adalah bagian lain dari Jepang. Cukup bagus juga. Lihat di peta dan coba temukan. Jadi arti kata ini juga bacaannya, yang harusnya bisa kamu pahami karena semuanya on''yomi: <vocabulary>Shikoku</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda sudah mempelajarinya, jadi Anda seharusnya bisa membacanya sendiri!', 'Shikoku')
    RETURNING id INTO v_2885_shikoku;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '外国', 'negara-asing', 6, 103, '<kanji>di luar</kanji> <kanji>negara</kanji> adalah negara yang berada di luar negara Anda sendiri. Yaitu <vocabulary>negara asing</vocabulary>, <vocabulary>negara lain</vocabulary>, atau <vocabulary>luar negeri</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Negara Asing, Negara Lain, Luar negeri')
    RETURNING id INTO v_2886_negara_asing;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '外国人', 'orang-asing', 6, 104, 'Anda tahu 外人 kata yang berarti "orang asing", tetapi kata tersebut agak informal dan bisa terkesan kasar. Versi kata yang lebih bagus dan lebih tepat secara politis adalah versi di atas. <kanji>di luar</kanji> <kanji>negara</kanji> <kanji>orang</kanji>. Untuk membedakannya dengan "orang asing", kami juga akan menggunakan versi bahasa Inggris yang lebih sopan dari kata ini (seperti dalam bahasa Jepang): <vocabulary>Foreign Person</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Karena 人 memiliki dua bacaan on''yomi, berikut adalah mnemonik untuk membantu Anda mengingat mana yang harus digunakan:

Ingat cara mengenali <vocabulary>orang asing</vocabulary>? Benar sekali, mereka akan mengenakan <reading>jean</reading>s (じん)!', 'Orang Asing, Orang asing')
    RETURNING id INTO v_2887_orang_asing;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '米国', 'amerika-serikat', 6, 105, '<kanji>Beras</kanji> <kanji>negara</kanji> adalah <vocabulary>Amerika Serikat</vocabulary>, atau dikenal sebagai <vocabulary>Amerika</vocabulary>. Mungkin mereka menyebutnya demikian karena banyaknya dataran di tengah negara? Anda bisa menanam banyak padi di luar sana.

米国 adalah istilah tertulis yang lebih formal untuk <vocabulary>USA</vocabulary>. Anda bisa melihatnya di artikel berita dan dokumen resmi, tapi dalam percakapan sehari-hari orang biasanya mengucapkan アメリカ.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Amerika Serikat, Amerika, Amerika Serikat')
    RETURNING id INTO v_2888_amerika_serikat;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '姉妹', 'saudara-perempuan', 6, 106, '<kanji>kakak perempuan</kanji>mu dan <kanji>adik perempuan</kanji>mu. Ini adalah <vocabulary>saudara perempuan</vocabulary> Anda.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'saudara perempuan')
    RETURNING id INTO v_2891_saudara_perempuan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '妹', 'adik', 6, 107, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.', 'Karena kata ini terdiri dari satu kanji, maka sebaiknya menggunakan bacaan kun''yomi. Saat mempelajari kanji, Anda tidak mempelajari bacaan tersebut, jadi inilah mnemonik untuk membantu Anda dengan kata ini: 

<vocabulary>adik</vocabulary>mu sangat menyukai <reading>emote</reading> (いもうと). Carilah kata ini jika Anda bukan seorang gadis remaja. Bayangkan saja dia mengirimi Anda ini di ponsel Anda berulang kali. Kamu bilang ke adik perempuanmu: "HEI, BERHENTI KIRIM EMOTES AKU."', 'Adik, Adik perempuan')
    RETURNING id INTO v_2892_adik;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', 'お姉さん', 'kakak', 6, 108, 'Tanda お membuat kata tersebut lebih sopan. Kamu mengangkat gelar "<vocabulary>kakak perempuan</vocabulary>" karena kamu adalah adik yang baik. Kalau tidak, arti kata ini sama dengan kanji - hanya perasaannya saja yang berbeda. Anda juga dapat menggunakan kata ini untuk merujuk pada wanita berpenampilan muda yang tidak Anda kenal, seperti dalam "Permisi <vocabulary>miss</vocabulary>!"', 'Bacaannya juga berbeda. Ada beberapa hiragana yang melekat padanya, yang merupakan petunjuk bahwa ini menggunakan pembacaan kun''yomi. Mari gunakan mnemonik untuk mempelajari bacaan itu. 

Bayangkan <vocabulary>kakak perempuan</vocabulary> Anda (meskipun Anda tidak memilikinya). Dia, untuk beberapa alasan, adalah seekor kuda. Bayangkan mengelusnya, memberinya wortel, dan melakukan hal-hal lain yang berhubungan dengan kuda bersamanya. Apa kata kuda? Mereka mengatakan <reading>nehhhh</reading> (ねえ).', 'Kakak, Merindukan')
    RETURNING id INTO v_2893_kakak;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '店', 'toko', 6, 109, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.', 'Karena kata ini terdiri dari satu kanji, maka sebaiknya menggunakan bacaan kun''yomi. Saat mempelajari kanji, Anda tidak mempelajari bacaan tersebut, jadi inilah mnemonik untuk membantu Anda dengan kata ini: 

Pikirkan <vocabulary>toko</vocabulary> favorit Anda. Oke, sekarang bayangkan diri Anda pergi ke sana. Ketika Anda tiba, seluruh toko benar-benar <reading>missi</reading>ng (みせ). Rasakan keterkejutan dan kekagumannya. Seolah-olah diambil dan dibiarkan semalaman. Tidak ada bangunan, tidak ada apa pun. Hilang begitu saja.', 'Toko, Toko')
    RETURNING id INTO v_2894_toko;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '歩く', 'berjalan', 6, 110, 'Kata ini terdiri dari kanji dengan hiragana ditempelkan. Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanjinya sendiri berarti <kanji>berjalan</kanji> sehingga versi kata kerjanya berarti <vocabulary>berjalan</vocabulary>.', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi. Anda tidak belajar membaca dengan kanji ini, jadi inilah mnemonik untuk membantu Anda: 

Anda harus mengingat bagian ある. Bayangkan diri Anda <vocabulary>berjalan-jalan</vocabulary> di luar. Tapi, saat Anda berjalan, Anda berjalan seperti bajak laut. Anda memiliki kaki pasak, burung beo, dan kail. Terakhir, ucapkan "<reading>arrrrr</reading>" (ある). Silakan ucapkan dengan lantang sambil berjalan di sekitar kamar Anda seperti bajak laut. Ini akan membantu.', 'Berjalan')
    RETURNING id INTO v_2901_berjalan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '長い', 'panjang', 6, 111, 'Ini adalah kanji tunggal dengan い di akhir, artinya Anda tahu itu mungkin kata sifat. Apa bentuk kata sifat dari <kanji>panjang</kanji>? Katanya juga <vocabulary>panjang</vocabulary>.', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi. Anda tidak belajar membaca dengan kanji ini, jadi inilah mnemonik untuk membantu Anda: 

Anda memiliki sesuatu yang sangat panjang. Ini adalah rambut gila yang tumbuh dari ujung hidung Anda. Anda tidak terlalu peduli apakah itu tetap ada atau hilang, tetapi Anda terlalu malas untuk memotongnya. Namun, orang tuamu terus berusaha <read>mengomel</reading> (なが) kamu untuk memangkasnya. Bayangkan proses ini terjadi dan merasa kesal karenanya. Sungguh menjengkelkan.', 'Panjang')
    RETURNING id INTO v_2906_panjang;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '社長', 'presiden-perusahaan', 6, 112, '<kanji>perusahaan</kanji> <kanji>pemimpin</kanji> adalah <vocabulary>presiden perusahaan</vocabulary>. Pastikan untuk menyapa 社長 Anda dengan ucapan selamat pagi yang hangat saat mereka masuk!', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Presiden Perusahaan, Presiden Sebuah Perusahaan')
    RETURNING id INTO v_2907_presiden_perusahaan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '前', 'depan', 6, 113, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.', 'Karena kata ini terdiri dari satu kanji, maka sebaiknya menggunakan bacaan kun''yomi. Saat mempelajari kanji, Anda tidak mempelajari bacaan tersebut, jadi inilah mnemonik untuk membantu Anda dengan kata ini: 

Apa yang <vocabulary>depan</vocabulary> dari Anda? Pikirkan tentang hal ini. Jadikan itu sesuatu yang konyol. Sekarang lihatlah tag yang ada di sana. Milik siapa benda ini? Oh, tunggu, itu adalah benda <read>saya</reading> (まえ) yang ada di depan saya. Katakan itu dengan lantang untuk ingatan yang lebih baik.', 'Depan, Sebelum')
    RETURNING id INTO v_2908_depan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '午前', 'pagi', 6, 114, 'Anda memiliki sesuatu yang <kanji>sebelum</kanji> (atau di <kanji>depan</kanji>) <kanji>siang</kanji>. Apa sebelum tengah hari? Yaitu <vocabulary>AM</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'PAGI, Pagi, PAGI.')
    RETURNING id INTO v_2909_pagi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '後ろ', 'di-belakang', 6, 115, 'Hiragana yang melekat pada kata ini tidak menunjukkan bahwa itu adalah kata kerja atau kata sifat, jadi kita dapat berasumsi bahwa itu adalah kata benda. Meskipun 後で (Anda mungkin atau mungkin belum pernah melihat kata ini) berarti "setelah", yang satu ini berarti semua arti lain yang Anda pelajari dengan kanji: <vocabulary>di belakang</vocabulary>, <vocabulary>back</vocabulary>, dan <vocabulary>rear</vocabulary>. Pikirkan ろ sebagai petunjuk. Ini seperti mengatakan Anda berada di "jalan raya" (ろ) dan Anda mengemudi begitu cepat sehingga Anda meninggalkan segalanya "di belakang".', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi. Anda tidak belajar membaca dengan kanji ini, jadi inilah mnemonik untuk membantu Anda: 

Teruslah berpikir Anda sedang mengemudi di jalan ini. Anda menabrak sesuatu, lalu melihat <vocabulary>di belakang</vocabulary> Anda, dan melihat Anda menabrak seekor sapi. Tahu kata sapi dalam bahasa Jepang? Itu うし, yang juga merupakan bacaan untuk kata ini.', 'Di belakang, Kembali, Belakang')
    RETURNING id INTO v_2911_di_belakang;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '後で', 'setelah', 6, 116, 'Ini berbagi salah satu makna yang Anda pelajari untuk kanji: <vocabulary>after</vocabulary>. Anda dapat membedakan yang ini dari 後ろ (yang mungkin pernah atau belum pernah Anda lihat) berkat tanda で di bagian akhir. Beberapa orang percaya bahwa setelah sesuatu mati (で), ia akan menuju kehidupan setelah kematian.', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi. Anda tidak belajar membaca dengan kanji ini, jadi inilah mnemonik untuk membantu Anda: 

<vocabulary>Setelah</vocabulary>. Semuanya terjadi setelahnya. Itu adalah rantai sebab dan akibat. Satu hal terjadi, dan hal lain terjadi setelahnya. Inilah hidup. Inilah alam semesta. Semuanya setelahnya. Ini adalah siklus <reading>otomatis</reading>matic (あと) yang terus berjalan dan berjalan.', 'Setelah, Setelah itu, Nanti')
    RETURNING id INTO v_2912_setelah;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '午後', 'pm', 6, 117, 'Apa itu <kanji>siang</kanji> <kanji>setelah</kanji>? Yaitu <vocabulary>PM</vocabulary> atau <vocabulary>sore</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'PM, Sore, PM.')
    RETURNING id INTO v_2913_pm;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '思う', 'untuk-berpikir', 6, 118, 'Kata ini terdiri dari kanji dengan hiragana ditempelkan. Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanjinya sendiri berarti <kanji>berpikir</kanji> sehingga versi kata kerjanya adalah <vocabulary>to think</vocabulary>.', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi. Anda telah mempelajarinya dengan kanji ini, namun berikut ini pengingat mnemonik untuk berjaga-jaga: 

Anda harus mengingat bagian おも untuk membaca kata ini. Namun, untuk melakukan hal ini, Anda harus <vocabulary>berpikir</vocabulary> tentang orang itu... hmm... siapa namanya? Dia ada di The Simpsons... dia bartendernya? Menurut saya? <membaca>Oh! Moe</reading> (おも) adalah namanya! Terima kasih. Sekarang saya ingat.

Jika Anda belum tahu Moe dari Simpsons gunakan Moe yang berbeda, mungkin yang dari Three Stooges? Anda harus bisa memikirkannya.', 'Untuk Berpikir')
    RETURNING id INTO v_2914_untuk_berpikir;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '生活', 'kehidupan', 6, 119, 'Ketika Anda memiliki <kanji>kehidupan</kanji> dan <kanji>hidup</kanji> maka itulah <vocabulary>kehidupan</vocabulary> yang sebenarnya. Seperti apa 生活 Anda? Apakah kamu hidup?', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Kehidupan, Mata pencaharian')
    RETURNING id INTO v_2916_kehidupan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '海外', 'luar-negeri', 6, 120, '<kanji>di luar</kanji> <kanji>laut</kanji> adalah suatu tempat <vocabulary>di luar negeri</vocabulary>. Bisa juga <vocabulary>asing</vocabulary> atau <vocabulary>abroad</vocabulary> jika kata-kata tersebut lebih mudah Anda ingat.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Luar negeri, Luar negeri, Luar negeri')
    RETURNING id INTO v_2918_luar_negeri;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '点', 'titik', 6, 121, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna. Untung saja, kata ini sebenarnya juga mencakup sebagian besar arti kata <vocabulary>point</vocabulary> dalam bahasa Inggris! Jadi bisa berarti <vocabulary>score</vocabulary>, <vocabulary>viewpoint</vocabulary>, dan <vocabulary>decimal point</vocabulary>.', 'Bacaan kata ini sama dengan bacaan kanji yang membuatnya.', 'Titik, Skor, Titik Desimal, Sudut pandang')
    RETURNING id INTO v_2919_titik;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '科学', 'sains', 6, 122, '<kanji>studi</kanji> tentang <kanji>sains</kanji> jelas dikenal sebagai <vocabulary>sains</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Sains')
    RETURNING id INTO v_2920_sains;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', 'お茶', 'teh', 6, 123, 'Tanda お membuat kata tersebut lebih sopan. Karena teh sangat penting di Jepang, teh mendapat お. Jika tidak, Anda seharusnya bisa memahami artinya karena sama dengan kanjinya.', 'Bacaannya adalah bacaan on''yomi, sama seperti yang Anda pelajari dengan kanji.', 'Teh')
    RETURNING id INTO v_2921_teh;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '茶色', 'cokelat', 6, 124, 'Apa <kanji>warna</kanji> dari <kanji>teh</kanji>? Anda mungkin mengira warnanya hijau, dengan asumsi itu bahasa Jepang... tapi kata ini berasal dari Tiongkok. Apa warna teh Cina? Cenderung lebih <vocabulary>coklat</vocabulary>. Pikirkan teh Oolong, misalnya.', 'Bacaan kedua kanji tersebut adalah bacaan yang Anda pelajari dengan kanji tersebut, artinya Anda seharusnya sudah bisa membacanya.', 'Cokelat, Warna Coklat, Warna Coklat')
    RETURNING id INTO v_2922_cokelat;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '食べる', 'untuk-makan', 6, 125, 'Kata ini terdiri dari kanji dengan hiragana ditempelkan. Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanjinya sendiri berarti <kanji>makan</kanji> jadi versi kata kerjanya adalah <vocabulary>to eat</vocabulary>.', 'Anda harus mengingat bagian た jika ingin bisa membaca kata ini yang menggunakan bacaan kun''yomi. Pikirkan tentang diri Anda <vocabulary>makan</vocabulary>ing beberapa <reading>ta</reading>cos (た). Bayangkan diri Anda memakannya, rasa daging sapi mentah di mulut Anda (suka atau benci).', 'Untuk makan')
    RETURNING id INTO v_2923_untuk_makan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '首', 'leher', 6, 126, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.', 'Anda mempelajari cara membaca kata ini melalui kanji, jadi Anda seharusnya bisa membaca kata ini dengan baik.', 'Leher')
    RETURNING id INTO v_2924_leher;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '足首', 'pergelangan-kaki', 6, 127, 'Apa <kanji>leher</kanji> dari <kanji>kaki</kanji> Anda? Pikirkan tentang hal ini. Itu adalah <vocabulary>pergelangan kaki</vocabulary> Anda.', 'Kata ini menggunakan bacaan kun''yomi dari kedua kanji tersebut, mungkin karena mengandung bagian tubuh. Anda mengetahui bacaan kun''yomi 足 dari kosakata sebelumnya dan Anda mengetahui bacaan kun''yomi 首 dari mempelajari kanji tersebut. Jadi, kamu harus bisa membaca kanji ini asalkan kamu ingat bahwa itu semua kun''yomi.', 'Pergelangan kaki')
    RETURNING id INTO v_2925_pergelangan_kaki;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '首になる', 'untuk-dipecat', 6, 128, 'Bagian になる berarti "menjadi", jadi secara harafiah artinya "menjadi leher". Kalau dipikir-pikir, ketika sesuatu menjadi leher, itu ada hubungannya dengan kepalamu yang dipenggal (di bagian leher). Namun, dalam masyarakat modern saat ini kita tidak terlalu sering melakukan hal tersebut. Sebaliknya, ini berarti Anda kehilangan pekerjaan alias <vocabulary>dipecat</vocabulary>.', 'Kata ini berisi bacaan yang Anda pelajari dengan kanji. Yang lainnya adalah hiragana.', 'Untuk Dipecat, Untuk Dipecat')
    RETURNING id INTO v_2926_untuk_dipecat;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '家', 'rumah', 6, 129, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.', 'Karena kata ini terdiri dari satu kanji, kemungkinan besar menggunakan bacaan kun''yomi. Anda mempelajari bacaan ini dengan kanji. Namun ada bacaan kedua yang belum Anda pelajari, jadi inilah mnemonik untuk keduanya:

Apa yang Anda lakukan di <vocabulary>rumah</vocabulary> Anda? Anda <read>ea</reading>t <reading>e</reading>ggs (いえ). Anda suka makan telur di <vocabulary>rumah</vocabulary>. Tapi itu harus di 内 (うち), alias bagian dalam rumah Anda. Untuk beberapa alasan Anda hanya bisa makan telur di 内 rumah Anda.

Kedua bacaan tersebut berhubungan dengan rumah dan rumah, tetapi いえ lebih mengacu pada bangunan fisik (rumah) sedangkan うち lebih mengacu pada perasaan pribadi Anda tentang rumah, termasuk keluarga dan rumah tangga Anda.', 'Rumah, Rumah')
    RETURNING id INTO v_2954_rumah;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '四十二', 'empat-puluh-dua', 6, 130, 'Empat puluhan ditambah dua. Itu sama dengan <vocabulary>empat puluh dua</vocabulary>. 

P.S. Tolong jangan panik. "<vocabulary>Jawabannya</vocabulary>" BUKAN merupakan jawaban yang benar untuk ini. Itu hanyalah referensi ke buku terhebat sepanjang masa. Maaf atas kebingungannya dan sekian lama dan terima kasih untuk semua ikannya.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Tetapi! Jangan lupa, 四 menggunakan bacaan kun''yomi, karena bacaan on''yomi terdengar sangat mirip dengan kata "kematian".', 'Empat Puluh Dua, Jawabannya')
    RETURNING id INTO v_3237_empat_puluh_dua;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '亡くなる', 'untuk-meninggal', 6, 131, 'Kata ini terdiri dari kanji dengan hiragana ditempelkan. Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kata ini sebenarnya adalah dua kata yang disatukan. 亡く berarti "meninggal". なる berarti "menjadi". Jadi gabungkan semuanya dan Anda harus <vocabulary>meninggal</vocabulary> atau <vocabulary>menjadi meninggal</vocabulary>. Pada dasarnya ini adalah cara sopan untuk mengatakan sesuatu telah mati (死ぬ).', 'Untuk belajar membaca kanji ini Anda harus mengingat bagian な dari 亡く, meskipun mnemonik kami akan menggunakan semuanya.

Jika Anda akan segera meninggal, Anda mungkin sedang <reading>mengetuk</reading>ing (なく) di pintu kematian.', 'Untuk Meninggal, Menjadi Meninggal, Untuk Mati')
    RETURNING id INTO v_3406_untuk_meninggal;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '小文字', 'huruf-kecil', 6, 132, 'Anda tahu bahwa 文字 berarti "huruf". Jadi, apa itu "huruf kecil"? Itu akan menjadi <vocabulary>huruf kecil</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Namun, 小 menggunakan bacaan kun''yomi dan 文 merupakan pengecualian di sini, jadi inilah mnemonik untuk membantu Anda mengingatnya:

Anda mempelajari huruf kecil dari <reading>子</reading> <reading>Moe</reading> (こも). Benar sekali, setelah Moe mengajarimu semua huruf, putranya 子 Moe mengajarimu huruf kecil. Kerja tim seperti itu.', 'Huruf Kecil, Karakter Huruf Kecil, Huruf kecil')
    RETURNING id INTO v_3411_huruf_kecil;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '冬休み', 'liburan-musim-dingin', 6, 133, '<kanji>musim dingin</kanji> <kanji>istirahat</kanji>! Tunggu, tidak ada yang menyebutnya begitu. Ini adalah <vocabulary>liburan musim dingin</vocabulary> atau <vocabulary>liburan musim dingin</vocabulary>.', 'Bacaannya sama-sama bacaan kun''yomi. Mudah-mudahan Anda sudah mempelajarinya saat mengerjakan kosakata di level sebelumnya sehingga yang perlu Anda lakukan sekarang hanyalah menggabungkan dua kata terpisah menjadi satu kata yang lebih besar. Tolong jangan mengambil liburan musim dingin sampai Anda memahami kata ini.', 'Liburan Musim Dingin, Liburan Musim Dingin, Liburan Musim Dingin')
    RETURNING id INTO v_3415_liburan_musim_dingin;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '出来る', 'untuk-mampu-melakukan', 6, 134, 'Ketika Anda <kanji>keluar</kanji> dan <kanji>datang</kanji>, rupanya itu berarti <vocabulary>dapat melakukan</vocabulary>. Saya menganggapnya seperti Anda meninggalkan suatu lokasi (出) untuk melakukan suatu tugas dan kemudian Anda kembali (来る) kembali setelah Anda melakukannya. Mungkin Anda sedang menunggu di ruang pelatihan seperti seseorang dari Dragonball. Ketika Anda keluar dari ruangan, Anda siap melawan musuh dan menang. Anda berlatih di ruangan itu <vocabulary>untuk dapat melakukan</vocabulary> apa pun yang perlu Anda lakukan, dan hanya keluar dan kembali hidup-hidup karena Anda mampu melakukannya.

Kata kerja ini sangat umum dan memiliki arti yang luas. Bisa juga berarti <vocabulary>to be ready</vocabulary>, misalnya makanan, dan <vocabulary>to be made</vocabulary>, misalnya saat mengatakan sesuatu terbuat dari apa. Biasanya ditulis dalam hiragana, tetapi Anda juga akan melihat versi kanjinya!', 'Pembacaannya agak aneh. Keduanya merupakan bacaan kun''yomi, dimana 出 adalah で dan 来る adalah きる. Ini berbeda dengan bacaan yang awalnya Anda pelajari dengan 来る (くる), jadi berhati-hatilah. Jika kalian bisa mengingatnya dan mengingat bacaan kun''yomi dari vocab sebelumnya, seharusnya kalian juga bisa mempelajari bacaan yang satu ini.', 'Untuk Mampu Melakukan, Untuk Bersiap, Akan Dibuat')
    RETURNING id INTO v_3418_untuk_mampu_melakukan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '方言', 'dialek', 6, 135, '<kanji>cara</kanji> Anda <kanji>mengatakan</kanji> sesuatu adalah <vocabulary>dialect</vocabulary> Anda. Ini adalah keseluruhan "cara" berbicara. 

Anda bahkan dapat menganggap 方 sebagai "arah". Jika Anda pergi cukup jauh ke berbagai arah di suatu negara, Anda akan menemukan dialek regional yang berbeda.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Dialek')
    RETURNING id INTO v_3419_dialek;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '早口', 'pembicara-cepat', 6, 136, 'Jika Anda memiliki <kanji>cepat</kanji> <kanji>mulut</kanji>, Anda mungkin adalah <vocabulary>pembicara yang cepat</vocabulary>, bukan mulut motor?', 'Ingat bagaimana bagian tubuh sering mengubah kata jukugo menjadi bacaan kun''yomi? Itu juga yang terjadi di sini. Kedua bacaan tersebut adalah kun''yomi, jadi yang ini adalah <reading>はやくち</reading>.', 'Pembicara Cepat, Berbicara Cepat, Pembicara Cepat, Berbicara Cepat')
    RETURNING id INTO v_3439_pembicara_cepat;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '足りない', 'tidak-cukup', 6, 137, 'Anda tahu kata 足りる dari Level 4. Kata apa ini? justru sebaliknya (bentuk negatif pada kata kerja adalah ない). Jadi, apa lawan kata dari 足りる (Mencukupkan)? Kebalikannya adalah <vocabulary>tidak cukup</vocabulary> atau <vocabulary>tidak cukup</vocabulary>.', 'Bacaannya sama dengan 足りる (たりる) yang seharusnya Anda lihat di Level 4.', 'Tidak cukup, Tidak memadai, Tidak Cukup')
    RETURNING id INTO v_3440_tidak_cukup;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '年上', 'lebih-tua', 6, 138, 'Jika Anda <kanji>setahun</kanji> <kanji>di atas</kanji> orang lain, Anda <vocabulary>lebih tua</vocabulary> dari orang tersebut.', 'Pembacaan yang satu ini merupakan pengecualian, karena menggunakan bacaan kun''yomi padahal kanji jukugo. Anda sudah mengetahui bacaan kun''yomi yang terpisah dari kosakata tingkat terakhir, namun Anda harus ingat untuk benar-benar menggunakan pengetahuan ini ketika kata ini muncul.', 'Lebih tua')
    RETURNING id INTO v_3441_lebih_tua;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '今年', 'tahun-ini', 6, 139, '<kanji>sekarang</kanji> <kanji>tahun</kanji> adalah tahun berapa? Ini adalah <vocabulary>tahun ini</vocabulary>.', 'Pembacaan 今年 (ことし) agak aneh, apalagi dengan bagian こ. Bayangkan saja bacaan こん yang Anda pelajari untuk 今 telah disingkat menjadi こ di sini, jika itu membantu. Kemudian bagian 年 menggunakan bacaan kun''yomi とし. Ini kombinasi yang aneh, jadi inilah mnemoniknya:

Sasaran <vocabulary>tahun ini</vocabulary> Anda adalah memperlakukan semua orang dengan <reading>sopan</reading> (ことし). Anda akan bersikap baik dan sopan kepada semua orang tahun ini, bahkan di media sosial. Lagi pula, ada terlalu banyak hal negatif di dunia saat ini. Oh ya, tidak diragukan lagi — tahun ini akan menjadi tahun kesopanan.', 'Tahun ini')
    RETURNING id INTO v_3444_tahun_ini;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '年下', 'lebih-muda', 6, 140, 'Jika Anda memiliki seseorang yang <kanji>tahun</kanji> <kanji>di bawah</kanji> Anda, maka orang tersebut <vocabulary>lebih muda</vocabulary> dari Anda.', 'Pembacaan yang satu ini agak aneh. Ini adalah pembacaan kun''yomi untuk kedua kanji tersebut. Anda tahu bacaan kun''yomi sebelumnya, saat Anda mempelajari kosakata 年 dan 下.', 'Lebih muda')
    RETURNING id INTO v_3446_lebih_muda;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '東口', 'pintu-keluar-timur', 6, 141, 'Ingat 北口 dan 西口 dari beberapa level sebelumnya? Ini adalah versi <kanji>timur</kanji>, jadi artinya <vocabulary>pintu keluar timur</vocabulary> atau <vocabulary>pintu masuk timur</vocabulary>.', 'Sama seperti 北口 dan 西口, ini juga menggunakan bacaan kun''yomi. Dan sama seperti sebelumnya, hati-hati dengan rendaku yang berubah くち menjadi ぐち!', 'Pintu Keluar Timur, Pintu Masuk Timur, Gerbang Timur')
    RETURNING id INTO v_3458_pintu_keluar_timur;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '向く', 'untuk-berbalik-ke-arah', 6, 142, 'Anda tahu bahwa kanji berarti <kanji>di sana</kanji>, yang artinya "di sana". Ini adalah versi kata kerja dari "di sana". Meskipun demikian, "ke sana" sebenarnya bukanlah sesuatu yang penting, jadi Anda harus memikirkan apa yang terjadi jika Anda "melihat ke sana". Kata ini berarti <vocabulary>berpaling ke arah</vocabulary> atau <vocabulary>menghadapi</vocabulary>. Anda melihat ke sana, tetapi Anda harus menoleh ke sana untuk melihat ke sana.

Kata ini juga bisa berarti <vocabulary>cocok</vocabulary>, seperti cocok untuk suatu pekerjaan, peran, atau situasi. Lagi pula, Anda beralih ke hal-hal yang paling cocok bagi Anda, bukan?', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi. Anda tidak belajar membaca dengan kanji ini, jadi inilah mnemonik untuk membantu Anda: 

Anda <vocabulary>menghadap</vocabulary> ke arah baru dan melihat ke kejauhan. Ada seekor sapi di luar sana. Ia menghadapmu juga, dan berkata <reading>moo</reading> (む).', 'Untuk Berbalik Ke Arah, Untuk Menghadapi, Menjadi Cocok')
    RETURNING id INTO v_3496_untuk_berbalik_ke_arah;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '東', 'timur', 6, 143, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.', 'Karena kata ini terdiri dari satu kanji, maka sebaiknya menggunakan bacaan kun''yomi. Anda telah mempelajari cara membaca tersebut dengan kanji, namun berikut adalah penyegaran mnemonik untuk berjaga-jaga:

Anda melihat seorang pria berjalan lurus menuju matahari terbit di <kanji>timur</kanji>. Saking terangnya dia tidak bisa melihat apa pun, jadi dia tersandung dan <reading>dia melukai</reading> lututnya di atas batu. Astaga… Tapi dia bangkit kembali, bertekad untuk menuju ke timur, dan, oh tidak, lututnya yang lain terluka! Oke, dia mungkin harus menyerah untuk pergi ke timur.', 'Timur')
    RETURNING id INTO v_3522_timur;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '私', 'saya', 6, 144, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.', 'Jika Anda beruntung, Anda sudah mengetahui bacaan kata yang (sangat) umum ini. Itu adalah kata untuk "Saya", mungkin salah satu hal pertama yang Anda pelajari dalam bahasa Jepang. Bacaannya adalah わたし. Jika Anda belum mengetahuinya, coba pikirkan: "<reading>Apa, し</reading>?" mengacu pada pembacaan kanji yaitu し.', 'SAYA, Aku')
    RETURNING id INTO v_3714_saya;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '私生活', 'kehidupan-pribadi', 6, 145, 'Anda pernah melihat 生活 sebelumnya, kan? Lalu bagaimana dengan "kehidupan" <kanji>I</kanji>? Kehidupan siapa itu? Wah, itulah <vocabulary>kehidupan pribadi</vocabulary> saya sendiri.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Kehidupan Pribadi, Kehidupan Pribadi Seseorang, Kehidupan Pribadi, Kehidupan Pribadi Seseorang')
    RETURNING id INTO v_3715_kehidupan_pribadi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '私立', 'pribadi', 6, 146, '<kanji>Saya</kanji> adalah orang yang menjaga tempat ini <kanji>berdiri</kanji>. Dengan kata lain, ini adalah perusahaan <vocabulary>swasta</vocabulary> — <vocabulary>yang dikelola secara pribadi</vocabulary> dan <vocabulary>dioperasikan secara pribadi</vocabulary> oleh SAYA!

私立 berarti "swasta" dalam artian bisnis, sekolah, atau lembaga lain yang dijalankan oleh badan swasta, bukan oleh pemerintah atau negara.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.

Baik 市立 (kota) maupun 私立 (pribadi) diucapkan sebagai しりつ dan sulit membedakannya saat berbicara. Meski bukan pembacaan resmi, orang terkadang membedakan 市立 dan 私立 dengan mengucapkannya masing-masing sebagai いちりつ dan わたくしりつ.', 'Pribadi, Dijalankan Secara Pribadi, Dioperasikan Secara Pribadi')
    RETURNING id INTO v_3716_pribadi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '取る', 'untuk-mengambil', 6, 147, 'Kata ini terdiri dari kanji dengan hiragana ditempelkan. Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanjinya sendiri berarti <kanji>mengambil</kanji>, jadi versi kata kerjanya adalah <vocabulary>to take Something</vocabulary>.', 'Karena kata ini memiliki okurigana (hiragana yang melekat pada kanji), Anda tahu bahwa kemungkinan besar itu adalah bacaan kun''yomi. Kalian sudah mengetahui bacaan kun''yomi ini, jadi kalian harus bisa membaca kata ini.', 'Untuk Mengambil, Untuk Mengambil Sesuatu, Untuk Mendapatkan Sesuatu')
    RETURNING id INTO v_3817_untuk_mengambil;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '広がる', 'untuk-menyebar', 6, 148, 'Ingat? Ya beginilah, kecuali kata kerjanya. Saat sesuatu melakukan tindakan <kanji>melebar</kanji>, itu berarti <vocabulary>menyebar</vocabulary>, <vocabulary>memperluas</vocabulary>, atau <vocabulary>meregangkan</vocabulary>.

Anda sudah mempelajari 広げる, yang digunakan saat Anda menyebarkan SESUATU. Namun 広がる bersifat intransitif sehingga tidak memerlukan objek langsung. Seperti: Laut terbentang di hadapanmu. Melihat? Tidak ada objek langsung.

Sebenarnya verba yang berakhiran okurigana yang berima dengan ある cenderung intransitif seperti ini. Anda dapat mengingat hal ini karena jika ada sesuatu yang ある, ia hanya ada di sana, ada, tidak bertindak <em>pada</em> hal lain. Itu sebabnya kata kerja yang terdengar seperti itu seringkali juga bersifat intransitif!', 'Bacaannya juga sama dengan 広い, asal kamu tahu, kamu juga tahu bacaan ini.', 'Untuk Menyebar, Untuk Memperluas, Untuk Meregangkan')
    RETURNING id INTO v_4378_untuk_menyebar;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '豚肉', 'babi', 6, 149, '<kanji>daging</kanji> <kanji>babi</kanji> disebut <vocabulary>babi</vocabulary>.', 'Bacaannya adalah yang Anda pelajari dengan kanji.', 'Babi')
    RETURNING id INTO v_4971_babi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '国宝', 'harta-nasional', 6, 150, '<kanji>harta</kanji> suatu <kanji>negara</kanji> adalah <vocabulary>harta nasional</vocabulary> mereka.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Harta Nasional, Nic Cage')
    RETURNING id INTO v_5633_harta_nasional;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '宝くじ', 'lotere', 6, 151, '宝 adalah <kanji>harta</kanji>. くじ adalah lotere. Jadi jika Anda mempunyai lotere harta karun (Anda memenangkan harta jika memenangkan lotre) maka Anda sendiri memiliki <vocabulary>lotere</vocabulary>.', 'Pembacaannya menggunakan kosakata bacaan 宝, たから.', 'Lotere, Lotere Umum, Tiket Lotere')
    RETURNING id INTO v_5846_lotere;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '一歩', 'satu-langkah', 6, 152, 'Jika <kanji>歩</kanji> adalah "berjalan" dan Anda melakukan <kanji>satu</kanji> <kanji>berjalan</kanji>, maka sesungguhnya Anda hanya mengambil <vocabulary>satu langkah</vocabulary>. Jika ada angka sebelum 歩, ini mengacu pada jumlah langkah yang Anda ambil. Yang paling umum adalah yang ini, dan Anda akan melihatnya di urinal ketika mereka dengan ramah meminta Anda untuk mengambil satu langkah maju karena kencing bukanlah permainan dan seseorang harus membersihkannya setelah Anda.', 'Pembacaannya cukup standar dalam kerumitannya.いち disingkat menjadi いっ dan ほ rendakus menjadi ぽ. Selangkah demi selangkah, bukan?', 'Satu Langkah')
    RETURNING id INTO v_7451_satu_langkah;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '三百', 'tiga-ratus', 6, 153, 'Anda memiliki <kanji>tiga</kanji> <kanji>ratusan</kanji>. Apa hasilnya? <vocabulary>Tiga ratus</vocabulary>.', 'Pembacaannya agak aneh, jadi berhati-hatilah. Anda seharusnya sudah mengetahui bacaan on''yomi, tapi ひゃく rendakus hingga びゃく. Pola ini akan berulang dengan 三 + banyak counter kanji yang bisa rendaku, jadi perhatikan pola ini saat Anda membaca bahasa Jepang.', 'Tiga ratus')
    RETURNING id INTO v_7456_tiga_ratus;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '足す', 'untuk-menambahkan-sesuatu', 6, 154, 'Ingat 足りる? Itu berarti "menjadi cukup". Bagaimana Anda bisa membuat sesuatu menjadi cukup? Anda terus menambahkan sesuatu ke tumpukan sampai Anda mencapai titik di mana jumlahnya cukup! Itu sebabnya kata kerja ini adalah <vocabulary>menambahkan sesuatu</vocabulary>, karena Anda terus menambahkan sesuatu sampai Anda 足りる.

Kata kerja ini bersifat transitif, seperti kebanyakan kata kerja yang berakhiran す, itulah sebabnya Anda menambahkan sesuatu. Itu tidak bertambah dengan sendirinya. Mungkin Anda menambahkan terlalu banyak sehingga seseorang mencoba <reading>menuntut</reading> (す) Anda atas tumpukan tupai jahat yang Anda simpan di luar.', 'Bacaannya sama dengan 足りる, jadi jika Anda mengetahuinya, Anda bisa menambahkannya ke dalamnya.', 'Untuk Menambahkan Sesuatu')
    RETURNING id INTO v_7477_untuk_menambahkan_sesuatu;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '車両', 'kendaraan', 6, 155, '<kanji>mobil</kanji> memiliki roda di <kanji>kedua</kanji> sisinya, dan jika digabungkan menjadi <vocabulary>kendaraan</vocabulary>.

車両 adalah kata formal yang sering digunakan dalam konteks resmi atau teknis. Istilah ini tidak hanya mengacu pada gerbong standar tetapi juga <vocabulary>gerbong kereta</vocabulary> dan kendaraan lain yang mengangkut orang atau barang. Anda biasanya akan melihatnya dalam istilah transportasi umum, pada tanda seperti "Kendaraan tidak diperbolehkan", atau dalam klasifikasi SIM dan peraturan lalu lintas.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Kendaraan, Kereta Api')
    RETURNING id INTO v_7482_kendaraan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '早く', 'lebih-awal', 6, 156, 'Ini adalah versi kata keterangan dari kanji <kanji>awal</kanji>. Ini adalah kalimat kecil yang dapat digunakan untuk mengawali kalimat yang mengatakan Anda melakukan sesuatu <vocabulary>awal</vocabulary> atau <vocabulary>dengan cepat</vocabulary>.', 'Karena kamu sudah mengetahui cara membaca kosakata kata 早い, kamu seharusnya bisa membaca kata ini juga.', 'Lebih awal, Segera, Dengan cepat, Cepat')
    RETURNING id INTO v_7524_lebih_awal;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '死', 'kematian', 6, 157, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.', 'Bacaannya sama dengan kanji yang Anda pelajari, artinya Anda tahu bacaannya!', 'Kematian')
    RETURNING id INTO v_7525_kematian;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '姉', 'kakak', 6, 158, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna. Ngomong-ngomong, ini kakak perempuanmu. Bukan milik orang lain.', 'Karena kata ini terdiri dari satu kanji, maka sebaiknya menggunakan bacaan kun''yomi. Anda belum mempelajari bacaan ini, jadi inilah mnemonik untuk membantu Anda mengingat:

Bayangkan <vocabulary>kakak perempuan</vocabulary> Anda (meskipun Anda tidak memilikinya), ulang tahunnya akan segera tiba dan hanya ada satu hal yang dia inginkan dari Anda. <read>Sebuah ne</reading>klace (あね). Dia menginginkan sebuah kalung selama bertahun-tahun dan Anda akhirnya akan memberikannya. Dia akan sangat bahagia.', 'Kakak, Kakak, Kakak Perempuan')
    RETURNING id INTO v_7526_kakak;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '〜室', 'ruang', 6, 159, 'Anda akan melihatnya dilampirkan pada kata lain... seperti "menunggu" atau "tamu". Saat Anda melihat ini, Anda akan mengetahui bahwa itu adalah ruangan ___, sehingga kata ini berarti <vocabulary>room</vocabulary> (sama seperti kanji).', 'Bacaannya adalah bacaan on''yomi. Jangan mengetikkan 〜 saat menulis jawabannya. Itu hanya untuk memberi tahu Anda bahwa biasanya ada sesuatu yang melekat pada kata ini.', 'Ruang')
    RETURNING id INTO v_7527_ruang;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '草地', 'padang-rumput', 6, 160, '<kanji>Rumput</kanji> yang menutupi <kanji>bumi</kanji> adalah <vocabulary>padang rumput</vocabulary>. Atau kalau kurang kreatif, namanya <vocabulary>padang rumput</vocabulary>.', 'Bacaannya merupakan gabungan bacaan kun''yomi dan on''yomi. Meskipun demikian, kedua bacaan untuk kedua kanji tersebut adalah bacaan yang Anda pelajari dengan kanji tersebut sehingga Anda harus bisa membaca ini.', 'Padang rumput, Padang rumput')
    RETURNING id INTO v_7566_padang_rumput;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '国王', 'raja', 6, 161, '<kanji>negara</kanji> <kanji>raja</kanji> tetaplah <vocabulary>raja</vocabulary>, hanya saja wilayahnya lebih luas.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Raja, Raja, Berdaulat')
    RETURNING id INTO v_7618_raja;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '水星', 'air-raksa', 6, 162, '<kanji>air</kanji> <kanji>bintang</kanji> adalah planet <vocabulary>Merkurius</vocabulary>. Di situlah kami menyembunyikan semua rahasia air bulan kami. Merkurius terlihat sangat mirip dengan bulan kita, jadi kami menaruhnya di sana agar tidak ada yang bisa menemukannya.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Air raksa')
    RETURNING id INTO v_7619_air_raksa;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '金星', 'venus', 6, 163, '<kanji>emas</kanji> <kanji>bintang</kanji> adalah <vocabulary>Venus</vocabulary>. Ini satu-satunya planet di tata surya kita yang warnanya sama dengan emas.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Venus')
    RETURNING id INTO v_7620_venus;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '生える', 'untuk-tumbuh', 6, 164, 'Kata ini terdiri dari kanji dengan hiragana ditempelkan. Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Ingat bagaimana 生きる berarti "hidup?" Inilah yang terjadi segera setelah ia mulai hidup. Ini mulai <vocabulary>berkembang</vocabulary>!', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi. Anda tidak belajar membaca dengan kanji ini, jadi inilah mnemonik untuk membantu Anda:

Anda akan mengetahui bahwa bibit telah berhasil <vocabulary>tumbuh</vocabulary> ketika Anda mendengarnya berteriak "<reading>hah</reading> (は)!" dengan suara tanaman bayi kecil yang lucu. "Hah! Aku tahu aku bisa melakukannya! Aku tahu aku bisa berkembang! Hah!"', 'Untuk Tumbuh, Untuk bangkit, Untuk Berkecambah, Untuk Keluar')
    RETURNING id INTO v_7671_untuk_tumbuh;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '土星', 'saturnus', 6, 165, '<kanji>tanah</kanji> <kanji>bintang</kanji> adalah <vocabulary>Saturnus</vocabulary>. Itu sebabnya disebut "sat" guci. Karena orang pertama yang menemukannya duduk di tanah sana. Itu adalah bintang yang seluruhnya terbuat dari tanah yang bisa diduduki.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Saturnus')
    RETURNING id INTO v_7673_saturnus;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '活気', 'energi', 6, 166, 'Jika Anda memiliki <kanji>energi</kanji> <kanji>energi</kanji> yang <kanji>hidup</kanji> Anda memiliki lebih dari cukup <vocabulary>energi</vocabulary> untuk mulai diperhatikan semua orang. Mereka mendatangi Anda dan memuji <vocabulary>keaktifan</vocabulary> Anda yang luar biasa.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri. Berhati-hatilah karena かつ di sini disingkat menjadi かっ. Ini adalah perubahan yang cukup umum untuk on''yomi yang diakhiri dengan つ, jadi teruslah buka mata Anda untuk mengetahui lebih lanjut tentang hal ini!', 'Energi, Keaktifan, Semangat, Roh')
    RETURNING id INTO v_7674_energi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '地中', 'bawah-tanah', 6, 167, 'Jika Anda berada di <kanji>tengah</kanji> dari <kanji>tanah</kanji>, kemungkinan besar Anda berada di <vocabulary>bawah tanah</vocabulary>. Apakah Anda seorang penganiaya? Itu cukup keren.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Bawah tanah, Di bawah tanah')
    RETURNING id INTO v_7732_bawah_tanah;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '活用', 'memanfaatkan', 6, 168, 'Jika Anda <kanji>menghidupkan</kanji> <kanji>penggunaan</kanji> sesuatu, Anda mungkin <vocabulary>memanfaatkan</vocabulary> atau membuat <vocabulary>penggunaan praktis</vocabulary> darinya.

活用 berarti memanfaatkan sesuatu secara maksimal. Dalam konteks tata bahasa Jepang, 活用 juga mengacu pada <vocabulary>konjugasi</vocabulary> kata kerja dan kata sifat.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Memanfaatkan, Konjugasi, Penggunaan Praktis')
    RETURNING id INTO v_7733_memanfaatkan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '知る', 'untuk-mengetahui', 6, 169, 'Kata ini terdiri dari kanji dengan hiragana ditempelkan. Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanjinya sendiri berarti <kanji>tahu</kanji> jadi versi verbanya berarti <vocabulary>to mengetahui</vocabulary>. Kata ini juga bisa merujuk pada bagaimana seseorang mengetahui sesuatu, jadi ini juga berarti <vocabulary>mempelajari</vocabulary> atau <vocabulary>menemukan</vocabulary>.', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi. Anda sudah mempelajari bacaan ini dengan kanji, jadi Anda siap melakukannya! Hore!', 'Untuk Mengetahui, Untuk Belajar, Untuk Mengetahui')
    RETURNING id INTO v_8697_untuk_mengetahui;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '手首', 'pergelangan-tangan', 6, 170, '<kanji>leher</kanji> <kanji>tangan</kanji> Anda adalah <vocabulary>pergelangan tangan</vocabulary> Anda!', 'Kata ini menggunakan bacaan kun''yomi dari kedua kanji tersebut, mungkin karena mengandung bagian tubuh. Anda sudah mengenal keduanya, jadi sekarang Anda juga mengetahuinya!', 'Pergelangan tangan')
    RETURNING id INTO v_8737_pergelangan_tangan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '出社', 'pergi-ke-kantor', 6, 171, 'Jika Anda <kanji>keluar</kanji> ke suatu tempat untuk pergi ke <kanji>perusahaan</kanji> Anda, itu adalah <vocabulary>pergi ke kantor</vocabulary>, <vocabulary>tiba di kantor</vocabulary>, dan <vocabulary>mulai bekerja</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri. Berhati-hatilah terhadap しゅつ, yang diubah menjadi しゅっ, seperti yang banyak dilakukan dalam situasi ini.', 'Pergi ke kantor, Sesampainya di Kantor, Datang ke tempat kerja')
    RETURNING id INTO v_9084_pergi_ke_kantor;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '元パートナー', 'mantan-mitra', 6, 172, 'Partner <kanji>asal</kanji> Anda adalah partner yang Anda miliki sebelumnya, namun tidak lagi Anda miliki. Dengan kata lain, ini adalah <vocabulary>mantan partner</vocabulary> atau <vocabulary>mantan partner</vocabulary> Anda.

Seperti dalam bahasa Inggris, kata ini cukup formal, dan mencakup semua jenis mantan pasangan, termasuk pasangan bisnis dan romantis.', 'Ini menggunakan kun''yomi dari 元 dan kemudian hanya kana, jadi kamu harus tahu cara membacanya!', 'Mantan Mitra, Mantan Mitra')
    RETURNING id INTO v_9143_mantan_mitra;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '石ころ', 'batu-kecil', 6, 173, 'Anda telah mempelajari 石, yang artinya <kanji>batu</kanji>. Anda belum pernah melihat ころ sebelumnya, tapi terkadang digunakan sebagai sufiks biasa untuk benda kecil dan bulat. Gabungkan keduanya, dan Anda akan mendapatkan <vocabulary>batu kecil</vocabulary>, atau <vocabulary>kerikil</vocabulary>.', 'Ini menggunakan kun''yomi dari 石, yang telah Anda pelajari, dan menambahkan sedikit hiragana, jadi Anda seharusnya bisa membaca ini! Namun, jika Anda memerlukan bantuan untuk mengingat bagian ころ, inilah mnemonik untuk Anda:

Bahkan <vocabulary>batu kecil</vocabulary> atau <vocabulary>kerikil</vocabulary> bisa memiliki sesuatu yang menakjubkan pada <reading>intinya</reading> (ころ). Maksudku, apa pun bisa jadi ada di inti itu! Emas, berlian… Bahkan mungkin isian coklat! Anda sebaiknya mengumpulkan beberapa batu kecil dan kerikil dan mulai menghancurkannya hingga terbuka untuk melihat intinya. Jika tidak, Anda bisa ketinggalan.', 'Batu Kecil, Kerikil, Batu')
    RETURNING id INTO v_9151_batu_kecil;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '他の人', 'orang-lain', 6, 174, 'Di sini Anda memiliki <kanji>lainnya</kanji> dan <kanji>orang</kanji> yang digabungkan dengan partikel の, yang menunjukkan bahwa "lainnya" menggambarkan "orang". Jadi ini berarti <vocabulary>orang lain</vocabulary> atau <vocabulary>orang lain</vocabulary>.

Ini lebih umum daripada 他人 yang sudah Anda pelajari. 他の人 bisa siapa saja yang bukan pembicara, atau bukan orang yang dibicarakan. 他人, di sisi lain, memiliki implikasi tambahan bahwa orang tersebut adalah seseorang yang tidak dikenal atau tidak ada hubungannya.', 'Ini menggunakan pembacaan kun''yomi kanji yang telah Anda pelajari. Selama Anda mengingatnya, Anda boleh melakukannya!', 'Orang Lain, Orang Lain')
    RETURNING id INTO v_9155_orang_lain;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '一千万', 'sepuluh-juta', 6, 175, 'Anda sudah tahu bahwa 一千 adalah "<kanji>satu</kanji> <kanji>seribu</kanji>," dan bahwa 万 adalah "<kanji>sepuluh ribu</kanji>." Tambahkan semua angka nol tersebut (atau kalikan 1.000 dengan 10.000) dan Anda akan mendapatkan <vocabulary>sepuluh juta</vocabulary>. 

Anda telah mempelajari bahwa 千 adalah cara yang lebih umum dan standar untuk mengatakan 1.000 dan 一千 terkadang digunakan untuk penekanan atau kejelasan. Nah, untuk mengatakan sepuluh juta, Anda hampir selalu mengatakannya sebagai 一千万. Maksudku, siapa yang tidak mau menekankan sepuluh juta! Itu sepuluh juta, kamu tahu?', 'Anda sudah belajar cara membaca 一千 dan 万, jadi gabungkan saja kedua bacaan tersebut dan Anda siap melakukannya!', 'Sepuluh Juta')
    RETURNING id INTO v_9166_sepuluh_juta;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '十分', 'cukup', 6, 176, 'Anda memiliki <kanji>sepuluh</kanji> <kanji>bagian</kanji> dari sepuluh. Artinya, Anda memiliki <vocabulary>cukup</vocabulary>. Jumlah yang Anda miliki <vocabulary>cukup</vocabulary> dan <vocabulary>banyak</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Cukup, Memadai, Banyak')
    RETURNING id INTO v_9282_cukup;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '西ヨーロッパ', 'eropa-barat', 6, 177, 'Bagian <kanji>barat</kanji> dari ヨーロッパ (Eropa) adalah <vocabulary>Eropa Barat</vocabulary>. 

Pernahkah Anda ke 西ヨーロッパ? Anda tahu, tempat-tempat seperti Prancis, Inggris, dan Belgia, dengan semua anggur, keju, dan birnya… Eropa Barat!', 'Ini menggunakan pembacaan kun''yomi 西, yang telah Anda pelajari, jadi sebaiknya Anda pergi ke sini!', 'Eropa Barat')
    RETURNING id INTO v_9353_eropa_barat;

  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2510_seribu, 'Seribu', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2596_asal, 'Asal', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2596_asal, 'Mantan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2596_asal, 'Mantan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2601_untuk_dipotong, 'Untuk Dipotong', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2601_untuk_dipotong, 'Untuk Memotret', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2601_untuk_dipotong, 'Akan Kedaluwarsa', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2601_untuk_dipotong, 'Kehabisan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2661_huruf_besar, 'Huruf Besar', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2661_huruf_besar, 'Huruf Kapital', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2661_huruf_besar, 'Huruf besar', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2688_bisikan_di_telinga, 'Bisikan Di Telinga', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2688_bisikan_di_telinga, 'Berbisik di Telinga Seseorang', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2717_tidak_dapat_ditolong, 'Tidak dapat ditolong', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2717_tidak_dapat_ditolong, 'Tidak ada gunanya', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2717_tidak_dapat_ditolong, 'Tidak Ada Jalan Lain', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2722_substitusi, 'Substitusi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2724_berada_dalam_sebuah_foto, 'Berada Dalam Sebuah Foto', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2724_berada_dalam_sebuah_foto, 'Untuk Muncul Dalam Sebuah Foto', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2776_untuk_melakukan_sesuatu, 'Untuk Melakukan Sesuatu', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2776_untuk_melakukan_sesuatu, 'Untuk Melakukan Sesuatu', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2846_budaya, 'Budaya', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2848_bawah_tanah, 'Bawah tanah', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2848_bawah_tanah, 'Ruang bawah tanah', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2848_bawah_tanah, 'Gudang di bawah tanah', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2849_tanah, 'Tanah', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2850_peta, 'Peta', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2851_kedua_tangan, 'Kedua Tangan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2851_kedua_tangan, 'Kedua Lengan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2852_kedua_hari, 'Kedua Hari', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2853_keduanya, 'Keduanya', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2853_keduanya, 'Kedua Sisi', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2853_keduanya, 'Kedua Cara', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2854_semua, 'Semua', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2854_semua, 'Seluruh', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2854_semua, 'Semuanya', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2855_upaya_penuh, 'Upaya Penuh', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2855_upaya_penuh, 'Setiap Upaya', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2855_upaya_penuh, 'Upaya Terbaik', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2855_upaya_penuh, 'Kekuatan Penuh', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2856_seluruh_jepang, 'Seluruh Jepang', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2856_seluruh_jepang, 'Seluruh Jepang', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2857_keamanan, 'Keamanan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2857_keamanan, 'Aman', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2858_arah, 'Arah', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2859_murah, 'Murah', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2859_murah, 'Murah', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2860_lega, 'Lega', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2860_lega, 'Ketenangan Pikiran', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2861_rasa_gelisah, 'Rasa gelisah', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2861_rasa_gelisah, 'Kecemasan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2861_rasa_gelisah, 'Kegelisahan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2862_perdamaian, 'Perdamaian', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2862_perdamaian, 'Tenang', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2862_perdamaian, 'Heian', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2863_negara, 'Negara', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2863_negara, 'Propinsi', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2863_negara, 'Daerah', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2864_kyuushuu, 'Kyuushuu', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2864_kyuushuu, 'Kyushu', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2865_honshuu, 'Honshuu', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2865_honshuu, 'Honshu', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2866_lagu, 'Lagu', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2866_lagu, 'Sepotong Musik', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2866_lagu, 'Lagu', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2866_lagu, 'Melodi', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2867_musik_terkenal, 'Musik Terkenal', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2867_musik_terkenal, 'Lagu Terkenal', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2867_musik_terkenal, 'Lagu Terkenal', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2867_musik_terkenal, 'Mahakarya', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2868_untuk_memiliki, 'Untuk Memiliki', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2868_untuk_memiliki, 'Untuk Ada', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2869_terkenal, 'Terkenal', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2874_untuk_mati, 'Untuk Mati', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2875_mayat, 'Mayat', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2875_mayat, 'Mayat', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2875_mayat, 'Mayat', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2876_kematian, 'Kematian', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2876_kematian, 'Kematian', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2877_domba, 'Domba', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2877_domba, 'Rama', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2878_wol, 'Wol', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2879_darah, 'Darah', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2880_perdarahan, 'Perdarahan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2880_perdarahan, 'Berdarah', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2881_negara, 'Negara', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2881_negara, 'Bangsa', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2882_cina, 'Cina', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2883_surga, 'Surga', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2883_surga, 'Surga', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2884_nasional, 'Nasional', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2884_nasional, 'Nasional', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2884_nasional, 'Di seluruh negeri', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2885_shikoku, 'Shikoku', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2886_negara_asing, 'Negara Asing', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2886_negara_asing, 'Negara Lain', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2886_negara_asing, 'Luar negeri', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2887_orang_asing, 'Orang Asing', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2887_orang_asing, 'Orang asing', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2888_amerika_serikat, 'Amerika Serikat', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2888_amerika_serikat, 'Amerika', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2888_amerika_serikat, 'Amerika Serikat', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2891_saudara_perempuan, 'saudara perempuan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2892_adik, 'Adik', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2892_adik, 'Adik perempuan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2893_kakak, 'Kakak', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2893_kakak, 'Merindukan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2894_toko, 'Toko', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2894_toko, 'Toko', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2901_berjalan, 'Berjalan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2906_panjang, 'Panjang', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2907_presiden_perusahaan, 'Presiden Perusahaan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2907_presiden_perusahaan, 'Presiden Sebuah Perusahaan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2908_depan, 'Depan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2908_depan, 'Sebelum', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2909_pagi, 'PAGI', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2909_pagi, 'Pagi', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2909_pagi, 'PAGI.', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2911_di_belakang, 'Di belakang', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2911_di_belakang, 'Kembali', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2911_di_belakang, 'Belakang', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2912_setelah, 'Setelah', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2912_setelah, 'Setelah itu', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2912_setelah, 'Nanti', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2913_pm, 'PM', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2913_pm, 'Sore', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2913_pm, 'PM.', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2914_untuk_berpikir, 'Untuk Berpikir', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2916_kehidupan, 'Kehidupan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2916_kehidupan, 'Mata pencaharian', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2918_luar_negeri, 'Luar negeri', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2918_luar_negeri, 'Luar negeri', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2918_luar_negeri, 'Luar negeri', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2919_titik, 'Titik', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2919_titik, 'Skor', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2919_titik, 'Titik Desimal', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2919_titik, 'Sudut pandang', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2920_sains, 'Sains', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2921_teh, 'Teh', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2922_cokelat, 'Cokelat', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2922_cokelat, 'Warna Coklat', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2922_cokelat, 'Warna Coklat', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2923_untuk_makan, 'Untuk makan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2924_leher, 'Leher', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2925_pergelangan_kaki, 'Pergelangan kaki', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2926_untuk_dipecat, 'Untuk Dipecat', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2926_untuk_dipecat, 'Untuk Dipecat', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2954_rumah, 'Rumah', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2954_rumah, 'Rumah', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3237_empat_puluh_dua, 'Empat Puluh Dua', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3237_empat_puluh_dua, 'Jawabannya', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3406_untuk_meninggal, 'Untuk Meninggal', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3406_untuk_meninggal, 'Menjadi Meninggal', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3406_untuk_meninggal, 'Untuk Mati', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3411_huruf_kecil, 'Huruf Kecil', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3411_huruf_kecil, 'Karakter Huruf Kecil', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3411_huruf_kecil, 'Huruf kecil', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3415_liburan_musim_dingin, 'Liburan Musim Dingin', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3415_liburan_musim_dingin, 'Liburan Musim Dingin', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3415_liburan_musim_dingin, 'Liburan Musim Dingin', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3418_untuk_mampu_melakukan, 'Untuk Mampu Melakukan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3418_untuk_mampu_melakukan, 'Untuk Bersiap', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3418_untuk_mampu_melakukan, 'Akan Dibuat', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3419_dialek, 'Dialek', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3439_pembicara_cepat, 'Pembicara Cepat', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3439_pembicara_cepat, 'Berbicara Cepat', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3439_pembicara_cepat, 'Pembicara Cepat', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3439_pembicara_cepat, 'Berbicara Cepat', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3440_tidak_cukup, 'Tidak cukup', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3440_tidak_cukup, 'Tidak memadai', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3440_tidak_cukup, 'Tidak Cukup', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3441_lebih_tua, 'Lebih tua', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3444_tahun_ini, 'Tahun ini', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3446_lebih_muda, 'Lebih muda', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3458_pintu_keluar_timur, 'Pintu Keluar Timur', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3458_pintu_keluar_timur, 'Pintu Masuk Timur', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3458_pintu_keluar_timur, 'Gerbang Timur', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3496_untuk_berbalik_ke_arah, 'Untuk Berbalik Ke Arah', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3496_untuk_berbalik_ke_arah, 'Untuk Menghadapi', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3496_untuk_berbalik_ke_arah, 'Menjadi Cocok', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3522_timur, 'Timur', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3714_saya, 'SAYA', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3714_saya, 'Aku', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3715_kehidupan_pribadi, 'Kehidupan Pribadi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3715_kehidupan_pribadi, 'Kehidupan Pribadi Seseorang', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3715_kehidupan_pribadi, 'Kehidupan Pribadi', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3715_kehidupan_pribadi, 'Kehidupan Pribadi Seseorang', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3716_pribadi, 'Pribadi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3716_pribadi, 'Dijalankan Secara Pribadi', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3716_pribadi, 'Dioperasikan Secara Pribadi', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3817_untuk_mengambil, 'Untuk Mengambil', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3817_untuk_mengambil, 'Untuk Mengambil Sesuatu', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3817_untuk_mengambil, 'Untuk Mendapatkan Sesuatu', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4378_untuk_menyebar, 'Untuk Menyebar', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4378_untuk_menyebar, 'Untuk Memperluas', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4378_untuk_menyebar, 'Untuk Meregangkan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4971_babi, 'Babi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5633_harta_nasional, 'Harta Nasional', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5633_harta_nasional, 'Nic Cage', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5846_lotere, 'Lotere', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5846_lotere, 'Lotere Umum', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5846_lotere, 'Tiket Lotere', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7451_satu_langkah, 'Satu Langkah', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7456_tiga_ratus, 'Tiga ratus', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7477_untuk_menambahkan_sesuatu, 'Untuk Menambahkan Sesuatu', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7482_kendaraan, 'Kendaraan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7482_kendaraan, 'Kereta Api', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7524_lebih_awal, 'Lebih awal', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7524_lebih_awal, 'Segera', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7524_lebih_awal, 'Dengan cepat', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7524_lebih_awal, 'Cepat', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7525_kematian, 'Kematian', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7526_kakak, 'Kakak', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7526_kakak, 'Kakak', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7526_kakak, 'Kakak Perempuan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7527_ruang, 'Ruang', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7566_padang_rumput, 'Padang rumput', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7566_padang_rumput, 'Padang rumput', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7618_raja, 'Raja', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7618_raja, 'Raja', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7618_raja, 'Berdaulat', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7619_air_raksa, 'Air raksa', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7620_venus, 'Venus', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7671_untuk_tumbuh, 'Untuk Tumbuh', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7671_untuk_tumbuh, 'Untuk bangkit', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7671_untuk_tumbuh, 'Untuk Berkecambah', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7671_untuk_tumbuh, 'Untuk Keluar', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7673_saturnus, 'Saturnus', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7674_energi, 'Energi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7674_energi, 'Keaktifan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7674_energi, 'Semangat', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7674_energi, 'Roh', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7732_bawah_tanah, 'Bawah tanah', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7732_bawah_tanah, 'Di bawah tanah', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7733_memanfaatkan, 'Memanfaatkan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7733_memanfaatkan, 'Konjugasi', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7733_memanfaatkan, 'Penggunaan Praktis', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8697_untuk_mengetahui, 'Untuk Mengetahui', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8697_untuk_mengetahui, 'Untuk Belajar', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8697_untuk_mengetahui, 'Untuk Mengetahui', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8737_pergelangan_tangan, 'Pergelangan tangan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9084_pergi_ke_kantor, 'Pergi ke kantor', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9084_pergi_ke_kantor, 'Sesampainya di Kantor', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9084_pergi_ke_kantor, 'Datang ke tempat kerja', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9143_mantan_mitra, 'Mantan Mitra', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9143_mantan_mitra, 'Mantan Mitra', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9151_batu_kecil, 'Batu Kecil', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9151_batu_kecil, 'Kerikil', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9151_batu_kecil, 'Batu', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9155_orang_lain, 'Orang Lain', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9155_orang_lain, 'Orang Lain', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9166_sepuluh_juta, 'Sepuluh Juta', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9282_cukup, 'Cukup', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9282_cukup, 'Memadai', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9282_cukup, 'Banyak', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9353_eropa_barat, 'Eropa Barat', true, true);

  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2510_seribu, 'いっせん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2596_asal, 'もと', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2601_untuk_dipotong, 'きれる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2661_huruf_besar, 'おおもじ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2688_bisikan_di_telinga, 'みみうち', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2717_tidak_dapat_ditolong, 'しかたがない', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2722_substitusi, 'だいよう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2724_berada_dalam_sebuah_foto, 'うつる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2776_untuk_melakukan_sesuatu, 'おこなう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2846_budaya, 'ぶんか', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2848_bawah_tanah, 'ちか', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2849_tanah, 'とち', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2850_peta, 'ちず', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2851_kedua_tangan, 'りょうて', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2852_kedua_hari, 'りょうじつ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2853_keduanya, 'りょうほう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2854_semua, 'すべて', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2855_upaya_penuh, 'ぜんりょく', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2856_seluruh_jepang, 'ぜんにほん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2856_seluruh_jepang, 'ぜんにっぽん', NULL, false, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2857_keamanan, 'あんぜん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2858_arah, 'ほうこう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2859_murah, 'やすい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2860_lega, 'あんしん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2861_rasa_gelisah, 'ふあん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2862_perdamaian, 'へいあん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2863_negara, 'しゅう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2864_kyuushuu, 'きゅうしゅう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2865_honshuu, 'ほんしゅう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2866_lagu, 'きょく', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2867_musik_terkenal, 'めいきょく', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2868_untuk_memiliki, 'ある', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2869_terkenal, 'ゆうめい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2874_untuk_mati, 'しぬ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2875_mayat, 'したい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2876_kematian, 'しぼう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2877_domba, 'ひつじ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2878_wol, 'ようもう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2879_darah, 'ち', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2880_perdarahan, 'しゅっけつ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2881_negara, 'くに', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2882_cina, 'ちゅうごく', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2883_surga, 'てんごく', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2884_nasional, 'ぜんこく', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2885_shikoku, 'しこく', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2886_negara_asing, 'がいこく', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2887_orang_asing, 'がいこくじん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2888_amerika_serikat, 'べいこく', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2891_saudara_perempuan, 'しまい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2892_adik, 'いもうと', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2893_kakak, 'おねえさん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2894_toko, 'みせ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2901_berjalan, 'あるく', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2906_panjang, 'ながい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2907_presiden_perusahaan, 'しゃちょう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2908_depan, 'まえ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2909_pagi, 'ごぜん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2911_di_belakang, 'うしろ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2912_setelah, 'あとで', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2913_pm, 'ごご', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2914_untuk_berpikir, 'おもう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2916_kehidupan, 'せいかつ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2918_luar_negeri, 'かいがい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2919_titik, 'てん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2920_sains, 'かがく', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2921_teh, 'おちゃ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2922_cokelat, 'ちゃいろ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2923_untuk_makan, 'たべる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2924_leher, 'くび', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2925_pergelangan_kaki, 'あしくび', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2926_untuk_dipecat, 'くびになる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2954_rumah, 'いえ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2954_rumah, 'うち', NULL, false, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3237_empat_puluh_dua, 'よんじゅうに', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3406_untuk_meninggal, 'なくなる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3411_huruf_kecil, 'こもじ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3415_liburan_musim_dingin, 'ふゆやすみ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3418_untuk_mampu_melakukan, 'できる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3419_dialek, 'ほうげん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3439_pembicara_cepat, 'はやくち', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3440_tidak_cukup, 'たりない', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3441_lebih_tua, 'としうえ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3444_tahun_ini, 'ことし', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3446_lebih_muda, 'としした', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3458_pintu_keluar_timur, 'ひがしぐち', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3496_untuk_berbalik_ke_arah, 'むく', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3522_timur, 'ひがし', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3714_saya, 'わたし', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3714_saya, 'わたくし', NULL, false, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3715_kehidupan_pribadi, 'しせいかつ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3716_pribadi, 'しりつ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3817_untuk_mengambil, 'とる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4378_untuk_menyebar, 'ひろがる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4971_babi, 'ぶたにく', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5633_harta_nasional, 'こくほう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5846_lotere, 'たからくじ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_7451_satu_langkah, 'いっぽ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_7456_tiga_ratus, 'さんびゃく', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_7477_untuk_menambahkan_sesuatu, 'たす', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_7482_kendaraan, 'しゃりょう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_7524_lebih_awal, 'はやく', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_7525_kematian, 'し', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_7526_kakak, 'あね', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_7527_ruang, 'しつ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_7566_padang_rumput, 'くさち', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_7618_raja, 'こくおう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_7619_air_raksa, 'すいせい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_7620_venus, 'きんせい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_7671_untuk_tumbuh, 'はえる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_7673_saturnus, 'どせい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_7674_energi, 'かっき', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_7732_bawah_tanah, 'ちちゅう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_7733_memanfaatkan, 'かつよう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_8697_untuk_mengetahui, 'しる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_8737_pergelangan_tangan, 'てくび', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_9084_pergi_ke_kantor, 'しゅっしゃ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_9143_mantan_mitra, 'もとぱーとなー', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_9143_mantan_mitra, 'もとパートナー', NULL, false, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_9151_batu_kecil, 'いしころ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_9155_orang_lain, 'ほかのひと', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_9166_sepuluh_juta, 'いっせんまん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_9282_cukup, 'じゅうぶん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_9353_eropa_barat, 'にしよーろっぱ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_9353_eropa_barat, 'にしヨーロッパ', NULL, false, true);

  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2510_seribu, '一千くらいです。', 'Jumlahnya sekitar seribu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2510_seribu, 'このトイレットペーパー、一千ドルもしたんだって！', 'Ternyata tisu toilet ini harganya 1.000 dolar!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2510_seribu, '一千フィートの山の上でキャンプをした。', 'Kami berkemah di gunung setinggi 1.000 kaki.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2596_asal, '元のポジションは、もっと北でした。', 'Posisi aslinya lebih jauh ke utara.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2596_asal, '元フィットネストレーナーです。', 'Saya seorang mantan pelatih kebugaran.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2596_asal, '元のデータに正して下さいね。', 'Mohon dikoreksi ke data aslinya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2601_untuk_dipotong, 'この糸は、すぐに切れる。', 'Benang ini mudah putus.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2601_untuk_dipotong, 'トイレットペーパーが切れた。', 'Kami kehabisan tisu toilet.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2601_untuk_dipotong, 'この刀はとても切れる。', 'Pedang ini sangat tajam.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2661_huruf_besar, 'タイトルは、全て大文字でおねがいします。', 'Tolong, semua huruf besar untuk judulnya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2661_huruf_besar, 'Tだけ大文字で、他は小文字です。', 'Hanya T yang huruf besar, dan lainnya huruf kecil.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2661_huruf_besar, 'パスワードは大文字で入力して下さい。', 'Silakan masukkan kata sandi dengan huruf kapital.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2688_bisikan_di_telinga, '「ありがとう」と耳打ちした。', '"Terima kasih," bisikku di telinga mereka.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2688_bisikan_di_telinga, '山下先生は田中先生に耳打ちした。', 'Yamashita-sensei berbisik di telinga Tanaka-sensei.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2688_bisikan_di_telinga, '大人の耳打ちって、セクシーよね。', 'Bisikan orang dewasa itu seksi kan?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2717_tidak_dapat_ditolong, 'そこにずっと立っていても仕方がないよ。', 'Tidak ada gunanya meskipun kamu terus berdiri di sana.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2717_tidak_dapat_ditolong, 'フライトがなくて日本に来られないのは仕方がない。', 'Tidak ada yang dapat Anda lakukan untuk datang ke Jepang ketika tidak tersedia penerbangan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2717_tidak_dapat_ditolong, '雨の日が少なかったんだから、今年の水不足は仕方がないよ。', 'Tidak banyak hari hujan, kekurangan air tahun ini tidak dapat ditolong.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2722_substitusi, 'サワークリームをヨーグルトで代用しました。', 'Saya mengganti krim asam dengan yogurt.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2722_substitusi, 'このニンニクは、玉ねぎの代用ですか？', 'Apakah bawang putih ini pengganti bawang bombay?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2722_substitusi, 'オフィスチェアの代用で、バランスボールを用いる人がたくさんいます。', 'Ada banyak orang yang menggunakan bola keseimbangan sebagai pengganti kursi kantor.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2724_berada_dalam_sebuah_foto, '父はビデオに写るのがきらいです。', 'Ayah saya tidak suka tampil di video.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2724_berada_dalam_sebuah_foto, '白い花は、ウェディングフォトに写っていない。', 'Bunga putih tidak ada di foto pernikahan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2724_berada_dalam_sebuah_foto, 'このカメラでは、木や山がよく写る。', 'Anda dapat mengambil gambar pepohonan dan gunung yang bagus dengan kamera ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2776_untuk_melakukan_sesuatu, 'ホテルでミーティングを行うつもりです。', 'Saya akan mengadakan pertemuan di hotel.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2776_untuk_melakukan_sesuatu, 'データの入力を行ったばかりです。', 'Saya baru saja melakukan beberapa entri data.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2776_untuk_melakukan_sesuatu, '雨じゃなければ、七月四日にバーベキューパーティーを行います。	', 'Jika tidak hujan, kami mengadakan pesta barbekyu pada tanggal 4 Juli.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2846_budaya, 'これは日本の文化についての本です。', 'Ini adalah buku tentang budaya Jepang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2846_budaya, 'この町の古い文化を外国人にも知ってほしいんです。', 'Saya ingin orang asing mengetahui budaya lama kota ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2846_budaya, 'コスプレは日本の文化の一つですか？', 'Apakah cosplay merupakan bagian dari budaya Jepang?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2848_bawah_tanah, 'その車両は地下に入った。', 'Kendaraan itu pergi ke bawah tanah.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2848_bawah_tanah, '地下への入り口はどこですか？', 'Di mana pintu masuk ke ruang bawah tanah?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2848_bawah_tanah, 'デパートの地下のことを、「デパ地下」と言います。', 'Lantai basement department store disebut "depachika".');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2849_tanah, 'ここは、あなたの土地ではありません。', 'Ini bukan tanahmu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2849_tanah, 'アメリカの土地は広い。', 'Lahan di Amerika sangat luas.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2849_tanah, 'この土地は人口が少ない代わりに、田んぼや川がたくさんある。', 'Daerah ini berpenduduk sedikit, namun memiliki banyak sawah dan sungai.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2850_peta, 'スマートフォンで地図を出しました。', 'Aku mengeluarkan peta di ponsel pintarku.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2850_peta, 'この地図は、正しいですか？', 'Apakah peta ini benar?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2850_peta, '中国へ行く前に、地図とカメラを手に入れたいです。', 'Sebelum pergi ke China, saya ingin mendapatkan peta dan kamera.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2851_kedua_tangan, '両手を上げて、バンザイをしました。', 'Mereka mengangkat kedua tangan dan meneriakkan banzai.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2851_kedua_tangan, '女の子は両手を広げてストレッチをした。', 'Gadis itu merentangkan tangannya dan meregangkan tubuh.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2851_kedua_tangan, 'スクリーンを見ないで両手でタイピングできる人がタイプなんです。', 'Tipe saya adalah orang yang bisa mengetik dengan kedua tangan tanpa melihat layar.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2852_kedua_hari, '両日のスケジュールをメールして下さい。', 'Silakan kirim email jadwal untuk kedua hari tersebut.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2852_kedua_hari, '両日とも雨になるそうですよ。', 'Sepertinya akan turun hujan pada kedua hari tersebut.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2852_kedua_hari, 'ごめんなさい。両日とも、ミーティングが入っています。', 'Maaf. Ada pertemuan di kedua hari tersebut.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2853_keduanya, '父も母も、両方ともフランス人です。', 'Baik ayah dan ibu saya adalah orang Prancis.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2853_keduanya, '両方の手を力いっぱい上げて下さい。', 'Silakan angkat kedua tangan Anda dengan sekuat tenaga.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2853_keduanya, '両方とも私のかき氷です。', 'Keduanya adalah es serutku.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2854_semua, '玉ねぎは全て切りますか？', 'Haruskah aku memotong seluruh bawang ini?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2854_semua, '日本の全てに「さようなら」を言って、アメリカに来たんです。', 'Saya datang ke Amerika, mengucapkan "selamat tinggal" pada semua yang ada di Jepang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2854_semua, '全ての人は、人から生まれました。', 'Setiap orang lahir dari satu orang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2855_upaya_penuh, '会社まで全力で走りました。', 'Saya berlari ke perusahaan dengan sekuat tenaga.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2855_upaya_penuh, '先生に「あなたは、まだ全力を出してない」と言われてしまった。', 'Guru mengatakan kepada saya, "Kamu belum mengerahkan upaya terbaikmu."');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2855_upaya_penuh, 'もし私がパントリーの方に行こうとしたら、全力で止めて下さい。', 'Jika saya mencoba pergi ke dapur, tolong hentikan saya dengan kekuatan penuh Anda.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2856_seluruh_jepang, '全日本の人口は主にアジア人です。', 'Populasi seluruh Jepang sebagian besar adalah orang Asia.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2856_seluruh_jepang, '全日本の女子バレーボールチームは上手です。', 'Tim voli putri Seluruh Jepang bagus.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2856_seluruh_jepang, '全日本の山の中でも、ふじ山は人気です。', 'Gunung Fuji populer di antara semua gunung di Jepang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2857_keamanan, 'このツリーハウスは、安全ですか？', 'Apakah rumah pohon ini aman?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2857_keamanan, '大人でも、ハイキングは安全に行うことが大切です。', 'Penting untuk mendaki dengan aman bahkan untuk orang dewasa.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2857_keamanan, '全日本の安全はあなたにかかってます。', 'Keamanan seluruh Jepang bergantung pada Anda.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2858_arah, '入り口の方向はどちらですか。', 'Ke arah mana pintu masuknya?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2858_arah, 'あの山の方向に月が見えます。', 'Anda akan dapat melihat bulan ke arah gunung di sana.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2858_arah, '男は、コンビニの方向に走った。', 'Pria itu berlari ke arah toko serba ada.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2859_murah, 'カメルーンのフルーツはとても安い。', 'Harga buah di Kamerun sangat murah.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2859_murah, '私は安いホテルでも平気ですよ。', 'Saya baik-baik saja dengan hotel murah.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2859_murah, '日本一安いスーパーマーケットへ、ようこそ！', 'Selamat datang di supermarket termurah di Jepang!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2860_lega, 'これで安心です。', 'Itu melegakan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2860_lega, '元気な友人を見て安心しました。', 'Aku lega melihat temanku baik-baik saja.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2860_lega, '私はプロのパイロットなので、どうぞご安心を。', 'Saya seorang pilot profesional, jadi jangan khawatir.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2861_rasa_gelisah, '一人で外国に行くのは少し不安です。', 'Saya sedikit ingin pergi ke luar negeri sendirian.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2861_rasa_gelisah, '大学に入学できるか不安です。', 'Saya khawatir apakah saya bisa masuk perguruan tinggi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2861_rasa_gelisah, 'お子さんの自立について、不安は有りますか？', 'Apakah Anda khawatir dengan kemandirian anak Anda?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2862_perdamaian, '今日は一日、平安な日でした。', 'Hari ini adalah hari yang damai.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2862_perdamaian, '日本文学一のラブストーリーは平安に生まれました。', 'Kisah cinta terbaik dalam sastra Jepang lahir pada periode Heian.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2862_perdamaian, 'この林の中にいると、心が平安になります。', 'Saat aku berada di hutan ini, hatiku menjadi damai.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2863_negara, '私は、アイダホ州の生まれです。', 'Saya lahir di negara bagian Idaho.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2863_negara, 'カナダにある十の州、全て言えますか？', 'Bisakah Anda menyebutkan sepuluh provinsi di Kanada?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2863_negara, '州のルールで、ここは車で入れません。', 'Karena peraturan negara bagian, Anda tidak boleh masuk dengan mobil ke sini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2864_kyuushuu, '九州に行ったことはありますか？', 'Apakah kamu pernah ke Kyushu?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2864_kyuushuu, '九州のマンゴーは、おいしいです。', 'Mangga dari Kyushu enak.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2864_kyuushuu, '九州の方言は、全国の男の人から人気です。', 'Dialek Kyushu populer di kalangan pria di seluruh negeri.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2865_honshuu, '本州の人口は何人ですか？', 'Berapa populasi Honshu?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2865_honshuu, 'ふじ山は、本州にあります。', 'Gunung Fuji terletak di Honshu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2865_honshuu, '夕べ、フェリーで本州から来ました。', 'Saya datang dari Honshu dengan feri tadi malam.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2866_lagu, 'この曲はアメリカで人気です。', 'Lagu ini populer di Amerika.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2866_lagu, 'おすすめの曲はありますか？', 'Apakah Anda punya lagu yang direkomendasikan?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2866_lagu, 'このロックバンド、曲じゃなくて見た目がいいんですよ。', 'Yang hebat dari band rock ini bukanlah musiknya, tapi penampilannya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2867_musik_terkenal, 'これはジャズの名曲です。', 'Ini adalah mahakarya jazz.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2867_musik_terkenal, '父は、小さい子どもにも人気の名曲を作った。', 'Ayah saya membuat lagu terkenal yang juga disukai anak kecil.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2867_musik_terkenal, 'ベートーベンの「スモークサーモン」は名曲だ。', '"Smoked Salmon" karya Beethoven adalah sebuah mahakarya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2868_untuk_memiliki, 'マヨネーズなら、まだ少し有る。', 'Kami masih memiliki sedikit mayones.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2868_untuk_memiliki, '大学入学のためのお金は有りますか？', 'Apakah Anda punya uang untuk mendaftar universitas?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2868_untuk_memiliki, '今は車が一台しか有りません。', 'Saat ini kami hanya punya satu mobil.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2869_terkenal, 'ニコラス・ケイジは日本でも有名です。', 'Nicholas Cage juga terkenal di Jepang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2869_terkenal, '日本で有名な山と言えば、ふじ山です。', 'Yang terkenal sebagai gunung terkenal di Jepang adalah Gunung Fuji.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2869_terkenal, '有名人に会ったことある？', 'Pernahkah Anda bertemu dengan seorang selebriti?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2874_untuk_mati, 'このスプレーで大体の虫は死ぬ。', 'Kebanyakan serangga mati karena semprotan ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2874_untuk_mati, '毎日、死ぬ気で力いっぱい生きています。', 'Setiap hari, saya hidup dengan kekuatan penuh saya seolah-olah saya sedang sekarat.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2874_untuk_mati, '夜に一人で山に入ったら、死ぬかもしれないよ。', 'Ada kemungkinan Anda akan mati jika memasuki gunung sendirian di malam hari.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2875_mayat, '二人の死体は、山で見つかった。', 'Mayat keduanya ditemukan di pegunungan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2875_mayat, '牛の死体が、土の中にあります。', 'Mayat sapi tergeletak di tanah.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2875_mayat, 'あの車のトランクに死体が入ってます。', 'Ada mayat di bagasi mobil sebelah sana.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2875_mayat, 'その死体のオデコにはワニカニのステッカーがはられていた。', 'Ada stiker WaniKani yang ditempel di dahi mayat itu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2876_kematian, '今回のフライトで、死亡した人はいませんでした。', 'Tidak ada yang meninggal dalam penerbangan ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2876_kematian, 'コーヒーで死亡のリスクが下がるって、本当？', 'Benarkah kopi menurunkan risiko kematian?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2876_kematian, '日本人二人死亡のニュースが入ってきた。', 'Kabar meninggalnya dua orang Jepang pun masuk.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2877_domba, 'この羊の毛は白いです。', 'Bulu domba ini berwarna putih.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2877_domba, '今夜は羊のカレーにしましょう。', 'Ayo buat kari daging kambing malam ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2877_domba, 'うちには子羊と子牛が両方います。', 'Kami memiliki domba dan anak sapi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2878_wol, 'クリスマスプレゼントに、羊毛のブランケットをもらいました。', 'Saya mendapat selimut wol sebagai hadiah Natal.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2878_wol, '羊毛はふわふわです。', 'Wolnya halus.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2878_wol, 'えっ、このブラ、羊毛で出来てるんですか？', 'Apa, bra ini terbuat dari wol?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2879_darah, 'シャツに血がついていますよ。', 'Ada darah di bajumu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2879_darah, 'うわ、足首から血が出てる！', 'Astaga, darah keluar dari pergelangan kakiku!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2879_darah, '父は、私と血がつながってません。', 'Ayah saya tidak memiliki hubungan darah dengan saya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2880_perdarahan, '出血が止まりません。', 'Pendarahan tidak berhenti.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2880_perdarahan, 'まだ両手に出血があります。', 'Masih ada pendarahan di kedua tangannya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2880_perdarahan, '出血がひどくて、大した力も出せなかった。', 'Pendarahannya sangat parah sehingga saya tidak bisa menggunakan banyak tenaga.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2881_negara, 'お国はどちらですか。', 'Dari mana negara asalmu?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2881_negara, '私はブルガリアという国の生まれです。', 'Saya lahir di negara bernama Bulgaria.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2881_negara, 'この国は夜に女の人が一人で出かけても安全ですよ。', 'Negara ini aman bagi seorang wanita untuk keluar sendirian di malam hari.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2882_cina, '中国の人口は日本よりも大きい。', 'Populasi Tiongkok lebih besar dibandingkan Jepang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2882_cina, '中国には有名な山がたくさんあります。', 'Ada banyak gunung terkenal di Tiongkok.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2882_cina, '私のマッサージの先生は中国人です。', 'Instruktur pijat saya adalah orang Tionghoa.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2883_surga, 'これは、天国にいる母へのメッセージです。', 'Ini adalah pesan untuk ibuku di surga.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2883_surga, 'ここは、まるでコスプレイヤーの天国だ。', 'Ini seperti surganya para cosplayer.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2883_surga, '天国がこんなとこだったなんて、がっかりです。', 'Saya kecewa surga seperti ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2884_nasional, '今、全国でインフルエンザの人が多いです。', 'Saat ini, banyak penderita flu di seluruh negeri.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2884_nasional, '日本全国の山に行きたいです。', 'Saya ingin pergi ke pegunungan di seluruh Jepang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2884_nasional, 'あのバンド、来年に全国ツアーをするそうですよ。', 'Band itu rupanya akan melakukan tur nasional tahun depan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2885_shikoku, '四国にはまだ行ったことがありません。', 'Saya masih belum pernah ke Shikoku.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2885_shikoku, '四国での生活にはなれましたか？', 'Apakah kamu sudah terbiasa tinggal di Shikoku?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2885_shikoku, '四国には、きれいな山と、おいしいうどんが、あります。', 'Shikoku memiliki pegunungan yang indah dan mie udon yang lezat.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2886_negara_asing, 'まだ外国に行ったことがありません。', 'Saya belum pernah ke luar negeri.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2886_negara_asing, '日本生まれの母にとって、「ハグ」は外国の文化です。', 'Bagi ibu saya yang kelahiran Jepang, “berpelukan” adalah budaya asing.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2886_negara_asing, 'ホノルルは、あまり外国っていう気がしません。', 'Honolulu tidak terasa seperti negara asing.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2887_orang_asing, '六月に外国人の友人が日本に来ます。', 'Teman asing saya akan datang ke Jepang pada bulan Juni.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2887_orang_asing, 'バーの入り口には外国人がたくさんいました。', 'Ada banyak orang asing di pintu masuk bar.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2887_orang_asing, 'お父さんだって、外国に行ったら「外国人」になるんだよ。', 'Ayah kalau ke luar negeri jadi orang asing juga.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2888_amerika_serikat, '主人は米国にいます。', 'Suami saya berada di Amerika Serikat.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2888_amerika_serikat, '米国へ入るには、パスポートとビザがいります。', 'Untuk memasuki Amerika Serikat, Anda memerlukan paspor dan visa.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2888_amerika_serikat, '米国は五十の州が有ります。', 'Amerika Serikat memiliki lima puluh negara bagian.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2891_saudara_perempuan, 'あの二人って姉妹みたいだよね。', 'Keduanya seperti saudara perempuan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2891_saudara_perempuan, '私は、三人姉妹の一人です。', 'Saya salah satu dari tiga saudara perempuan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2891_saudara_perempuan, '姉妹でゴルフのコンペに出ました。', 'Para suster berpartisipasi dalam turnamen golf.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2892_adik, 'この子は、私の妹です。', 'Anak ini adalah adik perempuanku.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2892_adik, 'それは妹のドレスです。', 'Itu baju kakakku.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2892_adik, '二人の妹とプールに行きました。', 'Aku pergi ke kolam renang bersama kedua adik perempuanku.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2893_kakak, 'あの人が、レイチェルのお姉さん？', 'Apakah orang itu adalah kakak perempuan Rachel?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2893_kakak, 'この子は、私のお姉さんの子です。', 'Anak ini adalah anak saudara perempuan saya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2893_kakak, 'お姉さん、出口はあっちですよ。', 'Nona, pintu keluarnya ada di sana.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2894_toko, '一人で店に入りました。', 'Saya memasuki toko sendirian.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2894_toko, '店の入り口には大きいメニューがあります。', 'Ada menu besar di pintu masuk toko.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2894_toko, 'この店は大人の男の人に人気があります。', 'Toko ini populer di kalangan pria dewasa.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2901_berjalan, '一人で山を歩く。', 'Saya berjalan di pegunungan sendirian.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2901_berjalan, 'コンビニまでは歩けません。', 'Ke minimarket tidak bisa dilalui dengan berjalan kaki.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2901_berjalan, 'あなたと手をつないで歩くなんて、何年ぶりかしら。', 'Ini pertama kalinya kami berjalan berpegangan tangan setelah sekian lama.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2906_panjang, 'この川は長いです。', 'Sungai ini panjang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2906_panjang, '子犬にとって、一年はとても長いです。', 'Satu tahun adalah waktu yang sangat lama bagi anak anjing.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2906_panjang, 'このエピソードは長すぎる。', 'Episode ini terlalu panjang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2907_presiden_perusahaan, '社長はミーティング中です。', 'Presiden perusahaan sedang rapat.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2907_presiden_perusahaan, 'コウイチはトーフグという会社の社長なんですよ。', 'Koichi adalah presiden sebuah perusahaan bernama Tofugu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2907_presiden_perusahaan, '社長は、中国やアメリカに手を広げ、小さい会社をグローバルビジネスにしました。', 'Presiden perusahaan telah memperluas perusahaannya ke Tiongkok dan Amerika Serikat, dan mengubah perusahaan kecil menjadi bisnis global.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2908_depan, '入り口の前に、たくさんの人がいます。', 'Ada banyak orang di depan pintu masuk.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2908_depan, '一年前の今日、子犬が生まれました。', 'Hari ini setahun yang lalu, seekor anak anjing lahir.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2908_depan, 'ゴールの十メートル前で足が上がらなくなってしまったんです。', 'Saya tidak bisa mengangkat kaki saya sepuluh meter sebelum gawang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2909_pagi, '平日の午前はランニングをします。', 'Saya berlari di pagi hari pada hari kerja.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2909_pagi, '午前中のミーティング、どうだった？', 'Bagaimana pertemuan paginya?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2909_pagi, '午前１０：００、ホテルの入り口にはカメラマンがたくさんいました。', 'Pada pukul 10.00, banyak fotografer di pintu masuk hotel.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2911_di_belakang, '後ろに見える大きな山が、ふじ山です。', 'Gunung besar yang bisa Anda lihat di belakangnya adalah Gunung Fuji.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2911_di_belakang, '車の後ろのシートにティッシュがあります。', 'Ada tisu di jok belakang mobil.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2911_di_belakang, '人々の後ろに一人女の人が立っています。', 'Seorang wanita berdiri di belakang orang-orang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2912_setelah, '後でホテルに来て下さい。', 'Silakan datang ke hotel nanti.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2912_setelah, 'ミーティングについては後でメールしますよ。', 'Saya akan mengirim email tentang pertemuan itu nanti.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2912_setelah, 'テレビは後で見ます。', 'Saya akan menonton TV nanti.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2913_pm, '午後は、会社にいますか？', 'Apakah Anda ada di perusahaan pada sore hari?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2913_pm, 'ジェニーは毎日、午後３：００にお茶をのみます。', 'Jenny minum teh pada jam 15.00. setiap hari.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2913_pm, '午後のクラスには行きますか？', 'Apakah kamu akan pergi ke kelas sore?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2914_untuk_berpikir, 'コウイチも来ると思う。', 'Saya pikir Koichi juga akan datang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2914_untuk_berpikir, '日本の人口について、どう思いますか？', 'Apa pendapat Anda tentang populasi Jepang?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2914_untuk_berpikir, '毛虫かと思ったら、妹のつけまつ毛だった。', 'Kukira itu ulat bulu, ternyata itu bulu mata palsu kakakku.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2916_kehidupan, '生活にかかるお金が大きいです。', 'Biaya hidup besar.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2916_kehidupan, 'いつもはニュージーランドで生活しています。', 'Biasanya saya tinggal di Selandia Baru.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2916_kehidupan, '毎日の生活で不安なことはありますか？', 'Apakah ada kekhawatiran tentang kehidupan sehari-hari Anda?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2918_luar_negeri, '海外に行きたいなぁ。', 'Saya ingin pergi ke luar negeri.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2918_luar_negeri, '一人で海外に行ったことはない。', 'Saya belum pernah ke luar negeri sendirian.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2918_luar_negeri, 'このスペース、海外のホテルみたいですね。', 'Ruangan ini terlihat seperti hotel di luar negeri.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2919_titik, '日本に点が入った。', 'Jepang mendapat skor.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2919_titik, 'タワーから見ると、人が点みたいだ。', 'Dilihat dari menara, orang-orang tampak seperti titik-titik.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2919_titik, 'その点については、どう思いますか？', 'Apa pendapat Anda tentang hal itu?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2920_sains, 'それは科学の本ですよ。', 'Itu buku sains.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2920_sains, '大人でも科学をきちんと分かってる人は少ない。', 'Tidak banyak orang dewasa yang memiliki pemahaman yang baik tentang sains.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2920_sains, '次回の科学のクラスまでに、川に行って下さい。', 'Silakan pergi ke sungai pada kelas sains berikutnya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2921_teh, 'お茶下さい。', 'Tolong teh.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2921_teh, 'ここには去年、お茶の木が生えていました。', 'Tahun lalu, ada pohon teh di sini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2921_teh, 'イギリス人はよく午後にお茶をのむんですか？', 'Apakah orang Inggris sering minum teh di sore hari?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2922_cokelat, '私のカバンは茶色です。', 'Tasku berwarna coklat.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2922_cokelat, '茶色の毛の牛はレストラン用です。', 'Sapi berambut coklat untuk restoran.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2922_cokelat, '明るい茶色にカラーリングしたいんですけど。', 'Saya ingin mewarnai rambut saya dengan warna coklat cerah.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2923_untuk_makan, '毎日ドーナッツを食べる。', 'Saya makan donat setiap hari.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2923_untuk_makan, '私は、パイナップルを一口だけ食べました。', 'Saya hanya makan sesuap nanas.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2923_untuk_makan, 'うちの犬はキャットフードを食べることが多いです。', 'Anjing kami sering makan makanan kucing.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2924_leher, '首のストレッチをしましょう。', 'Ayo regangkan lehermu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2924_leher, 'キリンは首が長いです。', 'Jerapah memiliki leher yang panjang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2924_leher, '母は、いつも首にスカーフをつけています。', 'Ibuku selalu memakai syal di lehernya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2925_pergelangan_kaki, '足首のストレッチをしましょう。', 'Ayo regangkan pergelangan kakimu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2925_pergelangan_kaki, 'ハイヒールをはいて、足首がいたくなった。', 'Saya memakai sepatu hak tinggi dan pergelangan kaki saya terasa sakit.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2925_pergelangan_kaki, '大きい山でハイキングするときは、足首をケガしないようにね。', 'Saat Anda mendaki gunung besar, jangan sampai pergelangan kaki Anda cedera.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2926_untuk_dipecat, '先月、会社を首になりました。', 'Bulan lalu, saya dipecat dari perusahaan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2926_untuk_dipecat, '首にならないように、がんばります。', 'Saya akan berusaha sebaik mungkin untuk tidak dipecat.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2926_untuk_dipecat, 'そんなことしたら、バイト首になるよ！', 'Jika kamu melakukan hal seperti itu, kamu akan kehilangan pekerjaan paruh waktumu!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2954_rumah, '私の家は山の近くにあります。', 'Rumahku dekat gunung.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2954_rumah, 'アメリカでは中古の家がとても人気です。', 'Rumah bekas sangat populer di Amerika Serikat.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2954_rumah, 'すいません、まだ家を出てないんです。', 'Maaf, aku belum meninggalkan rumah.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3237_empat_puluh_dua, '父は、四十二才です。', 'Ayah saya berumur 42 tahun.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3237_empat_puluh_dua, 'あのビルは、およそ四十二メートルです。', 'Bangunan itu tingginya sekitar 42 meter.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3237_empat_puluh_dua, 'ホテルのルームナンバーは四十二です。', 'Nomor kamar hotelnya empat puluh dua.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3406_untuk_meninggal, '去年、母が亡くなった。', 'Tahun lalu, ibuku meninggal.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3406_untuk_meninggal, 'これは、亡くなった友人のための花です。', 'Ini bunga untuk temanku yang sudah meninggal.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3406_untuk_meninggal, '姉は、亡くなる前に「宝くじ...」と言いました。', 'Adikku mengatakan "lotere..." sebelum kematiannya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3411_huruf_kecil, 'Eメールアドレスは、全て小文字で入力して下さい。', 'Silakan masukkan alamat email Anda dengan huruf kecil semua.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3411_huruf_kecil, 'パスワードには小文字と大文字を入れて下さい。', 'Silakan gunakan huruf kecil dan huruf besar dalam kata sandi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3411_huruf_kecil, 'これは小文字のLですか？それとも大文字のIですか？', 'Apakah ini huruf L kecil? Atau huruf kapital I?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3415_liburan_musim_dingin, '十一月と十二月は、冬休みです。', 'November dan Desember adalah liburan musim dingin.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3415_liburan_musim_dingin, '冬休みには、大したプランはありません。', 'Tidak ada rencana besar selama liburan musim dingin.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3415_liburan_musim_dingin, '冬休みは毎年、メキシコに行きます。', 'Setiap tahun selama liburan musim dingin, saya pergi ke Meksiko.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3418_untuk_mampu_melakukan, 'やっとJLPTN1にごうかくすることが出来ました。', 'Saya akhirnya bisa lolos JLPT N1.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3418_untuk_mampu_melakukan, 'ディナーが出来たよ。', 'Makan malam sudah siap!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3418_untuk_mampu_melakukan, 'もちは米から出来る。', 'Mochi terbuat dari beras.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3419_dialek, 'このエリアの方言で「ありがとう」は何と言いますか？', 'Bagaimana cara mengucapkan "terima kasih" dalam dialek daerah ini?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3419_dialek, 'この国では方言がとても大切にされています。', 'Di negara ini, dialek sangat dijunjung tinggi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3419_dialek, '日本の方言を学ぶことは、日本文化を大切にすることです。', 'Mempelajari dialek Jepang berarti menghargai budaya Jepang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3439_pembicara_cepat, '兄は、とても早口です。', 'Adikku adalah pembicara yang sangat cepat.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3439_pembicara_cepat, '早口でオーダーしたので、生ビールが一つの代わりに五つ来た。', 'Saya berbicara cepat ketika membuat pesanan, jadi saya mendapat lima bir, bukan satu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3439_pembicara_cepat, '日本人は、早口が上手な人が多いですね。', 'Banyak orang Jepang yang pandai berbicara cepat.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3440_tidak_cukup, 'お金が十円足りないんです。', 'Aku kekurangan sepuluh yen.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3440_tidak_cukup, '玉ねぎが一つ足りない。', 'Kita kekurangan satu bawang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3440_tidak_cukup, 'このソファをロフトに上げるには力が足りない。', 'Saya tidak punya cukup tenaga untuk menaikkan sofa ini ke loteng.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3441_lebih_tua, '元パートナーは、私より年上です。', 'Mantan pasangan saya lebih tua dari saya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3441_lebih_tua, '私の兄は、あなたより三才年上ですよ。', 'Adikku tiga tahun lebih tua darimu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3441_lebih_tua, '年上の女の人とデートに行った。', 'Saya berkencan dengan seorang wanita yang lebih tua.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3444_tahun_ini, '今年はダイエットをしたいです。', 'Saya ingin diet tahun ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3444_tahun_ini, '私の子は、今年、大学一年生になります。', 'Anak saya akan menjadi mahasiswa baru di perguruan tinggi tahun ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3444_tahun_ini, '今年の四月に日本へ来たばかりです。', 'Saya baru saja datang ke Jepang pada bulan April tahun ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3446_lebih_muda, 'このクラスは年下の子が多いです。', 'Kelas ini memiliki banyak anak kecil.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3446_lebih_muda, '年下の男の子とデートに行きました。', 'Saya pergi berkencan dengan seorang anak lelaki yang lebih muda.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3446_lebih_muda, '私は、姉よりも十才年下です。', 'Saya sepuluh tahun lebih muda dari saudara perempuan saya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3458_pintu_keluar_timur, '東口にはコンビニがありますか？', 'Apakah ada toko serba ada di pintu keluar timur?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3458_pintu_keluar_timur, 'バスは東口から出ます。', 'Bus berangkat dari pintu keluar timur.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3458_pintu_keluar_timur, '東口で会いましょう。', 'Mari kita bertemu di pintu keluar timur.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3496_untuk_berbalik_ke_arah, 'こっちを向いてください。', 'Tolong belok ke sini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3496_untuk_berbalik_ke_arah, '下を向くと、大きい川が見えます。', 'Saat Anda melihat ke bawah, Anda dapat melihat sungai besar.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3496_untuk_berbalik_ke_arah, '家は西に向いていて、午後は日当たりがいいです。', 'Rumah menghadap ke barat, sehingga mendapat sinar matahari yang bagus di sore hari.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3522_timur, 'ノースカロライナはアメリカの東にあります。', 'North Carolina terletak di sebelah timur Amerika Serikat.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3522_timur, 'ここから東へ行くと、川がありますよ。', 'Jika Anda pergi ke timur dari sini, ada sungai.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3522_timur, 'それでは、東の方を向いて下さい。', 'Kalau begitu, silakan belok ke timur.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3714_saya, '私は、イギリス人です。', 'Saya orang Inggris.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3714_saya, 'それは、私の生ビールです。', 'Itu birku.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3714_saya, 'どうか私をワニカニレベル六十の会に入れて下さい。', 'Tolong izinkan saya bergabung dengan klub WaniKani Level 60.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3715_kehidupan_pribadi, '私生活のストレスが大きい。', 'Stres dari kehidupan pribadi saya sangat besar.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3715_kehidupan_pribadi, 'コウイチは、私生活のことを友人にも他人にもあまり言わない。', 'Koichi tidak memberi tahu teman-temannya atau orang lain tentang kehidupan pribadinya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3715_kehidupan_pribadi, 'いつもはモデルですが、私生活では三人の子の母です。', 'Dia seorang model, tetapi dalam kehidupan pribadinya, dia adalah ibu dari tiga anak.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3716_pribadi, '私立の大学に入りたいです。', 'Saya ingin masuk universitas swasta.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3716_pribadi, '日本のインターナショナルスクールは主に私立です。', 'Sekolah internasional di Jepang sebagian besar adalah sekolah swasta.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3716_pribadi, 'もしかして私立ワニカニアカデミーの一年生ですか？', 'Apakah Anda mungkin siswa kelas satu di sekolah swasta, Akademi WaniKani?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3817_untuk_mengambil, '一つずつ取るんですよ。', 'Ambillah satu per satu, oke?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3817_untuk_mengambil, 'やっとライセンスが取れました！', 'Saya akhirnya mendapatkan lisensi saya!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3817_untuk_mengambil, 'そこからマグカップを取ってくれない？', 'Bisakah kamu mengambilkan mug dari sana untukku?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4378_untuk_menyebar, '両足、もっと広がる？', 'Bisakah Anda melebarkan kedua kaki Anda lebih jauh?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4378_untuk_menyebar, 'リビングルームは、この入り口から広がります。', 'Ruang tamu menyebar dari pintu masuk ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4378_untuk_menyebar, 'ウィルスは、すぐに全日本に広がった。', 'Virus ini dengan cepat menyebar ke seluruh Jepang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4971_babi, '私は豚肉を食べません。', 'Saya tidak makan daging babi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4971_babi, '今日は豚肉が安いです。', 'Harga daging babi saat ini murah.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4971_babi, '豚肉にはビタミンB₁がたっぷり入っています。', 'Daging babi kaya akan vitamin B₁.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4971_babi, 'まず、豚肉にクレイジーソルトをふりかけます。
', 'Pertama, kita akan mulai dengan menaburkan Krazy Salt pada daging babi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4971_babi, 'ランチに食べた豚肉に当たったかもしれません。', 'Saya mungkin keracunan makanan dari daging babi yang saya makan untuk makan siang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5633_harta_nasional, 'ふじ山は日本の国宝の一つです。', 'Gunung Fuji adalah salah satu harta nasional di Jepang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5633_harta_nasional, 'このホテルを、いつか国宝にしてほしいです。', 'Saya ingin hotel ini menjadi harta nasional suatu hari nanti.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5633_harta_nasional, '「何でこのヘアドライヤーは国宝なんですか？」「ニコラス・ケイジがキスしたからだよ」', '“Mengapa pengering rambut ini menjadi harta nasional?” "Karena Nicholas Cage menciumnya."');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5846_lotere, '宝くじはインターネットで手に入ります。', 'Lotere tersedia di Internet.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5846_lotere, '「妹が宝くじに当たったのよ。」「すごいね！で、いくら？」「一万円。」', '"Adikku memenangkan lotre." “Luar biasa! Berapa?” “10.000 yen.”');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5846_lotere, '百万円の宝くじが当たった山下先生。次の日からクラスに来なくなった。', 'Yamashita-sensei telah memenangkan lotre satu juta yen. Dia berhenti datang ke kelas keesokan harinya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7451_satu_langkah, 'あと一歩でゴールです。', 'Tujuannya tinggal selangkah lagi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7451_satu_langkah, '一歩ずつ上がっていきます。', 'Saya naik selangkah demi selangkah.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7451_satu_langkah, '一歩、後ろに下がってください。', 'Tolong mundur.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7456_tiga_ratus, '三百円です。', 'Harganya 300 yen.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7456_tiga_ratus, '大体三百人が来ました。', 'Sekitar 300 orang datang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7456_tiga_ratus, '一年は三百六十五日です。', 'Setahun adalah 365 hari.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7477_untuk_menambahkan_sesuatu, '一に一を足すと、二になります。', 'Jika Anda menambahkan 1 ke 1, itu akan menjadi 2.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7477_untuk_menambahkan_sesuatu, 'このスープ、もう少し水を足した方がいいんじゃないかな。', 'Mungkin akan lebih baik menambahkan lebih banyak air ke dalam sup ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7477_untuk_menambahkan_sesuatu, '白のペンキを足しましょう。', 'Mari tambahkan sedikit cat putih.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7482_kendaraan, '車両は大きいですね。', 'Kendaraan ini besar.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7482_kendaraan, '車両はトンネルに入った。', 'Kendaraan memasuki terowongan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7482_kendaraan, '前の車両は一号車です。', 'Gerbong kereta di depan yang ini adalah gerbong No.1.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7524_lebih_awal, '平日は早く会社に行きます。', 'Saya berangkat kerja lebih awal pada hari kerja.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7524_lebih_awal, '三日も早くメールが来た。', 'Saya mendapat email tiga hari sebelumnya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7524_lebih_awal, 'ゆっくり休んで早くよくなってください。', 'Silakan banyak istirahat dan segera merasa lebih baik.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7525_kematian, 'その死は早すぎました。', 'Kematian mereka terlalu cepat.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7525_kematian, ' どうして死がこわくないの？', 'Mengapa kamu tidak takut mati?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7525_kematian, 'ペットの死は本当につらいものだ。', 'Sangat sulit kehilangan hewan peliharaan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7526_kakak, '姉はシンガポールにいます。', 'Adikku ada di Singapura.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7526_kakak, '姉のお父さんと私のお父さんは同じ人です。', 'Ayah saudara perempuan saya dan ayah saya adalah orang yang sama.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7526_kakak, '二人の姉と、一人の兄がいるので、四人兄弟です。', 'Saya mempunyai dua saudara perempuan dan satu saudara laki-laki, jadi kami adalah saudara berempat.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7527_ruang, '社長室をノックした。', 'Saya mengetuk kantor presiden.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7527_ruang, '今日、空室はありますか？', 'Apakah ada kamar kosong hari ini?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7527_ruang, '死体があったのは、このホテルの一室だった。', 'Mayatnya ada di kamar hotel ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7566_padang_rumput, '草地の上に大きな木があった。', 'Ada pohon besar di padang rumput.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7566_padang_rumput, 'アイルランドにはたくさんの草地があります。', 'Irlandia memiliki banyak padang rumput.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7566_padang_rumput, 'どこか草地でピクニックしませんか？', 'Apakah Anda ingin piknik di padang rumput di suatu tempat?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7618_raja, '今のイギリスの国王はチャールズ三世です。', 'Raja Inggris saat ini adalah Charles III.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7618_raja, '日本には国王がいません。', 'Tidak ada raja di Jepang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7618_raja, '国王の前でパフォーマンスをしたことがあります。', 'Saya telah tampil di depan raja.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7619_air_raksa, '月は、水星より小さい。', 'Bulan lebih kecil dari Merkurius.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7619_air_raksa, '水星には大気がありません。', 'Merkurius tidak memiliki atmosfer.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7619_air_raksa, '山の上から西の方に水星を見ることができます。', 'Anda bisa melihat Merkurius di barat dari puncak gunung.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7620_venus, 'あそこに見えるのが、金星です。', 'Apa yang Anda lihat di sana adalah Venus.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7620_venus, '夜の空に明るい金星が見える。', 'Anda dapat melihat Venus yang cerah di langit malam.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7620_venus, '金星は、日の出前の東の空、または日が入った後の西の空に見ることが出来ます。', 'Venus dapat dilihat di timur sebelum matahari terbit dan langit barat setelah matahari terbenam.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7671_untuk_tumbuh, 'この木にはキノコが生える。', 'Jamur tumbuh di pohon ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7671_untuk_tumbuh, 'サンタクロースには白いヒゲが生えています。', 'Santa Claus memiliki janggut putih.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7671_untuk_tumbuh, 'オレゴン州には、たくさんの木が生えています。', 'Ada banyak pohon yang tumbuh di negara bagian Oregon.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7673_saturnus, '土星は大きいです。', 'Saturnus itu besar.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7673_saturnus, 'どれが土星か、分かりますか。', 'Tahukah Anda yang mana Saturnus?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7673_saturnus, '土星にはどうやって行けばいいですか？', 'Bagaimana cara menuju Saturnus?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7674_energi, 'この町は、とても活気があります。', 'Kota ini sangat ramai.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7674_energi, 'マイケルのおかげで、会社に活気が生まれた。', 'Berkat Michael, keaktifan dibawa ke perusahaan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7674_energi, 'ファーマーズマーケットはいつも活気にあふれています。', 'Pasar petani selalu penuh dengan kehidupan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7732_bawah_tanah, '地中には、たくさんの虫がいます。', 'Ada banyak serangga di bawah tanah.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7732_bawah_tanah, '地中にはレーダーがある。', 'Ada radar di bawah tanah.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7732_bawah_tanah, 'お父さん、地中の生活はどうですか？', 'Ayah, bagaimana kehidupanmu di bawah tanah?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7733_memanfaatkan, '雨の水を活用してアヒルのためのプールを作りたい。', 'Saya ingin memanfaatkan air hujan untuk membuat kolam bebek.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7733_memanfaatkan, 'このデータをうまく活用して、何かできないかな。', 'Saya tidak tahu apakah saya dapat memanfaatkan data ini dengan baik.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7733_memanfaatkan, '「出る」の活用のエクササイズをしましょう。', 'Mari kita lakukan beberapa latihan untuk mengkonjugasikan 出る.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8697_untuk_mengetahui, '父は今日、そのニュースを知る。', 'Ayah saya akan mengetahui berita hari ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8697_untuk_mengetahui, '今回のパーティには知らない人が多かった。', 'Kali ini ada banyak orang yang tidak saya kenal di pesta itu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8697_untuk_mengetahui, 'このコアラ、人工ロボットだって知ってた？', 'Tahukah kamu kalau koala ini merupakan robot buatan?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8737_pergelangan_tangan, '手首にブレスレットをしています。', 'Saya memiliki gelang di pergelangan tangan saya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8737_pergelangan_tangan, 'これは、手首のストレッチです。', 'Ini adalah peregangan pergelangan tangan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8737_pergelangan_tangan, '私の主人は手首にタトゥーが有ります。', 'Suamiku punya tato di pergelangan tangannya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9084_pergi_ke_kantor, '今日は一人で出社ですか？', 'Apakah Anda pergi ke kantor sendirian hari ini?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9084_pergi_ke_kantor, 'すみません、社長はまだ出社してないんです。', 'Maaf, presiden belum masuk kerja.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9084_pergi_ke_kantor, '出社する前にカフェに行きました。', 'Saya pergi ke kafe sebelum berangkat kerja.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9143_mantan_mitra, '元パートナーからテキストがきた。', 'Aku mendapat pesan dari mantan pasanganku.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9143_mantan_mitra, 'あ、それ、元パートナーのネックレスといっしょだ。', 'Oh, sama saja dengan kalung mantan pasanganku.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9143_mantan_mitra, 'これは、ふじ山で元パートナーとスキーをしたときのビデオだよ。', 'Ini adalah video saya bermain ski dengan mantan pasangan saya di Gunung Fuji.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9151_batu_kecil, 'オレンジ色の石ころが川に入った。', 'Sebuah batu oranye memasuki sungai.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9151_batu_kecil, 'このビーチ、石ころがたくさんあるね。', 'Ada banyak kerikil di pantai ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9151_batu_kecil, '入り口の前は石ころが多いです。', 'Ada banyak kerikil di depan pintu masuk.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9155_orang_lain, 'いいよ、他の人にしてもらうから！', 'Baiklah, aku akan meminta orang lain melakukannya!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9155_orang_lain, 'え、いらないの？じゃあ、他の人にあげるね。', 'Oh, kamu tidak menginginkannya? Lalu aku akan memberikannya kepada orang lain.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9155_orang_lain, 'へー、それで他の人をだましたんだ！', 'Hah, jadi kamu menipu orang lain!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9166_sepuluh_juta, '一千万ドルがほしいなぁ。', 'Saya berharap saya punya sepuluh juta dolar.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9166_sepuluh_juta, 'ロトで一千万円ゲットしたんだ！', 'Saya memenangkan sepuluh juta yen dalam lotere!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9166_sepuluh_juta, 'コンサートには一千万人の人がきました。', 'Sepuluh juta orang datang ke konser tersebut.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9282_cukup, 'あなたは十分がんばりました！', 'Anda telah bekerja cukup keras!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9282_cukup, 'ここには十分なスペースがありません。', 'Tidak ada cukup ruang di sini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9282_cukup, '十分に考えたんですか？', 'Apakah Anda sudah cukup memikirkan hal ini?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9353_eropa_barat, '私は西ヨーロッパに行きたいです。', 'Saya ingin pergi ke Eropa Barat.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9353_eropa_barat, '西ヨーロッパではチーズやワインが有名です。', 'Keju dan anggur terkenal di Eropa Barat.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9353_eropa_barat, '西ヨーロッパでパンを食べすぎて、５キロも太りました。', 'Saya makan begitu banyak roti di Eropa Barat sehingga berat badan saya bertambah 5 kilogram.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9353_eropa_barat, 'へえ〜西ヨーロッパですか。いいですね！どこの国に行ったんですか。', 'Wow, Eropa Barat? Itu bagus! Negara mana saja yang pernah Anda kunjungi?');

  -- 4. PREREQUISITES
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_607_mengubah, r_311_mengubah);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_608_bumi, id FROM items WHERE type = 'radical' AND (slug = '17' OR id = '17') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_608_bumi, id FROM items WHERE type = 'radical' AND (slug = '77' OR id = '77') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_609_keduanya, id FROM items WHERE type = 'radical' AND (slug = '1' OR id = '1') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_609_keduanya, id FROM items WHERE type = 'radical' AND (slug = '29' OR id = '29') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_609_keduanya, id FROM items WHERE type = 'radical' AND (slug = '20' OR id = '20') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_610_semua, id FROM items WHERE type = 'radical' AND (slug = '8764' OR id = '8764') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_610_semua, id FROM items WHERE type = 'radical' AND (slug = '48' OR id = '48') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_611_di_sana, id FROM items WHERE type = 'radical' AND (slug = '3' OR id = '3') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_611_di_sana, id FROM items WHERE type = 'radical' AND (slug = '121' OR id = '121') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_612_santai, id FROM items WHERE type = 'radical' AND (slug = '78' OR id = '78') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_612_santai, id FROM items WHERE type = 'radical' AND (slug = '19' OR id = '19') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_613_negara, id FROM items WHERE type = 'radical' AND (slug = '3' OR id = '3') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_613_negara, id FROM items WHERE type = 'radical' AND (slug = '21' OR id = '21') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_614_musik, id FROM items WHERE type = 'radical' AND (slug = '16' OR id = '16') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_614_musik, id FROM items WHERE type = 'radical' AND (slug = '106' OR id = '106') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_615_memiliki, id FROM items WHERE type = 'radical' AND (slug = '26' OR id = '26') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_615_memiliki, id FROM items WHERE type = 'radical' AND (slug = '43' OR id = '43') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_617_kematian, r_132_yakuza);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_617_kematian, id FROM items WHERE type = 'radical' AND (slug = '57' OR id = '57') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_618_domba, r_136_domba);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_619_darah, r_137_darah);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_621_negara, id FROM items WHERE type = 'radical' AND (slug = '16' OR id = '16') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_621_negara, id FROM items WHERE type = 'radical' AND (slug = '48' OR id = '48') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_621_negara, id FROM items WHERE type = 'radical' AND (slug = '3' OR id = '3') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_623_adik, id FROM items WHERE type = 'radical' AND (slug = '19' OR id = '19') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_623_adik, r_134_jet);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_624_kakak, id FROM items WHERE type = 'radical' AND (slug = '19' OR id = '19') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_624_kakak, r_267_kota);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_625_toko, id FROM items WHERE type = 'radical' AND (slug = '62' OR id = '62') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_625_toko, r_143_harta_benda);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_627_timur, r_224_timur);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_628_berjalan, id FROM items WHERE type = 'radical' AND (slug = '44' OR id = '44') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_628_berjalan, id FROM items WHERE type = 'radical' AND (slug = '35' OR id = '35') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_628_berjalan, id FROM items WHERE type = 'radical' AND (slug = '5' OR id = '5') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_631_tahu, id FROM items WHERE type = 'radical' AND (slug = '72' OR id = '72') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_631_tahu, id FROM items WHERE type = 'radical' AND (slug = '16' OR id = '16') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_632_panjang, r_138_panjang);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_633_depan, id FROM items WHERE type = 'radical' AND (slug = '8767' OR id = '8767') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_633_depan, id FROM items WHERE type = 'radical' AND (slug = '1' OR id = '1') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_633_depan, id FROM items WHERE type = 'radical' AND (slug = '43' OR id = '43') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_633_depan, r_128_pisau);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_635_ruang, id FROM items WHERE type = 'radical' AND (slug = '78' OR id = '78') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_635_ruang, id FROM items WHERE type = 'radical' AND (slug = '1' OR id = '1') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_635_ruang, id FROM items WHERE type = 'radical' AND (slug = '140' OR id = '140') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_635_ruang, id FROM items WHERE type = 'radical' AND (slug = '17' OR id = '17') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_636_di_belakang, id FROM items WHERE type = 'radical' AND (slug = '99' OR id = '99') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_636_di_belakang, id FROM items WHERE type = 'radical' AND (slug = '87' OR id = '87') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_636_di_belakang, id FROM items WHERE type = 'radical' AND (slug = '60' OR id = '60') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_637_memikirkan, id FROM items WHERE type = 'radical' AND (slug = '51' OR id = '51') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_637_memikirkan, id FROM items WHERE type = 'radical' AND (slug = '65' OR id = '65') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_638_bintang, id FROM items WHERE type = 'radical' AND (slug = '22' OR id = '22') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_638_bintang, id FROM items WHERE type = 'radical' AND (slug = '210' OR id = '210') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_639_hidup, id FROM items WHERE type = 'radical' AND (slug = '103' OR id = '103') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_639_hidup, r_174_lidah);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_640_laut, id FROM items WHERE type = 'radical' AND (slug = '103' OR id = '103') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_640_laut, id FROM items WHERE type = 'radical' AND (slug = '8762' OR id = '8762') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_640_laut, id FROM items WHERE type = 'radical' AND (slug = '107' OR id = '107') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_641_titik, r_143_harta_benda);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_641_titik, r_131_mendidihkan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_642_sains, r_135_bulir);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_642_sains, r_129_sendok);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_643_teh, id FROM items WHERE type = 'radical' AND (slug = '90' OR id = '90') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_643_teh, id FROM items WHERE type = 'radical' AND (slug = '8764' OR id = '8764') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_643_teh, r_130_malaikat);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_644_makan, r_139_makan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_645_leher, r_156_leher);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_660_rumah, r_398_rumah);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_851_kematian, r_212_kematian);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_923_saya, r_135_bulir);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_923_saya, id FROM items WHERE type = 'radical' AND (slug = '140' OR id = '140') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_966_mengambil, id FROM items WHERE type = 'radical' AND (slug = '88' OR id = '88') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_966_mengambil, id FROM items WHERE type = 'radical' AND (slug = '30' OR id = '30') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_2510_seribu, id FROM items WHERE type = 'kanji' AND (slug = '440' OR id = '440') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_2510_seribu, id FROM items WHERE type = 'kanji' AND (slug = '460' OR id = '460') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_2596_asal, id FROM items WHERE type = 'kanji' AND (slug = '498' OR id = '498') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_2601_untuk_dipotong, id FROM items WHERE type = 'kanji' AND (slug = '502' OR id = '502') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_2661_huruf_besar, id FROM items WHERE type = 'kanji' AND (slug = '453' OR id = '453') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_2661_huruf_besar, id FROM items WHERE type = 'kanji' AND (slug = '475' OR id = '475') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_2661_huruf_besar, id FROM items WHERE type = 'kanji' AND (slug = '545' OR id = '545') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_2688_bisikan_di_telinga, id FROM items WHERE type = 'kanji' AND (slug = '552' OR id = '552') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_2688_bisikan_di_telinga, id FROM items WHERE type = 'kanji' AND (slug = '536' OR id = '536') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_2717_tidak_dapat_ditolong, id FROM items WHERE type = 'kanji' AND (slug = '564' OR id = '564') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_2717_tidak_dapat_ditolong, id FROM items WHERE type = 'kanji' AND (slug = '510' OR id = '510') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_2722_substitusi, id FROM items WHERE type = 'kanji' AND (slug = '530' OR id = '530') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_2722_substitusi, id FROM items WHERE type = 'kanji' AND (slug = '525' OR id = '525') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_2724_berada_dalam_sebuah_foto, id FROM items WHERE type = 'kanji' AND (slug = '531' OR id = '531') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_2776_untuk_melakukan_sesuatu, id FROM items WHERE type = 'kanji' AND (slug = '580' OR id = '580') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_2846_budaya, id FROM items WHERE type = 'kanji' AND (slug = '475' OR id = '475') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2846_budaya, k_607_mengubah);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2848_bawah_tanah, k_608_bumi);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_2848_bawah_tanah, id FROM items WHERE type = 'kanji' AND (slug = '451' OR id = '451') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_2849_tanah, id FROM items WHERE type = 'kanji' AND (slug = '459' OR id = '459') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2849_tanah, k_608_bumi);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2850_peta, k_608_bumi);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_2850_peta, id FROM items WHERE type = 'kanji' AND (slug = '585' OR id = '585') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2851_kedua_tangan, k_609_keduanya);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_2851_kedua_tangan, id FROM items WHERE type = 'kanji' AND (slug = '474' OR id = '474') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2852_kedua_hari, k_609_keduanya);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_2852_kedua_hari, id FROM items WHERE type = 'kanji' AND (slug = '476' OR id = '476') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2853_keduanya, k_609_keduanya);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_2853_keduanya, id FROM items WHERE type = 'kanji' AND (slug = '510' OR id = '510') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2854_semua, k_610_semua);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2855_upaya_penuh, k_610_semua);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_2855_upaya_penuh, id FROM items WHERE type = 'kanji' AND (slug = '447' OR id = '447') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2856_seluruh_jepang, k_610_semua);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_2856_seluruh_jepang, id FROM items WHERE type = 'kanji' AND (slug = '476' OR id = '476') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_2856_seluruh_jepang, id FROM items WHERE type = 'kanji' AND (slug = '487' OR id = '487') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2857_keamanan, k_612_santai);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2857_keamanan, k_610_semua);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_2858_arah, id FROM items WHERE type = 'kanji' AND (slug = '510' OR id = '510') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2858_arah, k_611_di_sana);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2859_murah, k_612_santai);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2860_lega, k_612_santai);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_2860_lega, id FROM items WHERE type = 'kanji' AND (slug = '508' OR id = '508') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_2861_rasa_gelisah, id FROM items WHERE type = 'kanji' AND (slug = '563' OR id = '563') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2861_rasa_gelisah, k_612_santai);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_2862_perdamaian, id FROM items WHERE type = 'kanji' AND (slug = '535' OR id = '535') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2862_perdamaian, k_612_santai);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2863_negara, k_613_negara);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_2864_kyuushuu, id FROM items WHERE type = 'kanji' AND (slug = '442' OR id = '442') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2864_kyuushuu, k_613_negara);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_2865_honshuu, id FROM items WHERE type = 'kanji' AND (slug = '487' OR id = '487') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2865_honshuu, k_613_negara);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2866_lagu, k_614_musik);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_2867_musik_terkenal, id FROM items WHERE type = 'kanji' AND (slug = '544' OR id = '544') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2867_musik_terkenal, k_614_musik);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2868_untuk_memiliki, k_615_memiliki);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2869_terkenal, k_615_memiliki);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_2869_terkenal, id FROM items WHERE type = 'kanji' AND (slug = '544' OR id = '544') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2874_untuk_mati, k_617_kematian);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2875_mayat, k_617_kematian);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_2875_mayat, id FROM items WHERE type = 'kanji' AND (slug = '583' OR id = '583') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2876_kematian, k_617_kematian);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2876_kematian, k_851_kematian);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2877_domba, k_618_domba);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2878_wol, k_618_domba);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_2878_wol, id FROM items WHERE type = 'kanji' AND (slug = '513' OR id = '513') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2879_darah, k_619_darah);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_2880_perdarahan, id FROM items WHERE type = 'kanji' AND (slug = '483' OR id = '483') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2880_perdarahan, k_619_darah);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2881_negara, k_621_negara);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_2882_cina, id FROM items WHERE type = 'kanji' AND (slug = '469' OR id = '469') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2882_cina, k_621_negara);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_2883_surga, id FROM items WHERE type = 'kanji' AND (slug = '473' OR id = '473') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2883_surga, k_621_negara);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2884_nasional, k_610_semua);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2884_nasional, k_621_negara);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_2885_shikoku, id FROM items WHERE type = 'kanji' AND (slug = '485' OR id = '485') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2885_shikoku, k_621_negara);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_2886_negara_asing, id FROM items WHERE type = 'kanji' AND (slug = '521' OR id = '521') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2886_negara_asing, k_621_negara);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_2887_orang_asing, id FROM items WHERE type = 'kanji' AND (slug = '521' OR id = '521') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2887_orang_asing, k_621_negara);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_2887_orang_asing, id FROM items WHERE type = 'kanji' AND (slug = '444' OR id = '444') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_2888_amerika_serikat, id FROM items WHERE type = 'kanji' AND (slug = '574' OR id = '574') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2888_amerika_serikat, k_621_negara);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2891_saudara_perempuan, k_624_kakak);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2891_saudara_perempuan, k_623_adik);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2892_adik, k_623_adik);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2893_kakak, k_624_kakak);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2894_toko, k_625_toko);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2901_berjalan, k_628_berjalan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2906_panjang, k_632_panjang);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_2907_presiden_perusahaan, id FROM items WHERE type = 'kanji' AND (slug = '591' OR id = '591') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2907_presiden_perusahaan, k_632_panjang);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2908_depan, k_633_depan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_2909_pagi, id FROM items WHERE type = 'kanji' AND (slug = '503' OR id = '503') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2909_pagi, k_633_depan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2911_di_belakang, k_636_di_belakang);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2912_setelah, k_636_di_belakang);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_2913_pm, id FROM items WHERE type = 'kanji' AND (slug = '503' OR id = '503') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2913_pm, k_636_di_belakang);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2914_untuk_berpikir, k_637_memikirkan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_2916_kehidupan, id FROM items WHERE type = 'kanji' AND (slug = '850' OR id = '850') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2916_kehidupan, k_639_hidup);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2918_luar_negeri, k_640_laut);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_2918_luar_negeri, id FROM items WHERE type = 'kanji' AND (slug = '521' OR id = '521') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2919_titik, k_641_titik);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2920_sains, k_642_sains);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_2920_sains, id FROM items WHERE type = 'kanji' AND (slug = '599' OR id = '599') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2921_teh, k_643_teh);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2922_cokelat, k_643_teh);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_2922_cokelat, id FROM items WHERE type = 'kanji' AND (slug = '579' OR id = '579') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2923_untuk_makan, k_644_makan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2924_leher, k_645_leher);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_2925_pergelangan_kaki, id FROM items WHERE type = 'kanji' AND (slug = '561' OR id = '561') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2925_pergelangan_kaki, k_645_leher);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2926_untuk_dipecat, k_645_leher);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2954_rumah, k_660_rumah);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3237_empat_puluh_dua, id FROM items WHERE type = 'kanji' AND (slug = '485' OR id = '485') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3237_empat_puluh_dua, id FROM items WHERE type = 'kanji' AND (slug = '448' OR id = '448') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3237_empat_puluh_dua, id FROM items WHERE type = 'kanji' AND (slug = '441' OR id = '441') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3406_untuk_meninggal, k_851_kematian);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3411_huruf_kecil, id FROM items WHERE type = 'kanji' AND (slug = '463' OR id = '463') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3411_huruf_kecil, id FROM items WHERE type = 'kanji' AND (slug = '475' OR id = '475') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3411_huruf_kecil, id FROM items WHERE type = 'kanji' AND (slug = '545' OR id = '545') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3415_liburan_musim_dingin, id FROM items WHERE type = 'kanji' AND (slug = '516' OR id = '516') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3415_liburan_musim_dingin, id FROM items WHERE type = 'kanji' AND (slug = '542' OR id = '542') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3418_untuk_mampu_melakukan, id FROM items WHERE type = 'kanji' AND (slug = '483' OR id = '483') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3418_untuk_mampu_melakukan, id FROM items WHERE type = 'kanji' AND (slug = '590' OR id = '590') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3419_dialek, id FROM items WHERE type = 'kanji' AND (slug = '510' OR id = '510') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3419_dialek, id FROM items WHERE type = 'kanji' AND (slug = '593' OR id = '593') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3439_pembicara_cepat, id FROM items WHERE type = 'kanji' AND (slug = '547' OR id = '547') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3439_pembicara_cepat, id FROM items WHERE type = 'kanji' AND (slug = '452' OR id = '452') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3440_tidak_cukup, id FROM items WHERE type = 'kanji' AND (slug = '561' OR id = '561') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3441_lebih_tua, id FROM items WHERE type = 'kanji' AND (slug = '546' OR id = '546') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3441_lebih_tua, id FROM items WHERE type = 'kanji' AND (slug = '450' OR id = '450') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3444_tahun_ini, id FROM items WHERE type = 'kanji' AND (slug = '497' OR id = '497') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3444_tahun_ini, id FROM items WHERE type = 'kanji' AND (slug = '546' OR id = '546') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3446_lebih_muda, id FROM items WHERE type = 'kanji' AND (slug = '546' OR id = '546') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3446_lebih_muda, id FROM items WHERE type = 'kanji' AND (slug = '451' OR id = '451') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3458_pintu_keluar_timur, k_627_timur);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3458_pintu_keluar_timur, id FROM items WHERE type = 'kanji' AND (slug = '452' OR id = '452') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3496_untuk_berbalik_ke_arah, k_611_di_sana);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3522_timur, k_627_timur);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3714_saya, k_923_saya);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3715_kehidupan_pribadi, k_923_saya);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3715_kehidupan_pribadi, id FROM items WHERE type = 'kanji' AND (slug = '850' OR id = '850') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3715_kehidupan_pribadi, k_639_hidup);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3716_pribadi, k_923_saya);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3716_pribadi, id FROM items WHERE type = 'kanji' AND (slug = '494' OR id = '494') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3817_untuk_mengambil, k_966_mengambil);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4378_untuk_menyebar, id FROM items WHERE type = 'kanji' AND (slug = '523' OR id = '523') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4971_babi, id FROM items WHERE type = 'kanji' AND (slug = '1309' OR id = '1309') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4971_babi, id FROM items WHERE type = 'kanji' AND (slug = '577' OR id = '577') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5633_harta_nasional, k_621_negara);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5633_harta_nasional, id FROM items WHERE type = 'kanji' AND (slug = '1520' OR id = '1520') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5846_lotere, id FROM items WHERE type = 'kanji' AND (slug = '1520' OR id = '1520') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_7451_satu_langkah, id FROM items WHERE type = 'kanji' AND (slug = '440' OR id = '440') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7451_satu_langkah, k_628_berjalan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_7456_tiga_ratus, id FROM items WHERE type = 'kanji' AND (slug = '449' OR id = '449') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_7456_tiga_ratus, id FROM items WHERE type = 'kanji' AND (slug = '549' OR id = '549') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_7477_untuk_menambahkan_sesuatu, id FROM items WHERE type = 'kanji' AND (slug = '561' OR id = '561') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_7482_kendaraan, id FROM items WHERE type = 'kanji' AND (slug = '562' OR id = '562') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7482_kendaraan, k_609_keduanya);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_7524_lebih_awal, id FROM items WHERE type = 'kanji' AND (slug = '547' OR id = '547') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7525_kematian, k_617_kematian);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7526_kakak, k_624_kakak);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7527_ruang, k_635_ruang);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_7566_padang_rumput, id FROM items WHERE type = 'kanji' AND (slug = '605' OR id = '605') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7566_padang_rumput, k_608_bumi);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7618_raja, k_621_negara);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_7618_raja, id FROM items WHERE type = 'kanji' AND (slug = '482' OR id = '482') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_7619_air_raksa, id FROM items WHERE type = 'kanji' AND (slug = '479' OR id = '479') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7619_air_raksa, k_638_bintang);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_7620_venus, id FROM items WHERE type = 'kanji' AND (slug = '602' OR id = '602') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7620_venus, k_638_bintang);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_7671_untuk_tumbuh, id FROM items WHERE type = 'kanji' AND (slug = '850' OR id = '850') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_7673_saturnus, id FROM items WHERE type = 'kanji' AND (slug = '459' OR id = '459') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7673_saturnus, k_638_bintang);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7674_energi, k_639_hidup);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_7674_energi, id FROM items WHERE type = 'kanji' AND (slug = '548' OR id = '548') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7732_bawah_tanah, k_608_bumi);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_7732_bawah_tanah, id FROM items WHERE type = 'kanji' AND (slug = '469' OR id = '469') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7733_memanfaatkan, k_639_hidup);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_7733_memanfaatkan, id FROM items WHERE type = 'kanji' AND (slug = '525' OR id = '525') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8697_untuk_mengetahui, k_631_tahu);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_8737_pergelangan_tangan, id FROM items WHERE type = 'kanji' AND (slug = '474' OR id = '474') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8737_pergelangan_tangan, k_645_leher);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_9084_pergi_ke_kantor, id FROM items WHERE type = 'kanji' AND (slug = '483' OR id = '483') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_9084_pergi_ke_kantor, id FROM items WHERE type = 'kanji' AND (slug = '591' OR id = '591') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_9143_mantan_mitra, id FROM items WHERE type = 'kanji' AND (slug = '498' OR id = '498') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_9151_batu_kecil, id FROM items WHERE type = 'kanji' AND (slug = '493' OR id = '493') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_9155_orang_lain, id FROM items WHERE type = 'kanji' AND (slug = '529' OR id = '529') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_9155_orang_lain, id FROM items WHERE type = 'kanji' AND (slug = '444' OR id = '444') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_9166_sepuluh_juta, id FROM items WHERE type = 'kanji' AND (slug = '440' OR id = '440') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_9166_sepuluh_juta, id FROM items WHERE type = 'kanji' AND (slug = '460' OR id = '460') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_9166_sepuluh_juta, id FROM items WHERE type = 'kanji' AND (slug = '495' OR id = '495') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_9282_cukup, id FROM items WHERE type = 'kanji' AND (slug = '448' OR id = '448') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_9282_cukup, id FROM items WHERE type = 'kanji' AND (slug = '501' OR id = '501') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_9353_eropa_barat, id FROM items WHERE type = 'kanji' AND (slug = '581' OR id = '581') LIMIT 1;

END $$;
