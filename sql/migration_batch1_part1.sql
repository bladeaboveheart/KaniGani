-- Migration: Batch 1 Part 1 (Items 1-40)
-- Total items: 40

DO $$
BEGIN

  -- [VOCABULARY] 午後 (Level 6)
  UPDATE item_meanings SET meaning = 'Sore', primary_meaning = true, accepted_answer = true WHERE id = '9aaa2b7e-74dc-458c-920b-ddc9916958a8';
  UPDATE items SET slug = 'sore' WHERE id = '213ed9c2-59ed-4987-bb2b-13e5e80ecdb0';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '213ed9c2-59ed-4987-bb2b-13e5e80ecdb0' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Siang'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('213ed9c2-59ed-4987-bb2b-13e5e80ecdb0', 'Siang', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '213ed9c2-59ed-4987-bb2b-13e5e80ecdb0' AND LOWER(TRIM(meaning)) = LOWER(TRIM('PM'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('213ed9c2-59ed-4987-bb2b-13e5e80ecdb0', 'PM', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '213ed9c2-59ed-4987-bb2b-13e5e80ecdb0' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Petang'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('213ed9c2-59ed-4987-bb2b-13e5e80ecdb0', 'Petang', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '213ed9c2-59ed-4987-bb2b-13e5e80ecdb0' AND LOWER(TRIM(meaning)) = LOWER(TRIM('P.M.'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('213ed9c2-59ed-4987-bb2b-13e5e80ecdb0', 'P.M.', false, true);
  END IF;

  -- [VOCABULARY] 辛口 (Level 9)
  UPDATE item_meanings SET meaning = 'Pedas', primary_meaning = true, accepted_answer = true WHERE id = 'c238ea6c-1c80-4dcb-afcb-c4ae33de3642';
  UPDATE items SET slug = 'pedas' WHERE id = '78aba44e-6a62-4d9f-843f-e2654960c1fe';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '78aba44e-6a62-4d9f-843f-e2654960c1fe' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Tajam'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('78aba44e-6a62-4d9f-843f-e2654960c1fe', 'Tajam', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '78aba44e-6a62-4d9f-843f-e2654960c1fe' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Rasa Pedas'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('78aba44e-6a62-4d9f-843f-e2654960c1fe', 'Rasa Pedas', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '78aba44e-6a62-4d9f-843f-e2654960c1fe' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Keras'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('78aba44e-6a62-4d9f-843f-e2654960c1fe', 'Keras', false, true);
  END IF;

  -- [VOCABULARY] ちょっと (Level 10)
  UPDATE item_meanings SET meaning = 'Sebentar', primary_meaning = true, accepted_answer = true WHERE id = '6a216317-02ac-4ac8-a2df-ff3ab48c6299';
  UPDATE items SET slug = 'sebentar' WHERE id = 'b0862e11-ec33-4633-8689-ea8463aecd02';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'b0862e11-ec33-4633-8689-ea8463aecd02' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Sedikit'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('b0862e11-ec33-4633-8689-ea8463aecd02', 'Sedikit', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'b0862e11-ec33-4633-8689-ea8463aecd02' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Tunggu Sebentar'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('b0862e11-ec33-4633-8689-ea8463aecd02', 'Tunggu Sebentar', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'b0862e11-ec33-4633-8689-ea8463aecd02' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Agak'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('b0862e11-ec33-4633-8689-ea8463aecd02', 'Agak', false, true);
  END IF;

  -- [VOCABULARY] もう (Level 12)
  UPDATE item_meanings SET meaning = 'Sudah', primary_meaning = true, accepted_answer = true WHERE id = '015d15a6-e028-4e1d-a1d2-34df00dc4886';
  UPDATE items SET slug = 'sudah' WHERE id = '497c9761-c834-4658-8a69-d55f5ebb4ee5';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '497c9761-c834-4658-8a69-d55f5ebb4ee5' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Lagi'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('497c9761-c834-4658-8a69-d55f5ebb4ee5', 'Lagi', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '497c9761-c834-4658-8a69-d55f5ebb4ee5' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Sudah Selesai'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('497c9761-c834-4658-8a69-d55f5ebb4ee5', 'Sudah Selesai', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '497c9761-c834-4658-8a69-d55f5ebb4ee5' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Lagi Sedikit'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('497c9761-c834-4658-8a69-d55f5ebb4ee5', 'Lagi Sedikit', false, true);
  END IF;

  -- [KANJI] 俺 (Level 13)
  UPDATE item_meanings SET meaning = 'Gua', primary_meaning = true, accepted_answer = true WHERE id = '738b641c-9e85-41e3-ae09-24846420a1a8';
  UPDATE items SET slug = 'gua' WHERE id = '10ad24f6-397c-430c-8167-b14e717a899a';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '10ad24f6-397c-430c-8167-b14e717a899a' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Aku'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('10ad24f6-397c-430c-8167-b14e717a899a', 'Aku', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '10ad24f6-397c-430c-8167-b14e717a899a' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Saya'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('10ad24f6-397c-430c-8167-b14e717a899a', 'Saya', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '10ad24f6-397c-430c-8167-b14e717a899a' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Gue'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('10ad24f6-397c-430c-8167-b14e717a899a', 'Gue', false, true);
  END IF;

  -- [KANJI] 様 (Level 13)
  UPDATE item_meanings SET meaning = 'Tuan', primary_meaning = true, accepted_answer = true WHERE id = '05b02061-cc70-4b3e-9a23-98c7de75e21a';
  UPDATE items SET slug = 'tuan' WHERE id = '7ad600d0-ac8d-4e00-be6b-937a3c98cb19';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '7ad600d0-ac8d-4e00-be6b-937a3c98cb19' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Nyonya'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('7ad600d0-ac8d-4e00-be6b-937a3c98cb19', 'Nyonya', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '7ad600d0-ac8d-4e00-be6b-937a3c98cb19' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Sufiks Gelar'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('7ad600d0-ac8d-4e00-be6b-937a3c98cb19', 'Sufiks Gelar', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '7ad600d0-ac8d-4e00-be6b-937a3c98cb19' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Yang Terhormat'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('7ad600d0-ac8d-4e00-be6b-937a3c98cb19', 'Yang Terhormat', false, true);
  END IF;

  -- [KANJI] 課 (Level 13)
  UPDATE item_meanings SET meaning = 'Seksi', primary_meaning = true, accepted_answer = true WHERE id = '4b55283c-8bea-484d-8209-031fc69e768c';
  UPDATE items SET slug = 'seksi' WHERE id = '2c938955-ac6a-40e2-9b81-bc2f1e3f3543';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '2c938955-ac6a-40e2-9b81-bc2f1e3f3543' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Bab'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('2c938955-ac6a-40e2-9b81-bc2f1e3f3543', 'Bab', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '2c938955-ac6a-40e2-9b81-bc2f1e3f3543' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Bagian'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('2c938955-ac6a-40e2-9b81-bc2f1e3f3543', 'Bagian', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '2c938955-ac6a-40e2-9b81-bc2f1e3f3543' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Divisi'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('2c938955-ac6a-40e2-9b81-bc2f1e3f3543', 'Divisi', false, true);
  END IF;

  -- [VOCABULARY] 〜様 (Level 13)
  UPDATE item_meanings SET meaning = 'Tuan', primary_meaning = true, accepted_answer = true WHERE id = 'e5a38222-798c-458d-82a7-09cb0b94a714';
  UPDATE items SET slug = 'tuan' WHERE id = 'a0e85a69-c6b7-4318-be06-9bbe0f17f76b';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'a0e85a69-c6b7-4318-be06-9bbe0f17f76b' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Nyonya'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('a0e85a69-c6b7-4318-be06-9bbe0f17f76b', 'Nyonya', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'a0e85a69-c6b7-4318-be06-9bbe0f17f76b' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Sufiks Tuan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('a0e85a69-c6b7-4318-be06-9bbe0f17f76b', 'Sufiks Tuan', false, true);
  END IF;

  -- [VOCABULARY] 俺 (Level 13)
  UPDATE item_meanings SET meaning = 'Gua', primary_meaning = true, accepted_answer = true WHERE id = '10f5903e-25a5-424b-9a57-285dc1697379';
  UPDATE items SET slug = 'gua' WHERE id = '107afc8d-cd97-4175-8f2f-45c22223bfee';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '107afc8d-cd97-4175-8f2f-45c22223bfee' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Aku'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('107afc8d-cd97-4175-8f2f-45c22223bfee', 'Aku', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '107afc8d-cd97-4175-8f2f-45c22223bfee' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Saya'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('107afc8d-cd97-4175-8f2f-45c22223bfee', 'Saya', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '107afc8d-cd97-4175-8f2f-45c22223bfee' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Gue'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('107afc8d-cd97-4175-8f2f-45c22223bfee', 'Gue', false, true);
  END IF;

  -- [VOCABULARY] 俺たち (Level 13)
  UPDATE item_meanings SET meaning = 'Kami', primary_meaning = true, accepted_answer = true WHERE id = '3d6fabb5-fa4a-4818-b688-d14db17d2451';
  UPDATE items SET slug = 'kami' WHERE id = '6158f1af-4c82-430b-9a54-89db2436bf00';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '6158f1af-4c82-430b-9a54-89db2436bf00' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Kita'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('6158f1af-4c82-430b-9a54-89db2436bf00', 'Kita', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '6158f1af-4c82-430b-9a54-89db2436bf00' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Kami Sekalian'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('6158f1af-4c82-430b-9a54-89db2436bf00', 'Kami Sekalian', false, true);
  END IF;

  -- [VOCABULARY] 岸 (Level 13)
  UPDATE item_meanings SET meaning = 'Pantai', primary_meaning = true, accepted_answer = true WHERE id = '8e67eca4-b40e-4201-afd6-a3fbfe3932b2';
  UPDATE items SET slug = 'pantai' WHERE id = '9e86e2cf-75b6-4311-9433-5867b6cf8492';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '9e86e2cf-75b6-4311-9433-5867b6cf8492' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Tepian'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('9e86e2cf-75b6-4311-9433-5867b6cf8492', 'Tepian', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '9e86e2cf-75b6-4311-9433-5867b6cf8492' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Pesisir'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('9e86e2cf-75b6-4311-9433-5867b6cf8492', 'Pesisir', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '9e86e2cf-75b6-4311-9433-5867b6cf8492' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Tepi Sungai'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('9e86e2cf-75b6-4311-9433-5867b6cf8492', 'Tepi Sungai', false, true);
  END IF;

  -- [VOCABULARY] 疑問 (Level 13)
  UPDATE item_meanings SET meaning = 'Pertanyaan', primary_meaning = true, accepted_answer = true WHERE id = '5d823bf6-9617-4036-adfa-cfdc1ccc3dbd';
  UPDATE items SET slug = 'pertanyaan' WHERE id = 'a622b4f6-2b8b-4caf-ad33-87a153fe315f';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'a622b4f6-2b8b-4caf-ad33-87a153fe315f' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Keraguan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('a622b4f6-2b8b-4caf-ad33-87a153fe315f', 'Keraguan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'a622b4f6-2b8b-4caf-ad33-87a153fe315f' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Tanya'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('a622b4f6-2b8b-4caf-ad33-87a153fe315f', 'Tanya', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'a622b4f6-2b8b-4caf-ad33-87a153fe315f' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Ragu'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('a622b4f6-2b8b-4caf-ad33-87a153fe315f', 'Ragu', false, true);
  END IF;

  -- [VOCABULARY] 神様 (Level 13)
  UPDATE item_meanings SET meaning = 'Tuhan', primary_meaning = true, accepted_answer = true WHERE id = '108e00b8-c80e-491b-b757-711d4c1644d1';
  UPDATE items SET slug = 'tuhan' WHERE id = '2db71102-8b48-4d4e-83b0-f5e750c0c5f2';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '2db71102-8b48-4d4e-83b0-f5e750c0c5f2' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Dewa'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('2db71102-8b48-4d4e-83b0-f5e750c0c5f2', 'Dewa', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '2db71102-8b48-4d4e-83b0-f5e750c0c5f2' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Sang Pencipta'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('2db71102-8b48-4d4e-83b0-f5e750c0c5f2', 'Sang Pencipta', false, true);
  END IF;

  -- [VOCABULARY] 輪 (Level 13)
  UPDATE item_meanings SET meaning = 'Lingkaran', primary_meaning = true, accepted_answer = true WHERE id = '99eb1966-17c5-4639-bd16-120ce70c3acd';
  UPDATE items SET slug = 'lingkaran' WHERE id = 'eb0da12b-5e86-4f57-9195-0ed3ef60d9e8';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'eb0da12b-5e86-4f57-9195-0ed3ef60d9e8' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Cincin'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('eb0da12b-5e86-4f57-9195-0ed3ef60d9e8', 'Cincin', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'eb0da12b-5e86-4f57-9195-0ed3ef60d9e8' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Gelang'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('eb0da12b-5e86-4f57-9195-0ed3ef60d9e8', 'Gelang', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'eb0da12b-5e86-4f57-9195-0ed3ef60d9e8' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Roda'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('eb0da12b-5e86-4f57-9195-0ed3ef60d9e8', 'Roda', false, true);
  END IF;

  -- [VOCABULARY] 〜的 (Level 14)
  UPDATE item_meanings SET meaning = 'Bersifat', primary_meaning = true, accepted_answer = true WHERE id = 'f9dfdbf3-e054-47b4-9ff9-61dbdc52d7b7';
  UPDATE items SET slug = 'bersifat' WHERE id = 'e43e3efa-af1a-4278-a622-7287446e9b96';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'e43e3efa-af1a-4278-a622-7287446e9b96' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Tipikal'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('e43e3efa-af1a-4278-a622-7287446e9b96', 'Tipikal', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'e43e3efa-af1a-4278-a622-7287446e9b96' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Karakteristik'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('e43e3efa-af1a-4278-a622-7287446e9b96', 'Karakteristik', false, true);
  END IF;

  -- [VOCABULARY] 俺ら (Level 14)
  UPDATE item_meanings SET meaning = 'Kami', primary_meaning = true, accepted_answer = true WHERE id = '3848f393-5afd-48a1-9178-5ca7bb0fd1df';
  UPDATE items SET slug = 'kami' WHERE id = 'c0497fc3-1ef6-44b8-858f-6f485b3b86ac';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'c0497fc3-1ef6-44b8-858f-6f485b3b86ac' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Kita'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('c0497fc3-1ef6-44b8-858f-6f485b3b86ac', 'Kita', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'c0497fc3-1ef6-44b8-858f-6f485b3b86ac' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Kami Sekalian'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('c0497fc3-1ef6-44b8-858f-6f485b3b86ac', 'Kami Sekalian', false, true);
  END IF;

  -- [VOCABULARY] 悪口 (Level 14)
  UPDATE item_meanings SET meaning = 'Umpatan', primary_meaning = true, accepted_answer = true WHERE id = '8bf75926-997e-4912-9a79-25283d97d3a4';
  UPDATE items SET slug = 'umpatan' WHERE id = '558125de-4a36-4cb5-b4f8-c7f539258c91';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '558125de-4a36-4cb5-b4f8-c7f539258c91' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Celaan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('558125de-4a36-4cb5-b4f8-c7f539258c91', 'Celaan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '558125de-4a36-4cb5-b4f8-c7f539258c91' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Makian'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('558125de-4a36-4cb5-b4f8-c7f539258c91', 'Makian', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '558125de-4a36-4cb5-b4f8-c7f539258c91' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Fitnah'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('558125de-4a36-4cb5-b4f8-c7f539258c91', 'Fitnah', false, true);
  END IF;

  -- [VOCABULARY] 感じ (Level 14)
  UPDATE item_meanings SET meaning = 'Kesan', primary_meaning = true, accepted_answer = true WHERE id = 'a4c2935d-d0fa-4838-98b8-89c0e2a09cda';
  UPDATE items SET slug = 'kesan' WHERE id = '357032ce-63c3-49d1-866e-2ddc3440f137';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '357032ce-63c3-49d1-866e-2ddc3440f137' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Perasaan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('357032ce-63c3-49d1-866e-2ddc3440f137', 'Perasaan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '357032ce-63c3-49d1-866e-2ddc3440f137' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Sensasi'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('357032ce-63c3-49d1-866e-2ddc3440f137', 'Sensasi', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '357032ce-63c3-49d1-866e-2ddc3440f137' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Firasat'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('357032ce-63c3-49d1-866e-2ddc3440f137', 'Firasat', false, true);
  END IF;

  -- [VOCABULARY] 折角 (Level 14)
  UPDATE item_meanings SET meaning = 'Susah Payah', primary_meaning = true, accepted_answer = true WHERE id = '419aa414-9f2f-4930-ae6b-c6eac323ec44';
  UPDATE items SET slug = 'susah-payah' WHERE id = 'c7b81773-6fa7-451b-907c-33d8b7842422';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'c7b81773-6fa7-451b-907c-33d8b7842422' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Mumpung'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('c7b81773-6fa7-451b-907c-33d8b7842422', 'Mumpung', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'c7b81773-6fa7-451b-907c-33d8b7842422' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Bersusah Payah'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('c7b81773-6fa7-451b-907c-33d8b7842422', 'Bersusah Payah', false, true);
  END IF;

  -- [VOCABULARY] 望み (Level 14)
  UPDATE item_meanings SET meaning = 'Harapan', primary_meaning = true, accepted_answer = true WHERE id = 'e6b35593-0ed4-4f9a-968e-2da3f0c3e1e1';
  UPDATE items SET slug = 'harapan' WHERE id = '591c5537-75db-422e-a2ae-eaab6432e871';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '591c5537-75db-422e-a2ae-eaab6432e871' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Keinginan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('591c5537-75db-422e-a2ae-eaab6432e871', 'Keinginan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '591c5537-75db-422e-a2ae-eaab6432e871' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Cita-cita'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('591c5537-75db-422e-a2ae-eaab6432e871', 'Cita-cita', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '591c5537-75db-422e-a2ae-eaab6432e871' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Asa'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('591c5537-75db-422e-a2ae-eaab6432e871', 'Asa', false, true);
  END IF;

  -- [VOCABULARY] 気持ち悪い (Level 14)
  UPDATE item_meanings SET meaning = 'Menjijikkan', primary_meaning = true, accepted_answer = true WHERE id = '024e742f-27e6-4f25-a904-d3393109ecc7';
  UPDATE items SET slug = 'menjijikkan' WHERE id = 'de041b6c-6f57-4e21-b911-d7ab9b92f4bc';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'de041b6c-6f57-4e21-b911-d7ab9b92f4bc' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Mual'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('de041b6c-6f57-4e21-b911-d7ab9b92f4bc', 'Mual', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'de041b6c-6f57-4e21-b911-d7ab9b92f4bc' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Geli'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('de041b6c-6f57-4e21-b911-d7ab9b92f4bc', 'Geli', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'de041b6c-6f57-4e21-b911-d7ab9b92f4bc' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Tidak Nyaman'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('de041b6c-6f57-4e21-b911-d7ab9b92f4bc', 'Tidak Nyaman', false, true);
  END IF;

  -- [VOCABULARY] 理性 (Level 14)
  UPDATE item_meanings SET meaning = 'Akal Sehat', primary_meaning = true, accepted_answer = true WHERE id = '40a43862-d46e-4e6a-961d-53829e3d8493';
  UPDATE items SET slug = 'akal-sehat' WHERE id = '9821b33f-1190-43fc-8714-ab0b61a796ec';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '9821b33f-1190-43fc-8714-ab0b61a796ec' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Nalar'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('9821b33f-1190-43fc-8714-ab0b61a796ec', 'Nalar', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '9821b33f-1190-43fc-8714-ab0b61a796ec' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Rasio'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('9821b33f-1190-43fc-8714-ab0b61a796ec', 'Rasio', false, true);
  END IF;

  -- [VOCABULARY] 約 (Level 14)
  UPDATE item_meanings SET meaning = 'Sekitar', primary_meaning = true, accepted_answer = true WHERE id = 'be422844-6232-4430-8ec0-bf5af59a73a1';
  UPDATE items SET slug = 'sekitar' WHERE id = '8e87e938-c054-493e-a4b8-f7db7df9a740';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '8e87e938-c054-493e-a4b8-f7db7df9a740' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Kira-kira'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('8e87e938-c054-493e-a4b8-f7db7df9a740', 'Kira-kira', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '8e87e938-c054-493e-a4b8-f7db7df9a740' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Kurang Lebih'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('8e87e938-c054-493e-a4b8-f7db7df9a740', 'Kurang Lebih', false, true);
  END IF;

  -- [VOCABULARY] 間に合う (Level 14)
  UPDATE item_meanings SET meaning = 'Tepat Waktu', primary_meaning = true, accepted_answer = true WHERE id = '63f7ae87-ebb0-4ab0-ad3e-6b49e258226d';
  UPDATE items SET slug = 'tepat-waktu' WHERE id = '0d16e2a9-78a0-4438-8681-4afc8accabc0';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '0d16e2a9-78a0-4438-8681-4afc8accabc0' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Sempat'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('0d16e2a9-78a0-4438-8681-4afc8accabc0', 'Sempat', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '0d16e2a9-78a0-4438-8681-4afc8accabc0' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Keburu'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('0d16e2a9-78a0-4438-8681-4afc8accabc0', 'Keburu', false, true);
  END IF;

  -- [VOCABULARY] 願望 (Level 14)
  UPDATE item_meanings SET meaning = 'Keinginan', primary_meaning = true, accepted_answer = true WHERE id = 'b959b4f9-2339-4e62-92fe-c2d81f9534e1';
  UPDATE items SET slug = 'keinginan' WHERE id = 'e668ada1-46dd-457c-b19a-b3526abfe812';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'e668ada1-46dd-457c-b19a-b3526abfe812' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Harapan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('e668ada1-46dd-457c-b19a-b3526abfe812', 'Harapan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'e668ada1-46dd-457c-b19a-b3526abfe812' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Hasrat'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('e668ada1-46dd-457c-b19a-b3526abfe812', 'Hasrat', false, true);
  END IF;

  -- [KANJI] 丈 (Level 15)
  UPDATE item_meanings SET meaning = 'Kokoh', primary_meaning = true, accepted_answer = true WHERE id = '4c58b592-1e60-4db8-808c-6cb97956ba0a';
  UPDATE items SET slug = 'kokoh' WHERE id = '7d340716-8475-4565-8018-e1e203cacca4';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '7d340716-8475-4565-8018-e1e203cacca4' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Panjang'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('7d340716-8475-4565-8018-e1e203cacca4', 'Panjang', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '7d340716-8475-4565-8018-e1e203cacca4' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Tinggi'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('7d340716-8475-4565-8018-e1e203cacca4', 'Tinggi', false, true);
  END IF;

  -- [KANJI] 変 (Level 15)
  UPDATE item_meanings SET meaning = 'Berubah', primary_meaning = true, accepted_answer = true WHERE id = 'fbfeafaf-9c85-4b24-b991-1bab1969092e';
  UPDATE items SET slug = 'berubah' WHERE id = '553d39de-0aad-42b9-a4ca-205c533a8c11';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '553d39de-0aad-42b9-a4ca-205c533a8c11' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Aneh'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('553d39de-0aad-42b9-a4ca-205c533a8c11', 'Aneh', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '553d39de-0aad-42b9-a4ca-205c533a8c11' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Perubahan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('553d39de-0aad-42b9-a4ca-205c533a8c11', 'Perubahan', false, true);
  END IF;

  -- [KANJI] 紀 (Level 15)
  UPDATE item_meanings SET meaning = 'Zaman', primary_meaning = true, accepted_answer = true WHERE id = '104a2680-a156-4654-a926-939d7b2c7fb2';
  UPDATE items SET slug = 'zaman' WHERE id = '19063a93-fffa-416b-83eb-5ff6078e3318';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '19063a93-fffa-416b-83eb-5ff6078e3318' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Abad'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('19063a93-fffa-416b-83eb-5ff6078e3318', 'Abad', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '19063a93-fffa-416b-83eb-5ff6078e3318' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Era'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('19063a93-fffa-416b-83eb-5ff6078e3318', 'Era', false, true);
  END IF;

  -- [KANJI] 飯 (Level 15)
  UPDATE item_meanings SET meaning = 'Nasi', primary_meaning = true, accepted_answer = true WHERE id = 'cd10c537-f143-42d7-8f3e-53cc9d143ce8';
  UPDATE items SET slug = 'nasi' WHERE id = '8f6d638e-1fe9-4dc9-98b1-fac41f83b976';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '8f6d638e-1fe9-4dc9-98b1-fac41f83b976' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Makanan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('8f6d638e-1fe9-4dc9-98b1-fac41f83b976', 'Makanan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '8f6d638e-1fe9-4dc9-98b1-fac41f83b976' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Santapan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('8f6d638e-1fe9-4dc9-98b1-fac41f83b976', 'Santapan', false, true);
  END IF;

  -- [VOCABULARY] 不法 (Level 15)
  UPDATE item_meanings SET meaning = 'Ilegal', primary_meaning = true, accepted_answer = true WHERE id = '7107a2b9-d41e-4529-94ca-cd09906e605d';
  UPDATE items SET slug = 'ilegal' WHERE id = '1b4986d8-0204-4d4d-89db-fab69620bebe';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '1b4986d8-0204-4d4d-89db-fab69620bebe' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Melanggar Hukum'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('1b4986d8-0204-4d4d-89db-fab69620bebe', 'Melanggar Hukum', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '1b4986d8-0204-4d4d-89db-fab69620bebe' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Haram'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('1b4986d8-0204-4d4d-89db-fab69620bebe', 'Haram', false, true);
  END IF;

  -- [VOCABULARY] 了解 (Level 15)
  UPDATE item_meanings SET meaning = 'Paham', primary_meaning = true, accepted_answer = true WHERE id = '5f8aa0dc-b9bf-4831-a2fe-8436f841c71a';
  UPDATE items SET slug = 'paham' WHERE id = 'b0bd4eaf-6e58-4ebc-8c61-08bf6ed5e1e1';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'b0bd4eaf-6e58-4ebc-8c61-08bf6ed5e1e1' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Dimengerti'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('b0bd4eaf-6e58-4ebc-8c61-08bf6ed5e1e1', 'Dimengerti', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'b0bd4eaf-6e58-4ebc-8c61-08bf6ed5e1e1' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Mengerti'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('b0bd4eaf-6e58-4ebc-8c61-08bf6ed5e1e1', 'Mengerti', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'b0bd4eaf-6e58-4ebc-8c61-08bf6ed5e1e1' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Siap'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('b0bd4eaf-6e58-4ebc-8c61-08bf6ed5e1e1', 'Siap', false, true);
  END IF;

  -- [VOCABULARY] 大変 (Level 15)
  UPDATE item_meanings SET meaning = 'Berat', primary_meaning = true, accepted_answer = true WHERE id = 'e55ce12b-beb6-4443-85da-ef4c5c10cb8d';
  UPDATE items SET slug = 'berat' WHERE id = 'bffef089-2da9-4f8c-a0b4-24162ca78afe';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'bffef089-2da9-4f8c-a0b4-24162ca78afe' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Gawat'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('bffef089-2da9-4f8c-a0b4-24162ca78afe', 'Gawat', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'bffef089-2da9-4f8c-a0b4-24162ca78afe' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Sulit'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('bffef089-2da9-4f8c-a0b4-24162ca78afe', 'Sulit', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'bffef089-2da9-4f8c-a0b4-24162ca78afe' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Sukar'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('bffef089-2da9-4f8c-a0b4-24162ca78afe', 'Sukar', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'bffef089-2da9-4f8c-a0b4-24162ca78afe' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Sangat'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('bffef089-2da9-4f8c-a0b4-24162ca78afe', 'Sangat', false, true);
  END IF;

  -- [VOCABULARY] 情けない (Level 15)
  UPDATE item_meanings SET meaning = 'Menyedihkan', primary_meaning = true, accepted_answer = true WHERE id = '2fbd9450-ca9d-4f07-ba49-25e118fdbec8';
  UPDATE items SET slug = 'menyedihkan' WHERE id = '56461b9c-eb8c-4d25-8f22-9600ed0fe116';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '56461b9c-eb8c-4d25-8f22-9600ed0fe116' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Memalukan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('56461b9c-eb8c-4d25-8f22-9600ed0fe116', 'Memalukan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '56461b9c-eb8c-4d25-8f22-9600ed0fe116' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Menyedihkan Sekali'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('56461b9c-eb8c-4d25-8f22-9600ed0fe116', 'Menyedihkan Sekali', false, true);
  END IF;

  -- [VOCABULARY] 感想 (Level 15)
  UPDATE item_meanings SET meaning = 'Kesan', primary_meaning = true, accepted_answer = true WHERE id = '14d3df28-1059-45ff-b90b-21dcc29dbc46';
  UPDATE items SET slug = 'kesan' WHERE id = '95076056-a8f5-4e00-8127-1f86f8b61bea';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '95076056-a8f5-4e00-8127-1f86f8b61bea' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Tanggapan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('95076056-a8f5-4e00-8127-1f86f8b61bea', 'Tanggapan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '95076056-a8f5-4e00-8127-1f86f8b61bea' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Opini'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('95076056-a8f5-4e00-8127-1f86f8b61bea', 'Opini', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '95076056-a8f5-4e00-8127-1f86f8b61bea' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Pendapat'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('95076056-a8f5-4e00-8127-1f86f8b61bea', 'Pendapat', false, true);
  END IF;

  -- [VOCABULARY] 時計 (Level 15)
  UPDATE item_meanings SET meaning = 'Jam', primary_meaning = true, accepted_answer = true WHERE id = 'dafc7709-8ce4-46a9-bc88-ec073272f3f6';
  UPDATE items SET slug = 'jam' WHERE id = '6f1f7eeb-fb81-4be1-89a6-484fc23c9396';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '6f1f7eeb-fb81-4be1-89a6-484fc23c9396' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Jam Tangan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('6f1f7eeb-fb81-4be1-89a6-484fc23c9396', 'Jam Tangan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '6f1f7eeb-fb81-4be1-89a6-484fc23c9396' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Arloji'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('6f1f7eeb-fb81-4be1-89a6-484fc23c9396', 'Arloji', false, true);
  END IF;

  -- [VOCABULARY] 解ける (Level 15)
  UPDATE item_meanings SET meaning = 'Terpecahkan', primary_meaning = true, accepted_answer = true WHERE id = '873f92df-1cc8-40e8-a85b-4678143bf6f7';
  UPDATE items SET slug = 'terpecahkan' WHERE id = '3e397ac3-90dd-4f08-a2d7-13e547ce8700';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '3e397ac3-90dd-4f08-a2d7-13e547ce8700' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Terurai'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('3e397ac3-90dd-4f08-a2d7-13e547ce8700', 'Terurai', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '3e397ac3-90dd-4f08-a2d7-13e547ce8700' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Lepas'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('3e397ac3-90dd-4f08-a2d7-13e547ce8700', 'Lepas', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '3e397ac3-90dd-4f08-a2d7-13e547ce8700' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Terbuka'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('3e397ac3-90dd-4f08-a2d7-13e547ce8700', 'Terbuka', false, true);
  END IF;

  -- [VOCABULARY] 頑丈 (Level 15)
  UPDATE item_meanings SET meaning = 'Kokoh', primary_meaning = true, accepted_answer = true WHERE id = 'b2616d55-82bf-4a83-bda2-023164fb6a55';
  UPDATE items SET slug = 'kokoh' WHERE id = 'c4708473-fb2c-446b-8a25-4aa1fa76bfdd';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'c4708473-fb2c-446b-8a25-4aa1fa76bfdd' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Kuat'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('c4708473-fb2c-446b-8a25-4aa1fa76bfdd', 'Kuat', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'c4708473-fb2c-446b-8a25-4aa1fa76bfdd' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Kekar'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('c4708473-fb2c-446b-8a25-4aa1fa76bfdd', 'Kekar', false, true);
  END IF;

  -- [VOCABULARY] 飯 (Level 15)
  UPDATE item_meanings SET meaning = 'Nasi', primary_meaning = true, accepted_answer = true WHERE id = 'd4cf5a5a-a5a7-4c55-bd01-924713982575';
  UPDATE items SET slug = 'nasi' WHERE id = 'eb3c8193-1632-4340-8634-c5217d1a8d17';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'eb3c8193-1632-4340-8634-c5217d1a8d17' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Makanan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('eb3c8193-1632-4340-8634-c5217d1a8d17', 'Makanan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'eb3c8193-1632-4340-8634-c5217d1a8d17' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Santapan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('eb3c8193-1632-4340-8634-c5217d1a8d17', 'Santapan', false, true);
  END IF;

  -- [KANJI] 係 (Level 16)
  UPDATE item_meanings SET meaning = 'Petugas', primary_meaning = true, accepted_answer = true WHERE id = 'bd20741c-dae2-4ee1-9f55-a637c6034206';
  UPDATE items SET slug = 'petugas' WHERE id = '96eb38ef-5715-4864-9c1f-9b9383ca493d';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '96eb38ef-5715-4864-9c1f-9b9383ca493d' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Hubungan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('96eb38ef-5715-4864-9c1f-9b9383ca493d', 'Hubungan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '96eb38ef-5715-4864-9c1f-9b9383ca493d' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Penanggung Jawab'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('96eb38ef-5715-4864-9c1f-9b9383ca493d', 'Penanggung Jawab', false, true);
  END IF;

  -- [KANJI] 弁 (Level 16)
  UPDATE item_meanings SET meaning = 'Dialek', primary_meaning = true, accepted_answer = true WHERE id = '240d7076-8cdc-4ec8-b3a6-c1125e93555b';
  UPDATE items SET slug = 'dialek' WHERE id = 'a9fb8892-a47d-4bac-9a17-20ab498cfb15';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'a9fb8892-a47d-4bac-9a17-20ab498cfb15' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Katup'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('a9fb8892-a47d-4bac-9a17-20ab498cfb15', 'Katup', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'a9fb8892-a47d-4bac-9a17-20ab498cfb15' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Tutur Kata'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('a9fb8892-a47d-4bac-9a17-20ab498cfb15', 'Tutur Kata', false, true);
  END IF;

END $$;
