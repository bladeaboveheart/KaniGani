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
    CASE WHEN i.type = 'radical' AND i.level = 1 THEN 1 ELSE 0 END,
    CASE WHEN i.type = 'radical' AND i.level = 1 THEN NOW() ELSE NULL END
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
