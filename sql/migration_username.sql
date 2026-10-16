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
  v_base_username TEXT;
  v_counter INT := 0;
BEGIN
  -- 1. Check if user already exists in profiles
  IF EXISTS (SELECT 1 FROM public.profiles WHERE id = NEW.id) THEN
    RETURN NEW;
  END IF;

  -- 2. Ambil username dari metadata jika ada
  v_username := NEW.raw_user_meta_data->>'username';

  -- 3. Jika tidak ada (misal Google OAuth), generate dari email prefix
  IF v_username IS NULL OR char_length(trim(v_username)) < 3 THEN
    v_base_username := lower(regexp_replace(split_part(NEW.email, '@', 1), '[^a-zA-Z0-9_]', '', 'g'));
    IF char_length(v_base_username) < 3 THEN
      v_base_username := 'user_' || v_base_username;
    END IF;
    v_username := v_base_username;

    -- Jika username sudah dipakai orang lain, tambahkan angka random
    WHILE EXISTS (SELECT 1 FROM public.profiles WHERE username = v_username) LOOP
      v_username := v_base_username || floor(1000 + random() * 9000)::text;
      v_counter := v_counter + 1;
      IF v_counter > 50 THEN
        v_username := 'user_' || substr(md5(random()::text), 1, 8);
        EXIT;
      END IF;
    END LOOP;
  ELSE
    WHILE EXISTS (SELECT 1 FROM public.profiles WHERE username = v_username) LOOP
      v_username := v_username || floor(1000 + random() * 9000)::text;
    END LOOP;
  END IF;

  -- Sisipkan ke public.profiles
  INSERT INTO public.profiles (id, username, email)
  VALUES (NEW.id, v_username, NEW.email)
  ON CONFLICT (id) DO NOTHING;

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
