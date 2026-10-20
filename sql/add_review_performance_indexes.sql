-- =========================================================================
-- KaniGani Database Performance Optimization: Review & Relation Indexes
-- Solves statement timeout (code 57014) when users have thousands of reviews (e.g. level 60 admin override)
-- =========================================================================

-- 1. Index on item_context_sentences(item_id) to prevent full-table sequential scan on every item nested lookup
CREATE INDEX IF NOT EXISTS idx_item_context_sentences_item_id 
ON public.item_context_sentences (item_id);

-- 2. Composite index on user_progress for fast SRS review filtering and sorting
CREATE INDEX IF NOT EXISTS idx_user_progress_review_lookup 
ON public.user_progress (user_id, srs_stage, next_review);

-- 3. Index on user_progress next_review ordering
CREATE INDEX IF NOT EXISTS idx_user_progress_next_review 
ON public.user_progress (user_id, next_review);
