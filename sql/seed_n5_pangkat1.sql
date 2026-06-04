-- ============================================================
-- KaniGani Seed Data: N5 - Pangkat 1 (Kanji & Radikal)
-- Berdasarkan Example Spreadsheet User
-- ============================================================

DO $$
DECLARE
  -- Radicals
  r_1 UUID; r_2 UUID; r_3 UUID; r_4 UUID; r_5 UUID; r_6 UUID; r_7 UUID; r_8 UUID; r_9 UUID; r_10 UUID;
  r_11 UUID; r_12 UUID; r_13 UUID; r_14 UUID; r_15 UUID; r_16 UUID; r_17 UUID; r_18 UUID; r_19 UUID; r_20 UUID;
  r_21 UUID; r_22 UUID; r_23 UUID; r_24 UUID; r_25 UUID; r_26 UUID; r_27 UUID; r_28 UUID; r_29 UUID;

  -- Kanjis
  k_1 UUID; k_2 UUID; k_3 UUID; k_4 UUID; k_5 UUID; k_6 UUID; k_7 UUID; k_8 UUID; k_9 UUID; k_10 UUID;
  k_11 UUID; k_12 UUID; k_13 UUID; k_14 UUID; k_15 UUID; k_16 UUID; k_17 UUID; k_18 UUID; k_19 UUID; k_20 UUID;
  k_21 UUID; k_22 UUID; k_23 UUID; k_24 UUID; k_25 UUID; k_26 UUID; k_27 UUID; k_28 UUID; k_29 UUID; k_30 UUID;

  -- Rank N5 Pangkat 1
  v_rank_id UUID := 'a1b2c3d4-e5f6-7a8b-9c0d-1e2f3a4b5c6d';
BEGIN
  -- 1. Hapus data seed items lama jika ada agar tidak duplikat
  -- Kita lakukan di script base_schema.sql jika drop/reset total.
  
  -- 2. Insert Radicals
  INSERT INTO public.items (type, character, slug, level, rank_id) VALUES ('radical', '一', 'tanah', 1, v_rank_id) RETURNING id INTO r_1;
  INSERT INTO public.items (type, character, slug, level, rank_id) VALUES ('radical', '人', 'orang', 1, v_rank_id) RETURNING id INTO r_2;
  INSERT INTO public.items (type, character, slug, level, rank_id) VALUES ('radical', '入', 'masuk', 1, v_rank_id) RETURNING id INTO r_3;
  INSERT INTO public.items (type, character, slug, level, rank_id) VALUES ('radical', '二', 'dua', 1, v_rank_id) RETURNING id INTO r_4;
  INSERT INTO public.items (type, character, slug, level, rank_id) VALUES ('radical', '十', 'salib', 1, v_rank_id) RETURNING id INTO r_5;
  INSERT INTO public.items (type, character, slug, level, rank_id) VALUES ('radical', '八', 'sirip', 1, v_rank_id) RETURNING id INTO r_6;
  INSERT INTO public.items (type, character, slug, level, rank_id) VALUES ('radical', '七', 'tujuh', 1, v_rank_id) RETURNING id INTO r_7;
  INSERT INTO public.items (type, character, slug, level, rank_id) VALUES ('radical', '九', 'sembilan', 1, v_rank_id) RETURNING id INTO r_8;
  INSERT INTO public.items (type, character, slug, level, rank_id) VALUES ('radical', '大', 'besar', 1, v_rank_id) RETURNING id INTO r_9;
  INSERT INTO public.items (type, character, slug, level, rank_id) VALUES ('radical', '子', 'anak', 1, v_rank_id) RETURNING id INTO r_10;
  INSERT INTO public.items (type, character, slug, level, rank_id) VALUES ('radical', '卜', 'jempol kaki', 1, v_rank_id) RETURNING id INTO r_11;
  INSERT INTO public.items (type, character, slug, level, rank_id) VALUES ('radical', '女', 'wanita', 1, v_rank_id) RETURNING id INTO r_12;
  INSERT INTO public.items (type, character, slug, level, rank_id) VALUES ('radical', '小', 'kecil', 1, v_rank_id) RETURNING id INTO r_13;
  INSERT INTO public.items (type, character, slug, level, rank_id) VALUES ('radical', '山', 'gunung', 1, v_rank_id) RETURNING id INTO r_14;
  INSERT INTO public.items (type, character, slug, level, rank_id) VALUES ('radical', '厂', 'daun', 1, v_rank_id) RETURNING id INTO r_15;
  INSERT INTO public.items (type, character, slug, level, rank_id) VALUES ('radical', '刀', 'pedang', 1, v_rank_id) RETURNING id INTO r_16;
  INSERT INTO public.items (type, character, slug, level, rank_id) VALUES ('radical', '川', 'sungai', 1, v_rank_id) RETURNING id INTO r_17;
  INSERT INTO public.items (type, character, slug, level, rank_id) VALUES ('radical', '土', 'tanah', 1, v_rank_id) RETURNING id INTO r_18;
  INSERT INTO public.items (type, character, slug, level, rank_id) VALUES ('radical', '千', 'seribu', 1, v_rank_id) RETURNING id INTO r_19;
  INSERT INTO public.items (type, character, slug, level, rank_id) VALUES ('radical', '日', 'matahari', 1, v_rank_id) RETURNING id INTO r_20;
  INSERT INTO public.items (type, character, slug, level, rank_id) VALUES ('radical', '中', 'tengah', 1, v_rank_id) RETURNING id INTO r_21;
  INSERT INTO public.items (type, character, slug, level, rank_id) VALUES ('radical', '今', 'sekarang', 1, v_rank_id) RETURNING id INTO r_22;
  INSERT INTO public.items (type, character, slug, level, rank_id) VALUES ('radical', '月', 'bulan', 1, v_rank_id) RETURNING id INTO r_23;
  INSERT INTO public.items (type, character, slug, level, rank_id) VALUES ('radical', '水', 'air', 1, v_rank_id) RETURNING id INTO r_24;
  INSERT INTO public.items (type, character, slug, level, rank_id) VALUES ('radical', '木', 'pohon', 1, v_rank_id) RETURNING id INTO r_25;
  INSERT INTO public.items (type, character, slug, level, rank_id) VALUES ('radical', '父', 'ayah', 1, v_rank_id) RETURNING id INTO r_26;
  INSERT INTO public.items (type, character, slug, level, rank_id) VALUES ('radical', 'ナ', 'unicorn', 1, v_rank_id) RETURNING id INTO r_27;
  INSERT INTO public.items (type, character, slug, level, rank_id) VALUES ('radical', '又', 'bangku', 1, v_rank_id) RETURNING id INTO r_28;
  INSERT INTO public.items (type, character, slug, level, rank_id) VALUES ('radical', '天', 'surga', 1, v_rank_id) RETURNING id INTO r_29;

  -- 3. Insert Radical Meanings
  INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES 
    (r_1, 'tanah', true),
    (r_2, 'orang', true),
    (r_3, 'masuk', true),
    (r_4, 'dua', true),
    (r_5, 'salib', true),
    (r_6, 'sirip', true),
    (r_7, 'tujuh', true),
    (r_8, 'sembilan', true),
    (r_9, 'besar', true),
    (r_10, 'anak', true),
    (r_11, 'jempol kaki', true), (r_11, 'jempol', false),
    (r_12, 'wanita', true), (r_12, 'cewek', false),
    (r_13, 'kecil', true),
    (r_14, 'gunung', true),
    (r_15, 'daun', true),
    (r_16, 'pedang', true), (r_16, 'bilah', false),
    (r_17, 'sungai', true),
    (r_18, 'tanah', true),
    (r_19, 'seribu', true),
    (r_20, 'matahari', true), (r_20, 'hari', false),
    (r_21, 'tengah', true),
    (r_22, 'sekarang', true),
    (r_23, 'bulan', true),
    (r_24, 'air', true),
    (r_25, 'pohon', true),
    (r_26, 'ayah', true), (r_26, 'bapak', false),
    (r_27, 'unicorn', true),
    (r_28, 'bangku', true), (r_28, 'kursi', false),
    (r_29, 'surga', true), (r_29, 'langit', false);

  -- 4. Insert Kanjis
  INSERT INTO public.items (type, character, slug, level, rank_id) VALUES ('kanji', '一', 'satu', 1, v_rank_id) RETURNING id INTO k_1;
  INSERT INTO public.items (type, character, slug, level, rank_id) VALUES ('kanji', '人', 'orang', 1, v_rank_id) RETURNING id INTO k_2;
  INSERT INTO public.items (type, character, slug, level, rank_id) VALUES ('kanji', '入', 'masuk', 1, v_rank_id) RETURNING id INTO k_3;
  INSERT INTO public.items (type, character, slug, level, rank_id) VALUES ('kanji', '二', 'dua', 1, v_rank_id) RETURNING id INTO k_4;
  INSERT INTO public.items (type, character, slug, level, rank_id) VALUES ('kanji', '十', 'sepuluh', 1, v_rank_id) RETURNING id INTO k_5;
  INSERT INTO public.items (type, character, slug, level, rank_id) VALUES ('kanji', '八', 'delapan', 1, v_rank_id) RETURNING id INTO k_6;
  INSERT INTO public.items (type, character, slug, level, rank_id) VALUES ('kanji', '七', 'tujuh', 1, v_rank_id) RETURNING id INTO k_7;
  INSERT INTO public.items (type, character, slug, level, rank_id) VALUES ('kanji', '九', 'sembilan', 1, v_rank_id) RETURNING id INTO k_8;
  INSERT INTO public.items (type, character, slug, level, rank_id) VALUES ('kanji', '大', 'besar', 1, v_rank_id) RETURNING id INTO k_9;
  INSERT INTO public.items (type, character, slug, level, rank_id) VALUES ('kanji', '子', 'anak', 1, v_rank_id) RETURNING id INTO k_10;
  INSERT INTO public.items (type, character, slug, level, rank_id) VALUES ('kanji', '上', 'di atas', 1, v_rank_id) RETURNING id INTO k_11;
  INSERT INTO public.items (type, character, slug, level, rank_id) VALUES ('kanji', '女', 'wanita', 1, v_rank_id) RETURNING id INTO k_12;
  INSERT INTO public.items (type, character, slug, level, rank_id) VALUES ('kanji', '下', 'di bawah', 1, v_rank_id) RETURNING id INTO k_13;
  INSERT INTO public.items (type, character, slug, level, rank_id) VALUES ('kanji', '小', 'kecil', 1, v_rank_id) RETURNING id INTO k_14;
  INSERT INTO public.items (type, character, slug, level, rank_id) VALUES ('kanji', '山', 'gunung', 1, v_rank_id) RETURNING id INTO k_15;
  INSERT INTO public.items (type, character, slug, level, rank_id) VALUES ('kanji', '万', 'sepuluh ribu', 1, v_rank_id) RETURNING id INTO k_16;
  INSERT INTO public.items (type, character, slug, level, rank_id) VALUES ('kanji', '川', 'sungai', 1, v_rank_id) RETURNING id INTO k_17;
  INSERT INTO public.items (type, character, slug, level, rank_id) VALUES ('kanji', '三', 'tiga', 1, v_rank_id) RETURNING id INTO k_18;
  INSERT INTO public.items (type, character, slug, level, rank_id) VALUES ('kanji', '土', 'tanah', 1, v_rank_id) RETURNING id INTO k_19;
  INSERT INTO public.items (type, character, slug, level, rank_id) VALUES ('kanji', '千', 'seribu', 1, v_rank_id) RETURNING id INTO k_20;
  INSERT INTO public.items (type, character, slug, level, rank_id) VALUES ('kanji', '分', 'bagian', 1, v_rank_id) RETURNING id INTO k_21;
  INSERT INTO public.items (type, character, slug, level, rank_id) VALUES ('kanji', '日', 'hari', 1, v_rank_id) RETURNING id INTO k_22;
  INSERT INTO public.items (type, character, slug, level, rank_id) VALUES ('kanji', '中', 'tengah', 1, v_rank_id) RETURNING id INTO k_23;
  INSERT INTO public.items (type, character, slug, level, rank_id) VALUES ('kanji', '今', 'sekarang', 1, v_rank_id) RETURNING id INTO k_24;
  INSERT INTO public.items (type, character, slug, level, rank_id) VALUES ('kanji', '月', 'bulan', 1, v_rank_id) RETURNING id INTO k_25;
  INSERT INTO public.items (type, character, slug, level, rank_id) VALUES ('kanji', '水', 'air', 1, v_rank_id) RETURNING id INTO k_26;
  INSERT INTO public.items (type, character, slug, level, rank_id) VALUES ('kanji', '木', 'pohon', 1, v_rank_id) RETURNING id INTO k_27;
  INSERT INTO public.items (type, character, slug, level, rank_id) VALUES ('kanji', '父', 'ayah', 1, v_rank_id) RETURNING id INTO k_28;
  INSERT INTO public.items (type, character, slug, level, rank_id) VALUES ('kanji', '友', 'teman', 1, v_rank_id) RETURNING id INTO k_29;
  INSERT INTO public.items (type, character, slug, level, rank_id) VALUES ('kanji', '天', 'surga', 1, v_rank_id) RETURNING id INTO k_30;

  -- 5. Insert Kanji Meanings
  INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES
    (k_1, 'satu', true),
    (k_2, 'orang', true),
    (k_3, 'masuk', true),
    (k_4, 'dua', true),
    (k_5, 'sepuluh', true),
    (k_6, 'delapan', true),
    (k_7, 'tujuh', true),
    (k_8, 'sembilan', true),
    (k_9, 'besar', true),
    (k_10, 'anak', true),
    (k_11, 'di atas', true),
    (k_12, 'wanita', true),
    (k_13, 'di bawah', true),
    (k_14, 'kecil', true),
    (k_15, 'gunung', true),
    (k_16, 'sepuluh ribu', true),
    (k_17, 'sungai', true),
    (k_18, 'tiga', true),
    (k_19, 'tanah', true),
    (k_20, 'seribu', true),
    (k_21, 'bagian', true),
    (k_22, 'hari', true),
    (k_23, 'tengah', true),
    (k_24, 'sekarang', true),
    (k_25, 'bulan', true),
    (k_26, 'air', true),
    (k_27, 'pohon', true),
    (k_28, 'ayah', true),
    (k_29, 'teman', true),
    (k_30, 'surga', true);

  -- 6. Insert Kanji Readings
  -- Kanji 1: 一 (いち, いつ | ひと)
  INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES (k_1, 'いち', 'onyomi', true);
  INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES (k_1, 'いつ', 'onyomi', false);
  INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES (k_1, 'ひと', 'kunyomi', false);

  -- Kanji 2: 人 (にん, じん | ひと)
  INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES (k_2, 'にん', 'onyomi', true);
  INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES (k_2, 'じん', 'onyomi', false);
  INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES (k_2, 'ひと', 'kunyomi', false);

  -- Kanji 3: 入 (にゅう | はい, い)
  INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES (k_3, 'にゅう', 'onyomi', true);
  INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES (k_3, 'はい', 'kunyomi', false);
  INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES (k_3, 'い', 'kunyomi', false);

  -- Kanji 4: 二 (に | ふた)
  INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES (k_4, 'に', 'onyomi', true);
  INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES (k_4, 'ふta', 'kunyomi', false);

  -- Kanji 5: 十 (じゅう | とお)
  INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES (k_5, 'じゅう', 'onyomi', true);
  INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES (k_5, 'とお', 'kunyomi', false);

  -- Kanji 6: 八 (はち | や, よう)
  INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES (k_6, 'はち', 'onyomi', true);
  INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES (k_6, 'や', 'kunyomi', false);
  INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES (k_6, 'よう', 'kunyomi', false);

  -- Kanji 7: 七 (しち | なな, なの)
  INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES (k_7, 'しち', 'onyomi', true);
  INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES (k_7, 'なな', 'kunyomi', false);
  INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES (k_7, 'なの', 'kunyomi', false);

  -- Kanji 8: 九 (く, きゅう | ここの)
  INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES (k_8, 'きゅう', 'onyomi', true);
  INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES (k_8, 'く', 'onyomi', false);
  INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES (k_8, 'ここの', 'kunyomi', false);

  -- Kanji 9: 大 (たい, だい | おお)
  INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES (k_9, 'だい', 'onyomi', true);
  INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES (k_9, 'たい', 'onyomi', false);
  INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES (k_9, 'おお', 'kunyomi', false);

  -- Kanji 10: 子 (し, す | こ)
  INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES (k_10, 'し', 'onyomi', true);
  INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES (k_10, 'す', 'onyomi', false);
  INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES (k_10, 'こ', 'kunyomi', false);

  -- Kanji 11: 上 (じょう | うえ, あ, のぼ, うわ)
  INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES (k_11, 'じょう', 'onyomi', true);
  INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES (k_11, 'うえ', 'kunyomi', false);
  INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES (k_11, 'あ', 'kunyomi', false);
  INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES (k_11, 'のぼ', 'kunyomi', false);
  INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES (k_11, 'うわ', 'kunyomi', false);

  -- Kanji 12: 女 (じょ | おんな)
  INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES (k_12, 'じょ', 'onyomi', true);
  INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES (k_12, 'おんな', 'kunyomi', false);

  -- Kanji 13: 下 (か, げ | した, さ, くだ, お, し)
  INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES (k_13, 'か', 'onyomi', true);
  INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES (k_13, 'げ', 'onyomi', false);
  INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES (k_13, 'した', 'kunyomi', false);
  INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES (k_13, 'さ', 'kunyomi', false);
  INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES (k_13, 'くだ', 'kunyomi', false);
  INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES (k_13, 'お', 'kunyomi', false);
  INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES (k_13, 'し', 'kunyomi', false);

  -- Kanji 14: 小 (しょう | ちい, こ, お)
  INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES (k_14, 'しょう', 'onyomi', true);
  INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES (k_14, 'ちい', 'kunyomi', false);
  INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES (k_14, 'こ', 'kunyomi', false);
  INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES (k_14, 'お', 'kunyomi', false);

  -- Kanji 15: 山 (さん | やま)
  INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES (k_15, 'さん', 'onyomi', true);
  INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES (k_15, 'やま', 'kunyomi', false);

  -- Kanji 16: 万 (まん, ばん)
  INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES (k_16, 'まん', 'onyomi', true);
  INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES (k_16, 'ばん', 'onyomi', false);

  -- Kanji 17: 川 (せん | かわ)
  INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES (k_17, 'せん', 'onyomi', true);
  INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES (k_17, 'かわ', 'kunyomi', false);

  -- Kanji 18: 三 (さん | み)
  INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES (k_18, 'さん', 'onyomi', true);
  INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES (k_18, 'み', 'kunyomi', false);

  -- Kanji 19: 土 (ど, と | つch)
  INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES (k_19, 'ど', 'onyomi', true);
  INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES (k_19, 'と', 'onyomi', false);
  INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES (k_19, 'つち', 'kunyomi', false);

  -- Kanji 20: 千 (せん | ち)
  INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES (k_20, 'せん', 'onyomi', true);
  INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES (k_20, 'ち', 'kunyomi', false);

  -- Kanji 21: 分 (ぶん, fuん, ぶ | わ)
  INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES (k_21, 'ぶん', 'onyomi', true);
  INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES (k_21, 'ふん', 'onyomi', false);
  INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES (k_21, 'ぶ', 'onyomi', false);
  INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES (k_21, 'わ', 'kunyomi', false);

  -- Kanji 22: 日 (にち, じつ | ひ, か, び)
  INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES (k_22, 'にち', 'onyomi', true);
  INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES (k_22, 'じつ', 'onyomi', false);
  INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES (k_22, 'ひ', 'kunyomi', false);
  INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES (k_22, 'か', 'kunyomi', false);
  INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES (k_22, 'び', 'kunyomi', false);

  -- Kanji 23: 中 (ちゅう | なか)
  INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES (k_23, 'ちゅう', 'onyomi', true);
  INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES (k_23, 'なか', 'kunyomi', false);

  -- Kanji 24: 今 (こん | いま)
  INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES (k_24, 'こん', 'onyomi', true);
  INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES (k_24, 'いま', 'kunyomi', false);

  -- Kanji 25: 月 (げつ, がつ | つき)
  INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES (k_25, 'げつ', 'onyomi', true);
  INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES (k_25, 'がつ', 'onyomi', false);
  INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES (k_25, 'つき', 'kunyomi', false);

  -- Kanji 26: 水 (すい | みず)
  INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES (k_26, 'すい', 'onyomi', true);
  INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES (k_26, 'みず', 'kunyomi', false);

  -- Kanji 27: 木 (もく, ぼく | き, co)
  INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES (k_27, 'もく', 'onyomi', true);
  INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES (k_27, 'ぼく', 'onyomi', false);
  INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES (k_27, 'き', 'kunyomi', false);
  INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES (k_27, 'こ', 'kunyomi', false);

  -- Kanji 28: 父 (ふ | ちち, とう)
  INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES (k_28, 'ふ', 'onyomi', true);
  INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES (k_28, 'ちち', 'kunyomi', false);
  INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES (k_28, 'とう', 'kunyomi', false);

  -- Kanji 29: 友 (ゆう | とom)
  INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES (k_29, 'ゆう', 'onyomi', true);
  INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES (k_29, 'とも', 'kunyomi', false);

  -- Kanji 30: 天 (てん | あま)
  INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES (k_30, 'てん', 'onyomi', true);
  INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES (k_30, 'あま', 'kunyomi', false);

  -- 7. Insert Prerequisites (Kanji requires Radicals)
  -- 1. 一 (1)
  INSERT INTO public.item_prerequisites VALUES (k_1, r_1);
  -- 2. 人 (2)
  INSERT INTO public.item_prerequisites VALUES (k_2, r_2);
  -- 3. 入 (3)
  INSERT INTO public.item_prerequisites VALUES (k_3, r_3);
  -- 4. 二 (4)
  INSERT INTO public.item_prerequisites VALUES (k_4, r_4);
  -- 5. 十 (5)
  INSERT INTO public.item_prerequisites VALUES (k_5, r_5);
  -- 6. 八 (6)
  INSERT INTO public.item_prerequisites VALUES (k_6, r_6);
  -- 7. 七 (7)
  INSERT INTO public.item_prerequisites VALUES (k_7, r_7);
  -- 8. 九 (8)
  INSERT INTO public.item_prerequisites VALUES (k_8, r_8);
  -- 9. 大 (9)
  INSERT INTO public.item_prerequisites VALUES (k_9, r_9);
  -- 10. 子 (10)
  INSERT INTO public.item_prerequisites VALUES (k_10, r_10);
  -- 11. 上 (1, 11)
  INSERT INTO public.item_prerequisites VALUES (k_11, r_1);
  INSERT INTO public.item_prerequisites VALUES (k_11, r_11);
  -- 12. 女 (12)
  INSERT INTO public.item_prerequisites VALUES (k_12, r_12);
  -- 13. 下 (1, 11)
  INSERT INTO public.item_prerequisites VALUES (k_13, r_1);
  INSERT INTO public.item_prerequisites VALUES (k_13, r_11);
  -- 14. 小 (13)
  INSERT INTO public.item_prerequisites VALUES (k_14, r_13);
  -- 15. 山 (14)
  INSERT INTO public.item_prerequisites VALUES (k_15, r_14);
  -- 16. 万 (15, 16)
  INSERT INTO public.item_prerequisites VALUES (k_16, r_15);
  INSERT INTO public.item_prerequisites VALUES (k_16, r_16);
  -- 17. 川 (17)
  INSERT INTO public.item_prerequisites VALUES (k_17, r_17);
  -- 18. 三 (1, 4)
  INSERT INTO public.item_prerequisites VALUES (k_18, r_1);
  INSERT INTO public.item_prerequisites VALUES (k_18, r_4);
  -- 19. 土 (18)
  INSERT INTO public.item_prerequisites VALUES (k_19, r_18);
  -- 20. 千 (19)
  INSERT INTO public.item_prerequisites VALUES (k_20, r_19);
  -- 21. 分 (6, 16)
  INSERT INTO public.item_prerequisites VALUES (k_21, r_6);
  INSERT INTO public.item_prerequisites VALUES (k_21, r_16);
  -- 22. 日 (20)
  INSERT INTO public.item_prerequisites VALUES (k_22, r_20);
  -- 23. 中 (21)
  INSERT INTO public.item_prerequisites VALUES (k_23, r_21);
  -- 24. 今 (22)
  INSERT INTO public.item_prerequisites VALUES (k_24, r_22);
  -- 25. 月 (23)
  INSERT INTO public.item_prerequisites VALUES (k_25, r_23);
  -- 26. 水 (24)
  INSERT INTO public.item_prerequisites VALUES (k_26, r_24);
  -- 27. 木 (25)
  INSERT INTO public.item_prerequisites VALUES (k_27, r_25);
  -- 28. 父 (26)
  INSERT INTO public.item_prerequisites VALUES (k_28, r_26);
  -- 29. 友 (27, 28)
  INSERT INTO public.item_prerequisites VALUES (k_29, r_27);
  INSERT INTO public.item_prerequisites VALUES (k_29, r_28);
  -- 30. 天 (29)
  INSERT INTO public.item_prerequisites VALUES (k_30, r_29);

END $$;
