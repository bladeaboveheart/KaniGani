-- =========================================================================
-- KaniGani Migration: Add Leech Tracking & Review Statistics Columns
-- Jalankan skrip ini di SQL Editor Supabase Anda
-- =========================================================================

-- Tambahkan kolom statistik review dan pelacakan kesalahan pada public.user_progress
ALTER TABLE public.user_progress 
  ADD COLUMN IF NOT EXISTS incorrect_count INT DEFAULT 0,
  ADD COLUMN IF NOT EXISTS correct_count INT DEFAULT 0,
  ADD COLUMN IF NOT EXISTS current_streak INT DEFAULT 0,
  ADD COLUMN IF NOT EXISTS max_streak INT DEFAULT 0,
  ADD COLUMN IF NOT EXISTS meaning_incorrect INT DEFAULT 0,
  ADD COLUMN IF NOT EXISTS reading_incorrect INT DEFAULT 0,
  ADD COLUMN IF NOT EXISTS last_reviewed_at TIMESTAMPTZ DEFAULT NULL;

-- Berikan komentar deskriptif pada kolom-kolom baru
COMMENT ON COLUMN public.user_progress.incorrect_count IS 'Total akumulasi kesalahan jawaban untuk item ini';
COMMENT ON COLUMN public.user_progress.correct_count IS 'Total akumulasi jawaban benar untuk item ini';
COMMENT ON COLUMN public.user_progress.current_streak IS 'Streak jawaban benar saat ini berturut-turut';
COMMENT ON COLUMN public.user_progress.max_streak IS 'Rekor streak jawaban benar tertinggi yang pernah dicapai';
COMMENT ON COLUMN public.user_progress.meaning_incorrect IS 'Total kesalahan spesifik pada arti/makna item';
COMMENT ON COLUMN public.user_progress.reading_incorrect IS 'Total kesalahan spesifik pada cara baca (reading) item';
COMMENT ON COLUMN public.user_progress.last_reviewed_at IS 'Waktu terakhir item ini diulas oleh pengguna';
