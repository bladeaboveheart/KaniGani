-- ============================================================
-- KaniGani Database Patch: Relock Future Items
-- Jalankan kode ini di Supabase SQL Editor Anda
-- ============================================================

-- Kunci kembali item Level > 1 yang sempat terbuka (srs_stage = 1)
-- secara tidak sengaja oleh pengguna yang belum mencapai level tersebut,
-- dengan catatan materi tersebut belum pernah dipelajari (next_review IS NULL).
UPDATE public.user_progress up
SET srs_stage = 0,
    unlocked_at = NULL,
    next_review = NULL
FROM public.items i
WHERE up.item_id = i.id
  AND i.level > 1
  AND up.next_review IS NULL;
