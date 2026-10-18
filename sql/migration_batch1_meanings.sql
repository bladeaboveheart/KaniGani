-- Migration: Batch 1 Full (Level 1-20)
-- Total items: 112

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

  -- [KANJI] 留 (Level 16)
  UPDATE item_meanings SET meaning = 'Menahan', primary_meaning = true, accepted_answer = true WHERE id = '9278e73e-0e08-43a2-9132-075d91c2f4ad';
  UPDATE items SET slug = 'menahan' WHERE id = '842f66bd-37df-429f-8315-83c470a6f467';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '842f66bd-37df-429f-8315-83c470a6f467' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Tinggal'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('842f66bd-37df-429f-8315-83c470a6f467', 'Tinggal', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '842f66bd-37df-429f-8315-83c470a6f467' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Menetap'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('842f66bd-37df-429f-8315-83c470a6f467', 'Menetap', false, true);
  END IF;

  -- [KANJI] 辞 (Level 16)
  UPDATE item_meanings SET meaning = 'Mengundurkan Diri', primary_meaning = true, accepted_answer = true WHERE id = '7ed8cc9c-e832-47af-a02f-6483b659fca8';
  UPDATE items SET slug = 'mengundurkan-diri' WHERE id = 'adc7862a-af6f-4167-9104-441ca888fa8d';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'adc7862a-af6f-4167-9104-441ca888fa8d' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Kata'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('adc7862a-af6f-4167-9104-441ca888fa8d', 'Kata', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'adc7862a-af6f-4167-9104-441ca888fa8d' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Berhenti'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('adc7862a-af6f-4167-9104-441ca888fa8d', 'Berhenti', false, true);
  END IF;

  -- [KANJI] 面 (Level 16)
  UPDATE item_meanings SET meaning = 'Permukaan', primary_meaning = true, accepted_answer = true WHERE id = 'a228e56a-dbd7-407f-a449-a9aeb646d4e2';
  UPDATE items SET slug = 'permukaan' WHERE id = '506a2500-73aa-4c55-bf4f-9ee188f21b3f';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '506a2500-73aa-4c55-bf4f-9ee188f21b3f' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Muka'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('506a2500-73aa-4c55-bf4f-9ee188f21b3f', 'Muka', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '506a2500-73aa-4c55-bf4f-9ee188f21b3f' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Wajah'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('506a2500-73aa-4c55-bf4f-9ee188f21b3f', 'Wajah', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '506a2500-73aa-4c55-bf4f-9ee188f21b3f' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Sisi'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('506a2500-73aa-4c55-bf4f-9ee188f21b3f', 'Sisi', false, true);
  END IF;

  -- [VOCABULARY] 急 (Level 16)
  UPDATE item_meanings SET meaning = 'Mendadak', primary_meaning = true, accepted_answer = true WHERE id = '6a25279b-5663-4b09-98c2-e00bf4d8f4ee';
  UPDATE items SET slug = 'mendadak' WHERE id = 'b94315ba-14ed-4681-9d86-34df158e4911';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'b94315ba-14ed-4681-9d86-34df158e4911' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Tiba-tiba'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('b94315ba-14ed-4681-9d86-34df158e4911', 'Tiba-tiba', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'b94315ba-14ed-4681-9d86-34df158e4911' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Genting'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('b94315ba-14ed-4681-9d86-34df158e4911', 'Genting', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'b94315ba-14ed-4681-9d86-34df158e4911' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Cepat'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('b94315ba-14ed-4681-9d86-34df158e4911', 'Cepat', false, true);
  END IF;

  -- [VOCABULARY] 留守 (Level 16)
  UPDATE item_meanings SET meaning = 'Tidak Di Rumah', primary_meaning = true, accepted_answer = true WHERE id = '0db166b9-8b7d-45ad-81f2-0a627af8d0f6';
  UPDATE items SET slug = 'tidak-di-rumah' WHERE id = 'b0e968d9-2733-42b6-9078-e5b2e9925aec';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'b0e968d9-2733-42b6-9078-e5b2e9925aec' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Sedang Keluar'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('b0e968d9-2733-42b6-9078-e5b2e9925aec', 'Sedang Keluar', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'b0e968d9-2733-42b6-9078-e5b2e9925aec' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Absen'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('b0e968d9-2733-42b6-9078-e5b2e9925aec', 'Absen', false, true);
  END IF;

  -- [VOCABULARY] 面 (Level 16)
  UPDATE item_meanings SET meaning = 'Permukaan', primary_meaning = true, accepted_answer = true WHERE id = '2876dc7e-28ff-4184-b721-30b64964b747';
  UPDATE items SET slug = 'permukaan' WHERE id = '4628a5db-3872-4021-8331-1d0cf2fa8b7a';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '4628a5db-3872-4021-8331-1d0cf2fa8b7a' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Muka'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('4628a5db-3872-4021-8331-1d0cf2fa8b7a', 'Muka', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '4628a5db-3872-4021-8331-1d0cf2fa8b7a' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Topeng'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('4628a5db-3872-4021-8331-1d0cf2fa8b7a', 'Topeng', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '4628a5db-3872-4021-8331-1d0cf2fa8b7a' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Wajah'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('4628a5db-3872-4021-8331-1d0cf2fa8b7a', 'Wajah', false, true);
  END IF;

  -- [KANJI] 察 (Level 17)
  UPDATE item_meanings SET meaning = 'Menebak', primary_meaning = true, accepted_answer = true WHERE id = '20e107d7-0f66-4de9-875c-c6408a727a88';
  UPDATE items SET slug = 'menebak' WHERE id = '962b91c0-46ae-444f-b0c6-ab115f9413ad';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '962b91c0-46ae-444f-b0c6-ab115f9413ad' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Menilai'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('962b91c0-46ae-444f-b0c6-ab115f9413ad', 'Menilai', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '962b91c0-46ae-444f-b0c6-ab115f9413ad' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Menduga'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('962b91c0-46ae-444f-b0c6-ab115f9413ad', 'Menduga', false, true);
  END IF;

  -- [KANJI] 常 (Level 17)
  UPDATE item_meanings SET meaning = 'Biasa', primary_meaning = true, accepted_answer = true WHERE id = '6b570c1e-a5a3-4a05-8bcf-8e672d24e308';
  UPDATE items SET slug = 'biasa' WHERE id = '510a3a44-709f-42b4-ad25-7af3b4e15bf4';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '510a3a44-709f-42b4-ad25-7af3b4e15bf4' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Selalu'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('510a3a44-709f-42b4-ad25-7af3b4e15bf4', 'Selalu', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '510a3a44-709f-42b4-ad25-7af3b4e15bf4' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Normal'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('510a3a44-709f-42b4-ad25-7af3b4e15bf4', 'Normal', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '510a3a44-709f-42b4-ad25-7af3b4e15bf4' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Rutin'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('510a3a44-709f-42b4-ad25-7af3b4e15bf4', 'Rutin', false, true);
  END IF;

  -- [KANJI] 是 (Level 17)
  UPDATE item_meanings SET meaning = 'Kebenaran', primary_meaning = true, accepted_answer = true WHERE id = 'a2102ef5-ad46-46cf-91ac-f2c19cb4ba9e';
  UPDATE items SET slug = 'kebenaran' WHERE id = '5c30ebcd-00a4-48d4-a44f-3db302deea2b';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '5c30ebcd-00a4-48d4-a44f-3db302deea2b' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Mutlak'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('5c30ebcd-00a4-48d4-a44f-3db302deea2b', 'Mutlak', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '5c30ebcd-00a4-48d4-a44f-3db302deea2b' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Benar'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('5c30ebcd-00a4-48d4-a44f-3db302deea2b', 'Benar', false, true);
  END IF;

  -- [KANJI] 非 (Level 17)
  UPDATE item_meanings SET meaning = 'Kesalahan', primary_meaning = true, accepted_answer = true WHERE id = '29394d81-364d-4a45-b8dd-d8b912ee1c48';
  UPDATE items SET slug = 'kesalahan' WHERE id = '4425e8f5-bc8c-4129-8d65-bafc7fcf1693';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '4425e8f5-bc8c-4129-8d65-bafc7fcf1693' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Bukan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('4425e8f5-bc8c-4129-8d65-bafc7fcf1693', 'Bukan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '4425e8f5-bc8c-4129-8d65-bafc7fcf1693' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Non-'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('4425e8f5-bc8c-4129-8d65-bafc7fcf1693', 'Non-', false, true);
  END IF;

  -- [VOCABULARY] ペラペラ (Level 17)
  UPDATE item_meanings SET meaning = 'Fasih', primary_meaning = true, accepted_answer = true WHERE id = '29e2fc38-fb65-4b8c-b8cc-7df95139d3ef';
  UPDATE items SET slug = 'fasih' WHERE id = '334f2559-975d-498b-b96c-ece41963b061';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '334f2559-975d-498b-b96c-ece41963b061' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Lancar'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('334f2559-975d-498b-b96c-ece41963b061', 'Lancar', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '334f2559-975d-498b-b96c-ece41963b061' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Cerewet'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('334f2559-975d-498b-b96c-ece41963b061', 'Cerewet', false, true);
  END IF;

  -- [VOCABULARY] 非常 (Level 17)
  UPDATE item_meanings SET meaning = 'Darurat', primary_meaning = true, accepted_answer = true WHERE id = 'b3672c1d-4d04-4ee3-acda-8039b1167c40';
  UPDATE items SET slug = 'darurat' WHERE id = 'ef06667b-c00d-4067-9024-50e01efe0c18';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'ef06667b-c00d-4067-9024-50e01efe0c18' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Sangat'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('ef06667b-c00d-4067-9024-50e01efe0c18', 'Sangat', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'ef06667b-c00d-4067-9024-50e01efe0c18' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Luar Biasa'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('ef06667b-c00d-4067-9024-50e01efe0c18', 'Luar Biasa', false, true);
  END IF;

  -- [KANJI] 喫 (Level 18)
  UPDATE item_meanings SET meaning = 'Menghisap', primary_meaning = true, accepted_answer = true WHERE id = 'e4c57339-fa79-4ef6-8fef-326f9a8d3c51';
  UPDATE items SET slug = 'menghisap' WHERE id = '9cb09d56-21ed-463c-98fe-f5f716cd6c8a';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '9cb09d56-21ed-463c-98fe-f5f716cd6c8a' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Mengonsumsi'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('9cb09d56-21ed-463c-98fe-f5f716cd6c8a', 'Mengonsumsi', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '9cb09d56-21ed-463c-98fe-f5f716cd6c8a' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Menelan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('9cb09d56-21ed-463c-98fe-f5f716cd6c8a', 'Menelan', false, true);
  END IF;

  -- [KANJI] 座 (Level 18)
  UPDATE item_meanings SET meaning = 'Duduk', primary_meaning = true, accepted_answer = true WHERE id = '2a3e3d5c-9cb1-498e-a4b5-905f4b8fa065';
  UPDATE items SET slug = 'duduk' WHERE id = '75fc242f-09b2-406c-bac6-7616f053ed06';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '75fc242f-09b2-406c-bac6-7616f053ed06' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Tempat Duduk'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('75fc242f-09b2-406c-bac6-7616f053ed06', 'Tempat Duduk', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '75fc242f-09b2-406c-bac6-7616f053ed06' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Kursi'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('75fc242f-09b2-406c-bac6-7616f053ed06', 'Kursi', false, true);
  END IF;

  -- [KANJI] 種 (Level 18)
  UPDATE item_meanings SET meaning = 'Benih', primary_meaning = true, accepted_answer = true WHERE id = '7698e217-bf58-488a-b99a-d78afae06a8c';
  UPDATE items SET slug = 'benih' WHERE id = '6ce4e056-81f9-44a9-a5ae-e22b407750cf';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '6ce4e056-81f9-44a9-a5ae-e22b407750cf' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Jenis'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('6ce4e056-81f9-44a9-a5ae-e22b407750cf', 'Jenis', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '6ce4e056-81f9-44a9-a5ae-e22b407750cf' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Macam'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('6ce4e056-81f9-44a9-a5ae-e22b407750cf', 'Macam', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '6ce4e056-81f9-44a9-a5ae-e22b407750cf' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Spesies'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('6ce4e056-81f9-44a9-a5ae-e22b407750cf', 'Spesies', false, true);
  END IF;

  -- [KANJI] 乱 (Level 19)
  UPDATE item_meanings SET meaning = 'Kekacauan', primary_meaning = true, accepted_answer = true WHERE id = '3a16674e-8765-4861-b7a2-b4159826281c';
  UPDATE items SET slug = 'kekacauan' WHERE id = '7e6d6c86-a24e-48cd-b45b-3ec5d5987f84';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '7e6d6c86-a24e-48cd-b45b-3ec5d5987f84' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Kerusuhan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('7e6d6c86-a24e-48cd-b45b-3ec5d5987f84', 'Kerusuhan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '7e6d6c86-a24e-48cd-b45b-3ec5d5987f84' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Kekacauan Besar'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('7e6d6c86-a24e-48cd-b45b-3ec5d5987f84', 'Kekacauan Besar', false, true);
  END IF;

  -- [KANJI] 善 (Level 19)
  UPDATE item_meanings SET meaning = 'Kebajikan', primary_meaning = true, accepted_answer = true WHERE id = '2f132c0e-f8c9-45e3-8734-7257c9fadc57';
  UPDATE items SET slug = 'kebajikan' WHERE id = 'a74c2867-83fe-466a-9f46-1aff3d15d09d';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'a74c2867-83fe-466a-9f46-1aff3d15d09d' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Kebaikan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('a74c2867-83fe-466a-9f46-1aff3d15d09d', 'Kebaikan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'a74c2867-83fe-466a-9f46-1aff3d15d09d' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Budi Baik'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('a74c2867-83fe-466a-9f46-1aff3d15d09d', 'Budi Baik', false, true);
  END IF;

  -- [KANJI] 容 (Level 19)
  UPDATE item_meanings SET meaning = 'Isi', primary_meaning = true, accepted_answer = true WHERE id = '4182c707-6998-4a09-bce3-3e78a6eb2394';
  UPDATE items SET slug = 'isi' WHERE id = '0b2ff24c-5ea4-4f29-aa59-bc1b0616f569';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '0b2ff24c-5ea4-4f29-aa59-bc1b0616f569' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Rupa'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('0b2ff24c-5ea4-4f29-aa59-bc1b0616f569', 'Rupa', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '0b2ff24c-5ea4-4f29-aa59-bc1b0616f569' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Wajah'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('0b2ff24c-5ea4-4f29-aa59-bc1b0616f569', 'Wajah', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '0b2ff24c-5ea4-4f29-aa59-bc1b0616f569' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Bentuk'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('0b2ff24c-5ea4-4f29-aa59-bc1b0616f569', 'Bentuk', false, true);
  END IF;

  -- [KANJI] 徒 (Level 19)
  UPDATE item_meanings SET meaning = 'Murid', primary_meaning = true, accepted_answer = true WHERE id = '72f10a85-3a1d-44db-b683-27cdabf32915';
  UPDATE items SET slug = 'murid' WHERE id = '58531af7-1782-4811-ab79-7cf35a6c4012';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '58531af7-1782-4811-ab79-7cf35a6c4012' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Pengikut'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('58531af7-1782-4811-ab79-7cf35a6c4012', 'Pengikut', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '58531af7-1782-4811-ab79-7cf35a6c4012' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Siswa'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('58531af7-1782-4811-ab79-7cf35a6c4012', 'Siswa', false, true);
  END IF;

  -- [KANJI] 得 (Level 19)
  UPDATE item_meanings SET meaning = 'Memperoleh', primary_meaning = true, accepted_answer = true WHERE id = 'f016850e-ee70-4d7f-bcc7-44aac3c9da6a';
  UPDATE items SET slug = 'memperoleh' WHERE id = 'e64f02af-497c-4d06-8507-146c46892c92';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'e64f02af-497c-4d06-8507-146c46892c92' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Untung'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('e64f02af-497c-4d06-8507-146c46892c92', 'Untung', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'e64f02af-497c-4d06-8507-146c46892c92' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Mendapat'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('e64f02af-497c-4d06-8507-146c46892c92', 'Mendapat', false, true);
  END IF;

  -- [KANJI] 改 (Level 19)
  UPDATE item_meanings SET meaning = 'Memperbaiki', primary_meaning = true, accepted_answer = true WHERE id = '84afff24-2533-40fd-b2bd-cb73912c3cf3';
  UPDATE items SET slug = 'memperbaiki' WHERE id = 'd82bdb48-9dcd-4ff7-a8ec-4bcfd17f79be';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'd82bdb48-9dcd-4ff7-a8ec-4bcfd17f79be' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Merombak'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('d82bdb48-9dcd-4ff7-a8ec-4bcfd17f79be', 'Merombak', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'd82bdb48-9dcd-4ff7-a8ec-4bcfd17f79be' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Memperbarui'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('d82bdb48-9dcd-4ff7-a8ec-4bcfd17f79be', 'Memperbarui', false, true);
  END IF;

  -- [KANJI] 易 (Level 19)
  UPDATE item_meanings SET meaning = 'Mudah', primary_meaning = true, accepted_answer = true WHERE id = '16f26bfe-5a01-4bae-96ac-5104a37cc940';
  UPDATE items SET slug = 'mudah' WHERE id = 'bf347e17-f18c-4be8-b56b-7e673131d44b';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'bf347e17-f18c-4be8-b56b-7e673131d44b' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Sederhana'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('bf347e17-f18c-4be8-b56b-7e673131d44b', 'Sederhana', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'bf347e17-f18c-4be8-b56b-7e673131d44b' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Gampang'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('bf347e17-f18c-4be8-b56b-7e673131d44b', 'Gampang', false, true);
  END IF;

  -- [KANJI] 暴 (Level 19)
  UPDATE item_meanings SET meaning = 'Kekerasan', primary_meaning = true, accepted_answer = true WHERE id = '6d04f738-65d8-4a07-b2b9-48c0a508e80f';
  UPDATE items SET slug = 'kekerasan' WHERE id = '555b146f-c75b-4819-971a-43c6175bb2e1';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '555b146f-c75b-4819-971a-43c6175bb2e1' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Mengamuk'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('555b146f-c75b-4819-971a-43c6175bb2e1', 'Mengamuk', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '555b146f-c75b-4819-971a-43c6175bb2e1' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Amukan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('555b146f-c75b-4819-971a-43c6175bb2e1', 'Amukan', false, true);
  END IF;

  -- [KANJI] 節 (Level 19)
  UPDATE item_meanings SET meaning = 'Ruas', primary_meaning = true, accepted_answer = true WHERE id = '96caa0d7-d555-453d-80cd-4846d3552e59';
  UPDATE items SET slug = 'ruas' WHERE id = '9f1b6218-4867-4e95-95f0-d58118e018ba';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '9f1b6218-4867-4e95-95f0-d58118e018ba' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Sendi'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('9f1b6218-4867-4e95-95f0-d58118e018ba', 'Sendi', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '9f1b6218-4867-4e95-95f0-d58118e018ba' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Musim'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('9f1b6218-4867-4e95-95f0-d58118e018ba', 'Musim', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '9f1b6218-4867-4e95-95f0-d58118e018ba' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Buku'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('9f1b6218-4867-4e95-95f0-d58118e018ba', 'Buku', false, true);
  END IF;

  -- [KANJI] 詞 (Level 19)
  UPDATE item_meanings SET meaning = 'Kelas Kata', primary_meaning = true, accepted_answer = true WHERE id = 'ae8bac3f-2792-48c1-82c5-0b16ce5bf4ff';
  UPDATE items SET slug = 'kelas-kata' WHERE id = '19a5c9d7-4282-4bb3-8628-db1e5f145cff';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '19a5c9d7-4282-4bb3-8628-db1e5f145cff' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Lirik'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('19a5c9d7-4282-4bb3-8628-db1e5f145cff', 'Lirik', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '19a5c9d7-4282-4bb3-8628-db1e5f145cff' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Kata'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('19a5c9d7-4282-4bb3-8628-db1e5f145cff', 'Kata', false, true);
  END IF;

  -- [KANJI] 閥 (Level 19)
  UPDATE item_meanings SET meaning = 'Faksi', primary_meaning = true, accepted_answer = true WHERE id = '69225bde-02cd-454c-bbda-fda4c6273ab3';
  UPDATE items SET slug = 'faksi' WHERE id = 'b31aa61b-d0dd-4a70-a733-0bf7cf996afe';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'b31aa61b-d0dd-4a70-a733-0bf7cf996afe' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Klik'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('b31aa61b-d0dd-4a70-a733-0bf7cf996afe', 'Klik', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'b31aa61b-d0dd-4a70-a733-0bf7cf996afe' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Kelompok'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('b31aa61b-d0dd-4a70-a733-0bf7cf996afe', 'Kelompok', false, true);
  END IF;

  -- [VOCABULARY] いい加減 (Level 19)
  UPDATE item_meanings SET meaning = 'Asal-asalan', primary_meaning = true, accepted_answer = true WHERE id = '61c31f11-689b-4174-985b-bc12f4b574e3';
  UPDATE items SET slug = 'asal-asalan' WHERE id = '594e273f-ffcd-4360-9342-b535a452f953';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '594e273f-ffcd-4360-9342-b535a452f953' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Ceroboh'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('594e273f-ffcd-4360-9342-b535a452f953', 'Ceroboh', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '594e273f-ffcd-4360-9342-b535a452f953' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Sembarangan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('594e273f-ffcd-4360-9342-b535a452f953', 'Sembarangan', false, true);
  END IF;

  -- [VOCABULARY] 一冊 (Level 19)
  UPDATE item_meanings SET meaning = 'Satu Jilid', primary_meaning = true, accepted_answer = true WHERE id = '35de2564-98ed-4f9a-acbd-edd692a16702';
  UPDATE items SET slug = 'satu-jilid' WHERE id = 'dda1c1a5-cbe4-47e2-84be-0df36770e478';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'dda1c1a5-cbe4-47e2-84be-0df36770e478' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Satu Buku'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('dda1c1a5-cbe4-47e2-84be-0df36770e478', 'Satu Buku', false, true);
  END IF;

  -- [VOCABULARY] 三冊 (Level 19)
  UPDATE item_meanings SET meaning = 'Tiga Jilid', primary_meaning = true, accepted_answer = true WHERE id = '56c6995a-34f3-4c90-b707-eff7fbfb5807';
  UPDATE items SET slug = 'tiga-jilid' WHERE id = '9c39d591-8f08-414d-b536-2d8acc16b4c3';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '9c39d591-8f08-414d-b536-2d8acc16b4c3' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Tiga Buku'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('9c39d591-8f08-414d-b536-2d8acc16b4c3', 'Tiga Buku', false, true);
  END IF;

  -- [VOCABULARY] 乱れる (Level 19)
  UPDATE item_meanings SET meaning = 'Kacau', primary_meaning = true, accepted_answer = true WHERE id = '3a728379-56e8-4fa0-9009-eb326d1e1dd6';
  UPDATE items SET slug = 'kacau' WHERE id = '592f498d-8fa1-410f-acfa-8ea483235162';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '592f498d-8fa1-410f-acfa-8ea483235162' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Berantakan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('592f498d-8fa1-410f-acfa-8ea483235162', 'Berantakan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '592f498d-8fa1-410f-acfa-8ea483235162' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Kusut'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('592f498d-8fa1-410f-acfa-8ea483235162', 'Kusut', false, true);
  END IF;

  -- [VOCABULARY] 仲直り (Level 19)
  UPDATE item_meanings SET meaning = 'Berdamai', primary_meaning = true, accepted_answer = true WHERE id = '6a679ce6-b04b-488d-8aa2-7acc071606a1';
  UPDATE items SET slug = 'berdamai' WHERE id = 'aaaa4dac-a342-4994-b359-67ff48e9600a';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'aaaa4dac-a342-4994-b359-67ff48e9600a' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Rujuk'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('aaaa4dac-a342-4994-b359-67ff48e9600a', 'Rujuk', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'aaaa4dac-a342-4994-b359-67ff48e9600a' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Baikan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('aaaa4dac-a342-4994-b359-67ff48e9600a', 'Baikan', false, true);
  END IF;

  -- [VOCABULARY] 信徒 (Level 19)
  UPDATE item_meanings SET meaning = 'Penganut', primary_meaning = true, accepted_answer = true WHERE id = 'd5f39632-1d24-44a6-b96a-e67ba756dd7c';
  UPDATE items SET slug = 'penganut' WHERE id = '6cb1db15-6c4a-4043-9ff6-f4aecf9d6f8c';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '6cb1db15-6c4a-4043-9ff6-f4aecf9d6f8c' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Jemaat'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('6cb1db15-6c4a-4043-9ff6-f4aecf9d6f8c', 'Jemaat', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '6cb1db15-6c4a-4043-9ff6-f4aecf9d6f8c' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Pengikut'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('6cb1db15-6c4a-4043-9ff6-f4aecf9d6f8c', 'Pengikut', false, true);
  END IF;

  -- [VOCABULARY] 八冊 (Level 19)
  UPDATE item_meanings SET meaning = 'Delapan Jilid', primary_meaning = true, accepted_answer = true WHERE id = '0c60020b-e29b-4092-8004-592b1b369135';
  UPDATE items SET slug = 'delapan-jilid' WHERE id = '392b0ac8-9866-49d1-b843-9895b9a1040e';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '392b0ac8-9866-49d1-b843-9895b9a1040e' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Delapan Buku'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('392b0ac8-9866-49d1-b843-9895b9a1040e', 'Delapan Buku', false, true);
  END IF;

  -- [VOCABULARY] 内容 (Level 19)
  UPDATE item_meanings SET meaning = 'Isi', primary_meaning = true, accepted_answer = true WHERE id = '869d684e-5649-431b-ba3d-cde90f2ed531';
  UPDATE items SET slug = 'isi' WHERE id = 'edaeacec-77d1-4b79-bec9-3881e864fdeb';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'edaeacec-77d1-4b79-bec9-3881e864fdeb' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Konten'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('edaeacec-77d1-4b79-bec9-3881e864fdeb', 'Konten', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'edaeacec-77d1-4b79-bec9-3881e864fdeb' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Muatan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('edaeacec-77d1-4b79-bec9-3881e864fdeb', 'Muatan', false, true);
  END IF;

  -- [VOCABULARY] 外れる (Level 19)
  UPDATE item_meanings SET meaning = 'Terlepas', primary_meaning = true, accepted_answer = true WHERE id = 'f6ad2ae6-8e16-4182-9a5a-0db1e841a71a';
  UPDATE items SET slug = 'terlepas' WHERE id = 'aee15530-7f84-4c45-b7f7-1d4d882e0bd4';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'aee15530-7f84-4c45-b7f7-1d4d882e0bd4' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Meleset'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('aee15530-7f84-4c45-b7f7-1d4d882e0bd4', 'Meleset', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'aee15530-7f84-4c45-b7f7-1d4d882e0bd4' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Copot'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('aee15530-7f84-4c45-b7f7-1d4d882e0bd4', 'Copot', false, true);
  END IF;

  -- [VOCABULARY] 宇宙 (Level 19)
  UPDATE item_meanings SET meaning = 'Alam Semesta', primary_meaning = true, accepted_answer = true WHERE id = '0b8de532-9564-4c2d-bb64-0203baa25237';
  UPDATE items SET slug = 'alam-semesta' WHERE id = '9d978ad5-342f-48e7-8980-3d15fd3d76d9';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '9d978ad5-342f-48e7-8980-3d15fd3d76d9' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Luar Angkasa'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('9d978ad5-342f-48e7-8980-3d15fd3d76d9', 'Luar Angkasa', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '9d978ad5-342f-48e7-8980-3d15fd3d76d9' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Kosmos'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('9d978ad5-342f-48e7-8980-3d15fd3d76d9', 'Kosmos', false, true);
  END IF;

  -- [VOCABULARY] 宙 (Level 19)
  UPDATE item_meanings SET meaning = 'Luar Angkasa', primary_meaning = true, accepted_answer = true WHERE id = '4bd1c5f1-dc3a-41f3-b2c1-6c784e321388';
  UPDATE items SET slug = 'luar-angkasa' WHERE id = '3161b579-5d59-44fc-9a31-4240eccfc7c2';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '3161b579-5d59-44fc-9a31-4240eccfc7c2' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Melayang Di Udara'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('3161b579-5d59-44fc-9a31-4240eccfc7c2', 'Melayang Di Udara', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '3161b579-5d59-44fc-9a31-4240eccfc7c2' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Angkasa'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('3161b579-5d59-44fc-9a31-4240eccfc7c2', 'Angkasa', false, true);
  END IF;

  -- [VOCABULARY] 暴走 (Level 19)
  UPDATE item_meanings SET meaning = 'Mengamuk', primary_meaning = true, accepted_answer = true WHERE id = '0af18d16-483a-46b7-af08-5503991e369c';
  UPDATE items SET slug = 'mengamuk' WHERE id = 'c5692855-164b-4c4b-a002-7397ef1c597b';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'c5692855-164b-4c4b-a002-7397ef1c597b' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Ugal-ugalan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('c5692855-164b-4c4b-a002-7397ef1c597b', 'Ugal-ugalan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'c5692855-164b-4c4b-a002-7397ef1c597b' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Lepas Kendali'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('c5692855-164b-4c4b-a002-7397ef1c597b', 'Lepas Kendali', false, true);
  END IF;

  -- [VOCABULARY] 生徒 (Level 19)
  UPDATE item_meanings SET meaning = 'Murid', primary_meaning = true, accepted_answer = true WHERE id = '5d3ef567-33ae-4e2d-b95b-09d52758edeb';
  UPDATE items SET slug = 'murid' WHERE id = '6feac216-aaa0-4f7c-a2c6-4399238f5934';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '6feac216-aaa0-4f7c-a2c6-4399238f5934' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Siswa'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('6feac216-aaa0-4f7c-a2c6-4399238f5934', 'Siswa', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '6feac216-aaa0-4f7c-a2c6-4399238f5934' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Pelajar'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('6feac216-aaa0-4f7c-a2c6-4399238f5934', 'Pelajar', false, true);
  END IF;

  -- [VOCABULARY] 続く (Level 19)
  UPDATE item_meanings SET meaning = 'Berlanjut', primary_meaning = true, accepted_answer = true WHERE id = '3c6ff74a-5246-4fae-975e-c06e2c7420be';
  UPDATE items SET slug = 'berlanjut' WHERE id = '86d9ffe4-8298-48c4-9c31-9cca96796e1b';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '86d9ffe4-8298-48c4-9c31-9cca96796e1b' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Bersambung'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('86d9ffe4-8298-48c4-9c31-9cca96796e1b', 'Bersambung', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '86d9ffe4-8298-48c4-9c31-9cca96796e1b' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Menerus'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('86d9ffe4-8298-48c4-9c31-9cca96796e1b', 'Menerus', false, true);
  END IF;

  -- [VOCABULARY] 連れる (Level 19)
  UPDATE item_meanings SET meaning = 'Membawa Serta', primary_meaning = true, accepted_answer = true WHERE id = 'c5cb70d0-13f5-451f-9175-9ab9624c8995';
  UPDATE items SET slug = 'membawa-serta' WHERE id = '33030572-e8b3-4c04-b054-64a60aa98dbc';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '33030572-e8b3-4c04-b054-64a60aa98dbc' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Mengajak'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('33030572-e8b3-4c04-b054-64a60aa98dbc', 'Mengajak', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '33030572-e8b3-4c04-b054-64a60aa98dbc' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Membawa Bersama'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('33030572-e8b3-4c04-b054-64a60aa98dbc', 'Membawa Bersama', false, true);
  END IF;

  -- [VOCABULARY] 連中 (Level 19)
  UPDATE item_meanings SET meaning = 'Gerombolan', primary_meaning = true, accepted_answer = true WHERE id = 'e40f4e04-2fb2-4aa1-a4d8-47331e2eecd6';
  UPDATE items SET slug = 'gerombolan' WHERE id = '1c1eb091-8d12-4442-97cb-f1bf9a8c464e';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '1c1eb091-8d12-4442-97cb-f1bf9a8c464e' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Kawan-kawan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('1c1eb091-8d12-4442-97cb-f1bf9a8c464e', 'Kawan-kawan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '1c1eb091-8d12-4442-97cb-f1bf9a8c464e' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Rombongan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('1c1eb091-8d12-4442-97cb-f1bf9a8c464e', 'Rombongan', false, true);
  END IF;

  -- [VOCABULARY] 順番 (Level 19)
  UPDATE item_meanings SET meaning = 'Urutan', primary_meaning = true, accepted_answer = true WHERE id = '5baf0f53-15ae-4a3f-9e68-9f4f118982c0';
  UPDATE items SET slug = 'urutan' WHERE id = '343b2e48-160d-4d32-9be5-a293ffaeefe3';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '343b2e48-160d-4d32-9be5-a293ffaeefe3' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Giliran'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('343b2e48-160d-4d32-9be5-a293ffaeefe3', 'Giliran', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '343b2e48-160d-4d32-9be5-a293ffaeefe3' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Antrean'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('343b2e48-160d-4d32-9be5-a293ffaeefe3', 'Antrean', false, true);
  END IF;

  -- [KANJI] 倒 (Level 20)
  UPDATE item_meanings SET meaning = 'Tumbang', primary_meaning = true, accepted_answer = true WHERE id = '89f48a1e-14d2-4e84-ae6b-440e5f3bfc42';
  UPDATE items SET slug = 'tumbang' WHERE id = 'b6595695-cd50-4929-a25f-3f38ed51039b';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'b6595695-cd50-4929-a25f-3f38ed51039b' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Menggulingkan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('b6595695-cd50-4929-a25f-3f38ed51039b', 'Menggulingkan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'b6595695-cd50-4929-a25f-3f38ed51039b' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Jatuh'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('b6595695-cd50-4929-a25f-3f38ed51039b', 'Jatuh', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'b6595695-cd50-4929-a25f-3f38ed51039b' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Roboh'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('b6595695-cd50-4929-a25f-3f38ed51039b', 'Roboh', false, true);
  END IF;

  -- [KANJI] 嫌 (Level 20)
  UPDATE item_meanings SET meaning = 'Tidak Suka', primary_meaning = true, accepted_answer = true WHERE id = '7cb517c3-de6c-4754-80ad-12dca8964464';
  UPDATE items SET slug = 'tidak-suka' WHERE id = '008348ed-1551-4b0a-98c9-cc308e872f1b';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '008348ed-1551-4b0a-98c9-cc308e872f1b' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Benci'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('008348ed-1551-4b0a-98c9-cc308e872f1b', 'Benci', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '008348ed-1551-4b0a-98c9-cc308e872f1b' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Enggan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('008348ed-1551-4b0a-98c9-cc308e872f1b', 'Enggan', false, true);
  END IF;

  -- [KANJI] 害 (Level 20)
  UPDATE item_meanings SET meaning = 'Bahaya', primary_meaning = true, accepted_answer = true WHERE id = '105ece16-c14d-45be-b554-adbfedb7cd98';
  UPDATE items SET slug = 'bahaya' WHERE id = '748eac7a-7ad2-4b26-b9b5-e1e9312fe763';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '748eac7a-7ad2-4b26-b9b5-e1e9312fe763' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Kerusakan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('748eac7a-7ad2-4b26-b9b5-e1e9312fe763', 'Kerusakan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '748eac7a-7ad2-4b26-b9b5-e1e9312fe763' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Dampak Buruk'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('748eac7a-7ad2-4b26-b9b5-e1e9312fe763', 'Dampak Buruk', false, true);
  END IF;

  -- [KANJI] 率 (Level 20)
  UPDATE item_meanings SET meaning = 'Rasio', primary_meaning = true, accepted_answer = true WHERE id = '3953effc-0ac3-4e5b-9054-c701eb4821ec';
  UPDATE items SET slug = 'rasio' WHERE id = 'b8766466-07d5-40d4-82db-be4205be61f2';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'b8766466-07d5-40d4-82db-be4205be61f2' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Persentase'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('b8766466-07d5-40d4-82db-be4205be61f2', 'Persentase', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'b8766466-07d5-40d4-82db-be4205be61f2' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Tingkat'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('b8766466-07d5-40d4-82db-be4205be61f2', 'Tingkat', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'b8766466-07d5-40d4-82db-be4205be61f2' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Tarif'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('b8766466-07d5-40d4-82db-be4205be61f2', 'Tarif', false, true);
  END IF;

  -- [KANJI] 産 (Level 20)
  UPDATE item_meanings SET meaning = 'Melahirkan', primary_meaning = true, accepted_answer = true WHERE id = 'dd2b1b48-e9b0-4652-acb4-0277e6811a20';
  UPDATE items SET slug = 'melahirkan' WHERE id = 'eb518e88-f18f-402e-84b8-97de7496c642';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'eb518e88-f18f-402e-84b8-97de7496c642' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Produksi'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('eb518e88-f18f-402e-84b8-97de7496c642', 'Produksi', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'eb518e88-f18f-402e-84b8-97de7496c642' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Menghasilkan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('eb518e88-f18f-402e-84b8-97de7496c642', 'Menghasilkan', false, true);
  END IF;

  -- [KANJI] 経 (Level 20)
  UPDATE item_meanings SET meaning = 'Melewati', primary_meaning = true, accepted_answer = true WHERE id = '827c5712-b7ba-4e15-8e76-5fb022651aa6';
  UPDATE items SET slug = 'melewati' WHERE id = 'cff13843-027a-41e8-b5b6-cb0f1a765db0';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'cff13843-027a-41e8-b5b6-cb0f1a765db0' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Garis Bujur'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('cff13843-027a-41e8-b5b6-cb0f1a765db0', 'Garis Bujur', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'cff13843-027a-41e8-b5b6-cb0f1a765db0' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Melalui'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('cff13843-027a-41e8-b5b6-cb0f1a765db0', 'Melalui', false, true);
  END IF;

  -- [KANJI] 被 (Level 20)
  UPDATE item_meanings SET meaning = 'Tertimpa', primary_meaning = true, accepted_answer = true WHERE id = 'ffcc45c0-fabb-4bd6-b0ee-929977b5d051';
  UPDATE items SET slug = 'tertimpa' WHERE id = '95b83ab2-6e73-42d8-a4e3-643938147787';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '95b83ab2-6e73-42d8-a4e3-643938147787' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Menderita'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('95b83ab2-6e73-42d8-a4e3-643938147787', 'Menderita', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '95b83ab2-6e73-42d8-a4e3-643938147787' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Terkena'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('95b83ab2-6e73-42d8-a4e3-643938147787', 'Terkena', false, true);
  END IF;

  -- [KANJI] 論 (Level 20)
  UPDATE item_meanings SET meaning = 'Teori', primary_meaning = true, accepted_answer = true WHERE id = '6f92ce1f-eefd-4b59-96b9-b542e3ff6cda';
  UPDATE items SET slug = 'teori' WHERE id = '92c3936f-eede-493c-aab9-1f0dffb3e66d';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '92c3936f-eede-493c-aab9-1f0dffb3e66d' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Argumen'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('92c3936f-eede-493c-aab9-1f0dffb3e66d', 'Argumen', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '92c3936f-eede-493c-aab9-1f0dffb3e66d' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Perdebatan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('92c3936f-eede-493c-aab9-1f0dffb3e66d', 'Perdebatan', false, true);
  END IF;

  -- [VOCABULARY] 一個 (Level 20)
  UPDATE item_meanings SET meaning = 'Satu Buah', primary_meaning = true, accepted_answer = true WHERE id = '44c33196-43b6-434c-a4b7-78d5c46a04ed';
  UPDATE items SET slug = 'satu-buah' WHERE id = 'e9268410-014c-486b-bca6-436ca48c5565';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'e9268410-014c-486b-bca6-436ca48c5565' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Satu Butir'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('e9268410-014c-486b-bca6-436ca48c5565', 'Satu Butir', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'e9268410-014c-486b-bca6-436ca48c5565' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Satu Biji'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('e9268410-014c-486b-bca6-436ca48c5565', 'Satu Biji', false, true);
  END IF;

  -- [VOCABULARY] 三個 (Level 20)
  UPDATE item_meanings SET meaning = 'Tiga Buah', primary_meaning = true, accepted_answer = true WHERE id = '3435eee0-3c38-49e0-9503-c2752de8dac0';
  UPDATE items SET slug = 'tiga-buah' WHERE id = 'a3ef8da4-c16e-4d49-af8b-3e906e3b8fb0';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'a3ef8da4-c16e-4d49-af8b-3e906e3b8fb0' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Tiga Butir'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('a3ef8da4-c16e-4d49-af8b-3e906e3b8fb0', 'Tiga Butir', false, true);
  END IF;

  -- [VOCABULARY] 不思議 (Level 20)
  UPDATE item_meanings SET meaning = 'Ajaib', primary_meaning = true, accepted_answer = true WHERE id = 'd79a4c0a-c421-4973-92dc-bffd26e17dae';
  UPDATE items SET slug = 'ajaib' WHERE id = 'b4de419a-0a71-4dd5-ac38-424f0f66db2c';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'b4de419a-0a71-4dd5-ac38-424f0f66db2c' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Misterius'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('b4de419a-0a71-4dd5-ac38-424f0f66db2c', 'Misterius', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'b4de419a-0a71-4dd5-ac38-424f0f66db2c' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Aneh'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('b4de419a-0a71-4dd5-ac38-424f0f66db2c', 'Aneh', false, true);
  END IF;

  -- [VOCABULARY] 倒す (Level 20)
  UPDATE item_meanings SET meaning = 'Menumbangkan', primary_meaning = true, accepted_answer = true WHERE id = 'a9c02f79-bb32-4b3d-863f-2842e8a0e91f';
  UPDATE items SET slug = 'menumbangkan' WHERE id = 'a0886c7f-8b88-4b69-b0ef-24fdbb91bf22';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'a0886c7f-8b88-4b69-b0ef-24fdbb91bf22' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Mengalahkan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('a0886c7f-8b88-4b69-b0ef-24fdbb91bf22', 'Mengalahkan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'a0886c7f-8b88-4b69-b0ef-24fdbb91bf22' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Merobohkan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('a0886c7f-8b88-4b69-b0ef-24fdbb91bf22', 'Merobohkan', false, true);
  END IF;

  -- [VOCABULARY] 同感 (Level 20)
  UPDATE item_meanings SET meaning = 'Sependapat', primary_meaning = true, accepted_answer = true WHERE id = '7529dbc7-6aca-4425-b3de-c992ff419686';
  UPDATE items SET slug = 'sependapat' WHERE id = '2d052a50-97c8-4cc4-82f2-c20ef6108ba1';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '2d052a50-97c8-4cc4-82f2-c20ef6108ba1' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Sepemikiran'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('2d052a50-97c8-4cc4-82f2-c20ef6108ba1', 'Sepemikiran', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '2d052a50-97c8-4cc4-82f2-c20ef6108ba1' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Setuju'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('2d052a50-97c8-4cc4-82f2-c20ef6108ba1', 'Setuju', false, true);
  END IF;

  -- [VOCABULARY] 困る (Level 20)
  UPDATE item_meanings SET meaning = 'Mengalami Kesulitan', primary_meaning = true, accepted_answer = true WHERE id = '36d0906a-7340-45e6-9210-aea2805bdd31';
  UPDATE items SET slug = 'mengalami-kesulitan' WHERE id = '749eee4f-719f-41bb-8445-8b052f85da62';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '749eee4f-719f-41bb-8445-8b052f85da62' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Bingung'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('749eee4f-719f-41bb-8445-8b052f85da62', 'Bingung', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '749eee4f-719f-41bb-8445-8b052f85da62' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Susah'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('749eee4f-719f-41bb-8445-8b052f85da62', 'Susah', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '749eee4f-719f-41bb-8445-8b052f85da62' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Repot'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('749eee4f-719f-41bb-8445-8b052f85da62', 'Repot', false, true);
  END IF;

  -- [VOCABULARY] 嫌 (Level 20)
  UPDATE item_meanings SET meaning = 'Tidak Suka', primary_meaning = true, accepted_answer = true WHERE id = '7da36430-579b-4382-9164-66fcbd16775e';
  UPDATE items SET slug = 'tidak-suka' WHERE id = 'c9d19ac5-7cf0-4df6-bf23-d0562f7dbd18';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'c9d19ac5-7cf0-4df6-bf23-d0562f7dbd18' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Enggan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('c9d19ac5-7cf0-4df6-bf23-d0562f7dbd18', 'Enggan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'c9d19ac5-7cf0-4df6-bf23-d0562f7dbd18' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Benci'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('c9d19ac5-7cf0-4df6-bf23-d0562f7dbd18', 'Benci', false, true);
  END IF;

  -- [VOCABULARY] 嫌悪 (Level 20)
  UPDATE item_meanings SET meaning = 'Kebencian', primary_meaning = true, accepted_answer = true WHERE id = '561a2a31-f637-46c5-be8b-00d01391eee4';
  UPDATE items SET slug = 'kebencian' WHERE id = 'b077ea41-08cd-4255-a515-74f33475cf5b';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'b077ea41-08cd-4255-a515-74f33475cf5b' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Rasa Muak'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('b077ea41-08cd-4255-a515-74f33475cf5b', 'Rasa Muak', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'b077ea41-08cd-4255-a515-74f33475cf5b' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Muak'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('b077ea41-08cd-4255-a515-74f33475cf5b', 'Muak', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'b077ea41-08cd-4255-a515-74f33475cf5b' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Benci'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('b077ea41-08cd-4255-a515-74f33475cf5b', 'Benci', false, true);
  END IF;

  -- [VOCABULARY] 実る (Level 20)
  UPDATE item_meanings SET meaning = 'Berbuah', primary_meaning = true, accepted_answer = true WHERE id = '580ab00d-ff00-4769-b495-e61214202778';
  UPDATE items SET slug = 'berbuah' WHERE id = 'a7dea0b9-9cd4-43e1-923e-25bbd2f4aa15';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'a7dea0b9-9cd4-43e1-923e-25bbd2f4aa15' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Membuahkan Hasil'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('a7dea0b9-9cd4-43e1-923e-25bbd2f4aa15', 'Membuahkan Hasil', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'a7dea0b9-9cd4-43e1-923e-25bbd2f4aa15' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Matang'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('a7dea0b9-9cd4-43e1-923e-25bbd2f4aa15', 'Matang', false, true);
  END IF;

  -- [VOCABULARY] 岩石 (Level 20)
  UPDATE item_meanings SET meaning = 'Batuan', primary_meaning = true, accepted_answer = true WHERE id = '2abbcda6-ee59-48ab-99aa-3bcdeab0c0c1';
  UPDATE items SET slug = 'batuan' WHERE id = '4846cccd-a32f-4779-95fc-c6145f018803';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '4846cccd-a32f-4779-95fc-c6145f018803' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Batu'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('4846cccd-a32f-4779-95fc-c6145f018803', 'Batu', false, true);
  END IF;

  -- [VOCABULARY] 手洗い (Level 20)
  UPDATE item_meanings SET meaning = 'Toilet', primary_meaning = true, accepted_answer = true WHERE id = 'cc8c920e-5fc0-453c-9895-06cf456e8e09';
  UPDATE items SET slug = 'toilet' WHERE id = 'b570e991-2201-4891-a0f1-1b4aaef1c9ba';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'b570e991-2201-4891-a0f1-1b4aaef1c9ba' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Cuci Tangan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('b570e991-2201-4891-a0f1-1b4aaef1c9ba', 'Cuci Tangan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'b570e991-2201-4891-a0f1-1b4aaef1c9ba' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Kamar Kecil'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('b570e991-2201-4891-a0f1-1b4aaef1c9ba', 'Kamar Kecil', false, true);
  END IF;

  -- [VOCABULARY] 無くなる (Level 20)
  UPDATE item_meanings SET meaning = 'Habis', primary_meaning = true, accepted_answer = true WHERE id = '3cd3950b-9ece-48fe-812a-98a46e7db5d2';
  UPDATE items SET slug = 'habis' WHERE id = 'a7180685-18af-4e47-98fc-f4723293609d';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'a7180685-18af-4e47-98fc-f4723293609d' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Hilang'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('a7180685-18af-4e47-98fc-f4723293609d', 'Hilang', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'a7180685-18af-4e47-98fc-f4723293609d' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Lenyap'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('a7180685-18af-4e47-98fc-f4723293609d', 'Lenyap', false, true);
  END IF;

  -- [VOCABULARY] 焼ける (Level 20)
  UPDATE item_meanings SET meaning = 'Terbakar', primary_meaning = true, accepted_answer = true WHERE id = '1da8e6a6-7ace-4902-bba4-1259e412a2b4';
  UPDATE items SET slug = 'terbakar' WHERE id = '4a95f6c9-640f-4bca-9535-307f00544db1';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '4a95f6c9-640f-4bca-9535-307f00544db1' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Terpanggang'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('4a95f6c9-640f-4bca-9535-307f00544db1', 'Terpanggang', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '4a95f6c9-640f-4bca-9535-307f00544db1' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Hangus'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('4a95f6c9-640f-4bca-9535-307f00544db1', 'Hangus', false, true);
  END IF;

  -- [VOCABULARY] 産まれる (Level 20)
  UPDATE item_meanings SET meaning = 'Dilahirkan', primary_meaning = true, accepted_answer = true WHERE id = '9aaebfbc-b66d-4936-8d81-a630cea682b4';
  UPDATE items SET slug = 'dilahirkan' WHERE id = '63973b66-3ef7-449a-9844-9bd72d73fefb';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '63973b66-3ef7-449a-9844-9bd72d73fefb' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Lahir'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('63973b66-3ef7-449a-9844-9bd72d73fefb', 'Lahir', false, true);
  END IF;

  -- [VOCABULARY] 確率 (Level 20)
  UPDATE item_meanings SET meaning = 'Probabilitas', primary_meaning = true, accepted_answer = true WHERE id = '976f3a0d-9df3-4891-9a26-4c1515b38e4d';
  UPDATE items SET slug = 'probabilitas' WHERE id = '556148eb-39c4-4a10-bd20-946cbeaa9472';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '556148eb-39c4-4a10-bd20-946cbeaa9472' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Kemungkinan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('556148eb-39c4-4a10-bd20-946cbeaa9472', 'Kemungkinan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '556148eb-39c4-4a10-bd20-946cbeaa9472' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Peluang'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('556148eb-39c4-4a10-bd20-946cbeaa9472', 'Peluang', false, true);
  END IF;

  -- [VOCABULARY] 胸焼け (Level 20)
  UPDATE item_meanings SET meaning = 'Nyeri Ulu Hati', primary_meaning = true, accepted_answer = true WHERE id = '05aa45eb-c42c-40f4-92d8-900d8fb7ebf0';
  UPDATE items SET slug = 'nyeri-ulu-hati' WHERE id = 'f35b81b6-93cc-44c0-a90c-647d2f8e3954';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'f35b81b6-93cc-44c0-a90c-647d2f8e3954' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Mulas'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('f35b81b6-93cc-44c0-a90c-647d2f8e3954', 'Mulas', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'f35b81b6-93cc-44c0-a90c-647d2f8e3954' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Sakit Ulu Hati'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('f35b81b6-93cc-44c0-a90c-647d2f8e3954', 'Sakit Ulu Hati', false, true);
  END IF;

  -- [VOCABULARY] 自在 (Level 20)
  UPDATE item_meanings SET meaning = 'Leluasa', primary_meaning = true, accepted_answer = true WHERE id = '1176d3fa-9e50-43ff-9508-e475ededdda3';
  UPDATE items SET slug = 'leluasa' WHERE id = 'ca6a962b-e70e-4264-b955-02730aa545bc';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'ca6a962b-e70e-4264-b955-02730aa545bc' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Bebas'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('ca6a962b-e70e-4264-b955-02730aa545bc', 'Bebas', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'ca6a962b-e70e-4264-b955-02730aa545bc' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Suka Hati'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('ca6a962b-e70e-4264-b955-02730aa545bc', 'Suka Hati', false, true);
  END IF;

  -- [VOCABULARY] 被害 (Level 20)
  UPDATE item_meanings SET meaning = 'Kerusakan', primary_meaning = true, accepted_answer = true WHERE id = '7f8306ba-c8eb-41ca-ae3f-fdf82cb63288';
  UPDATE items SET slug = 'kerusakan' WHERE id = 'b838fd82-b7e8-4a15-8001-4f082d9a63d9';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'b838fd82-b7e8-4a15-8001-4f082d9a63d9' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Dampak Buruk'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('b838fd82-b7e8-4a15-8001-4f082d9a63d9', 'Dampak Buruk', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'b838fd82-b7e8-4a15-8001-4f082d9a63d9' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Kerugian'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('b838fd82-b7e8-4a15-8001-4f082d9a63d9', 'Kerugian', false, true);
  END IF;

  -- [VOCABULARY] 議会 (Level 20)
  UPDATE item_meanings SET meaning = 'Parlemen', primary_meaning = true, accepted_answer = true WHERE id = '49561aa6-f16f-4207-b2d8-144d508388ef';
  UPDATE items SET slug = 'parlemen' WHERE id = 'a165c29a-8c24-4feb-adef-8cebb7a23a63';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'a165c29a-8c24-4feb-adef-8cebb7a23a63' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Dewan Perwakilan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('a165c29a-8c24-4feb-adef-8cebb7a23a63', 'Dewan Perwakilan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'a165c29a-8c24-4feb-adef-8cebb7a23a63' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Kongres'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('a165c29a-8c24-4feb-adef-8cebb7a23a63', 'Kongres', false, true);
  END IF;

  -- [VOCABULARY] 議員 (Level 20)
  UPDATE item_meanings SET meaning = 'Anggota Parlemen', primary_meaning = true, accepted_answer = true WHERE id = '52c6cd9f-4965-4fd7-b830-245944844fa9';
  UPDATE items SET slug = 'anggota-parlemen' WHERE id = 'b0760c5d-a669-40fa-b496-e93e7c297a4a';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'b0760c5d-a669-40fa-b496-e93e7c297a4a' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Anggota Dewan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('b0760c5d-a669-40fa-b496-e93e7c297a4a', 'Anggota Dewan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'b0760c5d-a669-40fa-b496-e93e7c297a4a' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Wakil Rakyat'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('b0760c5d-a669-40fa-b496-e93e7c297a4a', 'Wakil Rakyat', false, true);
  END IF;

  -- [VOCABULARY] 面倒 (Level 20)
  UPDATE item_meanings SET meaning = 'Merepotkan', primary_meaning = true, accepted_answer = true WHERE id = '4d607661-c503-4c6d-b86a-aad046574691';
  UPDATE items SET slug = 'merepotkan' WHERE id = '5e50bf9d-eb84-4b81-8a68-6a2ba5983b5e';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '5e50bf9d-eb84-4b81-8a68-6a2ba5983b5e' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Rumit'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('5e50bf9d-eb84-4b81-8a68-6a2ba5983b5e', 'Rumit', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '5e50bf9d-eb84-4b81-8a68-6a2ba5983b5e' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Susah'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('5e50bf9d-eb84-4b81-8a68-6a2ba5983b5e', 'Susah', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '5e50bf9d-eb84-4b81-8a68-6a2ba5983b5e' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Repot'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('5e50bf9d-eb84-4b81-8a68-6a2ba5983b5e', 'Repot', false, true);
  END IF;

END $$;
