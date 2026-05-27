-- ============================================================
-- KaniGani Database Patch: Fix Initial User Progress Level
-- Jalankan kode ini di Supabase SQL Editor Anda
-- ============================================================

-- 1. Perbarui fungsi initialize_user_progress agar hanya meng-unlock Radikal Level 1 untuk user baru
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

-- 2. OPSI MEMBERSIHKAN DATA PENGGUNA YANG SUDAH ADA
-- Jalankan query di bawah ini jika Anda ingin mengunci kembali Radikal Level > 1 
-- yang terlanjur terbuka (srs_stage = 1) namun belum pernah di-review oleh user Anda:

UPDATE public.user_progress up
SET srs_stage = 0,
    unlocked_at = NULL
FROM public.items i
WHERE up.item_id = i.id
  AND i.type = 'radical'
  AND i.level > 1
  AND up.next_review IS NULL; -- Hanya mengunci yang belum pernah dipelajari/direview
