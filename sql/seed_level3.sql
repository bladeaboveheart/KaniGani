-- ============================================================
-- KaniGani — Seed Data Level 3 (v2, relasional)
-- Jalankan SETELAH schema.sql, seed_level1.sql, & seed_level2.sql berhasil dieksekusi
-- ============================================================

DO $$
DECLARE
  -- ============ RADICAL IDs (Level 3) ============
  r_ya UUID; r_mei UUID; r_kanopi UUID; r_hou UUID; r_to UUID;
  r_kan UUID; r_tai_rad UUID; r_chichi_rad UUID; r_yubi UUID; r_ke UUID;
  r_boshi UUID; r_shin_rad UUID; r_koori UUID; r_sei_rad UUID; r_kita_rad UUID;
  r_ima_rad UUID; r_ko_rad UUID; r_kotoran UUID; r_yane UUID; r_saji UUID;
  r_ishi UUID; r_mata_rad UUID; r_you_rad UUID; r_haba UUID; r_tiga_tanduk UUID;
  r_mado UUID; r_fuyu_rad UUID;

  -- ============ KANJI IDs (Level 3) ============
  k_ya UUID; k_mei UUID; k_shi_town UUID; k_ushi_k UUID; k_setsu UUID;
  k_hou UUID; k_to UUID; k_tai UUID; k_chichi UUID; k_sho_few UUID;
  k_yuu UUID; k_mou UUID; k_han UUID; k_shin UUID; k_nai UUID;
  k_ji UUID; k_sei UUID; k_dai UUID; k_haha UUID; k_go_noon UUID;
  k_kita UUID; k_kon UUID; k_ko_old UUID; k_gai UUID; k_bun UUID;
  k_hi_pull UUID; k_shi_stop UUID; k_you UUID; k_man UUID; k_hiro UUID;
  k_fuyu UUID;

  -- ============ DYNAMIC PARENT IDs (Level 1 & 2) ============
  -- Radicals
  r_tanah UUID; r_tongkat UUID; r_besar UUID; r_titik UUID; r_mulut UUID;
  r_sepuluh_rad UUID; r_orang_rad UUID; r_kekuatan_rad UUID; r_seluncur UUID;
  r_katana_rad UUID; r_yumi_rad UUID; r_ko_rad2 UUID; r_ushi_rad UUID;
  r_tsuchi_rad UUID; r_hi_rad UUID; r_jo_rad UUID; r_tsuki_rad UUID;
  r_sho_rad UUID; r_tatsu_rad UUID; r_tome_rad UUID; r_chou_rad UUID;
  r_mizu_rad UUID; r_shiro_rad UUID; r_bun_rad UUID; r_atama_rad UUID;
  r_dua_rad UUID; r_yube UUID;

  -- Kanjis
  k_satu UUID; k_dua UUID; k_tiga UUID; k_sepuluh UUID; k_besar UUID;
  k_atas UUID; k_bawah UUID; k_orang UUID; k_mulut UUID; k_masuk UUID;
  k_wanita UUID; k_tsuchi UUID; k_ko UUID; k_go UUID; k_shi UUID;
  k_te UUID; k_getsu UUID; k_ta UUID; k_roku UUID; k_sho_small UUID;
  k_ritsu UUID; k_chou UUID; k_nichi UUID; k_tou UUID; k_sui UUID;
  k_shiro_k UUID; k_bun_k UUID; k_chu UUID; k_gunung UUID; k_tama UUID;
  k_shutsu UUID;

  -- ============ VOCABULARY IDs (Level 3) ============
  v_sukoshi UUID; v_amerikajin UUID; v_ringo UUID; v_ya UUID; v_counter_id UUID;
  v_igirisujin UUID; v_chuushi UUID; v_ji UUID; v_shi UUID; v_kohi UUID;
  v_ushi UUID; v_hou UUID; v_to UUID; v_toguchi UUID; v_namabiiru UUID;
  v_yamabiko UUID; v_futoi UUID; v_otousan UUID; v_chichi UUID; v_sukunai UUID;
  v_godai UUID; v_gaijin UUID; v_furansujin UUID; v_nama UUID; v_yuujin UUID;
  v_ke UUID; v_shoujo UUID; v_hanbun UUID; v_han UUID; v_kokoro UUID;
  v_konnichiha UUID; v_taisetsu UUID; v_uchi UUID; v_akari UUID; v_biidama UUID;
  v_haha UUID; v_okaasan UUID; v_shiritsu UUID; v_kita UUID; v_kitaguchi UUID;
  v_ima UUID; v_nin_counter UUID; v_otonashii UUID; v_furui UUID; v_juuman UUID;
  v_ichidai UUID; v_jinsei UUID; v_table_ue UUID; v_soto UUID; v_bun UUID;
  v_seatorushi UUID; v_chuuko UUID; v_hinode UUID; v_you UUID; v_juudai UUID;
  v_ichiman UUID; v_man UUID; v_kongetsu UUID; v_kore UUID; v_umareleru UUID;
  v_kiru UUID; v_kyou UUID; v_suru UUID; v_hiku UUID; v_hirogeru UUID;
  v_tomeru UUID; v_mochiiyu UUID; v_niman UUID; v_nidai UUID; v_bed_shita UUID;
  v_itsu UUID; v_hiroi UUID; v_fuyu UUID; v_onnanohito UUID;

BEGIN

  -- ============================================================
  -- 0. AMBIL ID DARI ITEM LEVEL 1 & 2
  -- ============================================================
  -- Radicals
  SELECT id INTO r_tanah FROM items WHERE type = 'radical' AND character = '一' LIMIT 1;
  SELECT id INTO r_tongkat FROM items WHERE type = 'radical' AND character = '丨' LIMIT 1;
  SELECT id INTO r_besar FROM items WHERE type = 'radical' AND character = '大' LIMIT 1;
  SELECT id INTO r_titik FROM items WHERE type = 'radical' AND character = '丶' LIMIT 1;
  SELECT id INTO r_mulut FROM items WHERE type = 'radical' AND character = '口' LIMIT 1;
  SELECT id INTO r_sepuluh_rad FROM items WHERE type = 'radical' AND character = '十' LIMIT 1;
  SELECT id INTO r_orang_rad FROM items WHERE type = 'radical' AND character = '人' LIMIT 1;
  SELECT id INTO r_kekuatan_rad FROM items WHERE type = 'radical' AND character = '力' LIMIT 1;
  SELECT id INTO r_seluncur FROM items WHERE type = 'radical' AND character = '丿' LIMIT 1;
  SELECT id INTO r_katana_rad FROM items WHERE type = 'radical' AND character = '刀' LIMIT 1;
  SELECT id INTO r_yumi_rad FROM items WHERE type = 'radical' AND character = '弓' LIMIT 1;
  SELECT id INTO r_ko_rad2 FROM items WHERE type = 'radical' AND character = '子' LIMIT 1;
  SELECT id INTO r_ushi_rad FROM items WHERE type = 'radical' AND character = '牛' LIMIT 1;
  SELECT id INTO r_tsuchi_rad FROM items WHERE type = 'radical' AND character = '土' LIMIT 1;
  SELECT id INTO r_hi_rad FROM items WHERE type = 'radical' AND character = '火' LIMIT 1;
  SELECT id INTO r_jo_rad FROM items WHERE type = 'radical' AND character = '女' LIMIT 1;
  SELECT id INTO r_tsuki_rad FROM items WHERE type = 'radical' AND character = '月' LIMIT 1;
  SELECT id INTO r_sho_rad FROM items WHERE type = 'radical' AND character = '小' LIMIT 1;
  SELECT id INTO r_tatsu_rad FROM items WHERE type = 'radical' AND character = '立' LIMIT 1;
  SELECT id INTO r_tome_rad FROM items WHERE type = 'radical' AND character = '止' LIMIT 1;
  SELECT id INTO r_chou_rad FROM items WHERE type = 'radical' AND character = '丁' LIMIT 1;
  SELECT id INTO r_mizu_rad FROM items WHERE type = 'radical' AND character = '水' LIMIT 1;
  SELECT id INTO r_shiro_rad FROM items WHERE type = 'radical' AND character = '白' LIMIT 1;
  SELECT id INTO r_bun_rad FROM items WHERE type = 'radical' AND character = '文' LIMIT 1;
  SELECT id INTO r_atama_rad FROM items WHERE type = 'radical' AND character = '冂' LIMIT 1;
  SELECT id INTO r_dua_rad FROM items WHERE type = 'radical' AND character = '二' LIMIT 1;
  SELECT id INTO r_yube FROM items WHERE type = 'radical' AND character = '夕' LIMIT 1;

  -- Kanjis
  SELECT id INTO k_satu FROM items WHERE type = 'kanji' AND character = '一' LIMIT 1;
  SELECT id INTO k_dua FROM items WHERE type = 'kanji' AND character = '二' LIMIT 1;
  SELECT id INTO k_tiga FROM items WHERE type = 'kanji' AND character = '三' LIMIT 1;
  SELECT id INTO k_sepuluh FROM items WHERE type = 'kanji' AND character = '十' LIMIT 1;
  SELECT id INTO k_besar FROM items WHERE type = 'kanji' AND character = '大' LIMIT 1;
  SELECT id INTO k_atas FROM items WHERE type = 'kanji' AND character = '上' LIMIT 1;
  SELECT id INTO k_bawah FROM items WHERE type = 'kanji' AND character = '下' LIMIT 1;
  SELECT id INTO k_orang FROM items WHERE type = 'kanji' AND character = '人' LIMIT 1;
  SELECT id INTO k_mulut FROM items WHERE type = 'kanji' AND character = '口' LIMIT 1;
  SELECT id INTO k_masuk FROM items WHERE type = 'kanji' AND character = '入' LIMIT 1;
  SELECT id INTO k_wanita FROM items WHERE type = 'kanji' AND character = '女' LIMIT 1;
  SELECT id INTO k_tsuchi FROM items WHERE type = 'kanji' AND character = '土' LIMIT 1;
  SELECT id INTO k_ko FROM items WHERE type = 'kanji' AND character = '子' LIMIT 1;
  SELECT id INTO k_go FROM items WHERE type = 'kanji' AND character = '五' LIMIT 1;
  SELECT id INTO k_shi FROM items WHERE type = 'kanji' AND character = '四' LIMIT 1;
  SELECT id INTO k_te FROM items WHERE type = 'kanji' AND character = '手' LIMIT 1;
  SELECT id INTO k_getsu FROM items WHERE type = 'kanji' AND character = '月' LIMIT 1;
  SELECT id INTO k_ta FROM items WHERE type = 'kanji' AND character = '田' LIMIT 1;
  SELECT id INTO k_roku FROM items WHERE type = 'kanji' AND character = '六' LIMIT 1;
  SELECT id INTO k_sho_small FROM items WHERE type = 'kanji' AND character = '小' LIMIT 1;
  SELECT id INTO k_ritsu FROM items WHERE type = 'kanji' AND character = '立' LIMIT 1;
  SELECT id INTO k_chou FROM items WHERE type = 'kanji' AND character = '丁' LIMIT 1;
  SELECT id INTO k_nichi FROM items WHERE type = 'kanji' AND character = '日' LIMIT 1;
  SELECT id INTO k_tou FROM items WHERE type = 'kanji' AND character = '刀' LIMIT 1;
  SELECT id INTO k_sui FROM items WHERE type = 'kanji' AND character = '水' LIMIT 1;
  SELECT id INTO k_shiro_k FROM items WHERE type = 'kanji' AND character = '白' LIMIT 1;
  SELECT id INTO k_bun_k FROM items WHERE type = 'kanji' AND character = '文' LIMIT 1;
  SELECT id INTO k_chu FROM items WHERE type = 'kanji' AND character = '中' LIMIT 1;
  SELECT id INTO k_gunung FROM items WHERE type = 'kanji' AND character = '山' LIMIT 1;
  SELECT id INTO k_tama FROM items WHERE type = 'kanji' AND character = '玉' LIMIT 1;
  SELECT id INTO k_shutsu FROM items WHERE type = 'kanji' AND character = '出' LIMIT 1;


  -- ============================================================
  -- 1. RADICAL (Level 3)
  -- ============================================================
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '矢', 'arrow', 3, 1, 'Bentuk panah tajam dengan anak panah meluncur.') RETURNING id INTO r_ya;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '明', 'bright', 3, 2, 'Terdiri dari matahari (日) dan bulan (月) yang memancarkan cahaya terang.') RETURNING id INTO r_mei;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '广', 'canopy', 3, 3, 'Bentuk atap pelindung/kanopi di sisi dinding.') RETURNING id INTO r_kanopi;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '方', 'direction', 3, 4, 'Seseorang membawa bendera menunjukkan arah jalan.') RETURNING id INTO r_hou;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '戸', 'door', 3, 5, 'Pintu geser kayu satu sisi bergaya Jepang kuno.') RETURNING id INTO r_to;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '干', 'dry', 3, 6, 'Pakaian dijemur kering di atas jemuran kayu.') RETURNING id INTO r_kan;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '太', 'fat', 3, 7, 'Orang besar dengan bintik lemak berlebih di bawah selangkangan — Gemuk.') RETURNING id INTO r_tai_rad;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '父', 'father', 3, 8, 'Dua goresan menyilang seperti kumis seorang ayah.') RETURNING id INTO r_chichi_rad;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '扌', 'fingers', 3, 9, 'Bentuk jari-jari tangan di sebelah kiri kanji.') RETURNING id INTO r_yubi;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '毛', 'fur', 3, 10, 'Bulu-bulu halus hewan yang meliuk lembut.') RETURNING id INTO r_ke;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '𠆢', 'hat', 3, 11, 'Bentuk topi pelindung kepala yang lancip ke atas.') RETURNING id INTO r_boshi;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '心', 'heart', 3, 12, 'Organ jantung manusia atau lambang cinta hati.') RETURNING id INTO r_shin_rad;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '冫', 'ice', 3, 13, 'Dua tetes air yang membeku menjadi es dingin.') RETURNING id INTO r_koori;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '生', 'life', 3, 14, 'Tunas tanaman bertunas menyembul dari tanah melambangkan kehidupan.') RETURNING id INTO r_sei_rad;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '北', 'north', 3, 15, 'Dua orang duduk membelakangi satu sama lain mencari kehangatan di arah Utara.') RETURNING id INTO r_kita_rad;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '今', 'now', 3, 16, 'Topi di atas bangku, menyimbolkan kondisi saat ini.') RETURNING id INTO r_ima_rad;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '古', 'old', 3, 17, 'Mulut sepuluh generasi menceritakan kisah lama yang kuno.') RETURNING id INTO r_ko_rad;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '幺', 'poop', 3, 18, 'Bentuk meliuk-liuk kecil seperti kotoran.') RETURNING id INTO r_kotoran;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '宀', 'roof', 3, 19, 'Sebuah atap bangunan dengan tiang cerobong di atas.') RETURNING id INTO r_yane;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '匕', 'spoon', 3, 20, 'Sebuah sendok makan kecil untuk menyuap.') RETURNING id INTO r_saji;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '石', 'stone', 3, 21, 'Tebing batu dengan batu besar jatuh di bawahnya.') RETURNING id INTO r_ishi;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '又', 'stool', 3, 22, 'Sebuah kursi lipat kecil tanpa sandaran.') RETURNING id INTO r_mata_rad;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '用', 'task', 3, 23, 'Sebuah papan daftar tugas untuk diselesaikan.') RETURNING id INTO r_you_rad;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '巾', 'towel', 3, 24, 'Sehelai handuk tergantung di gantungan jemuran.') RETURNING id INTO r_haba;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '⺌', 'triceratops', 3, 25, 'Tiga tanduk dinosaurus triceratops menonjol.') RETURNING id INTO r_tiga_tanduk;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '毋', 'window', 3, 26, 'Sebuah bingkai jendela kaca kayu terbagi dua.') RETURNING id INTO r_mado;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '夂', 'winter', 3, 27, 'Dua orang berjalan hati-hati di atas es bersalju saat musim dingin.') RETURNING id INTO r_fuyu_rad;

  -- Radical meanings
  INSERT INTO item_meanings (item_id, meaning, primary_meaning) VALUES (r_ya, 'Panah', true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning) VALUES (r_mei, 'Terang', true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning) VALUES (r_kanopi, 'Kanopi', true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning) VALUES (r_hou, 'Arah', true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning) VALUES (r_to, 'Pintu', true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning) VALUES (r_kan, 'Kering', true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning) VALUES (r_tai_rad, 'Gemuk', true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning) VALUES (r_chichi_rad, 'Ayah', true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning) VALUES (r_yubi, 'Jari', true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning) VALUES (r_ke, 'Bulu', true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning) VALUES (r_boshi, 'Topi', true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning) VALUES (r_shin_rad, 'Hati', true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning) VALUES (r_koori, 'Es', true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning) VALUES (r_sei_rad, 'Hidup', true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning) VALUES (r_kita_rad, 'Utara', true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning) VALUES (r_ima_rad, 'Sekarang', true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning) VALUES (r_ko_rad, 'Kuno', true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning) VALUES (r_kotoran, 'Kotoran', true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning) VALUES (r_yane, 'Atap', true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning) VALUES (r_saji, 'Sendok', true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning) VALUES (r_ishi, 'Batu', true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning) VALUES (r_mata_rad, 'Bangku', true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning) VALUES (r_you_rad, 'Tugas', true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning) VALUES (r_haba, 'Handuk', true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning) VALUES (r_tiga_tanduk, 'Triceratops', true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning) VALUES (r_mado, 'Jendela', true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning) VALUES (r_fuyu_rad, 'Musim Dingin', true);


  -- ============================================================
  -- 2. KANJI (Level 3)
  -- ============================================================
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '矢', 'arrow', 3, 28,
      'Goresan melambangkan sebuah anak panah tajam berkepala runcing yang siap dilepaskan.',
      'Suara lesatan panah terdengar kencang seperti teriakan **や** (YA) yang bergema.')
    RETURNING id INTO k_ya;

  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '明', 'bright', 3, 29,
      'Perpaduan matahari (日) dan bulan (月) menyatu memancarkan cahaya benderang — sangat TERANG.',
      '**あ** (A)ku terpana menatap cahaya terang mentari pagi.')
    RETURNING id INTO k_mei;

  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '市', 'city', 3, 30,
      'Topi di atas handuk membentuk simbol perbatasan dan pusat administrasi sebuah KOTA.',
      'Kota suci yang dipenuhi bangunan megah dan patung dewa **し** (SHI).')
    RETURNING id INTO k_shi_town;

  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '牛', 'cow', 3, 31,
      'Bentuk sketsa tanduk dan kepala seekor SAPI.',
      'Susu sapi murni **ぎゅう** (GYŪ) sangat baik untuk kesehatan.')
    RETURNING id INTO k_ushi_k;

  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '切', 'cut', 3, 32,
      'Tujuh (七) bilah pedang (刀) digunakan untuk MEMOTONG kertas dan kain.',
      'Pemotongan kain dilakukan di dalam pabrik **せつ** (SETSU).')
    RETURNING id INTO k_setsu;

  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '方', 'direction', 3, 33,
      'Seseorang berdiri tegak membawa tiang bendera untuk menunjukkan ARAH kiblat.',
      'Di manakah arah jalan pulang ke **ほう** (HŌ)mu?')
    RETURNING id INTO k_hou;

  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '戸', 'door', 3, 34,
      'Goresan yang melukiskan panel daun PINTU kayu geser khas Jepang.',
      '**と** (TO)long ketuk pintu sebelum masuk.')
    RETURNING id INTO k_to;

  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '太', 'fat', 3, 35,
      'Orang besar (大) yang memiliki bintik lemak berlebih di bawahnya melambangkan badan GEMUK.',
      'Anak GEMUK itu memiliki pipi bulat **ふと** (FUTO) yang menggemaskan.')
    RETURNING id INTO k_tai;

  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '父', 'father', 3, 36,
      'Dua garis melengkung menyilang melambangkan kumis wibawa seorang AYAH.',
      '**ちち** (CHICHI) tersenyum ramah menyambut kepulangan anaknya.')
    RETURNING id INTO k_chichi;

  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '少', 'few', 3, 37,
      'Benda kecil (小) yang digores meluncur miring menunjukkan jumlah yang SEDIKIT.',
      'Pemimpin perang **しょう** (SHÃ–)gun hanya memiliki sedikit sisa pasukan pengawal.')
    RETURNING id INTO k_sho_few;

  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '友', 'friend', 3, 38,
      'Dua tangan saling menggenggam erat dan merangkul bahu — melambangkan jalinan TEMAN karib.',
      'TEMAN sejatiku bernama **ゆう** (YŪ) yang selalu setia membantu.')
    RETURNING id INTO k_yuu;

  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '毛', 'fur', 3, 39,
      'Goresan menyerupai bulu-bulu halus hewan yang meliuk lembut — BULU/RAMBUT halus.',
      'Bulu halus kucing persia itu sangat lebat bagaikan selimut **もう** (MŌ)nster.')
    RETURNING id INTO k_mou;

  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '半', 'half', 3, 40,
      'Dua garis silang membagi tiga garis horizontal tepat di tengah — SETENGAH bagian.',
      'Pesta meriah itu terpaksa selesai **はん** (HAN) setengah jam lebih awal.')
    RETURNING id INTO k_han;

  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '心', 'heart', 3, 41,
      'Sketsa anatomi bilik JANTUNG atau pusat emosi HATI manusia.',
      'Detak jantung yang sehat berdenyut secara **しん** (SHIN)kron.')
    RETURNING id INTO k_shin;

  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '内', 'inside', 3, 42,
      'Seseorang (人) yang melangkah masuk ke dalam batas gerbang (冂) — berada di DALAM.',
      'Di dalam tas belanja itu **ない** (NAI) ada sekotak susu cokelat.')
    RETURNING id INTO k_nai;

  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '字', 'letter', 3, 43,
      'Anak kecil (子) yang duduk belajar di bawah atap rumah (宀) sedang menulis aksara HURUF.',
      'Belajar menulis huruf kanji bersama paman **じ** (JI)mmy.')
    RETURNING id INTO k_ji;

  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '生', 'life', 3, 44,
      'Tunas hijau yang tumbuh mekar dari permukaan tanah menggambarkan kehidupan — HIDUP.',
      'Kehidupan yang damai terwujud melalui ibadah yang **せい** (SEI)mbang.')
    RETURNING id INTO k_sei;

  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '台', 'machine', 3, 45,
      'Mulut (口) di atas tiang kayu bangku menggambarkan dudukan atau dudukan MESIN.',
      'Mesin cetak koran canggih itu bermerek **だい** (DAI)mon.')
    RETURNING id INTO k_dai;

  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '母', 'mother', 3, 46,
      'Sosok wanita (女) dengan tambahan dua titik melambangkan kelenjar susu keibuan — IBU.',
      '**はは** (HAHA) tertawa gembira mendengar lelucon jenaka bersama IBU.')
    RETURNING id INTO k_haha;

  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '午', 'noon', 3, 47,
      'Goresan silang kayu penanda jam matahari menunjuk ke arah TENGAH HARI / SIANG.',
      'Siang hari adalah waktu makan pisang bagi **ご** (GO)rila sirkus.')
    RETURNING id INTO k_go_noon;

  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '北', 'north', 3, 48,
      'Dua orang duduk berhimpitan saling membelakangi mencari kehangatan di wilayah dingin UTARA.',
      'Arah UTARA ditunjukkan dengan kompas milik **きた** (KITA).')
    RETURNING id INTO k_kita;

  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '今', 'now', 3, 49,
      'Goresan melambangkan penutup topi di atas bangku kecil — menyimbolkan kejadian SEKARANG.',
      '**こん** (KON)disi cuaca sekarang sedang hujan gerimis.')
    RETURNING id INTO k_kon;

  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '古', 'old', 3, 50,
      'Sepuluh (十) mulut (口) generasi turun temurun menceritakan dongeng kuno — KUNO/TUA.',
      'Buku KUNO peninggalan kakek ditaruh di dalam **こ** (KO)tak kayu.')
    RETURNING id INTO k_ko_old;

  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '外', 'outside', 3, 51,
      'Sore hari (夕) dengan tongkat penunjuk arah ke LUAR rumah — BAGIAN LUAR.',
      'Di bagian luar gerbang kuil **がい** (GAI) ada penjual takoyaki.')
    RETURNING id INTO k_gai;

  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '分', 'part', 3, 52,
      'Pedang tajam (刀) memotong delapan bagian buah (八) menjadi BAGIAN.',
      'Setiap bagian bunga mawar **ぶん** (BUN)ga menebarkan keharuman.')
    RETURNING id INTO k_bun;

  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '引', 'pull', 3, 53,
      'Busur panah (弓) dipasang tali lurus (丨) untuk ditarik — MENARIK.',
      'Aksi menarik tambang berlangsung **ひ** (HI)ngga malam.')
    RETURNING id INTO k_hi_pull;

  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '止', 'stop', 3, 54,
      'Goresan kaki kokoh berpijak di atas tanah — BERHENTI melangkah.',
      '**し** (SHI)lakan berhenti sejenak di tepi jalan untuk istirahat.')
    RETURNING id INTO k_shi_stop;

  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '用', 'task', 3, 55,
      'Sebuah papan tulis berisi coretan daftar tugas penting — TUGAS/KEGUNAAN.',
      'Tugas mencuci motor dilakukan oleh kakak **よう** (YŌ)gi.')
    RETURNING id INTO k_you;

  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '万', 'ten thousand', 3, 56,
      'Goresan menyilang yang menyimbolkan kelipatan angka besar — SEPULUH RIBU.',
      'Uang sepuluh ribu yen dibelikan komik **まん** (MAN)ga.')
    RETURNING id INTO k_man;

  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '広', 'wide', 3, 57,
      'Sebuah kanopi (广) luas yang melindungi lahan lapang di bawahnya — LUAS.',
      'Halaman rumah kakek **ひろ** (HIRO)i terbentang luas.')
    RETURNING id INTO k_hiro;

  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '冬', 'winter', 3, 58,
      'Butiran salju membeku menjadi es (冫) di bawah kanopi musim — MUSIM DINGIN.',
      'Saat musim dingin tiba, kita memakai **ふゆ** (FUYU) tebal.')
    RETURNING id INTO k_fuyu;

  -- Kanji meanings
  INSERT INTO item_meanings (item_id, meaning, primary_meaning) VALUES (k_ya, 'Panah', true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning) VALUES (k_mei, 'Terang', true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning) VALUES (k_shi_town, 'Kota', true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning) VALUES (k_ushi_k, 'Sapi', true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning) VALUES (k_setsu, 'Potong', true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning) VALUES (k_hou, 'Arah', true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning) VALUES (k_to, 'Pintu', true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning) VALUES (k_tai, 'Gemuk', true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning) VALUES (k_chichi, 'Ayah', true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning) VALUES (k_sho_few, 'Sedikit', true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning) VALUES (k_sho_few, 'Kecil', false);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning) VALUES (k_yuu, 'Teman', true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning) VALUES (k_mou, 'Bulu', true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning) VALUES (k_mou, 'Rambut', false);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning) VALUES (k_han, 'Setengah', true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning) VALUES (k_shin, 'Hati', true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning) VALUES (k_shin, 'Pikiran', false);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning) VALUES (k_nai, 'Dalam', true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning) VALUES (k_ji, 'Huruf', true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning) VALUES (k_ji, 'Karakter', false);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning) VALUES (k_sei, 'Hidup', true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning) VALUES (k_sei, 'Lahir', false);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning) VALUES (k_dai, 'Mesin', true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning) VALUES (k_dai, 'Penghitung', false);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning) VALUES (k_haha, 'Ibu', true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning) VALUES (k_go_noon, 'Siang', true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning) VALUES (k_kita, 'Utara', true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning) VALUES (k_kon, 'Sekarang', true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning) VALUES (k_ko_old, 'Kuno', true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning) VALUES (k_gai, 'Luar', true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning) VALUES (k_bun, 'Bagian', true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning) VALUES (k_bun, 'Menit', false);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning) VALUES (k_hi_pull, 'Tarik', true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning) VALUES (k_shi_stop, 'Berhenti', true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning) VALUES (k_you, 'Tugas', true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning) VALUES (k_man, 'Sepuluh Ribu', true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning) VALUES (k_hiro, 'Luas', true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning) VALUES (k_fuyu, 'Musim Dingin', true);

  -- Kanji readings
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading) VALUES (k_ya, 'や', 'kunyomi', true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading) VALUES (k_mei, 'あ', 'kunyomi', true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading) VALUES (k_mei, 'めい', 'onyomi', false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading) VALUES (k_shi_town, 'し', 'onyomi', true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading) VALUES (k_ushi_k, 'ぎゅう', 'onyomi', true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading) VALUES (k_setsu, 'せつ', 'onyomi', true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading) VALUES (k_setsu, 'き', 'kunyomi', false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading) VALUES (k_hou, 'ほう', 'onyomi', true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading) VALUES (k_to, 'と', 'kunyomi', true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading) VALUES (k_tai, 'ふと', 'kunyomi', true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading) VALUES (k_chichi, 'ちち', 'kunyomi', true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading) VALUES (k_sho_few, 'しょう', 'onyomi', true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading) VALUES (k_sho_few, 'すこ', 'kunyomi', false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading) VALUES (k_yuu, 'ゆう', 'onyomi', true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading) VALUES (k_yuu, 'とも', 'kunyomi', false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading) VALUES (k_mou, 'もう', 'onyomi', true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading) VALUES (k_mou, 'け', 'kunyomi', false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading) VALUES (k_han, 'はん', 'onyomi', true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading) VALUES (k_shin, 'しん', 'onyomi', true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading) VALUES (k_shin, 'こころ', 'kunyomi', false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading) VALUES (k_nai, 'ない', 'onyomi', true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading) VALUES (k_nai, 'うち', 'kunyomi', false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading) VALUES (k_ji, 'じ', 'onyomi', true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading) VALUES (k_sei, 'せい', 'onyomi', true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading) VALUES (k_sei, 'しょう', 'onyomi', false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading) VALUES (k_sei, 'う', 'kunyomi', false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading) VALUES (k_dai, 'だい', 'onyomi', true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading) VALUES (k_haha, 'はは', 'kunyomi', true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading) VALUES (k_go_noon, 'ご', 'onyomi', true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading) VALUES (k_kita, 'きた', 'kunyomi', true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading) VALUES (k_kon, 'こん', 'onyomi', true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading) VALUES (k_kon, 'いま', 'kunyomi', false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading) VALUES (k_ko_old, 'こ', 'onyomi', true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading) VALUES (k_ko_old, 'ふる', 'kunyomi', false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading) VALUES (k_gai, 'がい', 'onyomi', true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading) VALUES (k_gai, 'そと', 'kunyomi', false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading) VALUES (k_bun, 'ぶん', 'onyomi', true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading) VALUES (k_bun, 'ぷん', 'onyomi', false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading) VALUES (k_hi_pull, 'ひ', 'kunyomi', true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading) VALUES (k_shi_stop, 'し', 'onyomi', true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading) VALUES (k_shi_stop, 'と', 'kunyomi', false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading) VALUES (k_you, 'よう', 'onyomi', true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading) VALUES (k_man, 'まん', 'onyomi', true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading) VALUES (k_man, 'ばん', 'onyomi', false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading) VALUES (k_hiro, 'ひろ', 'kunyomi', true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading) VALUES (k_fuyu, 'ふゆ', 'kunyomi', true);


  -- ============================================================
  -- 3. VOCABULARY (Level 3)
  -- ============================================================
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, description)
    VALUES ('vocabulary', '少し', 'a-little', 3, 59, 'Kanji SEDIKIT (少) dengan akhiran hiragana し membentuk keterangan sedikit.', 'Kata keterangan yang menyatakan jumlah sedikit.') RETURNING id INTO v_sukoshi;

  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, description)
    VALUES ('vocabulary', 'アメリカ人', 'american-person', 3, 60, 'Kombinasi kata Amerika (katakana) dengan kanji ORANG (人) — Orang Amerika.', 'Kata benda kewarganegaraan.') RETURNING id INTO v_amerikajin;

  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, description)
    VALUES ('vocabulary', 'リンゴ', 'apple', 3, 61, 'Buah apel manis yang ditulis dalam huruf katakana.', 'Kata benda umum untuk buah apel.') RETURNING id INTO v_ringo;

  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, description)
    VALUES ('vocabulary', '矢', 'arrow', 3, 62, 'Kanji ANAK PANAH (矢) dibaca secara mandiri.', 'Kata benda umum untuk anak panah.') RETURNING id INTO v_ya;

  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, description)
    VALUES ('vocabulary', '〜台', 'big-machine-counter', 3, 63, 'Sufiks penghitung untuk mesin besar seperti mobil, komputer, dll.', 'Kata bantu bilangan.') RETURNING id INTO v_counter_id;

  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, description)
    VALUES ('vocabulary', 'イギリス人', 'british-person', 3, 64, 'Kombinasi kata Inggris dengan kanji ORANG (人) — Orang Inggris.', 'Kata benda kewarganegaraan.') RETURNING id INTO v_igirisujin;

  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, description)
    VALUES ('vocabulary', '中止', 'cancellation', 3, 65, 'Membawa tugas ke TENGAH (中) dan langsung BERHENTI (止) — Pembatalan.', 'Kata benda untuk pembatalan acara atau jadwal.') RETURNING id INTO v_chuushi;

  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, description)
    VALUES ('vocabulary', '字', 'character', 3, 66, 'Kanji HURUF (字) dibaca secara mandiri.', 'Kata benda untuk huruf, karakter, atau aksara.') RETURNING id INTO v_ji;

  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, description)
    VALUES ('vocabulary', '市', 'city', 3, 67, 'Kanji KOTA (市) dibaca secara mandiri.', 'Kata benda untuk kota.') RETURNING id INTO v_shi;

  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, description)
    VALUES ('vocabulary', 'コーヒー', 'coffee', 3, 68, 'Minuman kopi hitam beraroma wangi yang ditulis dengan katakana.', 'Kata benda umum.') RETURNING id INTO v_kohi;

  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, description)
    VALUES ('vocabulary', '牛', 'cow', 3, 69, 'Kanji SAPI (牛) dibaca mandiri.', 'Kata benda umum untuk hewan sapi.') RETURNING id INTO v_ushi;

  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, description)
    VALUES ('vocabulary', '方', 'direction', 3, 70, 'Kanji ARAH (方) dibaca secara mandiri.', 'Kata benda untuk arah, metode, atau sisi pihak.') RETURNING id INTO v_hou;

  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, description)
    VALUES ('vocabulary', '戸', 'door', 3, 71, 'Kanji PINTU (戸) dibaca secara mandiri.', 'Kata benda untuk pintu kayu geser.') RETURNING id INTO v_to;

  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, description)
    VALUES ('vocabulary', '戸口', 'doorway', 3, 72, 'Kombinasi PINTU (戸) dan MULUT (口) — Pintu masuk atau pintu luar.', 'Kata benda pintu masuk.') RETURNING id INTO v_toguchi;

  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, description)
    VALUES ('vocabulary', '生ビール', 'draft-beer', 3, 73, 'Kombinasi SEGAR/HIDUP (生) dan Beer (katakana) — Bir draf segar.', 'Kata benda minuman.') RETURNING id INTO v_namabiiru;

  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, description)
    VALUES ('vocabulary', '山びこ', 'echo', 3, 74, 'Suara teriakan di GUNUNG (山) yang memantul kembali — Gema.', 'Gema di daerah pegunungan.') RETURNING id INTO v_yamabiko;

  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, description)
    VALUES ('vocabulary', '太い', 'fat', 3, 75, 'Kanji GEMUK (太) dengan akhiran い menjadi kata sifat gemuk/tebal.', 'Kata sifat yang berarti tebal atau gemuk.') RETURNING id INTO v_futoi;

  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, description)
    VALUES ('vocabulary', 'お父さん', 'father-polite', 3, 76, 'Bentuk panggilan sopan untuk AYAH (父) dengan awalan お dan akhiran さん.', 'Panggilan sopan "Ayah".') RETURNING id INTO v_otousan;

  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, description)
    VALUES ('vocabulary', '父', 'father', 3, 77, 'Kanji AYAH (父) dibaca mandiri untuk menyebut ayah sendiri.', 'Kata benda untuk ayah sendiri.') RETURNING id INTO v_chichi;

  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, description)
    VALUES ('vocabulary', '少ない', 'few', 3, 78, 'Kanji SEDIKIT (少) dengan akhiran ない menjadi kata sifat sedikit.', 'Kata sifat yang menyatakan jumlah sedikit.') RETURNING id INTO v_sukunai;

  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, description)
    VALUES ('vocabulary', '五台', 'five-machines', 3, 79, 'Kombinasi LIMA (五) dan MESIN (台) — Lima unit mesin/mobil.', 'Kata bantu bilangan.') RETURNING id INTO v_godai;

  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, description)
    VALUES ('vocabulary', '外人', 'foreigner', 3, 80, 'Kombinasi LUAR (外) dan ORANG (人) — Orang luar negeri/asing.', 'Kata benda untuk orang asing.') RETURNING id INTO v_gaijin;

  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, description)
    VALUES ('vocabulary', 'フランス人', 'french-person', 3, 81, 'Kombinasi kata Prancis dengan kanji ORANG (人) — Orang Prancis.', 'Kata benda kewarganegaraan.') RETURNING id INTO v_furansujin;

  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, description)
    VALUES ('vocabulary', '生', 'fresh', 3, 82, 'Kanji HIDUP/SEGAR (生) dibaca secara mandiri.', 'Bisa berarti mentah, segar, atau hidup.') RETURNING id INTO v_nama;

  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, description)
    VALUES ('vocabulary', '友人', 'friend', 3, 83, 'Kombinasi TEMAN (友) dan ORANG (人) — Teman karib.', 'Kata benda formal untuk sahabat.') RETURNING id INTO v_yuujin;

  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, description)
    VALUES ('vocabulary', '毛', 'fur', 3, 84, 'Kanji BULU (毛) dibaca secara mandiri.', 'Kata benda untuk bulu halus hewan atau rambut.') RETURNING id INTO v_ke;

  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, description)
    VALUES ('vocabulary', '少女', 'girl', 3, 85, 'Kombinasi SEDIKIT/MUDA (少) dan WANITA (女) — Anak gadis remaja.', 'Kata benda untuk gadis remaja.') RETURNING id INTO v_shoujo;

  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, description)
    VALUES ('vocabulary', '半分', 'half', 3, 86, 'Kombinasi SETENGAH (半) dan BAGIAN (分) — Setengah bagian.', 'Kata benda setengah bagian.') RETURNING id INTO v_hanbun;

  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, description)
    VALUES ('vocabulary', '半', 'half-noun', 3, 87, 'Kanji SETENGAH (半) dibaca secara mandiri.', 'Kata benda untuk setengah (terutama untuk jam, misal: 1:30).') RETURNING id INTO v_han;

  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, description)
    VALUES ('vocabulary', '心', 'heart', 3, 88, 'Kanji JANTUNG/HATI (心) dibaca secara mandiri.', 'Kata benda jantung fisik atau lubuk hati.') RETURNING id INTO v_kokoro;

  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, description)
    VALUES ('vocabulary', 'こんにちは', 'hello', 3, 89, 'Sapaan hangat di siang hari untuk mengucapkan halo/selamat siang.', 'Ungkapan salam.') RETURNING id INTO v_konnichiha;

  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, description)
    VALUES ('vocabulary', '大切', 'important', 3, 90, 'Sesuatu yang jika diPOTONG (切) akan berdampak BESAR (大) — Sangat penting.', 'Kata sifat na-adjective.') RETURNING id INTO v_taisetsu;

  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, description)
    VALUES ('vocabulary', '内', 'inside', 3, 91, 'Kanji BAGIAN DALAM (内) dibaca secara mandiri.', 'Kata benda posisi bagian dalam.') RETURNING id INTO v_uchi;

  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, description)
    VALUES ('vocabulary', '明かり', 'light', 3, 92, 'Cahaya TERANG (明) yang terpancar menyinari kegelapan.', 'Kata benda untuk sinar cahaya atau lampu penerangan.') RETURNING id INTO v_akari;

  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, description)
    VALUES ('vocabulary', 'ビー玉', 'marble', 3, 93, 'Kelereng kaca bulat bening bagaikan bola permata (玉).', 'Kelereng mainan anak-anak.') RETURNING id INTO v_biidama;

  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, description)
    VALUES ('vocabulary', '母', 'mother', 3, 94, 'Kanji IBU (母) dibaca mandiri untuk menyebut ibu kandung sendiri.', 'Kata benda untuk ibu kandung sendiri.') RETURNING id INTO v_haha;

  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, description)
    VALUES ('vocabulary', 'お母さん', 'mother-polite', 3, 95, 'Bentuk panggilan sopan untuk IBU (母) dengan awalan お dan akhiran さん.', 'Panggilan sopan "Ibu".') RETURNING id INTO v_okaasan;

  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, description)
    VALUES ('vocabulary', '市立', 'municipal', 3, 96, 'Sesuatu yang didirikan (立) secara resmi oleh KOTA (市) — Milik kotamadya.', 'Milik pemerintah kota.') RETURNING id INTO v_shiritsu;

  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, description)
    VALUES ('vocabulary', '北', 'north', 3, 97, 'Kanji UTARA (北) dibaca secara mandiri.', 'Arah mata angin utara.') RETURNING id INTO v_kita;

  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, description)
    VALUES ('vocabulary', '北口', 'north-exit', 3, 98, 'Kombinasi UTARA (北) dan pintu/MULUT (口) — Pintu gerbang sebelah utara.', 'Kata benda.') RETURNING id INTO v_kitaguchi;

  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, description)
    VALUES ('vocabulary', '今', 'now', 3, 99, 'Kanji SEKARANG (今) dibaca secara mandiri.', 'Kata benda keterangan waktu sekarang.') RETURNING id INTO v_ima;

  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, description)
    VALUES ('vocabulary', '〜人', 'people-counter', 3, 100, 'Sufiks angka khusus untuk menghitung jumlah manusia/orang.', 'Kata bantu bilangan.') RETURNING id INTO v_nin_counter;

  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, description)
    VALUES ('vocabulary', '大人しい', 'obedient', 3, 101, 'Sikap anak yang bertingkah tenang dan sopan layaknya ORANG DEWASA (大人).', 'Kata sifat yang berarti penurut, tenang, atau pendiam.') RETURNING id INTO v_otonashii;

  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, description)
    VALUES ('vocabulary', '古い', 'old', 3, 102, 'Kanji KUNO/TUA (古) dengan akhiran い membentuk kata sifat lama/tua.', 'Kata sifat yang berarti tua atau kuno.') RETURNING id INTO v_furui;

  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, description)
    VALUES ('vocabulary', '十万', 'one-hundred-thousand', 3, 103, 'Kombinasi SEPULUH (十) kali SEPULUH RIBU (万) membentuk seratus ribu.', 'Bilangan angka 100.000.') RETURNING id INTO v_juuman;

  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, description)
    VALUES ('vocabulary', '一台', 'one-machine', 3, 104, 'Kombinasi SATU (一) dan MESIN (台) — Satu unit kendaraan atau mesin.', 'Satu unit mesin.') RETURNING id INTO v_ichidai;

  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, description)
    VALUES ('vocabulary', '人生', 'life-career', 3, 105, 'Perjalanan HIDUP (生) seorang MANUSIA (人) — Kehidupan manusia.', 'Kehidupan atau jalan hidup seseorang.') RETURNING id INTO v_jinsei;

  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, description)
    VALUES ('vocabulary', 'テーブルの上', 'on-the-table', 3, 106, 'Ungkapan untuk menyatakan letak posisi tepat di atas permukaan meja.', 'Di atas meja.') RETURNING id INTO v_table_ue;

  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, description)
    VALUES ('vocabulary', '外', 'outside', 3, 107, 'Kanji BAGIAN LUAR (外) dibaca secara mandiri.', 'Di luar rumah.') RETURNING id INTO v_soto;

  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, description)
    VALUES ('vocabulary', '分', 'part-noun', 3, 108, 'Kanji BAGIAN (分) dibaca secara mandiri.', 'Bagian, menit, atau porsi.') RETURNING id INTO v_bun;

  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, description)
    VALUES ('vocabulary', 'シアトル市', 'seattle-city', 3, 109, 'Kombinasi kata kota Seattle dengan kanji KOTA (市) — Kota Seattle.', 'Kota Seattle.') RETURNING id INTO v_seatorushi;

  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, description)
    VALUES ('vocabulary', '中古', 'secondhand', 3, 110, 'Barang yang berada di TENGAH (中) masa pemakaian KUNO (古) — Barang bekas.', 'Kata benda barang bekas / secondhand.') RETURNING id INTO v_chuuko;

  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, description)
    VALUES ('vocabulary', '日の出', 'sunrise', 3, 111, 'MATAHARI (日) yang merangkak KELUAR (出) dari ufuk timur — Matahari terbit.', 'Kata benda matahari terbit.') RETURNING id INTO v_hinode;

  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, description)
    VALUES ('vocabulary', '用', 'task-noun', 3, 112, 'Kanji TUGAS (用) dibaca secara mandiri.', 'Tugas, bisnis, keperluan, atau urusan.') RETURNING id INTO v_you;

  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, description)
    VALUES ('vocabulary', '十台', 'ten-machines', 3, 113, 'Kombinasi SEPULUH (十) unit MESIN (台) — Sepuluh unit mobil.', 'Sepuluh unit.') RETURNING id INTO v_juudai;

  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, description)
    VALUES ('vocabulary', '一万', 'ten-thousand-number', 3, 114, 'Kombinasi SATU (一) dan SEPULUH RIBU (万) — Angka sepuluh ribu.', 'Angka 10.000.') RETURNING id INTO v_ichiman;

  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, description)
    VALUES ('vocabulary', '万', 'ten-thousand-noun', 3, 115, 'Kanji SEPULUH RIBU (万) dibaca secara mandiri.', 'Sepuluh ribu.') RETURNING id INTO v_man;

  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, description)
    VALUES ('vocabulary', '今月', 'this-month', 3, 116, 'BULAN (月) yang sedang berjalan SEKARANG (今) — Bulan ini.', 'Keterangan waktu bulan ini.') RETURNING id INTO v_kongetsu;

  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, description)
    VALUES ('vocabulary', 'これ', 'this-one', 3, 117, 'Kata tunjuk untuk merujuk objek benda yang dekat dengan pembicara.', 'Kata ganti benda "ini".') RETURNING id INTO v_kore;

  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, description)
    VALUES ('vocabulary', '生まれる', 'to-be-born', 3, 118, 'Kata kerja dari kanji HIDUP/LAHIR (生) — Lahir ke dunia.', 'Kata kerja intransitif.') RETURNING id INTO v_umareleru;

  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, description)
    VALUES ('vocabulary', '切る', 'to-cut', 3, 119, 'Kata kerja dari kanji MEMOTONG (切) — Aksi memotong kertas atau daging.', 'Kata kerja transitif.') RETURNING id INTO v_kiru;

  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, description)
    VALUES ('vocabulary', '今日', 'today', 3, 120, 'HARI (日) yang sedang berjalan SEKARANG (今) — Hari ini.', 'Keterangan waktu hari ini.') RETURNING id INTO v_kyou;

  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, description)
    VALUES ('vocabulary', 'する', 'to-do', 3, 121, 'Kata kerja serbaguna yang berarti melakukan aksi atau aktivitas.', 'Kata kerja transitif/intransitif.') RETURNING id INTO v_suru;

  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, description)
    VALUES ('vocabulary', '引く', 'to-pull', 3, 122, 'Kata kerja dari kanji MENARIK (引) — Menarik tali atau garis.', 'Kata kerja transitif.') RETURNING id INTO v_hiku;

  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, description)
    VALUES ('vocabulary', '広げる', 'to-spread', 3, 123, 'Kata kerja transitif untuk membentangkan atau memperluas sesuatu.', 'Kata kerja transitif.') RETURNING id INTO v_hirogeru;

  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, description)
    VALUES ('vocabulary', '止める', 'to-stop', 3, 124, 'Kata kerja transitif untuk menghentikan suatu gerakan atau aktivitas.', 'Kata kerja transitif.') RETURNING id INTO v_tomeru;

  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, description)
    VALUES ('vocabulary', '用いる', 'to-utilize', 3, 125, 'Kata kerja transitif untuk mempergunakan atau memanfaatkan sesuatu.', 'Kata kerja transitif.') RETURNING id INTO v_mochiiyu;

  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, description)
    VALUES ('vocabulary', '二万', 'twenty-thousand', 3, 126, 'Kombinasi DUA (二) kali SEPULUH RIBU (万) — Dua puluh ribu.', 'Angka 20.000.') RETURNING id INTO v_niman;

  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, description)
    VALUES ('vocabulary', '二台', 'two-machines', 3, 127, 'Kombinasi DUA (二) unit MESIN (台) — Dua unit mobil.', 'Dua unit.') RETURNING id INTO v_nidai;

  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, description)
    VALUES ('vocabulary', 'ベッドの下', 'under-the-bed', 3, 128, 'Ungkapan untuk menyatakan letak posisi tepat di bawah tempat tidur.', 'Di bawah tempat tidur.') RETURNING id INTO v_bed_shita;

  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, description)
    VALUES ('vocabulary', 'いつ', 'when', 3, 129, 'Kata tanya keterangan waktu untuk menanyakan "kapan".', 'Kata tanya kapan.') RETURNING id INTO v_itsu;

  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, description)
    VALUES ('vocabulary', '広い', 'wide', 3, 130, 'Kanji LUAS (広) dengan akhiran い membentuk kata sifat luas.', 'Kata sifat yang berarti luas.') RETURNING id INTO v_hiroi;

  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, description)
    VALUES ('vocabulary', '冬', 'winter-noun', 3, 131, 'Kanji MUSIM DINGIN (冬) dibaca secara mandiri.', 'Kata benda musim dingin.') RETURNING id INTO v_fuyu;

  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, description)
    VALUES ('vocabulary', '女の人', 'woman', 3, 132, 'Kombinasi WANITA (女) dan ORANG (人) — Sosok wanita/perempuan.', 'Kata benda wanita dewasa.') RETURNING id INTO v_onnanohito;


  -- Vocabulary meanings
  INSERT INTO item_meanings (item_id, meaning, primary_meaning) VALUES (v_sukoshi, 'Sedikit', true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning) VALUES (v_amerikajin, 'Orang Amerika', true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning) VALUES (v_amerikajin, 'Amerika', false);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning) VALUES (v_ringo, 'Apel', true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning) VALUES (v_ya, 'Panah', true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning) VALUES (v_counter_id, 'Alat Penghitung Mesin', true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning) VALUES (v_igirisujin, 'Orang Inggris', true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning) VALUES (v_igirisujin, 'Inggris', false);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning) VALUES (v_chuushi, 'Batal', true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning) VALUES (v_chuushi, 'Penundaan', false);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning) VALUES (v_ji, 'Huruf', true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning) VALUES (v_ji, 'Karakter', false);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning) VALUES (v_shi, 'Kota', true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning) VALUES (v_kohi, 'Kopi', true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning) VALUES (v_ushi, 'Sapi', true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning) VALUES (v_hou, 'Arah', true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning) VALUES (v_hou, 'Cara', false);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning) VALUES (v_to, 'Pintu', true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning) VALUES (v_toguchi, 'Pintu Masuk', true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning) VALUES (v_namabiiru, 'Bir Draft', true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning) VALUES (v_namabiiru, 'Bir Segar', false);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning) VALUES (v_yamabiko, 'Gema', true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning) VALUES (v_futoi, 'Gemuk', true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning) VALUES (v_futoi, 'Tebal', false);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning) VALUES (v_otousan, 'Ayah', true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning) VALUES (v_chichi, 'Ayah', true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning) VALUES (v_sukunai, 'Sedikit', true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning) VALUES (v_sukunai, 'Langka', false);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning) VALUES (v_godai, 'Lima Mesin', true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning) VALUES (v_gaijin, 'Orang Asing', true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning) VALUES (v_furansujin, 'Orang Prancis', true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning) VALUES (v_furansujin, 'Pria Prancis', false);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning) VALUES (v_nama, 'Segar', true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning) VALUES (v_nama, 'Mentah', false);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning) VALUES (v_yuujin, 'Teman', true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning) VALUES (v_ke, 'Bulu', true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning) VALUES (v_ke, 'Rambut', false);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning) VALUES (v_shoujo, 'Gadis Remaja', true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning) VALUES (v_shoujo, 'Nona Muda', false);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning) VALUES (v_hanbun, 'Setengah', true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning) VALUES (v_han, 'Setengah', true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning) VALUES (v_kokoro, 'Hati', true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning) VALUES (v_kokoro, 'Pikiran', false);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning) VALUES (v_konnichiha, 'Halo', true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning) VALUES (v_konnichiha, 'Selamat Siang', false);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning) VALUES (v_taisetsu, 'Penting', true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning) VALUES (v_taisetsu, 'Berharga', false);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning) VALUES (v_uchi, 'Dalam', true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning) VALUES (v_akari, 'Cahaya', true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning) VALUES (v_akari, 'Lampu', false);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning) VALUES (v_biidama, 'Kelereng', true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning) VALUES (v_haha, 'Ibu', true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning) VALUES (v_okaasan, 'Ibu', true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning) VALUES (v_shiritsu, 'Milik Kota', true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning) VALUES (v_shiritsu, 'Kotamadya', false);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning) VALUES (v_kita, 'Utara', true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning) VALUES (v_kitaguchi, 'Pintu Utara', true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning) VALUES (v_ima, 'Sekarang', true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning) VALUES (v_nin_counter, 'Orang', true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning) VALUES (v_otonashii, 'Penurut', true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning) VALUES (v_otonashii, 'Pendiam', false);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning) VALUES (v_furui, 'Tua', true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning) VALUES (v_juuman, 'Seratus Ribu', true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning) VALUES (v_ichidai, 'Satu Mesin', true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning) VALUES (v_jinsei, 'Kehidupan', true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning) VALUES (v_jinsei, 'Kehidupan Manusia', false);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning) VALUES (v_table_ue, 'Di Atas Meja', true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning) VALUES (v_soto, 'Luar', true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning) VALUES (v_bun, 'Bagian', true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning) VALUES (v_bun, 'Menit', false);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning) VALUES (v_seatorushi, 'Seattle', true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning) VALUES (v_chuuko, 'Barang Bekas', true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning) VALUES (v_chuuko, 'Bekas', false);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning) VALUES (v_hinode, 'Matahari Terbit', true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning) VALUES (v_you, 'Tugas', true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning) VALUES (v_you, 'Keperluan', false);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning) VALUES (v_juudai, 'Sepuluh Mesin', true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning) VALUES (v_ichiman, 'Sepuluh Ribu', true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning) VALUES (v_man, 'Sepuluh Ribu', true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning) VALUES (v_kongetsu, 'Bulan Ini', true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning) VALUES (v_kore, 'Ini', true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning) VALUES (v_kore, 'Benda Ini', false);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning) VALUES (v_umareleru, 'Lahir', true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning) VALUES (v_kiru, 'Memotong', true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning) VALUES (v_kyou, 'Hari Ini', true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning) VALUES (v_suru, 'Melakukan', true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning) VALUES (v_hiku, 'Menarik', true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning) VALUES (v_hiku, 'Mengurangi', false);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning) VALUES (v_hirogeru, 'Membentangkan', true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning) VALUES (v_hirogeru, 'Memperluas', false);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning) VALUES (v_tomeru, 'Menghentikan', true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning) VALUES (v_tomeru, 'Mematikan', false);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning) VALUES (v_mochiiyu, 'Menggunakan', true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning) VALUES (v_mochiiyu, 'Memanfaatkan', false);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning) VALUES (v_niman, 'Dua Puluh Ribu', true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning) VALUES (v_nidai, 'Dua Mesin', true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning) VALUES (v_bed_shita, 'Di Bawah Tempat Tidur', true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning) VALUES (v_itsu, 'Kapan', true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning) VALUES (v_hiroi, 'Luas', true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning) VALUES (v_hiroi, 'Lapang', false);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning) VALUES (v_fuyu, 'Musim Dingin', true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning) VALUES (v_onnanohito, 'Wanita', true);

  -- Vocabulary readings
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading) VALUES (v_sukoshi, 'すこし', NULL, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading) VALUES (v_amerikajin, 'あめりかじん', NULL, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading) VALUES (v_ringo, 'リンゴ', NULL, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading) VALUES (v_ya, 'や', NULL, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading) VALUES (v_counter_id, 'だい', NULL, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading) VALUES (v_igirisujin, 'いぎりすじん', NULL, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading) VALUES (v_chuushi, 'ちゅうし', NULL, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading) VALUES (v_ji, 'じ', NULL, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading) VALUES (v_shi, 'し', NULL, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading) VALUES (v_kohi, 'コーヒー', NULL, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading) VALUES (v_ushi, 'うし', NULL, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading) VALUES (v_hou, 'ほう', NULL, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading) VALUES (v_to, 'と', NULL, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading) VALUES (v_toguchi, 'とぐち', NULL, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading) VALUES (v_namabiiru, 'なまびーる', NULL, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading) VALUES (v_yamabiko, 'やまびこ', NULL, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading) VALUES (v_futoi, 'ふとい', NULL, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading) VALUES (v_otousan, 'おとうさん', NULL, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading) VALUES (v_chichi, 'ちち', NULL, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading) VALUES (v_sukunai, 'すくない', NULL, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading) VALUES (v_godai, 'ごだい', NULL, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading) VALUES (v_gaijin, 'がいじん', NULL, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading) VALUES (v_furansujin, 'ふらんすじん', NULL, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading) VALUES (v_nama, 'なま', NULL, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading) VALUES (v_yuujin, 'ゆうじん', NULL, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading) VALUES (v_ke, 'け', NULL, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading) VALUES (v_shoujo, 'しょうじょ', NULL, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading) VALUES (v_hanbun, 'はんぶん', NULL, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading) VALUES (v_han, 'はん', NULL, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading) VALUES (v_kokoro, 'こころ', NULL, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading) VALUES (v_konnichiha, 'こんにちは', NULL, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading) VALUES (v_taisetsu, 'たいせつ', NULL, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading) VALUES (v_uchi, 'うち', NULL, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading) VALUES (v_akari, 'あかり', NULL, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading) VALUES (v_biidama, 'びーだま', NULL, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading) VALUES (v_haha, 'はは', NULL, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading) VALUES (v_okaasan, 'おかあさん', NULL, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading) VALUES (v_shiritsu, 'しりつ', NULL, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading) VALUES (v_kita, 'きた', NULL, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading) VALUES (v_kitaguchi, 'きたぐち', NULL, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading) VALUES (v_ima, 'いま', NULL, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading) VALUES (v_nin_counter, 'にん', NULL, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading) VALUES (v_otonashii, 'おとなしい', NULL, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading) VALUES (v_furui, 'ふるい', NULL, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading) VALUES (v_juuman, 'じゅうまん', NULL, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading) VALUES (v_ichidai, 'いちだい', NULL, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading) VALUES (v_jinsei, 'じんせい', NULL, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading) VALUES (v_table_ue, 'てーぶるのうえ', NULL, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading) VALUES (v_soto, 'そと', NULL, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading) VALUES (v_bun, 'ぶん', NULL, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading) VALUES (v_seatorushi, 'しあとるし', NULL, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading) VALUES (v_chuuko, 'ちゅうこ', NULL, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading) VALUES (v_hinode, 'ひので', NULL, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading) VALUES (v_you, 'よう', NULL, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading) VALUES (v_juudai, 'じゅうだい', NULL, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading) VALUES (v_ichiman, 'いちまん', NULL, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading) VALUES (v_man, 'まん', NULL, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading) VALUES (v_kongetsu, 'こんげつ', NULL, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading) VALUES (v_kore, 'これ', NULL, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading) VALUES (v_umareleru, 'うまれる', NULL, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading) VALUES (v_kiru, 'きる', NULL, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading) VALUES (v_kyou, 'きょう', NULL, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading) VALUES (v_suru, 'する', NULL, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading) VALUES (v_hiku, 'ひく', NULL, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading) VALUES (v_hirogeru, 'ひろげる', NULL, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading) VALUES (v_tomeru, 'とめる', NULL, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading) VALUES (v_mochiiyu, 'もちいる', NULL, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading) VALUES (v_niman, 'にまん', NULL, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading) VALUES (v_nidai, 'にだい', NULL, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading) VALUES (v_bed_shita, 'べっどのした', NULL, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading) VALUES (v_itsu, 'いつ', NULL, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading) VALUES (v_hiroi, 'ひろい', NULL, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading) VALUES (v_fuyu, 'ふゆ', NULL, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading) VALUES (v_onnanohito, 'おんなのひと', NULL, true);

  -- Context sentences
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_sukoshi, '少し疲れました。', 'Saya agak sedikit lelah.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_amerikajin, '彼は親切なアメリカ人です。', 'Dia adalah orang Amerika yang ramah.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_ringo, 'リンゴを食べます。', 'Saya memakan buah apel.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_ya, '矢が的に当たりました。', 'Anak panah mengenai sasaran.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_chuushi, '試合は雨で中止になりました。', 'Pertandingan dibatalkan karena hujan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_kohi, 'コーヒーを一杯ください。', 'Tolong berikan secangkir kopi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_ushi, '牛が牧草地でのんびりしています。', 'Sapi sedang bersantai di padang rumput.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_toguchi, '戸口に誰か立っています。', 'Ada seseorang berdiri di pintu masuk.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_namabiiru, '仕事の後に生ビールを飲みます。', 'Saya minum bir draf segar setelah pulang kerja.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_otousan, 'あなたのお父さんはお元気ですか？', 'Bagaimanakah kabar Ayah Anda?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_chichi, '私の父は会社員です。', 'Ayah saya adalah seorang karyawan kantor.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_gaijin, '街でたくさんの外人に会いました。', 'Saya bertemu banyak orang asing di kota.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_shoujo, '少女はピアノの練習をしています。', 'Gadis remaja itu sedang berlatih piano.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_kokoro, '心の底から感謝しています。', 'Saya berterima kasih dari lubuk hati terdalam.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_konnichiha, '皆さん、こんにちは。', 'Halo semuanya, selamat siang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_taisetsu, '家族は私にとって最も大切です。', 'Keluarga adalah yang terpenting bagi saya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_akari, '部屋の明かりを消してください。', 'Tolong matikan lampu kamarnya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_okaasan, 'お母さん、お誕生日おめでとう！', 'Selamat hari ulang tahun, Ibu!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_kita, '北海道は日本の北にあります。', 'Hokkaido terletak di sebelah utara Jepang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_ima, '私は今、宿題をしています。', 'Saya sekarang sedang mengerjakan pekerjaan rumah.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_furui, 'これはとても古いお寺です。', 'Ini adalah kuil buddha yang sangat tua.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_jinsei, '人生は一度きりです。', 'Kehidupan ini hanya terjadi sekali.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_soto, '外はとても寒いです。', 'Di luar sangatlah dingin.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_kyou, '今日は良い天気ですね。', 'Hari ini cuacanya sangat bagus ya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_kiru, '紙をハサミで切ります。', 'Saya memotong kertas menggunakan gunting.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_hiku, '辞書を引いて意味を調べます。', 'Saya menarik/membuka kamus untuk memeriksa maknanya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_tomeru, 'ここでタクシーを止めてください。', 'Tolong hentikan taksi di sini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_hiroi, 'この公園はとても広いです。', 'Taman ini sangatlah luas.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_fuyu, '日本の冬は雪がたくさん降ります。', 'Musim dingin di Jepang menurunkan banyak salju.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_onnanohito, 'あそこにいる女の人は誰ですか？', 'Siapakah wanita yang berada di sebelah sana?');


  -- ============================================================
  -- 4. PREREQUISITES (Kanji membutuhkan Radical)
  -- ============================================================
  INSERT INTO item_prerequisites VALUES (k_ya, r_ya);
  INSERT INTO item_prerequisites VALUES (k_mei, r_mei);
  INSERT INTO item_prerequisites VALUES (k_shi_town, r_boshi);
  INSERT INTO item_prerequisites VALUES (k_shi_town, r_haba);
  INSERT INTO item_prerequisites VALUES (k_ushi_k, r_ushi_rad);
  INSERT INTO item_prerequisites VALUES (k_setsu, r_katana_rad);
  INSERT INTO item_prerequisites VALUES (k_hou, r_hou);
  INSERT INTO item_prerequisites VALUES (k_to, r_to);
  INSERT INTO item_prerequisites VALUES (k_tai, r_besar);
  INSERT INTO item_prerequisites VALUES (k_tai, r_titik);
  INSERT INTO item_prerequisites VALUES (k_chichi, r_chichi_rad);
  INSERT INTO item_prerequisites VALUES (k_sho_few, r_sho_rad);
  INSERT INTO item_prerequisites VALUES (k_sho_few, r_seluncur);
  INSERT INTO item_prerequisites VALUES (k_yuu, r_mata_rad);
  INSERT INTO item_prerequisites VALUES (k_mou, r_ke);
  INSERT INTO item_prerequisites VALUES (k_han, r_boshi);
  INSERT INTO item_prerequisites VALUES (k_han, r_dua_rad);
  INSERT INTO item_prerequisites VALUES (k_shin, r_shin_rad);
  INSERT INTO item_prerequisites VALUES (k_nai, r_atama_rad);
  INSERT INTO item_prerequisites VALUES (k_nai, r_orang_rad);
  INSERT INTO item_prerequisites VALUES (k_ji, k_ko);
  INSERT INTO item_prerequisites VALUES (k_ji, r_yane);
  INSERT INTO item_prerequisites VALUES (k_sei, r_sei_rad);
  INSERT INTO item_prerequisites VALUES (k_dai, r_mulut);
  INSERT INTO item_prerequisites VALUES (k_haha, r_jo_rad);
  INSERT INTO item_prerequisites VALUES (k_go_noon, r_ushi_rad);
  INSERT INTO item_prerequisites VALUES (k_kita, r_kita_rad);
  INSERT INTO item_prerequisites VALUES (k_kon, r_boshi);
  INSERT INTO item_prerequisites VALUES (k_kon, r_mata_rad);
  INSERT INTO item_prerequisites VALUES (k_ko_old, k_sepuluh);
  INSERT INTO item_prerequisites VALUES (k_ko_old, r_mulut);
  INSERT INTO item_prerequisites VALUES (k_gai, r_yube);
  INSERT INTO item_prerequisites VALUES (k_gai, r_saji);
  INSERT INTO item_prerequisites VALUES (k_bun, r_katana_rad);
  INSERT INTO item_prerequisites VALUES (k_hi_pull, r_yumi_rad);
  INSERT INTO item_prerequisites VALUES (k_hi_pull, r_tongkat);
  INSERT INTO item_prerequisites VALUES (k_shi_stop, r_tome_rad);
  INSERT INTO item_prerequisites VALUES (k_you, r_you_rad);
  INSERT INTO item_prerequisites VALUES (k_man, r_tanah);
  INSERT INTO item_prerequisites VALUES (k_hiro, r_kanopi);
  INSERT INTO item_prerequisites VALUES (k_fuyu, r_fuyu_rad);
  INSERT INTO item_prerequisites VALUES (k_fuyu, r_koori);


  -- ============================================================
  -- 5. PREREQUISITES (Vocabulary membutuhkan Kanji)
  -- ============================================================
  INSERT INTO item_prerequisites VALUES (v_sukoshi, k_sho_few);
  INSERT INTO item_prerequisites VALUES (v_amerikajin, k_orang);
  INSERT INTO item_prerequisites VALUES (v_ya, k_ya);
  INSERT INTO item_prerequisites VALUES (v_counter_id, k_dai);
  INSERT INTO item_prerequisites VALUES (v_igirisujin, k_orang);
  INSERT INTO item_prerequisites VALUES (v_chuushi, k_chu);
  INSERT INTO item_prerequisites VALUES (v_chuushi, k_shi_stop);
  INSERT INTO item_prerequisites VALUES (v_ji, k_ji);
  INSERT INTO item_prerequisites VALUES (v_shi, k_shi_town);
  INSERT INTO item_prerequisites VALUES (v_ushi, k_ushi_k);
  INSERT INTO item_prerequisites VALUES (v_hou, k_hou);
  INSERT INTO item_prerequisites VALUES (v_to, k_to);
  INSERT INTO item_prerequisites VALUES (v_toguchi, k_to);
  INSERT INTO item_prerequisites VALUES (v_toguchi, k_mulut);
  INSERT INTO item_prerequisites VALUES (v_namabiiru, k_sei);
  INSERT INTO item_prerequisites VALUES (v_yamabiko, k_gunung);
  INSERT INTO item_prerequisites VALUES (v_futoi, k_tai);
  INSERT INTO item_prerequisites VALUES (v_otousan, k_chichi);
  INSERT INTO item_prerequisites VALUES (v_chichi, k_chichi);
  INSERT INTO item_prerequisites VALUES (v_sukunai, k_sho_few);
  INSERT INTO item_prerequisites VALUES (v_godai, k_go);
  INSERT INTO item_prerequisites VALUES (v_godai, k_dai);
  INSERT INTO item_prerequisites VALUES (v_gaijin, k_gai);
  INSERT INTO item_prerequisites VALUES (v_gaijin, k_orang);
  INSERT INTO item_prerequisites VALUES (v_furansujin, k_orang);
  INSERT INTO item_prerequisites VALUES (v_nama, k_sei);
  INSERT INTO item_prerequisites VALUES (v_yuujin, k_yuu);
  INSERT INTO item_prerequisites VALUES (v_yuujin, k_orang);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading) VALUES (v_ke, 'け', NULL, true);
  INSERT INTO item_prerequisites VALUES (v_ke, k_mou);
  INSERT INTO item_prerequisites VALUES (v_shoujo, k_sho_few);
  INSERT INTO item_prerequisites VALUES (v_shoujo, k_wanita);
  INSERT INTO item_prerequisites VALUES (v_hanbun, k_han);
  INSERT INTO item_prerequisites VALUES (v_hanbun, k_bun);
  INSERT INTO item_prerequisites VALUES (v_han, k_han);
  INSERT INTO item_prerequisites VALUES (v_kokoro, k_shin);
  INSERT INTO item_prerequisites VALUES (v_taisetsu, k_besar);
  INSERT INTO item_prerequisites VALUES (v_taisetsu, k_setsu);
  INSERT INTO item_prerequisites VALUES (v_uchi, k_nai);
  INSERT INTO item_prerequisites VALUES (v_akari, k_mei);
  INSERT INTO item_prerequisites VALUES (v_biidama, k_tama);
  INSERT INTO item_prerequisites VALUES (v_haha, k_haha);
  INSERT INTO item_prerequisites VALUES (v_okaasan, k_haha);
  INSERT INTO item_prerequisites VALUES (v_shiritsu, k_shi_town);
  INSERT INTO item_prerequisites VALUES (v_shiritsu, k_ritsu);
  INSERT INTO item_prerequisites VALUES (v_kita, k_kita);
  INSERT INTO item_prerequisites VALUES (v_kitaguchi, k_kita);
  INSERT INTO item_prerequisites VALUES (v_kitaguchi, k_mulut);
  INSERT INTO item_prerequisites VALUES (v_ima, k_kon);
  INSERT INTO item_prerequisites VALUES (v_nin_counter, k_orang);
  INSERT INTO item_prerequisites VALUES (v_otonashii, k_besar);
  INSERT INTO item_prerequisites VALUES (v_otonashii, k_orang);
  INSERT INTO item_prerequisites VALUES (v_furui, k_ko_old);
  INSERT INTO item_prerequisites VALUES (v_juuman, k_sepuluh);
  INSERT INTO item_prerequisites VALUES (v_juuman, k_man);
  INSERT INTO item_prerequisites VALUES (v_ichidai, k_satu);
  INSERT INTO item_prerequisites VALUES (v_ichidai, k_dai);
  INSERT INTO item_prerequisites VALUES (v_jinsei, k_orang);
  INSERT INTO item_prerequisites VALUES (v_jinsei, k_sei);
  INSERT INTO item_prerequisites VALUES (v_table_ue, k_atas);
  INSERT INTO item_prerequisites VALUES (v_soto, k_gai);
  INSERT INTO item_prerequisites VALUES (v_bun, k_bun);
  INSERT INTO item_prerequisites VALUES (v_seatorushi, k_shi_town);
  INSERT INTO item_prerequisites VALUES (v_chuuko, k_chu);
  INSERT INTO item_prerequisites VALUES (v_chuuko, k_ko_old);
  INSERT INTO item_prerequisites VALUES (v_hinode, k_nichi);
  INSERT INTO item_prerequisites VALUES (v_hinode, k_shutsu);
  INSERT INTO item_prerequisites VALUES (v_you, k_you);
  INSERT INTO item_prerequisites VALUES (v_juudai, k_sepuluh);
  INSERT INTO item_prerequisites VALUES (v_juudai, k_dai);
  INSERT INTO item_prerequisites VALUES (v_ichiman, k_satu);
  INSERT INTO item_prerequisites VALUES (v_ichiman, k_man);
  INSERT INTO item_prerequisites VALUES (v_man, k_man);
  INSERT INTO item_prerequisites VALUES (v_kongetsu, k_kon);
  INSERT INTO item_prerequisites VALUES (v_kongetsu, k_getsu);
  INSERT INTO item_prerequisites VALUES (v_umareleru, k_sei);
  INSERT INTO item_prerequisites VALUES (v_kiru, k_setsu);
  INSERT INTO item_prerequisites VALUES (v_kyou, k_kon);
  INSERT INTO item_prerequisites VALUES (v_kyou, k_nichi);
  INSERT INTO item_prerequisites VALUES (v_hiku, k_hi_pull);
  INSERT INTO item_prerequisites VALUES (v_hirogeru, k_hiro);
  INSERT INTO item_prerequisites VALUES (v_tomeru, k_shi_stop);
  INSERT INTO item_prerequisites VALUES (v_mochiiyu, k_you);
  INSERT INTO item_prerequisites VALUES (v_niman, k_dua);
  INSERT INTO item_prerequisites VALUES (v_niman, k_man);
  INSERT INTO item_prerequisites VALUES (v_nidai, k_dua);
  INSERT INTO item_prerequisites VALUES (v_nidai, k_dai);
  INSERT INTO item_prerequisites VALUES (v_bed_shita, k_bawah);
  INSERT INTO item_prerequisites VALUES (v_hiroi, k_hiro);
  INSERT INTO item_prerequisites VALUES (v_fuyu, k_fuyu);
  INSERT INTO item_prerequisites VALUES (v_onnanohito, k_wanita);
  INSERT INTO item_prerequisites VALUES (v_onnanohito, k_orang);

END $$;
