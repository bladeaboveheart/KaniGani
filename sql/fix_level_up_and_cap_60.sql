-- =========================================================================
-- KaniGani Database Patch: Fix Level Lock & Expand calculate_user_level to 60 Levels
-- =========================================================================

-- 1. Pastikan default kolom level pada tabel profiles adalah NULL
ALTER TABLE public.profiles ALTER COLUMN level SET DEFAULT NULL;

-- 2. Reset profil yang saat ini memiliki level = 1 menjadi NULL agar kalkulasi dinamis aktif
UPDATE public.profiles SET level = NULL WHERE level = 1;

-- 3. Perbarui fungsi calculate_user_level untuk mendukung hingga Level 60
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
  -- Mendukung hingga Level 60 (maksimal kurikulum WaniKani / KaniGani)
  WHILE v_current_level < 60 LOOP
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
      
    -- Periksa batas kelulusan 90% (>= 0.9)
    IF v_passed_kanji::FLOAT / v_total_kanji::FLOAT >= 0.9 THEN
      v_current_level := v_current_level + 1;
    ELSE
      EXIT;
    END IF;
  END LOOP;
  
  RETURN v_current_level;
END;
$$;
