-- ====================================================
-- KaniGani — Seed Data Level 1 (v2, relasional)
-- Auto-generated with Indonesian Slugs
-- ====================================================

DO $$
DECLARE
  -- ============ RADICAL IDs (Level 1) ============
  r_1_tanah UUID; r_2_sirip UUID; r_3_menjatuhkan UUID; r_4_tujuh UUID; r_5_menggeser UUID; r_6_duri UUID; r_7_dua UUID; r_8_tutup UUID; r_9_orang UUID; r_10_kaki UUID; r_11_sembilan UUID; r_12_memasuki UUID; r_13_kekuatan UUID; r_14_penjara UUID; r_15_menyeberang UUID; r_16_mulut UUID; r_18_besar UUID; r_19_wanita UUID; r_20_gunung UUID; r_21_sungai UUID; r_22_matahari UUID; r_23_pohon UUID; r_25_konstruksi UUID; r_8761_tongkat UUID; r_8762_pistol UUID;

  -- ============ KANJI IDs (Level 1) ============
  k_440_satu UUID; k_441_dua UUID; k_442_sembilan UUID; k_443_tujuh UUID; k_444_orang UUID; k_445_memasuki UUID; k_446_delapan UUID; k_447_kekuatan UUID; k_448_sepuluh UUID; k_449_tiga UUID; k_450_di_atas UUID; k_451_di_bawah UUID; k_452_mulut UUID; k_453_besar UUID; k_454_wanita UUID; k_455_gunung UUID; k_456_sungai UUID; k_457_konstruksi UUID;

  -- ============ VOCABULARY IDs (Level 1) ============
  v_2467_satu UUID; v_2468_satu_hal UUID; v_2469_tujuh UUID; v_2470_tujuh_hal UUID; v_2471_sembilan UUID; v_2472_sembilan_hal UUID; v_2473_dua UUID; v_2474_dua_hal UUID; v_2475_orang UUID; v_2476_dua_orang UUID; v_2477_sendiri UUID; v_2480_untuk_masuk UUID; v_2482_delapan UUID; v_2483_delapan_hal UUID; v_2484_kekuatan UUID; v_2485_sepuluh UUID; v_2486_tiga UUID; v_2487_tiga_hal UUID; v_2488_tiga_orang UUID; v_2489_di_atas UUID; v_2490_untuk_mengangkat_sesuatu UUID; v_2493_di_bawah UUID; v_2495_untuk_menurunkan_sesuatu UUID; v_2496_tolong_berikan_saya UUID; v_2497_mulut UUID; v_2498_pintu_masuk UUID; v_2499_besar UUID; v_2500_ukuran UUID; v_2501_besar UUID; v_2502_dewasa UUID; v_2503_wanita UUID; v_2504_gunung UUID; v_2505_gunung_fuji UUID; v_2506_sungai UUID; v_3402_populasi UUID; v_7560_palsu UUID; v_8958_dengan_kekuatan_semua_orang UUID;

BEGIN

  DELETE FROM items WHERE level = 1;

  -- 1. RADICALS
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '一', 'tanah', 1, 1, 'Radikal ini terdiri dari satu guratan horizontal. Berapakah pukulan horizontal tunggal terbesar? Itulah <radikal>landasan</radikal>. Lihatlah ke bawah, lihat ke arah radikal ini, sekarang lihatlah ke bawah lagi. Sama saja kan?')
    RETURNING id INTO r_1_tanah;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', 'ハ', 'sirip', 1, 2, 'Ini terlihat seperti <radical>sirip</radical>. Apa yang dilakukan sepasang sirip tanpa tubuh di sini?! Beberapa ikan pasti meninggalkannya di sini secara tidak sengaja. Pasti mereka benar-benar kehilangan sirip ini saat ini.')
    RETURNING id INTO r_2_sirip;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '丶', 'menjatuhkan', 1, 3, 'Radikal kecil ini adalah <radikal>tetesan</radikal>, mungkin air atau cairan lainnya. Perhatikan bagaimana itu hanya satu tetes? Terkadang radikal dan kanji memiliki lebih dari satu tetes di dalamnya, tapi jangan biarkan hal itu membuat Anda putus asa.')
    RETURNING id INTO r_3_menjatuhkan;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '七', 'tujuh', 1, 4, 'Seperti apa sikap radikal ini? Hmm, tidak banyak. Bagaimana jika Anda membalikkannya? Sekarang apakah terlihat seperti angka 7 dengan garis melewatinya? Cukup dekat untuk membantu Anda mengingat bahwa radikal ini adalah <radikal>tujuh</radikal>, bukan? Ingat saja, ketika Anda melihat radikal ini, balikkan dan lihat seperti apa angkanya. Jika Anda bisa melakukan itu, Anda bisa mengingat maknanya!')
    RETURNING id INTO r_4_tujuh;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '丿', 'menggeser', 1, 5, 'Tutup mata Anda dan bayangkan Anda menjadi anak-anak lagi. Sekarang buka dan... lihat! Itu adalah <radikal>slide</radikal>! Bayangkan Anda meluncur ke bawah slide ini berulang kali, bersenang-senang. Imajinasi + emosi menghasilkan hafalan yang baik!')
    RETURNING id INTO r_5_menggeser;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '亅', 'duri', 1, 6, 'Radikal ini bentuknya seperti <radikal>duri</radikal>. Mirip seperti duri yang Anda lihat di kail pancing berduri. Bayangkan benda itu tersangkut di lengan Anda atau semacamnya. Tidak terlalu menyenangkan. Katakan dengan lantang, "Oh sial, ada duri yang tertancap di tubuhku!" Baiklah, santai saja, ini hanya sedikit duri.')
    RETURNING id INTO r_6_duri;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '二', 'dua', 1, 7, 'Satu baris ditambah baris lainnya sama dengan <radikal>dua</radikal> baris. Radikal ini melambangkan angka dua. Cukup sederhana, bukan? Bisakah kamu menebak seperti apa ketiganya? Saya yakin Anda bisa...')
    RETURNING id INTO r_7_dua;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '亠', 'tutup', 1, 8, 'Ini terlihat seperti sesuatu yang Anda taruh di ketel atau panci, bukan? Bahkan ada pegangan kecil untuk memastikan Anda tidak terbakar. Ini semacam <radikal>penutup</radikal>.')
    RETURNING id INTO r_8_tutup;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '人', 'orang', 1, 9, 'Ini adalah <radikal>orang</radikal>. Mereka berdiri dengan tangan di bawah di sisi tubuh dan kaki terentang, sehingga membuat mereka tampak seperti batang tubuh dengan sepasang kaki. Bayangkan 人 menyoroti sifat bipedal manusia. Berjalan dengan dua kaki? Mungkin seseorang.')
    RETURNING id INTO r_9_orang;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', 'ト', 'kaki', 1, 10, 'Bentuk radikal ini terlihat seperti <radical>jari kaki</radikal>. Lihat jari kaki aneh yang terlepas dari sampingnya? Ini juga terlihat seperti karakter katakana ト (to), yang terdengar seperti kata "toe". Jadi kapan pun Anda melihat ト, pikirkan saja.')
    RETURNING id INTO r_10_kaki;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '九', 'sembilan', 1, 11, 'Jika Anda melihat radikal ini dengan cara yang benar, Anda akan melihat bahwa ini terlihat seperti huruf "n" dan "i" ("i" berasal dari guratan kecil di sisi kanan). Huruf "n" dan "i" mulai dieja apa? Wah, kata <radikal>sembilan</radikal>.')
    RETURNING id INTO r_11_sembilan;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '入', 'memasuki', 1, 12, 'Hati-Hati! Ini bukan orangnya radikal, tapi hal lain. Apa bedanya? Sisi kanan lebih panjang dari kiri. Radikal ini juga memiliki bagian tambahan yang menonjol di bagian atas. Lihat itu? Itu terlihat seperti seseorang yang menundukkan kepalanya untuk masuk ke dalam tenda atau semacamnya. Itu sebabnya radikal ini <radikal>masuk</radikal>.')
    RETURNING id INTO r_12_memasuki;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '力', 'kekuatan', 1, 13, 'Bayangkan seorang pria melenturkan lengannya ke bawah untuk memamerkan lengannya yang dipompa steroid. Ini sangat besar. Ini penuh dengan <radikal>kekuatan</radikal>. RRRRWWWRRR!!')
    RETURNING id INTO r_13_kekuatan;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '勹', 'penjara', 1, 14, 'Ini terlihat seperti semacam kandang — itulah mengapa ini disebut <radikal>penjara</radikal>. Bayangkan seorang tahanan kecil meringkuk di dalam, menatap ke luar angkasa, yakin sepenuhnya bahwa mereka terjebak selamanya. Ironisnya penjara ini justru terbuka lebar. Mereka begitu terpikat oleh rasa mengasihani diri sendiri sehingga mereka tidak menyadari bahwa mereka telah bebas untuk pergi selama ini.')
    RETURNING id INTO r_14_penjara;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '十', 'menyeberang', 1, 15, 'Radikal ini tampak seperti <radikal>silang</radikal>. Maksudku, lihat saja. Dua batang saling bersilangan = sebuah salib!')
    RETURNING id INTO r_15_menyeberang;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '口', 'mulut', 1, 16, 'Lubang persegi yang besar dan menganga melambangkan seseorang yang membuka <radikal>mulut</radikal> raksasanya untuk memberi tahu Anda sesuatu yang bodoh.')
    RETURNING id INTO r_16_mulut;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '大', 'besar', 1, 17, 'Radikal ini terlihat seperti figur tongkat—lebih khusus lagi, seorang pria yang sangat <radikal>besar</radikal> dengan tangan terentang bagus dan besar. Kalau melihat radikal ini, berpikirlah besar saja, karena orang ini BESAR banget!')
    RETURNING id INTO r_18_besar;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '女', 'wanita', 1, 18, 'Radikal ini tampak seperti <radikal>wanita</radikal> yang membungkuk hormat. Cara lain untuk membayangkannya adalah dua huruf X yang bertumpuk, karena wanita umumnya memiliki kromosom XX. Itu sebabnya inilah wanita yang radikal.')
    RETURNING id INTO r_19_wanita;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '山', 'gunung', 1, 19, 'Ini adalah <radikal>gunung</radikal>. Lihat puncak besar di tengah dan yang lebih kecil di kedua sisinya? Ini benar-benar terlihat seperti gunung.')
    RETURNING id INTO r_20_gunung;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '川', 'sungai', 1, 20, 'Radikal ini sudah tampak seperti <radikal>sungai</radikal>. Lihat bagaimana garis-garis tersebut melambangkan aliran sungai? Bahkan ada sedikit kelokan di sungai ini. Jadi ketika Anda melihat radikal ini, Anda harus berpikir "sungai".')
    RETURNING id INTO r_21_sungai;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '日', 'matahari', 1, 21, 'Karena tidak ada lingkaran dalam karakter Jepang, terkadang persegi panjang atau persegi harus digunakan. Dalam hal ini, persegi panjang besar ini adalah <radical>matahari</radikal>. Garis tengahnya adalah awan yang bergerak melintasi matahari. Bayangkan saja, tapi jangan menatap matahari dan membuat mata Anda terbakar!')
    RETURNING id INTO r_22_matahari;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '木', 'pohon', 1, 22, 'Apakah Anda melihat <radical>pohon</radical> di sini? Ia memiliki cabang-cabang, dan dedaunannya turun secara diagonal, menyebar seperti pohon. Itu sebabnya radikal ini adalah sebuah pohon.')
    RETURNING id INTO r_23_pohon;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '工', 'konstruksi', 1, 23, 'Anda tahu balok baja besar yang digunakan untuk rangka bangunan besar? Ini seperti akhir dari salah satu dari itu, dan mempunyai bentuk yang sangat berbeda, sama seperti radikal ini. Balok-balok ini digunakan dalam konstruksi, itulah sebabnya kata radikal ini berarti <radikal>konstruksi</radikal>. Lucunya, Anda menggunakan balok-balok ini untuk menyusun bangunan seperti Anda akan menggunakan radikal ini untuk menyusun kanji!')
    RETURNING id INTO r_25_konstruksi;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '丨', 'tongkat', 1, 24, 'Ini adalah sebuah <radikal>tongkat</radikal>, yang mencuat lurus ke atas. Bahkan terlihat seperti tongkat.')
    RETURNING id INTO r_8761_tongkat;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '𠂉', 'pistol', 1, 25, 'Ini terlihat seperti <radical>pistol</radical> yang mengarah ke kanan. Anda memiliki pegangan di sebelah kiri, dan larasnya mengarah ke kanan. Bayangkan benda itu digantung dalam kotak di dinding museum.')
    RETURNING id INTO r_8762_pistol;

  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_1_tanah, 'Tanah', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_2_sirip, 'Sirip', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_3_menjatuhkan, 'Menjatuhkan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_4_tujuh, 'Tujuh', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_5_menggeser, 'Menggeser', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_6_duri, 'Duri', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_7_dua, 'Dua', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_8_tutup, 'Tutup', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_9_orang, 'Orang', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_10_kaki, 'Kaki', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_11_sembilan, 'Sembilan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_12_memasuki, 'Memasuki', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_13_kekuatan, 'Kekuatan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_14_penjara, 'Penjara', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_15_menyeberang, 'Menyeberang', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_16_mulut, 'Mulut', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_18_besar, 'Besar', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_19_wanita, 'Wanita', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_20_gunung, 'Gunung', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_21_sungai, 'Sungai', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_22_matahari, 'Matahari', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_23_pohon, 'Pohon', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_25_konstruksi, 'Konstruksi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_8761_tongkat, 'Tongkat', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_8762_pistol, 'Pistol', true, true);

  -- 2. KANJIS
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '一', 'satu', 1, 26, 'Berbaring di <radical>tanah</radical> adalah sesuatu yang terlihat seperti tanah, angka <kanji>Satu</kanji>. Mengapa Dia berbaring? Itu telah ditembak oleh orang nomor dua. Ia tergeletak di sana, mengeluarkan darah dan sekarat. Orang nomor satu tidak akan hidup lama lagi.', 'Saat Anda duduk di samping <kanji>One</kanji>, sambil menggendongnya, Anda mulai merasakan sensasi aneh di sekujur kulit Anda. Dari lukanya keluar bubuk halus (yang jelas berasal dari peluru khusus yang digunakan untuk membunuh Seseorang) yang menyebabkan orang yang disentuhnya menjadi sangat <read>gatal</reading> (いち).')
    RETURNING id INTO k_440_satu;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '二', 'dua', 1, 27, 'Kanji <kanji>dua</kanji> dan <radikal>dua</radikal> radikal adalah hal yang sama persis. Oleh karena itu, Anda sudah mengetahui kanji untuk dua orang!', 'Bagaimana cara menghitung sampai <vocabulary>dua</vocabulary>? Cukup gunakan <reading>lutut</reading> (に) seseorang, lalu lututnya yang lain. Di sana – dua lutut!')
    RETURNING id INTO k_441_dua;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '九', 'sembilan', 1, 28, 'Bagus! Kanji ini sama dengan radikal yang bentuknya persis seperti itu (bahkan sampai ke maknanya!). Radikalnya adalah <radical>sembilan</radikal> dan kanjinya adalah <kanji>sembilan</kanji>, sehingga arti dari kanji ini sangat mudah diingat asalkan Anda mengetahui radikalnya terlebih dahulu.', 'Meskipun kanji ini memiliki dua on''yomi yang harus dipelajari, pengucapan kedua on''yomi tersebut sangat mirip, sehingga akan lebih mudah diingat.

Saat kamu berumur <kanji>sembilan</kanji> makanan favoritmu adalah <reading>coo</reading>kies (く) dan <reading>cu</reading>cumbers (きゅう). Nyam nyam!')
    RETURNING id INTO k_442_sembilan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '七', 'tujuh', 1, 29, 'Beruntung bagi Anda (seperti halnya dengan banyak kanji berguratan rendah), kanji ini sama dengan kanji radikal yang telah Anda pelajari. Radikal yang menyusun kanji ini adalah <radical>tujuh</radikal> dan kanjinya (yang persis sama) juga <kanji>tujuh</kanji>. Jadi, kalau kamu tahu radikalnya, kamu pasti tahu arti kanjinya juga.', 'Anda tahu kanji ini berarti <kanji>tujuh</kanji>, jadi mari kita gunakan itu untuk mengingat bacaannya juga. <kanji>Tujuh</kanji> biasanya merupakan angka keberuntungan, tetapi kali ini tidak terlalu bagus: 

<kanji>Tujuh</kanji> persen adalah semua yang dia dapatkan dalam ujiannya setelah <reading>dia menipu</reading>ted (しち) dalam ujiannya.')
    RETURNING id INTO k_443_tujuh;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '人', 'orang', 1, 30, 'Ingat kanji versi radikal ini berarti <radikal>orang</radikal> karena terlihat seperti orang dengan tangan di bawah dan kaki terentang? Ini adalah <kanji>orang</kanji> juga!', 'Hanya satu <kanji>orang</kanji> di <reading>Nin</reading>tendo (にん) yang mengeluhkan kebijakan <reading>jean</reading> (じん) yang baru, dan orang itu adalah Anda.')
    RETURNING id INTO k_444_orang;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '入', 'memasuki', 1, 31, 'Kanji dan radikalnya sama, jadi mengingat arti kanji ini semudah memastikan Anda mengetahui radikal untuk <radical>enter</radical> terlebih dahulu! Jika Anda tahu radikalnya, Anda pasti tahu kanji ini artinya <kanji>masuk</kanji> juga.', 'Ternyata, setelah kamu <kanji>memasuki</kanji> tenda (ingat bagaimana orang radikal memasukinya?), kamu akan diberikan tenda <reading>baru</reading> (にゅう)! Mengapa? Tidak tahu, tapi hei — ini baru!')
    RETURNING id INTO k_445_memasuki;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '八', 'delapan', 1, 32, 'Ini tidak persis sama dengan radikal <radical>fins</radical>, tapi hampir sama. Kadang-kadang hal ini akan terjadi (di mana kita harus menggunakan versi asli yang sedikit "dimodifikasi secara radikal"), jadi ada baiknya untuk memahaminya sekarang, sejak dini. Dalam hal ini, kita memiliki sirip. Berapa banyak sirip? <kanji>Delapan</kanji> sirip. Bagaimana kamu tahu itu? Karena Anda menangkap empat ikan dengan masing-masing dua sirip.', 'Setelah Anda menghitung dan mencium <kanji>delapan</kanji> sirip Anda, saatnya membuangnya. Anda membuka <read>palka</reading> (はち) yang besar dan memasukkannya ke dalamnya. Di sinilah Anda menyimpan sirip Anda, selalu memasukkan delapan sirip sekaligus karena itulah yang diinginkan bos.')
    RETURNING id INTO k_446_delapan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '力', 'kekuatan', 1, 33, 'Radikal dan makna kanji ini sama. Keduanya adalah <kanji>kekuatan</kanji>.', 'Siapakah yang mempunyai kekuasaan paling besar di antara semua orang? Itu adalah <kanji>Kekuatan</kanji> Rangers. Mereka melawan musuh bebuyutan mereka <reading>Ricky</reading> (りき). Mereka mengalahkannya dan <reading>mengunci</reading> (りょく) dia, sehingga dia tidak bisa menyakiti siapa pun lagi.')
    RETURNING id INTO k_447_kekuatan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '十', 'sepuluh', 1, 34, '<radikal>silang</radikal> ini adalah simbol dari angka <kanji>sepuluh</kanji>. Cara yang baik untuk mengingat hal ini adalah dengan memikirkan semua agama yang memiliki persilangan dan juga kumpulan puluhan yang penting.', 'Salib ini khususnya memiliki <kanji>sepuluh</kanji> <reading>jew</reading>el (じゅう) di atasnya. Dua di setiap lengan dan dua di tengah. Itu sepuluh permata!')
    RETURNING id INTO k_448_sepuluh;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '三', 'tiga', 1, 35, 'Kanji ini terdiri dari kata radikal dasar (yang juga merupakan kanji untuk "satu") dan kata radikal untuk dua. Gabungkan <radical>satu</radikal> dan <radical>dua</radikal> bersama-sama dan apa yang Anda dapatkan? <kanji>Tiga</kanji>!', '<kanji>Tiga</kanji> adalah jumlah peluang yang Anda dapatkan dengan <reading>San</reading>ta-san (さん). Dia punya daftarnya, dan ketika Anda sampai pada tiga baris "hal-hal nakal", itu saja. Anda termasuk dalam tiga teguran Santa-san dan Anda keluar dari daftar.')
    RETURNING id INTO k_449_tiga;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '上', 'di-atas', 1, 36, 'Anda menemukan <radical>jari kaki</radikal> di <radikal>tanah</radikal>. Aneh, karena letaknya <kanji>di atas</kanji> tanah, bukan di tempat jari kaki berada.', 'Tentu saja ketika Anda menemukan jari kaki <kanji>di atas</kanji> tanah, Anda ingin mengetahui dari mana asal jari kaki tersebut. Saat Anda memeriksanya, Anda melihat nama tertulis di sana. Jari kaki ini milik buruh tani setempat yang kikuk, <reading>Joe</reading> (じょう).')
    RETURNING id INTO k_450_di_atas;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '下', 'di-bawah', 1, 37, 'Ada <radical>tanah</radikal>, dan ada <radical>jari kaki</radikal> tepat <kanji>di bawahnya</kanji>. Yap, kamu tahu kan ini artinya "di bawah" karena dalam kanji ini tanah memiliki ujung kaki di bawahnya.', 'Anda terus menggali tanah untuk mencari jari kaki <kanji>di bawah</kanji>, namun Anda malah menabrak sesuatu yang keras dan terbuat dari logam. Anda mencoba menggali di sekitarnya, tetapi itu sangat besar. Ternyata itu adalah <reading>mobil</reading> (か). Terus gali sampai Anda menemukan mobil di bawah. (Di dalam, Anda menemukan jari kaki yang Anda cari.)')
    RETURNING id INTO k_451_di_bawah;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '口', 'mulut', 1, 38, 'Radikal <radikal>mulut</radikal> dan kanji <kanji>mulut</kanji> sama persis!', 'Apakah Anda ingat melihat pekerja konstruksi こういち di awal mnemonik 工? Jika Anda belum melakukannya, jangan khawatir!

Untuk kanji dengan bacaan こう (ada banyak!) kita akan menggunakan karakter こういち setiap saat. Dia salah satu orang yang memulai situs web ini, jadi kami akan melakukan yang terbaik dalam mnemonik untuk mempermalukannya sebanyak mungkin. Bagaimanapun, ingatlah bahwa setiap kali Anda melihat こう, pikirkan こういち.

Semua orang setuju, <kanji>mulut</kanji> adalah fitur <membaca>こう</reading>いち yang terbaik. Anda menatapnya dengan penuh kasih saat dia membisikkan bacaan kanji yang manis kepada Anda.')
    RETURNING id INTO k_452_mulut;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '大', 'besar', 1, 39, 'Radikal <radikal>besar</radikal> dan kanji <kanji>besar</kanji> sama persis!', 'Ada pria berbadan besar (itulah yang Anda ingat tentang radikal, ingat?), dan dia mengenakan kemeja <read>Tie Dye</reading> (たい, だい) yang besar. Karena dia besar sekali, kemeja tie dye-nya juga super besar. Segala sesuatu tentang dia cukup besar, tetapi pewarna dasinya lebih menonjol dari apa pun.')
    RETURNING id INTO k_453_besar;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '女', 'wanita', 1, 40, 'Kata radikal untuk <radikal>wanita</radikal> dan kanji untuk <kanji>wanita</kanji> sama persis.', 'Saat kamu memikirkan <kanji>wanita</kanji>, pikirkan <reading>Jo</reading>-Anne (じょ), meskipun dia biasanya hanya memanggil "Jo".')
    RETURNING id INTO k_454_wanita;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '山', 'gunung', 1, 41, 'Kanji <radikal>gunung</radikal> dan kanji <kanji>gunung</kanji> adalah sama.', 'Bayangkan tentang <kanji>pegunungan</kanji> yang berbicara satu sama lain, memanggil satu sama lain dengan namanya, dan menambahkan akhiran nama Jepang <reading>san</reading> (さん) pada setiap namanya. "Halo, Everest-<reading>san</reading>." "Oh hai, Fuji-<reading>san</reading>."')
    RETURNING id INTO k_455_gunung;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '川', 'sungai', 1, 42, 'Kanji <radikal>sungai</radikal> dan kanji <kanji>sungai</kanji> sama satu sama lain!', 'Anda berdiri di samping <kanji>sungai</kanji> yang sebenarnya digunakan sebagai <reading>ca</reading>r <reading>wa</reading>sh (かわ).')
    RETURNING id INTO k_456_sungai;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '工', 'konstruksi', 1, 43, 'Radikal <radikal>konstruksi</radikal> dan kanji <kanji>konstruksi</kanji> adalah sama!

Kanji ini juga berarti <kanji>industri</kanji>, yaitu konstruksi jika dipikir-pikir. Itu semua adalah bagian dari industri konstruksi.', 'Setiap kali kanji menggunakan bacaan こう (ada banyak!), kita akan menggunakan karakter こういち. Dia salah satu orang yang memulai situs web ini, jadi kami akan melakukan yang terbaik dalam mnemonik untuk mempermalukannya sebanyak mungkin. Seperti ini:

Anda melihat beberapa <kanji>konstruksi</kanji> di depan Anda. Di sana, berdiri bertelanjang dada (hanya bretel dan topi keras) adalah <reading>こう</reading>いち, menatap ke arah Anda.')
    RETURNING id INTO k_457_konstruksi;

  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_440_satu, 'Satu', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_441_dua, 'Dua', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_442_sembilan, 'Sembilan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_443_tujuh, 'Tujuh', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_444_orang, 'Orang', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_445_memasuki, 'Memasuki', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_446_delapan, 'Delapan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_447_kekuatan, 'Kekuatan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_447_kekuatan, 'Kekuatan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_447_kekuatan, 'Kemampuan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_448_sepuluh, 'Sepuluh', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_449_tiga, 'Tiga', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_450_di_atas, 'Di atas', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_450_di_atas, 'Ke atas', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_450_di_atas, 'Lebih', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_451_di_bawah, 'Di bawah', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_451_di_bawah, 'Turun', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_451_di_bawah, 'Di bawah', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_451_di_bawah, 'Di bawah', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_452_mulut, 'Mulut', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_453_besar, 'Besar', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_453_besar, 'Besar', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_454_wanita, 'Wanita', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_455_gunung, 'Gunung', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_456_sungai, 'Sungai', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_457_konstruksi, 'Konstruksi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_457_konstruksi, 'Industri', false, true);

  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_440_satu, 'いち', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_440_satu, 'いつ', 'onyomi', false, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_440_satu, 'ひと', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_440_satu, 'かず', 'nanori', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_441_dua, 'に', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_441_dua, 'ふた', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_442_sembilan, 'く', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_442_sembilan, 'きゅう', 'onyomi', false, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_442_sembilan, 'ここの', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_443_tujuh, 'しち', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_443_tujuh, 'なな', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_443_tujuh, 'なの', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_444_orang, 'にん', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_444_orang, 'じん', 'onyomi', false, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_444_orang, 'ひと', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_444_orang, 'と', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_445_memasuki, 'にゅう', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_445_memasuki, 'はい', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_445_memasuki, 'い', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_446_delapan, 'はち', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_446_delapan, 'や', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_446_delapan, 'よう', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_447_kekuatan, 'りょく', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_447_kekuatan, 'りき', 'onyomi', false, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_447_kekuatan, 'ちから', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_448_sepuluh, 'じゅう', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_448_sepuluh, 'とお', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_449_tiga, 'さん', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_449_tiga, 'み', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_450_di_atas, 'じょう', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_450_di_atas, 'うえ', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_450_di_atas, 'あ', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_450_di_atas, 'のぼ', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_450_di_atas, 'うわ', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_450_di_atas, 'かみ', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_451_di_bawah, 'か', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_451_di_bawah, 'げ', 'onyomi', false, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_451_di_bawah, 'した', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_451_di_bawah, 'さ', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_451_di_bawah, 'くだ', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_451_di_bawah, 'お', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_451_di_bawah, 'しも', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_451_di_bawah, 'もと', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_452_mulut, 'こう', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_452_mulut, 'く', 'onyomi', false, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_452_mulut, 'くち', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_453_besar, 'たい', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_453_besar, 'だい', 'onyomi', false, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_453_besar, 'おお', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_453_besar, 'ひろ', 'nanori', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_454_wanita, 'じょ', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_454_wanita, 'にょ', 'onyomi', false, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_454_wanita, 'にょう', 'onyomi', false, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_454_wanita, 'おんな', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_454_wanita, 'め', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_455_gunung, 'さん', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_455_gunung, 'やま', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_456_sungai, 'かわ', 'kunyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_456_sungai, 'せん', 'onyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_457_konstruksi, 'こう', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_457_konstruksi, 'く', 'onyomi', false, true);

  -- 3. VOCABULARIES
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '一', 'satu', 1, 44, 'Seperti halnya kebanyakan kosakata yang terdiri dari satu kanji, kosakata ini mempunyai arti yang sama dengan kanji yang sejajar dengannya, yaitu <vocabulary>satu</vocabulary>.', 'Kalau vocabnya kanji tunggal dan sendirian seperti ini, biasanya akan menggunakan kun''yomi. Namun angka merupakan pengecualian. Ketika sebuah angka berdiri sendiri, tanpa kanji atau okurigana, itu akan menjadi pembacaan on''yomi, yang Anda pelajari dengan kanji.  Ingatlah pengecualian ini untuk angka-angka saja dan Anda akan dapat membaca kosakata terkait angka di masa depan.', 'Satu')
    RETURNING id INTO v_2467_satu;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '一つ', 'satu-hal', 1, 45, 'Kata ini mengikuti pola "bilangan benda" dimana terdapat kanji untuk bilangan ditambah つ di akhir. Setiap kali Anda melihat ini, Anda tahu kata itu berarti "____ benda". Mengetahui hal itu, selama Anda mengetahui kanji (yang Anda gunakan), Anda dapat mengetahui berapa banyak benda yang ada di dalamnya. Untuk yang ini, kanjinya adalah <kanji>satu</kanji> ditambah つ. Jadi, yang satu ini adalah <vocabulary>satu hal</vocabulary>.', 'Karena semua kata "bilangan benda" mengikuti pola yang sama (angka ditambah つ), Anda hanya perlu mengingat bagian sebelum つ (lalu ingat bahwa つ ada di semua kata tersebut). Semua bacaannya adalah bacaan kun''yomi, artinya kita harus menggunakan mnemonik untuk mengingatnya (Anda tahu bacaan on''yomi bagian kanji).

Jadi, Anda punya <vocabulary>satu hal</vocabulary>. Satu hal apa yang kamu punya? Anda memiliki salah satu He-Man''s Toes, alias satu <reading>He-Toe</reading> (ひと). Jadi barang apa yang hanya kamu punya satu saja? Anda punya satu He-Toe. Bayangkan He-Man berjalan-jalan dengan salah satu jari kakinya hilang, mencoba menemukan Anda sehingga dia bisa mendapatkannya kembali. Setidaknya kamu bisa berlari lebih cepat darinya sekarang.', 'Satu Hal')
    RETURNING id INTO v_2468_satu_hal;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '七', 'tujuh', 1, 46, 'Ketika sebuah kosakata berdiri sendiri tanpa okurigana (yaitu hiragana yang melekat pada kanji) biasanya memiliki arti yang sama dengan kanji juga. Hal ini juga berlaku untuk kata ini. Jadi, jika Anda mengetahui arti kanjinya (<kanji>tujuh</kanji>) Anda juga akan mengetahui arti vocabnya (<vocabulary>tujuh</vocabulary>).', 'Kebanyakan kosakata kanji tunggal seperti ini menggunakan bacaan kun''yomi. Angka merupakan pengecualian terhadap aturan ini. Meskipun demikian, empat dan tujuh merupakan pengecualian terhadap pengecualian aturan ini (karena pembacaan on''yomi terdengar terlalu mirip dengan kata "kematian"). Anda harus mempelajari kedua bacaan untuk kata ini, meskipun kita akan menggunakan なな untuk yang utama di sini. Anda dapat mengingatnya karena Anda memiliki tujuh <reading>nana</reading> setelah Anda.', 'Tujuh')
    RETURNING id INTO v_2469_tujuh;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '七つ', 'tujuh-hal', 1, 47, 'Kata ini mengikuti pola "bilangan benda" dimana terdapat kanji untuk bilangan ditambah つ di akhir. Setiap kali Anda melihat ini, Anda tahu kata itu berarti "____ benda". Mengetahui hal itu, selama Anda mengetahui kanji (yang Anda gunakan), Anda dapat mengetahui berapa banyak benda yang ada di dalamnya. Untuk yang ini, kanjinya adalah <kanji>tujuh</kanji> ditambah つ. Jadi, yang satu ini adalah <vocabulary>tujuh hal</vocabulary>.', 'Karena semua kata "bilangan benda" mengikuti pola yang sama (angka ditambah つ), Anda hanya perlu mengingat bagian sebelum つ (lalu ingat bahwa つ ada di semua kata tersebut). Semua bacaannya adalah bacaan kun''yomi, artinya kita harus menggunakan mnemonik untuk mengingatnya (Anda tahu bacaan on''yomi bagian kanji).

Tujuh benda apa yang kamu punya? <vocabulary>tujuh hal</vocabulary> yang Anda miliki adalah tujuh <reading>Nana</reading> (なな). Ini adalah nenekmu, hasil kloning. Bayangkan saja, "Untungnya punya tujuh nanas. Mereka semua bisa memasakkan makanan favoritku untukku!" Terlebih lagi, Anda memiliki satu nana untuk setiap hari dalam seminggu, sehingga Anda akan mendapatkan makanan favorit Anda setiap hari.', 'Tujuh Hal')
    RETURNING id INTO v_2470_tujuh_hal;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '九', 'sembilan', 1, 48, 'Ketika sebuah kosakata terdiri dari satu kanji tanpa okurigana (hiragana yang melekat pada kanji), sering kali kosakata tersebut memiliki arti yang sama dengan kanji yang mendasarinya. Hal yang sama juga berlaku untuk kata <vocabulary>九</vocabulary>. Ini memiliki arti yang sama dengan kanjinya.', 'Kalau vocabnya kanji tunggal dan sendirian seperti ini, biasanya akan menggunakan kun''yomi. Angka adalah pengecualian, seperti yang mungkin sudah Anda ketahui. Saat mereka sendirian tanpa okurigana, mereka membaca on''yomi, yang seharusnya sudah Anda ketahui dari mempelajari kanji yang menyusun kata ini.', 'Sembilan')
    RETURNING id INTO v_2471_sembilan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '九つ', 'sembilan-hal', 1, 49, 'Kata ini mengikuti pola "bilangan benda" dimana terdapat kanji untuk bilangan ditambah つ di akhir. Setiap kali Anda melihat ini, Anda tahu kata itu berarti "____ benda". Mengetahui hal itu, selama Anda mengetahui kanji (yang Anda gunakan), Anda dapat mengetahui berapa banyak benda yang ada di dalamnya. Untuk yang ini, kanjinya adalah <kanji>sembilan</kanji> ditambah つ. Jadi, yang satu ini adalah <vocabulary>sembilan hal</vocabulary>.', 'Karena semua kata "bilangan benda" mengikuti pola yang sama (angka ditambah つ), Anda hanya perlu mengingat bagian sebelum つ (lalu ingat bahwa つ ada di semua kata tersebut). Semua bacaannya adalah bacaan kun''yomi, artinya kita harus menggunakan mnemonik untuk mengingatnya (Anda tahu bacaan on''yomi bagian kanji).

Benda apa yang kamu punya sembilan? <vocabulary>sembilan hal</vocabulary> yang Anda miliki adalah sembilan <reading>cocono</reading>ts (ここの). Seperti yang bisa Anda tebak dari ejaannya, kelapa <em>bukan</em> kelapa. Anggap saja sebagai… kelapa palsu. Bayangkan diri Anda menyulap sembilan kelapa di udara. Cobalah menghitungnya seperti yang Anda lakukan, sampai pada sembilan hal. Kemudian susun menjadi persegi di atas tanah. Tiga kelapa kali tiga. Sekarang Anda harus ingat cara membaca 九つ.', 'Sembilan Hal')
    RETURNING id INTO v_2472_sembilan_hal;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '二', 'dua', 1, 50, 'Jika sebuah kata vocab berbentuk kanji tunggal tanpa okurigana (hiragana yang melekat pada kanji), biasanya kata tersebut memiliki arti yang sama dengan kanji asal kata tersebut. Jika Anda mengetahui arti kanjinya, Anda juga akan mengetahui arti vocabnya. Ini <vocabulary>dua</vocabulary>!', 'Kalau vocabnya kanji tunggal dan sendirian seperti ini, biasanya akan menggunakan kun''yomi. Namun angka merupakan pengecualian untuk hal ini. Angka menggunakan bacaan on''yomi, yang telah Anda pelajari dengan mempelajari bacaan kanji! Bagus sekali!', 'Dua')
    RETURNING id INTO v_2473_dua;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '二つ', 'dua-hal', 1, 51, 'Kata ini mengikuti pola "bilangan benda" dimana terdapat kanji untuk bilangan ditambah つ di akhir. Setiap kali Anda melihat ini, Anda tahu kata itu berarti "____ benda". Mengetahui hal itu, selama Anda mengetahui kanji (yang Anda gunakan), Anda dapat mengetahui berapa banyak benda yang ada di dalamnya. Untuk yang ini, kanjinya adalah <kanji>dua</kanji> ditambah つ. Jadi, yang satu ini adalah <vocabulary>dua hal</vocabulary>.', 'Karena semua kata "bilangan benda" mengikuti pola yang sama (angka ditambah つ), Anda hanya perlu mengingat bagian sebelum つ (lalu ingat bahwa つ ada di semua kata tersebut). Semua bacaannya adalah bacaan kun''yomi, artinya kita harus menggunakan mnemonik untuk mengingatnya (Anda tahu bacaan on''yomi bagian kanji). 

Jadi, barang apa yang kamu punya dua? <vocabulary>dua hal</vocabulary> yang Anda miliki adalah 2-<reading>foo</reading>t <reading>ta</reading>cos (ふた). Betapa beruntungnya Anda karena kedua barang Anda adalah taco berukuran 2 kaki? Orang lain hanya punya dua kaki taco... Dan percayalah, Anda tidak ingin memakannya.', 'Dua Hal')
    RETURNING id INTO v_2474_dua_hal;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '人', 'orang', 1, 52, 'Jika sebuah kosakata hanya berupa satu kanji saja, biasanya maknanya sama dengan induk kanjinya. Hal ini juga berlaku untuk kosakata ini. <kanji>Orang</kanji> adalah <vocabulary>orang</vocabulary>.', 'Kalau vocabnya kanji tunggal dan sendirian seperti ini, biasanya akan menggunakan kun''yomi. Karena Anda belum mengetahui bacaan kun''yomi untuk kanji ini, mari gunakan mnemonik untuk mempelajarinya.

Apa yang paling dibenci oleh <vocabulary>seseorang</vocabulary>? Mereka benci <membaca>panas</reading> yang ekstrim (ひと). Anda selalu dapat mengenakan lebih banyak pakaian agar tetap hangat, tetapi jika suhu menjadi terlalu tinggi, Anda hanya dapat melepas pakaian sebanyak itu.', 'Orang')
    RETURNING id INTO v_2475_orang;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '二人', 'dua-orang', 1, 53, 'Jika Anda memiliki <kanji>dua</kanji> dan <kanji>orang</kanji> lalu menyatukannya, apa yang Anda dapatkan? Anda mendapatkan <vocabulary>sepasang</vocabulary> atau <vocabulary>dua orang</vocabulary>.', 'Pembacaan kata ini cukup aneh. Jika Anda mengetahui cara membaca 二つ, Anda dapat menggunakannya untuk mengingat bagian 二 (ふた). Namun, り yang merupakan 人 merupakan pengecualian total, sesuatu yang tidak akan terlalu sering Anda lihat (walaupun Anda mungkin pernah melihatnya di 一人). Jika Anda bisa menggunakan bacaan 一人 (alias jika Anda sudah mempelajarinya) maka gunakanlah itu. Jika tidak, lakukan yang terbaik untuk mengingat bacaan Anda sendiri. Ini adalah hal yang aneh dan tidak berhubungan dengan banyak hal lainnya.', 'Dua Orang, Pasangan, Pasangan, Dua Orang')
    RETURNING id INTO v_2476_dua_orang;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '一人', 'sendiri', 1, 54, 'Jika ada <kanji>satu</kanji> <kanji>orang</kanji>, apakah mereka? Ya, mereka bisa jadi hanya <vocabulary>satu orang</vocabulary> atau <vocabulary>sendirian</vocabulary>.', 'Pembacaan kosakata ini tidak mengikuti aturan apa pun yang Anda pelajari sebelumnya. Ini pengecualian, artinya Anda juga harus mempelajari bacaannya secara terpisah. Luangkan beberapa saat untuk mencoba mengingat kata ini, mengalihkan pandangan selama 10 detik, dan kemudian mencoba mengingat kembali bacaannya. Bisakah kamu melakukannya? Coba lagi, kali ini dalam tiga puluh detik. Apakah kamu melakukannya lagi? Oke, lanjutkan dan lanjutkan. Anda mungkin mengetahuinya sekarang, namun Anda harus mengingatnya lagi dalam 5-10 menit berikutnya jika ingin mengingatnya selamanya.

Atau, jika Anda mengetahui cara membaca kosakata 一つ (pada level yang sama dengan kata ini), Anda dapat mengetahui bahwa kata tersebut menggunakan bacaan yang sama!', 'Sendiri, Satu Orang')
    RETURNING id INTO v_2477_sendiri;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '入る', 'untuk-masuk', 1, 55, 'Vocab ini memiliki okurigana, yaitu bagian hiragana yang muncul setelah kanji. Ketika okurigana sebuah kosakata mengeluarkan bunyi "う/oo" (dalam hal ini, kita memiliki る), sering kali itu akan menjadi kata kerja. Jadi dalam hal ini, kanji 入 adalah <kanji>enter</kanji>. Kosakata 入る adalah <vocabulary>untuk dimasukkan</vocabulary>. Kami hanya mengambil kanji dan menggunakannya dalam kata kerja!', 'Jika kosakatanya berupa kanji tunggal dengan okurigana, kemungkinan besar itu adalah bacaan kun''yomi, yang biasanya tidak Anda pelajari dalam kanji (biasanya Anda mempelajari bacaan on''yomi). Jadi, mari kita pelajari bacaan kun''yomi untuk kata ini beserta artinya.

Ketika Anda <vocabulary>memasuki</vocabulary> ruangan, apa yang Anda lakukan? Anda mengatakan "<reading>Hai</reading>" (はい) kepada semua orang sampai pada titik yang tidak masuk akal. "Halo. Oh hai Frank. Oh hai Susan. Oh hai lampu."', 'Untuk Masuk, Untuk Masuk')
    RETURNING id INTO v_2480_untuk_masuk;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '八', 'delapan', 1, 56, 'Jika sebuah kosakata berupa satu kanji, biasanya kosakata tersebut juga mencuri makna dari kanjinya. Hal yang sama berlaku untuk kata vocab ini. Artinya <vocabulary>delapan</vocabulary>.', 'Kalau vocabnya kanji tunggal dan sendirian seperti ini, biasanya akan menggunakan kun''yomi. Tapi, karena ini angka (pengecualian) maka yang digunakan adalah on''yomi, artinya kamu sudah tahu bacaannya sejak kamu mempelajari kanjinya!', 'Delapan')
    RETURNING id INTO v_2482_delapan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '八つ', 'delapan-hal', 1, 57, 'Kata ini mengikuti pola "bilangan benda" dimana terdapat kanji untuk bilangan ditambah つ di akhir. Setiap kali Anda melihat ini, Anda tahu kata itu berarti "____ benda". Mengetahui hal itu, selama Anda mengetahui kanji (yang Anda gunakan), Anda dapat mengetahui berapa banyak benda yang ada di dalamnya. Untuk yang ini, kanjinya adalah <kanji>delapan</kanji> ditambah つ. Jadi, yang satu ini adalah <vocabulary>delapan hal</vocabulary>.', 'Karena semua kata "bilangan benda" mengikuti pola yang sama (angka + つ), Anda hanya perlu mengingat bagian sebelum つ. Semua bacaannya menggunakan kun''yomi. Sejauh ini Anda hanya melihat pembacaan on''yomi untuk kanji ini, jadi inilah mnemonik untuk membantu Anda mengingatnya:

Dapatkah Anda memikirkan <vocabulary>delapan hal</vocabulary> yang dimulai dengan bunyi "ya"? <read>Yah</reading> (や), kamu bisa. Coba daftarkan dengan lantang. Bahkan jika Anda tidak mengelolanya, Anda akan mengingat hubungan antara delapan dan "ya". 

Oh, dan lihat っ kecil di tengah-tengah bacaan (やっつ)? Ini memberi sedikit penekanan pada konsonan yang mengikutinya, seperti <em>yattttttsu</em>. Oke, tidak terlalu menekankan. Lebih mirip <em>yattsu</em>.', 'Delapan Hal')
    RETURNING id INTO v_2483_delapan_hal;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '力', 'kekuatan', 1, 58, 'Ketika sebuah kata kosakata terdiri dari satu kanji dan hanya itu, hampir selalu maknanya diambil dari kanji induknya. Jadi, kosakata ini juga berarti <vocabulary>power</vocabulary>.', 'Kalau vocabnya kanji tunggal dan sendirian seperti ini, biasanya menggunakan bacaan kun''yomi. Anda tidak mempelajari pembacaan kun''yomi dengan kanji, jadi untuk kosakata ini, kami akan menggunakan mnemonik:

Seni bela diri yang paling membutuhkan <vocabulary>power</vocabulary> adalah <reading>chee</reading>se <reading>kara</reading>te (ちから). Praktisi karate keju menyalurkan seluruh kekuatannya ke dalam karate yang memotong keju dalam jumlah besar. Keju tidak mudah pecah seperti batu bata atau ubin, jadi hal ini memerlukan banyak <vocabulary>kekuatan</vocabulary> dan <vocabulary>kemampuan</vocabulary> agar bisa pecah dengan baik.', 'Kekuatan, Kekuatan, Kemampuan')
    RETURNING id INTO v_2484_kekuatan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '十', 'sepuluh', 1, 59, 'Ketika kosakatanya sendirian seperti ini tanpa okurigana (hiragana yang melekat pada kanji), maka cenderung mencuri makna dari kanji asalnya. Artinya kosakata ini juga berarti <vocabulary>sepuluh</vocabulary>.', 'Kalau vocabnya sendiri dan terdiri dari satu kanji seperti ini, biasanya menggunakan bacaan kun''yomi untuk kanjinya. Namun, angka merupakan pengecualian dan menggunakan pembacaan on''yomi (yang Anda pelajari saat mempelajari kanji). Berarti kamu tahu kalau bacaan kata ini sudah <reading>じゅう</reading>.', 'Sepuluh')
    RETURNING id INTO v_2485_sepuluh;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '三', 'tiga', 1, 60, 'Jika kosakatanya berupa kanji tunggal dan sendirian seperti ini, biasanya maknanya dicuri dari kanji induknya. Begitu pula dengan kata ini, sehingga arti dari kata ini adalah <vocabulary>tiga</vocabulary>.', 'Kalau vocabnya kanji tunggal dan sendirian seperti ini, biasanya akan menggunakan kun''yomi. Namun angka merupakan pengecualian, dan gunakan pembacaan on''yomi. Anda mempelajari bacaan on''yomi saat mempelajari kanji ini, jadi Anda sudah tahu bahwa bacaan untuk vocab ini adalah <reading>さん</reading>.', 'Tiga')
    RETURNING id INTO v_2486_tiga;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '三つ', 'tiga-hal', 1, 61, 'Kata ini mengikuti pola "bilangan benda" dimana terdapat kanji untuk bilangan ditambah つ di akhir. Setiap kali Anda melihat ini, Anda tahu kata itu berarti "____ benda". Mengetahui hal itu, selama Anda mengetahui kanji (yang Anda gunakan), Anda dapat mengetahui berapa banyak benda yang ada di dalamnya. Untuk yang ini, kanjinya adalah <kanji>tiga</kanji> ditambah つ. Jadi, yang satu ini adalah <vocabulary>tiga hal</vocabulary>.', 'Karena semua kata "bilangan benda" mengikuti pola yang sama (angka ditambah つ), Anda hanya perlu mengingat bagian sebelum つ (lalu ingat bahwa つ ada di semua kata tersebut). Semua bacaannya adalah bacaan kun''yomi, artinya kita harus menggunakan mnemonik untuk mengingatnya (Anda tahu bacaan on''yomi bagian kanji).

Benda apa yang kamu punya bertiga? <vocabulary>tiga hal</vocabulary> yang Anda miliki sebenarnya adalah tiga versi diri Anda sendiri. "Siapa yang sebenarnya?" kamu bertanya pada dirimu sendiri. "Ini <membaca>saya</reading>!" "Tunggu, bukan, ini <reading>aku</reading>!" Ingatlah bahwa kalian bertiga, dan mereka semua mengatakan "aku, aku, aku" untuk mencoba membuktikan bahwa merekalah dirimu yang sebenarnya.', 'Tiga Hal')
    RETURNING id INTO v_2487_tiga_hal;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '三人', 'tiga-orang', 1, 62, 'Anda memiliki kanji untuk <kanji>tiga</kanji> dan <kanji>orang</kanji>. Akal sehat akan memberi tahu Anda apa kata ini. Itu <vocabulary>tiga orang</vocabulary>.', 'Ini adalah kata jukugo (kanji majemuk), yang biasanya berarti pembacaan on''yomi dari kanji. Karena 人 memiliki dua bacaan on''yomi, berikut adalah mnemonik untuk membantu Anda mengingat mana yang harus digunakan:

Tampaknya, ada <vocabulary>tiga orang</vocabulary> yang bekerja sebagai <reading>San</reading>ta-san di <reading>Nin</reading>tendo (さんにん)! Ini perusahaan besar, jadi jelas mereka membutuhkan tiga Santa.', 'Tiga Orang, Tiga Orang')
    RETURNING id INTO v_2488_tiga_orang;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '上', 'di-atas', 1, 63, 'Jika suatu kata vocab hanya berupa satu kanji dan tersendiri, maka cenderung mencuri arti dari kanji tersebut. Hal yang sama juga berlaku untuk yang satu ini. Artinya <vocabulary>di atas</vocabulary> atau <vocabulary>naik</vocabulary>.', 'Kalau vocabnya kanji tunggal dan sendirian seperti ini, biasanya akan menggunakan kun''yomi. Karena Anda telah mempelajari pembacaan kanji on''yomi, kita perlu menggunakan mnemonik untuk mempelajari pembacaan kosakata ini. 

<vocabulary>Di atas</vocabulary> Anda memiliki beban yang sangat berat. Anda menahannya dan meronta (ini berat!). Anda melihat ke atas dan mencoba menjulurkan leher Anda untuk melihat berapa beratnya (うえ), tetapi Anda tidak dapat melihat angka di sampingnya. Berapa lama Anda bisa menahannya di atas kepala seperti ini?', 'Di atas, Ke atas, Lebih')
    RETURNING id INTO v_2489_di_atas;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '上げる', 'untuk-mengangkat-sesuatu', 1, 64, 'Kata ini terdiri dari kanji dengan hiragana ditempelkan. Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanji sendiri berarti <kanji>di atas</kanji> dan kata kerja ini terkait dengan makna tersebut. Artinya <vocabulary>mengangkat sesuatu</vocabulary> atau <vocabulary>mengangkat sesuatu</vocabulary>. Ini adalah kata kerja transitif, artinya Anda melakukan sesuatu terhadap hal lain. Anda meningkatkan sesuatu. Seperti tanganmu!', 'Karena kata ini memiliki okurigana (hiragana yang melekat pada kanji), Anda tahu bahwa kata tersebut mungkin akan menggunakan pembacaan kun''yomi, yang tidak Anda pelajari dengan kanji. Berikut ini mnemonik untuk membantu Anda:

Saat kamu ingin <vocabulary>mengangkat sesuatu</vocabulary>, kamu selalu berteriak "<reading>Ah</reading> (あ)!" untuk mendapatkan kekuatan ekstra yang Anda butuhkan. Apalagi saat Anda ingin mengangkat sesuatu di atas kepala. Silakan, coba sekarang. Angkat sesuatu dan teriakkan "Ah!" Membuat Anda merasa kuat, bukan?', 'Untuk Mengangkat Sesuatu, Untuk Meningkatkan Sesuatu, Untuk Meningkatkan Sesuatu')
    RETURNING id INTO v_2490_untuk_mengangkat_sesuatu;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '下', 'di-bawah', 1, 65, 'Jika kosakatanya berupa kanji tunggal tanpa okurigana (yaitu hiragana yang melekat pada kanji), maka kosakata tersebut cenderung mencuri makna dari kanji asalnya. Jadi yang ini <vocabulary>di bawah</vocabulary> atau <vocabulary>di bawah</vocabulary>.', 'Jika kosakatanya berupa kanji tunggal dan sendirian maka cenderung menggunakan bacaan kun''yomi. Anda telah mempelajari bacaan on''yomi untuk kanji ini, jadi sekarang saatnya mempelajari bacaan kun''yomi untuk mempelajari kosakata ini.

Apa <vocabulary>di bawah</vocabulary> Anda? Apa yang ada di bawah kakimu? Oh tidak. Hal terburuk yang mungkin terjadi: Itu <reading>した</reading>.', 'Di bawah, Di bawah, Di bawah, Turun')
    RETURNING id INTO v_2493_di_bawah;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '下げる', 'untuk-menurunkan-sesuatu', 1, 66, 'Kata ini terdiri dari kanji dengan hiragana ditempelkan. Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanji itu sendiri berarti <kanji>di bawah</kanji> jadi versi kata kerjanya adalah ketika Anda meletakkan sesuatu di bawah Anda. Itu adalah <vocabulary>untuk menurunkan sesuatu</vocabulary>. Bisa juga berarti <vocabulary>menggantung sesuatu</vocabulary>, seperti lampu di langit-langit.

Ini adalah kata kerja transitif, artinya kata kerja tersebut dilakukan oleh satu entitas ke entitas lainnya. Dengan kata lain, Anda menurunkan <i>sesuatu</i>. Seperti ekspektasi Anda yang terlalu tinggi terhadap diri Anda sendiri. Tenang saja!', 'Karena kata ini memiliki okurigana (hiragana yang melekat pada kanji), Anda tahu bahwa itu mungkin pembacaan kun''yomi, yang tidak Anda pelajari dengan kanji. Berikut ini mnemonik untuk membantu Anda:

Anda ingin <vocabulary>menurunkan sesuatu</vocabulary>. Dalam hal ini adalah pohon, jadi Anda memerlukan <reading>gergaji</reading> (さ). Turunkan pohon ke tanah dengan hati-hati sambil Anda melihatnya perlahan-lahan!', 'Untuk Menurunkan Sesuatu, Untuk Menggantung Sesuatu')
    RETURNING id INTO v_2495_untuk_menurunkan_sesuatu;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '下さい', 'tolong-berikan-saya', 1, 67, 'Anda tahu bahwa kanji 下 berarti <kanji>turun</kanji>, dan さい terdengar seperti kata "sigh". Kamu perlu meminta sesuatu kepada seseorang, jadi kamu menunduk, menghela nafas, dan berkata <vocabulary>tolong berikan padaku</vocabulary> benda itu. Kamu malu karena harus bertanya. Tapi Anda masih membutuhkannya. <vocabulary>Tolong</vocabulary>, tolong berikan padaku!

Kamu hanya menggunakan ください versi kanji ini saat meminta sesuatu, itulah mengapa ini adalah "tolong beri aku". Jika Anda hanya mengatakan "tolong", Anda tidak memerlukan kanji sama sekali!', 'Pembacaan 下 di sini adalah bacaan yang belum Anda pelajari. Coba pikirkan bagaimana kedengarannya seperti Anda mengatakan <vocabulary>tolong</vocabulary>, <reading>bolehkah saya</reading> (くだ) mendapatkan benda ini? Tolong cantik, bolehkah saya memilikinya? 

Alternatifnya, jika Anda sudah mengetahui kata ください sebelumnya, ini tidak akan terlalu sulit!', 'Tolong Berikan Saya, Silakan')
    RETURNING id INTO v_2496_tolong_berikan_saya;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '口', 'mulut', 1, 68, 'Ketika sebuah kosakata terdiri dari satu kanji tanpa okurigana (hiragana yang melekat pada kanji), secara umum maknanya akan sama dengan kanji asalnya. Dari situ kamu tahu arti kata ini adalah <vocabulary>mulut</vocabulary>.', 'Jika kosakatanya berupa kanji tunggal dan sendirian seperti ini, biasanya akan menggunakan kun''yomi, yang tidak Anda pelajari dari mempelajari kanji tersebut. Untuk mengingat kata ini, Anda harus menggunakan mnemonik. Dengan <vocabulary>mulut</vocabulary> Anda, buatlah suara "<reading>kuchi</reading> kuchi kou" (くち). Silakan, buatlah. Fokus pada mulut Anda dan coba bayangkan setiap bentuk yang dihasilkan sambil memperbesarnya. Anda sedang berbicara dengan bayi, itulah sebabnya Anda mengeluarkan suara-suara konyol ini. Selain itu, alih-alih "coo" di akhir, Anda harus mengucapkan "kou", karena itulah pembacaan kanji (こう).

Sebenarnya, terdengar seperti sesuatu dari Arrested Development.', 'Mulut')
    RETURNING id INTO v_2497_mulut;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '入り口', 'pintu-masuk', 1, 69, '<kanji>mulut</kanji> yang Anda <kanji>masukkan</kanji> adalah <vocabulary>pintu masuk</vocabulary>.', 'Kata ini sebenarnya adalah dua kata terpisah yang digabungkan menjadi satu, jadi mari kita lihat dalam dua bagian:

Kanji 入 memiliki り yang melekat padanya sebagai okurigana (hiragana yang muncul setelah kanji), jadi bisa dipastikan 入り akan menggunakan pembacaan kun''yomi untuk kanjinya. Anda belum mempelajari bacaan ini, jadi inilah mnemonik untuk membantu Anda:

<vocabulary>pintu masuk</vocabulary> yang Anda lalui benar-benar <read>menakutkan</reading> (いり). Ada sarang laba-laba dan ukiran sosok menyeramkan di dalamnya, dan itu memberi Anda perasaan yang sangat menakutkan.

Karena 入り menggunakan kun''yomi, Anda dapat menebak bahwa 口 akan mengikutinya. Anda mempelajari bacaan ini dengan kosakata, tetapi く di くち berubah menjadi ぐ karena sesuatu yang disebut rendaku. Bayangkan ini sebagai pintu masuk yang menakutkan ke dalam toko <reading>Gucci</reading> (ぐち).', 'Pintu masuk')
    RETURNING id INTO v_2498_pintu_masuk;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '大きい', 'besar', 1, 70, 'Ini adalah bentuk kata sifat dari <kanji>besar</kanji>. Meskipun memiliki arti yang sama, itu adalah kata untuk menggambarkan. Kata-kata yang diakhiri dengan い sering kali merupakan kata sifat, ingatlah itu juga untuk kata-kata selanjutnya. Jadi, asal kamu tahu arti dari kanji ini, kamu bisa mentransfernya ke arti kata ini. Itu adalah kata sifat <vocabulary>big</vocabulary>, atau <vocabulary>large</vocabulary>.', 'Apa yang Anda lakukan saat melihat sesuatu yang sangat-sangat <vocabulary>besar</vocabulary>? Anda mengucapkan <reading>おお</reading> karena Anda tidak dapat mempercayai mata Anda. Bayangkan sesuatu yang sangat besar dan ucapkan おお dengan lantang untuk membantu menyegel memori di otak Anda.', 'Besar, Besar')
    RETURNING id INTO v_2499_besar;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '大きさ', 'ukuran', 1, 71, 'Dalam bahasa Jepang, さ di akhir kata sering kali setara dengan "-ness" dalam bahasa Inggris. Dengan kata lain, jika Anda mengganti い di akhir kata sifat い dengan さ, Anda mempunyai kata benda. Dalam hal ini, kata sifatnya adalah 大きい (besar) dan kata benda 大きさ berarti "kebesaran", alias <vocabulary>size</vocabulary>.', 'Jika sebuah kosakata memiliki okurigana (hiragana yang melekat pada kanji), kemungkinan besar itu adalah bacaan kun''yomi. Karena Anda mempelajari bacaan on''yomi dengan kanji 大, kita harus menggunakan mnemonik untuk mengingat kata ini.

Saat Anda melihat ukurannya (pilih sesuatu yang mengejutkan), Anda berkata "<reading>おお</reading>*#$@!" Benar-benar membayangkan sesuatu yang mengejutkan. Ucapkan juga bagian おお dengan lantang. Pikirkan juga tentang ukuran apa pun yang Anda lihat, dan seberapa <vocabulary>besar</vocabulary> itu.', 'Ukuran')
    RETURNING id INTO v_2500_ukuran;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '大した', 'besar', 1, 72, 'した adalah bentuk lampau dari する (yang berarti "melakukan"). Jadi, pada dasarnya kata ini adalah "berhasil besar". Apa yang dimaksud dengan "berhasil besar"? Itu adalah sesuatu yang <vocabulary>hebat</vocabulary> atau <vocabulary>cukup besar</vocabulary>.', 'Pembacaan bagian 大 sebenarnya adalah pembacaan on''yomi yang Anda pelajari saat mempelajari kanji ini. Karena 大 mempunyai dua pembacaan on''yomi, berikut adalah mnemonik untuk membantu Anda mengingat mana yang harus digunakan:

Jika ada sesuatu yang <vocabulary>hebat</vocabulary> dan <vocabulary>penting</vocabulary>, sebaiknya Anda mengenakan <reading>dasi</reading> (たい) untuk itu. Dilarang muncul tanpa ada kaitannya dengan apa pun yang merupakan <vocabulary>masalah besar</vocabulary>, oke?', 'Besar, Besar, Penting, Masalah Besar')
    RETURNING id INTO v_2501_besar;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '大人', 'dewasa', 1, 73, 'Kata ini menggabungkan <kanji>besar</kanji> dan <kanji>orang</kanji>. Jika Anda masih anak-anak, bagaimana pendapat Anda tentang orang dewasa? Anda hanya menganggap mereka seperti orang besar. Itu sebabnya kombinasi kanji ini berarti <vocabulary>adult</vocabulary>, dan jika digunakan seperti kata sifat, artinya <vocabulary>matang</vocabulary>.', 'Terkadang kanji memiliki bacaan luar biasa yang bukan on''yomi atau kun''yomi, dan ini adalah salah satunya. Jadi, inilah mnemonik untuk membantu Anda mengingat bacaan ini:

"Saya <vocabulary>dewasa</vocabulary>, artinya saya mempunyai tanggung jawab sebagai orang dewasa, seperti… <reading>oh, toner</reading> (おとな)!" Apakah Anda orang dewasa yang memiliki printer toner sendiri? Ohhhh, toner…', 'Dewasa, Dewasa')
    RETURNING id INTO v_2502_dewasa;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '女', 'wanita', 1, 74, 'Jika sebuah kanji berdiri sendiri dan tidak memiliki okurigana (hiragana yang melekat pada kanji), biasanya maknanya akan sama dengan kanji asalnya. Jadi dalam hal ini, Anda tahu bahwa kata tersebut berarti <kosakata>wanita</vocabulary>.

Tapi hati-hati! Penggunaan 女 saja sering kali terkesan blak-blakan dan tidak sopan, terutama dalam obrolan biasa. Kami akan segera memperkenalkan Anda pada persamaan netral!', 'Kalau vocabnya kanji tunggal dan sendirian seperti ini, biasanya akan menggunakan kun''yomi. Anda tidak mempelajari bacaan kun''yomi saat mempelajari kanji itu sendiri, jadi mari gunakan mnemonik untuk mengingatnya:

Pikirkan tentang bagaimana <vocabulary>wanita</vocabulary> ini <reading>onna</reading> (おんな) berguling. Dia menang di kiri, kanan, dan tengah. Dia tidak bisa dihentikan. Ya, dia benar-benar bersemangat!', 'Wanita, Perempuan')
    RETURNING id INTO v_2503_wanita;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '山', 'gunung', 1, 75, 'Kosakata yang hanya terdiri dari satu kanji saja tanpa okurigana (hiragana yang melekat pada kanji) biasanya mempunyai arti yang sama persis dengan kanji yang menjadi bahan pembuatannya. Jadi dengan begitu kalian sudah tahu kalau arti vocab ini adalah <vocabulary>gunung</vocabulary>.', 'Jika kosakatanya berupa kanji tunggal dan sendirian seperti ini, biasanya akan menggunakan kun''yomi, yang tidak Anda pelajari saat mempelajari kanji tersebut. Untuk mengingat bacaan kata ini kita akan menggunakan mnemonik.

Apa yang kamu lakukan saat mendaki <vocabulary>gunung</vocabulary>? Anda sedang berburu <reading>ubi</reading> (やま). Silakan, bayangkan diri Anda melakukan hal itu, mendaki gunung (ini kerja keras!) dan kemudian menggali tanah dengan tangan Anda, lalu menarik ubi yang manis dan lezat itu! Hmm!', 'Gunung')
    RETURNING id INTO v_2504_gunung;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', 'ふじ山', 'gunung-fuji', 1, 76, 'Lihat saja kata ini. Menurut Anda apa maksudnya? Benar - itu adalah nama (Fuji) ditambah kanji untuk <kanji>gunung</kanji>. Gabungkan semuanya, dan Anda akan mendapatkan <vocabulary>Gunung Fuji</vocabulary>. Dalam bahasa Inggris, bagian "Mount(ain)" didahulukan. Dalam bahasa Jepang, namanya muncul di akhir, seperti nama ender さん, ちゃん, dan seterusnya. Anda juga bisa menambahkan 山 di akhir nama gunung mana pun, tidak hanya Gunung Fuji.', 'Biasanya ふじ menggunakan kanji, tapi saya ingin Anda melihat penggunaan kanji ini karena lebih berguna daripada hanya digunakan di Gunung Fuji. Ini diperlakukan seperti kata jukugo (kombinasi kata kanji). Dalam kasus jukugo, biasanya digunakan bacaan on''yomi, artinya Anda hanya perlu mengingat bacaan on''yomi 山. Untungnya, Anda mempelajarinya saat mempelajari kanji, jadi Anda pasti sudah mengetahuinya!', 'Gunung Fuji, Gunung Fuji, Gunung Fuji')
    RETURNING id INTO v_2505_gunung_fuji;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '川', 'sungai', 1, 77, 'Ketika sebuah kosakata terdiri dari satu kanji tanpa okurigana (hiragana yang melekat pada kanji), biasanya maknanya sama dengan kanji asalnya. Nah dari situ kalian tahu kalau kata ini artinya <vocabulary>sungai</vocabulary>.', 'Anda beruntung — bacaan yang Anda pelajari dengan kanji sama dengan yang harus Anda pelajari untuk kosakata ini!', 'Sungai')
    RETURNING id INTO v_2506_sungai;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '人口', 'populasi', 1, 78, 'Jumlah orang yang mempunyai mulut (yang harus Anda beri makan) adalah <vocabulary>populasi</vocabulary> yang harus Anda beri makan.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Karena 人 memiliki dua bacaan on''yomi, berikut adalah mnemonik untuk membantu Anda mengingat mana yang harus digunakan:

Di Tofugu, kami mengukur <vocabulary>populasi</vocabulary> dalam <reading>jean</reading>s (じん). Masing-masing dari kita hanya memiliki satu celana jeans, jadi jika Anda mengetahui jumlah jeans, Anda juga mengetahui populasinya.', 'Populasi')
    RETURNING id INTO v_3402_populasi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '人工', 'palsu', 1, 79, '<kanji>orang</kanji> dari <kanji>industri</kanji> membuat banyak hal dengan tangan, jadi semua yang mereka buat adalah <vocabulary>buatan</vocabulary>, dan juga berarti <vocabulary>buatan manusia</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Karena 人 memiliki dua bacaan on''yomi, berikut adalah mnemonik untuk membantu Anda mengingat mana yang harus digunakan:

Ingatlah hal ini dengan memikirkan bagaimana <reading>jean</reading> (じん) adalah <vocabulary>buatan</vocabulary>. Anda belum pernah melihat jeans tumbuh di pohon, bukan? Tidak, jeans 100% <vocabulary>buatan manusia</vocabulary>.', 'Palsu, Buatan Manusia, Buatan Manusia')
    RETURNING id INTO v_7560_palsu;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '力いっぱい', 'dengan-kekuatan-semua-orang', 1, 80, 'Mudah-mudahan Anda sudah mengetahui bahwa 力 berarti "kekuatan". Anda mungkin juga pernah mendengar kata いっぱい karena sering digunakan dalam percakapan. Kata ini memiliki beberapa arti (Anda akan mempelajarinya lebih lanjut nanti) namun yang penting di sini adalah "penuh" atau "banyak". Gabungkan kedua kata ini dan Anda akan memiliki <vocabulary>kekuatan penuh</vocabulary>, <vocabulary>dengan segenap kekuatan</vocabulary>, dan <vocabulary>sekeras yang bisa</vocabulary>. Ingat yang ini dengan segenap kekuatanmu!

Sekadar catatan tambahan: いっぱい juga bisa ditulis dalam kanji, yang akan Anda pelajari nanti! Namun, dalam kata sederhana seperti ini biasanya ditulis dalam kana.', '力 menggunakan bacaan yang sama seperti yang Anda pelajari dengan kosakata. Itu karena pada dasarnya ini adalah dua kata terpisah yang disatukan.', 'Dengan Kekuatan Semua Orang, Kekuatan Penuh, Sekeras Yang Bisa')
    RETURNING id INTO v_8958_dengan_kekuatan_semua_orang;

  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2467_satu, 'Satu', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2468_satu_hal, 'Satu Hal', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2469_tujuh, 'Tujuh', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2470_tujuh_hal, 'Tujuh Hal', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2471_sembilan, 'Sembilan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2472_sembilan_hal, 'Sembilan Hal', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2473_dua, 'Dua', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2474_dua_hal, 'Dua Hal', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2475_orang, 'Orang', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2476_dua_orang, 'Dua Orang', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2476_dua_orang, 'Pasangan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2476_dua_orang, 'Pasangan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2476_dua_orang, 'Dua Orang', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2477_sendiri, 'Sendiri', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2477_sendiri, 'Satu Orang', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2480_untuk_masuk, 'Untuk Masuk', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2480_untuk_masuk, 'Untuk Masuk', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2482_delapan, 'Delapan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2483_delapan_hal, 'Delapan Hal', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2484_kekuatan, 'Kekuatan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2484_kekuatan, 'Kekuatan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2484_kekuatan, 'Kemampuan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2485_sepuluh, 'Sepuluh', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2486_tiga, 'Tiga', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2487_tiga_hal, 'Tiga Hal', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2488_tiga_orang, 'Tiga Orang', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2488_tiga_orang, 'Tiga Orang', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2489_di_atas, 'Di atas', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2489_di_atas, 'Ke atas', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2489_di_atas, 'Lebih', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2490_untuk_mengangkat_sesuatu, 'Untuk Mengangkat Sesuatu', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2490_untuk_mengangkat_sesuatu, 'Untuk Meningkatkan Sesuatu', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2490_untuk_mengangkat_sesuatu, 'Untuk Meningkatkan Sesuatu', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2493_di_bawah, 'Di bawah', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2493_di_bawah, 'Di bawah', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2493_di_bawah, 'Di bawah', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2493_di_bawah, 'Turun', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2495_untuk_menurunkan_sesuatu, 'Untuk Menurunkan Sesuatu', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2495_untuk_menurunkan_sesuatu, 'Untuk Menggantung Sesuatu', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2496_tolong_berikan_saya, 'Tolong Berikan Saya', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2496_tolong_berikan_saya, 'Silakan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2497_mulut, 'Mulut', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2498_pintu_masuk, 'Pintu masuk', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2499_besar, 'Besar', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2499_besar, 'Besar', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2500_ukuran, 'Ukuran', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2501_besar, 'Besar', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2501_besar, 'Besar', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2501_besar, 'Penting', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2501_besar, 'Masalah Besar', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2502_dewasa, 'Dewasa', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2502_dewasa, 'Dewasa', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2503_wanita, 'Wanita', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2503_wanita, 'Perempuan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2504_gunung, 'Gunung', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2505_gunung_fuji, 'Gunung Fuji', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2505_gunung_fuji, 'Gunung Fuji', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2505_gunung_fuji, 'Gunung Fuji', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2506_sungai, 'Sungai', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3402_populasi, 'Populasi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7560_palsu, 'Palsu', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7560_palsu, 'Buatan Manusia', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7560_palsu, 'Buatan Manusia', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8958_dengan_kekuatan_semua_orang, 'Dengan Kekuatan Semua Orang', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8958_dengan_kekuatan_semua_orang, 'Kekuatan Penuh', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8958_dengan_kekuatan_semua_orang, 'Sekeras Yang Bisa', false, true);

  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2467_satu, 'いち', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2468_satu_hal, 'ひとつ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2469_tujuh, 'なな', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2469_tujuh, 'しち', NULL, false, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2470_tujuh_hal, 'ななつ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2471_sembilan, 'きゅう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2471_sembilan, 'く', NULL, false, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2472_sembilan_hal, 'ここのつ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2473_dua, 'に', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2474_dua_hal, 'ふたつ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2475_orang, 'ひと', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2476_dua_orang, 'ふたり', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2477_sendiri, 'ひとり', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2480_untuk_masuk, 'はいる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2482_delapan, 'はち', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2483_delapan_hal, 'やっつ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2484_kekuatan, 'ちから', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2485_sepuluh, 'じゅう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2486_tiga, 'さん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2487_tiga_hal, 'みっつ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2488_tiga_orang, 'さんにん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2489_di_atas, 'うえ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2490_untuk_mengangkat_sesuatu, 'あげる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2493_di_bawah, 'した', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2495_untuk_menurunkan_sesuatu, 'さげる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2496_tolong_berikan_saya, 'ください', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2497_mulut, 'くち', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2498_pintu_masuk, 'いりぐち', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2499_besar, 'おおきい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2500_ukuran, 'おおきさ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2501_besar, 'たいした', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2502_dewasa, 'おとな', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2503_wanita, 'おんな', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2504_gunung, 'やま', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2505_gunung_fuji, 'ふじさん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2506_sungai, 'かわ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3402_populasi, 'じんこう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_7560_palsu, 'じんこう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_8958_dengan_kekuatan_semua_orang, 'ちからいっぱい', NULL, true, true);

  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2467_satu, 'このレモン、一キログラム！？大きいですね！', 'Lemon ini beratnya satu kilogram!? Itu besar!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2467_satu, 'レベル一です。', 'Ini tingkat 1.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2467_satu, 'このメロンはアメリカ一の大きさです。', 'Ini adalah melon ukuran terbesar di Amerika Serikat.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2468_satu_hal, 'レモン、一つ下さい。', 'Tolong, lemon.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2468_satu_hal, '二つの川が、一つの大きな川になる。', 'Kedua sungai tersebut menjadi satu sungai besar.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2468_satu_hal, '一つだけバニラにして下さい。', 'Tolong buatkan satu vanilla.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2469_tujuh, 'コウイチのラッキーナンバーは七です。', 'Angka keberuntungan Koichi adalah tujuh.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2469_tujuh, 'このパスタは、たったの七ステップでできますよ。', 'Anda bisa membuat pasta ini hanya dalam tujuh langkah.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2469_tujuh, '七カラットのダイアモンドを下さい。', 'Saya ingin berlian tujuh karat.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2470_tujuh_hal, 'そのクッキー、七つ下さい。', 'Tolong, tujuh kue itu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2470_tujuh_hal, 'テイクアウトで、うどんを七つオーダーしました。', 'Saya memesan tujuh udon untuk dibawa pulang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2470_tujuh_hal, 'ドラゴンボールは七つある。', 'Ada tujuh Bola Naga.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2471_sembilan, 'ガソリンスタンドまで九マイルです。', 'Jaraknya sembilan mil ke pompa bensin.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2471_sembilan, '九ページをひらいてください。', 'Silakan buka ke halaman 9.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2471_sembilan, 'このビルには九フロアあります。', 'Ada sembilan lantai di gedung ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2472_sembilan_hal, 'このエリアに九つの山がある。', 'Ada sembilan gunung di kawasan ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2472_sembilan_hal, 'ドーナツを九つもらった。', 'Saya mendapat sembilan donat.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2472_sembilan_hal, '三人しかいないのに、大きいベッドを九つもオーダーしてしまった。', 'Kami hanya bertiga, tapi saya tidak sengaja memesan sembilan tempat tidur besar.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2473_dua, 'エントリーナンバーは二です。', 'Nomor entrinya adalah dua.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2473_dua, '二ゲームとも、アメリカにポイントが入った。', 'Amerika Serikat mendapat poin di kedua pertandingan tersebut.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2473_dua, 'どうしよう。トイレットペーパーが二メートルしかないよ。', 'Ya ampun. Kami hanya punya sisa tisu toilet dua meter.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2474_dua_hal, 'ビルが二つあります。', 'Ada dua bangunan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2474_dua_hal, 'メロンが二つ川に入った。', 'Dua buah melon masuk ke sungai.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2474_dua_hal, '二つのラーメンを三人でシェアした。', 'Kami bertiga berbagi dua mangkuk ramen.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2475_orang, 'この人がコウイチです。', 'Orang ini adalah Koichi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2475_orang, 'あの人はクリーニングの人ですか？', 'Apakah orang itu orang yang bersih-bersih?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2475_orang, 'ふじ山の上には、たくさん人がいましたよ。', 'Ada banyak orang di Gunung Fuji.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2476_dua_orang, 'このアパートは二人には大きい。', 'Apartemen ini terlalu besar untuk dua orang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2476_dua_orang, 'あの二人はバドミントンのダブルスのパートナーです。', 'Kedua orang tersebut merupakan pasangan ganda bulu tangkis.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2476_dua_orang, 'せっかく二人のためにオーダーしたケーキなのに、なんで一人でたべちゃったの？', 'Kenapa kamu memakannya sendiri padahal aku memesan kue untuk kita berdua?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2477_sendiri, '一人でカラオケにいきました。', 'Aku pergi ke karaoke sendirian.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2477_sendiri, '一人なので、カウンターでもいいですよ。', 'Saya sendirian, jadi saya baik-baik saja dengan kursi konter.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2477_sendiri, 'はじめて一人でドライブにいった。', 'Untuk pertama kalinya, saya pergi berkendara sendirian.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2480_untuk_masuk, 'ジェニーはもうすぐインターナショナルスクールに入る。', 'Jenny akan segera pergi ke sekolah internasional.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2480_untuk_masuk, 'マイケルは一人でカラオケに入った。', 'Michael pergi ke karaoke sendirian.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2480_untuk_masuk, 'スキーのクラブに入ったんです。', 'Saya bergabung dengan klub ski.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2482_delapan, 'これは八ページのエッセイです。', 'Ini adalah esai delapan halaman.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2482_delapan, 'トイレットペーパーが八ロールしかない。', 'Hanya ada delapan gulungan tisu toilet.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2482_delapan, 'パパは八トントラックのドライバーなんです。', 'Ayah adalah seorang sopir truk seberat delapan ton.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2483_delapan_hal, 'このカレーにはじゃがいもが八つ入っています。', 'Kari ini mengandung delapan kentang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2483_delapan_hal, 'キットカットが八つ、口に入ってます。', 'Ada delapan KitKat di mulutku.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2483_delapan_hal, 'うちのおばあちゃんはインスタグラムだけで八つもアカウントをもってるんだ。', 'Nenek saya memiliki delapan akun di Instagram saja.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2484_kekuatan, '力の大きさが、ちがう。', 'Besaran kekuatannya berbeda-beda.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2484_kekuatan, 'うちではママが大きな力をもってるんですよ。', 'Di rumahku, ibuku mempunyai banyak kekuasaan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2484_kekuatan, 'リラックスしたいのに、どうしても力が入ってしまう。', 'Aku ingin bersantai, tapi entah kenapa aku menjadi tegang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2485_sepuluh, 'バターを十グラム下さい。', 'Tolong sepuluh gram mentega.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2485_sepuluh, '十までカウントするよ。一、二、三...', 'Saya akan menghitung sampai sepuluh. Satu dua tiga...');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2485_sepuluh, '川で、たこを十メートルまで上げた。', 'Di sungai, saya menerbangkan layang-layang yang tingginya mencapai sepuluh meter.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2486_tiga, '三ドルです。', 'Ini tiga dolar.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2486_tiga, 'はじめの三レッスンまではトライアルです。', 'Hingga tiga pelajaran pertama adalah uji coba.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2486_tiga, 'このキッチンには三タイプあります。', 'Ada tiga tipe model dapur ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2487_tiga_hal, 'このスーツケースにはメロンが三つ入る。', 'Koper ini bisa memuat tiga buah melon.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2487_tiga_hal, 'ここにボールを三つ入るよ。', 'Anda dapat memasukkan tiga bola di sini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2487_tiga_hal, 'チーズバーガーを三つオーダーしたけど、一人で三つたべます。', 'Saya memesan tiga burger keju, dan saya akan memakan ketiganya sendiri.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2488_tiga_orang, '三人のルームメイトがいます。', 'Saya punya tiga teman sekamar.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2488_tiga_orang, '三人のテーブルありますか？', 'Apakah ada meja untuk tiga orang?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2488_tiga_orang, 'ニコラス・ケイジ、キアヌ・リーブス、トム・クルーズ。この三人で、だれがタイプ？', 'Nicholas Cage, Keanu Reeves, dan Tom Cruise. Dari ketiganya, siapa tipemu?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2489_di_atas, '山の上でヨガをしたいね。', 'Saya ingin melakukan yoga di puncak gunung.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2489_di_atas, '上のフロアにキッチンがあります。', 'Ada dapur di lantai atas.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2489_di_atas, 'リビングルームの上にロフトがあります。', 'Ada loteng di atas ruang tamu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2490_untuk_mengangkat_sesuatu, '大きいブランケットをロフトに上げる。', 'Saya mengangkat selimut besar ke loteng.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2490_untuk_mengangkat_sesuatu, '「スピーカーのボリューム、上げる？」「うん。」', '"Haruskah aku menaikkan volume speakernya?" "Ya."');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2490_untuk_mengangkat_sesuatu, 'ピカチュウのレベルを上げるには、どうしたらいいですか？', 'Apa yang bisa saya lakukan untuk menaikkan level Pikachu?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2493_di_bawah, 'あ、テーブルの下にハムスターがいる！', 'Oh, ada hamster di bawah meja!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2493_di_bawah, '下のフロアに、きてください。', 'Silakan turun.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2493_di_bawah, '山の下に大きいレストランがあるよ。', 'Ada sebuah restoran besar di bawah gunung.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2495_untuk_menurunkan_sesuatu, '力いっぱいレバーを下げて！', 'Turunkan tuas sekuat yang Anda bisa!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2495_untuk_menurunkan_sesuatu, '一つレベルを下げよう。', 'Mari kita turunkan satu tingkat.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2495_untuk_menurunkan_sesuatu, 'あっ、このロープ、ベーコンを下げるのにちょうどいい。', 'Oh, tali ini cocok sekali untuk menggantung daging.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2496_tolong_berikan_saya, 'みそラーメン下さい。', 'Tolong, ramen miso.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2496_tolong_berikan_saya, 'りんごを七つ下さい。', 'Bolehkah saya minta tujuh apel?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2496_tolong_berikan_saya, 'どうか、力を下さい。', 'Tolong, beri saya bantuan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2497_mulut, '口にソースがついていますよ。', 'Ada saus di mulutmu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2497_mulut, 'これを口に入れてください。', 'Tolong masukkan ini ke dalam mulutmu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2497_mulut, 'このペットボトルは口が大きすぎる。', 'Mulut botol plastik ini terlalu besar.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2497_mulut, 'ちゃんと口のケアをしないと、女にモテないだろ。', 'Jika Anda tidak menjaga mulut Anda dengan baik, Anda tidak akan beruntung dengan wanita.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2498_pintu_masuk, '入り口は、どこ？', 'Dimana pintu masuknya?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2498_pintu_masuk, '入り口が三つあります。', 'Ada tiga pintu masuk.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2498_pintu_masuk, 'まず、あなたのアパートの入り口のドアの大きさをおしえて。', 'Pertama, beri tahu saya ukuran pintu masuk apartemen Anda.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2499_besar, '大きいメロンを下さい。', 'Tolong, melon yang besar.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2499_besar, 'このサンダルは大きすぎる。', 'Sandal ini terlalu besar.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2499_besar, 'これよりも大きいサイズありますか？', 'Apakah ini tersedia dalam ukuran yang lebih besar?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2500_ukuran, 'このサンダルの大きさは、28センチです。', 'Sandal ini berukuran 28 cm.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2500_ukuran, 'アメリカでビックリしたこと？それはドリンクの大きさですよ。', 'Apa yang mengejutkan saya tentang Amerika Serikat? Ukuran minumannya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2500_ukuran, 'このチェストフリーザーは二人くらい入る大きさですよ。', 'Chest freezer ini cukup besar untuk dua orang atau lebih.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2501_besar, '大したことじゃないよ。', 'Ini bukan masalah besar.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2501_besar, 'えっ！？コウイチが、メジャーリーグに入る？ それは、大したものだ！', 'Apa!? Koichi memasuki liga utama? Itu masalah besar!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2501_besar, 'このオレをふるなんて、大した女だったよ。', 'Dia punya keberanian besar, mencampakkanku.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2502_dewasa, '大人のチケット下さい。', 'Tolong, tiket untuk orang dewasa.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2502_dewasa, 'PG-18は大人のためのコンテンツです。', 'PG-18 adalah konten untuk dewasa.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2502_dewasa, 'わたしは「大人の女」をテーマにしたファッションマガジンのモデルです。', 'Saya seorang model untuk majalah mode yang melayani "wanita dewasa".');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2503_wanita, 'バーに三人の女がいる。', 'Ada tiga wanita di bar.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2503_wanita, '「く + ノ + 一 = 女」なので、女のニンジャのことを「クノイチ」というんです。', 'Karena "く + ノ + 一 = 女", seorang ninja wanita disebut "kunoichi".');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2503_wanita, 'あの女は、とても力のある女スパイだ。', 'Wanita itu adalah mata-mata wanita yang sangat kuat.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2504_gunung, 'これは人工の山だ。', 'Ini adalah gunung buatan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2504_gunung, 'フランス一大きい山はモンブランです。', 'Gunung terbesar nomor satu di Perancis adalah Mont Blanc.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2504_gunung, 'ゴミの山かとおもったら、下にベッドがあった。', 'Saya pikir itu adalah tumpukan sampah, lalu saya menyadari ada tempat tidur di bawahnya..');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2505_gunung_fuji, 'あっ、ふじ山だ！', 'Oh, itu Gunung Fuji!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2505_gunung_fuji, 'エベレスト山は、ふじ山より大きいですか？', 'Apakah Gunung Everest lebih besar dari Gunung Fuji?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2505_gunung_fuji, 'いつかガールフレンドにふじ山の上でプロポーズをしたいんです。', 'Saya ingin melamar pacar saya di puncak Gunung Fuji suatu hari nanti.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2506_sungai, 'この川はアマゾン川です。', 'Sungai ini adalah Sungai Amazon.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2506_sungai, '川でバーベキューしたいなぁ。', 'Saya ingin BBQ di tepi sungai.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2506_sungai, 'えっ。そのビキニで川に入るの？', 'Oh. Apakah kamu pergi ke sungai dengan bikini itu?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3402_populasi, 'このエリアの人口は、たったの一人です。', 'Penduduk di wilayah ini hanya satu orang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3402_populasi, 'こちらの人口はどのくらいですか？', 'Berapa besar populasi di sekitar sini?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3402_populasi, '人口の70%くらいはシャイなんだって。', 'Rupanya, sekitar 70% penduduknya pemalu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7560_palsu, 'これ、ほんとうに人工コアラ？', 'Apakah ini benar-benar koala buatan?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7560_palsu, 'この川は、人工の川です。', 'Sungai ini buatan manusia.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7560_palsu, 'このクオリティ、人工のバラだとはおもえない！', 'Dengan kualitas ini sulit dipercaya bahwa ini adalah mawar buatan!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8958_dengan_kekuatan_semua_orang, '力いっぱいがんばりました！', 'Kami melakukan yang terbaik!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8958_dengan_kekuatan_semua_orang, 'ドアを力いっぱいおしてください。', 'Tolong dorong pintunya sekuat tenaga.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8958_dengan_kekuatan_semua_orang, 'リレーでは力いっぱいはしりました。', 'Saya berlari secepat yang saya bisa dalam estafet.');

  -- 4. PREREQUISITES
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_440_satu, r_1_tanah);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_441_dua, r_7_dua);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_442_sembilan, r_11_sembilan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_443_tujuh, r_4_tujuh);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_444_orang, r_9_orang);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_445_memasuki, r_12_memasuki);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_446_delapan, r_2_sirip);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_447_kekuatan, r_13_kekuatan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_448_sepuluh, r_15_menyeberang);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_449_tiga, r_1_tanah);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_449_tiga, r_7_dua);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_450_di_atas, r_10_kaki);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_450_di_atas, r_1_tanah);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_451_di_bawah, r_1_tanah);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_451_di_bawah, r_10_kaki);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_452_mulut, r_16_mulut);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_453_besar, r_18_besar);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_454_wanita, r_19_wanita);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_455_gunung, r_20_gunung);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_456_sungai, r_21_sungai);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_457_konstruksi, r_25_konstruksi);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2467_satu, k_440_satu);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2468_satu_hal, k_440_satu);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2469_tujuh, k_443_tujuh);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2470_tujuh_hal, k_443_tujuh);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2471_sembilan, k_442_sembilan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2472_sembilan_hal, k_442_sembilan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2473_dua, k_441_dua);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2474_dua_hal, k_441_dua);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2475_orang, k_444_orang);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2476_dua_orang, k_441_dua);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2476_dua_orang, k_444_orang);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2477_sendiri, k_440_satu);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2477_sendiri, k_444_orang);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2480_untuk_masuk, k_445_memasuki);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2482_delapan, k_446_delapan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2483_delapan_hal, k_446_delapan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2484_kekuatan, k_447_kekuatan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2485_sepuluh, k_448_sepuluh);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2486_tiga, k_449_tiga);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2487_tiga_hal, k_449_tiga);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2488_tiga_orang, k_449_tiga);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2488_tiga_orang, k_444_orang);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2489_di_atas, k_450_di_atas);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2490_untuk_mengangkat_sesuatu, k_450_di_atas);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2493_di_bawah, k_451_di_bawah);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2495_untuk_menurunkan_sesuatu, k_451_di_bawah);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2496_tolong_berikan_saya, k_451_di_bawah);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2497_mulut, k_452_mulut);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2498_pintu_masuk, k_445_memasuki);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2498_pintu_masuk, k_452_mulut);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2499_besar, k_453_besar);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2500_ukuran, k_453_besar);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2501_besar, k_453_besar);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2502_dewasa, k_453_besar);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2502_dewasa, k_444_orang);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2503_wanita, k_454_wanita);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2504_gunung, k_455_gunung);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2505_gunung_fuji, k_455_gunung);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2506_sungai, k_456_sungai);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3402_populasi, k_444_orang);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3402_populasi, k_452_mulut);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7560_palsu, k_444_orang);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7560_palsu, k_457_konstruksi);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8958_dengan_kekuatan_semua_orang, k_447_kekuatan);

END $$;
