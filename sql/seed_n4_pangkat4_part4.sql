SELECT '712bd47a-1255-4b17-970d-109e7a8c9b4e', id FROM public.items WHERE type = 'kanji' AND character = '世' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('712bd47a-1255-4b17-970d-109e7a8c9b4e', 'e922fc78-d5c4-42dc-938a-d758e852e91c') ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('712bd47a-1255-4b17-970d-109e7a8c9b4e', 'e922fc78-d5c4-42dc-938a-d758e852e91c') ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('5d0d1e78-685d-4bb4-9784-aaea03f8fd50', '4b11e285-2c7b-40ce-8d1c-dc9b15eea18b') ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('5d0d1e78-685d-4bb4-9784-aaea03f8fd50', '4b11e285-2c7b-40ce-8d1c-dc9b15eea18b') ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '5d0d1e78-685d-4bb4-9784-aaea03f8fd50', id FROM public.items WHERE type = 'kanji' AND character = '売' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id)
SELECT '5d0d1e78-685d-4bb4-9784-aaea03f8fd50', id FROM public.items WHERE type = 'kanji' AND character = '売' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('ce222b7e-155f-4b52-a04e-9b9430b48ded', '4b11e285-2c7b-40ce-8d1c-dc9b15eea18b') ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('ce222b7e-155f-4b52-a04e-9b9430b48ded', '4b11e285-2c7b-40ce-8d1c-dc9b15eea18b') ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('ce222b7e-155f-4b52-a04e-9b9430b48ded', 'b3cc1beb-bcec-47cf-a0ca-843bc906056d') ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('ce222b7e-155f-4b52-a04e-9b9430b48ded', 'b3cc1beb-bcec-47cf-a0ca-843bc906056d') ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('8c8aa4a0-9aeb-4cfe-bf2f-1e12d5dc6112', '4b11e285-2c7b-40ce-8d1c-dc9b15eea18b') ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('8c8aa4a0-9aeb-4cfe-bf2f-1e12d5dc6112', '4b11e285-2c7b-40ce-8d1c-dc9b15eea18b') ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '8c8aa4a0-9aeb-4cfe-bf2f-1e12d5dc6112', id FROM public.items WHERE type = 'kanji' AND character = '見' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id)
SELECT '8c8aa4a0-9aeb-4cfe-bf2f-1e12d5dc6112', id FROM public.items WHERE type = 'kanji' AND character = '見' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('f892f5bd-3f09-427d-9d7b-1c149afa7488', '3351cb4f-ef0e-4f15-b6a8-03ddafadd269') ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('f892f5bd-3f09-427d-9d7b-1c149afa7488', '3351cb4f-ef0e-4f15-b6a8-03ddafadd269') ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('701f1024-824c-4558-a012-a95606c96d7b', 'b401f4fd-5fa3-4789-b55c-afeb84890183') ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('701f1024-824c-4558-a012-a95606c96d7b', 'b401f4fd-5fa3-4789-b55c-afeb84890183') ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT 'dc20b25c-74b9-46df-8960-e69bc810f253', id FROM public.items WHERE type = 'kanji' AND character = '体' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id)
SELECT 'dc20b25c-74b9-46df-8960-e69bc810f253', id FROM public.items WHERE type = 'kanji' AND character = '体' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('dc20b25c-74b9-46df-8960-e69bc810f253', 'b401f4fd-5fa3-4789-b55c-afeb84890183') ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('dc20b25c-74b9-46df-8960-e69bc810f253', 'b401f4fd-5fa3-4789-b55c-afeb84890183') ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT 'ebfbb8d5-0146-45a5-977e-b56f6353145f', id FROM public.items WHERE type = 'kanji' AND character = '二' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id)
SELECT 'ebfbb8d5-0146-45a5-977e-b56f6353145f', id FROM public.items WHERE type = 'kanji' AND character = '二' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('ebfbb8d5-0146-45a5-977e-b56f6353145f', 'b401f4fd-5fa3-4789-b55c-afeb84890183') ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('ebfbb8d5-0146-45a5-977e-b56f6353145f', 'b401f4fd-5fa3-4789-b55c-afeb84890183') ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('9c5f20ad-d89f-41e6-ae50-99029f2ae6ea', 'ee941b70-396e-4a52-a8e8-e02125aac2c0') ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('9c5f20ad-d89f-41e6-ae50-99029f2ae6ea', 'ee941b70-396e-4a52-a8e8-e02125aac2c0') ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('9c5f20ad-d89f-41e6-ae50-99029f2ae6ea', 'fdaecbbd-e695-4093-8ba2-70f12f7d6c87') ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('9c5f20ad-d89f-41e6-ae50-99029f2ae6ea', 'fdaecbbd-e695-4093-8ba2-70f12f7d6c87') ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('877256a0-8066-4ac5-9240-5bffb7ef14fe', 'ee941b70-396e-4a52-a8e8-e02125aac2c0') ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('877256a0-8066-4ac5-9240-5bffb7ef14fe', 'ee941b70-396e-4a52-a8e8-e02125aac2c0') ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '877256a0-8066-4ac5-9240-5bffb7ef14fe', id FROM public.items WHERE type = 'kanji' AND character = '服' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id)
SELECT '877256a0-8066-4ac5-9240-5bffb7ef14fe', id FROM public.items WHERE type = 'kanji' AND character = '服' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('e37969d1-e86e-428d-b6d6-82d1520d27c5', 'ee941b70-396e-4a52-a8e8-e02125aac2c0') ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('e37969d1-e86e-428d-b6d6-82d1520d27c5', 'ee941b70-396e-4a52-a8e8-e02125aac2c0') ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT 'e37969d1-e86e-428d-b6d6-82d1520d27c5', id FROM public.items WHERE type = 'kanji' AND character = '食' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id)
SELECT 'e37969d1-e86e-428d-b6d6-82d1520d27c5', id FROM public.items WHERE type = 'kanji' AND character = '食' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('f02db5de-5125-4f2f-ad94-540b59e115f4', 'ee941b70-396e-4a52-a8e8-e02125aac2c0') ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('f02db5de-5125-4f2f-ad94-540b59e115f4', 'ee941b70-396e-4a52-a8e8-e02125aac2c0') ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('f02db5de-5125-4f2f-ad94-540b59e115f4', '2896f5bc-7f14-44ea-bb53-1adbc0ee50f1') ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('f02db5de-5125-4f2f-ad94-540b59e115f4', '2896f5bc-7f14-44ea-bb53-1adbc0ee50f1') ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('c7799672-d771-4b09-93e7-0838e625b566', 'fdaecbbd-e695-4093-8ba2-70f12f7d6c87') ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('c7799672-d771-4b09-93e7-0838e625b566', 'fdaecbbd-e695-4093-8ba2-70f12f7d6c87') ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('261e0f59-e3f1-41df-9051-5b2235ee2987', '64d6561c-ea2f-448d-b69b-9325a7a27310') ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('261e0f59-e3f1-41df-9051-5b2235ee2987', '64d6561c-ea2f-448d-b69b-9325a7a27310') ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '261e0f59-e3f1-41df-9051-5b2235ee2987', id FROM public.items WHERE type = 'kanji' AND character = '出' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id)
SELECT '261e0f59-e3f1-41df-9051-5b2235ee2987', id FROM public.items WHERE type = 'kanji' AND character = '出' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('65435859-1ba4-48b9-97f6-e100e5632881', '64d6561c-ea2f-448d-b69b-9325a7a27310') ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('65435859-1ba4-48b9-97f6-e100e5632881', '64d6561c-ea2f-448d-b69b-9325a7a27310') ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '65435859-1ba4-48b9-97f6-e100e5632881', id FROM public.items WHERE type = 'kanji' AND character = '出' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id)
SELECT '65435859-1ba4-48b9-97f6-e100e5632881', id FROM public.items WHERE type = 'kanji' AND character = '出' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('7c52342e-5d9f-4aed-b222-7db83a9bfaab', '5a266cd1-fd58-4cf0-bc14-aa168899c508') ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('7c52342e-5d9f-4aed-b222-7db83a9bfaab', '5a266cd1-fd58-4cf0-bc14-aa168899c508') ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '7c52342e-5d9f-4aed-b222-7db83a9bfaab', id FROM public.items WHERE type = 'kanji' AND character = '空' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id)
SELECT '7c52342e-5d9f-4aed-b222-7db83a9bfaab', id FROM public.items WHERE type = 'kanji' AND character = '空' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('5e10b6c8-3f61-4408-aa01-95b4c26c5aae', 'fbd67782-0b46-40d8-b965-442611010a20') ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('5e10b6c8-3f61-4408-aa01-95b4c26c5aae', 'fbd67782-0b46-40d8-b965-442611010a20') ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT 'd19bd2bc-395f-4309-b354-1e004d66837a', id FROM public.items WHERE type = 'kanji' AND character = '見' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id)
SELECT 'd19bd2bc-395f-4309-b354-1e004d66837a', id FROM public.items WHERE type = 'kanji' AND character = '見' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('d19bd2bc-395f-4309-b354-1e004d66837a', '3351cb4f-ef0e-4f15-b6a8-03ddafadd269') ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('d19bd2bc-395f-4309-b354-1e004d66837a', '3351cb4f-ef0e-4f15-b6a8-03ddafadd269') ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('b662c80a-8bf7-4db2-984e-c59a1a1b04d3', 'b3cc1beb-bcec-47cf-a0ca-843bc906056d') ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('b662c80a-8bf7-4db2-984e-c59a1a1b04d3', 'b3cc1beb-bcec-47cf-a0ca-843bc906056d') ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT 'b662c80a-8bf7-4db2-984e-c59a1a1b04d3', id FROM public.items WHERE type = 'kanji' AND character = '読' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id)
SELECT 'b662c80a-8bf7-4db2-984e-c59a1a1b04d3', id FROM public.items WHERE type = 'kanji' AND character = '読' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('6a7c6a9a-db63-4066-aeba-56e643950f82', '8583e778-cc4a-4a2f-8e73-73190b71cfd2') ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('6a7c6a9a-db63-4066-aeba-56e643950f82', '8583e778-cc4a-4a2f-8e73-73190b71cfd2') ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('7a3a3549-45ae-45f5-a21b-7384c0f25c01', '8583e778-cc4a-4a2f-8e73-73190b71cfd2') ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('7a3a3549-45ae-45f5-a21b-7384c0f25c01', '8583e778-cc4a-4a2f-8e73-73190b71cfd2') ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '7a3a3549-45ae-45f5-a21b-7384c0f25c01', id FROM public.items WHERE type = 'kanji' AND character = '画' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id)
SELECT '7a3a3549-45ae-45f5-a21b-7384c0f25c01', id FROM public.items WHERE type = 'kanji' AND character = '画' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('bf752cfc-22c1-432b-8743-6521aa525f44', '1b2c4b31-02d3-4649-9a03-63c4f867664e') ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('bf752cfc-22c1-432b-8743-6521aa525f44', '1b2c4b31-02d3-4649-9a03-63c4f867664e') ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('919acbd4-9300-4c5f-bc82-8eedc1ffb553', '13832f40-886f-4950-af11-4a417e28513f') ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('919acbd4-9300-4c5f-bc82-8eedc1ffb553', '13832f40-886f-4950-af11-4a417e28513f') ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('63c9f85b-6515-4f51-aea9-a0834e4a2043', '13832f40-886f-4950-af11-4a417e28513f') ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('63c9f85b-6515-4f51-aea9-a0834e4a2043', '13832f40-886f-4950-af11-4a417e28513f') ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '63c9f85b-6515-4f51-aea9-a0834e4a2043', id FROM public.items WHERE type = 'kanji' AND character = '休' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id)
SELECT '63c9f85b-6515-4f51-aea9-a0834e4a2043', id FROM public.items WHERE type = 'kanji' AND character = '休' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('4629d5db-baaa-497f-bfb4-f543702141a0', 'a210c5a5-c45b-49b2-99b4-1b244cf978a6') ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('4629d5db-baaa-497f-bfb4-f543702141a0', 'a210c5a5-c45b-49b2-99b4-1b244cf978a6') ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('9df50609-4251-4b54-bee0-ac0b1c6f9d0a', 'b969a549-ccf0-40e8-bb6d-77d83f9d5986') ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('9df50609-4251-4b54-bee0-ac0b1c6f9d0a', 'b969a549-ccf0-40e8-bb6d-77d83f9d5986') ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '71898150-a2d4-4f55-9735-32da8ceb7d15', id FROM public.items WHERE type = 'kanji' AND character = '時' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id)
SELECT '71898150-a2d4-4f55-9735-32da8ceb7d15', id FROM public.items WHERE type = 'kanji' AND character = '時' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('71898150-a2d4-4f55-9735-32da8ceb7d15', '6c07217c-ef8f-425b-8d83-797a673bbfa0') ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('71898150-a2d4-4f55-9735-32da8ceb7d15', '6c07217c-ef8f-425b-8d83-797a673bbfa0') ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('14a7f30c-cbe7-4de8-85ee-bd72fa5d848e', '6c07217c-ef8f-425b-8d83-797a673bbfa0') ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('14a7f30c-cbe7-4de8-85ee-bd72fa5d848e', '6c07217c-ef8f-425b-8d83-797a673bbfa0') ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '14a7f30c-cbe7-4de8-85ee-bd72fa5d848e', id FROM public.items WHERE type = 'kanji' AND character = '画' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id)
SELECT '14a7f30c-cbe7-4de8-85ee-bd72fa5d848e', id FROM public.items WHERE type = 'kanji' AND character = '画' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '0779c47f-8a17-4cd7-b708-791ec38502b3', id FROM public.items WHERE type = 'kanji' AND character = '下' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id)
SELECT '0779c47f-8a17-4cd7-b708-791ec38502b3', id FROM public.items WHERE type = 'kanji' AND character = '下' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('0779c47f-8a17-4cd7-b708-791ec38502b3', '938e39ed-5ecf-40d3-a5fa-8930fe34d891') ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('0779c47f-8a17-4cd7-b708-791ec38502b3', '938e39ed-5ecf-40d3-a5fa-8930fe34d891') ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '06e52c38-1122-478b-a515-2787c3d84a21', id FROM public.items WHERE type = 'kanji' AND character = '作' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id)
SELECT '06e52c38-1122-478b-a515-2787c3d84a21', id FROM public.items WHERE type = 'kanji' AND character = '作' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('06e52c38-1122-478b-a515-2787c3d84a21', '938e39ed-5ecf-40d3-a5fa-8930fe34d891') ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('06e52c38-1122-478b-a515-2787c3d84a21', '938e39ed-5ecf-40d3-a5fa-8930fe34d891') ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('f4b52089-42f2-4bad-b001-49ed128fbbad', '938e39ed-5ecf-40d3-a5fa-8930fe34d891') ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('f4b52089-42f2-4bad-b001-49ed128fbbad', '938e39ed-5ecf-40d3-a5fa-8930fe34d891') ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('6183e46c-f780-4058-bfbd-2a908d130ebb', '688007ab-616f-4f11-ac69-e74e9a9a1663') ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('6183e46c-f780-4058-bfbd-2a908d130ebb', '688007ab-616f-4f11-ac69-e74e9a9a1663') ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('32f506dd-d809-4ba6-b6ef-e59464728a17', '688007ab-616f-4f11-ac69-e74e9a9a1663') ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('32f506dd-d809-4ba6-b6ef-e59464728a17', '688007ab-616f-4f11-ac69-e74e9a9a1663') ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('ec25c83e-521b-40c3-a525-fca20040b443', '688007ab-616f-4f11-ac69-e74e9a9a1663') ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('ec25c83e-521b-40c3-a525-fca20040b443', '688007ab-616f-4f11-ac69-e74e9a9a1663') ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT 'ec25c83e-521b-40c3-a525-fca20040b443', id FROM public.items WHERE type = 'kanji' AND character = '死' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id)
SELECT 'ec25c83e-521b-40c3-a525-fca20040b443', id FROM public.items WHERE type = 'kanji' AND character = '死' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('dbbe3c85-0f82-4638-bfde-51876ac81a7e', '688007ab-616f-4f11-ac69-e74e9a9a1663') ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('dbbe3c85-0f82-4638-bfde-51876ac81a7e', '688007ab-616f-4f11-ac69-e74e9a9a1663') ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT 'dbbe3c85-0f82-4638-bfde-51876ac81a7e', id FROM public.items WHERE type = 'kanji' AND character = '行' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id)
SELECT 'dbbe3c85-0f82-4638-bfde-51876ac81a7e', id FROM public.items WHERE type = 'kanji' AND character = '行' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('35944b9d-f242-4800-86de-8856a88cae20', '8583e778-cc4a-4a2f-8e73-73190b71cfd2') ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('35944b9d-f242-4800-86de-8856a88cae20', '8583e778-cc4a-4a2f-8e73-73190b71cfd2') ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '0f0fb56e-ce1e-4a78-9144-ef574df11449', id FROM public.items WHERE type = 'kanji' AND character = '気' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id)
SELECT '0f0fb56e-ce1e-4a78-9144-ef574df11449', id FROM public.items WHERE type = 'kanji' AND character = '気' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('0f0fb56e-ce1e-4a78-9144-ef574df11449', '41630936-df8f-4972-bfd4-d03503307c39') ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('0f0fb56e-ce1e-4a78-9144-ef574df11449', '41630936-df8f-4972-bfd4-d03503307c39') ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('f3434e4e-3adf-44f2-81f1-0ac8b497d832', '1b2c4b31-02d3-4649-9a03-63c4f867664e') ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('f3434e4e-3adf-44f2-81f1-0ac8b497d832', '1b2c4b31-02d3-4649-9a03-63c4f867664e') ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('41797880-6724-42f5-81f2-dfa5588c4768', '1b2c4b31-02d3-4649-9a03-63c4f867664e') ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('41797880-6724-42f5-81f2-dfa5588c4768', '1b2c4b31-02d3-4649-9a03-63c4f867664e') ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '41797880-6724-42f5-81f2-dfa5588c4768', id FROM public.items WHERE type = 'kanji' AND character = '物' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id)
SELECT '41797880-6724-42f5-81f2-dfa5588c4768', id FROM public.items WHERE type = 'kanji' AND character = '物' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('90575f91-5565-4bd7-938f-3d5f93bb426f', '1b2c4b31-02d3-4649-9a03-63c4f867664e') ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('90575f91-5565-4bd7-938f-3d5f93bb426f', '1b2c4b31-02d3-4649-9a03-63c4f867664e') ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '90575f91-5565-4bd7-938f-3d5f93bb426f', id FROM public.items WHERE type = 'kanji' AND character = '前' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id)
SELECT '90575f91-5565-4bd7-938f-3d5f93bb426f', id FROM public.items WHERE type = 'kanji' AND character = '前' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '5d71d67d-eec4-44d5-a7a9-34a313bebd3b', id FROM public.items WHERE type = 'kanji' AND character = '上' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id)
SELECT '5d71d67d-eec4-44d5-a7a9-34a313bebd3b', id FROM public.items WHERE type = 'kanji' AND character = '上' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('5d71d67d-eec4-44d5-a7a9-34a313bebd3b', '938e39ed-5ecf-40d3-a5fa-8930fe34d891') ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('5d71d67d-eec4-44d5-a7a9-34a313bebd3b', '938e39ed-5ecf-40d3-a5fa-8930fe34d891') ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT 'ec8dcbae-ab16-4d98-864f-cfc9f9bb244b', id FROM public.items WHERE type = 'kanji' AND character = '出' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id)
SELECT 'ec8dcbae-ab16-4d98-864f-cfc9f9bb244b', id FROM public.items WHERE type = 'kanji' AND character = '出' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('ec8dcbae-ab16-4d98-864f-cfc9f9bb244b', '4b11e285-2c7b-40ce-8d1c-dc9b15eea18b') ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('ec8dcbae-ab16-4d98-864f-cfc9f9bb244b', '4b11e285-2c7b-40ce-8d1c-dc9b15eea18b') ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '4977fd3a-ae83-4257-98fd-ac3fd408e33a', id FROM public.items WHERE type = 'kanji' AND character = '本' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id)
SELECT '4977fd3a-ae83-4257-98fd-ac3fd408e33a', id FROM public.items WHERE type = 'kanji' AND character = '本' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('4977fd3a-ae83-4257-98fd-ac3fd408e33a', '3087dcce-faf8-43b9-9cb3-7312cc09b718') ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('4977fd3a-ae83-4257-98fd-ac3fd408e33a', '3087dcce-faf8-43b9-9cb3-7312cc09b718') ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('d1277aaa-0fb8-4d90-b21b-4e6287b692f4', '4b11e285-2c7b-40ce-8d1c-dc9b15eea18b') ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('d1277aaa-0fb8-4d90-b21b-4e6287b692f4', '4b11e285-2c7b-40ce-8d1c-dc9b15eea18b') ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT 'd1277aaa-0fb8-4d90-b21b-4e6287b692f4', id FROM public.items WHERE type = 'kanji' AND character = '売' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id)
SELECT 'd1277aaa-0fb8-4d90-b21b-4e6287b692f4', id FROM public.items WHERE type = 'kanji' AND character = '売' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT 'd1277aaa-0fb8-4d90-b21b-4e6287b692f4', id FROM public.items WHERE type = 'kanji' AND character = '中' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id)
SELECT 'd1277aaa-0fb8-4d90-b21b-4e6287b692f4', id FROM public.items WHERE type = 'kanji' AND character = '中' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('14f04faa-8676-4826-bf8f-c9da9b822a42', '784e2a30-6fa1-4bbb-b719-9f381b929111') ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('14f04faa-8676-4826-bf8f-c9da9b822a42', '784e2a30-6fa1-4bbb-b719-9f381b929111') ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('481fcaec-23cb-4a6a-88ff-badf903f8ce7', '2896f5bc-7f14-44ea-bb53-1adbc0ee50f1') ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('481fcaec-23cb-4a6a-88ff-badf903f8ce7', '2896f5bc-7f14-44ea-bb53-1adbc0ee50f1') ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('44188a82-23b3-42ac-9cec-8a822998d9ff', '64d6561c-ea2f-448d-b69b-9325a7a27310') ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('44188a82-23b3-42ac-9cec-8a822998d9ff', '64d6561c-ea2f-448d-b69b-9325a7a27310') ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('12e979f1-b555-4071-a421-3faafd49b878', '688007ab-616f-4f11-ac69-e74e9a9a1663') ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('12e979f1-b555-4071-a421-3faafd49b878', '688007ab-616f-4f11-ac69-e74e9a9a1663') ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '21f3ef72-3e02-4829-a03b-cdd77fc7caaa', id FROM public.items WHERE type = 'kanji' AND character = '台' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id)
SELECT '21f3ef72-3e02-4829-a03b-cdd77fc7caaa', id FROM public.items WHERE type = 'kanji' AND character = '台' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('21f3ef72-3e02-4829-a03b-cdd77fc7caaa', 'fdaecbbd-e695-4093-8ba2-70f12f7d6c87') ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('21f3ef72-3e02-4829-a03b-cdd77fc7caaa', 'fdaecbbd-e695-4093-8ba2-70f12f7d6c87') ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '4921b141-433e-40b7-9350-95207d06dee7', id FROM public.items WHERE type = 'kanji' AND character = '地' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id)
SELECT '4921b141-433e-40b7-9350-95207d06dee7', id FROM public.items WHERE type = 'kanji' AND character = '地' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '4921b141-433e-40b7-9350-95207d06dee7', id FROM public.items WHERE type = 'kanji' AND character = '中' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id)
SELECT '4921b141-433e-40b7-9350-95207d06dee7', id FROM public.items WHERE type = 'kanji' AND character = '中' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('4921b141-433e-40b7-9350-95207d06dee7', '6034ce0d-13b2-4a67-8ee9-3929271f7ca2') ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('4921b141-433e-40b7-9350-95207d06dee7', '6034ce0d-13b2-4a67-8ee9-3929271f7ca2') ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('d4cb26d2-e9c7-4438-be48-5f45a2ffc011', '3087dcce-faf8-43b9-9cb3-7312cc09b718') ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('d4cb26d2-e9c7-4438-be48-5f45a2ffc011', '3087dcce-faf8-43b9-9cb3-7312cc09b718') ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT 'd4cb26d2-e9c7-4438-be48-5f45a2ffc011', id FROM public.items WHERE type = 'kanji' AND character = '上' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id)
SELECT 'd4cb26d2-e9c7-4438-be48-5f45a2ffc011', id FROM public.items WHERE type = 'kanji' AND character = '上' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '5ef8b2ac-9520-4b8b-8818-649234b510f9', id FROM public.items WHERE type = 'kanji' AND character = '何' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id)
SELECT '5ef8b2ac-9520-4b8b-8818-649234b510f9', id FROM public.items WHERE type = 'kanji' AND character = '何' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('5ef8b2ac-9520-4b8b-8818-649234b510f9', '0d6a927b-b81a-48eb-9ad6-eca2e289c754') ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('5ef8b2ac-9520-4b8b-8818-649234b510f9', '0d6a927b-b81a-48eb-9ad6-eca2e289c754') ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '53373d45-090a-43d8-aabd-a791a6361a97', id FROM public.items WHERE type = 'kanji' AND character = '西' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id)
SELECT '53373d45-090a-43d8-aabd-a791a6361a97', id FROM public.items WHERE type = 'kanji' AND character = '西' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('53373d45-090a-43d8-aabd-a791a6361a97', 'ee941b70-396e-4a52-a8e8-e02125aac2c0') ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('53373d45-090a-43d8-aabd-a791a6361a97', 'ee941b70-396e-4a52-a8e8-e02125aac2c0') ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '91f69392-b4da-4eb2-9b47-9cf3b96a0bb2', id FROM public.items WHERE type = 'kanji' AND character = '心' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id)
SELECT '91f69392-b4da-4eb2-9b47-9cf3b96a0bb2', id FROM public.items WHERE type = 'kanji' AND character = '心' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('91f69392-b4da-4eb2-9b47-9cf3b96a0bb2', '41630936-df8f-4972-bfd4-d03503307c39') ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('91f69392-b4da-4eb2-9b47-9cf3b96a0bb2', '41630936-df8f-4972-bfd4-d03503307c39') ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('667ab294-f50b-4cfa-84d3-7535689d49ed', 'a210c5a5-c45b-49b2-99b4-1b244cf978a6') ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('667ab294-f50b-4cfa-84d3-7535689d49ed', 'a210c5a5-c45b-49b2-99b4-1b244cf978a6') ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '667ab294-f50b-4cfa-84d3-7535689d49ed', id FROM public.items WHERE type = 'kanji' AND character = '休' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id)
SELECT '667ab294-f50b-4cfa-84d3-7535689d49ed', id FROM public.items WHERE type = 'kanji' AND character = '休' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('c97ca745-c2a5-4a31-93c6-33a8a8fd5fd4', '0c5449bc-67db-4653-9b37-1b0d3be05cf4') ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('c97ca745-c2a5-4a31-93c6-33a8a8fd5fd4', '0c5449bc-67db-4653-9b37-1b0d3be05cf4') ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT 'c97ca745-c2a5-4a31-93c6-33a8a8fd5fd4', id FROM public.items WHERE type = 'kanji' AND character = '事' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id)
SELECT 'c97ca745-c2a5-4a31-93c6-33a8a8fd5fd4', id FROM public.items WHERE type = 'kanji' AND character = '事' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('8d82afb0-012e-4a25-ab8f-1778e8a7f133', '938e39ed-5ecf-40d3-a5fa-8930fe34d891') ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('8d82afb0-012e-4a25-ab8f-1778e8a7f133', '938e39ed-5ecf-40d3-a5fa-8930fe34d891') ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '8d82afb0-012e-4a25-ab8f-1778e8a7f133', id FROM public.items WHERE type = 'kanji' AND character = '物' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id)
SELECT '8d82afb0-012e-4a25-ab8f-1778e8a7f133', id FROM public.items WHERE type = 'kanji' AND character = '物' LIMIT 1 ON CONFLICT DO NOTHING;

-- 7. Initialize progress for all existing profiles
DO $$
DECLARE
  r_profile RECORD;
BEGIN
  FOR r_profile IN SELECT id FROM public.profiles LOOP
    PERFORM public.initialize_user_progress(r_profile.id);
  END LOOP;
END $$;
