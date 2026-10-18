-- Migration: Batch 2 Part 6 (Level 26)
-- Total items: 36

DO $$
BEGIN

  -- [KANJI] 占 (Level 26)
  UPDATE item_meanings SET meaning = 'Ramalan', primary_meaning = true, accepted_answer = true WHERE id = '1055de22-de87-4520-9cce-8c8f026f74a5';
  UPDATE items SET slug = 'ramalan' WHERE id = 'b3cd7141-9ce3-473d-8f50-75604a283771';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'b3cd7141-9ce3-473d-8f50-75604a283771' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Meramal'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('b3cd7141-9ce3-473d-8f50-75604a283771', 'Meramal', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'b3cd7141-9ce3-473d-8f50-75604a283771' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Menduduki'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('b3cd7141-9ce3-473d-8f50-75604a283771', 'Menduduki', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'b3cd7141-9ce3-473d-8f50-75604a283771' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Fortune'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('b3cd7141-9ce3-473d-8f50-75604a283771', 'Fortune', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'b3cd7141-9ce3-473d-8f50-75604a283771' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Occupy'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('b3cd7141-9ce3-473d-8f50-75604a283771', 'Occupy', false, true);
  END IF;

  -- [KANJI] 垂 (Level 26)
  UPDATE item_meanings SET meaning = 'Menjuntai', primary_meaning = true, accepted_answer = true WHERE id = 'd2c6d935-064d-4e87-b4a6-efd2e0f8083d';
  UPDATE items SET slug = 'menjuntai' WHERE id = '368a362e-460f-4223-b825-ea6686de56da';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '368a362e-460f-4223-b825-ea6686de56da' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Terkulai'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('368a362e-460f-4223-b825-ea6686de56da', 'Terkulai', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '368a362e-460f-4223-b825-ea6686de56da' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Menggantung'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('368a362e-460f-4223-b825-ea6686de56da', 'Menggantung', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '368a362e-460f-4223-b825-ea6686de56da' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Droop'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('368a362e-460f-4223-b825-ea6686de56da', 'Droop', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '368a362e-460f-4223-b825-ea6686de56da' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Dangle'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('368a362e-460f-4223-b825-ea6686de56da', 'Dangle', false, true);
  END IF;

  -- [KANJI] 従 (Level 26)
  UPDATE item_meanings SET meaning = 'Mematuhi', primary_meaning = true, accepted_answer = true WHERE id = 'a768d81a-fb99-416f-aa0f-4567918f3b98';
  UPDATE items SET slug = 'mematuhi' WHERE id = '257d43d5-02bd-4df4-bc73-e8c7838fb1db';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '257d43d5-02bd-4df4-bc73-e8c7838fb1db' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Mengikuti'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('257d43d5-02bd-4df4-bc73-e8c7838fb1db', 'Mengikuti', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '257d43d5-02bd-4df4-bc73-e8c7838fb1db' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Menuruti'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('257d43d5-02bd-4df4-bc73-e8c7838fb1db', 'Menuruti', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '257d43d5-02bd-4df4-bc73-e8c7838fb1db' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Obey'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('257d43d5-02bd-4df4-bc73-e8c7838fb1db', 'Obey', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '257d43d5-02bd-4df4-bc73-e8c7838fb1db' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Follow'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('257d43d5-02bd-4df4-bc73-e8c7838fb1db', 'Follow', false, true);
  END IF;

  -- [KANJI] 我 (Level 26)
  UPDATE item_meanings SET meaning = 'Aku', primary_meaning = true, accepted_answer = true WHERE id = '28b5086e-01eb-4736-8106-206412824796';
  UPDATE items SET slug = 'aku' WHERE id = 'c05d99bc-9afa-4463-bfd7-1bd7f9682664';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'c05d99bc-9afa-4463-bfd7-1bd7f9682664' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Diriku'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('c05d99bc-9afa-4463-bfd7-1bd7f9682664', 'Diriku', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'c05d99bc-9afa-4463-bfd7-1bd7f9682664' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Saya'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('c05d99bc-9afa-4463-bfd7-1bd7f9682664', 'Saya', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'c05d99bc-9afa-4463-bfd7-1bd7f9682664' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Diri Sendiri'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('c05d99bc-9afa-4463-bfd7-1bd7f9682664', 'Diri Sendiri', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'c05d99bc-9afa-4463-bfd7-1bd7f9682664' AND LOWER(TRIM(meaning)) = LOWER(TRIM('I'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('c05d99bc-9afa-4463-bfd7-1bd7f9682664', 'I', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'c05d99bc-9afa-4463-bfd7-1bd7f9682664' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Me'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('c05d99bc-9afa-4463-bfd7-1bd7f9682664', 'Me', false, true);
  END IF;

  -- [KANJI] 挫 (Level 26)
  UPDATE item_meanings SET meaning = 'Terkilir', primary_meaning = true, accepted_answer = true WHERE id = 'd1066b02-20b6-47c9-80fa-0aaadd943521';
  UPDATE items SET slug = 'terkilir' WHERE id = 'e270be6c-b1b7-4e29-b07f-a757186250eb';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'e270be6c-b1b7-4e29-b07f-a757186250eb' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Patah Semangat'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('e270be6c-b1b7-4e29-b07f-a757186250eb', 'Patah Semangat', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'e270be6c-b1b7-4e29-b07f-a757186250eb' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Keseleo'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('e270be6c-b1b7-4e29-b07f-a757186250eb', 'Keseleo', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'e270be6c-b1b7-4e29-b07f-a757186250eb' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Sprain'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('e270be6c-b1b7-4e29-b07f-a757186250eb', 'Sprain', false, true);
  END IF;

  -- [KANJI] 捻 (Level 26)
  UPDATE item_meanings SET meaning = 'Memilin', primary_meaning = true, accepted_answer = true WHERE id = '27bed1df-ca1e-4fc6-96b7-bc704e14de46';
  UPDATE items SET slug = 'memilin' WHERE id = 'caf298ca-da9a-4543-8a34-c6b47398eaf6';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'caf298ca-da9a-4543-8a34-c6b47398eaf6' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Memutar Otak'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('caf298ca-da9a-4543-8a34-c6b47398eaf6', 'Memutar Otak', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'caf298ca-da9a-4543-8a34-c6b47398eaf6' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Memelintir'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('caf298ca-da9a-4543-8a34-c6b47398eaf6', 'Memelintir', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'caf298ca-da9a-4543-8a34-c6b47398eaf6' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Twist'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('caf298ca-da9a-4543-8a34-c6b47398eaf6', 'Twist', false, true);
  END IF;

  -- [KANJI] 接 (Level 26)
  UPDATE item_meanings SET meaning = 'Menempel', primary_meaning = true, accepted_answer = true WHERE id = '6ff53713-70c3-45df-9c1c-af62f5d6c16b';
  UPDATE items SET slug = 'menempel' WHERE id = '875d6f40-eeaa-4ab4-845c-2f8a83a226a2';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '875d6f40-eeaa-4ab4-845c-2f8a83a226a2' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Menghubungkan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('875d6f40-eeaa-4ab4-845c-2f8a83a226a2', 'Menghubungkan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '875d6f40-eeaa-4ab4-845c-2f8a83a226a2' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Kontak'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('875d6f40-eeaa-4ab4-845c-2f8a83a226a2', 'Kontak', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '875d6f40-eeaa-4ab4-845c-2f8a83a226a2' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Adjoin'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('875d6f40-eeaa-4ab4-845c-2f8a83a226a2', 'Adjoin', false, true);
  END IF;

  -- [KANJI] 故 (Level 26)
  UPDATE item_meanings SET meaning = 'Alasan', primary_meaning = true, accepted_answer = true WHERE id = '85154e3b-4a0e-4670-a4b5-325d75a10ecf';
  UPDATE items SET slug = 'alasan' WHERE id = '0faff46d-d70d-413b-831d-4a492b76559e';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '0faff46d-d70d-413b-831d-4a492b76559e' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Oleh Karena Itu'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('0faff46d-d70d-413b-831d-4a492b76559e', 'Oleh Karena Itu', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '0faff46d-d70d-413b-831d-4a492b76559e' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Sebab'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('0faff46d-d70d-413b-831d-4a492b76559e', 'Sebab', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '0faff46d-d70d-413b-831d-4a492b76559e' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Karena'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('0faff46d-d70d-413b-831d-4a492b76559e', 'Karena', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '0faff46d-d70d-413b-831d-4a492b76559e' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Reason'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('0faff46d-d70d-413b-831d-4a492b76559e', 'Reason', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '0faff46d-d70d-413b-831d-4a492b76559e' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Almarhum'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('0faff46d-d70d-413b-831d-4a492b76559e', 'Almarhum', false, true);
  END IF;

  -- [VOCABULARY] お祝い (Level 26)
  UPDATE item_meanings SET meaning = 'Perayaan', primary_meaning = true, accepted_answer = true WHERE id = '73f98d9b-80f2-4a0a-8bff-057dad625f66';
  UPDATE items SET slug = 'perayaan' WHERE id = 'c6bfac22-ef4d-4a54-8c70-920103038c51';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'c6bfac22-ef4d-4a54-8c70-920103038c51' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Ucapan Selamat'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('c6bfac22-ef4d-4a54-8c70-920103038c51', 'Ucapan Selamat', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'c6bfac22-ef4d-4a54-8c70-920103038c51' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Hadiah Selamat'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('c6bfac22-ef4d-4a54-8c70-920103038c51', 'Hadiah Selamat', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'c6bfac22-ef4d-4a54-8c70-920103038c51' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Selamat'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('c6bfac22-ef4d-4a54-8c70-920103038c51', 'Selamat', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'c6bfac22-ef4d-4a54-8c70-920103038c51' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Celebration'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('c6bfac22-ef4d-4a54-8c70-920103038c51', 'Celebration', false, true);
  END IF;

  -- [VOCABULARY] お菓子 (Level 26)
  UPDATE item_meanings SET meaning = 'Camilan', primary_meaning = true, accepted_answer = true WHERE id = 'fcfdee1a-b3b5-4440-a593-28b957d319cd';
  UPDATE items SET slug = 'camilan' WHERE id = 'acae1e55-ff4a-4b4a-9fda-f5b122f72082';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'acae1e55-ff4a-4b4a-9fda-f5b122f72082' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Makanan Ringan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('acae1e55-ff4a-4b4a-9fda-f5b122f72082', 'Makanan Ringan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'acae1e55-ff4a-4b4a-9fda-f5b122f72082' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Kue'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('acae1e55-ff4a-4b4a-9fda-f5b122f72082', 'Kue', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'acae1e55-ff4a-4b4a-9fda-f5b122f72082' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Snack'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('acae1e55-ff4a-4b4a-9fda-f5b122f72082', 'Snack', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'acae1e55-ff4a-4b4a-9fda-f5b122f72082' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Sweets'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('acae1e55-ff4a-4b4a-9fda-f5b122f72082', 'Sweets', false, true);
  END IF;

  -- [VOCABULARY] 万年筆 (Level 26)
  UPDATE item_meanings SET meaning = 'Pena', primary_meaning = true, accepted_answer = true WHERE id = 'cacb9b17-b59f-4d01-b9a9-fc59f6a5ff4b';
  UPDATE items SET slug = 'pena' WHERE id = '2c02f066-ca49-4407-8bed-e7e70d63d07a';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '2c02f066-ca49-4407-8bed-e7e70d63d07a' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Pena Bulpen'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('2c02f066-ca49-4407-8bed-e7e70d63d07a', 'Pena Bulpen', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '2c02f066-ca49-4407-8bed-e7e70d63d07a' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Fountain Pen'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('2c02f066-ca49-4407-8bed-e7e70d63d07a', 'Fountain Pen', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '2c02f066-ca49-4407-8bed-e7e70d63d07a' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Pulpen'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('2c02f066-ca49-4407-8bed-e7e70d63d07a', 'Pulpen', false, true);
  END IF;

  -- [VOCABULARY] 任せる (Level 26)
  UPDATE item_meanings SET meaning = 'Mempercayakan', primary_meaning = true, accepted_answer = true WHERE id = 'b8db29fb-3bad-4b89-ab48-bfe52efb37e5';
  UPDATE items SET slug = 'mempercayakan' WHERE id = '8b30bcb8-e6bb-434e-a0c8-994f73808d0d';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '8b30bcb8-e6bb-434e-a0c8-994f73808d0d' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Menyerahkan Kepada'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('8b30bcb8-e6bb-434e-a0c8-994f73808d0d', 'Menyerahkan Kepada', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '8b30bcb8-e6bb-434e-a0c8-994f73808d0d' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Menyerahkan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('8b30bcb8-e6bb-434e-a0c8-994f73808d0d', 'Menyerahkan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '8b30bcb8-e6bb-434e-a0c8-994f73808d0d' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Pasrah'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('8b30bcb8-e6bb-434e-a0c8-994f73808d0d', 'Pasrah', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '8b30bcb8-e6bb-434e-a0c8-994f73808d0d' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Entrust'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('8b30bcb8-e6bb-434e-a0c8-994f73808d0d', 'To Entrust', false, true);
  END IF;

  -- [VOCABULARY] 何故 (Level 26)
  UPDATE item_meanings SET meaning = 'Mengapa', primary_meaning = true, accepted_answer = true WHERE id = '542d1106-83ad-4c37-b00c-74ebe9861614';
  UPDATE items SET slug = 'mengapa' WHERE id = 'a908b37a-0d01-4f62-95e7-b34c7c8382f2';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'a908b37a-0d01-4f62-95e7-b34c7c8382f2' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Kenapa'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('a908b37a-0d01-4f62-95e7-b34c7c8382f2', 'Kenapa', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'a908b37a-0d01-4f62-95e7-b34c7c8382f2' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Alasan Apa'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('a908b37a-0d01-4f62-95e7-b34c7c8382f2', 'Alasan Apa', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'a908b37a-0d01-4f62-95e7-b34c7c8382f2' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Why'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('a908b37a-0d01-4f62-95e7-b34c7c8382f2', 'Why', false, true);
  END IF;

  -- [VOCABULARY] 占い (Level 26)
  UPDATE item_meanings SET meaning = 'Ramalan', primary_meaning = true, accepted_answer = true WHERE id = 'c85c9433-a2aa-4296-83e8-8778bf370c2f';
  UPDATE items SET slug = 'ramalan' WHERE id = 'c1cb5221-0a19-4809-a54c-f9aabf36239e';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'c1cb5221-0a19-4809-a54c-f9aabf36239e' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Meramal Nasib'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('c1cb5221-0a19-4809-a54c-f9aabf36239e', 'Meramal Nasib', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'c1cb5221-0a19-4809-a54c-f9aabf36239e' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Astrologi'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('c1cb5221-0a19-4809-a54c-f9aabf36239e', 'Astrologi', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'c1cb5221-0a19-4809-a54c-f9aabf36239e' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Fortune Telling'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('c1cb5221-0a19-4809-a54c-f9aabf36239e', 'Fortune Telling', false, true);
  END IF;

  -- [VOCABULARY] 占める (Level 26)
  UPDATE item_meanings SET meaning = 'Menduduki', primary_meaning = true, accepted_answer = true WHERE id = '006ff2f1-c9f6-4855-b26e-412ae62cc1fc';
  UPDATE items SET slug = 'menduduki' WHERE id = '38b425f0-1599-4844-9430-02f789c1f6b6';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '38b425f0-1599-4844-9430-02f789c1f6b6' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Mengambil Porsi'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('38b425f0-1599-4844-9430-02f789c1f6b6', 'Mengambil Porsi', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '38b425f0-1599-4844-9430-02f789c1f6b6' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Menguasai'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('38b425f0-1599-4844-9430-02f789c1f6b6', 'Menguasai', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '38b425f0-1599-4844-9430-02f789c1f6b6' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Occupy'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('38b425f0-1599-4844-9430-02f789c1f6b6', 'To Occupy', false, true);
  END IF;

  -- [VOCABULARY] 差し上げる (Level 26)
  UPDATE item_meanings SET meaning = 'Memberikan', primary_meaning = true, accepted_answer = true WHERE id = '77f64eb3-44a2-4050-999e-30838db98d44';
  UPDATE items SET slug = 'memberikan' WHERE id = '3180367e-7741-4520-a648-8edb5f748f77';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '3180367e-7741-4520-a648-8edb5f748f77' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Mempersembahkan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('3180367e-7741-4520-a648-8edb5f748f77', 'Mempersembahkan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '3180367e-7741-4520-a648-8edb5f748f77' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Menghaturkan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('3180367e-7741-4520-a648-8edb5f748f77', 'Menghaturkan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '3180367e-7741-4520-a648-8edb5f748f77' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Give'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('3180367e-7741-4520-a648-8edb5f748f77', 'To Give', false, true);
  END IF;

  -- [VOCABULARY] 従う (Level 26)
  UPDATE item_meanings SET meaning = 'Mematuhi', primary_meaning = true, accepted_answer = true WHERE id = 'e6adf434-120f-4ef9-9eea-e2abe9e70be8';
  UPDATE items SET slug = 'mematuhi' WHERE id = '7f0cfdf4-5856-4418-926d-62f1076dc62e';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '7f0cfdf4-5856-4418-926d-62f1076dc62e' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Menuruti'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('7f0cfdf4-5856-4418-926d-62f1076dc62e', 'Menuruti', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '7f0cfdf4-5856-4418-926d-62f1076dc62e' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Mengikuti'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('7f0cfdf4-5856-4418-926d-62f1076dc62e', 'Mengikuti', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '7f0cfdf4-5856-4418-926d-62f1076dc62e' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Obey'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('7f0cfdf4-5856-4418-926d-62f1076dc62e', 'To Obey', false, true);
  END IF;

  -- [VOCABULARY] 我 (Level 26)
  UPDATE item_meanings SET meaning = 'Aku', primary_meaning = true, accepted_answer = true WHERE id = '50145b95-f640-4845-b3ab-26b64b6517ac';
  UPDATE items SET slug = 'aku' WHERE id = '6af5bda3-db51-4e2f-b11c-1333124c1f84';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '6af5bda3-db51-4e2f-b11c-1333124c1f84' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Diriku'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('6af5bda3-db51-4e2f-b11c-1333124c1f84', 'Diriku', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '6af5bda3-db51-4e2f-b11c-1333124c1f84' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Saya'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('6af5bda3-db51-4e2f-b11c-1333124c1f84', 'Saya', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '6af5bda3-db51-4e2f-b11c-1333124c1f84' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Diri Sendiri'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('6af5bda3-db51-4e2f-b11c-1333124c1f84', 'Diri Sendiri', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '6af5bda3-db51-4e2f-b11c-1333124c1f84' AND LOWER(TRIM(meaning)) = LOWER(TRIM('I'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('6af5bda3-db51-4e2f-b11c-1333124c1f84', 'I', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '6af5bda3-db51-4e2f-b11c-1333124c1f84' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Me'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('6af5bda3-db51-4e2f-b11c-1333124c1f84', 'Me', false, true);
  END IF;

  -- [VOCABULARY] 担う (Level 26)
  UPDATE item_meanings SET meaning = 'Memikul', primary_meaning = true, accepted_answer = true WHERE id = '974621ef-7c74-4fcf-acef-d14e033054be';
  UPDATE items SET slug = 'memikul' WHERE id = '868e13a5-4d51-44c7-8b98-ae0fa17e55e6';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '868e13a5-4d51-44c7-8b98-ae0fa17e55e6' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Tanggung Jawab'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('868e13a5-4d51-44c7-8b98-ae0fa17e55e6', 'Tanggung Jawab', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '868e13a5-4d51-44c7-8b98-ae0fa17e55e6' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Memikul Beban'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('868e13a5-4d51-44c7-8b98-ae0fa17e55e6', 'Memikul Beban', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '868e13a5-4d51-44c7-8b98-ae0fa17e55e6' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Take Responsibility'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('868e13a5-4d51-44c7-8b98-ae0fa17e55e6', 'To Take Responsibility', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '868e13a5-4d51-44c7-8b98-ae0fa17e55e6' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Bear'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('868e13a5-4d51-44c7-8b98-ae0fa17e55e6', 'To Bear', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '868e13a5-4d51-44c7-8b98-ae0fa17e55e6' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Memikul (Tanggung Jawab'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('868e13a5-4d51-44c7-8b98-ae0fa17e55e6', 'Memikul (Tanggung Jawab', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '868e13a5-4d51-44c7-8b98-ae0fa17e55e6' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Beban)'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('868e13a5-4d51-44c7-8b98-ae0fa17e55e6', 'Beban)', false, true);
  END IF;

  -- [VOCABULARY] 拭く (Level 26)
  UPDATE item_meanings SET meaning = 'Mengelap', primary_meaning = true, accepted_answer = true WHERE id = '99bc9cdc-bbf1-441c-850e-634846b397c8';
  UPDATE items SET slug = 'mengelap' WHERE id = 'f49fa092-beac-4f65-b83b-b90bc68314ff';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'f49fa092-beac-4f65-b83b-b90bc68314ff' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Menyeka'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('f49fa092-beac-4f65-b83b-b90bc68314ff', 'Menyeka', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'f49fa092-beac-4f65-b83b-b90bc68314ff' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Membersihkan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('f49fa092-beac-4f65-b83b-b90bc68314ff', 'Membersihkan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'f49fa092-beac-4f65-b83b-b90bc68314ff' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Wipe'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('f49fa092-beac-4f65-b83b-b90bc68314ff', 'To Wipe', false, true);
  END IF;

  -- [VOCABULARY] 振る (Level 26)
  UPDATE item_meanings SET meaning = 'Mengayunkan', primary_meaning = true, accepted_answer = true WHERE id = '61320a91-15b3-4bce-9d0f-281a800cbdbf';
  UPDATE items SET slug = 'mengayunkan' WHERE id = '49bcb674-f085-4e4f-bd28-5f3955fb2781';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '49bcb674-f085-4e4f-bd28-5f3955fb2781' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Melambaikan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('49bcb674-f085-4e4f-bd28-5f3955fb2781', 'Melambaikan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '49bcb674-f085-4e4f-bd28-5f3955fb2781' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Memutuskan Pasangan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('49bcb674-f085-4e4f-bd28-5f3955fb2781', 'Memutuskan Pasangan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '49bcb674-f085-4e4f-bd28-5f3955fb2781' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Mencampakkan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('49bcb674-f085-4e4f-bd28-5f3955fb2781', 'Mencampakkan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '49bcb674-f085-4e4f-bd28-5f3955fb2781' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Shake'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('49bcb674-f085-4e4f-bd28-5f3955fb2781', 'To Shake', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '49bcb674-f085-4e4f-bd28-5f3955fb2781' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Wave'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('49bcb674-f085-4e4f-bd28-5f3955fb2781', 'To Wave', false, true);
  END IF;

  -- [VOCABULARY] 捻出 (Level 26)
  UPDATE item_meanings SET meaning = 'Mengusahakan Dana', primary_meaning = true, accepted_answer = true WHERE id = 'd238f3d6-aa20-45f4-9e13-5b800e49ed00';
  UPDATE items SET slug = 'mengusahakan-dana' WHERE id = '243cac0f-8194-4b36-9a0c-5e626f42fc81';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '243cac0f-8194-4b36-9a0c-5e626f42fc81' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Memeras Otak Mencari Biaya'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('243cac0f-8194-4b36-9a0c-5e626f42fc81', 'Memeras Otak Mencari Biaya', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '243cac0f-8194-4b36-9a0c-5e626f42fc81' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Mencari Dana'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('243cac0f-8194-4b36-9a0c-5e626f42fc81', 'Mencari Dana', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '243cac0f-8194-4b36-9a0c-5e626f42fc81' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Scraping Together'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('243cac0f-8194-4b36-9a0c-5e626f42fc81', 'Scraping Together', false, true);
  END IF;

  -- [VOCABULARY] 捻挫 (Level 26)
  UPDATE item_meanings SET meaning = 'Keseleo', primary_meaning = true, accepted_answer = true WHERE id = 'a48fc03f-ca77-441e-a45a-e72f1e1d556f';
  UPDATE items SET slug = 'keseleo' WHERE id = '6866b281-32fe-4c74-ab12-ee21ab434ec3';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '6866b281-32fe-4c74-ab12-ee21ab434ec3' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Terkilir'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('6866b281-32fe-4c74-ab12-ee21ab434ec3', 'Terkilir', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '6866b281-32fe-4c74-ab12-ee21ab434ec3' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Sprain'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('6866b281-32fe-4c74-ab12-ee21ab434ec3', 'Sprain', false, true);
  END IF;

  -- [VOCABULARY] 故 (Level 26)
  UPDATE item_meanings SET meaning = 'Alasan', primary_meaning = true, accepted_answer = true WHERE id = 'd1cc099f-9bbe-470c-b0f5-8a3078708ced';
  UPDATE items SET slug = 'alasan' WHERE id = '2f1d3828-bbaf-44b6-bc14-f3503800eef2';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '2f1d3828-bbaf-44b6-bc14-f3503800eef2' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Oleh Karena Itu'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('2f1d3828-bbaf-44b6-bc14-f3503800eef2', 'Oleh Karena Itu', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '2f1d3828-bbaf-44b6-bc14-f3503800eef2' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Sebab'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('2f1d3828-bbaf-44b6-bc14-f3503800eef2', 'Sebab', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '2f1d3828-bbaf-44b6-bc14-f3503800eef2' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Karena'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('2f1d3828-bbaf-44b6-bc14-f3503800eef2', 'Karena', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '2f1d3828-bbaf-44b6-bc14-f3503800eef2' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Reason'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('2f1d3828-bbaf-44b6-bc14-f3503800eef2', 'Reason', false, true);
  END IF;

  -- [VOCABULARY] 故意 (Level 26)
  UPDATE item_meanings SET meaning = 'Sengaja', primary_meaning = true, accepted_answer = true WHERE id = '4b9ccb68-7f99-4a96-b83c-2217916b7824';
  UPDATE items SET slug = 'sengaja' WHERE id = '7dec0f04-5d13-4cea-98bd-c6a0e623ef62';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '7dec0f04-5d13-4cea-98bd-c6a0e623ef62' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Kesengajaan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('7dec0f04-5d13-4cea-98bd-c6a0e623ef62', 'Kesengajaan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '7dec0f04-5d13-4cea-98bd-c6a0e623ef62' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Disengaja'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('7dec0f04-5d13-4cea-98bd-c6a0e623ef62', 'Disengaja', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '7dec0f04-5d13-4cea-98bd-c6a0e623ef62' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Intentional'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('7dec0f04-5d13-4cea-98bd-c6a0e623ef62', 'Intentional', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '7dec0f04-5d13-4cea-98bd-c6a0e623ef62' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Deliberate'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('7dec0f04-5d13-4cea-98bd-c6a0e623ef62', 'Deliberate', false, true);
  END IF;

  -- [VOCABULARY] 替わる (Level 26)
  UPDATE item_meanings SET meaning = 'Berganti', primary_meaning = true, accepted_answer = true WHERE id = '1b42fa92-295f-4f3c-8916-bbe4443494ed';
  UPDATE items SET slug = 'berganti' WHERE id = '20db4a0d-47a2-49ee-af9a-15a944b9792c';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '20db4a0d-47a2-49ee-af9a-15a944b9792c' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Tertukar'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('20db4a0d-47a2-49ee-af9a-15a944b9792c', 'Tertukar', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '20db4a0d-47a2-49ee-af9a-15a944b9792c' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Tergantikan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('20db4a0d-47a2-49ee-af9a-15a944b9792c', 'Tergantikan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '20db4a0d-47a2-49ee-af9a-15a944b9792c' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Be Replaced'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('20db4a0d-47a2-49ee-af9a-15a944b9792c', 'To Be Replaced', false, true);
  END IF;

  -- [VOCABULARY] 栄える (Level 26)
  UPDATE item_meanings SET meaning = 'Makmur', primary_meaning = true, accepted_answer = true WHERE id = 'e2ee1fa7-a8f9-4e47-9c40-97dc21ac289a';
  UPDATE items SET slug = 'makmur' WHERE id = 'cec2a23a-7e6d-4d2c-9b5c-676096e63e80';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'cec2a23a-7e6d-4d2c-9b5c-676096e63e80' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Berkembang Pesat'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('cec2a23a-7e6d-4d2c-9b5c-676096e63e80', 'Berkembang Pesat', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'cec2a23a-7e6d-4d2c-9b5c-676096e63e80' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Berjaya'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('cec2a23a-7e6d-4d2c-9b5c-676096e63e80', 'Berjaya', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'cec2a23a-7e6d-4d2c-9b5c-676096e63e80' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Flourish'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('cec2a23a-7e6d-4d2c-9b5c-676096e63e80', 'To Flourish', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'cec2a23a-7e6d-4d2c-9b5c-676096e63e80' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Prosper'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('cec2a23a-7e6d-4d2c-9b5c-676096e63e80', 'To Prosper', false, true);
  END IF;

  -- [VOCABULARY] 気違い (Level 26)
  UPDATE item_meanings SET meaning = 'Gila', primary_meaning = true, accepted_answer = true WHERE id = '55e603dc-28c6-4cf8-b1ed-74d72e7fc6e0';
  UPDATE items SET slug = 'gila' WHERE id = '65c20f45-e81a-4e26-b598-0f9dee16e60f';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '65c20f45-e81a-4e26-b598-0f9dee16e60f' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Tidak Waras'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('65c20f45-e81a-4e26-b598-0f9dee16e60f', 'Tidak Waras', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '65c20f45-e81a-4e26-b598-0f9dee16e60f' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Edan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('65c20f45-e81a-4e26-b598-0f9dee16e60f', 'Edan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '65c20f45-e81a-4e26-b598-0f9dee16e60f' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Crazy'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('65c20f45-e81a-4e26-b598-0f9dee16e60f', 'Crazy', false, true);
  END IF;

  -- [VOCABULARY] 渡す (Level 26)
  UPDATE item_meanings SET meaning = 'Menyerahkan', primary_meaning = true, accepted_answer = true WHERE id = '14fa9a12-0269-4a22-801a-c2914e3e6d79';
  UPDATE items SET slug = 'menyerahkan' WHERE id = 'fd005657-932b-434d-a623-d87ae057fec0';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'fd005657-932b-434d-a623-d87ae057fec0' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Menyeberangkan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('fd005657-932b-434d-a623-d87ae057fec0', 'Menyeberangkan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'fd005657-932b-434d-a623-d87ae057fec0' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Memberikan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('fd005657-932b-434d-a623-d87ae057fec0', 'Memberikan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'fd005657-932b-434d-a623-d87ae057fec0' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Hand Over'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('fd005657-932b-434d-a623-d87ae057fec0', 'To Hand Over', false, true);
  END IF;

  -- [VOCABULARY] 載せる (Level 26)
  UPDATE item_meanings SET meaning = 'Memuat', primary_meaning = true, accepted_answer = true WHERE id = '1cf2b88f-f9bb-4959-821f-27fcd2c21890';
  UPDATE items SET slug = 'memuat' WHERE id = '1836b470-e848-4d76-a87f-8d49bd4871a7';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '1836b470-e848-4d76-a87f-8d49bd4871a7' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Menaruh di Atas'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('1836b470-e848-4d76-a87f-8d49bd4871a7', 'Menaruh di Atas', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '1836b470-e848-4d76-a87f-8d49bd4871a7' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Menumpangkan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('1836b470-e848-4d76-a87f-8d49bd4871a7', 'Menumpangkan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '1836b470-e848-4d76-a87f-8d49bd4871a7' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Place On'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('1836b470-e848-4d76-a87f-8d49bd4871a7', 'To Place On', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '1836b470-e848-4d76-a87f-8d49bd4871a7' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Record'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('1836b470-e848-4d76-a87f-8d49bd4871a7', 'To Record', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '1836b470-e848-4d76-a87f-8d49bd4871a7' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Menaruh'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('1836b470-e848-4d76-a87f-8d49bd4871a7', 'Menaruh', false, true);
  END IF;

  -- [VOCABULARY] 造る (Level 26)
  UPDATE item_meanings SET meaning = 'Membuat', primary_meaning = true, accepted_answer = true WHERE id = '373287bb-8d27-4fcf-835a-f3f1fef799b0';
  UPDATE items SET slug = 'membuat' WHERE id = 'c2ea11cf-c999-4321-a61a-0f7ecbb315bc';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'c2ea11cf-c999-4321-a61a-0f7ecbb315bc' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Memproduksi'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('c2ea11cf-c999-4321-a61a-0f7ecbb315bc', 'Memproduksi', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'c2ea11cf-c999-4321-a61a-0f7ecbb315bc' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Menyeduh'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('c2ea11cf-c999-4321-a61a-0f7ecbb315bc', 'Menyeduh', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'c2ea11cf-c999-4321-a61a-0f7ecbb315bc' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Membangun'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('c2ea11cf-c999-4321-a61a-0f7ecbb315bc', 'Membangun', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'c2ea11cf-c999-4321-a61a-0f7ecbb315bc' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Construct'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('c2ea11cf-c999-4321-a61a-0f7ecbb315bc', 'To Construct', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'c2ea11cf-c999-4321-a61a-0f7ecbb315bc' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Brew'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('c2ea11cf-c999-4321-a61a-0f7ecbb315bc', 'To Brew', false, true);
  END IF;

  -- [VOCABULARY] 過ごす (Level 26)
  UPDATE item_meanings SET meaning = 'Menghabiskan Waktu', primary_meaning = true, accepted_answer = true WHERE id = '21985e6c-3c78-4be3-a8b2-f4afff1a726c';
  UPDATE items SET slug = 'menghabiskan-waktu' WHERE id = '5cffeae1-a6ff-48af-af13-81ba534f8544';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '5cffeae1-a6ff-48af-af13-81ba534f8544' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Melewati Hari'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('5cffeae1-a6ff-48af-af13-81ba534f8544', 'Melewati Hari', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '5cffeae1-a6ff-48af-af13-81ba534f8544' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Tinggal'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('5cffeae1-a6ff-48af-af13-81ba534f8544', 'Tinggal', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '5cffeae1-a6ff-48af-af13-81ba534f8544' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Pass Time'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('5cffeae1-a6ff-48af-af13-81ba534f8544', 'To Pass Time', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '5cffeae1-a6ff-48af-af13-81ba534f8544' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Spend Time'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('5cffeae1-a6ff-48af-af13-81ba534f8544', 'To Spend Time', false, true);
  END IF;

  -- [VOCABULARY] 鉛 (Level 26)
  UPDATE item_meanings SET meaning = 'Timbal', primary_meaning = true, accepted_answer = true WHERE id = '7d7da3b7-5971-4324-9ebd-c0bad8a9e0b8';
  UPDATE items SET slug = 'timbal' WHERE id = '5a965e4f-8041-4ef5-b1fa-59d8defc31d2';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '5a965e4f-8041-4ef5-b1fa-59d8defc31d2' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Timah Hitam'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('5a965e4f-8041-4ef5-b1fa-59d8defc31d2', 'Timah Hitam', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '5a965e4f-8041-4ef5-b1fa-59d8defc31d2' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Lead'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('5a965e4f-8041-4ef5-b1fa-59d8defc31d2', 'Lead', false, true);
  END IF;

  -- [VOCABULARY] 間違い (Level 26)
  UPDATE item_meanings SET meaning = 'Kesalahan', primary_meaning = true, accepted_answer = true WHERE id = 'be96f98d-d941-478d-b93f-7dd0819cbeeb';
  UPDATE items SET slug = 'kesalahan' WHERE id = '6c37773f-6bf0-44ca-9781-85ed35e91d51';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '6c37773f-6bf0-44ca-9781-85ed35e91d51' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Kekeliruan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('6c37773f-6bf0-44ca-9781-85ed35e91d51', 'Kekeliruan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '6c37773f-6bf0-44ca-9781-85ed35e91d51' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Salah'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('6c37773f-6bf0-44ca-9781-85ed35e91d51', 'Salah', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '6c37773f-6bf0-44ca-9781-85ed35e91d51' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Mistake'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('6c37773f-6bf0-44ca-9781-85ed35e91d51', 'Mistake', false, true);
  END IF;

  -- [VOCABULARY] 障る (Level 26)
  UPDATE item_meanings SET meaning = 'Mengganggu', primary_meaning = true, accepted_answer = true WHERE id = '8b14cab0-c363-4307-8638-3b5d57f3ff61';
  UPDATE items SET slug = 'mengganggu' WHERE id = 'ce4d4d78-03d9-4ad5-802d-50b93c0b1d20';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'ce4d4d78-03d9-4ad5-802d-50b93c0b1d20' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Mengganggu Kesehatan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('ce4d4d78-03d9-4ad5-802d-50b93c0b1d20', 'Mengganggu Kesehatan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'ce4d4d78-03d9-4ad5-802d-50b93c0b1d20' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Merugikan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('ce4d4d78-03d9-4ad5-802d-50b93c0b1d20', 'Merugikan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'ce4d4d78-03d9-4ad5-802d-50b93c0b1d20' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Irritate'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('ce4d4d78-03d9-4ad5-802d-50b93c0b1d20', 'To Irritate', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'ce4d4d78-03d9-4ad5-802d-50b93c0b1d20' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Affect'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('ce4d4d78-03d9-4ad5-802d-50b93c0b1d20', 'To Affect', false, true);
  END IF;

  -- [VOCABULARY] 面接 (Level 26)
  UPDATE item_meanings SET meaning = 'Wawancara', primary_meaning = true, accepted_answer = true WHERE id = 'ffcd72f9-8735-415c-954f-35f882ec3d52';
  UPDATE items SET slug = 'wawancara' WHERE id = 'c877fb6b-1d08-411b-914f-e05e79dbd88f';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'c877fb6b-1d08-411b-914f-e05e79dbd88f' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Wawancara Kerja'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('c877fb6b-1d08-411b-914f-e05e79dbd88f', 'Wawancara Kerja', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'c877fb6b-1d08-411b-914f-e05e79dbd88f' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Interview'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('c877fb6b-1d08-411b-914f-e05e79dbd88f', 'Interview', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'c877fb6b-1d08-411b-914f-e05e79dbd88f' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Tes Lisan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('c877fb6b-1d08-411b-914f-e05e79dbd88f', 'Tes Lisan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'c877fb6b-1d08-411b-914f-e05e79dbd88f' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Wawancara (Kerja'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('c877fb6b-1d08-411b-914f-e05e79dbd88f', 'Wawancara (Kerja', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'c877fb6b-1d08-411b-914f-e05e79dbd88f' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Masuk)'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('c877fb6b-1d08-411b-914f-e05e79dbd88f', 'Masuk)', false, true);
  END IF;

END $$;
