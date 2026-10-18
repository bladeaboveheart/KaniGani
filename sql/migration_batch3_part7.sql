-- Migration: Batch 3 Part 7 (Level 37)
-- Total items: 86

DO $$
BEGIN

  -- [KANJI] 串 (Level 37)
  UPDATE item_meanings SET meaning = 'Tusuk Sate', primary_meaning = true, accepted_answer = true WHERE id = '1e80526a-215c-48df-b91e-8d72af581c77';
  UPDATE items SET slug = 'tusuk-sate' WHERE id = '615527cf-163e-4aac-a6af-124973c67a74';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '615527cf-163e-4aac-a6af-124973c67a74' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Tusukan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('615527cf-163e-4aac-a6af-124973c67a74', 'Tusukan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '615527cf-163e-4aac-a6af-124973c67a74' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Skewer'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('615527cf-163e-4aac-a6af-124973c67a74', 'Skewer', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '615527cf-163e-4aac-a6af-124973c67a74' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Spit'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('615527cf-163e-4aac-a6af-124973c67a74', 'Spit', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '615527cf-163e-4aac-a6af-124973c67a74' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Meludah'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('615527cf-163e-4aac-a6af-124973c67a74', 'Meludah', false, true);
  END IF;

  -- [KANJI] 償 (Level 37)
  UPDATE item_meanings SET meaning = 'Ganti Rugi', primary_meaning = true, accepted_answer = true WHERE id = '8481ce3c-004d-483a-8f21-e0c9a1d2755d';
  UPDATE items SET slug = 'ganti-rugi' WHERE id = '31f34f6a-b102-4f6b-b1fe-471bffd39b29';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '31f34f6a-b102-4f6b-b1fe-471bffd39b29' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Kompensasi'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('31f34f6a-b102-4f6b-b1fe-471bffd39b29', 'Kompensasi', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '31f34f6a-b102-4f6b-b1fe-471bffd39b29' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Tebusan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('31f34f6a-b102-4f6b-b1fe-471bffd39b29', 'Tebusan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '31f34f6a-b102-4f6b-b1fe-471bffd39b29' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Compensate'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('31f34f6a-b102-4f6b-b1fe-471bffd39b29', 'Compensate', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '31f34f6a-b102-4f6b-b1fe-471bffd39b29' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Reparation'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('31f34f6a-b102-4f6b-b1fe-471bffd39b29', 'Reparation', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '31f34f6a-b102-4f6b-b1fe-471bffd39b29' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Perbaikan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('31f34f6a-b102-4f6b-b1fe-471bffd39b29', 'Perbaikan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '31f34f6a-b102-4f6b-b1fe-471bffd39b29' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Compensation'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('31f34f6a-b102-4f6b-b1fe-471bffd39b29', 'Compensation', false, true);
  END IF;

  -- [KANJI] 兆 (Level 37)
  UPDATE item_meanings SET meaning = 'Pertanda', primary_meaning = true, accepted_answer = true WHERE id = 'df396656-a06c-434c-932b-909f0ecc1e7b';
  UPDATE items SET slug = 'pertanda' WHERE id = '6642183e-6408-4a4e-9d56-f4f0f528ac7c';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '6642183e-6408-4a4e-9d56-f4f0f528ac7c' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Triliun'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('6642183e-6408-4a4e-9d56-f4f0f528ac7c', 'Triliun', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '6642183e-6408-4a4e-9d56-f4f0f528ac7c' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Omen'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('6642183e-6408-4a4e-9d56-f4f0f528ac7c', 'Omen', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '6642183e-6408-4a4e-9d56-f4f0f528ac7c' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Trillion'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('6642183e-6408-4a4e-9d56-f4f0f528ac7c', 'Trillion', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '6642183e-6408-4a4e-9d56-f4f0f528ac7c' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Sign'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('6642183e-6408-4a4e-9d56-f4f0f528ac7c', 'Sign', false, true);
  END IF;

  -- [KANJI] 削 (Level 37)
  UPDATE item_meanings SET meaning = 'Memangkas', primary_meaning = true, accepted_answer = true WHERE id = '0430938e-3b74-4a1a-9a68-9f7d5ca8de03';
  UPDATE items SET slug = 'memangkas' WHERE id = 'fe8b3407-4fe2-4fd2-9660-a1e8e3f502b0';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'fe8b3407-4fe2-4fd2-9660-a1e8e3f502b0' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Menyerut'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('fe8b3407-4fe2-4fd2-9660-a1e8e3f502b0', 'Menyerut', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'fe8b3407-4fe2-4fd2-9660-a1e8e3f502b0' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Mengurangi'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('fe8b3407-4fe2-4fd2-9660-a1e8e3f502b0', 'Mengurangi', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'fe8b3407-4fe2-4fd2-9660-a1e8e3f502b0' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Whittle Down'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('fe8b3407-4fe2-4fd2-9660-a1e8e3f502b0', 'Whittle Down', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'fe8b3407-4fe2-4fd2-9660-a1e8e3f502b0' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Reduce'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('fe8b3407-4fe2-4fd2-9660-a1e8e3f502b0', 'Reduce', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'fe8b3407-4fe2-4fd2-9660-a1e8e3f502b0' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Shave'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('fe8b3407-4fe2-4fd2-9660-a1e8e3f502b0', 'Shave', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'fe8b3407-4fe2-4fd2-9660-a1e8e3f502b0' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Kurangi'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('fe8b3407-4fe2-4fd2-9660-a1e8e3f502b0', 'Kurangi', false, true);
  END IF;

  -- [KANJI] 募 (Level 37)
  UPDATE item_meanings SET meaning = 'Menggalang', primary_meaning = true, accepted_answer = true WHERE id = '35a9524f-de6b-4cc1-8583-8820dc08d2a6';
  UPDATE items SET slug = 'menggalang' WHERE id = '1578639e-645d-4b97-aa9f-d762e32a8203';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '1578639e-645d-4b97-aa9f-d762e32a8203' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Merekrut'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('1578639e-645d-4b97-aa9f-d762e32a8203', 'Merekrut', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '1578639e-645d-4b97-aa9f-d762e32a8203' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Recruit'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('1578639e-645d-4b97-aa9f-d762e32a8203', 'Recruit', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '1578639e-645d-4b97-aa9f-d762e32a8203' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Collect'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('1578639e-645d-4b97-aa9f-d762e32a8203', 'Collect', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '1578639e-645d-4b97-aa9f-d762e32a8203' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Raise'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('1578639e-645d-4b97-aa9f-d762e32a8203', 'Raise', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '1578639e-645d-4b97-aa9f-d762e32a8203' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Rekrut'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('1578639e-645d-4b97-aa9f-d762e32a8203', 'Rekrut', false, true);
  END IF;

  -- [KANJI] 執 (Level 37)
  UPDATE item_meanings SET meaning = 'Melaksanakan', primary_meaning = true, accepted_answer = true WHERE id = '31955886-9576-42bf-9ad0-a67f75fbff2a';
  UPDATE items SET slug = 'melaksanakan' WHERE id = '8166ca31-6b61-47b9-90ab-4ee83239289b';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '8166ca31-6b61-47b9-90ab-4ee83239289b' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Memegang Kuasa'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('8166ca31-6b61-47b9-90ab-4ee83239289b', 'Memegang Kuasa', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '8166ca31-6b61-47b9-90ab-4ee83239289b' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Gigih'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('8166ca31-6b61-47b9-90ab-4ee83239289b', 'Gigih', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '8166ca31-6b61-47b9-90ab-4ee83239289b' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Carry Out'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('8166ca31-6b61-47b9-90ab-4ee83239289b', 'Carry Out', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '8166ca31-6b61-47b9-90ab-4ee83239289b' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Tenacious'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('8166ca31-6b61-47b9-90ab-4ee83239289b', 'Tenacious', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '8166ca31-6b61-47b9-90ab-4ee83239289b' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Take Charge'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('8166ca31-6b61-47b9-90ab-4ee83239289b', 'Take Charge', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '8166ca31-6b61-47b9-90ab-4ee83239289b' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Carrying Out'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('8166ca31-6b61-47b9-90ab-4ee83239289b', 'Carrying Out', false, true);
  END IF;

  -- [KANJI] 塁 (Level 37)
  UPDATE item_meanings SET meaning = 'Pangkalan Base', primary_meaning = true, accepted_answer = true WHERE id = '81bd6c05-c779-4ea3-82a2-12e73494fc57';
  UPDATE items SET slug = 'pangkalan-base' WHERE id = '62c3ba1b-1604-4d58-a248-729586ff05cb';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '62c3ba1b-1604-4d58-a248-729586ff05cb' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Benteng'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('62c3ba1b-1604-4d58-a248-729586ff05cb', 'Benteng', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '62c3ba1b-1604-4d58-a248-729586ff05cb' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Base'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('62c3ba1b-1604-4d58-a248-729586ff05cb', 'Base', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '62c3ba1b-1604-4d58-a248-729586ff05cb' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Fort'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('62c3ba1b-1604-4d58-a248-729586ff05cb', 'Fort', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '62c3ba1b-1604-4d58-a248-729586ff05cb' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Baseball Base'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('62c3ba1b-1604-4d58-a248-729586ff05cb', 'Baseball Base', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '62c3ba1b-1604-4d58-a248-729586ff05cb' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Basis'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('62c3ba1b-1604-4d58-a248-729586ff05cb', 'Basis', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '62c3ba1b-1604-4d58-a248-729586ff05cb' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Pangkalan Bisbol'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('62c3ba1b-1604-4d58-a248-729586ff05cb', 'Pangkalan Bisbol', false, true);
  END IF;

  -- [KANJI] 壁 (Level 37)
  UPDATE item_meanings SET meaning = 'Dinding', primary_meaning = true, accepted_answer = true WHERE id = '6a49eca1-63f6-43cf-b198-f0bbe16e8022';
  UPDATE items SET slug = 'dinding' WHERE id = 'bfe9d4c2-8569-4152-ab37-0db4cc8fa4d1';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'bfe9d4c2-8569-4152-ab37-0db4cc8fa4d1' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Tembok Hambatan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('bfe9d4c2-8569-4152-ab37-0db4cc8fa4d1', 'Tembok Hambatan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'bfe9d4c2-8569-4152-ab37-0db4cc8fa4d1' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Wall'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('bfe9d4c2-8569-4152-ab37-0db4cc8fa4d1', 'Wall', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'bfe9d4c2-8569-4152-ab37-0db4cc8fa4d1' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Barrier'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('bfe9d4c2-8569-4152-ab37-0db4cc8fa4d1', 'Barrier', false, true);
  END IF;

  -- [KANJI] 契 (Level 37)
  UPDATE item_meanings SET meaning = 'Perjanjian Kontrak', primary_meaning = true, accepted_answer = true WHERE id = '31bc389e-9d31-48f7-b3f9-19c98a86e973';
  UPDATE items SET slug = 'perjanjian-kontrak' WHERE id = '22621dcc-5ec4-46a9-9da1-d7321f6636b0';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '22621dcc-5ec4-46a9-9da1-d7321f6636b0' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Ikatan Janji'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('22621dcc-5ec4-46a9-9da1-d7321f6636b0', 'Ikatan Janji', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '22621dcc-5ec4-46a9-9da1-d7321f6636b0' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Contract'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('22621dcc-5ec4-46a9-9da1-d7321f6636b0', 'Contract', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '22621dcc-5ec4-46a9-9da1-d7321f6636b0' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Vow'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('22621dcc-5ec4-46a9-9da1-d7321f6636b0', 'Vow', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '22621dcc-5ec4-46a9-9da1-d7321f6636b0' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Pledge'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('22621dcc-5ec4-46a9-9da1-d7321f6636b0', 'Pledge', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '22621dcc-5ec4-46a9-9da1-d7321f6636b0' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Sumpah'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('22621dcc-5ec4-46a9-9da1-d7321f6636b0', 'Sumpah', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '22621dcc-5ec4-46a9-9da1-d7321f6636b0' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Promise'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('22621dcc-5ec4-46a9-9da1-d7321f6636b0', 'Promise', false, true);
  END IF;

  -- [KANJI] 崩 (Level 37)
  UPDATE item_meanings SET meaning = 'Runtuh', primary_meaning = true, accepted_answer = true WHERE id = '5a3ac13e-9a85-441e-8472-1b032558d30b';
  UPDATE items SET slug = 'runtuh' WHERE id = '2f305348-33a6-48d6-86a6-730e74778619';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '2f305348-33a6-48d6-86a6-730e74778619' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Hancur Longsor'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('2f305348-33a6-48d6-86a6-730e74778619', 'Hancur Longsor', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '2f305348-33a6-48d6-86a6-730e74778619' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Crumble'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('2f305348-33a6-48d6-86a6-730e74778619', 'Crumble', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '2f305348-33a6-48d6-86a6-730e74778619' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Collapse'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('2f305348-33a6-48d6-86a6-730e74778619', 'Collapse', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '2f305348-33a6-48d6-86a6-730e74778619' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Hancur'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('2f305348-33a6-48d6-86a6-730e74778619', 'Hancur', false, true);
  END IF;

  -- [KANJI] 弾 (Level 37)
  UPDATE item_meanings SET meaning = 'Peluru', primary_meaning = true, accepted_answer = true WHERE id = '0dfb1403-be84-43f3-a2f1-0dcbc87f2959';
  UPDATE items SET slug = 'peluru' WHERE id = '248d1cbe-5bda-40f1-8a4e-cef182fa9145';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '248d1cbe-5bda-40f1-8a4e-cef182fa9145' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Membal'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('248d1cbe-5bda-40f1-8a4e-cef182fa9145', 'Membal', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '248d1cbe-5bda-40f1-8a4e-cef182fa9145' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Memetik Musik'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('248d1cbe-5bda-40f1-8a4e-cef182fa9145', 'Memetik Musik', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '248d1cbe-5bda-40f1-8a4e-cef182fa9145' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Bullet'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('248d1cbe-5bda-40f1-8a4e-cef182fa9145', 'Bullet', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '248d1cbe-5bda-40f1-8a4e-cef182fa9145' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Bounce'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('248d1cbe-5bda-40f1-8a4e-cef182fa9145', 'Bounce', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '248d1cbe-5bda-40f1-8a4e-cef182fa9145' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Play Instrument'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('248d1cbe-5bda-40f1-8a4e-cef182fa9145', 'Play Instrument', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '248d1cbe-5bda-40f1-8a4e-cef182fa9145' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Pellet'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('248d1cbe-5bda-40f1-8a4e-cef182fa9145', 'Pellet', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '248d1cbe-5bda-40f1-8a4e-cef182fa9145' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Shell'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('248d1cbe-5bda-40f1-8a4e-cef182fa9145', 'Shell', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '248d1cbe-5bda-40f1-8a4e-cef182fa9145' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Slug'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('248d1cbe-5bda-40f1-8a4e-cef182fa9145', 'Slug', false, true);
  END IF;

  -- [KANJI] 恵 (Level 37)
  UPDATE item_meanings SET meaning = 'Berkah', primary_meaning = true, accepted_answer = true WHERE id = '9918d789-a5c9-4d56-af72-498eee315199';
  UPDATE items SET slug = 'berkah' WHERE id = '2684df22-5f57-45f6-a844-2f3c2e17c713';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '2684df22-5f57-45f6-a844-2f3c2e17c713' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Karunia'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('2684df22-5f57-45f6-a844-2f3c2e17c713', 'Karunia', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '2684df22-5f57-45f6-a844-2f3c2e17c713' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Kebaikan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('2684df22-5f57-45f6-a844-2f3c2e17c713', 'Kebaikan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '2684df22-5f57-45f6-a844-2f3c2e17c713' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Blessing'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('2684df22-5f57-45f6-a844-2f3c2e17c713', 'Blessing', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '2684df22-5f57-45f6-a844-2f3c2e17c713' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Favor'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('2684df22-5f57-45f6-a844-2f3c2e17c713', 'Favor', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '2684df22-5f57-45f6-a844-2f3c2e17c713' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Favour'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('2684df22-5f57-45f6-a844-2f3c2e17c713', 'Favour', false, true);
  END IF;

  -- [KANJI] 患 (Level 37)
  UPDATE item_meanings SET meaning = 'Menderita Sakit', primary_meaning = true, accepted_answer = true WHERE id = '7424bd87-dfd4-40e1-b59b-7b190a869cd2';
  UPDATE items SET slug = 'menderita-sakit' WHERE id = 'df19ad7d-3e3e-402e-980d-9088376af685';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'df19ad7d-3e3e-402e-980d-9088376af685' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Pasien'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('df19ad7d-3e3e-402e-980d-9088376af685', 'Pasien', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'df19ad7d-3e3e-402e-980d-9088376af685' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Afflicted'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('df19ad7d-3e3e-402e-980d-9088376af685', 'Afflicted', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'df19ad7d-3e3e-402e-980d-9088376af685' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Illness'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('df19ad7d-3e3e-402e-980d-9088376af685', 'Illness', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'df19ad7d-3e3e-402e-980d-9088376af685' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Suffer'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('df19ad7d-3e3e-402e-980d-9088376af685', 'Suffer', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'df19ad7d-3e3e-402e-980d-9088376af685' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Menderita'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('df19ad7d-3e3e-402e-980d-9088376af685', 'Menderita', false, true);
  END IF;

  -- [KANJI] 戻 (Level 37)
  UPDATE item_meanings SET meaning = 'Kembali', primary_meaning = true, accepted_answer = true WHERE id = 'adfe3d5c-6207-4037-9cf9-0e67505dd2a0';
  UPDATE items SET slug = 'kembali' WHERE id = '6105d057-1424-42c0-97b5-6aa2c6510b61';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '6105d057-1424-42c0-97b5-6aa2c6510b61' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Mengembalikan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('6105d057-1424-42c0-97b5-6aa2c6510b61', 'Mengembalikan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '6105d057-1424-42c0-97b5-6aa2c6510b61' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Return'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('6105d057-1424-42c0-97b5-6aa2c6510b61', 'Return', false, true);
  END IF;

  -- [KANJI] 抗 (Level 37)
  UPDATE item_meanings SET meaning = 'Melawan', primary_meaning = true, accepted_answer = true WHERE id = 'b6389602-a5d8-43d4-ae24-6e5cf086d7e7';
  UPDATE items SET slug = 'melawan' WHERE id = 'd215f52a-bcee-411f-969d-9c9fcafe2bfb';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'd215f52a-bcee-411f-969d-9c9fcafe2bfb' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Menentang'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('d215f52a-bcee-411f-969d-9c9fcafe2bfb', 'Menentang', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'd215f52a-bcee-411f-969d-9c9fcafe2bfb' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Resist'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('d215f52a-bcee-411f-969d-9c9fcafe2bfb', 'Resist', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'd215f52a-bcee-411f-969d-9c9fcafe2bfb' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Confront'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('d215f52a-bcee-411f-969d-9c9fcafe2bfb', 'Confront', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'd215f52a-bcee-411f-969d-9c9fcafe2bfb' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Oppose'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('d215f52a-bcee-411f-969d-9c9fcafe2bfb', 'Oppose', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'd215f52a-bcee-411f-969d-9c9fcafe2bfb' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Mengonfrontasi'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('d215f52a-bcee-411f-969d-9c9fcafe2bfb', 'Mengonfrontasi', false, true);
  END IF;

  -- [KANJI] 抱 (Level 37)
  UPDATE item_meanings SET meaning = 'Memeluk', primary_meaning = true, accepted_answer = true WHERE id = '992337af-a727-4062-875d-11bfef17ee47';
  UPDATE items SET slug = 'memeluk' WHERE id = 'abb7b25e-9024-4dd1-9b09-79f0b68969d1';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'abb7b25e-9024-4dd1-9b09-79f0b68969d1' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Mendekap'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('abb7b25e-9024-4dd1-9b09-79f0b68969d1', 'Mendekap', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'abb7b25e-9024-4dd1-9b09-79f0b68969d1' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Menyimpan Cita-cita'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('abb7b25e-9024-4dd1-9b09-79f0b68969d1', 'Menyimpan Cita-cita', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'abb7b25e-9024-4dd1-9b09-79f0b68969d1' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Hug'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('abb7b25e-9024-4dd1-9b09-79f0b68969d1', 'Hug', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'abb7b25e-9024-4dd1-9b09-79f0b68969d1' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Hold'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('abb7b25e-9024-4dd1-9b09-79f0b68969d1', 'Hold', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'abb7b25e-9024-4dd1-9b09-79f0b68969d1' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Embrace'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('abb7b25e-9024-4dd1-9b09-79f0b68969d1', 'Embrace', false, true);
  END IF;

  -- [KANJI] 抵 (Level 37)
  UPDATE item_meanings SET meaning = 'Menahan', primary_meaning = true, accepted_answer = true WHERE id = '8afc22fd-1c48-4c02-a921-8c5319006349';
  UPDATE items SET slug = 'menahan' WHERE id = '52364bcf-b2c6-4a01-826a-6b38552b9880';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '52364bcf-b2c6-4a01-826a-6b38552b9880' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Melawan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('52364bcf-b2c6-4a01-826a-6b38552b9880', 'Melawan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '52364bcf-b2c6-4a01-826a-6b38552b9880' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Menyentuh'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('52364bcf-b2c6-4a01-826a-6b38552b9880', 'Menyentuh', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '52364bcf-b2c6-4a01-826a-6b38552b9880' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Resist'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('52364bcf-b2c6-4a01-826a-6b38552b9880', 'Resist', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '52364bcf-b2c6-4a01-826a-6b38552b9880' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Withstand'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('52364bcf-b2c6-4a01-826a-6b38552b9880', 'Withstand', false, true);
  END IF;

  -- [KANJI] 掲 (Level 37)
  UPDATE item_meanings SET meaning = 'Mengibarkan', primary_meaning = true, accepted_answer = true WHERE id = 'ee9c6161-5fcc-4b48-bb34-6a6ee51b4b69';
  UPDATE items SET slug = 'mengibarkan' WHERE id = '0075f590-0f07-4d02-bb87-16712e6c3a78';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '0075f590-0f07-4d02-bb87-16712e6c3a78' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Memajang'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('0075f590-0f07-4d02-bb87-16712e6c3a78', 'Memajang', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '0075f590-0f07-4d02-bb87-16712e6c3a78' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Memuat Tulisan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('0075f590-0f07-4d02-bb87-16712e6c3a78', 'Memuat Tulisan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '0075f590-0f07-4d02-bb87-16712e6c3a78' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Display'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('0075f590-0f07-4d02-bb87-16712e6c3a78', 'Display', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '0075f590-0f07-4d02-bb87-16712e6c3a78' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Put Up'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('0075f590-0f07-4d02-bb87-16712e6c3a78', 'Put Up', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '0075f590-0f07-4d02-bb87-16712e6c3a78' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Publish'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('0075f590-0f07-4d02-bb87-16712e6c3a78', 'Publish', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '0075f590-0f07-4d02-bb87-16712e6c3a78' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Menampilkan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('0075f590-0f07-4d02-bb87-16712e6c3a78', 'Menampilkan', false, true);
  END IF;

  -- [KANJI] 旬 (Level 37)
  UPDATE item_meanings SET meaning = 'Musim Terbaik', primary_meaning = true, accepted_answer = true WHERE id = '5221f1a7-7fce-434f-8315-32927f69bfd4';
  UPDATE items SET slug = 'musim-terbaik' WHERE id = '78a17db2-df08-4978-b178-018a3d110e47';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '78a17db2-df08-4978-b178-018a3d110e47' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Puncak Musim'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('78a17db2-df08-4978-b178-018a3d110e47', 'Puncak Musim', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '78a17db2-df08-4978-b178-018a3d110e47' AND LOWER(TRIM(meaning)) = LOWER(TRIM('In Season'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('78a17db2-df08-4978-b178-018a3d110e47', 'In Season', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '78a17db2-df08-4978-b178-018a3d110e47' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Season'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('78a17db2-df08-4978-b178-018a3d110e47', 'Season', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '78a17db2-df08-4978-b178-018a3d110e47' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Di Musim'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('78a17db2-df08-4978-b178-018a3d110e47', 'Di Musim', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '78a17db2-df08-4978-b178-018a3d110e47' AND LOWER(TRIM(meaning)) = LOWER(TRIM('10 Day Period'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('78a17db2-df08-4978-b178-018a3d110e47', '10 Day Period', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '78a17db2-df08-4978-b178-018a3d110e47' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Ten-day Period'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('78a17db2-df08-4978-b178-018a3d110e47', 'Ten-day Period', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '78a17db2-df08-4978-b178-018a3d110e47' AND LOWER(TRIM(meaning)) = LOWER(TRIM('10 Days'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('78a17db2-df08-4978-b178-018a3d110e47', '10 Days', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '78a17db2-df08-4978-b178-018a3d110e47' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Sepuluh Hari'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('78a17db2-df08-4978-b178-018a3d110e47', 'Sepuluh Hari', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '78a17db2-df08-4978-b178-018a3d110e47' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Ten Days'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('78a17db2-df08-4978-b178-018a3d110e47', 'Ten Days', false, true);
  END IF;

  -- [KANJI] 昭 (Level 37)
  UPDATE item_meanings SET meaning = 'Terang Benderang', primary_meaning = true, accepted_answer = true WHERE id = '598de84a-845c-45e2-bb9b-ca9278003976';
  UPDATE items SET slug = 'terang-benderang' WHERE id = '38711336-fa1e-4a92-95c5-2d47493de45b';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '38711336-fa1e-4a92-95c5-2d47493de45b' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Era Showa'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('38711336-fa1e-4a92-95c5-2d47493de45b', 'Era Showa', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '38711336-fa1e-4a92-95c5-2d47493de45b' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Shining'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('38711336-fa1e-4a92-95c5-2d47493de45b', 'Shining', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '38711336-fa1e-4a92-95c5-2d47493de45b' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Bright'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('38711336-fa1e-4a92-95c5-2d47493de45b', 'Bright', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '38711336-fa1e-4a92-95c5-2d47493de45b' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Showa'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('38711336-fa1e-4a92-95c5-2d47493de45b', 'Showa', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '38711336-fa1e-4a92-95c5-2d47493de45b' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Bersinar'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('38711336-fa1e-4a92-95c5-2d47493de45b', 'Bersinar', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '38711336-fa1e-4a92-95c5-2d47493de45b' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Shine'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('38711336-fa1e-4a92-95c5-2d47493de45b', 'Shine', false, true);
  END IF;

  -- [KANJI] 漁 (Level 37)
  UPDATE item_meanings SET meaning = 'Perikanan', primary_meaning = true, accepted_answer = true WHERE id = 'c11896c4-90ec-4beb-9ac5-c75f486de98b';
  UPDATE items SET slug = 'perikanan' WHERE id = '6dd64f24-7812-4081-abd2-f77918c57a0d';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '6dd64f24-7812-4081-abd2-f77918c57a0d' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Menangkap Ikan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('6dd64f24-7812-4081-abd2-f77918c57a0d', 'Menangkap Ikan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '6dd64f24-7812-4081-abd2-f77918c57a0d' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Fishing'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('6dd64f24-7812-4081-abd2-f77918c57a0d', 'Fishing', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '6dd64f24-7812-4081-abd2-f77918c57a0d' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Fishery'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('6dd64f24-7812-4081-abd2-f77918c57a0d', 'Fishery', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '6dd64f24-7812-4081-abd2-f77918c57a0d' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Penangkapan ikan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('6dd64f24-7812-4081-abd2-f77918c57a0d', 'Penangkapan ikan', false, true);
  END IF;

  -- [KANJI] 爆 (Level 37)
  UPDATE item_meanings SET meaning = 'Meledak', primary_meaning = true, accepted_answer = true WHERE id = 'a345bfd2-25a4-4b7d-93c7-f2d32375e450';
  UPDATE items SET slug = 'meledak' WHERE id = '9c55acfe-0678-426a-bea1-d76b629bae32';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '9c55acfe-0678-426a-bea1-d76b629bae32' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Ledakan Dahsyat'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('9c55acfe-0678-426a-bea1-d76b629bae32', 'Ledakan Dahsyat', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '9c55acfe-0678-426a-bea1-d76b629bae32' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Explode'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('9c55acfe-0678-426a-bea1-d76b629bae32', 'Explode', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '9c55acfe-0678-426a-bea1-d76b629bae32' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Explosion'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('9c55acfe-0678-426a-bea1-d76b629bae32', 'Explosion', false, true);
  END IF;

  -- [KANJI] 狙 (Level 37)
  UPDATE item_meanings SET meaning = 'Membidik', primary_meaning = true, accepted_answer = true WHERE id = '172ca13b-fe1e-4fef-8d46-e6dde997cc86';
  UPDATE items SET slug = 'membidik' WHERE id = 'ec7d146f-1658-4da2-847d-8a5b043544fe';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'ec7d146f-1658-4da2-847d-8a5b043544fe' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Mengincar'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('ec7d146f-1658-4da2-847d-8a5b043544fe', 'Mengincar', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'ec7d146f-1658-4da2-847d-8a5b043544fe' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Aim'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('ec7d146f-1658-4da2-847d-8a5b043544fe', 'Aim', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'ec7d146f-1658-4da2-847d-8a5b043544fe' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Target'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('ec7d146f-1658-4da2-847d-8a5b043544fe', 'Target', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'ec7d146f-1658-4da2-847d-8a5b043544fe' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Tujuan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('ec7d146f-1658-4da2-847d-8a5b043544fe', 'Tujuan', false, true);
  END IF;

  -- [KANJI] 絹 (Level 37)
  UPDATE item_meanings SET meaning = 'Kain Sutra', primary_meaning = true, accepted_answer = true WHERE id = 'a20adb4a-68ad-4ef7-a670-4ad7d7c29540';
  UPDATE items SET slug = 'kain-sutra' WHERE id = '26f656e7-3557-4633-9223-b2fe7901670c';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '26f656e7-3557-4633-9223-b2fe7901670c' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Sutra'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('26f656e7-3557-4633-9223-b2fe7901670c', 'Sutra', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '26f656e7-3557-4633-9223-b2fe7901670c' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Silk'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('26f656e7-3557-4633-9223-b2fe7901670c', 'Silk', false, true);
  END IF;

  -- [KANJI] 臨 (Level 37)
  UPDATE item_meanings SET meaning = 'Menghadapi', primary_meaning = true, accepted_answer = true WHERE id = '9e9e682c-388f-4ad3-8784-ddb34fb335be';
  UPDATE items SET slug = 'menghadapi' WHERE id = 'bf54a915-7d98-4d61-a7b1-651933498ded';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'bf54a915-7d98-4d61-a7b1-651933498ded' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Menghadiri Acara'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('bf54a915-7d98-4d61-a7b1-651933498ded', 'Menghadiri Acara', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'bf54a915-7d98-4d61-a7b1-651933498ded' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Darurat'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('bf54a915-7d98-4d61-a7b1-651933498ded', 'Darurat', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'bf54a915-7d98-4d61-a7b1-651933498ded' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Face'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('bf54a915-7d98-4d61-a7b1-651933498ded', 'Face', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'bf54a915-7d98-4d61-a7b1-651933498ded' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Attend'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('bf54a915-7d98-4d61-a7b1-651933498ded', 'Attend', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'bf54a915-7d98-4d61-a7b1-651933498ded' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Look To'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('bf54a915-7d98-4d61-a7b1-651933498ded', 'Look To', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'bf54a915-7d98-4d61-a7b1-651933498ded' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Lihat Ke'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('bf54a915-7d98-4d61-a7b1-651933498ded', 'Lihat Ke', false, true);
  END IF;

  -- [KANJI] 葬 (Level 37)
  UPDATE item_meanings SET meaning = 'Pemakaman', primary_meaning = true, accepted_answer = true WHERE id = '29a2b6cf-f9f0-4d82-bb9c-4cc2deca0a2a';
  UPDATE items SET slug = 'pemakaman' WHERE id = 'f5777256-f19d-490e-9521-0fe8b82734e9';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'f5777256-f19d-490e-9521-0fe8b82734e9' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Menguburkan Jenazah'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('f5777256-f19d-490e-9521-0fe8b82734e9', 'Menguburkan Jenazah', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'f5777256-f19d-490e-9521-0fe8b82734e9' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Funeral'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('f5777256-f19d-490e-9521-0fe8b82734e9', 'Funeral', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'f5777256-f19d-490e-9521-0fe8b82734e9' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Bury'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('f5777256-f19d-490e-9521-0fe8b82734e9', 'Bury', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'f5777256-f19d-490e-9521-0fe8b82734e9' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Burial'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('f5777256-f19d-490e-9521-0fe8b82734e9', 'Burial', false, true);
  END IF;

  -- [KANJI] 跡 (Level 37)
  UPDATE item_meanings SET meaning = 'Jejak', primary_meaning = true, accepted_answer = true WHERE id = '9d35373d-5b20-40d9-8748-496b8f563805';
  UPDATE items SET slug = 'jejak' WHERE id = '4ff3bd40-640e-4bb2-8bef-e8e68c5660e7';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '4ff3bd40-640e-4bb2-8bef-e8e68c5660e7' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Bekas'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('4ff3bd40-640e-4bb2-8bef-e8e68c5660e7', 'Bekas', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '4ff3bd40-640e-4bb2-8bef-e8e68c5660e7' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Peninggalan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('4ff3bd40-640e-4bb2-8bef-e8e68c5660e7', 'Peninggalan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '4ff3bd40-640e-4bb2-8bef-e8e68c5660e7' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Traces'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('4ff3bd40-640e-4bb2-8bef-e8e68c5660e7', 'Traces', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '4ff3bd40-640e-4bb2-8bef-e8e68c5660e7' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Mark'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('4ff3bd40-640e-4bb2-8bef-e8e68c5660e7', 'Mark', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '4ff3bd40-640e-4bb2-8bef-e8e68c5660e7' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Track'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('4ff3bd40-640e-4bb2-8bef-e8e68c5660e7', 'Track', false, true);
  END IF;

  -- [KANJI] 跳 (Level 37)
  UPDATE item_meanings SET meaning = 'Melompat', primary_meaning = true, accepted_answer = true WHERE id = '3a497cc0-81c9-4cef-98e5-2a2fddcb3e30';
  UPDATE items SET slug = 'melompat' WHERE id = 'a5444aee-9a03-4a65-a04d-6529bd5dacdb';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'a5444aee-9a03-4a65-a04d-6529bd5dacdb' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Meloncat'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('a5444aee-9a03-4a65-a04d-6529bd5dacdb', 'Meloncat', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'a5444aee-9a03-4a65-a04d-6529bd5dacdb' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Leap'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('a5444aee-9a03-4a65-a04d-6529bd5dacdb', 'Leap', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'a5444aee-9a03-4a65-a04d-6529bd5dacdb' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Jump'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('a5444aee-9a03-4a65-a04d-6529bd5dacdb', 'Jump', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'a5444aee-9a03-4a65-a04d-6529bd5dacdb' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Hop'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('a5444aee-9a03-4a65-a04d-6529bd5dacdb', 'Hop', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'a5444aee-9a03-4a65-a04d-6529bd5dacdb' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Leaping'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('a5444aee-9a03-4a65-a04d-6529bd5dacdb', 'Leaping', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'a5444aee-9a03-4a65-a04d-6529bd5dacdb' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Jumping'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('a5444aee-9a03-4a65-a04d-6529bd5dacdb', 'Jumping', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'a5444aee-9a03-4a65-a04d-6529bd5dacdb' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Bounce'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('a5444aee-9a03-4a65-a04d-6529bd5dacdb', 'Bounce', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'a5444aee-9a03-4a65-a04d-6529bd5dacdb' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Hopping'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('a5444aee-9a03-4a65-a04d-6529bd5dacdb', 'Hopping', false, true);
  END IF;

  -- [KANJI] 遣 (Level 37)
  UPDATE item_meanings SET meaning = 'Mengutus', primary_meaning = true, accepted_answer = true WHERE id = '4257d1ab-fe00-4ee2-a73e-3bbb740772de';
  UPDATE items SET slug = 'mengutus' WHERE id = '16f54586-e2af-4e41-bb4c-2da87abb1989';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '16f54586-e2af-4e41-bb4c-2da87abb1989' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Menggunakan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('16f54586-e2af-4e41-bb4c-2da87abb1989', 'Menggunakan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '16f54586-e2af-4e41-bb4c-2da87abb1989' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Dispatch'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('16f54586-e2af-4e41-bb4c-2da87abb1989', 'Dispatch', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '16f54586-e2af-4e41-bb4c-2da87abb1989' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Send'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('16f54586-e2af-4e41-bb4c-2da87abb1989', 'Send', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '16f54586-e2af-4e41-bb4c-2da87abb1989' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Use'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('16f54586-e2af-4e41-bb4c-2da87abb1989', 'Use', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '16f54586-e2af-4e41-bb4c-2da87abb1989' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Menugaskan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('16f54586-e2af-4e41-bb4c-2da87abb1989', 'Menugaskan', false, true);
  END IF;

  -- [KANJI] 闘 (Level 37)
  UPDATE item_meanings SET meaning = 'Bertarung', primary_meaning = true, accepted_answer = true WHERE id = 'c9197851-67f1-44bd-ae97-197bd9da2fe0';
  UPDATE items SET slug = 'bertarung' WHERE id = '2099d822-3e94-4dd0-bb28-9e7830244a07';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '2099d822-3e94-4dd0-bb28-9e7830244a07' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Berjuang Keras'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('2099d822-3e94-4dd0-bb28-9e7830244a07', 'Berjuang Keras', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '2099d822-3e94-4dd0-bb28-9e7830244a07' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Fight'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('2099d822-3e94-4dd0-bb28-9e7830244a07', 'Fight', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '2099d822-3e94-4dd0-bb28-9e7830244a07' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Struggle'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('2099d822-3e94-4dd0-bb28-9e7830244a07', 'Struggle', false, true);
  END IF;

  -- [KANJI] 陣 (Level 37)
  UPDATE item_meanings SET meaning = 'Formasi Perang', primary_meaning = true, accepted_answer = true WHERE id = 'f7c5d4ae-3e2f-4df8-8799-1575926fdcea';
  UPDATE items SET slug = 'formasi-perang' WHERE id = 'dd2f4ea8-72bd-4b8f-8358-11981bf1d9e6';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'dd2f4ea8-72bd-4b8f-8358-11981bf1d9e6' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Posisi Kubu'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('dd2f4ea8-72bd-4b8f-8358-11981bf1d9e6', 'Posisi Kubu', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'dd2f4ea8-72bd-4b8f-8358-11981bf1d9e6' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Camp'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('dd2f4ea8-72bd-4b8f-8358-11981bf1d9e6', 'Camp', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'dd2f4ea8-72bd-4b8f-8358-11981bf1d9e6' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Formation'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('dd2f4ea8-72bd-4b8f-8358-11981bf1d9e6', 'Formation', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'dd2f4ea8-72bd-4b8f-8358-11981bf1d9e6' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Faction'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('dd2f4ea8-72bd-4b8f-8358-11981bf1d9e6', 'Faction', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'dd2f4ea8-72bd-4b8f-8358-11981bf1d9e6' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Kamp Tentara'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('dd2f4ea8-72bd-4b8f-8358-11981bf1d9e6', 'Kamp Tentara', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'dd2f4ea8-72bd-4b8f-8358-11981bf1d9e6' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Base'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('dd2f4ea8-72bd-4b8f-8358-11981bf1d9e6', 'Base', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'dd2f4ea8-72bd-4b8f-8358-11981bf1d9e6' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Encampment'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('dd2f4ea8-72bd-4b8f-8358-11981bf1d9e6', 'Encampment', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'dd2f4ea8-72bd-4b8f-8358-11981bf1d9e6' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Army Base'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('dd2f4ea8-72bd-4b8f-8358-11981bf1d9e6', 'Army Base', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'dd2f4ea8-72bd-4b8f-8358-11981bf1d9e6' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Army Camp'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('dd2f4ea8-72bd-4b8f-8358-11981bf1d9e6', 'Army Camp', false, true);
  END IF;

  -- [KANJI] 香 (Level 37)
  UPDATE item_meanings SET meaning = 'Aroma Harum', primary_meaning = true, accepted_answer = true WHERE id = '85affd83-f5cf-4eee-9527-48c8d3fa790d';
  UPDATE items SET slug = 'aroma-harum' WHERE id = '76ab0d63-0374-41a0-b64d-c534c82277d3';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '76ab0d63-0374-41a0-b64d-c534c82277d3' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Dupa'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('76ab0d63-0374-41a0-b64d-c534c82277d3', 'Dupa', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '76ab0d63-0374-41a0-b64d-c534c82277d3' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Fragrance'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('76ab0d63-0374-41a0-b64d-c534c82277d3', 'Fragrance', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '76ab0d63-0374-41a0-b64d-c534c82277d3' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Scent'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('76ab0d63-0374-41a0-b64d-c534c82277d3', 'Scent', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '76ab0d63-0374-41a0-b64d-c534c82277d3' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Incense'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('76ab0d63-0374-41a0-b64d-c534c82277d3', 'Incense', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '76ab0d63-0374-41a0-b64d-c534c82277d3' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Parfum'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('76ab0d63-0374-41a0-b64d-c534c82277d3', 'Parfum', false, true);
  END IF;

  -- [VOCABULARY] 一人暮らし (Level 37)
  UPDATE item_meanings SET meaning = 'Hidup Sendiri', primary_meaning = true, accepted_answer = true WHERE id = '3dd012f2-1aa6-4bca-b301-6679d86b34ee';
  UPDATE items SET slug = 'hidup-sendiri' WHERE id = '3597983f-f285-4e4c-beb7-aa37c49dcd02';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '3597983f-f285-4e4c-beb7-aa37c49dcd02' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Tinggal Sendiri'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('3597983f-f285-4e4c-beb7-aa37c49dcd02', 'Tinggal Sendiri', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '3597983f-f285-4e4c-beb7-aa37c49dcd02' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Hidup Sendirian'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('3597983f-f285-4e4c-beb7-aa37c49dcd02', 'Hidup Sendirian', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '3597983f-f285-4e4c-beb7-aa37c49dcd02' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Living Alone'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('3597983f-f285-4e4c-beb7-aa37c49dcd02', 'Living Alone', false, true);
  END IF;

  -- [VOCABULARY] 二日酔い (Level 37)
  UPDATE item_meanings SET meaning = 'Pengar', primary_meaning = true, accepted_answer = true WHERE id = '6433d11c-1d47-4df0-b804-3e89c336d9e0';
  UPDATE items SET slug = 'pengar' WHERE id = 'f00c2e9d-c5ab-47c7-a561-c00ec9f3abcc';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'f00c2e9d-c5ab-47c7-a561-c00ec9f3abcc' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Mabuk Pasca Minum'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('f00c2e9d-c5ab-47c7-a561-c00ec9f3abcc', 'Mabuk Pasca Minum', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'f00c2e9d-c5ab-47c7-a561-c00ec9f3abcc' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Hangover'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('f00c2e9d-c5ab-47c7-a561-c00ec9f3abcc', 'Hangover', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'f00c2e9d-c5ab-47c7-a561-c00ec9f3abcc' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Pengar (Mabuk Pasca Minum'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('f00c2e9d-c5ab-47c7-a561-c00ec9f3abcc', 'Pengar (Mabuk Pasca Minum', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'f00c2e9d-c5ab-47c7-a561-c00ec9f3abcc' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Hangover)'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('f00c2e9d-c5ab-47c7-a561-c00ec9f3abcc', 'Hangover)', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'f00c2e9d-c5ab-47c7-a561-c00ec9f3abcc' AND LOWER(TRIM(meaning)) = LOWER(TRIM('mabuk'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('f00c2e9d-c5ab-47c7-a561-c00ec9f3abcc', 'mabuk', false, true);
  END IF;

  -- [VOCABULARY] 償う (Level 37)
  UPDATE item_meanings SET meaning = 'Menebus Kesalahan', primary_meaning = true, accepted_answer = true WHERE id = '89df41ba-2fb9-4a76-be6e-bb74c6052947';
  UPDATE items SET slug = 'menebus-kesalahan' WHERE id = '46cc6f03-4e6d-434f-9aa2-f9dc757015a4';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '46cc6f03-4e6d-434f-9aa2-f9dc757015a4' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Mengganti Rugi'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('46cc6f03-4e6d-434f-9aa2-f9dc757015a4', 'Mengganti Rugi', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '46cc6f03-4e6d-434f-9aa2-f9dc757015a4' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Untuk Mengkompensasi'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('46cc6f03-4e6d-434f-9aa2-f9dc757015a4', 'Untuk Mengkompensasi', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '46cc6f03-4e6d-434f-9aa2-f9dc757015a4' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Atone For'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('46cc6f03-4e6d-434f-9aa2-f9dc757015a4', 'To Atone For', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '46cc6f03-4e6d-434f-9aa2-f9dc757015a4' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Compensate'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('46cc6f03-4e6d-434f-9aa2-f9dc757015a4', 'To Compensate', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '46cc6f03-4e6d-434f-9aa2-f9dc757015a4' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Compensate For'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('46cc6f03-4e6d-434f-9aa2-f9dc757015a4', 'To Compensate For', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '46cc6f03-4e6d-434f-9aa2-f9dc757015a4' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Untuk Menebus'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('46cc6f03-4e6d-434f-9aa2-f9dc757015a4', 'Untuk Menebus', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '46cc6f03-4e6d-434f-9aa2-f9dc757015a4' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Make Up For'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('46cc6f03-4e6d-434f-9aa2-f9dc757015a4', 'To Make Up For', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '46cc6f03-4e6d-434f-9aa2-f9dc757015a4' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Atone'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('46cc6f03-4e6d-434f-9aa2-f9dc757015a4', 'To Atone', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '46cc6f03-4e6d-434f-9aa2-f9dc757015a4' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Compensate For Something'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('46cc6f03-4e6d-434f-9aa2-f9dc757015a4', 'To Compensate For Something', false, true);
  END IF;

  -- [VOCABULARY] 兆候 (Level 37)
  UPDATE item_meanings SET meaning = 'Gejala Awal', primary_meaning = true, accepted_answer = true WHERE id = '16d57b74-5bed-4a6e-b64a-74f6446f0376';
  UPDATE items SET slug = 'gejala-awal' WHERE id = '57c4e7d9-94bc-4799-8b86-492710ad6269';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '57c4e7d9-94bc-4799-8b86-492710ad6269' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Tanda-tanda'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('57c4e7d9-94bc-4799-8b86-492710ad6269', 'Tanda-tanda', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '57c4e7d9-94bc-4799-8b86-492710ad6269' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Tanda'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('57c4e7d9-94bc-4799-8b86-492710ad6269', 'Tanda', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '57c4e7d9-94bc-4799-8b86-492710ad6269' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Sign'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('57c4e7d9-94bc-4799-8b86-492710ad6269', 'Sign', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '57c4e7d9-94bc-4799-8b86-492710ad6269' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Omen'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('57c4e7d9-94bc-4799-8b86-492710ad6269', 'Omen', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '57c4e7d9-94bc-4799-8b86-492710ad6269' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Indication'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('57c4e7d9-94bc-4799-8b86-492710ad6269', 'Indication', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '57c4e7d9-94bc-4799-8b86-492710ad6269' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Indikasi'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('57c4e7d9-94bc-4799-8b86-492710ad6269', 'Indikasi', false, true);
  END IF;

  -- [VOCABULARY] 刑事 (Level 37)
  UPDATE item_meanings SET meaning = 'Detektif Polisi', primary_meaning = true, accepted_answer = true WHERE id = 'abd6617a-8b1d-4431-990a-dbfbebd411ba';
  UPDATE items SET slug = 'detektif-polisi' WHERE id = 'be9bb7e0-e396-4ff8-aabb-eb43800e1717';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'be9bb7e0-e396-4ff8-aabb-eb43800e1717' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Kasus Pidana'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('be9bb7e0-e396-4ff8-aabb-eb43800e1717', 'Kasus Pidana', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'be9bb7e0-e396-4ff8-aabb-eb43800e1717' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Police Detective'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('be9bb7e0-e396-4ff8-aabb-eb43800e1717', 'Police Detective', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'be9bb7e0-e396-4ff8-aabb-eb43800e1717' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Detective'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('be9bb7e0-e396-4ff8-aabb-eb43800e1717', 'Detective', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'be9bb7e0-e396-4ff8-aabb-eb43800e1717' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Criminal Case'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('be9bb7e0-e396-4ff8-aabb-eb43800e1717', 'Criminal Case', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'be9bb7e0-e396-4ff8-aabb-eb43800e1717' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Detektif'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('be9bb7e0-e396-4ff8-aabb-eb43800e1717', 'Detektif', false, true);
  END IF;

  -- [VOCABULARY] 刑罰 (Level 37)
  UPDATE item_meanings SET meaning = 'Hukuman Pidana', primary_meaning = true, accepted_answer = true WHERE id = 'be7c614b-4fbd-4828-a606-3279e486ebb7';
  UPDATE items SET slug = 'hukuman-pidana' WHERE id = 'e9809150-b854-433e-bd7a-a450066477b4';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'e9809150-b854-433e-bd7a-a450066477b4' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Sanksi Hukum'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('e9809150-b854-433e-bd7a-a450066477b4', 'Sanksi Hukum', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'e9809150-b854-433e-bd7a-a450066477b4' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Hukuman'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('e9809150-b854-433e-bd7a-a450066477b4', 'Hukuman', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'e9809150-b854-433e-bd7a-a450066477b4' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Penalty'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('e9809150-b854-433e-bd7a-a450066477b4', 'Penalty', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'e9809150-b854-433e-bd7a-a450066477b4' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Punishment'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('e9809150-b854-433e-bd7a-a450066477b4', 'Punishment', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'e9809150-b854-433e-bd7a-a450066477b4' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Penalti'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('e9809150-b854-433e-bd7a-a450066477b4', 'Penalti', false, true);
  END IF;

  -- [VOCABULARY] 削る (Level 37)
  UPDATE item_meanings SET meaning = 'Menyerut', primary_meaning = true, accepted_answer = true WHERE id = 'cdc76f59-f613-4711-9728-9a32bbfb2e1e';
  UPDATE items SET slug = 'menyerut' WHERE id = 'b0eada06-c789-4b55-826b-1b294ee7b2a0';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'b0eada06-c789-4b55-826b-1b294ee7b2a0' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Memangkas Anggaran'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('b0eada06-c789-4b55-826b-1b294ee7b2a0', 'Memangkas Anggaran', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'b0eada06-c789-4b55-826b-1b294ee7b2a0' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Untuk Mengurangi Sesuatu'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('b0eada06-c789-4b55-826b-1b294ee7b2a0', 'Untuk Mengurangi Sesuatu', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'b0eada06-c789-4b55-826b-1b294ee7b2a0' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Shave Down'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('b0eada06-c789-4b55-826b-1b294ee7b2a0', 'To Shave Down', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'b0eada06-c789-4b55-826b-1b294ee7b2a0' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Whittle Down'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('b0eada06-c789-4b55-826b-1b294ee7b2a0', 'To Whittle Down', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'b0eada06-c789-4b55-826b-1b294ee7b2a0' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Cut'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('b0eada06-c789-4b55-826b-1b294ee7b2a0', 'To Cut', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'b0eada06-c789-4b55-826b-1b294ee7b2a0' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Shave Something Off'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('b0eada06-c789-4b55-826b-1b294ee7b2a0', 'To Shave Something Off', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'b0eada06-c789-4b55-826b-1b294ee7b2a0' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Reduce'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('b0eada06-c789-4b55-826b-1b294ee7b2a0', 'To Reduce', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'b0eada06-c789-4b55-826b-1b294ee7b2a0' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Cut Something'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('b0eada06-c789-4b55-826b-1b294ee7b2a0', 'To Cut Something', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'b0eada06-c789-4b55-826b-1b294ee7b2a0' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Shave Off'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('b0eada06-c789-4b55-826b-1b294ee7b2a0', 'To Shave Off', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'b0eada06-c789-4b55-826b-1b294ee7b2a0' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Whittle Something Down'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('b0eada06-c789-4b55-826b-1b294ee7b2a0', 'To Whittle Something Down', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'b0eada06-c789-4b55-826b-1b294ee7b2a0' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Shave Something Down'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('b0eada06-c789-4b55-826b-1b294ee7b2a0', 'To Shave Something Down', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'b0eada06-c789-4b55-826b-1b294ee7b2a0' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Reduce Something'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('b0eada06-c789-4b55-826b-1b294ee7b2a0', 'To Reduce Something', false, true);
  END IF;

  -- [VOCABULARY] 削減 (Level 37)
  UPDATE item_meanings SET meaning = 'Pemotongan', primary_meaning = true, accepted_answer = true WHERE id = 'a0210b4a-a9c4-4884-bc1d-fb9683dcb6e6';
  UPDATE items SET slug = 'pemotongan' WHERE id = '0d4590c4-3f6a-4008-8df7-2604af383a22';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '0d4590c4-3f6a-4008-8df7-2604af383a22' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Pemangkasan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('0d4590c4-3f6a-4008-8df7-2604af383a22', 'Pemangkasan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '0d4590c4-3f6a-4008-8df7-2604af383a22' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Pengurangan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('0d4590c4-3f6a-4008-8df7-2604af383a22', 'Pengurangan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '0d4590c4-3f6a-4008-8df7-2604af383a22' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Reduction'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('0d4590c4-3f6a-4008-8df7-2604af383a22', 'Reduction', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '0d4590c4-3f6a-4008-8df7-2604af383a22' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Cut'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('0d4590c4-3f6a-4008-8df7-2604af383a22', 'Cut', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '0d4590c4-3f6a-4008-8df7-2604af383a22' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Pemangkasan (Biaya'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('0d4590c4-3f6a-4008-8df7-2604af383a22', 'Pemangkasan (Biaya', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '0d4590c4-3f6a-4008-8df7-2604af383a22' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Emisi)'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('0d4590c4-3f6a-4008-8df7-2604af383a22', 'Emisi)', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '0d4590c4-3f6a-4008-8df7-2604af383a22' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Cutback'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('0d4590c4-3f6a-4008-8df7-2604af383a22', 'Cutback', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '0d4590c4-3f6a-4008-8df7-2604af383a22' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Reduce'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('0d4590c4-3f6a-4008-8df7-2604af383a22', 'Reduce', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '0d4590c4-3f6a-4008-8df7-2604af383a22' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Reducing'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('0d4590c4-3f6a-4008-8df7-2604af383a22', 'Reducing', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '0d4590c4-3f6a-4008-8df7-2604af383a22' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Cutting Back'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('0d4590c4-3f6a-4008-8df7-2604af383a22', 'Cutting Back', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '0d4590c4-3f6a-4008-8df7-2604af383a22' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Cut Back'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('0d4590c4-3f6a-4008-8df7-2604af383a22', 'Cut Back', false, true);
  END IF;

  -- [VOCABULARY] 前兆 (Level 37)
  UPDATE item_meanings SET meaning = 'Firasat', primary_meaning = true, accepted_answer = true WHERE id = '114d83be-166f-49b7-b3ea-903489d340af';
  UPDATE items SET slug = 'firasat' WHERE id = '69908c67-affe-42a0-8d1e-f78c0b121333';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '69908c67-affe-42a0-8d1e-f78c0b121333' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Gejala Awal Kemunculan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('69908c67-affe-42a0-8d1e-f78c0b121333', 'Gejala Awal Kemunculan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '69908c67-affe-42a0-8d1e-f78c0b121333' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Pertanda'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('69908c67-affe-42a0-8d1e-f78c0b121333', 'Pertanda', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '69908c67-affe-42a0-8d1e-f78c0b121333' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Premonition'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('69908c67-affe-42a0-8d1e-f78c0b121333', 'Premonition', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '69908c67-affe-42a0-8d1e-f78c0b121333' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Omen'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('69908c67-affe-42a0-8d1e-f78c0b121333', 'Omen', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '69908c67-affe-42a0-8d1e-f78c0b121333' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Sign'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('69908c67-affe-42a0-8d1e-f78c0b121333', 'Sign', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '69908c67-affe-42a0-8d1e-f78c0b121333' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Tanda'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('69908c67-affe-42a0-8d1e-f78c0b121333', 'Tanda', false, true);
  END IF;

  -- [VOCABULARY] 募る (Level 37)
  UPDATE item_meanings SET meaning = 'Menggalang', primary_meaning = true, accepted_answer = true WHERE id = 'bd964ec2-20f4-4a51-b057-0aa9e609b5bb';
  UPDATE items SET slug = 'menggalang' WHERE id = 'a3b82836-cfb3-41ea-aead-8064ecb444ca';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'a3b82836-cfb3-41ea-aead-8064ecb444ca' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Merekrut'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('a3b82836-cfb3-41ea-aead-8064ecb444ca', 'Merekrut', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'a3b82836-cfb3-41ea-aead-8064ecb444ca' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Memuncak'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('a3b82836-cfb3-41ea-aead-8064ecb444ca', 'Memuncak', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'a3b82836-cfb3-41ea-aead-8064ecb444ca' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Recruit'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('a3b82836-cfb3-41ea-aead-8064ecb444ca', 'To Recruit', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'a3b82836-cfb3-41ea-aead-8064ecb444ca' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Raise'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('a3b82836-cfb3-41ea-aead-8064ecb444ca', 'To Raise', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'a3b82836-cfb3-41ea-aead-8064ecb444ca' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Untuk Memohon Sesuatu'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('a3b82836-cfb3-41ea-aead-8064ecb444ca', 'Untuk Memohon Sesuatu', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'a3b82836-cfb3-41ea-aead-8064ecb444ca' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Grow Stronger'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('a3b82836-cfb3-41ea-aead-8064ecb444ca', 'To Grow Stronger', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'a3b82836-cfb3-41ea-aead-8064ecb444ca' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Call For'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('a3b82836-cfb3-41ea-aead-8064ecb444ca', 'To Call For', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'a3b82836-cfb3-41ea-aead-8064ecb444ca' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Become Stronger'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('a3b82836-cfb3-41ea-aead-8064ecb444ca', 'To Become Stronger', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'a3b82836-cfb3-41ea-aead-8064ecb444ca' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Grow Violent'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('a3b82836-cfb3-41ea-aead-8064ecb444ca', 'To Grow Violent', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'a3b82836-cfb3-41ea-aead-8064ecb444ca' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Raise Something'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('a3b82836-cfb3-41ea-aead-8064ecb444ca', 'To Raise Something', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'a3b82836-cfb3-41ea-aead-8064ecb444ca' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Appeal For Something'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('a3b82836-cfb3-41ea-aead-8064ecb444ca', 'To Appeal For Something', false, true);
  END IF;

  -- [VOCABULARY] 反抗する (Level 37)
  UPDATE item_meanings SET meaning = 'Membangkang', primary_meaning = true, accepted_answer = true WHERE id = 'bd7cdba2-702e-4291-bb50-51920c67d027';
  UPDATE items SET slug = 'membangkang' WHERE id = 'b67531df-4eb0-4382-b33b-36a56e2096f1';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'b67531df-4eb0-4382-b33b-36a56e2096f1' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Memberontak'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('b67531df-4eb0-4382-b33b-36a56e2096f1', 'Memberontak', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'b67531df-4eb0-4382-b33b-36a56e2096f1' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Untuk Pemberontak'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('b67531df-4eb0-4382-b33b-36a56e2096f1', 'Untuk Pemberontak', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'b67531df-4eb0-4382-b33b-36a56e2096f1' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Rebel'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('b67531df-4eb0-4382-b33b-36a56e2096f1', 'To Rebel', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'b67531df-4eb0-4382-b33b-36a56e2096f1' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Resist'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('b67531df-4eb0-4382-b33b-36a56e2096f1', 'To Resist', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'b67531df-4eb0-4382-b33b-36a56e2096f1' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Defy'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('b67531df-4eb0-4382-b33b-36a56e2096f1', 'To Defy', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'b67531df-4eb0-4382-b33b-36a56e2096f1' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Oppose'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('b67531df-4eb0-4382-b33b-36a56e2096f1', 'To Oppose', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'b67531df-4eb0-4382-b33b-36a56e2096f1' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Disobey'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('b67531df-4eb0-4382-b33b-36a56e2096f1', 'To Disobey', false, true);
  END IF;

  -- [VOCABULARY] 唾 (Level 37)
  UPDATE item_meanings SET meaning = 'Air Liur', primary_meaning = true, accepted_answer = true WHERE id = '756fb61b-7efb-48c6-813d-d15fe9216971';
  UPDATE items SET slug = 'air-liur' WHERE id = '252502ba-b9be-4f28-9dad-a6852eda4cf6';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '252502ba-b9be-4f28-9dad-a6852eda4cf6' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Ludah'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('252502ba-b9be-4f28-9dad-a6852eda4cf6', 'Ludah', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '252502ba-b9be-4f28-9dad-a6852eda4cf6' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Meludah'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('252502ba-b9be-4f28-9dad-a6852eda4cf6', 'Meludah', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '252502ba-b9be-4f28-9dad-a6852eda4cf6' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Saliva'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('252502ba-b9be-4f28-9dad-a6852eda4cf6', 'Saliva', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '252502ba-b9be-4f28-9dad-a6852eda4cf6' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Spit'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('252502ba-b9be-4f28-9dad-a6852eda4cf6', 'Spit', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '252502ba-b9be-4f28-9dad-a6852eda4cf6' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Spittle'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('252502ba-b9be-4f28-9dad-a6852eda4cf6', 'Spittle', false, true);
  END IF;

  -- [VOCABULARY] 執る (Level 37)
  UPDATE item_meanings SET meaning = 'Memegang Kendali', primary_meaning = true, accepted_answer = true WHERE id = 'dbba9eb7-41f3-4616-8841-4f4901393d8e';
  UPDATE items SET slug = 'memegang-kendali' WHERE id = '0f2ab785-e113-42fc-a626-faadbbcaa5df';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '0f2ab785-e113-42fc-a626-faadbbcaa5df' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Menjalankan Tugas'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('0f2ab785-e113-42fc-a626-faadbbcaa5df', 'Menjalankan Tugas', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '0f2ab785-e113-42fc-a626-faadbbcaa5df' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Untuk Mengambil'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('0f2ab785-e113-42fc-a626-faadbbcaa5df', 'Untuk Mengambil', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '0f2ab785-e113-42fc-a626-faadbbcaa5df' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Take Charge'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('0f2ab785-e113-42fc-a626-faadbbcaa5df', 'To Take Charge', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '0f2ab785-e113-42fc-a626-faadbbcaa5df' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Carry Out'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('0f2ab785-e113-42fc-a626-faadbbcaa5df', 'To Carry Out', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '0f2ab785-e113-42fc-a626-faadbbcaa5df' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Take Control'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('0f2ab785-e113-42fc-a626-faadbbcaa5df', 'To Take Control', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '0f2ab785-e113-42fc-a626-faadbbcaa5df' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Take Up'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('0f2ab785-e113-42fc-a626-faadbbcaa5df', 'To Take Up', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '0f2ab785-e113-42fc-a626-faadbbcaa5df' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Untuk Melaksanakan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('0f2ab785-e113-42fc-a626-faadbbcaa5df', 'Untuk Melaksanakan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '0f2ab785-e113-42fc-a626-faadbbcaa5df' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Attend To Business'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('0f2ab785-e113-42fc-a626-faadbbcaa5df', 'To Attend To Business', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '0f2ab785-e113-42fc-a626-faadbbcaa5df' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Handle'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('0f2ab785-e113-42fc-a626-faadbbcaa5df', 'To Handle', false, true);
  END IF;

  -- [VOCABULARY] 執着 (Level 37)
  UPDATE item_meanings SET meaning = 'Keterikatan Emosional', primary_meaning = true, accepted_answer = true WHERE id = '8d07fd81-f1ff-41b8-bae9-5c47e27f8b28';
  UPDATE items SET slug = 'keterikatan-emosional' WHERE id = 'd6eebbe9-c0c9-40df-9152-f15f140fd5a6';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'd6eebbe9-c0c9-40df-9152-f15f140fd5a6' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Terobsesi Melekat'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('d6eebbe9-c0c9-40df-9152-f15f140fd5a6', 'Terobsesi Melekat', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'd6eebbe9-c0c9-40df-9152-f15f140fd5a6' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Lampiran Ke'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('d6eebbe9-c0c9-40df-9152-f15f140fd5a6', 'Lampiran Ke', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'd6eebbe9-c0c9-40df-9152-f15f140fd5a6' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Obsession'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('d6eebbe9-c0c9-40df-9152-f15f140fd5a6', 'Obsession', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'd6eebbe9-c0c9-40df-9152-f15f140fd5a6' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Attachment To'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('d6eebbe9-c0c9-40df-9152-f15f140fd5a6', 'Attachment To', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'd6eebbe9-c0c9-40df-9152-f15f140fd5a6' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Persist'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('d6eebbe9-c0c9-40df-9152-f15f140fd5a6', 'Persist', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'd6eebbe9-c0c9-40df-9152-f15f140fd5a6' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Adhering'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('d6eebbe9-c0c9-40df-9152-f15f140fd5a6', 'Adhering', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'd6eebbe9-c0c9-40df-9152-f15f140fd5a6' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Being Tenacious'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('d6eebbe9-c0c9-40df-9152-f15f140fd5a6', 'Being Tenacious', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'd6eebbe9-c0c9-40df-9152-f15f140fd5a6' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Adhering To'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('d6eebbe9-c0c9-40df-9152-f15f140fd5a6', 'Adhering To', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'd6eebbe9-c0c9-40df-9152-f15f140fd5a6' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Adhere To'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('d6eebbe9-c0c9-40df-9152-f15f140fd5a6', 'Adhere To', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'd6eebbe9-c0c9-40df-9152-f15f140fd5a6' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Clinging To'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('d6eebbe9-c0c9-40df-9152-f15f140fd5a6', 'Clinging To', false, true);
  END IF;

  -- [VOCABULARY] 執筆 (Level 37)
  UPDATE item_meanings SET meaning = 'Menulis Karya', primary_meaning = true, accepted_answer = true WHERE id = '5368ec40-d36d-4266-b349-2c82f84fa063';
  UPDATE items SET slug = 'menulis-karya' WHERE id = '9bb7fb79-5515-4ad9-93e9-41caf62daa7f';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '9bb7fb79-5515-4ad9-93e9-41caf62daa7f' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Kepengarangan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('9bb7fb79-5515-4ad9-93e9-41caf62daa7f', 'Kepengarangan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '9bb7fb79-5515-4ad9-93e9-41caf62daa7f' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Menulis'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('9bb7fb79-5515-4ad9-93e9-41caf62daa7f', 'Menulis', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '9bb7fb79-5515-4ad9-93e9-41caf62daa7f' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Writing'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('9bb7fb79-5515-4ad9-93e9-41caf62daa7f', 'Writing', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '9bb7fb79-5515-4ad9-93e9-41caf62daa7f' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Authorship'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('9bb7fb79-5515-4ad9-93e9-41caf62daa7f', 'Authorship', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '9bb7fb79-5515-4ad9-93e9-41caf62daa7f' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Professionally Write'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('9bb7fb79-5515-4ad9-93e9-41caf62daa7f', 'Professionally Write', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '9bb7fb79-5515-4ad9-93e9-41caf62daa7f' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Professional Writing'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('9bb7fb79-5515-4ad9-93e9-41caf62daa7f', 'Professional Writing', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '9bb7fb79-5515-4ad9-93e9-41caf62daa7f' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Penulisan Profesional'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('9bb7fb79-5515-4ad9-93e9-41caf62daa7f', 'Penulisan Profesional', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '9bb7fb79-5515-4ad9-93e9-41caf62daa7f' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Write For A Magazine'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('9bb7fb79-5515-4ad9-93e9-41caf62daa7f', 'Write For A Magazine', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '9bb7fb79-5515-4ad9-93e9-41caf62daa7f' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Write'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('9bb7fb79-5515-4ad9-93e9-41caf62daa7f', 'Write', false, true);
  END IF;

  -- [VOCABULARY] 大抵 (Level 37)
  UPDATE item_meanings SET meaning = 'Biasanya', primary_meaning = true, accepted_answer = true WHERE id = '63bfcc47-155b-4f69-9c85-46a852dadac9';
  UPDATE items SET slug = 'biasanya' WHERE id = '70ec53b0-15ae-40d3-b4c9-ab0e583770d4';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '70ec53b0-15ae-40d3-b4c9-ab0e583770d4' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Pada Umumnya'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('70ec53b0-15ae-40d3-b4c9-ab0e583770d4', 'Pada Umumnya', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '70ec53b0-15ae-40d3-b4c9-ab0e583770d4' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Sebagian Besar'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('70ec53b0-15ae-40d3-b4c9-ab0e583770d4', 'Sebagian Besar', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '70ec53b0-15ae-40d3-b4c9-ab0e583770d4' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Umumnya'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('70ec53b0-15ae-40d3-b4c9-ab0e583770d4', 'Umumnya', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '70ec53b0-15ae-40d3-b4c9-ab0e583770d4' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Generally'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('70ec53b0-15ae-40d3-b4c9-ab0e583770d4', 'Generally', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '70ec53b0-15ae-40d3-b4c9-ab0e583770d4' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Usually'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('70ec53b0-15ae-40d3-b4c9-ab0e583770d4', 'Usually', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '70ec53b0-15ae-40d3-b4c9-ab0e583770d4' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Mostly'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('70ec53b0-15ae-40d3-b4c9-ab0e583770d4', 'Mostly', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '70ec53b0-15ae-40d3-b4c9-ab0e583770d4' AND LOWER(TRIM(meaning)) = LOWER(TRIM('In General'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('70ec53b0-15ae-40d3-b4c9-ab0e583770d4', 'In General', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '70ec53b0-15ae-40d3-b4c9-ab0e583770d4' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Dalam Banyak Kasus'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('70ec53b0-15ae-40d3-b4c9-ab0e583770d4', 'Dalam Banyak Kasus', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '70ec53b0-15ae-40d3-b4c9-ab0e583770d4' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Almost All'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('70ec53b0-15ae-40d3-b4c9-ab0e583770d4', 'Almost All', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '70ec53b0-15ae-40d3-b4c9-ab0e583770d4' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Nearly'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('70ec53b0-15ae-40d3-b4c9-ab0e583770d4', 'Nearly', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '70ec53b0-15ae-40d3-b4c9-ab0e583770d4' AND LOWER(TRIM(meaning)) = LOWER(TRIM('In Most Cases'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('70ec53b0-15ae-40d3-b4c9-ab0e583770d4', 'In Most Cases', false, true);
  END IF;

  -- [VOCABULARY] 契機 (Level 37)
  UPDATE item_meanings SET meaning = 'Pemicu Momen', primary_meaning = true, accepted_answer = true WHERE id = '24f0a1d0-b4cb-4195-8220-116138958c21';
  UPDATE items SET slug = 'pemicu-momen' WHERE id = '556bd24a-7843-4c23-9d78-378eb843b604';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '556bd24a-7843-4c23-9d78-378eb843b604' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Titik Balik Peristiwa'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('556bd24a-7843-4c23-9d78-378eb843b604', 'Titik Balik Peristiwa', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '556bd24a-7843-4c23-9d78-378eb843b604' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Peluang'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('556bd24a-7843-4c23-9d78-378eb843b604', 'Peluang', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '556bd24a-7843-4c23-9d78-378eb843b604' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Opportunity'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('556bd24a-7843-4c23-9d78-378eb843b604', 'Opportunity', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '556bd24a-7843-4c23-9d78-378eb843b604' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Turning Point'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('556bd24a-7843-4c23-9d78-378eb843b604', 'Turning Point', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '556bd24a-7843-4c23-9d78-378eb843b604' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Titik Balik'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('556bd24a-7843-4c23-9d78-378eb843b604', 'Titik Balik', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '556bd24a-7843-4c23-9d78-378eb843b604' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Chance'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('556bd24a-7843-4c23-9d78-378eb843b604', 'Chance', false, true);
  END IF;

  -- [VOCABULARY] 崩す (Level 37)
  UPDATE item_meanings SET meaning = 'Meruntuhkan', primary_meaning = true, accepted_answer = true WHERE id = '0b5ef39f-e4e6-42a6-b960-ea6eca4a7e64';
  UPDATE items SET slug = 'meruntuhkan' WHERE id = '996d31ff-fe37-44c0-8d9b-8166f988931d';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '996d31ff-fe37-44c0-8d9b-8166f988931d' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Memecah Uang'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('996d31ff-fe37-44c0-8d9b-8166f988931d', 'Memecah Uang', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '996d31ff-fe37-44c0-8d9b-8166f988931d' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Merusak Keseimbangan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('996d31ff-fe37-44c0-8d9b-8166f988931d', 'Merusak Keseimbangan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '996d31ff-fe37-44c0-8d9b-8166f988931d' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Untuk Menghancurkan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('996d31ff-fe37-44c0-8d9b-8166f988931d', 'Untuk Menghancurkan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '996d31ff-fe37-44c0-8d9b-8166f988931d' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Dismantle'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('996d31ff-fe37-44c0-8d9b-8166f988931d', 'To Dismantle', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '996d31ff-fe37-44c0-8d9b-8166f988931d' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Break'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('996d31ff-fe37-44c0-8d9b-8166f988931d', 'To Break', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '996d31ff-fe37-44c0-8d9b-8166f988931d' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Let Collapse'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('996d31ff-fe37-44c0-8d9b-8166f988931d', 'To Let Collapse', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '996d31ff-fe37-44c0-8d9b-8166f988931d' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Destruct Something'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('996d31ff-fe37-44c0-8d9b-8166f988931d', 'To Destruct Something', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '996d31ff-fe37-44c0-8d9b-8166f988931d' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Dismantle Something'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('996d31ff-fe37-44c0-8d9b-8166f988931d', 'To Dismantle Something', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '996d31ff-fe37-44c0-8d9b-8166f988931d' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Tear Something Apart'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('996d31ff-fe37-44c0-8d9b-8166f988931d', 'To Tear Something Apart', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '996d31ff-fe37-44c0-8d9b-8166f988931d' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Tear Apart'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('996d31ff-fe37-44c0-8d9b-8166f988931d', 'To Tear Apart', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '996d31ff-fe37-44c0-8d9b-8166f988931d' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Break Down'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('996d31ff-fe37-44c0-8d9b-8166f988931d', 'To Break Down', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '996d31ff-fe37-44c0-8d9b-8166f988931d' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Crumble'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('996d31ff-fe37-44c0-8d9b-8166f988931d', 'To Crumble', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '996d31ff-fe37-44c0-8d9b-8166f988931d' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Tear Down'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('996d31ff-fe37-44c0-8d9b-8166f988931d', 'To Tear Down', false, true);
  END IF;

  -- [VOCABULARY] 崩壊 (Level 37)
  UPDATE item_meanings SET meaning = 'Keruntuhan', primary_meaning = true, accepted_answer = true WHERE id = '4eba6317-f4a4-4cdb-b405-e90afe8fe075';
  UPDATE items SET slug = 'keruntuhan' WHERE id = '8ed39a26-8bfe-4107-bc9d-b9a475aa456c';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '8ed39a26-8bfe-4107-bc9d-b9a475aa456c' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Kolaps Hancur'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('8ed39a26-8bfe-4107-bc9d-b9a475aa456c', 'Kolaps Hancur', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '8ed39a26-8bfe-4107-bc9d-b9a475aa456c' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Runtuh'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('8ed39a26-8bfe-4107-bc9d-b9a475aa456c', 'Runtuh', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '8ed39a26-8bfe-4107-bc9d-b9a475aa456c' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Collapse'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('8ed39a26-8bfe-4107-bc9d-b9a475aa456c', 'Collapse', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '8ed39a26-8bfe-4107-bc9d-b9a475aa456c' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Decay'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('8ed39a26-8bfe-4107-bc9d-b9a475aa456c', 'Decay', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '8ed39a26-8bfe-4107-bc9d-b9a475aa456c' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Hancur'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('8ed39a26-8bfe-4107-bc9d-b9a475aa456c', 'Hancur', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '8ed39a26-8bfe-4107-bc9d-b9a475aa456c' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Crumbling'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('8ed39a26-8bfe-4107-bc9d-b9a475aa456c', 'Crumbling', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '8ed39a26-8bfe-4107-bc9d-b9a475aa456c' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Breaking Down'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('8ed39a26-8bfe-4107-bc9d-b9a475aa456c', 'Breaking Down', false, true);
  END IF;

  -- [VOCABULARY] 弁償 (Level 37)
  UPDATE item_meanings SET meaning = 'Ganti Rugi Materiil', primary_meaning = true, accepted_answer = true WHERE id = '6336ac2d-c93f-4a06-8687-211cf853f9f5';
  UPDATE items SET slug = 'ganti-rugi-materiil' WHERE id = '87021791-e1a9-4bc1-8c4d-f2d80b9c1758';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '87021791-e1a9-4bc1-8c4d-f2d80b9c1758' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Kompensasi Kerusakan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('87021791-e1a9-4bc1-8c4d-f2d80b9c1758', 'Kompensasi Kerusakan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '87021791-e1a9-4bc1-8c4d-f2d80b9c1758' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Pengembalian'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('87021791-e1a9-4bc1-8c4d-f2d80b9c1758', 'Pengembalian', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '87021791-e1a9-4bc1-8c4d-f2d80b9c1758' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Compensation'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('87021791-e1a9-4bc1-8c4d-f2d80b9c1758', 'Compensation', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '87021791-e1a9-4bc1-8c4d-f2d80b9c1758' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Reimbursement'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('87021791-e1a9-4bc1-8c4d-f2d80b9c1758', 'Reimbursement', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '87021791-e1a9-4bc1-8c4d-f2d80b9c1758' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Kompensasi'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('87021791-e1a9-4bc1-8c4d-f2d80b9c1758', 'Kompensasi', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '87021791-e1a9-4bc1-8c4d-f2d80b9c1758' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Reparation'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('87021791-e1a9-4bc1-8c4d-f2d80b9c1758', 'Reparation', false, true);
  END IF;

  -- [VOCABULARY] 弾む (Level 37)
  UPDATE item_meanings SET meaning = 'Membal Lenting', primary_meaning = true, accepted_answer = true WHERE id = 'e8ee1d91-b6bb-4ab1-8af9-38edb494c493';
  UPDATE items SET slug = 'membal-lenting' WHERE id = '8613319c-2e03-42a6-89c6-4c2c0c0f7c0b';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '8613319c-2e03-42a6-89c6-4c2c0c0f7c0b' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Melambung Gembira'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('8613319c-2e03-42a6-89c6-4c2c0c0f7c0b', 'Melambung Gembira', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '8613319c-2e03-42a6-89c6-4c2c0c0f7c0b' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Untuk Bangkit'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('8613319c-2e03-42a6-89c6-4c2c0c0f7c0b', 'Untuk Bangkit', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '8613319c-2e03-42a6-89c6-4c2c0c0f7c0b' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Bounce'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('8613319c-2e03-42a6-89c6-4c2c0c0f7c0b', 'To Bounce', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '8613319c-2e03-42a6-89c6-4c2c0c0f7c0b' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Be Lively'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('8613319c-2e03-42a6-89c6-4c2c0c0f7c0b', 'To Be Lively', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '8613319c-2e03-42a6-89c6-4c2c0c0f7c0b' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Become Lively'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('8613319c-2e03-42a6-89c6-4c2c0c0f7c0b', 'To Become Lively', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '8613319c-2e03-42a6-89c6-4c2c0c0f7c0b' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Menjadi Hidup'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('8613319c-2e03-42a6-89c6-4c2c0c0f7c0b', 'Menjadi Hidup', false, true);
  END IF;

  -- [VOCABULARY] 弾力 (Level 37)
  UPDATE item_meanings SET meaning = 'Elastisitas', primary_meaning = true, accepted_answer = true WHERE id = 'a5fa2ad8-3b77-4cdc-8716-84ed8b24c74a';
  UPDATE items SET slug = 'elastisitas' WHERE id = '64ab798e-c747-451f-8478-7408f6ad1c2e';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '64ab798e-c747-451f-8478-7408f6ad1c2e' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Daya Lenting'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('64ab798e-c747-451f-8478-7408f6ad1c2e', 'Daya Lenting', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '64ab798e-c747-451f-8478-7408f6ad1c2e' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Keluwesan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('64ab798e-c747-451f-8478-7408f6ad1c2e', 'Keluwesan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '64ab798e-c747-451f-8478-7408f6ad1c2e' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Elasticity'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('64ab798e-c747-451f-8478-7408f6ad1c2e', 'Elasticity', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '64ab798e-c747-451f-8478-7408f6ad1c2e' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Flexibility'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('64ab798e-c747-451f-8478-7408f6ad1c2e', 'Flexibility', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '64ab798e-c747-451f-8478-7408f6ad1c2e' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Fleksibilitas'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('64ab798e-c747-451f-8478-7408f6ad1c2e', 'Fleksibilitas', false, true);
  END IF;

  -- [VOCABULARY] 恥ずかしがる (Level 37)
  UPDATE item_meanings SET meaning = 'Merasa Malu', primary_meaning = true, accepted_answer = true WHERE id = 'efea4708-1a48-409f-9b2e-188dfb73dad1';
  UPDATE items SET slug = 'merasa-malu' WHERE id = '39517e40-17e3-49d9-bf59-b9813eddcbb3';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '39517e40-17e3-49d9-bf59-b9813eddcbb3' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Tersipu Pemalu'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('39517e40-17e3-49d9-bf59-b9813eddcbb3', 'Tersipu Pemalu', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '39517e40-17e3-49d9-bf59-b9813eddcbb3' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Menjadi Pemalu'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('39517e40-17e3-49d9-bf59-b9813eddcbb3', 'Menjadi Pemalu', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '39517e40-17e3-49d9-bf59-b9813eddcbb3' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Be Shy'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('39517e40-17e3-49d9-bf59-b9813eddcbb3', 'To Be Shy', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '39517e40-17e3-49d9-bf59-b9813eddcbb3' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Be Bashful'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('39517e40-17e3-49d9-bf59-b9813eddcbb3', 'To Be Bashful', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '39517e40-17e3-49d9-bf59-b9813eddcbb3' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Menjadi Malu'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('39517e40-17e3-49d9-bf59-b9813eddcbb3', 'Menjadi Malu', false, true);
  END IF;

  -- [VOCABULARY] 恥知らず (Level 37)
  UPDATE item_meanings SET meaning = 'Muka Tembok', primary_meaning = true, accepted_answer = true WHERE id = '1c9cb2f6-3f15-46f8-bf02-7b3a145b9425';
  UPDATE items SET slug = 'muka-tembok' WHERE id = '9a52786c-01d0-4310-9b79-1333019a3976';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '9a52786c-01d0-4310-9b79-1333019a3976' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Orang Tak Tahu Malu'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('9a52786c-01d0-4310-9b79-1333019a3976', 'Orang Tak Tahu Malu', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '9a52786c-01d0-4310-9b79-1333019a3976' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Orang yang Tak Tahu Malu'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('9a52786c-01d0-4310-9b79-1333019a3976', 'Orang yang Tak Tahu Malu', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '9a52786c-01d0-4310-9b79-1333019a3976' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Shameless Person'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('9a52786c-01d0-4310-9b79-1333019a3976', 'Shameless Person', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '9a52786c-01d0-4310-9b79-1333019a3976' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Unabashed'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('9a52786c-01d0-4310-9b79-1333019a3976', 'Unabashed', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '9a52786c-01d0-4310-9b79-1333019a3976' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Shameless'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('9a52786c-01d0-4310-9b79-1333019a3976', 'Shameless', false, true);
  END IF;

  -- [VOCABULARY] 恵む (Level 37)
  UPDATE item_meanings SET meaning = 'Memberi Sedekah', primary_meaning = true, accepted_answer = true WHERE id = '37496d42-45b6-45e0-9e0e-c123dd671420';
  UPDATE items SET slug = 'memberi-sedekah' WHERE id = 'c0d58053-daa8-4588-8237-f6f6185a18e0';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'c0d58053-daa8-4588-8237-f6f6185a18e0' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Menghibahkan Rezeki'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('c0d58053-daa8-4588-8237-f6f6185a18e0', 'Menghibahkan Rezeki', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'c0d58053-daa8-4588-8237-f6f6185a18e0' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Untuk Melakukan Bantuan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('c0d58053-daa8-4588-8237-f6f6185a18e0', 'Untuk Melakukan Bantuan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'c0d58053-daa8-4588-8237-f6f6185a18e0' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Donate Out Of Charity'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('c0d58053-daa8-4588-8237-f6f6185a18e0', 'To Donate Out Of Charity', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'c0d58053-daa8-4588-8237-f6f6185a18e0' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Bless'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('c0d58053-daa8-4588-8237-f6f6185a18e0', 'To Bless', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'c0d58053-daa8-4588-8237-f6f6185a18e0' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Do A Favour'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('c0d58053-daa8-4588-8237-f6f6185a18e0', 'To Do A Favour', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'c0d58053-daa8-4588-8237-f6f6185a18e0' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Untuk Memberkati'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('c0d58053-daa8-4588-8237-f6f6185a18e0', 'Untuk Memberkati', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'c0d58053-daa8-4588-8237-f6f6185a18e0' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Untuk Memberi Karena Kasihan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('c0d58053-daa8-4588-8237-f6f6185a18e0', 'Untuk Memberi Karena Kasihan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'c0d58053-daa8-4588-8237-f6f6185a18e0' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Give Out Of Pity'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('c0d58053-daa8-4588-8237-f6f6185a18e0', 'To Give Out Of Pity', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'c0d58053-daa8-4588-8237-f6f6185a18e0' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Do A Favor'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('c0d58053-daa8-4588-8237-f6f6185a18e0', 'To Do A Favor', false, true);
  END IF;

  -- [VOCABULARY] 患う (Level 37)
  UPDATE item_meanings SET meaning = 'Menderita Penyakit', primary_meaning = true, accepted_answer = true WHERE id = '6f05c8ae-a5a3-4742-94e2-77b57118bdc1';
  UPDATE items SET slug = 'menderita-penyakit' WHERE id = 'f15ecdbd-5710-49b1-a71d-2a6889697cf0';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'f15ecdbd-5710-49b1-a71d-2a6889697cf0' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Mengidap Sakit'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('f15ecdbd-5710-49b1-a71d-2a6889697cf0', 'Mengidap Sakit', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'f15ecdbd-5710-49b1-a71d-2a6889697cf0' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Untuk Diderita'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('f15ecdbd-5710-49b1-a71d-2a6889697cf0', 'Untuk Diderita', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'f15ecdbd-5710-49b1-a71d-2a6889697cf0' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Suffer From'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('f15ecdbd-5710-49b1-a71d-2a6889697cf0', 'To Suffer From', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'f15ecdbd-5710-49b1-a71d-2a6889697cf0' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Be Ill With'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('f15ecdbd-5710-49b1-a71d-2a6889697cf0', 'To Be Ill With', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'f15ecdbd-5710-49b1-a71d-2a6889697cf0' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Be Sick'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('f15ecdbd-5710-49b1-a71d-2a6889697cf0', 'To Be Sick', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'f15ecdbd-5710-49b1-a71d-2a6889697cf0' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Untuk Menderita'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('f15ecdbd-5710-49b1-a71d-2a6889697cf0', 'Untuk Menderita', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'f15ecdbd-5710-49b1-a71d-2a6889697cf0' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Be Sick With'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('f15ecdbd-5710-49b1-a71d-2a6889697cf0', 'To Be Sick With', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'f15ecdbd-5710-49b1-a71d-2a6889697cf0' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Be Ill'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('f15ecdbd-5710-49b1-a71d-2a6889697cf0', 'To Be Ill', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'f15ecdbd-5710-49b1-a71d-2a6889697cf0' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Be Afflicted With Illness'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('f15ecdbd-5710-49b1-a71d-2a6889697cf0', 'To Be Afflicted With Illness', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'f15ecdbd-5710-49b1-a71d-2a6889697cf0' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Be Afflicted With'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('f15ecdbd-5710-49b1-a71d-2a6889697cf0', 'To Be Afflicted With', false, true);
  END IF;

  -- [VOCABULARY] 戦闘 (Level 37)
  UPDATE item_meanings SET meaning = 'Pertempuran', primary_meaning = true, accepted_answer = true WHERE id = 'ced1d6bb-fa11-46c8-85a3-7e75a17b0c85';
  UPDATE items SET slug = 'pertempuran' WHERE id = '2a8509d8-c6ee-48ae-8a35-68878617c7aa';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '2a8509d8-c6ee-48ae-8a35-68878617c7aa' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Baku Hantam Tempur'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('2a8509d8-c6ee-48ae-8a35-68878617c7aa', 'Baku Hantam Tempur', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '2a8509d8-c6ee-48ae-8a35-68878617c7aa' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Combat'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('2a8509d8-c6ee-48ae-8a35-68878617c7aa', 'Combat', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '2a8509d8-c6ee-48ae-8a35-68878617c7aa' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Battle'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('2a8509d8-c6ee-48ae-8a35-68878617c7aa', 'Battle', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '2a8509d8-c6ee-48ae-8a35-68878617c7aa' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Combatting'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('2a8509d8-c6ee-48ae-8a35-68878617c7aa', 'Combatting', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '2a8509d8-c6ee-48ae-8a35-68878617c7aa' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Tempur'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('2a8509d8-c6ee-48ae-8a35-68878617c7aa', 'Tempur', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '2a8509d8-c6ee-48ae-8a35-68878617c7aa' AND LOWER(TRIM(meaning)) = LOWER(TRIM('A Battle'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('2a8509d8-c6ee-48ae-8a35-68878617c7aa', 'A Battle', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '2a8509d8-c6ee-48ae-8a35-68878617c7aa' AND LOWER(TRIM(meaning)) = LOWER(TRIM('A Combat'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('2a8509d8-c6ee-48ae-8a35-68878617c7aa', 'A Combat', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '2a8509d8-c6ee-48ae-8a35-68878617c7aa' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Battling'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('2a8509d8-c6ee-48ae-8a35-68878617c7aa', 'Battling', false, true);
  END IF;

  -- [VOCABULARY] 抱く (Level 37)
  UPDATE item_meanings SET meaning = 'Memeluk', primary_meaning = true, accepted_answer = true WHERE id = '9cf7219e-f078-4026-9a7d-b8a2a1e83c3d';
  UPDATE items SET slug = 'memeluk' WHERE id = 'e4791491-f9e0-4dc1-bc43-b5a3e18d313f';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'e4791491-f9e0-4dc1-bc43-b5a3e18d313f' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Memeluk Erat'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('e4791491-f9e0-4dc1-bc43-b5a3e18d313f', 'Memeluk Erat', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'e4791491-f9e0-4dc1-bc43-b5a3e18d313f' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Menyimpan Perasaan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('e4791491-f9e0-4dc1-bc43-b5a3e18d313f', 'Menyimpan Perasaan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'e4791491-f9e0-4dc1-bc43-b5a3e18d313f' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Embrace'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('e4791491-f9e0-4dc1-bc43-b5a3e18d313f', 'To Embrace', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'e4791491-f9e0-4dc1-bc43-b5a3e18d313f' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Hold'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('e4791491-f9e0-4dc1-bc43-b5a3e18d313f', 'To Hold', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'e4791491-f9e0-4dc1-bc43-b5a3e18d313f' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Menyimpan (Cita-cita'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('e4791491-f9e0-4dc1-bc43-b5a3e18d313f', 'Menyimpan (Cita-cita', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'e4791491-f9e0-4dc1-bc43-b5a3e18d313f' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Perasaan)'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('e4791491-f9e0-4dc1-bc43-b5a3e18d313f', 'Perasaan)', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'e4791491-f9e0-4dc1-bc43-b5a3e18d313f' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Untuk Merangkul'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('e4791491-f9e0-4dc1-bc43-b5a3e18d313f', 'Untuk Merangkul', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'e4791491-f9e0-4dc1-bc43-b5a3e18d313f' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Untuk memeluk'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('e4791491-f9e0-4dc1-bc43-b5a3e18d313f', 'Untuk memeluk', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'e4791491-f9e0-4dc1-bc43-b5a3e18d313f' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Hug'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('e4791491-f9e0-4dc1-bc43-b5a3e18d313f', 'To Hug', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'e4791491-f9e0-4dc1-bc43-b5a3e18d313f' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Untuk Memegang'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('e4791491-f9e0-4dc1-bc43-b5a3e18d313f', 'Untuk Memegang', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'e4791491-f9e0-4dc1-bc43-b5a3e18d313f' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Cherish'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('e4791491-f9e0-4dc1-bc43-b5a3e18d313f', 'To Cherish', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'e4791491-f9e0-4dc1-bc43-b5a3e18d313f' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Bear'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('e4791491-f9e0-4dc1-bc43-b5a3e18d313f', 'To Bear', false, true);
  END IF;

  -- [VOCABULARY] 抱っこ (Level 37)
  UPDATE item_meanings SET meaning = 'Menggendong', primary_meaning = true, accepted_answer = true WHERE id = '33e97726-bb1c-48c8-8902-8ff88e6f739b';
  UPDATE items SET slug = 'menggendong' WHERE id = '46afb1ba-0d42-43a1-bab8-c1066435bfcd';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '46afb1ba-0d42-43a1-bab8-c1066435bfcd' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Dekapan Pelukan Sayang'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('46afb1ba-0d42-43a1-bab8-c1066435bfcd', 'Dekapan Pelukan Sayang', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '46afb1ba-0d42-43a1-bab8-c1066435bfcd' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Berpelukan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('46afb1ba-0d42-43a1-bab8-c1066435bfcd', 'Berpelukan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '46afb1ba-0d42-43a1-bab8-c1066435bfcd' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Holding In Arms'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('46afb1ba-0d42-43a1-bab8-c1066435bfcd', 'Holding In Arms', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '46afb1ba-0d42-43a1-bab8-c1066435bfcd' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Hug'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('46afb1ba-0d42-43a1-bab8-c1066435bfcd', 'Hug', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '46afb1ba-0d42-43a1-bab8-c1066435bfcd' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Holding In One''s Arms'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('46afb1ba-0d42-43a1-bab8-c1066435bfcd', 'Holding In One''s Arms', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '46afb1ba-0d42-43a1-bab8-c1066435bfcd' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Carrying'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('46afb1ba-0d42-43a1-bab8-c1066435bfcd', 'Carrying', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '46afb1ba-0d42-43a1-bab8-c1066435bfcd' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Carrying In One''s Arms'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('46afb1ba-0d42-43a1-bab8-c1066435bfcd', 'Carrying In One''s Arms', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '46afb1ba-0d42-43a1-bab8-c1066435bfcd' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Hugging'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('46afb1ba-0d42-43a1-bab8-c1066435bfcd', 'Hugging', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '46afb1ba-0d42-43a1-bab8-c1066435bfcd' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Holding In Your Arms'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('46afb1ba-0d42-43a1-bab8-c1066435bfcd', 'Holding In Your Arms', false, true);
  END IF;

  -- [VOCABULARY] 抵抗する (Level 37)
  UPDATE item_meanings SET meaning = 'Melakukan Perlawanan', primary_meaning = true, accepted_answer = true WHERE id = 'a42f31f4-a66b-407b-9f3a-ffb0a27156c5';
  UPDATE items SET slug = 'melakukan-perlawanan' WHERE id = '92b2157e-02d7-4fef-bee6-7e115974e6f4';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '92b2157e-02d7-4fef-bee6-7e115974e6f4' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Menolak Patuh'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('92b2157e-02d7-4fef-bee6-7e115974e6f4', 'Menolak Patuh', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '92b2157e-02d7-4fef-bee6-7e115974e6f4' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Untuk Menolak'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('92b2157e-02d7-4fef-bee6-7e115974e6f4', 'Untuk Menolak', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '92b2157e-02d7-4fef-bee6-7e115974e6f4' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Resist'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('92b2157e-02d7-4fef-bee6-7e115974e6f4', 'To Resist', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '92b2157e-02d7-4fef-bee6-7e115974e6f4' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Defy'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('92b2157e-02d7-4fef-bee6-7e115974e6f4', 'To Defy', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '92b2157e-02d7-4fef-bee6-7e115974e6f4' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Untuk menahan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('92b2157e-02d7-4fef-bee6-7e115974e6f4', 'Untuk menahan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '92b2157e-02d7-4fef-bee6-7e115974e6f4' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Withstand'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('92b2157e-02d7-4fef-bee6-7e115974e6f4', 'To Withstand', false, true);
  END IF;

  -- [VOCABULARY] 掲げる (Level 37)
  UPDATE item_meanings SET meaning = 'Mengibarkan', primary_meaning = true, accepted_answer = true WHERE id = '6cc4feb5-ac89-4e32-9930-fb6b519bb649';
  UPDATE items SET slug = 'mengibarkan' WHERE id = '443f11e1-64f9-4dfd-a430-757dfe2e165c';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '443f11e1-64f9-4dfd-a430-757dfe2e165c' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Mengusung'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('443f11e1-64f9-4dfd-a430-757dfe2e165c', 'Mengusung', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '443f11e1-64f9-4dfd-a430-757dfe2e165c' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Memajang'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('443f11e1-64f9-4dfd-a430-757dfe2e165c', 'Memajang', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '443f11e1-64f9-4dfd-a430-757dfe2e165c' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Raise'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('443f11e1-64f9-4dfd-a430-757dfe2e165c', 'To Raise', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '443f11e1-64f9-4dfd-a430-757dfe2e165c' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Display'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('443f11e1-64f9-4dfd-a430-757dfe2e165c', 'To Display', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '443f11e1-64f9-4dfd-a430-757dfe2e165c' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Untuk Memasang Tanda'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('443f11e1-64f9-4dfd-a430-757dfe2e165c', 'Untuk Memasang Tanda', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '443f11e1-64f9-4dfd-a430-757dfe2e165c' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Put Up'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('443f11e1-64f9-4dfd-a430-757dfe2e165c', 'To Put Up', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '443f11e1-64f9-4dfd-a430-757dfe2e165c' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Hoist'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('443f11e1-64f9-4dfd-a430-757dfe2e165c', 'To Hoist', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '443f11e1-64f9-4dfd-a430-757dfe2e165c' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Untuk Memasang'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('443f11e1-64f9-4dfd-a430-757dfe2e165c', 'Untuk Memasang', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '443f11e1-64f9-4dfd-a430-757dfe2e165c' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Put Up A Sign'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('443f11e1-64f9-4dfd-a430-757dfe2e165c', 'To Put Up A Sign', false, true);
  END IF;

  -- [VOCABULARY] 掲示 (Level 37)
  UPDATE item_meanings SET meaning = 'Pemberitahuan Tertulis', primary_meaning = true, accepted_answer = true WHERE id = '2f1286da-026e-40b7-8015-b54cd8d3a263';
  UPDATE items SET slug = 'pemberitahuan-tertulis' WHERE id = '4f28c91c-fda0-41c3-9f28-8dad4e1232ed';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '4f28c91c-fda0-41c3-9f28-8dad4e1232ed' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Papan Maklumat'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('4f28c91c-fda0-41c3-9f28-8dad4e1232ed', 'Papan Maklumat', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '4f28c91c-fda0-41c3-9f28-8dad4e1232ed' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Melihat'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('4f28c91c-fda0-41c3-9f28-8dad4e1232ed', 'Melihat', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '4f28c91c-fda0-41c3-9f28-8dad4e1232ed' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Notice'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('4f28c91c-fda0-41c3-9f28-8dad4e1232ed', 'Notice', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '4f28c91c-fda0-41c3-9f28-8dad4e1232ed' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Bulletin'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('4f28c91c-fda0-41c3-9f28-8dad4e1232ed', 'Bulletin', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '4f28c91c-fda0-41c3-9f28-8dad4e1232ed' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Buletin'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('4f28c91c-fda0-41c3-9f28-8dad4e1232ed', 'Buletin', false, true);
  END IF;

  -- [VOCABULARY] 掲載 (Level 37)
  UPDATE item_meanings SET meaning = 'Pemuatan Artikel', primary_meaning = true, accepted_answer = true WHERE id = '2b2a7dd7-7a20-4e99-9c35-429819e9db58';
  UPDATE items SET slug = 'pemuatan-artikel' WHERE id = '00f30dba-64ec-4b4a-9ead-3085e9aa3589';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '00f30dba-64ec-4b4a-9ead-3085e9aa3589' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Publikasi Cetak'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('00f30dba-64ec-4b4a-9ead-3085e9aa3589', 'Publikasi Cetak', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '00f30dba-64ec-4b4a-9ead-3085e9aa3589' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Publikasi'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('00f30dba-64ec-4b4a-9ead-3085e9aa3589', 'Publikasi', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '00f30dba-64ec-4b4a-9ead-3085e9aa3589' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Publication'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('00f30dba-64ec-4b4a-9ead-3085e9aa3589', 'Publication', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '00f30dba-64ec-4b4a-9ead-3085e9aa3589' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Publishing'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('00f30dba-64ec-4b4a-9ead-3085e9aa3589', 'Publishing', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '00f30dba-64ec-4b4a-9ead-3085e9aa3589' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Publish'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('00f30dba-64ec-4b4a-9ead-3085e9aa3589', 'Publish', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '00f30dba-64ec-4b4a-9ead-3085e9aa3589' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Mencetak'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('00f30dba-64ec-4b4a-9ead-3085e9aa3589', 'Mencetak', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '00f30dba-64ec-4b4a-9ead-3085e9aa3589' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Pos'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('00f30dba-64ec-4b4a-9ead-3085e9aa3589', 'Pos', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '00f30dba-64ec-4b4a-9ead-3085e9aa3589' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Print'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('00f30dba-64ec-4b4a-9ead-3085e9aa3589', 'Print', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '00f30dba-64ec-4b4a-9ead-3085e9aa3589' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Post'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('00f30dba-64ec-4b4a-9ead-3085e9aa3589', 'Post', false, true);
  END IF;

  -- [VOCABULARY] 死刑 (Level 37)
  UPDATE item_meanings SET meaning = 'Hukuman Mati', primary_meaning = true, accepted_answer = true WHERE id = 'efa32494-7066-42d3-a8c9-2b43bdaf8be6';
  UPDATE items SET slug = 'hukuman-mati' WHERE id = 'f7084b27-bfa2-4ff2-b7ca-598490b13d18';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'f7084b27-bfa2-4ff2-b7ca-598490b13d18' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Pidana Mati'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('f7084b27-bfa2-4ff2-b7ca-598490b13d18', 'Pidana Mati', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'f7084b27-bfa2-4ff2-b7ca-598490b13d18' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Death Penalty'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('f7084b27-bfa2-4ff2-b7ca-598490b13d18', 'Death Penalty', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'f7084b27-bfa2-4ff2-b7ca-598490b13d18' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Capital Punishment'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('f7084b27-bfa2-4ff2-b7ca-598490b13d18', 'Capital Punishment', false, true);
  END IF;

  -- [VOCABULARY] 汁物 (Level 37)
  UPDATE item_meanings SET meaning = 'Hidangan Berkuah', primary_meaning = true, accepted_answer = true WHERE id = 'dcb032e9-a212-403d-ba67-a95a4320e7da';
  UPDATE items SET slug = 'hidangan-berkuah' WHERE id = '35ba4897-f3ac-4d22-a343-3934711f2a41';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '35ba4897-f3ac-4d22-a343-3934711f2a41' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Aneka Sup'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('35ba4897-f3ac-4d22-a343-3934711f2a41', 'Aneka Sup', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '35ba4897-f3ac-4d22-a343-3934711f2a41' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Sup'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('35ba4897-f3ac-4d22-a343-3934711f2a41', 'Sup', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '35ba4897-f3ac-4d22-a343-3934711f2a41' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Soup'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('35ba4897-f3ac-4d22-a343-3934711f2a41', 'Soup', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '35ba4897-f3ac-4d22-a343-3934711f2a41' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Broth'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('35ba4897-f3ac-4d22-a343-3934711f2a41', 'Broth', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '35ba4897-f3ac-4d22-a343-3934711f2a41' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Soups'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('35ba4897-f3ac-4d22-a343-3934711f2a41', 'Soups', false, true);
  END IF;

  -- [VOCABULARY] 派遣 (Level 37)
  UPDATE item_meanings SET meaning = 'Penyaluran Kerja', primary_meaning = true, accepted_answer = true WHERE id = '55f92a37-2407-4575-9e81-dd40e398c074';
  UPDATE items SET slug = 'penyaluran-kerja' WHERE id = '9d010a54-502d-4f2d-a061-c1db9ca1c699';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '9d010a54-502d-4f2d-a061-c1db9ca1c699' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Outsourcing'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('9d010a54-502d-4f2d-a061-c1db9ca1c699', 'Outsourcing', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '9d010a54-502d-4f2d-a061-c1db9ca1c699' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Disposisi'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('9d010a54-502d-4f2d-a061-c1db9ca1c699', 'Disposisi', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '9d010a54-502d-4f2d-a061-c1db9ca1c699' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Dispatch'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('9d010a54-502d-4f2d-a061-c1db9ca1c699', 'Dispatch', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '9d010a54-502d-4f2d-a061-c1db9ca1c699' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Penyaluran Tenaga Kerja'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('9d010a54-502d-4f2d-a061-c1db9ca1c699', 'Penyaluran Tenaga Kerja', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '9d010a54-502d-4f2d-a061-c1db9ca1c699' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Menugaskan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('9d010a54-502d-4f2d-a061-c1db9ca1c699', 'Menugaskan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '9d010a54-502d-4f2d-a061-c1db9ca1c699' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Temp Work'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('9d010a54-502d-4f2d-a061-c1db9ca1c699', 'Temp Work', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '9d010a54-502d-4f2d-a061-c1db9ca1c699' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Temporary'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('9d010a54-502d-4f2d-a061-c1db9ca1c699', 'Temporary', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '9d010a54-502d-4f2d-a061-c1db9ca1c699' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Deployment'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('9d010a54-502d-4f2d-a061-c1db9ca1c699', 'Deployment', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '9d010a54-502d-4f2d-a061-c1db9ca1c699' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Send'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('9d010a54-502d-4f2d-a061-c1db9ca1c699', 'Send', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '9d010a54-502d-4f2d-a061-c1db9ca1c699' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Deploy'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('9d010a54-502d-4f2d-a061-c1db9ca1c699', 'Deploy', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '9d010a54-502d-4f2d-a061-c1db9ca1c699' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Penyebaran'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('9d010a54-502d-4f2d-a061-c1db9ca1c699', 'Penyebaran', false, true);
  END IF;

  -- [VOCABULARY] 温床 (Level 37)
  UPDATE item_meanings SET meaning = 'Sarang Berkembang Biak', primary_meaning = true, accepted_answer = true WHERE id = 'f4080221-6c0f-4bd0-baa0-773069506a7f';
  UPDATE items SET slug = 'sarang-berkembang-biak' WHERE id = '93e320bc-29cf-4dcb-a034-3237e353a056';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '93e320bc-29cf-4dcb-a034-3237e353a056' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Tempat Pembibitan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('93e320bc-29cf-4dcb-a034-3237e353a056', 'Tempat Pembibitan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '93e320bc-29cf-4dcb-a034-3237e353a056' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Persemaian'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('93e320bc-29cf-4dcb-a034-3237e353a056', 'Persemaian', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '93e320bc-29cf-4dcb-a034-3237e353a056' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Hotbed'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('93e320bc-29cf-4dcb-a034-3237e353a056', 'Hotbed', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '93e320bc-29cf-4dcb-a034-3237e353a056' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Breeding Ground'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('93e320bc-29cf-4dcb-a034-3237e353a056', 'Breeding Ground', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '93e320bc-29cf-4dcb-a034-3237e353a056' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Tempat berkembang biak'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('93e320bc-29cf-4dcb-a034-3237e353a056', 'Tempat berkembang biak', false, true);
  END IF;

  -- [VOCABULARY] 潰れる (Level 37)
  UPDATE item_meanings SET meaning = 'Remuk', primary_meaning = true, accepted_answer = true WHERE id = '5b3f01c3-d583-449b-b46d-6a8897cf27de';
  UPDATE items SET slug = 'remuk' WHERE id = '4bff3ac2-2233-407a-835a-d51f70954654';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '4bff3ac2-2233-407a-835a-d51f70954654' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Hancur'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('4bff3ac2-2233-407a-835a-d51f70954654', 'Hancur', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '4bff3ac2-2233-407a-835a-d51f70954654' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Gulung Tikar'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('4bff3ac2-2233-407a-835a-d51f70954654', 'Gulung Tikar', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '4bff3ac2-2233-407a-835a-d51f70954654' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Bangkrut'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('4bff3ac2-2233-407a-835a-d51f70954654', 'Bangkrut', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '4bff3ac2-2233-407a-835a-d51f70954654' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Be Crushed'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('4bff3ac2-2233-407a-835a-d51f70954654', 'To Be Crushed', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '4bff3ac2-2233-407a-835a-d51f70954654' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Collapse'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('4bff3ac2-2233-407a-835a-d51f70954654', 'To Collapse', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '4bff3ac2-2233-407a-835a-d51f70954654' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Remuk Hancur'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('4bff3ac2-2233-407a-835a-d51f70954654', 'Remuk Hancur', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '4bff3ac2-2233-407a-835a-d51f70954654' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Untuk Dihancurkan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('4bff3ac2-2233-407a-835a-d51f70954654', 'Untuk Dihancurkan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '4bff3ac2-2233-407a-835a-d51f70954654' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Go Bankrupt'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('4bff3ac2-2233-407a-835a-d51f70954654', 'To Go Bankrupt', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '4bff3ac2-2233-407a-835a-d51f70954654' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Be Destroyed'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('4bff3ac2-2233-407a-835a-d51f70954654', 'To Be Destroyed', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '4bff3ac2-2233-407a-835a-d51f70954654' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Get Squished'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('4bff3ac2-2233-407a-835a-d51f70954654', 'To Get Squished', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '4bff3ac2-2233-407a-835a-d51f70954654' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Be Squished'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('4bff3ac2-2233-407a-835a-d51f70954654', 'To Be Squished', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '4bff3ac2-2233-407a-835a-d51f70954654' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Get Flattened'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('4bff3ac2-2233-407a-835a-d51f70954654', 'To Get Flattened', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '4bff3ac2-2233-407a-835a-d51f70954654' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Be Flattened'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('4bff3ac2-2233-407a-835a-d51f70954654', 'To Be Flattened', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '4bff3ac2-2233-407a-835a-d51f70954654' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Be Ruined'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('4bff3ac2-2233-407a-835a-d51f70954654', 'To Be Ruined', false, true);
  END IF;

  -- [VOCABULARY] 爆笑 (Level 37)
  UPDATE item_meanings SET meaning = 'Tertawa Terbahak-bahak', primary_meaning = true, accepted_answer = true WHERE id = 'a1df0021-24f0-4191-8300-7b395fef70bc';
  UPDATE items SET slug = 'tertawa-terbahak-bahak' WHERE id = 'b28f3efb-10d0-493c-a98b-5137bd6e10f4';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'b28f3efb-10d0-493c-a98b-5137bd6e10f4' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Tawa Meledak'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('b28f3efb-10d0-493c-a98b-5137bd6e10f4', 'Tawa Meledak', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'b28f3efb-10d0-493c-a98b-5137bd6e10f4' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Tawa yang Meledak'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('b28f3efb-10d0-493c-a98b-5137bd6e10f4', 'Tawa yang Meledak', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'b28f3efb-10d0-493c-a98b-5137bd6e10f4' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Burst Into Laughter'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('b28f3efb-10d0-493c-a98b-5137bd6e10f4', 'Burst Into Laughter', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'b28f3efb-10d0-493c-a98b-5137bd6e10f4' AND LOWER(TRIM(meaning)) = LOWER(TRIM('ROFL'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('b28f3efb-10d0-493c-a98b-5137bd6e10f4', 'ROFL', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'b28f3efb-10d0-493c-a98b-5137bd6e10f4' AND LOWER(TRIM(meaning)) = LOWER(TRIM('LOL'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('b28f3efb-10d0-493c-a98b-5137bd6e10f4', 'LOL', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'b28f3efb-10d0-493c-a98b-5137bd6e10f4' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Laugh Out Loud'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('b28f3efb-10d0-493c-a98b-5137bd6e10f4', 'Laugh Out Loud', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'b28f3efb-10d0-493c-a98b-5137bd6e10f4' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Rolling On The Floor Laughing'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('b28f3efb-10d0-493c-a98b-5137bd6e10f4', 'Rolling On The Floor Laughing', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'b28f3efb-10d0-493c-a98b-5137bd6e10f4' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Burst Of Laughter'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('b28f3efb-10d0-493c-a98b-5137bd6e10f4', 'Burst Of Laughter', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'b28f3efb-10d0-493c-a98b-5137bd6e10f4' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Laughing Loudly'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('b28f3efb-10d0-493c-a98b-5137bd6e10f4', 'Laughing Loudly', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'b28f3efb-10d0-493c-a98b-5137bd6e10f4' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Explosive Laughter'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('b28f3efb-10d0-493c-a98b-5137bd6e10f4', 'Explosive Laughter', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'b28f3efb-10d0-493c-a98b-5137bd6e10f4' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Burst Out Laughing'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('b28f3efb-10d0-493c-a98b-5137bd6e10f4', 'Burst Out Laughing', false, true);
  END IF;

  -- [VOCABULARY] 狙い (Level 37)
  UPDATE item_meanings SET meaning = 'Sasaran Bidikan', primary_meaning = true, accepted_answer = true WHERE id = 'dfd31bdf-0f6b-48da-a77f-b4347c7777ec';
  UPDATE items SET slug = 'sasaran-bidikan' WHERE id = '6f4a49e0-2a67-473a-bdf6-69750800eda0';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '6f4a49e0-2a67-473a-bdf6-69750800eda0' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Target Tujuan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('6f4a49e0-2a67-473a-bdf6-69750800eda0', 'Target Tujuan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '6f4a49e0-2a67-473a-bdf6-69750800eda0' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Tujuan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('6f4a49e0-2a67-473a-bdf6-69750800eda0', 'Tujuan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '6f4a49e0-2a67-473a-bdf6-69750800eda0' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Aim'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('6f4a49e0-2a67-473a-bdf6-69750800eda0', 'Aim', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '6f4a49e0-2a67-473a-bdf6-69750800eda0' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Target'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('6f4a49e0-2a67-473a-bdf6-69750800eda0', 'Target', false, true);
  END IF;

  -- [VOCABULARY] 盛り上がる (Level 37)
  UPDATE item_meanings SET meaning = 'Membuncah Antusias', primary_meaning = true, accepted_answer = true WHERE id = '094bb769-1cc8-40a1-b390-afb1374a4924';
  UPDATE items SET slug = 'membuncah-antusias' WHERE id = '9e68f77b-43c4-4a8e-b4c8-9d7e82c23344';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '9e68f77b-43c4-4a8e-b4c8-9d7e82c23344' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Suasana Menjadi Ramai'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('9e68f77b-43c4-4a8e-b4c8-9d7e82c23344', 'Suasana Menjadi Ramai', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '9e68f77b-43c4-4a8e-b4c8-9d7e82c23344' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Membengkak'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('9e68f77b-43c4-4a8e-b4c8-9d7e82c23344', 'Membengkak', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '9e68f77b-43c4-4a8e-b4c8-9d7e82c23344' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Get Excited'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('9e68f77b-43c4-4a8e-b4c8-9d7e82c23344', 'To Get Excited', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '9e68f77b-43c4-4a8e-b4c8-9d7e82c23344' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Liven Up'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('9e68f77b-43c4-4a8e-b4c8-9d7e82c23344', 'To Liven Up', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '9e68f77b-43c4-4a8e-b4c8-9d7e82c23344' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Agar Bersemangat'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('9e68f77b-43c4-4a8e-b4c8-9d7e82c23344', 'Agar Bersemangat', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '9e68f77b-43c4-4a8e-b4c8-9d7e82c23344' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Swell'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('9e68f77b-43c4-4a8e-b4c8-9d7e82c23344', 'To Swell', false, true);
  END IF;

  -- [VOCABULARY] 破れる (Level 37)
  UPDATE item_meanings SET meaning = 'Robek', primary_meaning = true, accepted_answer = true WHERE id = '67524953-f7c9-47fc-9361-dc20536f35a2';
  UPDATE items SET slug = 'robek' WHERE id = '30a220b4-bd93-4633-bc96-777a401c005a';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '30a220b4-bd93-4633-bc96-777a401c005a' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Koyak'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('30a220b4-bd93-4633-bc96-777a401c005a', 'Koyak', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '30a220b4-bd93-4633-bc96-777a401c005a' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Kalah Perang'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('30a220b4-bd93-4633-bc96-777a401c005a', 'Kalah Perang', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '30a220b4-bd93-4633-bc96-777a401c005a' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Untuk Robek'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('30a220b4-bd93-4633-bc96-777a401c005a', 'Untuk Robek', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '30a220b4-bd93-4633-bc96-777a401c005a' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Get Torn'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('30a220b4-bd93-4633-bc96-777a401c005a', 'To Get Torn', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '30a220b4-bd93-4633-bc96-777a401c005a' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Be Defeated'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('30a220b4-bd93-4633-bc96-777a401c005a', 'To Be Defeated', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '30a220b4-bd93-4633-bc96-777a401c005a' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Get Ripped'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('30a220b4-bd93-4633-bc96-777a401c005a', 'To Get Ripped', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '30a220b4-bd93-4633-bc96-777a401c005a' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Get Broken'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('30a220b4-bd93-4633-bc96-777a401c005a', 'To Get Broken', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '30a220b4-bd93-4633-bc96-777a401c005a' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Menjadi Rusak'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('30a220b4-bd93-4633-bc96-777a401c005a', 'Menjadi Rusak', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '30a220b4-bd93-4633-bc96-777a401c005a' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Untuk Dirobek'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('30a220b4-bd93-4633-bc96-777a401c005a', 'Untuk Dirobek', false, true);
  END IF;

  -- [VOCABULARY] 給油所 (Level 37)
  UPDATE item_meanings SET meaning = 'Pom Bensin', primary_meaning = true, accepted_answer = true WHERE id = '4961f50f-5f2b-446d-8dc0-746c01862da0';
  UPDATE items SET slug = 'pom-bensin' WHERE id = '061a1104-bfa9-4945-bb40-b06b8b866604';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '061a1104-bfa9-4945-bb40-b06b8b866604' AND LOWER(TRIM(meaning)) = LOWER(TRIM('SPBU'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('061a1104-bfa9-4945-bb40-b06b8b866604', 'SPBU', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '061a1104-bfa9-4945-bb40-b06b8b866604' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Pompa bensin'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('061a1104-bfa9-4945-bb40-b06b8b866604', 'Pompa bensin', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '061a1104-bfa9-4945-bb40-b06b8b866604' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Gas Station'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('061a1104-bfa9-4945-bb40-b06b8b866604', 'Gas Station', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '061a1104-bfa9-4945-bb40-b06b8b866604' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Petrol Station'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('061a1104-bfa9-4945-bb40-b06b8b866604', 'Petrol Station', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '061a1104-bfa9-4945-bb40-b06b8b866604' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Filling Station'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('061a1104-bfa9-4945-bb40-b06b8b866604', 'Filling Station', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '061a1104-bfa9-4945-bb40-b06b8b866604' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Fuel Station'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('061a1104-bfa9-4945-bb40-b06b8b866604', 'Fuel Station', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '061a1104-bfa9-4945-bb40-b06b8b866604' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Fueling Station'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('061a1104-bfa9-4945-bb40-b06b8b866604', 'Fueling Station', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '061a1104-bfa9-4945-bb40-b06b8b866604' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Service Station'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('061a1104-bfa9-4945-bb40-b06b8b866604', 'Service Station', false, true);
  END IF;

  -- [VOCABULARY] 臨む (Level 37)
  UPDATE item_meanings SET meaning = 'Menghadiri Acara', primary_meaning = true, accepted_answer = true WHERE id = '28686ee3-a150-4017-820a-d6ae39ab0b77';
  UPDATE items SET slug = 'menghadiri-acara' WHERE id = 'b618b512-9dc8-4ab4-b10a-eebe4ca530f3';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'b618b512-9dc8-4ab4-b10a-eebe4ca530f3' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Menghadapi Situasi'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('b618b512-9dc8-4ab4-b10a-eebe4ca530f3', 'Menghadapi Situasi', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'b618b512-9dc8-4ab4-b10a-eebe4ca530f3' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Untuk Menghadapi'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('b618b512-9dc8-4ab4-b10a-eebe4ca530f3', 'Untuk Menghadapi', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'b618b512-9dc8-4ab4-b10a-eebe4ca530f3' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Face'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('b618b512-9dc8-4ab4-b10a-eebe4ca530f3', 'To Face', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'b618b512-9dc8-4ab4-b10a-eebe4ca530f3' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Attend'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('b618b512-9dc8-4ab4-b10a-eebe4ca530f3', 'To Attend', false, true);
  END IF;

  -- [VOCABULARY] 臨時 (Level 37)
  UPDATE item_meanings SET meaning = 'Sementara', primary_meaning = true, accepted_answer = true WHERE id = 'bb42cf90-70d9-42a7-9722-450657490c84';
  UPDATE items SET slug = 'sementara' WHERE id = '7d469683-5443-42ec-87ec-e3a54a1f9e24';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '7d469683-5443-42ec-87ec-e3a54a1f9e24' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Luar Biasa'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('7d469683-5443-42ec-87ec-e3a54a1f9e24', 'Luar Biasa', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '7d469683-5443-42ec-87ec-e3a54a1f9e24' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Insidental'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('7d469683-5443-42ec-87ec-e3a54a1f9e24', 'Insidental', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '7d469683-5443-42ec-87ec-e3a54a1f9e24' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Temporary'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('7d469683-5443-42ec-87ec-e3a54a1f9e24', 'Temporary', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '7d469683-5443-42ec-87ec-e3a54a1f9e24' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Tidak teratur'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('7d469683-5443-42ec-87ec-e3a54a1f9e24', 'Tidak teratur', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '7d469683-5443-42ec-87ec-e3a54a1f9e24' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Provisional'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('7d469683-5443-42ec-87ec-e3a54a1f9e24', 'Provisional', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '7d469683-5443-42ec-87ec-e3a54a1f9e24' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Irregular'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('7d469683-5443-42ec-87ec-e3a54a1f9e24', 'Irregular', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '7d469683-5443-42ec-87ec-e3a54a1f9e24' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Unscheduled'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('7d469683-5443-42ec-87ec-e3a54a1f9e24', 'Unscheduled', false, true);
  END IF;

  -- [VOCABULARY] 臨海 (Level 37)
  UPDATE item_meanings SET meaning = 'Tepi Laut', primary_meaning = true, accepted_answer = true WHERE id = 'e25a550d-a42d-4436-a91c-12eb4893ff1e';
  UPDATE items SET slug = 'tepi-laut' WHERE id = '28d148ad-0599-4ba3-94c9-c975eaee93b1';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '28d148ad-0599-4ba3-94c9-c975eaee93b1' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Kawasan Pesisir Pantai'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('28d148ad-0599-4ba3-94c9-c975eaee93b1', 'Kawasan Pesisir Pantai', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '28d148ad-0599-4ba3-94c9-c975eaee93b1' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Coastal'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('28d148ad-0599-4ba3-94c9-c975eaee93b1', 'Coastal', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '28d148ad-0599-4ba3-94c9-c975eaee93b1' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Seaside'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('28d148ad-0599-4ba3-94c9-c975eaee93b1', 'Seaside', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '28d148ad-0599-4ba3-94c9-c975eaee93b1' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Pesisir'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('28d148ad-0599-4ba3-94c9-c975eaee93b1', 'Pesisir', false, true);
  END IF;

  -- [VOCABULARY] 自爆 (Level 37)
  UPDATE item_meanings SET meaning = 'Aksi Bom Bunuh Diri', primary_meaning = true, accepted_answer = true WHERE id = '7a480168-af8f-40c4-82a1-0c4a64beb9f8';
  UPDATE items SET slug = 'aksi-bom-bunuh-diri' WHERE id = '7bc21f07-dbe9-4260-892b-20d23ac1783e';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '7bc21f07-dbe9-4260-892b-20d23ac1783e' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Meledakkan Diri'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('7bc21f07-dbe9-4260-892b-20d23ac1783e', 'Meledakkan Diri', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '7bc21f07-dbe9-4260-892b-20d23ac1783e' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Bom Bunuh Diri'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('7bc21f07-dbe9-4260-892b-20d23ac1783e', 'Bom Bunuh Diri', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '7bc21f07-dbe9-4260-892b-20d23ac1783e' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Suicide Bombing'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('7bc21f07-dbe9-4260-892b-20d23ac1783e', 'Suicide Bombing', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '7bc21f07-dbe9-4260-892b-20d23ac1783e' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Self-Destruction'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('7bc21f07-dbe9-4260-892b-20d23ac1783e', 'Self-Destruction', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '7bc21f07-dbe9-4260-892b-20d23ac1783e' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Suicide Bomb'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('7bc21f07-dbe9-4260-892b-20d23ac1783e', 'Suicide Bomb', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '7bc21f07-dbe9-4260-892b-20d23ac1783e' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Blowing Oneself Up'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('7bc21f07-dbe9-4260-892b-20d23ac1783e', 'Blowing Oneself Up', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '7bc21f07-dbe9-4260-892b-20d23ac1783e' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Sabotaging Oneself'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('7bc21f07-dbe9-4260-892b-20d23ac1783e', 'Sabotaging Oneself', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '7bc21f07-dbe9-4260-892b-20d23ac1783e' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Sabotage Oneself'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('7bc21f07-dbe9-4260-892b-20d23ac1783e', 'Sabotage Oneself', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '7bc21f07-dbe9-4260-892b-20d23ac1783e' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Self-Destructing'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('7bc21f07-dbe9-4260-892b-20d23ac1783e', 'Self-Destructing', false, true);
  END IF;

  -- [VOCABULARY] 葬る (Level 37)
  UPDATE item_meanings SET meaning = 'Menguburkan', primary_meaning = true, accepted_answer = true WHERE id = '36e0def8-9190-4693-9793-ec0178684e56';
  UPDATE items SET slug = 'menguburkan' WHERE id = 'edec7d84-50e2-48e9-866c-f37e405cc20c';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'edec7d84-50e2-48e9-866c-f37e405cc20c' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Menutupi Skandal'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('edec7d84-50e2-48e9-866c-f37e405cc20c', 'Menutupi Skandal', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'edec7d84-50e2-48e9-866c-f37e405cc20c' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Untuk Mengubur'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('edec7d84-50e2-48e9-866c-f37e405cc20c', 'Untuk Mengubur', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'edec7d84-50e2-48e9-866c-f37e405cc20c' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Bury'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('edec7d84-50e2-48e9-866c-f37e405cc20c', 'To Bury', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'edec7d84-50e2-48e9-866c-f37e405cc20c' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Inter'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('edec7d84-50e2-48e9-866c-f37e405cc20c', 'To Inter', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'edec7d84-50e2-48e9-866c-f37e405cc20c' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Ke Inter'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('edec7d84-50e2-48e9-866c-f37e405cc20c', 'Ke Inter', false, true);
  END IF;

  -- [VOCABULARY] 証跡 (Level 37)
  UPDATE item_meanings SET meaning = 'Bukti Jejak', primary_meaning = true, accepted_answer = true WHERE id = '129b5134-d776-4925-be25-060b0311fd0a';
  UPDATE items SET slug = 'bukti-jejak' WHERE id = 'd1f2aad0-186f-4ade-aedd-5193d6c1b176';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'd1f2aad0-186f-4ade-aedd-5193d6c1b176' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Rekam Jejak Audit'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('d1f2aad0-186f-4ade-aedd-5193d6c1b176', 'Rekam Jejak Audit', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'd1f2aad0-186f-4ade-aedd-5193d6c1b176' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Bukti'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('d1f2aad0-186f-4ade-aedd-5193d6c1b176', 'Bukti', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'd1f2aad0-186f-4ade-aedd-5193d6c1b176' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Trace'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('d1f2aad0-186f-4ade-aedd-5193d6c1b176', 'Trace', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'd1f2aad0-186f-4ade-aedd-5193d6c1b176' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Audit Trail'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('d1f2aad0-186f-4ade-aedd-5193d6c1b176', 'Audit Trail', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'd1f2aad0-186f-4ade-aedd-5193d6c1b176' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Proof'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('d1f2aad0-186f-4ade-aedd-5193d6c1b176', 'Proof', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'd1f2aad0-186f-4ade-aedd-5193d6c1b176' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Jejak'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('d1f2aad0-186f-4ade-aedd-5193d6c1b176', 'Jejak', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'd1f2aad0-186f-4ade-aedd-5193d6c1b176' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Trail'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('d1f2aad0-186f-4ade-aedd-5193d6c1b176', 'Trail', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'd1f2aad0-186f-4ade-aedd-5193d6c1b176' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Traces'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('d1f2aad0-186f-4ade-aedd-5193d6c1b176', 'Traces', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'd1f2aad0-186f-4ade-aedd-5193d6c1b176' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Evidence'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('d1f2aad0-186f-4ade-aedd-5193d6c1b176', 'Evidence', false, true);
  END IF;

  -- [VOCABULARY] 貴様 (Level 37)
  UPDATE item_meanings SET meaning = 'Kau Keparat', primary_meaning = true, accepted_answer = true WHERE id = 'fcd6e92d-7e4b-41f1-832e-4a3e5e99e30f';
  UPDATE items SET slug = 'kau-keparat' WHERE id = '6cd972b2-7a6c-4553-b031-146a14134eac';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '6cd972b2-7a6c-4553-b031-146a14134eac' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Kamu Brengsek'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('6cd972b2-7a6c-4553-b031-146a14134eac', 'Kamu Brengsek', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '6cd972b2-7a6c-4553-b031-146a14134eac' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Kau Brengsek'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('6cd972b2-7a6c-4553-b031-146a14134eac', 'Kau Brengsek', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '6cd972b2-7a6c-4553-b031-146a14134eac' AND LOWER(TRIM(meaning)) = LOWER(TRIM('You Bastard'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('6cd972b2-7a6c-4553-b031-146a14134eac', 'You Bastard', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '6cd972b2-7a6c-4553-b031-146a14134eac' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Kamu Brengsek!'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('6cd972b2-7a6c-4553-b031-146a14134eac', 'Kamu Brengsek!', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '6cd972b2-7a6c-4553-b031-146a14134eac' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Kau Keparat!'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('6cd972b2-7a6c-4553-b031-146a14134eac', 'Kau Keparat!', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '6cd972b2-7a6c-4553-b031-146a14134eac' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Anda'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('6cd972b2-7a6c-4553-b031-146a14134eac', 'Anda', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '6cd972b2-7a6c-4553-b031-146a14134eac' AND LOWER(TRIM(meaning)) = LOWER(TRIM('You'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('6cd972b2-7a6c-4553-b031-146a14134eac', 'You', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '6cd972b2-7a6c-4553-b031-146a14134eac' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Kamu bajingan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('6cd972b2-7a6c-4553-b031-146a14134eac', 'Kamu bajingan', false, true);
  END IF;

  -- [VOCABULARY] 遺跡 (Level 37)
  UPDATE item_meanings SET meaning = 'Situs Purbakala', primary_meaning = true, accepted_answer = true WHERE id = '2a38c4de-34e0-4373-af33-d6beebe7680c';
  UPDATE items SET slug = 'situs-purbakala' WHERE id = 'e8294180-37ed-4f33-954a-364197e1dc3f';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'e8294180-37ed-4f33-954a-364197e1dc3f' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Reruntuhan Bersejarah'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('e8294180-37ed-4f33-954a-364197e1dc3f', 'Reruntuhan Bersejarah', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'e8294180-37ed-4f33-954a-364197e1dc3f' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Reruntuhan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('e8294180-37ed-4f33-954a-364197e1dc3f', 'Reruntuhan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'e8294180-37ed-4f33-954a-364197e1dc3f' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Historic Ruins'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('e8294180-37ed-4f33-954a-364197e1dc3f', 'Historic Ruins', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'e8294180-37ed-4f33-954a-364197e1dc3f' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Archaeological Remains'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('e8294180-37ed-4f33-954a-364197e1dc3f', 'Archaeological Remains', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'e8294180-37ed-4f33-954a-364197e1dc3f' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Remains'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('e8294180-37ed-4f33-954a-364197e1dc3f', 'Remains', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'e8294180-37ed-4f33-954a-364197e1dc3f' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Ruins'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('e8294180-37ed-4f33-954a-364197e1dc3f', 'Ruins', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'e8294180-37ed-4f33-954a-364197e1dc3f' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Peninggalan Bersejarah'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('e8294180-37ed-4f33-954a-364197e1dc3f', 'Peninggalan Bersejarah', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'e8294180-37ed-4f33-954a-364197e1dc3f' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Tetap'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('e8294180-37ed-4f33-954a-364197e1dc3f', 'Tetap', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'e8294180-37ed-4f33-954a-364197e1dc3f' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Historic Remains'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('e8294180-37ed-4f33-954a-364197e1dc3f', 'Historic Remains', false, true);
  END IF;

  -- [VOCABULARY] 闘う (Level 37)
  UPDATE item_meanings SET meaning = 'Bertarung Sengit', primary_meaning = true, accepted_answer = true WHERE id = 'a1c445a2-f08b-44e3-93ca-6afff19e002e';
  UPDATE items SET slug = 'bertarung-sengit' WHERE id = '6b7a5b21-e81e-4b86-82df-c0819db1e236';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '6b7a5b21-e81e-4b86-82df-c0819db1e236' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Berjuang Mati-matian'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('6b7a5b21-e81e-4b86-82df-c0819db1e236', 'Berjuang Mati-matian', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '6b7a5b21-e81e-4b86-82df-c0819db1e236' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Untuk Berjuang'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('6b7a5b21-e81e-4b86-82df-c0819db1e236', 'Untuk Berjuang', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '6b7a5b21-e81e-4b86-82df-c0819db1e236' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Fight'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('6b7a5b21-e81e-4b86-82df-c0819db1e236', 'To Fight', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '6b7a5b21-e81e-4b86-82df-c0819db1e236' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Struggle'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('6b7a5b21-e81e-4b86-82df-c0819db1e236', 'To Struggle', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '6b7a5b21-e81e-4b86-82df-c0819db1e236' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Contend'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('6b7a5b21-e81e-4b86-82df-c0819db1e236', 'To Contend', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '6b7a5b21-e81e-4b86-82df-c0819db1e236' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Resist'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('6b7a5b21-e81e-4b86-82df-c0819db1e236', 'To Resist', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '6b7a5b21-e81e-4b86-82df-c0819db1e236' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Combat'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('6b7a5b21-e81e-4b86-82df-c0819db1e236', 'To Combat', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '6b7a5b21-e81e-4b86-82df-c0819db1e236' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Struggle With'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('6b7a5b21-e81e-4b86-82df-c0819db1e236', 'To Struggle With', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '6b7a5b21-e81e-4b86-82df-c0819db1e236' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Struggle Against'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('6b7a5b21-e81e-4b86-82df-c0819db1e236', 'To Struggle Against', false, true);
  END IF;

  -- [VOCABULARY] 闘志 (Level 37)
  UPDATE item_meanings SET meaning = 'Semangat Tempur', primary_meaning = true, accepted_answer = true WHERE id = 'a2fa7f18-73ae-4bdb-b3b0-938e6f136f54';
  UPDATE items SET slug = 'semangat-tempur' WHERE id = 'fd4ad9c4-6ee3-4948-9029-877228c92647';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'fd4ad9c4-6ee3-4948-9029-877228c92647' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Nyali Berjuang'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('fd4ad9c4-6ee3-4948-9029-877228c92647', 'Nyali Berjuang', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'fd4ad9c4-6ee3-4948-9029-877228c92647' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Semangat Perjuangan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('fd4ad9c4-6ee3-4948-9029-877228c92647', 'Semangat Perjuangan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'fd4ad9c4-6ee3-4948-9029-877228c92647' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Fighting Spirit'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('fd4ad9c4-6ee3-4948-9029-877228c92647', 'Fighting Spirit', false, true);
  END IF;

  -- [VOCABULARY] 陣営 (Level 37)
  UPDATE item_meanings SET meaning = 'Kubu Politik', primary_meaning = true, accepted_answer = true WHERE id = '164e62dc-e492-41f1-a74d-24b432c4b922';
  UPDATE items SET slug = 'kubu-politik' WHERE id = '4697e71b-a747-4f7b-a6a9-a71f38ca0052';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '4697e71b-a747-4f7b-a6a9-a71f38ca0052' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Pasukan Perkemahan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('4697e71b-a747-4f7b-a6a9-a71f38ca0052', 'Pasukan Perkemahan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '4697e71b-a747-4f7b-a6a9-a71f38ca0052' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Kamp Tentara'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('4697e71b-a747-4f7b-a6a9-a71f38ca0052', 'Kamp Tentara', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '4697e71b-a747-4f7b-a6a9-a71f38ca0052' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Camp'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('4697e71b-a747-4f7b-a6a9-a71f38ca0052', 'Camp', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '4697e71b-a747-4f7b-a6a9-a71f38ca0052' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Faction'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('4697e71b-a747-4f7b-a6a9-a71f38ca0052', 'Faction', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '4697e71b-a747-4f7b-a6a9-a71f38ca0052' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Bloc'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('4697e71b-a747-4f7b-a6a9-a71f38ca0052', 'Bloc', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '4697e71b-a747-4f7b-a6a9-a71f38ca0052' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Fraksi'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('4697e71b-a747-4f7b-a6a9-a71f38ca0052', 'Fraksi', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '4697e71b-a747-4f7b-a6a9-a71f38ca0052' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Kamp'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('4697e71b-a747-4f7b-a6a9-a71f38ca0052', 'Kamp', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '4697e71b-a747-4f7b-a6a9-a71f38ca0052' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Team'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('4697e71b-a747-4f7b-a6a9-a71f38ca0052', 'Team', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '4697e71b-a747-4f7b-a6a9-a71f38ca0052' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Military Base'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('4697e71b-a747-4f7b-a6a9-a71f38ca0052', 'Military Base', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '4697e71b-a747-4f7b-a6a9-a71f38ca0052' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Army Camp'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('4697e71b-a747-4f7b-a6a9-a71f38ca0052', 'Army Camp', false, true);
  END IF;

END $$;
