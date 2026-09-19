-- Migration: Create item_similar_kanji table for Visually Similar Kanji feature
CREATE TABLE IF NOT EXISTS public.item_similar_kanji (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    item_id UUID NOT NULL REFERENCES public.items(id) ON DELETE CASCADE,
    similar_item_id UUID NOT NULL REFERENCES public.items(id) ON DELETE CASCADE,
    created_at TIMESTAMPTZ DEFAULT now(),
    CONSTRAINT uq_item_similar_pair UNIQUE(item_id, similar_item_id)
);

-- Performance Indexes for fast lookups in both directions
CREATE INDEX IF NOT EXISTS idx_similar_kanji_item_id ON public.item_similar_kanji(item_id);
CREATE INDEX IF NOT EXISTS idx_similar_kanji_similar_id ON public.item_similar_kanji(similar_item_id);

-- Enable Row Level Security (RLS)
ALTER TABLE public.item_similar_kanji ENABLE ROW LEVEL SECURITY;

-- Allow public read access (authenticated & anon users)
DO $$
BEGIN
    IF NOT EXISTS (
        SELECT 1 FROM pg_policies 
        WHERE tablename = 'item_similar_kanji' 
        AND policyname = 'Allow public read item_similar_kanji'
    ) THEN
        CREATE POLICY "Allow public read item_similar_kanji"
            ON public.item_similar_kanji
            FOR SELECT
            TO anon, authenticated
            USING (true);
    END IF;
END $$;

-- Allow service role full access
DO $$
BEGIN
    IF NOT EXISTS (
        SELECT 1 FROM pg_policies 
        WHERE tablename = 'item_similar_kanji' 
        AND policyname = 'Allow service_role full access item_similar_kanji'
    ) THEN
        CREATE POLICY "Allow service_role full access item_similar_kanji"
            ON public.item_similar_kanji
            FOR ALL
            TO service_role
            USING (true)
            WITH CHECK (true);
    END IF;
END $$;
