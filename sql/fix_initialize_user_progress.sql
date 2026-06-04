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
