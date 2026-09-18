-- ====================================================
-- KaniGani: WaniKani Integration Migration
-- ====================================================

-- 1. Tambahkan kolom wanikani_api_key pada profiles (opsional)
ALTER TABLE public.profiles ADD COLUMN IF NOT EXISTS wanikani_api_key TEXT;

-- 2. Tambahkan kolom wanikani_id pada items
ALTER TABLE public.items ADD COLUMN IF NOT EXISTS wanikani_id INTEGER;
CREATE UNIQUE INDEX IF NOT EXISTS idx_items_wanikani_id ON public.items(wanikani_id);
CREATE INDEX IF NOT EXISTS idx_items_type_level_pos ON public.items(type, level, lesson_position);

-- 3. Tabel privat user_integrations dengan RLS ketat
CREATE TABLE IF NOT EXISTS public.user_integrations (
  user_id UUID PRIMARY KEY REFERENCES auth.users(id) ON DELETE CASCADE,
  wanikani_api_key TEXT,
  wanikani_username TEXT,
  wanikani_level INT,
  last_synced_at TIMESTAMPTZ,
  created_at TIMESTAMPTZ DEFAULT now(),
  updated_at TIMESTAMPTZ DEFAULT now()
);

ALTER TABLE public.user_integrations ENABLE ROW LEVEL SECURITY;

DROP POLICY IF EXISTS "Users can only select own integration" ON public.user_integrations;
CREATE POLICY "Users can only select own integration" ON public.user_integrations
  FOR SELECT USING (auth.uid() = user_id);

DROP POLICY IF EXISTS "Users can only insert own integration" ON public.user_integrations;
CREATE POLICY "Users can only insert own integration" ON public.user_integrations
  FOR INSERT WITH CHECK (auth.uid() = user_id);

DROP POLICY IF EXISTS "Users can only update own integration" ON public.user_integrations;
CREATE POLICY "Users can only update own integration" ON public.user_integrations
  FOR UPDATE USING (auth.uid() = user_id);

DROP POLICY IF EXISTS "Users can only delete own integration" ON public.user_integrations;
CREATE POLICY "Users can only delete own integration" ON public.user_integrations
  FOR DELETE USING (auth.uid() = user_id);

-- 4. RPC Function untuk bulk sinkronisasi WaniKani ke KaniGani
CREATE OR REPLACE FUNCTION public.sync_wanikani_progress(
  p_user_id UUID,
  p_user_level INT,
  p_progress jsonb
)
RETURNS jsonb
LANGUAGE plpgsql
SECURITY DEFINER
AS $$
DECLARE
  v_updated INT := 0;
  v_inserted INT := 0;
BEGIN
  -- 1. Upsert user_progress menggunakan mapping wanikani_id ke item_id
  WITH payload AS (
    SELECT
      (elem->>'wk_id')::int AS wk_id,
      (elem->>'srs_stage')::int AS srs_stage,
      (elem->>'unlocked_at')::timestamptz AS unlocked_at,
      (elem->>'next_review')::timestamptz AS next_review
    FROM jsonb_array_elements(p_progress) AS elem
  ),
  mapped AS (
    SELECT
      p_user_id AS user_id,
      i.id AS item_id,
      p.srs_stage,
      COALESCE(p.unlocked_at, NOW()) AS unlocked_at,
      p.next_review
    FROM payload p
    JOIN public.items i ON i.wanikani_id = p.wk_id
  ),
  upserted AS (
    INSERT INTO public.user_progress (user_id, item_id, srs_stage, unlocked_at, next_review)
    SELECT user_id, item_id, srs_stage, unlocked_at, next_review
    FROM mapped
    ON CONFLICT (user_id, item_id) DO UPDATE
    SET
      srs_stage = EXCLUDED.srs_stage,
      unlocked_at = EXCLUDED.unlocked_at,
      next_review = EXCLUDED.next_review
    RETURNING (xmax = 0) AS is_insert
  )
  SELECT
    COUNT(*) FILTER (WHERE is_insert),
    COUNT(*) FILTER (WHERE NOT is_insert)
  INTO v_inserted, v_updated
  FROM upserted;

  -- 2. Perbarui profiles.level mengikuti WaniKani
  IF p_user_level IS NOT NULL AND p_user_level > 0 THEN
    UPDATE public.profiles
    SET level = p_user_level
    WHERE id = p_user_id;
  END IF;

  RETURN jsonb_build_object(
    'success', true,
    'inserted', v_inserted,
    'updated', v_updated,
    'total', v_inserted + v_updated
  );
END;
$$;
