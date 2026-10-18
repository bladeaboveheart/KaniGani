-- Migration: Batch 3 Part 2 (Level 32)
-- Total items: 94

DO $$
BEGIN

  -- [KANJI] 久 (Level 32)
  UPDATE item_meanings SET meaning = 'Lama', primary_meaning = true, accepted_answer = true WHERE id = '01e4519b-0216-4366-8227-104a833758c7';
  UPDATE items SET slug = 'lama' WHERE id = '9f8f538b-a57b-48be-9046-4da2c1f70be7';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '9f8f538b-a57b-48be-9046-4da2c1f70be7' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Waktu yang Panjang'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('9f8f538b-a57b-48be-9046-4da2c1f70be7', 'Waktu yang Panjang', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '9f8f538b-a57b-48be-9046-4da2c1f70be7' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Long Time'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('9f8f538b-a57b-48be-9046-4da2c1f70be7', 'Long Time', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '9f8f538b-a57b-48be-9046-4da2c1f70be7' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Lama sekali'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('9f8f538b-a57b-48be-9046-4da2c1f70be7', 'Lama sekali', false, true);
  END IF;

  -- [KANJI] 党 (Level 32)
  UPDATE item_meanings SET meaning = 'Partai Politik', primary_meaning = true, accepted_answer = true WHERE id = '4c382104-fe4b-4461-8dde-8472172b9678';
  UPDATE items SET slug = 'partai-politik' WHERE id = '5858d66d-0835-4a86-ac84-016bebd549be';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '5858d66d-0835-4a86-ac84-016bebd549be' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Golongan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('5858d66d-0835-4a86-ac84-016bebd549be', 'Golongan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '5858d66d-0835-4a86-ac84-016bebd549be' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Party'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('5858d66d-0835-4a86-ac84-016bebd549be', 'Party', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '5858d66d-0835-4a86-ac84-016bebd549be' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Political Party'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('5858d66d-0835-4a86-ac84-016bebd549be', 'Political Party', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '5858d66d-0835-4a86-ac84-016bebd549be' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Group'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('5858d66d-0835-4a86-ac84-016bebd549be', 'Group', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '5858d66d-0835-4a86-ac84-016bebd549be' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Berpesta'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('5858d66d-0835-4a86-ac84-016bebd549be', 'Berpesta', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '5858d66d-0835-4a86-ac84-016bebd549be' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Kelompok'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('5858d66d-0835-4a86-ac84-016bebd549be', 'Kelompok', false, true);
  END IF;

  -- [KANJI] 厳 (Level 32)
  UPDATE item_meanings SET meaning = 'Ketat', primary_meaning = true, accepted_answer = true WHERE id = '2eacc370-4cbc-44c8-8914-1db6f773040f';
  UPDATE items SET slug = 'ketat' WHERE id = 'e0c1cc37-fdb2-47ff-8e3a-32937874936b';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'e0c1cc37-fdb2-47ff-8e3a-32937874936b' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Keras'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('e0c1cc37-fdb2-47ff-8e3a-32937874936b', 'Keras', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'e0c1cc37-fdb2-47ff-8e3a-32937874936b' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Tegas'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('e0c1cc37-fdb2-47ff-8e3a-32937874936b', 'Tegas', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'e0c1cc37-fdb2-47ff-8e3a-32937874936b' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Strict'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('e0c1cc37-fdb2-47ff-8e3a-32937874936b', 'Strict', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'e0c1cc37-fdb2-47ff-8e3a-32937874936b' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Severe'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('e0c1cc37-fdb2-47ff-8e3a-32937874936b', 'Severe', false, true);
  END IF;

  -- [KANJI] 密 (Level 32)
  UPDATE item_meanings SET meaning = 'Rapat', primary_meaning = true, accepted_answer = true WHERE id = 'ffb79fa5-d8c3-4e3b-a5d5-f711b1c9c6cd';
  UPDATE items SET slug = 'rapat' WHERE id = '82d991cb-2bda-4df8-ba8f-718cb32c5ae7';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '82d991cb-2bda-4df8-ba8f-718cb32c5ae7' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Rahasia'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('82d991cb-2bda-4df8-ba8f-718cb32c5ae7', 'Rahasia', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '82d991cb-2bda-4df8-ba8f-718cb32c5ae7' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Padat'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('82d991cb-2bda-4df8-ba8f-718cb32c5ae7', 'Padat', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '82d991cb-2bda-4df8-ba8f-718cb32c5ae7' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Secrecy'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('82d991cb-2bda-4df8-ba8f-718cb32c5ae7', 'Secrecy', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '82d991cb-2bda-4df8-ba8f-718cb32c5ae7' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Dense'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('82d991cb-2bda-4df8-ba8f-718cb32c5ae7', 'Dense', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '82d991cb-2bda-4df8-ba8f-718cb32c5ae7' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Kerahasiaan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('82d991cb-2bda-4df8-ba8f-718cb32c5ae7', 'Kerahasiaan', false, true);
  END IF;

  -- [KANJI] 序 (Level 32)
  UPDATE item_meanings SET meaning = 'Urutan', primary_meaning = true, accepted_answer = true WHERE id = '9cdcf9de-8fc4-4540-8080-605076b55343';
  UPDATE items SET slug = 'urutan' WHERE id = '06f26153-8209-48e2-8644-99243d45b527';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '06f26153-8209-48e2-8644-99243d45b527' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Pengantar'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('06f26153-8209-48e2-8644-99243d45b527', 'Pengantar', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '06f26153-8209-48e2-8644-99243d45b527' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Awal'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('06f26153-8209-48e2-8644-99243d45b527', 'Awal', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '06f26153-8209-48e2-8644-99243d45b527' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Preface'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('06f26153-8209-48e2-8644-99243d45b527', 'Preface', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '06f26153-8209-48e2-8644-99243d45b527' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Order'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('06f26153-8209-48e2-8644-99243d45b527', 'Order', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '06f26153-8209-48e2-8644-99243d45b527' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Kata pengantar'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('06f26153-8209-48e2-8644-99243d45b527', 'Kata pengantar', false, true);
  END IF;

  -- [KANJI] 志 (Level 32)
  UPDATE item_meanings SET meaning = 'Tekad', primary_meaning = true, accepted_answer = true WHERE id = '991e4866-93fa-49ff-8c78-e15fce902849';
  UPDATE items SET slug = 'tekad' WHERE id = '5c5e6eda-ec0e-49a2-a6c0-2ebc85d28450';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '5c5e6eda-ec0e-49a2-a6c0-2ebc85d28450' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Niat'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('5c5e6eda-ec0e-49a2-a6c0-2ebc85d28450', 'Niat', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '5c5e6eda-ec0e-49a2-a6c0-2ebc85d28450' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Aspirasi'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('5c5e6eda-ec0e-49a2-a6c0-2ebc85d28450', 'Aspirasi', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '5c5e6eda-ec0e-49a2-a6c0-2ebc85d28450' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Aspiration'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('5c5e6eda-ec0e-49a2-a6c0-2ebc85d28450', 'Aspiration', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '5c5e6eda-ec0e-49a2-a6c0-2ebc85d28450' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Aim'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('5c5e6eda-ec0e-49a2-a6c0-2ebc85d28450', 'Aim', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '5c5e6eda-ec0e-49a2-a6c0-2ebc85d28450' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Ambition'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('5c5e6eda-ec0e-49a2-a6c0-2ebc85d28450', 'Ambition', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '5c5e6eda-ec0e-49a2-a6c0-2ebc85d28450' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Maksud'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('5c5e6eda-ec0e-49a2-a6c0-2ebc85d28450', 'Maksud', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '5c5e6eda-ec0e-49a2-a6c0-2ebc85d28450' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Ambisi'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('5c5e6eda-ec0e-49a2-a6c0-2ebc85d28450', 'Ambisi', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '5c5e6eda-ec0e-49a2-a6c0-2ebc85d28450' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Intention'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('5c5e6eda-ec0e-49a2-a6c0-2ebc85d28450', 'Intention', false, true);
  END IF;

  -- [KANJI] 恩 (Level 32)
  UPDATE item_meanings SET meaning = 'Kebaikan Budi', primary_meaning = true, accepted_answer = true WHERE id = 'a922f67b-7faf-49ea-8185-334ca97ffc14';
  UPDATE items SET slug = 'kebaikan-budi' WHERE id = '6853a9ac-4df7-4d9f-8ed4-50ce6fced03a';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '6853a9ac-4df7-4d9f-8ed4-50ce6fced03a' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Jasa'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('6853a9ac-4df7-4d9f-8ed4-50ce6fced03a', 'Jasa', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '6853a9ac-4df7-4d9f-8ed4-50ce6fced03a' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Hutang Budi'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('6853a9ac-4df7-4d9f-8ed4-50ce6fced03a', 'Hutang Budi', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '6853a9ac-4df7-4d9f-8ed4-50ce6fced03a' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Kindness'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('6853a9ac-4df7-4d9f-8ed4-50ce6fced03a', 'Kindness', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '6853a9ac-4df7-4d9f-8ed4-50ce6fced03a' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Grace'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('6853a9ac-4df7-4d9f-8ed4-50ce6fced03a', 'Grace', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '6853a9ac-4df7-4d9f-8ed4-50ce6fced03a' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Favor'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('6853a9ac-4df7-4d9f-8ed4-50ce6fced03a', 'Favor', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '6853a9ac-4df7-4d9f-8ed4-50ce6fced03a' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Kebaikan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('6853a9ac-4df7-4d9f-8ed4-50ce6fced03a', 'Kebaikan', false, true);
  END IF;

  -- [KANJI] 捨 (Level 32)
  UPDATE item_meanings SET meaning = 'Membuang', primary_meaning = true, accepted_answer = true WHERE id = '6a5ebeed-f0f5-492c-8105-890fef50c3ec';
  UPDATE items SET slug = 'membuang' WHERE id = '759e3e23-0173-4b98-a3bd-74317c715794';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '759e3e23-0173-4b98-a3bd-74317c715794' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Melepaskan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('759e3e23-0173-4b98-a3bd-74317c715794', 'Melepaskan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '759e3e23-0173-4b98-a3bd-74317c715794' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Throw Away'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('759e3e23-0173-4b98-a3bd-74317c715794', 'Throw Away', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '759e3e23-0173-4b98-a3bd-74317c715794' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Discard'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('759e3e23-0173-4b98-a3bd-74317c715794', 'Discard', false, true);
  END IF;

  -- [KANJI] 採 (Level 32)
  UPDATE item_meanings SET meaning = 'Memetik', primary_meaning = true, accepted_answer = true WHERE id = '2b6fb55d-c350-4b58-85ce-b6f9def20964';
  UPDATE items SET slug = 'memetik' WHERE id = 'efcf54c0-d667-4c93-a072-28fa782444e0';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'efcf54c0-d667-4c93-a072-28fa782444e0' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Mengambil'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('efcf54c0-d667-4c93-a072-28fa782444e0', 'Mengambil', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'efcf54c0-d667-4c93-a072-28fa782444e0' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Mengadopsi'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('efcf54c0-d667-4c93-a072-28fa782444e0', 'Mengadopsi', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'efcf54c0-d667-4c93-a072-28fa782444e0' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Pick'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('efcf54c0-d667-4c93-a072-28fa782444e0', 'Pick', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'efcf54c0-d667-4c93-a072-28fa782444e0' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Gather'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('efcf54c0-d667-4c93-a072-28fa782444e0', 'Gather', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'efcf54c0-d667-4c93-a072-28fa782444e0' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Adopt'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('efcf54c0-d667-4c93-a072-28fa782444e0', 'Adopt', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'efcf54c0-d667-4c93-a072-28fa782444e0' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Mengumpulkan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('efcf54c0-d667-4c93-a072-28fa782444e0', 'Mengumpulkan', false, true);
  END IF;

  -- [KANJI] 染 (Level 32)
  UPDATE item_meanings SET meaning = 'Mewarnai', primary_meaning = true, accepted_answer = true WHERE id = 'e0ab2260-adce-47a1-8f9f-e49fd8127a60';
  UPDATE items SET slug = 'mewarnai' WHERE id = '6621d1d9-5617-4b69-8ec8-1bd0c94db180';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '6621d1d9-5617-4b69-8ec8-1bd0c94db180' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Menular'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('6621d1d9-5617-4b69-8ec8-1bd0c94db180', 'Menular', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '6621d1d9-5617-4b69-8ec8-1bd0c94db180' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Tercemar'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('6621d1d9-5617-4b69-8ec8-1bd0c94db180', 'Tercemar', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '6621d1d9-5617-4b69-8ec8-1bd0c94db180' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Dye'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('6621d1d9-5617-4b69-8ec8-1bd0c94db180', 'Dye', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '6621d1d9-5617-4b69-8ec8-1bd0c94db180' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Stain'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('6621d1d9-5617-4b69-8ec8-1bd0c94db180', 'Stain', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '6621d1d9-5617-4b69-8ec8-1bd0c94db180' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Infect'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('6621d1d9-5617-4b69-8ec8-1bd0c94db180', 'Infect', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '6621d1d9-5617-4b69-8ec8-1bd0c94db180' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Pewarna'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('6621d1d9-5617-4b69-8ec8-1bd0c94db180', 'Pewarna', false, true);
  END IF;

  -- [KANJI] 欲 (Level 32)
  UPDATE item_meanings SET meaning = 'Hasrat', primary_meaning = true, accepted_answer = true WHERE id = '9c039831-89be-48b4-bcf3-5262ac5e4a8c';
  UPDATE items SET slug = 'hasrat' WHERE id = 'dda307f3-b6ce-428a-a3fc-029a0f8a665b';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'dda307f3-b6ce-428a-a3fc-029a0f8a665b' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Keinginan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('dda307f3-b6ce-428a-a3fc-029a0f8a665b', 'Keinginan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'dda307f3-b6ce-428a-a3fc-029a0f8a665b' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Nafsu'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('dda307f3-b6ce-428a-a3fc-029a0f8a665b', 'Nafsu', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'dda307f3-b6ce-428a-a3fc-029a0f8a665b' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Want'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('dda307f3-b6ce-428a-a3fc-029a0f8a665b', 'Want', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'dda307f3-b6ce-428a-a3fc-029a0f8a665b' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Desire'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('dda307f3-b6ce-428a-a3fc-029a0f8a665b', 'Desire', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'dda307f3-b6ce-428a-a3fc-029a0f8a665b' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Ingin'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('dda307f3-b6ce-428a-a3fc-029a0f8a665b', 'Ingin', false, true);
  END IF;

  -- [KANJI] 永 (Level 32)
  UPDATE item_meanings SET meaning = 'Abadi', primary_meaning = true, accepted_answer = true WHERE id = 'a2476957-009e-4936-ac04-b1cba57bdf26';
  UPDATE items SET slug = 'abadi' WHERE id = '8cdbb232-308f-44bc-ac09-5bcaa61c745b';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '8cdbb232-308f-44bc-ac09-5bcaa61c745b' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Selamanya'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('8cdbb232-308f-44bc-ac09-5bcaa61c745b', 'Selamanya', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '8cdbb232-308f-44bc-ac09-5bcaa61c745b' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Eternal'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('8cdbb232-308f-44bc-ac09-5bcaa61c745b', 'Eternal', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '8cdbb232-308f-44bc-ac09-5bcaa61c745b' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Eternity'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('8cdbb232-308f-44bc-ac09-5bcaa61c745b', 'Eternity', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '8cdbb232-308f-44bc-ac09-5bcaa61c745b' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Keabadian'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('8cdbb232-308f-44bc-ac09-5bcaa61c745b', 'Keabadian', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '8cdbb232-308f-44bc-ac09-5bcaa61c745b' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Forever'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('8cdbb232-308f-44bc-ac09-5bcaa61c745b', 'Forever', false, true);
  END IF;

  -- [KANJI] 汚 (Level 32)
  UPDATE item_meanings SET meaning = 'Kotor', primary_meaning = true, accepted_answer = true WHERE id = 'e12056ef-bcaa-4f52-a144-7ce1b265d9ba';
  UPDATE items SET slug = 'kotor' WHERE id = '7e0ca5f4-b1d0-44f7-bbe2-35207276d5ad';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '7e0ca5f4-b1d0-44f7-bbe2-35207276d5ad' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Menodai'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('7e0ca5f4-b1d0-44f7-bbe2-35207276d5ad', 'Menodai', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '7e0ca5f4-b1d0-44f7-bbe2-35207276d5ad' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Tercemar'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('7e0ca5f4-b1d0-44f7-bbe2-35207276d5ad', 'Tercemar', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '7e0ca5f4-b1d0-44f7-bbe2-35207276d5ad' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Dirty'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('7e0ca5f4-b1d0-44f7-bbe2-35207276d5ad', 'Dirty', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '7e0ca5f4-b1d0-44f7-bbe2-35207276d5ad' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Pollute'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('7e0ca5f4-b1d0-44f7-bbe2-35207276d5ad', 'Pollute', false, true);
  END IF;

  -- [KANJI] 液 (Level 32)
  UPDATE item_meanings SET meaning = 'Cairan', primary_meaning = true, accepted_answer = true WHERE id = '8b3e8195-ac65-4d22-8163-4cdc0057350f';
  UPDATE items SET slug = 'cairan' WHERE id = '796d267c-1dcd-4c51-88e9-57b454b9583f';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '796d267c-1dcd-4c51-88e9-57b454b9583f' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Zat Cair'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('796d267c-1dcd-4c51-88e9-57b454b9583f', 'Zat Cair', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '796d267c-1dcd-4c51-88e9-57b454b9583f' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Liquid'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('796d267c-1dcd-4c51-88e9-57b454b9583f', 'Liquid', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '796d267c-1dcd-4c51-88e9-57b454b9583f' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Fluid'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('796d267c-1dcd-4c51-88e9-57b454b9583f', 'Fluid', false, true);
  END IF;

  -- [KANJI] 眼 (Level 32)
  UPDATE item_meanings SET meaning = 'Mata', primary_meaning = true, accepted_answer = true WHERE id = '07343376-cfab-476d-9e41-27593308bc4e';
  UPDATE items SET slug = 'mata' WHERE id = '54207bd2-eb3e-4bf1-8e2e-0ef4e8e69480';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '54207bd2-eb3e-4bf1-8e2e-0ef4e8e69480' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Penglihatan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('54207bd2-eb3e-4bf1-8e2e-0ef4e8e69480', 'Penglihatan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '54207bd2-eb3e-4bf1-8e2e-0ef4e8e69480' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Eye'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('54207bd2-eb3e-4bf1-8e2e-0ef4e8e69480', 'Eye', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '54207bd2-eb3e-4bf1-8e2e-0ef4e8e69480' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Eyeball'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('54207bd2-eb3e-4bf1-8e2e-0ef4e8e69480', 'Eyeball', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '54207bd2-eb3e-4bf1-8e2e-0ef4e8e69480' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Bola mata'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('54207bd2-eb3e-4bf1-8e2e-0ef4e8e69480', 'Bola mata', false, true);
  END IF;

  -- [KANJI] 祖 (Level 32)
  UPDATE item_meanings SET meaning = 'Nenek Moyang', primary_meaning = true, accepted_answer = true WHERE id = '4fae95f8-7abc-4c7b-be12-c8f1bfc4a2ca';
  UPDATE items SET slug = 'nenek-moyang' WHERE id = '62f02846-1f11-49f0-85b9-e17f24f8617b';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '62f02846-1f11-49f0-85b9-e17f24f8617b' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Leluhur'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('62f02846-1f11-49f0-85b9-e17f24f8617b', 'Leluhur', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '62f02846-1f11-49f0-85b9-e17f24f8617b' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Ancestor'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('62f02846-1f11-49f0-85b9-e17f24f8617b', 'Ancestor', false, true);
  END IF;

  -- [KANJI] 績 (Level 32)
  UPDATE item_meanings SET meaning = 'Prestasi', primary_meaning = true, accepted_answer = true WHERE id = 'a94c85aa-2aaf-43a5-824f-bf2241651f59';
  UPDATE items SET slug = 'prestasi' WHERE id = '8a0a1f45-70bd-430e-a575-b7d86cda7b7e';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '8a0a1f45-70bd-430e-a575-b7d86cda7b7e' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Pencapaian'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('8a0a1f45-70bd-430e-a575-b7d86cda7b7e', 'Pencapaian', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '8a0a1f45-70bd-430e-a575-b7d86cda7b7e' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Jejak Kerja'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('8a0a1f45-70bd-430e-a575-b7d86cda7b7e', 'Jejak Kerja', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '8a0a1f45-70bd-430e-a575-b7d86cda7b7e' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Achievement'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('8a0a1f45-70bd-430e-a575-b7d86cda7b7e', 'Achievement', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '8a0a1f45-70bd-430e-a575-b7d86cda7b7e' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Result'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('8a0a1f45-70bd-430e-a575-b7d86cda7b7e', 'Result', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '8a0a1f45-70bd-430e-a575-b7d86cda7b7e' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Exploits'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('8a0a1f45-70bd-430e-a575-b7d86cda7b7e', 'Exploits', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '8a0a1f45-70bd-430e-a575-b7d86cda7b7e' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Results'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('8a0a1f45-70bd-430e-a575-b7d86cda7b7e', 'Results', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '8a0a1f45-70bd-430e-a575-b7d86cda7b7e' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Accomplishment'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('8a0a1f45-70bd-430e-a575-b7d86cda7b7e', 'Accomplishment', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '8a0a1f45-70bd-430e-a575-b7d86cda7b7e' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Performance'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('8a0a1f45-70bd-430e-a575-b7d86cda7b7e', 'Performance', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '8a0a1f45-70bd-430e-a575-b7d86cda7b7e' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Achievements'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('8a0a1f45-70bd-430e-a575-b7d86cda7b7e', 'Achievements', false, true);
  END IF;

  -- [KANJI] 興 (Level 32)
  UPDATE item_meanings SET meaning = 'Minat', primary_meaning = true, accepted_answer = true WHERE id = 'be74ade8-36a8-448e-b2ce-0a0594a5acc1';
  UPDATE items SET slug = 'minat' WHERE id = '921ae79f-99e7-48d5-ac38-a853dedea2d8';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '921ae79f-99e7-48d5-ac38-a853dedea2d8' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Antusiasme'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('921ae79f-99e7-48d5-ac38-a853dedea2d8', 'Antusiasme', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '921ae79f-99e7-48d5-ac38-a853dedea2d8' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Bangkit'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('921ae79f-99e7-48d5-ac38-a853dedea2d8', 'Bangkit', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '921ae79f-99e7-48d5-ac38-a853dedea2d8' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Interest'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('921ae79f-99e7-48d5-ac38-a853dedea2d8', 'Interest', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '921ae79f-99e7-48d5-ac38-a853dedea2d8' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Entertain'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('921ae79f-99e7-48d5-ac38-a853dedea2d8', 'Entertain', false, true);
  END IF;

  -- [KANJI] 衛 (Level 32)
  UPDATE item_meanings SET meaning = 'Penjagaan', primary_meaning = true, accepted_answer = true WHERE id = 'fab24bf5-fc0c-4852-8e35-377bff38f333';
  UPDATE items SET slug = 'penjagaan' WHERE id = '2c749e84-239e-4291-a1b7-3e3983f66295';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '2c749e84-239e-4291-a1b7-3e3983f66295' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Perlindungan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('2c749e84-239e-4291-a1b7-3e3983f66295', 'Perlindungan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '2c749e84-239e-4291-a1b7-3e3983f66295' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Satelit'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('2c749e84-239e-4291-a1b7-3e3983f66295', 'Satelit', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '2c749e84-239e-4291-a1b7-3e3983f66295' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Defense'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('2c749e84-239e-4291-a1b7-3e3983f66295', 'Defense', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '2c749e84-239e-4291-a1b7-3e3983f66295' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Protection'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('2c749e84-239e-4291-a1b7-3e3983f66295', 'Protection', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '2c749e84-239e-4291-a1b7-3e3983f66295' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Pertahanan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('2c749e84-239e-4291-a1b7-3e3983f66295', 'Pertahanan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '2c749e84-239e-4291-a1b7-3e3983f66295' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Defence'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('2c749e84-239e-4291-a1b7-3e3983f66295', 'Defence', false, true);
  END IF;

  -- [KANJI] 複 (Level 32)
  UPDATE item_meanings SET meaning = 'Ganda', primary_meaning = true, accepted_answer = true WHERE id = 'df26cf9a-3912-4b93-aeef-2362a9e01cf1';
  UPDATE items SET slug = 'ganda' WHERE id = '9fabb8ba-82dc-4c1a-8f42-9e9556f5aafb';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '9fabb8ba-82dc-4c1a-8f42-9e9556f5aafb' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Majemuk'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('9fabb8ba-82dc-4c1a-8f42-9e9556f5aafb', 'Majemuk', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '9fabb8ba-82dc-4c1a-8f42-9e9556f5aafb' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Multiple'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('9fabb8ba-82dc-4c1a-8f42-9e9556f5aafb', 'Multiple', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '9fabb8ba-82dc-4c1a-8f42-9e9556f5aafb' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Double'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('9fabb8ba-82dc-4c1a-8f42-9e9556f5aafb', 'Double', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '9fabb8ba-82dc-4c1a-8f42-9e9556f5aafb' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Duplicate'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('9fabb8ba-82dc-4c1a-8f42-9e9556f5aafb', 'Duplicate', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '9fabb8ba-82dc-4c1a-8f42-9e9556f5aafb' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Duplikat'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('9fabb8ba-82dc-4c1a-8f42-9e9556f5aafb', 'Duplikat', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '9fabb8ba-82dc-4c1a-8f42-9e9556f5aafb' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Banyak'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('9fabb8ba-82dc-4c1a-8f42-9e9556f5aafb', 'Banyak', false, true);
  END IF;

  -- [KANJI] 訳 (Level 32)
  UPDATE item_meanings SET meaning = 'Alasan', primary_meaning = true, accepted_answer = true WHERE id = '81d9a0cb-40bf-44ec-96e7-78068b0705f6';
  UPDATE items SET slug = 'alasan' WHERE id = '9f06db0a-b513-4609-9da5-b1f498a23d8c';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '9f06db0a-b513-4609-9da5-b1f498a23d8c' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Terjemahan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('9f06db0a-b513-4609-9da5-b1f498a23d8c', 'Terjemahan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '9f06db0a-b513-4609-9da5-b1f498a23d8c' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Arti'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('9f06db0a-b513-4609-9da5-b1f498a23d8c', 'Arti', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '9f06db0a-b513-4609-9da5-b1f498a23d8c' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Reason'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('9f06db0a-b513-4609-9da5-b1f498a23d8c', 'Reason', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '9f06db0a-b513-4609-9da5-b1f498a23d8c' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Translation'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('9f06db0a-b513-4609-9da5-b1f498a23d8c', 'Translation', false, true);
  END IF;

  -- [KANJI] 賛 (Level 32)
  UPDATE item_meanings SET meaning = 'Persetujuan', primary_meaning = true, accepted_answer = true WHERE id = '788e0119-1ac5-41b7-85d8-ab716c3ff26c';
  UPDATE items SET slug = 'persetujuan' WHERE id = '9bb07d37-1091-42c6-9d68-9daa30387cc0';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '9bb07d37-1091-42c6-9d68-9daa30387cc0' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Memuji'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('9bb07d37-1091-42c6-9d68-9daa30387cc0', 'Memuji', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '9bb07d37-1091-42c6-9d68-9daa30387cc0' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Agree'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('9bb07d37-1091-42c6-9d68-9daa30387cc0', 'Agree', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '9bb07d37-1091-42c6-9d68-9daa30387cc0' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Approve'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('9bb07d37-1091-42c6-9d68-9daa30387cc0', 'Approve', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '9bb07d37-1091-42c6-9d68-9daa30387cc0' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Setuju'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('9bb07d37-1091-42c6-9d68-9daa30387cc0', 'Setuju', false, true);
  END IF;

  -- [KANJI] 込 (Level 32)
  UPDATE item_meanings SET meaning = 'Masuk Ke Dalam', primary_meaning = true, accepted_answer = true WHERE id = '7bab3f52-ce58-4e8f-9e3a-986e47ed994b';
  UPDATE items SET slug = 'masuk-ke-dalam' WHERE id = '5398b8ab-8a80-470e-9544-53bee65f5da7';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '5398b8ab-8a80-470e-9544-53bee65f5da7' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Penuh Sesak'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('5398b8ab-8a80-470e-9544-53bee65f5da7', 'Penuh Sesak', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '5398b8ab-8a80-470e-9544-53bee65f5da7' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Into'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('5398b8ab-8a80-470e-9544-53bee65f5da7', 'Into', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '5398b8ab-8a80-470e-9544-53bee65f5da7' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Included'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('5398b8ab-8a80-470e-9544-53bee65f5da7', 'Included', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '5398b8ab-8a80-470e-9544-53bee65f5da7' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Crowded'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('5398b8ab-8a80-470e-9544-53bee65f5da7', 'Crowded', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '5398b8ab-8a80-470e-9544-53bee65f5da7' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Ke dalam'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('5398b8ab-8a80-470e-9544-53bee65f5da7', 'Ke dalam', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '5398b8ab-8a80-470e-9544-53bee65f5da7' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Termasuk'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('5398b8ab-8a80-470e-9544-53bee65f5da7', 'Termasuk', false, true);
  END IF;

  -- [KANJI] 迎 (Level 32)
  UPDATE item_meanings SET meaning = 'Menyambut', primary_meaning = true, accepted_answer = true WHERE id = '707fbd02-0f93-48a3-a66d-a704e07a4977';
  UPDATE items SET slug = 'menyambut' WHERE id = '5d273d0e-c0df-477b-9b69-0cb6cef7b566';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '5d273d0e-c0df-477b-9b69-0cb6cef7b566' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Menjemput'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('5d273d0e-c0df-477b-9b69-0cb6cef7b566', 'Menjemput', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '5d273d0e-c0df-477b-9b69-0cb6cef7b566' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Welcome'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('5d273d0e-c0df-477b-9b69-0cb6cef7b566', 'Welcome', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '5d273d0e-c0df-477b-9b69-0cb6cef7b566' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Meet'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('5d273d0e-c0df-477b-9b69-0cb6cef7b566', 'Meet', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '5d273d0e-c0df-477b-9b69-0cb6cef7b566' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Selamat datang'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('5d273d0e-c0df-477b-9b69-0cb6cef7b566', 'Selamat datang', false, true);
  END IF;

  -- [KANJI] 酸 (Level 32)
  UPDATE item_meanings SET meaning = 'Asam', primary_meaning = true, accepted_answer = true WHERE id = '06ff99e8-fe1d-4e34-9511-7793482a8cb8';
  UPDATE items SET slug = 'asam' WHERE id = '5eb8d1a7-eb22-417d-92d2-ebeab163b6a9';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '5eb8d1a7-eb22-417d-92d2-ebeab163b6a9' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Zat Asam'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('5eb8d1a7-eb22-417d-92d2-ebeab163b6a9', 'Zat Asam', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '5eb8d1a7-eb22-417d-92d2-ebeab163b6a9' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Rasa Asam'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('5eb8d1a7-eb22-417d-92d2-ebeab163b6a9', 'Rasa Asam', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '5eb8d1a7-eb22-417d-92d2-ebeab163b6a9' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Acid'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('5eb8d1a7-eb22-417d-92d2-ebeab163b6a9', 'Acid', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '5eb8d1a7-eb22-417d-92d2-ebeab163b6a9' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Sour'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('5eb8d1a7-eb22-417d-92d2-ebeab163b6a9', 'Sour', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '5eb8d1a7-eb22-417d-92d2-ebeab163b6a9' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Asam (Zat Kimia'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('5eb8d1a7-eb22-417d-92d2-ebeab163b6a9', 'Asam (Zat Kimia', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '5eb8d1a7-eb22-417d-92d2-ebeab163b6a9' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Rasa)'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('5eb8d1a7-eb22-417d-92d2-ebeab163b6a9', 'Rasa)', false, true);
  END IF;

  -- [KANJI] 銭 (Level 32)
  UPDATE item_meanings SET meaning = 'Uang Receh', primary_meaning = true, accepted_answer = true WHERE id = '6ce52693-4145-47f1-9a00-c7d628f58d29';
  UPDATE items SET slug = 'uang-receh' WHERE id = 'fac185d6-3629-4659-baa8-517991f55ac2';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'fac185d6-3629-4659-baa8-517991f55ac2' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Koin'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('fac185d6-3629-4659-baa8-517991f55ac2', 'Koin', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'fac185d6-3629-4659-baa8-517991f55ac2' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Uang'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('fac185d6-3629-4659-baa8-517991f55ac2', 'Uang', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'fac185d6-3629-4659-baa8-517991f55ac2' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Coin'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('fac185d6-3629-4659-baa8-517991f55ac2', 'Coin', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'fac185d6-3629-4659-baa8-517991f55ac2' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Money'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('fac185d6-3629-4659-baa8-517991f55ac2', 'Money', false, true);
  END IF;

  -- [KANJI] 雑 (Level 32)
  UPDATE item_meanings SET meaning = 'Bermacam-macam', primary_meaning = true, accepted_answer = true WHERE id = '520f31a8-98b0-453e-a494-35a3d1e64e37';
  UPDATE items SET slug = 'bermacam-macam' WHERE id = '522dc244-2551-4809-a1e5-597c7edc2e59';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '522dc244-2551-4809-a1e5-597c7edc2e59' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Campuran'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('522dc244-2551-4809-a1e5-597c7edc2e59', 'Campuran', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '522dc244-2551-4809-a1e5-597c7edc2e59' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Kasar'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('522dc244-2551-4809-a1e5-597c7edc2e59', 'Kasar', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '522dc244-2551-4809-a1e5-597c7edc2e59' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Miscellaneous'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('522dc244-2551-4809-a1e5-597c7edc2e59', 'Miscellaneous', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '522dc244-2551-4809-a1e5-597c7edc2e59' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Random'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('522dc244-2551-4809-a1e5-597c7edc2e59', 'Random', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '522dc244-2551-4809-a1e5-597c7edc2e59' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Acak'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('522dc244-2551-4809-a1e5-597c7edc2e59', 'Acak', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '522dc244-2551-4809-a1e5-597c7edc2e59' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Misc.'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('522dc244-2551-4809-a1e5-597c7edc2e59', 'Misc.', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '522dc244-2551-4809-a1e5-597c7edc2e59' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Aneka ragam'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('522dc244-2551-4809-a1e5-597c7edc2e59', 'Aneka ragam', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '522dc244-2551-4809-a1e5-597c7edc2e59' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Misc'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('522dc244-2551-4809-a1e5-597c7edc2e59', 'Misc', false, true);
  END IF;

  -- [KANJI] 飼 (Level 32)
  UPDATE item_meanings SET meaning = 'Memelihara', primary_meaning = true, accepted_answer = true WHERE id = '2b0a714f-0710-4c10-ae12-5d07384877d6';
  UPDATE items SET slug = 'memelihara' WHERE id = '5273e5be-8d86-4197-887d-535335a7a477';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '5273e5be-8d86-4197-887d-535335a7a477' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Berternak'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('5273e5be-8d86-4197-887d-535335a7a477', 'Berternak', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '5273e5be-8d86-4197-887d-535335a7a477' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Memelihara Hewan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('5273e5be-8d86-4197-887d-535335a7a477', 'Memelihara Hewan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '5273e5be-8d86-4197-887d-535335a7a477' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Domesticate'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('5273e5be-8d86-4197-887d-535335a7a477', 'Domesticate', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '5273e5be-8d86-4197-887d-535335a7a477' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Raise'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('5273e5be-8d86-4197-887d-535335a7a477', 'Raise', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '5273e5be-8d86-4197-887d-535335a7a477' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Keep A Pet'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('5273e5be-8d86-4197-887d-535335a7a477', 'Keep A Pet', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '5273e5be-8d86-4197-887d-535335a7a477' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Menjinakkan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('5273e5be-8d86-4197-887d-535335a7a477', 'Menjinakkan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '5273e5be-8d86-4197-887d-535335a7a477' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Have A Pet'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('5273e5be-8d86-4197-887d-535335a7a477', 'Have A Pet', false, true);
  END IF;

  -- [KANJI] 騙 (Level 32)
  UPDATE item_meanings SET meaning = 'Menipu', primary_meaning = true, accepted_answer = true WHERE id = '156e6799-0dd9-4704-8d60-8fdcb59f083e';
  UPDATE items SET slug = 'menipu' WHERE id = '9ff271bb-3f35-40e5-9686-fd02e148b5d1';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '9ff271bb-3f35-40e5-9686-fd02e148b5d1' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Memperdaya'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('9ff271bb-3f35-40e5-9686-fd02e148b5d1', 'Memperdaya', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '9ff271bb-3f35-40e5-9686-fd02e148b5d1' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Deceive'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('9ff271bb-3f35-40e5-9686-fd02e148b5d1', 'Deceive', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '9ff271bb-3f35-40e5-9686-fd02e148b5d1' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Trick'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('9ff271bb-3f35-40e5-9686-fd02e148b5d1', 'Trick', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '9ff271bb-3f35-40e5-9686-fd02e148b5d1' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Tipu daya'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('9ff271bb-3f35-40e5-9686-fd02e148b5d1', 'Tipu daya', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '9ff271bb-3f35-40e5-9686-fd02e148b5d1' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Deceit'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('9ff271bb-3f35-40e5-9686-fd02e148b5d1', 'Deceit', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '9ff271bb-3f35-40e5-9686-fd02e148b5d1' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Deception'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('9ff271bb-3f35-40e5-9686-fd02e148b5d1', 'Deception', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '9ff271bb-3f35-40e5-9686-fd02e148b5d1' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Trickery'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('9ff271bb-3f35-40e5-9686-fd02e148b5d1', 'Trickery', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '9ff271bb-3f35-40e5-9686-fd02e148b5d1' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Tricking'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('9ff271bb-3f35-40e5-9686-fd02e148b5d1', 'Tricking', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '9ff271bb-3f35-40e5-9686-fd02e148b5d1' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Deceiving'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('9ff271bb-3f35-40e5-9686-fd02e148b5d1', 'Deceiving', false, true);
  END IF;

  -- [VOCABULARY] 人脈 (Level 32)
  UPDATE item_meanings SET meaning = 'Jaringan Koneksi', primary_meaning = true, accepted_answer = true WHERE id = '3a66f7a0-0893-40cc-a509-47f3555d3434';
  UPDATE items SET slug = 'jaringan-koneksi' WHERE id = '300992be-157a-4d4d-9024-8fd76400c987';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '300992be-157a-4d4d-9024-8fd76400c987' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Relasi Pribadi'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('300992be-157a-4d4d-9024-8fd76400c987', 'Relasi Pribadi', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '300992be-157a-4d4d-9024-8fd76400c987' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Koneksi Pribadi'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('300992be-157a-4d4d-9024-8fd76400c987', 'Koneksi Pribadi', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '300992be-157a-4d4d-9024-8fd76400c987' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Personal Connections'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('300992be-157a-4d4d-9024-8fd76400c987', 'Personal Connections', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '300992be-157a-4d4d-9024-8fd76400c987' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Network'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('300992be-157a-4d4d-9024-8fd76400c987', 'Network', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '300992be-157a-4d4d-9024-8fd76400c987' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Personal Network'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('300992be-157a-4d4d-9024-8fd76400c987', 'Personal Network', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '300992be-157a-4d4d-9024-8fd76400c987' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Jaringan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('300992be-157a-4d4d-9024-8fd76400c987', 'Jaringan', false, true);
  END IF;

  -- [VOCABULARY] 伝染病 (Level 32)
  UPDATE item_meanings SET meaning = 'Penyakit Menular', primary_meaning = true, accepted_answer = true WHERE id = '962dc9fb-0eba-41de-8ea0-b5cf0c259f47';
  UPDATE items SET slug = 'penyakit-menular' WHERE id = '3f3df430-127e-4d1e-b2a9-ba74070e3234';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '3f3df430-127e-4d1e-b2a9-ba74070e3234' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Wabah'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('3f3df430-127e-4d1e-b2a9-ba74070e3234', 'Wabah', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '3f3df430-127e-4d1e-b2a9-ba74070e3234' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Infectious Disease'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('3f3df430-127e-4d1e-b2a9-ba74070e3234', 'Infectious Disease', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '3f3df430-127e-4d1e-b2a9-ba74070e3234' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Contagious Disease'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('3f3df430-127e-4d1e-b2a9-ba74070e3234', 'Contagious Disease', false, true);
  END IF;

  -- [VOCABULARY] 似合う (Level 32)
  UPDATE item_meanings SET meaning = 'Cocok', primary_meaning = true, accepted_answer = true WHERE id = '422c42e0-2327-4095-b54f-3743656d0171';
  UPDATE items SET slug = 'cocok' WHERE id = '79da1c19-5f7f-48c8-afb2-086cbac2908d';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '79da1c19-5f7f-48c8-afb2-086cbac2908d' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Pas'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('79da1c19-5f7f-48c8-afb2-086cbac2908d', 'Pas', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '79da1c19-5f7f-48c8-afb2-086cbac2908d' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Serasi Dipakai'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('79da1c19-5f7f-48c8-afb2-086cbac2908d', 'Serasi Dipakai', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '79da1c19-5f7f-48c8-afb2-086cbac2908d' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Sesuai'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('79da1c19-5f7f-48c8-afb2-086cbac2908d', 'Sesuai', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '79da1c19-5f7f-48c8-afb2-086cbac2908d' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Suit'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('79da1c19-5f7f-48c8-afb2-086cbac2908d', 'To Suit', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '79da1c19-5f7f-48c8-afb2-086cbac2908d' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Match'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('79da1c19-5f7f-48c8-afb2-086cbac2908d', 'To Match', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '79da1c19-5f7f-48c8-afb2-086cbac2908d' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Untuk Mencocokkan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('79da1c19-5f7f-48c8-afb2-086cbac2908d', 'Untuk Mencocokkan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '79da1c19-5f7f-48c8-afb2-086cbac2908d' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Suit Well'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('79da1c19-5f7f-48c8-afb2-086cbac2908d', 'To Suit Well', false, true);
  END IF;

  -- [VOCABULARY] 傷 (Level 32)
  UPDATE item_meanings SET meaning = 'Luka', primary_meaning = true, accepted_answer = true WHERE id = 'd6d6b356-5c4d-4f4b-98a3-e7a3cbc04436';
  UPDATE items SET slug = 'luka' WHERE id = '506e7073-da82-48cf-b898-ee7a56f9127f';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '506e7073-da82-48cf-b898-ee7a56f9127f' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Goresan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('506e7073-da82-48cf-b898-ee7a56f9127f', 'Goresan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '506e7073-da82-48cf-b898-ee7a56f9127f' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Cacat Fisik'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('506e7073-da82-48cf-b898-ee7a56f9127f', 'Cacat Fisik', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '506e7073-da82-48cf-b898-ee7a56f9127f' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Wound'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('506e7073-da82-48cf-b898-ee7a56f9127f', 'Wound', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '506e7073-da82-48cf-b898-ee7a56f9127f' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Injury'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('506e7073-da82-48cf-b898-ee7a56f9127f', 'Injury', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '506e7073-da82-48cf-b898-ee7a56f9127f' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Scar'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('506e7073-da82-48cf-b898-ee7a56f9127f', 'Scar', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '506e7073-da82-48cf-b898-ee7a56f9127f' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Kerusakan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('506e7073-da82-48cf-b898-ee7a56f9127f', 'Kerusakan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '506e7073-da82-48cf-b898-ee7a56f9127f' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Defect'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('506e7073-da82-48cf-b898-ee7a56f9127f', 'Defect', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '506e7073-da82-48cf-b898-ee7a56f9127f' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Bruise'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('506e7073-da82-48cf-b898-ee7a56f9127f', 'Bruise', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '506e7073-da82-48cf-b898-ee7a56f9127f' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Scratch'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('506e7073-da82-48cf-b898-ee7a56f9127f', 'Scratch', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '506e7073-da82-48cf-b898-ee7a56f9127f' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Damage'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('506e7073-da82-48cf-b898-ee7a56f9127f', 'Damage', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '506e7073-da82-48cf-b898-ee7a56f9127f' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Flaw'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('506e7073-da82-48cf-b898-ee7a56f9127f', 'Flaw', false, true);
  END IF;

  -- [VOCABULARY] 傷心 (Level 32)
  UPDATE item_meanings SET meaning = 'Patah Hati', primary_meaning = true, accepted_answer = true WHERE id = '33ed7c5b-145a-41af-a9e0-7184d6e1f984';
  UPDATE items SET slug = 'patah-hati' WHERE id = '4849bae1-b714-439b-bdb8-d141bb296f49';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '4849bae1-b714-439b-bdb8-d141bb296f49' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Hati Hancur'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('4849bae1-b714-439b-bdb8-d141bb296f49', 'Hati Hancur', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '4849bae1-b714-439b-bdb8-d141bb296f49' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Heartbreak'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('4849bae1-b714-439b-bdb8-d141bb296f49', 'Heartbreak', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '4849bae1-b714-439b-bdb8-d141bb296f49' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Heartbroken'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('4849bae1-b714-439b-bdb8-d141bb296f49', 'Heartbroken', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '4849bae1-b714-439b-bdb8-d141bb296f49' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Broken Heart'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('4849bae1-b714-439b-bdb8-d141bb296f49', 'Broken Heart', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '4849bae1-b714-439b-bdb8-d141bb296f49' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Grief'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('4849bae1-b714-439b-bdb8-d141bb296f49', 'Grief', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '4849bae1-b714-439b-bdb8-d141bb296f49' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Sorrow'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('4849bae1-b714-439b-bdb8-d141bb296f49', 'Sorrow', false, true);
  END IF;

  -- [VOCABULARY] 傷者 (Level 32)
  UPDATE item_meanings SET meaning = 'Korban Luka', primary_meaning = true, accepted_answer = true WHERE id = '00c0a4a2-24a6-4ba2-94a8-a2a8e79728cb';
  UPDATE items SET slug = 'korban-luka' WHERE id = 'e416e9ed-2afb-4fb5-a050-e0306fd0b94f';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'e416e9ed-2afb-4fb5-a050-e0306fd0b94f' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Orang Terluka'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('e416e9ed-2afb-4fb5-a050-e0306fd0b94f', 'Orang Terluka', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'e416e9ed-2afb-4fb5-a050-e0306fd0b94f' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Orang yang Terluka'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('e416e9ed-2afb-4fb5-a050-e0306fd0b94f', 'Orang yang Terluka', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'e416e9ed-2afb-4fb5-a050-e0306fd0b94f' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Injured Person'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('e416e9ed-2afb-4fb5-a050-e0306fd0b94f', 'Injured Person', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'e416e9ed-2afb-4fb5-a050-e0306fd0b94f' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Wounded Person'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('e416e9ed-2afb-4fb5-a050-e0306fd0b94f', 'Wounded Person', false, true);
  END IF;

  -- [VOCABULARY] 先祖 (Level 32)
  UPDATE item_meanings SET meaning = 'Nenek Moyang', primary_meaning = true, accepted_answer = true WHERE id = '26ca30d7-92ed-4a37-a066-a26321ae2652';
  UPDATE items SET slug = 'nenek-moyang' WHERE id = '689cf421-5c85-48d9-ab96-0ae2bc35126f';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '689cf421-5c85-48d9-ab96-0ae2bc35126f' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Leluhur'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('689cf421-5c85-48d9-ab96-0ae2bc35126f', 'Leluhur', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '689cf421-5c85-48d9-ab96-0ae2bc35126f' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Ancestors'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('689cf421-5c85-48d9-ab96-0ae2bc35126f', 'Ancestors', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '689cf421-5c85-48d9-ab96-0ae2bc35126f' AND LOWER(TRIM(meaning)) = LOWER(TRIM('One''s Ancestors'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('689cf421-5c85-48d9-ab96-0ae2bc35126f', 'One''s Ancestors', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '689cf421-5c85-48d9-ab96-0ae2bc35126f' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Leluhur Seseorang'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('689cf421-5c85-48d9-ab96-0ae2bc35126f', 'Leluhur Seseorang', false, true);
  END IF;

  -- [VOCABULARY] 冷える (Level 32)
  UPDATE item_meanings SET meaning = 'Mendingin', primary_meaning = true, accepted_answer = true WHERE id = '23ccc1c2-174c-4818-9312-004cd31f529b';
  UPDATE items SET slug = 'mendingin' WHERE id = 'd972acaf-9998-4d07-8565-9b4b31250b68';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'd972acaf-9998-4d07-8565-9b4b31250b68' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Menjadi Dingin'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('d972acaf-9998-4d07-8565-9b4b31250b68', 'Menjadi Dingin', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'd972acaf-9998-4d07-8565-9b4b31250b68' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Cool Down'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('d972acaf-9998-4d07-8565-9b4b31250b68', 'To Cool Down', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'd972acaf-9998-4d07-8565-9b4b31250b68' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Grow Cold'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('d972acaf-9998-4d07-8565-9b4b31250b68', 'To Grow Cold', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'd972acaf-9998-4d07-8565-9b4b31250b68' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Get Chilly'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('d972acaf-9998-4d07-8565-9b4b31250b68', 'To Get Chilly', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'd972acaf-9998-4d07-8565-9b4b31250b68' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Get Cold'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('d972acaf-9998-4d07-8565-9b4b31250b68', 'To Get Cold', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'd972acaf-9998-4d07-8565-9b4b31250b68' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Be Chilled'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('d972acaf-9998-4d07-8565-9b4b31250b68', 'To Be Chilled', false, true);
  END IF;

  -- [VOCABULARY] 出版する (Level 32)
  UPDATE item_meanings SET meaning = 'Menerbitkan', primary_meaning = true, accepted_answer = true WHERE id = '0e9a4c0c-cae5-474a-a311-209a2e4754bb';
  UPDATE items SET slug = 'menerbitkan' WHERE id = 'd2245316-d73b-43db-99db-3d18e9ab624d';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'd2245316-d73b-43db-99db-3d18e9ab624d' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Mempublikasikan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('d2245316-d73b-43db-99db-3d18e9ab624d', 'Mempublikasikan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'd2245316-d73b-43db-99db-3d18e9ab624d' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Penerbitan Buku'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('d2245316-d73b-43db-99db-3d18e9ab624d', 'Penerbitan Buku', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'd2245316-d73b-43db-99db-3d18e9ab624d' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Publish'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('d2245316-d73b-43db-99db-3d18e9ab624d', 'To Publish', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'd2245316-d73b-43db-99db-3d18e9ab624d' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Menerbitkan (Buku'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('d2245316-d73b-43db-99db-3d18e9ab624d', 'Menerbitkan (Buku', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'd2245316-d73b-43db-99db-3d18e9ab624d' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Tulisan)'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('d2245316-d73b-43db-99db-3d18e9ab624d', 'Tulisan)', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'd2245316-d73b-43db-99db-3d18e9ab624d' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Untuk Menerbitkan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('d2245316-d73b-43db-99db-3d18e9ab624d', 'Untuk Menerbitkan', false, true);
  END IF;

  -- [VOCABULARY] 出版社 (Level 32)
  UPDATE item_meanings SET meaning = 'Penerbit Buku', primary_meaning = true, accepted_answer = true WHERE id = '8d351603-5efd-42f9-82e3-16b8eb089ca3';
  UPDATE items SET slug = 'penerbit-buku' WHERE id = 'a406da9d-dbed-4490-811e-4fbb663d0ff3';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'a406da9d-dbed-4490-811e-4fbb663d0ff3' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Perusahaan Penerbitan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('a406da9d-dbed-4490-811e-4fbb663d0ff3', 'Perusahaan Penerbitan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'a406da9d-dbed-4490-811e-4fbb663d0ff3' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Publisher'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('a406da9d-dbed-4490-811e-4fbb663d0ff3', 'Publisher', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'a406da9d-dbed-4490-811e-4fbb663d0ff3' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Publishing Company'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('a406da9d-dbed-4490-811e-4fbb663d0ff3', 'Publishing Company', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'a406da9d-dbed-4490-811e-4fbb663d0ff3' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Penerbit'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('a406da9d-dbed-4490-811e-4fbb663d0ff3', 'Penerbit', false, true);
  END IF;

  -- [VOCABULARY] 功績 (Level 32)
  UPDATE item_meanings SET meaning = 'Jasa Besar', primary_meaning = true, accepted_answer = true WHERE id = 'f46f33c6-ee55-4a04-abe4-80641b34cc55';
  UPDATE items SET slug = 'jasa-besar' WHERE id = '5dd4f90d-bb73-4108-845e-f5b2ae1fcd4e';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '5dd4f90d-bb73-4108-845e-f5b2ae1fcd4e' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Prestasi Gemilang'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('5dd4f90d-bb73-4108-845e-f5b2ae1fcd4e', 'Prestasi Gemilang', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '5dd4f90d-bb73-4108-845e-f5b2ae1fcd4e' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Pencapaian'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('5dd4f90d-bb73-4108-845e-f5b2ae1fcd4e', 'Pencapaian', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '5dd4f90d-bb73-4108-845e-f5b2ae1fcd4e' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Achievement'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('5dd4f90d-bb73-4108-845e-f5b2ae1fcd4e', 'Achievement', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '5dd4f90d-bb73-4108-845e-f5b2ae1fcd4e' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Accomplishment'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('5dd4f90d-bb73-4108-845e-f5b2ae1fcd4e', 'Accomplishment', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '5dd4f90d-bb73-4108-845e-f5b2ae1fcd4e' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Prestasi'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('5dd4f90d-bb73-4108-845e-f5b2ae1fcd4e', 'Prestasi', false, true);
  END IF;

  -- [VOCABULARY] 匂い (Level 32)
  UPDATE item_meanings SET meaning = 'Aroma', primary_meaning = true, accepted_answer = true WHERE id = '6dd04c38-3f05-4455-950e-5ff1abb03665';
  UPDATE items SET slug = 'aroma' WHERE id = '0fce221a-6552-457f-846d-57c939677d6a';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '0fce221a-6552-457f-846d-57c939677d6a' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Bau'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('0fce221a-6552-457f-846d-57c939677d6a', 'Bau', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '0fce221a-6552-457f-846d-57c939677d6a' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Scent'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('0fce221a-6552-457f-846d-57c939677d6a', 'Scent', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '0fce221a-6552-457f-846d-57c939677d6a' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Smell'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('0fce221a-6552-457f-846d-57c939677d6a', 'Smell', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '0fce221a-6552-457f-846d-57c939677d6a' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Odor'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('0fce221a-6552-457f-846d-57c939677d6a', 'Odor', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '0fce221a-6552-457f-846d-57c939677d6a' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Odour'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('0fce221a-6552-457f-846d-57c939677d6a', 'Odour', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '0fce221a-6552-457f-846d-57c939677d6a' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Fragrance'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('0fce221a-6552-457f-846d-57c939677d6a', 'Fragrance', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '0fce221a-6552-457f-846d-57c939677d6a' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Stench'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('0fce221a-6552-457f-846d-57c939677d6a', 'Stench', false, true);
  END IF;

  -- [VOCABULARY] 厳しい (Level 32)
  UPDATE item_meanings SET meaning = 'Ketat', primary_meaning = true, accepted_answer = true WHERE id = 'dc4b5bc8-6741-4270-bca1-887f1af6355e';
  UPDATE items SET slug = 'ketat' WHERE id = 'd182518b-56ad-424f-bc7f-c84c9bc53e72';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'd182518b-56ad-424f-bc7f-c84c9bc53e72' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Tegas'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('d182518b-56ad-424f-bc7f-c84c9bc53e72', 'Tegas', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'd182518b-56ad-424f-bc7f-c84c9bc53e72' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Keras'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('d182518b-56ad-424f-bc7f-c84c9bc53e72', 'Keras', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'd182518b-56ad-424f-bc7f-c84c9bc53e72' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Strict'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('d182518b-56ad-424f-bc7f-c84c9bc53e72', 'Strict', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'd182518b-56ad-424f-bc7f-c84c9bc53e72' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Harsh'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('d182518b-56ad-424f-bc7f-c84c9bc53e72', 'Harsh', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'd182518b-56ad-424f-bc7f-c84c9bc53e72' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Severe'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('d182518b-56ad-424f-bc7f-c84c9bc53e72', 'Severe', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'd182518b-56ad-424f-bc7f-c84c9bc53e72' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Kasar'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('d182518b-56ad-424f-bc7f-c84c9bc53e72', 'Kasar', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'd182518b-56ad-424f-bc7f-c84c9bc53e72' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Berat'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('d182518b-56ad-424f-bc7f-c84c9bc53e72', 'Berat', false, true);
  END IF;

  -- [VOCABULARY] 大騒ぎ (Level 32)
  UPDATE item_meanings SET meaning = 'Keributan Besar', primary_meaning = true, accepted_answer = true WHERE id = '81bf1d32-eb54-4635-8a1b-c402a61bda88';
  UPDATE items SET slug = 'keributan-besar' WHERE id = 'b8a9b6f6-e0e7-4e83-bfa4-2c8ed417e894';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'b8a9b6f6-e0e7-4e83-bfa4-2c8ed417e894' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Kegaduhan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('b8a9b6f6-e0e7-4e83-bfa4-2c8ed417e894', 'Kegaduhan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'b8a9b6f6-e0e7-4e83-bfa4-2c8ed417e894' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Keributan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('b8a9b6f6-e0e7-4e83-bfa4-2c8ed417e894', 'Keributan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'b8a9b6f6-e0e7-4e83-bfa4-2c8ed417e894' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Uproar'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('b8a9b6f6-e0e7-4e83-bfa4-2c8ed417e894', 'Uproar', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'b8a9b6f6-e0e7-4e83-bfa4-2c8ed417e894' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Clamor'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('b8a9b6f6-e0e7-4e83-bfa4-2c8ed417e894', 'Clamor', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'b8a9b6f6-e0e7-4e83-bfa4-2c8ed417e894' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Big Noise'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('b8a9b6f6-e0e7-4e83-bfa4-2c8ed417e894', 'Big Noise', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'b8a9b6f6-e0e7-4e83-bfa4-2c8ed417e894' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Kegemparan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('b8a9b6f6-e0e7-4e83-bfa4-2c8ed417e894', 'Kegemparan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'b8a9b6f6-e0e7-4e83-bfa4-2c8ed417e894' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Kebisingan Besar'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('b8a9b6f6-e0e7-4e83-bfa4-2c8ed417e894', 'Kebisingan Besar', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'b8a9b6f6-e0e7-4e83-bfa4-2c8ed417e894' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Clamour'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('b8a9b6f6-e0e7-4e83-bfa4-2c8ed417e894', 'Clamour', false, true);
  END IF;

  -- [VOCABULARY] 密か (Level 32)
  UPDATE item_meanings SET meaning = 'Diam-diam', primary_meaning = true, accepted_answer = true WHERE id = '285512b8-4a96-438c-94be-d89969085dca';
  UPDATE items SET slug = 'diam-diam' WHERE id = '6e2ea3c8-964b-4169-a8f8-605b3097c5e8';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '6e2ea3c8-964b-4169-a8f8-605b3097c5e8' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Sembunyi-sembunyi'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('6e2ea3c8-964b-4169-a8f8-605b3097c5e8', 'Sembunyi-sembunyi', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '6e2ea3c8-964b-4169-a8f8-605b3097c5e8' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Rahasia'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('6e2ea3c8-964b-4169-a8f8-605b3097c5e8', 'Rahasia', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '6e2ea3c8-964b-4169-a8f8-605b3097c5e8' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Secret'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('6e2ea3c8-964b-4169-a8f8-605b3097c5e8', 'Secret', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '6e2ea3c8-964b-4169-a8f8-605b3097c5e8' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Private'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('6e2ea3c8-964b-4169-a8f8-605b3097c5e8', 'Private', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '6e2ea3c8-964b-4169-a8f8-605b3097c5e8' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Pribadi'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('6e2ea3c8-964b-4169-a8f8-605b3097c5e8', 'Pribadi', false, true);
  END IF;

  -- [VOCABULARY] 密会 (Level 32)
  UPDATE item_meanings SET meaning = 'Pertemuan Rahasia', primary_meaning = true, accepted_answer = true WHERE id = '6b8ffd85-70b4-4c44-900a-00d5222b85a6';
  UPDATE items SET slug = 'pertemuan-rahasia' WHERE id = '4a0aec1b-5eed-4377-9aea-7d7e47023da4';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '4a0aec1b-5eed-4377-9aea-7d7e47023da4' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Kencan Gelap'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('4a0aec1b-5eed-4377-9aea-7d7e47023da4', 'Kencan Gelap', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '4a0aec1b-5eed-4377-9aea-7d7e47023da4' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Secret Meeting'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('4a0aec1b-5eed-4377-9aea-7d7e47023da4', 'Secret Meeting', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '4a0aec1b-5eed-4377-9aea-7d7e47023da4' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Clandestine Meeting'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('4a0aec1b-5eed-4377-9aea-7d7e47023da4', 'Clandestine Meeting', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '4a0aec1b-5eed-4377-9aea-7d7e47023da4' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Pertemuan Klandestin'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('4a0aec1b-5eed-4377-9aea-7d7e47023da4', 'Pertemuan Klandestin', false, true);
  END IF;

  -- [VOCABULARY] 密告 (Level 32)
  UPDATE item_meanings SET meaning = 'Mengadukan Diam-diam', primary_meaning = true, accepted_answer = true WHERE id = '32370a07-608c-4fa8-b258-7bf7c0b9ebda';
  UPDATE items SET slug = 'mengadukan-diam-diam' WHERE id = '66604431-545c-4f13-afc4-5bc35aa268c4';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '66604431-545c-4f13-afc4-5bc35aa268c4' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Membocorkan Rahasia'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('66604431-545c-4f13-afc4-5bc35aa268c4', 'Membocorkan Rahasia', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '66604431-545c-4f13-afc4-5bc35aa268c4' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Tip-Off'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('66604431-545c-4f13-afc4-5bc35aa268c4', 'Tip-Off', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '66604431-545c-4f13-afc4-5bc35aa268c4' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Snitch'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('66604431-545c-4f13-afc4-5bc35aa268c4', 'Snitch', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '66604431-545c-4f13-afc4-5bc35aa268c4' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Secret Informing'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('66604431-545c-4f13-afc4-5bc35aa268c4', 'Secret Informing', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '66604431-545c-4f13-afc4-5bc35aa268c4' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Inform'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('66604431-545c-4f13-afc4-5bc35aa268c4', 'Inform', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '66604431-545c-4f13-afc4-5bc35aa268c4' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Informing'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('66604431-545c-4f13-afc4-5bc35aa268c4', 'Informing', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '66604431-545c-4f13-afc4-5bc35aa268c4' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Snitching'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('66604431-545c-4f13-afc4-5bc35aa268c4', 'Snitching', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '66604431-545c-4f13-afc4-5bc35aa268c4' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Menginformasikan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('66604431-545c-4f13-afc4-5bc35aa268c4', 'Menginformasikan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '66604431-545c-4f13-afc4-5bc35aa268c4' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Secretly Informing'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('66604431-545c-4f13-afc4-5bc35aa268c4', 'Secretly Informing', false, true);
  END IF;

  -- [VOCABULARY] 延長する (Level 32)
  UPDATE item_meanings SET meaning = 'Memperpanjang', primary_meaning = true, accepted_answer = true WHERE id = '89a52872-a282-4c63-9820-4bc7123c7ac4';
  UPDATE items SET slug = 'memperpanjang' WHERE id = 'a93f4082-3950-444e-b000-ca6f947a933e';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'a93f4082-3950-444e-b000-ca6f947a933e' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Memperpanjang Waktu'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('a93f4082-3950-444e-b000-ca6f947a933e', 'Memperpanjang Waktu', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'a93f4082-3950-444e-b000-ca6f947a933e' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Ekstensi'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('a93f4082-3950-444e-b000-ca6f947a933e', 'Ekstensi', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'a93f4082-3950-444e-b000-ca6f947a933e' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Extend'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('a93f4082-3950-444e-b000-ca6f947a933e', 'To Extend', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'a93f4082-3950-444e-b000-ca6f947a933e' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Memperpanjang (Waktu'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('a93f4082-3950-444e-b000-ca6f947a933e', 'Memperpanjang (Waktu', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'a93f4082-3950-444e-b000-ca6f947a933e' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Durasi)'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('a93f4082-3950-444e-b000-ca6f947a933e', 'Durasi)', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'a93f4082-3950-444e-b000-ca6f947a933e' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Untuk Memperpanjang'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('a93f4082-3950-444e-b000-ca6f947a933e', 'Untuk Memperpanjang', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'a93f4082-3950-444e-b000-ca6f947a933e' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Prolong'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('a93f4082-3950-444e-b000-ca6f947a933e', 'To Prolong', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'a93f4082-3950-444e-b000-ca6f947a933e' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Untuk Memperluas'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('a93f4082-3950-444e-b000-ca6f947a933e', 'Untuk Memperluas', false, true);
  END IF;

  -- [VOCABULARY] 志 (Level 32)
  UPDATE item_meanings SET meaning = 'Tekad', primary_meaning = true, accepted_answer = true WHERE id = '5442cd2a-baa5-4a60-be46-c1799b2ff437';
  UPDATE items SET slug = 'tekad' WHERE id = '491b2361-7b25-4342-9058-e5b176355ead';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '491b2361-7b25-4342-9058-e5b176355ead' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Niat Hati'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('491b2361-7b25-4342-9058-e5b176355ead', 'Niat Hati', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '491b2361-7b25-4342-9058-e5b176355ead' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Cita-cita'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('491b2361-7b25-4342-9058-e5b176355ead', 'Cita-cita', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '491b2361-7b25-4342-9058-e5b176355ead' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Ambisi'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('491b2361-7b25-4342-9058-e5b176355ead', 'Ambisi', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '491b2361-7b25-4342-9058-e5b176355ead' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Aspiration'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('491b2361-7b25-4342-9058-e5b176355ead', 'Aspiration', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '491b2361-7b25-4342-9058-e5b176355ead' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Will'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('491b2361-7b25-4342-9058-e5b176355ead', 'Will', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '491b2361-7b25-4342-9058-e5b176355ead' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Intention'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('491b2361-7b25-4342-9058-e5b176355ead', 'Intention', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '491b2361-7b25-4342-9058-e5b176355ead' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Resolution'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('491b2361-7b25-4342-9058-e5b176355ead', 'Resolution', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '491b2361-7b25-4342-9058-e5b176355ead' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Aim'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('491b2361-7b25-4342-9058-e5b176355ead', 'Aim', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '491b2361-7b25-4342-9058-e5b176355ead' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Ambition'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('491b2361-7b25-4342-9058-e5b176355ead', 'Ambition', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '491b2361-7b25-4342-9058-e5b176355ead' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Maksud'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('491b2361-7b25-4342-9058-e5b176355ead', 'Maksud', false, true);
  END IF;

  -- [VOCABULARY] 志望 (Level 32)
  UPDATE item_meanings SET meaning = 'Pilihan Cita-cita', primary_meaning = true, accepted_answer = true WHERE id = '89b5a827-c607-4753-ba6f-db68c1af3a31';
  UPDATE items SET slug = 'pilihan-cita-cita' WHERE id = '6a7c9a10-1b25-41c3-a70b-65dd3d16014c';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '6a7c9a10-1b25-41c3-a70b-65dd3d16014c' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Aspirasi'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('6a7c9a10-1b25-41c3-a70b-65dd3d16014c', 'Aspirasi', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '6a7c9a10-1b25-41c3-a70b-65dd3d16014c' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Menginginkan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('6a7c9a10-1b25-41c3-a70b-65dd3d16014c', 'Menginginkan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '6a7c9a10-1b25-41c3-a70b-65dd3d16014c' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Wish'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('6a7c9a10-1b25-41c3-a70b-65dd3d16014c', 'Wish', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '6a7c9a10-1b25-41c3-a70b-65dd3d16014c' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Ambition'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('6a7c9a10-1b25-41c3-a70b-65dd3d16014c', 'Ambition', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '6a7c9a10-1b25-41c3-a70b-65dd3d16014c' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Choice'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('6a7c9a10-1b25-41c3-a70b-65dd3d16014c', 'Choice', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '6a7c9a10-1b25-41c3-a70b-65dd3d16014c' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Melamar'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('6a7c9a10-1b25-41c3-a70b-65dd3d16014c', 'Melamar', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '6a7c9a10-1b25-41c3-a70b-65dd3d16014c' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Apply'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('6a7c9a10-1b25-41c3-a70b-65dd3d16014c', 'Apply', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '6a7c9a10-1b25-41c3-a70b-65dd3d16014c' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Applying'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('6a7c9a10-1b25-41c3-a70b-65dd3d16014c', 'Applying', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '6a7c9a10-1b25-41c3-a70b-65dd3d16014c' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Desire'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('6a7c9a10-1b25-41c3-a70b-65dd3d16014c', 'Desire', false, true);
  END IF;

  -- [VOCABULARY] 恐い (Level 32)
  UPDATE item_meanings SET meaning = 'Menakutkan', primary_meaning = true, accepted_answer = true WHERE id = '05475804-f5b3-4f10-8c3d-fb4aae2aa5ec';
  UPDATE items SET slug = 'menakutkan' WHERE id = 'dd7d6865-e4a4-43a0-bfb3-715ea0d64857';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'dd7d6865-e4a4-43a0-bfb3-715ea0d64857' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Seram'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('dd7d6865-e4a4-43a0-bfb3-715ea0d64857', 'Seram', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'dd7d6865-e4a4-43a0-bfb3-715ea0d64857' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Bikin Takut'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('dd7d6865-e4a4-43a0-bfb3-715ea0d64857', 'Bikin Takut', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'dd7d6865-e4a4-43a0-bfb3-715ea0d64857' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Scary'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('dd7d6865-e4a4-43a0-bfb3-715ea0d64857', 'Scary', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'dd7d6865-e4a4-43a0-bfb3-715ea0d64857' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Afraid'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('dd7d6865-e4a4-43a0-bfb3-715ea0d64857', 'Afraid', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'dd7d6865-e4a4-43a0-bfb3-715ea0d64857' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Frightening'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('dd7d6865-e4a4-43a0-bfb3-715ea0d64857', 'Frightening', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'dd7d6865-e4a4-43a0-bfb3-715ea0d64857' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Feeling Scared'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('dd7d6865-e4a4-43a0-bfb3-715ea0d64857', 'Feeling Scared', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'dd7d6865-e4a4-43a0-bfb3-715ea0d64857' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Spooky'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('dd7d6865-e4a4-43a0-bfb3-715ea0d64857', 'Spooky', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'dd7d6865-e4a4-43a0-bfb3-715ea0d64857' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Horrifying'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('dd7d6865-e4a4-43a0-bfb3-715ea0d64857', 'Horrifying', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'dd7d6865-e4a4-43a0-bfb3-715ea0d64857' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Horrible'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('dd7d6865-e4a4-43a0-bfb3-715ea0d64857', 'Horrible', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'dd7d6865-e4a4-43a0-bfb3-715ea0d64857' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Dreadful'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('dd7d6865-e4a4-43a0-bfb3-715ea0d64857', 'Dreadful', false, true);
  END IF;

  -- [VOCABULARY] 恩人 (Level 32)
  UPDATE item_meanings SET meaning = 'Orang Yang Berjasa', primary_meaning = true, accepted_answer = true WHERE id = '2b9e9b51-9258-4b79-b38a-d56607aca42a';
  UPDATE items SET slug = 'orang-yang-berjasa' WHERE id = 'ca25aa38-8cf8-4298-85ab-1f9a464c338d';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'ca25aa38-8cf8-4298-85ab-1f9a464c338d' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Penolong Hidup'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('ca25aa38-8cf8-4298-85ab-1f9a464c338d', 'Penolong Hidup', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'ca25aa38-8cf8-4298-85ab-1f9a464c338d' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Dermawan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('ca25aa38-8cf8-4298-85ab-1f9a464c338d', 'Dermawan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'ca25aa38-8cf8-4298-85ab-1f9a464c338d' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Benefactor'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('ca25aa38-8cf8-4298-85ab-1f9a464c338d', 'Benefactor', false, true);
  END IF;

  -- [VOCABULARY] 恩賞 (Level 32)
  UPDATE item_meanings SET meaning = 'Hadiah Penghargaan', primary_meaning = true, accepted_answer = true WHERE id = 'f77e2f2d-5c39-49bd-9e3f-89a096a67df1';
  UPDATE items SET slug = 'hadiah-penghargaan' WHERE id = '26bd8422-d818-4b97-8bed-a0db6bb581ad';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '26bd8422-d818-4b97-8bed-a0db6bb581ad' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Imbalan Jasa'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('26bd8422-d818-4b97-8bed-a0db6bb581ad', 'Imbalan Jasa', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '26bd8422-d818-4b97-8bed-a0db6bb581ad' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Hadiah'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('26bd8422-d818-4b97-8bed-a0db6bb581ad', 'Hadiah', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '26bd8422-d818-4b97-8bed-a0db6bb581ad' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Reward'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('26bd8422-d818-4b97-8bed-a0db6bb581ad', 'Reward', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '26bd8422-d818-4b97-8bed-a0db6bb581ad' AND LOWER(TRIM(meaning)) = LOWER(TRIM('A Reward'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('26bd8422-d818-4b97-8bed-a0db6bb581ad', 'A Reward', false, true);
  END IF;

  -- [VOCABULARY] 意志 (Level 32)
  UPDATE item_meanings SET meaning = 'Tekad', primary_meaning = true, accepted_answer = true WHERE id = '2f2b643e-aee0-47ac-a4a0-9e4567867af0';
  UPDATE items SET slug = 'tekad' WHERE id = 'f65d7b8a-ab66-43cc-a041-c8fbd7468321';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'f65d7b8a-ab66-43cc-a041-c8fbd7468321' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Kemauan Kuat'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('f65d7b8a-ab66-43cc-a041-c8fbd7468321', 'Kemauan Kuat', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'f65d7b8a-ab66-43cc-a041-c8fbd7468321' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Akan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('f65d7b8a-ab66-43cc-a041-c8fbd7468321', 'Akan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'f65d7b8a-ab66-43cc-a041-c8fbd7468321' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Will'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('f65d7b8a-ab66-43cc-a041-c8fbd7468321', 'Will', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'f65d7b8a-ab66-43cc-a041-c8fbd7468321' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Volition'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('f65d7b8a-ab66-43cc-a041-c8fbd7468321', 'Volition', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'f65d7b8a-ab66-43cc-a041-c8fbd7468321' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Intention'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('f65d7b8a-ab66-43cc-a041-c8fbd7468321', 'Intention', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'f65d7b8a-ab66-43cc-a041-c8fbd7468321' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Kemauan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('f65d7b8a-ab66-43cc-a041-c8fbd7468321', 'Kemauan', false, true);
  END IF;

  -- [VOCABULARY] 意欲 (Level 32)
  UPDATE item_meanings SET meaning = 'Semangat Hasrat', primary_meaning = true, accepted_answer = true WHERE id = '3d58e198-bffa-4a1c-8aa0-306724fbaed8';
  UPDATE items SET slug = 'semangat-hasrat' WHERE id = 'eb557145-b7bd-4bae-a3b4-da5beb3d3214';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'eb557145-b7bd-4bae-a3b4-da5beb3d3214' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Dorongan Kuat'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('eb557145-b7bd-4bae-a3b4-da5beb3d3214', 'Dorongan Kuat', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'eb557145-b7bd-4bae-a3b4-da5beb3d3214' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Akan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('eb557145-b7bd-4bae-a3b4-da5beb3d3214', 'Akan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'eb557145-b7bd-4bae-a3b4-da5beb3d3214' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Desire'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('eb557145-b7bd-4bae-a3b4-da5beb3d3214', 'Desire', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'eb557145-b7bd-4bae-a3b4-da5beb3d3214' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Ambition'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('eb557145-b7bd-4bae-a3b4-da5beb3d3214', 'Ambition', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'eb557145-b7bd-4bae-a3b4-da5beb3d3214' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Will'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('eb557145-b7bd-4bae-a3b4-da5beb3d3214', 'Will', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'eb557145-b7bd-4bae-a3b4-da5beb3d3214' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Ambisi'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('eb557145-b7bd-4bae-a3b4-da5beb3d3214', 'Ambisi', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'eb557145-b7bd-4bae-a3b4-da5beb3d3214' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Menginginkan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('eb557145-b7bd-4bae-a3b4-da5beb3d3214', 'Menginginkan', false, true);
  END IF;

  -- [VOCABULARY] 感染 (Level 32)
  UPDATE item_meanings SET meaning = 'Penularan', primary_meaning = true, accepted_answer = true WHERE id = '3b06ac85-3816-4050-aeca-3a5c53f503bb';
  UPDATE items SET slug = 'penularan' WHERE id = '1d620936-b13f-4de3-8520-c2bee017204e';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '1d620936-b13f-4de3-8520-c2bee017204e' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Infeksi'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('1d620936-b13f-4de3-8520-c2bee017204e', 'Infeksi', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '1d620936-b13f-4de3-8520-c2bee017204e' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Infection'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('1d620936-b13f-4de3-8520-c2bee017204e', 'Infection', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '1d620936-b13f-4de3-8520-c2bee017204e' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Contagion'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('1d620936-b13f-4de3-8520-c2bee017204e', 'Contagion', false, true);
  END IF;

  -- [VOCABULARY] 懐 (Level 32)
  UPDATE item_meanings SET meaning = 'Saku Dada Dalam', primary_meaning = true, accepted_answer = true WHERE id = '53543407-7b11-4765-a1c4-31a5e5a34627';
  UPDATE items SET slug = 'saku-dada-dalam' WHERE id = '53027536-468c-4bc9-86f8-0f4c901e8b72';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '53027536-468c-4bc9-86f8-0f4c901e8b72' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Kantong Hati'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('53027536-468c-4bc9-86f8-0f4c901e8b72', 'Kantong Hati', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '53027536-468c-4bc9-86f8-0f4c901e8b72' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Saku Dada'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('53027536-468c-4bc9-86f8-0f4c901e8b72', 'Saku Dada', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '53027536-468c-4bc9-86f8-0f4c901e8b72' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Breast Pocket'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('53027536-468c-4bc9-86f8-0f4c901e8b72', 'Breast Pocket', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '53027536-468c-4bc9-86f8-0f4c901e8b72' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Bosom'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('53027536-468c-4bc9-86f8-0f4c901e8b72', 'Bosom', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '53027536-468c-4bc9-86f8-0f4c901e8b72' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Inner Breast Pocket'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('53027536-468c-4bc9-86f8-0f4c901e8b72', 'Inner Breast Pocket', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '53027536-468c-4bc9-86f8-0f4c901e8b72' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Inner Chest Pocket'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('53027536-468c-4bc9-86f8-0f4c901e8b72', 'Inner Chest Pocket', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '53027536-468c-4bc9-86f8-0f4c901e8b72' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Breast'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('53027536-468c-4bc9-86f8-0f4c901e8b72', 'Breast', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '53027536-468c-4bc9-86f8-0f4c901e8b72' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Chest Pocket'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('53027536-468c-4bc9-86f8-0f4c901e8b72', 'Chest Pocket', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '53027536-468c-4bc9-86f8-0f4c901e8b72' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Inner Pocket'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('53027536-468c-4bc9-86f8-0f4c901e8b72', 'Inner Pocket', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '53027536-468c-4bc9-86f8-0f4c901e8b72' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Bosom Pocket'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('53027536-468c-4bc9-86f8-0f4c901e8b72', 'Bosom Pocket', false, true);
  END IF;

  -- [VOCABULARY] 成績 (Level 32)
  UPDATE item_meanings SET meaning = 'Nilai Rapor', primary_meaning = true, accepted_answer = true WHERE id = 'cff0ed52-eb6c-40e8-8030-72c546d4cfc2';
  UPDATE items SET slug = 'nilai-rapor' WHERE id = '5339a445-1d94-46eb-ad47-e5dbb1072276';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '5339a445-1d94-46eb-ad47-e5dbb1072276' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Catatan Prestasi'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('5339a445-1d94-46eb-ad47-e5dbb1072276', 'Catatan Prestasi', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '5339a445-1d94-46eb-ad47-e5dbb1072276' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Nilai'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('5339a445-1d94-46eb-ad47-e5dbb1072276', 'Nilai', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '5339a445-1d94-46eb-ad47-e5dbb1072276' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Grades'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('5339a445-1d94-46eb-ad47-e5dbb1072276', 'Grades', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '5339a445-1d94-46eb-ad47-e5dbb1072276' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Marks'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('5339a445-1d94-46eb-ad47-e5dbb1072276', 'Marks', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '5339a445-1d94-46eb-ad47-e5dbb1072276' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Results'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('5339a445-1d94-46eb-ad47-e5dbb1072276', 'Results', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '5339a445-1d94-46eb-ad47-e5dbb1072276' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Peringkat'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('5339a445-1d94-46eb-ad47-e5dbb1072276', 'Peringkat', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '5339a445-1d94-46eb-ad47-e5dbb1072276' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Ranking'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('5339a445-1d94-46eb-ad47-e5dbb1072276', 'Ranking', false, true);
  END IF;

  -- [VOCABULARY] 採る (Level 32)
  UPDATE item_meanings SET meaning = 'Memetik', primary_meaning = true, accepted_answer = true WHERE id = 'bbacd7bc-6698-4f36-a101-d7ade8afb242';
  UPDATE items SET slug = 'memetik' WHERE id = '3210b272-0855-4c74-90ec-dd634876715e';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '3210b272-0855-4c74-90ec-dd634876715e' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Mengambil'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('3210b272-0855-4c74-90ec-dd634876715e', 'Mengambil', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '3210b272-0855-4c74-90ec-dd634876715e' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Menerima Kerja'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('3210b272-0855-4c74-90ec-dd634876715e', 'Menerima Kerja', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '3210b272-0855-4c74-90ec-dd634876715e' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Untuk Berkumpul'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('3210b272-0855-4c74-90ec-dd634876715e', 'Untuk Berkumpul', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '3210b272-0855-4c74-90ec-dd634876715e' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Pick'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('3210b272-0855-4c74-90ec-dd634876715e', 'To Pick', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '3210b272-0855-4c74-90ec-dd634876715e' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Gather'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('3210b272-0855-4c74-90ec-dd634876715e', 'To Gather', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '3210b272-0855-4c74-90ec-dd634876715e' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Take'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('3210b272-0855-4c74-90ec-dd634876715e', 'To Take', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '3210b272-0855-4c74-90ec-dd634876715e' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Catch'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('3210b272-0855-4c74-90ec-dd634876715e', 'To Catch', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '3210b272-0855-4c74-90ec-dd634876715e' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Untuk Mengambil'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('3210b272-0855-4c74-90ec-dd634876715e', 'Untuk Mengambil', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '3210b272-0855-4c74-90ec-dd634876715e' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Untuk Memilih'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('3210b272-0855-4c74-90ec-dd634876715e', 'Untuk Memilih', false, true);
  END IF;

  -- [VOCABULARY] 採用 (Level 32)
  UPDATE item_meanings SET meaning = 'Penerimaan Kerja', primary_meaning = true, accepted_answer = true WHERE id = '8a07c718-a05c-47ca-a1f4-3c85923e76fe';
  UPDATE items SET slug = 'penerimaan-kerja' WHERE id = 'c256d3d7-8834-4338-a7d5-98976941ddac';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'c256d3d7-8834-4338-a7d5-98976941ddac' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Mengadopsi Cara'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('c256d3d7-8834-4338-a7d5-98976941ddac', 'Mengadopsi Cara', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'c256d3d7-8834-4338-a7d5-98976941ddac' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Menggunakan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('c256d3d7-8834-4338-a7d5-98976941ddac', 'Menggunakan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'c256d3d7-8834-4338-a7d5-98976941ddac' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Employment'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('c256d3d7-8834-4338-a7d5-98976941ddac', 'Employment', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'c256d3d7-8834-4338-a7d5-98976941ddac' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Adoption'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('c256d3d7-8834-4338-a7d5-98976941ddac', 'Adoption', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'c256d3d7-8834-4338-a7d5-98976941ddac' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Use'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('c256d3d7-8834-4338-a7d5-98976941ddac', 'Use', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'c256d3d7-8834-4338-a7d5-98976941ddac' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Acceptance'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('c256d3d7-8834-4338-a7d5-98976941ddac', 'Acceptance', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'c256d3d7-8834-4338-a7d5-98976941ddac' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Adopsi'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('c256d3d7-8834-4338-a7d5-98976941ddac', 'Adopsi', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'c256d3d7-8834-4338-a7d5-98976941ddac' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Penerimaan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('c256d3d7-8834-4338-a7d5-98976941ddac', 'Penerimaan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'c256d3d7-8834-4338-a7d5-98976941ddac' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Pekerjaan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('c256d3d7-8834-4338-a7d5-98976941ddac', 'Pekerjaan', false, true);
  END IF;

  -- [VOCABULARY] 採算 (Level 32)
  UPDATE item_meanings SET meaning = 'Kelayakan Finansial', primary_meaning = true, accepted_answer = true WHERE id = 'e78fd708-c2c9-4e88-80c3-b4c4ec395a59';
  UPDATE items SET slug = 'kelayakan-finansial' WHERE id = '1621a659-fbd4-474a-af3b-43763db77365';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '1621a659-fbd4-474a-af3b-43763db77365' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Titik Impas Keuntungan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('1621a659-fbd4-474a-af3b-43763db77365', 'Titik Impas Keuntungan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '1621a659-fbd4-474a-af3b-43763db77365' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Laba'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('1621a659-fbd4-474a-af3b-43763db77365', 'Laba', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '1621a659-fbd4-474a-af3b-43763db77365' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Profit'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('1621a659-fbd4-474a-af3b-43763db77365', 'Profit', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '1621a659-fbd4-474a-af3b-43763db77365' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Profitability'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('1621a659-fbd4-474a-af3b-43763db77365', 'Profitability', false, true);
  END IF;

  -- [VOCABULARY] 撮影禁止 (Level 32)
  UPDATE item_meanings SET meaning = 'Dilarang Memotret', primary_meaning = true, accepted_answer = true WHERE id = 'e3aaf737-13e4-4c86-aa6e-d47e7d54c5ea';
  UPDATE items SET slug = 'dilarang-memotret' WHERE id = '38aa3c10-dc7b-4b8a-ae24-a38060476498';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '38aa3c10-dc7b-4b8a-ae24-a38060476498' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Mengambil Foto'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('38aa3c10-dc7b-4b8a-ae24-a38060476498', 'Mengambil Foto', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '38aa3c10-dc7b-4b8a-ae24-a38060476498' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Tidak Ada Foto'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('38aa3c10-dc7b-4b8a-ae24-a38060476498', 'Tidak Ada Foto', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '38aa3c10-dc7b-4b8a-ae24-a38060476498' AND LOWER(TRIM(meaning)) = LOWER(TRIM('No Photography'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('38aa3c10-dc7b-4b8a-ae24-a38060476498', 'No Photography', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '38aa3c10-dc7b-4b8a-ae24-a38060476498' AND LOWER(TRIM(meaning)) = LOWER(TRIM('No Photos Allowed'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('38aa3c10-dc7b-4b8a-ae24-a38060476498', 'No Photos Allowed', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '38aa3c10-dc7b-4b8a-ae24-a38060476498' AND LOWER(TRIM(meaning)) = LOWER(TRIM('No Photography Allowed'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('38aa3c10-dc7b-4b8a-ae24-a38060476498', 'No Photography Allowed', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '38aa3c10-dc7b-4b8a-ae24-a38060476498' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Tidak Ada Foto yang Diizinkan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('38aa3c10-dc7b-4b8a-ae24-a38060476498', 'Tidak Ada Foto yang Diizinkan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '38aa3c10-dc7b-4b8a-ae24-a38060476498' AND LOWER(TRIM(meaning)) = LOWER(TRIM('No Photos'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('38aa3c10-dc7b-4b8a-ae24-a38060476498', 'No Photos', false, true);
  END IF;

  -- [VOCABULARY] 染める (Level 32)
  UPDATE item_meanings SET meaning = 'Mencelup Warna', primary_meaning = true, accepted_answer = true WHERE id = '49793bad-ebc2-41fb-bede-e794ae61363e';
  UPDATE items SET slug = 'mencelup-warna' WHERE id = '7cca829a-f898-439c-9929-0e341d5cd169';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '7cca829a-f898-439c-9929-0e341d5cd169' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Mewarnai'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('7cca829a-f898-439c-9929-0e341d5cd169', 'Mewarnai', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '7cca829a-f898-439c-9929-0e341d5cd169' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Untuk Pewarna'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('7cca829a-f898-439c-9929-0e341d5cd169', 'Untuk Pewarna', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '7cca829a-f898-439c-9929-0e341d5cd169' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Dye'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('7cca829a-f898-439c-9929-0e341d5cd169', 'To Dye', false, true);
  END IF;

  -- [VOCABULARY] 欲しい (Level 32)
  UPDATE item_meanings SET meaning = 'Ingin', primary_meaning = true, accepted_answer = true WHERE id = '3287daff-6977-4a5c-8431-67e70e77336a';
  UPDATE items SET slug = 'ingin' WHERE id = 'b6efb0b3-5d30-4df4-9e09-f5a162130c8b';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'b6efb0b3-5d30-4df4-9e09-f5a162130c8b' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Mau Memiliki'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('b6efb0b3-5d30-4df4-9e09-f5a162130c8b', 'Mau Memiliki', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'b6efb0b3-5d30-4df4-9e09-f5a162130c8b' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Diinginkan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('b6efb0b3-5d30-4df4-9e09-f5a162130c8b', 'Diinginkan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'b6efb0b3-5d30-4df4-9e09-f5a162130c8b' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Want'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('b6efb0b3-5d30-4df4-9e09-f5a162130c8b', 'Want', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'b6efb0b3-5d30-4df4-9e09-f5a162130c8b' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Desired'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('b6efb0b3-5d30-4df4-9e09-f5a162130c8b', 'Desired', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'b6efb0b3-5d30-4df4-9e09-f5a162130c8b' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Desire'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('b6efb0b3-5d30-4df4-9e09-f5a162130c8b', 'Desire', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'b6efb0b3-5d30-4df4-9e09-f5a162130c8b' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Desire'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('b6efb0b3-5d30-4df4-9e09-f5a162130c8b', 'To Desire', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'b6efb0b3-5d30-4df4-9e09-f5a162130c8b' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Want'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('b6efb0b3-5d30-4df4-9e09-f5a162130c8b', 'To Want', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'b6efb0b3-5d30-4df4-9e09-f5a162130c8b' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Wanted'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('b6efb0b3-5d30-4df4-9e09-f5a162130c8b', 'Wanted', false, true);
  END IF;

  -- [VOCABULARY] 欲求 (Level 32)
  UPDATE item_meanings SET meaning = 'Kebutuhan Hasrat', primary_meaning = true, accepted_answer = true WHERE id = '890969ca-941a-44fb-81bb-c7b7782bedc6';
  UPDATE items SET slug = 'kebutuhan-hasrat' WHERE id = '843af06b-de08-4212-a5fc-2b93d253e468';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '843af06b-de08-4212-a5fc-2b93d253e468' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Keinginan Dasar'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('843af06b-de08-4212-a5fc-2b93d253e468', 'Keinginan Dasar', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '843af06b-de08-4212-a5fc-2b93d253e468' AND LOWER(TRIM(meaning)) = LOWER(TRIM('ingin'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('843af06b-de08-4212-a5fc-2b93d253e468', 'ingin', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '843af06b-de08-4212-a5fc-2b93d253e468' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Desire'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('843af06b-de08-4212-a5fc-2b93d253e468', 'Desire', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '843af06b-de08-4212-a5fc-2b93d253e468' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Craving'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('843af06b-de08-4212-a5fc-2b93d253e468', 'Craving', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '843af06b-de08-4212-a5fc-2b93d253e468' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Needs'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('843af06b-de08-4212-a5fc-2b93d253e468', 'Needs', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '843af06b-de08-4212-a5fc-2b93d253e468' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Keinginan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('843af06b-de08-4212-a5fc-2b93d253e468', 'Keinginan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '843af06b-de08-4212-a5fc-2b93d253e468' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Personal Needs'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('843af06b-de08-4212-a5fc-2b93d253e468', 'Personal Needs', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '843af06b-de08-4212-a5fc-2b93d253e468' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Desires'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('843af06b-de08-4212-a5fc-2b93d253e468', 'Desires', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '843af06b-de08-4212-a5fc-2b93d253e468' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Wants'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('843af06b-de08-4212-a5fc-2b93d253e468', 'Wants', false, true);
  END IF;

  -- [VOCABULARY] 永久 (Level 32)
  UPDATE item_meanings SET meaning = 'Abadi', primary_meaning = true, accepted_answer = true WHERE id = '8b85348f-c365-4d6f-8b3d-6b560066fbb8';
  UPDATE items SET slug = 'abadi' WHERE id = 'b21f1461-0ce0-4885-9cb4-8843456b6e1f';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'b21f1461-0ce0-4885-9cb4-8843456b6e1f' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Selamanya'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('b21f1461-0ce0-4885-9cb4-8843456b6e1f', 'Selamanya', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'b21f1461-0ce0-4885-9cb4-8843456b6e1f' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Eternity'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('b21f1461-0ce0-4885-9cb4-8843456b6e1f', 'Eternity', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'b21f1461-0ce0-4885-9cb4-8843456b6e1f' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Forever'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('b21f1461-0ce0-4885-9cb4-8843456b6e1f', 'Forever', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'b21f1461-0ce0-4885-9cb4-8843456b6e1f' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Keabadian'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('b21f1461-0ce0-4885-9cb4-8843456b6e1f', 'Keabadian', false, true);
  END IF;

  -- [VOCABULARY] 汚れる (Level 32)
  UPDATE item_meanings SET meaning = 'Menjadi Kotor', primary_meaning = true, accepted_answer = true WHERE id = 'eaadd2b2-c5dd-425f-a514-31831c53d386';
  UPDATE items SET slug = 'menjadi-kotor' WHERE id = '0cefc6d8-d8fa-41a6-b0c3-9ce64946d5be';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '0cefc6d8-d8fa-41a6-b0c3-9ce64946d5be' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Ternoda'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('0cefc6d8-d8fa-41a6-b0c3-9ce64946d5be', 'Ternoda', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '0cefc6d8-d8fa-41a6-b0c3-9ce64946d5be' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Get Dirty'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('0cefc6d8-d8fa-41a6-b0c3-9ce64946d5be', 'To Get Dirty', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '0cefc6d8-d8fa-41a6-b0c3-9ce64946d5be' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Be Defiled'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('0cefc6d8-d8fa-41a6-b0c3-9ce64946d5be', 'To Be Defiled', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '0cefc6d8-d8fa-41a6-b0c3-9ce64946d5be' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Become Dirty'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('0cefc6d8-d8fa-41a6-b0c3-9ce64946d5be', 'To Become Dirty', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '0cefc6d8-d8fa-41a6-b0c3-9ce64946d5be' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Menjadi Tercemar'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('0cefc6d8-d8fa-41a6-b0c3-9ce64946d5be', 'Menjadi Tercemar', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '0cefc6d8-d8fa-41a6-b0c3-9ce64946d5be' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Get Polluted'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('0cefc6d8-d8fa-41a6-b0c3-9ce64946d5be', 'To Get Polluted', false, true);
  END IF;

  -- [VOCABULARY] 汚水 (Level 32)
  UPDATE item_meanings SET meaning = 'Air Limbah', primary_meaning = true, accepted_answer = true WHERE id = '643064c4-70bd-4fab-a914-37acf7d30483';
  UPDATE items SET slug = 'air-limbah' WHERE id = '8abd7d46-4f25-4684-96d8-e4dfd9409ed5';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '8abd7d46-4f25-4684-96d8-e4dfd9409ed5' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Air Kotor'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('8abd7d46-4f25-4684-96d8-e4dfd9409ed5', 'Air Kotor', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '8abd7d46-4f25-4684-96d8-e4dfd9409ed5' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Sewage'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('8abd7d46-4f25-4684-96d8-e4dfd9409ed5', 'Sewage', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '8abd7d46-4f25-4684-96d8-e4dfd9409ed5' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Waste Water'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('8abd7d46-4f25-4684-96d8-e4dfd9409ed5', 'Waste Water', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '8abd7d46-4f25-4684-96d8-e4dfd9409ed5' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Dirty Water'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('8abd7d46-4f25-4684-96d8-e4dfd9409ed5', 'Dirty Water', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '8abd7d46-4f25-4684-96d8-e4dfd9409ed5' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Kotoran'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('8abd7d46-4f25-4684-96d8-e4dfd9409ed5', 'Kotoran', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '8abd7d46-4f25-4684-96d8-e4dfd9409ed5' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Polluted Water'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('8abd7d46-4f25-4684-96d8-e4dfd9409ed5', 'Polluted Water', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '8abd7d46-4f25-4684-96d8-e4dfd9409ed5' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Filthy Water'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('8abd7d46-4f25-4684-96d8-e4dfd9409ed5', 'Filthy Water', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '8abd7d46-4f25-4684-96d8-e4dfd9409ed5' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Sewerage'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('8abd7d46-4f25-4684-96d8-e4dfd9409ed5', 'Sewerage', false, true);
  END IF;

  -- [VOCABULARY] 汚点 (Level 32)
  UPDATE item_meanings SET meaning = 'Noda Hitam', primary_meaning = true, accepted_answer = true WHERE id = '2f9fd336-8276-4d19-969f-9ea865a6e0b6';
  UPDATE items SET slug = 'noda-hitam' WHERE id = 'cf2dea27-c7b1-4a02-b53f-0526dde2d811';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'cf2dea27-c7b1-4a02-b53f-0526dde2d811' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Cacat Cela'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('cf2dea27-c7b1-4a02-b53f-0526dde2d811', 'Cacat Cela', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'cf2dea27-c7b1-4a02-b53f-0526dde2d811' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Noda'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('cf2dea27-c7b1-4a02-b53f-0526dde2d811', 'Noda', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'cf2dea27-c7b1-4a02-b53f-0526dde2d811' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Stain'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('cf2dea27-c7b1-4a02-b53f-0526dde2d811', 'Stain', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'cf2dea27-c7b1-4a02-b53f-0526dde2d811' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Smudge'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('cf2dea27-c7b1-4a02-b53f-0526dde2d811', 'Smudge', false, true);
  END IF;

  -- [VOCABULARY] 浮かれる (Level 32)
  UPDATE item_meanings SET meaning = 'Terlena Gembira', primary_meaning = true, accepted_answer = true WHERE id = 'e33c2ab7-07bd-47d7-a1c3-923920dab6c4';
  UPDATE items SET slug = 'terlena-gembira' WHERE id = '95a4de9b-6d38-46fa-abb4-304abdf21eba';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '95a4de9b-6d38-46fa-abb4-304abdf21eba' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Berbunga-bunga Hati'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('95a4de9b-6d38-46fa-abb4-304abdf21eba', 'Berbunga-bunga Hati', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '95a4de9b-6d38-46fa-abb4-304abdf21eba' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Menjadi Bahagia'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('95a4de9b-6d38-46fa-abb4-304abdf21eba', 'Menjadi Bahagia', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '95a4de9b-6d38-46fa-abb4-304abdf21eba' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Be Elated'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('95a4de9b-6d38-46fa-abb4-304abdf21eba', 'To Be Elated', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '95a4de9b-6d38-46fa-abb4-304abdf21eba' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Be In High Spirits'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('95a4de9b-6d38-46fa-abb4-304abdf21eba', 'To Be In High Spirits', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '95a4de9b-6d38-46fa-abb4-304abdf21eba' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Feel Happy'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('95a4de9b-6d38-46fa-abb4-304abdf21eba', 'To Feel Happy', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '95a4de9b-6d38-46fa-abb4-304abdf21eba' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Agar Bersemangat Tinggi'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('95a4de9b-6d38-46fa-abb4-304abdf21eba', 'Agar Bersemangat Tinggi', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '95a4de9b-6d38-46fa-abb4-304abdf21eba' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Menjadi gembira'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('95a4de9b-6d38-46fa-abb4-304abdf21eba', 'Menjadi gembira', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '95a4de9b-6d38-46fa-abb4-304abdf21eba' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Be Happy'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('95a4de9b-6d38-46fa-abb4-304abdf21eba', 'To Be Happy', false, true);
  END IF;

  -- [VOCABULARY] 漏らす (Level 32)
  UPDATE item_meanings SET meaning = 'Membocorkan', primary_meaning = true, accepted_answer = true WHERE id = '8186e230-d40f-41b6-b4e0-3b8e7ed5e168';
  UPDATE items SET slug = 'membocorkan' WHERE id = 'a82e3340-b137-48da-8922-fda709461298';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'a82e3340-b137-48da-8922-fda709461298' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Membocorkan Rahasia'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('a82e3340-b137-48da-8922-fda709461298', 'Membocorkan Rahasia', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'a82e3340-b137-48da-8922-fda709461298' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Meneteskan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('a82e3340-b137-48da-8922-fda709461298', 'Meneteskan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'a82e3340-b137-48da-8922-fda709461298' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Leak'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('a82e3340-b137-48da-8922-fda709461298', 'To Leak', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'a82e3340-b137-48da-8922-fda709461298' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Membocorkan (Rahasia'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('a82e3340-b137-48da-8922-fda709461298', 'Membocorkan (Rahasia', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'a82e3340-b137-48da-8922-fda709461298' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Cairan)'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('a82e3340-b137-48da-8922-fda709461298', 'Cairan)', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'a82e3340-b137-48da-8922-fda709461298' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Membiarkan Sesuatu Bocor'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('a82e3340-b137-48da-8922-fda709461298', 'Membiarkan Sesuatu Bocor', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'a82e3340-b137-48da-8922-fda709461298' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Spill'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('a82e3340-b137-48da-8922-fda709461298', 'To Spill', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'a82e3340-b137-48da-8922-fda709461298' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Let Something Spill'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('a82e3340-b137-48da-8922-fda709461298', 'To Let Something Spill', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'a82e3340-b137-48da-8922-fda709461298' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Membocorkan Sesuatu'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('a82e3340-b137-48da-8922-fda709461298', 'Membocorkan Sesuatu', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'a82e3340-b137-48da-8922-fda709461298' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Let Something Leak'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('a82e3340-b137-48da-8922-fda709461298', 'To Let Something Leak', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'a82e3340-b137-48da-8922-fda709461298' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Leak Something'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('a82e3340-b137-48da-8922-fda709461298', 'To Leak Something', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'a82e3340-b137-48da-8922-fda709461298' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Let Out'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('a82e3340-b137-48da-8922-fda709461298', 'To Let Out', false, true);
  END IF;

  -- [VOCABULARY] 濡れる (Level 32)
  UPDATE item_meanings SET meaning = 'Basah Kuyup', primary_meaning = true, accepted_answer = true WHERE id = '354d9201-9683-47b3-ac9c-ff8f7edbd90b';
  UPDATE items SET slug = 'basah-kuyup' WHERE id = 'ffbe1164-aedc-48a8-9a55-59cb65cef6cf';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'ffbe1164-aedc-48a8-9a55-59cb65cef6cf' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Menjadi Basah'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('ffbe1164-aedc-48a8-9a55-59cb65cef6cf', 'Menjadi Basah', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'ffbe1164-aedc-48a8-9a55-59cb65cef6cf' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Get Wet'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('ffbe1164-aedc-48a8-9a55-59cb65cef6cf', 'To Get Wet', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'ffbe1164-aedc-48a8-9a55-59cb65cef6cf' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Be Wet'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('ffbe1164-aedc-48a8-9a55-59cb65cef6cf', 'To Be Wet', false, true);
  END IF;

  -- [VOCABULARY] 火照る (Level 32)
  UPDATE item_meanings SET meaning = 'Wajah Memerah Panas', primary_meaning = true, accepted_answer = true WHERE id = '7fffa835-9f14-4225-ac53-24dae304a02a';
  UPDATE items SET slug = 'wajah-memerah-panas' WHERE id = 'f212016c-6dc8-47a5-b5a0-063ff63ccb9e';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'f212016c-6dc8-47a5-b5a0-063ff63ccb9e' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Merona Hangat'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('f212016c-6dc8-47a5-b5a0-063ff63ccb9e', 'Merona Hangat', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'f212016c-6dc8-47a5-b5a0-063ff63ccb9e' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Merasa Panas'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('f212016c-6dc8-47a5-b5a0-063ff63ccb9e', 'Merasa Panas', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'f212016c-6dc8-47a5-b5a0-063ff63ccb9e' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Flush'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('f212016c-6dc8-47a5-b5a0-063ff63ccb9e', 'To Flush', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'f212016c-6dc8-47a5-b5a0-063ff63ccb9e' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Feel Hot'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('f212016c-6dc8-47a5-b5a0-063ff63ccb9e', 'To Feel Hot', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'f212016c-6dc8-47a5-b5a0-063ff63ccb9e' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Untuk Membakar'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('f212016c-6dc8-47a5-b5a0-063ff63ccb9e', 'Untuk Membakar', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'f212016c-6dc8-47a5-b5a0-063ff63ccb9e' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Burn'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('f212016c-6dc8-47a5-b5a0-063ff63ccb9e', 'To Burn', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'f212016c-6dc8-47a5-b5a0-063ff63ccb9e' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Untuk menyiram'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('f212016c-6dc8-47a5-b5a0-063ff63ccb9e', 'Untuk menyiram', false, true);
  END IF;

  -- [VOCABULARY] 老眼 (Level 32)
  UPDATE item_meanings SET meaning = 'Mata Tua', primary_meaning = true, accepted_answer = true WHERE id = 'a258f187-d405-4b44-aff0-02dc3eacd7a7';
  UPDATE items SET slug = 'mata-tua' WHERE id = '0cd47555-caf8-4777-bbb6-a9699af323f4';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '0cd47555-caf8-4777-bbb6-a9699af323f4' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Rabun Dekat Lansia'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('0cd47555-caf8-4777-bbb6-a9699af323f4', 'Rabun Dekat Lansia', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '0cd47555-caf8-4777-bbb6-a9699af323f4' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Presbiopi'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('0cd47555-caf8-4777-bbb6-a9699af323f4', 'Presbiopi', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '0cd47555-caf8-4777-bbb6-a9699af323f4' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Aging Eyes'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('0cd47555-caf8-4777-bbb6-a9699af323f4', 'Aging Eyes', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '0cd47555-caf8-4777-bbb6-a9699af323f4' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Rabun jauh'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('0cd47555-caf8-4777-bbb6-a9699af323f4', 'Rabun jauh', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '0cd47555-caf8-4777-bbb6-a9699af323f4' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Presbyopia'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('0cd47555-caf8-4777-bbb6-a9699af323f4', 'Presbyopia', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '0cd47555-caf8-4777-bbb6-a9699af323f4' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Farsightedness'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('0cd47555-caf8-4777-bbb6-a9699af323f4', 'Farsightedness', false, true);
  END IF;

  -- [VOCABULARY] 肉欲 (Level 32)
  UPDATE item_meanings SET meaning = 'Hawa Nafsu Berahi', primary_meaning = true, accepted_answer = true WHERE id = '3fcb4451-cd5e-4fd6-990d-10ebab0529ac';
  UPDATE items SET slug = 'hawa-nafsu-berahi' WHERE id = 'f8e1430e-d9f5-4622-a0b2-f3089d31e836';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'f8e1430e-d9f5-4622-a0b2-f3089d31e836' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Nafsu Ragawi'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('f8e1430e-d9f5-4622-a0b2-f3089d31e836', 'Nafsu Ragawi', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'f8e1430e-d9f5-4622-a0b2-f3089d31e836' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Keinginan Duniawi'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('f8e1430e-d9f5-4622-a0b2-f3089d31e836', 'Keinginan Duniawi', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'f8e1430e-d9f5-4622-a0b2-f3089d31e836' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Carnal Desires'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('f8e1430e-d9f5-4622-a0b2-f3089d31e836', 'Carnal Desires', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'f8e1430e-d9f5-4622-a0b2-f3089d31e836' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Lust'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('f8e1430e-d9f5-4622-a0b2-f3089d31e836', 'Lust', false, true);
  END IF;

  -- [VOCABULARY] 背丈 (Level 32)
  UPDATE item_meanings SET meaning = 'Tinggi Badan', primary_meaning = true, accepted_answer = true WHERE id = '501aef9b-8827-4e32-802e-84aa150880d0';
  UPDATE items SET slug = 'tinggi-badan' WHERE id = 'a6f71d3f-cf68-442e-babb-0e66d4f07eb8';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'a6f71d3f-cf68-442e-babb-0e66d4f07eb8' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Postur Tubuh'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('a6f71d3f-cf68-442e-babb-0e66d4f07eb8', 'Postur Tubuh', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'a6f71d3f-cf68-442e-babb-0e66d4f07eb8' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Perawakan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('a6f71d3f-cf68-442e-babb-0e66d4f07eb8', 'Perawakan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'a6f71d3f-cf68-442e-babb-0e66d4f07eb8' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Height'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('a6f71d3f-cf68-442e-babb-0e66d4f07eb8', 'Height', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'a6f71d3f-cf68-442e-babb-0e66d4f07eb8' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Stature'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('a6f71d3f-cf68-442e-babb-0e66d4f07eb8', 'Stature', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'a6f71d3f-cf68-442e-babb-0e66d4f07eb8' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Tinggi'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('a6f71d3f-cf68-442e-babb-0e66d4f07eb8', 'Tinggi', false, true);
  END IF;

  -- [VOCABULARY] 自衛 (Level 32)
  UPDATE item_meanings SET meaning = 'Pertahanan Diri', primary_meaning = true, accepted_answer = true WHERE id = '054affda-0d00-4e87-81d6-a12044b92e21';
  UPDATE items SET slug = 'pertahanan-diri' WHERE id = 'bdbc53d1-46d3-4316-8636-f54d15d10fdf';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'bdbc53d1-46d3-4316-8636-f54d15d10fdf' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Bela Diri'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('bdbc53d1-46d3-4316-8636-f54d15d10fdf', 'Bela Diri', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'bdbc53d1-46d3-4316-8636-f54d15d10fdf' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Self Defense'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('bdbc53d1-46d3-4316-8636-f54d15d10fdf', 'Self Defense', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'bdbc53d1-46d3-4316-8636-f54d15d10fdf' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Self Defence'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('bdbc53d1-46d3-4316-8636-f54d15d10fdf', 'Self Defence', false, true);
  END IF;

  -- [VOCABULARY] 複数 (Level 32)
  UPDATE item_meanings SET meaning = 'Jamak', primary_meaning = true, accepted_answer = true WHERE id = 'c8e24113-2d33-4b62-a761-1c1728f46caf';
  UPDATE items SET slug = 'jamak' WHERE id = '47c6e335-a482-45bb-840e-dc049705b4ed';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '47c6e335-a482-45bb-840e-dc049705b4ed' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Lebih dari Satu'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('47c6e335-a482-45bb-840e-dc049705b4ed', 'Lebih dari Satu', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '47c6e335-a482-45bb-840e-dc049705b4ed' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Banyak'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('47c6e335-a482-45bb-840e-dc049705b4ed', 'Banyak', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '47c6e335-a482-45bb-840e-dc049705b4ed' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Multiple'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('47c6e335-a482-45bb-840e-dc049705b4ed', 'Multiple', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '47c6e335-a482-45bb-840e-dc049705b4ed' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Plural'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('47c6e335-a482-45bb-840e-dc049705b4ed', 'Plural', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '47c6e335-a482-45bb-840e-dc049705b4ed' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Multi'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('47c6e335-a482-45bb-840e-dc049705b4ed', 'Multi', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '47c6e335-a482-45bb-840e-dc049705b4ed' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Several'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('47c6e335-a482-45bb-840e-dc049705b4ed', 'Several', false, true);
  END IF;

  -- [VOCABULARY] 訳 (Level 32)
  UPDATE item_meanings SET meaning = 'Alasan', primary_meaning = true, accepted_answer = true WHERE id = '53b2898b-4c50-4211-b9dd-f789922bb2a5';
  UPDATE items SET slug = 'alasan' WHERE id = '5905f47d-38d0-43d3-a040-36da9bb100c4';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '5905f47d-38d0-43d3-a040-36da9bb100c4' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Makna Tersirat'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('5905f47d-38d0-43d3-a040-36da9bb100c4', 'Makna Tersirat', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '5905f47d-38d0-43d3-a040-36da9bb100c4' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Reason'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('5905f47d-38d0-43d3-a040-36da9bb100c4', 'Reason', false, true);
  END IF;

  -- [VOCABULARY] 賛成 (Level 32)
  UPDATE item_meanings SET meaning = 'Setuju', primary_meaning = true, accepted_answer = true WHERE id = '5e3d64f2-4b32-4947-879d-03c6aacb1250';
  UPDATE items SET slug = 'setuju' WHERE id = 'e9d94bce-ae93-4747-a769-4a0e9d5eb7d7';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'e9d94bce-ae93-4747-a769-4a0e9d5eb7d7' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Persetujuan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('e9d94bce-ae93-4747-a769-4a0e9d5eb7d7', 'Persetujuan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'e9d94bce-ae93-4747-a769-4a0e9d5eb7d7' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Perjanjian'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('e9d94bce-ae93-4747-a769-4a0e9d5eb7d7', 'Perjanjian', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'e9d94bce-ae93-4747-a769-4a0e9d5eb7d7' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Agreement'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('e9d94bce-ae93-4747-a769-4a0e9d5eb7d7', 'Agreement', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'e9d94bce-ae93-4747-a769-4a0e9d5eb7d7' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Approval'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('e9d94bce-ae93-4747-a769-4a0e9d5eb7d7', 'Approval', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'e9d94bce-ae93-4747-a769-4a0e9d5eb7d7' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Mendukung'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('e9d94bce-ae93-4747-a769-4a0e9d5eb7d7', 'Mendukung', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'e9d94bce-ae93-4747-a769-4a0e9d5eb7d7' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Agree'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('e9d94bce-ae93-4747-a769-4a0e9d5eb7d7', 'Agree', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'e9d94bce-ae93-4747-a769-4a0e9d5eb7d7' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Approve'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('e9d94bce-ae93-4747-a769-4a0e9d5eb7d7', 'Approve', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'e9d94bce-ae93-4747-a769-4a0e9d5eb7d7' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Support'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('e9d94bce-ae93-4747-a769-4a0e9d5eb7d7', 'Support', false, true);
  END IF;

  -- [VOCABULARY] 購読する (Level 32)
  UPDATE item_meanings SET meaning = 'Berlangganan', primary_meaning = true, accepted_answer = true WHERE id = 'e1bff4c0-ef17-412d-879d-cd343a5e25fc';
  UPDATE items SET slug = 'berlangganan' WHERE id = '3927eccd-00d1-4b19-8f94-8c75925542a1';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '3927eccd-00d1-4b19-8f94-8c75925542a1' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Langganan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('3927eccd-00d1-4b19-8f94-8c75925542a1', 'Langganan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '3927eccd-00d1-4b19-8f94-8c75925542a1' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Berlangganan Koran'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('3927eccd-00d1-4b19-8f94-8c75925542a1', 'Berlangganan Koran', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '3927eccd-00d1-4b19-8f94-8c75925542a1' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Subscribe'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('3927eccd-00d1-4b19-8f94-8c75925542a1', 'To Subscribe', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '3927eccd-00d1-4b19-8f94-8c75925542a1' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Berlangganan (Bacaan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('3927eccd-00d1-4b19-8f94-8c75925542a1', 'Berlangganan (Bacaan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '3927eccd-00d1-4b19-8f94-8c75925542a1' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Koran)'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('3927eccd-00d1-4b19-8f94-8c75925542a1', 'Koran)', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '3927eccd-00d1-4b19-8f94-8c75925542a1' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Untuk Berlangganan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('3927eccd-00d1-4b19-8f94-8c75925542a1', 'Untuk Berlangganan', false, true);
  END IF;

  -- [VOCABULARY] 越す (Level 32)
  UPDATE item_meanings SET meaning = 'Melewati', primary_meaning = true, accepted_answer = true WHERE id = 'cf0aa870-2409-4344-847d-f1942658a9b4';
  UPDATE items SET slug = 'melewati' WHERE id = '080537e9-3446-46c6-ac2c-2fbdbbfe52af';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '080537e9-3446-46c6-ac2c-2fbdbbfe52af' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Melampaui'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('080537e9-3446-46c6-ac2c-2fbdbbfe52af', 'Melampaui', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '080537e9-3446-46c6-ac2c-2fbdbbfe52af' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Untuk Melampauinya'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('080537e9-3446-46c6-ac2c-2fbdbbfe52af', 'Untuk Melampauinya', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '080537e9-3446-46c6-ac2c-2fbdbbfe52af' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Exceed'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('080537e9-3446-46c6-ac2c-2fbdbbfe52af', 'To Exceed', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '080537e9-3446-46c6-ac2c-2fbdbbfe52af' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Go Beyond'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('080537e9-3446-46c6-ac2c-2fbdbbfe52af', 'To Go Beyond', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '080537e9-3446-46c6-ac2c-2fbdbbfe52af' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Go Over'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('080537e9-3446-46c6-ac2c-2fbdbbfe52af', 'To Go Over', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '080537e9-3446-46c6-ac2c-2fbdbbfe52af' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Be More Than'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('080537e9-3446-46c6-ac2c-2fbdbbfe52af', 'To Be More Than', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '080537e9-3446-46c6-ac2c-2fbdbbfe52af' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Surpass'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('080537e9-3446-46c6-ac2c-2fbdbbfe52af', 'To Surpass', false, true);
  END IF;

  -- [VOCABULARY] 込む (Level 32)
  UPDATE item_meanings SET meaning = 'Penuh Sesak', primary_meaning = true, accepted_answer = true WHERE id = 'a7420aff-d656-4b01-97d2-7ea99fe309f8';
  UPDATE items SET slug = 'penuh-sesak' WHERE id = 'cdf56b81-6157-4703-b911-f67ebc95ad51';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'cdf56b81-6157-4703-b911-f67ebc95ad51' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Masuk Berjejal'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('cdf56b81-6157-4703-b911-f67ebc95ad51', 'Masuk Berjejal', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'cdf56b81-6157-4703-b911-f67ebc95ad51' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Untuk Masuk'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('cdf56b81-6157-4703-b911-f67ebc95ad51', 'Untuk Masuk', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'cdf56b81-6157-4703-b911-f67ebc95ad51' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Be Crowded'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('cdf56b81-6157-4703-b911-f67ebc95ad51', 'To Be Crowded', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'cdf56b81-6157-4703-b911-f67ebc95ad51' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Untuk Mendalami'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('cdf56b81-6157-4703-b911-f67ebc95ad51', 'Untuk Mendalami', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'cdf56b81-6157-4703-b911-f67ebc95ad51' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Get Into'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('cdf56b81-6157-4703-b911-f67ebc95ad51', 'To Get Into', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'cdf56b81-6157-4703-b911-f67ebc95ad51' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Go Deep Into'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('cdf56b81-6157-4703-b911-f67ebc95ad51', 'To Go Deep Into', false, true);
  END IF;

  -- [VOCABULARY] 迎える (Level 32)
  UPDATE item_meanings SET meaning = 'Menyambut', primary_meaning = true, accepted_answer = true WHERE id = '15d7a88a-ea98-4914-ad21-601fb684d16f';
  UPDATE items SET slug = 'menyambut' WHERE id = '22e80403-f513-4500-9863-e1549ba9be25';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '22e80403-f513-4500-9863-e1549ba9be25' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Menjemput'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('22e80403-f513-4500-9863-e1549ba9be25', 'Menjemput', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '22e80403-f513-4500-9863-e1549ba9be25' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Untuk Menjemput Seseorang'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('22e80403-f513-4500-9863-e1549ba9be25', 'Untuk Menjemput Seseorang', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '22e80403-f513-4500-9863-e1549ba9be25' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Welcome'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('22e80403-f513-4500-9863-e1549ba9be25', 'To Welcome', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '22e80403-f513-4500-9863-e1549ba9be25' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Pick Up'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('22e80403-f513-4500-9863-e1549ba9be25', 'To Pick Up', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '22e80403-f513-4500-9863-e1549ba9be25' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Pick Someone Up'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('22e80403-f513-4500-9863-e1549ba9be25', 'To Pick Someone Up', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '22e80403-f513-4500-9863-e1549ba9be25' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Meet'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('22e80403-f513-4500-9863-e1549ba9be25', 'To Meet', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '22e80403-f513-4500-9863-e1549ba9be25' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Pick Up Someone'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('22e80403-f513-4500-9863-e1549ba9be25', 'To Pick Up Someone', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '22e80403-f513-4500-9863-e1549ba9be25' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Invite'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('22e80403-f513-4500-9863-e1549ba9be25', 'To Invite', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '22e80403-f513-4500-9863-e1549ba9be25' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Welcome Someone'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('22e80403-f513-4500-9863-e1549ba9be25', 'To Welcome Someone', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '22e80403-f513-4500-9863-e1549ba9be25' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Meet Someone'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('22e80403-f513-4500-9863-e1549ba9be25', 'To Meet Someone', false, true);
  END IF;

  -- [VOCABULARY] 通訳 (Level 32)
  UPDATE item_meanings SET meaning = 'Penerjemah Lisan', primary_meaning = true, accepted_answer = true WHERE id = '5ecf813d-1ac8-4bba-a2c4-94b45ada7aec';
  UPDATE items SET slug = 'penerjemah-lisan' WHERE id = '43f1e742-0297-4b31-823f-f32275f5ec38';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '43f1e742-0297-4b31-823f-f32275f5ec38' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Juru Bahasa'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('43f1e742-0297-4b31-823f-f32275f5ec38', 'Juru Bahasa', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '43f1e742-0297-4b31-823f-f32275f5ec38' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Interpreter'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('43f1e742-0297-4b31-823f-f32275f5ec38', 'Interpreter', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '43f1e742-0297-4b31-823f-f32275f5ec38' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Menafsirkan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('43f1e742-0297-4b31-823f-f32275f5ec38', 'Menafsirkan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '43f1e742-0297-4b31-823f-f32275f5ec38' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Interpretation'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('43f1e742-0297-4b31-823f-f32275f5ec38', 'Interpretation', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '43f1e742-0297-4b31-823f-f32275f5ec38' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Interpretasi'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('43f1e742-0297-4b31-823f-f32275f5ec38', 'Interpretasi', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '43f1e742-0297-4b31-823f-f32275f5ec38' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Interpreting'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('43f1e742-0297-4b31-823f-f32275f5ec38', 'Interpreting', false, true);
  END IF;

  -- [VOCABULARY] 遊び (Level 32)
  UPDATE item_meanings SET meaning = 'Bermain', primary_meaning = true, accepted_answer = true WHERE id = '3ec03b0c-3e3c-4443-9ee1-d28d3a8620d1';
  UPDATE items SET slug = 'bermain' WHERE id = '1db238eb-1c9a-4d09-9b84-5a948666d9c8';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '1db238eb-1c9a-4d09-9b84-5a948666d9c8' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Permainan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('1db238eb-1c9a-4d09-9b84-5a948666d9c8', 'Permainan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '1db238eb-1c9a-4d09-9b84-5a948666d9c8' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Kelonggaran'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('1db238eb-1c9a-4d09-9b84-5a948666d9c8', 'Kelonggaran', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '1db238eb-1c9a-4d09-9b84-5a948666d9c8' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Play'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('1db238eb-1c9a-4d09-9b84-5a948666d9c8', 'Play', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '1db238eb-1c9a-4d09-9b84-5a948666d9c8' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Games'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('1db238eb-1c9a-4d09-9b84-5a948666d9c8', 'Games', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '1db238eb-1c9a-4d09-9b84-5a948666d9c8' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Pertandingan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('1db238eb-1c9a-4d09-9b84-5a948666d9c8', 'Pertandingan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '1db238eb-1c9a-4d09-9b84-5a948666d9c8' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Playing'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('1db238eb-1c9a-4d09-9b84-5a948666d9c8', 'Playing', false, true);
  END IF;

  -- [VOCABULARY] 酸っぱい (Level 32)
  UPDATE item_meanings SET meaning = 'Kecut', primary_meaning = true, accepted_answer = true WHERE id = '474679e2-c776-4145-b66e-8a100fc29ebf';
  UPDATE items SET slug = 'kecut' WHERE id = 'a7fd2ba5-c392-4d96-805e-9254fdf02533';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'a7fd2ba5-c392-4d96-805e-9254fdf02533' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Asam Rasa'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('a7fd2ba5-c392-4d96-805e-9254fdf02533', 'Asam Rasa', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'a7fd2ba5-c392-4d96-805e-9254fdf02533' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Sour'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('a7fd2ba5-c392-4d96-805e-9254fdf02533', 'Sour', false, true);
  END IF;

  -- [VOCABULARY] 銭 (Level 32)
  UPDATE item_meanings SET meaning = 'Uang Receh', primary_meaning = true, accepted_answer = true WHERE id = 'e8faf0db-b3e5-49fb-85b7-9f5db30f0a1d';
  UPDATE items SET slug = 'uang-receh' WHERE id = 'e6de2e00-807e-49f7-b581-5ebe4238a01f';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'e6de2e00-807e-49f7-b581-5ebe4238a01f' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Koin Sen'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('e6de2e00-807e-49f7-b581-5ebe4238a01f', 'Koin Sen', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'e6de2e00-807e-49f7-b581-5ebe4238a01f' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Koin'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('e6de2e00-807e-49f7-b581-5ebe4238a01f', 'Koin', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'e6de2e00-807e-49f7-b581-5ebe4238a01f' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Coin'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('e6de2e00-807e-49f7-b581-5ebe4238a01f', 'Coin', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'e6de2e00-807e-49f7-b581-5ebe4238a01f' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Money'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('e6de2e00-807e-49f7-b581-5ebe4238a01f', 'Money', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'e6de2e00-807e-49f7-b581-5ebe4238a01f' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Bucks'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('e6de2e00-807e-49f7-b581-5ebe4238a01f', 'Bucks', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'e6de2e00-807e-49f7-b581-5ebe4238a01f' AND LOWER(TRIM(meaning)) = LOWER(TRIM('uang'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('e6de2e00-807e-49f7-b581-5ebe4238a01f', 'uang', false, true);
  END IF;

  -- [VOCABULARY] 雑音 (Level 32)
  UPDATE item_meanings SET meaning = 'Derau', primary_meaning = true, accepted_answer = true WHERE id = '4a9b2be0-029c-48a6-95e2-20c3ae925b8c';
  UPDATE items SET slug = 'derau' WHERE id = 'b88a7291-3259-4a17-8923-b0324d6c4c47';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'b88a7291-3259-4a17-8923-b0324d6c4c47' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Suara Bising'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('b88a7291-3259-4a17-8923-b0324d6c4c47', 'Suara Bising', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'b88a7291-3259-4a17-8923-b0324d6c4c47' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Bunyi Gangguan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('b88a7291-3259-4a17-8923-b0324d6c4c47', 'Bunyi Gangguan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'b88a7291-3259-4a17-8923-b0324d6c4c47' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Noise'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('b88a7291-3259-4a17-8923-b0324d6c4c47', 'Noise', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'b88a7291-3259-4a17-8923-b0324d6c4c47' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Kebisingan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('b88a7291-3259-4a17-8923-b0324d6c4c47', 'Kebisingan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'b88a7291-3259-4a17-8923-b0324d6c4c47' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Static'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('b88a7291-3259-4a17-8923-b0324d6c4c47', 'Static', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'b88a7291-3259-4a17-8923-b0324d6c4c47' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Statis'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('b88a7291-3259-4a17-8923-b0324d6c4c47', 'Statis', false, true);
  END IF;

  -- [VOCABULARY] 順序 (Level 32)
  UPDATE item_meanings SET meaning = 'Urutan', primary_meaning = true, accepted_answer = true WHERE id = '7aff992b-328d-47e9-8e5b-bf537bc7ce0e';
  UPDATE items SET slug = 'urutan' WHERE id = '889f3e54-b5fa-4cda-a18a-98f767bea423';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '889f3e54-b5fa-4cda-a18a-98f767bea423' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Tata Tahap'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('889f3e54-b5fa-4cda-a18a-98f767bea423', 'Tata Tahap', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '889f3e54-b5fa-4cda-a18a-98f767bea423' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Order'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('889f3e54-b5fa-4cda-a18a-98f767bea423', 'Order', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '889f3e54-b5fa-4cda-a18a-98f767bea423' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Sequence'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('889f3e54-b5fa-4cda-a18a-98f767bea423', 'Sequence', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '889f3e54-b5fa-4cda-a18a-98f767bea423' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Memesan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('889f3e54-b5fa-4cda-a18a-98f767bea423', 'Memesan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '889f3e54-b5fa-4cda-a18a-98f767bea423' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Steps'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('889f3e54-b5fa-4cda-a18a-98f767bea423', 'Steps', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '889f3e54-b5fa-4cda-a18a-98f767bea423' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Tangga'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('889f3e54-b5fa-4cda-a18a-98f767bea423', 'Tangga', false, true);
  END IF;

  -- [VOCABULARY] 預かる (Level 32)
  UPDATE item_meanings SET meaning = 'Menitipkan', primary_meaning = true, accepted_answer = true WHERE id = 'db1dad1c-f15a-4a14-b75c-a6e9c5e7f816';
  UPDATE items SET slug = 'menitipkan' WHERE id = '86a82615-3a43-448e-9992-83b108dc7d73';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '86a82615-3a43-448e-9992-83b108dc7d73' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Merawatkan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('86a82615-3a43-448e-9992-83b108dc7d73', 'Merawatkan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '86a82615-3a43-448e-9992-83b108dc7d73' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Memegang Amanah'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('86a82615-3a43-448e-9992-83b108dc7d73', 'Memegang Amanah', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '86a82615-3a43-448e-9992-83b108dc7d73' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Untuk Dijaga'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('86a82615-3a43-448e-9992-83b108dc7d73', 'Untuk Dijaga', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '86a82615-3a43-448e-9992-83b108dc7d73' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Take Care Of'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('86a82615-3a43-448e-9992-83b108dc7d73', 'To Take Care Of', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '86a82615-3a43-448e-9992-83b108dc7d73' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Look After'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('86a82615-3a43-448e-9992-83b108dc7d73', 'To Look After', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '86a82615-3a43-448e-9992-83b108dc7d73' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Hold On To'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('86a82615-3a43-448e-9992-83b108dc7d73', 'To Hold On To', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '86a82615-3a43-448e-9992-83b108dc7d73' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Look After Something'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('86a82615-3a43-448e-9992-83b108dc7d73', 'To Look After Something', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '86a82615-3a43-448e-9992-83b108dc7d73' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Untuk Merawat'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('86a82615-3a43-448e-9992-83b108dc7d73', 'Untuk Merawat', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '86a82615-3a43-448e-9992-83b108dc7d73' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Untuk Bertahan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('86a82615-3a43-448e-9992-83b108dc7d73', 'Untuk Bertahan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '86a82615-3a43-448e-9992-83b108dc7d73' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Take Care Of Something'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('86a82615-3a43-448e-9992-83b108dc7d73', 'To Take Care Of Something', false, true);
  END IF;

  -- [VOCABULARY] 食欲 (Level 32)
  UPDATE item_meanings SET meaning = 'Nafsu Makan', primary_meaning = true, accepted_answer = true WHERE id = '6e03b0bb-76db-46cb-b11e-b944c259cda2';
  UPDATE items SET slug = 'nafsu-makan' WHERE id = '6c6cc24e-b7f8-4a9b-bae2-28f860fa596d';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '6c6cc24e-b7f8-4a9b-bae2-28f860fa596d' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Selera Makan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('6c6cc24e-b7f8-4a9b-bae2-28f860fa596d', 'Selera Makan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '6c6cc24e-b7f8-4a9b-bae2-28f860fa596d' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Appetite'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('6c6cc24e-b7f8-4a9b-bae2-28f860fa596d', 'Appetite', false, true);
  END IF;

  -- [VOCABULARY] 飾り (Level 32)
  UPDATE item_meanings SET meaning = 'Hiasan', primary_meaning = true, accepted_answer = true WHERE id = '8dd45930-3cfd-4c28-bff4-ab1ea13b2ae5';
  UPDATE items SET slug = 'hiasan' WHERE id = '65feafed-def0-4063-b5b3-0a2de7ab48c7';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '65feafed-def0-4063-b5b3-0a2de7ab48c7' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Dekorasi'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('65feafed-def0-4063-b5b3-0a2de7ab48c7', 'Dekorasi', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '65feafed-def0-4063-b5b3-0a2de7ab48c7' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Decoration'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('65feafed-def0-4063-b5b3-0a2de7ab48c7', 'Decoration', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '65feafed-def0-4063-b5b3-0a2de7ab48c7' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Ornament'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('65feafed-def0-4063-b5b3-0a2de7ab48c7', 'Ornament', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '65feafed-def0-4063-b5b3-0a2de7ab48c7' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Ornamen'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('65feafed-def0-4063-b5b3-0a2de7ab48c7', 'Ornamen', false, true);
  END IF;

  -- [VOCABULARY] 飾り気 (Level 32)
  UPDATE item_meanings SET meaning = 'Sifat Pamer', primary_meaning = true, accepted_answer = true WHERE id = '78d67623-0127-4cd8-bb8c-579141de0fba';
  UPDATE items SET slug = 'sifat-pamer' WHERE id = 'c1829dc5-2ede-4768-9083-52b5c0641789';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'c1829dc5-2ede-4768-9083-52b5c0641789' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Suka Dandan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('c1829dc5-2ede-4768-9083-52b5c0641789', 'Suka Dandan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'c1829dc5-2ede-4768-9083-52b5c0641789' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Berlagak'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('c1829dc5-2ede-4768-9083-52b5c0641789', 'Berlagak', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'c1829dc5-2ede-4768-9083-52b5c0641789' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Pamer'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('c1829dc5-2ede-4768-9083-52b5c0641789', 'Pamer', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'c1829dc5-2ede-4768-9083-52b5c0641789' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Affectation'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('c1829dc5-2ede-4768-9083-52b5c0641789', 'Affectation', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'c1829dc5-2ede-4768-9083-52b5c0641789' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Showing Off'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('c1829dc5-2ede-4768-9083-52b5c0641789', 'Showing Off', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'c1829dc5-2ede-4768-9083-52b5c0641789' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Sok aksi'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('c1829dc5-2ede-4768-9083-52b5c0641789', 'Sok aksi', false, true);
  END IF;

  -- [VOCABULARY] 騙す (Level 32)
  UPDATE item_meanings SET meaning = 'Menipu', primary_meaning = true, accepted_answer = true WHERE id = '1cc1071e-171d-4539-a4ba-7e7b495433fa';
  UPDATE items SET slug = 'menipu' WHERE id = '6872a042-eff2-4f88-94a3-dd595a6b872a';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '6872a042-eff2-4f88-94a3-dd595a6b872a' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Mengelabui'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('6872a042-eff2-4f88-94a3-dd595a6b872a', 'Mengelabui', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '6872a042-eff2-4f88-94a3-dd595a6b872a' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Untuk Menipu'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('6872a042-eff2-4f88-94a3-dd595a6b872a', 'Untuk Menipu', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '6872a042-eff2-4f88-94a3-dd595a6b872a' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Deceive'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('6872a042-eff2-4f88-94a3-dd595a6b872a', 'To Deceive', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '6872a042-eff2-4f88-94a3-dd595a6b872a' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Trick'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('6872a042-eff2-4f88-94a3-dd595a6b872a', 'To Trick', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '6872a042-eff2-4f88-94a3-dd595a6b872a' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Fool Someone'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('6872a042-eff2-4f88-94a3-dd595a6b872a', 'To Fool Someone', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '6872a042-eff2-4f88-94a3-dd595a6b872a' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Mislead Someone'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('6872a042-eff2-4f88-94a3-dd595a6b872a', 'To Mislead Someone', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '6872a042-eff2-4f88-94a3-dd595a6b872a' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Mislead'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('6872a042-eff2-4f88-94a3-dd595a6b872a', 'To Mislead', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '6872a042-eff2-4f88-94a3-dd595a6b872a' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Fool'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('6872a042-eff2-4f88-94a3-dd595a6b872a', 'To Fool', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '6872a042-eff2-4f88-94a3-dd595a6b872a' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Dupe Someone'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('6872a042-eff2-4f88-94a3-dd595a6b872a', 'To Dupe Someone', false, true);
  END IF;

END $$;
