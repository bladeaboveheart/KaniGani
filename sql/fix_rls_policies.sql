-- ============================================================
-- KaniGani Migration: Fix RLS Policies for CRUD Operations
-- Jalankan kode ini di Supabase SQL Editor Anda untuk mengaktifkan
-- akses tulis (Insert, Update, Delete) pada tabel-tabel Kamus.
-- ============================================================

-- 1. Drop policy SELECT lama (jika ada) untuk menghindari konflik/redundansi
DROP POLICY IF EXISTS "baca_items" ON public.items;
DROP POLICY IF EXISTS "baca_item_meanings" ON public.item_meanings;
DROP POLICY IF EXISTS "baca_item_readings" ON public.item_readings;
DROP POLICY IF EXISTS "baca_item_context_sentences" ON public.item_context_sentences;
DROP POLICY IF EXISTS "baca_item_prerequisites" ON public.item_prerequisites;

DROP POLICY IF EXISTS "admin_all_items" ON public.items;
DROP POLICY IF EXISTS "admin_all_item_meanings" ON public.item_meanings;
DROP POLICY IF EXISTS "admin_all_item_readings" ON public.item_readings;
DROP POLICY IF EXISTS "admin_all_item_context_sentences" ON public.item_context_sentences;
DROP POLICY IF EXISTS "admin_all_item_prerequisites" ON public.item_prerequisites;

-- 2. Buat policy FOR ALL (Select, Insert, Update, Delete) untuk semua tabel kamus
-- Policy ini mengizinkan semua operasi (baik untuk user biasa maupun admin) demi kemudahan CRUD di prototipe.

CREATE POLICY "admin_all_items" 
  ON public.items FOR ALL 
  USING (true) 
  WITH CHECK (true);

CREATE POLICY "admin_all_item_meanings" 
  ON public.item_meanings FOR ALL 
  USING (true) 
  WITH CHECK (true);

CREATE POLICY "admin_all_item_readings" 
  ON public.item_readings FOR ALL 
  USING (true) 
  WITH CHECK (true);

CREATE POLICY "admin_all_item_context_sentences" 
  ON public.item_context_sentences FOR ALL 
  USING (true) 
  WITH CHECK (true);

CREATE POLICY "admin_all_item_prerequisites" 
  ON public.item_prerequisites FOR ALL 
  USING (true) 
  WITH CHECK (true);
