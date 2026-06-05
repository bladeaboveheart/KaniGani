INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('35511cfb-c21c-42c5-a39d-07a00cc3990b', '82d9838e-e69f-42bc-89f0-f350cb69cd80') ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('35511cfb-c21c-42c5-a39d-07a00cc3990b', '82d9838e-e69f-42bc-89f0-f350cb69cd80') ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '35511cfb-c21c-42c5-a39d-07a00cc3990b', id FROM public.items WHERE type = 'kanji' AND character = '行' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id)
SELECT '35511cfb-c21c-42c5-a39d-07a00cc3990b', id FROM public.items WHERE type = 'kanji' AND character = '行' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '81cb09f9-88df-4e04-8c44-7c531d843765', id FROM public.items WHERE type = 'kanji' AND character = '地' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id)
SELECT '81cb09f9-88df-4e04-8c44-7c531d843765', id FROM public.items WHERE type = 'kanji' AND character = '地' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('81cb09f9-88df-4e04-8c44-7c531d843765', 'de069c67-164d-4e06-a30f-18621f79d8ee') ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('81cb09f9-88df-4e04-8c44-7c531d843765', 'de069c67-164d-4e06-a30f-18621f79d8ee') ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('86bf59b1-cbfd-405b-8893-11939f7c79c7', 'f0f62569-831a-4828-82ad-6e5a3422ca56') ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('86bf59b1-cbfd-405b-8893-11939f7c79c7', 'f0f62569-831a-4828-82ad-6e5a3422ca56') ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT 'afb51a78-2429-462c-a4ba-7d267b688216', id FROM public.items WHERE type = 'kanji' AND character = '今' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id)
SELECT 'afb51a78-2429-462c-a4ba-7d267b688216', id FROM public.items WHERE type = 'kanji' AND character = '今' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('afb51a78-2429-462c-a4ba-7d267b688216', 'f0f62569-831a-4828-82ad-6e5a3422ca56') ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('afb51a78-2429-462c-a4ba-7d267b688216', 'f0f62569-831a-4828-82ad-6e5a3422ca56') ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('be92ddf1-fc03-403a-844e-43fe3cb2323d', '0e245655-2560-4142-a1dc-0a699f18db39') ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('be92ddf1-fc03-403a-844e-43fe3cb2323d', '0e245655-2560-4142-a1dc-0a699f18db39') ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('77bc74ae-519c-40cc-bbcf-f777b3d69579', 'c4b9cee7-cd7f-408c-ab21-0894e799432e') ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('77bc74ae-519c-40cc-bbcf-f777b3d69579', 'c4b9cee7-cd7f-408c-ab21-0894e799432e') ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '2fdeb580-3325-4a71-81d8-efe4ed52e948', id FROM public.items WHERE type = 'kanji' AND character = '不' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id)
SELECT '2fdeb580-3325-4a71-81d8-efe4ed52e948', id FROM public.items WHERE type = 'kanji' AND character = '不' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('2fdeb580-3325-4a71-81d8-efe4ed52e948', 'c4b9cee7-cd7f-408c-ab21-0894e799432e') ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('2fdeb580-3325-4a71-81d8-efe4ed52e948', 'c4b9cee7-cd7f-408c-ab21-0894e799432e') ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('f39dc371-2f38-4bca-b3e1-d75293c6fb0e', '6eb5c8a5-d257-4288-9252-00ded7d1ccad') ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('f39dc371-2f38-4bca-b3e1-d75293c6fb0e', '6eb5c8a5-d257-4288-9252-00ded7d1ccad') ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('4de6b8aa-21b4-4a62-8cb7-52fc06e11e1b', '42b6568f-aa17-4f17-bfb4-2b3a48433d7c') ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('4de6b8aa-21b4-4a62-8cb7-52fc06e11e1b', '42b6568f-aa17-4f17-bfb4-2b3a48433d7c') ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('3c5a5de9-8ce3-41a7-a57a-39024fd73b13', '42b6568f-aa17-4f17-bfb4-2b3a48433d7c') ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('3c5a5de9-8ce3-41a7-a57a-39024fd73b13', '42b6568f-aa17-4f17-bfb4-2b3a48433d7c') ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '3c5a5de9-8ce3-41a7-a57a-39024fd73b13', id FROM public.items WHERE type = 'kanji' AND character = '人' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id)
SELECT '3c5a5de9-8ce3-41a7-a57a-39024fd73b13', id FROM public.items WHERE type = 'kanji' AND character = '人' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('0557f416-b9b8-4728-8cb5-7aceb898d048', 'b6529f1a-cab2-4a58-90a9-c822d4efdc01') ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('0557f416-b9b8-4728-8cb5-7aceb898d048', 'b6529f1a-cab2-4a58-90a9-c822d4efdc01') ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '0557f416-b9b8-4728-8cb5-7aceb898d048', id FROM public.items WHERE type = 'kanji' AND character = '大' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id)
SELECT '0557f416-b9b8-4728-8cb5-7aceb898d048', id FROM public.items WHERE type = 'kanji' AND character = '大' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('d9ada6ff-a770-4304-a448-d29cb60f0198', 'b6529f1a-cab2-4a58-90a9-c822d4efdc01') ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('d9ada6ff-a770-4304-a448-d29cb60f0198', 'b6529f1a-cab2-4a58-90a9-c822d4efdc01') ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT 'd9ada6ff-a770-4304-a448-d29cb60f0198', id FROM public.items WHERE type = 'kanji' AND character = '大' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id)
SELECT 'd9ada6ff-a770-4304-a448-d29cb60f0198', id FROM public.items WHERE type = 'kanji' AND character = '大' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('271daf40-fc05-45d5-999a-f12f6629ba5a', 'b6529f1a-cab2-4a58-90a9-c822d4efdc01') ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('271daf40-fc05-45d5-999a-f12f6629ba5a', 'b6529f1a-cab2-4a58-90a9-c822d4efdc01') ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '271daf40-fc05-45d5-999a-f12f6629ba5a', id FROM public.items WHERE type = 'kanji' AND character = '学' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id)
SELECT '271daf40-fc05-45d5-999a-f12f6629ba5a', id FROM public.items WHERE type = 'kanji' AND character = '学' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('97c3c68f-17a3-4fa0-ac6c-5feb303d8bcc', 'b6529f1a-cab2-4a58-90a9-c822d4efdc01') ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('97c3c68f-17a3-4fa0-ac6c-5feb303d8bcc', 'b6529f1a-cab2-4a58-90a9-c822d4efdc01') ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('97c3c68f-17a3-4fa0-ac6c-5feb303d8bcc', '5116cf11-bdc1-4109-b3c8-6a40c74745bc') ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('97c3c68f-17a3-4fa0-ac6c-5feb303d8bcc', '5116cf11-bdc1-4109-b3c8-6a40c74745bc') ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('e16b73a7-5455-40d3-8900-4e91b53bd151', '01c8dd0a-0b59-4686-be52-3931ed685a0a') ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('e16b73a7-5455-40d3-8900-4e91b53bd151', '01c8dd0a-0b59-4686-be52-3931ed685a0a') ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('e16b73a7-5455-40d3-8900-4e91b53bd151', 'c4b9cee7-cd7f-408c-ab21-0894e799432e') ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('e16b73a7-5455-40d3-8900-4e91b53bd151', 'c4b9cee7-cd7f-408c-ab21-0894e799432e') ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '6e01c1f1-4dca-4aee-a3b9-ccd0e2e9f479', id FROM public.items WHERE type = 'kanji' AND character = '作' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id)
SELECT '6e01c1f1-4dca-4aee-a3b9-ccd0e2e9f479', id FROM public.items WHERE type = 'kanji' AND character = '作' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('6e01c1f1-4dca-4aee-a3b9-ccd0e2e9f479', '5116cf11-bdc1-4109-b3c8-6a40c74745bc') ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('6e01c1f1-4dca-4aee-a3b9-ccd0e2e9f479', '5116cf11-bdc1-4109-b3c8-6a40c74745bc') ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '16058998-d743-432a-a5e1-16d74c7abeff', id FROM public.items WHERE type = 'kanji' AND character = '学' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id)
SELECT '16058998-d743-432a-a5e1-16d74c7abeff', id FROM public.items WHERE type = 'kanji' AND character = '学' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('16058998-d743-432a-a5e1-16d74c7abeff', '5116cf11-bdc1-4109-b3c8-6a40c74745bc') ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('16058998-d743-432a-a5e1-16d74c7abeff', '5116cf11-bdc1-4109-b3c8-6a40c74745bc') ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '1c982d7e-5e04-470d-b9c6-945ae5002b28', id FROM public.items WHERE type = 'kanji' AND character = '工' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id)
SELECT '1c982d7e-5e04-470d-b9c6-945ae5002b28', id FROM public.items WHERE type = 'kanji' AND character = '工' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '1c982d7e-5e04-470d-b9c6-945ae5002b28', id FROM public.items WHERE type = 'kanji' AND character = '学' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id)
SELECT '1c982d7e-5e04-470d-b9c6-945ae5002b28', id FROM public.items WHERE type = 'kanji' AND character = '学' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('1c982d7e-5e04-470d-b9c6-945ae5002b28', '5116cf11-bdc1-4109-b3c8-6a40c74745bc') ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('1c982d7e-5e04-470d-b9c6-945ae5002b28', '5116cf11-bdc1-4109-b3c8-6a40c74745bc') ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('279b39f4-6b1f-4c48-beaf-0b7f1e1ea8da', 'ce725efa-3022-4eee-a8d3-d0990ae72985') ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('279b39f4-6b1f-4c48-beaf-0b7f1e1ea8da', 'ce725efa-3022-4eee-a8d3-d0990ae72985') ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '279b39f4-6b1f-4c48-beaf-0b7f1e1ea8da', id FROM public.items WHERE type = 'kanji' AND character = '間' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id)
SELECT '279b39f4-6b1f-4c48-beaf-0b7f1e1ea8da', id FROM public.items WHERE type = 'kanji' AND character = '間' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('64047cd7-7507-4f55-b3da-575ddaf2e726', 'beff3cb4-e80b-4463-a409-64041fdd34c3') ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('64047cd7-7507-4f55-b3da-575ddaf2e726', 'beff3cb4-e80b-4463-a409-64041fdd34c3') ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '16b22688-f8b3-4c03-81d3-921a7b3aeb8b', id FROM public.items WHERE type = 'kanji' AND character = '用' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id)
SELECT '16b22688-f8b3-4c03-81d3-921a7b3aeb8b', id FROM public.items WHERE type = 'kanji' AND character = '用' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('16b22688-f8b3-4c03-81d3-921a7b3aeb8b', 'beff3cb4-e80b-4463-a409-64041fdd34c3') ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('16b22688-f8b3-4c03-81d3-921a7b3aeb8b', 'beff3cb4-e80b-4463-a409-64041fdd34c3') ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '23f6d2bd-fd39-4c1f-98c5-eeb64b999a88', id FROM public.items WHERE type = 'kanji' AND character = '工' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id)
SELECT '23f6d2bd-fd39-4c1f-98c5-eeb64b999a88', id FROM public.items WHERE type = 'kanji' AND character = '工' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('23f6d2bd-fd39-4c1f-98c5-eeb64b999a88', 'beff3cb4-e80b-4463-a409-64041fdd34c3') ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('23f6d2bd-fd39-4c1f-98c5-eeb64b999a88', 'beff3cb4-e80b-4463-a409-64041fdd34c3') ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT 'e60c6961-296d-4e86-93fc-41b5c7a68f33', id FROM public.items WHERE type = 'kanji' AND character = '大' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id)
SELECT 'e60c6961-296d-4e86-93fc-41b5c7a68f33', id FROM public.items WHERE type = 'kanji' AND character = '大' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('e60c6961-296d-4e86-93fc-41b5c7a68f33', 'beff3cb4-e80b-4463-a409-64041fdd34c3') ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('e60c6961-296d-4e86-93fc-41b5c7a68f33', 'beff3cb4-e80b-4463-a409-64041fdd34c3') ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '704418c4-de8f-4e53-ad99-2d61b39b6b5c', id FROM public.items WHERE type = 'kanji' AND character = '食' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id)
SELECT '704418c4-de8f-4e53-ad99-2d61b39b6b5c', id FROM public.items WHERE type = 'kanji' AND character = '食' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('704418c4-de8f-4e53-ad99-2d61b39b6b5c', 'beff3cb4-e80b-4463-a409-64041fdd34c3') ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('704418c4-de8f-4e53-ad99-2d61b39b6b5c', 'beff3cb4-e80b-4463-a409-64041fdd34c3') ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('0cf65c33-b8ce-410d-b6e1-4f475373772a', '2871ccf9-b0d7-42cf-9d17-ea46b49ee525') ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('0cf65c33-b8ce-410d-b6e1-4f475373772a', '2871ccf9-b0d7-42cf-9d17-ea46b49ee525') ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('b50191d7-4ac5-46f0-bee1-de32542808c6', '2737017b-d685-4d11-aa96-9c56df70a678') ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('b50191d7-4ac5-46f0-bee1-de32542808c6', '2737017b-d685-4d11-aa96-9c56df70a678') ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('b1a9a5c6-8d67-4ee6-b158-8e9e97b5cdfc', '2737017b-d685-4d11-aa96-9c56df70a678') ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('b1a9a5c6-8d67-4ee6-b158-8e9e97b5cdfc', '2737017b-d685-4d11-aa96-9c56df70a678') ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('a7aa654c-47a3-487a-b43d-2e3e6cc880ca', '2737017b-d685-4d11-aa96-9c56df70a678') ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('a7aa654c-47a3-487a-b43d-2e3e6cc880ca', '2737017b-d685-4d11-aa96-9c56df70a678') ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('f58f9e6d-fda2-4c2f-b1ac-291fc9310363', '6220bf2d-345c-4972-a039-428012fb6391') ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('f58f9e6d-fda2-4c2f-b1ac-291fc9310363', '6220bf2d-345c-4972-a039-428012fb6391') ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('b8b911f2-2656-44c9-ade9-b36c01c901f6', '30622d15-a410-4970-b21f-2a15eb29d597') ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('b8b911f2-2656-44c9-ade9-b36c01c901f6', '30622d15-a410-4970-b21f-2a15eb29d597') ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '66284e0f-2523-4365-95d3-786ad75c0f14', id FROM public.items WHERE type = 'kanji' AND character = '本' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id)
SELECT '66284e0f-2523-4365-95d3-786ad75c0f14', id FROM public.items WHERE type = 'kanji' AND character = '本' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('66284e0f-2523-4365-95d3-786ad75c0f14', '30622d15-a410-4970-b21f-2a15eb29d597') ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('66284e0f-2523-4365-95d3-786ad75c0f14', '30622d15-a410-4970-b21f-2a15eb29d597') ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '810b38d7-aa06-4906-8d50-7f65c2fc747d', id FROM public.items WHERE type = 'kanji' AND character = '名' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id)
SELECT '810b38d7-aa06-4906-8d50-7f65c2fc747d', id FROM public.items WHERE type = 'kanji' AND character = '名' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('810b38d7-aa06-4906-8d50-7f65c2fc747d', '30622d15-a410-4970-b21f-2a15eb29d597') ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('810b38d7-aa06-4906-8d50-7f65c2fc747d', '30622d15-a410-4970-b21f-2a15eb29d597') ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('70fa2198-1222-432a-8ce7-9857957a3f33', '30622d15-a410-4970-b21f-2a15eb29d597') ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('70fa2198-1222-432a-8ce7-9857957a3f33', '30622d15-a410-4970-b21f-2a15eb29d597') ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '70fa2198-1222-432a-8ce7-9857957a3f33', id FROM public.items WHERE type = 'kanji' AND character = '語' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id)
SELECT '70fa2198-1222-432a-8ce7-9857957a3f33', id FROM public.items WHERE type = 'kanji' AND character = '語' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('d5bd929f-f589-4be3-930b-7e43b9d2f317', '89647fd1-d5c6-4ab4-88eb-3d00b816567c') ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('d5bd929f-f589-4be3-930b-7e43b9d2f317', '89647fd1-d5c6-4ab4-88eb-3d00b816567c') ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('5f624116-736d-4388-8f40-bd28209e0945', '89647fd1-d5c6-4ab4-88eb-3d00b816567c') ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('5f624116-736d-4388-8f40-bd28209e0945', '89647fd1-d5c6-4ab4-88eb-3d00b816567c') ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '5f624116-736d-4388-8f40-bd28209e0945', id FROM public.items WHERE type = 'kanji' AND character = '文' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id)
SELECT '5f624116-736d-4388-8f40-bd28209e0945', id FROM public.items WHERE type = 'kanji' AND character = '文' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('55b31e04-9442-416d-a657-70da80237045', '8cda590f-6f3c-48a3-b737-5d0cdcf10442') ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('55b31e04-9442-416d-a657-70da80237045', '8cda590f-6f3c-48a3-b737-5d0cdcf10442') ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '8ab5b014-4850-416f-b0b5-36875cd82a19', id FROM public.items WHERE type = 'kanji' AND character = '下' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id)
SELECT '8ab5b014-4850-416f-b0b5-36875cd82a19', id FROM public.items WHERE type = 'kanji' AND character = '下' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('8ab5b014-4850-416f-b0b5-36875cd82a19', 'ad4d64e6-2a2f-4b55-9e15-24af7813ea05') ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('8ab5b014-4850-416f-b0b5-36875cd82a19', 'ad4d64e6-2a2f-4b55-9e15-24af7813ea05') ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT 'e8a655b4-f4cc-480b-816e-e2517788daa6', id FROM public.items WHERE type = 'kanji' AND character = '東' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id)
SELECT 'e8a655b4-f4cc-480b-816e-e2517788daa6', id FROM public.items WHERE type = 'kanji' AND character = '東' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('e8a655b4-f4cc-480b-816e-e2517788daa6', '289af712-8b72-4233-a415-310633928bef') ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('e8a655b4-f4cc-480b-816e-e2517788daa6', '289af712-8b72-4233-a415-310633928bef') ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '3a161219-aaa0-45f3-84f8-d959fab0badb', id FROM public.items WHERE type = 'kanji' AND character = '安' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id)
SELECT '3a161219-aaa0-45f3-84f8-d959fab0badb', id FROM public.items WHERE type = 'kanji' AND character = '安' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('3a161219-aaa0-45f3-84f8-d959fab0badb', '67eadd98-7f40-4d2e-b64b-38f22ce62572') ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('3a161219-aaa0-45f3-84f8-d959fab0badb', '67eadd98-7f40-4d2e-b64b-38f22ce62572') ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('85132cfa-362a-4831-9745-d50de1373232', '24dd1da3-bdde-449e-aee6-a9315ffb59e6') ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('85132cfa-362a-4831-9745-d50de1373232', '24dd1da3-bdde-449e-aee6-a9315ffb59e6') ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '686fdf8d-7853-4c51-9afe-64d2b87d6b25', id FROM public.items WHERE type = 'kanji' AND character = '目' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id)
SELECT '686fdf8d-7853-4c51-9afe-64d2b87d6b25', id FROM public.items WHERE type = 'kanji' AND character = '目' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('686fdf8d-7853-4c51-9afe-64d2b87d6b25', 'b6529f1a-cab2-4a58-90a9-c822d4efdc01') ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('686fdf8d-7853-4c51-9afe-64d2b87d6b25', 'b6529f1a-cab2-4a58-90a9-c822d4efdc01') ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('686fdf8d-7853-4c51-9afe-64d2b87d6b25', '5116cf11-bdc1-4109-b3c8-6a40c74745bc') ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('686fdf8d-7853-4c51-9afe-64d2b87d6b25', '5116cf11-bdc1-4109-b3c8-6a40c74745bc') ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('a71fc4cf-7653-4eb4-9fe5-14032019ba08', '2871ccf9-b0d7-42cf-9d17-ea46b49ee525') ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('a71fc4cf-7653-4eb4-9fe5-14032019ba08', '2871ccf9-b0d7-42cf-9d17-ea46b49ee525') ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT 'a71fc4cf-7653-4eb4-9fe5-14032019ba08', id FROM public.items WHERE type = 'kanji' AND character = '方' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id)
SELECT 'a71fc4cf-7653-4eb4-9fe5-14032019ba08', id FROM public.items WHERE type = 'kanji' AND character = '方' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT 'c3b6f98f-73ce-4a48-97f3-b29bd88f566f', id FROM public.items WHERE type = 'kanji' AND character = '仕' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id)
SELECT 'c3b6f98f-73ce-4a48-97f3-b29bd88f566f', id FROM public.items WHERE type = 'kanji' AND character = '仕' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('c3b6f98f-73ce-4a48-97f3-b29bd88f566f', 'beff3cb4-e80b-4463-a409-64041fdd34c3') ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('c3b6f98f-73ce-4a48-97f3-b29bd88f566f', 'beff3cb4-e80b-4463-a409-64041fdd34c3') ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('36212847-6e68-4d83-a945-2c8e19547e20', '89647fd1-d5c6-4ab4-88eb-3d00b816567c') ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('36212847-6e68-4d83-a945-2c8e19547e20', '89647fd1-d5c6-4ab4-88eb-3d00b816567c') ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '36212847-6e68-4d83-a945-2c8e19547e20', id FROM public.items WHERE type = 'kanji' AND character = '文' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id)
SELECT '36212847-6e68-4d83-a945-2c8e19547e20', id FROM public.items WHERE type = 'kanji' AND character = '文' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('42e480bd-30d9-4b4d-afd3-0584125b932f', 'eb8d68d2-054f-4a19-ad6b-ebc075408b01') ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('42e480bd-30d9-4b4d-afd3-0584125b932f', 'eb8d68d2-054f-4a19-ad6b-ebc075408b01') ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT 'e3f37196-7b4b-478b-80b1-b1c11b5695b3', id FROM public.items WHERE type = 'kanji' AND character = '日' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id)
SELECT 'e3f37196-7b4b-478b-80b1-b1c11b5695b3', id FROM public.items WHERE type = 'kanji' AND character = '日' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT 'e3f37196-7b4b-478b-80b1-b1c11b5695b3', id FROM public.items WHERE type = 'kanji' AND character = '本' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id)
SELECT 'e3f37196-7b4b-478b-80b1-b1c11b5695b3', id FROM public.items WHERE type = 'kanji' AND character = '本' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('e3f37196-7b4b-478b-80b1-b1c11b5695b3', 'eb8d68d2-054f-4a19-ad6b-ebc075408b01') ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('e3f37196-7b4b-478b-80b1-b1c11b5695b3', 'eb8d68d2-054f-4a19-ad6b-ebc075408b01') ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '26d875ac-49b6-413d-b028-e0ed408a8926', id FROM public.items WHERE type = 'kanji' AND character = '目' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id)
SELECT '26d875ac-49b6-413d-b028-e0ed408a8926', id FROM public.items WHERE type = 'kanji' AND character = '目' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('26d875ac-49b6-413d-b028-e0ed408a8926', 'eb8d68d2-054f-4a19-ad6b-ebc075408b01') ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('26d875ac-49b6-413d-b028-e0ed408a8926', 'eb8d68d2-054f-4a19-ad6b-ebc075408b01') ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('286ccfa9-1bd7-4f59-8d94-68c1a8297c70', 'bee201af-4449-4bb7-aeaf-20800d42f440') ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('286ccfa9-1bd7-4f59-8d94-68c1a8297c70', 'bee201af-4449-4bb7-aeaf-20800d42f440') ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '286ccfa9-1bd7-4f59-8d94-68c1a8297c70', id FROM public.items WHERE type = 'kanji' AND character = '語' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id)
SELECT '286ccfa9-1bd7-4f59-8d94-68c1a8297c70', id FROM public.items WHERE type = 'kanji' AND character = '語' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('484f8191-a82a-4549-888a-01ff1c84edf1', 'bee201af-4449-4bb7-aeaf-20800d42f440') ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('484f8191-a82a-4549-888a-01ff1c84edf1', 'bee201af-4449-4bb7-aeaf-20800d42f440') ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '484f8191-a82a-4549-888a-01ff1c84edf1', id FROM public.items WHERE type = 'kanji' AND character = '会' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id)
SELECT '484f8191-a82a-4549-888a-01ff1c84edf1', id FROM public.items WHERE type = 'kanji' AND character = '会' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '484f8191-a82a-4549-888a-01ff1c84edf1', id FROM public.items WHERE type = 'kanji' AND character = '話' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id)
SELECT '484f8191-a82a-4549-888a-01ff1c84edf1', id FROM public.items WHERE type = 'kanji' AND character = '話' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('f3b61e9b-41e6-4788-9a15-30d606d0952d', 'bee201af-4449-4bb7-aeaf-20800d42f440') ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('f3b61e9b-41e6-4788-9a15-30d606d0952d', 'bee201af-4449-4bb7-aeaf-20800d42f440') ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT 'f3b61e9b-41e6-4788-9a15-30d606d0952d', id FROM public.items WHERE type = 'kanji' AND character = '文' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id)
SELECT 'f3b61e9b-41e6-4788-9a15-30d606d0952d', id FROM public.items WHERE type = 'kanji' AND character = '文' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('a9d65703-8bd1-422d-b796-383215cc6252', 'bee201af-4449-4bb7-aeaf-20800d42f440') ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('a9d65703-8bd1-422d-b796-383215cc6252', 'bee201af-4449-4bb7-aeaf-20800d42f440') ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT 'a9d65703-8bd1-422d-b796-383215cc6252', id FROM public.items WHERE type = 'kanji' AND character = '国' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id)
SELECT 'a9d65703-8bd1-422d-b796-383215cc6252', id FROM public.items WHERE type = 'kanji' AND character = '国' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('163c2b0b-f2fc-43c9-bc84-497c099611e1', 'c4b9cee7-cd7f-408c-ab21-0894e799432e') ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('163c2b0b-f2fc-43c9-bc84-497c099611e1', 'c4b9cee7-cd7f-408c-ab21-0894e799432e') ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '163c2b0b-f2fc-43c9-bc84-497c099611e1', id FROM public.items WHERE type = 'kanji' AND character = '日' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id)
SELECT '163c2b0b-f2fc-43c9-bc84-497c099611e1', id FROM public.items WHERE type = 'kanji' AND character = '日' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('fb2d5cc6-418e-4693-80b2-e1da345bac2f', 'ce725efa-3022-4eee-a8d3-d0990ae72985') ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('fb2d5cc6-418e-4693-80b2-e1da345bac2f', 'ce725efa-3022-4eee-a8d3-d0990ae72985') ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT 'fb2d5cc6-418e-4693-80b2-e1da345bac2f', id FROM public.items WHERE type = 'kanji' AND character = '車' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id)
SELECT 'fb2d5cc6-418e-4693-80b2-e1da345bac2f', id FROM public.items WHERE type = 'kanji' AND character = '車' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '8ce43b02-8146-4ba6-a0c1-009968e03dbe', id FROM public.items WHERE type = 'kanji' AND character = '不' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id)
SELECT '8ce43b02-8146-4ba6-a0c1-009968e03dbe', id FROM public.items WHERE type = 'kanji' AND character = '不' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('8ce43b02-8146-4ba6-a0c1-009968e03dbe', '8cda590f-6f3c-48a3-b737-5d0cdcf10442') ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('8ce43b02-8146-4ba6-a0c1-009968e03dbe', '8cda590f-6f3c-48a3-b737-5d0cdcf10442') ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '21ec6116-2174-4ce1-839c-31c88dcbea67', id FROM public.items WHERE type = 'kanji' AND character = '一' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id)
SELECT '21ec6116-2174-4ce1-839c-31c88dcbea67', id FROM public.items WHERE type = 'kanji' AND character = '一' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('21ec6116-2174-4ce1-839c-31c88dcbea67', '6eb5c8a5-d257-4288-9252-00ded7d1ccad') ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('21ec6116-2174-4ce1-839c-31c88dcbea67', '6eb5c8a5-d257-4288-9252-00ded7d1ccad') ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('6c88ceda-18b5-4497-b23c-0824e2e79753', '8cda590f-6f3c-48a3-b737-5d0cdcf10442') ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('6c88ceda-18b5-4497-b23c-0824e2e79753', '8cda590f-6f3c-48a3-b737-5d0cdcf10442') ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '6c88ceda-18b5-4497-b23c-0824e2e79753', id FROM public.items WHERE type = 'kanji' AND character = '方' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id)
SELECT '6c88ceda-18b5-4497-b23c-0824e2e79753', id FROM public.items WHERE type = 'kanji' AND character = '方' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT 'ace9af80-a2be-4128-b9cf-41581fdf56f3', id FROM public.items WHERE type = 'kanji' AND character = '天' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id)
SELECT 'ace9af80-a2be-4128-b9cf-41581fdf56f3', id FROM public.items WHERE type = 'kanji' AND character = '天' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('ace9af80-a2be-4128-b9cf-41581fdf56f3', '2871ccf9-b0d7-42cf-9d17-ea46b49ee525') ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('ace9af80-a2be-4128-b9cf-41581fdf56f3', '2871ccf9-b0d7-42cf-9d17-ea46b49ee525') ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT 'e614c7e5-3dc2-421a-b33d-633ea9a749d7', id FROM public.items WHERE type = 'kanji' AND character = '読' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id)
SELECT 'e614c7e5-3dc2-421a-b33d-633ea9a749d7', id FROM public.items WHERE type = 'kanji' AND character = '読' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('e614c7e5-3dc2-421a-b33d-633ea9a749d7', '5116cf11-bdc1-4109-b3c8-6a40c74745bc') ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('e614c7e5-3dc2-421a-b33d-633ea9a749d7', '5116cf11-bdc1-4109-b3c8-6a40c74745bc') ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '277dcca1-3328-48e2-97e4-52a4eda01338', id FROM public.items WHERE type = 'kanji' AND character = '食' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id)
SELECT '277dcca1-3328-48e2-97e4-52a4eda01338', id FROM public.items WHERE type = 'kanji' AND character = '食' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('277dcca1-3328-48e2-97e4-52a4eda01338', '30622d15-a410-4970-b21f-2a15eb29d597') ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('277dcca1-3328-48e2-97e4-52a4eda01338', '30622d15-a410-4970-b21f-2a15eb29d597') ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('4a33754a-f4f2-4041-849c-75a99ef2fbbe', '89a2bbf9-1a3a-4934-951a-364053cf745e') ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('4a33754a-f4f2-4041-849c-75a99ef2fbbe', '89a2bbf9-1a3a-4934-951a-364053cf745e') ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('0975ad45-c90b-4954-8923-4420b7ee91e8', '67eadd98-7f40-4d2e-b64b-38f22ce62572') ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('0975ad45-c90b-4954-8923-4420b7ee91e8', '67eadd98-7f40-4d2e-b64b-38f22ce62572') ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT 'b1ac1215-ea62-42c5-a5b4-72ea70e28086', id FROM public.items WHERE type = 'kanji' AND character = '見' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id)
SELECT 'b1ac1215-ea62-42c5-a5b4-72ea70e28086', id FROM public.items WHERE type = 'kanji' AND character = '見' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('b1ac1215-ea62-42c5-a5b4-72ea70e28086', '30622d15-a410-4970-b21f-2a15eb29d597') ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('b1ac1215-ea62-42c5-a5b4-72ea70e28086', '30622d15-a410-4970-b21f-2a15eb29d597') ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT 'd1dd8f1c-6ec5-4ce7-acfd-666b7eb32686', id FROM public.items WHERE type = 'kanji' AND character = '大' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id)
SELECT 'd1dd8f1c-6ec5-4ce7-acfd-666b7eb32686', id FROM public.items WHERE type = 'kanji' AND character = '大' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('d1dd8f1c-6ec5-4ce7-acfd-666b7eb32686', 'ce725efa-3022-4eee-a8d3-d0990ae72985') ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('d1dd8f1c-6ec5-4ce7-acfd-666b7eb32686', 'ce725efa-3022-4eee-a8d3-d0990ae72985') ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '498fae4a-ce0b-49ce-b608-391c32a37159', id FROM public.items WHERE type = 'kanji' AND character = '火' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id)
SELECT '498fae4a-ce0b-49ce-b608-391c32a37159', id FROM public.items WHERE type = 'kanji' AND character = '火' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('498fae4a-ce0b-49ce-b608-391c32a37159', 'beff3cb4-e80b-4463-a409-64041fdd34c3') ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('498fae4a-ce0b-49ce-b608-391c32a37159', 'beff3cb4-e80b-4463-a409-64041fdd34c3') ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT 'ad63dff0-0171-4162-a3bb-376817fb03a0', id FROM public.items WHERE type = 'kanji' AND character = '見' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id)
SELECT 'ad63dff0-0171-4162-a3bb-376817fb03a0', id FROM public.items WHERE type = 'kanji' AND character = '見' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('ad63dff0-0171-4162-a3bb-376817fb03a0', 'beff3cb4-e80b-4463-a409-64041fdd34c3') ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('ad63dff0-0171-4162-a3bb-376817fb03a0', 'beff3cb4-e80b-4463-a409-64041fdd34c3') ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '9b916fea-69b4-4fe7-85e5-06bca11d623d', id FROM public.items WHERE type = 'kanji' AND character = '近' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id)
SELECT '9b916fea-69b4-4fe7-85e5-06bca11d623d', id FROM public.items WHERE type = 'kanji' AND character = '近' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '9b916fea-69b4-4fe7-85e5-06bca11d623d', id FROM public.items WHERE type = 'kanji' AND character = '代' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id)
SELECT '9b916fea-69b4-4fe7-85e5-06bca11d623d', id FROM public.items WHERE type = 'kanji' AND character = '代' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('9b916fea-69b4-4fe7-85e5-06bca11d623d', 'eb8d68d2-054f-4a19-ad6b-ebc075408b01') ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('9b916fea-69b4-4fe7-85e5-06bca11d623d', 'eb8d68d2-054f-4a19-ad6b-ebc075408b01') ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('f683e2b9-97cb-41cf-98dd-d7280300b665', '24dd1da3-bdde-449e-aee6-a9315ffb59e6') ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('f683e2b9-97cb-41cf-98dd-d7280300b665', '24dd1da3-bdde-449e-aee6-a9315ffb59e6') ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '025651b5-e70c-45b5-ae99-5033fada3e35', id FROM public.items WHERE type = 'kanji' AND character = '生' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id)
SELECT '025651b5-e70c-45b5-ae99-5033fada3e35', id FROM public.items WHERE type = 'kanji' AND character = '生' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('025651b5-e70c-45b5-ae99-5033fada3e35', '30622d15-a410-4970-b21f-2a15eb29d597') ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('025651b5-e70c-45b5-ae99-5033fada3e35', '30622d15-a410-4970-b21f-2a15eb29d597') ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT 'facbc165-cc56-4322-911a-0e66405c3697', id FROM public.items WHERE type = 'kanji' AND character = '生' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id)
SELECT 'facbc165-cc56-4322-911a-0e66405c3697', id FROM public.items WHERE type = 'kanji' AND character = '生' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('facbc165-cc56-4322-911a-0e66405c3697', '30622d15-a410-4970-b21f-2a15eb29d597') ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('facbc165-cc56-4322-911a-0e66405c3697', '30622d15-a410-4970-b21f-2a15eb29d597') ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT 'facbc165-cc56-4322-911a-0e66405c3697', id FROM public.items WHERE type = 'kanji' AND character = '学' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id)
SELECT 'facbc165-cc56-4322-911a-0e66405c3697', id FROM public.items WHERE type = 'kanji' AND character = '学' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('7fecaa55-49fd-4a46-ba3c-5e3f24b8ee3f', '2871ccf9-b0d7-42cf-9d17-ea46b49ee525') ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('7fecaa55-49fd-4a46-ba3c-5e3f24b8ee3f', '2871ccf9-b0d7-42cf-9d17-ea46b49ee525') ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '7fecaa55-49fd-4a46-ba3c-5e3f24b8ee3f', id FROM public.items WHERE type = 'kanji' AND character = '用' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id)
SELECT '7fecaa55-49fd-4a46-ba3c-5e3f24b8ee3f', id FROM public.items WHERE type = 'kanji' AND character = '用' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('e7f3e8cb-f347-4386-8392-3c73c38c6b4e', 'ce725efa-3022-4eee-a8d3-d0990ae72985') ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('e7f3e8cb-f347-4386-8392-3c73c38c6b4e', 'ce725efa-3022-4eee-a8d3-d0990ae72985') ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT 'e7f3e8cb-f347-4386-8392-3c73c38c6b4e', id FROM public.items WHERE type = 'kanji' AND character = '手' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id)
SELECT 'e7f3e8cb-f347-4386-8392-3c73c38c6b4e', id FROM public.items WHERE type = 'kanji' AND character = '手' LIMIT 1 ON CONFLICT DO NOTHING;

-- 7. Initialize progress for all existing profiles
DO $$
DECLARE
  r_profile RECORD;
BEGIN
  FOR r_profile IN SELECT id FROM public.profiles LOOP
    PERFORM public.initialize_user_progress(r_profile.id);
  END LOOP;
END $$;
