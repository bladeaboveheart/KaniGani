-- ============================================================
-- Tabel activity_logs: Mencatat setiap aktivitas review & lesson
-- ============================================================

CREATE TABLE IF NOT EXISTS activity_logs (
  id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  user_id UUID NOT NULL REFERENCES auth.users(id) ON DELETE CASCADE,
  activity_type TEXT NOT NULL CHECK (activity_type IN ('review', 'lesson')),
  item_count INTEGER NOT NULL DEFAULT 1,
  created_at TIMESTAMPTZ NOT NULL DEFAULT now()
);

-- Index untuk query heatmap yang cepat
CREATE INDEX IF NOT EXISTS idx_activity_logs_user_date
  ON activity_logs (user_id, created_at);

-- RLS: Aktifkan dan buat policy
ALTER TABLE activity_logs ENABLE ROW LEVEL SECURITY;

-- Policy: User hanya bisa melihat log mereka sendiri
CREATE POLICY "Users can view own activity logs"
  ON activity_logs FOR SELECT
  USING (auth.uid() = user_id);

-- Policy: User bisa insert log mereka sendiri
CREATE POLICY "Users can insert own activity logs"
  ON activity_logs FOR INSERT
  WITH CHECK (auth.uid() = user_id);
