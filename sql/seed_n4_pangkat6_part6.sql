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
