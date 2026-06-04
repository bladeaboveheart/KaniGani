-- ============================================================
-- KaniGani Database View: view_level_items
-- Jalankan kode ini di Supabase SQL Editor Anda
-- ============================================================

-- Hapus view jika sudah ada
DROP VIEW IF EXISTS public.view_level_items;

-- Buat view untuk memudahkan melihat ringkasan item di setiap level/pangkat
CREATE OR REPLACE VIEW public.view_level_items AS
SELECT 
  i.id,
  i.character,
  i.type,
  i.slug,
  i.level AS legacy_level,
  r.jlpt_level,
  r.name AS rank_name,
  (
    SELECT string_agg(meaning, ', ' ORDER BY primary_meaning DESC) 
    FROM public.item_meanings 
    WHERE item_id = i.id
  ) AS meanings,
  (
    SELECT string_agg(reading, ', ' ORDER BY primary_reading DESC) 
    FROM public.item_readings 
    WHERE item_id = i.id
  ) AS readings
FROM public.items i
LEFT JOIN public.ranks r ON i.rank_id = r.id
ORDER BY r.sort_order ASC, i.level ASC, i.type DESC, i.lesson_position ASC;

-- Grant hak akses SELECT pada view agar bisa dibaca oleh web client / admin dev
GRANT SELECT ON public.view_level_items TO anon, authenticated, service_role;
