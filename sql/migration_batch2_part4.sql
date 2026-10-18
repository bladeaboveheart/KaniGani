-- Migration: Batch 2 Part 4 (Level 24)
-- Total items: 55

DO $$
BEGIN

  -- [KANJI] 供 (Level 24)
  UPDATE item_meanings SET meaning = 'Persembahan', primary_meaning = true, accepted_answer = true WHERE id = '5375a320-c9b9-4d8e-a2b5-256efe6ff832';
  UPDATE items SET slug = 'persembahan' WHERE id = '669fda02-6399-4c19-bb6c-bc1a74f7328b';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '669fda02-6399-4c19-bb6c-bc1a74f7328b' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Pengiring'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('669fda02-6399-4c19-bb6c-bc1a74f7328b', 'Pengiring', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '669fda02-6399-4c19-bb6c-bc1a74f7328b' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Sesajen'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('669fda02-6399-4c19-bb6c-bc1a74f7328b', 'Sesajen', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '669fda02-6399-4c19-bb6c-bc1a74f7328b' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Offer'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('669fda02-6399-4c19-bb6c-bc1a74f7328b', 'Offer', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '669fda02-6399-4c19-bb6c-bc1a74f7328b' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Accompany'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('669fda02-6399-4c19-bb6c-bc1a74f7328b', 'Accompany', false, true);
  END IF;

  -- [KANJI] 審 (Level 24)
  UPDATE item_meanings SET meaning = 'Meneliti', primary_meaning = true, accepted_answer = true WHERE id = 'fe410f3a-34a6-4dd3-bceb-9676c76a4b60';
  UPDATE items SET slug = 'meneliti' WHERE id = 'b74bd80d-a156-46b3-9958-117315036003';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'b74bd80d-a156-46b3-9958-117315036003' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Mengadili'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('b74bd80d-a156-46b3-9958-117315036003', 'Mengadili', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'b74bd80d-a156-46b3-9958-117315036003' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Meninjau'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('b74bd80d-a156-46b3-9958-117315036003', 'Meninjau', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'b74bd80d-a156-46b3-9958-117315036003' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Judge'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('b74bd80d-a156-46b3-9958-117315036003', 'Judge', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'b74bd80d-a156-46b3-9958-117315036003' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Examine'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('b74bd80d-a156-46b3-9958-117315036003', 'Examine', false, true);
  END IF;

  -- [KANJI] 届 (Level 24)
  UPDATE item_meanings SET meaning = 'Mengantar', primary_meaning = true, accepted_answer = true WHERE id = 'b333d08b-4025-4897-afe8-97d5f7ec0b84';
  UPDATE items SET slug = 'mengantar' WHERE id = '5ddf6191-760c-4bc3-818c-f806437304a8';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '5ddf6191-760c-4bc3-818c-f806437304a8' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Menyampaikan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('5ddf6191-760c-4bc3-818c-f806437304a8', 'Menyampaikan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '5ddf6191-760c-4bc3-818c-f806437304a8' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Kirim'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('5ddf6191-760c-4bc3-818c-f806437304a8', 'Kirim', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '5ddf6191-760c-4bc3-818c-f806437304a8' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Deliver'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('5ddf6191-760c-4bc3-818c-f806437304a8', 'Deliver', false, true);
  END IF;

  -- [KANJI] 展 (Level 24)
  UPDATE item_meanings SET meaning = 'Memamerkan', primary_meaning = true, accepted_answer = true WHERE id = '9fd1decd-5bc2-4799-838e-43cbe054654d';
  UPDATE items SET slug = 'memamerkan' WHERE id = '2f0c4b88-5a1d-4e0f-80d0-8f9ab2a9d1ec';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '2f0c4b88-5a1d-4e0f-80d0-8f9ab2a9d1ec' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Mengembangkan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('2f0c4b88-5a1d-4e0f-80d0-8f9ab2a9d1ec', 'Mengembangkan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '2f0c4b88-5a1d-4e0f-80d0-8f9ab2a9d1ec' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Bentang'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('2f0c4b88-5a1d-4e0f-80d0-8f9ab2a9d1ec', 'Bentang', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '2f0c4b88-5a1d-4e0f-80d0-8f9ab2a9d1ec' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Expand'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('2f0c4b88-5a1d-4e0f-80d0-8f9ab2a9d1ec', 'Expand', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '2f0c4b88-5a1d-4e0f-80d0-8f9ab2a9d1ec' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Exhibit'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('2f0c4b88-5a1d-4e0f-80d0-8f9ab2a9d1ec', 'Exhibit', false, true);
  END IF;

  -- [KANJI] 庁 (Level 24)
  UPDATE item_meanings SET meaning = 'Badan Pemerintah', primary_meaning = true, accepted_answer = true WHERE id = '9ab38767-ffff-43b2-9dd1-76bb14f1fa1a';
  UPDATE items SET slug = 'badan-pemerintah' WHERE id = 'c0d5f313-f863-44b0-8869-c02881dd0cab';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'c0d5f313-f863-44b0-8869-c02881dd0cab' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Kantor Pemerintah'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('c0d5f313-f863-44b0-8869-c02881dd0cab', 'Kantor Pemerintah', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'c0d5f313-f863-44b0-8869-c02881dd0cab' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Instansi'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('c0d5f313-f863-44b0-8869-c02881dd0cab', 'Instansi', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'c0d5f313-f863-44b0-8869-c02881dd0cab' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Agency'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('c0d5f313-f863-44b0-8869-c02881dd0cab', 'Agency', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'c0d5f313-f863-44b0-8869-c02881dd0cab' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Badan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('c0d5f313-f863-44b0-8869-c02881dd0cab', 'Badan', false, true);
  END IF;

  -- [KANJI] 担 (Level 24)
  UPDATE item_meanings SET meaning = 'Memikul', primary_meaning = true, accepted_answer = true WHERE id = 'a5b48fa9-c77f-4be8-af6d-508c559f6448';
  UPDATE items SET slug = 'memikul' WHERE id = '8715388b-3231-498a-93b3-a2a794d799cf';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '8715388b-3231-498a-93b3-a2a794d799cf' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Mengemban'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('8715388b-3231-498a-93b3-a2a794d799cf', 'Mengemban', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '8715388b-3231-498a-93b3-a2a794d799cf' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Menanggung'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('8715388b-3231-498a-93b3-a2a794d799cf', 'Menanggung', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '8715388b-3231-498a-93b3-a2a794d799cf' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Carry'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('8715388b-3231-498a-93b3-a2a794d799cf', 'Carry', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '8715388b-3231-498a-93b3-a2a794d799cf' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Bear'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('8715388b-3231-498a-93b3-a2a794d799cf', 'Bear', false, true);
  END IF;

  -- [KANJI] 載 (Level 24)
  UPDATE item_meanings SET meaning = 'Memuat', primary_meaning = true, accepted_answer = true WHERE id = '33f132fb-a864-42bd-88aa-bd63be3445e8';
  UPDATE items SET slug = 'memuat' WHERE id = '5240c772-66b9-4a47-bd41-51cd22cc3184';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '5240c772-66b9-4a47-bd41-51cd22cc3184' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Menerbitkan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('5240c772-66b9-4a47-bd41-51cd22cc3184', 'Menerbitkan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '5240c772-66b9-4a47-bd41-51cd22cc3184' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Menaruh'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('5240c772-66b9-4a47-bd41-51cd22cc3184', 'Menaruh', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '5240c772-66b9-4a47-bd41-51cd22cc3184' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Place On'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('5240c772-66b9-4a47-bd41-51cd22cc3184', 'Place On', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '5240c772-66b9-4a47-bd41-51cd22cc3184' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Publish'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('5240c772-66b9-4a47-bd41-51cd22cc3184', 'Publish', false, true);
  END IF;

  -- [KANJI] 述 (Level 24)
  UPDATE item_meanings SET meaning = 'Menyatakan', primary_meaning = true, accepted_answer = true WHERE id = 'af17f750-1aaf-489d-866d-c55989d6afdd';
  UPDATE items SET slug = 'menyatakan' WHERE id = '41d7908f-cf3a-445e-ac38-b71f3e3cfc53';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '41d7908f-cf3a-445e-ac38-b71f3e3cfc53' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Mengemukakan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('41d7908f-cf3a-445e-ac38-b71f3e3cfc53', 'Mengemukakan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '41d7908f-cf3a-445e-ac38-b71f3e3cfc53' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Menyebutkan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('41d7908f-cf3a-445e-ac38-b71f3e3cfc53', 'Menyebutkan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '41d7908f-cf3a-445e-ac38-b71f3e3cfc53' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Mention'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('41d7908f-cf3a-445e-ac38-b71f3e3cfc53', 'Mention', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '41d7908f-cf3a-445e-ac38-b71f3e3cfc53' AND LOWER(TRIM(meaning)) = LOWER(TRIM('State'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('41d7908f-cf3a-445e-ac38-b71f3e3cfc53', 'State', false, true);
  END IF;

  -- [KANJI] 違 (Level 24)
  UPDATE item_meanings SET meaning = 'Berbeda', primary_meaning = true, accepted_answer = true WHERE id = '51e57729-b8c6-42d6-a3a0-029b74e5f787';
  UPDATE items SET slug = 'berbeda' WHERE id = 'f90fec5b-abda-4fa3-a0cb-c391219961c5';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'f90fec5b-abda-4fa3-a0cb-c391219961c5' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Menyimpang'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('f90fec5b-abda-4fa3-a0cb-c391219961c5', 'Menyimpang', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'f90fec5b-abda-4fa3-a0cb-c391219961c5' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Salah'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('f90fec5b-abda-4fa3-a0cb-c391219961c5', 'Salah', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'f90fec5b-abda-4fa3-a0cb-c391219961c5' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Different'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('f90fec5b-abda-4fa3-a0cb-c391219961c5', 'Different', false, true);
  END IF;

  -- [KANJI] 額 (Level 24)
  UPDATE item_meanings SET meaning = 'Jumlah Uang', primary_meaning = true, accepted_answer = true WHERE id = '87eba08d-e01d-4245-853c-33eb59a755d5';
  UPDATE items SET slug = 'jumlah-uang' WHERE id = '0566136b-5ba0-45c5-9a98-cb3b481900c4';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '0566136b-5ba0-45c5-9a98-cb3b481900c4' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Dahi'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('0566136b-5ba0-45c5-9a98-cb3b481900c4', 'Dahi', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '0566136b-5ba0-45c5-9a98-cb3b481900c4' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Bingkai'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('0566136b-5ba0-45c5-9a98-cb3b481900c4', 'Bingkai', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '0566136b-5ba0-45c5-9a98-cb3b481900c4' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Nominal'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('0566136b-5ba0-45c5-9a98-cb3b481900c4', 'Nominal', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '0566136b-5ba0-45c5-9a98-cb3b481900c4' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Amount'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('0566136b-5ba0-45c5-9a98-cb3b481900c4', 'Amount', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '0566136b-5ba0-45c5-9a98-cb3b481900c4' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Forehead'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('0566136b-5ba0-45c5-9a98-cb3b481900c4', 'Forehead', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '0566136b-5ba0-45c5-9a98-cb3b481900c4' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Frame'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('0566136b-5ba0-45c5-9a98-cb3b481900c4', 'Frame', false, true);
  END IF;

  -- [VOCABULARY] 上述 (Level 24)
  UPDATE item_meanings SET meaning = 'Tersebut di Atas', primary_meaning = true, accepted_answer = true WHERE id = '1312b141-ee7f-48c7-8a69-b6c17a038728';
  UPDATE items SET slug = 'tersebut-di-atas' WHERE id = '1ba14376-3a00-449b-ba69-c50ac2f91400';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '1ba14376-3a00-449b-ba69-c50ac2f91400' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Tertera Sebelumnya'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('1ba14376-3a00-449b-ba69-c50ac2f91400', 'Tertera Sebelumnya', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '1ba14376-3a00-449b-ba69-c50ac2f91400' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Above Mentioned'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('1ba14376-3a00-449b-ba69-c50ac2f91400', 'Above Mentioned', false, true);
  END IF;

  -- [VOCABULARY] 不燃ゴミ (Level 24)
  UPDATE item_meanings SET meaning = 'Sampah Anorganik', primary_meaning = true, accepted_answer = true WHERE id = '6177dbc4-ec36-4654-9dbe-d3e97ac9b580';
  UPDATE items SET slug = 'sampah-anorganik' WHERE id = 'a7acc1ee-f995-4e29-b46d-14b40cd5a8de';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'a7acc1ee-f995-4e29-b46d-14b40cd5a8de' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Sampah Non-Bakar'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('a7acc1ee-f995-4e29-b46d-14b40cd5a8de', 'Sampah Non-Bakar', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'a7acc1ee-f995-4e29-b46d-14b40cd5a8de' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Sampah Tak Terbakar'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('a7acc1ee-f995-4e29-b46d-14b40cd5a8de', 'Sampah Tak Terbakar', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'a7acc1ee-f995-4e29-b46d-14b40cd5a8de' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Nonburnable Garbage'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('a7acc1ee-f995-4e29-b46d-14b40cd5a8de', 'Nonburnable Garbage', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'a7acc1ee-f995-4e29-b46d-14b40cd5a8de' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Non-Bakar'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('a7acc1ee-f995-4e29-b46d-14b40cd5a8de', 'Non-Bakar', false, true);
  END IF;

  -- [VOCABULARY] 供える (Level 24)
  UPDATE item_meanings SET meaning = 'Mempersembahkan', primary_meaning = true, accepted_answer = true WHERE id = 'bfeefa2d-7a27-4bc4-9504-ceebe25ad87a';
  UPDATE items SET slug = 'mempersembahkan' WHERE id = 'ea33cf57-7f01-45d0-b618-5569ce778542';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'ea33cf57-7f01-45d0-b618-5569ce778542' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Menyajikan Sesajen'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('ea33cf57-7f01-45d0-b618-5569ce778542', 'Menyajikan Sesajen', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'ea33cf57-7f01-45d0-b618-5569ce778542' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Sesaji'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('ea33cf57-7f01-45d0-b618-5569ce778542', 'Sesaji', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'ea33cf57-7f01-45d0-b618-5569ce778542' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Make An Offering'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('ea33cf57-7f01-45d0-b618-5569ce778542', 'To Make An Offering', false, true);
  END IF;

  -- [VOCABULARY] 価値観 (Level 24)
  UPDATE item_meanings SET meaning = 'Pandangan Nilai', primary_meaning = true, accepted_answer = true WHERE id = '0f3ab207-e147-4720-b35e-f0fe2364eeab';
  UPDATE items SET slug = 'pandangan-nilai' WHERE id = '1f0a4654-144d-4ade-ac0f-ead4091f583f';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '1f0a4654-144d-4ade-ac0f-ead4091f583f' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Prinsip Hidup'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('1f0a4654-144d-4ade-ac0f-ead4091f583f', 'Prinsip Hidup', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '1f0a4654-144d-4ade-ac0f-ead4091f583f' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Nilai Moral'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('1f0a4654-144d-4ade-ac0f-ead4091f583f', 'Nilai Moral', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '1f0a4654-144d-4ade-ac0f-ead4091f583f' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Values'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('1f0a4654-144d-4ade-ac0f-ead4091f583f', 'Values', false, true);
  END IF;

  -- [VOCABULARY] 全額 (Level 24)
  UPDATE item_meanings SET meaning = 'Jumlah Penuh', primary_meaning = true, accepted_answer = true WHERE id = 'ba1ae220-47dc-4ed4-88f1-da8bad64fac1';
  UPDATE items SET slug = 'jumlah-penuh' WHERE id = '435a36d1-2a49-4512-970e-5fa0875718ac';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '435a36d1-2a49-4512-970e-5fa0875718ac' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Seluruh Biaya'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('435a36d1-2a49-4512-970e-5fa0875718ac', 'Seluruh Biaya', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '435a36d1-2a49-4512-970e-5fa0875718ac' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Total'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('435a36d1-2a49-4512-970e-5fa0875718ac', 'Total', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '435a36d1-2a49-4512-970e-5fa0875718ac' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Full Amount'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('435a36d1-2a49-4512-970e-5fa0875718ac', 'Full Amount', false, true);
  END IF;

  -- [VOCABULARY] 典型的 (Level 24)
  UPDATE item_meanings SET meaning = 'Tipikal', primary_meaning = true, accepted_answer = true WHERE id = '9f58e89e-0189-499d-95e7-0ebc49f52a4a';
  UPDATE items SET slug = 'tipikal' WHERE id = 'cc2e06cf-68be-450a-9bc2-2030a42d690b';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'cc2e06cf-68be-450a-9bc2-2030a42d690b' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Khas'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('cc2e06cf-68be-450a-9bc2-2030a42d690b', 'Khas', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'cc2e06cf-68be-450a-9bc2-2030a42d690b' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Biasa'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('cc2e06cf-68be-450a-9bc2-2030a42d690b', 'Biasa', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'cc2e06cf-68be-450a-9bc2-2030a42d690b' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Typical'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('cc2e06cf-68be-450a-9bc2-2030a42d690b', 'Typical', false, true);
  END IF;

  -- [VOCABULARY] 原型 (Level 24)
  UPDATE item_meanings SET meaning = 'Prototipe', primary_meaning = true, accepted_answer = true WHERE id = 'f7a3fb83-d200-4168-8e0d-6021697f1bd9';
  UPDATE items SET slug = 'prototipe' WHERE id = '899697ce-1277-49a7-ba47-65b0d22c364b';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '899697ce-1277-49a7-ba47-65b0d22c364b' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Bentuk Asli'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('899697ce-1277-49a7-ba47-65b0d22c364b', 'Bentuk Asli', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '899697ce-1277-49a7-ba47-65b0d22c364b' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Model Awal'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('899697ce-1277-49a7-ba47-65b0d22c364b', 'Model Awal', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '899697ce-1277-49a7-ba47-65b0d22c364b' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Prototype'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('899697ce-1277-49a7-ba47-65b0d22c364b', 'Prototype', false, true);
  END IF;

  -- [VOCABULARY] 可燃ゴミ (Level 24)
  UPDATE item_meanings SET meaning = 'Sampah Organik', primary_meaning = true, accepted_answer = true WHERE id = '7940fa4b-6155-4bee-93f2-2e0a451b0294';
  UPDATE items SET slug = 'sampah-organik' WHERE id = 'dc8e8a84-1d6f-475d-8e63-9a14268731b7';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'dc8e8a84-1d6f-475d-8e63-9a14268731b7' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Sampah Bakar'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('dc8e8a84-1d6f-475d-8e63-9a14268731b7', 'Sampah Bakar', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'dc8e8a84-1d6f-475d-8e63-9a14268731b7' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Sampah Mudah Terbakar'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('dc8e8a84-1d6f-475d-8e63-9a14268731b7', 'Sampah Mudah Terbakar', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'dc8e8a84-1d6f-475d-8e63-9a14268731b7' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Burnable Garbage'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('dc8e8a84-1d6f-475d-8e63-9a14268731b7', 'Burnable Garbage', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'dc8e8a84-1d6f-475d-8e63-9a14268731b7' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Dapat Dibakar'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('dc8e8a84-1d6f-475d-8e63-9a14268731b7', 'Dapat Dibakar', false, true);
  END IF;

  -- [VOCABULARY] 営業する (Level 24)
  UPDATE item_meanings SET meaning = 'Menjalankan Usaha', primary_meaning = true, accepted_answer = true WHERE id = 'c10eb224-2ac5-42e1-a15d-40246f78b719';
  UPDATE items SET slug = 'menjalankan-usaha' WHERE id = '32e664d2-1b8b-4886-8ccd-b5d5c7248892';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '32e664d2-1b8b-4886-8ccd-b5d5c7248892' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Buka Toko'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('32e664d2-1b8b-4886-8ccd-b5d5c7248892', 'Buka Toko', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '32e664d2-1b8b-4886-8ccd-b5d5c7248892' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Berbisnis'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('32e664d2-1b8b-4886-8ccd-b5d5c7248892', 'Berbisnis', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '32e664d2-1b8b-4886-8ccd-b5d5c7248892' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Run A Business'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('32e664d2-1b8b-4886-8ccd-b5d5c7248892', 'To Run A Business', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '32e664d2-1b8b-4886-8ccd-b5d5c7248892' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Buka'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('32e664d2-1b8b-4886-8ccd-b5d5c7248892', 'Buka', false, true);
  END IF;

  -- [VOCABULARY] 営業中 (Level 24)
  UPDATE item_meanings SET meaning = 'Buka', primary_meaning = true, accepted_answer = true WHERE id = '327d50de-42d2-403e-a40a-c56e4aaa2967';
  UPDATE items SET slug = 'buka' WHERE id = 'ad503416-2135-4be3-a6ab-44eed6004b2b';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'ad503416-2135-4be3-a6ab-44eed6004b2b' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Sedang Buka'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('ad503416-2135-4be3-a6ab-44eed6004b2b', 'Sedang Buka', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'ad503416-2135-4be3-a6ab-44eed6004b2b' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Beroperasi'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('ad503416-2135-4be3-a6ab-44eed6004b2b', 'Beroperasi', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'ad503416-2135-4be3-a6ab-44eed6004b2b' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Open For Business'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('ad503416-2135-4be3-a6ab-44eed6004b2b', 'Open For Business', false, true);
  END IF;

  -- [VOCABULARY] 官庁 (Level 24)
  UPDATE item_meanings SET meaning = 'Instansi Pemerintah', primary_meaning = true, accepted_answer = true WHERE id = '361071ab-7e7b-487a-82d3-5f66747bbb23';
  UPDATE items SET slug = 'instansi-pemerintah' WHERE id = 'c6cb7bf1-3196-4408-b7c0-cda0b43781f5';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'c6cb7bf1-3196-4408-b7c0-cda0b43781f5' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Kementerian'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('c6cb7bf1-3196-4408-b7c0-cda0b43781f5', 'Kementerian', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'c6cb7bf1-3196-4408-b7c0-cda0b43781f5' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Kantor Pemerintah'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('c6cb7bf1-3196-4408-b7c0-cda0b43781f5', 'Kantor Pemerintah', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'c6cb7bf1-3196-4408-b7c0-cda0b43781f5' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Government Office'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('c6cb7bf1-3196-4408-b7c0-cda0b43781f5', 'Government Office', false, true);
  END IF;

  -- [VOCABULARY] 定量 (Level 24)
  UPDATE item_meanings SET meaning = 'Takaran Tetap', primary_meaning = true, accepted_answer = true WHERE id = '97ede26f-32f7-4e79-875f-58dda0687fc5';
  UPDATE items SET slug = 'takaran-tetap' WHERE id = 'e28b3032-6bf2-4876-8c12-19981cb8fbab';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'e28b3032-6bf2-4876-8c12-19981cb8fbab' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Dosis'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('e28b3032-6bf2-4876-8c12-19981cb8fbab', 'Dosis', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'e28b3032-6bf2-4876-8c12-19981cb8fbab' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Jumlah Tertentu'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('e28b3032-6bf2-4876-8c12-19981cb8fbab', 'Jumlah Tertentu', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'e28b3032-6bf2-4876-8c12-19981cb8fbab' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Fixed Quantity'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('e28b3032-6bf2-4876-8c12-19981cb8fbab', 'Fixed Quantity', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'e28b3032-6bf2-4876-8c12-19981cb8fbab' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Takaran Tertentu'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('e28b3032-6bf2-4876-8c12-19981cb8fbab', 'Takaran Tertentu', false, true);
  END IF;

  -- [VOCABULARY] 定額 (Level 24)
  UPDATE item_meanings SET meaning = 'Tarif Tetap', primary_meaning = true, accepted_answer = true WHERE id = '67a01f53-23bb-4ce9-bfa1-97a6eb84b83f';
  UPDATE items SET slug = 'tarif-tetap' WHERE id = '73485a9b-cf63-4590-9b6f-71db740e3b27';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '73485a9b-cf63-4590-9b6f-71db740e3b27' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Jumlah Tetap'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('73485a9b-cf63-4590-9b6f-71db740e3b27', 'Jumlah Tetap', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '73485a9b-cf63-4590-9b6f-71db740e3b27' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Biaya Pasti'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('73485a9b-cf63-4590-9b6f-71db740e3b27', 'Biaya Pasti', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '73485a9b-cf63-4590-9b6f-71db740e3b27' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Flat Rate'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('73485a9b-cf63-4590-9b6f-71db740e3b27', 'Flat Rate', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '73485a9b-cf63-4590-9b6f-71db740e3b27' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Fixed Amount'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('73485a9b-cf63-4590-9b6f-71db740e3b27', 'Fixed Amount', false, true);
  END IF;

  -- [VOCABULARY] 寝坊する (Level 24)
  UPDATE item_meanings SET meaning = 'Kesiangan', primary_meaning = true, accepted_answer = true WHERE id = '6383d2ba-15ae-4f2a-ae58-06e214dcabcf';
  UPDATE items SET slug = 'kesiangan' WHERE id = '070db6b8-b1d4-4b13-8fb1-8db33bee8986';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '070db6b8-b1d4-4b13-8fb1-8db33bee8986' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Bangun Terlambat'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('070db6b8-b1d4-4b13-8fb1-8db33bee8986', 'Bangun Terlambat', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '070db6b8-b1d4-4b13-8fb1-8db33bee8986' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Oversleep'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('070db6b8-b1d4-4b13-8fb1-8db33bee8986', 'To Oversleep', false, true);
  END IF;

  -- [VOCABULARY] 審判 (Level 24)
  UPDATE item_meanings SET meaning = 'Wasit', primary_meaning = true, accepted_answer = true WHERE id = '0e8be19d-bbe6-45cd-833b-01530444b157';
  UPDATE items SET slug = 'wasit' WHERE id = '5a131d25-7747-4ad9-9a0a-4b9e6a96f74b';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '5a131d25-7747-4ad9-9a0a-4b9e6a96f74b' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Pengadilan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('5a131d25-7747-4ad9-9a0a-4b9e6a96f74b', 'Pengadilan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '5a131d25-7747-4ad9-9a0a-4b9e6a96f74b' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Keputusan Wasit'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('5a131d25-7747-4ad9-9a0a-4b9e6a96f74b', 'Keputusan Wasit', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '5a131d25-7747-4ad9-9a0a-4b9e6a96f74b' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Referee'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('5a131d25-7747-4ad9-9a0a-4b9e6a96f74b', 'Referee', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '5a131d25-7747-4ad9-9a0a-4b9e6a96f74b' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Judgment'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('5a131d25-7747-4ad9-9a0a-4b9e6a96f74b', 'Judgment', false, true);
  END IF;

  -- [VOCABULARY] 審査 (Level 24)
  UPDATE item_meanings SET meaning = 'Penjurian', primary_meaning = true, accepted_answer = true WHERE id = '5080cc86-2d71-4fb8-b99a-0037ca073749';
  UPDATE items SET slug = 'penjurian' WHERE id = 'dd45b4a5-5814-4faa-ae4a-516f130d0e4a';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'dd45b4a5-5814-4faa-ae4a-516f130d0e4a' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Seleksi'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('dd45b4a5-5814-4faa-ae4a-516f130d0e4a', 'Seleksi', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'dd45b4a5-5814-4faa-ae4a-516f130d0e4a' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Audit'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('dd45b4a5-5814-4faa-ae4a-516f130d0e4a', 'Audit', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'dd45b4a5-5814-4faa-ae4a-516f130d0e4a' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Pemeriksaan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('dd45b4a5-5814-4faa-ae4a-516f130d0e4a', 'Pemeriksaan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'dd45b4a5-5814-4faa-ae4a-516f130d0e4a' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Examination'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('dd45b4a5-5814-4faa-ae4a-516f130d0e4a', 'Examination', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'dd45b4a5-5814-4faa-ae4a-516f130d0e4a' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Inspection'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('dd45b4a5-5814-4faa-ae4a-516f130d0e4a', 'Inspection', false, true);
  END IF;

  -- [VOCABULARY] 対策 (Level 24)
  UPDATE item_meanings SET meaning = 'Solusi', primary_meaning = true, accepted_answer = true WHERE id = 'c63bd51e-4657-4a4d-a2ac-465927ab2edd';
  UPDATE items SET slug = 'solusi' WHERE id = '98a7a19a-e37e-4e3d-891c-8b066f7a234e';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '98a7a19a-e37e-4e3d-891c-8b066f7a234e' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Langkah Penanggulangan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('98a7a19a-e37e-4e3d-891c-8b066f7a234e', 'Langkah Penanggulangan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '98a7a19a-e37e-4e3d-891c-8b066f7a234e' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Pencegahan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('98a7a19a-e37e-4e3d-891c-8b066f7a234e', 'Pencegahan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '98a7a19a-e37e-4e3d-891c-8b066f7a234e' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Countermeasure'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('98a7a19a-e37e-4e3d-891c-8b066f7a234e', 'Countermeasure', false, true);
  END IF;

  -- [VOCABULARY] 届く (Level 24)
  UPDATE item_meanings SET meaning = 'Sampai', primary_meaning = true, accepted_answer = true WHERE id = '0c22f775-fdee-4ec8-973d-c324c7035c2e';
  UPDATE items SET slug = 'sampai' WHERE id = '1bcdfcbe-9ffc-4c3e-be79-a89969af0eb2';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '1bcdfcbe-9ffc-4c3e-be79-a89969af0eb2' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Tiba'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('1bcdfcbe-9ffc-4c3e-be79-a89969af0eb2', 'Tiba', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '1bcdfcbe-9ffc-4c3e-be79-a89969af0eb2' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Terkirim'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('1bcdfcbe-9ffc-4c3e-be79-a89969af0eb2', 'Terkirim', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '1bcdfcbe-9ffc-4c3e-be79-a89969af0eb2' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Be Delivered'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('1bcdfcbe-9ffc-4c3e-be79-a89969af0eb2', 'To Be Delivered', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '1bcdfcbe-9ffc-4c3e-be79-a89969af0eb2' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Arrive'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('1bcdfcbe-9ffc-4c3e-be79-a89969af0eb2', 'To Arrive', false, true);
  END IF;

  -- [VOCABULARY] 展開 (Level 24)
  UPDATE item_meanings SET meaning = 'Perkembangan', primary_meaning = true, accepted_answer = true WHERE id = '0e96abe9-2c17-4160-86d0-d7509ad469de';
  UPDATE items SET slug = 'perkembangan' WHERE id = '05e2a6b6-4e74-4a78-ae53-5fd335137ea3';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '05e2a6b6-4e74-4a78-ae53-5fd335137ea3' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Gelaran'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('05e2a6b6-4e74-4a78-ae53-5fd335137ea3', 'Gelaran', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '05e2a6b6-4e74-4a78-ae53-5fd335137ea3' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Pemekaran'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('05e2a6b6-4e74-4a78-ae53-5fd335137ea3', 'Pemekaran', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '05e2a6b6-4e74-4a78-ae53-5fd335137ea3' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Development'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('05e2a6b6-4e74-4a78-ae53-5fd335137ea3', 'Development', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '05e2a6b6-4e74-4a78-ae53-5fd335137ea3' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Unfolding'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('05e2a6b6-4e74-4a78-ae53-5fd335137ea3', 'Unfolding', false, true);
  END IF;

  -- [VOCABULARY] 差す (Level 24)
  UPDATE item_meanings SET meaning = 'Menyinari', primary_meaning = true, accepted_answer = true WHERE id = '8739fce7-6953-4102-a78d-b961c882c88d';
  UPDATE items SET slug = 'menyinari' WHERE id = '29b7df9d-5b4d-457b-a58e-e5bab724c63b';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '29b7df9d-5b4d-457b-a58e-e5bab724c63b' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Membuka Payung'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('29b7df9d-5b4d-457b-a58e-e5bab724c63b', 'Membuka Payung', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '29b7df9d-5b4d-457b-a58e-e5bab724c63b' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Menusuk'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('29b7df9d-5b4d-457b-a58e-e5bab724c63b', 'Menusuk', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '29b7df9d-5b4d-457b-a58e-e5bab724c63b' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Shine'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('29b7df9d-5b4d-457b-a58e-e5bab724c63b', 'To Shine', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '29b7df9d-5b4d-457b-a58e-e5bab724c63b' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Membuka'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('29b7df9d-5b4d-457b-a58e-e5bab724c63b', 'Membuka', false, true);
  END IF;

  -- [VOCABULARY] 年額 (Level 24)
  UPDATE item_meanings SET meaning = 'Biaya Tahunan', primary_meaning = true, accepted_answer = true WHERE id = '5f917f19-aba8-4fd8-b191-38d36ff5644b';
  UPDATE items SET slug = 'biaya-tahunan' WHERE id = '669a4534-e16a-4963-8f45-a0d421d10bcc';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '669a4534-e16a-4963-8f45-a0d421d10bcc' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Tarif Per Tahun'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('669a4534-e16a-4963-8f45-a0d421d10bcc', 'Tarif Per Tahun', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '669a4534-e16a-4963-8f45-a0d421d10bcc' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Nominal Tahunan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('669a4534-e16a-4963-8f45-a0d421d10bcc', 'Nominal Tahunan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '669a4534-e16a-4963-8f45-a0d421d10bcc' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Annual Amount'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('669a4534-e16a-4963-8f45-a0d421d10bcc', 'Annual Amount', false, true);
  END IF;

  -- [VOCABULARY] 応援する (Level 24)
  UPDATE item_meanings SET meaning = 'Mendukung', primary_meaning = true, accepted_answer = true WHERE id = '3b8cc4c7-9d4d-44c7-8bda-49278e644194';
  UPDATE items SET slug = 'mendukung' WHERE id = 'ccea6889-a08b-41a8-8bf2-09510a1ce7db';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'ccea6889-a08b-41a8-8bf2-09510a1ce7db' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Menyemangati'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('ccea6889-a08b-41a8-8bf2-09510a1ce7db', 'Menyemangati', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'ccea6889-a08b-41a8-8bf2-09510a1ce7db' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Menyoraki'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('ccea6889-a08b-41a8-8bf2-09510a1ce7db', 'Menyoraki', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'ccea6889-a08b-41a8-8bf2-09510a1ce7db' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Root For'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('ccea6889-a08b-41a8-8bf2-09510a1ce7db', 'To Root For', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'ccea6889-a08b-41a8-8bf2-09510a1ce7db' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Cheer On'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('ccea6889-a08b-41a8-8bf2-09510a1ce7db', 'To Cheer On', false, true);
  END IF;

  -- [VOCABULARY] 応援団 (Level 24)
  UPDATE item_meanings SET meaning = 'Pemandu Sorak', primary_meaning = true, accepted_answer = true WHERE id = '8fe986a3-f5d9-42ec-b58e-133d23313395';
  UPDATE items SET slug = 'pemandu-sorak' WHERE id = '66b081da-8789-4a85-9008-d4e6e4985a32';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '66b081da-8789-4a85-9008-d4e6e4985a32' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Tim Pemandu Sorak'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('66b081da-8789-4a85-9008-d4e6e4985a32', 'Tim Pemandu Sorak', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '66b081da-8789-4a85-9008-d4e6e4985a32' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Suporter'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('66b081da-8789-4a85-9008-d4e6e4985a32', 'Suporter', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '66b081da-8789-4a85-9008-d4e6e4985a32' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Cheer Squad'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('66b081da-8789-4a85-9008-d4e6e4985a32', 'Cheer Squad', false, true);
  END IF;

  -- [VOCABULARY] 感触 (Level 24)
  UPDATE item_meanings SET meaning = 'Sensasi Sentuhan', primary_meaning = true, accepted_answer = true WHERE id = 'ea94357d-dc46-4792-b13e-759d2ceae479';
  UPDATE items SET slug = 'sensasi-sentuhan' WHERE id = 'cac3edd0-2db8-4861-8469-cbac3141c0e4';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'cac3edd0-2db8-4861-8469-cbac3141c0e4' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Tekstur Rasa'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('cac3edd0-2db8-4861-8469-cbac3141c0e4', 'Tekstur Rasa', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'cac3edd0-2db8-4861-8469-cbac3141c0e4' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Rabaan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('cac3edd0-2db8-4861-8469-cbac3141c0e4', 'Rabaan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'cac3edd0-2db8-4861-8469-cbac3141c0e4' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Feel'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('cac3edd0-2db8-4861-8469-cbac3141c0e4', 'Feel', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'cac3edd0-2db8-4861-8469-cbac3141c0e4' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Touch'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('cac3edd0-2db8-4861-8469-cbac3141c0e4', 'Touch', false, true);
  END IF;

  -- [VOCABULARY] 担ぐ (Level 24)
  UPDATE item_meanings SET meaning = 'Memikul', primary_meaning = true, accepted_answer = true WHERE id = 'dddeafa6-00a3-41a3-8c08-b1a0430c38c2';
  UPDATE items SET slug = 'memikul' WHERE id = 'a10cde0d-6d9c-4725-8917-151441c98ae6';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'a10cde0d-6d9c-4725-8917-151441c98ae6' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Memanggul'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('a10cde0d-6d9c-4725-8917-151441c98ae6', 'Memanggul', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'a10cde0d-6d9c-4725-8917-151441c98ae6' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Memikul di Bahu'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('a10cde0d-6d9c-4725-8917-151441c98ae6', 'Memikul di Bahu', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'a10cde0d-6d9c-4725-8917-151441c98ae6' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Carry'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('a10cde0d-6d9c-4725-8917-151441c98ae6', 'To Carry', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'a10cde0d-6d9c-4725-8917-151441c98ae6' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Shoulder'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('a10cde0d-6d9c-4725-8917-151441c98ae6', 'To Shoulder', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'a10cde0d-6d9c-4725-8917-151441c98ae6' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Memanggul di Bahu'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('a10cde0d-6d9c-4725-8917-151441c98ae6', 'Memanggul di Bahu', false, true);
  END IF;

  -- [VOCABULARY] 担当 (Level 24)
  UPDATE item_meanings SET meaning = 'Penanggung Jawab', primary_meaning = true, accepted_answer = true WHERE id = '8eacaf0f-5e95-4ba8-af9e-4c9499ceecc0';
  UPDATE items SET slug = 'penanggung-jawab' WHERE id = '45f97a70-54ab-4d1c-98f4-c352eb2c972e';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '45f97a70-54ab-4d1c-98f4-c352eb2c972e' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Pengampu'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('45f97a70-54ab-4d1c-98f4-c352eb2c972e', 'Pengampu', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '45f97a70-54ab-4d1c-98f4-c352eb2c972e' AND LOWER(TRIM(meaning)) = LOWER(TRIM('PIC'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('45f97a70-54ab-4d1c-98f4-c352eb2c972e', 'PIC', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '45f97a70-54ab-4d1c-98f4-c352eb2c972e' AND LOWER(TRIM(meaning)) = LOWER(TRIM('In Charge'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('45f97a70-54ab-4d1c-98f4-c352eb2c972e', 'In Charge', false, true);
  END IF;

  -- [VOCABULARY] 提供 (Level 24)
  UPDATE item_meanings SET meaning = 'Penyediaan', primary_meaning = true, accepted_answer = true WHERE id = '821c6f9c-f983-49ef-9507-a372ca83126b';
  UPDATE items SET slug = 'penyediaan' WHERE id = '925f3b8a-1e36-45df-8bc5-45587b9d3c5e';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '925f3b8a-1e36-45df-8bc5-45587b9d3c5e' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Penawaran'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('925f3b8a-1e36-45df-8bc5-45587b9d3c5e', 'Penawaran', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '925f3b8a-1e36-45df-8bc5-45587b9d3c5e' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Sponsor'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('925f3b8a-1e36-45df-8bc5-45587b9d3c5e', 'Sponsor', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '925f3b8a-1e36-45df-8bc5-45587b9d3c5e' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Pemberian'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('925f3b8a-1e36-45df-8bc5-45587b9d3c5e', 'Pemberian', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '925f3b8a-1e36-45df-8bc5-45587b9d3c5e' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Offering'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('925f3b8a-1e36-45df-8bc5-45587b9d3c5e', 'Offering', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '925f3b8a-1e36-45df-8bc5-45587b9d3c5e' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Providing'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('925f3b8a-1e36-45df-8bc5-45587b9d3c5e', 'Providing', false, true);
  END IF;

  -- [VOCABULARY] 提案する (Level 24)
  UPDATE item_meanings SET meaning = 'Mengusulkan', primary_meaning = true, accepted_answer = true WHERE id = '2234c676-316d-4925-9407-d3664c3a5256';
  UPDATE items SET slug = 'mengusulkan' WHERE id = '0fe431dd-2e78-4c5a-ac6c-3fc94678df86';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '0fe431dd-2e78-4c5a-ac6c-3fc94678df86' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Menyarankan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('0fe431dd-2e78-4c5a-ac6c-3fc94678df86', 'Menyarankan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '0fe431dd-2e78-4c5a-ac6c-3fc94678df86' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Mengajukan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('0fe431dd-2e78-4c5a-ac6c-3fc94678df86', 'Mengajukan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '0fe431dd-2e78-4c5a-ac6c-3fc94678df86' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Propose'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('0fe431dd-2e78-4c5a-ac6c-3fc94678df86', 'To Propose', false, true);
  END IF;

  -- [VOCABULARY] 月額 (Level 24)
  UPDATE item_meanings SET meaning = 'Biaya Bulanan', primary_meaning = true, accepted_answer = true WHERE id = 'ba73bb11-9e8d-4348-8558-f4a2f51f11d9';
  UPDATE items SET slug = 'biaya-bulanan' WHERE id = 'e5e276a9-dcc3-4507-99df-fbace8c9ad71';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'e5e276a9-dcc3-4507-99df-fbace8c9ad71' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Tarif Per Bulan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('e5e276a9-dcc3-4507-99df-fbace8c9ad71', 'Tarif Per Bulan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'e5e276a9-dcc3-4507-99df-fbace8c9ad71' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Nominal Bulanan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('e5e276a9-dcc3-4507-99df-fbace8c9ad71', 'Nominal Bulanan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'e5e276a9-dcc3-4507-99df-fbace8c9ad71' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Monthly Amount'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('e5e276a9-dcc3-4507-99df-fbace8c9ad71', 'Monthly Amount', false, true);
  END IF;

  -- [VOCABULARY] 果たして (Level 24)
  UPDATE item_meanings SET meaning = 'Benarkah', primary_meaning = true, accepted_answer = true WHERE id = 'a5d73708-22b1-4ec2-8a85-a2b4aaf82f9a';
  UPDATE items SET slug = 'benarkah' WHERE id = '493cf816-5ec9-483f-ade2-ffebb3424539';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '493cf816-5ec9-483f-ade2-ffebb3424539' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Apakah Benar'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('493cf816-5ec9-483f-ade2-ffebb3424539', 'Apakah Benar', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '493cf816-5ec9-483f-ade2-ffebb3424539' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Sungguhkah'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('493cf816-5ec9-483f-ade2-ffebb3424539', 'Sungguhkah', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '493cf816-5ec9-483f-ade2-ffebb3424539' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Really'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('493cf816-5ec9-483f-ade2-ffebb3424539', 'Really', false, true);
  END IF;

  -- [VOCABULARY] 残額 (Level 24)
  UPDATE item_meanings SET meaning = 'Sisa Saldo', primary_meaning = true, accepted_answer = true WHERE id = '146dd5ed-596f-40ad-96b5-fe984eb1867a';
  UPDATE items SET slug = 'sisa-saldo' WHERE id = '64ce7726-e214-4833-9d3b-cb718742a0f7';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '64ce7726-e214-4833-9d3b-cb718742a0f7' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Sisa Uang'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('64ce7726-e214-4833-9d3b-cb718742a0f7', 'Sisa Uang', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '64ce7726-e214-4833-9d3b-cb718742a0f7' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Saldo Sisa'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('64ce7726-e214-4833-9d3b-cb718742a0f7', 'Saldo Sisa', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '64ce7726-e214-4833-9d3b-cb718742a0f7' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Balance'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('64ce7726-e214-4833-9d3b-cb718742a0f7', 'Balance', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '64ce7726-e214-4833-9d3b-cb718742a0f7' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Remaining Amount'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('64ce7726-e214-4833-9d3b-cb718742a0f7', 'Remaining Amount', false, true);
  END IF;

  -- [VOCABULARY] 燃やす (Level 24)
  UPDATE item_meanings SET meaning = 'Membakar', primary_meaning = true, accepted_answer = true WHERE id = '65ca109b-e1df-462e-83e5-05e01f1ff613';
  UPDATE items SET slug = 'membakar' WHERE id = '3655a30a-c218-44a9-a8f6-c0004c2e1b85';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '3655a30a-c218-44a9-a8f6-c0004c2e1b85' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Menyalakan Api'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('3655a30a-c218-44a9-a8f6-c0004c2e1b85', 'Menyalakan Api', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '3655a30a-c218-44a9-a8f6-c0004c2e1b85' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Burn Something'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('3655a30a-c218-44a9-a8f6-c0004c2e1b85', 'To Burn Something', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '3655a30a-c218-44a9-a8f6-c0004c2e1b85' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Membakar (Sampah'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('3655a30a-c218-44a9-a8f6-c0004c2e1b85', 'Membakar (Sampah', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '3655a30a-c218-44a9-a8f6-c0004c2e1b85' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Benda)'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('3655a30a-c218-44a9-a8f6-c0004c2e1b85', 'Benda)', false, true);
  END IF;

  -- [VOCABULARY] 空腹 (Level 24)
  UPDATE item_meanings SET meaning = 'Kelaparan', primary_meaning = true, accepted_answer = true WHERE id = '6f33b2f2-d036-43ec-9459-404c146279db';
  UPDATE items SET slug = 'kelaparan' WHERE id = 'bea17db1-0150-4c7b-9c1a-5d2a44ce2e29';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'bea17db1-0150-4c7b-9c1a-5d2a44ce2e29' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Perut Kosong'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('bea17db1-0150-4c7b-9c1a-5d2a44ce2e29', 'Perut Kosong', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'bea17db1-0150-4c7b-9c1a-5d2a44ce2e29' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Lapar'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('bea17db1-0150-4c7b-9c1a-5d2a44ce2e29', 'Lapar', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'bea17db1-0150-4c7b-9c1a-5d2a44ce2e29' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Hunger'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('bea17db1-0150-4c7b-9c1a-5d2a44ce2e29', 'Hunger', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'bea17db1-0150-4c7b-9c1a-5d2a44ce2e29' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Empty Stomach'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('bea17db1-0150-4c7b-9c1a-5d2a44ce2e29', 'Empty Stomach', false, true);
  END IF;

  -- [VOCABULARY] 築く (Level 24)
  UPDATE item_meanings SET meaning = 'Membangun', primary_meaning = true, accepted_answer = true WHERE id = '4f05618c-664b-4109-a5ba-565607809650';
  UPDATE items SET slug = 'membangun' WHERE id = 'b1b535ad-62ed-463d-990e-03be32b9ded6';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'b1b535ad-62ed-463d-990e-03be32b9ded6' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Menjalin'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('b1b535ad-62ed-463d-990e-03be32b9ded6', 'Menjalin', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'b1b535ad-62ed-463d-990e-03be32b9ded6' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Mendirikan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('b1b535ad-62ed-463d-990e-03be32b9ded6', 'Mendirikan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'b1b535ad-62ed-463d-990e-03be32b9ded6' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Build'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('b1b535ad-62ed-463d-990e-03be32b9ded6', 'To Build', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'b1b535ad-62ed-463d-990e-03be32b9ded6' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Construct'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('b1b535ad-62ed-463d-990e-03be32b9ded6', 'To Construct', false, true);
  END IF;

  -- [VOCABULARY] 置き場 (Level 24)
  UPDATE item_meanings SET meaning = 'Tempat Penyimpanan', primary_meaning = true, accepted_answer = true WHERE id = '7723e7f3-1f79-4cd0-9cdc-4d2689ce5eac';
  UPDATE items SET slug = 'tempat-penyimpanan' WHERE id = 'c72e2b9b-523f-47fb-a127-a064f6506ae1';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'c72e2b9b-523f-47fb-a127-a064f6506ae1' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Tempat Penitipan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('c72e2b9b-523f-47fb-a127-a064f6506ae1', 'Tempat Penitipan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'c72e2b9b-523f-47fb-a127-a064f6506ae1' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Tempat Menaruh'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('c72e2b9b-523f-47fb-a127-a064f6506ae1', 'Tempat Menaruh', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'c72e2b9b-523f-47fb-a127-a064f6506ae1' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Place To Put Something'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('c72e2b9b-523f-47fb-a127-a064f6506ae1', 'Place To Put Something', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'c72e2b9b-523f-47fb-a127-a064f6506ae1' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Penyimpanan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('c72e2b9b-523f-47fb-a127-a064f6506ae1', 'Penyimpanan', false, true);
  END IF;

  -- [VOCABULARY] 脱ぐ (Level 24)
  UPDATE item_meanings SET meaning = 'Melepas', primary_meaning = true, accepted_answer = true WHERE id = '7147c38f-9435-4989-a5a3-d5d21b34526a';
  UPDATE items SET slug = 'melepas' WHERE id = '768dc31c-0e7f-4f3b-b111-4d4be7e06753';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '768dc31c-0e7f-4f3b-b111-4d4be7e06753' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Menanggalkan Pakaian'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('768dc31c-0e7f-4f3b-b111-4d4be7e06753', 'Menanggalkan Pakaian', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '768dc31c-0e7f-4f3b-b111-4d4be7e06753' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Buka Baju'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('768dc31c-0e7f-4f3b-b111-4d4be7e06753', 'Buka Baju', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '768dc31c-0e7f-4f3b-b111-4d4be7e06753' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Undress'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('768dc31c-0e7f-4f3b-b111-4d4be7e06753', 'To Undress', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '768dc31c-0e7f-4f3b-b111-4d4be7e06753' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Take Off Clothes'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('768dc31c-0e7f-4f3b-b111-4d4be7e06753', 'To Take Off Clothes', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '768dc31c-0e7f-4f3b-b111-4d4be7e06753' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Melepas (Pakaian'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('768dc31c-0e7f-4f3b-b111-4d4be7e06753', 'Melepas (Pakaian', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '768dc31c-0e7f-4f3b-b111-4d4be7e06753' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Sepatu)'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('768dc31c-0e7f-4f3b-b111-4d4be7e06753', 'Sepatu)', false, true);
  END IF;

  -- [VOCABULARY] 触る (Level 24)
  UPDATE item_meanings SET meaning = 'Menyentuh', primary_meaning = true, accepted_answer = true WHERE id = '25f5861e-f3eb-4c4d-8785-8cf5aa772928';
  UPDATE items SET slug = 'menyentuh' WHERE id = 'f9b474b9-0110-40d6-904c-5f7eb69ffc72';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'f9b474b9-0110-40d6-904c-5f7eb69ffc72' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Meraba'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('f9b474b9-0110-40d6-904c-5f7eb69ffc72', 'Meraba', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'f9b474b9-0110-40d6-904c-5f7eb69ffc72' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Memegang'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('f9b474b9-0110-40d6-904c-5f7eb69ffc72', 'Memegang', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'f9b474b9-0110-40d6-904c-5f7eb69ffc72' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Touch'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('f9b474b9-0110-40d6-904c-5f7eb69ffc72', 'To Touch', false, true);
  END IF;

  -- [VOCABULARY] 記載 (Level 24)
  UPDATE item_meanings SET meaning = 'Pencatatan', primary_meaning = true, accepted_answer = true WHERE id = '7c363e9f-7489-4300-a70c-8013f82ac463';
  UPDATE items SET slug = 'pencatatan' WHERE id = '809096ba-f075-41da-b213-d83197ebc7ef';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '809096ba-f075-41da-b213-d83197ebc7ef' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Pemuatan Tertulis'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('809096ba-f075-41da-b213-d83197ebc7ef', 'Pemuatan Tertulis', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '809096ba-f075-41da-b213-d83197ebc7ef' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Pendaftaran'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('809096ba-f075-41da-b213-d83197ebc7ef', 'Pendaftaran', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '809096ba-f075-41da-b213-d83197ebc7ef' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Record'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('809096ba-f075-41da-b213-d83197ebc7ef', 'Record', false, true);
  END IF;

  -- [VOCABULARY] 記述 (Level 24)
  UPDATE item_meanings SET meaning = 'Uraian', primary_meaning = true, accepted_answer = true WHERE id = 'ede7b3ca-a988-48b7-bfe5-ae711ca04aee';
  UPDATE items SET slug = 'uraian' WHERE id = '1e27179e-2c8f-40a3-a645-5336d311d411';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '1e27179e-2c8f-40a3-a645-5336d311d411' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Deskripsi'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('1e27179e-2c8f-40a3-a645-5336d311d411', 'Deskripsi', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '1e27179e-2c8f-40a3-a645-5336d311d411' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Catatan Tertulis'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('1e27179e-2c8f-40a3-a645-5336d311d411', 'Catatan Tertulis', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '1e27179e-2c8f-40a3-a645-5336d311d411' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Description'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('1e27179e-2c8f-40a3-a645-5336d311d411', 'Description', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '1e27179e-2c8f-40a3-a645-5336d311d411' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Writing Down'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('1e27179e-2c8f-40a3-a645-5336d311d411', 'Writing Down', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '1e27179e-2c8f-40a3-a645-5336d311d411' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Uraian Tertulis'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('1e27179e-2c8f-40a3-a645-5336d311d411', 'Uraian Tertulis', false, true);
  END IF;

  -- [VOCABULARY] 載る (Level 24)
  UPDATE item_meanings SET meaning = 'Dimuat', primary_meaning = true, accepted_answer = true WHERE id = '85cb6106-8c71-43fb-8af7-c7190b0b4309';
  UPDATE items SET slug = 'dimuat' WHERE id = '16b5a923-e85f-4c36-bd03-6b7da7f9f0e5';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '16b5a923-e85f-4c36-bd03-6b7da7f9f0e5' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Tercatat'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('16b5a923-e85f-4c36-bd03-6b7da7f9f0e5', 'Tercatat', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '16b5a923-e85f-4c36-bd03-6b7da7f9f0e5' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Naik Kendaraan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('16b5a923-e85f-4c36-bd03-6b7da7f9f0e5', 'Naik Kendaraan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '16b5a923-e85f-4c36-bd03-6b7da7f9f0e5' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Be Placed On'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('16b5a923-e85f-4c36-bd03-6b7da7f9f0e5', 'To Be Placed On', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '16b5a923-e85f-4c36-bd03-6b7da7f9f0e5' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Be Recorded'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('16b5a923-e85f-4c36-bd03-6b7da7f9f0e5', 'To Be Recorded', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '16b5a923-e85f-4c36-bd03-6b7da7f9f0e5' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Naik'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('16b5a923-e85f-4c36-bd03-6b7da7f9f0e5', 'Naik', false, true);
  END IF;

  -- [VOCABULARY] 述べる (Level 24)
  UPDATE item_meanings SET meaning = 'Menyatakan', primary_meaning = true, accepted_answer = true WHERE id = 'dfbd86ed-9324-4640-bd86-861a72093787';
  UPDATE items SET slug = 'menyatakan' WHERE id = '70e197af-f289-4233-98f8-64c9f5106c49';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '70e197af-f289-4233-98f8-64c9f5106c49' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Mengemukakan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('70e197af-f289-4233-98f8-64c9f5106c49', 'Mengemukakan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '70e197af-f289-4233-98f8-64c9f5106c49' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Menjelaskan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('70e197af-f289-4233-98f8-64c9f5106c49', 'Menjelaskan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '70e197af-f289-4233-98f8-64c9f5106c49' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Mention'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('70e197af-f289-4233-98f8-64c9f5106c49', 'To Mention', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '70e197af-f289-4233-98f8-64c9f5106c49' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To State'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('70e197af-f289-4233-98f8-64c9f5106c49', 'To State', false, true);
  END IF;

  -- [VOCABULARY] 通販 (Level 24)
  UPDATE item_meanings SET meaning = 'Belanja Daring', primary_meaning = true, accepted_answer = true WHERE id = '21efd24d-529f-46e1-9276-6df1c930f095';
  UPDATE items SET slug = 'belanja-daring' WHERE id = 'd7ca38f9-d482-4a51-b9df-d9f56767c874';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'd7ca38f9-d482-4a51-b9df-d9f56767c874' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Pesan Antar'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('d7ca38f9-d482-4a51-b9df-d9f56767c874', 'Pesan Antar', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'd7ca38f9-d482-4a51-b9df-d9f56767c874' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Pesanan Pos'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('d7ca38f9-d482-4a51-b9df-d9f56767c874', 'Pesanan Pos', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'd7ca38f9-d482-4a51-b9df-d9f56767c874' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Mail Order'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('d7ca38f9-d482-4a51-b9df-d9f56767c874', 'Mail Order', false, true);
  END IF;

  -- [VOCABULARY] 違う (Level 24)
  UPDATE item_meanings SET meaning = 'Berbeda', primary_meaning = true, accepted_answer = true WHERE id = '4484feee-9532-4c8a-a513-ebe3a24d05fc';
  UPDATE items SET slug = 'berbeda' WHERE id = '578425b1-2d05-4f47-a71d-d2e0c48550b6';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '578425b1-2d05-4f47-a71d-d2e0c48550b6' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Salah'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('578425b1-2d05-4f47-a71d-d2e0c48550b6', 'Salah', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '578425b1-2d05-4f47-a71d-d2e0c48550b6' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Keliru'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('578425b1-2d05-4f47-a71d-d2e0c48550b6', 'Keliru', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '578425b1-2d05-4f47-a71d-d2e0c48550b6' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Be Different'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('578425b1-2d05-4f47-a71d-d2e0c48550b6', 'To Be Different', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '578425b1-2d05-4f47-a71d-d2e0c48550b6' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Be Wrong'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('578425b1-2d05-4f47-a71d-d2e0c48550b6', 'To Be Wrong', false, true);
  END IF;

  -- [VOCABULARY] 量る (Level 24)
  UPDATE item_meanings SET meaning = 'Mengukur', primary_meaning = true, accepted_answer = true WHERE id = '82b274ed-29e1-4f3f-ab4a-17dfeaeb80b8';
  UPDATE items SET slug = 'mengukur' WHERE id = '792a593a-8d1b-4e49-be46-122082f38737';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '792a593a-8d1b-4e49-be46-122082f38737' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Menimbang'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('792a593a-8d1b-4e49-be46-122082f38737', 'Menimbang', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '792a593a-8d1b-4e49-be46-122082f38737' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Takir'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('792a593a-8d1b-4e49-be46-122082f38737', 'Takir', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '792a593a-8d1b-4e49-be46-122082f38737' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Measure'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('792a593a-8d1b-4e49-be46-122082f38737', 'To Measure', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '792a593a-8d1b-4e49-be46-122082f38737' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Weigh'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('792a593a-8d1b-4e49-be46-122082f38737', 'To Weigh', false, true);
  END IF;

  -- [VOCABULARY] 額 (Level 24)
  UPDATE item_meanings SET meaning = 'Jumlah Uang', primary_meaning = true, accepted_answer = true WHERE id = '4b4c1f9f-07b2-472e-999f-48608324b8e2';
  UPDATE items SET slug = 'jumlah-uang' WHERE id = '1111a7c5-0632-4f0f-bed9-9cb0f765ab3b';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '1111a7c5-0632-4f0f-bed9-9cb0f765ab3b' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Dahi'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('1111a7c5-0632-4f0f-bed9-9cb0f765ab3b', 'Dahi', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '1111a7c5-0632-4f0f-bed9-9cb0f765ab3b' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Bingkai'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('1111a7c5-0632-4f0f-bed9-9cb0f765ab3b', 'Bingkai', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '1111a7c5-0632-4f0f-bed9-9cb0f765ab3b' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Nominal'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('1111a7c5-0632-4f0f-bed9-9cb0f765ab3b', 'Nominal', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '1111a7c5-0632-4f0f-bed9-9cb0f765ab3b' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Amount'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('1111a7c5-0632-4f0f-bed9-9cb0f765ab3b', 'Amount', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '1111a7c5-0632-4f0f-bed9-9cb0f765ab3b' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Forehead'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('1111a7c5-0632-4f0f-bed9-9cb0f765ab3b', 'Forehead', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '1111a7c5-0632-4f0f-bed9-9cb0f765ab3b' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Frame'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('1111a7c5-0632-4f0f-bed9-9cb0f765ab3b', 'Frame', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '1111a7c5-0632-4f0f-bed9-9cb0f765ab3b' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Bingkai Foto'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('1111a7c5-0632-4f0f-bed9-9cb0f765ab3b', 'Bingkai Foto', false, true);
  END IF;

END $$;
