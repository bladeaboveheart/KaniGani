INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('24470cc5-587b-4524-bacd-52335a8bf46e', '3956736e-d1d0-4b6f-9dce-3e0f4caeb275') ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('fa8ba0d1-f059-4dee-a658-0bff58fa0641', '9e16675c-c30f-408b-87c7-90ffd2ce7aee') ON CONFLICT DO NOTHING;

INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('fa8ba0d1-f059-4dee-a658-0bff58fa0641', '9e16675c-c30f-408b-87c7-90ffd2ce7aee') ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('928e29c1-d6f0-41db-b1c9-e0c5fc72877e', '1d863db0-dce1-4675-99b7-fe2ff8a83bd4') ON CONFLICT DO NOTHING;

INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('928e29c1-d6f0-41db-b1c9-e0c5fc72877e', '1d863db0-dce1-4675-99b7-fe2ff8a83bd4') ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('da1ef08e-2d0a-405a-ba7b-85f8a6caecbf', '3b8e0019-bc3d-4e1f-a369-f7aa0b3cd865') ON CONFLICT DO NOTHING;

INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('da1ef08e-2d0a-405a-ba7b-85f8a6caecbf', '3b8e0019-bc3d-4e1f-a369-f7aa0b3cd865') ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '70a05f50-1b16-456a-9a6e-3f4fa016fa32', id FROM public.items WHERE type = 'kanji' AND character = '入' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id)
SELECT '70a05f50-1b16-456a-9a6e-3f4fa016fa32', id FROM public.items WHERE type = 'kanji' AND character = '入' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('70a05f50-1b16-456a-9a6e-3f4fa016fa32', '41fa46b3-40b5-4306-a2ac-2a7baebdd747') ON CONFLICT DO NOTHING;

INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('70a05f50-1b16-456a-9a6e-3f4fa016fa32', '41fa46b3-40b5-4306-a2ac-2a7baebdd747') ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '70a05f50-1b16-456a-9a6e-3f4fa016fa32', id FROM public.items WHERE type = 'kanji' AND character = '料' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id)
SELECT '70a05f50-1b16-456a-9a6e-3f4fa016fa32', id FROM public.items WHERE type = 'kanji' AND character = '料' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '0b725f55-29d9-4232-a3ca-63339e2162c0', id FROM public.items WHERE type = 'kanji' AND character = '映' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id)
SELECT '0b725f55-29d9-4232-a3ca-63339e2162c0', id FROM public.items WHERE type = 'kanji' AND character = '映' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '0b725f55-29d9-4232-a3ca-63339e2162c0', id FROM public.items WHERE type = 'kanji' AND character = '画' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id)
SELECT '0b725f55-29d9-4232-a3ca-63339e2162c0', id FROM public.items WHERE type = 'kanji' AND character = '画' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('0b725f55-29d9-4232-a3ca-63339e2162c0', '41fa46b3-40b5-4306-a2ac-2a7baebdd747') ON CONFLICT DO NOTHING;

INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('0b725f55-29d9-4232-a3ca-63339e2162c0', '41fa46b3-40b5-4306-a2ac-2a7baebdd747') ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '525208c8-6c04-4d61-9868-8abce7b72c74', id FROM public.items WHERE type = 'kanji' AND character = '水' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id)
SELECT '525208c8-6c04-4d61-9868-8abce7b72c74', id FROM public.items WHERE type = 'kanji' AND character = '水' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('525208c8-6c04-4d61-9868-8abce7b72c74', 'a21cc683-fea2-4efe-b5f8-8ffaf2802b7b') ON CONFLICT DO NOTHING;

INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('525208c8-6c04-4d61-9868-8abce7b72c74', 'a21cc683-fea2-4efe-b5f8-8ffaf2802b7b') ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('d953d571-63cb-45db-b406-56bf5cc57045', 'a21cc683-fea2-4efe-b5f8-8ffaf2802b7b') ON CONFLICT DO NOTHING;

INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('d953d571-63cb-45db-b406-56bf5cc57045', 'a21cc683-fea2-4efe-b5f8-8ffaf2802b7b') ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('0fd3ea6d-1c65-4e0c-a8b0-a5a63ef73ab2', 'a21cc683-fea2-4efe-b5f8-8ffaf2802b7b') ON CONFLICT DO NOTHING;

INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('0fd3ea6d-1c65-4e0c-a8b0-a5a63ef73ab2', 'a21cc683-fea2-4efe-b5f8-8ffaf2802b7b') ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '0fd3ea6d-1c65-4e0c-a8b0-a5a63ef73ab2', id FROM public.items WHERE type = 'kanji' AND character = '色' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id)
SELECT '0fd3ea6d-1c65-4e0c-a8b0-a5a63ef73ab2', id FROM public.items WHERE type = 'kanji' AND character = '色' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('54a75b41-995d-4239-a2b7-e91d01f5bde2', 'a21cc683-fea2-4efe-b5f8-8ffaf2802b7b') ON CONFLICT DO NOTHING;

INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('54a75b41-995d-4239-a2b7-e91d01f5bde2', 'a21cc683-fea2-4efe-b5f8-8ffaf2802b7b') ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '54a75b41-995d-4239-a2b7-e91d01f5bde2', id FROM public.items WHERE type = 'kanji' AND character = '行' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id)
SELECT '54a75b41-995d-4239-a2b7-e91d01f5bde2', id FROM public.items WHERE type = 'kanji' AND character = '行' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '278e5ff6-e3ba-451e-a25d-ce1cc6da5775', id FROM public.items WHERE type = 'kanji' AND character = '話' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id)
SELECT '278e5ff6-e3ba-451e-a25d-ce1cc6da5775', id FROM public.items WHERE type = 'kanji' AND character = '話' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('278e5ff6-e3ba-451e-a25d-ce1cc6da5775', '8858f6c5-587c-426d-b948-a106c31748ef') ON CONFLICT DO NOTHING;

INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('278e5ff6-e3ba-451e-a25d-ce1cc6da5775', '8858f6c5-587c-426d-b948-a106c31748ef') ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT 'e2157a75-d8f4-4511-b626-1cfac32607f2', id FROM public.items WHERE type = 'kanji' AND character = '旅' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id)
SELECT 'e2157a75-d8f4-4511-b626-1cfac32607f2', id FROM public.items WHERE type = 'kanji' AND character = '旅' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('e2157a75-d8f4-4511-b626-1cfac32607f2', '41fa46b3-40b5-4306-a2ac-2a7baebdd747') ON CONFLICT DO NOTHING;

INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('e2157a75-d8f4-4511-b626-1cfac32607f2', '41fa46b3-40b5-4306-a2ac-2a7baebdd747') ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT 'db3e24fa-42e5-4f78-b5da-5087d2aad024', id FROM public.items WHERE type = 'kanji' AND character = '本' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id)
SELECT 'db3e24fa-42e5-4f78-b5da-5087d2aad024', id FROM public.items WHERE type = 'kanji' AND character = '本' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('db3e24fa-42e5-4f78-b5da-5087d2aad024', '41fa46b3-40b5-4306-a2ac-2a7baebdd747') ON CONFLICT DO NOTHING;

INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('db3e24fa-42e5-4f78-b5da-5087d2aad024', '41fa46b3-40b5-4306-a2ac-2a7baebdd747') ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('ef3a6afb-f68b-4147-a9fb-ca043056789f', 'da8281c8-9a17-4a75-abb3-51dd4c832548') ON CONFLICT DO NOTHING;

INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('ef3a6afb-f68b-4147-a9fb-ca043056789f', 'da8281c8-9a17-4a75-abb3-51dd4c832548') ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('6187031c-6840-479f-9cd5-9868f7d52e02', 'da8281c8-9a17-4a75-abb3-51dd4c832548') ON CONFLICT DO NOTHING;

INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('6187031c-6840-479f-9cd5-9868f7d52e02', 'da8281c8-9a17-4a75-abb3-51dd4c832548') ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '6187031c-6840-479f-9cd5-9868f7d52e02', id FROM public.items WHERE type = 'kanji' AND character = '前' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id)
SELECT '6187031c-6840-479f-9cd5-9868f7d52e02', id FROM public.items WHERE type = 'kanji' AND character = '前' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('85afc5b6-66c9-480f-afe0-067edd80e2e2', 'da8281c8-9a17-4a75-abb3-51dd4c832548') ON CONFLICT DO NOTHING;

INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('85afc5b6-66c9-480f-afe0-067edd80e2e2', 'da8281c8-9a17-4a75-abb3-51dd4c832548') ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '85afc5b6-66c9-480f-afe0-067edd80e2e2', id FROM public.items WHERE type = 'kanji' AND character = '員' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id)
SELECT '85afc5b6-66c9-480f-afe0-067edd80e2e2', id FROM public.items WHERE type = 'kanji' AND character = '員' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('3a2a8f68-62a9-434e-a132-9204ac16c7bc', 'da8281c8-9a17-4a75-abb3-51dd4c832548') ON CONFLICT DO NOTHING;

INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('3a2a8f68-62a9-434e-a132-9204ac16c7bc', 'da8281c8-9a17-4a75-abb3-51dd4c832548') ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '3a2a8f68-62a9-434e-a132-9204ac16c7bc', id FROM public.items WHERE type = 'kanji' AND character = '長' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id)
SELECT '3a2a8f68-62a9-434e-a132-9204ac16c7bc', id FROM public.items WHERE type = 'kanji' AND character = '長' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('3d2b2c10-2255-489e-869c-eaf68c7cf365', '9f10178e-ad44-4fb9-91f3-afc3a465c3f2') ON CONFLICT DO NOTHING;

INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('3d2b2c10-2255-489e-869c-eaf68c7cf365', '9f10178e-ad44-4fb9-91f3-afc3a465c3f2') ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('cb688c12-b70b-4a43-85dc-c42c3b75621c', '9f10178e-ad44-4fb9-91f3-afc3a465c3f2') ON CONFLICT DO NOTHING;

INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('cb688c12-b70b-4a43-85dc-c42c3b75621c', '9f10178e-ad44-4fb9-91f3-afc3a465c3f2') ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('db5b294f-f7ce-4940-b76c-c17e616047f8', 'ea1148d3-f9cf-47f9-872f-a2b43578ad7c') ON CONFLICT DO NOTHING;

INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('db5b294f-f7ce-4940-b76c-c17e616047f8', 'ea1148d3-f9cf-47f9-872f-a2b43578ad7c') ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT 'db5b294f-f7ce-4940-b76c-c17e616047f8', id FROM public.items WHERE type = 'kanji' AND character = '品' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id)
SELECT 'db5b294f-f7ce-4940-b76c-c17e616047f8', id FROM public.items WHERE type = 'kanji' AND character = '品' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '95e44842-9883-4d18-a5e4-75f436d86c56', id FROM public.items WHERE type = 'kanji' AND character = '図' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id)
SELECT '95e44842-9883-4d18-a5e4-75f436d86c56', id FROM public.items WHERE type = 'kanji' AND character = '図' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '95e44842-9883-4d18-a5e4-75f436d86c56', id FROM public.items WHERE type = 'kanji' AND character = '書' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id)
SELECT '95e44842-9883-4d18-a5e4-75f436d86c56', id FROM public.items WHERE type = 'kanji' AND character = '書' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('95e44842-9883-4d18-a5e4-75f436d86c56', '41fa46b3-40b5-4306-a2ac-2a7baebdd747') ON CONFLICT DO NOTHING;

INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('95e44842-9883-4d18-a5e4-75f436d86c56', '41fa46b3-40b5-4306-a2ac-2a7baebdd747') ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('6c2dd6e6-a299-4327-9018-dfc90fd54c65', 'd05f740a-4d9f-47df-a59f-6bb57738d210') ON CONFLICT DO NOTHING;

INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('6c2dd6e6-a299-4327-9018-dfc90fd54c65', 'd05f740a-4d9f-47df-a59f-6bb57738d210') ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('5f84d8f7-d003-4eb7-bbd3-560864765a79', '7363769c-76c8-4a6c-9bf5-9446e9863e7d') ON CONFLICT DO NOTHING;

INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('5f84d8f7-d003-4eb7-bbd3-560864765a79', '7363769c-76c8-4a6c-9bf5-9446e9863e7d') ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('5f84d8f7-d003-4eb7-bbd3-560864765a79', '9f10178e-ad44-4fb9-91f3-afc3a465c3f2') ON CONFLICT DO NOTHING;

INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('5f84d8f7-d003-4eb7-bbd3-560864765a79', '9f10178e-ad44-4fb9-91f3-afc3a465c3f2') ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT 'fcf7291c-f131-4085-8b1e-c995d68fdc45', id FROM public.items WHERE type = 'kanji' AND character = '昼' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id)
SELECT 'fcf7291c-f131-4085-8b1e-c995d68fdc45', id FROM public.items WHERE type = 'kanji' AND character = '昼' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('fcf7291c-f131-4085-8b1e-c995d68fdc45', '9f10178e-ad44-4fb9-91f3-afc3a465c3f2') ON CONFLICT DO NOTHING;

INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('fcf7291c-f131-4085-8b1e-c995d68fdc45', '9f10178e-ad44-4fb9-91f3-afc3a465c3f2') ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('537d486f-6d70-4838-9766-de3165c4102f', '34cdb410-a8c5-472f-ac5f-badd2600fabd') ON CONFLICT DO NOTHING;

INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('537d486f-6d70-4838-9766-de3165c4102f', '34cdb410-a8c5-472f-ac5f-badd2600fabd') ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '537d486f-6d70-4838-9766-de3165c4102f', id FROM public.items WHERE type = 'kanji' AND character = '日' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id)
SELECT '537d486f-6d70-4838-9766-de3165c4102f', id FROM public.items WHERE type = 'kanji' AND character = '日' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('0b9dfb3d-2656-4a8b-a355-95857788b072', 'c63e8920-cfa1-438a-afe1-dc483ca1c692') ON CONFLICT DO NOTHING;

INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('0b9dfb3d-2656-4a8b-a355-95857788b072', 'c63e8920-cfa1-438a-afe1-dc483ca1c692') ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('65238981-75b4-4e4b-891e-63d3a629d5e6', '44e904c6-78be-4597-908b-258583fb22ea') ON CONFLICT DO NOTHING;

INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('65238981-75b4-4e4b-891e-63d3a629d5e6', '44e904c6-78be-4597-908b-258583fb22ea') ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '65238981-75b4-4e4b-891e-63d3a629d5e6', id FROM public.items WHERE type = 'kanji' AND character = '力' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id)
SELECT '65238981-75b4-4e4b-891e-63d3a629d5e6', id FROM public.items WHERE type = 'kanji' AND character = '力' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('34e3a369-55ce-4895-b0a8-c786966f452a', '44e904c6-78be-4597-908b-258583fb22ea') ON CONFLICT DO NOTHING;

INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('34e3a369-55ce-4895-b0a8-c786966f452a', '44e904c6-78be-4597-908b-258583fb22ea') ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '34e3a369-55ce-4895-b0a8-c786966f452a', id FROM public.items WHERE type = 'kanji' AND character = '休' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id)
SELECT '34e3a369-55ce-4895-b0a8-c786966f452a', id FROM public.items WHERE type = 'kanji' AND character = '休' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('8017ff65-7b70-4d0f-9c56-32a4ffa1fed3', '44e904c6-78be-4597-908b-258583fb22ea') ON CONFLICT DO NOTHING;

INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('8017ff65-7b70-4d0f-9c56-32a4ffa1fed3', '44e904c6-78be-4597-908b-258583fb22ea') ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '8017ff65-7b70-4d0f-9c56-32a4ffa1fed3', id FROM public.items WHERE type = 'kanji' AND character = '名' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id)
SELECT '8017ff65-7b70-4d0f-9c56-32a4ffa1fed3', id FROM public.items WHERE type = 'kanji' AND character = '名' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('fc5e4a10-64eb-4850-b447-653f477f4d7c', '44e904c6-78be-4597-908b-258583fb22ea') ON CONFLICT DO NOTHING;

INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('fc5e4a10-64eb-4850-b447-653f477f4d7c', '44e904c6-78be-4597-908b-258583fb22ea') ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT 'fc5e4a10-64eb-4850-b447-653f477f4d7c', id FROM public.items WHERE type = 'kanji' AND character = '事' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id)
SELECT 'fc5e4a10-64eb-4850-b447-653f477f4d7c', id FROM public.items WHERE type = 'kanji' AND character = '事' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('5242b0e5-1994-4b5c-b5ba-65dfad6ce3ac', '44e904c6-78be-4597-908b-258583fb22ea') ON CONFLICT DO NOTHING;

INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('5242b0e5-1994-4b5c-b5ba-65dfad6ce3ac', '44e904c6-78be-4597-908b-258583fb22ea') ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '5242b0e5-1994-4b5c-b5ba-65dfad6ce3ac', id FROM public.items WHERE type = 'kanji' AND character = '知' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id)
SELECT '5242b0e5-1994-4b5c-b5ba-65dfad6ce3ac', id FROM public.items WHERE type = 'kanji' AND character = '知' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('84cc504b-e05e-4779-b374-fedec3b18524', '44e904c6-78be-4597-908b-258583fb22ea') ON CONFLICT DO NOTHING;

INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('84cc504b-e05e-4779-b374-fedec3b18524', '44e904c6-78be-4597-908b-258583fb22ea') ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '84cc504b-e05e-4779-b374-fedec3b18524', id FROM public.items WHERE type = 'kanji' AND character = '茶' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id)
SELECT '84cc504b-e05e-4779-b374-fedec3b18524', id FROM public.items WHERE type = 'kanji' AND character = '茶' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('dd4c0ad6-9bbf-4869-9222-ebb366994a66', '44e904c6-78be-4597-908b-258583fb22ea') ON CONFLICT DO NOTHING;

INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('dd4c0ad6-9bbf-4869-9222-ebb366994a66', '44e904c6-78be-4597-908b-258583fb22ea') ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT 'dd4c0ad6-9bbf-4869-9222-ebb366994a66', id FROM public.items WHERE type = 'kanji' AND character = '料' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id)
SELECT 'dd4c0ad6-9bbf-4869-9222-ebb366994a66', id FROM public.items WHERE type = 'kanji' AND character = '料' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '6b06acb0-efe1-4a9e-a132-89e1314fcd47', id FROM public.items WHERE type = 'kanji' AND character = '土' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id)
SELECT '6b06acb0-efe1-4a9e-a132-89e1314fcd47', id FROM public.items WHERE type = 'kanji' AND character = '土' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('6b06acb0-efe1-4a9e-a132-89e1314fcd47', '34cdb410-a8c5-472f-ac5f-badd2600fabd') ON CONFLICT DO NOTHING;

INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('6b06acb0-efe1-4a9e-a132-89e1314fcd47', '34cdb410-a8c5-472f-ac5f-badd2600fabd') ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '6b06acb0-efe1-4a9e-a132-89e1314fcd47', id FROM public.items WHERE type = 'kanji' AND character = '日' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id)
SELECT '6b06acb0-efe1-4a9e-a132-89e1314fcd47', id FROM public.items WHERE type = 'kanji' AND character = '日' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '2d276e24-3b4e-4dd2-8c0c-4bc374749726', id FROM public.items WHERE type = 'kanji' AND character = '日' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id)
SELECT '2d276e24-3b4e-4dd2-8c0c-4bc374749726', id FROM public.items WHERE type = 'kanji' AND character = '日' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('2d276e24-3b4e-4dd2-8c0c-4bc374749726', '34cdb410-a8c5-472f-ac5f-badd2600fabd') ON CONFLICT DO NOTHING;

INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('2d276e24-3b4e-4dd2-8c0c-4bc374749726', '34cdb410-a8c5-472f-ac5f-badd2600fabd') ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '2d276e24-3b4e-4dd2-8c0c-4bc374749726', id FROM public.items WHERE type = 'kanji' AND character = '日' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id)
SELECT '2d276e24-3b4e-4dd2-8c0c-4bc374749726', id FROM public.items WHERE type = 'kanji' AND character = '日' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '65e5bc50-59df-4d79-a8d7-61b00c2dc2c6', id FROM public.items WHERE type = 'kanji' AND character = '月' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id)
SELECT '65e5bc50-59df-4d79-a8d7-61b00c2dc2c6', id FROM public.items WHERE type = 'kanji' AND character = '月' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('65e5bc50-59df-4d79-a8d7-61b00c2dc2c6', '34cdb410-a8c5-472f-ac5f-badd2600fabd') ON CONFLICT DO NOTHING;

INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('65e5bc50-59df-4d79-a8d7-61b00c2dc2c6', '34cdb410-a8c5-472f-ac5f-badd2600fabd') ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '65e5bc50-59df-4d79-a8d7-61b00c2dc2c6', id FROM public.items WHERE type = 'kanji' AND character = '日' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id)
SELECT '65e5bc50-59df-4d79-a8d7-61b00c2dc2c6', id FROM public.items WHERE type = 'kanji' AND character = '日' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '86d22caa-cd5c-4364-8d59-914b5394baf8', id FROM public.items WHERE type = 'kanji' AND character = '木' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id)
SELECT '86d22caa-cd5c-4364-8d59-914b5394baf8', id FROM public.items WHERE type = 'kanji' AND character = '木' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('86d22caa-cd5c-4364-8d59-914b5394baf8', '34cdb410-a8c5-472f-ac5f-badd2600fabd') ON CONFLICT DO NOTHING;

INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('86d22caa-cd5c-4364-8d59-914b5394baf8', '34cdb410-a8c5-472f-ac5f-badd2600fabd') ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '86d22caa-cd5c-4364-8d59-914b5394baf8', id FROM public.items WHERE type = 'kanji' AND character = '日' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id)
SELECT '86d22caa-cd5c-4364-8d59-914b5394baf8', id FROM public.items WHERE type = 'kanji' AND character = '日' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '43f62f24-f58e-4998-8b4f-14d48f0a2e7c', id FROM public.items WHERE type = 'kanji' AND character = '水' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id)
SELECT '43f62f24-f58e-4998-8b4f-14d48f0a2e7c', id FROM public.items WHERE type = 'kanji' AND character = '水' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('43f62f24-f58e-4998-8b4f-14d48f0a2e7c', '34cdb410-a8c5-472f-ac5f-badd2600fabd') ON CONFLICT DO NOTHING;

INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('43f62f24-f58e-4998-8b4f-14d48f0a2e7c', '34cdb410-a8c5-472f-ac5f-badd2600fabd') ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '43f62f24-f58e-4998-8b4f-14d48f0a2e7c', id FROM public.items WHERE type = 'kanji' AND character = '日' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id)
SELECT '43f62f24-f58e-4998-8b4f-14d48f0a2e7c', id FROM public.items WHERE type = 'kanji' AND character = '日' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('ea357904-909e-4d6f-ac72-20231957a932', 'a26ace0c-d99d-4484-89e9-d8088364d42e') ON CONFLICT DO NOTHING;

INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('ea357904-909e-4d6f-ac72-20231957a932', 'a26ace0c-d99d-4484-89e9-d8088364d42e') ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('d03c4453-9cce-40e8-80f3-c127f82ac8b1', 'a26ace0c-d99d-4484-89e9-d8088364d42e') ON CONFLICT DO NOTHING;

INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('d03c4453-9cce-40e8-80f3-c127f82ac8b1', 'a26ace0c-d99d-4484-89e9-d8088364d42e') ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('5d64171f-493f-4f9b-9c13-68ac88e2f2c0', 'a26ace0c-d99d-4484-89e9-d8088364d42e') ON CONFLICT DO NOTHING;

INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('5d64171f-493f-4f9b-9c13-68ac88e2f2c0', 'a26ace0c-d99d-4484-89e9-d8088364d42e') ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '5d64171f-493f-4f9b-9c13-68ac88e2f2c0', id FROM public.items WHERE type = 'kanji' AND character = '食' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id)
SELECT '5d64171f-493f-4f9b-9c13-68ac88e2f2c0', id FROM public.items WHERE type = 'kanji' AND character = '食' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT 'bf0353e1-27b4-4dd3-9a13-304befd08fc2', id FROM public.items WHERE type = 'kanji' AND character = '体' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id)
SELECT 'bf0353e1-27b4-4dd3-9a13-304befd08fc2', id FROM public.items WHERE type = 'kanji' AND character = '体' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('bf0353e1-27b4-4dd3-9a13-304befd08fc2', 'c686146c-ca8b-45ee-ba89-8ccf3cbb8ec8') ON CONFLICT DO NOTHING;

INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('bf0353e1-27b4-4dd3-9a13-304befd08fc2', 'c686146c-ca8b-45ee-ba89-8ccf3cbb8ec8') ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('8c1f02c0-8c07-4945-8be6-62d6ebce12b3', 'a26ace0c-d99d-4484-89e9-d8088364d42e') ON CONFLICT DO NOTHING;

INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('8c1f02c0-8c07-4945-8be6-62d6ebce12b3', 'a26ace0c-d99d-4484-89e9-d8088364d42e') ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('8c1f02c0-8c07-4945-8be6-62d6ebce12b3', 'c686146c-ca8b-45ee-ba89-8ccf3cbb8ec8') ON CONFLICT DO NOTHING;

INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('8c1f02c0-8c07-4945-8be6-62d6ebce12b3', 'c686146c-ca8b-45ee-ba89-8ccf3cbb8ec8') ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '3cae6aab-6142-470b-bf5a-491b4d3b06bc', id FROM public.items WHERE type = 'kanji' AND character = '入' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id)
SELECT '3cae6aab-6142-470b-bf5a-491b4d3b06bc', id FROM public.items WHERE type = 'kanji' AND character = '入' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '3cae6aab-6142-470b-bf5a-491b4d3b06bc', id FROM public.items WHERE type = 'kanji' AND character = '学' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id)
SELECT '3cae6aab-6142-470b-bf5a-491b4d3b06bc', id FROM public.items WHERE type = 'kanji' AND character = '学' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('3cae6aab-6142-470b-bf5a-491b4d3b06bc', 'a26ace0c-d99d-4484-89e9-d8088364d42e') ON CONFLICT DO NOTHING;

INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('3cae6aab-6142-470b-bf5a-491b4d3b06bc', 'a26ace0c-d99d-4484-89e9-d8088364d42e') ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('3cae6aab-6142-470b-bf5a-491b4d3b06bc', 'c686146c-ca8b-45ee-ba89-8ccf3cbb8ec8') ON CONFLICT DO NOTHING;

INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('3cae6aab-6142-470b-bf5a-491b4d3b06bc', 'c686146c-ca8b-45ee-ba89-8ccf3cbb8ec8') ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '7c4f0978-0843-4ad4-bb6c-c97b91b947d2', id FROM public.items WHERE type = 'kanji' AND character = '火' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id)
SELECT '7c4f0978-0843-4ad4-bb6c-c97b91b947d2', id FROM public.items WHERE type = 'kanji' AND character = '火' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('7c4f0978-0843-4ad4-bb6c-c97b91b947d2', '34cdb410-a8c5-472f-ac5f-badd2600fabd') ON CONFLICT DO NOTHING;

INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('7c4f0978-0843-4ad4-bb6c-c97b91b947d2', '34cdb410-a8c5-472f-ac5f-badd2600fabd') ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '7c4f0978-0843-4ad4-bb6c-c97b91b947d2', id FROM public.items WHERE type = 'kanji' AND character = '日' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id)
SELECT '7c4f0978-0843-4ad4-bb6c-c97b91b947d2', id FROM public.items WHERE type = 'kanji' AND character = '日' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT 'd8994d0e-a248-440c-8a10-1169a80d1a92', id FROM public.items WHERE type = 'kanji' AND character = '金' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id)
SELECT 'd8994d0e-a248-440c-8a10-1169a80d1a92', id FROM public.items WHERE type = 'kanji' AND character = '金' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('d8994d0e-a248-440c-8a10-1169a80d1a92', '34cdb410-a8c5-472f-ac5f-badd2600fabd') ON CONFLICT DO NOTHING;

INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('d8994d0e-a248-440c-8a10-1169a80d1a92', '34cdb410-a8c5-472f-ac5f-badd2600fabd') ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT 'd8994d0e-a248-440c-8a10-1169a80d1a92', id FROM public.items WHERE type = 'kanji' AND character = '日' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id)
SELECT 'd8994d0e-a248-440c-8a10-1169a80d1a92', id FROM public.items WHERE type = 'kanji' AND character = '日' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('30af705c-7511-4684-876a-3e6be7fee734', '50e8d3c1-8493-43d8-9818-5feb496eff04') ON CONFLICT DO NOTHING;

INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('30af705c-7511-4684-876a-3e6be7fee734', '50e8d3c1-8493-43d8-9818-5feb496eff04') ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '30af705c-7511-4684-876a-3e6be7fee734', id FROM public.items WHERE type = 'kanji' AND character = '外' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id)
SELECT '30af705c-7511-4684-876a-3e6be7fee734', id FROM public.items WHERE type = 'kanji' AND character = '外' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('8018511b-1fe9-4d73-b1c1-7e420cd3830a', '1d863db0-dce1-4675-99b7-fe2ff8a83bd4') ON CONFLICT DO NOTHING;

INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('8018511b-1fe9-4d73-b1c1-7e420cd3830a', '1d863db0-dce1-4675-99b7-fe2ff8a83bd4') ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '8018511b-1fe9-4d73-b1c1-7e420cd3830a', id FROM public.items WHERE type = 'kanji' AND character = '始' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id)
SELECT '8018511b-1fe9-4d73-b1c1-7e420cd3830a', id FROM public.items WHERE type = 'kanji' AND character = '始' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('8eebdac1-d2d0-49cb-9d1b-e10eb719c51f', 'f988c828-230b-4aa1-b963-ed48fe194f50') ON CONFLICT DO NOTHING;

INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('8eebdac1-d2d0-49cb-9d1b-e10eb719c51f', 'f988c828-230b-4aa1-b963-ed48fe194f50') ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('f7155bac-c45d-42a6-a50c-6257822b7f57', 'f988c828-230b-4aa1-b963-ed48fe194f50') ON CONFLICT DO NOTHING;

INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('f7155bac-c45d-42a6-a50c-6257822b7f57', 'f988c828-230b-4aa1-b963-ed48fe194f50') ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT 'f7155bac-c45d-42a6-a50c-6257822b7f57', id FROM public.items WHERE type = 'kanji' AND character = '問' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id)
SELECT 'f7155bac-c45d-42a6-a50c-6257822b7f57', id FROM public.items WHERE type = 'kanji' AND character = '問' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '74da44fc-b05f-4346-9624-a1d84581695e', id FROM public.items WHERE type = 'kanji' AND character = '品' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id)
SELECT '74da44fc-b05f-4346-9624-a1d84581695e', id FROM public.items WHERE type = 'kanji' AND character = '品' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('74da44fc-b05f-4346-9624-a1d84581695e', 'f988c828-230b-4aa1-b963-ed48fe194f50') ON CONFLICT DO NOTHING;

INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('74da44fc-b05f-4346-9624-a1d84581695e', 'f988c828-230b-4aa1-b963-ed48fe194f50') ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '5be30d12-b34d-4c65-80e2-89346314b4e2', id FROM public.items WHERE type = 'kanji' AND character = '特' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id)
SELECT '5be30d12-b34d-4c65-80e2-89346314b4e2', id FROM public.items WHERE type = 'kanji' AND character = '特' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('5be30d12-b34d-4c65-80e2-89346314b4e2', 'f988c828-230b-4aa1-b963-ed48fe194f50') ON CONFLICT DO NOTHING;

INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('5be30d12-b34d-4c65-80e2-89346314b4e2', 'f988c828-230b-4aa1-b963-ed48fe194f50') ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('2077fb59-fb65-4551-a929-df269d8efa71', 'ef0f7c9f-a157-449a-98e2-6f19e9405160') ON CONFLICT DO NOTHING;

INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('2077fb59-fb65-4551-a929-df269d8efa71', 'ef0f7c9f-a157-449a-98e2-6f19e9405160') ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('60594531-65ba-4412-93eb-decf7315c968', 'ef0f7c9f-a157-449a-98e2-6f19e9405160') ON CONFLICT DO NOTHING;

INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('60594531-65ba-4412-93eb-decf7315c968', 'ef0f7c9f-a157-449a-98e2-6f19e9405160') ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '60594531-65ba-4412-93eb-decf7315c968', id FROM public.items WHERE type = 'kanji' AND character = '切' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id)
SELECT '60594531-65ba-4412-93eb-decf7315c968', id FROM public.items WHERE type = 'kanji' AND character = '切' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('de8247b6-04cb-4be4-8bc3-ad2fbe4b3e09', 'ef0f7c9f-a157-449a-98e2-6f19e9405160') ON CONFLICT DO NOTHING;

INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('de8247b6-04cb-4be4-8bc3-ad2fbe4b3e09', 'ef0f7c9f-a157-449a-98e2-6f19e9405160') ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT 'f0d873bd-f654-49af-86da-510ec87dc5fb', id FROM public.items WHERE type = 'kanji' AND character = '有' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id)
SELECT 'f0d873bd-f654-49af-86da-510ec87dc5fb', id FROM public.items WHERE type = 'kanji' AND character = '有' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('f0d873bd-f654-49af-86da-510ec87dc5fb', '50e8d3c1-8493-43d8-9818-5feb496eff04') ON CONFLICT DO NOTHING;

INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('f0d873bd-f654-49af-86da-510ec87dc5fb', '50e8d3c1-8493-43d8-9818-5feb496eff04') ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '5ac174a5-5e19-43e0-910b-5c69364daae4', id FROM public.items WHERE type = 'kanji' AND character = '北' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id)
SELECT '5ac174a5-5e19-43e0-910b-5c69364daae4', id FROM public.items WHERE type = 'kanji' AND character = '北' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '5ac174a5-5e19-43e0-910b-5c69364daae4', id FROM public.items WHERE type = 'kanji' AND character = '海' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id)
SELECT '5ac174a5-5e19-43e0-910b-5c69364daae4', id FROM public.items WHERE type = 'kanji' AND character = '海' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('5ac174a5-5e19-43e0-910b-5c69364daae4', '35b3e5d3-3529-4ab3-8e7d-63363cbfa9f3') ON CONFLICT DO NOTHING;

INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('5ac174a5-5e19-43e0-910b-5c69364daae4', '35b3e5d3-3529-4ab3-8e7d-63363cbfa9f3') ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('0d32e8b8-8e63-4730-9a9b-dc7d277b72ba', 'ea1148d3-f9cf-47f9-872f-a2b43578ad7c') ON CONFLICT DO NOTHING;

INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('0d32e8b8-8e63-4730-9a9b-dc7d277b72ba', 'ea1148d3-f9cf-47f9-872f-a2b43578ad7c') ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '0d32e8b8-8e63-4730-9a9b-dc7d277b72ba', id FROM public.items WHERE type = 'kanji' AND character = '年' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id)
SELECT '0d32e8b8-8e63-4730-9a9b-dc7d277b72ba', id FROM public.items WHERE type = 'kanji' AND character = '年' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '8e62b6b8-8174-46d7-8c7d-cb466065d2b1', id FROM public.items WHERE type = 'kanji' AND character = '立' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id)
SELECT '8e62b6b8-8174-46d7-8c7d-cb466065d2b1', id FROM public.items WHERE type = 'kanji' AND character = '立' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('8e62b6b8-8174-46d7-8c7d-cb466065d2b1', 'c7ad89de-5bd3-4cda-973d-2fe9b9bbd084') ON CONFLICT DO NOTHING;

INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('8e62b6b8-8174-46d7-8c7d-cb466065d2b1', 'c7ad89de-5bd3-4cda-973d-2fe9b9bbd084') ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('606ea189-549b-49d3-b4d9-80ecc91f0ed5', '44e904c6-78be-4597-908b-258583fb22ea') ON CONFLICT DO NOTHING;

INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('606ea189-549b-49d3-b4d9-80ecc91f0ed5', '44e904c6-78be-4597-908b-258583fb22ea') ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '606ea189-549b-49d3-b4d9-80ecc91f0ed5', id FROM public.items WHERE type = 'kanji' AND character = '理' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id)
SELECT '606ea189-549b-49d3-b4d9-80ecc91f0ed5', id FROM public.items WHERE type = 'kanji' AND character = '理' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT 'a99a47a3-3e69-488f-8996-210ed163848e', id FROM public.items WHERE type = 'kanji' AND character = '毎' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id)
SELECT 'a99a47a3-3e69-488f-8996-210ed163848e', id FROM public.items WHERE type = 'kanji' AND character = '毎' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('a99a47a3-3e69-488f-8996-210ed163848e', '7363769c-76c8-4a6c-9bf5-9446e9863e7d') ON CONFLICT DO NOTHING;

INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('a99a47a3-3e69-488f-8996-210ed163848e', '7363769c-76c8-4a6c-9bf5-9446e9863e7d') ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '3809193a-8258-400b-a684-8e0484c5d8a2', id FROM public.items WHERE type = 'kanji' AND character = '作' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id)
SELECT '3809193a-8258-400b-a684-8e0484c5d8a2', id FROM public.items WHERE type = 'kanji' AND character = '作' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('3809193a-8258-400b-a684-8e0484c5d8a2', '8933b29b-c11e-4437-9272-989711ed315c') ON CONFLICT DO NOTHING;

INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('3809193a-8258-400b-a684-8e0484c5d8a2', '8933b29b-c11e-4437-9272-989711ed315c') ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '0b5e22a1-093b-4476-9ef0-15abc9acd4cc', id FROM public.items WHERE type = 'kanji' AND character = '用' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id)
SELECT '0b5e22a1-093b-4476-9ef0-15abc9acd4cc', id FROM public.items WHERE type = 'kanji' AND character = '用' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('0b5e22a1-093b-4476-9ef0-15abc9acd4cc', '50e8d3c1-8493-43d8-9818-5feb496eff04') ON CONFLICT DO NOTHING;

INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('0b5e22a1-093b-4476-9ef0-15abc9acd4cc', '50e8d3c1-8493-43d8-9818-5feb496eff04') ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('0d496769-16ff-4936-894b-8d6684d02cad', '44e904c6-78be-4597-908b-258583fb22ea') ON CONFLICT DO NOTHING;

INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('0d496769-16ff-4936-894b-8d6684d02cad', '44e904c6-78be-4597-908b-258583fb22ea') ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '96c4aca9-4b8a-43d8-bdf8-ae97b6968abb', id FROM public.items WHERE type = 'kanji' AND character = '水' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id)
SELECT '96c4aca9-4b8a-43d8-bdf8-ae97b6968abb', id FROM public.items WHERE type = 'kanji' AND character = '水' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('96c4aca9-4b8a-43d8-bdf8-ae97b6968abb', '35b3e5d3-3529-4ab3-8e7d-63363cbfa9f3') ON CONFLICT DO NOTHING;

INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('96c4aca9-4b8a-43d8-bdf8-ae97b6968abb', '35b3e5d3-3529-4ab3-8e7d-63363cbfa9f3') ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('1216d478-f8ec-47d6-9976-4ef4cbbc39d1', '44e904c6-78be-4597-908b-258583fb22ea') ON CONFLICT DO NOTHING;

INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('1216d478-f8ec-47d6-9976-4ef4cbbc39d1', '44e904c6-78be-4597-908b-258583fb22ea') ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '1216d478-f8ec-47d6-9976-4ef4cbbc39d1', id FROM public.items WHERE type = 'kanji' AND character = '言' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id)
SELECT '1216d478-f8ec-47d6-9976-4ef4cbbc39d1', id FROM public.items WHERE type = 'kanji' AND character = '言' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('cbdeb3bb-132a-4106-a67b-ba8dc7373c89', 'ea1148d3-f9cf-47f9-872f-a2b43578ad7c') ON CONFLICT DO NOTHING;

INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('cbdeb3bb-132a-4106-a67b-ba8dc7373c89', 'ea1148d3-f9cf-47f9-872f-a2b43578ad7c') ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('d2e578b6-a899-48c6-9ad8-24de966a694f', '9e16675c-c30f-408b-87c7-90ffd2ce7aee') ON CONFLICT DO NOTHING;

INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('d2e578b6-a899-48c6-9ad8-24de966a694f', '9e16675c-c30f-408b-87c7-90ffd2ce7aee') ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('7d5a9c65-e022-4c05-8c7a-f6538a1f9b98', '3956736e-d1d0-4b6f-9dce-3e0f4caeb275') ON CONFLICT DO NOTHING;

INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('7d5a9c65-e022-4c05-8c7a-f6538a1f9b98', '3956736e-d1d0-4b6f-9dce-3e0f4caeb275') ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '7d5a9c65-e022-4c05-8c7a-f6538a1f9b98', id FROM public.items WHERE type = 'kanji' AND character = '分' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id)
SELECT '7d5a9c65-e022-4c05-8c7a-f6538a1f9b98', id FROM public.items WHERE type = 'kanji' AND character = '分' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('9c0f248a-cf9f-4a0a-b0fa-83062bda03b4', '50e8d3c1-8493-43d8-9818-5feb496eff04') ON CONFLICT DO NOTHING;

INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('9c0f248a-cf9f-4a0a-b0fa-83062bda03b4', '50e8d3c1-8493-43d8-9818-5feb496eff04') ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '9c0f248a-cf9f-4a0a-b0fa-83062bda03b4', id FROM public.items WHERE type = 'kanji' AND character = '図' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id)
SELECT '9c0f248a-cf9f-4a0a-b0fa-83062bda03b4', id FROM public.items WHERE type = 'kanji' AND character = '図' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '9c0f248a-cf9f-4a0a-b0fa-83062bda03b4', id FROM public.items WHERE type = 'kanji' AND character = '的' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id)
SELECT '9c0f248a-cf9f-4a0a-b0fa-83062bda03b4', id FROM public.items WHERE type = 'kanji' AND character = '的' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '531a9bca-6dcf-4edc-a63d-fc70af69451a', id FROM public.items WHERE type = 'kanji' AND character = '本' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id)
SELECT '531a9bca-6dcf-4edc-a63d-fc70af69451a', id FROM public.items WHERE type = 'kanji' AND character = '本' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('531a9bca-6dcf-4edc-a63d-fc70af69451a', 'f988c828-230b-4aa1-b963-ed48fe194f50') ON CONFLICT DO NOTHING;

INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('531a9bca-6dcf-4edc-a63d-fc70af69451a', 'f988c828-230b-4aa1-b963-ed48fe194f50') ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('3ac6439d-d92f-4c27-a866-e6a2d60a1775', '50e8d3c1-8493-43d8-9818-5feb496eff04') ON CONFLICT DO NOTHING;

INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('3ac6439d-d92f-4c27-a866-e6a2d60a1775', '50e8d3c1-8493-43d8-9818-5feb496eff04') ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '3ac6439d-d92f-4c27-a866-e6a2d60a1775', id FROM public.items WHERE type = 'kanji' AND character = '地' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id)
SELECT '3ac6439d-d92f-4c27-a866-e6a2d60a1775', id FROM public.items WHERE type = 'kanji' AND character = '地' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '3ac6439d-d92f-4c27-a866-e6a2d60a1775', id FROM public.items WHERE type = 'kanji' AND character = '悪' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id)
SELECT '3ac6439d-d92f-4c27-a866-e6a2d60a1775', id FROM public.items WHERE type = 'kanji' AND character = '悪' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT 'ef85402c-abb4-466d-af54-e2b66c17baba', id FROM public.items WHERE type = 'kanji' AND character = '今' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id)
SELECT 'ef85402c-abb4-466d-af54-e2b66c17baba', id FROM public.items WHERE type = 'kanji' AND character = '今' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('ef85402c-abb4-466d-af54-e2b66c17baba', '7363769c-76c8-4a6c-9bf5-9446e9863e7d') ON CONFLICT DO NOTHING;

INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('ef85402c-abb4-466d-af54-e2b66c17baba', '7363769c-76c8-4a6c-9bf5-9446e9863e7d') ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('8b6527bf-5460-4984-805a-48e4425b7535', 'c63e8920-cfa1-438a-afe1-dc483ca1c692') ON CONFLICT DO NOTHING;

INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('8b6527bf-5460-4984-805a-48e4425b7535', 'c63e8920-cfa1-438a-afe1-dc483ca1c692') ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '8b6527bf-5460-4984-805a-48e4425b7535', id FROM public.items WHERE type = 'kanji' AND character = '動' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id)
SELECT '8b6527bf-5460-4984-805a-48e4425b7535', id FROM public.items WHERE type = 'kanji' AND character = '動' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '8b6527bf-5460-4984-805a-48e4425b7535', id FROM public.items WHERE type = 'kanji' AND character = '会' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id)
SELECT '8b6527bf-5460-4984-805a-48e4425b7535', id FROM public.items WHERE type = 'kanji' AND character = '会' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('098b4065-3d37-4902-9a34-2325c17153c7', 'd05f740a-4d9f-47df-a59f-6bb57738d210') ON CONFLICT DO NOTHING;

INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('098b4065-3d37-4902-9a34-2325c17153c7', 'd05f740a-4d9f-47df-a59f-6bb57738d210') ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT 'fe330237-3678-4b47-818a-fec705121ae8', id FROM public.items WHERE type = 'kanji' AND character = '山' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id)
SELECT 'fe330237-3678-4b47-818a-fec705121ae8', id FROM public.items WHERE type = 'kanji' AND character = '山' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('fe330237-3678-4b47-818a-fec705121ae8', '35b3e5d3-3529-4ab3-8e7d-63363cbfa9f3') ON CONFLICT DO NOTHING;

INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('fe330237-3678-4b47-818a-fec705121ae8', '35b3e5d3-3529-4ab3-8e7d-63363cbfa9f3') ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('72db3fcb-98b2-412b-abc9-919d17f66ad4', '44e904c6-78be-4597-908b-258583fb22ea') ON CONFLICT DO NOTHING;

INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('72db3fcb-98b2-412b-abc9-919d17f66ad4', '44e904c6-78be-4597-908b-258583fb22ea') ON CONFLICT DO NOTHING;

-- 7. Initialize progress for all existing profiles
DO $$
DECLARE
  r_profile RECORD;

BEGIN
  FOR r_profile IN SELECT id FROM public.profiles LOOP
    PERFORM public.initialize_user_progress(r_profile.id);

END LOOP;

END $$;

