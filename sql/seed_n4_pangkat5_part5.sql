SELECT 'd83113f3-557e-441f-ab30-db9b8a226da8', id FROM public.items WHERE type = 'kanji' AND character = '生' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id)
SELECT 'd83113f3-557e-441f-ab30-db9b8a226da8', id FROM public.items WHERE type = 'kanji' AND character = '生' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '09e5444c-9bf6-48b0-aa8d-b64bed32d856', id FROM public.items WHERE type = 'kanji' AND character = '食' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id)
SELECT '09e5444c-9bf6-48b0-aa8d-b64bed32d856', id FROM public.items WHERE type = 'kanji' AND character = '食' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('09e5444c-9bf6-48b0-aa8d-b64bed32d856', 'cfdfb0cb-f43c-4099-a978-07c07b913d11') ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('09e5444c-9bf6-48b0-aa8d-b64bed32d856', 'cfdfb0cb-f43c-4099-a978-07c07b913d11') ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '09e5444c-9bf6-48b0-aa8d-b64bed32d856', id FROM public.items WHERE type = 'kanji' AND character = '品' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id)
SELECT '09e5444c-9bf6-48b0-aa8d-b64bed32d856', id FROM public.items WHERE type = 'kanji' AND character = '品' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '65d2c1fb-32d3-4c85-b558-9bb66f8e036e', id FROM public.items WHERE type = 'kanji' AND character = '来' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id)
SELECT '65d2c1fb-32d3-4c85-b558-9bb66f8e036e', id FROM public.items WHERE type = 'kanji' AND character = '来' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('65d2c1fb-32d3-4c85-b558-9bb66f8e036e', '957310e3-5b90-4355-96b4-5d96d1d9ddbe') ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('65d2c1fb-32d3-4c85-b558-9bb66f8e036e', '957310e3-5b90-4355-96b4-5d96d1d9ddbe') ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('7d7bb37d-160d-4e7d-8096-31a1f4ca8005', '917add9d-33b0-4843-96c2-b5327f4f21c3') ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('7d7bb37d-160d-4e7d-8096-31a1f4ca8005', '917add9d-33b0-4843-96c2-b5327f4f21c3') ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('f90e33d8-c504-4d20-9623-733f86114038', '69927f04-0a86-404d-bca7-3eb9fde99aa1') ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('f90e33d8-c504-4d20-9623-733f86114038', '69927f04-0a86-404d-bca7-3eb9fde99aa1') ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('4a7051c1-3335-40e5-a0d5-6b9096087c1f', 'faaea376-668c-409a-ba35-e6294442da75') ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('4a7051c1-3335-40e5-a0d5-6b9096087c1f', 'faaea376-668c-409a-ba35-e6294442da75') ON CONFLICT DO NOTHING;

-- 7. Initialize progress for all existing profiles
DO $$
DECLARE
  r_profile RECORD;
BEGIN
  FOR r_profile IN SELECT id FROM public.profiles LOOP
    PERFORM public.initialize_user_progress(r_profile.id);
  END LOOP;
END $$;
