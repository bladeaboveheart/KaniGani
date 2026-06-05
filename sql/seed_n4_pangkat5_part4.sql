INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('9988eb32-ad85-4f5c-9d25-976757a14e18', '436deb91-e160-4d80-95ae-e03178a87100') ON CONFLICT DO NOTHING;

INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('9988eb32-ad85-4f5c-9d25-976757a14e18', '436deb91-e160-4d80-95ae-e03178a87100') ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('b7844cd3-9d3e-45ab-8878-cda7b425eb87', '436deb91-e160-4d80-95ae-e03178a87100') ON CONFLICT DO NOTHING;

INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('b7844cd3-9d3e-45ab-8878-cda7b425eb87', '436deb91-e160-4d80-95ae-e03178a87100') ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT 'b7844cd3-9d3e-45ab-8878-cda7b425eb87', id FROM public.items WHERE type = 'kanji' AND character = '行' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id)
SELECT 'b7844cd3-9d3e-45ab-8878-cda7b425eb87', id FROM public.items WHERE type = 'kanji' AND character = '行' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT 'eedf6f4e-d83f-440a-b50e-a0ce8ec1693d', id FROM public.items WHERE type = 'kanji' AND character = '店' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id)
SELECT 'eedf6f4e-d83f-440a-b50e-a0ce8ec1693d', id FROM public.items WHERE type = 'kanji' AND character = '店' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('eedf6f4e-d83f-440a-b50e-a0ce8ec1693d', '98974473-5024-43b4-ab78-6627b76653c6') ON CONFLICT DO NOTHING;

INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('eedf6f4e-d83f-440a-b50e-a0ce8ec1693d', '98974473-5024-43b4-ab78-6627b76653c6') ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT 'ab66f352-f448-4bd4-bec6-2c4401308a32', id FROM public.items WHERE type = 'kanji' AND character = '社' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id)
SELECT 'ab66f352-f448-4bd4-bec6-2c4401308a32', id FROM public.items WHERE type = 'kanji' AND character = '社' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('ab66f352-f448-4bd4-bec6-2c4401308a32', '98974473-5024-43b4-ab78-6627b76653c6') ON CONFLICT DO NOTHING;

INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('ab66f352-f448-4bd4-bec6-2c4401308a32', '98974473-5024-43b4-ab78-6627b76653c6') ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '9e02aec8-9340-4f2d-9c58-640f1c93ecc1', id FROM public.items WHERE type = 'kanji' AND character = '会' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id)
SELECT '9e02aec8-9340-4f2d-9c58-640f1c93ecc1', id FROM public.items WHERE type = 'kanji' AND character = '会' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '9e02aec8-9340-4f2d-9c58-640f1c93ecc1', id FROM public.items WHERE type = 'kanji' AND character = '社' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id)
SELECT '9e02aec8-9340-4f2d-9c58-640f1c93ecc1', id FROM public.items WHERE type = 'kanji' AND character = '社' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('9e02aec8-9340-4f2d-9c58-640f1c93ecc1', '98974473-5024-43b4-ab78-6627b76653c6') ON CONFLICT DO NOTHING;

INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('9e02aec8-9340-4f2d-9c58-640f1c93ecc1', '98974473-5024-43b4-ab78-6627b76653c6') ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('a2068e37-69e9-4b57-8354-552ecb19970a', 'e45c1e79-76e5-49f4-931e-e5cfddf00ea2') ON CONFLICT DO NOTHING;

INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('a2068e37-69e9-4b57-8354-552ecb19970a', 'e45c1e79-76e5-49f4-931e-e5cfddf00ea2') ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('0b2488bf-2941-4b16-b3ed-eb3b9bf97058', 'e45c1e79-76e5-49f4-931e-e5cfddf00ea2') ON CONFLICT DO NOTHING;

INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('0b2488bf-2941-4b16-b3ed-eb3b9bf97058', 'e45c1e79-76e5-49f4-931e-e5cfddf00ea2') ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '0b2488bf-2941-4b16-b3ed-eb3b9bf97058', id FROM public.items WHERE type = 'kanji' AND character = '物' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id)
SELECT '0b2488bf-2941-4b16-b3ed-eb3b9bf97058', id FROM public.items WHERE type = 'kanji' AND character = '物' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('ab60e133-2a36-4b83-b1ae-caa96101a22b', 'ee2ed68a-ee9d-4afe-b903-517bcf35c340') ON CONFLICT DO NOTHING;

INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('ab60e133-2a36-4b83-b1ae-caa96101a22b', 'ee2ed68a-ee9d-4afe-b903-517bcf35c340') ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('88f8dcbf-a09e-41d4-b351-227b525249d5', 'ee2ed68a-ee9d-4afe-b903-517bcf35c340') ON CONFLICT DO NOTHING;

INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('88f8dcbf-a09e-41d4-b351-227b525249d5', 'ee2ed68a-ee9d-4afe-b903-517bcf35c340') ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '88f8dcbf-a09e-41d4-b351-227b525249d5', id FROM public.items WHERE type = 'kanji' AND character = '人' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id)
SELECT '88f8dcbf-a09e-41d4-b351-227b525249d5', id FROM public.items WHERE type = 'kanji' AND character = '人' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('d4c7a2df-2ace-4b9d-bedf-cf1a28c243f6', 'ee2ed68a-ee9d-4afe-b903-517bcf35c340') ON CONFLICT DO NOTHING;

INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('d4c7a2df-2ace-4b9d-bedf-cf1a28c243f6', 'ee2ed68a-ee9d-4afe-b903-517bcf35c340') ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT 'd4c7a2df-2ace-4b9d-bedf-cf1a28c243f6', id FROM public.items WHERE type = 'kanji' AND character = '女' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id)
SELECT 'd4c7a2df-2ace-4b9d-bedf-cf1a28c243f6', id FROM public.items WHERE type = 'kanji' AND character = '女' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '04a35114-63d8-498c-a082-2b1163b6060e', id FROM public.items WHERE type = 'kanji' AND character = '家' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id)
SELECT '04a35114-63d8-498c-a082-2b1163b6060e', id FROM public.items WHERE type = 'kanji' AND character = '家' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('04a35114-63d8-498c-a082-2b1163b6060e', '9af70324-f30c-464d-b003-0c3832406374') ON CONFLICT DO NOTHING;

INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('04a35114-63d8-498c-a082-2b1163b6060e', '9af70324-f30c-464d-b003-0c3832406374') ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('cac83056-9aca-4501-914d-9131aea9b116', 'bc93a2b8-1daa-48bd-9ae1-f78b955b7ebe') ON CONFLICT DO NOTHING;

INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('cac83056-9aca-4501-914d-9131aea9b116', 'bc93a2b8-1daa-48bd-9ae1-f78b955b7ebe') ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT 'ab3f895c-c525-4700-b394-3e494013a276', id FROM public.items WHERE type = 'kanji' AND character = '白' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id)
SELECT 'ab3f895c-c525-4700-b394-3e494013a276', id FROM public.items WHERE type = 'kanji' AND character = '白' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('ab3f895c-c525-4700-b394-3e494013a276', '4b4703e7-2ddb-48ef-9add-d50191e413fb') ON CONFLICT DO NOTHING;

INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('ab3f895c-c525-4700-b394-3e494013a276', '4b4703e7-2ddb-48ef-9add-d50191e413fb') ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('fe807ca2-9abb-4114-9183-54599a2367d0', '917add9d-33b0-4843-96c2-b5327f4f21c3') ON CONFLICT DO NOTHING;

INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('fe807ca2-9abb-4114-9183-54599a2367d0', '917add9d-33b0-4843-96c2-b5327f4f21c3') ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('cd2dcd65-c11e-4a72-82a0-b0f57d30eb82', '69927f04-0a86-404d-bca7-3eb9fde99aa1') ON CONFLICT DO NOTHING;

INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('cd2dcd65-c11e-4a72-82a0-b0f57d30eb82', '69927f04-0a86-404d-bca7-3eb9fde99aa1') ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('fe5971e8-a9f4-4fa9-9389-bcd0b9c533b1', '69927f04-0a86-404d-bca7-3eb9fde99aa1') ON CONFLICT DO NOTHING;

INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('fe5971e8-a9f4-4fa9-9389-bcd0b9c533b1', '69927f04-0a86-404d-bca7-3eb9fde99aa1') ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT 'fe5971e8-a9f4-4fa9-9389-bcd0b9c533b1', id FROM public.items WHERE type = 'kanji' AND character = '電' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id)
SELECT 'fe5971e8-a9f4-4fa9-9389-bcd0b9c533b1', id FROM public.items WHERE type = 'kanji' AND character = '電' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('d633b0dc-26c2-4ec9-8203-1e4a04e019ff', '8c46c30e-d57d-476c-90d9-8f1cb10d2a40') ON CONFLICT DO NOTHING;

INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('d633b0dc-26c2-4ec9-8203-1e4a04e019ff', '8c46c30e-d57d-476c-90d9-8f1cb10d2a40') ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('61fe314f-cf5f-4c81-b179-f5105a51d698', 'cfdfb0cb-f43c-4099-a978-07c07b913d11') ON CONFLICT DO NOTHING;

INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('61fe314f-cf5f-4c81-b179-f5105a51d698', 'cfdfb0cb-f43c-4099-a978-07c07b913d11') ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '61fe314f-cf5f-4c81-b179-f5105a51d698', id FROM public.items WHERE type = 'kanji' AND character = '金' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id)
SELECT '61fe314f-cf5f-4c81-b179-f5105a51d698', id FROM public.items WHERE type = 'kanji' AND character = '金' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('8b6e3edf-0a04-42d5-b259-4f5e35dabc82', 'ee2ed68a-ee9d-4afe-b903-517bcf35c340') ON CONFLICT DO NOTHING;

INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('8b6e3edf-0a04-42d5-b259-4f5e35dabc82', 'ee2ed68a-ee9d-4afe-b903-517bcf35c340') ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '8b6e3edf-0a04-42d5-b259-4f5e35dabc82', id FROM public.items WHERE type = 'kanji' AND character = '気' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id)
SELECT '8b6e3edf-0a04-42d5-b259-4f5e35dabc82', id FROM public.items WHERE type = 'kanji' AND character = '気' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT 'fb44c440-304d-4b88-825f-19c724d37c86', id FROM public.items WHERE type = 'kanji' AND character = '心' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id)
SELECT 'fb44c440-304d-4b88-825f-19c724d37c86', id FROM public.items WHERE type = 'kanji' AND character = '心' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('fb44c440-304d-4b88-825f-19c724d37c86', '4f337b47-9a7f-4f29-80ce-8ee55c3376a0') ON CONFLICT DO NOTHING;

INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('fb44c440-304d-4b88-825f-19c724d37c86', '4f337b47-9a7f-4f29-80ce-8ee55c3376a0') ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('0abe5d43-e10e-45fe-80e7-fff741198e80', 'cfdfb0cb-f43c-4099-a978-07c07b913d11') ON CONFLICT DO NOTHING;

INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('0abe5d43-e10e-45fe-80e7-fff741198e80', 'cfdfb0cb-f43c-4099-a978-07c07b913d11') ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('0abe5d43-e10e-45fe-80e7-fff741198e80', '4f337b47-9a7f-4f29-80ce-8ee55c3376a0') ON CONFLICT DO NOTHING;

INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('0abe5d43-e10e-45fe-80e7-fff741198e80', '4f337b47-9a7f-4f29-80ce-8ee55c3376a0') ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('b50431fd-fca3-43d5-a70b-758b6771d6fd', 'faaea376-668c-409a-ba35-e6294442da75') ON CONFLICT DO NOTHING;

INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('b50431fd-fca3-43d5-a70b-758b6771d6fd', 'faaea376-668c-409a-ba35-e6294442da75') ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('b472520a-2b8d-4ac0-8dea-d20ea46e869c', 'ce3999fb-43fa-4bb0-a261-b85d5c6533ff') ON CONFLICT DO NOTHING;

INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('b472520a-2b8d-4ac0-8dea-d20ea46e869c', 'ce3999fb-43fa-4bb0-a261-b85d5c6533ff') ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT 'b472520a-2b8d-4ac0-8dea-d20ea46e869c', id FROM public.items WHERE type = 'kanji' AND character = '急' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id)
SELECT 'b472520a-2b8d-4ac0-8dea-d20ea46e869c', id FROM public.items WHERE type = 'kanji' AND character = '急' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT 'a2643b3b-dfb6-43c0-9d30-392c1de794b2', id FROM public.items WHERE type = 'kanji' AND character = '写' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id)
SELECT 'a2643b3b-dfb6-43c0-9d30-392c1de794b2', id FROM public.items WHERE type = 'kanji' AND character = '写' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('a2643b3b-dfb6-43c0-9d30-392c1de794b2', '527bfdcb-65ed-4326-b100-b20052901594') ON CONFLICT DO NOTHING;

INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('a2643b3b-dfb6-43c0-9d30-392c1de794b2', '527bfdcb-65ed-4326-b100-b20052901594') ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('fefd7eb0-0f68-48d4-8c41-98da0cae6fd7', '527bfdcb-65ed-4326-b100-b20052901594') ON CONFLICT DO NOTHING;

INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('fefd7eb0-0f68-48d4-8c41-98da0cae6fd7', '527bfdcb-65ed-4326-b100-b20052901594') ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('fefd7eb0-0f68-48d4-8c41-98da0cae6fd7', '4b4703e7-2ddb-48ef-9add-d50191e413fb') ON CONFLICT DO NOTHING;

INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('fefd7eb0-0f68-48d4-8c41-98da0cae6fd7', '4b4703e7-2ddb-48ef-9add-d50191e413fb') ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '381c855e-0d8b-47f6-ac71-ca285b552fb1', id FROM public.items WHERE type = 'kanji' AND character = '気' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id)
SELECT '381c855e-0d8b-47f6-ac71-ca285b552fb1', id FROM public.items WHERE type = 'kanji' AND character = '気' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '381c855e-0d8b-47f6-ac71-ca285b552fb1', id FROM public.items WHERE type = 'kanji' AND character = '持' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id)
SELECT '381c855e-0d8b-47f6-ac71-ca285b552fb1', id FROM public.items WHERE type = 'kanji' AND character = '持' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('381c855e-0d8b-47f6-ac71-ca285b552fb1', 'ee2ed68a-ee9d-4afe-b903-517bcf35c340') ON CONFLICT DO NOTHING;

INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('381c855e-0d8b-47f6-ac71-ca285b552fb1', 'ee2ed68a-ee9d-4afe-b903-517bcf35c340') ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('cbbbe2cb-63fc-413c-b188-59420a42b7af', 'e45c1e79-76e5-49f4-931e-e5cfddf00ea2') ON CONFLICT DO NOTHING;

INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('cbbbe2cb-63fc-413c-b188-59420a42b7af', 'e45c1e79-76e5-49f4-931e-e5cfddf00ea2') ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('91822338-8f03-457e-9bd8-bc0dccad30d0', 'c3d32c5b-e2fe-4769-b7a0-c74276c08d3c') ON CONFLICT DO NOTHING;

INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('91822338-8f03-457e-9bd8-bc0dccad30d0', 'c3d32c5b-e2fe-4769-b7a0-c74276c08d3c') ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('91822338-8f03-457e-9bd8-bc0dccad30d0', '36b4bc5d-c5d5-4c76-8800-a223ccfcf285') ON CONFLICT DO NOTHING;

INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('91822338-8f03-457e-9bd8-bc0dccad30d0', '36b4bc5d-c5d5-4c76-8800-a223ccfcf285') ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('b84b9b81-9781-4ed3-b022-d5bf9fd0b3ba', '436deb91-e160-4d80-95ae-e03178a87100') ON CONFLICT DO NOTHING;

INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('b84b9b81-9781-4ed3-b022-d5bf9fd0b3ba', '436deb91-e160-4d80-95ae-e03178a87100') ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT 'b84b9b81-9781-4ed3-b022-d5bf9fd0b3ba', id FROM public.items WHERE type = 'kanji' AND character = '行' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id)
SELECT 'b84b9b81-9781-4ed3-b022-d5bf9fd0b3ba', id FROM public.items WHERE type = 'kanji' AND character = '行' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('afcdf8d2-ee94-4dca-9d08-9731e56c46ec', '8c46c30e-d57d-476c-90d9-8f1cb10d2a40') ON CONFLICT DO NOTHING;

INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('afcdf8d2-ee94-4dca-9d08-9731e56c46ec', '8c46c30e-d57d-476c-90d9-8f1cb10d2a40') ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('2e8fceaa-fc88-4d65-a736-73fc6cd7b0aa', '436deb91-e160-4d80-95ae-e03178a87100') ON CONFLICT DO NOTHING;

INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('2e8fceaa-fc88-4d65-a736-73fc6cd7b0aa', '436deb91-e160-4d80-95ae-e03178a87100') ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '2e8fceaa-fc88-4d65-a736-73fc6cd7b0aa', id FROM public.items WHERE type = 'kanji' AND character = '行' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id)
SELECT '2e8fceaa-fc88-4d65-a736-73fc6cd7b0aa', id FROM public.items WHERE type = 'kanji' AND character = '行' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '2e8fceaa-fc88-4d65-a736-73fc6cd7b0aa', id FROM public.items WHERE type = 'kanji' AND character = '者' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id)
SELECT '2e8fceaa-fc88-4d65-a736-73fc6cd7b0aa', id FROM public.items WHERE type = 'kanji' AND character = '者' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('862d5d54-76e4-4366-aee6-83c1111f7742', 'ee2ed68a-ee9d-4afe-b903-517bcf35c340') ON CONFLICT DO NOTHING;

INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('862d5d54-76e4-4366-aee6-83c1111f7742', 'ee2ed68a-ee9d-4afe-b903-517bcf35c340') ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '862d5d54-76e4-4366-aee6-83c1111f7742', id FROM public.items WHERE type = 'kanji' AND character = '口' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id)
SELECT '862d5d54-76e4-4366-aee6-83c1111f7742', id FROM public.items WHERE type = 'kanji' AND character = '口' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('3f86981c-8006-48d9-8118-121e10d10fac', 'cfdfb0cb-f43c-4099-a978-07c07b913d11') ON CONFLICT DO NOTHING;

INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('3f86981c-8006-48d9-8118-121e10d10fac', 'cfdfb0cb-f43c-4099-a978-07c07b913d11') ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('3f86981c-8006-48d9-8118-121e10d10fac', '4f337b47-9a7f-4f29-80ce-8ee55c3376a0') ON CONFLICT DO NOTHING;

INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('3f86981c-8006-48d9-8118-121e10d10fac', '4f337b47-9a7f-4f29-80ce-8ee55c3376a0') ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '3f86981c-8006-48d9-8118-121e10d10fac', id FROM public.items WHERE type = 'kanji' AND character = '人' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id)
SELECT '3f86981c-8006-48d9-8118-121e10d10fac', id FROM public.items WHERE type = 'kanji' AND character = '人' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '99650853-a13c-4cbf-985c-a24900a6ab4c', id FROM public.items WHERE type = 'kanji' AND character = '自' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id)
SELECT '99650853-a13c-4cbf-985c-a24900a6ab4c', id FROM public.items WHERE type = 'kanji' AND character = '自' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('99650853-a13c-4cbf-985c-a24900a6ab4c', 'e45c1e79-76e5-49f4-931e-e5cfddf00ea2') ON CONFLICT DO NOTHING;

INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('99650853-a13c-4cbf-985c-a24900a6ab4c', 'e45c1e79-76e5-49f4-931e-e5cfddf00ea2') ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '29dbc308-3598-45c9-ba78-49da368547f4', id FROM public.items WHERE type = 'kanji' AND character = '自' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id)
SELECT '29dbc308-3598-45c9-ba78-49da368547f4', id FROM public.items WHERE type = 'kanji' AND character = '自' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('29dbc308-3598-45c9-ba78-49da368547f4', 'e45c1e79-76e5-49f4-931e-e5cfddf00ea2') ON CONFLICT DO NOTHING;

INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('29dbc308-3598-45c9-ba78-49da368547f4', 'e45c1e79-76e5-49f4-931e-e5cfddf00ea2') ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '29dbc308-3598-45c9-ba78-49da368547f4', id FROM public.items WHERE type = 'kanji' AND character = '的' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id)
SELECT '29dbc308-3598-45c9-ba78-49da368547f4', id FROM public.items WHERE type = 'kanji' AND character = '的' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '86bf558b-cfeb-44af-b43a-7bbebcd283f6', id FROM public.items WHERE type = 'kanji' AND character = '食' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id)
SELECT '86bf558b-cfeb-44af-b43a-7bbebcd283f6', id FROM public.items WHERE type = 'kanji' AND character = '食' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('86bf558b-cfeb-44af-b43a-7bbebcd283f6', '873bb149-ca22-4c23-acf4-fe8a3a849556') ON CONFLICT DO NOTHING;

INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('86bf558b-cfeb-44af-b43a-7bbebcd283f6', '873bb149-ca22-4c23-acf4-fe8a3a849556') ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('b18fa4a1-d4c6-40d0-bd22-04377bcc0d0a', 'c04bd75e-f6dc-4f5b-a919-e43c0a8e45a6') ON CONFLICT DO NOTHING;

INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('b18fa4a1-d4c6-40d0-bd22-04377bcc0d0a', 'c04bd75e-f6dc-4f5b-a919-e43c0a8e45a6') ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT 'b18fa4a1-d4c6-40d0-bd22-04377bcc0d0a', id FROM public.items WHERE type = 'kanji' AND character = '用' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id)
SELECT 'b18fa4a1-d4c6-40d0-bd22-04377bcc0d0a', id FROM public.items WHERE type = 'kanji' AND character = '用' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('00cc340a-6f0b-40e3-87d4-fb4fd2c61f59', 'c04bd75e-f6dc-4f5b-a919-e43c0a8e45a6') ON CONFLICT DO NOTHING;

INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('00cc340a-6f0b-40e3-87d4-fb4fd2c61f59', 'c04bd75e-f6dc-4f5b-a919-e43c0a8e45a6') ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('4f6c382c-a190-497d-9f3c-cdbd7f13a149', 'c04bd75e-f6dc-4f5b-a919-e43c0a8e45a6') ON CONFLICT DO NOTHING;

INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('4f6c382c-a190-497d-9f3c-cdbd7f13a149', 'c04bd75e-f6dc-4f5b-a919-e43c0a8e45a6') ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '4f6c382c-a190-497d-9f3c-cdbd7f13a149', id FROM public.items WHERE type = 'kanji' AND character = '金' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id)
SELECT '4f6c382c-a190-497d-9f3c-cdbd7f13a149', id FROM public.items WHERE type = 'kanji' AND character = '金' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('915c6b47-cad1-4506-a119-c510bc1352d4', 'c04bd75e-f6dc-4f5b-a919-e43c0a8e45a6') ON CONFLICT DO NOTHING;

INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('915c6b47-cad1-4506-a119-c510bc1352d4', 'c04bd75e-f6dc-4f5b-a919-e43c0a8e45a6') ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '915c6b47-cad1-4506-a119-c510bc1352d4', id FROM public.items WHERE type = 'kanji' AND character = '家' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id)
SELECT '915c6b47-cad1-4506-a119-c510bc1352d4', id FROM public.items WHERE type = 'kanji' AND character = '家' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('005c4063-11f5-463d-9031-b59176114736', 'c04bd75e-f6dc-4f5b-a919-e43c0a8e45a6') ON CONFLICT DO NOTHING;

INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('005c4063-11f5-463d-9031-b59176114736', 'c04bd75e-f6dc-4f5b-a919-e43c0a8e45a6') ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '005c4063-11f5-463d-9031-b59176114736', id FROM public.items WHERE type = 'kanji' AND character = '手' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id)
SELECT '005c4063-11f5-463d-9031-b59176114736', id FROM public.items WHERE type = 'kanji' AND character = '手' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT 'ba78b94f-76bf-4e0c-a8ff-87a09cbeaae2', id FROM public.items WHERE type = 'kanji' AND character = '自' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id)
SELECT 'ba78b94f-76bf-4e0c-a8ff-87a09cbeaae2', id FROM public.items WHERE type = 'kanji' AND character = '自' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('ba78b94f-76bf-4e0c-a8ff-87a09cbeaae2', 'e45c1e79-76e5-49f4-931e-e5cfddf00ea2') ON CONFLICT DO NOTHING;

INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('ba78b94f-76bf-4e0c-a8ff-87a09cbeaae2', 'e45c1e79-76e5-49f4-931e-e5cfddf00ea2') ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT 'ba78b94f-76bf-4e0c-a8ff-87a09cbeaae2', id FROM public.items WHERE type = 'kanji' AND character = '車' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id)
SELECT 'ba78b94f-76bf-4e0c-a8ff-87a09cbeaae2', id FROM public.items WHERE type = 'kanji' AND character = '車' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('d64b3106-ea20-4f86-992c-d841cef9c57a', 'bc93a2b8-1daa-48bd-9ae1-f78b955b7ebe') ON CONFLICT DO NOTHING;

INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('d64b3106-ea20-4f86-992c-d841cef9c57a', 'bc93a2b8-1daa-48bd-9ae1-f78b955b7ebe') ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('92e538d1-b3c8-4c0e-9ef5-5db63f23fa78', 'e45c1e79-76e5-49f4-931e-e5cfddf00ea2') ON CONFLICT DO NOTHING;

INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('92e538d1-b3c8-4c0e-9ef5-5db63f23fa78', 'e45c1e79-76e5-49f4-931e-e5cfddf00ea2') ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('118e1e54-8a89-4d69-aa91-854b641ab884', '9ef4b3ce-5a9b-4f69-8910-dfbb343a65a0') ON CONFLICT DO NOTHING;

INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('118e1e54-8a89-4d69-aa91-854b641ab884', '9ef4b3ce-5a9b-4f69-8910-dfbb343a65a0') ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('be17af5c-f540-4448-9d17-bb18a63d1f71', '75045e9f-2cae-486d-9474-a7265b072fb0') ON CONFLICT DO NOTHING;

INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('be17af5c-f540-4448-9d17-bb18a63d1f71', '75045e9f-2cae-486d-9474-a7265b072fb0') ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '2628a235-5ab7-4f36-aaa5-bb5145fb429b', id FROM public.items WHERE type = 'kanji' AND character = '会' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id)
SELECT '2628a235-5ab7-4f36-aaa5-bb5145fb429b', id FROM public.items WHERE type = 'kanji' AND character = '会' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('2628a235-5ab7-4f36-aaa5-bb5145fb429b', '98974473-5024-43b4-ab78-6627b76653c6') ON CONFLICT DO NOTHING;

INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('2628a235-5ab7-4f36-aaa5-bb5145fb429b', '98974473-5024-43b4-ab78-6627b76653c6') ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT 'caff2aa0-fdd9-4bbd-898d-41c5685dee04', id FROM public.items WHERE type = 'kanji' AND character = '入' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id)
SELECT 'caff2aa0-fdd9-4bbd-898d-41c5685dee04', id FROM public.items WHERE type = 'kanji' AND character = '入' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('caff2aa0-fdd9-4bbd-898d-41c5685dee04', 'cf7cafe5-5fea-4b93-b8c2-c66998a2a067') ON CONFLICT DO NOTHING;

INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('caff2aa0-fdd9-4bbd-898d-41c5685dee04', 'cf7cafe5-5fea-4b93-b8c2-c66998a2a067') ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '95748772-51bb-43c0-a9a5-a3ce17fcd284', id FROM public.items WHERE type = 'kanji' AND character = '文' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id)
SELECT '95748772-51bb-43c0-a9a5-a3ce17fcd284', id FROM public.items WHERE type = 'kanji' AND character = '文' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '95748772-51bb-43c0-a9a5-a3ce17fcd284', id FROM public.items WHERE type = 'kanji' AND character = '字' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id)
SELECT '95748772-51bb-43c0-a9a5-a3ce17fcd284', id FROM public.items WHERE type = 'kanji' AND character = '字' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('95748772-51bb-43c0-a9a5-a3ce17fcd284', 'bc93a2b8-1daa-48bd-9ae1-f78b955b7ebe') ON CONFLICT DO NOTHING;

INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('95748772-51bb-43c0-a9a5-a3ce17fcd284', 'bc93a2b8-1daa-48bd-9ae1-f78b955b7ebe') ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '8fd13dc2-2123-4b95-96fb-e9d678ac6c2c', id FROM public.items WHERE type = 'kanji' AND character = '学' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id)
SELECT '8fd13dc2-2123-4b95-96fb-e9d678ac6c2c', id FROM public.items WHERE type = 'kanji' AND character = '学' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('8fd13dc2-2123-4b95-96fb-e9d678ac6c2c', 'fb26eede-689e-4023-bcb0-8356bcebbab2') ON CONFLICT DO NOTHING;

INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('8fd13dc2-2123-4b95-96fb-e9d678ac6c2c', 'fb26eede-689e-4023-bcb0-8356bcebbab2') ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '021902cc-6a06-453b-b132-4d2bd6c1fea5', id FROM public.items WHERE type = 'kanji' AND character = '行' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id)
SELECT '021902cc-6a06-453b-b132-4d2bd6c1fea5', id FROM public.items WHERE type = 'kanji' AND character = '行' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('021902cc-6a06-453b-b132-4d2bd6c1fea5', 'e45c1e79-76e5-49f4-931e-e5cfddf00ea2') ON CONFLICT DO NOTHING;

INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('021902cc-6a06-453b-b132-4d2bd6c1fea5', 'e45c1e79-76e5-49f4-931e-e5cfddf00ea2') ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('4effd724-ed9a-485e-beb4-19c817f0982b', 'bc93a2b8-1daa-48bd-9ae1-f78b955b7ebe') ON CONFLICT DO NOTHING;

INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('4effd724-ed9a-485e-beb4-19c817f0982b', 'bc93a2b8-1daa-48bd-9ae1-f78b955b7ebe') ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '76f33938-fafb-49a3-84e1-5ab78cfd18de', id FROM public.items WHERE type = 'kanji' AND character = '大' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id)
SELECT '76f33938-fafb-49a3-84e1-5ab78cfd18de', id FROM public.items WHERE type = 'kanji' AND character = '大' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '76f33938-fafb-49a3-84e1-5ab78cfd18de', id FROM public.items WHERE type = 'kanji' AND character = '学' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id)
SELECT '76f33938-fafb-49a3-84e1-5ab78cfd18de', id FROM public.items WHERE type = 'kanji' AND character = '学' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('76f33938-fafb-49a3-84e1-5ab78cfd18de', 'cf7cafe5-5fea-4b93-b8c2-c66998a2a067') ON CONFLICT DO NOTHING;

INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('76f33938-fafb-49a3-84e1-5ab78cfd18de', 'cf7cafe5-5fea-4b93-b8c2-c66998a2a067') ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT 'd83113f3-557e-441f-ab30-db9b8a226da8', id FROM public.items WHERE type = 'kanji' AND character = '大' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id)
SELECT 'd83113f3-557e-441f-ab30-db9b8a226da8', id FROM public.items WHERE type = 'kanji' AND character = '大' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT 'd83113f3-557e-441f-ab30-db9b8a226da8', id FROM public.items WHERE type = 'kanji' AND character = '学' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id)
SELECT 'd83113f3-557e-441f-ab30-db9b8a226da8', id FROM public.items WHERE type = 'kanji' AND character = '学' LIMIT 1 ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('d83113f3-557e-441f-ab30-db9b8a226da8', 'cf7cafe5-5fea-4b93-b8c2-c66998a2a067') ON CONFLICT DO NOTHING;

INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('d83113f3-557e-441f-ab30-db9b8a226da8', 'cf7cafe5-5fea-4b93-b8c2-c66998a2a067') ON CONFLICT DO NOTHING;

INSERT INTO public.item_prerequisites (item_id, requires_item_id)
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

