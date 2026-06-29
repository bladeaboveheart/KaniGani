-- Migration to fix missing and invalid vocabulary_kanjis and item_prerequisites links

-- Missing links to insert into vocabulary_kanjis and item_prerequisites
INSERT INTO vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('fc9db29f-a62a-4bdf-a2f8-9fb8c7318d94', '857587c2-57f5-47e5-9c9b-ed08cc79e862') ON CONFLICT DO NOTHING; -- vocab: 電気, kanji: 電
INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES ('fc9db29f-a62a-4bdf-a2f8-9fb8c7318d94', '857587c2-57f5-47e5-9c9b-ed08cc79e862') ON CONFLICT DO NOTHING;

INSERT INTO vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('1a4bcd41-925a-4b79-9497-07776fecac67', '234d47e4-5c34-48f6-8625-6fc6ffaad065') ON CONFLICT DO NOTHING; -- vocab: 午前, kanji: 午
INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES ('1a4bcd41-925a-4b79-9497-07776fecac67', '234d47e4-5c34-48f6-8625-6fc6ffaad065') ON CONFLICT DO NOTHING;

INSERT INTO vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('6bb0b1eb-883c-4697-83c5-1d2300219b0d', '234d47e4-5c34-48f6-8625-6fc6ffaad065') ON CONFLICT DO NOTHING; -- vocab: 午後, kanji: 午
INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES ('6bb0b1eb-883c-4697-83c5-1d2300219b0d', '234d47e4-5c34-48f6-8625-6fc6ffaad065') ON CONFLICT DO NOTHING;

INSERT INTO vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('ec34c03e-ceb8-42e7-b551-b032dea6e265', '34cdb410-a8c5-472f-ac5f-badd2600fabd') ON CONFLICT DO NOTHING; -- vocab: 金曜日, kanji: 曜
INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES ('ec34c03e-ceb8-42e7-b551-b032dea6e265', '34cdb410-a8c5-472f-ac5f-badd2600fabd') ON CONFLICT DO NOTHING;

INSERT INTO vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('65615f7b-8f30-4cc4-a122-03ea11bf015c', '857587c2-57f5-47e5-9c9b-ed08cc79e862') ON CONFLICT DO NOTHING; -- vocab: 電話, kanji: 電
INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES ('65615f7b-8f30-4cc4-a122-03ea11bf015c', '857587c2-57f5-47e5-9c9b-ed08cc79e862') ON CONFLICT DO NOTHING;

INSERT INTO vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('26e22b79-2b2c-48ac-bfb8-f9fedce38775', '34eace5a-d2e0-478c-9f91-f38adcbdcd07') ON CONFLICT DO NOTHING; -- vocab: 日本語, kanji: 日
INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES ('26e22b79-2b2c-48ac-bfb8-f9fedce38775', '34eace5a-d2e0-478c-9f91-f38adcbdcd07') ON CONFLICT DO NOTHING;

INSERT INTO vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('26e22b79-2b2c-48ac-bfb8-f9fedce38775', 'bf4e6392-d4b0-4ee7-9688-c44b491bfb9e') ON CONFLICT DO NOTHING; -- vocab: 日本語, kanji: 本
INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES ('26e22b79-2b2c-48ac-bfb8-f9fedce38775', 'bf4e6392-d4b0-4ee7-9688-c44b491bfb9e') ON CONFLICT DO NOTHING;

INSERT INTO vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('6d9d8677-fb97-411e-9b1c-bef63c80737d', '30622d15-a410-4970-b21f-2a15eb29d597') ON CONFLICT DO NOTHING; -- vocab: 食べ物, kanji: 物
INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES ('6d9d8677-fb97-411e-9b1c-bef63c80737d', '30622d15-a410-4970-b21f-2a15eb29d597') ON CONFLICT DO NOTHING;

INSERT INTO vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('b6dbc807-a176-4253-907c-2aa80202167b', '289af712-8b72-4233-a415-310633928bef') ON CONFLICT DO NOTHING; -- vocab: 東京, kanji: 京
INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES ('b6dbc807-a176-4253-907c-2aa80202167b', '289af712-8b72-4233-a415-310633928bef') ON CONFLICT DO NOTHING;

INSERT INTO vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('dfa348fd-55f2-4951-ab72-7ff0fdafe19a', '38a1baac-dd6f-4572-93df-6495ccf2a5b8') ON CONFLICT DO NOTHING; -- vocab: 辞書, kanji: 辞
INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES ('dfa348fd-55f2-4951-ab72-7ff0fdafe19a', '38a1baac-dd6f-4572-93df-6495ccf2a5b8') ON CONFLICT DO NOTHING;
