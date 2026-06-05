INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id)
SELECT 'cc18bddc-e14c-41ce-9808-fdd30144fe19', id FROM public.items WHERE type = 'kanji' AND character = '休' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '852c7c14-8884-4b77-8c65-e27d6d23c724', id FROM public.items WHERE type = 'kanji' AND character = '方' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id)
SELECT '852c7c14-8884-4b77-8c65-e27d6d23c724', id FROM public.items WHERE type = 'kanji' AND character = '方' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('852c7c14-8884-4b77-8c65-e27d6d23c724', '5689130e-e5df-4dc4-8171-a4f85944d03e') ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('852c7c14-8884-4b77-8c65-e27d6d23c724', '5689130e-e5df-4dc4-8171-a4f85944d03e') ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '5e7688f3-ae65-4d67-95e1-c63e2b87de3e', id FROM public.items WHERE type = 'kanji' AND character = '手' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id)
SELECT '5e7688f3-ae65-4d67-95e1-c63e2b87de3e', id FROM public.items WHERE type = 'kanji' AND character = '手' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('5e7688f3-ae65-4d67-95e1-c63e2b87de3e', 'ad8a055b-957d-43a1-ba74-6791c405ccb5') ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('5e7688f3-ae65-4d67-95e1-c63e2b87de3e', 'ad8a055b-957d-43a1-ba74-6791c405ccb5') ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('fa9aa47f-a751-4eed-8a1f-e4dfb31c555e', '8e3d0b44-43f1-4ff8-b6ee-6d1e4195164a') ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('fa9aa47f-a751-4eed-8a1f-e4dfb31c555e', '8e3d0b44-43f1-4ff8-b6ee-6d1e4195164a') ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('71a300c7-ed70-4050-b69d-f14a7c796638', '5689130e-e5df-4dc4-8171-a4f85944d03e') ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('71a300c7-ed70-4050-b69d-f14a7c796638', '5689130e-e5df-4dc4-8171-a4f85944d03e') ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '71a300c7-ed70-4050-b69d-f14a7c796638', id FROM public.items WHERE type = 'kanji' AND character = '方' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id)
SELECT '71a300c7-ed70-4050-b69d-f14a7c796638', id FROM public.items WHERE type = 'kanji' AND character = '方' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('c843c0e1-f697-45be-9a90-67c127002649', '69c8b732-e0ca-4c50-beed-271ae9beaf8b') ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('c843c0e1-f697-45be-9a90-67c127002649', '69c8b732-e0ca-4c50-beed-271ae9beaf8b') ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT 'c843c0e1-f697-45be-9a90-67c127002649', id FROM public.items WHERE type = 'kanji' AND character = '口' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id)
SELECT 'c843c0e1-f697-45be-9a90-67c127002649', id FROM public.items WHERE type = 'kanji' AND character = '口' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('7992b16c-53f1-4be1-9a37-7e4c3526cd92', 'c64c78b7-349a-480b-8d25-334b58b9a9cf') ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('7992b16c-53f1-4be1-9a37-7e4c3526cd92', 'c64c78b7-349a-480b-8d25-334b58b9a9cf') ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('aea7f0c9-0731-4902-995d-3cedb9ceed32', '8e3d0b44-43f1-4ff8-b6ee-6d1e4195164a') ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('aea7f0c9-0731-4902-995d-3cedb9ceed32', '8e3d0b44-43f1-4ff8-b6ee-6d1e4195164a') ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('67bad6a7-6e4c-4fb0-b040-4396baa260fc', 'ad8a055b-957d-43a1-ba74-6791c405ccb5') ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('67bad6a7-6e4c-4fb0-b040-4396baa260fc', 'ad8a055b-957d-43a1-ba74-6791c405ccb5') ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '67bad6a7-6e4c-4fb0-b040-4396baa260fc', id FROM public.items WHERE type = 'kanji' AND character = '方' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id)
SELECT '67bad6a7-6e4c-4fb0-b040-4396baa260fc', id FROM public.items WHERE type = 'kanji' AND character = '方' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '466e7394-14ed-4417-9b40-5081b575f0c1', id FROM public.items WHERE type = 'kanji' AND character = '出' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id)
SELECT '466e7394-14ed-4417-9b40-5081b575f0c1', id FROM public.items WHERE type = 'kanji' AND character = '出' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('466e7394-14ed-4417-9b40-5081b575f0c1', '4bf9164a-ae65-41fb-95bc-0f16d486acbc') ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('466e7394-14ed-4417-9b40-5081b575f0c1', '4bf9164a-ae65-41fb-95bc-0f16d486acbc') ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('b56a8c95-175d-4f22-9fd4-57f8fc56d9b0', '009766e6-79e6-48b5-b07f-ffad16df62b0') ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('b56a8c95-175d-4f22-9fd4-57f8fc56d9b0', '009766e6-79e6-48b5-b07f-ffad16df62b0') ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('fa5983c4-4a9b-4a0b-8010-0c2737aba61e', '009766e6-79e6-48b5-b07f-ffad16df62b0') ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('fa5983c4-4a9b-4a0b-8010-0c2737aba61e', '009766e6-79e6-48b5-b07f-ffad16df62b0') ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT 'fa5983c4-4a9b-4a0b-8010-0c2737aba61e', id FROM public.items WHERE type = 'kanji' AND character = '立' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id)
SELECT 'fa5983c4-4a9b-4a0b-8010-0c2737aba61e', id FROM public.items WHERE type = 'kanji' AND character = '立' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('43f31045-9b91-4600-bed3-2b61af36d107', '009766e6-79e6-48b5-b07f-ffad16df62b0') ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('43f31045-9b91-4600-bed3-2b61af36d107', '009766e6-79e6-48b5-b07f-ffad16df62b0') ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('43f31045-9b91-4600-bed3-2b61af36d107', 'dc496f9c-c6b3-4a1e-ba63-d85f90766283') ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('43f31045-9b91-4600-bed3-2b61af36d107', 'dc496f9c-c6b3-4a1e-ba63-d85f90766283') ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('43f31045-9b91-4600-bed3-2b61af36d107', 'bd9d5a8b-6687-498d-a06b-d61b59a290c6') ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('43f31045-9b91-4600-bed3-2b61af36d107', 'bd9d5a8b-6687-498d-a06b-d61b59a290c6') ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('8c896604-435f-43ba-8b6e-2e52842cba07', '009766e6-79e6-48b5-b07f-ffad16df62b0') ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('8c896604-435f-43ba-8b6e-2e52842cba07', '009766e6-79e6-48b5-b07f-ffad16df62b0') ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '8c896604-435f-43ba-8b6e-2e52842cba07', id FROM public.items WHERE type = 'kanji' AND character = '立' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id)
SELECT '8c896604-435f-43ba-8b6e-2e52842cba07', id FROM public.items WHERE type = 'kanji' AND character = '立' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '8c896604-435f-43ba-8b6e-2e52842cba07', id FROM public.items WHERE type = 'kanji' AND character = '大' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id)
SELECT '8c896604-435f-43ba-8b6e-2e52842cba07', id FROM public.items WHERE type = 'kanji' AND character = '大' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '8c896604-435f-43ba-8b6e-2e52842cba07', id FROM public.items WHERE type = 'kanji' AND character = '学' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id)
SELECT '8c896604-435f-43ba-8b6e-2e52842cba07', id FROM public.items WHERE type = 'kanji' AND character = '学' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('965a077b-c27e-49a0-8499-08c110015d6d', '009766e6-79e6-48b5-b07f-ffad16df62b0') ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('965a077b-c27e-49a0-8499-08c110015d6d', '009766e6-79e6-48b5-b07f-ffad16df62b0') ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '965a077b-c27e-49a0-8499-08c110015d6d', id FROM public.items WHERE type = 'kanji' AND character = '大' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id)
SELECT '965a077b-c27e-49a0-8499-08c110015d6d', id FROM public.items WHERE type = 'kanji' AND character = '大' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('fb572519-bc47-4d4e-9289-10635ff5af0b', '8876edc5-41bb-4478-9fd9-9ab384f7deb2') ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('fb572519-bc47-4d4e-9289-10635ff5af0b', '8876edc5-41bb-4478-9fd9-9ab384f7deb2') ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('cc680f63-748b-4726-a57a-f0b4ce6bb6f3', 'bd9d5a8b-6687-498d-a06b-d61b59a290c6') ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('cc680f63-748b-4726-a57a-f0b4ce6bb6f3', 'bd9d5a8b-6687-498d-a06b-d61b59a290c6') ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('5d633797-ca8c-4ae7-b77d-1c2bf975fd3c', 'ccf3fa1d-701b-469a-b812-f45c21b4c9e0') ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('5d633797-ca8c-4ae7-b77d-1c2bf975fd3c', 'ccf3fa1d-701b-469a-b812-f45c21b4c9e0') ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('5d633797-ca8c-4ae7-b77d-1c2bf975fd3c', '4bf9164a-ae65-41fb-95bc-0f16d486acbc') ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('5d633797-ca8c-4ae7-b77d-1c2bf975fd3c', '4bf9164a-ae65-41fb-95bc-0f16d486acbc') ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('317abc16-85d4-475e-9a09-230552eb9ff8', '5689130e-e5df-4dc4-8171-a4f85944d03e') ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('317abc16-85d4-475e-9a09-230552eb9ff8', '5689130e-e5df-4dc4-8171-a4f85944d03e') ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '317abc16-85d4-475e-9a09-230552eb9ff8', id FROM public.items WHERE type = 'kanji' AND character = '語' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id)
SELECT '317abc16-85d4-475e-9a09-230552eb9ff8', id FROM public.items WHERE type = 'kanji' AND character = '語' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('caa109d7-57f0-444f-b173-30cfea742a26', 'e1cb826f-3d14-45b1-a3ed-b16dadf4d973') ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('caa109d7-57f0-444f-b173-30cfea742a26', 'e1cb826f-3d14-45b1-a3ed-b16dadf4d973') ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT 'caa109d7-57f0-444f-b173-30cfea742a26', id FROM public.items WHERE type = 'kanji' AND character = '上' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id)
SELECT 'caa109d7-57f0-444f-b173-30cfea742a26', id FROM public.items WHERE type = 'kanji' AND character = '上' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('b4ee7a19-cd26-4647-811c-a32ab65d1285', 'c64c78b7-349a-480b-8d25-334b58b9a9cf') ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('b4ee7a19-cd26-4647-811c-a32ab65d1285', 'c64c78b7-349a-480b-8d25-334b58b9a9cf') ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('6a3dae58-c6b3-4a92-9227-c20dd69509b0', '2df7e287-2802-4a56-af0a-202b5a3673ff') ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('6a3dae58-c6b3-4a92-9227-c20dd69509b0', '2df7e287-2802-4a56-af0a-202b5a3673ff') ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('0223917c-3053-4d36-a0a9-6602c54ca12a', '4bf9164a-ae65-41fb-95bc-0f16d486acbc') ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('0223917c-3053-4d36-a0a9-6602c54ca12a', '4bf9164a-ae65-41fb-95bc-0f16d486acbc') ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('2f89818d-c3f8-4681-91c1-7630d30f187f', '69c8b732-e0ca-4c50-beed-271ae9beaf8b') ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('2f89818d-c3f8-4681-91c1-7630d30f187f', '69c8b732-e0ca-4c50-beed-271ae9beaf8b') ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('94ab5021-cb31-4615-8501-79221179f936', 'b12d5793-c36b-4cf6-9a4f-bffb6a15f557') ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('94ab5021-cb31-4615-8501-79221179f936', 'b12d5793-c36b-4cf6-9a4f-bffb6a15f557') ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('2590b80a-5e45-4acf-893f-ce6d2b902f5e', '8e3d0b44-43f1-4ff8-b6ee-6d1e4195164a') ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('2590b80a-5e45-4acf-893f-ce6d2b902f5e', '8e3d0b44-43f1-4ff8-b6ee-6d1e4195164a') ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('5ab43d6a-477e-468c-88ff-d4104450be8c', '971e847f-cb01-45cf-b0a1-16b67338d6e5') ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('5ab43d6a-477e-468c-88ff-d4104450be8c', '971e847f-cb01-45cf-b0a1-16b67338d6e5') ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('5ab43d6a-477e-468c-88ff-d4104450be8c', 'be7b7c13-8c99-45ed-ac0a-632e895a9a01') ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('5ab43d6a-477e-468c-88ff-d4104450be8c', 'be7b7c13-8c99-45ed-ac0a-632e895a9a01') ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '5ab43d6a-477e-468c-88ff-d4104450be8c', id FROM public.items WHERE type = 'kanji' AND character = '学' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id)
SELECT '5ab43d6a-477e-468c-88ff-d4104450be8c', id FROM public.items WHERE type = 'kanji' AND character = '学' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('d716860b-fb39-47cc-a0aa-f6456a294cc4', 'e1cb826f-3d14-45b1-a3ed-b16dadf4d973') ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('d716860b-fb39-47cc-a0aa-f6456a294cc4', 'e1cb826f-3d14-45b1-a3ed-b16dadf4d973') ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT 'd716860b-fb39-47cc-a0aa-f6456a294cc4', id FROM public.items WHERE type = 'kanji' AND character = '中' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id)
SELECT 'd716860b-fb39-47cc-a0aa-f6456a294cc4', id FROM public.items WHERE type = 'kanji' AND character = '中' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '12c37eb5-cf5e-489b-9f33-10cf06b3fe8e', id FROM public.items WHERE type = 'kanji' AND character = '一' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id)
SELECT '12c37eb5-cf5e-489b-9f33-10cf06b3fe8e', id FROM public.items WHERE type = 'kanji' AND character = '一' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('12c37eb5-cf5e-489b-9f33-10cf06b3fe8e', 'bd3e3324-b7ba-49f1-bc11-4d725d37b0ed') ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('12c37eb5-cf5e-489b-9f33-10cf06b3fe8e', 'bd3e3324-b7ba-49f1-bc11-4d725d37b0ed') ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '4ca81e1b-35e3-4dd0-a682-0182dd927933', id FROM public.items WHERE type = 'kanji' AND character = '生' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id)
SELECT '4ca81e1b-35e3-4dd0-a682-0182dd927933', id FROM public.items WHERE type = 'kanji' AND character = '生' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('4ca81e1b-35e3-4dd0-a682-0182dd927933', 'e1cb826f-3d14-45b1-a3ed-b16dadf4d973') ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('4ca81e1b-35e3-4dd0-a682-0182dd927933', 'e1cb826f-3d14-45b1-a3ed-b16dadf4d973') ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('39832552-1b81-4155-8aea-0c5ae3a308b7', '2df7e287-2802-4a56-af0a-202b5a3673ff') ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('39832552-1b81-4155-8aea-0c5ae3a308b7', '2df7e287-2802-4a56-af0a-202b5a3673ff') ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT 'e5869fca-50d9-4494-b10b-752becd8fe9c', id FROM public.items WHERE type = 'kanji' AND character = '大' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id)
SELECT 'e5869fca-50d9-4494-b10b-752becd8fe9c', id FROM public.items WHERE type = 'kanji' AND character = '大' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('e5869fca-50d9-4494-b10b-752becd8fe9c', 'bd3e3324-b7ba-49f1-bc11-4d725d37b0ed') ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('e5869fca-50d9-4494-b10b-752becd8fe9c', 'bd3e3324-b7ba-49f1-bc11-4d725d37b0ed') ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('25395bac-b32f-4415-8f6f-28afbcbd874d', '8876edc5-41bb-4478-9fd9-9ab384f7deb2') ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('25395bac-b32f-4415-8f6f-28afbcbd874d', '8876edc5-41bb-4478-9fd9-9ab384f7deb2') ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT 'a1510bc1-9149-488d-97eb-4bda5b6f306a', id FROM public.items WHERE type = 'kanji' AND character = '出' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id)
SELECT 'a1510bc1-9149-488d-97eb-4bda5b6f306a', id FROM public.items WHERE type = 'kanji' AND character = '出' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('a1510bc1-9149-488d-97eb-4bda5b6f306a', 'bd9d5a8b-6687-498d-a06b-d61b59a290c6') ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('a1510bc1-9149-488d-97eb-4bda5b6f306a', 'bd9d5a8b-6687-498d-a06b-d61b59a290c6') ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT 'fa893367-17ae-4940-b7f8-fd600a688f92', id FROM public.items WHERE type = 'kanji' AND character = '出' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id)
SELECT 'fa893367-17ae-4940-b7f8-fd600a688f92', id FROM public.items WHERE type = 'kanji' AND character = '出' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('fa893367-17ae-4940-b7f8-fd600a688f92', 'ccf3fa1d-701b-469a-b812-f45c21b4c9e0') ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('fa893367-17ae-4940-b7f8-fd600a688f92', 'ccf3fa1d-701b-469a-b812-f45c21b4c9e0') ON CONFLICT DO NOTHING;

-- 7. Initialize progress for all existing profiles
DO $$
DECLARE
  r_profile RECORD;
BEGIN
  FOR r_profile IN SELECT id FROM public.profiles LOOP
    PERFORM public.initialize_user_progress(r_profile.id);
  END LOOP;
END $$;
