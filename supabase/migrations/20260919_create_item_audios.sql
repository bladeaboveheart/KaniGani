CREATE TABLE IF NOT EXISTS item_audios (
  id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  item_id UUID NOT NULL REFERENCES items(id) ON DELETE CASCADE,
  url TEXT NOT NULL,
  content_type TEXT NOT NULL,
  voice_actor_name TEXT NOT NULL,
  gender TEXT NOT NULL,
  created_at TIMESTAMPTZ DEFAULT NOW()
);

CREATE INDEX IF NOT EXISTS idx_item_audios_item_id ON item_audios(item_id);
CREATE INDEX IF NOT EXISTS idx_item_audios_voice_actor ON item_audios(voice_actor_name);

ALTER TABLE item_audios ENABLE ROW LEVEL SECURITY;

DO $$
BEGIN
  IF NOT EXISTS (
    SELECT 1 FROM pg_policies WHERE tablename = 'item_audios' AND policyname = 'Allow public read access to item_audios'
  ) THEN
    CREATE POLICY "Allow public read access to item_audios" ON item_audios FOR SELECT USING (true);
  END IF;

  IF NOT EXISTS (
    SELECT 1 FROM pg_policies WHERE tablename = 'item_audios' AND policyname = 'Allow public insert to item_audios'
  ) THEN
    CREATE POLICY "Allow public insert to item_audios" ON item_audios FOR INSERT WITH CHECK (true);
  END IF;
END
$$;
