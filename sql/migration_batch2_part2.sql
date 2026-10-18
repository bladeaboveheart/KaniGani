-- Migration: Batch 2 Part 2 (Level 22)
-- Total items: 48

DO $$
BEGIN

  -- [KANJI] 副 (Level 22)
  UPDATE item_meanings SET meaning = 'Wakil', primary_meaning = true, accepted_answer = true WHERE id = '33e55837-55a3-4091-803f-15e28100a71e';
  UPDATE items SET slug = 'wakil' WHERE id = '374cf794-1cee-460b-8318-bca77051ed09';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '374cf794-1cee-460b-8318-bca77051ed09' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Sekunder'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('374cf794-1cee-460b-8318-bca77051ed09', 'Sekunder', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '374cf794-1cee-460b-8318-bca77051ed09' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Tambahan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('374cf794-1cee-460b-8318-bca77051ed09', 'Tambahan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '374cf794-1cee-460b-8318-bca77051ed09' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Vice'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('374cf794-1cee-460b-8318-bca77051ed09', 'Vice', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '374cf794-1cee-460b-8318-bca77051ed09' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Side'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('374cf794-1cee-460b-8318-bca77051ed09', 'Side', false, true);
  END IF;

  -- [KANJI] 勢 (Level 22)
  UPDATE item_meanings SET meaning = 'Kekuatan', primary_meaning = true, accepted_answer = true WHERE id = '8a304813-be25-434d-8081-04a35718c183';
  UPDATE items SET slug = 'kekuatan' WHERE id = '35d0f42e-925d-43e5-826d-266946766e4a';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '35d0f42e-925d-43e5-826d-266946766e4a' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Daya'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('35d0f42e-925d-43e5-826d-266946766e4a', 'Daya', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '35d0f42e-925d-43e5-826d-266946766e4a' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Momentum'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('35d0f42e-925d-43e5-826d-266946766e4a', 'Momentum', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '35d0f42e-925d-43e5-826d-266946766e4a' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Tenaga'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('35d0f42e-925d-43e5-826d-266946766e4a', 'Tenaga', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '35d0f42e-925d-43e5-826d-266946766e4a' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Force'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('35d0f42e-925d-43e5-826d-266946766e4a', 'Force', false, true);
  END IF;

  -- [KANJI] 吸 (Level 22)
  UPDATE item_meanings SET meaning = 'Menghisap', primary_meaning = true, accepted_answer = true WHERE id = '40485a55-085b-4a42-8e1f-8ec487567904';
  UPDATE items SET slug = 'menghisap' WHERE id = '98b630d4-ec8f-44fe-a2c8-6b9b384242d5';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '98b630d4-ec8f-44fe-a2c8-6b9b384242d5' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Menghirup'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('98b630d4-ec8f-44fe-a2c8-6b9b384242d5', 'Menghirup', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '98b630d4-ec8f-44fe-a2c8-6b9b384242d5' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Suck'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('98b630d4-ec8f-44fe-a2c8-6b9b384242d5', 'Suck', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '98b630d4-ec8f-44fe-a2c8-6b9b384242d5' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Inhale'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('98b630d4-ec8f-44fe-a2c8-6b9b384242d5', 'Inhale', false, true);
  END IF;

  -- [KANJI] 姿 (Level 22)
  UPDATE item_meanings SET meaning = 'Sosok', primary_meaning = true, accepted_answer = true WHERE id = 'dcaad623-b5e2-4526-a481-5386afd7cb78';
  UPDATE items SET slug = 'sosok' WHERE id = '5bdbbca9-337b-4a4c-a51c-4bf179a95721';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '5bdbbca9-337b-4a4c-a51c-4bf179a95721' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Bentuk Tubuh'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('5bdbbca9-337b-4a4c-a51c-4bf179a95721', 'Bentuk Tubuh', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '5bdbbca9-337b-4a4c-a51c-4bf179a95721' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Rupa'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('5bdbbca9-337b-4a4c-a51c-4bf179a95721', 'Rupa', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '5bdbbca9-337b-4a4c-a51c-4bf179a95721' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Figure'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('5bdbbca9-337b-4a4c-a51c-4bf179a95721', 'Figure', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '5bdbbca9-337b-4a4c-a51c-4bf179a95721' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Appearance'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('5bdbbca9-337b-4a4c-a51c-4bf179a95721', 'Appearance', false, true);
  END IF;

  -- [KANJI] 寝 (Level 22)
  UPDATE item_meanings SET meaning = 'Tidur', primary_meaning = true, accepted_answer = true WHERE id = 'beb648b7-31d2-4708-bcc5-ef5b96187587';
  UPDATE items SET slug = 'tidur' WHERE id = 'f112aab4-5a81-4987-adba-a5d03ab0214a';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'f112aab4-5a81-4987-adba-a5d03ab0214a' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Berbaring'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('f112aab4-5a81-4987-adba-a5d03ab0214a', 'Berbaring', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'f112aab4-5a81-4987-adba-a5d03ab0214a' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Lie Down'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('f112aab4-5a81-4987-adba-a5d03ab0214a', 'Lie Down', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'f112aab4-5a81-4987-adba-a5d03ab0214a' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Sleep'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('f112aab4-5a81-4987-adba-a5d03ab0214a', 'Sleep', false, true);
  END IF;

  -- [KANJI] 態 (Level 22)
  UPDATE item_meanings SET meaning = 'Kondisi', primary_meaning = true, accepted_answer = true WHERE id = '1b6e0349-f806-492b-a556-dfd11ecf0dce';
  UPDATE items SET slug = 'kondisi' WHERE id = '8c910466-14fa-42e1-9ad1-4d2c65e0c5bc';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '8c910466-14fa-42e1-9ad1-4d2c65e0c5bc' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Sikap'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('8c910466-14fa-42e1-9ad1-4d2c65e0c5bc', 'Sikap', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '8c910466-14fa-42e1-9ad1-4d2c65e0c5bc' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Bentuk'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('8c910466-14fa-42e1-9ad1-4d2c65e0c5bc', 'Bentuk', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '8c910466-14fa-42e1-9ad1-4d2c65e0c5bc' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Wujud'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('8c910466-14fa-42e1-9ad1-4d2c65e0c5bc', 'Wujud', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '8c910466-14fa-42e1-9ad1-4d2c65e0c5bc' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Appearance'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('8c910466-14fa-42e1-9ad1-4d2c65e0c5bc', 'Appearance', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '8c910466-14fa-42e1-9ad1-4d2c65e0c5bc' AND LOWER(TRIM(meaning)) = LOWER(TRIM('State'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('8c910466-14fa-42e1-9ad1-4d2c65e0c5bc', 'State', false, true);
  END IF;

  -- [KANJI] 提 (Level 22)
  UPDATE item_meanings SET meaning = 'Mengajukan', primary_meaning = true, accepted_answer = true WHERE id = 'af740002-ffe7-4326-81d7-f596ff8eb6ce';
  UPDATE items SET slug = 'mengajukan' WHERE id = '58da4b9b-ef0e-48af-ad2d-aa69fef575ca';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '58da4b9b-ef0e-48af-ad2d-aa69fef575ca' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Mengusulkan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('58da4b9b-ef0e-48af-ad2d-aa69fef575ca', 'Mengusulkan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '58da4b9b-ef0e-48af-ad2d-aa69fef575ca' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Menyajikan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('58da4b9b-ef0e-48af-ad2d-aa69fef575ca', 'Menyajikan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '58da4b9b-ef0e-48af-ad2d-aa69fef575ca' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Present'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('58da4b9b-ef0e-48af-ad2d-aa69fef575ca', 'Present', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '58da4b9b-ef0e-48af-ad2d-aa69fef575ca' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Submit'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('58da4b9b-ef0e-48af-ad2d-aa69fef575ca', 'Submit', false, true);
  END IF;

  -- [KANJI] 示 (Level 22)
  UPDATE item_meanings SET meaning = 'Menunjukkan', primary_meaning = true, accepted_answer = true WHERE id = '1a5b71e2-9d0d-4f02-afce-e3fe6d14b37b';
  UPDATE items SET slug = 'menunjukkan' WHERE id = 'a7bc0a98-822c-4bb5-81ab-1f3f19e39177';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'a7bc0a98-822c-4bb5-81ab-1f3f19e39177' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Memperlihatkan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('a7bc0a98-822c-4bb5-81ab-1f3f19e39177', 'Memperlihatkan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'a7bc0a98-822c-4bb5-81ab-1f3f19e39177' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Menandakan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('a7bc0a98-822c-4bb5-81ab-1f3f19e39177', 'Menandakan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'a7bc0a98-822c-4bb5-81ab-1f3f19e39177' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Indicate'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('a7bc0a98-822c-4bb5-81ab-1f3f19e39177', 'Indicate', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'a7bc0a98-822c-4bb5-81ab-1f3f19e39177' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Show'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('a7bc0a98-822c-4bb5-81ab-1f3f19e39177', 'Show', false, true);
  END IF;

  -- [KANJI] 策 (Level 22)
  UPDATE item_meanings SET meaning = 'Siasat', primary_meaning = true, accepted_answer = true WHERE id = 'b741b74b-02c7-4903-894c-9140fee2740d';
  UPDATE items SET slug = 'siasat' WHERE id = '409dfcfb-4965-49d9-87b3-e9164eec6d09';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '409dfcfb-4965-49d9-87b3-e9164eec6d09' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Rencana'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('409dfcfb-4965-49d9-87b3-e9164eec6d09', 'Rencana', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '409dfcfb-4965-49d9-87b3-e9164eec6d09' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Strategi'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('409dfcfb-4965-49d9-87b3-e9164eec6d09', 'Strategi', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '409dfcfb-4965-49d9-87b3-e9164eec6d09' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Plan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('409dfcfb-4965-49d9-87b3-e9164eec6d09', 'Plan', false, true);
  END IF;

  -- [KANJI] 脱 (Level 22)
  UPDATE item_meanings SET meaning = 'Melepas', primary_meaning = true, accepted_answer = true WHERE id = 'd8f0b74c-b550-46b7-b2e3-b54dfbf8793e';
  UPDATE items SET slug = 'melepas' WHERE id = '00aef969-b178-4a0c-b493-1d207312b37c';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '00aef969-b178-4a0c-b493-1d207312b37c' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Menanggalkan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('00aef969-b178-4a0c-b493-1d207312b37c', 'Menanggalkan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '00aef969-b178-4a0c-b493-1d207312b37c' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Lepas'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('00aef969-b178-4a0c-b493-1d207312b37c', 'Lepas', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '00aef969-b178-4a0c-b493-1d207312b37c' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Kabur'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('00aef969-b178-4a0c-b493-1d207312b37c', 'Kabur', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '00aef969-b178-4a0c-b493-1d207312b37c' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Undress'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('00aef969-b178-4a0c-b493-1d207312b37c', 'Undress', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '00aef969-b178-4a0c-b493-1d207312b37c' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Escape'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('00aef969-b178-4a0c-b493-1d207312b37c', 'Escape', false, true);
  END IF;

  -- [KANJI] 観 (Level 22)
  UPDATE item_meanings SET meaning = 'Pandangan', primary_meaning = true, accepted_answer = true WHERE id = 'b8ba2adb-65a5-47a6-9c17-c4082e13298e';
  UPDATE items SET slug = 'pandangan' WHERE id = '09bb9583-ea45-487f-aa70-5b30cf16345e';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '09bb9583-ea45-487f-aa70-5b30cf16345e' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Menonton'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('09bb9583-ea45-487f-aa70-5b30cf16345e', 'Menonton', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '09bb9583-ea45-487f-aa70-5b30cf16345e' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Melihat'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('09bb9583-ea45-487f-aa70-5b30cf16345e', 'Melihat', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '09bb9583-ea45-487f-aa70-5b30cf16345e' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Sudut Pandang'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('09bb9583-ea45-487f-aa70-5b30cf16345e', 'Sudut Pandang', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '09bb9583-ea45-487f-aa70-5b30cf16345e' AND LOWER(TRIM(meaning)) = LOWER(TRIM('View'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('09bb9583-ea45-487f-aa70-5b30cf16345e', 'View', false, true);
  END IF;

  -- [KANJI] 評 (Level 22)
  UPDATE item_meanings SET meaning = 'Menilai', primary_meaning = true, accepted_answer = true WHERE id = '94baa4c4-7829-49e4-bf9d-3b540b59e7ae';
  UPDATE items SET slug = 'menilai' WHERE id = '2420702b-1fc8-4fea-8455-c40ed4b7b448';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '2420702b-1fc8-4fea-8455-c40ed4b7b448' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Mengkritik'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('2420702b-1fc8-4fea-8455-c40ed4b7b448', 'Mengkritik', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '2420702b-1fc8-4fea-8455-c40ed4b7b448' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Evaluasi'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('2420702b-1fc8-4fea-8455-c40ed4b7b448', 'Evaluasi', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '2420702b-1fc8-4fea-8455-c40ed4b7b448' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Kritik'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('2420702b-1fc8-4fea-8455-c40ed4b7b448', 'Kritik', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '2420702b-1fc8-4fea-8455-c40ed4b7b448' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Evaluate'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('2420702b-1fc8-4fea-8455-c40ed4b7b448', 'Evaluate', false, true);
  END IF;

  -- [KANJI] 過 (Level 22)
  UPDATE item_meanings SET meaning = 'Melampaui', primary_meaning = true, accepted_answer = true WHERE id = '54c76af7-856e-4399-abfc-79d130529294';
  UPDATE items SET slug = 'melampaui' WHERE id = '68680c81-c9c6-418a-b7dc-c0737e646ae1';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '68680c81-c9c6-418a-b7dc-c0737e646ae1' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Melewati'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('68680c81-c9c6-418a-b7dc-c0737e646ae1', 'Melewati', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '68680c81-c9c6-418a-b7dc-c0737e646ae1' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Kelewat'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('68680c81-c9c6-418a-b7dc-c0737e646ae1', 'Kelewat', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '68680c81-c9c6-418a-b7dc-c0737e646ae1' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Surpass'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('68680c81-c9c6-418a-b7dc-c0737e646ae1', 'Surpass', false, true);
  END IF;

  -- [VOCABULARY] 一応 (Level 22)
  UPDATE item_meanings SET meaning = 'Untuk Sementara', primary_meaning = true, accepted_answer = true WHERE id = 'bd551a35-e01e-4b0e-a411-64bd49988d59';
  UPDATE items SET slug = 'untuk-sementara' WHERE id = '672a261d-10b0-4450-8093-85c7ccf7582b';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '672a261d-10b0-4450-8093-85c7ccf7582b' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Setidaknya'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('672a261d-10b0-4450-8093-85c7ccf7582b', 'Setidaknya', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '672a261d-10b0-4450-8093-85c7ccf7582b' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Untuk Saat Ini'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('672a261d-10b0-4450-8093-85c7ccf7582b', 'Untuk Saat Ini', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '672a261d-10b0-4450-8093-85c7ccf7582b' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Kurang Lebih'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('672a261d-10b0-4450-8093-85c7ccf7582b', 'Kurang Lebih', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '672a261d-10b0-4450-8093-85c7ccf7582b' AND LOWER(TRIM(meaning)) = LOWER(TRIM('For Now'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('672a261d-10b0-4450-8093-85c7ccf7582b', 'For Now', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '672a261d-10b0-4450-8093-85c7ccf7582b' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Just In Case'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('672a261d-10b0-4450-8093-85c7ccf7582b', 'Just In Case', false, true);
  END IF;

  -- [VOCABULARY] 不機嫌 (Level 22)
  UPDATE item_meanings SET meaning = 'Cemberut', primary_meaning = true, accepted_answer = true WHERE id = '06664d24-2f64-4541-86dc-4fedd5834a83';
  UPDATE items SET slug = 'cemberut' WHERE id = 'c34ee37a-66df-4369-8a08-c453364b7b38';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'c34ee37a-66df-4369-8a08-c453364b7b38' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Bad Mood'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('c34ee37a-66df-4369-8a08-c453364b7b38', 'Bad Mood', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'c34ee37a-66df-4369-8a08-c453364b7b38' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Murung'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('c34ee37a-66df-4369-8a08-c453364b7b38', 'Murung', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'c34ee37a-66df-4369-8a08-c453364b7b38' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Kesal'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('c34ee37a-66df-4369-8a08-c453364b7b38', 'Kesal', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'c34ee37a-66df-4369-8a08-c453364b7b38' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Grumpy'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('c34ee37a-66df-4369-8a08-c453364b7b38', 'Grumpy', false, true);
  END IF;

  -- [VOCABULARY] 倒れる (Level 22)
  UPDATE item_meanings SET meaning = 'Tumbang', primary_meaning = true, accepted_answer = true WHERE id = '6723d8ef-5090-4cc8-ac9a-9dfbf6686f36';
  UPDATE items SET slug = 'tumbang' WHERE id = '09ff1bdb-7e3c-4d4d-8cea-745d69176f95';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '09ff1bdb-7e3c-4d4d-8cea-745d69176f95' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Roboh'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('09ff1bdb-7e3c-4d4d-8cea-745d69176f95', 'Roboh', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '09ff1bdb-7e3c-4d4d-8cea-745d69176f95' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Jatuh'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('09ff1bdb-7e3c-4d4d-8cea-745d69176f95', 'Jatuh', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '09ff1bdb-7e3c-4d4d-8cea-745d69176f95' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Pingsan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('09ff1bdb-7e3c-4d4d-8cea-745d69176f95', 'Pingsan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '09ff1bdb-7e3c-4d4d-8cea-745d69176f95' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Collapse'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('09ff1bdb-7e3c-4d4d-8cea-745d69176f95', 'To Collapse', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '09ff1bdb-7e3c-4d4d-8cea-745d69176f95' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Fall'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('09ff1bdb-7e3c-4d4d-8cea-745d69176f95', 'To Fall', false, true);
  END IF;

  -- [VOCABULARY] 刺さる (Level 22)
  UPDATE item_meanings SET meaning = 'Tertusuk', primary_meaning = true, accepted_answer = true WHERE id = 'bbfd79e4-1c81-4f74-acaf-85f4dbad3925';
  UPDATE items SET slug = 'tertusuk' WHERE id = '94126fcf-1848-437e-99f5-a2e0cb6e07a8';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '94126fcf-1848-437e-99f5-a2e0cb6e07a8' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Menancap'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('94126fcf-1848-437e-99f5-a2e0cb6e07a8', 'Menancap', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '94126fcf-1848-437e-99f5-a2e0cb6e07a8' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Tertikam'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('94126fcf-1848-437e-99f5-a2e0cb6e07a8', 'Tertikam', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '94126fcf-1848-437e-99f5-a2e0cb6e07a8' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Pierce Into'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('94126fcf-1848-437e-99f5-a2e0cb6e07a8', 'To Pierce Into', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '94126fcf-1848-437e-99f5-a2e0cb6e07a8' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Stick In'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('94126fcf-1848-437e-99f5-a2e0cb6e07a8', 'To Stick In', false, true);
  END IF;

  -- [VOCABULARY] 勢い (Level 22)
  UPDATE item_meanings SET meaning = 'Momentum', primary_meaning = true, accepted_answer = true WHERE id = 'a50c3a4f-8f00-4adb-9633-9ec530975d39';
  UPDATE items SET slug = 'momentum' WHERE id = 'bfb422ba-7d7b-497c-81a6-086bf7a833a4';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'bfb422ba-7d7b-497c-81a6-086bf7a833a4' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Daya'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('bfb422ba-7d7b-497c-81a6-086bf7a833a4', 'Daya', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'bfb422ba-7d7b-497c-81a6-086bf7a833a4' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Kekuatan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('bfb422ba-7d7b-497c-81a6-086bf7a833a4', 'Kekuatan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'bfb422ba-7d7b-497c-81a6-086bf7a833a4' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Semangat'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('bfb422ba-7d7b-497c-81a6-086bf7a833a4', 'Semangat', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'bfb422ba-7d7b-497c-81a6-086bf7a833a4' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Force'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('bfb422ba-7d7b-497c-81a6-086bf7a833a4', 'Force', false, true);
  END IF;

  -- [VOCABULARY] 勢力 (Level 22)
  UPDATE item_meanings SET meaning = 'Pengaruh', primary_meaning = true, accepted_answer = true WHERE id = '74ca7185-4e7c-4f56-a518-75685b4f6bb1';
  UPDATE items SET slug = 'pengaruh' WHERE id = 'cea3aaf6-3aa0-4bea-b370-8b4a00c41f23';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'cea3aaf6-3aa0-4bea-b370-8b4a00c41f23' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Kekuatan Pengaruh'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('cea3aaf6-3aa0-4bea-b370-8b4a00c41f23', 'Kekuatan Pengaruh', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'cea3aaf6-3aa0-4bea-b370-8b4a00c41f23' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Dominasi'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('cea3aaf6-3aa0-4bea-b370-8b4a00c41f23', 'Dominasi', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'cea3aaf6-3aa0-4bea-b370-8b4a00c41f23' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Kekuasaan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('cea3aaf6-3aa0-4bea-b370-8b4a00c41f23', 'Kekuasaan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'cea3aaf6-3aa0-4bea-b370-8b4a00c41f23' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Influence'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('cea3aaf6-3aa0-4bea-b370-8b4a00c41f23', 'Influence', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'cea3aaf6-3aa0-4bea-b370-8b4a00c41f23' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Force'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('cea3aaf6-3aa0-4bea-b370-8b4a00c41f23', 'Force', false, true);
  END IF;

  -- [VOCABULARY] 反応 (Level 22)
  UPDATE item_meanings SET meaning = 'Reaksi', primary_meaning = true, accepted_answer = true WHERE id = 'f295019a-c548-46fd-9c4a-0f75b5ce2c55';
  UPDATE items SET slug = 'reaksi' WHERE id = '7973bfe9-bad5-46a9-a78d-08d143d82936';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '7973bfe9-bad5-46a9-a78d-08d143d82936' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Tanggapan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('7973bfe9-bad5-46a9-a78d-08d143d82936', 'Tanggapan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '7973bfe9-bad5-46a9-a78d-08d143d82936' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Respon'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('7973bfe9-bad5-46a9-a78d-08d143d82936', 'Respon', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '7973bfe9-bad5-46a9-a78d-08d143d82936' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Reaction'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('7973bfe9-bad5-46a9-a78d-08d143d82936', 'Reaction', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '7973bfe9-bad5-46a9-a78d-08d143d82936' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Response'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('7973bfe9-bad5-46a9-a78d-08d143d82936', 'Response', false, true);
  END IF;

  -- [VOCABULARY] 吸う (Level 22)
  UPDATE item_meanings SET meaning = 'Menghisap', primary_meaning = true, accepted_answer = true WHERE id = '6fb5ed15-7d81-47ef-92b8-2f71c4f13e03';
  UPDATE items SET slug = 'menghisap' WHERE id = 'd9677c74-2911-4745-b9bf-94f4bb94a389';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'd9677c74-2911-4745-b9bf-94f4bb94a389' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Menghirup'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('d9677c74-2911-4745-b9bf-94f4bb94a389', 'Menghirup', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'd9677c74-2911-4745-b9bf-94f4bb94a389' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Merokok'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('d9677c74-2911-4745-b9bf-94f4bb94a389', 'Merokok', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'd9677c74-2911-4745-b9bf-94f4bb94a389' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Smoke'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('d9677c74-2911-4745-b9bf-94f4bb94a389', 'To Smoke', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'd9677c74-2911-4745-b9bf-94f4bb94a389' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Suck'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('d9677c74-2911-4745-b9bf-94f4bb94a389', 'To Suck', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'd9677c74-2911-4745-b9bf-94f4bb94a389' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Inhale'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('d9677c74-2911-4745-b9bf-94f4bb94a389', 'To Inhale', false, true);
  END IF;

  -- [VOCABULARY] 営む (Level 22)
  UPDATE item_meanings SET meaning = 'Menjalankan Usaha', primary_meaning = true, accepted_answer = true WHERE id = '10aa31c8-06cb-4be8-b242-bacf7e7e69d4';
  UPDATE items SET slug = 'menjalankan-usaha' WHERE id = '35264f5d-25e9-412a-ad42-886e64912b8b';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '35264f5d-25e9-412a-ad42-886e64912b8b' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Mengelola'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('35264f5d-25e9-412a-ad42-886e64912b8b', 'Mengelola', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '35264f5d-25e9-412a-ad42-886e64912b8b' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Berbisnis'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('35264f5d-25e9-412a-ad42-886e64912b8b', 'Berbisnis', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '35264f5d-25e9-412a-ad42-886e64912b8b' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Run A Business'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('35264f5d-25e9-412a-ad42-886e64912b8b', 'To Run A Business', false, true);
  END IF;

  -- [VOCABULARY] 圧倒する (Level 22)
  UPDATE item_meanings SET meaning = 'Menguasai', primary_meaning = true, accepted_answer = true WHERE id = '11bd1e9c-6353-4d24-a9b6-737507e006ea';
  UPDATE items SET slug = 'menguasai' WHERE id = '918cbf3f-d99e-4cdd-9183-d747d7c82265';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '918cbf3f-d99e-4cdd-9183-d747d7c82265' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Memukau'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('918cbf3f-d99e-4cdd-9183-d747d7c82265', 'Memukau', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '918cbf3f-d99e-4cdd-9183-d747d7c82265' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Menaklukkan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('918cbf3f-d99e-4cdd-9183-d747d7c82265', 'Menaklukkan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '918cbf3f-d99e-4cdd-9183-d747d7c82265' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Overwhelm'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('918cbf3f-d99e-4cdd-9183-d747d7c82265', 'To Overwhelm', false, true);
  END IF;

  -- [VOCABULARY] 変態 (Level 22)
  UPDATE item_meanings SET meaning = 'Mesum', primary_meaning = true, accepted_answer = true WHERE id = '9dd8ddd2-78df-496b-9e5e-1d782eec8e3e';
  UPDATE items SET slug = 'mesum' WHERE id = 'a76ec064-c386-442e-baba-4d6263560bc7';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'a76ec064-c386-442e-baba-4d6263560bc7' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Metamorfosis'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('a76ec064-c386-442e-baba-4d6263560bc7', 'Metamorfosis', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'a76ec064-c386-442e-baba-4d6263560bc7' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Penyimpangan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('a76ec064-c386-442e-baba-4d6263560bc7', 'Penyimpangan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'a76ec064-c386-442e-baba-4d6263560bc7' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Pervert'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('a76ec064-c386-442e-baba-4d6263560bc7', 'Pervert', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'a76ec064-c386-442e-baba-4d6263560bc7' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Transformation'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('a76ec064-c386-442e-baba-4d6263560bc7', 'Transformation', false, true);
  END IF;

  -- [VOCABULARY] 失態 (Level 22)
  UPDATE item_meanings SET meaning = 'Blunder', primary_meaning = true, accepted_answer = true WHERE id = '4e93dc7a-7e7b-437c-ab10-f7f3da0ef39e';
  UPDATE items SET slug = 'blunder' WHERE id = '587eba63-5a6b-4513-8cf1-770f4e61a450';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '587eba63-5a6b-4513-8cf1-770f4e61a450' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Kecerobohan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('587eba63-5a6b-4513-8cf1-770f4e61a450', 'Kecerobohan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '587eba63-5a6b-4513-8cf1-770f4e61a450' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Kesalahan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('587eba63-5a6b-4513-8cf1-770f4e61a450', 'Kesalahan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '587eba63-5a6b-4513-8cf1-770f4e61a450' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Aib'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('587eba63-5a6b-4513-8cf1-770f4e61a450', 'Aib', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '587eba63-5a6b-4513-8cf1-770f4e61a450' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Disgrace'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('587eba63-5a6b-4513-8cf1-770f4e61a450', 'Disgrace', false, true);
  END IF;

  -- [VOCABULARY] 姿 (Level 22)
  UPDATE item_meanings SET meaning = 'Sosok', primary_meaning = true, accepted_answer = true WHERE id = 'c8f13bd7-4ca7-4572-b71d-f522f09bb931';
  UPDATE items SET slug = 'sosok' WHERE id = '9192cd94-9bd0-43ff-9aee-b156351c6838';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '9192cd94-9bd0-43ff-9aee-b156351c6838' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Bentuk Tubuh'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('9192cd94-9bd0-43ff-9aee-b156351c6838', 'Bentuk Tubuh', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '9192cd94-9bd0-43ff-9aee-b156351c6838' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Rupa'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('9192cd94-9bd0-43ff-9aee-b156351c6838', 'Rupa', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '9192cd94-9bd0-43ff-9aee-b156351c6838' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Figure'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('9192cd94-9bd0-43ff-9aee-b156351c6838', 'Figure', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '9192cd94-9bd0-43ff-9aee-b156351c6838' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Appearance'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('9192cd94-9bd0-43ff-9aee-b156351c6838', 'Appearance', false, true);
  END IF;

  -- [VOCABULARY] 姿勢 (Level 22)
  UPDATE item_meanings SET meaning = 'Postur', primary_meaning = true, accepted_answer = true WHERE id = 'af381c62-b0bb-4604-aec0-51bbc84e715e';
  UPDATE items SET slug = 'postur' WHERE id = 'c37a2920-5c35-4e18-82c6-4fe8aff6d9a0';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'c37a2920-5c35-4e18-82c6-4fe8aff6d9a0' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Postur Tubuh'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('c37a2920-5c35-4e18-82c6-4fe8aff6d9a0', 'Postur Tubuh', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'c37a2920-5c35-4e18-82c6-4fe8aff6d9a0' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Sikap'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('c37a2920-5c35-4e18-82c6-4fe8aff6d9a0', 'Sikap', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'c37a2920-5c35-4e18-82c6-4fe8aff6d9a0' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Pendirian'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('c37a2920-5c35-4e18-82c6-4fe8aff6d9a0', 'Pendirian', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'c37a2920-5c35-4e18-82c6-4fe8aff6d9a0' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Posture'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('c37a2920-5c35-4e18-82c6-4fe8aff6d9a0', 'Posture', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'c37a2920-5c35-4e18-82c6-4fe8aff6d9a0' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Attitude'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('c37a2920-5c35-4e18-82c6-4fe8aff6d9a0', 'Attitude', false, true);
  END IF;

  -- [VOCABULARY] 嫌味 (Level 22)
  UPDATE item_meanings SET meaning = 'Sindiran', primary_meaning = true, accepted_answer = true WHERE id = '5dcf9664-2c19-4e0b-b453-2bf9acd0570f';
  UPDATE items SET slug = 'sindiran' WHERE id = 'fff19fa2-deae-4e71-8352-6f3f7c452859';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'fff19fa2-deae-4e71-8352-6f3f7c452859' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Sarkasme'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('fff19fa2-deae-4e71-8352-6f3f7c452859', 'Sarkasme', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'fff19fa2-deae-4e71-8352-6f3f7c452859' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Ucapan Menyakitkan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('fff19fa2-deae-4e71-8352-6f3f7c452859', 'Ucapan Menyakitkan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'fff19fa2-deae-4e71-8352-6f3f7c452859' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Sarcasm'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('fff19fa2-deae-4e71-8352-6f3f7c452859', 'Sarcasm', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'fff19fa2-deae-4e71-8352-6f3f7c452859' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Hurtful Words'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('fff19fa2-deae-4e71-8352-6f3f7c452859', 'Hurtful Words', false, true);
  END IF;

  -- [VOCABULARY] 寝る (Level 22)
  UPDATE item_meanings SET meaning = 'Tidur', primary_meaning = true, accepted_answer = true WHERE id = '6908bea7-66c0-47e3-acef-43b4488a0f3e';
  UPDATE items SET slug = 'tidur' WHERE id = '1b507c0e-3bfb-4328-8a17-e04073b02edd';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '1b507c0e-3bfb-4328-8a17-e04073b02edd' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Berbaring'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('1b507c0e-3bfb-4328-8a17-e04073b02edd', 'Berbaring', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '1b507c0e-3bfb-4328-8a17-e04073b02edd' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Merebahkan Diri'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('1b507c0e-3bfb-4328-8a17-e04073b02edd', 'Merebahkan Diri', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '1b507c0e-3bfb-4328-8a17-e04073b02edd' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Sleep'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('1b507c0e-3bfb-4328-8a17-e04073b02edd', 'To Sleep', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '1b507c0e-3bfb-4328-8a17-e04073b02edd' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Lie Down'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('1b507c0e-3bfb-4328-8a17-e04073b02edd', 'To Lie Down', false, true);
  END IF;

  -- [VOCABULARY] 寝坊 (Level 22)
  UPDATE item_meanings SET meaning = 'Kesiangan', primary_meaning = true, accepted_answer = true WHERE id = '06d531ef-1fad-4ee3-8975-e21c867d0b32';
  UPDATE items SET slug = 'kesiangan' WHERE id = '26fe5cd8-56a1-4f9a-acb1-276ce34d17c4';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '26fe5cd8-56a1-4f9a-acb1-276ce34d17c4' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Bangun Terlambat'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('26fe5cd8-56a1-4f9a-acb1-276ce34d17c4', 'Bangun Terlambat', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '26fe5cd8-56a1-4f9a-acb1-276ce34d17c4' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Oversleeping'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('26fe5cd8-56a1-4f9a-acb1-276ce34d17c4', 'Oversleeping', false, true);
  END IF;

  -- [VOCABULARY] 対応 (Level 22)
  UPDATE item_meanings SET meaning = 'Penanganan', primary_meaning = true, accepted_answer = true WHERE id = '6c40a449-6c66-4a38-9d5d-436b65c196ee';
  UPDATE items SET slug = 'penanganan' WHERE id = '983d7d5c-e76f-4a75-88fd-ffcfe2bbc73f';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '983d7d5c-e76f-4a75-88fd-ffcfe2bbc73f' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Merespons'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('983d7d5c-e76f-4a75-88fd-ffcfe2bbc73f', 'Merespons', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '983d7d5c-e76f-4a75-88fd-ffcfe2bbc73f' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Pelayanan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('983d7d5c-e76f-4a75-88fd-ffcfe2bbc73f', 'Pelayanan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '983d7d5c-e76f-4a75-88fd-ffcfe2bbc73f' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Response'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('983d7d5c-e76f-4a75-88fd-ffcfe2bbc73f', 'Response', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '983d7d5c-e76f-4a75-88fd-ffcfe2bbc73f' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Dealing With'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('983d7d5c-e76f-4a75-88fd-ffcfe2bbc73f', 'Dealing With', false, true);
  END IF;

  -- [VOCABULARY] 提出 (Level 22)
  UPDATE item_meanings SET meaning = 'Pengajuan', primary_meaning = true, accepted_answer = true WHERE id = '641b46c6-cc5e-4bca-9c2b-cc0952ed6dd4';
  UPDATE items SET slug = 'pengajuan' WHERE id = '73ec28ca-c2e5-4f96-b831-46d0bc8115fe';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '73ec28ca-c2e5-4f96-b831-46d0bc8115fe' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Pengumpulan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('73ec28ca-c2e5-4f96-b831-46d0bc8115fe', 'Pengumpulan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '73ec28ca-c2e5-4f96-b831-46d0bc8115fe' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Penyerahan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('73ec28ca-c2e5-4f96-b831-46d0bc8115fe', 'Penyerahan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '73ec28ca-c2e5-4f96-b831-46d0bc8115fe' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Submission'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('73ec28ca-c2e5-4f96-b831-46d0bc8115fe', 'Submission', false, true);
  END IF;

  -- [VOCABULARY] 提案 (Level 22)
  UPDATE item_meanings SET meaning = 'Usulan', primary_meaning = true, accepted_answer = true WHERE id = '16f6a026-4edd-484b-8fe9-2a493dc8118f';
  UPDATE items SET slug = 'usulan' WHERE id = '4831d32a-c8c2-42d1-8b44-2b8e8801cc43';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '4831d32a-c8c2-42d1-8b44-2b8e8801cc43' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Saran'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('4831d32a-c8c2-42d1-8b44-2b8e8801cc43', 'Saran', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '4831d32a-c8c2-42d1-8b44-2b8e8801cc43' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Proposal'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('4831d32a-c8c2-42d1-8b44-2b8e8801cc43', 'Proposal', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '4831d32a-c8c2-42d1-8b44-2b8e8801cc43' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Proposition'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('4831d32a-c8c2-42d1-8b44-2b8e8801cc43', 'Proposition', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '4831d32a-c8c2-42d1-8b44-2b8e8801cc43' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Suggestion'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('4831d32a-c8c2-42d1-8b44-2b8e8801cc43', 'Suggestion', false, true);
  END IF;

  -- [VOCABULARY] 案外 (Level 22)
  UPDATE item_meanings SET meaning = 'Tak Disangka', primary_meaning = true, accepted_answer = true WHERE id = '7ccdbe3e-c04d-418f-a759-75f7d2e93452';
  UPDATE items SET slug = 'tak-disangka' WHERE id = 'c23fe05f-ffac-4df8-8165-7e94e83db327';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'c23fe05f-ffac-4df8-8165-7e94e83db327' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Di Luar Dugaan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('c23fe05f-ffac-4df8-8165-7e94e83db327', 'Di Luar Dugaan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'c23fe05f-ffac-4df8-8165-7e94e83db327' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Ternyata'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('c23fe05f-ffac-4df8-8165-7e94e83db327', 'Ternyata', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'c23fe05f-ffac-4df8-8165-7e94e83db327' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Unexpectedly'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('c23fe05f-ffac-4df8-8165-7e94e83db327', 'Unexpectedly', false, true);
  END IF;

  -- [VOCABULARY] 混む (Level 22)
  UPDATE item_meanings SET meaning = 'Padat', primary_meaning = true, accepted_answer = true WHERE id = '8ede2b52-27ae-407e-af5b-0e59f7648102';
  UPDATE items SET slug = 'padat' WHERE id = '429dca01-a25c-40d9-b114-674117453bad';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '429dca01-a25c-40d9-b114-674117453bad' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Penuh Sesak'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('429dca01-a25c-40d9-b114-674117453bad', 'Penuh Sesak', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '429dca01-a25c-40d9-b114-674117453bad' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Macet'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('429dca01-a25c-40d9-b114-674117453bad', 'Macet', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '429dca01-a25c-40d9-b114-674117453bad' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Ramai'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('429dca01-a25c-40d9-b114-674117453bad', 'Ramai', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '429dca01-a25c-40d9-b114-674117453bad' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Be Crowded'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('429dca01-a25c-40d9-b114-674117453bad', 'To Be Crowded', false, true);
  END IF;

  -- [VOCABULARY] 確かめる (Level 22)
  UPDATE item_meanings SET meaning = 'Memastikan', primary_meaning = true, accepted_answer = true WHERE id = '39f20d2f-ec58-4e03-a884-2a20a6b0dde1';
  UPDATE items SET slug = 'memastikan' WHERE id = '659075df-42ec-4c99-ae03-49277c3a97f2';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '659075df-42ec-4c99-ae03-49277c3a97f2' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Mengonfirmasi'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('659075df-42ec-4c99-ae03-49277c3a97f2', 'Mengonfirmasi', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '659075df-42ec-4c99-ae03-49277c3a97f2' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Mengecek'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('659075df-42ec-4c99-ae03-49277c3a97f2', 'Mengecek', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '659075df-42ec-4c99-ae03-49277c3a97f2' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Make Sure Of'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('659075df-42ec-4c99-ae03-49277c3a97f2', 'To Make Sure Of', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '659075df-42ec-4c99-ae03-49277c3a97f2' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Confirm'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('659075df-42ec-4c99-ae03-49277c3a97f2', 'To Confirm', false, true);
  END IF;

  -- [VOCABULARY] 策 (Level 22)
  UPDATE item_meanings SET meaning = 'Siasat', primary_meaning = true, accepted_answer = true WHERE id = '4bc5cc9a-b846-4661-b9cf-37dff046ca9c';
  UPDATE items SET slug = 'siasat' WHERE id = '9da85af4-5525-471c-8b4e-2d60d318af0e';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '9da85af4-5525-471c-8b4e-2d60d318af0e' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Rencana'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('9da85af4-5525-471c-8b4e-2d60d318af0e', 'Rencana', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '9da85af4-5525-471c-8b4e-2d60d318af0e' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Strategi'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('9da85af4-5525-471c-8b4e-2d60d318af0e', 'Strategi', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '9da85af4-5525-471c-8b4e-2d60d318af0e' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Plan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('9da85af4-5525-471c-8b4e-2d60d318af0e', 'Plan', false, true);
  END IF;

  -- [VOCABULARY] 素敵 (Level 22)
  UPDATE item_meanings SET meaning = 'Menawan', primary_meaning = true, accepted_answer = true WHERE id = '3e29b016-27de-4569-8bf5-93715934b5a5';
  UPDATE items SET slug = 'menawan' WHERE id = '6ed2d709-970f-4584-aa83-419600e27219';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '6ed2d709-970f-4584-aa83-419600e27219' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Bagus Sekali'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('6ed2d709-970f-4584-aa83-419600e27219', 'Bagus Sekali', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '6ed2d709-970f-4584-aa83-419600e27219' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Hebat'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('6ed2d709-970f-4584-aa83-419600e27219', 'Hebat', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '6ed2d709-970f-4584-aa83-419600e27219' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Indah'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('6ed2d709-970f-4584-aa83-419600e27219', 'Indah', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '6ed2d709-970f-4584-aa83-419600e27219' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Lovely'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('6ed2d709-970f-4584-aa83-419600e27219', 'Lovely', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '6ed2d709-970f-4584-aa83-419600e27219' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Wonderful'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('6ed2d709-970f-4584-aa83-419600e27219', 'Wonderful', false, true);
  END IF;

  -- [VOCABULARY] 経つ (Level 22)
  UPDATE item_meanings SET meaning = 'Berlalu', primary_meaning = true, accepted_answer = true WHERE id = 'c46d5103-6893-4d6e-a109-91845c4fcf28';
  UPDATE items SET slug = 'berlalu' WHERE id = 'a2275a8f-fe92-4f6e-b9b8-ecc3fc7b71fd';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'a2275a8f-fe92-4f6e-b9b8-ecc3fc7b71fd' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Lewat'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('a2275a8f-fe92-4f6e-b9b8-ecc3fc7b71fd', 'Lewat', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'a2275a8f-fe92-4f6e-b9b8-ecc3fc7b71fd' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Berjalan (Waktu)'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('a2275a8f-fe92-4f6e-b9b8-ecc3fc7b71fd', 'Berjalan (Waktu)', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'a2275a8f-fe92-4f6e-b9b8-ecc3fc7b71fd' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Pass'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('a2275a8f-fe92-4f6e-b9b8-ecc3fc7b71fd', 'To Pass', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'a2275a8f-fe92-4f6e-b9b8-ecc3fc7b71fd' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Elapse'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('a2275a8f-fe92-4f6e-b9b8-ecc3fc7b71fd', 'To Elapse', false, true);
  END IF;

  -- [VOCABULARY] 結び付く (Level 22)
  UPDATE item_meanings SET meaning = 'Terhubung', primary_meaning = true, accepted_answer = true WHERE id = '1c928eff-1b10-4896-9bc0-3f1679c36b48';
  UPDATE items SET slug = 'terhubung' WHERE id = '7d2d4f70-43ec-43f0-8fc8-971938787067';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '7d2d4f70-43ec-43f0-8fc8-971938787067' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Terkait Erat'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('7d2d4f70-43ec-43f0-8fc8-971938787067', 'Terkait Erat', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '7d2d4f70-43ec-43f0-8fc8-971938787067' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Tersambung'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('7d2d4f70-43ec-43f0-8fc8-971938787067', 'Tersambung', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '7d2d4f70-43ec-43f0-8fc8-971938787067' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Be Connected'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('7d2d4f70-43ec-43f0-8fc8-971938787067', 'To Be Connected', false, true);
  END IF;

  -- [VOCABULARY] 脱字 (Level 22)
  UPDATE item_meanings SET meaning = 'Huruf Hilang', primary_meaning = true, accepted_answer = true WHERE id = 'f81c43ad-cfb5-4baa-a9d7-c563ef451d41';
  UPDATE items SET slug = 'huruf-hilang' WHERE id = '8a24ad85-066e-4820-ad2a-907649b7f352';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '8a24ad85-066e-4820-ad2a-907649b7f352' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Typo'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('8a24ad85-066e-4820-ad2a-907649b7f352', 'Typo', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '8a24ad85-066e-4820-ad2a-907649b7f352' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Karakter Kurang'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('8a24ad85-066e-4820-ad2a-907649b7f352', 'Karakter Kurang', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '8a24ad85-066e-4820-ad2a-907649b7f352' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Omitted Character'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('8a24ad85-066e-4820-ad2a-907649b7f352', 'Omitted Character', false, true);
  END IF;

  -- [VOCABULARY] 被る (Level 22)
  UPDATE item_meanings SET meaning = 'Mengenakan', primary_meaning = true, accepted_answer = true WHERE id = '2e61bdf5-bb34-4395-829d-3f4cb65113cf';
  UPDATE items SET slug = 'mengenakan' WHERE id = '4912cc4b-85ba-499d-87e8-006aa3c825f5';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '4912cc4b-85ba-499d-87e8-006aa3c825f5' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Menanggung'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('4912cc4b-85ba-499d-87e8-006aa3c825f5', 'Menanggung', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '4912cc4b-85ba-499d-87e8-006aa3c825f5' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Memakai'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('4912cc4b-85ba-499d-87e8-006aa3c825f5', 'Memakai', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '4912cc4b-85ba-499d-87e8-006aa3c825f5' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Put On'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('4912cc4b-85ba-499d-87e8-006aa3c825f5', 'To Put On', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '4912cc4b-85ba-499d-87e8-006aa3c825f5' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Wear'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('4912cc4b-85ba-499d-87e8-006aa3c825f5', 'To Wear', false, true);
  END IF;

  -- [VOCABULARY] 観る (Level 22)
  UPDATE item_meanings SET meaning = 'Menonton', primary_meaning = true, accepted_answer = true WHERE id = '384ea0b2-fae1-40b0-b36a-3b2d597184f3';
  UPDATE items SET slug = 'menonton' WHERE id = '13bcfd3f-bab5-4926-bd21-9cc1ad60089a';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '13bcfd3f-bab5-4926-bd21-9cc1ad60089a' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Menyaksikan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('13bcfd3f-bab5-4926-bd21-9cc1ad60089a', 'Menyaksikan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '13bcfd3f-bab5-4926-bd21-9cc1ad60089a' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Melihat'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('13bcfd3f-bab5-4926-bd21-9cc1ad60089a', 'Melihat', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '13bcfd3f-bab5-4926-bd21-9cc1ad60089a' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To View'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('13bcfd3f-bab5-4926-bd21-9cc1ad60089a', 'To View', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '13bcfd3f-bab5-4926-bd21-9cc1ad60089a' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Watch'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('13bcfd3f-bab5-4926-bd21-9cc1ad60089a', 'To Watch', false, true);
  END IF;

  -- [VOCABULARY] 過ぎる (Level 22)
  UPDATE item_meanings SET meaning = 'Melampaui Batas', primary_meaning = true, accepted_answer = true WHERE id = '5bc8ddc1-faa3-48ab-be56-3b0d788699f6';
  UPDATE items SET slug = 'melampaui-batas' WHERE id = '983e4960-85ea-4995-adb1-ee0d23f2cdc5';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '983e4960-85ea-4995-adb1-ee0d23f2cdc5' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Berlebihan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('983e4960-85ea-4995-adb1-ee0d23f2cdc5', 'Berlebihan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '983e4960-85ea-4995-adb1-ee0d23f2cdc5' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Kelewat'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('983e4960-85ea-4995-adb1-ee0d23f2cdc5', 'Kelewat', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '983e4960-85ea-4995-adb1-ee0d23f2cdc5' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Pass'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('983e4960-85ea-4995-adb1-ee0d23f2cdc5', 'To Pass', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '983e4960-85ea-4995-adb1-ee0d23f2cdc5' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Be Too Much'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('983e4960-85ea-4995-adb1-ee0d23f2cdc5', 'To Be Too Much', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '983e4960-85ea-4995-adb1-ee0d23f2cdc5' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Melewati Batas'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('983e4960-85ea-4995-adb1-ee0d23f2cdc5', 'Melewati Batas', false, true);
  END IF;

  -- [VOCABULARY] 震える (Level 22)
  UPDATE item_meanings SET meaning = 'Gemetar', primary_meaning = true, accepted_answer = true WHERE id = '8fb2f1aa-3ca9-4063-8d6b-810ac9fc7bfb';
  UPDATE items SET slug = 'gemetar' WHERE id = '77636c20-93b4-419c-83c1-82999da8ff6a';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '77636c20-93b4-419c-83c1-82999da8ff6a' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Menggigil'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('77636c20-93b4-419c-83c1-82999da8ff6a', 'Menggigil', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '77636c20-93b4-419c-83c1-82999da8ff6a' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Berdasar'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('77636c20-93b4-419c-83c1-82999da8ff6a', 'Berdasar', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '77636c20-93b4-419c-83c1-82999da8ff6a' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Shake'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('77636c20-93b4-419c-83c1-82999da8ff6a', 'To Shake', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '77636c20-93b4-419c-83c1-82999da8ff6a' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Shiver'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('77636c20-93b4-419c-83c1-82999da8ff6a', 'To Shiver', false, true);
  END IF;

  -- [VOCABULARY] 非難する (Level 22)
  UPDATE item_meanings SET meaning = 'Mengecam', primary_meaning = true, accepted_answer = true WHERE id = 'df1656ae-4483-4273-8195-60eee901e1af';
  UPDATE items SET slug = 'mengecam' WHERE id = '4e85912a-7777-4534-a1a6-6993844cfece';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '4e85912a-7777-4534-a1a6-6993844cfece' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Mencela'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('4e85912a-7777-4534-a1a6-6993844cfece', 'Mencela', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '4e85912a-7777-4534-a1a6-6993844cfece' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Menyalahkan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('4e85912a-7777-4534-a1a6-6993844cfece', 'Menyalahkan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '4e85912a-7777-4534-a1a6-6993844cfece' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Criticize'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('4e85912a-7777-4534-a1a6-6993844cfece', 'To Criticize', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '4e85912a-7777-4534-a1a6-6993844cfece' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Blame'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('4e85912a-7777-4534-a1a6-6993844cfece', 'To Blame', false, true);
  END IF;

  -- [VOCABULARY] 面倒臭い (Level 22)
  UPDATE item_meanings SET meaning = 'Merepotkan', primary_meaning = true, accepted_answer = true WHERE id = 'c14b531e-babd-4358-a1e9-19056e28798e';
  UPDATE items SET slug = 'merepotkan' WHERE id = '97125f78-6e9b-492e-9b5b-68fa8d3e2fb9';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '97125f78-6e9b-492e-9b5b-68fa8d3e2fb9' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Sangat Merepotkan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('97125f78-6e9b-492e-9b5b-68fa8d3e2fb9', 'Sangat Merepotkan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '97125f78-6e9b-492e-9b5b-68fa8d3e2fb9' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Mager'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('97125f78-6e9b-492e-9b5b-68fa8d3e2fb9', 'Mager', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '97125f78-6e9b-492e-9b5b-68fa8d3e2fb9' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Malas'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('97125f78-6e9b-492e-9b5b-68fa8d3e2fb9', 'Malas', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '97125f78-6e9b-492e-9b5b-68fa8d3e2fb9' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Troublesome'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('97125f78-6e9b-492e-9b5b-68fa8d3e2fb9', 'Troublesome', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '97125f78-6e9b-492e-9b5b-68fa8d3e2fb9' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Annoying'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('97125f78-6e9b-492e-9b5b-68fa8d3e2fb9', 'Annoying', false, true);
  END IF;

  -- [VOCABULARY] 飛ばす (Level 22)
  UPDATE item_meanings SET meaning = 'Menerbangkan', primary_meaning = true, accepted_answer = true WHERE id = '6cf2dd47-1ff5-48d6-88aa-7970afaec32b';
  UPDATE items SET slug = 'menerbangkan' WHERE id = '7f1696a9-6000-49be-b57a-e85639ce54ac';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '7f1696a9-6000-49be-b57a-e85639ce54ac' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Melompati'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('7f1696a9-6000-49be-b57a-e85639ce54ac', 'Melompati', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '7f1696a9-6000-49be-b57a-e85639ce54ac' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Melewatkan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('7f1696a9-6000-49be-b57a-e85639ce54ac', 'Melewatkan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '7f1696a9-6000-49be-b57a-e85639ce54ac' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Let Something Fly'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('7f1696a9-6000-49be-b57a-e85639ce54ac', 'To Let Something Fly', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '7f1696a9-6000-49be-b57a-e85639ce54ac' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Skip'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('7f1696a9-6000-49be-b57a-e85639ce54ac', 'To Skip', false, true);
  END IF;

END $$;
