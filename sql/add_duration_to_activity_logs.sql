-- ============================================================
-- Migrasi: Menambahkan kolom duration_seconds ke tabel activity_logs
-- ============================================================

ALTER TABLE activity_logs 
  ADD COLUMN IF NOT EXISTS duration_seconds INTEGER DEFAULT 0;

COMMENT ON COLUMN activity_logs.duration_seconds IS 'Durasi aktif dalam satuan detik yang dihabiskan untuk aktivitas ini';
