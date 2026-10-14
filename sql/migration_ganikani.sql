-- ====================================================
-- GaniKani: Reverse SRS Companion Migration
-- ====================================================

-- 1. Tambah reading_synonyms ke user_item_data jika belum ada
ALTER TABLE public.user_item_data 
ADD COLUMN IF NOT EXISTS reading_synonyms TEXT[] DEFAULT '{}';

-- 2. Buat tabel ganikani_progress untuk tracking reverse SRS
CREATE TABLE IF NOT EXISTS public.ganikani_progress (
  user_id UUID NOT NULL REFERENCES auth.users(id) ON DELETE CASCADE,
  item_id UUID NOT NULL REFERENCES public.items(id) ON DELETE CASCADE,
  srs_stage SMALLINT NOT NULL DEFAULT 1,
  next_review_at TIMESTAMPTZ,
  incorrect_count INT NOT NULL DEFAULT 0,
  streak INT NOT NULL DEFAULT 0,
  created_at TIMESTAMPTZ DEFAULT NOW(),
  updated_at TIMESTAMPTZ DEFAULT NOW(),
  PRIMARY KEY (user_id, item_id)
);

CREATE INDEX IF NOT EXISTS idx_ganikani_progress_user_due 
ON public.ganikani_progress(user_id, next_review_at);

CREATE INDEX IF NOT EXISTS idx_ganikani_progress_user_stage 
ON public.ganikani_progress(user_id, srs_stage);

ALTER TABLE public.ganikani_progress ENABLE ROW LEVEL SECURITY;

DROP POLICY IF EXISTS "Users can manage own ganikani progress" ON public.ganikani_progress;
CREATE POLICY "Users can manage own ganikani progress" ON public.ganikani_progress
  FOR ALL USING (auth.uid() = user_id)
  WITH CHECK (auth.uid() = user_id);

-- 3. Buat tabel ganikani_settings untuk preferensi pengguna
CREATE TABLE IF NOT EXISTS public.ganikani_settings (
  user_id UUID PRIMARY KEY REFERENCES auth.users(id) ON DELETE CASCADE,
  follow BOOLEAN NOT NULL DEFAULT true,
  unlock_stage SMALLINT NOT NULL DEFAULT 5,
  auto_expand_details BOOLEAN NOT NULL DEFAULT false,
  auto_play_audio BOOLEAN NOT NULL DEFAULT false,
  keyboard_shortcuts BOOLEAN NOT NULL DEFAULT true,
  created_at TIMESTAMPTZ DEFAULT NOW(),
  updated_at TIMESTAMPTZ DEFAULT NOW()
);

ALTER TABLE public.ganikani_settings ENABLE ROW LEVEL SECURITY;

DROP POLICY IF EXISTS "Users can manage own ganikani settings" ON public.ganikani_settings;
CREATE POLICY "Users can manage own ganikani settings" ON public.ganikani_settings
  FOR ALL USING (auth.uid() = user_id)
  WITH CHECK (auth.uid() = user_id);
