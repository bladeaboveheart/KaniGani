-- ============================================================
-- KaniGani Complete Setup Script for Milestone & Placement Branch
-- Jalankan file ini sekali saja di Supabase SQL Editor
-- ============================================================

-- >>> DARI FILE: sql/base_schema.sql <<<
-- ============================================================
-- KaniGani — Schema Database (v2, relasional)
-- Jalankan file ini terlebih dahulu di Supabase SQL Editor
-- ============================================================

-- ============================================================
-- DROP semua tabel & fungsi lama (reset total)
-- ============================================================
DROP TRIGGER IF EXISTS on_auth_user_created ON auth.users;
DROP FUNCTION IF EXISTS public.on_auth_user_created();
DROP FUNCTION IF EXISTS public.initialize_user_progress(UUID);

DROP TABLE IF EXISTS user_progress        CASCADE;
DROP TABLE IF EXISTS item_prerequisites   CASCADE;
DROP TABLE IF EXISTS item_context_sentences CASCADE;
DROP TABLE IF EXISTS item_readings        CASCADE;
DROP TABLE IF EXISTS item_meanings        CASCADE;
DROP TABLE IF EXISTS items                CASCADE;

-- ============================================================
-- Tabel items
-- Field utama per item; meanings & readings dipisah ke tabel sendiri
-- ============================================================
CREATE TABLE items (
  id                UUID    PRIMARY KEY DEFAULT gen_random_uuid(),
  type              TEXT    NOT NULL CHECK (type IN ('radical', 'kanji', 'vocabulary')),
  character         TEXT    NOT NULL,
  slug              TEXT,
  level             INT     NOT NULL DEFAULT 1,
  lesson_position   INT     NOT NULL DEFAULT 0,
  meaning_mnemonic  TEXT,
  reading_mnemonic  TEXT,     -- NULL untuk radical
  description       TEXT       -- deskripsi singkat (terutama untuk radical & vocab)
);

-- ============================================================
-- Tabel item_meanings
-- Satu item bisa punya banyak arti; primary = arti utama yang diuji
-- ============================================================
CREATE TABLE item_meanings (
  id          UUID    PRIMARY KEY DEFAULT gen_random_uuid(),
  item_id     UUID    NOT NULL REFERENCES items(id) ON DELETE CASCADE,
  meaning     TEXT    NOT NULL,
  primary_meaning BOOLEAN NOT NULL DEFAULT false,
  accepted_answer BOOLEAN NOT NULL DEFAULT true
);

-- ============================================================
-- Tabel item_readings
-- Satu item bisa punya banyak bacaan; primary = bacaan utama yang diuji
-- type: 'onyomi', 'kunyomi', 'nanori' (NULL untuk vocab)
-- ============================================================
CREATE TABLE item_readings (
  id              UUID    PRIMARY KEY DEFAULT gen_random_uuid(),
  item_id         UUID    NOT NULL REFERENCES items(id) ON DELETE CASCADE,
  reading         TEXT    NOT NULL,
  reading_type    TEXT    CHECK (reading_type IN ('onyomi', 'kunyomi', 'nanori')),
  primary_reading BOOLEAN NOT NULL DEFAULT false,
  accepted_answer BOOLEAN NOT NULL DEFAULT true
);

-- ============================================================
-- Tabel item_context_sentences
-- Contoh kalimat untuk vocabulary
-- ============================================================
CREATE TABLE item_context_sentences (
  id          UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  item_id     UUID NOT NULL REFERENCES items(id) ON DELETE CASCADE,
  japanese    TEXT NOT NULL,
  indonesian  TEXT NOT NULL
);

-- ============================================================
-- Tabel item_prerequisites
-- ============================================================
CREATE TABLE item_prerequisites (
  item_id          UUID NOT NULL REFERENCES items(id) ON DELETE CASCADE,
  requires_item_id UUID NOT NULL REFERENCES items(id) ON DELETE CASCADE,
  PRIMARY KEY (item_id, requires_item_id)
);

-- ============================================================
-- Tabel user_progress
-- ============================================================
CREATE TABLE user_progress (
  user_id     UUID NOT NULL REFERENCES auth.users(id) ON DELETE CASCADE,
  item_id     UUID NOT NULL REFERENCES items(id) ON DELETE CASCADE,
  srs_stage   INT NOT NULL DEFAULT 0,
  unlocked_at TIMESTAMPTZ,
  next_review TIMESTAMPTZ,
  PRIMARY KEY (user_id, item_id)
);

-- ============================================================
-- Row Level Security (RLS)
-- ============================================================

ALTER TABLE items                   ENABLE ROW LEVEL SECURITY;
ALTER TABLE item_meanings           ENABLE ROW LEVEL SECURITY;
ALTER TABLE item_readings           ENABLE ROW LEVEL SECURITY;
ALTER TABLE item_context_sentences  ENABLE ROW LEVEL SECURITY;
ALTER TABLE item_prerequisites      ENABLE ROW LEVEL SECURITY;
ALTER TABLE user_progress           ENABLE ROW LEVEL SECURITY;

CREATE POLICY "baca_items"
  ON items FOR SELECT USING (true);

CREATE POLICY "baca_item_meanings"
  ON item_meanings FOR SELECT USING (true);

CREATE POLICY "baca_item_readings"
  ON item_readings FOR SELECT USING (true);

CREATE POLICY "baca_item_context_sentences"
  ON item_context_sentences FOR SELECT USING (true);

CREATE POLICY "baca_item_prerequisites"
  ON item_prerequisites FOR SELECT USING (true);

CREATE POLICY "user_akses_progres_sendiri"
  ON user_progress FOR ALL
  USING (auth.uid() = user_id)
  WITH CHECK (auth.uid() = user_id);

-- ============================================================
-- Fungsi inisialisasi progres user baru
-- ============================================================
CREATE OR REPLACE FUNCTION public.initialize_user_progress(p_user_id UUID)
RETURNS void
LANGUAGE plpgsql
SECURITY DEFINER
SET search_path = public
AS $$
BEGIN
  INSERT INTO public.user_progress (user_id, item_id, srs_stage, unlocked_at)
  SELECT
    p_user_id,
    i.id,
    CASE WHEN i.type = 'radical' THEN 1 ELSE 0 END,
    CASE WHEN i.type = 'radical' THEN NOW() ELSE NULL END
  FROM public.items i
  ON CONFLICT (user_id, item_id) DO NOTHING;
END;
$$;

CREATE OR REPLACE FUNCTION public.on_auth_user_created()
RETURNS trigger
LANGUAGE plpgsql
SECURITY DEFINER
SET search_path = public
AS $$
BEGIN
  PERFORM public.initialize_user_progress(NEW.id);
  RETURN NEW;
END;
$$;

CREATE TRIGGER on_auth_user_created
  AFTER INSERT ON auth.users
  FOR EACH ROW
  EXECUTE FUNCTION public.on_auth_user_created();


-- >>> DARI FILE: sql/migration_username.sql <<<
-- ============================================================
-- KaniGani Migration: Username & Profiles Setup
-- Jalankan kode ini di Supabase SQL Editor Anda
-- ============================================================

-- 1. Buat Tabel Profiles
CREATE TABLE IF NOT EXISTS public.profiles (
  id          UUID PRIMARY KEY REFERENCES auth.users(id) ON DELETE CASCADE,
  username    TEXT UNIQUE NOT NULL CHECK (char_length(username) >= 3),
  email       TEXT UNIQUE NOT NULL,
  created_at  TIMESTAMPTZ NOT NULL DEFAULT NOW()
);

-- 2. Aktifkan RLS pada Profiles
ALTER TABLE public.profiles ENABLE ROW LEVEL SECURITY;

-- Drop policy lama jika ada untuk mencegah error
DROP POLICY IF EXISTS "Profil dapat dilihat oleh semua" ON public.profiles;
DROP POLICY IF EXISTS "Pengguna hanya bisa memperbarui profil sendiri" ON public.profiles;

-- Kebijakan RLS Profiles
CREATE POLICY "Profil dapat dilihat oleh semua" 
  ON public.profiles FOR SELECT 
  USING (true);

CREATE POLICY "Pengguna hanya bisa memperbarui profil sendiri" 
  ON public.profiles FOR UPDATE 
  USING (auth.uid() = id);

-- 3. Perbarui Fungsi Trigger Inisialisasi User Baru
CREATE OR REPLACE FUNCTION public.on_auth_user_created()
RETURNS trigger
LANGUAGE plpgsql
SECURITY DEFINER
SET search_path = public
AS $$
DECLARE
  v_username TEXT;
BEGIN
  -- Dapatkan username dari metadata, jika kosong gunakan default random
  v_username := COALESCE(NEW.raw_user_meta_data->>'username', 'user_' || substr(NEW.id::text, 1, 8));

  -- Pastikan username unik di profiles (apabila bentrok tambahkan suffix random)
  WHILE EXISTS (SELECT 1 FROM public.profiles WHERE username = v_username) LOOP
    v_username := 'user_' || substr(md5(random()::text), 1, 8);
  END LOOP;

  -- Sisipkan ke public.profiles
  INSERT INTO public.profiles (id, username, email)
  VALUES (NEW.id, v_username, NEW.email);

  -- Inisialisasi progres default untuk level 1
  PERFORM public.initialize_user_progress(NEW.id);
  
  RETURN NEW;
END;
$$;

-- 4. Re-create trigger pada auth.users
DROP TRIGGER IF EXISTS on_auth_user_created ON auth.users;
CREATE TRIGGER on_auth_user_created
  AFTER INSERT ON auth.users
  FOR EACH ROW
  EXECUTE FUNCTION public.on_auth_user_created();


-- >>> DARI FILE: sql/add_activity_logs.sql <<<
-- ============================================================
-- Tabel activity_logs: Mencatat setiap aktivitas review & lesson
-- ============================================================

CREATE TABLE IF NOT EXISTS activity_logs (
  id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  user_id UUID NOT NULL REFERENCES auth.users(id) ON DELETE CASCADE,
  activity_type TEXT NOT NULL CHECK (activity_type IN ('review', 'lesson')),
  item_count INTEGER NOT NULL DEFAULT 1,
  created_at TIMESTAMPTZ NOT NULL DEFAULT now()
);

-- Index untuk query heatmap yang cepat
CREATE INDEX IF NOT EXISTS idx_activity_logs_user_date
  ON activity_logs (user_id, created_at);

-- RLS: Aktifkan dan buat policy
ALTER TABLE activity_logs ENABLE ROW LEVEL SECURITY;

-- Policy: User hanya bisa melihat log mereka sendiri
DROP POLICY IF EXISTS "Users can view own activity logs" ON activity_logs;
CREATE POLICY "Users can view own activity logs"
  ON activity_logs FOR SELECT
  USING (auth.uid() = user_id);

-- Policy: User bisa insert log mereka sendiri
DROP POLICY IF EXISTS "Users can insert own activity logs" ON activity_logs;
CREATE POLICY "Users can insert own activity logs"
  ON activity_logs FOR INSERT
  WITH CHECK (auth.uid() = user_id);


-- >>> DARI FILE: sql/add_duration_to_activity_logs.sql <<<
-- ============================================================
-- Migrasi: Menambahkan kolom duration_seconds ke tabel activity_logs
-- ============================================================

ALTER TABLE activity_logs 
  ADD COLUMN IF NOT EXISTS duration_seconds INTEGER DEFAULT 0;

COMMENT ON COLUMN activity_logs.duration_seconds IS 'Durasi aktif dalam satuan detik yang dihabiskan untuk aktivitas ini';


-- >>> DARI FILE: sql/add_user_level_and_leaderboard.sql <<<
-- =========================================================================
-- KaniGani Database Patch: User Level Setter & Live Leaderboard RPC
-- Jalankan skrip ini di SQL Editor Supabase Anda
-- =========================================================================

-- 1. Tambahkan kolom level pada tabel profiles (jika belum ada)
-- Default diatur ke NULL agar sistem secara default menggunakan kalkulasi level dinamis.
ALTER TABLE public.profiles ADD COLUMN IF NOT EXISTS level INT DEFAULT NULL;

-- 2. Atur default level kolom menjadi NULL untuk baris baru
ALTER TABLE public.profiles ALTER COLUMN level SET DEFAULT NULL;

-- 3. Reset profil yang sudah terlanjur mendapatkan default '1' kembali ke NULL (agar dinamis kembali)
-- Catatan: Ini aman karena Level 1 secara dinamis tetap terhitung Level 1.
UPDATE public.profiles SET level = NULL WHERE level = 1;

-- 4. Buat fungsi pembantu calculate_user_level untuk menghitung level secara dinamis di server
CREATE OR REPLACE FUNCTION public.calculate_user_level(p_user_id UUID)
RETURNS INT
LANGUAGE plpgsql
SECURITY DEFINER
SET search_path = public
AS $$
DECLARE
  v_current_level INT := 1;
  v_total_kanji INT;
  v_passed_kanji INT;
BEGIN
  WHILE v_current_level <= 10 LOOP
    -- Hitung total kanji pada v_current_level
    SELECT COUNT(*)::INT INTO v_total_kanji 
    FROM public.items 
    WHERE type = 'kanji' AND level = v_current_level;
    
    -- Jika tidak ada kanji di level ini, berhenti
    IF v_total_kanji = 0 THEN
      EXIT;
    END IF;
    
    -- Hitung kanji lulus (srs_stage >= 5) pada level ini untuk user tersebut
    SELECT COUNT(*)::INT INTO v_passed_kanji 
    FROM public.user_progress up
    JOIN public.items i ON up.item_id = i.id
    WHERE up.user_id = p_user_id 
      AND i.type = 'kanji' 
      AND i.level = v_current_level 
      AND up.srs_stage >= 5;
      
    -- Periksa batas kelulusan 90%
    IF v_passed_kanji::FLOAT / v_total_kanji::FLOAT >= 0.9 THEN
      v_current_level := v_current_level + 1;
    ELSE
      EXIT;
    END IF;
  END LOOP;
  
  RETURN v_current_level;
END;
$$;

-- 5. Buat fungsi update_user_level untuk meng-override level pengguna lain (SECURITY DEFINER)
-- Menerima NULL untuk mengembalikan ke level otomatis (dinamis)
CREATE OR REPLACE FUNCTION public.update_user_level(p_user_id UUID, p_level INT)
RETURNS void
LANGUAGE plpgsql
SECURITY DEFINER
SET search_path = public
AS $$
BEGIN
  UPDATE public.profiles
  SET level = p_level
  WHERE id = p_user_id;
END;
$$;

-- 6. Buat fungsi get_leaderboard untuk mengambil data papan peringkat pengguna asli secara dinamis
-- Menggunakan COALESCE untuk memprioritaskan override manual (level), jika NULL menggunakan hitungan dinamis
-- Mengembalikan override_level raw untuk kemudahan UI admin
DROP FUNCTION IF EXISTS public.get_leaderboard();

CREATE OR REPLACE FUNCTION public.get_leaderboard()
RETURNS TABLE(id UUID, username TEXT, level INT, points INT, override_level INT)
LANGUAGE plpgsql
SECURITY DEFINER
SET search_path = public
AS $$
BEGIN
  RETURN QUERY
  SELECT 
    p.id,
    p.username,
    COALESCE(p.level, public.calculate_user_level(p.id)) as level,
    COALESCE(
      (SELECT COUNT(*)::INT FROM public.user_progress up WHERE up.user_id = p.id AND up.srs_stage >= 5) * 10 +
      (SELECT COUNT(*)::INT FROM public.user_progress up WHERE up.user_id = p.id AND up.srs_stage > 0),
      0
    ) as points,
    p.level as override_level
  FROM public.profiles p
  ORDER BY points DESC;
END;
$$;


-- >>> DARI FILE: sql/feature_milestone_and_placement.sql <<<
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


-- >>> DARI FILE: sql/seed_n5_pangkat1.sql <<<
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


-- >>> DARI FILE: sql/fix_initialize_user_progress.sql <<<
-- ============================================================
-- KaniGani Database Patch: Fix Initial User Progress Level
-- Jalankan kode ini di Supabase SQL Editor Anda
-- ============================================================

-- 1. Perbarui fungsi initialize_user_progress agar menggunakan sistem pangkat (ranks)
CREATE OR REPLACE FUNCTION public.initialize_user_progress(p_user_id UUID)
RETURNS void
LANGUAGE plpgsql
SECURITY DEFINER
SET search_path = public
AS $$
DECLARE
  v_rank_id UUID;
BEGIN
  -- Pastikan user_rank_state ada untuk user
  INSERT INTO public.user_rank_state (user_id, current_rank_id, current_exp, exam_unlocked, has_taken_placement)
  VALUES (p_user_id, 'a1b2c3d4-e5f6-7a8b-9c0d-1e2f3a4b5c6d', 0, FALSE, FALSE)
  ON CONFLICT (user_id) DO NOTHING;

  -- Dapatkan current_rank_id dari user_rank_state
  SELECT current_rank_id INTO v_rank_id
  FROM public.user_rank_state
  WHERE user_id = p_user_id;

  IF v_rank_id IS NULL THEN
    v_rank_id := 'a1b2c3d4-e5f6-7a8b-9c0d-1e2f3a4b5c6d'; -- Default ke N5 - Pangkat 1
  END IF;

  -- Inisialisasi progress untuk semua items:
  -- Radikal dari pangkat aktif langsung terbuka (srs_stage = 1, unlocked_at = NOW())
  -- Semua item lainnya dimulai terkunci (srs_stage = 0, unlocked_at = NULL)
  INSERT INTO public.user_progress (user_id, item_id, srs_stage, unlocked_at)
  SELECT
    p_user_id,
    i.id,
    CASE WHEN i.rank_id = v_rank_id AND i.type = 'radical' THEN 1 ELSE 0 END,
    CASE WHEN i.rank_id = v_rank_id AND i.type = 'radical' THEN NOW() ELSE NULL END
  FROM public.items i
  ON CONFLICT (user_id, item_id) DO UPDATE
  SET srs_stage = EXCLUDED.srs_stage,
      unlocked_at = EXCLUDED.unlocked_at
  WHERE user_progress.srs_stage = 0 AND user_progress.next_review IS NULL;
END;
$$;

-- 2. Inisialisasi progress untuk semua user yang sudah terdaftar
DO $$
DECLARE
  u RECORD;
BEGIN
  FOR u IN SELECT id, email, raw_user_meta_data FROM auth.users LOOP
    -- Pastikan profile ada terlebih dahulu
    INSERT INTO public.profiles (id, username, email, created_at)
    VALUES (
      u.id, 
      COALESCE(u.raw_user_meta_data->>'username', split_part(u.email, '@', 1), 'User'), 
      COALESCE(u.email, 'user_' || substring(u.id::text from 1 for 8) || '@example.com'), 
      NOW()
    )
    ON CONFLICT (id) DO NOTHING;

    -- Pastikan user_rank_state ada
    INSERT INTO public.user_rank_state (user_id, current_rank_id, current_exp, exam_unlocked, has_taken_placement)
    VALUES (u.id, 'a1b2c3d4-e5f6-7a8b-9c0d-1e2f3a4b5c6d', 0, FALSE, FALSE)
    ON CONFLICT (user_id) DO NOTHING;

    -- Panggil inisialisasi progress
    PERFORM public.initialize_user_progress(u.id);
  END LOOP;
END;
$$;


-- >>> DARI FILE: sql/fix_rls_policies.sql <<<
-- ============================================================
-- KaniGani Migration: Fix RLS Policies for CRUD Operations
-- Jalankan kode ini di Supabase SQL Editor Anda untuk mengaktifkan
-- akses tulis (Insert, Update, Delete) pada tabel-tabel Kamus.
-- ============================================================

-- 1. Drop policy SELECT lama (jika ada) untuk menghindari konflik/redundansi
DROP POLICY IF EXISTS "baca_items" ON public.items;
DROP POLICY IF EXISTS "baca_item_meanings" ON public.item_meanings;
DROP POLICY IF EXISTS "baca_item_readings" ON public.item_readings;
DROP POLICY IF EXISTS "baca_item_context_sentences" ON public.item_context_sentences;
DROP POLICY IF EXISTS "baca_item_prerequisites" ON public.item_prerequisites;

DROP POLICY IF EXISTS "admin_all_items" ON public.items;
DROP POLICY IF EXISTS "admin_all_item_meanings" ON public.item_meanings;
DROP POLICY IF EXISTS "admin_all_item_readings" ON public.item_readings;
DROP POLICY IF EXISTS "admin_all_item_context_sentences" ON public.item_context_sentences;
DROP POLICY IF EXISTS "admin_all_item_prerequisites" ON public.item_prerequisites;

-- 2. Buat policy FOR ALL (Select, Insert, Update, Delete) untuk semua tabel kamus
-- Policy ini mengizinkan semua operasi (baik untuk user biasa maupun admin) demi kemudahan CRUD di prototipe.

CREATE POLICY "admin_all_items" 
  ON public.items FOR ALL 
  USING (true) 
  WITH CHECK (true);

CREATE POLICY "admin_all_item_meanings" 
  ON public.item_meanings FOR ALL 
  USING (true) 
  WITH CHECK (true);

CREATE POLICY "admin_all_item_readings" 
  ON public.item_readings FOR ALL 
  USING (true) 
  WITH CHECK (true);

CREATE POLICY "admin_all_item_context_sentences" 
  ON public.item_context_sentences FOR ALL 
  USING (true) 
  WITH CHECK (true);

CREATE POLICY "admin_all_item_prerequisites" 
  ON public.item_prerequisites FOR ALL 
  USING (true) 
  WITH CHECK (true);

-- 3. Grant Hak Akses Tabel ke Role Supabase (PENTING untuk database baru)
GRANT USAGE ON SCHEMA public TO anon, authenticated, service_role;
GRANT ALL PRIVILEGES ON ALL TABLES IN SCHEMA public TO postgres, anon, authenticated, service_role;
GRANT ALL PRIVILEGES ON ALL SEQUENCES IN SCHEMA public TO postgres, anon, authenticated, service_role;
GRANT ALL PRIVILEGES ON ALL FUNCTIONS IN SCHEMA public TO postgres, anon, authenticated, service_role;

ALTER DEFAULT PRIVILEGES IN SCHEMA public GRANT ALL ON TABLES TO postgres, anon, authenticated, service_role;
ALTER DEFAULT PRIVILEGES IN SCHEMA public GRANT ALL ON SEQUENCES TO postgres, anon, authenticated, service_role;
ALTER DEFAULT PRIVILEGES IN SCHEMA public GRANT ALL ON FUNCTIONS TO postgres, anon, authenticated, service_role;


-- >>> DARI FILE: sql/create_level_items_view.sql <<<
-- ============================================================
-- KaniGani Database View: view_level_items
-- Jalankan kode ini di Supabase SQL Editor Anda
-- ============================================================

-- Hapus view jika sudah ada
DROP VIEW IF EXISTS public.view_level_items;

-- Buat view untuk memudahkan melihat ringkasan item di setiap level/pangkat
CREATE OR REPLACE VIEW public.view_level_items AS
SELECT 
  i.id,
  i.character,
  i.type,
  i.slug,
  i.level AS legacy_level,
  r.jlpt_level,
  r.name AS rank_name,
  (
    SELECT string_agg(meaning, ', ' ORDER BY primary_meaning DESC) 
    FROM public.item_meanings 
    WHERE item_id = i.id
  ) AS meanings,
  (
    SELECT string_agg(reading, ', ' ORDER BY primary_reading DESC) 
    FROM public.item_readings 
    WHERE item_id = i.id
  ) AS readings
FROM public.items i
LEFT JOIN public.ranks r ON i.rank_id = r.id
ORDER BY r.sort_order ASC, i.level ASC, i.type DESC, i.lesson_position ASC;

-- Grant hak akses SELECT pada view agar bisa dibaca oleh web client / admin dev
GRANT SELECT ON public.view_level_items TO anon, authenticated, service_role;


