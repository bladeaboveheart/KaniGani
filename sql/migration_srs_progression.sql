-- =========================================================================
-- KaniGani Migration: Automatic SRS Stage Progression (Level Up & Rank Up)
-- =========================================================================

-- 1. Drop unused columns from public.user_rank_state
ALTER TABLE public.user_rank_state DROP COLUMN IF EXISTS current_exp;
ALTER TABLE public.user_rank_state DROP COLUMN IF EXISTS exam_unlocked;

-- 2. Update public.on_auth_user_created_rank() trigger function
CREATE OR REPLACE FUNCTION public.on_auth_user_created_rank()
RETURNS trigger
LANGUAGE plpgsql
SECURITY DEFINER
SET search_path = public
AS $$
BEGIN
  INSERT INTO public.user_rank_state (user_id, current_rank_id, has_taken_placement)
  VALUES (NEW.id, 'a1b2c3d4-e5f6-7a8b-9c0d-1e2f3a4b5c6d', FALSE)
  ON CONFLICT (user_id) DO NOTHING;
  RETURN NEW;
END;
$$;

-- 3. Update public.initialize_user_progress() function
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
  INSERT INTO public.user_rank_state (user_id, current_rank_id, has_taken_placement)
  VALUES (p_user_id, 'a1b2c3d4-e5f6-7a8b-9c0d-1e2f3a4b5c6d', FALSE)
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

-- 4. Create trigger function check_user_progression()
CREATE OR REPLACE FUNCTION public.check_user_progression()
RETURNS TRIGGER
LANGUAGE plpgsql
SECURITY DEFINER
SET search_path = public
AS $$
DECLARE
  v_user_id UUID;
  v_current_rank_id UUID;
  v_current_sort_order INT;
  v_current_jlpt_level TEXT;
  v_next_rank_id UUID;
  v_next_sort_order INT;
  v_next_jlpt_level TEXT;
  v_total_kanji INT;
  v_passed_kanji INT;
  v_advanced BOOLEAN := TRUE;
BEGIN
  v_user_id := NEW.user_id;

  WHILE v_advanced LOOP
    v_advanced := FALSE;

    -- 1. Get current rank of the user
    SELECT urs.current_rank_id, r.sort_order, r.jlpt_level
    INTO v_current_rank_id, v_current_sort_order, v_current_jlpt_level
    FROM public.user_rank_state urs
    JOIN public.ranks r ON urs.current_rank_id = r.id
    WHERE urs.user_id = v_user_id;

    IF v_current_rank_id IS NULL THEN
      EXIT;
    END IF;

    -- 2. Find the next rank by sort_order
    SELECT id, sort_order, jlpt_level
    INTO v_next_rank_id, v_next_sort_order, v_next_jlpt_level
    FROM public.ranks
    WHERE sort_order > v_current_sort_order
    ORDER BY sort_order ASC
    LIMIT 1;

    IF v_next_rank_id IS NULL THEN
      EXIT;
    END IF;

    -- 3. Check progression condition
    IF v_next_jlpt_level = v_current_jlpt_level THEN
      -- A. Rank Up (same JLPT level)
      -- Condition: srs_stage >= 5 on >= 85% of TOTAL 'kanji' items in current active rank
      SELECT COUNT(*)
      INTO v_total_kanji
      FROM public.items
      WHERE rank_id = v_current_rank_id AND type = 'kanji';

      IF v_total_kanji > 0 THEN
        SELECT COUNT(*)
        INTO v_passed_kanji
        FROM public.items i
        JOIN public.user_progress up ON i.id = up.item_id
        WHERE i.rank_id = v_current_rank_id 
          AND i.type = 'kanji' 
          AND up.user_id = v_user_id 
          AND up.srs_stage >= 5;

        IF (v_passed_kanji::FLOAT / v_total_kanji::FLOAT) >= 0.85 THEN
          v_advanced := TRUE;
        END IF;
      ELSE
        v_advanced := TRUE;
      END IF;

    ELSE
      -- B. Level Up (different JLPT level)
      -- Condition: srs_stage >= 5 on >= 85% of TOTAL 'kanji' items in ALL ranks of current JLPT level
      SELECT COUNT(*)
      INTO v_total_kanji
      FROM public.items i
      JOIN public.ranks r ON i.rank_id = r.id
      WHERE r.jlpt_level = v_current_jlpt_level AND i.type = 'kanji';

      IF v_total_kanji > 0 THEN
        SELECT COUNT(*)
        INTO v_passed_kanji
        FROM public.items i
        JOIN public.ranks r ON i.rank_id = r.id
        JOIN public.user_progress up ON i.id = up.item_id
        WHERE r.jlpt_level = v_current_jlpt_level
          AND i.type = 'kanji'
          AND up.user_id = v_user_id
          AND up.srs_stage >= 5;

        IF (v_passed_kanji::FLOAT / v_total_kanji::FLOAT) >= 0.85 THEN
          v_advanced := TRUE;
        END IF;
      ELSE
        v_advanced := TRUE;
      END IF;
    END IF;

    -- 4. Execute transition
    IF v_advanced THEN
      UPDATE public.user_rank_state
      SET current_rank_id = v_next_rank_id,
          updated_at = NOW()
      WHERE user_id = v_user_id;

      -- Automatically insert items for the new rank
      -- Radicals start at srs_stage = 1 & unlocked_at = NOW(). Kanji & Vocab at srs_stage = 0 & unlocked_at = NULL.
      INSERT INTO public.user_progress (user_id, item_id, srs_stage, unlocked_at, next_review)
      SELECT 
        v_user_id,
        i.id,
        CASE WHEN i.type = 'radical' THEN 1 ELSE 0 END,
        CASE WHEN i.type = 'radical' THEN NOW() ELSE NULL END,
        NULL
      FROM public.items i
      WHERE i.rank_id = v_next_rank_id
      ON CONFLICT (user_id, item_id) DO UPDATE
      SET srs_stage = EXCLUDED.srs_stage,
          unlocked_at = EXCLUDED.unlocked_at,
          next_review = EXCLUDED.next_review
      WHERE user_progress.srs_stage = 0 AND user_progress.next_review IS NULL;
    END IF;

  END LOOP;

  RETURN NEW;
END;
$$;

-- 5. Attach trigger to user_progress
DROP TRIGGER IF EXISTS trg_check_user_progression ON public.user_progress;
CREATE TRIGGER trg_check_user_progression
  AFTER INSERT OR UPDATE OF srs_stage ON public.user_progress
  FOR EACH ROW
  EXECUTE FUNCTION public.check_user_progression();
