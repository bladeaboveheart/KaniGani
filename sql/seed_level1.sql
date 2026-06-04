-- ============================================================
-- KaniGani — Seed Data Level 1 (v2, relasional)
-- Jalankan SETELAH schema.sql berhasil dieksekusi
-- ============================================================

DO $$
DECLARE
  -- ============ RADICAL IDs ============
  r_kait      UUID; r_besar     UUID; r_konstr    UUID;
  r_salib     UUID; r_titik     UUID; r_masuk     UUID;
  r_sirip     UUID; r_tanah     UUID; r_pistol    UUID;
  r_tutup     UUID; r_gunung    UUID; r_mulut     UUID;
  r_sembilan  UUID; r_orang     UUID; r_kekuatan  UUID;
  r_penjara   UUID; r_sungai    UUID; r_tujuh     UUID;
  r_seluncur  UUID; r_tongkat   UUID; r_matahari  UUID;
  r_jempol    UUID; r_pohon     UUID; r_dua_rad   UUID;
  r_wanita    UUID;

  -- ============ KANJI IDs ============
  k_atas      UUID; k_bawah     UUID; k_besar     UUID;
  k_konstr    UUID; k_delapan   UUID; k_masuk     UUID;
  k_gunung    UUID; k_mulut     UUID; k_sembilan  UUID;
  k_satu      UUID; k_orang     UUID; k_kekuatan  UUID;
  k_sungai    UUID; k_tujuh     UUID; k_sepuluh   UUID;
  k_tiga      UUID; k_dua       UUID; k_wanita    UUID;

  -- ============ VOCABULARY IDs ============
  v_atas      UUID; v_orang_dewasa UUID; v_sendirian  UUID;
  v_buatan    UUID; v_bawah        UUID; v_besar_i    UUID;
  v_delapan   UUID; v_delapan_hal  UUID; v_pintu_masuk UUID;
  v_hebat     UUID; v_gunung       UUID; v_mulut       UUID;
  v_gunung_fuji UUID; v_sembilan   UUID; v_sembilan_hal UUID;
  v_satu      UUID; v_satu_hal     UUID; v_orang        UUID;
  v_tolong    UUID; v_populasi     UUID; v_kekuatan     UUID;
  v_sungai    UUID; v_tujuh        UUID; v_tujuh_hal    UUID;
  v_ukuran    UUID; v_sepuluh      UUID; v_tiga         UUID;
  v_tiga_orang UUID; v_tiga_hal   UUID; v_masuk_v      UUID;
  v_angkat    UUID; v_turun        UUID; v_dua          UUID;
  v_dua_orang UUID; v_dua_hal      UUID; v_segenap      UUID;
  v_wanita    UUID;

BEGIN

  -- ============================================================
  -- RADICAL
  -- ============================================================
  INSERT INTO items (type,character,slug,level,lesson_position,description)
    VALUES ('radical','亅','kait',1,1,'Bentuk seperti kail pancing yang melengkung ke kiri di bagian bawah.') RETURNING id INTO r_kait;
  INSERT INTO items (type,character,slug,level,lesson_position,description)
    VALUES ('radical','大','besar',1,2,'Orang berdiri dengan tangan dan kaki terbuka lebar — menunjukkan sesuatu yang besar.') RETURNING id INTO r_besar;
  INSERT INTO items (type,character,slug,level,lesson_position,description)
    VALUES ('radical','工','konstruksi',1,3,'Terlihat seperti dua balok di atas dan di bawah yang dihubungkan oleh tiang — simbol konstruksi.') RETURNING id INTO r_konstr;
  INSERT INTO items (type,character,slug,level,lesson_position,description)
    VALUES ('radical','十','salib',1,4,'Dua garis yang saling bersilangan membentuk salib.') RETURNING id INTO r_salib;
  INSERT INTO items (type,character,slug,level,lesson_position,description)
    VALUES ('radical','丶','titik',1,5,'Sebuah titik kecil, sederhana dan tunggal.') RETURNING id INTO r_titik;
  INSERT INTO items (type,character,slug,level,lesson_position,description)
    VALUES ('radical','入','masuk',1,6,'Bentuk seperti dua kaki yang sedang melangkah masuk ke suatu tempat.') RETURNING id INTO r_masuk;
  INSERT INTO items (type,character,slug,level,lesson_position,description)
    VALUES ('radical','ハ','sirip',1,7,'Dua goresan miring seperti sepasang sirip ikan.') RETURNING id INTO r_sirip;
  INSERT INTO items (type,character,slug,level,lesson_position,description)
    VALUES ('radical','一','tanah',1,8,'Satu garis horizontal datar — seperti permukaan tanah.') RETURNING id INTO r_tanah;
  INSERT INTO items (type,character,slug,level,lesson_position,description)
    VALUES ('radical','𠂉','pistol',1,9,'Bentuknya menyerupai laras pistol yang mengarah ke samping.') RETURNING id INTO r_pistol;
  INSERT INTO items (type,character,slug,level,lesson_position,description)
    VALUES ('radical','亠','tutup',1,10,'Bentuk seperti tutup atau topi yang menutup sesuatu di bawahnya.') RETURNING id INTO r_tutup;
  INSERT INTO items (type,character,slug,level,lesson_position,description)
    VALUES ('radical','山','gunung',1,11,'Tiga puncak yang menjulang — persis siluet sebuah gunung.') RETURNING id INTO r_gunung;
  INSERT INTO items (type,character,slug,level,lesson_position,description)
    VALUES ('radical','口','mulut',1,12,'Kotak persegi sederhana yang menyerupai bentuk mulut yang terbuka.') RETURNING id INTO r_mulut;
  INSERT INTO items (type,character,slug,level,lesson_position,description)
    VALUES ('radical','九','sembilan',1,13,'Bentuknya seperti angka 9 — karakter ini memang berarti sembilan.') RETURNING id INTO r_sembilan;
  INSERT INTO items (type,character,slug,level,lesson_position,description)
    VALUES ('radical','人','orang',1,14,'Dua goresan seperti orang yang sedang berjalan atau berdiri tegak.') RETURNING id INTO r_orang;
  INSERT INTO items (type,character,slug,level,lesson_position,description)
    VALUES ('radical','力','kekuatan',1,15,'Terlihat seperti lengan berotot yang menunjukkan kekuatan fisik.') RETURNING id INTO r_kekuatan;
  INSERT INTO items (type,character,slug,level,lesson_position,description)
    VALUES ('radical','勹','penjara',1,16,'Bentuk membungkuk yang seolah memeluk atau mengurung sesuatu di dalamnya.') RETURNING id INTO r_penjara;
  INSERT INTO items (type,character,slug,level,lesson_position,description)
    VALUES ('radical','川','sungai',1,17,'Tiga garis vertikal yang mengalir paralel — seperti aliran sungai.') RETURNING id INTO r_sungai;
  INSERT INTO items (type,character,slug,level,lesson_position,description)
    VALUES ('radical','七','tujuh',1,18,'Bentuknya mirip angka 7 — karakter ini memang berarti tujuh.') RETURNING id INTO r_tujuh;
  INSERT INTO items (type,character,slug,level,lesson_position,description)
    VALUES ('radical','丿','seluncur',1,19,'Satu goresan melengkung ke bawah seperti jalur seluncur.') RETURNING id INTO r_seluncur;
  INSERT INTO items (type,character,slug,level,lesson_position,description)
    VALUES ('radical','丨','tongkat',1,20,'Satu garis vertikal lurus seperti sebuah tongkat.') RETURNING id INTO r_tongkat;
  INSERT INTO items (type,character,slug,level,lesson_position,description)
    VALUES ('radical','日','matahari',1,21,'Kotak dengan garis di tengah — menggambarkan matahari bersinar.') RETURNING id INTO r_matahari;
  INSERT INTO items (type,character,slug,level,lesson_position,description)
    VALUES ('radical','ト','jempol-kaki',1,22,'Bentuknya seperti jempol kaki yang menunjuk ke bawah.') RETURNING id INTO r_jempol;
  INSERT INTO items (type,character,slug,level,lesson_position,description)
    VALUES ('radical','木','pohon',1,23,'Akar di bawah, batang di tengah, cabang di atas — siluet pohon.') RETURNING id INTO r_pohon;
  INSERT INTO items (type,character,slug,level,lesson_position,description)
    VALUES ('radical','二','dua',1,24,'Dua garis horizontal — simpel dan langsung menunjukkan angka dua.') RETURNING id INTO r_dua_rad;
  INSERT INTO items (type,character,slug,level,lesson_position,description)
    VALUES ('radical','女','wanita',1,25,'Goresan yang menggambarkan sosok wanita yang sedang duduk atau membungkuk.') RETURNING id INTO r_wanita;

  -- Meanings: radical hanya punya primary meaning (tidak ada reading)
  INSERT INTO item_meanings(item_id,meaning,primary_meaning) VALUES (r_kait,'Kait',true);
  INSERT INTO item_meanings(item_id,meaning,primary_meaning) VALUES (r_besar,'Besar',true);
  INSERT INTO item_meanings(item_id,meaning,primary_meaning) VALUES (r_konstr,'Konstruksi',true);
  INSERT INTO item_meanings(item_id,meaning,primary_meaning) VALUES (r_salib,'Salib',true);
  INSERT INTO item_meanings(item_id,meaning,primary_meaning) VALUES (r_titik,'Titik',true);
  INSERT INTO item_meanings(item_id,meaning,primary_meaning) VALUES (r_masuk,'Masuk',true);
  INSERT INTO item_meanings(item_id,meaning,primary_meaning) VALUES (r_sirip,'Sirip',true);
  INSERT INTO item_meanings(item_id,meaning,primary_meaning) VALUES (r_tanah,'Tanah',true);
  INSERT INTO item_meanings(item_id,meaning,primary_meaning) VALUES (r_pistol,'Pistol',true);
  INSERT INTO item_meanings(item_id,meaning,primary_meaning) VALUES (r_tutup,'Tutup',true);
  INSERT INTO item_meanings(item_id,meaning,primary_meaning) VALUES (r_gunung,'Gunung',true);
  INSERT INTO item_meanings(item_id,meaning,primary_meaning) VALUES (r_mulut,'Mulut',true);
  INSERT INTO item_meanings(item_id,meaning,primary_meaning) VALUES (r_sembilan,'Sembilan',true);
  INSERT INTO item_meanings(item_id,meaning,primary_meaning) VALUES (r_orang,'Orang',true);
  INSERT INTO item_meanings(item_id,meaning,primary_meaning) VALUES (r_kekuatan,'Kekuatan',true);
  INSERT INTO item_meanings(item_id,meaning,primary_meaning) VALUES (r_penjara,'Penjara',true);
  INSERT INTO item_meanings(item_id,meaning,primary_meaning) VALUES (r_sungai,'Sungai',true);
  INSERT INTO item_meanings(item_id,meaning,primary_meaning) VALUES (r_tujuh,'Tujuh',true);
  INSERT INTO item_meanings(item_id,meaning,primary_meaning) VALUES (r_seluncur,'Seluncur',true);
  INSERT INTO item_meanings(item_id,meaning,primary_meaning) VALUES (r_tongkat,'Tongkat',true);
  INSERT INTO item_meanings(item_id,meaning,primary_meaning) VALUES (r_matahari,'Matahari',true);
  INSERT INTO item_meanings(item_id,meaning,primary_meaning) VALUES (r_jempol,'Jempol Kaki',true);
  INSERT INTO item_meanings(item_id,meaning,primary_meaning) VALUES (r_pohon,'Pohon',true);
  INSERT INTO item_meanings(item_id,meaning,primary_meaning) VALUES (r_dua_rad,'Dua',true);
  INSERT INTO item_meanings(item_id,meaning,primary_meaning) VALUES (r_wanita,'Wanita',true);

  -- ============================================================
  -- KANJI
  -- ============================================================
  INSERT INTO items (type,character,slug,level,lesson_position,meaning_mnemonic,reading_mnemonic)
    VALUES ('kanji','上','atas',1,26,
      'Bayangkan tanah (一) dengan tongkat (丨) yang menunjuk ke ATAS — sesuatu yang berada di atas permukaan tanah.',
      'Seorang jenderal (じょう — JŌ) selalu berdiri di posisi ATAS panggung.')
    RETURNING id INTO k_atas;

  INSERT INTO items (type,character,slug,level,lesson_position,meaning_mnemonic,reading_mnemonic)
    VALUES ('kanji','下','bawah',1,27,
      'Tanah (一) dengan jempol kaki (ト) yang menunjuk ke BAWAH — di bawah tanah.',
      'Seekor kuda (か — KA) selalu menunduk ke BAWAH saat makan rumput.')
    RETURNING id INTO k_bawah;

  INSERT INTO items (type,character,slug,level,lesson_position,meaning_mnemonic,reading_mnemonic)
    VALUES ('kanji','大','besar',1,28,
      'Orang berdiri dengan tangan dan kaki terbuka lebar — menunjukkan sesuatu yang BESAR.',
      'Seekor tai (たい — TAI) adalah ikan BESAR yang terkenal di Jepang.')
    RETURNING id INTO k_besar;

  INSERT INTO items (type,character,slug,level,lesson_position,meaning_mnemonic,reading_mnemonic)
    VALUES ('kanji','工','konstruksi',1,29,
      'Dua balok dihubungkan tiang — simbol KONSTRUKSI bangunan.',
      'Seorang kontraktor (こう — KŌ) memimpin proyek KONSTRUKSI.')
    RETURNING id INTO k_konstr;

  INSERT INTO items (type,character,slug,level,lesson_position,meaning_mnemonic,reading_mnemonic)
    VALUES ('kanji','八','delapan',1,30,
      'Dua sirip (ハ) yang membuka — seperti DELAPAN jari yang membuka.',
      'Hatchi (はち — HACHI) adalah anjing setia yang menunggu tuannya — DELAPAN tahun menunggu.')
    RETURNING id INTO k_delapan;

  INSERT INTO items (type,character,slug,level,lesson_position,meaning_mnemonic,reading_mnemonic)
    VALUES ('kanji','入','masuk',1,31,
      'Dua kaki yang melangkah — sedang MASUK ke suatu tempat.',
      'Seorang biksu (にゅう — NYŪ) harus MASUK ke kuil dengan kaki telanjang.')
    RETURNING id INTO k_masuk;

  INSERT INTO items (type,character,slug,level,lesson_position,meaning_mnemonic,reading_mnemonic)
    VALUES ('kanji','山','gunung',1,32,
      'Tiga puncak menjulang — persis siluet sebuah GUNUNG.',
      'San (さん — SAN) adalah angka tiga, seperti TIGA puncak GUNUNG.')
    RETURNING id INTO k_gunung;

  INSERT INTO items (type,character,slug,level,lesson_position,meaning_mnemonic,reading_mnemonic)
    VALUES ('kanji','口','mulut',1,33,
      'Kotak persegi — bentuk MULUT yang terbuka.',
      'Seorang komedian (こう — KŌ) selalu membuka MULUT-nya lebar-lebar.')
    RETURNING id INTO k_mulut;

  INSERT INTO items (type,character,slug,level,lesson_position,meaning_mnemonic,reading_mnemonic)
    VALUES ('kanji','九','sembilan',1,34,
      'Bentuk seperti angka 9 — karakter ini berarti SEMBILAN.',
      'Seekor kuda (く — KU) memiliki SEMBILAN nyawa.')
    RETURNING id INTO k_sembilan;

  INSERT INTO items (type,character,slug,level,lesson_position,meaning_mnemonic,reading_mnemonic)
    VALUES ('kanji','一','satu',1,35,
      'Satu garis horizontal — paling sederhana, berarti SATU.',
      'Ichi (いち — ICHI) adalah kata Jepang untuk SATU.')
    RETURNING id INTO k_satu;

  INSERT INTO items (type,character,slug,level,lesson_position,meaning_mnemonic,reading_mnemonic)
    VALUES ('kanji','人','orang',1,36,
      'Dua goresan seperti kaki ORANG yang berjalan.',
      'Ninja (にん — NIN) adalah ORANG yang bergerak dalam kegelapan.')
    RETURNING id INTO k_orang;

  INSERT INTO items (type,character,slug,level,lesson_position,meaning_mnemonic,reading_mnemonic)
    VALUES ('kanji','力','kekuatan',1,37,
      'Lengan berotot — simbol KEKUATAN fisik.',
      'Seorang ryoku (りょく — RYOKU) adalah pejuang penuh KEKUATAN.')
    RETURNING id INTO k_kekuatan;

  INSERT INTO items (type,character,slug,level,lesson_position,meaning_mnemonic,reading_mnemonic)
    VALUES ('kanji','川','sungai',1,38,
      'Tiga garis mengalir paralel — aliran SUNGAI.',
      'Kawah (かわ — KAWA) gunung berapi dialiri aliran seperti SUNGAI.')
    RETURNING id INTO k_sungai;

  INSERT INTO items (type,character,slug,level,lesson_position,meaning_mnemonic,reading_mnemonic)
    VALUES ('kanji','七','tujuh',1,39,
      'Seperti angka 7 — berarti TUJUH.',
      'Shichi (しち — SHICHI) adalah kata Jepang untuk TUJUH.')
    RETURNING id INTO k_tujuh;

  INSERT INTO items (type,character,slug,level,lesson_position,meaning_mnemonic,reading_mnemonic)
    VALUES ('kanji','十','sepuluh',1,40,
      'Salib (十) — dua garis bersilang, berarti SEPULUH.',
      'Juru (じゅう — JŪ) bicara kepada SEPULUH muridnya.')
    RETURNING id INTO k_sepuluh;

  INSERT INTO items (type,character,slug,level,lesson_position,meaning_mnemonic,reading_mnemonic)
    VALUES ('kanji','三','tiga',1,41,
      'Tiga garis horizontal yang rapi — berarti TIGA.',
      'San (さん — SAN) adalah kata Jepang untuk TIGA.')
    RETURNING id INTO k_tiga;

  INSERT INTO items (type,character,slug,level,lesson_position,meaning_mnemonic,reading_mnemonic)
    VALUES ('kanji','二','dua',1,42,
      'Dua garis horizontal — berarti DUA.',
      'Ni (に — NI) adalah kata Jepang untuk DUA.')
    RETURNING id INTO k_dua;

  INSERT INTO items (type,character,slug,level,lesson_position,meaning_mnemonic,reading_mnemonic)
    VALUES ('kanji','女','wanita',1,43,
      'Goresan yang menggambarkan sosok WANITA yang membungkuk.',
      'Jo (じょ — JO) adalah nama perempuan — WANITA.')
    RETURNING id INTO k_wanita;

  -- Meanings & readings: kanji
  INSERT INTO item_meanings(item_id,meaning,primary_meaning) VALUES (k_atas,'Atas',true);
  INSERT INTO item_meanings(item_id,meaning,primary_meaning) VALUES (k_bawah,'Bawah',true);
  INSERT INTO item_meanings(item_id,meaning,primary_meaning) VALUES (k_besar,'Besar',true);
  INSERT INTO item_meanings(item_id,meaning,primary_meaning) VALUES (k_konstr,'Konstruksi',true);
  INSERT INTO item_meanings(item_id,meaning,primary_meaning) VALUES (k_delapan,'Delapan',true);
  INSERT INTO item_meanings(item_id,meaning,primary_meaning) VALUES (k_masuk,'Masuk',true);
  INSERT INTO item_meanings(item_id,meaning,primary_meaning) VALUES (k_gunung,'Gunung',true);
  INSERT INTO item_meanings(item_id,meaning,primary_meaning) VALUES (k_mulut,'Mulut',true);
  INSERT INTO item_meanings(item_id,meaning,primary_meaning) VALUES (k_sembilan,'Sembilan',true);
  INSERT INTO item_meanings(item_id,meaning,primary_meaning) VALUES (k_satu,'Satu',true);
  INSERT INTO item_meanings(item_id,meaning,primary_meaning) VALUES (k_orang,'Orang',true);
  INSERT INTO item_meanings(item_id,meaning,primary_meaning) VALUES (k_kekuatan,'Kekuatan',true);
  INSERT INTO item_meanings(item_id,meaning,primary_meaning) VALUES (k_sungai,'Sungai',true);
  INSERT INTO item_meanings(item_id,meaning,primary_meaning) VALUES (k_tujuh,'Tujuh',true);
  INSERT INTO item_meanings(item_id,meaning,primary_meaning) VALUES (k_sepuluh,'Sepuluh',true);
  INSERT INTO item_meanings(item_id,meaning,primary_meaning) VALUES (k_tiga,'Tiga',true);
  INSERT INTO item_meanings(item_id,meaning,primary_meaning) VALUES (k_dua,'Dua',true);
  INSERT INTO item_meanings(item_id,meaning,primary_meaning) VALUES (k_wanita,'Wanita',true);

  -- Readings kanji (onyomi = primary yang diuji)
  INSERT INTO item_readings(item_id,reading,reading_type,primary_reading) VALUES (k_atas,'じょう','onyomi',true);
  INSERT INTO item_readings(item_id,reading,reading_type,primary_reading) VALUES (k_atas,'うえ','kunyomi',false);
  INSERT INTO item_readings(item_id,reading,reading_type,primary_reading) VALUES (k_atas,'あ','kunyomi',false);

  INSERT INTO item_readings(item_id,reading,reading_type,primary_reading) VALUES (k_bawah,'か','onyomi',true);
  INSERT INTO item_readings(item_id,reading,reading_type,primary_reading) VALUES (k_bawah,'した','kunyomi',false);
  INSERT INTO item_readings(item_id,reading,reading_type,primary_reading) VALUES (k_bawah,'さ','kunyomi',false);

  INSERT INTO item_readings(item_id,reading,reading_type,primary_reading) VALUES (k_besar,'たい','onyomi',true);
  INSERT INTO item_readings(item_id,reading,reading_type,primary_reading) VALUES (k_besar,'だい','onyomi',false);
  INSERT INTO item_readings(item_id,reading,reading_type,primary_reading) VALUES (k_besar,'おお','kunyomi',false);

  INSERT INTO item_readings(item_id,reading,reading_type,primary_reading) VALUES (k_konstr,'こう','onyomi',true);

  INSERT INTO item_readings(item_id,reading,reading_type,primary_reading) VALUES (k_delapan,'はち','onyomi',true);
  INSERT INTO item_readings(item_id,reading,reading_type,primary_reading) VALUES (k_delapan,'やっ','kunyomi',false);

  INSERT INTO item_readings(item_id,reading,reading_type,primary_reading) VALUES (k_masuk,'にゅう','onyomi',true);
  INSERT INTO item_readings(item_id,reading,reading_type,primary_reading) VALUES (k_masuk,'はい','kunyomi',false);

  INSERT INTO item_readings(item_id,reading,reading_type,primary_reading) VALUES (k_gunung,'さん','onyomi',true);
  INSERT INTO item_readings(item_id,reading,reading_type,primary_reading) VALUES (k_gunung,'やま','kunyomi',false);

  INSERT INTO item_readings(item_id,reading,reading_type,primary_reading) VALUES (k_mulut,'こう','onyomi',true);
  INSERT INTO item_readings(item_id,reading,reading_type,primary_reading) VALUES (k_mulut,'くち','kunyomi',false);

  INSERT INTO item_readings(item_id,reading,reading_type,primary_reading) VALUES (k_sembilan,'く','onyomi',true);
  INSERT INTO item_readings(item_id,reading,reading_type,primary_reading) VALUES (k_sembilan,'きゅう','onyomi',false);
  INSERT INTO item_readings(item_id,reading,reading_type,primary_reading) VALUES (k_sembilan,'ここの','kunyomi',false);

  INSERT INTO item_readings(item_id,reading,reading_type,primary_reading) VALUES (k_satu,'いち','onyomi',true);
  INSERT INTO item_readings(item_id,reading,reading_type,primary_reading) VALUES (k_satu,'ひと','kunyomi',false);

  INSERT INTO item_readings(item_id,reading,reading_type,primary_reading) VALUES (k_orang,'にん','onyomi',true);
  INSERT INTO item_readings(item_id,reading,reading_type,primary_reading) VALUES (k_orang,'じん','onyomi',false);
  INSERT INTO item_readings(item_id,reading,reading_type,primary_reading) VALUES (k_orang,'ひと','kunyomi',false);

  INSERT INTO item_readings(item_id,reading,reading_type,primary_reading) VALUES (k_kekuatan,'りょく','onyomi',true);
  INSERT INTO item_readings(item_id,reading,reading_type,primary_reading) VALUES (k_kekuatan,'ちから','kunyomi',false);

  INSERT INTO item_readings(item_id,reading,reading_type,primary_reading) VALUES (k_sungai,'かわ','kunyomi',true);

  INSERT INTO item_readings(item_id,reading,reading_type,primary_reading) VALUES (k_tujuh,'しち','onyomi',true);
  INSERT INTO item_readings(item_id,reading,reading_type,primary_reading) VALUES (k_tujuh,'なな','kunyomi',false);

  INSERT INTO item_readings(item_id,reading,reading_type,primary_reading) VALUES (k_sepuluh,'じゅう','onyomi',true);
  INSERT INTO item_readings(item_id,reading,reading_type,primary_reading) VALUES (k_sepuluh,'とお','kunyomi',false);

  INSERT INTO item_readings(item_id,reading,reading_type,primary_reading) VALUES (k_tiga,'さん','onyomi',true);
  INSERT INTO item_readings(item_id,reading,reading_type,primary_reading) VALUES (k_tiga,'み','kunyomi',false);

  INSERT INTO item_readings(item_id,reading,reading_type,primary_reading) VALUES (k_dua,'に','onyomi',true);
  INSERT INTO item_readings(item_id,reading,reading_type,primary_reading) VALUES (k_dua,'ふた','kunyomi',false);

  INSERT INTO item_readings(item_id,reading,reading_type,primary_reading) VALUES (k_wanita,'じょ','onyomi',true);
  INSERT INTO item_readings(item_id,reading,reading_type,primary_reading) VALUES (k_wanita,'おんな','kunyomi',false);

  -- ============================================================
  -- VOCABULARY
  -- ============================================================
  INSERT INTO items (type,character,slug,level,lesson_position,meaning_mnemonic,description)
    VALUES ('vocabulary','上','atas-v',1,44,
      'Ingat kanji 上 yang berarti atas — dipakai langsung sebagai kata benda: posisi di atas.',
      'Kata benda yang merujuk pada posisi atau arah ke atas.')
    RETURNING id INTO v_atas;

  INSERT INTO items (type,character,slug,level,lesson_position,meaning_mnemonic,description)
    VALUES ('vocabulary','大人','orang-dewasa',1,45,
      'Orang BESAR (大) yang sudah dewasa — kombinasi besar + orang.',
      'Kata benda untuk orang dewasa; kontras dengan 子供 (anak-anak).')
    RETURNING id INTO v_orang_dewasa;

  INSERT INTO items (type,character,slug,level,lesson_position,meaning_mnemonic,description)
    VALUES ('vocabulary','一人','sendirian',1,46,
      'SATU orang (一人) — hanya seorang diri, sendirian.',
      'Juga bisa berarti "satu orang" dalam konteks menghitung.')
    RETURNING id INTO v_sendirian;

  INSERT INTO items (type,character,slug,level,lesson_position,meaning_mnemonic,description)
    VALUES ('vocabulary','人工','buatan',1,47,
      'Karya ORANG (人) dari hasil KONSTRUKSI (工) — sesuatu yang dibuat oleh manusia.',
      'Digunakan dalam konteks teknologi buatan manusia, seperti 人工知能 (kecerdasan buatan).')
    RETURNING id INTO v_buatan;

  INSERT INTO items (type,character,slug,level,lesson_position,meaning_mnemonic,description)
    VALUES ('vocabulary','下','bawah-v',1,48,
      'Kanji 下 yang berarti bawah — dipakai langsung sebagai kata benda posisi di bawah.',
      'Kata benda yang merujuk pada posisi atau arah ke bawah.')
    RETURNING id INTO v_bawah;

  INSERT INTO items (type,character,slug,level,lesson_position,meaning_mnemonic,description)
    VALUES ('vocabulary','大きい','besar-i',1,49,
      'Kanji BESAR (大) dengan akhiran い — menjadi kata sifat yang berarti besar.',
      'Kata sifat い-adjective. Lawan kata: 小さい (kecil).')
    RETURNING id INTO v_besar_i;

  INSERT INTO items (type,character,slug,level,lesson_position,meaning_mnemonic,description)
    VALUES ('vocabulary','八','delapan-v',1,50,
      'Kanji DELAPAN (八) dibaca sendiri sebagai kata angka delapan.',
      'Angka 8 dalam bentuk kata benda Jepang asli.')
    RETURNING id INTO v_delapan;

  INSERT INTO items (type,character,slug,level,lesson_position,meaning_mnemonic,description)
    VALUES ('vocabulary','八つ','delapan-hal',1,51,
      'DELAPAN (八) hal — menggunakan penghitung つ untuk benda umum.',
      'Cara menghitung delapan benda menggunakan penghitung asli Jepang.')
    RETURNING id INTO v_delapan_hal;

  INSERT INTO items (type,character,slug,level,lesson_position,meaning_mnemonic,description)
    VALUES ('vocabulary','入り口','pintu-masuk',1,52,
      'Tempat untuk MASUK (入り) melalui MULUT (口) bangunan — pintu masuk.',
      'Kata benda untuk entrance atau pintu masuk gedung, toko, dll.')
    RETURNING id INTO v_pintu_masuk;

  INSERT INTO items (type,character,slug,level,lesson_position,meaning_mnemonic,description)
    VALUES ('vocabulary','大した','hebat',1,53,
      'Sesuatu yang BESAR (大) dampaknya — dipakai untuk menyatakan kehebatan.',
      'Kata sifat na-adjective atau prenominal yang berarti luar biasa / hebat.')
    RETURNING id INTO v_hebat;

  INSERT INTO items (type,character,slug,level,lesson_position,meaning_mnemonic,description)
    VALUES ('vocabulary','山','gunung-v',1,54,
      'Kanji GUNUNG (山) dibaca sendiri — langsung merujuk ke gunung.',
      'Kata benda umum untuk gunung.')
    RETURNING id INTO v_gunung;

  INSERT INTO items (type,character,slug,level,lesson_position,meaning_mnemonic,description)
    VALUES ('vocabulary','口','mulut-v',1,55,
      'Kanji MULUT (口) dibaca sendiri — bagian wajah untuk berbicara dan makan.',
      'Juga dipakai dalam arti kiasan seperti 口 (pembukaan, celah).')
    RETURNING id INTO v_mulut;

  INSERT INTO items (type,character,slug,level,lesson_position,meaning_mnemonic,description)
    VALUES ('vocabulary','ふじ山','gunung-fuji',1,56,
      'GUNUNG (山) Fuji — gunung paling terkenal di Jepang.',
      'Nama resmi: 富士山. Simbol nasional Jepang.')
    RETURNING id INTO v_gunung_fuji;

  INSERT INTO items (type,character,slug,level,lesson_position,meaning_mnemonic,description)
    VALUES ('vocabulary','九','sembilan-v',1,57,
      'Kanji SEMBILAN (九) dibaca sebagai angka sembilan.',
      'Angka 9. Bacaan きゅう lebih umum dalam percakapan modern.')
    RETURNING id INTO v_sembilan;

  INSERT INTO items (type,character,slug,level,lesson_position,meaning_mnemonic,description)
    VALUES ('vocabulary','九つ','sembilan-hal',1,58,
      'SEMBILAN (九) hal — menggunakan penghitung つ untuk benda umum.',
      'Cara menghitung sembilan benda menggunakan penghitung asli Jepang.')
    RETURNING id INTO v_sembilan_hal;

  INSERT INTO items (type,character,slug,level,lesson_position,meaning_mnemonic,description)
    VALUES ('vocabulary','一','satu-v',1,59,
      'Kanji SATU (一) dibaca sendiri — angka satu.',
      'Angka 1 dalam bentuk kata benda Jepang asli.')
    RETURNING id INTO v_satu;

  INSERT INTO items (type,character,slug,level,lesson_position,meaning_mnemonic,description)
    VALUES ('vocabulary','一つ','satu-hal',1,60,
      'SATU (一) hal — penghitung つ untuk benda umum.',
      'Cara menghitung satu benda menggunakan penghitung asli Jepang.')
    RETURNING id INTO v_satu_hal;

  INSERT INTO items (type,character,slug,level,lesson_position,meaning_mnemonic,description)
    VALUES ('vocabulary','人','orang-v',1,61,
      'Kanji ORANG (人) dibaca sendiri — merujuk pada seseorang.',
      'Bisa merujuk pada "orang", "manusia", atau "seseorang".')
    RETURNING id INTO v_orang;

  INSERT INTO items (type,character,slug,level,lesson_position,meaning_mnemonic,description)
    VALUES ('vocabulary','下さい','tolong-berikan',1,62,
      'Bentuk permintaan sopan dari BAWAH (下) — meminta sesuatu dengan rendah hati.',
      'Ungkapan permintaan sopan. Sering ditulis ください dalam konteks sopan sehari-hari.')
    RETURNING id INTO v_tolong;

  INSERT INTO items (type,character,slug,level,lesson_position,meaning_mnemonic,description)
    VALUES ('vocabulary','人口','populasi',1,63,
      'ORANG (人) yang masuk melalui MULUT (口) sensus — jumlah penduduk.',
      'Kata benda untuk populasi atau jumlah penduduk suatu wilayah.')
    RETURNING id INTO v_populasi;

  INSERT INTO items (type,character,slug,level,lesson_position,meaning_mnemonic,description)
    VALUES ('vocabulary','力','kekuatan-v',1,64,
      'Kanji KEKUATAN (力) dibaca sendiri — kekuatan fisik maupun mental.',
      'Bisa merujuk pada kekuatan fisik, kemampuan, atau daya.')
    RETURNING id INTO v_kekuatan;

  INSERT INTO items (type,character,slug,level,lesson_position,meaning_mnemonic,description)
    VALUES ('vocabulary','川','sungai-v',1,65,
      'Kanji SUNGAI (川) dibaca sendiri — merujuk pada sungai.',
      'Kata benda umum untuk sungai.')
    RETURNING id INTO v_sungai;

  INSERT INTO items (type,character,slug,level,lesson_position,meaning_mnemonic,description)
    VALUES ('vocabulary','七','tujuh-v',1,66,
      'Kanji TUJUH (七) dibaca sebagai angka tujuh.',
      'Angka 7. Bacaan なな lebih umum dalam percakapan modern.')
    RETURNING id INTO v_tujuh;

  INSERT INTO items (type,character,slug,level,lesson_position,meaning_mnemonic,description)
    VALUES ('vocabulary','七つ','tujuh-hal',1,67,
      'TUJUH (七) hal — penghitung つ untuk benda umum.',
      'Cara menghitung tujuh benda menggunakan penghitung asli Jepang.')
    RETURNING id INTO v_tujuh_hal;

  INSERT INTO items (type,character,slug,level,lesson_position,meaning_mnemonic,description)
    VALUES ('vocabulary','大きさ','ukuran',1,68,
      'BESAR (大き) dijadikan kata benda dengan akhiran さ — tingkatan atau ukuran kebesaran.',
      'Kata benda abstrak yang menyatakan ukuran. Contoh: どのくらいの大きさ (seberapa besar).')
    RETURNING id INTO v_ukuran;

  INSERT INTO items (type,character,slug,level,lesson_position,meaning_mnemonic,description)
    VALUES ('vocabulary','十','sepuluh-v',1,69,
      'Kanji SEPULUH (十) dibaca sendiri — angka sepuluh.',
      'Angka 10 dalam bentuk kata benda Jepang.')
    RETURNING id INTO v_sepuluh;

  INSERT INTO items (type,character,slug,level,lesson_position,meaning_mnemonic,description)
    VALUES ('vocabulary','三','tiga-v',1,70,
      'Kanji TIGA (三) dibaca sendiri — angka tiga.',
      'Angka 3 dalam bentuk kata benda Jepang.')
    RETURNING id INTO v_tiga;

  INSERT INTO items (type,character,slug,level,lesson_position,meaning_mnemonic,description)
    VALUES ('vocabulary','三人','tiga-orang',1,71,
      'TIGA (三) orang — gabungan kanji tiga dan orang.',
      'Kata untuk "tiga orang". Penghitung 人 dipakai khusus untuk manusia.')
    RETURNING id INTO v_tiga_orang;

  INSERT INTO items (type,character,slug,level,lesson_position,meaning_mnemonic,description)
    VALUES ('vocabulary','三つ','tiga-hal',1,72,
      'TIGA (三) hal — penghitung つ untuk benda umum.',
      'Cara menghitung tiga benda menggunakan penghitung asli Jepang.')
    RETURNING id INTO v_tiga_hal;

  INSERT INTO items (type,character,slug,level,lesson_position,meaning_mnemonic,description)
    VALUES ('vocabulary','入る','masuk-v',1,73,
      'Kata kerja dari kanji MASUK (入) — aksi memasuki suatu tempat.',
      'Kata kerja intransitif. Pasangannya: 入れる (memasukkan sesuatu).')
    RETURNING id INTO v_masuk_v;

  INSERT INTO items (type,character,slug,level,lesson_position,meaning_mnemonic,description)
    VALUES ('vocabulary','上げる','mengangkat',1,74,
      'Dari kanji ATAS (上) — bergerak ke atas, mengangkat sesuatu.',
      'Kata kerja transitif. Pasangannya: 上がる (naik sendiri).')
    RETURNING id INTO v_angkat;

  INSERT INTO items (type,character,slug,level,lesson_position,meaning_mnemonic,description)
    VALUES ('vocabulary','下げる','menurunkan',1,75,
      'Dari kanji BAWAH (下) — bergerak ke bawah, menurunkan sesuatu.',
      'Kata kerja transitif. Pasangannya: 下がる (turun sendiri).')
    RETURNING id INTO v_turun;

  INSERT INTO items (type,character,slug,level,lesson_position,meaning_mnemonic,description)
    VALUES ('vocabulary','二','dua-v',1,76,
      'Kanji DUA (二) dibaca sendiri — angka dua.',
      'Angka 2 dalam bentuk kata benda Jepang.')
    RETURNING id INTO v_dua;

  INSERT INTO items (type,character,slug,level,lesson_position,meaning_mnemonic,description)
    VALUES ('vocabulary','二人','dua-orang',1,77,
      'DUA (二) orang bersama — pasangan atau dua individu.',
      'Kata untuk "dua orang". Sering dipakai untuk pasangan.')
    RETURNING id INTO v_dua_orang;

  INSERT INTO items (type,character,slug,level,lesson_position,meaning_mnemonic,description)
    VALUES ('vocabulary','二つ','dua-hal',1,78,
      'DUA (二) hal — penghitung つ untuk benda umum.',
      'Cara menghitung dua benda menggunakan penghitung asli Jepang.')
    RETURNING id INTO v_dua_hal;

  INSERT INTO items (type,character,slug,level,lesson_position,meaning_mnemonic,description)
    VALUES ('vocabulary','力いっぱい','dengan-segenap-tenaga',1,79,
      'KEKUATAN (力) penuh (いっぱい) — menggunakan seluruh tenaga yang ada.',
      'Ungkapan idiomatik yang berarti "sekuat tenaga" atau "sepenuh hati".')
    RETURNING id INTO v_segenap;

  INSERT INTO items (type,character,slug,level,lesson_position,meaning_mnemonic,description)
    VALUES ('vocabulary','女','wanita-v',1,80,
      'Kanji WANITA (女) dibaca sendiri — merujuk pada perempuan.',
      'Kata benda umum untuk wanita atau perempuan.')
    RETURNING id INTO v_wanita;

  -- Meanings: vocabulary
  INSERT INTO item_meanings(item_id,meaning,primary_meaning) VALUES (v_atas,'Atas',true);
  INSERT INTO item_meanings(item_id,meaning,primary_meaning) VALUES (v_orang_dewasa,'Orang Dewasa',true);
  INSERT INTO item_meanings(item_id,meaning,primary_meaning) VALUES (v_sendirian,'Sendirian',true);
  INSERT INTO item_meanings(item_id,meaning,primary_meaning) VALUES (v_buatan,'Buatan',true);
  INSERT INTO item_meanings(item_id,meaning,primary_meaning) VALUES (v_buatan,'Buatan Manusia',false);
  INSERT INTO item_meanings(item_id,meaning,primary_meaning) VALUES (v_bawah,'Bawah',true);
  INSERT INTO item_meanings(item_id,meaning,primary_meaning) VALUES (v_besar_i,'Besar',true);
  INSERT INTO item_meanings(item_id,meaning,primary_meaning) VALUES (v_delapan,'Delapan',true);
  INSERT INTO item_meanings(item_id,meaning,primary_meaning) VALUES (v_delapan_hal,'Delapan Hal',true);
  INSERT INTO item_meanings(item_id,meaning,primary_meaning) VALUES (v_pintu_masuk,'Pintu Masuk',true);
  INSERT INTO item_meanings(item_id,meaning,primary_meaning) VALUES (v_pintu_masuk,'Entrance',false);
  INSERT INTO item_meanings(item_id,meaning,primary_meaning) VALUES (v_hebat,'Hebat',true);
  INSERT INTO item_meanings(item_id,meaning,primary_meaning) VALUES (v_hebat,'Luar Biasa',false);
  INSERT INTO item_meanings(item_id,meaning,primary_meaning) VALUES (v_gunung,'Gunung',true);
  INSERT INTO item_meanings(item_id,meaning,primary_meaning) VALUES (v_mulut,'Mulut',true);
  INSERT INTO item_meanings(item_id,meaning,primary_meaning) VALUES (v_gunung_fuji,'Gunung Fuji',true);
  INSERT INTO item_meanings(item_id,meaning,primary_meaning) VALUES (v_sembilan,'Sembilan',true);
  INSERT INTO item_meanings(item_id,meaning,primary_meaning) VALUES (v_sembilan_hal,'Sembilan Hal',true);
  INSERT INTO item_meanings(item_id,meaning,primary_meaning) VALUES (v_satu,'Satu',true);
  INSERT INTO item_meanings(item_id,meaning,primary_meaning) VALUES (v_satu_hal,'Satu Hal',true);
  INSERT INTO item_meanings(item_id,meaning,primary_meaning) VALUES (v_orang,'Orang',true);
  INSERT INTO item_meanings(item_id,meaning,primary_meaning) VALUES (v_tolong,'Tolong Berikan',true);
  INSERT INTO item_meanings(item_id,meaning,primary_meaning) VALUES (v_tolong,'Mohon Berikan',false);
  INSERT INTO item_meanings(item_id,meaning,primary_meaning) VALUES (v_populasi,'Populasi',true);
  INSERT INTO item_meanings(item_id,meaning,primary_meaning) VALUES (v_populasi,'Jumlah Penduduk',false);
  INSERT INTO item_meanings(item_id,meaning,primary_meaning) VALUES (v_kekuatan,'Kekuatan',true);
  INSERT INTO item_meanings(item_id,meaning,primary_meaning) VALUES (v_sungai,'Sungai',true);
  INSERT INTO item_meanings(item_id,meaning,primary_meaning) VALUES (v_tujuh,'Tujuh',true);
  INSERT INTO item_meanings(item_id,meaning,primary_meaning) VALUES (v_tujuh_hal,'Tujuh Hal',true);
  INSERT INTO item_meanings(item_id,meaning,primary_meaning) VALUES (v_ukuran,'Ukuran',true);
  INSERT INTO item_meanings(item_id,meaning,primary_meaning) VALUES (v_sepuluh,'Sepuluh',true);
  INSERT INTO item_meanings(item_id,meaning,primary_meaning) VALUES (v_tiga,'Tiga',true);
  INSERT INTO item_meanings(item_id,meaning,primary_meaning) VALUES (v_tiga_orang,'Tiga Orang',true);
  INSERT INTO item_meanings(item_id,meaning,primary_meaning) VALUES (v_tiga_hal,'Tiga Hal',true);
  INSERT INTO item_meanings(item_id,meaning,primary_meaning) VALUES (v_masuk_v,'Masuk',true);
  INSERT INTO item_meanings(item_id,meaning,primary_meaning) VALUES (v_angkat,'Mengangkat',true);
  INSERT INTO item_meanings(item_id,meaning,primary_meaning) VALUES (v_turun,'Menurunkan',true);
  INSERT INTO item_meanings(item_id,meaning,primary_meaning) VALUES (v_dua,'Dua',true);
  INSERT INTO item_meanings(item_id,meaning,primary_meaning) VALUES (v_dua_orang,'Dua Orang',true);
  INSERT INTO item_meanings(item_id,meaning,primary_meaning) VALUES (v_dua_hal,'Dua Hal',true);
  INSERT INTO item_meanings(item_id,meaning,primary_meaning) VALUES (v_segenap,'Dengan Segenap Tenaga',true);
  INSERT INTO item_meanings(item_id,meaning,primary_meaning) VALUES (v_segenap,'Sekuat Tenaga',false);
  INSERT INTO item_meanings(item_id,meaning,primary_meaning) VALUES (v_wanita,'Wanita',true);

  -- Readings: vocabulary (kunyomi sebagai primary)
  INSERT INTO item_readings(item_id,reading,reading_type,primary_reading) VALUES (v_atas,'うえ',NULL,true);
  INSERT INTO item_readings(item_id,reading,reading_type,primary_reading) VALUES (v_orang_dewasa,'おとな',NULL,true);
  INSERT INTO item_readings(item_id,reading,reading_type,primary_reading) VALUES (v_sendirian,'ひとり',NULL,true);
  INSERT INTO item_readings(item_id,reading,reading_type,primary_reading) VALUES (v_buatan,'じんこう',NULL,true);
  INSERT INTO item_readings(item_id,reading,reading_type,primary_reading) VALUES (v_bawah,'した',NULL,true);
  INSERT INTO item_readings(item_id,reading,reading_type,primary_reading) VALUES (v_besar_i,'おおきい',NULL,true);
  INSERT INTO item_readings(item_id,reading,reading_type,primary_reading) VALUES (v_delapan,'はち',NULL,true);
  INSERT INTO item_readings(item_id,reading,reading_type,primary_reading) VALUES (v_delapan_hal,'やっつ',NULL,true);
  INSERT INTO item_readings(item_id,reading,reading_type,primary_reading) VALUES (v_pintu_masuk,'いりぐち',NULL,true);
  INSERT INTO item_readings(item_id,reading,reading_type,primary_reading) VALUES (v_hebat,'たいした',NULL,true);
  INSERT INTO item_readings(item_id,reading,reading_type,primary_reading) VALUES (v_gunung,'やま',NULL,true);
  INSERT INTO item_readings(item_id,reading,reading_type,primary_reading) VALUES (v_mulut,'くち',NULL,true);
  INSERT INTO item_readings(item_id,reading,reading_type,primary_reading) VALUES (v_gunung_fuji,'ふじさん',NULL,true);
  INSERT INTO item_readings(item_id,reading,reading_type,primary_reading) VALUES (v_sembilan,'きゅう',NULL,true);
  INSERT INTO item_readings(item_id,reading,reading_type,primary_reading) VALUES (v_sembilan_hal,'ここのつ',NULL,true);
  INSERT INTO item_readings(item_id,reading,reading_type,primary_reading) VALUES (v_satu,'いち',NULL,true);
  INSERT INTO item_readings(item_id,reading,reading_type,primary_reading) VALUES (v_satu_hal,'ひとつ',NULL,true);
  INSERT INTO item_readings(item_id,reading,reading_type,primary_reading) VALUES (v_orang,'ひと',NULL,true);
  INSERT INTO item_readings(item_id,reading,reading_type,primary_reading) VALUES (v_tolong,'ください',NULL,true);
  INSERT INTO item_readings(item_id,reading,reading_type,primary_reading) VALUES (v_populasi,'じんこう',NULL,true);
  INSERT INTO item_readings(item_id,reading,reading_type,primary_reading) VALUES (v_kekuatan,'ちから',NULL,true);
  INSERT INTO item_readings(item_id,reading,reading_type,primary_reading) VALUES (v_sungai,'かわ',NULL,true);
  INSERT INTO item_readings(item_id,reading,reading_type,primary_reading) VALUES (v_tujuh,'なな',NULL,true);
  INSERT INTO item_readings(item_id,reading,reading_type,primary_reading) VALUES (v_tujuh_hal,'ななつ',NULL,true);
  INSERT INTO item_readings(item_id,reading,reading_type,primary_reading) VALUES (v_ukuran,'おおきさ',NULL,true);
  INSERT INTO item_readings(item_id,reading,reading_type,primary_reading) VALUES (v_sepuluh,'じゅう',NULL,true);
  INSERT INTO item_readings(item_id,reading,reading_type,primary_reading) VALUES (v_tiga,'さん',NULL,true);
  INSERT INTO item_readings(item_id,reading,reading_type,primary_reading) VALUES (v_tiga_orang,'さんにん',NULL,true);
  INSERT INTO item_readings(item_id,reading,reading_type,primary_reading) VALUES (v_tiga_hal,'みっつ',NULL,true);
  INSERT INTO item_readings(item_id,reading,reading_type,primary_reading) VALUES (v_masuk_v,'はいる',NULL,true);
  INSERT INTO item_readings(item_id,reading,reading_type,primary_reading) VALUES (v_angkat,'あげる',NULL,true);
  INSERT INTO item_readings(item_id,reading,reading_type,primary_reading) VALUES (v_turun,'さげる',NULL,true);
  INSERT INTO item_readings(item_id,reading,reading_type,primary_reading) VALUES (v_dua,'に',NULL,true);
  INSERT INTO item_readings(item_id,reading,reading_type,primary_reading) VALUES (v_dua_orang,'ふたり',NULL,true);
  INSERT INTO item_readings(item_id,reading,reading_type,primary_reading) VALUES (v_dua_hal,'ふたつ',NULL,true);
  INSERT INTO item_readings(item_id,reading,reading_type,primary_reading) VALUES (v_segenap,'ちからいっぱい',NULL,true);
  INSERT INTO item_readings(item_id,reading,reading_type,primary_reading) VALUES (v_wanita,'おんな',NULL,true);

  -- Context sentences: vocabulary
  INSERT INTO item_context_sentences(item_id,japanese,indonesian) VALUES (v_atas,'本は机の上にあります。','Buku itu ada di atas meja.');
  INSERT INTO item_context_sentences(item_id,japanese,indonesian) VALUES (v_orang_dewasa,'大人は子供より背が高い。','Orang dewasa lebih tinggi dari anak-anak.');
  INSERT INTO item_context_sentences(item_id,japanese,indonesian) VALUES (v_sendirian,'彼女は一人で旅行した。','Dia (perempuan) bepergian sendirian.');
  INSERT INTO item_context_sentences(item_id,japanese,indonesian) VALUES (v_buatan,'これは人工的に作られた湖だ。','Ini adalah danau yang dibuat secara buatan.');
  INSERT INTO item_context_sentences(item_id,japanese,indonesian) VALUES (v_bawah,'猫はテーブルの下にいる。','Kucing itu ada di bawah meja.');
  INSERT INTO item_context_sentences(item_id,japanese,indonesian) VALUES (v_besar_i,'あの山はとても大きい。','Gunung itu sangat besar.');
  INSERT INTO item_context_sentences(item_id,japanese,indonesian) VALUES (v_pintu_masuk,'入り口はどこですか？','Di mana pintu masuknya?');
  INSERT INTO item_context_sentences(item_id,japanese,indonesian) VALUES (v_gunung,'富士山は日本一の山だ。','Gunung Fuji adalah gunung terbaik di Jepang.');
  INSERT INTO item_context_sentences(item_id,japanese,indonesian) VALUES (v_mulut,'口を大きく開けてください。','Tolong buka mulut Anda lebar-lebar.');
  INSERT INTO item_context_sentences(item_id,japanese,indonesian) VALUES (v_orang,'あの人は誰ですか？','Siapakah orang itu?');
  INSERT INTO item_context_sentences(item_id,japanese,indonesian) VALUES (v_populasi,'東京の人口はとても多い。','Populasi Tokyo sangat banyak.');
  INSERT INTO item_context_sentences(item_id,japanese,indonesian) VALUES (v_kekuatan,'彼は力が強い。','Dia memiliki kekuatan yang besar.');
  INSERT INTO item_context_sentences(item_id,japanese,indonesian) VALUES (v_masuk_v,'部屋に入る前にノックしてください。','Tolong ketuk pintu sebelum masuk ke kamar.');
  INSERT INTO item_context_sentences(item_id,japanese,indonesian) VALUES (v_angkat,'手を上げてください。','Tolong angkat tangan Anda.');
  INSERT INTO item_context_sentences(item_id,japanese,indonesian) VALUES (v_turun,'値段を下げてください。','Tolong turunkan harganya.');
  INSERT INTO item_context_sentences(item_id,japanese,indonesian) VALUES (v_segenap,'力いっぱい頑張ります。','Saya akan berusaha dengan segenap tenaga.');
  INSERT INTO item_context_sentences(item_id,japanese,indonesian) VALUES (v_wanita,'あの女の人は先生です。','Wanita itu adalah seorang guru.');

  -- ============================================================
  -- PREREQUISITES (Kanji membutuhkan Radical)
  -- ============================================================
  INSERT INTO item_prerequisites VALUES (k_atas, r_tanah);
  INSERT INTO item_prerequisites VALUES (k_atas, r_tongkat);
  INSERT INTO item_prerequisites VALUES (k_bawah, r_tanah);
  INSERT INTO item_prerequisites VALUES (k_bawah, r_jempol);
  INSERT INTO item_prerequisites VALUES (k_besar, r_besar);
  INSERT INTO item_prerequisites VALUES (k_konstr, r_konstr);
  INSERT INTO item_prerequisites VALUES (k_delapan, r_sirip);
  INSERT INTO item_prerequisites VALUES (k_masuk, r_masuk);
  INSERT INTO item_prerequisites VALUES (k_gunung, r_gunung);
  INSERT INTO item_prerequisites VALUES (k_mulut, r_mulut);
  INSERT INTO item_prerequisites VALUES (k_sembilan, r_sembilan);
  INSERT INTO item_prerequisites VALUES (k_satu, r_tanah);
  INSERT INTO item_prerequisites VALUES (k_orang, r_orang);
  INSERT INTO item_prerequisites VALUES (k_kekuatan, r_kekuatan);
  INSERT INTO item_prerequisites VALUES (k_sungai, r_sungai);
  INSERT INTO item_prerequisites VALUES (k_tujuh, r_tujuh);
  INSERT INTO item_prerequisites VALUES (k_sepuluh, r_salib);
  INSERT INTO item_prerequisites VALUES (k_tiga, r_tanah);
  INSERT INTO item_prerequisites VALUES (k_dua, r_dua_rad);
  INSERT INTO item_prerequisites VALUES (k_wanita, r_wanita);

  -- PREREQUISITES (Vocabulary membutuhkan Kanji)
  INSERT INTO item_prerequisites VALUES (v_atas, k_atas);
  INSERT INTO item_prerequisites VALUES (v_orang_dewasa, k_besar);
  INSERT INTO item_prerequisites VALUES (v_orang_dewasa, k_orang);
  INSERT INTO item_prerequisites VALUES (v_sendirian, k_satu);
  INSERT INTO item_prerequisites VALUES (v_sendirian, k_orang);
  INSERT INTO item_prerequisites VALUES (v_buatan, k_orang);
  INSERT INTO item_prerequisites VALUES (v_buatan, k_konstr);
  INSERT INTO item_prerequisites VALUES (v_bawah, k_bawah);
  INSERT INTO item_prerequisites VALUES (v_besar_i, k_besar);
  INSERT INTO item_prerequisites VALUES (v_delapan, k_delapan);
  INSERT INTO item_prerequisites VALUES (v_delapan_hal, k_delapan);
  INSERT INTO item_prerequisites VALUES (v_pintu_masuk, k_masuk);
  INSERT INTO item_prerequisites VALUES (v_pintu_masuk, k_mulut);
  INSERT INTO item_prerequisites VALUES (v_hebat, k_besar);
  INSERT INTO item_prerequisites VALUES (v_gunung, k_gunung);
  INSERT INTO item_prerequisites VALUES (v_mulut, k_mulut);
  INSERT INTO item_prerequisites VALUES (v_gunung_fuji, k_gunung);
  INSERT INTO item_prerequisites VALUES (v_sembilan, k_sembilan);
  INSERT INTO item_prerequisites VALUES (v_sembilan_hal, k_sembilan);
  INSERT INTO item_prerequisites VALUES (v_satu, k_satu);
  INSERT INTO item_prerequisites VALUES (v_satu_hal, k_satu);
  INSERT INTO item_prerequisites VALUES (v_orang, k_orang);
  INSERT INTO item_prerequisites VALUES (v_tolong, k_bawah);
  INSERT INTO item_prerequisites VALUES (v_populasi, k_orang);
  INSERT INTO item_prerequisites VALUES (v_populasi, k_mulut);
  INSERT INTO item_prerequisites VALUES (v_kekuatan, k_kekuatan);
  INSERT INTO item_prerequisites VALUES (v_sungai, k_sungai);
  INSERT INTO item_prerequisites VALUES (v_tujuh, k_tujuh);
  INSERT INTO item_prerequisites VALUES (v_tujuh_hal, k_tujuh);
  INSERT INTO item_prerequisites VALUES (v_ukuran, k_besar);
  INSERT INTO item_prerequisites VALUES (v_sepuluh, k_sepuluh);
  INSERT INTO item_prerequisites VALUES (v_tiga, k_tiga);
  INSERT INTO item_prerequisites VALUES (v_tiga_orang, k_tiga);
  INSERT INTO item_prerequisites VALUES (v_tiga_orang, k_orang);
  INSERT INTO item_prerequisites VALUES (v_tiga_hal, k_tiga);
  INSERT INTO item_prerequisites VALUES (v_masuk_v, k_masuk);
  INSERT INTO item_prerequisites VALUES (v_angkat, k_atas);
  INSERT INTO item_prerequisites VALUES (v_turun, k_bawah);
  INSERT INTO item_prerequisites VALUES (v_dua, k_dua);
  INSERT INTO item_prerequisites VALUES (v_dua_orang, k_dua);
  INSERT INTO item_prerequisites VALUES (v_dua_orang, k_orang);
  INSERT INTO item_prerequisites VALUES (v_dua_hal, k_dua);
  INSERT INTO item_prerequisites VALUES (v_segenap, k_kekuatan);
  INSERT INTO item_prerequisites VALUES (v_wanita, k_wanita);

END $$;

-- Verifikasi
SELECT type, COUNT(*) AS jumlah FROM items WHERE level = 1 GROUP BY type ORDER BY type;
SELECT 'meanings' AS tabel, COUNT(*) AS jumlah FROM item_meanings
UNION ALL
SELECT 'readings', COUNT(*) FROM item_readings
UNION ALL
SELECT 'context_sentences', COUNT(*) FROM item_context_sentences
UNION ALL
SELECT 'prerequisites', COUNT(*) FROM item_prerequisites;
