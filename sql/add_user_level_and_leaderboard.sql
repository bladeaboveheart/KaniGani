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
