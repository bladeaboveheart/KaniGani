SELECT '6dbd3c77-8d1f-4d87-9851-6446cf3ff071', id FROM public.items WHERE type = 'kanji' AND character = '十' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('6dbd3c77-8d1f-4d87-9851-6446cf3ff071', '542d3210-7fbb-4f22-98e5-2880c92b401f') ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('6dbd3c77-8d1f-4d87-9851-6446cf3ff071', '542d3210-7fbb-4f22-98e5-2880c92b401f') ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('60528dc7-429c-4966-ae26-82376bf6edee', '055ac98c-0e93-4444-87f6-f8b4bc9fa77b') ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('60528dc7-429c-4966-ae26-82376bf6edee', '055ac98c-0e93-4444-87f6-f8b4bc9fa77b') ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('81ce5883-9433-4f03-b8ee-1ecc23cf4896', 'fa07190b-fc75-4b59-bfb5-88c72ff21de5') ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('81ce5883-9433-4f03-b8ee-1ecc23cf4896', 'fa07190b-fc75-4b59-bfb5-88c72ff21de5') ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('81ce5883-9433-4f03-b8ee-1ecc23cf4896', '055ac98c-0e93-4444-87f6-f8b4bc9fa77b') ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('81ce5883-9433-4f03-b8ee-1ecc23cf4896', '055ac98c-0e93-4444-87f6-f8b4bc9fa77b') ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '4290cfdb-35ca-44f5-b1c1-47f98b0d600c', id FROM public.items WHERE type = 'kanji' AND character = '休' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id)
SELECT '4290cfdb-35ca-44f5-b1c1-47f98b0d600c', id FROM public.items WHERE type = 'kanji' AND character = '休' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('4290cfdb-35ca-44f5-b1c1-47f98b0d600c', '6ed84f05-23b5-4611-80e7-3b4becb50e7b') ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('4290cfdb-35ca-44f5-b1c1-47f98b0d600c', '6ed84f05-23b5-4611-80e7-3b4becb50e7b') ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('e95d8bb4-a9b7-4271-b2a6-0115d26b67f9', '43918d15-2ac3-4a22-ba0d-1d6ac7801352') ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('e95d8bb4-a9b7-4271-b2a6-0115d26b67f9', '43918d15-2ac3-4a22-ba0d-1d6ac7801352') ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT 'e95d8bb4-a9b7-4271-b2a6-0115d26b67f9', id FROM public.items WHERE type = 'kanji' AND character = '年' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id)
SELECT 'e95d8bb4-a9b7-4271-b2a6-0115d26b67f9', id FROM public.items WHERE type = 'kanji' AND character = '年' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('a9758f22-c611-44d8-b65b-ac39327eab3c', '3b03bb02-17a8-400d-bdd3-b7e27df00075') ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('a9758f22-c611-44d8-b65b-ac39327eab3c', '3b03bb02-17a8-400d-bdd3-b7e27df00075') ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT 'a9758f22-c611-44d8-b65b-ac39327eab3c', id FROM public.items WHERE type = 'kanji' AND character = '気' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id)
SELECT 'a9758f22-c611-44d8-b65b-ac39327eab3c', id FROM public.items WHERE type = 'kanji' AND character = '気' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '8d1fef41-3af1-49c5-994a-33c98e5554fa', id FROM public.items WHERE type = 'kanji' AND character = '見' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id)
SELECT '8d1fef41-3af1-49c5-994a-33c98e5554fa', id FROM public.items WHERE type = 'kanji' AND character = '見' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('8d1fef41-3af1-49c5-994a-33c98e5554fa', '426aac96-2336-43ac-be37-ad9375cb1d81') ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('8d1fef41-3af1-49c5-994a-33c98e5554fa', '426aac96-2336-43ac-be37-ad9375cb1d81') ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('7f934a69-935a-45e5-9d8c-10333d720118', '57039dbc-7af0-4505-be71-08d09465e212') ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('7f934a69-935a-45e5-9d8c-10333d720118', '57039dbc-7af0-4505-be71-08d09465e212') ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT 'ad058e9e-ef5e-432a-a39d-8fdfbcc4fa52', id FROM public.items WHERE type = 'kanji' AND character = '二' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id)
SELECT 'ad058e9e-ef5e-432a-a39d-8fdfbcc4fa52', id FROM public.items WHERE type = 'kanji' AND character = '二' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('ad058e9e-ef5e-432a-a39d-8fdfbcc4fa52', '57039dbc-7af0-4505-be71-08d09465e212') ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('ad058e9e-ef5e-432a-a39d-8fdfbcc4fa52', '57039dbc-7af0-4505-be71-08d09465e212') ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT 'b04b2634-2971-4666-9f39-9393010e5244', id FROM public.items WHERE type = 'kanji' AND character = '三' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id)
SELECT 'b04b2634-2971-4666-9f39-9393010e5244', id FROM public.items WHERE type = 'kanji' AND character = '三' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('b04b2634-2971-4666-9f39-9393010e5244', '57039dbc-7af0-4505-be71-08d09465e212') ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('b04b2634-2971-4666-9f39-9393010e5244', '57039dbc-7af0-4505-be71-08d09465e212') ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('cd887337-06d0-42fe-93f2-8b5ddc013034', 'df6ba003-2b4c-4bb8-a56b-0b257bc14d98') ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('cd887337-06d0-42fe-93f2-8b5ddc013034', 'df6ba003-2b4c-4bb8-a56b-0b257bc14d98') ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('c3b7afb6-5602-4014-946d-80fab9ec1535', 'df6ba003-2b4c-4bb8-a56b-0b257bc14d98') ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('c3b7afb6-5602-4014-946d-80fab9ec1535', 'df6ba003-2b4c-4bb8-a56b-0b257bc14d98') ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT 'c3b7afb6-5602-4014-946d-80fab9ec1535', id FROM public.items WHERE type = 'kanji' AND character = '人' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id)
SELECT 'c3b7afb6-5602-4014-946d-80fab9ec1535', id FROM public.items WHERE type = 'kanji' AND character = '人' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('a172593d-4371-4597-9c38-b7a18d42d85d', '97e7872e-69a7-4710-9c41-64c0458cac43') ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('a172593d-4371-4597-9c38-b7a18d42d85d', '97e7872e-69a7-4710-9c41-64c0458cac43') ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('a172593d-4371-4597-9c38-b7a18d42d85d', '426aac96-2336-43ac-be37-ad9375cb1d81') ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('a172593d-4371-4597-9c38-b7a18d42d85d', '426aac96-2336-43ac-be37-ad9375cb1d81') ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('81a96bdc-be03-478f-8ec5-6ee9accaa5ae', '97e7872e-69a7-4710-9c41-64c0458cac43') ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('81a96bdc-be03-478f-8ec5-6ee9accaa5ae', '97e7872e-69a7-4710-9c41-64c0458cac43') ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('81a96bdc-be03-478f-8ec5-6ee9accaa5ae', '426aac96-2336-43ac-be37-ad9375cb1d81') ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('81a96bdc-be03-478f-8ec5-6ee9accaa5ae', '426aac96-2336-43ac-be37-ad9375cb1d81') ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('3b197695-d71d-4cfd-b4ef-fd8eab5493e0', '76d77c98-0e5e-43c6-baf5-64cb3355cf58') ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('3b197695-d71d-4cfd-b4ef-fd8eab5493e0', '76d77c98-0e5e-43c6-baf5-64cb3355cf58') ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT 'a8e46ef1-886a-4536-b007-232680859d7e', id FROM public.items WHERE type = 'kanji' AND character = '一' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id)
SELECT 'a8e46ef1-886a-4536-b007-232680859d7e', id FROM public.items WHERE type = 'kanji' AND character = '一' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('a8e46ef1-886a-4536-b007-232680859d7e', '76d77c98-0e5e-43c6-baf5-64cb3355cf58') ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('a8e46ef1-886a-4536-b007-232680859d7e', '76d77c98-0e5e-43c6-baf5-64cb3355cf58') ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('3f51613f-8ce5-4706-ae94-1d7081762299', '76d77c98-0e5e-43c6-baf5-64cb3355cf58') ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('3f51613f-8ce5-4706-ae94-1d7081762299', '76d77c98-0e5e-43c6-baf5-64cb3355cf58') ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('3f51613f-8ce5-4706-ae94-1d7081762299', '055ac98c-0e93-4444-87f6-f8b4bc9fa77b') ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('3f51613f-8ce5-4706-ae94-1d7081762299', '055ac98c-0e93-4444-87f6-f8b4bc9fa77b') ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('a9920e62-c377-4300-8bf6-39797038d097', '287a6803-0a67-4838-b231-8e43e5d255fb') ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('a9920e62-c377-4300-8bf6-39797038d097', '287a6803-0a67-4838-b231-8e43e5d255fb') ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('a9920e62-c377-4300-8bf6-39797038d097', 'eb24585c-7a09-42de-8633-59a57a02bab6') ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('a9920e62-c377-4300-8bf6-39797038d097', 'eb24585c-7a09-42de-8633-59a57a02bab6') ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('d31a673d-d7ec-4399-be7c-e1a11aa71dbe', 'a5cfd66d-fe67-46e6-ad66-0985b005eb1d') ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('d31a673d-d7ec-4399-be7c-e1a11aa71dbe', 'a5cfd66d-fe67-46e6-ad66-0985b005eb1d') ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT 'd31a673d-d7ec-4399-be7c-e1a11aa71dbe', id FROM public.items WHERE type = 'kanji' AND character = '学' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id)
SELECT 'd31a673d-d7ec-4399-be7c-e1a11aa71dbe', id FROM public.items WHERE type = 'kanji' AND character = '学' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT 'e5122b2b-df69-44f6-9a01-0efc9e34b417', id FROM public.items WHERE type = 'kanji' AND character = '東' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id)
SELECT 'e5122b2b-df69-44f6-9a01-0efc9e34b417', id FROM public.items WHERE type = 'kanji' AND character = '東' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('e5122b2b-df69-44f6-9a01-0efc9e34b417', '426aac96-2336-43ac-be37-ad9375cb1d81') ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('e5122b2b-df69-44f6-9a01-0efc9e34b417', '426aac96-2336-43ac-be37-ad9375cb1d81') ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('38acce9f-36c1-4dcf-8c11-072ca784feb1', '0dedcc46-3e44-403e-91d4-a75ed65d4a64') ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('38acce9f-36c1-4dcf-8c11-072ca784feb1', '0dedcc46-3e44-403e-91d4-a75ed65d4a64') ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '38acce9f-36c1-4dcf-8c11-072ca784feb1', id FROM public.items WHERE type = 'kanji' AND character = '外' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id)
SELECT '38acce9f-36c1-4dcf-8c11-072ca784feb1', id FROM public.items WHERE type = 'kanji' AND character = '外' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('257c3a39-5432-4dbf-9b42-7541ae601873', '0dedcc46-3e44-403e-91d4-a75ed65d4a64') ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('257c3a39-5432-4dbf-9b42-7541ae601873', '0dedcc46-3e44-403e-91d4-a75ed65d4a64') ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '257c3a39-5432-4dbf-9b42-7541ae601873', id FROM public.items WHERE type = 'kanji' AND character = '上' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id)
SELECT '257c3a39-5432-4dbf-9b42-7541ae601873', id FROM public.items WHERE type = 'kanji' AND character = '上' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('5ec07948-81ca-422c-ae27-76bfdc19ada1', '0dedcc46-3e44-403e-91d4-a75ed65d4a64') ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('5ec07948-81ca-422c-ae27-76bfdc19ada1', '0dedcc46-3e44-403e-91d4-a75ed65d4a64') ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '5ec07948-81ca-422c-ae27-76bfdc19ada1', id FROM public.items WHERE type = 'kanji' AND character = '前' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id)
SELECT '5ec07948-81ca-422c-ae27-76bfdc19ada1', id FROM public.items WHERE type = 'kanji' AND character = '前' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT 'fcd22869-0520-4652-a5b8-92cfa213e9ea', id FROM public.items WHERE type = 'kanji' AND character = '電' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id)
SELECT 'fcd22869-0520-4652-a5b8-92cfa213e9ea', id FROM public.items WHERE type = 'kanji' AND character = '電' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('fcd22869-0520-4652-a5b8-92cfa213e9ea', 'e0f1e139-fa80-4e51-96d8-60a9f9e6deb1') ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('fcd22869-0520-4652-a5b8-92cfa213e9ea', 'e0f1e139-fa80-4e51-96d8-60a9f9e6deb1') ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('838faea9-7545-4b76-8896-fceaa4c5b42b', 'df6ba003-2b4c-4bb8-a56b-0b257bc14d98') ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('838faea9-7545-4b76-8896-fceaa4c5b42b', 'df6ba003-2b4c-4bb8-a56b-0b257bc14d98') ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '838faea9-7545-4b76-8896-fceaa4c5b42b', id FROM public.items WHERE type = 'kanji' AND character = '語' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id)
SELECT '838faea9-7545-4b76-8896-fceaa4c5b42b', id FROM public.items WHERE type = 'kanji' AND character = '語' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '91ab7580-beac-4333-9119-f4e58429ee99', id FROM public.items WHERE type = 'kanji' AND character = '読' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id)
SELECT '91ab7580-beac-4333-9119-f4e58429ee99', id FROM public.items WHERE type = 'kanji' AND character = '読' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('91ab7580-beac-4333-9119-f4e58429ee99', '426aac96-2336-43ac-be37-ad9375cb1d81') ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('91ab7580-beac-4333-9119-f4e58429ee99', '426aac96-2336-43ac-be37-ad9375cb1d81') ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '14b06b15-1e68-4cd2-b6ec-9fe0795dfb38', id FROM public.items WHERE type = 'kanji' AND character = '人' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id)
SELECT '14b06b15-1e68-4cd2-b6ec-9fe0795dfb38', id FROM public.items WHERE type = 'kanji' AND character = '人' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('14b06b15-1e68-4cd2-b6ec-9fe0795dfb38', 'a9d7ef1e-70fc-430f-9cdf-36b5bc38d960') ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('14b06b15-1e68-4cd2-b6ec-9fe0795dfb38', 'a9d7ef1e-70fc-430f-9cdf-36b5bc38d960') ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '5391c288-647d-4686-af3b-5dd3de50ae67', id FROM public.items WHERE type = 'kanji' AND character = '子' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id)
SELECT '5391c288-647d-4686-af3b-5dd3de50ae67', id FROM public.items WHERE type = 'kanji' AND character = '子' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('5391c288-647d-4686-af3b-5dd3de50ae67', 'e66cacc3-8efa-42b4-b5a2-bbc5903fd1be') ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('5391c288-647d-4686-af3b-5dd3de50ae67', 'e66cacc3-8efa-42b4-b5a2-bbc5903fd1be') ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('66c8800c-20f2-458f-8d58-4953b682350f', '07ac5eeb-f625-4af3-817c-b3b4e954715f') ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('66c8800c-20f2-458f-8d58-4953b682350f', '07ac5eeb-f625-4af3-817c-b3b4e954715f') ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('66c8800c-20f2-458f-8d58-4953b682350f', 'fe1c12e2-592c-4085-8db1-16e923d27772') ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('66c8800c-20f2-458f-8d58-4953b682350f', 'fe1c12e2-592c-4085-8db1-16e923d27772') ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT 'e46f1cc1-ae15-459d-944c-2090f063b2a3', id FROM public.items WHERE type = 'kanji' AND character = '南' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id)
SELECT 'e46f1cc1-ae15-459d-944c-2090f063b2a3', id FROM public.items WHERE type = 'kanji' AND character = '南' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('e46f1cc1-ae15-459d-944c-2090f063b2a3', 'a9d7ef1e-70fc-430f-9cdf-36b5bc38d960') ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('e46f1cc1-ae15-459d-944c-2090f063b2a3', 'a9d7ef1e-70fc-430f-9cdf-36b5bc38d960') ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('11f5213f-e213-46a0-920f-2e5d9f9d3a40', '57039dbc-7af0-4505-be71-08d09465e212') ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('11f5213f-e213-46a0-920f-2e5d9f9d3a40', '57039dbc-7af0-4505-be71-08d09465e212') ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '11f5213f-e213-46a0-920f-2e5d9f9d3a40', id FROM public.items WHERE type = 'kanji' AND character = '中' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id)
SELECT '11f5213f-e213-46a0-920f-2e5d9f9d3a40', id FROM public.items WHERE type = 'kanji' AND character = '中' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('f1d58a4e-3992-4efc-8daa-263e75ec3f5a', '76d77c98-0e5e-43c6-baf5-64cb3355cf58') ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('f1d58a4e-3992-4efc-8daa-263e75ec3f5a', '76d77c98-0e5e-43c6-baf5-64cb3355cf58') ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('be46de7a-f612-450d-84b5-f252dcf5249a', '76d77c98-0e5e-43c6-baf5-64cb3355cf58') ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('be46de7a-f612-450d-84b5-f252dcf5249a', '76d77c98-0e5e-43c6-baf5-64cb3355cf58') ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('1055c12b-223c-47c0-b98a-fea7b377b758', '287a6803-0a67-4838-b231-8e43e5d255fb') ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('1055c12b-223c-47c0-b98a-fea7b377b758', '287a6803-0a67-4838-b231-8e43e5d255fb') ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '1055c12b-223c-47c0-b98a-fea7b377b758', id FROM public.items WHERE type = 'kanji' AND character = '人' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id)
SELECT '1055c12b-223c-47c0-b98a-fea7b377b758', id FROM public.items WHERE type = 'kanji' AND character = '人' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '1055c12b-223c-47c0-b98a-fea7b377b758', id FROM public.items WHERE type = 'kanji' AND character = '気' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id)
SELECT '1055c12b-223c-47c0-b98a-fea7b377b758', id FROM public.items WHERE type = 'kanji' AND character = '気' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT 'ceb89c19-ef90-49ed-9621-e07d3349d183', id FROM public.items WHERE type = 'kanji' AND character = '東' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id)
SELECT 'ceb89c19-ef90-49ed-9621-e07d3349d183', id FROM public.items WHERE type = 'kanji' AND character = '東' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('ceb89c19-ef90-49ed-9621-e07d3349d183', 'a9d7ef1e-70fc-430f-9cdf-36b5bc38d960') ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('ceb89c19-ef90-49ed-9621-e07d3349d183', 'a9d7ef1e-70fc-430f-9cdf-36b5bc38d960') ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT 'a80277d7-f014-4843-ac6a-c84f9a971f45', id FROM public.items WHERE type = 'kanji' AND character = '話' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id)
SELECT 'a80277d7-f014-4843-ac6a-c84f9a971f45', id FROM public.items WHERE type = 'kanji' AND character = '話' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('a80277d7-f014-4843-ac6a-c84f9a971f45', '426aac96-2336-43ac-be37-ad9375cb1d81') ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('a80277d7-f014-4843-ac6a-c84f9a971f45', '426aac96-2336-43ac-be37-ad9375cb1d81') ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('9e2fe102-763f-4dd4-b8f1-59d5acdd413f', '73625a8a-ec89-4ce3-b6b2-2093638116bc') ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('9e2fe102-763f-4dd4-b8f1-59d5acdd413f', '73625a8a-ec89-4ce3-b6b2-2093638116bc') ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '9e2fe102-763f-4dd4-b8f1-59d5acdd413f', id FROM public.items WHERE type = 'kanji' AND character = '分' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id)
SELECT '9e2fe102-763f-4dd4-b8f1-59d5acdd413f', id FROM public.items WHERE type = 'kanji' AND character = '分' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '9ca1db73-b481-4d7c-a119-05da1fc34997', id FROM public.items WHERE type = 'kanji' AND character = '書' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id)
SELECT '9ca1db73-b481-4d7c-a119-05da1fc34997', id FROM public.items WHERE type = 'kanji' AND character = '書' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('9ca1db73-b481-4d7c-a119-05da1fc34997', '426aac96-2336-43ac-be37-ad9375cb1d81') ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('9ca1db73-b481-4d7c-a119-05da1fc34997', '426aac96-2336-43ac-be37-ad9375cb1d81') ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('15fab8f7-3fa7-4d2b-bd10-99eb31a5979d', '287a6803-0a67-4838-b231-8e43e5d255fb') ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('15fab8f7-3fa7-4d2b-bd10-99eb31a5979d', '287a6803-0a67-4838-b231-8e43e5d255fb') ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('15fab8f7-3fa7-4d2b-bd10-99eb31a5979d', '73625a8a-ec89-4ce3-b6b2-2093638116bc') ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('15fab8f7-3fa7-4d2b-bd10-99eb31a5979d', '73625a8a-ec89-4ce3-b6b2-2093638116bc') ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '15fab8f7-3fa7-4d2b-bd10-99eb31a5979d', id FROM public.items WHERE type = 'kanji' AND character = '分' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id)
SELECT '15fab8f7-3fa7-4d2b-bd10-99eb31a5979d', id FROM public.items WHERE type = 'kanji' AND character = '分' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '638b041b-47a7-4917-9f7f-ec91d67d5ea2', id FROM public.items WHERE type = 'kanji' AND character = '時' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id)
SELECT '638b041b-47a7-4917-9f7f-ec91d67d5ea2', id FROM public.items WHERE type = 'kanji' AND character = '時' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('638b041b-47a7-4917-9f7f-ec91d67d5ea2', '76d77c98-0e5e-43c6-baf5-64cb3355cf58') ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('638b041b-47a7-4917-9f7f-ec91d67d5ea2', '76d77c98-0e5e-43c6-baf5-64cb3355cf58') ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('b2fa04eb-2ccf-4dc9-87df-ac93916dd589', 'df6ba003-2b4c-4bb8-a56b-0b257bc14d98') ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('b2fa04eb-2ccf-4dc9-87df-ac93916dd589', 'df6ba003-2b4c-4bb8-a56b-0b257bc14d98') ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('fe242365-0857-4753-85d1-7ee0ab378393', '542d3210-7fbb-4f22-98e5-2880c92b401f') ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('fe242365-0857-4753-85d1-7ee0ab378393', '542d3210-7fbb-4f22-98e5-2880c92b401f') ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('9ca7fa68-e4eb-4f02-b35e-2fa20bd0206a', '43918d15-2ac3-4a22-ba0d-1d6ac7801352') ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('9ca7fa68-e4eb-4f02-b35e-2fa20bd0206a', '43918d15-2ac3-4a22-ba0d-1d6ac7801352') ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '9ca7fa68-e4eb-4f02-b35e-2fa20bd0206a', id FROM public.items WHERE type = 'kanji' AND character = '女' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id)
SELECT '9ca7fa68-e4eb-4f02-b35e-2fa20bd0206a', id FROM public.items WHERE type = 'kanji' AND character = '女' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT 'c327cb8d-fe09-4a5c-9b89-d670d46ce553', id FROM public.items WHERE type = 'kanji' AND character = '人' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id)
SELECT 'c327cb8d-fe09-4a5c-9b89-d670d46ce553', id FROM public.items WHERE type = 'kanji' AND character = '人' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('c327cb8d-fe09-4a5c-9b89-d670d46ce553', 'a5cfd66d-fe67-46e6-ad66-0985b005eb1d') ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('c327cb8d-fe09-4a5c-9b89-d670d46ce553', 'a5cfd66d-fe67-46e6-ad66-0985b005eb1d') ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('8655f189-53d4-4c53-969d-171f6bf77254', '055ac98c-0e93-4444-87f6-f8b4bc9fa77b') ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('8655f189-53d4-4c53-969d-171f6bf77254', '055ac98c-0e93-4444-87f6-f8b4bc9fa77b') ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('8927ce76-ed0e-4bfb-a05b-d6e0cfdc1b16', '0dedcc46-3e44-403e-91d4-a75ed65d4a64') ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('8927ce76-ed0e-4bfb-a05b-d6e0cfdc1b16', '0dedcc46-3e44-403e-91d4-a75ed65d4a64') ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '8927ce76-ed0e-4bfb-a05b-d6e0cfdc1b16', id FROM public.items WHERE type = 'kanji' AND character = '下' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id)
SELECT '8927ce76-ed0e-4bfb-a05b-d6e0cfdc1b16', id FROM public.items WHERE type = 'kanji' AND character = '下' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('b6450baa-441c-426c-8b2b-57853ff0bbbc', 'fdb76ab7-02d9-4791-9280-71b45e40ae94') ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('b6450baa-441c-426c-8b2b-57853ff0bbbc', 'fdb76ab7-02d9-4791-9280-71b45e40ae94') ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT 'b6450baa-441c-426c-8b2b-57853ff0bbbc', id FROM public.items WHERE type = 'kanji' AND character = '学' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id)
SELECT 'b6450baa-441c-426c-8b2b-57853ff0bbbc', id FROM public.items WHERE type = 'kanji' AND character = '学' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '76bd3e6d-c3c3-4b78-8c02-f41c269fcc1d', id FROM public.items WHERE type = 'kanji' AND character = '入' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id)
SELECT '76bd3e6d-c3c3-4b78-8c02-f41c269fcc1d', id FROM public.items WHERE type = 'kanji' AND character = '入' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('76bd3e6d-c3c3-4b78-8c02-f41c269fcc1d', 'e0f1e139-fa80-4e51-96d8-60a9f9e6deb1') ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('76bd3e6d-c3c3-4b78-8c02-f41c269fcc1d', 'e0f1e139-fa80-4e51-96d8-60a9f9e6deb1') ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('f93a2ba7-bed1-4be3-bc6f-f932caa658e9', '0dedcc46-3e44-403e-91d4-a75ed65d4a64') ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('f93a2ba7-bed1-4be3-bc6f-f932caa658e9', '0dedcc46-3e44-403e-91d4-a75ed65d4a64') ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT 'f93a2ba7-bed1-4be3-bc6f-f932caa658e9', id FROM public.items WHERE type = 'kanji' AND character = '後' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id)
SELECT 'f93a2ba7-bed1-4be3-bc6f-f932caa658e9', id FROM public.items WHERE type = 'kanji' AND character = '後' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('f24ac386-ef4f-4a03-ac8b-2eb7a1c262ef', 'e0f1e139-fa80-4e51-96d8-60a9f9e6deb1') ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('f24ac386-ef4f-4a03-ac8b-2eb7a1c262ef', 'e0f1e139-fa80-4e51-96d8-60a9f9e6deb1') ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('c6ce93d6-419d-48a7-b4d7-a5ad8e28828f', 'a9d7ef1e-70fc-430f-9cdf-36b5bc38d960') ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('c6ce93d6-419d-48a7-b4d7-a5ad8e28828f', 'a9d7ef1e-70fc-430f-9cdf-36b5bc38d960') ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('75dba553-2d8d-420c-a8d5-03306994dd9c', '97e7872e-69a7-4710-9c41-64c0458cac43') ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('75dba553-2d8d-420c-a8d5-03306994dd9c', '97e7872e-69a7-4710-9c41-64c0458cac43') ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id)
SELECT '7ea5a5bd-1fca-4aa8-a598-f287796f830f', id FROM public.items WHERE type = 'kanji' AND character = '三' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id)
SELECT '7ea5a5bd-1fca-4aa8-a598-f287796f830f', id FROM public.items WHERE type = 'kanji' AND character = '三' LIMIT 1 ON CONFLICT DO NOTHING;
INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('7ea5a5bd-1fca-4aa8-a598-f287796f830f', '57039dbc-7af0-4505-be71-08d09465e212') ON CONFLICT DO NOTHING;
INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('7ea5a5bd-1fca-4aa8-a598-f287796f830f', '57039dbc-7af0-4505-be71-08d09465e212') ON CONFLICT DO NOTHING;

-- 7. Initialize progress for all existing profiles
DO $$
DECLARE
  r_profile RECORD;
BEGIN
  FOR r_profile IN SELECT id FROM public.profiles LOOP
    PERFORM public.initialize_user_progress(r_profile.id);
  END LOOP;
END $$;
