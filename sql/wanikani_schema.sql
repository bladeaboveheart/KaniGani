-- ============================================================
-- KaniGani WaniKani 60-Level Schema Migration
-- Jalankan file ini di Supabase SQL Editor untuk reset & setup
-- ============================================================

-- Reset tabel & relasi lama
DROP TRIGGER IF EXISTS on_auth_user_created ON auth.users;
DROP FUNCTION IF EXISTS public.on_auth_user_created();
DROP FUNCTION IF EXISTS public.initialize_user_progress(UUID);
DROP FUNCTION IF EXISTS public.check_and_unlock_items(UUID);

DROP TABLE IF EXISTS user_progress          CASCADE;
DROP TABLE IF EXISTS kanji_radicals         CASCADE;
DROP TABLE IF EXISTS vocabulary_kanjis      CASCADE;
DROP TABLE IF EXISTS item_prerequisites     CASCADE;
DROP TABLE IF EXISTS item_context_sentences CASCADE;
DROP TABLE IF EXISTS item_readings          CASCADE;
DROP TABLE IF EXISTS item_meanings          CASCADE;
DROP TABLE IF EXISTS items                  CASCADE;
DROP TABLE IF EXISTS user_rank_state        CASCADE;
DROP TABLE IF EXISTS ranks                  CASCADE;

-- ============================================================
-- Tabel items (60 Level WaniKani)
-- ============================================================
CREATE TABLE items (
  id                UUID    PRIMARY KEY DEFAULT gen_random_uuid(),
  type              TEXT    NOT NULL CHECK (type IN ('radical', 'kanji', 'vocabulary')),
  character         TEXT    NOT NULL DEFAULT '',
  slug              TEXT    NOT NULL,
  level             INT     NOT NULL DEFAULT 1 CHECK (level >= 1 AND level <= 60),
  lesson_position   INT     NOT NULL DEFAULT 0,
  meaning_mnemonic  TEXT,
  reading_mnemonic  TEXT,     -- NULL untuk radical
  svg_filename      TEXT,     -- opsional untuk radikal non-unicode (misal: stick_8761.svg)
  created_at        TIMESTAMPTZ DEFAULT NOW()
);

-- Indexing untuk query cepat berdasarkan level & type
CREATE INDEX idx_items_level_type ON items (level, type);
CREATE INDEX idx_items_slug ON items (slug);

-- ============================================================
-- Tabel item_meanings
-- ============================================================
CREATE TABLE item_meanings (
  id              UUID    PRIMARY KEY DEFAULT gen_random_uuid(),
  item_id         UUID    NOT NULL REFERENCES items(id) ON DELETE CASCADE,
  meaning         TEXT    NOT NULL,
  primary_meaning BOOLEAN NOT NULL DEFAULT false,
  accepted_answer BOOLEAN NOT NULL DEFAULT true
);

CREATE INDEX idx_item_meanings_item_id ON item_meanings (item_id);

-- ============================================================
-- Tabel item_readings
-- ============================================================
CREATE TABLE item_readings (
  id              UUID    PRIMARY KEY DEFAULT gen_random_uuid(),
  item_id         UUID    NOT NULL REFERENCES items(id) ON DELETE CASCADE,
  reading         TEXT    NOT NULL,
  reading_type    TEXT    CHECK (reading_type IN ('onyomi', 'kunyomi', 'nanori')),
  primary_reading BOOLEAN NOT NULL DEFAULT false,
  accepted_answer BOOLEAN NOT NULL DEFAULT true
);

CREATE INDEX idx_item_readings_item_id ON item_readings (item_id);

-- ============================================================
-- Tabel item_context_sentences (Vocabulary)
-- ============================================================
CREATE TABLE item_context_sentences (
  id          UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  item_id     UUID NOT NULL REFERENCES items(id) ON DELETE CASCADE,
  japanese    TEXT NOT NULL,
  indonesian  TEXT NOT NULL
);

CREATE INDEX idx_item_sentences_item_id ON item_context_sentences (item_id);

-- ============================================================
-- Tabel Junction Kanji-Radical & Vocabulary-Kanji
-- ============================================================
CREATE TABLE kanji_radicals (
  kanji_id    UUID REFERENCES items(id) ON DELETE CASCADE,
  radical_id  UUID REFERENCES items(id) ON DELETE CASCADE,
  PRIMARY KEY (kanji_id, radical_id)
);

CREATE TABLE vocabulary_kanjis (
  vocabulary_id UUID REFERENCES items(id) ON DELETE CASCADE,
  kanji_id      UUID REFERENCES items(id) ON DELETE CASCADE,
  PRIMARY KEY (vocabulary_id, kanji_id)
);

-- ============================================================
-- Tabel user_progress
-- srs_stage:
-- 0 = Locked
-- 1 = Lesson Available (Unlocked)
-- 2 = Apprentice 1
-- 3 = Apprentice 2
-- 4 = Apprentice 3
-- 5 = Apprentice 4
-- 6 = Guru 1 (PASSED / GURU)
-- 7 = Guru 2
-- 8 = Master
-- 9 = Enlightened
-- 10 = Burned
-- ============================================================
CREATE TABLE user_progress (
  user_id     UUID NOT NULL REFERENCES auth.users(id) ON DELETE CASCADE,
  item_id     UUID NOT NULL REFERENCES items(id) ON DELETE CASCADE,
  srs_stage   INT NOT NULL DEFAULT 0,
  unlocked_at TIMESTAMPTZ,
  next_review TIMESTAMPTZ,
  PRIMARY KEY (user_id, item_id)
);

CREATE INDEX idx_user_progress_user_srs ON user_progress (user_id, srs_stage);

-- ============================================================
-- Row Level Security (RLS)
-- ============================================================
ALTER TABLE items                   ENABLE ROW LEVEL SECURITY;
ALTER TABLE item_meanings           ENABLE ROW LEVEL SECURITY;
ALTER TABLE item_readings           ENABLE ROW LEVEL SECURITY;
ALTER TABLE item_context_sentences  ENABLE ROW LEVEL SECURITY;
ALTER TABLE kanji_radicals          ENABLE ROW LEVEL SECURITY;
ALTER TABLE vocabulary_kanjis       ENABLE ROW LEVEL SECURITY;
ALTER TABLE user_progress           ENABLE ROW LEVEL SECURITY;

CREATE POLICY "public_read_items" ON items FOR SELECT USING (true);
CREATE POLICY "public_read_meanings" ON item_meanings FOR SELECT USING (true);
CREATE POLICY "public_read_readings" ON item_readings FOR SELECT USING (true);
CREATE POLICY "public_read_sentences" ON item_context_sentences FOR SELECT USING (true);
CREATE POLICY "public_read_kanji_radicals" ON kanji_radicals FOR SELECT USING (true);
CREATE POLICY "public_read_vocab_kanjis" ON vocabulary_kanjis FOR SELECT USING (true);

CREATE POLICY "user_own_progress" ON user_progress FOR ALL
  USING (auth.uid() = user_id)
  WITH CHECK (auth.uid() = user_id);

-- ============================================================
-- Inisialisasi Progres User (Unlock Radical Level 1 saat buat akun / reset)
-- ============================================================
CREATE OR REPLACE FUNCTION public.initialize_user_progress(p_user_id UUID)
RETURNS void
LANGUAGE plpgsql
SECURITY DEFINER
SET search_path = public
AS $$
BEGIN
  -- Masukkan semua item dengan srs_stage = 0 (Locked)
  INSERT INTO public.user_progress (user_id, item_id, srs_stage, unlocked_at)
  SELECT p_user_id, id, 0, NULL
  FROM public.items
  ON CONFLICT (user_id, item_id) DO NOTHING;

  -- Unlock Radikal Level 1 (srs_stage = 1, unlocked_at = NOW())
  UPDATE public.user_progress
  SET srs_stage = 1, unlocked_at = NOW()
  WHERE user_id = p_user_id
    AND item_id IN (
      SELECT id FROM public.items WHERE level = 1 AND type = 'radical'
    );
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
