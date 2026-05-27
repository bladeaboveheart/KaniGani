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
BEGIN
  -- Dapatkan username dari metadata, jika kosong gunakan default random
  v_username := COALESCE(NEW.raw_user_meta_data->>'username', 'user_' || substr(NEW.id::text, 1, 8));

  -- Pastikan username unik di profiles (apabila bentrok tambahkan suffix random)
  WHILE EXISTS (SELECT 1 FROM public.profiles WHERE username = v_username) LOOP
    v_username := 'user_' || substr(md5(random()::text), 1, 8);
  END LOOP;

  -- Sisipkan ke public.profiles
  INSERT INTO public.profiles (id, username, email)
  VALUES (NEW.id, v_username, NEW.email);

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
