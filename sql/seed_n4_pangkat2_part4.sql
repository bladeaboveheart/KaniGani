INSERT INTO public.kanji_radicals (kanji_id, radical_id)
SELECT '69e2c7c0-fadb-4b39-a3e5-5ee09cf529da', id FROM public.items WHERE type = 'radical' AND slug = 'moon' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '466fbeaa-f861-45dc-9ce9-c68e534212ec', id FROM public.items WHERE type = 'radical' AND slug = 'color' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.kanji_radicals (kanji_id, radical_id)
SELECT '466fbeaa-f861-45dc-9ce9-c68e534212ec', id FROM public.items WHERE type = 'radical' AND slug = 'color' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT 'f2cf511f-12ec-48e0-b828-17cfe918df7d', id FROM public.items WHERE type = 'radical' AND slug = 'roof' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.kanji_radicals (kanji_id, radical_id)
SELECT 'f2cf511f-12ec-48e0-b828-17cfe918df7d', id FROM public.items WHERE type = 'radical' AND slug = 'roof' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT 'f2cf511f-12ec-48e0-b828-17cfe918df7d', id FROM public.items WHERE type = 'radical' AND slug = 'child' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.kanji_radicals (kanji_id, radical_id)
SELECT 'f2cf511f-12ec-48e0-b828-17cfe918df7d', id FROM public.items WHERE type = 'radical' AND slug = 'child' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '1b3eb9f0-3351-457f-9304-80123823e6e6', id FROM public.items WHERE type = 'radical' AND slug = 'meat' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.kanji_radicals (kanji_id, radical_id)
SELECT '1b3eb9f0-3351-457f-9304-80123823e6e6', id FROM public.items WHERE type = 'radical' AND slug = 'meat' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '5689130e-e5df-4dc4-8171-a4f85944d03e', id FROM public.items WHERE type = 'radical' AND slug = 'say' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.kanji_radicals (kanji_id, radical_id)
SELECT '5689130e-e5df-4dc4-8171-a4f85944d03e', id FROM public.items WHERE type = 'radical' AND slug = 'say' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT 'bd3e3324-b7ba-49f1-bc11-4d725d37b0ed', id FROM public.items WHERE type = 'radical' AND slug = 'leader' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.kanji_radicals (kanji_id, radical_id)
SELECT 'bd3e3324-b7ba-49f1-bc11-4d725d37b0ed', id FROM public.items WHERE type = 'radical' AND slug = 'leader' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT 'bd3e3324-b7ba-49f1-bc11-4d725d37b0ed', id FROM public.items WHERE type = 'radical' AND slug = 'book' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.kanji_radicals (kanji_id, radical_id)
SELECT 'bd3e3324-b7ba-49f1-bc11-4d725d37b0ed', id FROM public.items WHERE type = 'radical' AND slug = 'book' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT 'ad8a055b-957d-43a1-ba74-6791c405ccb5', id FROM public.items WHERE type = 'radical' AND slug = 'leader' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.kanji_radicals (kanji_id, radical_id)
SELECT 'ad8a055b-957d-43a1-ba74-6791c405ccb5', id FROM public.items WHERE type = 'radical' AND slug = 'leader' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT 'ad8a055b-957d-43a1-ba74-6791c405ccb5', id FROM public.items WHERE type = 'radical' AND slug = 'key' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.kanji_radicals (kanji_id, radical_id)
SELECT 'ad8a055b-957d-43a1-ba74-6791c405ccb5', id FROM public.items WHERE type = 'radical' AND slug = 'key' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '009766e6-79e6-48b5-b07f-ffad16df62b0', id FROM public.items WHERE type = 'radical' AND slug = 'grain' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.kanji_radicals (kanji_id, radical_id)
SELECT '009766e6-79e6-48b5-b07f-ffad16df62b0', id FROM public.items WHERE type = 'radical' AND slug = 'grain' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '009766e6-79e6-48b5-b07f-ffad16df62b0', id FROM public.items WHERE type = 'radical' AND slug = 'private' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.kanji_radicals (kanji_id, radical_id)
SELECT '009766e6-79e6-48b5-b07f-ffad16df62b0', id FROM public.items WHERE type = 'radical' AND slug = 'private' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT 'ccf3fa1d-701b-469a-b812-f45c21b4c9e0', id FROM public.items WHERE type = 'radical' AND slug = 'spirit' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.kanji_radicals (kanji_id, radical_id)
SELECT 'ccf3fa1d-701b-469a-b812-f45c21b4c9e0', id FROM public.items WHERE type = 'radical' AND slug = 'spirit' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT 'ccf3fa1d-701b-469a-b812-f45c21b4c9e0', id FROM public.items WHERE type = 'radical' AND slug = 'dirt' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.kanji_radicals (kanji_id, radical_id)
SELECT 'ccf3fa1d-701b-469a-b812-f45c21b4c9e0', id FROM public.items WHERE type = 'radical' AND slug = 'dirt' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '2df7e287-2802-4a56-af0a-202b5a3673ff', id FROM public.items WHERE type = 'radical' AND slug = 'mouth' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.kanji_radicals (kanji_id, radical_id)
SELECT '2df7e287-2802-4a56-af0a-202b5a3673ff', id FROM public.items WHERE type = 'radical' AND slug = 'mouth' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '2df7e287-2802-4a56-af0a-202b5a3673ff', id FROM public.items WHERE type = 'radical' AND slug = 'sword' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.kanji_radicals (kanji_id, radical_id)
SELECT '2df7e287-2802-4a56-af0a-202b5a3673ff', id FROM public.items WHERE type = 'radical' AND slug = 'sword' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '2df7e287-2802-4a56-af0a-202b5a3673ff', id FROM public.items WHERE type = 'radical' AND slug = 'knife' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.kanji_radicals (kanji_id, radical_id)
SELECT '2df7e287-2802-4a56-af0a-202b5a3673ff', id FROM public.items WHERE type = 'radical' AND slug = 'knife' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '8e3d0b44-43f1-4ff8-b6ee-6d1e4195164a', id FROM public.items WHERE type = 'radical' AND slug = 'scooter' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.kanji_radicals (kanji_id, radical_id)
SELECT '8e3d0b44-43f1-4ff8-b6ee-6d1e4195164a', id FROM public.items WHERE type = 'radical' AND slug = 'scooter' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '8e3d0b44-43f1-4ff8-b6ee-6d1e4195164a', id FROM public.items WHERE type = 'radical' AND slug = 'axe' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.kanji_radicals (kanji_id, radical_id)
SELECT '8e3d0b44-43f1-4ff8-b6ee-6d1e4195164a', id FROM public.items WHERE type = 'radical' AND slug = 'axe' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT 'bd9d5a8b-6687-498d-a06b-d61b59a290c6', id FROM public.items WHERE type = 'radical' AND slug = 'self' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.kanji_radicals (kanji_id, radical_id)
SELECT 'bd9d5a8b-6687-498d-a06b-d61b59a290c6', id FROM public.items WHERE type = 'radical' AND slug = 'self' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT 'bd9d5a8b-6687-498d-a06b-d61b59a290c6', id FROM public.items WHERE type = 'radical' AND slug = 'slide' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.kanji_radicals (kanji_id, radical_id)
SELECT 'bd9d5a8b-6687-498d-a06b-d61b59a290c6', id FROM public.items WHERE type = 'radical' AND slug = 'slide' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT 'c64c78b7-349a-480b-8d25-334b58b9a9cf', id FROM public.items WHERE type = 'radical' AND slug = 'foot' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.kanji_radicals (kanji_id, radical_id)
SELECT 'c64c78b7-349a-480b-8d25-334b58b9a9cf', id FROM public.items WHERE type = 'radical' AND slug = 'foot' LIMIT 1 ON CONFLICT DO NOTHING;

-- 6. Insert Vocab-to-Kanji Prerequisites
INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('7e0227c6-891e-4e33-af87-cf37a362c437', '72d9015a-283b-4ede-a2f4-afd65001dc7f') ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('7e0227c6-891e-4e33-af87-cf37a362c437', '72d9015a-283b-4ede-a2f4-afd65001dc7f') ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('6a8ec0b2-29e2-4b19-b9f7-a9ccc38f54a7', '72d9015a-283b-4ede-a2f4-afd65001dc7f') ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('6a8ec0b2-29e2-4b19-b9f7-a9ccc38f54a7', '72d9015a-283b-4ede-a2f4-afd65001dc7f') ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('2685a800-3d32-4359-9146-5b25f73f06b0', '65c6851b-7081-47a0-8059-ee9618433ee9') ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('2685a800-3d32-4359-9146-5b25f73f06b0', '65c6851b-7081-47a0-8059-ee9618433ee9') ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('4b84fc36-fe60-4d28-84c0-291ae0528a95', 'be7b7c13-8c99-45ed-ac0a-632e895a9a01') ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('4b84fc36-fe60-4d28-84c0-291ae0528a95', 'be7b7c13-8c99-45ed-ac0a-632e895a9a01') ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '83e0e067-23de-41d0-ac0f-df089a7dd5ad', id FROM public.items WHERE type = 'kanji' AND character = '中' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id)
SELECT '83e0e067-23de-41d0-ac0f-df089a7dd5ad', id FROM public.items WHERE type = 'kanji' AND character = '中' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('83e0e067-23de-41d0-ac0f-df089a7dd5ad', 'be7b7c13-8c99-45ed-ac0a-632e895a9a01') ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('83e0e067-23de-41d0-ac0f-df089a7dd5ad', 'be7b7c13-8c99-45ed-ac0a-632e895a9a01') ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('efebba90-440b-4eb6-9bc2-c64dbd27ea91', '8876edc5-41bb-4478-9fd9-9ab384f7deb2') ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('efebba90-440b-4eb6-9bc2-c64dbd27ea91', '8876edc5-41bb-4478-9fd9-9ab384f7deb2') ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '0fd64212-b1f8-4426-b8b2-4cf00a40dca9', id FROM public.items WHERE type = 'kanji' AND character = '名' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id)
SELECT '0fd64212-b1f8-4426-b8b2-4cf00a40dca9', id FROM public.items WHERE type = 'kanji' AND character = '名' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('0fd64212-b1f8-4426-b8b2-4cf00a40dca9', 'f2cf511f-12ec-48e0-b828-17cfe918df7d') ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('0fd64212-b1f8-4426-b8b2-4cf00a40dca9', 'f2cf511f-12ec-48e0-b828-17cfe918df7d') ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('e6b494fb-ff53-4d12-8c8e-c3de096a17a4', 'f2cf511f-12ec-48e0-b828-17cfe918df7d') ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('e6b494fb-ff53-4d12-8c8e-c3de096a17a4', 'f2cf511f-12ec-48e0-b828-17cfe918df7d') ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT 'c70b0764-350b-4522-a615-efb481403211', id FROM public.items WHERE type = 'kanji' AND character = '文' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id)
SELECT 'c70b0764-350b-4522-a615-efb481403211', id FROM public.items WHERE type = 'kanji' AND character = '文' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('c70b0764-350b-4522-a615-efb481403211', 'f2cf511f-12ec-48e0-b828-17cfe918df7d') ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('c70b0764-350b-4522-a615-efb481403211', 'f2cf511f-12ec-48e0-b828-17cfe918df7d') ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '9d426aef-e6e4-41e9-af92-0b4c73e79b5b', id FROM public.items WHERE type = 'kanji' AND character = '一' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id)
SELECT '9d426aef-e6e4-41e9-af92-0b4c73e79b5b', id FROM public.items WHERE type = 'kanji' AND character = '一' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '9d426aef-e6e4-41e9-af92-0b4c73e79b5b', id FROM public.items WHERE type = 'kanji' AND character = '文' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id)
SELECT '9d426aef-e6e4-41e9-af92-0b4c73e79b5b', id FROM public.items WHERE type = 'kanji' AND character = '文' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('9d426aef-e6e4-41e9-af92-0b4c73e79b5b', 'f2cf511f-12ec-48e0-b828-17cfe918df7d') ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('9d426aef-e6e4-41e9-af92-0b4c73e79b5b', 'f2cf511f-12ec-48e0-b828-17cfe918df7d') ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '2ffbe878-636e-432c-a267-9712bcf184b8', id FROM public.items WHERE type = 'kanji' AND character = '大' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id)
SELECT '2ffbe878-636e-432c-a267-9712bcf184b8', id FROM public.items WHERE type = 'kanji' AND character = '大' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '2ffbe878-636e-432c-a267-9712bcf184b8', id FROM public.items WHERE type = 'kanji' AND character = '文' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id)
SELECT '2ffbe878-636e-432c-a267-9712bcf184b8', id FROM public.items WHERE type = 'kanji' AND character = '文' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('2ffbe878-636e-432c-a267-9712bcf184b8', 'f2cf511f-12ec-48e0-b828-17cfe918df7d') ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('2ffbe878-636e-432c-a267-9712bcf184b8', 'f2cf511f-12ec-48e0-b828-17cfe918df7d') ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('c9f9aa7b-b281-434a-a61f-e97d6e4907f8', '205feb54-24cb-4604-8d4d-5e752f320441') ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('c9f9aa7b-b281-434a-a61f-e97d6e4907f8', '205feb54-24cb-4604-8d4d-5e752f320441') ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT 'c9f9aa7b-b281-434a-a61f-e97d6e4907f8', id FROM public.items WHERE type = 'kanji' AND character = '年' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id)
SELECT 'c9f9aa7b-b281-434a-a61f-e97d6e4907f8', id FROM public.items WHERE type = 'kanji' AND character = '年' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('4b36b063-116b-4e80-aeec-9f4dde0072ca', '69c8b732-e0ca-4c50-beed-271ae9beaf8b') ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('4b36b063-116b-4e80-aeec-9f4dde0072ca', '69c8b732-e0ca-4c50-beed-271ae9beaf8b') ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('c0485a5f-8070-45b4-a032-33f3a00212be', '69c8b732-e0ca-4c50-beed-271ae9beaf8b') ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('c0485a5f-8070-45b4-a032-33f3a00212be', '69c8b732-e0ca-4c50-beed-271ae9beaf8b') ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('b8c04a52-effd-41cc-9b28-a517b84c8377', 'c64c78b7-349a-480b-8d25-334b58b9a9cf') ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('b8c04a52-effd-41cc-9b28-a517b84c8377', 'c64c78b7-349a-480b-8d25-334b58b9a9cf') ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('61f4657f-8085-4a26-ab6b-ff96081dfbaf', 'c64c78b7-349a-480b-8d25-334b58b9a9cf') ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('61f4657f-8085-4a26-ab6b-ff96081dfbaf', 'c64c78b7-349a-480b-8d25-334b58b9a9cf') ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT 'da335c6e-ab2a-4bd8-9fe4-aaec4105a3bc', id FROM public.items WHERE type = 'kanji' AND character = '不' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id)
SELECT 'da335c6e-ab2a-4bd8-9fe4-aaec4105a3bc', id FROM public.items WHERE type = 'kanji' AND character = '不' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('da335c6e-ab2a-4bd8-9fe4-aaec4105a3bc', 'c64c78b7-349a-480b-8d25-334b58b9a9cf') ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('da335c6e-ab2a-4bd8-9fe4-aaec4105a3bc', 'c64c78b7-349a-480b-8d25-334b58b9a9cf') ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('df567719-f097-4384-b5ed-335766fec971', 'f88dfc1a-284f-4117-8d5d-8bff7bb46e15') ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('df567719-f097-4384-b5ed-335766fec971', 'f88dfc1a-284f-4117-8d5d-8bff7bb46e15') ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('6d2b7ac0-e461-4fc0-bd1a-d635e5e87542', 'f88dfc1a-284f-4117-8d5d-8bff7bb46e15') ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('6d2b7ac0-e461-4fc0-bd1a-d635e5e87542', 'f88dfc1a-284f-4117-8d5d-8bff7bb46e15') ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '2c360e40-ee86-43fc-b825-f940909e9825', id FROM public.items WHERE type = 'kanji' AND character = '大' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id)
SELECT '2c360e40-ee86-43fc-b825-f940909e9825', id FROM public.items WHERE type = 'kanji' AND character = '大' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('2c360e40-ee86-43fc-b825-f940909e9825', '4bf9164a-ae65-41fb-95bc-0f16d486acbc') ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('2c360e40-ee86-43fc-b825-f940909e9825', '4bf9164a-ae65-41fb-95bc-0f16d486acbc') ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('7aaab382-385b-4859-a8e7-f4eb67b20436', '4bf9164a-ae65-41fb-95bc-0f16d486acbc') ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('7aaab382-385b-4859-a8e7-f4eb67b20436', '4bf9164a-ae65-41fb-95bc-0f16d486acbc') ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('f3299fee-acb8-4723-913e-c7d7b17f8465', '5c4c770c-f9e7-49be-8bcf-d718aff12ec9') ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('f3299fee-acb8-4723-913e-c7d7b17f8465', '5c4c770c-f9e7-49be-8bcf-d718aff12ec9') ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('bb0115d2-fa71-4861-a6ea-2f15e828ab06', '5c4c770c-f9e7-49be-8bcf-d718aff12ec9') ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('bb0115d2-fa71-4861-a6ea-2f15e828ab06', '5c4c770c-f9e7-49be-8bcf-d718aff12ec9') ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT 'bb0115d2-fa71-4861-a6ea-2f15e828ab06', id FROM public.items WHERE type = 'kanji' AND character = '日' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id)
SELECT 'bb0115d2-fa71-4861-a6ea-2f15e828ab06', id FROM public.items WHERE type = 'kanji' AND character = '日' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('5705e2fb-70a5-4e67-a508-1ede7d386b22', '0f457b18-22e5-4fde-a772-cb6efe5b2f7a') ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('5705e2fb-70a5-4e67-a508-1ede7d386b22', '0f457b18-22e5-4fde-a772-cb6efe5b2f7a') ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('995d671a-15a9-4f66-8ca4-446712df9135', '0f457b18-22e5-4fde-a772-cb6efe5b2f7a') ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('995d671a-15a9-4f66-8ca4-446712df9135', '0f457b18-22e5-4fde-a772-cb6efe5b2f7a') ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '995d671a-15a9-4f66-8ca4-446712df9135', id FROM public.items WHERE type = 'kanji' AND character = '分' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id)
SELECT '995d671a-15a9-4f66-8ca4-446712df9135', id FROM public.items WHERE type = 'kanji' AND character = '分' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('3cad3622-3750-4983-977f-27442b6d6b5e', '971e847f-cb01-45cf-b0a1-16b67338d6e5') ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('3cad3622-3750-4983-977f-27442b6d6b5e', '971e847f-cb01-45cf-b0a1-16b67338d6e5') ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('aa53743f-e222-4728-8cca-f184ed98148d', '971e847f-cb01-45cf-b0a1-16b67338d6e5') ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('aa53743f-e222-4728-8cca-f184ed98148d', '971e847f-cb01-45cf-b0a1-16b67338d6e5') ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('68631048-f426-4e6f-894d-34a349e82d8c', '971e847f-cb01-45cf-b0a1-16b67338d6e5') ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('68631048-f426-4e6f-894d-34a349e82d8c', '971e847f-cb01-45cf-b0a1-16b67338d6e5') ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '68631048-f426-4e6f-894d-34a349e82d8c', id FROM public.items WHERE type = 'kanji' AND character = '方' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id)
SELECT '68631048-f426-4e6f-894d-34a349e82d8c', id FROM public.items WHERE type = 'kanji' AND character = '方' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('e2a56be5-70e1-4a74-a5db-586352f0ca2a', '1b3eb9f0-3351-457f-9304-80123823e6e6') ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('e2a56be5-70e1-4a74-a5db-586352f0ca2a', '1b3eb9f0-3351-457f-9304-80123823e6e6') ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT 'e1514a84-9b8b-48d7-925f-9d9c9468961d', id FROM public.items WHERE type = 'kanji' AND character = '牛' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id)
SELECT 'e1514a84-9b8b-48d7-925f-9d9c9468961d', id FROM public.items WHERE type = 'kanji' AND character = '牛' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('e1514a84-9b8b-48d7-925f-9d9c9468961d', '1b3eb9f0-3351-457f-9304-80123823e6e6') ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('e1514a84-9b8b-48d7-925f-9d9c9468961d', '1b3eb9f0-3351-457f-9304-80123823e6e6') ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('7ca73d80-942b-4913-af7b-9211d6fe9348', 'dc496f9c-c6b3-4a1e-ba63-d85f90766283') ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('7ca73d80-942b-4913-af7b-9211d6fe9348', 'dc496f9c-c6b3-4a1e-ba63-d85f90766283') ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '7ca73d80-942b-4913-af7b-9211d6fe9348', id FROM public.items WHERE type = 'kanji' AND character = '分' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id)
SELECT '7ca73d80-942b-4913-af7b-9211d6fe9348', id FROM public.items WHERE type = 'kanji' AND character = '分' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('ac83ab1f-416c-4db5-bb29-d1710df75c5c', 'dc496f9c-c6b3-4a1e-ba63-d85f90766283') ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('ac83ab1f-416c-4db5-bb29-d1710df75c5c', 'dc496f9c-c6b3-4a1e-ba63-d85f90766283') ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT 'ac83ab1f-416c-4db5-bb29-d1710df75c5c', id FROM public.items WHERE type = 'kanji' AND character = '立' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id)
SELECT 'ac83ab1f-416c-4db5-bb29-d1710df75c5c', id FROM public.items WHERE type = 'kanji' AND character = '立' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('7ab0218f-5bc2-46e6-8f85-ce0de46c16ae', '466fbeaa-f861-45dc-9ce9-c68e534212ec') ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('7ab0218f-5bc2-46e6-8f85-ce0de46c16ae', '466fbeaa-f861-45dc-9ce9-c68e534212ec') ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('3d00ada4-519f-4421-bcaa-b4aa4e3cbcf4', '466fbeaa-f861-45dc-9ce9-c68e534212ec') ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('3d00ada4-519f-4421-bcaa-b4aa4e3cbcf4', '466fbeaa-f861-45dc-9ce9-c68e534212ec') ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '1bc4a883-7b30-4dd8-9686-dbd2aefc1371', id FROM public.items WHERE type = 'kanji' AND character = '水' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id)
SELECT '1bc4a883-7b30-4dd8-9686-dbd2aefc1371', id FROM public.items WHERE type = 'kanji' AND character = '水' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('1bc4a883-7b30-4dd8-9686-dbd2aefc1371', '466fbeaa-f861-45dc-9ce9-c68e534212ec') ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('1bc4a883-7b30-4dd8-9686-dbd2aefc1371', '466fbeaa-f861-45dc-9ce9-c68e534212ec') ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('5312bdac-8898-451f-bac3-553433582dcf', 'ad8a055b-957d-43a1-ba74-6791c405ccb5') ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('5312bdac-8898-451f-bac3-553433582dcf', 'ad8a055b-957d-43a1-ba74-6791c405ccb5') ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('bee3cbdc-8467-4d9e-a7e8-a1e18d3d9946', 'bd3e3324-b7ba-49f1-bc11-4d725d37b0ed') ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('bee3cbdc-8467-4d9e-a7e8-a1e18d3d9946', 'bd3e3324-b7ba-49f1-bc11-4d725d37b0ed') ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('a68839af-8c41-4538-bb27-7a5e4ff66017', 'bd3e3324-b7ba-49f1-bc11-4d725d37b0ed') ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('a68839af-8c41-4538-bb27-7a5e4ff66017', 'bd3e3324-b7ba-49f1-bc11-4d725d37b0ed') ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT 'a68839af-8c41-4538-bb27-7a5e4ff66017', id FROM public.items WHERE type = 'kanji' AND character = '力' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id)
SELECT 'a68839af-8c41-4538-bb27-7a5e4ff66017', id FROM public.items WHERE type = 'kanji' AND character = '力' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('0ec47f2a-ece0-4930-b9de-3c3eb36a862f', 'ad8a055b-957d-43a1-ba74-6791c405ccb5') ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('0ec47f2a-ece0-4930-b9de-3c3eb36a862f', 'ad8a055b-957d-43a1-ba74-6791c405ccb5') ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '0ec47f2a-ece0-4930-b9de-3c3eb36a862f', id FROM public.items WHERE type = 'kanji' AND character = '文' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id)
SELECT '0ec47f2a-ece0-4930-b9de-3c3eb36a862f', id FROM public.items WHERE type = 'kanji' AND character = '文' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('02aa7bed-ddcb-4adf-8c45-ad1872b7c0ce', 'ad8a055b-957d-43a1-ba74-6791c405ccb5') ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('02aa7bed-ddcb-4adf-8c45-ad1872b7c0ce', 'ad8a055b-957d-43a1-ba74-6791c405ccb5') ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '02aa7bed-ddcb-4adf-8c45-ad1872b7c0ce', id FROM public.items WHERE type = 'kanji' AND character = '用' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id)
SELECT '02aa7bed-ddcb-4adf-8c45-ad1872b7c0ce', id FROM public.items WHERE type = 'kanji' AND character = '用' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT 'e412bb0f-4ca9-404d-941f-86c40ac97493', id FROM public.items WHERE type = 'kanji' AND character = '工' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id)
SELECT 'e412bb0f-4ca9-404d-941f-86c40ac97493', id FROM public.items WHERE type = 'kanji' AND character = '工' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('e412bb0f-4ca9-404d-941f-86c40ac97493', 'ad8a055b-957d-43a1-ba74-6791c405ccb5') ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('e412bb0f-4ca9-404d-941f-86c40ac97493', 'ad8a055b-957d-43a1-ba74-6791c405ccb5') ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '47f54492-5576-4249-92be-2840b138363c', id FROM public.items WHERE type = 'kanji' AND character = '大' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id)
SELECT '47f54492-5576-4249-92be-2840b138363c', id FROM public.items WHERE type = 'kanji' AND character = '大' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('47f54492-5576-4249-92be-2840b138363c', 'ad8a055b-957d-43a1-ba74-6791c405ccb5') ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('47f54492-5576-4249-92be-2840b138363c', 'ad8a055b-957d-43a1-ba74-6791c405ccb5') ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('ffc99a15-facc-4c1b-ae37-6a5a99886144', 'be7b7c13-8c99-45ed-ac0a-632e895a9a01') ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('ffc99a15-facc-4c1b-ae37-6a5a99886144', 'be7b7c13-8c99-45ed-ac0a-632e895a9a01') ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT 'ffc99a15-facc-4c1b-ae37-6a5a99886144', id FROM public.items WHERE type = 'kanji' AND character = '来' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id)
SELECT 'ffc99a15-facc-4c1b-ae37-6a5a99886144', id FROM public.items WHERE type = 'kanji' AND character = '来' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '80a9abd0-face-4ef8-a29a-f6fae5896e07', id FROM public.items WHERE type = 'kanji' AND character = '入' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id)
SELECT '80a9abd0-face-4ef8-a29a-f6fae5896e07', id FROM public.items WHERE type = 'kanji' AND character = '入' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('80a9abd0-face-4ef8-a29a-f6fae5896e07', 'ccf3fa1d-701b-469a-b812-f45c21b4c9e0') ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('80a9abd0-face-4ef8-a29a-f6fae5896e07', 'ccf3fa1d-701b-469a-b812-f45c21b4c9e0') ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '86db5546-e91f-4601-960e-3fba522bc18d', id FROM public.items WHERE type = 'kanji' AND character = '公' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id)
SELECT '86db5546-e91f-4601-960e-3fba522bc18d', id FROM public.items WHERE type = 'kanji' AND character = '公' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('86db5546-e91f-4601-960e-3fba522bc18d', 'ccf3fa1d-701b-469a-b812-f45c21b4c9e0') ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('86db5546-e91f-4601-960e-3fba522bc18d', 'ccf3fa1d-701b-469a-b812-f45c21b4c9e0') ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '4a8f03f0-aa0d-4485-b2c2-e21581d7f499', id FROM public.items WHERE type = 'kanji' AND character = '本' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id)
SELECT '4a8f03f0-aa0d-4485-b2c2-e21581d7f499', id FROM public.items WHERE type = 'kanji' AND character = '本' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('4a8f03f0-aa0d-4485-b2c2-e21581d7f499', 'ccf3fa1d-701b-469a-b812-f45c21b4c9e0') ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('4a8f03f0-aa0d-4485-b2c2-e21581d7f499', 'ccf3fa1d-701b-469a-b812-f45c21b4c9e0') ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('4d31c5a0-1471-4c88-ac56-7777086fa1ec', '4bf9164a-ae65-41fb-95bc-0f16d486acbc') ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('4d31c5a0-1471-4c88-ac56-7777086fa1ec', '4bf9164a-ae65-41fb-95bc-0f16d486acbc') ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('4d31c5a0-1471-4c88-ac56-7777086fa1ec', 'ccf3fa1d-701b-469a-b812-f45c21b4c9e0') ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('4d31c5a0-1471-4c88-ac56-7777086fa1ec', 'ccf3fa1d-701b-469a-b812-f45c21b4c9e0') ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('bf802987-d5cd-483e-8f82-9af73de396fb', '5689130e-e5df-4dc4-8171-a4f85944d03e') ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('bf802987-d5cd-483e-8f82-9af73de396fb', '5689130e-e5df-4dc4-8171-a4f85944d03e') ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('b4ad9a87-d159-4612-886f-8f77f07af1d4', '8e3d0b44-43f1-4ff8-b6ee-6d1e4195164a') ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('b4ad9a87-d159-4612-886f-8f77f07af1d4', '8e3d0b44-43f1-4ff8-b6ee-6d1e4195164a') ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('7b9f0885-106e-4425-9c6a-04db132df29c', '8e3d0b44-43f1-4ff8-b6ee-6d1e4195164a') ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('7b9f0885-106e-4425-9c6a-04db132df29c', '8e3d0b44-43f1-4ff8-b6ee-6d1e4195164a') ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '7b9f0885-106e-4425-9c6a-04db132df29c', id FROM public.items WHERE type = 'kanji' AND character = '日' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id)
SELECT '7b9f0885-106e-4425-9c6a-04db132df29c', id FROM public.items WHERE type = 'kanji' AND character = '日' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('11f8396c-2f3d-434b-b6ac-b7f6d26b9860', '8e3d0b44-43f1-4ff8-b6ee-6d1e4195164a') ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('11f8396c-2f3d-434b-b6ac-b7f6d26b9860', '8e3d0b44-43f1-4ff8-b6ee-6d1e4195164a') ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '11f8396c-2f3d-434b-b6ac-b7f6d26b9860', id FROM public.items WHERE type = 'kanji' AND character = '年' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id)
SELECT '11f8396c-2f3d-434b-b6ac-b7f6d26b9860', id FROM public.items WHERE type = 'kanji' AND character = '年' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('7d493466-dd95-4ba5-9307-a71930f77343', 'e1cb826f-3d14-45b1-a3ed-b16dadf4d973') ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('7d493466-dd95-4ba5-9307-a71930f77343', 'e1cb826f-3d14-45b1-a3ed-b16dadf4d973') ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('4dd00d20-beab-4976-930e-99641ed3f640', 'e1cb826f-3d14-45b1-a3ed-b16dadf4d973') ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('4dd00d20-beab-4976-930e-99641ed3f640', 'e1cb826f-3d14-45b1-a3ed-b16dadf4d973') ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '4dd00d20-beab-4976-930e-99641ed3f640', id FROM public.items WHERE type = 'kanji' AND character = '下' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id)
SELECT '4dd00d20-beab-4976-930e-99641ed3f640', id FROM public.items WHERE type = 'kanji' AND character = '下' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '193df329-4267-4464-8e76-dafb11f86ff4', id FROM public.items WHERE type = 'kanji' AND character = '土' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id)
SELECT '193df329-4267-4464-8e76-dafb11f86ff4', id FROM public.items WHERE type = 'kanji' AND character = '土' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('193df329-4267-4464-8e76-dafb11f86ff4', 'e1cb826f-3d14-45b1-a3ed-b16dadf4d973') ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('193df329-4267-4464-8e76-dafb11f86ff4', 'e1cb826f-3d14-45b1-a3ed-b16dadf4d973') ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('2c20b5b7-e762-4667-b1da-aa361eb0ffa4', 'd935e776-2ce1-41cd-b0e3-77f4e0b9693b') ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('2c20b5b7-e762-4667-b1da-aa361eb0ffa4', 'd935e776-2ce1-41cd-b0e3-77f4e0b9693b') ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('cf16c4a0-d77d-450d-967b-491cff3fc078', 'd935e776-2ce1-41cd-b0e3-77f4e0b9693b') ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('cf16c4a0-d77d-450d-967b-491cff3fc078', 'd935e776-2ce1-41cd-b0e3-77f4e0b9693b') ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT 'cf16c4a0-d77d-450d-967b-491cff3fc078', id FROM public.items WHERE type = 'kanji' AND character = '心' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id)
SELECT 'cf16c4a0-d77d-450d-967b-491cff3fc078', id FROM public.items WHERE type = 'kanji' AND character = '心' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '0c9c46d2-422c-4b60-a67c-db852344f735', id FROM public.items WHERE type = 'kanji' AND character = '不' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id)
SELECT '0c9c46d2-422c-4b60-a67c-db852344f735', id FROM public.items WHERE type = 'kanji' AND character = '不' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('0c9c46d2-422c-4b60-a67c-db852344f735', 'd935e776-2ce1-41cd-b0e3-77f4e0b9693b') ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('0c9c46d2-422c-4b60-a67c-db852344f735', 'd935e776-2ce1-41cd-b0e3-77f4e0b9693b') ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('789174f6-9c76-4bc3-9600-7f612e664752', '69e2c7c0-fadb-4b39-a3e5-5ee09cf529da') ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('789174f6-9c76-4bc3-9600-7f612e664752', '69e2c7c0-fadb-4b39-a3e5-5ee09cf529da') ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('81578233-8e09-4373-a434-7b12f7e5bdfe', '69e2c7c0-fadb-4b39-a3e5-5ee09cf529da') ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('81578233-8e09-4373-a434-7b12f7e5bdfe', '69e2c7c0-fadb-4b39-a3e5-5ee09cf529da') ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '81578233-8e09-4373-a434-7b12f7e5bdfe', id FROM public.items WHERE type = 'kanji' AND character = '名' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id)
SELECT '81578233-8e09-4373-a434-7b12f7e5bdfe', id FROM public.items WHERE type = 'kanji' AND character = '名' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('c219a0bb-4a75-4340-8425-ce8b8dc4fbd8', 'b12d5793-c36b-4cf6-9a4f-bffb6a15f557') ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('c219a0bb-4a75-4340-8425-ce8b8dc4fbd8', 'b12d5793-c36b-4cf6-9a4f-bffb6a15f557') ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('54234c04-d9c7-4c0a-a225-1380a4a4f56e', 'b12d5793-c36b-4cf6-9a4f-bffb6a15f557') ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('54234c04-d9c7-4c0a-a225-1380a4a4f56e', 'b12d5793-c36b-4cf6-9a4f-bffb6a15f557') ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('54234c04-d9c7-4c0a-a225-1380a4a4f56e', 'bd3e3324-b7ba-49f1-bc11-4d725d37b0ed') ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('54234c04-d9c7-4c0a-a225-1380a4a4f56e', 'bd3e3324-b7ba-49f1-bc11-4d725d37b0ed') ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('cb3da577-8ee5-40e7-b016-58dee46253d0', 'ccf3fa1d-701b-469a-b812-f45c21b4c9e0') ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('cb3da577-8ee5-40e7-b016-58dee46253d0', 'ccf3fa1d-701b-469a-b812-f45c21b4c9e0') ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT 'cb3da577-8ee5-40e7-b016-58dee46253d0', id FROM public.items WHERE type = 'kanji' AND character = '長' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id)
SELECT 'cb3da577-8ee5-40e7-b016-58dee46253d0', id FROM public.items WHERE type = 'kanji' AND character = '長' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('3029f190-3702-468c-878c-bec340270ff8', '5c4c770c-f9e7-49be-8bcf-d718aff12ec9') ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('3029f190-3702-468c-878c-bec340270ff8', '5c4c770c-f9e7-49be-8bcf-d718aff12ec9') ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '3029f190-3702-468c-878c-bec340270ff8', id FROM public.items WHERE type = 'kanji' AND character = '時' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id)
SELECT '3029f190-3702-468c-878c-bec340270ff8', id FROM public.items WHERE type = 'kanji' AND character = '時' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT 'fa570062-9250-4e52-bd17-a4e0315dd45f', id FROM public.items WHERE type = 'kanji' AND character = '心' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id)
SELECT 'fa570062-9250-4e52-bd17-a4e0315dd45f', id FROM public.items WHERE type = 'kanji' AND character = '心' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('fa570062-9250-4e52-bd17-a4e0315dd45f', 'bd9d5a8b-6687-498d-a06b-d61b59a290c6') ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('fa570062-9250-4e52-bd17-a4e0315dd45f', 'bd9d5a8b-6687-498d-a06b-d61b59a290c6') ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('b1c3e423-f288-4320-bae8-02dcc75a10fd', 'bd9d5a8b-6687-498d-a06b-d61b59a290c6') ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('b1c3e423-f288-4320-bae8-02dcc75a10fd', 'bd9d5a8b-6687-498d-a06b-d61b59a290c6') ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('b1c3e423-f288-4320-bae8-02dcc75a10fd', 'bd3e3324-b7ba-49f1-bc11-4d725d37b0ed') ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('b1c3e423-f288-4320-bae8-02dcc75a10fd', 'bd3e3324-b7ba-49f1-bc11-4d725d37b0ed') ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('28a1b7f9-25f3-4175-853c-1e7f39c0a297', '4bf9164a-ae65-41fb-95bc-0f16d486acbc') ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('28a1b7f9-25f3-4175-853c-1e7f39c0a297', '4bf9164a-ae65-41fb-95bc-0f16d486acbc') ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '28a1b7f9-25f3-4175-853c-1e7f39c0a297', id FROM public.items WHERE type = 'kanji' AND character = '話' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id)
SELECT '28a1b7f9-25f3-4175-853c-1e7f39c0a297', id FROM public.items WHERE type = 'kanji' AND character = '話' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('54f8ef68-fca5-4d36-8a62-7eff216da5d9', '2df7e287-2802-4a56-af0a-202b5a3673ff') ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('54f8ef68-fca5-4d36-8a62-7eff216da5d9', '2df7e287-2802-4a56-af0a-202b5a3673ff') ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('e5a741d8-7f1f-4acc-afc2-9d26a6065461', '2df7e287-2802-4a56-af0a-202b5a3673ff') ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('e5a741d8-7f1f-4acc-afc2-9d26a6065461', '2df7e287-2802-4a56-af0a-202b5a3673ff') ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('2d6d56ff-986c-4a1e-85ad-cead618ef076', '2df7e287-2802-4a56-af0a-202b5a3673ff') ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('2d6d56ff-986c-4a1e-85ad-cead618ef076', '2df7e287-2802-4a56-af0a-202b5a3673ff') ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '2d6d56ff-986c-4a1e-85ad-cead618ef076', id FROM public.items WHERE type = 'kanji' AND character = '人' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id)
SELECT '2d6d56ff-986c-4a1e-85ad-cead618ef076', id FROM public.items WHERE type = 'kanji' AND character = '人' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('ee1ffb48-7c55-4f55-aa54-8fe8defbb3fa', '2df7e287-2802-4a56-af0a-202b5a3673ff') ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('ee1ffb48-7c55-4f55-aa54-8fe8defbb3fa', '2df7e287-2802-4a56-af0a-202b5a3673ff') ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '38924381-e7e5-4fa8-baf3-b4ff53b871a1', id FROM public.items WHERE type = 'kanji' AND character = '小' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id)
SELECT '38924381-e7e5-4fa8-baf3-b4ff53b871a1', id FROM public.items WHERE type = 'kanji' AND character = '小' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '38924381-e7e5-4fa8-baf3-b4ff53b871a1', id FROM public.items WHERE type = 'kanji' AND character = '文' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id)
SELECT '38924381-e7e5-4fa8-baf3-b4ff53b871a1', id FROM public.items WHERE type = 'kanji' AND character = '文' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('38924381-e7e5-4fa8-baf3-b4ff53b871a1', 'f2cf511f-12ec-48e0-b828-17cfe918df7d') ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('38924381-e7e5-4fa8-baf3-b4ff53b871a1', 'f2cf511f-12ec-48e0-b828-17cfe918df7d') ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('cc18bddc-e14c-41ce-9808-fdd30144fe19', '65c6851b-7081-47a0-8059-ee9618433ee9') ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('cc18bddc-e14c-41ce-9808-fdd30144fe19', '65c6851b-7081-47a0-8059-ee9618433ee9') ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT 'cc18bddc-e14c-41ce-9808-fdd30144fe19', id FROM public.items WHERE type = 'kanji' AND character = '休' LIMIT 1 ON CONFLICT DO NOTHING;