-- ============================================================
-- KaniGani Migration: Milestone Exams & Placement Test Skema
-- Jalankan kode ini di Supabase SQL Editor Anda
-- ============================================================

-- 1. Buat Tabel Ranks
CREATE TABLE IF NOT EXISTS public.ranks (
  id            UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  name          TEXT NOT NULL,
  jlpt_level    TEXT NOT NULL, -- 'N5', 'N4', 'N3', 'N2', 'N1'
  sort_order    INT UNIQUE NOT NULL,
  exp_required  INT NOT NULL DEFAULT 1000
);

-- Seed Ranks N5 & N4
INSERT INTO public.ranks (id, name, jlpt_level, sort_order, exp_required) VALUES
  ('a1b2c3d4-e5f6-7a8b-9c0d-1e2f3a4b5c6d', 'N5 - Pangkat 1', 'N5', 1, 1000),
  ('b2c3d4e5-f6a7-8b9c-0d1e-2f3a4b5c6d7e', 'N5 - Pangkat 2', 'N5', 2, 1000),
  ('c3d4e5f6-a7b8-9c0d-1e2f-3a4b5c6d7e8f', 'N5 - Pangkat 3', 'N5', 3, 1000),
  ('d4e5f6a7-b8c9-0d1e-2f3a-4b5c6d7e8f9a', 'N4 - Pangkat 1', 'N4', 4, 1000),
  ('e5f6a7b8-c90d-1e2f-3a4b-5c6d7e8f9a0b', 'N4 - Pangkat 2', 'N4', 5, 1000),
  ('f6a7b8c9-0d1e-2f3a-4b5c-6d7e8f9a0b1c', 'N4 - Pangkat 3', 'N4', 6, 1000),
  ('a7b8c90d-1e2f-3a4b-5c6d-7e8f9a0b1c2d', 'N4 - Pangkat 4', 'N4', 7, 1000),
  ('b8c90d1e-2f3a-4b5c-6d7e-8f9a0b1c2d3e', 'N4 - Pangkat 5', 'N4', 8, 1000),
  ('c90d1e2f-3a4b-5c6d-7e8f-9a0b1c2d3e4f', 'N4 - Pangkat 6', 'N4', 9, 1000)
ON CONFLICT (sort_order) DO UPDATE 
SET name = EXCLUDED.name, jlpt_level = EXCLUDED.jlpt_level, exp_required = EXCLUDED.exp_required;

-- 2. Alter Tabel Items
ALTER TABLE public.items ADD COLUMN IF NOT EXISTS rank_id UUID REFERENCES public.ranks(id) ON DELETE SET NULL;
ALTER TABLE public.items ADD COLUMN IF NOT EXISTS readings TEXT DEFAULT NULL;

-- Pastikan readings di item_readings bisa NULL (untuk kana-only / kata serapan)
ALTER TABLE public.item_readings ALTER COLUMN reading DROP NOT NULL;

-- 3. Buat Tabel Junction Kanji-Radical & Vocabulary-Kanji
CREATE TABLE IF NOT EXISTS public.kanji_radicals (
  kanji_id    UUID REFERENCES public.items(id) ON DELETE CASCADE,
  radical_id  UUID REFERENCES public.items(id) ON DELETE CASCADE,
  PRIMARY KEY (kanji_id, radical_id)
);

CREATE TABLE IF NOT EXISTS public.vocabulary_kanjis (
  vocabulary_id UUID REFERENCES public.items(id) ON DELETE CASCADE,
  kanji_id      UUID REFERENCES public.items(id) ON DELETE CASCADE,
  PRIMARY KEY (vocabulary_id, kanji_id)
);

-- Copy data dari prerequisites lama ke tabel junction
INSERT INTO public.kanji_radicals (kanji_id, radical_id)
SELECT ip.item_id, ip.requires_item_id
FROM public.item_prerequisites ip
JOIN public.items i1 ON ip.item_id = i1.id
JOIN public.items i2 ON ip.requires_item_id = i2.id
WHERE i1.type = 'kanji' AND i2.type = 'radical'
ON CONFLICT DO NOTHING;

INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id)
SELECT ip.item_id, ip.requires_item_id
FROM public.item_prerequisites ip
JOIN public.items i1 ON ip.item_id = i1.id
JOIN public.items i2 ON ip.requires_item_id = i2.id
WHERE i1.type = 'vocabulary' AND i2.type = 'kanji'
ON CONFLICT DO NOTHING;

-- 4. Hubungkan Items ke Ranks berdasarkan seed kanji
-- N5 Pangkat 1
UPDATE public.items SET rank_id = 'a1b2c3d4-e5f6-7a8b-9c0d-1e2f3a4b5c6d' 
WHERE type = 'kanji' AND character IN ('一', '人', '入', '二', '十', '八', '七', '九', '大', '子', '上', '女', '下', '小', '山', '万', '川', '三', '土', '千', '分');

-- N5 Pangkat 2
UPDATE public.items SET rank_id = 'b2c3d4e5-f6a7-8b9c-0d1e-2f3a4b5c6d7e' 
WHERE type = 'kanji' AND character IN ('日', '中', '今', '月', '水', '木', '父', '友', '天', '火', '五', '円', '午', '六', '出', '生', '本', '外', '母', '白', '半');

-- N5 Pangkat 3
UPDATE public.items SET rank_id = 'c3d4e5f6-a7b8-9c0d-1e2f-3a4b5c6d7e8f' 
WHERE type = 'kanji' AND character IN ('北', '四', '左', '右', '行', '年', '気', '先', '名', '西', '毎', '休', '百', '見', '来', '何', '男', '女', '車', '長', '国', '金', '学', '東', '雨', '前', '後', '食', '南', '時', '高', '書', '校', '間', '話', '電', '聞', '語', '读', '讀', '読');

-- N4 Pangkat 1
UPDATE public.items SET rank_id = 'd4e5f6a7-b8c9-0d1e-2f3a-4b5c6d7e8f9a' 
WHERE type = 'kanji' AND character IN ('力', '口', '工', '夕', '手', '方', '心', '不', '元', '少', '切', '止', '文', '公', '犬', '牛', '目', '立', '用', '田', '代', '世', '正', '以', '主', '仕', '可', '台');

-- N4 Pangkat 2
UPDATE public.items SET rank_id = 'e5f6a7b8-c90d-1e2f-3a4b-5c6d7e8f9a0b' 
WHERE type = 'kanji' AND character IN ('去', '広', '写', '古', '兄', '冬', '会', '自', '同', '地', '死', '考', '安', '多', '早', '有', '色', '字', '肉', '言', '体', '作', '私', '社', '別', '近', '身', '足');

-- N4 Pangkat 3
UPDATE public.items SET rank_id = 'f6a7b8c9-0d1e-2f3a-4b5c-6d7e8f9a0b1c' 
WHERE type = 'kanji' AND character IN ('売', '住', '医', '花', '赤', '町', '走', '究', '図', '弟', '事', '者', '明', '知', '物', '的', '使', '始', '画', '味', '空', '夜', '店', '歩', '注', '京', '英', '服');

-- N4 Pangkat 4
UPDATE public.items SET rank_id = 'a7b8c90d-1e2f-3a4b-5c6d-7e8f9a0b1c2d' 
WHERE type = 'kanji' AND character IN ('青', '姉', '妹', '思', '持', '発', '度', '界', '待', '音', '海', '重', '急', '品', '计', '計', '送', '屋', '映', '室', '风', '風', '建', '研', '春', '秋', '茶', '洋', '昼');

-- N4 Pangkat 5
UPDATE public.items SET rank_id = 'b8c90d1e-2f3a-4b5c-6d7e-8f9a0b1c2d3e' 
WHERE type = 'kanji' AND character IN ('家', '通', '員', '真', '帰', '起', '料', '特', '院', '病', '紙', '旅', '夏', '借', '勉', '理', '动', '動', '问', '問', '强', '強', '教', '野', '终', '終', '恶', '悪', '族', '转', '転', '周', '週');

-- N4 Pangkat 6
UPDATE public.items SET rank_id = 'c90d1e2f-3a4b-5c6d-7e8f-9a0b1c2d3e4f' 
WHERE type = 'kanji' AND character IN ('黑', '黒', '习', '習', '堂', '鸟', '鳥', '鱼', '魚', '场', '場', '开', '開', '无', '無', '道', '着', '运', '運', '集', '朝', '买', '買', '答', '饮', '飲', '饭', '飯', '贷', '貸', '意', '新', '业', '業', '乐', '楽', '试', '試', '汉', '漢', '歌', '银', '銀', '驿', '駅', '质', '質', '亲', '親', '馆', '館', '题', '題', '验', '驗', '験', '曜');

-- Propagasi rank_id ke radicals
WITH radical_ranks AS (
  SELECT 
    ip.requires_item_id AS radical_id,
    r.id AS rank_id,
    ROW_NUMBER() OVER (PARTITION BY ip.requires_item_id ORDER BY r.sort_order ASC) as rn
  FROM public.item_prerequisites ip
  JOIN public.items kanji ON ip.item_id = kanji.id
  JOIN public.ranks r ON kanji.rank_id = r.id
  WHERE kanji.type = 'kanji'
)
UPDATE public.items i
SET rank_id = rr.rank_id
FROM radical_ranks rr
WHERE i.id = rr.radical_id AND rr.rn = 1 AND i.type = 'radical';

-- Propagasi rank_id ke vocabulary
WITH vocab_ranks AS (
  SELECT 
    ip.item_id AS vocab_id,
    r.id AS rank_id,
    ROW_NUMBER() OVER (PARTITION BY ip.item_id ORDER BY r.sort_order DESC) as rn
  FROM public.item_prerequisites ip
  JOIN public.items kanji ON ip.requires_item_id = kanji.id
  JOIN public.ranks r ON kanji.rank_id = r.id
  WHERE kanji.type = 'kanji'
)
UPDATE public.items i
SET rank_id = vr.rank_id
FROM vocab_ranks vr
WHERE i.id = vr.vocab_id AND vr.rn = 1 AND i.type = 'vocabulary';

-- Fallback untuk item yang tersisa
UPDATE public.items SET rank_id = 'a1b2c3d4-e5f6-7a8b-9c0d-1e2f3a4b5c6d' WHERE rank_id IS NULL AND level = 1;
UPDATE public.items SET rank_id = 'b2c3d4e5-f6a7-8b9c-0d1e-2f3a4b5c6d7e' WHERE rank_id IS NULL AND level = 2;
UPDATE public.items SET rank_id = 'c3d4e5f6-a7b8-9c0d-1e2f-3a4b5c6d7e8f' WHERE rank_id IS NULL AND level = 3;
UPDATE public.items SET rank_id = 'd4e5f6a7-b8c9-0d1e-2f3a-4b5c6d7e8f9a' WHERE rank_id IS NULL AND level = 4;
UPDATE public.items SET rank_id = 'e5f6a7b8-c90d-1e2f-3a4b-5c6d7e8f9a0b' WHERE rank_id IS NULL AND level = 5;
UPDATE public.items SET rank_id = 'f6a7b8c9-0d1e-2f3a-4b5c-6d7e8f9a0b1c' WHERE rank_id IS NULL AND level = 6;
UPDATE public.items SET rank_id = 'a7b8c90d-1e2f-3a4b-5c6d-7e8f9a0b1c2d' WHERE rank_id IS NULL AND level = 7;
UPDATE public.items SET rank_id = 'b8c90d1e-2f3a-4b5c-6d7e-8f9a0b1c2d3e' WHERE rank_id IS NULL AND level = 8;
UPDATE public.items SET rank_id = 'c90d1e2f-3a4b-5c6d-7e8f-9a0b1c2d3e4f' WHERE rank_id IS NULL AND level >= 9;

-- 5. Tabel User Progress (Constraint Check Update)
-- Memastikan srs_stage berada di range 0-9
ALTER TABLE public.user_progress DROP CONSTRAINT IF EXISTS user_progress_srs_stage_check;
ALTER TABLE public.user_progress ADD CONSTRAINT user_progress_srs_stage_check CHECK (srs_stage BETWEEN 0 AND 9);

-- 6. Tabel User Rank State
CREATE TABLE IF NOT EXISTS public.user_rank_state (
  user_id             UUID PRIMARY KEY REFERENCES auth.users(id) ON DELETE CASCADE,
  current_rank_id     UUID REFERENCES public.ranks(id) ON DELETE SET NULL DEFAULT 'a1b2c3d4-e5f6-7a8b-9c0d-1e2f3a4b5c6d',
  current_exp         INT NOT NULL DEFAULT 0,
  exam_unlocked       BOOLEAN NOT NULL DEFAULT FALSE,
  has_taken_placement BOOLEAN NOT NULL DEFAULT FALSE,
  created_at          TIMESTAMPTZ NOT NULL DEFAULT NOW(),
  updated_at          TIMESTAMPTZ NOT NULL DEFAULT NOW()
);

-- RLS untuk user_rank_state
ALTER TABLE public.user_rank_state ENABLE ROW LEVEL SECURITY;

DROP POLICY IF EXISTS "User rank state can be read by anyone" ON public.user_rank_state;
DROP POLICY IF EXISTS "Users can insert/update their own rank state" ON public.user_rank_state;

CREATE POLICY "User rank state can be read by anyone" 
  ON public.user_rank_state FOR SELECT 
  USING (true);

CREATE POLICY "Users can insert/update their own rank state" 
  ON public.user_rank_state FOR ALL 
  USING (auth.uid() = user_id);

-- 7. Tabel Placement Test Bank
CREATE TABLE IF NOT EXISTS public.placement_test_bank (
  id                  UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  jlpt_level          TEXT NOT NULL, -- 'N5', 'N4', 'N3', 'N2', 'N1'
  question            TEXT NOT NULL,
  options             TEXT[] NOT NULL,
  correct_answer      TEXT NOT NULL,
  created_at          TIMESTAMPTZ NOT NULL DEFAULT NOW()
);

-- Seed beberapa soal mock untuk placement_test_bank
INSERT INTO public.placement_test_bank (jlpt_level, question, options, correct_answer) VALUES
  ('N5', 'Apa cara baca dari kanji "一"?', ARRAY['いち', 'に', 'さん', 'よん'], 'いち'),
  ('N5', 'Apa arti dari kanji "人"?', ARRAY['Orang', 'Buku', 'Mulut', 'Pohon'], 'Orang'),
  ('N5', 'Pilihlah kanji untuk "Pohon".', ARRAY['木', '水', '火', '土'], '木'),
  ('N5', 'Apa cara baca dari kanji "水"?', ARRAY['みず', 'ひ', 'つち', 'やま'], 'みず'),
  ('N5', 'Apa arti dari kanji "大"?', ARRAY['Besar', 'Kecil', 'Tinggi', 'Panjang'], 'Besar'),
  
  ('N4', 'Apa cara baca dari kanji "手"?', ARRAY['て', 'め', 'くち', 'あし'], 'て'),
  ('N4', 'Apa arti dari kanji "犬"?', ARRAY['Anjing', 'Kucing', 'Sapi', 'Burung'], 'Anjing'),
  ('N4', 'Pilihlah kanji untuk "Bunga".', ARRAY['花', '草', '木', '葉'], '花'),
  ('N4', 'Apa cara baca dari kanji "足"?', ARRAY['あし', 'て', 'め', 'みみ'], 'あし'),
  ('N4', 'Apa arti dari kanji "古"?', ARRAY['Tua', 'Baru', 'Besar', 'Kecil'], 'Tua'),

  ('N3', 'Apa cara baca dari kanji "薬"?', ARRAY['くすり', 'お茶', '水', '酒'], 'くすり'),
  ('N3', 'Apa arti dari kanji "旅"?', ARRAY['Perjalanan', 'Pekerjaan', 'Pelajaran', 'Pertemuan'], 'Perjalanan'),
  
  ('N2', 'Apa cara baca dari kanji "環境"?', ARRAY['かんきょう', 'かんじょう', 'こうぎょう', 'しんりょう'], 'かんきょう'),
  ('N2', 'Apa arti dari kanji "混雑"?', ARRAY['Padat/Macet', 'Tenang', 'Bersih', 'Indah'], 'Padat/Macet'),
  
  ('N1', 'Apa cara baca dari kanji "憂鬱"?', ARRAY['ゆううつ', 'ゆうずい', 'きょうき', 'ぼうぜん'], 'ゆううつ'),
  ('N1', 'Apa arti dari kanji "曖昧"?', ARRAY['Samar/Ambigu', 'Jelas', 'Pasti', 'Sederhana'], 'Samar/Ambigu')
ON CONFLICT (id) DO NOTHING;

-- RLS untuk placement_test_bank
ALTER TABLE public.placement_test_bank ENABLE ROW LEVEL SECURITY;

DROP POLICY IF EXISTS "Placement test bank can be read by anyone" ON public.placement_test_bank;
CREATE POLICY "Placement test bank can be read by anyone" 
  ON public.placement_test_bank FOR SELECT 
  USING (true);

-- 8. Fungsi trigger untuk inisialisasi rank state bagi user baru
CREATE OR REPLACE FUNCTION public.on_auth_user_created_rank()
RETURNS trigger
LANGUAGE plpgsql
SECURITY DEFINER
SET search_path = public
AS $$
BEGIN
  INSERT INTO public.user_rank_state (user_id, current_rank_id, current_exp, exam_unlocked, has_taken_placement)
  VALUES (NEW.id, 'a1b2c3d4-e5f6-7a8b-9c0d-1e2f3a4b5c6d', 0, FALSE, FALSE)
  ON CONFLICT (user_id) DO NOTHING;
  RETURN NEW;
END;
$$;

DROP TRIGGER IF EXISTS on_auth_user_created_rank ON auth.users;
CREATE TRIGGER on_auth_user_created_rank
  AFTER INSERT ON auth.users
  FOR EACH ROW
  EXECUTE FUNCTION public.on_auth_user_created_rank();

-- Inisialisasi data rank state untuk user lama yang sudah ada di profiles
INSERT INTO public.user_rank_state (user_id, current_rank_id)
SELECT id, 'a1b2c3d4-e5f6-7a8b-9c0d-1e2f3a4b5c6d'::UUID
FROM public.profiles
ON CONFLICT (user_id) DO NOTHING;
