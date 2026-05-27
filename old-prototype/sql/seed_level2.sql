-- ============================================================
-- KaniGani — Seed Data Level 2 (v2, relasional)
-- Jalankan SETELAH schema.sql & seed_level1.sql berhasil dieksekusi
-- ============================================================

DO $$
DECLARE
  -- ============ RADICAL IDs (Level 2) ============
  r_hon UUID; r_yumi UUID; r_ko UUID; r_ushi UUID; r_tsuchi UUID;
  r_inu UUID; r_yube UUID; r_me UUID; r_hi UUID; r_go UUID;
  r_shi UUID; r_kami UUID; r_te UUID; r_atama UUID; r_ten UUID;
  r_ou UUID; r_happa UUID; r_ashi UUID; r_naka UUID; r_tsuki UUID;
  r_narwhal UUID; r_private UUID; r_ta UUID; r_sho UUID; r_tatsu UUID;
  r_tome UUID; r_chou UUID; r_katana UUID; r_sen UUID; r_takara UUID;
  r_mizu UUID; r_shiro UUID; r_bun UUID;

  -- ============ KANJI IDs (Level 2) ============
  k_tama UUID; k_hon UUID; k_ko UUID; k_maru UUID; k_sei UUID;
  k_tsuchi UUID; k_inu UUID; k_yube UUID; k_shutsu UUID; k_me UUID;
  k_ka UUID; k_go UUID; k_shi UUID; k_te UUID; k_ten UUID;
  k_ou UUID; k_left UUID; k_chu UUID; k_getsu UUID; k_noma UUID;
  k_ta UUID; k_right UUID; k_roku UUID; k_sho UUID; k_ritsu UUID;
  k_chou UUID; k_nichi UUID; k_tou UUID; k_sai UUID; k_sen UUID;
  k_moku UUID; k_sui UUID; k_haku UUID; k_bun UUID; k_en UUID;

  -- ============ DYNAMIC LEVEL 1 IDs ============
  r_pohon UUID;
  k_atas UUID; k_bawah UUID; k_delapan UUID; k_masuk UUID;
  k_gunung UUID; k_mulut UUID; k_sembilan UUID; k_satu UUID;
  k_orang UUID; k_kekuatan UUID; k_tujuh UUID; k_sepuluh UUID;
  k_tiga UUID; k_dua UUID; k_wanita UUID;

  -- ============ VOCABULARY IDs (Level 2) ============
  v_sigatsu UUID; v_tama UUID; v_hon UUID; v_ko UUID; v_maru UUID;
  v_marui UUID; v_tadashii UUID; v_tsuchi UUID; v_inu UUID; v_youka UUID;
  v_deguchi UUID; v_me UUID; v_medama UUID; v_nigatsu UUID; v_itsuka UUID;
  v_gojuu UUID; v_hi UUID; v_go UUID; v_itsutsu UUID; v_yon UUID;
  v_tensai UUID; v_joshi UUID; v_onnanoko UUID; v_jouzu UUID; v_ohayou UUID;
  v_te UUID; v_ten UUID; v_hoteru UUID; v_nyuuryoku UUID; v_naka UUID;
  v_ichigatsu UUID; v_nihon UUID; v_rokugatsu UUID; v_ou UUID; v_yuube UUID;
  v_sayuu UUID; v_hidari UUID; v_gogatsu UUID; v_tsuki UUID; v_kokonoka UUID;
  v_juugatsu UUID; v_ichinichi UUID; v_senen UUID; v_tamanegi UUID; v_hitobito UUID;
  v_ouji UUID; v_oujo UUID; v_koinu UUID; v_joou UUID; v_nakana UUID;
  v_ta UUID; v_tanbo UUID; v_migi UUID; v_futsuka UUID; v_nanoka UUID;
  v_roku UUID; v_juuroku UUID; v_muika UUID; v_muttsu UUID; v_chiisai UUID;
  v_hi_sun UUID; v_katana UUID; v_tooka UUID; v_mikka UUID; v_sen UUID;
  v_noboru UUID; v_tadasu UUID; v_deru UUID; v_tatsu UUID; v_ki UUID;
  v_suichuu UUID; v_heta UUID; v_kazan UUID; v_mizu UUID; v_shiro UUID;
  v_hakujin UUID; v_bun UUID; v_sai UUID; v_en UUID;

BEGIN

  -- ============================================================
  -- 0. AMBIL ID DARI ITEM LEVEL 1
  -- ============================================================
  SELECT id INTO r_pohon FROM items WHERE type = 'radical' AND character = '木' LIMIT 1;

  SELECT id INTO k_atas FROM items WHERE type = 'kanji' AND character = '上' LIMIT 1;
  SELECT id INTO k_bawah FROM items WHERE type = 'kanji' AND character = '下' LIMIT 1;
  SELECT id INTO k_delapan FROM items WHERE type = 'kanji' AND character = '八' LIMIT 1;
  SELECT id INTO k_masuk FROM items WHERE type = 'kanji' AND character = '入' LIMIT 1;
  SELECT id INTO k_gunung FROM items WHERE type = 'kanji' AND character = '山' LIMIT 1;
  SELECT id INTO k_mulut FROM items WHERE type = 'kanji' AND character = '口' LIMIT 1;
  SELECT id INTO k_sembilan FROM items WHERE type = 'kanji' AND character = '九' LIMIT 1;
  SELECT id INTO k_satu FROM items WHERE type = 'kanji' AND character = '一' LIMIT 1;
  SELECT id INTO k_orang FROM items WHERE type = 'kanji' AND character = '人' LIMIT 1;
  SELECT id INTO k_kekuatan FROM items WHERE type = 'kanji' AND character = '力' LIMIT 1;
  SELECT id INTO k_tujuh FROM items WHERE type = 'kanji' AND character = '七' LIMIT 1;
  SELECT id INTO k_sepuluh FROM items WHERE type = 'kanji' AND character = '十' LIMIT 1;
  SELECT id INTO k_tiga FROM items WHERE type = 'kanji' AND character = '三' LIMIT 1;
  SELECT id INTO k_dua FROM items WHERE type = 'kanji' AND character = '二' LIMIT 1;
  SELECT id INTO k_wanita FROM items WHERE type = 'kanji' AND character = '女' LIMIT 1;

  -- ============================================================
  -- 1. RADICAL (Level 2)
  -- ============================================================
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '本', 'buku', 2, 1, 'Pohon dengan garis tambahan di dasar batang menggambarkan asal mula ilmu pengetahuan — sebuah Buku.') RETURNING id INTO r_hon;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '弓', 'busur', 2, 2, 'Bentuk meliuk-liuk seperti busur panah tradisional.') RETURNING id INTO r_yumi;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '子', 'anak', 2, 3, 'Sosok anak kecil dengan kepala bulat dan kedua tangan terentang mencari pelukan.') RETURNING id INTO r_ko;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '牛', 'sapi', 2, 4, 'Bentuk kepala sapi lengkap dengan dua tanduk yang mencuat ke atas.') RETURNING id INTO r_ushi;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '土', 'tanah', 2, 5, 'Batang salib yang tertancap kokoh di atas gundukan tanah.') RETURNING id INTO r_tsuchi;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '犬', 'anjing', 2, 6, 'Orang besar dengan bintik di pundak — melambangkan anjing peliharaan yang setia.') RETURNING id INTO r_inu;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '夕', 'sore', 2, 7, 'Bulan sabit tipis yang mulai terbit saat sore menjelang malam.') RETURNING id INTO r_yube;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '目', 'mata', 2, 8, 'Sebuah mata vertikal dengan kelopak mata dan garis pupil di tengah.') RETURNING id INTO r_me;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '火', 'api', 2, 9, 'Kobaran api unggun yang membubung tinggi ke udara.') RETURNING id INTO r_hi;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '五', 'lima', 2, 10, 'Garis-garis bersilangan membentuk pola angka lima.') RETURNING id INTO r_go;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '尸', 'bendera', 2, 11, 'Garis bendera yang berkibar tertiup angin di ujung tiang.') RETURNING id INTO r_shi;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '彡', 'rambut', 2, 12, 'Tiga lembar rambut halus yang melambai tertiup angin.') RETURNING id INTO r_kami;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '手', 'tangan', 2, 13, 'Sketsa telapak tangan manusia dengan jari-jari terbuka lebar.') RETURNING id INTO r_te;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '冂', 'kepala', 2, 14, 'Sebuah topi pelindung atau garis luar pelindung kepala.') RETURNING id INTO r_atama;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '天', 'surga', 2, 15, 'Garis langit tinggi di atas kepala sosok orang besar.') RETURNING id INTO r_ten;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '王', 'raja', 2, 16, 'Tiga garis horizontal melambangkan langit, bumi, dan manusia yang disatukan raja.') RETURNING id INTO r_ou;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '丆', 'daun', 2, 17, 'Sepucuk daun muda yang baru kuncup dari dahan tanaman.') RETURNING id INTO r_happa;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '儿', 'kaki', 2, 18, 'Dua kaki manusia yang berjalan tegak melangkah maju.') RETURNING id INTO r_ashi;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '中', 'tengah', 2, 19, 'Garis vertikal yang menusuk tepat di bagian tengah kotak.') RETURNING id INTO r_naka;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '月', 'bulan', 2, 20, 'Bulan sabit indah dengan garis awan tipis melintas di tengah.') RETURNING id INTO r_tsuki;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', 'ナ', 'narwhal', 2, 21, 'Tanduk narwhal runcing yang menembus ke permukaan es.') RETURNING id INTO r_narwhal;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', 'ム', 'pribadi', 2, 22, 'Garis tertutup yang menyembunyikan rahasia pribadi dari mata publik.') RETURNING id INTO r_private;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '田', 'sawah', 2, 23, 'Petak-petak sawah padi tradisional yang dibatasi oleh parit pengairan.') RETURNING id INTO r_ta;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '小', 'kecil', 2, 24, 'Satu tiang utama dengan dua serpihan kecil di sampingnya.') RETURNING id INTO r_sho;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '立', 'berdiri', 2, 25, 'Sesosok manusia berdiri tegak di atas garis tanah.') RETURNING id INTO r_tatsu;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '止', 'berhenti', 2, 26, 'Satu jejak kaki yang kokoh menginjak tanah untuk menghentikan jalan.') RETURNING id INTO r_tome;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '丁', 'jalan', 2, 27, 'Tiang lampu jalan berbentuk T yang berdiri di pinggir jalan.') RETURNING id INTO r_chou;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '刀', 'pedang', 2, 28, 'Bilah pedang tajam dengan lekukan khas besi baja.') RETURNING id INTO r_katana;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '千', 'seribu', 2, 29, 'Tanda salib (sepuluh) dengan satu garis miring tambahan di atasnya.') RETURNING id INTO r_sen;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', 'メ', 'harta', 2, 30, 'Papan kayu bersilang menandakan harta karun yang terkubur.') RETURNING id INTO r_takara;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '水', 'air', 2, 31, 'Aliran sungai deras dengan cipratan air jernih di kanan-kirinya.') RETURNING id INTO r_mizu;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '白', 'putih', 2, 32, 'Matahari terbit memancarkan seberkas sinar putih bersih yang suci.') RETURNING id INTO r_shiro;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '文', 'tulisan', 2, 33, 'Sosok manusia memakai topi yang sedang menorehkan goresan tulisan.') RETURNING id INTO r_bun;

  -- Meanings for Radicals
  INSERT INTO item_meanings (item_id, meaning, primary_meaning) VALUES (r_hon, 'Buku', true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning) VALUES (r_yumi, 'Busur', true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning) VALUES (r_ko, 'Anak', true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning) VALUES (r_ushi, 'Sapi', true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning) VALUES (r_tsuchi, 'Tanah', true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning) VALUES (r_inu, 'Anjing', true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning) VALUES (r_yube, 'Sore', true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning) VALUES (r_me, 'Mata', true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning) VALUES (r_hi, 'Api', true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning) VALUES (r_go, 'Lima', true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning) VALUES (r_shi, 'Bendera', true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning) VALUES (r_kami, 'Rambut', true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning) VALUES (r_te, 'Tangan', true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning) VALUES (r_atama, 'Kepala', true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning) VALUES (r_ten, 'Surga', true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning) VALUES (r_ou, 'Raja', true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning) VALUES (r_happa, 'Daun', true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning) VALUES (r_ashi, 'Kaki', true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning) VALUES (r_naka, 'Tengah', true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning) VALUES (r_tsuki, 'Bulan', true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning) VALUES (r_narwhal, 'Narwhal', true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning) VALUES (r_private, 'Pribadi', true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning) VALUES (r_ta, 'Sawah', true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning) VALUES (r_sho, 'Kecil', true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning) VALUES (r_tatsu, 'Berdiri', true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning) VALUES (r_tome, 'Berhenti', true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning) VALUES (r_chou, 'Jalan', true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning) VALUES (r_katana, 'Pedang', true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning) VALUES (r_sen, 'Seribu', true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning) VALUES (r_takara, 'Harta', true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning) VALUES (r_mizu, 'Air', true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning) VALUES (r_shiro, 'Putih', true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning) VALUES (r_bun, 'Tulisan', true);

  -- ============================================================
  -- 2. KANJI (Level 2)
  -- ============================================================
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '玉', 'bola', 2, 34,
      'Seorang raja (王) yang menyimpan sebuah batu permata berharga berbentuk bola bulat sempurna di kantongnya (丶).',
      'Meskipun cara baca Tiongkoknya (Onyomi) adalah ぎょく, kita sering membaca bola ini sebagai たま (TAMA) seperti telur tamago.')
    RETURNING id INTO k_tama;

  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '本', 'buku', 2, 35,
      'Sebuah pohon (木) yang diberi tanda horizontal di bagian dasarnya melambangkan akar atau asal mula — tempat asal mula buku pengetahuan.',
      'Buku pelajaran bahasa Jepang ini sangat seru dan ほん (HON) — asyik dibaca.')
    RETURNING id INTO k_hon;

  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '子', 'anak', 2, 36,
      'Goresan yang menyerupai sesosok bayi kecil yang lucu sedang merentangkan tangannya.',
      'Anak anjing kecil itu sangat imut dan こ (KO) — kecil mungil.')
    RETURNING id INTO k_ko;

  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '丸', 'lingkaran', 2, 37,
      'Bilah pedang (刀) yang dilengkungkan hingga melingkar sempurna membentuk lingkaran dengan titik di tengah.',
      'Bola bulat ini menggelinding dengan cepat di tanah yang berlumpur **まる** (MARU).')
    RETURNING id INTO k_maru;

  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '正', 'benar', 2, 38,
      'Berhenti (止) tepat di batas garis lurus (一) adalah tindakan yang BENAR dan tepat.',
      'Orang suci **SEI** (せい) selalu mengajarkan tindakan yang benar.')
    RETURNING id INTO k_sei;

  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '土', 'tanah', 2, 39,
      'Tumpukan tanah lumpur di ladang dengan salib tanda berkebun.',
      'Tanah lempung ini sangat kotor dan **ど**-kil (DO).')
    RETURNING id INTO k_tsuchi;

  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '犬', 'anjing', 2, 40,
      'Orang besar (大) yang memiliki bintik bulu (丶) di pundaknya — seekor anjing peliharaan.',
      'Anjing setia ini bernama **いぬ** (INU).')
    RETURNING id INTO k_inu;

  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '夕', 'sore', 2, 41,
      'Bulan sabit tipis (夕) yang mulai muncul di langit sore hari.',
      'Di sore hari, enaknya minum jus **ゆう** (YUU) sambil menikmati senja.')
    RETURNING id INTO k_yube;

  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '出', 'keluar', 2, 42,
      'Dua puncak gunung (山) yang menumpuk seolah tumbuh KELUAR dari permukaan tanah.',
      'Saat syuting film **SHUTSU** (しゅつ), sutradara menyuruh KELUAR dari studio.')
    RETURNING id INTO k_shutsu;

  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '目', 'mata', 2, 43,
      'Goresan vertikal yang melukiskan kelopak dan kornea mata manusia.',
      'Awas, jangan sampai ada debu yang masuk ke **め** (ME) — mata kita.')
    RETURNING id INTO k_me;

  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '火', 'api', 2, 44,
      'Lidah api berkobar dengan cipratan bara api di sisi kanan dan kiri.',
      'Kobaran api yang membakar mobil mewah **か** (KA).')
    RETURNING id INTO k_ka;

  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '五', 'lima', 2, 45,
      'Goresan yang melambangkan jumlah lima jari atau garis bersilangan.',
      'Kita pergi ke bioskop untuk menonton film **ご** (GO).')
    RETURNING id INTO k_go;

  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '四', 'empat', 2, 46,
      'Sebuah kotak dengan sepasang gorden di dalamnya, melambangkan empat sudut ruangan.',
      'Nomor empat adalah nomor keberuntungan bagi **し** (SHI).')
    RETURNING id INTO k_shi;

  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '手', 'tangan', 2, 47,
      'Sketsa telapak tangan lengkap dengan jari-jari terbuka lebar.',
      'Tanganmu bersih setelah dibasuh dengan air **て** (TE).')
    RETURNING id INTO k_te;

  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '天', 'surga', 2, 48,
      'Garis langit luas di atas kepala orang besar yang terentang — menunjuk ke SURGA.',
      'Di surga, semua orang tinggal di dalam **てん** (TEN) berlapis emas.')
    RETURNING id INTO k_ten;

  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '王', 'raja', 2, 49,
      'Tiga garis horizontal melambangkan langit, bumi, dan manusia yang dihubungkan raja.',
      'Raja yang bijaksana memimpin kerajaan **おう** (OU) yang makmur.')
    RETURNING id INTO k_ou;

  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '左', 'kiri', 2, 50,
      'Tangan kiri membawa alat konstruksi (工) di sebelah kiri.',
      'Di sebelah kiri jalan ada warung bakso **さ** (SA).')
    RETURNING id INTO k_left;

  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '中', 'tengah', 2, 51,
      'Garis panjang vertikal yang menembus tepat di tengah kotak.',
      'Tikus kecil berlari ke tengah sambil bersuara **ちゅう** (CHUU).')
    RETURNING id INTO k_chu;

  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '月', 'bulan', 2, 52,
      'Bulan sabit indah dengan garis awan tipis di tengah malam.',
      'Setiap awal bulan baru, astronom naik ke roket **げつ** (GETSU).')
    RETURNING id INTO k_getsu;

  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '々', 'pengulang', 2, 53,
      'Simbol khusus pengulang karakter kanji sebelumnya.',
      'Karakter pengulang ini biasa disebut **のま** (NOMA).')
    RETURNING id INTO k_noma;

  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '田', 'sawah', 2, 54,
      'Petak-petak sawah subur yang dibatasi pembatas pengairan.',
      'Petani memanen padi di sawah yang berair **た** (TA — tawar).')
    RETURNING id INTO k_ta;

  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '右', 'kanan', 2, 55,
      'Tangan kanan membawa makanan langsung ke dalam mulut (口).',
      'Beloklah ke kanan menuju jalan raya **ゆう** (YUU).')
    RETURNING id INTO k_right;

  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '六', 'enam', 2, 56,
      'Sosok bertopi dengan kaki dan tangan terbuka menyimbolkan angka enam.',
      'Angka enam dalam bahasa Jepang adalah **ろく** (ROKU) seperti musik rock.')
    RETURNING id INTO k_roku;

  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '小', 'kecil', 2, 57,
      'Benda kecil yang dibelah dengan pisau menjadi serpihan kecil.',
      'Toko kecil itu memiliki ruangan **しょう** (SHOU) yang sangat sempit.')
    RETURNING id INTO k_sho;

  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '立', 'berdiri', 2, 58,
      'Sesosok orang berdiri tegak di atas garis permukaan bumi.',
      'Patung lilin itu dibuat berdiri tegak oleh **りつ** (RITSU).')
    RETURNING id INTO k_ritsu;

  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '丁', 'jalan', 2, 59,
      'Tiang lampu jalan berbentuk huruf T di tepi jalanan.',
      'Kawasan blok perumahan ini dipimpin oleh ketua **ちょう** (CHOU).')
    RETURNING id INTO k_chou;

  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '日', 'matahari', 2, 60,
      'Matahari bersinar berbentuk kotak dengan garis cahaya di tengah.',
      'HARI ini sangat cerah di kota **にち** (NICHI).')
    RETURNING id INTO k_nichi;

  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '刀', 'pedang', 2, 61,
      'Bilah pedang baja tajam khas samurai Jepang.',
      'Pedang legendaris itu tersimpan di kuil **とう** (TOU).')
    RETURNING id INTO k_tou;

  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '才', 'bakat', 2, 62,
      'Tunas pohon muda yang tumbuh subur melambangkan bakat usia muda.',
      'Gadis berbakat itu pandai membuat kue **さい** (SAI).')
    RETURNING id INTO k_sai;

  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '千', 'seribu', 2, 63,
      'Garis silang kelipatan besar melambangkan bilangan seribu.',
      'Uang seribu yen ditaruh di dalam wadah **せん** (SEN).')
    RETURNING id INTO k_sen;

  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '木', 'pohon', 2, 64,
      'Batang kayu dengan dahan di atas dan akar bercabang di bawah.',
      'Pohon rindang itu tumbuh subur di halaman **もく** (MOKU).')
    RETURNING id INTO k_moku;

  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '水', 'air', 2, 65,
      'Aliran mata air pegunungan yang jernih memancar ke sekeliling.',
      'Minumlah segelas air hangat yang **すい** (SUI) bersih.')
    RETURNING id INTO k_sui;

  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '白', 'putih', 2, 66,
      'Matahari dengan satu pancaran sinar yang membiaskan warna putih bersih.',
      'Kertas putih bersih itu ditulis dengan tinta **はく** (HAKU).')
    RETURNING id INTO k_haku;

  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '文', 'tulisan', 2, 67,
      'Sesosok orang bertopi yang sedang menggoreskan pena menulis kalimat sastra.',
      'Dokumen tulisan resmi disimpan di dalam tas **ぶん** (BUN).')
    RETURNING id INTO k_bun;

  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '円', 'yen', 2, 68,
      'Kotak penampung koin bulat perak mata uang Jepang.',
      'Nilai tukar mata uang YEN berfluktuasi secara **えん** (EN).')
    RETURNING id INTO k_en;

  -- Meanings for Kanji
  INSERT INTO item_meanings (item_id, meaning, primary_meaning) VALUES (k_tama, 'Bola', true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning) VALUES (k_tama, 'Permata', false);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning) VALUES (k_hon, 'Buku', true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning) VALUES (k_ko, 'Anak', true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning) VALUES (k_maru, 'Lingkaran', true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning) VALUES (k_sei, 'Benar', true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning) VALUES (k_tsuchi, 'Tanah', true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning) VALUES (k_tsuchi, 'Tanah Lempung', false);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning) VALUES (k_inu, 'Anjing', true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning) VALUES (k_yube, 'Sore', true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning) VALUES (k_shutsu, 'Keluar', true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning) VALUES (k_me, 'Mata', true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning) VALUES (k_ka, 'Api', true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning) VALUES (k_go, 'Lima', true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning) VALUES (k_shi, 'Empat', true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning) VALUES (k_te, 'Tangan', true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning) VALUES (k_ten, 'Surga', true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning) VALUES (k_ou, 'Raja', true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning) VALUES (k_left, 'Kiri', true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning) VALUES (k_chu, 'Tengah', true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning) VALUES (k_chu, 'Di Dalam', false);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning) VALUES (k_getsu, 'Bulan', true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning) VALUES (k_getsu, 'Bulan', false);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning) VALUES (k_noma, 'Pengulang', true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning) VALUES (k_ta, 'Sawah', true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning) VALUES (k_right, 'Kanan', true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning) VALUES (k_roku, 'Enam', true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning) VALUES (k_sho, 'Kecil', true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning) VALUES (k_ritsu, 'Berdiri', true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning) VALUES (k_chou, 'Jalan', true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning) VALUES (k_nichi, 'Matahari', true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning) VALUES (k_nichi, 'Hari', false);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning) VALUES (k_tou, 'Pedang', true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning) VALUES (k_sai, 'Bakat', true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning) VALUES (k_sai, 'Usia', false);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning) VALUES (k_sen, 'Seribu', true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning) VALUES (k_moku, 'Pohon', true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning) VALUES (k_moku, 'Kayu', false);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning) VALUES (k_sui, 'Air', true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning) VALUES (k_haku, 'Putih', true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning) VALUES (k_bun, 'Tulisan', true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning) VALUES (k_bun, 'Kalimat', false);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning) VALUES (k_en, 'Yen', true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning) VALUES (k_en, 'Lingkaran', false);

  -- Readings for Kanji
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading) VALUES (k_tama, 'たま', 'kunyomi', true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading) VALUES (k_hon, 'ほん', 'onyomi', true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading) VALUES (k_ko, 'し', 'onyomi', true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading) VALUES (k_ko, 'こ', 'kunyomi', false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading) VALUES (k_maru, 'まる', 'kunyomi', true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading) VALUES (k_sei, 'せい', 'onyomi', true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading) VALUES (k_sei, 'しょう', 'onyomi', false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading) VALUES (k_tsuchi, 'ど', 'onyomi', true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading) VALUES (k_tsuchi, 'つち', 'kunyomi', false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading) VALUES (k_inu, 'いぬ', 'kunyomi', true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading) VALUES (k_yube, 'ゆう', 'onyomi', true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading) VALUES (k_shutsu, 'しゅつ', 'onyomi', true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading) VALUES (k_shutsu, 'で', 'kunyomi', false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading) VALUES (k_me, 'め', 'kunyomi', true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading) VALUES (k_ka, 'か', 'onyomi', true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading) VALUES (k_ka, 'ひ', 'kunyomi', false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading) VALUES (k_go, 'ご', 'onyomi', true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading) VALUES (k_shi, 'し', 'onyomi', true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading) VALUES (k_shi, 'よん', 'kunyomi', false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading) VALUES (k_te, 'て', 'kunyomi', true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading) VALUES (k_ten, 'てん', 'onyomi', true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading) VALUES (k_ou, 'おう', 'onyomi', true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading) VALUES (k_left, 'さ', 'onyomi', true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading) VALUES (k_left, 'ひだり', 'kunyomi', false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading) VALUES (k_chu, 'ちゅう', 'onyomi', true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading) VALUES (k_chu, 'なか', 'kunyomi', false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading) VALUES (k_getsu, 'げつ', 'onyomi', true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading) VALUES (k_getsu, 'がつ', 'onyomi', false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading) VALUES (k_getsu, 'つき', 'kunyomi', false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading) VALUES (k_noma, 'のま', 'kunyomi', true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading) VALUES (k_ta, 'た', 'kunyomi', true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading) VALUES (k_right, 'ゆう', 'onyomi', true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading) VALUES (k_right, 'みぎ', 'kunyomi', false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading) VALUES (k_roku, 'ろく', 'onyomi', true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading) VALUES (k_sho, 'しょう', 'onyomi', true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading) VALUES (k_sho, 'ちい', 'kunyomi', false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading) VALUES (k_ritsu, 'りつ', 'onyomi', true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading) VALUES (k_ritsu, 'た', 'kunyomi', false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading) VALUES (k_chou, 'ちょう', 'onyomi', true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading) VALUES (k_nichi, 'にち', 'onyomi', true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading) VALUES (k_nichi, 'ひ', 'kunyomi', false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading) VALUES (k_tou, 'とう', 'onyomi', true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading) VALUES (k_tou, 'かたな', 'kunyomi', false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading) VALUES (k_sai, 'さい', 'onyomi', true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading) VALUES (k_sen, 'せん', 'onyomi', true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading) VALUES (k_moku, 'もく', 'onyomi', true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading) VALUES (k_moku, 'き', 'kunyomi', false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading) VALUES (k_sui, 'すい', 'onyomi', true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading) VALUES (k_sui, 'みず', 'kunyomi', false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading) VALUES (k_haku, 'はく', 'onyomi', true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading) VALUES (k_haku, 'しろ', 'kunyomi', false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading) VALUES (k_bun, 'ぶん', 'onyomi', true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading) VALUES (k_en, 'えん', 'onyomi', true);


  -- ============================================================
  -- 3. VOCABULARY (Level 2)
  -- ============================================================
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, description)
    VALUES ('vocabulary', '四月', 'april', 2, 69, 'Kombinasi angka EMPAT (四) dan BULAN (月) melambangkan bulan keempat dalam setahun.', 'Merujuk pada nama bulan April.') RETURNING id INTO v_sigatsu;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, description)
    VALUES ('vocabulary', '玉', 'bola', 2, 70, 'Menggunakan kanji BOLA (玉) secara mandiri untuk menyebutkan bola bulat.', 'Kata benda umum untuk bola atau permata.') RETURNING id INTO v_tama;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, description)
    VALUES ('vocabulary', '本', 'buku', 2, 71, 'Menggunakan kanji BUKU (本) secara mandiri untuk menunjuk objek buku bacaan.', 'Buku cetak atau dokumen berjilid.') RETURNING id INTO v_hon;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, description)
    VALUES ('vocabulary', '子', 'anak', 2, 72, 'Menggunakan kanji ANAK (子) secara mandiri untuk menyebut anak kecil.', 'Kata benda umum untuk anak-anak.') RETURNING id INTO v_ko;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, description)
    VALUES ('vocabulary', '丸', 'lingkaran', 2, 73, 'Menggunakan kanji LINGKARAN (丸) secara mandiri untuk menyatakan bentuk bulat.', 'Kata benda untuk lingkaran atau bentuk bulat.') RETURNING id INTO v_maru;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, description)
    VALUES ('vocabulary', '丸い', 'bulat', 2, 74, 'Kanji LINGKARAN (丸) dengan akhiran hiragana い membentuk kata sifat bulat.', 'Kata sifat yang berarti bulat atau melingkar.') RETURNING id INTO v_marui;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, description)
    VALUES ('vocabulary', '正しい', 'benar', 2, 75, 'Kanji BENAR (正) ditambah akhiran hiragana しい membentuk kata sifat benar.', 'Kata sifat yang menyatakan kebenaran atau kecocokan.') RETURNING id INTO v_tadashii;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, description)
    VALUES ('vocabulary', '土', 'tanah', 2, 76, 'Kanji TANAH (土) dibaca mandiri untuk menyebutkan elemen tanah di kebun.', 'Elemen tanah, lumpur, atau pasir.') RETURNING id INTO v_tsuchi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, description)
    VALUES ('vocabulary', '犬', 'anjing', 2, 77, 'Kanji ANJING (犬) dibaca secara mandiri untuk memanggil nama binatang anjing.', 'Binatang mamalia berkaki empat.') RETURNING id INTO v_inu;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, description)
    VALUES ('vocabulary', '八日', 'tanggal-delapan', 2, 78, 'Kombinasi DELAPAN (八) dan HARI (日) untuk menyatakan hari kedelapan.', 'Hari ke-8 pada kalender bulanan.') RETURNING id INTO v_youka;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, description)
    VALUES ('vocabulary', '出口', 'pintu-keluar', 2, 79, 'Kombinasi KELUAR (出) dan MULUT (口) — pintu luar atau jalan keluar.', 'Jalan keluar dari suatu gedung.') RETURNING id INTO v_deguchi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, description)
    VALUES ('vocabulary', '目', 'mata', 2, 80, 'Kanji MATA (目) dibaca mandiri untuk menyatakan organ mata penglihatan.', 'Organ tubuh mata.') RETURNING id INTO v_me;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, description)
    VALUES ('vocabulary', '目玉', 'bola-mata', 2, 81, 'Kombinasi MATA (目) dan BOLA (玉) secara literal membentuk bola mata.', 'Juga sering dipakai dalam arti kiasan telur mata sapi (目玉焼き).') RETURNING id INTO v_medama;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, description)
    VALUES ('vocabulary', '二月', 'februari', 2, 82, 'Kombinasi DUA (二) dan BULAN (月) melambangkan bulan kedua.', 'Nama bulan Februari.') RETURNING id INTO v_nigatsu;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, description)
    VALUES ('vocabulary', '五日', 'tanggal-lima', 2, 83, 'Kombinasi LIMA (五) dan HARI (日) melambangkan tanggal kelima.', 'Tanggal 5 atau durasi lima hari.') RETURNING id INTO v_itsuka;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, description)
    VALUES ('vocabulary', '五十', 'lima-puluh', 2, 84, 'Kombinasi LIMA (五) dan SEPULUH (十) membentuk kelipatan lima puluh.', 'Bilangan angka 50.') RETURNING id INTO v_gojuu;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, description)
    VALUES ('vocabulary', '火', 'api', 2, 85, 'Kanji API (火) dibaca mandiri untuk menyebutkan kobaran api atau bara.', 'Elemen api.') RETURNING id INTO v_hi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, description)
    VALUES ('vocabulary', '五', 'lima', 2, 86, 'Kanji LIMA (五) dibaca mandiri sebagai angka bilangan lima.', 'Angka bilangan 5.') RETURNING id INTO v_go;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, description)
    VALUES ('vocabulary', '五つ', 'lima-hal', 2, 87, 'LIMA (五) buah menggunakan sufiks asli penghitung benda umum つ.', 'Penghitung untuk lima benda.') RETURNING id INTO v_itsutsu;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, description)
    VALUES ('vocabulary', '四', 'empat', 2, 88, 'Kanji EMPAT (四) dibaca mandiri sebagai angka bilangan empat.', 'Angka bilangan 4.') RETURNING id INTO v_yon;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, description)
    VALUES ('vocabulary', '天才', 'jenius', 2, 89, 'Orang yang dianugerahi bakat luar biasa (才) langsung dari langit/surga (天).', 'Seseorang yang sangat jenius.') RETURNING id INTO v_tensai;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, description)
    VALUES ('vocabulary', '女子', 'anak-perempuan', 2, 90, 'Gabungan dari WANITA (女) dan ANAK (子) untuk menunjuk anak perempuan.', 'Anak perempuan / siswi sekolah.') RETURNING id INTO v_joshi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, description)
    VALUES ('vocabulary', '女の子', 'anak-perempuan', 2, 91, 'Menggunakan partikel の untuk memperjelas identitas anak perempuan.', 'Anak perempuan (sopan sehari-hari).') RETURNING id INTO v_onnanoko;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, description)
    VALUES ('vocabulary', '上手', 'mahir', 2, 92, 'Tangan (手) yang berada di posisi atas (上) melambangkan keahlian yang mahir.', 'Kata sifat untuk pandai atau mahir dalam suatu bidang.') RETURNING id INTO v_jouzu;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, description)
    VALUES ('vocabulary', 'おはよう', 'selamat-pagi', 2, 93, 'Salam sapaan pagi hari dalam bahasa Jepang (ditulis dengan kana).', 'Ungkapan salam Selamat Pagi.') RETURNING id INTO v_ohayou;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, description)
    VALUES ('vocabulary', '手', 'tangan', 2, 94, 'Kanji TANGAN (手) dibaca secara mandiri untuk organ fisik tangan.', 'Organ tangan manusia.') RETURNING id INTO v_te;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, description)
    VALUES ('vocabulary', '天', 'surga', 2, 95, 'Kanji SURGA/LANGIT (天) dibaca secara mandiri.', 'Kubah langit luas atau surga.') RETURNING id INTO v_ten;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, description)
    VALUES ('vocabulary', 'ホテル', 'hotel', 2, 96, 'Kata serapan bahasa asing Katakana untuk penginapan hotel.', 'Hotel tempat menginap.') RETURNING id INTO v_hoteru;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, description)
    VALUES ('vocabulary', '入力', 'input', 2, 97, 'Aksi memasukkan (入) tenaga kerja (力) — menginput data.', 'Proses input data komputasi.') RETURNING id INTO v_nyuuryoku;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, description)
    VALUES ('vocabulary', '中', 'di-dalam', 2, 98, 'Kanji TENGAH (中) dibaca mandiri sebagai posisi di dalam ruangan.', 'Arah posisi di dalam.') RETURNING id INTO v_naka;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, description)
    VALUES ('vocabulary', '一月', 'januari', 2, 99, 'Kombinasi SATU (一) dan BULAN (月) melambangkan bulan pertama.', 'Nama bulan Januari.') RETURNING id INTO v_ichigatsu;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, description)
    VALUES ('vocabulary', '日本', 'jepang', 2, 100, 'Negeri asal mula (本) terbitnya matahari (日) — negara Jepang.', 'Negara Jepang (Nippon/Nihon).') RETURNING id INTO v_nihon;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, description)
    VALUES ('vocabulary', '六月', 'juni', 2, 101, 'Kombinasi ENAM (六) dan BULAN (月) melambangkan bulan keenam.', 'Nama bulan Juni.') RETURNING id INTO v_rokugatsu;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, description)
    VALUES ('vocabulary', '王', 'raja', 2, 102, 'Kanji RAJA (王) dibaca mandiri melambangkan pemimpin tertinggi kerajaan.', 'Raja atau kaisar.') RETURNING id INTO v_ou;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, description)
    VALUES ('vocabulary', '夕べ', 'tadi-malam', 2, 103, 'Menunjuk waktu petang hari (夕) kemarin — tadi malam.', 'Malam kemarin atau petang hari.') RETURNING id INTO v_yuube;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, description)
    VALUES ('vocabulary', '左右', 'kiri-kanan', 2, 104, 'Kombinasi KIRI (左) dan KANAN (右) membentuk kata majemuk arah.', 'Arah kiri dan kanan atau mengendalikan.') RETURNING id INTO v_sayuu;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, description)
    VALUES ('vocabulary', '左', 'kiri', 2, 105, 'Kanji KIRI (左) dibaca mandiri sebagai penunjuk arah kiri.', 'Arah posisi kiri.') RETURNING id INTO v_hidari;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, description)
    VALUES ('vocabulary', '五月', 'mei', 2, 106, 'Kombinasi LIMA (五) dan BULAN (月) melambangkan bulan kelima.', 'Nama bulan Mei.') RETURNING id INTO v_gogatsu;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, description)
    VALUES ('vocabulary', '月', 'bulan', 2, 107, 'Kanji BULAN (月) dibaca mandiri menunjuk benda langit bulan.', 'Bulan di angkasa.') RETURNING id INTO v_tsuki;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, description)
    VALUES ('vocabulary', '九日', 'tanggal-sembilan', 2, 108, 'Kombinasi SEMBILAN (九) dan HARI (日) melambangkan tanggal sembilan.', 'Hari ke-9 pada kalender bulanan.') RETURNING id INTO v_kokonoka;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, description)
    VALUES ('vocabulary', '十月', 'oktober', 2, 109, 'Kombinasi SEPULUH (十) dan BULAN (月) melambangkan bulan kesepuluh.', 'Nama bulan Oktober.') RETURNING id INTO v_juugatsu;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, description)
    VALUES ('vocabulary', '一日', 'satu-hari', 2, 110, 'Kombinasi SATU (一) dan HARI (日) untuk melambangkan satu hari penuh atau tanggal satu.', 'Satu hari penuh atau tanggal 1 (dibaca tsuitachi).') RETURNING id INTO v_ichinichi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, description)
    VALUES ('vocabulary', '千円', 'seribu-yen', 2, 111, 'Gabungan dari nominal bilangan SERIBU (千) dan mata uang YEN (円).', 'Uang bernilai seribu yen.') RETURNING id INTO v_senen;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, description)
    VALUES ('vocabulary', '玉ねぎ', 'bawang-bombay', 2, 112, 'Tanaman sayuran bawang bombay yang memiliki umbi bulat seperti permata (玉).', 'Sayuran bawang bombay.') RETURNING id INTO v_tamanegi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, description)
    VALUES ('vocabulary', '人々', 'orang-orang', 2, 113, 'Pengulangan kanji ORANG (人) yang disederhanakan dengan simbol pengulang 々.', 'Kumpulan orang-orang banyak.') RETURNING id INTO v_hitobito;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, description)
    VALUES ('vocabulary', '王子', 'pangeran', 2, 114, 'Anak laki-laki (子) dari seorang raja (王) agung — sang pangeran.', 'Putra mahkota / pangeran.') RETURNING id INTO v_ouji;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, description)
    VALUES ('vocabulary', '王女', 'putri', 2, 115, 'Putri atau anak perempuan (女) dari seorang raja (王) — sang putri.', 'Putri raja.') RETURNING id INTO v_oujo;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, description)
    VALUES ('vocabulary', '子犬', 'anak-anjing', 2, 116, 'Anak (子) dari seekor anjing (犬) — anak anjing yang mungil.', 'Anak anjing peliharaan.') RETURNING id INTO v_koinu;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, description)
    VALUES ('vocabulary', '女王', 'ratu', 2, 117, 'Pemimpin wanita (女) tertinggi dari suatu kerajaan (王) — ratu agung.', 'Ratu penguasa kerajaan.') RETURNING id INTO v_joou;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, description)
    VALUES ('vocabulary', '中々', 'lumayan', 2, 118, 'Pengulangan kata TENGAH (中) untuk menyatakan tingkat lumayan.', 'Lumayan atau cukup sulit.') RETURNING id INTO v_nakana;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, description)
    VALUES ('vocabulary', '田', 'sawah', 2, 119, 'Kanji SAWAH (田) dibaca mandiri untuk area sawah penanaman padi.', 'Sawah padi.') RETURNING id INTO v_ta;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, description)
    VALUES ('vocabulary', '田んぼ', 'sawah-pertanian', 2, 120, 'Penambahan sufiks hiragana んぼ memperjelas sebutan sawah padi.', 'Sawah pertanian.') RETURNING id INTO v_tanbo;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, description)
    VALUES ('vocabulary', '右', 'kanan', 2, 121, 'Kanji KANAN (右) dibaca mandiri sebagai penunjuk arah kanan.', 'Arah posisi kanan.') RETURNING id INTO v_migi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, description)
    VALUES ('vocabulary', '二日', 'tanggal-dua', 2, 122, 'Kombinasi DUA (二) dan HARI (日) melambangkan hari kedua.', 'Tanggal 2 or durasi dua hari.') RETURNING id INTO v_futsuka;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, description)
    VALUES ('vocabulary', '七日', 'tanggal-tujuh', 2, 123, 'Kombinasi TUJUH (七) dan HARI (日) melambangkan hari ketujuh.', 'Tanggal 7 or durasi tujuh hari.') RETURNING id INTO v_nanoka;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, description)
    VALUES ('vocabulary', '六', 'enam', 2, 124, 'Kanji ENAM (六) dibaca mandiri sebagai angka bilangan enam.', 'Angka bilangan 6.') RETURNING id INTO v_roku;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, description)
    VALUES ('vocabulary', '十六', 'enam-belas', 2, 125, 'Kombinasi SEPULUH (十) dan ENAM (六) membentuk angka enam belas.', 'Angka bilangan 16.') RETURNING id INTO v_juuroku;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, description)
    VALUES ('vocabulary', '六日', 'tanggal-enam', 2, 126, 'Kombinasi ENAM (六) dan HARI (日) melambangkan hari keenam.', 'Tanggal 6 or durasi enam hari.') RETURNING id INTO v_muika;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, description)
    VALUES ('vocabulary', '六つ', 'enam-hal', 2, 127, 'ENAM (六) buah menggunakan sufiks asli penghitung benda umum つ.', 'Penghitung untuk enam benda.') RETURNING id INTO v_muttsu;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, description)
    VALUES ('vocabulary', '小さい', 'kecil', 2, 128, 'Kanji KECIL (小) ditambah akhiran hiragana さい membentuk kata sifat kecil.', 'Kata sifat yang berarti kecil.') RETURNING id INTO v_chiisai;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, description)
    VALUES ('vocabulary', '日', 'matahari', 2, 129, 'Kanji MATAHARI (日) dibaca secara mandiri.', 'Kata benda matahari atau hari.') RETURNING id INTO v_hi_sun;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, description)
    VALUES ('vocabulary', '刀', 'pedang', 2, 130, 'Kanji PEDANG (刀) dibaca mandiri menunjuk bilah katana tajam.', 'Pedang tradisional Jepang.') RETURNING id INTO v_katana;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, description)
    VALUES ('vocabulary', '十日', 'tanggal-sepuluh', 2, 131, 'Kombinasi SEPULUH (十) dan HARI (日) melambangkan hari kesepuluh.', 'Tanggal 10 or durasi sepuluh hari.') RETURNING id INTO v_tooka;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, description)
    VALUES ('vocabulary', '三日', 'tanggal-tiga', 2, 132, 'Kombinasi TIGA (三) dan HARI (日) melambangkan hari ketiga.', 'Tanggal 3 or durasi tiga hari.') RETURNING id INTO v_mikka;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, description)
    VALUES ('vocabulary', '千', 'seribu', 2, 133, 'Kanji SERIBU (千) dibaca mandiri sebagai nominal angka seribu.', 'Nominal angka 1000.') RETURNING id INTO v_sen;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, description)
    VALUES ('vocabulary', '上る', 'mendaki', 2, 134, 'Kata kerja bertema ATAS (上) ditambah akhiranる menyatakan aksi mendaki.', 'Aksi memanjat atau mendaki gunung.') RETURNING id INTO v_noboru;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, description)
    VALUES ('vocabulary', '正す', 'membenarkan', 2, 135, 'Kata kerja bertema BENAR (正) dengan akhiran す menyatakan aksi membenarkan.', 'Aksi mengoreksi atau membetulkan kesalahan.') RETURNING id INTO v_tadasu;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, description)
    VALUES ('vocabulary', '出る', 'keluar', 2, 136, 'Kata kerja bertema KELUAR (出) dengan akhiran る menyatakan aksi keluar.', 'Aksi keluar dari suatu tempat.') RETURNING id INTO v_deru;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, description)
    VALUES ('vocabulary', '立つ', 'berdiri', 2, 137, 'Kata kerja bertema BERDIRI (立) dengan akhiran つ menyatakan aksi berdiri.', 'Aksi bangkit berdiri.') RETURNING id INTO v_tatsu;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, description)
    VALUES ('vocabulary', '木', 'pohon', 2, 138, 'Kanji POHON (木) dibaca secara mandiri.', 'Tanaman pohon kayu.') RETURNING id INTO v_ki;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, description)
    VALUES ('vocabulary', '水中', 'bawah-air', 2, 139, 'Berada di TENGAH-TENGAH (中) atau di dalam AIR (水) — wilayah bawah air.', 'Kondisi di bawah permukaan air.') RETURNING id INTO v_suichuu;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, description)
    VALUES ('vocabulary', '下手', 'tidak-mahir', 2, 140, 'Tangan (手) yang berada di posisi bawah (下) melambangkan ketidakcakapan.', 'Kata sifat yang menyatakan tidak pandai atau canggung.') RETURNING id INTO v_heta;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, description)
    VALUES ('vocabulary', '火山', 'gunung-berapi', 2, 141, 'Gunung (山) yang memiliki kawah api (火) membara — gunung berapi.', 'Gunung api aktif.') RETURNING id INTO v_kazan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, description)
    VALUES ('vocabulary', '水', 'air', 2, 142, 'Kanji AIR (水) dibaca secara mandiri.', 'Cairan air tawar jernih.') RETURNING id INTO v_mizu;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, description)
    VALUES ('vocabulary', '白', 'putih', 2, 143, 'Kanji PUTIH (白) dibaca secara mandiri.', 'Warna putih bersih.') RETURNING id INTO v_shiro;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, description)
    VALUES ('vocabulary', '白人', 'orang-kulit-putih', 2, 144, 'Seseorang (人) yang memiliki ras kulit berwarna putih (白).', 'Ras kaukasia / orang kulit putih.') RETURNING id INTO v_hakujin;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, description)
    VALUES ('vocabulary', '文', 'tulisan', 2, 145, 'Kanji TULISAN (文) dibaca mandiri menyatakan goresan tulisan sastra.', 'Kalimat tulisan atau naskah sastra.') RETURNING id INTO v_bun;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, description)
    VALUES ('vocabulary', '〜才', 'umur', 2, 146, 'Penggunaan kanji BAKAT/USIA (才) sebagai sufiks penunjuk umur manusia.', 'Sufiks umur tahun.') RETURNING id INTO v_sai;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, description)
    VALUES ('vocabulary', '〜円', 'yen', 2, 147, 'Penggunaan kanji YEN (円) sebagai sufiks nominal harga mata uang Jepang.', 'Sufiks nominal mata uang yen.') RETURNING id INTO v_en;

  -- Meanings for Vocabulary
  INSERT INTO item_meanings (item_id, meaning, primary_meaning) VALUES (v_sigatsu, 'April', true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning) VALUES (v_tama, 'Bola', true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning) VALUES (v_tama, 'Permata', false);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning) VALUES (v_hon, 'Buku', true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning) VALUES (v_ko, 'Anak', true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning) VALUES (v_maru, 'Lingkaran', true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning) VALUES (v_marui, 'Bulat', true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning) VALUES (v_marui, 'Bundar', false);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning) VALUES (v_tadashii, 'Benar', true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning) VALUES (v_tadashii, 'Tepat', false);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning) VALUES (v_tsuchi, 'Tanah', true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning) VALUES (v_tsuchi, 'Tanah Lempung', false);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning) VALUES (v_inu, 'Anjing', true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning) VALUES (v_youka, 'Hari Kedelapan', true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning) VALUES (v_deguchi, 'Jalan Keluar', true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning) VALUES (v_me, 'Mata', true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning) VALUES (v_medama, 'Bola Mata', true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning) VALUES (v_nigatsu, 'Februari', true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning) VALUES (v_itsuka, 'Hari Kelima', true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning) VALUES (v_gojuu, 'Lima Puluh', true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning) VALUES (v_hi, 'Api', true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning) VALUES (v_go, 'Lima', true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning) VALUES (v_itsutsu, 'Lima Hal', true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning) VALUES (v_yon, 'Empat', true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning) VALUES (v_tensai, 'Jenius', true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning) VALUES (v_joshi, 'Anak Perempuan', true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning) VALUES (v_onnanoko, 'Anak Perempuan', true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning) VALUES (v_jouzu, 'Mahir', true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning) VALUES (v_jouzu, 'Pandai', false);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning) VALUES (v_ohayou, 'Selamat Pagi', true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning) VALUES (v_te, 'Tangan', true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning) VALUES (v_ten, 'Surga', true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning) VALUES (v_hoteru, 'Hotel', true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning) VALUES (v_nyuuryoku, 'Input', true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning) VALUES (v_naka, 'Di Dalam', true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning) VALUES (v_ichigatsu, 'Januari', true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning) VALUES (v_nihon, 'Jepang', true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning) VALUES (v_rokugatsu, 'Juni', true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning) VALUES (v_ou, 'Raja', true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning) VALUES (v_yuube, 'Tadi Malam', true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning) VALUES (v_sayuu, 'Kiri Dan Kanan', true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning) VALUES (v_hidari, 'Arah Kiri', true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning) VALUES (v_gogatsu, 'Mei', true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning) VALUES (v_tsuki, 'Bulan', true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning) VALUES (v_kokonoka, 'Hari Kesembilan', true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning) VALUES (v_juugatsu, 'Oktober', true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning) VALUES (v_ichinichi, 'Satu Hari', true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning) VALUES (v_senen, 'Seribu Yen', true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning) VALUES (v_tamanegi, 'Bawang Bombay', true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning) VALUES (v_hitobito, 'Orang-orang', true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning) VALUES (v_ouji, 'Pangeran', true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning) VALUES (v_oujo, 'Putri Raja', true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning) VALUES (v_koinu, 'Anak Anjing', true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning) VALUES (v_joou, 'Ratu', true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning) VALUES (v_nakana, 'Lumayan', true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning) VALUES (v_nakana, 'Cukup', false);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning) VALUES (v_ta, 'Sawah', true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning) VALUES (v_tanbo, 'Sawah', true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning) VALUES (v_migi, 'Arah Kanan', true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning) VALUES (v_futsuka, 'Hari Kedua', true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning) VALUES (v_nanoka, 'Hari Ketujuh', true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning) VALUES (v_roku, 'Enam', true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning) VALUES (v_juuroku, 'Enam Belas', true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning) VALUES (v_muika, 'Hari Keenam', true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning) VALUES (v_muttsu, 'Enam Hal', true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning) VALUES (v_chiisai, 'Kecil', true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning) VALUES (v_hi_sun, 'Matahari', true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning) VALUES (v_katana, 'Pedang', true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning) VALUES (v_tooka, 'Hari Kesepuluh', true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning) VALUES (v_mikka, 'Hari Ketiga', true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning) VALUES (v_sen, 'Seribu', true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning) VALUES (v_noboru, 'Mendaki', true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning) VALUES (v_tadasu, 'Membenarkan', true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning) VALUES (v_deru, 'Keluar', true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning) VALUES (v_tatsu, 'Berdiri', true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning) VALUES (v_ki, 'Pohon', true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning) VALUES (v_suichuu, 'Bawah Air', true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning) VALUES (v_heta, 'Canggung', true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning) VALUES (v_kazan, 'Gunung Berapi', true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning) VALUES (v_mizu, 'Air', true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning) VALUES (v_shiro, 'Putih', true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning) VALUES (v_hakujin, 'Orang Kulit Putih', true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning) VALUES (v_bun, 'Tulisan', true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning) VALUES (v_sai, 'Umur', true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning) VALUES (v_en, 'Yen', true);

  -- Readings for Vocabulary
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_sigatsu, 'しがつ', true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_tama, 'たま', true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_hon, 'ほん', true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_ko, 'こ', true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_maru, 'まる', true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_marui, 'まるい', true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_tadashii, 'ただしい', true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_tsuchi, 'つち', true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_inu, 'いぬ', true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_youka, 'ようか', true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_deguchi, 'でぐち', true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_me, 'め', true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_medama, 'めだま', true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_nigatsu, 'にがつ', true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_itsuka, 'いつか', true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_gojuu, 'ごじゅう', true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_hi, 'ひ', true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_go, 'ご', true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_itsutsu, 'いつつ', true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_yon, 'よん', true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_tensai, 'てんさい', true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_joshi, 'じょし', true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_onnanoko, 'おonnaのこ', true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_onnanoko, 'おんなのこ', true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_jouzu, 'じょうず', true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_ohayou, 'おはよう', true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_te, 'て', true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_ten, 'てん', true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_hoteru, 'ホテル', true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_nyuuryoku, 'にゅうりょく', true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_naka, 'なか', true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_ichigatsu, 'いちがつ', true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_nihon, 'にほん', true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_rokugatsu, 'ろくがつ', true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_ou, 'おう', true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_yuube, 'ゆうべ', true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_sayuu, 'さゆう', true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_hidari, 'ひだり', true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_gogatsu, 'ごがつ', true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_tsuki, 'つき', true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_kokonoka, 'ここのか', true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_juugatsu, 'じゅうがつ', true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_ichinichi, 'いちにち', true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_senen, 'せんえん', true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_tamanegi, 'たまねぎ', true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_hitobito, 'ひとびと', true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_ouji, 'おうじ', true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_oujo, 'おうじょ', true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_koinu, 'こいぬ', true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_joou, 'じょおう', true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_nakana, 'なかなか', true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_ta, 'た', true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_tanbo, 'たんぼ', true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_migi, 'みぎ', true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_futsuka, 'ふつか', true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_nanoka, 'なのか', true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_roku, 'ろく', true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_juuroku, 'じゅうろく', true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_muika, 'むいか', true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_muttsu, 'むっつ', true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_chiisai, 'ちいさい', true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_hi_sun, 'ひ', true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_katana, 'かたな', true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_tooka, 'とおか', true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_mikka, 'みっか', true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_sen, 'せん', true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_noboru, 'のぼる', true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_tadasu, 'ただす', true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_deru, 'でる', true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_tatsu, 'たつ', true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_ki, 'き', true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_suichuu, 'すいちゅう', true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_heta, 'へた', true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_kazan, 'かざん', true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_mizu, 'みず', true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_shiro, 'しろ', true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_hakujin, 'はくじん', true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_bun, 'ぶん', true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_sai, 'さい', true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_en, 'えん', true);


  -- ============================================================
  -- 4. CONTEXT SENTENCES (Vocabulary)
  -- ============================================================
  INSERT INTO item_context_sentences (item_id, japanese, indonesian)
    VALUES (v_sigatsu, '四月には日本中で美しい桜の花が満開になります。', 'Pada bulan April, bunga sakura yang indah mekar penuh di seluruh Jepang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian)
    VALUES (v_tama, '猫が赤い玉を追いかけて楽しそうに部屋を走り回っている。', 'Kucing itu berlari riang di sekitar kamar mengejar bola merah.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian)
    VALUES (v_hon, '図書館で面白い日本語の本を借りて、夜遅くまで読んだ。', 'Saya meminjam buku bahasa Jepang yang menarik dari perpustakaan dan membacanya hingga larut malam.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian)
    VALUES (v_ko, 'あそこにいる元気な子は私の友達の息子さんです。', 'Anak aktif di sebelah sana adalah putra dari teman saya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian)
    VALUES (v_maru, '黒板の上にチョークで大きな丸を描いて説明しました。', 'Menggambar lingkaran besar dengan kapur di papan tulis untuk menjelaskan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian)
    VALUES (v_marui, '今夜の月 is very round and bright, beautifully lighting up the sky.', 'Bulan malam ini sangat bulat dan terang, menerangi langit malam dengan indahnya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian)
    VALUES (v_tadashii, 'これがこの文法問題の正しい答えですから、覚えてください。', 'Karena ini adalah jawaban yang benar untuk soal tata bahasa ini, tolong diingat.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian)
    VALUES (v_tsuchi, '植物がよく育つように、植木鉢に新しい土を追加しました。', 'Menambahkan tanah baru ke pot tanaman agar tumbuhan tumbuh dengan baik.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian)
    VALUES (v_inu, '近所の公園で白い犬を散歩させているおじさんに会った。', 'Saya bertemu dengan seorang paman yang sedang mengajak jalan-jalan anjing putih di taman lingkungan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian)
    VALUES (v_youka, '来月の八日に、家族と一緒に北海道へ旅行に行く予定です。', 'Pada tanggal delapan bulan depan, saya berencana pergi berlibur ke Hokkaido bersama keluarga.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian)
    VALUES (v_deguchi, 'デパートの出口が分からなくて、しばらく迷ってしまいました。', 'Saya tidak tahu letak pintu keluar toko serba ada ini, sehingga sempat tersesat beberapa saat.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian)
    VALUES (v_me, 'パソコンの画面を長時間見ていると、目が疲れて痛くなります。', 'Jika melihat layar komputer dalam waktu lama, mata akan lelah dan terasa sakit.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian)
    VALUES (v_medama, '目玉焼きの黄身は半熟の方が美味しくて好きです。', 'Saya lebih suka telur mata sapi dengan kuning telur setengah matang karena rasanya lebih lezat.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian)
    VALUES (v_nigatsu, '日本では二月は一年の中で最も寒い時期と言われています。', 'Di Jepang, bulan Februari dikatakan sebagai waktu paling dingin dalam setahun.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian)
    VALUES (v_itsuka, '五月五日は子供の日で、日本では祝日になっています。', 'Tanggal lima Mei adalah Hari Anak-Anak dan merupakan hari libur nasional di Jepang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian)
    VALUES (v_gojuu, 'この教科書は全部で五十ページありますが、今日全部読みます。', 'Buku pelajaran ini totalnya ada lima puluh halaman, tetapi hari ini saya akan membaca semuanya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian)
    VALUES (v_hi, 'キャンプファイヤーの温かい火を囲んでみんなで歌を歌った。', 'Kami semua bernyanyi mengelilingi api unggun yang hangat.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian)
    VALUES (v_go, '英語のテストで、彼はクラスの中で五番目に高い点数を取った。', 'Dalam ujian bahasa Inggris, dia mendapat nilai tertinggi kelima di kelas.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian)
    VALUES (v_itsutsu, 'リンゴを五つ買って、近所の子供たちに一つずつ分けました。', 'Membeli lima buah apel dan membagikannya satu per satu kepada anak-anak tetangga.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian)
    VALUES (v_yon, '私の部屋の番号は四番ですから、そこに来てください。', 'Karena nomor kamar saya adalah nomor empat, silakan datang ke sana.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian)
    VALUES (v_tensai, '彼は子供の頃からピアノの天才として世間に知られていた。', 'Dia telah dikenal dunia sebagai jenius piano sejak masa kanak-kanak.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian)
    VALUES (v_joshi, '来週の金曜日に、女子だけのスポーツ大会が開催されます。', 'Pada hari Jumat minggu depan, turnamen olahraga khusus perempuan akan diselenggarakan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian)
    VALUES (v_onnanoko, 'あそこで楽しそうに縄跳びをしている女の子は誰の娘ですか。', 'Siapakah putri orang itu, gadis kecil yang bermain lompat tali dengan riang di sana?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian)
    VALUES (v_jouzu, 'お姉さんはピアノを弾くのが本当に上手で羨ましいです。', 'Kakak perempuan saya benar-benar mahir bermain piano, saya sangat iri.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian)
    VALUES (v_ohayou, '朝起きて家族に「おはよう」と元気に挨拶しました。', 'Bangun di pagi hari dan memberi salam "Selamat pagi" dengan ceria kepada keluarga.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian)
    VALUES (v_te, '料理を食べる前には、必ず手と指を綺麗に洗いましょう。', 'Sebelum menyantap makanan, pastikan untuk selalu mencuci tangan dan jari Anda hingga bersih.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian)
    VALUES (v_ten, '私たちは天からの恵みに感謝して、美味しいご飯を頂きます。', 'Kami berterima kasih atas karunia surga/langit dan menyantap hidangan lezat ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian)
    VALUES (v_hoteru, '旅行先で泊まった駅前のホテルは、とても綺麗で快適だった。', 'Hotel di depan stasiun tempat kami menginap di destinasi liburan sangat bersih dan nyaman.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian)
    VALUES (v_nyuuryoku, 'パソコン di layar input nama dan e-mail.', 'Menginput nama dan alamat email saya pada layar komputer.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian)
    VALUES (v_naka, '寒いので、みんな早く暖かい部屋の中に入ってください。', 'Karena cuaca dingin, harap semuanya segera masuk ke dalam kamar yang hangat.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian)
    VALUES (v_ichigatsu, '一月一日はお正月で、多くの日本人が神社に参拝します。', 'Tanggal satu Januari adalah Tahun Baru, dan banyak orang Jepang berziarah kuil.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian)
    VALUES (v_nihon, '私はいつか日本に行って、満開の美しい桜が見たいです。', 'Saya ingin pergi ke Jepang suatu hari nanti untuk melihat bunga sakura indah yang bermekaran.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian)
    VALUES (v_rokugatsu, '六月は日本では梅雨の季節で、雨の日が毎日多くなります。', 'Bulan Juni adalah musim hujan di Jepang, sehingga hari hujan bertambah banyak setiap harinya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian)
    VALUES (v_ou, '歴史の授業で、古代のエジプトを治めていた有名な王について学んだ。', 'Dalam kelas sejarah, kami mempelajari tentang raja terkenal yang memerintah Mesir kuno.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian)
    VALUES (v_yuube, '夕べ遅くに従いと電話で話していたので、今日はとても眠いです。', 'Karena semalam berbicara di telepon dengan sepupu sampai larut, hari ini saya sangat mengantuk.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian)
    VALUES (v_sayuu, '道路を渡る前には、必ず左右の安全をよく確認してください。', 'Sebelum menyeberang jalan, pastikan untuk selalu memeriksa keamanan arah kiri dan kanan dengan baik.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian)
    VALUES (v_hidari, '交差点を左に曲がると、右側に大きな銀行が見えてきます。', 'Jika belok ke kiri di persimpangan, Anda akan melihat bank besar di sisi kanan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian)
    VALUES (v_gogatsu, '五月の爽やかな風が吹く日は、散歩をするのに一番良いです。', 'Hari bertiupnya angin sepoi-sepoi di bulan Mei adalah waktu terbaik untuk jalan-jalan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian)
    VALUES (v_tsuki, '暗い夜空に白く光る丸い月が浮かんでいて、とても美しいです。', 'Bulan bulat putih bersinar terapung di langit malam yang gelap, sangat indah.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian)
    VALUES (v_kokonoka, '今月の九日は私の母の誕生日なので、花をプレゼントします。', 'Tanggal sembilan bulan ini adalah hari ulang tahun ibu saya, jadi saya akan menghadiahkan bunga.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian)
    VALUES (v_juugatsu, '十月は秋のシーズンで、山々の木の葉が綺麗に紅葉します。', 'Bulan Oktober adalah musim gugur, dan dedaunan pohon di pegunungan berubah warna dengan indahnya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian)
    VALUES (v_ichinichi, '一日に三回、この薬を食後に水で服用してください。', 'Minumlah obat ini dengan air tiga kali sehari setelah makan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian)
    VALUES (v_senen, 'このノートは一冊あたり千円で、少し高い気がします。', 'Buku catatan ini harganya seribu yen per buku, saya merasa ini sedikit mahal.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian)
    VALUES (v_tamanegi, 'カレーライスを作るために、玉ねぎと人参を小さく切った。', 'Memotong bawang bombay dan wortel kecil-kecil untuk membuat nasi kari.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian)
    VALUES (v_hitobito, '広場に多くの人々が集まって、音楽のお祭りを待っている。', 'Banyak orang berkumpul di alun-alun menunggu festival musik.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian)
    VALUES (v_ouji, '王子様はいつか美しいお姫様と出会って結婚するでしょう。', 'Sang pangeran suatu hari nanti akan bertemu dengan putri cantik dan menikah.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian)
    VALUES (v_oujo, '王女様は国民からとても愛されている優しい女性です。', 'Sang putri adalah wanita lembut yang sangat dicintai oleh rakyatnya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian)
    VALUES (v_koinu, '子犬が私の足元に寄ってきて、嬉しそうに尻尾を振った。', 'Anak anjing mendekat ke kaki saya dan mengibaskan ekornya dengan gembira.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian)
    VALUES (v_joou, '女王陛下はロンドン宮殿で世界各国の首相を温かく迎えた。', 'Ratu menyambut hangat perdana menteri dari berbagai negara di Istana London.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian)
    VALUES (v_nakana, 'この日本語のテストは中々難しくて、満点は取れなかった。', 'Ujian bahasa Jepang ini lumayan sulit, sehingga saya tidak bisa mendapat nilai sempurna.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian)
    VALUES (v_ta, '祖父は昔からこの田で美味しいお米を作り続けています。', 'Kakek saya telah terus memproduksi beras lezat di sawah ini sejak dulu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian)
    VALUES (v_tanbo, '田んぼの水たまりに、たくさんの小さなおたまじゃくしが泳いでいる。', 'Di genangan air sawah, banyak kecebong kecil sedang berenang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian)
    VALUES (v_migi, '交差点を右に曲がると、左手に綺麗な花屋さんが見えます。', 'Belok ke kanan di persimpangan, Anda akan melihat toko bunga yang indah di sisi kiri.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian)
    VALUES (v_futsuka, '二日間の旅行から帰ってきたばかりなので、少し疲れています。', 'Karena baru saja pulang dari liburan selama dua hari, saya merasa sedikit lelah.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian)
    VALUES (v_nanoka, '七日後の来週の水曜日に、大切な面接試験が予定されている。', 'Tujuh hari kemudian pada hari Rabu depan, ujian wawancara penting telah dijadwalkan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian)
    VALUES (v_roku, 'このグループにはメンバーが六人いて、みんな仲が良いです。', 'Grup ini memiliki enam orang anggota, dan semuanya berteman akrab.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian)
    VALUES (v_juuroku, '私は今年の誕生日で十六歳になり、高校生になりました。', 'Saya menginjak usia enam belas tahun pada ulang tahun tahun ini, dan menjadi siswa SMA.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian)
    VALUES (v_muika, '六日間の冬休みを利用して、実家に帰省することにしました。', 'Menggunakan libur musim dingin selama enam hari untuk memutuskan pulang ke kampung halaman.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian)
    VALUES (v_muttsu, 'ケーキを六つ買ってきたので、家族みんなで二つずつ食べましょう。', 'Karena membeli enam buah kue, mari kita makan masing-masing dua buah bersama keluarga.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian)
    VALUES (v_chiisai, 'このカメラは非常に小さくて軽いため、持ち運びにとても便利だ。', 'Karena kamera ini sangat kecil dan ringan, ini sangat praktis untuk dibawa bepergian.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian)
    VALUES (v_hi_sun, '日が暮れて空がだんだん暗くなると、星が輝き始めます。', 'Saat matahari terbenam dan langit berangsur gelap, bintang-bintang mulai bersinar.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian)
    VALUES (v_katana, '博物館に展示されている古い日本刀は、美しい輝きを放っている。', 'Katana kuno Jepang yang dipamerkan di museum memancarkan kilau yang indah.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian)
    VALUES (v_tooka, '十日間の短い旅行でしたが、とても充実した時間を過ごせました。', 'Meskipun liburan singkat selama sepuluh hari, saya menghabiskan waktu yang sangat bermakna.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian)
    VALUES (v_mikka, '風邪をひいて三日間のあいだ会社を休んで寝込んでいました。', 'Karena masuk angin, saya beristirahat di rumah dan tidak masuk kerja selama tiga hari.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian)
    VALUES (v_sen, 'この街には千人以上の人が住んでいて、とても活気があります。', 'Kota ini dihuni oleh lebih dari seribu orang dan sangat ramai.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian)
    VALUES (v_noboru, '休日に友達と一緒に高い山に上って、山頂で美味しい弁当を食べた。', 'Mendaki gunung yang tinggi bersama teman di hari libur dan menyantap bento lezat di puncak gunung.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian)
    VALUES (v_tadasu, '先生に指摘された発音の間違いを、すぐにその場で正しました。', 'Segera membetulkan kesalahan pengucapan yang ditunjukkan oleh guru saat itu juga.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian)
    VALUES (v_deru, '毎朝七時に家を出て、満員電車に乗って大学へ通学しています。', 'Setiap pagi meninggalkan rumah pukul 7, dan naik kereta padat untuk pergi ke universitas.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian)
    VALUES (v_tatsu, '電車の中では高齢者のために席を譲り、終点まで立ち続けました。', 'Mempersilakan lansia duduk di kereta dan tetap berdiri hingga stasiun akhir.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian)
    VALUES (v_ki, '庭の大きな木から、たくさんの赤くて甘い実が落ちてきました。', 'Banyak buah merah manis jatuh dari pohon besar di halaman.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian)
    VALUES (v_suichuu, '水中メガネをかけて潜ると、カラフルな魚がたくさん見えました。', 'Ketika menyelam mengenakan kacamata air, banyak terlihat ikan yang berwarna-warni.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian)
    VALUES (v_heta, '私は歌を歌うのが本当に下手なので、カラオケに行くのが苦手です。', 'Karena saya benar-benar tidak pandai bernyanyi, saya kurang suka pergi ke karaoke.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian)
    VALUES (v_kazan, '富士山は現在休止しているが、分類上は活火山とされている。', 'Meskipun saat ini sedang tertidur, Gunung Fuji diklasifikasikan sebagai gunung berapi aktif.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian)
    VALUES (v_mizu, '喉がとても渇いたので、冷蔵庫から冷たい水を一杯出して飲んだ。', 'Karena sangat haus, mengambil segelas air dingin dari kulkas dan meminumnya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian)
    VALUES (v_shiro, '白いシャツにコーヒーをこぼしてしまい、大きなシミができた。', 'Kopi tumpah pada kemeja putih saya, meninggalkan noda besar.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian)
    VALUES (v_hakujin, 'その映画には多くの白人の俳優が出演していて話題になりました。', 'Banyak aktor berkulit putih membintangi film tersebut sehingga sempat menjadi perbincangan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian)
    VALUES (v_bun, '教科書に載っている短い文を、ノートに丁寧に書き写しました。', 'Menyalin kalimat pendek dari buku pelajaran dengan rapi ke buku catatan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian)
    VALUES (v_sai, '弟は今年の誕生日を迎えると、ようやく十歳になります。', 'Adik laki-laki saya akhirnya akan menginjak usia sepuluh tahun pada ulang tahun tahun ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian)
    VALUES (v_en, '自動販売機で缶コーヒーを一本買うために、百円玉を入れました。', 'Memasukkan koin seratus yen untuk membeli satu kaleng kopi di mesin penjual otomatis.');


  -- ============================================================
  -- 5. PREREQUISITES (Kanji membutuhkan Radical)
  -- ============================================================
  INSERT INTO item_prerequisites VALUES (k_tama, r_ou);
  INSERT INTO item_prerequisites VALUES (k_hon, r_pohon);
  INSERT INTO item_prerequisites VALUES (k_ko, r_ko);
  INSERT INTO item_prerequisites VALUES (k_maru, r_katana);
  INSERT INTO item_prerequisites VALUES (k_sei, r_tome);
  INSERT INTO item_prerequisites VALUES (k_tsuchi, r_tsuchi);
  INSERT INTO item_prerequisites VALUES (k_inu, r_inu);
  INSERT INTO item_prerequisites VALUES (k_yube, r_yube);
  INSERT INTO item_prerequisites VALUES (k_shutsu, r_tatsu);
  INSERT INTO item_prerequisites VALUES (k_me, r_me);
  INSERT INTO item_prerequisites VALUES (k_ka, r_hi);
  INSERT INTO item_prerequisites VALUES (k_go, r_go);
  INSERT INTO item_prerequisites VALUES (k_shi, r_atama);
  INSERT INTO item_prerequisites VALUES (k_te, r_te);
  INSERT INTO item_prerequisites VALUES (k_ten, r_ou);
  INSERT INTO item_prerequisites VALUES (k_ou, r_ou);
  INSERT INTO item_prerequisites VALUES (k_left, r_te);
  INSERT INTO item_prerequisites VALUES (k_chu, r_naka);
  INSERT INTO item_prerequisites VALUES (k_getsu, r_tsuki);
  INSERT INTO item_prerequisites VALUES (k_noma, r_private);
  INSERT INTO item_prerequisites VALUES (k_ta, r_ta);
  INSERT INTO item_prerequisites VALUES (k_right, r_te);
  INSERT INTO item_prerequisites VALUES (k_roku, r_atama);
  INSERT INTO item_prerequisites VALUES (k_sho, r_sho);
  INSERT INTO item_prerequisites VALUES (k_ritsu, r_tatsu);
  INSERT INTO item_prerequisites VALUES (k_chou, r_chou);
  INSERT INTO item_prerequisites VALUES (k_nichi, r_tsuki);
  INSERT INTO item_prerequisites VALUES (k_tou, r_katana);
  INSERT INTO item_prerequisites VALUES (k_sai, r_sen);
  INSERT INTO item_prerequisites VALUES (k_sen, r_sen);
  INSERT INTO item_prerequisites VALUES (k_moku, r_pohon);
  INSERT INTO item_prerequisites VALUES (k_sui, r_mizu);
  INSERT INTO item_prerequisites VALUES (k_haku, r_shiro);
  INSERT INTO item_prerequisites VALUES (k_bun, r_bun);
  INSERT INTO item_prerequisites VALUES (k_en, r_atama);

  -- ============================================================
  -- 6. PREREQUISITES (Vocabulary membutuhkan Kanji)
  -- ============================================================
  INSERT INTO item_prerequisites VALUES (v_sigatsu, k_shi);
  INSERT INTO item_prerequisites VALUES (v_sigatsu, k_getsu);
  INSERT INTO item_prerequisites VALUES (v_tama, k_tama);
  INSERT INTO item_prerequisites VALUES (v_hon, k_hon);
  INSERT INTO item_prerequisites VALUES (v_ko, k_ko);
  INSERT INTO item_prerequisites VALUES (v_maru, k_maru);
  INSERT INTO item_prerequisites VALUES (v_marui, k_maru);
  INSERT INTO item_prerequisites VALUES (v_tadashii, k_sei);
  INSERT INTO item_prerequisites VALUES (v_tsuchi, k_tsuchi);
  INSERT INTO item_prerequisites VALUES (v_inu, k_inu);
  INSERT INTO item_prerequisites VALUES (v_youka, k_nichi);
  INSERT INTO item_prerequisites VALUES (v_deguchi, k_shutsu);
  INSERT INTO item_prerequisites VALUES (v_deguchi, k_mulut);
  INSERT INTO item_prerequisites VALUES (v_me, k_me);
  INSERT INTO item_prerequisites VALUES (v_medama, k_me);
  INSERT INTO item_prerequisites VALUES (v_medama, k_tama);
  INSERT INTO item_prerequisites VALUES (v_nigatsu, k_dua);
  INSERT INTO item_prerequisites VALUES (v_nigatsu, k_getsu);
  INSERT INTO item_prerequisites VALUES (v_itsuka, k_go);
  INSERT INTO item_prerequisites VALUES (v_itsuka, k_nichi);
  INSERT INTO item_prerequisites VALUES (v_gojuu, k_go);
  INSERT INTO item_prerequisites VALUES (v_gojuu, k_sepuluh);
  INSERT INTO item_prerequisites VALUES (v_hi, k_ka);
  INSERT INTO item_prerequisites VALUES (v_go, k_go);
  INSERT INTO item_prerequisites VALUES (v_itsutsu, k_go);
  INSERT INTO item_prerequisites VALUES (v_yon, k_shi);
  INSERT INTO item_prerequisites VALUES (v_tensai, k_ten);
  INSERT INTO item_prerequisites VALUES (v_tensai, k_sai);
  INSERT INTO item_prerequisites VALUES (v_joshi, k_wanita);
  INSERT INTO item_prerequisites VALUES (v_joshi, k_ko);
  INSERT INTO item_prerequisites VALUES (v_onnanoko, k_wanita);
  INSERT INTO item_prerequisites VALUES (v_onnanoko, k_ko);
  INSERT INTO item_prerequisites VALUES (v_jouzu, k_atas);
  INSERT INTO item_prerequisites VALUES (v_jouzu, k_te);
  INSERT INTO item_prerequisites VALUES (v_te, k_te);
  INSERT INTO item_prerequisites VALUES (v_ten, k_ten);
  INSERT INTO item_prerequisites VALUES (v_nyuuryoku, k_masuk);
  INSERT INTO item_prerequisites VALUES (v_nyuuryoku, k_kekuatan);
  INSERT INTO item_prerequisites VALUES (v_naka, k_chu);
  INSERT INTO item_prerequisites VALUES (v_ichigatsu, k_satu);
  INSERT INTO item_prerequisites VALUES (v_ichigatsu, k_getsu);
  INSERT INTO item_prerequisites VALUES (v_nihon, k_nichi);
  INSERT INTO item_prerequisites VALUES (v_nihon, k_hon);
  INSERT INTO item_prerequisites VALUES (v_rokugatsu, k_roku);
  INSERT INTO item_prerequisites VALUES (v_rokugatsu, k_getsu);
  INSERT INTO item_prerequisites VALUES (v_ou, k_ou);
  INSERT INTO item_prerequisites VALUES (v_yuube, k_yube);
  INSERT INTO item_prerequisites VALUES (v_sayuu, k_left);
  INSERT INTO item_prerequisites VALUES (v_sayuu, k_right);
  INSERT INTO item_prerequisites VALUES (v_hidari, k_left);
  INSERT INTO item_prerequisites VALUES (v_gogatsu, k_go);
  INSERT INTO item_prerequisites VALUES (v_gogatsu, k_getsu);
  INSERT INTO item_prerequisites VALUES (v_tsuki, k_getsu);
  INSERT INTO item_prerequisites VALUES (v_kokonoka, k_sembilan);
  INSERT INTO item_prerequisites VALUES (v_kokonoka, k_nichi);
  INSERT INTO item_prerequisites VALUES (v_juugatsu, k_sepuluh);
  INSERT INTO item_prerequisites VALUES (v_juugatsu, k_getsu);
  INSERT INTO item_prerequisites VALUES (v_ichinichi, k_satu);
  INSERT INTO item_prerequisites VALUES (v_ichinichi, k_nichi);
  INSERT INTO item_prerequisites VALUES (v_senen, k_sen);
  INSERT INTO item_prerequisites VALUES (v_senen, k_en);
  INSERT INTO item_prerequisites VALUES (v_tamanegi, k_tama);
  INSERT INTO item_prerequisites VALUES (v_hitobito, k_orang);
  INSERT INTO item_prerequisites VALUES (v_hitobito, k_noma);
  INSERT INTO item_prerequisites VALUES (v_ouji, k_ou);
  INSERT INTO item_prerequisites VALUES (v_ouji, k_ko);
  INSERT INTO item_prerequisites VALUES (v_oujo, k_ou);
  INSERT INTO item_prerequisites VALUES (v_oujo, k_wanita);
  INSERT INTO item_prerequisites VALUES (v_koinu, k_ko);
  INSERT INTO item_prerequisites VALUES (v_koinu, k_inu);
  INSERT INTO item_prerequisites VALUES (v_joou, k_wanita);
  INSERT INTO item_prerequisites VALUES (v_joou, k_ou);
  INSERT INTO item_prerequisites VALUES (v_nakana, k_chu);
  INSERT INTO item_prerequisites VALUES (v_nakana, k_noma);
  INSERT INTO item_prerequisites VALUES (v_ta, k_ta);
  INSERT INTO item_prerequisites VALUES (v_tanbo, k_ta);
  INSERT INTO item_prerequisites VALUES (v_migi, k_right);
  INSERT INTO item_prerequisites VALUES (v_futsuka, k_dua);
  INSERT INTO item_prerequisites VALUES (v_futsuka, k_nichi);
  INSERT INTO item_prerequisites VALUES (v_nanoka, k_tujuh);
  INSERT INTO item_prerequisites VALUES (v_nanoka, k_nichi);
  INSERT INTO item_prerequisites VALUES (v_roku, k_roku);
  INSERT INTO item_prerequisites VALUES (v_juuroku, k_sepuluh);
  INSERT INTO item_prerequisites VALUES (v_juuroku, k_roku);
  INSERT INTO item_prerequisites VALUES (v_muika, k_roku);
  INSERT INTO item_prerequisites VALUES (v_muika, k_nichi);
  INSERT INTO item_prerequisites VALUES (v_muttsu, k_roku);
  INSERT INTO item_prerequisites VALUES (v_chiisai, k_sho);
  INSERT INTO item_prerequisites VALUES (v_hi_sun, k_nichi);
  INSERT INTO item_prerequisites VALUES (v_katana, k_tou);
  INSERT INTO item_prerequisites VALUES (v_tooka, k_sepuluh);
  INSERT INTO item_prerequisites VALUES (v_tooka, k_nichi);
  INSERT INTO item_prerequisites VALUES (v_mikka, k_tiga);
  INSERT INTO item_prerequisites VALUES (v_mikka, k_nichi);
  INSERT INTO item_prerequisites VALUES (v_sen, k_sen);
  INSERT INTO item_prerequisites VALUES (v_noboru, k_atas);
  INSERT INTO item_prerequisites VALUES (v_tadasu, k_sei);
  INSERT INTO item_prerequisites VALUES (v_deru, k_shutsu);
  INSERT INTO item_prerequisites VALUES (v_tatsu, k_ritsu);
  INSERT INTO item_prerequisites VALUES (v_ki, k_moku);
  INSERT INTO item_prerequisites VALUES (v_suichuu, k_sui);
  INSERT INTO item_prerequisites VALUES (v_suichuu, k_chu);
  INSERT INTO item_prerequisites VALUES (v_heta, k_bawah);
  INSERT INTO item_prerequisites VALUES (v_heta, k_te);
  INSERT INTO item_prerequisites VALUES (v_kazan, k_ka);
  INSERT INTO item_prerequisites VALUES (v_kazan, k_gunung);
  INSERT INTO item_prerequisites VALUES (v_mizu, k_sui);
  INSERT INTO item_prerequisites VALUES (v_shiro, k_haku);
  INSERT INTO item_prerequisites VALUES (v_hakujin, k_haku);
  INSERT INTO item_prerequisites VALUES (v_hakujin, k_orang);
  INSERT INTO item_prerequisites VALUES (v_bun, k_bun);
  INSERT INTO item_prerequisites VALUES (v_sai, k_sai);
  INSERT INTO item_prerequisites VALUES (v_en, k_en);

END $$;
