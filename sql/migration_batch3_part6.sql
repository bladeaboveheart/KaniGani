-- Migration: Batch 3 Part 6 (Level 36)
-- Total items: 85

DO $$
BEGIN

  -- [KANJI] 伎 (Level 36)
  UPDATE item_meanings SET meaning = 'Keahlian Seni', primary_meaning = true, accepted_answer = true WHERE id = 'e9172bb1-3221-413c-ae31-d2813e3d79bb';
  UPDATE items SET slug = 'keahlian-seni' WHERE id = '0c3ec329-5873-4dc7-b3bf-b66abc1a94f7';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '0c3ec329-5873-4dc7-b3bf-b66abc1a94f7' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Pertunjukan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('0c3ec329-5873-4dc7-b3bf-b66abc1a94f7', 'Pertunjukan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '0c3ec329-5873-4dc7-b3bf-b66abc1a94f7' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Deed'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('0c3ec329-5873-4dc7-b3bf-b66abc1a94f7', 'Deed', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '0c3ec329-5873-4dc7-b3bf-b66abc1a94f7' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Skill'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('0c3ec329-5873-4dc7-b3bf-b66abc1a94f7', 'Skill', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '0c3ec329-5873-4dc7-b3bf-b66abc1a94f7' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Art'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('0c3ec329-5873-4dc7-b3bf-b66abc1a94f7', 'Art', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '0c3ec329-5873-4dc7-b3bf-b66abc1a94f7' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Akta'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('0c3ec329-5873-4dc7-b3bf-b66abc1a94f7', 'Akta', false, true);
  END IF;

  -- [KANJI] 伸 (Level 36)
  UPDATE item_meanings SET meaning = 'Meregang', primary_meaning = true, accepted_answer = true WHERE id = '5eb71020-4b42-4eab-a2af-2060b8b702b7';
  UPDATE items SET slug = 'meregang' WHERE id = 'cf6b6316-b8f7-48c5-8491-dcc1841a36ba';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'cf6b6316-b8f7-48c5-8491-dcc1841a36ba' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Tumbuh Memanjang'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('cf6b6316-b8f7-48c5-8491-dcc1841a36ba', 'Tumbuh Memanjang', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'cf6b6316-b8f7-48c5-8491-dcc1841a36ba' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Stretch'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('cf6b6316-b8f7-48c5-8491-dcc1841a36ba', 'Stretch', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'cf6b6316-b8f7-48c5-8491-dcc1841a36ba' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Extend'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('cf6b6316-b8f7-48c5-8491-dcc1841a36ba', 'Extend', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'cf6b6316-b8f7-48c5-8491-dcc1841a36ba' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Menggeliat'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('cf6b6316-b8f7-48c5-8491-dcc1841a36ba', 'Menggeliat', false, true);
  END IF;

  -- [KANJI] 依 (Level 36)
  UPDATE item_meanings SET meaning = 'Bergantung', primary_meaning = true, accepted_answer = true WHERE id = '82035742-fc4a-4ba9-978b-2efb63e97201';
  UPDATE items SET slug = 'bergantung' WHERE id = '7a6face9-07fa-4ab8-b7df-e2a5015286b7';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '7a6face9-07fa-4ab8-b7df-e2a5015286b7' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Bersandar Pada'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('7a6face9-07fa-4ab8-b7df-e2a5015286b7', 'Bersandar Pada', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '7a6face9-07fa-4ab8-b7df-e2a5015286b7' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Depend On'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('7a6face9-07fa-4ab8-b7df-e2a5015286b7', 'Depend On', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '7a6face9-07fa-4ab8-b7df-e2a5015286b7' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Rely On'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('7a6face9-07fa-4ab8-b7df-e2a5015286b7', 'Rely On', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '7a6face9-07fa-4ab8-b7df-e2a5015286b7' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Dependent'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('7a6face9-07fa-4ab8-b7df-e2a5015286b7', 'Dependent', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '7a6face9-07fa-4ab8-b7df-e2a5015286b7' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Reliant'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('7a6face9-07fa-4ab8-b7df-e2a5015286b7', 'Reliant', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '7a6face9-07fa-4ab8-b7df-e2a5015286b7' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Depend'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('7a6face9-07fa-4ab8-b7df-e2a5015286b7', 'Depend', false, true);
  END IF;

  -- [KANJI] 債 (Level 36)
  UPDATE item_meanings SET meaning = 'Surat Utang', primary_meaning = true, accepted_answer = true WHERE id = '5f503485-31c6-4476-8a0a-99ff75326480';
  UPDATE items SET slug = 'surat-utang' WHERE id = '8f8c0449-bdb7-40b9-a0ac-729172945741';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '8f8c0449-bdb7-40b9-a0ac-729172945741' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Obligasi'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('8f8c0449-bdb7-40b9-a0ac-729172945741', 'Obligasi', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '8f8c0449-bdb7-40b9-a0ac-729172945741' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Utang'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('8f8c0449-bdb7-40b9-a0ac-729172945741', 'Utang', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '8f8c0449-bdb7-40b9-a0ac-729172945741' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Debt'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('8f8c0449-bdb7-40b9-a0ac-729172945741', 'Debt', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '8f8c0449-bdb7-40b9-a0ac-729172945741' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Bond'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('8f8c0449-bdb7-40b9-a0ac-729172945741', 'Bond', false, true);
  END IF;

  -- [KANJI] 及 (Level 36)
  UPDATE item_meanings SET meaning = 'Mencapai', primary_meaning = true, accepted_answer = true WHERE id = 'b73f1f8c-9126-4ba2-85d3-06ef780bda3c';
  UPDATE items SET slug = 'mencapai' WHERE id = '084f5969-f2ce-4a0f-915d-4f612aedbc7c';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '084f5969-f2ce-4a0f-915d-4f612aedbc7c' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Merambah'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('084f5969-f2ce-4a0f-915d-4f612aedbc7c', 'Merambah', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '084f5969-f2ce-4a0f-915d-4f612aedbc7c' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Serta'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('084f5969-f2ce-4a0f-915d-4f612aedbc7c', 'Serta', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '084f5969-f2ce-4a0f-915d-4f612aedbc7c' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Reach'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('084f5969-f2ce-4a0f-915d-4f612aedbc7c', 'Reach', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '084f5969-f2ce-4a0f-915d-4f612aedbc7c' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Extend To'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('084f5969-f2ce-4a0f-915d-4f612aedbc7c', 'Extend To', false, true);
  END IF;

  -- [KANJI] 叔 (Level 36)
  UPDATE item_meanings SET meaning = 'Paman Muda', primary_meaning = true, accepted_answer = true WHERE id = 'fc33ca19-d0d5-444c-910c-cdfb737ff7b2';
  UPDATE items SET slug = 'paman-muda' WHERE id = 'd2c5695b-ea34-47ab-a6ae-d8a276dc9bfd';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'd2c5695b-ea34-47ab-a6ae-d8a276dc9bfd' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Bibi Muda'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('d2c5695b-ea34-47ab-a6ae-d8a276dc9bfd', 'Bibi Muda', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'd2c5695b-ea34-47ab-a6ae-d8a276dc9bfd' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Uncle'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('d2c5695b-ea34-47ab-a6ae-d8a276dc9bfd', 'Uncle', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'd2c5695b-ea34-47ab-a6ae-d8a276dc9bfd' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Aunt'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('d2c5695b-ea34-47ab-a6ae-d8a276dc9bfd', 'Aunt', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'd2c5695b-ea34-47ab-a6ae-d8a276dc9bfd' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Paman'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('d2c5695b-ea34-47ab-a6ae-d8a276dc9bfd', 'Paman', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'd2c5695b-ea34-47ab-a6ae-d8a276dc9bfd' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Tante'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('d2c5695b-ea34-47ab-a6ae-d8a276dc9bfd', 'Tante', false, true);
  END IF;

  -- [KANJI] 奈 (Level 36)
  UPDATE item_meanings SET meaning = 'Nara', primary_meaning = true, accepted_answer = true WHERE id = 'd0333e70-a50c-4a3e-bce5-a37af6770de2';
  UPDATE items SET slug = 'nara' WHERE id = 'bee56c0f-3c69-4c77-9c90-3e79d9a54258';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'bee56c0f-3c69-4c77-9c90-3e79d9a54258' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Apa'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('bee56c0f-3c69-4c77-9c90-3e79d9a54258', 'Apa', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'bee56c0f-3c69-4c77-9c90-3e79d9a54258' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Bagaimana'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('bee56c0f-3c69-4c77-9c90-3e79d9a54258', 'Bagaimana', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'bee56c0f-3c69-4c77-9c90-3e79d9a54258' AND LOWER(TRIM(meaning)) = LOWER(TRIM('What'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('bee56c0f-3c69-4c77-9c90-3e79d9a54258', 'What', false, true);
  END IF;

  -- [KANJI] 姓 (Level 36)
  UPDATE item_meanings SET meaning = 'Nama Marga', primary_meaning = true, accepted_answer = true WHERE id = '5c54f0a2-52e1-4488-b62f-36373cece167';
  UPDATE items SET slug = 'nama-marga' WHERE id = 'c82929bf-e11d-43d7-95e6-b272a41d0d05';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'c82929bf-e11d-43d7-95e6-b272a41d0d05' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Nama Keluarga'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('c82929bf-e11d-43d7-95e6-b272a41d0d05', 'Nama Keluarga', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'c82929bf-e11d-43d7-95e6-b272a41d0d05' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Surname'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('c82929bf-e11d-43d7-95e6-b272a41d0d05', 'Surname', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'c82929bf-e11d-43d7-95e6-b272a41d0d05' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Family Name'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('c82929bf-e11d-43d7-95e6-b272a41d0d05', 'Family Name', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'c82929bf-e11d-43d7-95e6-b272a41d0d05' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Nama belakang'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('c82929bf-e11d-43d7-95e6-b272a41d0d05', 'Nama belakang', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'c82929bf-e11d-43d7-95e6-b272a41d0d05' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Last Name'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('c82929bf-e11d-43d7-95e6-b272a41d0d05', 'Last Name', false, true);
  END IF;

  -- [KANJI] 将 (Level 36)
  UPDATE item_meanings SET meaning = 'Panglima', primary_meaning = true, accepted_answer = true WHERE id = 'c27f9bb3-4c11-4c78-ab91-3f4f34698e36';
  UPDATE items SET slug = 'panglima' WHERE id = '32f48770-c241-42af-ad54-98f554e5912e';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '32f48770-c241-42af-ad54-98f554e5912e' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Komandan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('32f48770-c241-42af-ad54-98f554e5912e', 'Komandan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '32f48770-c241-42af-ad54-98f554e5912e' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Jenderal'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('32f48770-c241-42af-ad54-98f554e5912e', 'Jenderal', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '32f48770-c241-42af-ad54-98f554e5912e' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Commander'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('32f48770-c241-42af-ad54-98f554e5912e', 'Commander', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '32f48770-c241-42af-ad54-98f554e5912e' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Masa Depan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('32f48770-c241-42af-ad54-98f554e5912e', 'Masa Depan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '32f48770-c241-42af-ad54-98f554e5912e' AND LOWER(TRIM(meaning)) = LOWER(TRIM('General'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('32f48770-c241-42af-ad54-98f554e5912e', 'General', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '32f48770-c241-42af-ad54-98f554e5912e' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Future'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('32f48770-c241-42af-ad54-98f554e5912e', 'Future', false, true);
  END IF;

  -- [KANJI] 幅 (Level 36)
  UPDATE item_meanings SET meaning = 'Lebar', primary_meaning = true, accepted_answer = true WHERE id = '420cef60-b681-41e1-b8f5-e84cda3d4675';
  UPDATE items SET slug = 'lebar' WHERE id = '36fa3da7-0cc3-4457-9c6e-d2d9a38b0a42';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '36fa3da7-0cc3-4457-9c6e-d2d9a38b0a42' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Rentang Jangkauan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('36fa3da7-0cc3-4457-9c6e-d2d9a38b0a42', 'Rentang Jangkauan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '36fa3da7-0cc3-4457-9c6e-d2d9a38b0a42' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Width'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('36fa3da7-0cc3-4457-9c6e-d2d9a38b0a42', 'Width', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '36fa3da7-0cc3-4457-9c6e-d2d9a38b0a42' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Breadth'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('36fa3da7-0cc3-4457-9c6e-d2d9a38b0a42', 'Breadth', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '36fa3da7-0cc3-4457-9c6e-d2d9a38b0a42' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Range'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('36fa3da7-0cc3-4457-9c6e-d2d9a38b0a42', 'Range', false, true);
  END IF;

  -- [KANJI] 廃 (Level 36)
  UPDATE item_meanings SET meaning = 'Usang', primary_meaning = true, accepted_answer = true WHERE id = '49fc5a2a-548b-4ef5-8c85-d7cd4816b724';
  UPDATE items SET slug = 'usang' WHERE id = '76d3753e-57f7-4345-bab8-8b618b9cf058';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '76d3753e-57f7-4345-bab8-8b618b9cf058' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Menghapuskan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('76d3753e-57f7-4345-bab8-8b618b9cf058', 'Menghapuskan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '76d3753e-57f7-4345-bab8-8b618b9cf058' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Terbengkalai'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('76d3753e-57f7-4345-bab8-8b618b9cf058', 'Terbengkalai', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '76d3753e-57f7-4345-bab8-8b618b9cf058' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Obsolete'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('76d3753e-57f7-4345-bab8-8b618b9cf058', 'Obsolete', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '76d3753e-57f7-4345-bab8-8b618b9cf058' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Abolish'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('76d3753e-57f7-4345-bab8-8b618b9cf058', 'Abolish', false, true);
  END IF;

  -- [KANJI] 換 (Level 36)
  UPDATE item_meanings SET meaning = 'Menukar', primary_meaning = true, accepted_answer = true WHERE id = '714f1d82-ca51-4a83-980c-85fd0c558fdd';
  UPDATE items SET slug = 'menukar' WHERE id = 'aaf324f1-83cd-415a-8740-b10ec90dd72f';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'aaf324f1-83cd-415a-8740-b10ec90dd72f' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Mengganti'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('aaf324f1-83cd-415a-8740-b10ec90dd72f', 'Mengganti', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'aaf324f1-83cd-415a-8740-b10ec90dd72f' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Exchange'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('aaf324f1-83cd-415a-8740-b10ec90dd72f', 'Exchange', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'aaf324f1-83cd-415a-8740-b10ec90dd72f' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Swap'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('aaf324f1-83cd-415a-8740-b10ec90dd72f', 'Swap', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'aaf324f1-83cd-415a-8740-b10ec90dd72f' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Menukarkan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('aaf324f1-83cd-415a-8740-b10ec90dd72f', 'Menukarkan', false, true);
  END IF;

  -- [KANJI] 摘 (Level 36)
  UPDATE item_meanings SET meaning = 'Memetik', primary_meaning = true, accepted_answer = true WHERE id = '80bbd608-953c-4e78-8db2-54df5e67ae99';
  UPDATE items SET slug = 'memetik' WHERE id = '6e34b336-a15a-45cd-af03-5c71102a3ede';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '6e34b336-a15a-45cd-af03-5c71102a3ede' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Mencomot'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('6e34b336-a15a-45cd-af03-5c71102a3ede', 'Mencomot', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '6e34b336-a15a-45cd-af03-5c71102a3ede' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Menunjuk'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('6e34b336-a15a-45cd-af03-5c71102a3ede', 'Menunjuk', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '6e34b336-a15a-45cd-af03-5c71102a3ede' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Pluck'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('6e34b336-a15a-45cd-af03-5c71102a3ede', 'Pluck', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '6e34b336-a15a-45cd-af03-5c71102a3ede' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Pick'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('6e34b336-a15a-45cd-af03-5c71102a3ede', 'Pick', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '6e34b336-a15a-45cd-af03-5c71102a3ede' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Point Out'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('6e34b336-a15a-45cd-af03-5c71102a3ede', 'Point Out', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '6e34b336-a15a-45cd-af03-5c71102a3ede' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Pinch'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('6e34b336-a15a-45cd-af03-5c71102a3ede', 'Pinch', false, true);
  END IF;

  -- [KANJI] 旧 (Level 36)
  UPDATE item_meanings SET meaning = 'Kuno', primary_meaning = true, accepted_answer = true WHERE id = '1531b66b-e3b1-4bcb-80b5-17eaa6293a84';
  UPDATE items SET slug = 'kuno' WHERE id = '31d846e0-bf93-45ad-a70e-af35391ac10a';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '31d846e0-bf93-45ad-a70e-af35391ac10a' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Lama'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('31d846e0-bf93-45ad-a70e-af35391ac10a', 'Lama', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '31d846e0-bf93-45ad-a70e-af35391ac10a' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Terdahulu'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('31d846e0-bf93-45ad-a70e-af35391ac10a', 'Terdahulu', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '31d846e0-bf93-45ad-a70e-af35391ac10a' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Former'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('31d846e0-bf93-45ad-a70e-af35391ac10a', 'Former', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '31d846e0-bf93-45ad-a70e-af35391ac10a' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Old'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('31d846e0-bf93-45ad-a70e-af35391ac10a', 'Old', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '31d846e0-bf93-45ad-a70e-af35391ac10a' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Mantan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('31d846e0-bf93-45ad-a70e-af35391ac10a', 'Mantan', false, true);
  END IF;

  -- [KANJI] 核 (Level 36)
  UPDATE item_meanings SET meaning = 'Inti Atom', primary_meaning = true, accepted_answer = true WHERE id = '707891b4-fe43-4f4c-884b-11da6321abdb';
  UPDATE items SET slug = 'inti-atom' WHERE id = '60a8f1db-9ded-4501-8165-5533db9ba078';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '60a8f1db-9ded-4501-8165-5533db9ba078' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Nuklir'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('60a8f1db-9ded-4501-8165-5533db9ba078', 'Nuklir', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '60a8f1db-9ded-4501-8165-5533db9ba078' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Inti Pokok'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('60a8f1db-9ded-4501-8165-5533db9ba078', 'Inti Pokok', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '60a8f1db-9ded-4501-8165-5533db9ba078' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Nucleus'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('60a8f1db-9ded-4501-8165-5533db9ba078', 'Nucleus', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '60a8f1db-9ded-4501-8165-5533db9ba078' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Core'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('60a8f1db-9ded-4501-8165-5533db9ba078', 'Core', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '60a8f1db-9ded-4501-8165-5533db9ba078' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Nuclear'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('60a8f1db-9ded-4501-8165-5533db9ba078', 'Nuclear', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '60a8f1db-9ded-4501-8165-5533db9ba078' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Inti'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('60a8f1db-9ded-4501-8165-5533db9ba078', 'Inti', false, true);
  END IF;

  -- [KANJI] 沖 (Level 36)
  UPDATE item_meanings SET meaning = 'Laut Lepas', primary_meaning = true, accepted_answer = true WHERE id = '80ff0dd5-8351-4f30-9cae-f48873d09377';
  UPDATE items SET slug = 'laut-lepas' WHERE id = 'a14f5db7-71b9-4219-bbc4-4ba0ac9b2eb7';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'a14f5db7-71b9-4219-bbc4-4ba0ac9b2eb7' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Lepas Pantai'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('a14f5db7-71b9-4219-bbc4-4ba0ac9b2eb7', 'Lepas Pantai', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'a14f5db7-71b9-4219-bbc4-4ba0ac9b2eb7' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Open Sea'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('a14f5db7-71b9-4219-bbc4-4ba0ac9b2eb7', 'Open Sea', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'a14f5db7-71b9-4219-bbc4-4ba0ac9b2eb7' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Offshore'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('a14f5db7-71b9-4219-bbc4-4ba0ac9b2eb7', 'Offshore', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'a14f5db7-71b9-4219-bbc4-4ba0ac9b2eb7' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Laut Terbuka'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('a14f5db7-71b9-4219-bbc4-4ba0ac9b2eb7', 'Laut Terbuka', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'a14f5db7-71b9-4219-bbc4-4ba0ac9b2eb7' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Open Water'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('a14f5db7-71b9-4219-bbc4-4ba0ac9b2eb7', 'Open Water', false, true);
  END IF;

  -- [KANJI] 津 (Level 36)
  UPDATE item_meanings SET meaning = 'Pelabuhan Teluk', primary_meaning = true, accepted_answer = true WHERE id = '835d6e73-12b7-4598-a0f3-51a275a5efa0';
  UPDATE items SET slug = 'pelabuhan-teluk' WHERE id = '4bfc53da-1c5e-4352-bb5c-b0f147605d18';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '4bfc53da-1c5e-4352-bb5c-b0f147605d18' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Muara Air'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('4bfc53da-1c5e-4352-bb5c-b0f147605d18', 'Muara Air', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '4bfc53da-1c5e-4352-bb5c-b0f147605d18' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Harbor'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('4bfc53da-1c5e-4352-bb5c-b0f147605d18', 'Harbor', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '4bfc53da-1c5e-4352-bb5c-b0f147605d18' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Port'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('4bfc53da-1c5e-4352-bb5c-b0f147605d18', 'Port', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '4bfc53da-1c5e-4352-bb5c-b0f147605d18' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Pelabuhan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('4bfc53da-1c5e-4352-bb5c-b0f147605d18', 'Pelabuhan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '4bfc53da-1c5e-4352-bb5c-b0f147605d18' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Haven'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('4bfc53da-1c5e-4352-bb5c-b0f147605d18', 'Haven', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '4bfc53da-1c5e-4352-bb5c-b0f147605d18' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Harbour'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('4bfc53da-1c5e-4352-bb5c-b0f147605d18', 'Harbour', false, true);
  END IF;

  -- [KANJI] 湧 (Level 36)
  UPDATE item_meanings SET meaning = 'Memancar', primary_meaning = true, accepted_answer = true WHERE id = 'e6684a96-44c8-4fca-b971-53d832538c1c';
  UPDATE items SET slug = 'memancar' WHERE id = '7fac6f07-b796-439c-b689-690ed01bbaf4';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '7fac6f07-b796-439c-b689-690ed01bbaf4' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Membual'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('7fac6f07-b796-439c-b689-690ed01bbaf4', 'Membual', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '7fac6f07-b796-439c-b689-690ed01bbaf4' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Mata Air'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('7fac6f07-b796-439c-b689-690ed01bbaf4', 'Mata Air', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '7fac6f07-b796-439c-b689-690ed01bbaf4' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Gush'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('7fac6f07-b796-439c-b689-690ed01bbaf4', 'Gush', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '7fac6f07-b796-439c-b689-690ed01bbaf4' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Spring'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('7fac6f07-b796-439c-b689-690ed01bbaf4', 'Spring', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '7fac6f07-b796-439c-b689-690ed01bbaf4' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Membual Keluar'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('7fac6f07-b796-439c-b689-690ed01bbaf4', 'Membual Keluar', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '7fac6f07-b796-439c-b689-690ed01bbaf4' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Spring Up'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('7fac6f07-b796-439c-b689-690ed01bbaf4', 'Spring Up', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '7fac6f07-b796-439c-b689-690ed01bbaf4' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Gush Out'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('7fac6f07-b796-439c-b689-690ed01bbaf4', 'Gush Out', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '7fac6f07-b796-439c-b689-690ed01bbaf4' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Well Up'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('7fac6f07-b796-439c-b689-690ed01bbaf4', 'Well Up', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '7fac6f07-b796-439c-b689-690ed01bbaf4' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Baik'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('7fac6f07-b796-439c-b689-690ed01bbaf4', 'Baik', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '7fac6f07-b796-439c-b689-690ed01bbaf4' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Spring Out'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('7fac6f07-b796-439c-b689-690ed01bbaf4', 'Spring Out', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '7fac6f07-b796-439c-b689-690ed01bbaf4' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Appear'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('7fac6f07-b796-439c-b689-690ed01bbaf4', 'Appear', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '7fac6f07-b796-439c-b689-690ed01bbaf4' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Surge'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('7fac6f07-b796-439c-b689-690ed01bbaf4', 'Surge', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '7fac6f07-b796-439c-b689-690ed01bbaf4' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Gush Forth'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('7fac6f07-b796-439c-b689-690ed01bbaf4', 'Gush Forth', false, true);
  END IF;

  -- [KANJI] 漬 (Level 36)
  UPDATE item_meanings SET meaning = 'Merendam', primary_meaning = true, accepted_answer = true WHERE id = 'e597ebca-ba48-43a0-ba80-7c52ccf774a6';
  UPDATE items SET slug = 'merendam' WHERE id = '8d6e4035-6bc4-4760-b540-d8dfd340e109';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '8d6e4035-6bc4-4760-b540-d8dfd340e109' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Mengasinkan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('8d6e4035-6bc4-4760-b540-d8dfd340e109', 'Mengasinkan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '8d6e4035-6bc4-4760-b540-d8dfd340e109' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Acar'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('8d6e4035-6bc4-4760-b540-d8dfd340e109', 'Acar', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '8d6e4035-6bc4-4760-b540-d8dfd340e109' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Pickle'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('8d6e4035-6bc4-4760-b540-d8dfd340e109', 'Pickle', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '8d6e4035-6bc4-4760-b540-d8dfd340e109' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Marinate'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('8d6e4035-6bc4-4760-b540-d8dfd340e109', 'Marinate', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '8d6e4035-6bc4-4760-b540-d8dfd340e109' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Soak'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('8d6e4035-6bc4-4760-b540-d8dfd340e109', 'Soak', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '8d6e4035-6bc4-4760-b540-d8dfd340e109' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Be Marinated'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('8d6e4035-6bc4-4760-b540-d8dfd340e109', 'Be Marinated', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '8d6e4035-6bc4-4760-b540-d8dfd340e109' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Be Pickled'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('8d6e4035-6bc4-4760-b540-d8dfd340e109', 'Be Pickled', false, true);
  END IF;

  -- [KANJI] 炒 (Level 36)
  UPDATE item_meanings SET meaning = 'Menumis', primary_meaning = true, accepted_answer = true WHERE id = '1b8593ab-3353-4d90-bc59-3f13ef2e5fea';
  UPDATE items SET slug = 'menumis' WHERE id = '2fe001a9-dc1a-4d43-938a-8b75b339fc23';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '2fe001a9-dc1a-4d43-938a-8b75b339fc23' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Mengoseng'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('2fe001a9-dc1a-4d43-938a-8b75b339fc23', 'Mengoseng', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '2fe001a9-dc1a-4d43-938a-8b75b339fc23' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Menggoreng'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('2fe001a9-dc1a-4d43-938a-8b75b339fc23', 'Menggoreng', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '2fe001a9-dc1a-4d43-938a-8b75b339fc23' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Stir-Fry'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('2fe001a9-dc1a-4d43-938a-8b75b339fc23', 'Stir-Fry', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '2fe001a9-dc1a-4d43-938a-8b75b339fc23' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Fry'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('2fe001a9-dc1a-4d43-938a-8b75b339fc23', 'Fry', false, true);
  END IF;

  -- [KANJI] 牙 (Level 36)
  UPDATE item_meanings SET meaning = 'Taring', primary_meaning = true, accepted_answer = true WHERE id = 'b3e9548c-bbaa-4983-a386-256a52260b93';
  UPDATE items SET slug = 'taring' WHERE id = '811d8c24-21d8-465a-b1a1-cffd77f485a7';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '811d8c24-21d8-465a-b1a1-cffd77f485a7' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Gading'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('811d8c24-21d8-465a-b1a1-cffd77f485a7', 'Gading', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '811d8c24-21d8-465a-b1a1-cffd77f485a7' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Fang'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('811d8c24-21d8-465a-b1a1-cffd77f485a7', 'Fang', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '811d8c24-21d8-465a-b1a1-cffd77f485a7' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Tusk'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('811d8c24-21d8-465a-b1a1-cffd77f485a7', 'Tusk', false, true);
  END IF;

  -- [KANJI] 献 (Level 36)
  UPDATE item_meanings SET meaning = 'Mempersembahkan', primary_meaning = true, accepted_answer = true WHERE id = '3a2fc352-8dca-464e-a718-2f679425fc30';
  UPDATE items SET slug = 'mempersembahkan' WHERE id = 'd568a3c3-e9d5-4327-ae61-308c3280d0aa';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'd568a3c3-e9d5-4327-ae61-308c3280d0aa' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Menyumbang'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('d568a3c3-e9d5-4327-ae61-308c3280d0aa', 'Menyumbang', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'd568a3c3-e9d5-4327-ae61-308c3280d0aa' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Offer'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('d568a3c3-e9d5-4327-ae61-308c3280d0aa', 'Offer', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'd568a3c3-e9d5-4327-ae61-308c3280d0aa' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Donate'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('d568a3c3-e9d5-4327-ae61-308c3280d0aa', 'Donate', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'd568a3c3-e9d5-4327-ae61-308c3280d0aa' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Present'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('d568a3c3-e9d5-4327-ae61-308c3280d0aa', 'Present', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'd568a3c3-e9d5-4327-ae61-308c3280d0aa' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Menawarkan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('d568a3c3-e9d5-4327-ae61-308c3280d0aa', 'Menawarkan', false, true);
  END IF;

  -- [KANJI] 甘 (Level 36)
  UPDATE item_meanings SET meaning = 'Manis', primary_meaning = true, accepted_answer = true WHERE id = 'ddccde58-18d2-4943-b0de-6de7fb773777';
  UPDATE items SET slug = 'manis' WHERE id = '29313888-6aff-40ce-baae-1e828730effb';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '29313888-6aff-40ce-baae-1e828730effb' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Manja'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('29313888-6aff-40ce-baae-1e828730effb', 'Manja', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '29313888-6aff-40ce-baae-1e828730effb' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Naif'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('29313888-6aff-40ce-baae-1e828730effb', 'Naif', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '29313888-6aff-40ce-baae-1e828730effb' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Sweet'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('29313888-6aff-40ce-baae-1e828730effb', 'Sweet', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '29313888-6aff-40ce-baae-1e828730effb' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Indulgent'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('29313888-6aff-40ce-baae-1e828730effb', 'Indulgent', false, true);
  END IF;

  -- [KANJI] 療 (Level 36)
  UPDATE item_meanings SET meaning = 'Penyembuhan', primary_meaning = true, accepted_answer = true WHERE id = 'd8ad419b-0b1b-4853-a9fc-68f9d5894a1a';
  UPDATE items SET slug = 'penyembuhan' WHERE id = '18a04f3e-84c2-4c7f-a087-f5cdf77896df';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '18a04f3e-84c2-4c7f-a087-f5cdf77896df' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Pengobatan Medis'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('18a04f3e-84c2-4c7f-a087-f5cdf77896df', 'Pengobatan Medis', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '18a04f3e-84c2-4c7f-a087-f5cdf77896df' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Cure'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('18a04f3e-84c2-4c7f-a087-f5cdf77896df', 'Cure', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '18a04f3e-84c2-4c7f-a087-f5cdf77896df' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Heal'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('18a04f3e-84c2-4c7f-a087-f5cdf77896df', 'Heal', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '18a04f3e-84c2-4c7f-a087-f5cdf77896df' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Therapy'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('18a04f3e-84c2-4c7f-a087-f5cdf77896df', 'Therapy', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '18a04f3e-84c2-4c7f-a087-f5cdf77896df' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Sembuh'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('18a04f3e-84c2-4c7f-a087-f5cdf77896df', 'Sembuh', false, true);
  END IF;

  -- [KANJI] 盟 (Level 36)
  UPDATE item_meanings SET meaning = 'Persekutuan', primary_meaning = true, accepted_answer = true WHERE id = '3be09d1f-4e52-4a68-93f0-30fb5ff0e113';
  UPDATE items SET slug = 'persekutuan' WHERE id = '7fdcc1fc-5667-4cd8-a02b-ee69beb3d2e5';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '7fdcc1fc-5667-4cd8-a02b-ee69beb3d2e5' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Ikatan Sumpah'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('7fdcc1fc-5667-4cd8-a02b-ee69beb3d2e5', 'Ikatan Sumpah', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '7fdcc1fc-5667-4cd8-a02b-ee69beb3d2e5' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Alliance'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('7fdcc1fc-5667-4cd8-a02b-ee69beb3d2e5', 'Alliance', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '7fdcc1fc-5667-4cd8-a02b-ee69beb3d2e5' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Pact'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('7fdcc1fc-5667-4cd8-a02b-ee69beb3d2e5', 'Pact', false, true);
  END IF;

  -- [KANJI] 継 (Level 36)
  UPDATE item_meanings SET meaning = 'Mewarisi', primary_meaning = true, accepted_answer = true WHERE id = '210bf054-19c0-42e5-a9aa-1115bad15ccb';
  UPDATE items SET slug = 'mewarisi' WHERE id = '710e4da1-9a60-4bdf-a9ca-a9d63ba7b53a';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '710e4da1-9a60-4bdf-a9ca-a9d63ba7b53a' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Meneruskan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('710e4da1-9a60-4bdf-a9ca-a9d63ba7b53a', 'Meneruskan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '710e4da1-9a60-4bdf-a9ca-a9d63ba7b53a' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Inherit'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('710e4da1-9a60-4bdf-a9ca-a9d63ba7b53a', 'Inherit', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '710e4da1-9a60-4bdf-a9ca-a9d63ba7b53a' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Succeed'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('710e4da1-9a60-4bdf-a9ca-a9d63ba7b53a', 'Succeed', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '710e4da1-9a60-4bdf-a9ca-a9d63ba7b53a' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Continue'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('710e4da1-9a60-4bdf-a9ca-a9d63ba7b53a', 'Continue', false, true);
  END IF;

  -- [KANJI] 維 (Level 36)
  UPDATE item_meanings SET meaning = 'Memelihara', primary_meaning = true, accepted_answer = true WHERE id = 'a87d963c-51c1-44ea-8472-7e124c7d6f9e';
  UPDATE items SET slug = 'memelihara' WHERE id = '1286a524-e2af-4909-be43-42ef33cad8ad';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '1286a524-e2af-4909-be43-42ef33cad8ad' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Serat Ikatan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('1286a524-e2af-4909-be43-42ef33cad8ad', 'Serat Ikatan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '1286a524-e2af-4909-be43-42ef33cad8ad' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Maintain'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('1286a524-e2af-4909-be43-42ef33cad8ad', 'Maintain', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '1286a524-e2af-4909-be43-42ef33cad8ad' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Fiber'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('1286a524-e2af-4909-be43-42ef33cad8ad', 'Fiber', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '1286a524-e2af-4909-be43-42ef33cad8ad' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Menjaga'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('1286a524-e2af-4909-be43-42ef33cad8ad', 'Menjaga', false, true);
  END IF;

  -- [KANJI] 縄 (Level 36)
  UPDATE item_meanings SET meaning = 'Tali Tampar', primary_meaning = true, accepted_answer = true WHERE id = 'd7e9faba-ea38-4fe9-94cb-397b984ad69c';
  UPDATE items SET slug = 'tali-tampar' WHERE id = 'a968b2bc-86a7-4f2e-aa78-8187f20ef23f';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'a968b2bc-86a7-4f2e-aa78-8187f20ef23f' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Tambang'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('a968b2bc-86a7-4f2e-aa78-8187f20ef23f', 'Tambang', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'a968b2bc-86a7-4f2e-aa78-8187f20ef23f' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Rope'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('a968b2bc-86a7-4f2e-aa78-8187f20ef23f', 'Rope', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'a968b2bc-86a7-4f2e-aa78-8187f20ef23f' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Cord'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('a968b2bc-86a7-4f2e-aa78-8187f20ef23f', 'Cord', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'a968b2bc-86a7-4f2e-aa78-8187f20ef23f' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Tali'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('a968b2bc-86a7-4f2e-aa78-8187f20ef23f', 'Tali', false, true);
  END IF;

  -- [KANJI] 舞 (Level 36)
  UPDATE item_meanings SET meaning = 'Menari Tradisional', primary_meaning = true, accepted_answer = true WHERE id = '41048372-cb4d-41cd-9006-18d24325aa66';
  UPDATE items SET slug = 'menari-tradisional' WHERE id = 'e5821f19-a93b-42e8-bbca-8045cf189e5a';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'e5821f19-a93b-42e8-bbca-8045cf189e5a' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Tarian'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('e5821f19-a93b-42e8-bbca-8045cf189e5a', 'Tarian', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'e5821f19-a93b-42e8-bbca-8045cf189e5a' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Dance'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('e5821f19-a93b-42e8-bbca-8045cf189e5a', 'Dance', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'e5821f19-a93b-42e8-bbca-8045cf189e5a' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Flutter'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('e5821f19-a93b-42e8-bbca-8045cf189e5a', 'Flutter', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'e5821f19-a93b-42e8-bbca-8045cf189e5a' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Menari'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('e5821f19-a93b-42e8-bbca-8045cf189e5a', 'Menari', false, true);
  END IF;

  -- [KANJI] 般 (Level 36)
  UPDATE item_meanings SET meaning = 'Umum', primary_meaning = true, accepted_answer = true WHERE id = '1762b9f4-c222-4c9b-9aa0-7d79800c9aa9';
  UPDATE items SET slug = 'umum' WHERE id = '40a09aa0-3db2-46a8-aee8-8826b20030b1';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '40a09aa0-3db2-46a8-aee8-8826b20030b1' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Lazim'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('40a09aa0-3db2-46a8-aee8-8826b20030b1', 'Lazim', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '40a09aa0-3db2-46a8-aee8-8826b20030b1' AND LOWER(TRIM(meaning)) = LOWER(TRIM('General'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('40a09aa0-3db2-46a8-aee8-8826b20030b1', 'General', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '40a09aa0-3db2-46a8-aee8-8826b20030b1' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Umumnya'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('40a09aa0-3db2-46a8-aee8-8826b20030b1', 'Umumnya', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '40a09aa0-3db2-46a8-aee8-8826b20030b1' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Generally'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('40a09aa0-3db2-46a8-aee8-8826b20030b1', 'Generally', false, true);
  END IF;

  -- [KANJI] 諾 (Level 36)
  UPDATE item_meanings SET meaning = 'Persetujuan', primary_meaning = true, accepted_answer = true WHERE id = '0ed12891-fa97-4c4b-9c9b-f1fff0a89d4b';
  UPDATE items SET slug = 'persetujuan' WHERE id = 'f8d26804-5c48-4311-bacc-395ad4347e2a';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'f8d26804-5c48-4311-bacc-395ad4347e2a' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Menyanggupi'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('f8d26804-5c48-4311-bacc-395ad4347e2a', 'Menyanggupi', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'f8d26804-5c48-4311-bacc-395ad4347e2a' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Agreement'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('f8d26804-5c48-4311-bacc-395ad4347e2a', 'Agreement', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'f8d26804-5c48-4311-bacc-395ad4347e2a' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Consent'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('f8d26804-5c48-4311-bacc-395ad4347e2a', 'Consent', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'f8d26804-5c48-4311-bacc-395ad4347e2a' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Perjanjian'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('f8d26804-5c48-4311-bacc-395ad4347e2a', 'Perjanjian', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'f8d26804-5c48-4311-bacc-395ad4347e2a' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Agree'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('f8d26804-5c48-4311-bacc-395ad4347e2a', 'Agree', false, true);
  END IF;

  -- [KANJI] 超 (Level 36)
  UPDATE item_meanings SET meaning = 'Melampaui', primary_meaning = true, accepted_answer = true WHERE id = '3feefadd-796b-4290-aa62-6c0fb53a2c30';
  UPDATE items SET slug = 'melampaui' WHERE id = '23588d7c-83bd-4b39-8b33-fcf3d462d7f3';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '23588d7c-83bd-4b39-8b33-fcf3d462d7f3' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Super'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('23588d7c-83bd-4b39-8b33-fcf3d462d7f3', 'Super', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '23588d7c-83bd-4b39-8b33-fcf3d462d7f3' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Melebihi'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('23588d7c-83bd-4b39-8b33-fcf3d462d7f3', 'Melebihi', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '23588d7c-83bd-4b39-8b33-fcf3d462d7f3' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Ultra'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('23588d7c-83bd-4b39-8b33-fcf3d462d7f3', 'Ultra', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '23588d7c-83bd-4b39-8b33-fcf3d462d7f3' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Exceed'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('23588d7c-83bd-4b39-8b33-fcf3d462d7f3', 'Exceed', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '23588d7c-83bd-4b39-8b33-fcf3d462d7f3' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Sangat'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('23588d7c-83bd-4b39-8b33-fcf3d462d7f3', 'Sangat', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '23588d7c-83bd-4b39-8b33-fcf3d462d7f3' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Go Beyond'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('23588d7c-83bd-4b39-8b33-fcf3d462d7f3', 'Go Beyond', false, true);
  END IF;

  -- [KANJI] 踏 (Level 36)
  UPDATE item_meanings SET meaning = 'Menginjak', primary_meaning = true, accepted_answer = true WHERE id = 'd900af7b-3b96-4497-862d-915528975942';
  UPDATE items SET slug = 'menginjak' WHERE id = '6f82b6a4-8b4d-4b0d-a0c3-3cfec6c16638';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '6f82b6a4-8b4d-4b0d-a0c3-3cfec6c16638' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Menapakkan Kaki'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('6f82b6a4-8b4d-4b0d-a0c3-3cfec6c16638', 'Menapakkan Kaki', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '6f82b6a4-8b4d-4b0d-a0c3-3cfec6c16638' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Step On'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('6f82b6a4-8b4d-4b0d-a0c3-3cfec6c16638', 'Step On', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '6f82b6a4-8b4d-4b0d-a0c3-3cfec6c16638' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Tread'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('6f82b6a4-8b4d-4b0d-a0c3-3cfec6c16638', 'Tread', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '6f82b6a4-8b4d-4b0d-a0c3-3cfec6c16638' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Melangkah'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('6f82b6a4-8b4d-4b0d-a0c3-3cfec6c16638', 'Melangkah', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '6f82b6a4-8b4d-4b0d-a0c3-3cfec6c16638' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Step'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('6f82b6a4-8b4d-4b0d-a0c3-3cfec6c16638', 'Step', false, true);
  END IF;

  -- [KANJI] 遺 (Level 36)
  UPDATE item_meanings SET meaning = 'Meninggalkan Wafat', primary_meaning = true, accepted_answer = true WHERE id = '90ab9b78-7acd-40f7-b8cc-bd822e88dc47';
  UPDATE items SET slug = 'meninggalkan-wafat' WHERE id = '4d583533-d9fe-4c1d-b150-d3c4d99ae092';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '4d583533-d9fe-4c1d-b150-d3c4d99ae092' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Warisan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('4d583533-d9fe-4c1d-b150-d3c4d99ae092', 'Warisan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '4d583533-d9fe-4c1d-b150-d3c4d99ae092' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Leave Behind'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('4d583533-d9fe-4c1d-b150-d3c4d99ae092', 'Leave Behind', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '4d583533-d9fe-4c1d-b150-d3c4d99ae092' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Bequeath'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('4d583533-d9fe-4c1d-b150-d3c4d99ae092', 'Bequeath', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '4d583533-d9fe-4c1d-b150-d3c4d99ae092' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Meninggalkan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('4d583533-d9fe-4c1d-b150-d3c4d99ae092', 'Meninggalkan', false, true);
  END IF;

  -- [KANJI] 頼 (Level 36)
  UPDATE item_meanings SET meaning = 'Mengandalkan', primary_meaning = true, accepted_answer = true WHERE id = '6d7be246-6ac1-49b1-9759-fdfb61e7e578';
  UPDATE items SET slug = 'mengandalkan' WHERE id = 'eb7aedbf-7ff4-4675-8c74-e981bda30c1f';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'eb7aedbf-7ff4-4675-8c74-e981bda30c1f' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Memohon Tolong'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('eb7aedbf-7ff4-4675-8c74-e981bda30c1f', 'Memohon Tolong', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'eb7aedbf-7ff4-4675-8c74-e981bda30c1f' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Trust'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('eb7aedbf-7ff4-4675-8c74-e981bda30c1f', 'Trust', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'eb7aedbf-7ff4-4675-8c74-e981bda30c1f' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Rely'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('eb7aedbf-7ff4-4675-8c74-e981bda30c1f', 'Rely', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'eb7aedbf-7ff4-4675-8c74-e981bda30c1f' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Request'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('eb7aedbf-7ff4-4675-8c74-e981bda30c1f', 'Request', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'eb7aedbf-7ff4-4675-8c74-e981bda30c1f' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Memercayai'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('eb7aedbf-7ff4-4675-8c74-e981bda30c1f', 'Memercayai', false, true);
  END IF;

  -- [VOCABULARY] レントゲン (Level 36)
  UPDATE item_meanings SET meaning = 'Rontgen', primary_meaning = true, accepted_answer = true WHERE id = 'c36edc59-e47a-416e-acf1-79f753015dc7';
  UPDATE items SET slug = 'rontgen' WHERE id = 'a9119c31-9772-4386-b015-e3b1df77b663';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'a9119c31-9772-4386-b015-e3b1df77b663' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Foto Sinar-X'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('a9119c31-9772-4386-b015-e3b1df77b663', 'Foto Sinar-X', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'a9119c31-9772-4386-b015-e3b1df77b663' AND LOWER(TRIM(meaning)) = LOWER(TRIM('X-ray'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('a9119c31-9772-4386-b015-e3b1df77b663', 'X-ray', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'a9119c31-9772-4386-b015-e3b1df77b663' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Roentgen'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('a9119c31-9772-4386-b015-e3b1df77b663', 'Roentgen', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'a9119c31-9772-4386-b015-e3b1df77b663' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Rontgen / X-ray'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('a9119c31-9772-4386-b015-e3b1df77b663', 'Rontgen / X-ray', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'a9119c31-9772-4386-b015-e3b1df77b663' AND LOWER(TRIM(meaning)) = LOWER(TRIM('X-rays'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('a9119c31-9772-4386-b015-e3b1df77b663', 'X-rays', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'a9119c31-9772-4386-b015-e3b1df77b663' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Roentgen Rays'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('a9119c31-9772-4386-b015-e3b1df77b663', 'Roentgen Rays', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'a9119c31-9772-4386-b015-e3b1df77b663' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Röntgen'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('a9119c31-9772-4386-b015-e3b1df77b663', 'Röntgen', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'a9119c31-9772-4386-b015-e3b1df77b663' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Röntgen Rays'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('a9119c31-9772-4386-b015-e3b1df77b663', 'Röntgen Rays', false, true);
  END IF;

  -- [VOCABULARY] 主将 (Level 36)
  UPDATE item_meanings SET meaning = 'Kapten Tim', primary_meaning = true, accepted_answer = true WHERE id = 'b6f5810d-3f1a-4ac6-a043-a0a2d96db80c';
  UPDATE items SET slug = 'kapten-tim' WHERE id = '61de4d93-0863-4a70-a928-362075628fb5';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '61de4d93-0863-4a70-a928-362075628fb5' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Pemimpin Regu'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('61de4d93-0863-4a70-a928-362075628fb5', 'Pemimpin Regu', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '61de4d93-0863-4a70-a928-362075628fb5' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Komandan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('61de4d93-0863-4a70-a928-362075628fb5', 'Komandan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '61de4d93-0863-4a70-a928-362075628fb5' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Team Captain'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('61de4d93-0863-4a70-a928-362075628fb5', 'Team Captain', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '61de4d93-0863-4a70-a928-362075628fb5' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Captain'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('61de4d93-0863-4a70-a928-362075628fb5', 'Captain', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '61de4d93-0863-4a70-a928-362075628fb5' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Commander In Chief'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('61de4d93-0863-4a70-a928-362075628fb5', 'Commander In Chief', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '61de4d93-0863-4a70-a928-362075628fb5' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Panglima Tertinggi'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('61de4d93-0863-4a70-a928-362075628fb5', 'Panglima Tertinggi', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '61de4d93-0863-4a70-a928-362075628fb5' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Commander'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('61de4d93-0863-4a70-a928-362075628fb5', 'Commander', false, true);
  END IF;

  -- [VOCABULARY] 伸びる (Level 36)
  UPDATE item_meanings SET meaning = 'Tumbuh Memanjang', primary_meaning = true, accepted_answer = true WHERE id = '108345bb-b467-4fbe-9cf1-476cb2f37b63';
  UPDATE items SET slug = 'tumbuh-memanjang' WHERE id = 'df05fc2d-058d-4158-b5fd-9adcb2865a12';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'df05fc2d-058d-4158-b5fd-9adcb2865a12' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Berkembang Maju'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('df05fc2d-058d-4158-b5fd-9adcb2865a12', 'Berkembang Maju', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'df05fc2d-058d-4158-b5fd-9adcb2865a12' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Untuk Tumbuh Lebih Lama'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('df05fc2d-058d-4158-b5fd-9adcb2865a12', 'Untuk Tumbuh Lebih Lama', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'df05fc2d-058d-4158-b5fd-9adcb2865a12' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Stretch'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('df05fc2d-058d-4158-b5fd-9adcb2865a12', 'To Stretch', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'df05fc2d-058d-4158-b5fd-9adcb2865a12' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Grow Longer'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('df05fc2d-058d-4158-b5fd-9adcb2865a12', 'To Grow Longer', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'df05fc2d-058d-4158-b5fd-9adcb2865a12' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Increase'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('df05fc2d-058d-4158-b5fd-9adcb2865a12', 'To Increase', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'df05fc2d-058d-4158-b5fd-9adcb2865a12' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Untuk Diregangkan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('df05fc2d-058d-4158-b5fd-9adcb2865a12', 'Untuk Diregangkan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'df05fc2d-058d-4158-b5fd-9adcb2865a12' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Untuk Membuat Kemajuan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('df05fc2d-058d-4158-b5fd-9adcb2865a12', 'Untuk Membuat Kemajuan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'df05fc2d-058d-4158-b5fd-9adcb2865a12' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Untuk Meningkatkan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('df05fc2d-058d-4158-b5fd-9adcb2865a12', 'Untuk Meningkatkan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'df05fc2d-058d-4158-b5fd-9adcb2865a12' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Be Stretched'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('df05fc2d-058d-4158-b5fd-9adcb2865a12', 'To Be Stretched', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'df05fc2d-058d-4158-b5fd-9adcb2865a12' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Make Progress'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('df05fc2d-058d-4158-b5fd-9adcb2865a12', 'To Make Progress', false, true);
  END IF;

  -- [VOCABULARY] 債券 (Level 36)
  UPDATE item_meanings SET meaning = 'Obligasi', primary_meaning = true, accepted_answer = true WHERE id = '3f4cd156-a64b-4793-8bcd-8609b78f1520';
  UPDATE items SET slug = 'obligasi' WHERE id = '0f3317a9-da46-4aec-917b-e39be05519af';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '0f3317a9-da46-4aec-917b-e39be05519af' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Surat Utang Negara'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('0f3317a9-da46-4aec-917b-e39be05519af', 'Surat Utang Negara', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '0f3317a9-da46-4aec-917b-e39be05519af' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Menjalin kedekatan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('0f3317a9-da46-4aec-917b-e39be05519af', 'Menjalin kedekatan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '0f3317a9-da46-4aec-917b-e39be05519af' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Bond'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('0f3317a9-da46-4aec-917b-e39be05519af', 'Bond', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '0f3317a9-da46-4aec-917b-e39be05519af' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Debenture'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('0f3317a9-da46-4aec-917b-e39be05519af', 'Debenture', false, true);
  END IF;

  -- [VOCABULARY] 債権 (Level 36)
  UPDATE item_meanings SET meaning = 'Hak Tagih', primary_meaning = true, accepted_answer = true WHERE id = '9541c834-3950-4139-84ed-e561dd015329';
  UPDATE items SET slug = 'hak-tagih' WHERE id = 'f5d5367e-57d4-4103-8cd6-ca1e322cee87';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'f5d5367e-57d4-4103-8cd6-ca1e322cee87' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Piutang'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('f5d5367e-57d4-4103-8cd6-ca1e322cee87', 'Piutang', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'f5d5367e-57d4-4103-8cd6-ca1e322cee87' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Kredit'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('f5d5367e-57d4-4103-8cd6-ca1e322cee87', 'Kredit', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'f5d5367e-57d4-4103-8cd6-ca1e322cee87' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Credit'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('f5d5367e-57d4-4103-8cd6-ca1e322cee87', 'Credit', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'f5d5367e-57d4-4103-8cd6-ca1e322cee87' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Claim'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('f5d5367e-57d4-4103-8cd6-ca1e322cee87', 'Claim', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'f5d5367e-57d4-4103-8cd6-ca1e322cee87' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Utang'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('f5d5367e-57d4-4103-8cd6-ca1e322cee87', 'Utang', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'f5d5367e-57d4-4103-8cd6-ca1e322cee87' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Debt'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('f5d5367e-57d4-4103-8cd6-ca1e322cee87', 'Debt', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'f5d5367e-57d4-4103-8cd6-ca1e322cee87' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Liabilities'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('f5d5367e-57d4-4103-8cd6-ca1e322cee87', 'Liabilities', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'f5d5367e-57d4-4103-8cd6-ca1e322cee87' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Kewajiban'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('f5d5367e-57d4-4103-8cd6-ca1e322cee87', 'Kewajiban', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'f5d5367e-57d4-4103-8cd6-ca1e322cee87' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Mengeklaim'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('f5d5367e-57d4-4103-8cd6-ca1e322cee87', 'Mengeklaim', false, true);
  END IF;

  -- [VOCABULARY] 傷める (Level 36)
  UPDATE item_meanings SET meaning = 'Merusak', primary_meaning = true, accepted_answer = true WHERE id = '3dee49fe-e7df-4b7c-ae1c-a69cfafa8265';
  UPDATE items SET slug = 'merusak' WHERE id = '8dfdd494-f327-4e11-82cb-1e60f12a03bc';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '8dfdd494-f327-4e11-82cb-1e60f12a03bc' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Mencederai'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('8dfdd494-f327-4e11-82cb-1e60f12a03bc', 'Mencederai', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '8dfdd494-f327-4e11-82cb-1e60f12a03bc' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Menyakiti'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('8dfdd494-f327-4e11-82cb-1e60f12a03bc', 'Menyakiti', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '8dfdd494-f327-4e11-82cb-1e60f12a03bc' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Damage'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('8dfdd494-f327-4e11-82cb-1e60f12a03bc', 'To Damage', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '8dfdd494-f327-4e11-82cb-1e60f12a03bc' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Hurt'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('8dfdd494-f327-4e11-82cb-1e60f12a03bc', 'To Hurt', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '8dfdd494-f327-4e11-82cb-1e60f12a03bc' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Untuk Merusak Sesuatu'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('8dfdd494-f327-4e11-82cb-1e60f12a03bc', 'Untuk Merusak Sesuatu', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '8dfdd494-f327-4e11-82cb-1e60f12a03bc' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Injure'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('8dfdd494-f327-4e11-82cb-1e60f12a03bc', 'To Injure', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '8dfdd494-f327-4e11-82cb-1e60f12a03bc' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Injure Something'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('8dfdd494-f327-4e11-82cb-1e60f12a03bc', 'To Injure Something', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '8dfdd494-f327-4e11-82cb-1e60f12a03bc' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Untuk Melukai Sesuatu'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('8dfdd494-f327-4e11-82cb-1e60f12a03bc', 'Untuk Melukai Sesuatu', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '8dfdd494-f327-4e11-82cb-1e60f12a03bc' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Injure Someone'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('8dfdd494-f327-4e11-82cb-1e60f12a03bc', 'To Injure Someone', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '8dfdd494-f327-4e11-82cb-1e60f12a03bc' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Damage Something'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('8dfdd494-f327-4e11-82cb-1e60f12a03bc', 'To Damage Something', false, true);
  END IF;

  -- [VOCABULARY] 勤め (Level 36)
  UPDATE item_meanings SET meaning = 'Pekerjaan Dinas', primary_meaning = true, accepted_answer = true WHERE id = '31bea66c-df4e-4d3b-aaaf-f43d2738a33c';
  UPDATE items SET slug = 'pekerjaan-dinas' WHERE id = 'dd93df03-e0f4-4c87-a988-e815db5c4af9';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'dd93df03-e0f4-4c87-a988-e815db5c4af9' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Pengabdian Kerja'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('dd93df03-e0f4-4c87-a988-e815db5c4af9', 'Pengabdian Kerja', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'dd93df03-e0f4-4c87-a988-e815db5c4af9' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Bekerja'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('dd93df03-e0f4-4c87-a988-e815db5c4af9', 'Bekerja', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'dd93df03-e0f4-4c87-a988-e815db5c4af9' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Duties'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('dd93df03-e0f4-4c87-a988-e815db5c4af9', 'Duties', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'dd93df03-e0f4-4c87-a988-e815db5c4af9' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Job'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('dd93df03-e0f4-4c87-a988-e815db5c4af9', 'Job', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'dd93df03-e0f4-4c87-a988-e815db5c4af9' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Work'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('dd93df03-e0f4-4c87-a988-e815db5c4af9', 'Work', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'dd93df03-e0f4-4c87-a988-e815db5c4af9' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Pekerjaan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('dd93df03-e0f4-4c87-a988-e815db5c4af9', 'Pekerjaan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'dd93df03-e0f4-4c87-a988-e815db5c4af9' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Tugas'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('dd93df03-e0f4-4c87-a988-e815db5c4af9', 'Tugas', false, true);
  END IF;

  -- [VOCABULARY] 及ぶ (Level 36)
  UPDATE item_meanings SET meaning = 'Mencapai', primary_meaning = true, accepted_answer = true WHERE id = '79ec62dd-f2ef-497c-b1d1-80db15137c87';
  UPDATE items SET slug = 'mencapai' WHERE id = '484da083-102b-432a-a94d-3e26794920e6';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '484da083-102b-432a-a94d-3e26794920e6' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Merambah Hingga'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('484da083-102b-432a-a94d-3e26794920e6', 'Merambah Hingga', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '484da083-102b-432a-a94d-3e26794920e6' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Untuk Mencapai'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('484da083-102b-432a-a94d-3e26794920e6', 'Untuk Mencapai', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '484da083-102b-432a-a94d-3e26794920e6' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Reach'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('484da083-102b-432a-a94d-3e26794920e6', 'To Reach', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '484da083-102b-432a-a94d-3e26794920e6' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Amount To'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('484da083-102b-432a-a94d-3e26794920e6', 'To Amount To', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '484da083-102b-432a-a94d-3e26794920e6' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Sebesar'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('484da083-102b-432a-a94d-3e26794920e6', 'Sebesar', false, true);
  END IF;

  -- [VOCABULARY] 及第 (Level 36)
  UPDATE item_meanings SET meaning = 'Lulus Ujian', primary_meaning = true, accepted_answer = true WHERE id = '5eeba324-0c29-49c3-b353-86961610392c';
  UPDATE items SET slug = 'lulus-ujian' WHERE id = '1c379711-e5a4-4906-a7b6-5623ab19660a';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '1c379711-e5a4-4906-a7b6-5623ab19660a' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Mencapai Nilai Batas'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('1c379711-e5a4-4906-a7b6-5623ab19660a', 'Mencapai Nilai Batas', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '1c379711-e5a4-4906-a7b6-5623ab19660a' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Mencapai sukses'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('1c379711-e5a4-4906-a7b6-5623ab19660a', 'Mencapai sukses', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '1c379711-e5a4-4906-a7b6-5623ab19660a' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Passing An Exam'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('1c379711-e5a4-4906-a7b6-5623ab19660a', 'Passing An Exam', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '1c379711-e5a4-4906-a7b6-5623ab19660a' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Pass Mark'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('1c379711-e5a4-4906-a7b6-5623ab19660a', 'Pass Mark', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '1c379711-e5a4-4906-a7b6-5623ab19660a' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Get A Passing Mark'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('1c379711-e5a4-4906-a7b6-5623ab19660a', 'Get A Passing Mark', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '1c379711-e5a4-4906-a7b6-5623ab19660a' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Make The Grade'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('1c379711-e5a4-4906-a7b6-5623ab19660a', 'Make The Grade', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '1c379711-e5a4-4906-a7b6-5623ab19660a' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Getting A Passing Score'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('1c379711-e5a4-4906-a7b6-5623ab19660a', 'Getting A Passing Score', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '1c379711-e5a4-4906-a7b6-5623ab19660a' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Get A Passing Score'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('1c379711-e5a4-4906-a7b6-5623ab19660a', 'Get A Passing Score', false, true);
  END IF;

  -- [VOCABULARY] 大将 (Level 36)
  UPDATE item_meanings SET meaning = 'Jenderal', primary_meaning = true, accepted_answer = true WHERE id = '7a3c6b97-683e-446e-8d30-d550d2471b10';
  UPDATE items SET slug = 'jenderal' WHERE id = '7ed9ac2e-36c9-47cf-8c1d-cb38e6e69a3a';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '7ed9ac2e-36c9-47cf-8c1d-cb38e6e69a3a' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Panglima'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('7ed9ac2e-36c9-47cf-8c1d-cb38e6e69a3a', 'Panglima', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '7ed9ac2e-36c9-47cf-8c1d-cb38e6e69a3a' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Bos Besar'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('7ed9ac2e-36c9-47cf-8c1d-cb38e6e69a3a', 'Bos Besar', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '7ed9ac2e-36c9-47cf-8c1d-cb38e6e69a3a' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Umum'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('7ed9ac2e-36c9-47cf-8c1d-cb38e6e69a3a', 'Umum', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '7ed9ac2e-36c9-47cf-8c1d-cb38e6e69a3a' AND LOWER(TRIM(meaning)) = LOWER(TRIM('General'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('7ed9ac2e-36c9-47cf-8c1d-cb38e6e69a3a', 'General', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '7ed9ac2e-36c9-47cf-8c1d-cb38e6e69a3a' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Leader'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('7ed9ac2e-36c9-47cf-8c1d-cb38e6e69a3a', 'Leader', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '7ed9ac2e-36c9-47cf-8c1d-cb38e6e69a3a' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Admiral'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('7ed9ac2e-36c9-47cf-8c1d-cb38e6e69a3a', 'Admiral', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '7ed9ac2e-36c9-47cf-8c1d-cb38e6e69a3a' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Head'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('7ed9ac2e-36c9-47cf-8c1d-cb38e6e69a3a', 'Head', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '7ed9ac2e-36c9-47cf-8c1d-cb38e6e69a3a' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Kepala'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('7ed9ac2e-36c9-47cf-8c1d-cb38e6e69a3a', 'Kepala', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '7ed9ac2e-36c9-47cf-8c1d-cb38e6e69a3a' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Laksamana'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('7ed9ac2e-36c9-47cf-8c1d-cb38e6e69a3a', 'Laksamana', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '7ed9ac2e-36c9-47cf-8c1d-cb38e6e69a3a' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Pemimpin'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('7ed9ac2e-36c9-47cf-8c1d-cb38e6e69a3a', 'Pemimpin', false, true);
  END IF;

  -- [VOCABULARY] 大幅 (Level 36)
  UPDATE item_meanings SET meaning = 'Skala Besar', primary_meaning = true, accepted_answer = true WHERE id = '75a1289b-9770-40b5-91ed-b34f2a25bd14';
  UPDATE items SET slug = 'skala-besar' WHERE id = '43ba11f4-201a-485b-aefd-71452dc38d2b';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '43ba11f4-201a-485b-aefd-71452dc38d2b' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Signifikan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('43ba11f4-201a-485b-aefd-71452dc38d2b', 'Signifikan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '43ba11f4-201a-485b-aefd-71452dc38d2b' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Drastis'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('43ba11f4-201a-485b-aefd-71452dc38d2b', 'Drastis', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '43ba11f4-201a-485b-aefd-71452dc38d2b' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Besar'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('43ba11f4-201a-485b-aefd-71452dc38d2b', 'Besar', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '43ba11f4-201a-485b-aefd-71452dc38d2b' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Drastic'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('43ba11f4-201a-485b-aefd-71452dc38d2b', 'Drastic', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '43ba11f4-201a-485b-aefd-71452dc38d2b' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Substantial'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('43ba11f4-201a-485b-aefd-71452dc38d2b', 'Substantial', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '43ba11f4-201a-485b-aefd-71452dc38d2b' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Major'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('43ba11f4-201a-485b-aefd-71452dc38d2b', 'Major', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '43ba11f4-201a-485b-aefd-71452dc38d2b' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Big'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('43ba11f4-201a-485b-aefd-71452dc38d2b', 'Big', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '43ba11f4-201a-485b-aefd-71452dc38d2b' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Considerable'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('43ba11f4-201a-485b-aefd-71452dc38d2b', 'Considerable', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '43ba11f4-201a-485b-aefd-71452dc38d2b' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Significant'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('43ba11f4-201a-485b-aefd-71452dc38d2b', 'Significant', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '43ba11f4-201a-485b-aefd-71452dc38d2b' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Large'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('43ba11f4-201a-485b-aefd-71452dc38d2b', 'Large', false, true);
  END IF;

  -- [VOCABULARY] 奴ら (Level 36)
  UPDATE item_meanings SET meaning = 'Mereka', primary_meaning = true, accepted_answer = true WHERE id = '1048089f-55a9-4c31-b7b8-5bd9a032a078';
  UPDATE items SET slug = 'mereka' WHERE id = '543db09f-7c3b-4b36-ab03-8d764bd28aed';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '543db09f-7c3b-4b36-ab03-8d764bd28aed' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Orang-orang Itu'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('543db09f-7c3b-4b36-ab03-8d764bd28aed', 'Orang-orang Itu', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '543db09f-7c3b-4b36-ab03-8d764bd28aed' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Geng Itu'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('543db09f-7c3b-4b36-ab03-8d764bd28aed', 'Geng Itu', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '543db09f-7c3b-4b36-ab03-8d764bd28aed' AND LOWER(TRIM(meaning)) = LOWER(TRIM('They'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('543db09f-7c3b-4b36-ab03-8d764bd28aed', 'They', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '543db09f-7c3b-4b36-ab03-8d764bd28aed' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Those Guys'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('543db09f-7c3b-4b36-ab03-8d764bd28aed', 'Those Guys', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '543db09f-7c3b-4b36-ab03-8d764bd28aed' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Teman-teman itu'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('543db09f-7c3b-4b36-ab03-8d764bd28aed', 'Teman-teman itu', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '543db09f-7c3b-4b36-ab03-8d764bd28aed' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Dudes'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('543db09f-7c3b-4b36-ab03-8d764bd28aed', 'Dudes', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '543db09f-7c3b-4b36-ab03-8d764bd28aed' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Those Dudes'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('543db09f-7c3b-4b36-ab03-8d764bd28aed', 'Those Dudes', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '543db09f-7c3b-4b36-ab03-8d764bd28aed' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Guys'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('543db09f-7c3b-4b36-ab03-8d764bd28aed', 'Guys', false, true);
  END IF;

  -- [VOCABULARY] 廃れる (Level 36)
  UPDATE item_meanings SET meaning = 'Menjadi Kuno', primary_meaning = true, accepted_answer = true WHERE id = '678df9b0-88a4-476d-941b-8cb884b1bc0c';
  UPDATE items SET slug = 'menjadi-kuno' WHERE id = 'e6894d54-b45f-4ee3-80cd-77338792a51d';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'e6894d54-b45f-4ee3-80cd-77338792a51d' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Ditinggalkan Zaman'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('e6894d54-b45f-4ee3-80cd-77338792a51d', 'Ditinggalkan Zaman', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'e6894d54-b45f-4ee3-80cd-77338792a51d' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Menjadi Usang'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('e6894d54-b45f-4ee3-80cd-77338792a51d', 'Menjadi Usang', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'e6894d54-b45f-4ee3-80cd-77338792a51d' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Become Obsolete'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('e6894d54-b45f-4ee3-80cd-77338792a51d', 'To Become Obsolete', false, true);
  END IF;

  -- [VOCABULARY] 復旧 (Level 36)
  UPDATE item_meanings SET meaning = 'Pemulihan Kembali', primary_meaning = true, accepted_answer = true WHERE id = '9da43ac2-b3a3-48a1-9221-a6c3fbf99c00';
  UPDATE items SET slug = 'pemulihan-kembali' WHERE id = '2e305ca9-2690-45a2-b502-4aa6b6c08650';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '2e305ca9-2690-45a2-b502-4aa6b6c08650' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Restorasi Sarana'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('2e305ca9-2690-45a2-b502-4aa6b6c08650', 'Restorasi Sarana', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '2e305ca9-2690-45a2-b502-4aa6b6c08650' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Restorasi'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('2e305ca9-2690-45a2-b502-4aa6b6c08650', 'Restorasi', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '2e305ca9-2690-45a2-b502-4aa6b6c08650' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Recovery'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('2e305ca9-2690-45a2-b502-4aa6b6c08650', 'Recovery', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '2e305ca9-2690-45a2-b502-4aa6b6c08650' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Restoration'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('2e305ca9-2690-45a2-b502-4aa6b6c08650', 'Restoration', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '2e305ca9-2690-45a2-b502-4aa6b6c08650' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Pemulihan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('2e305ca9-2690-45a2-b502-4aa6b6c08650', 'Pemulihan', false, true);
  END IF;

  -- [VOCABULARY] 怪我 (Level 36)
  UPDATE item_meanings SET meaning = 'Cedera', primary_meaning = true, accepted_answer = true WHERE id = '4f90ea0d-7633-4caf-8297-a68db62b062b';
  UPDATE items SET slug = 'cedera' WHERE id = '1ae37b40-fd7e-48e6-9186-ddbd9e49f4eb';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '1ae37b40-fd7e-48e6-9186-ddbd9e49f4eb' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Luka Fisik'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('1ae37b40-fd7e-48e6-9186-ddbd9e49f4eb', 'Luka Fisik', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '1ae37b40-fd7e-48e6-9186-ddbd9e49f4eb' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Injury'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('1ae37b40-fd7e-48e6-9186-ddbd9e49f4eb', 'Injury', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '1ae37b40-fd7e-48e6-9186-ddbd9e49f4eb' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Wound'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('1ae37b40-fd7e-48e6-9186-ddbd9e49f4eb', 'Wound', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '1ae37b40-fd7e-48e6-9186-ddbd9e49f4eb' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Injure'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('1ae37b40-fd7e-48e6-9186-ddbd9e49f4eb', 'Injure', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '1ae37b40-fd7e-48e6-9186-ddbd9e49f4eb' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Hurt'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('1ae37b40-fd7e-48e6-9186-ddbd9e49f4eb', 'Hurt', false, true);
  END IF;

  -- [VOCABULARY] 承諾 (Level 36)
  UPDATE item_meanings SET meaning = 'Persetujuan', primary_meaning = true, accepted_answer = true WHERE id = '3d7a93d9-efc7-42c9-889a-81a738eff6e4';
  UPDATE items SET slug = 'persetujuan' WHERE id = '2b0042d9-3544-495b-8057-1a9012bc1377';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '2b0042d9-3544-495b-8057-1a9012bc1377' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Menyanggupi Permintaan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('2b0042d9-3544-495b-8057-1a9012bc1377', 'Menyanggupi Permintaan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '2b0042d9-3544-495b-8057-1a9012bc1377' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Izin'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('2b0042d9-3544-495b-8057-1a9012bc1377', 'Izin', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '2b0042d9-3544-495b-8057-1a9012bc1377' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Consent'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('2b0042d9-3544-495b-8057-1a9012bc1377', 'Consent', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '2b0042d9-3544-495b-8057-1a9012bc1377' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Agreement'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('2b0042d9-3544-495b-8057-1a9012bc1377', 'Agreement', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '2b0042d9-3544-495b-8057-1a9012bc1377' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Acceptance'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('2b0042d9-3544-495b-8057-1a9012bc1377', 'Acceptance', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '2b0042d9-3544-495b-8057-1a9012bc1377' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Penerimaan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('2b0042d9-3544-495b-8057-1a9012bc1377', 'Penerimaan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '2b0042d9-3544-495b-8057-1a9012bc1377' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Perjanjian'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('2b0042d9-3544-495b-8057-1a9012bc1377', 'Perjanjian', false, true);
  END IF;

  -- [VOCABULARY] 指揮者 (Level 36)
  UPDATE item_meanings SET meaning = 'Dirigen Musik', primary_meaning = true, accepted_answer = true WHERE id = '0c35519d-50dc-4b4c-82e0-f3c3f395126f';
  UPDATE items SET slug = 'dirigen-musik' WHERE id = '9282f241-6708-4560-a3a4-7fb3d12c0142';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '9282f241-6708-4560-a3a4-7fb3d12c0142' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Komandan Lapangan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('9282f241-6708-4560-a3a4-7fb3d12c0142', 'Komandan Lapangan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '9282f241-6708-4560-a3a4-7fb3d12c0142' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Konduktor'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('9282f241-6708-4560-a3a4-7fb3d12c0142', 'Konduktor', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '9282f241-6708-4560-a3a4-7fb3d12c0142' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Conductor'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('9282f241-6708-4560-a3a4-7fb3d12c0142', 'Conductor', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '9282f241-6708-4560-a3a4-7fb3d12c0142' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Leader'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('9282f241-6708-4560-a3a4-7fb3d12c0142', 'Leader', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '9282f241-6708-4560-a3a4-7fb3d12c0142' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Komandan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('9282f241-6708-4560-a3a4-7fb3d12c0142', 'Komandan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '9282f241-6708-4560-a3a4-7fb3d12c0142' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Commander'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('9282f241-6708-4560-a3a4-7fb3d12c0142', 'Commander', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '9282f241-6708-4560-a3a4-7fb3d12c0142' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Director'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('9282f241-6708-4560-a3a4-7fb3d12c0142', 'Director', false, true);
  END IF;

  -- [VOCABULARY] 指摘 (Level 36)
  UPDATE item_meanings SET meaning = 'Menunjukkan Kesalahan', primary_meaning = true, accepted_answer = true WHERE id = '2d28950e-5169-413b-9a77-ec3e4f8089d8';
  UPDATE items SET slug = 'menunjukkan-kesalahan' WHERE id = 'e71db6f4-5490-4350-96d4-d92b1cccab02';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'e71db6f4-5490-4350-96d4-d92b1cccab02' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Menyinggung Masalah'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('e71db6f4-5490-4350-96d4-d92b1cccab02', 'Menyinggung Masalah', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'e71db6f4-5490-4350-96d4-d92b1cccab02' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Menunjuk'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('e71db6f4-5490-4350-96d4-d92b1cccab02', 'Menunjuk', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'e71db6f4-5490-4350-96d4-d92b1cccab02' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Pointing Out'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('e71db6f4-5490-4350-96d4-d92b1cccab02', 'Pointing Out', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'e71db6f4-5490-4350-96d4-d92b1cccab02' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Identification'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('e71db6f4-5490-4350-96d4-d92b1cccab02', 'Identification', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'e71db6f4-5490-4350-96d4-d92b1cccab02' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Identifikasi'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('e71db6f4-5490-4350-96d4-d92b1cccab02', 'Identifikasi', false, true);
  END IF;

  -- [VOCABULARY] 換える (Level 36)
  UPDATE item_meanings SET meaning = 'Menukar', primary_meaning = true, accepted_answer = true WHERE id = '03f9c73f-60a2-4c67-8304-7e0b4c6b62bb';
  UPDATE items SET slug = 'menukar' WHERE id = '19e70873-0131-44a1-9b16-960809da10fb';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '19e70873-0131-44a1-9b16-960809da10fb' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Mengganti'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('19e70873-0131-44a1-9b16-960809da10fb', 'Mengganti', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '19e70873-0131-44a1-9b16-960809da10fb' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Untuk Bertukar'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('19e70873-0131-44a1-9b16-960809da10fb', 'Untuk Bertukar', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '19e70873-0131-44a1-9b16-960809da10fb' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Exchange'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('19e70873-0131-44a1-9b16-960809da10fb', 'To Exchange', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '19e70873-0131-44a1-9b16-960809da10fb' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Swap'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('19e70873-0131-44a1-9b16-960809da10fb', 'To Swap', false, true);
  END IF;

  -- [VOCABULARY] 損害する (Level 36)
  UPDATE item_meanings SET meaning = 'Menimbulkan Kerugian', primary_meaning = true, accepted_answer = true WHERE id = '64d15b4a-9cea-4777-8a5a-6dc84a21f4c1';
  UPDATE items SET slug = 'menimbulkan-kerugian' WHERE id = '17a5060f-2bef-44a5-b982-9faf3770c504';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '17a5060f-2bef-44a5-b982-9faf3770c504' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Merugikan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('17a5060f-2bef-44a5-b982-9faf3770c504', 'Merugikan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '17a5060f-2bef-44a5-b982-9faf3770c504' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Untuk Merusak'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('17a5060f-2bef-44a5-b982-9faf3770c504', 'Untuk Merusak', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '17a5060f-2bef-44a5-b982-9faf3770c504' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Cause Damage'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('17a5060f-2bef-44a5-b982-9faf3770c504', 'To Cause Damage', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '17a5060f-2bef-44a5-b982-9faf3770c504' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Damage'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('17a5060f-2bef-44a5-b982-9faf3770c504', 'To Damage', false, true);
  END IF;

  -- [VOCABULARY] 摘む (Level 36)
  UPDATE item_meanings SET meaning = 'Memetik', primary_meaning = true, accepted_answer = true WHERE id = '67c5df95-9a77-4b43-bfd5-05d18cf4a178';
  UPDATE items SET slug = 'memetik' WHERE id = 'd5aec135-c29e-475d-86fc-264d020b4db8';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'd5aec135-c29e-475d-86fc-264d020b4db8' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Mencubit'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('d5aec135-c29e-475d-86fc-264d020b4db8', 'Mencubit', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'd5aec135-c29e-475d-86fc-264d020b4db8' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Mencomot'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('d5aec135-c29e-475d-86fc-264d020b4db8', 'Mencomot', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'd5aec135-c29e-475d-86fc-264d020b4db8' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Pluck'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('d5aec135-c29e-475d-86fc-264d020b4db8', 'To Pluck', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'd5aec135-c29e-475d-86fc-264d020b4db8' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Pinch'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('d5aec135-c29e-475d-86fc-264d020b4db8', 'To Pinch', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'd5aec135-c29e-475d-86fc-264d020b4db8' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Memetik (Bunga'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('d5aec135-c29e-475d-86fc-264d020b4db8', 'Memetik (Bunga', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'd5aec135-c29e-475d-86fc-264d020b4db8' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Teh)'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('d5aec135-c29e-475d-86fc-264d020b4db8', 'Teh)', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'd5aec135-c29e-475d-86fc-264d020b4db8' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Untuk Memetik'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('d5aec135-c29e-475d-86fc-264d020b4db8', 'Untuk Memetik', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'd5aec135-c29e-475d-86fc-264d020b4db8' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Pick'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('d5aec135-c29e-475d-86fc-264d020b4db8', 'To Pick', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'd5aec135-c29e-475d-86fc-264d020b4db8' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Prune'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('d5aec135-c29e-475d-86fc-264d020b4db8', 'To Prune', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'd5aec135-c29e-475d-86fc-264d020b4db8' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Untuk Memilih'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('d5aec135-c29e-475d-86fc-264d020b4db8', 'Untuk Memilih', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'd5aec135-c29e-475d-86fc-264d020b4db8' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Untuk Memangkas'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('d5aec135-c29e-475d-86fc-264d020b4db8', 'Untuk Memangkas', false, true);
  END IF;

  -- [VOCABULARY] 摘発する (Level 36)
  UPDATE item_meanings SET meaning = 'Membongkar Kejahatan', primary_meaning = true, accepted_answer = true WHERE id = 'a0f295aa-e36a-4212-b003-a7286789ab09';
  UPDATE items SET slug = 'membongkar-kejahatan' WHERE id = '59c99d01-3c76-49d4-a73f-5197e3cb34a3';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '59c99d01-3c76-49d4-a73f-5197e3cb34a3' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Mengungkap Skandal'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('59c99d01-3c76-49d4-a73f-5197e3cb34a3', 'Mengungkap Skandal', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '59c99d01-3c76-49d4-a73f-5197e3cb34a3' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Untuk Membuka Kedok'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('59c99d01-3c76-49d4-a73f-5197e3cb34a3', 'Untuk Membuka Kedok', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '59c99d01-3c76-49d4-a73f-5197e3cb34a3' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Expose'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('59c99d01-3c76-49d4-a73f-5197e3cb34a3', 'To Expose', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '59c99d01-3c76-49d4-a73f-5197e3cb34a3' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Unmask'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('59c99d01-3c76-49d4-a73f-5197e3cb34a3', 'To Unmask', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '59c99d01-3c76-49d4-a73f-5197e3cb34a3' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Untuk Mengekspos'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('59c99d01-3c76-49d4-a73f-5197e3cb34a3', 'Untuk Mengekspos', false, true);
  END IF;

  -- [VOCABULARY] 普及 (Level 36)
  UPDATE item_meanings SET meaning = 'Penyebaran Luas', primary_meaning = true, accepted_answer = true WHERE id = 'f9b70b91-d0eb-4ab3-880d-669f42b5a2d3';
  UPDATE items SET slug = 'penyebaran-luas' WHERE id = 'ef3edd3a-2ba4-4a23-b80b-53c87b0b4b65';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'ef3edd3a-2ba4-4a23-b80b-53c87b0b4b65' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Pemasyarakatan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('ef3edd3a-2ba4-4a23-b80b-53c87b0b4b65', 'Pemasyarakatan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'ef3edd3a-2ba4-4a23-b80b-53c87b0b4b65' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Difusi'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('ef3edd3a-2ba4-4a23-b80b-53c87b0b4b65', 'Difusi', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'ef3edd3a-2ba4-4a23-b80b-53c87b0b4b65' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Diffusion'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('ef3edd3a-2ba4-4a23-b80b-53c87b0b4b65', 'Diffusion', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'ef3edd3a-2ba4-4a23-b80b-53c87b0b4b65' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Popularization'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('ef3edd3a-2ba4-4a23-b80b-53c87b0b4b65', 'Popularization', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'ef3edd3a-2ba4-4a23-b80b-53c87b0b4b65' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Spread'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('ef3edd3a-2ba4-4a23-b80b-53c87b0b4b65', 'Spread', false, true);
  END IF;

  -- [VOCABULARY] 核 (Level 36)
  UPDATE item_meanings SET meaning = 'Inti Pokok', primary_meaning = true, accepted_answer = true WHERE id = '3936763a-7d0b-4eb8-adaa-303dc20cd3f3';
  UPDATE items SET slug = 'inti-pokok' WHERE id = 'e47e59ac-08f7-4915-8216-95a1527f8357';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'e47e59ac-08f7-4915-8216-95a1527f8357' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Nuklir'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('e47e59ac-08f7-4915-8216-95a1527f8357', 'Nuklir', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'e47e59ac-08f7-4915-8216-95a1527f8357' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Inti'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('e47e59ac-08f7-4915-8216-95a1527f8357', 'Inti', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'e47e59ac-08f7-4915-8216-95a1527f8357' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Core'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('e47e59ac-08f7-4915-8216-95a1527f8357', 'Core', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'e47e59ac-08f7-4915-8216-95a1527f8357' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Nuclear'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('e47e59ac-08f7-4915-8216-95a1527f8357', 'Nuclear', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'e47e59ac-08f7-4915-8216-95a1527f8357' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Nucleus'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('e47e59ac-08f7-4915-8216-95a1527f8357', 'Nucleus', false, true);
  END IF;

  -- [VOCABULARY] 歯科 (Level 36)
  UPDATE item_meanings SET meaning = 'Poli Gigi', primary_meaning = true, accepted_answer = true WHERE id = '72ec99f9-f7c4-4625-9008-db93e55d74e0';
  UPDATE items SET slug = 'poli-gigi' WHERE id = '5c9c427f-7436-4c81-99ce-dbd9071a96a4';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '5c9c427f-7436-4c81-99ce-dbd9071a96a4' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Kedokteran Gigi'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('5c9c427f-7436-4c81-99ce-dbd9071a96a4', 'Kedokteran Gigi', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '5c9c427f-7436-4c81-99ce-dbd9071a96a4' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Dentistry'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('5c9c427f-7436-4c81-99ce-dbd9071a96a4', 'Dentistry', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '5c9c427f-7436-4c81-99ce-dbd9071a96a4' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Dental'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('5c9c427f-7436-4c81-99ce-dbd9071a96a4', 'Dental', false, true);
  END IF;

  -- [VOCABULARY] 沖合 (Level 36)
  UPDATE item_meanings SET meaning = 'Lepas Pantai', primary_meaning = true, accepted_answer = true WHERE id = '770480af-8f4e-4250-b040-d032e83aefd1';
  UPDATE items SET slug = 'lepas-pantai' WHERE id = '183e0925-a94a-47e8-9dfd-6192518ac581';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '183e0925-a94a-47e8-9dfd-6192518ac581' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Laut Terbuka'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('183e0925-a94a-47e8-9dfd-6192518ac581', 'Laut Terbuka', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '183e0925-a94a-47e8-9dfd-6192518ac581' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Open Sea'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('183e0925-a94a-47e8-9dfd-6192518ac581', 'Open Sea', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '183e0925-a94a-47e8-9dfd-6192518ac581' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Offshore'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('183e0925-a94a-47e8-9dfd-6192518ac581', 'Offshore', false, true);
  END IF;

  -- [VOCABULARY] 治療 (Level 36)
  UPDATE item_meanings SET meaning = 'Pengobatan Medis', primary_meaning = true, accepted_answer = true WHERE id = '100fb895-dc12-40e2-8e1e-e53f17fe4b9e';
  UPDATE items SET slug = 'pengobatan-medis' WHERE id = '8616a739-c6c8-47d4-9f17-8536120ca809';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '8616a739-c6c8-47d4-9f17-8536120ca809' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Terapi Penyembuhan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('8616a739-c6c8-47d4-9f17-8536120ca809', 'Terapi Penyembuhan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '8616a739-c6c8-47d4-9f17-8536120ca809' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Terapi Medis'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('8616a739-c6c8-47d4-9f17-8536120ca809', 'Terapi Medis', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '8616a739-c6c8-47d4-9f17-8536120ca809' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Medical Treatment'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('8616a739-c6c8-47d4-9f17-8536120ca809', 'Medical Treatment', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '8616a739-c6c8-47d4-9f17-8536120ca809' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Therapy'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('8616a739-c6c8-47d4-9f17-8536120ca809', 'Therapy', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '8616a739-c6c8-47d4-9f17-8536120ca809' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Perawatan Medis'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('8616a739-c6c8-47d4-9f17-8536120ca809', 'Perawatan Medis', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '8616a739-c6c8-47d4-9f17-8536120ca809' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Treat'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('8616a739-c6c8-47d4-9f17-8536120ca809', 'Treat', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '8616a739-c6c8-47d4-9f17-8536120ca809' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Cure'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('8616a739-c6c8-47d4-9f17-8536120ca809', 'Cure', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '8616a739-c6c8-47d4-9f17-8536120ca809' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Care'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('8616a739-c6c8-47d4-9f17-8536120ca809', 'Care', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '8616a739-c6c8-47d4-9f17-8536120ca809' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Medical Care'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('8616a739-c6c8-47d4-9f17-8536120ca809', 'Medical Care', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '8616a739-c6c8-47d4-9f17-8536120ca809' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Medical Therapy'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('8616a739-c6c8-47d4-9f17-8536120ca809', 'Medical Therapy', false, true);
  END IF;

  -- [VOCABULARY] 湧く (Level 36)
  UPDATE item_meanings SET meaning = 'Memancar', primary_meaning = true, accepted_answer = true WHERE id = '391a467c-2924-40e2-9e8a-1c2cc770207c';
  UPDATE items SET slug = 'memancar' WHERE id = '4385a74b-bcde-42e3-bf0d-85a626166960';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '4385a74b-bcde-42e3-bf0d-85a626166960' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Membual'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('4385a74b-bcde-42e3-bf0d-85a626166960', 'Membual', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '4385a74b-bcde-42e3-bf0d-85a626166960' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Meluap'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('4385a74b-bcde-42e3-bf0d-85a626166960', 'Meluap', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '4385a74b-bcde-42e3-bf0d-85a626166960' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Gush'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('4385a74b-bcde-42e3-bf0d-85a626166960', 'To Gush', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '4385a74b-bcde-42e3-bf0d-85a626166960' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Well Up'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('4385a74b-bcde-42e3-bf0d-85a626166960', 'To Well Up', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '4385a74b-bcde-42e3-bf0d-85a626166960' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Meluap (Mata Air'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('4385a74b-bcde-42e3-bf0d-85a626166960', 'Meluap (Mata Air', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '4385a74b-bcde-42e3-bf0d-85a626166960' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Semangat)'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('4385a74b-bcde-42e3-bf0d-85a626166960', 'Semangat)', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '4385a74b-bcde-42e3-bf0d-85a626166960' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Untuk Menjadi Baik'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('4385a74b-bcde-42e3-bf0d-85a626166960', 'Untuk Menjadi Baik', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '4385a74b-bcde-42e3-bf0d-85a626166960' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Gush Out'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('4385a74b-bcde-42e3-bf0d-85a626166960', 'To Gush Out', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '4385a74b-bcde-42e3-bf0d-85a626166960' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Well'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('4385a74b-bcde-42e3-bf0d-85a626166960', 'To Well', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '4385a74b-bcde-42e3-bf0d-85a626166960' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Appear'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('4385a74b-bcde-42e3-bf0d-85a626166960', 'To Appear', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '4385a74b-bcde-42e3-bf0d-85a626166960' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Spring Up'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('4385a74b-bcde-42e3-bf0d-85a626166960', 'To Spring Up', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '4385a74b-bcde-42e3-bf0d-85a626166960' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Surge'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('4385a74b-bcde-42e3-bf0d-85a626166960', 'To Surge', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '4385a74b-bcde-42e3-bf0d-85a626166960' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Arise'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('4385a74b-bcde-42e3-bf0d-85a626166960', 'To Arise', false, true);
  END IF;

  -- [VOCABULARY] 漬ける (Level 36)
  UPDATE item_meanings SET meaning = 'Merendam', primary_meaning = true, accepted_answer = true WHERE id = 'aed27e45-8faa-495d-bd88-baff7180e528';
  UPDATE items SET slug = 'merendam' WHERE id = 'b23bb255-a2f2-4732-9e90-da458300f79f';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'b23bb255-a2f2-4732-9e90-da458300f79f' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Mengasinkan Acar'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('b23bb255-a2f2-4732-9e90-da458300f79f', 'Mengasinkan Acar', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'b23bb255-a2f2-4732-9e90-da458300f79f' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Untuk Mengasinkan Sesuatu'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('b23bb255-a2f2-4732-9e90-da458300f79f', 'Untuk Mengasinkan Sesuatu', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'b23bb255-a2f2-4732-9e90-da458300f79f' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Pickle'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('b23bb255-a2f2-4732-9e90-da458300f79f', 'To Pickle', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'b23bb255-a2f2-4732-9e90-da458300f79f' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Marinate'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('b23bb255-a2f2-4732-9e90-da458300f79f', 'To Marinate', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'b23bb255-a2f2-4732-9e90-da458300f79f' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Pickle Something'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('b23bb255-a2f2-4732-9e90-da458300f79f', 'To Pickle Something', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'b23bb255-a2f2-4732-9e90-da458300f79f' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Marinate Something'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('b23bb255-a2f2-4732-9e90-da458300f79f', 'To Marinate Something', false, true);
  END IF;

  -- [VOCABULARY] 灯る (Level 36)
  UPDATE item_meanings SET meaning = 'Menyala', primary_meaning = true, accepted_answer = true WHERE id = '2ae16601-d071-4231-af7a-029c1d2d2c3f';
  UPDATE items SET slug = 'menyala' WHERE id = 'a55bddf3-6cb1-478a-8119-491ef2d10d55';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'a55bddf3-6cb1-478a-8119-491ef2d10d55' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Menyala Terang'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('a55bddf3-6cb1-478a-8119-491ef2d10d55', 'Menyala Terang', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'a55bddf3-6cb1-478a-8119-491ef2d10d55' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Menyala Lampu'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('a55bddf3-6cb1-478a-8119-491ef2d10d55', 'Menyala Lampu', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'a55bddf3-6cb1-478a-8119-491ef2d10d55' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Light Up'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('a55bddf3-6cb1-478a-8119-491ef2d10d55', 'To Light Up', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'a55bddf3-6cb1-478a-8119-491ef2d10d55' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Menyala Terang (Lentera'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('a55bddf3-6cb1-478a-8119-491ef2d10d55', 'Menyala Terang (Lentera', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'a55bddf3-6cb1-478a-8119-491ef2d10d55' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Lampu)'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('a55bddf3-6cb1-478a-8119-491ef2d10d55', 'Lampu)', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'a55bddf3-6cb1-478a-8119-491ef2d10d55' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Menjadi Menyala'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('a55bddf3-6cb1-478a-8119-491ef2d10d55', 'Menjadi Menyala', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'a55bddf3-6cb1-478a-8119-491ef2d10d55' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Be Lit'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('a55bddf3-6cb1-478a-8119-491ef2d10d55', 'To Be Lit', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'a55bddf3-6cb1-478a-8119-491ef2d10d55' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Burn'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('a55bddf3-6cb1-478a-8119-491ef2d10d55', 'To Burn', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'a55bddf3-6cb1-478a-8119-491ef2d10d55' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Be Lighted'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('a55bddf3-6cb1-478a-8119-491ef2d10d55', 'To Be Lighted', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'a55bddf3-6cb1-478a-8119-491ef2d10d55' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Untuk Dinyalakan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('a55bddf3-6cb1-478a-8119-491ef2d10d55', 'Untuk Dinyalakan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'a55bddf3-6cb1-478a-8119-491ef2d10d55' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Be Alight'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('a55bddf3-6cb1-478a-8119-491ef2d10d55', 'To Be Alight', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'a55bddf3-6cb1-478a-8119-491ef2d10d55' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Be Burning'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('a55bddf3-6cb1-478a-8119-491ef2d10d55', 'To Be Burning', false, true);
  END IF;

  -- [VOCABULARY] 炒める (Level 36)
  UPDATE item_meanings SET meaning = 'Menumis', primary_meaning = true, accepted_answer = true WHERE id = '68154c27-deca-4958-b21b-90ada98a4b41';
  UPDATE items SET slug = 'menumis' WHERE id = '6929364a-2576-4a45-bbfe-e60df9d418dc';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '6929364a-2576-4a45-bbfe-e60df9d418dc' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Mengoseng'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('6929364a-2576-4a45-bbfe-e60df9d418dc', 'Mengoseng', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '6929364a-2576-4a45-bbfe-e60df9d418dc' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Untuk Menggoreng'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('6929364a-2576-4a45-bbfe-e60df9d418dc', 'Untuk Menggoreng', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '6929364a-2576-4a45-bbfe-e60df9d418dc' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Stir-Fry'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('6929364a-2576-4a45-bbfe-e60df9d418dc', 'To Stir-Fry', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '6929364a-2576-4a45-bbfe-e60df9d418dc' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Sauté'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('6929364a-2576-4a45-bbfe-e60df9d418dc', 'To Sauté', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '6929364a-2576-4a45-bbfe-e60df9d418dc' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Saute'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('6929364a-2576-4a45-bbfe-e60df9d418dc', 'To Saute', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '6929364a-2576-4a45-bbfe-e60df9d418dc' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Untuk Menumis'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('6929364a-2576-4a45-bbfe-e60df9d418dc', 'Untuk Menumis', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '6929364a-2576-4a45-bbfe-e60df9d418dc' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Fry'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('6929364a-2576-4a45-bbfe-e60df9d418dc', 'To Fry', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '6929364a-2576-4a45-bbfe-e60df9d418dc' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Pan-Fry'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('6929364a-2576-4a45-bbfe-e60df9d418dc', 'To Pan-Fry', false, true);
  END IF;

  -- [VOCABULARY] 甘い (Level 36)
  UPDATE item_meanings SET meaning = 'Manis Rasanya', primary_meaning = true, accepted_answer = true WHERE id = '582d39d8-f7a0-4abe-a4ec-cb37240f6c36';
  UPDATE items SET slug = 'manis-rasanya' WHERE id = '8c5ae2c9-cdaa-4629-8d8c-d3417ff8ef77';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '8c5ae2c9-cdaa-4629-8d8c-d3417ff8ef77' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Lembek'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('8c5ae2c9-cdaa-4629-8d8c-d3417ff8ef77', 'Lembek', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '8c5ae2c9-cdaa-4629-8d8c-d3417ff8ef77' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Naif'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('8c5ae2c9-cdaa-4629-8d8c-d3417ff8ef77', 'Naif', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '8c5ae2c9-cdaa-4629-8d8c-d3417ff8ef77' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Manis'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('8c5ae2c9-cdaa-4629-8d8c-d3417ff8ef77', 'Manis', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '8c5ae2c9-cdaa-4629-8d8c-d3417ff8ef77' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Sweet'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('8c5ae2c9-cdaa-4629-8d8c-d3417ff8ef77', 'Sweet', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '8c5ae2c9-cdaa-4629-8d8c-d3417ff8ef77' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Indulgent'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('8c5ae2c9-cdaa-4629-8d8c-d3417ff8ef77', 'Indulgent', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '8c5ae2c9-cdaa-4629-8d8c-d3417ff8ef77' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Naive'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('8c5ae2c9-cdaa-4629-8d8c-d3417ff8ef77', 'Naive', false, true);
  END IF;

  -- [VOCABULARY] 甘く見る (Level 36)
  UPDATE item_meanings SET meaning = 'Meremehkan', primary_meaning = true, accepted_answer = true WHERE id = '887b0ba9-8cb6-408d-8e9c-40832501cf41';
  UPDATE items SET slug = 'meremehkan' WHERE id = '0b419b98-589f-48e6-852b-834bb16b9bba';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '0b419b98-589f-48e6-852b-834bb16b9bba' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Memandang Sebelah Mata'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('0b419b98-589f-48e6-852b-834bb16b9bba', 'Memandang Sebelah Mata', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '0b419b98-589f-48e6-852b-834bb16b9bba' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Untuk Tidak Menganggapnya Serius'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('0b419b98-589f-48e6-852b-834bb16b9bba', 'Untuk Tidak Menganggapnya Serius', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '0b419b98-589f-48e6-852b-834bb16b9bba' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Take Lightly'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('0b419b98-589f-48e6-852b-834bb16b9bba', 'To Take Lightly', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '0b419b98-589f-48e6-852b-834bb16b9bba' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Not Take Seriously'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('0b419b98-589f-48e6-852b-834bb16b9bba', 'To Not Take Seriously', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '0b419b98-589f-48e6-852b-834bb16b9bba' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Untuk Dianggap Ringan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('0b419b98-589f-48e6-852b-834bb16b9bba', 'Untuk Dianggap Ringan', false, true);
  END IF;

  -- [VOCABULARY] 病床 (Level 36)
  UPDATE item_meanings SET meaning = 'Tempat Tidur Pasien', primary_meaning = true, accepted_answer = true WHERE id = '636c3e86-0299-439a-a692-3b1fdfa4005b';
  UPDATE items SET slug = 'tempat-tidur-pasien' WHERE id = 'e0ccc8a4-75f9-4139-8be0-ef756b6f52b1';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'e0ccc8a4-75f9-4139-8be0-ef756b6f52b1' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Ranjang RS'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('e0ccc8a4-75f9-4139-8be0-ef756b6f52b1', 'Ranjang RS', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'e0ccc8a4-75f9-4139-8be0-ef756b6f52b1' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Tempat tidur sakit'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('e0ccc8a4-75f9-4139-8be0-ef756b6f52b1', 'Tempat tidur sakit', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'e0ccc8a4-75f9-4139-8be0-ef756b6f52b1' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Hospital Bed'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('e0ccc8a4-75f9-4139-8be0-ef756b6f52b1', 'Hospital Bed', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'e0ccc8a4-75f9-4139-8be0-ef756b6f52b1' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Sickbed'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('e0ccc8a4-75f9-4139-8be0-ef756b6f52b1', 'Sickbed', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'e0ccc8a4-75f9-4139-8be0-ef756b6f52b1' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Tempat Tidur Rumah Sakit'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('e0ccc8a4-75f9-4139-8be0-ef756b6f52b1', 'Tempat Tidur Rumah Sakit', false, true);
  END IF;

  -- [VOCABULARY] 継ぐ (Level 36)
  UPDATE item_meanings SET meaning = 'Mewarisi', primary_meaning = true, accepted_answer = true WHERE id = 'bbc2eb67-1083-430b-9229-301d0e494064';
  UPDATE items SET slug = 'mewarisi' WHERE id = '92ad29cf-73a5-402b-857e-d76cc80e4b34';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '92ad29cf-73a5-402b-857e-d76cc80e4b34' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Meneruskan Kepemimpinan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('92ad29cf-73a5-402b-857e-d76cc80e4b34', 'Meneruskan Kepemimpinan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '92ad29cf-73a5-402b-857e-d76cc80e4b34' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Untuk Mewarisi'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('92ad29cf-73a5-402b-857e-d76cc80e4b34', 'Untuk Mewarisi', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '92ad29cf-73a5-402b-857e-d76cc80e4b34' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Inherit'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('92ad29cf-73a5-402b-857e-d76cc80e4b34', 'To Inherit', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '92ad29cf-73a5-402b-857e-d76cc80e4b34' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Succeed'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('92ad29cf-73a5-402b-857e-d76cc80e4b34', 'To Succeed', false, true);
  END IF;

  -- [VOCABULARY] 維持 (Level 36)
  UPDATE item_meanings SET meaning = 'Pemeliharaan', primary_meaning = true, accepted_answer = true WHERE id = 'a3a55311-a4c2-41fb-b666-5b6187aedd20';
  UPDATE items SET slug = 'pemeliharaan' WHERE id = '6cd47076-5180-426c-ae48-59a3b72f3164';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '6cd47076-5180-426c-ae48-59a3b72f3164' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Mempertahankan Kondisi'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('6cd47076-5180-426c-ae48-59a3b72f3164', 'Mempertahankan Kondisi', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '6cd47076-5180-426c-ae48-59a3b72f3164' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Maintenance'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('6cd47076-5180-426c-ae48-59a3b72f3164', 'Maintenance', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '6cd47076-5180-426c-ae48-59a3b72f3164' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Maintain'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('6cd47076-5180-426c-ae48-59a3b72f3164', 'Maintain', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '6cd47076-5180-426c-ae48-59a3b72f3164' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Upkeep'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('6cd47076-5180-426c-ae48-59a3b72f3164', 'Upkeep', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '6cd47076-5180-426c-ae48-59a3b72f3164' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Keep'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('6cd47076-5180-426c-ae48-59a3b72f3164', 'Keep', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '6cd47076-5180-426c-ae48-59a3b72f3164' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Preservation'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('6cd47076-5180-426c-ae48-59a3b72f3164', 'Preservation', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '6cd47076-5180-426c-ae48-59a3b72f3164' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Support'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('6cd47076-5180-426c-ae48-59a3b72f3164', 'Support', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '6cd47076-5180-426c-ae48-59a3b72f3164' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Mendukung'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('6cd47076-5180-426c-ae48-59a3b72f3164', 'Mendukung', false, true);
  END IF;

  -- [VOCABULARY] 舞う (Level 36)
  UPDATE item_meanings SET meaning = 'Menari Berputar', primary_meaning = true, accepted_answer = true WHERE id = 'e3c8c707-e4d6-4a79-afe8-cc18ecef7aa9';
  UPDATE items SET slug = 'menari-berputar' WHERE id = '72eec8a5-b727-4f49-83d3-8a3341025f4b';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '72eec8a5-b727-4f49-83d3-8a3341025f4b' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Melayang Berkibar'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('72eec8a5-b727-4f49-83d3-8a3341025f4b', 'Melayang Berkibar', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '72eec8a5-b727-4f49-83d3-8a3341025f4b' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Untuk Menari'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('72eec8a5-b727-4f49-83d3-8a3341025f4b', 'Untuk Menari', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '72eec8a5-b727-4f49-83d3-8a3341025f4b' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Flutter'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('72eec8a5-b727-4f49-83d3-8a3341025f4b', 'To Flutter', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '72eec8a5-b727-4f49-83d3-8a3341025f4b' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Dance'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('72eec8a5-b727-4f49-83d3-8a3341025f4b', 'To Dance', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '72eec8a5-b727-4f49-83d3-8a3341025f4b' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Berkibar'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('72eec8a5-b727-4f49-83d3-8a3341025f4b', 'Berkibar', false, true);
  END IF;

  -- [VOCABULARY] 舞踏 (Level 36)
  UPDATE item_meanings SET meaning = 'Seni Tari', primary_meaning = true, accepted_answer = true WHERE id = 'd214f195-b667-4dcd-a603-a86582859139';
  UPDATE items SET slug = 'seni-tari' WHERE id = '004dfbdd-db70-4220-b68e-389a283f5c36';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '004dfbdd-db70-4220-b68e-389a283f5c36' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Dansa'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('004dfbdd-db70-4220-b68e-389a283f5c36', 'Dansa', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '004dfbdd-db70-4220-b68e-389a283f5c36' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Tarian'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('004dfbdd-db70-4220-b68e-389a283f5c36', 'Tarian', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '004dfbdd-db70-4220-b68e-389a283f5c36' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Dance'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('004dfbdd-db70-4220-b68e-389a283f5c36', 'Dance', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '004dfbdd-db70-4220-b68e-389a283f5c36' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Dancing'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('004dfbdd-db70-4220-b68e-389a283f5c36', 'Dancing', false, true);
  END IF;

  -- [VOCABULARY] 許諾 (Level 36)
  UPDATE item_meanings SET meaning = 'Pemberian Izin', primary_meaning = true, accepted_answer = true WHERE id = 'a9117be8-5f43-4d78-a23f-bb9448eb8b71';
  UPDATE items SET slug = 'pemberian-izin' WHERE id = 'ebe49b2b-c15b-44a3-a710-8fb11297ce53';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'ebe49b2b-c15b-44a3-a710-8fb11297ce53' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Persetujuan Lisensi'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('ebe49b2b-c15b-44a3-a710-8fb11297ce53', 'Persetujuan Lisensi', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'ebe49b2b-c15b-44a3-a710-8fb11297ce53' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Izin'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('ebe49b2b-c15b-44a3-a710-8fb11297ce53', 'Izin', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'ebe49b2b-c15b-44a3-a710-8fb11297ce53' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Permission'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('ebe49b2b-c15b-44a3-a710-8fb11297ce53', 'Permission', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'ebe49b2b-c15b-44a3-a710-8fb11297ce53' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Consent'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('ebe49b2b-c15b-44a3-a710-8fb11297ce53', 'Consent', false, true);
  END IF;

  -- [VOCABULARY] 貴い (Level 36)
  UPDATE item_meanings SET meaning = 'Sangat Berharga', primary_meaning = true, accepted_answer = true WHERE id = '503b4e8d-0897-450f-a6b8-66a1f3c5c20f';
  UPDATE items SET slug = 'sangat-berharga' WHERE id = '8e23a7a3-7a8f-49ef-9a97-c2d7145e2786';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '8e23a7a3-7a8f-49ef-9a97-c2d7145e2786' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Mulia Luhur'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('8e23a7a3-7a8f-49ef-9a97-c2d7145e2786', 'Mulia Luhur', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '8e23a7a3-7a8f-49ef-9a97-c2d7145e2786' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Bangsawan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('8e23a7a3-7a8f-49ef-9a97-c2d7145e2786', 'Bangsawan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '8e23a7a3-7a8f-49ef-9a97-c2d7145e2786' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Precious'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('8e23a7a3-7a8f-49ef-9a97-c2d7145e2786', 'Precious', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '8e23a7a3-7a8f-49ef-9a97-c2d7145e2786' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Noble'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('8e23a7a3-7a8f-49ef-9a97-c2d7145e2786', 'Noble', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '8e23a7a3-7a8f-49ef-9a97-c2d7145e2786' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Sacred'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('8e23a7a3-7a8f-49ef-9a97-c2d7145e2786', 'Sacred', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '8e23a7a3-7a8f-49ef-9a97-c2d7145e2786' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Invaluable'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('8e23a7a3-7a8f-49ef-9a97-c2d7145e2786', 'Invaluable', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '8e23a7a3-7a8f-49ef-9a97-c2d7145e2786' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Valuable'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('8e23a7a3-7a8f-49ef-9a97-c2d7145e2786', 'Valuable', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '8e23a7a3-7a8f-49ef-9a97-c2d7145e2786' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Holy'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('8e23a7a3-7a8f-49ef-9a97-c2d7145e2786', 'Holy', false, true);
  END IF;

  -- [VOCABULARY] 超〜 (Level 36)
  UPDATE item_meanings SET meaning = 'Super...', primary_meaning = true, accepted_answer = true WHERE id = 'e7e7a417-45a7-44f2-ae8d-40e23d989248';
  UPDATE items SET slug = 'super' WHERE id = '1da8f7cd-3db5-45b4-8b71-dfc7d4f95a62';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '1da8f7cd-3db5-45b4-8b71-dfc7d4f95a62' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Sangat...'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('1da8f7cd-3db5-45b4-8b71-dfc7d4f95a62', 'Sangat...', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '1da8f7cd-3db5-45b4-8b71-dfc7d4f95a62' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Luar Biasa...'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('1da8f7cd-3db5-45b4-8b71-dfc7d4f95a62', 'Luar Biasa...', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '1da8f7cd-3db5-45b4-8b71-dfc7d4f95a62' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Sangat'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('1da8f7cd-3db5-45b4-8b71-dfc7d4f95a62', 'Sangat', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '1da8f7cd-3db5-45b4-8b71-dfc7d4f95a62' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Super'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('1da8f7cd-3db5-45b4-8b71-dfc7d4f95a62', 'Super', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '1da8f7cd-3db5-45b4-8b71-dfc7d4f95a62' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Ultra'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('1da8f7cd-3db5-45b4-8b71-dfc7d4f95a62', 'Ultra', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '1da8f7cd-3db5-45b4-8b71-dfc7d4f95a62' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Really'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('1da8f7cd-3db5-45b4-8b71-dfc7d4f95a62', 'Really', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '1da8f7cd-3db5-45b4-8b71-dfc7d4f95a62' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Benar-benar'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('1da8f7cd-3db5-45b4-8b71-dfc7d4f95a62', 'Benar-benar', false, true);
  END IF;

  -- [VOCABULARY] 超自然的 (Level 36)
  UPDATE item_meanings SET meaning = 'Supranatural', primary_meaning = true, accepted_answer = true WHERE id = 'b448b976-f3df-443b-be82-579e0951f865';
  UPDATE items SET slug = 'supranatural' WHERE id = '9012de8f-7497-4011-8796-4ec88dfbb743';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '9012de8f-7497-4011-8796-4ec88dfbb743' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Gaib'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('9012de8f-7497-4011-8796-4ec88dfbb743', 'Gaib', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '9012de8f-7497-4011-8796-4ec88dfbb743' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Supernatural'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('9012de8f-7497-4011-8796-4ec88dfbb743', 'Supernatural', false, true);
  END IF;

  -- [VOCABULARY] 踏む (Level 36)
  UPDATE item_meanings SET meaning = 'Menginjak', primary_meaning = true, accepted_answer = true WHERE id = '92bb5481-9ff1-4207-ae4a-0e641abb4553';
  UPDATE items SET slug = 'menginjak' WHERE id = '4b2eca7a-a595-4305-a837-f822e2aef6c4';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '4b2eca7a-a595-4305-a837-f822e2aef6c4' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Menapakkan Kaki'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('4b2eca7a-a595-4305-a837-f822e2aef6c4', 'Menapakkan Kaki', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '4b2eca7a-a595-4305-a837-f822e2aef6c4' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Untuk Melangkah'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('4b2eca7a-a595-4305-a837-f822e2aef6c4', 'Untuk Melangkah', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '4b2eca7a-a595-4305-a837-f822e2aef6c4' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Step On'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('4b2eca7a-a595-4305-a837-f822e2aef6c4', 'To Step On', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '4b2eca7a-a595-4305-a837-f822e2aef6c4' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Tread On'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('4b2eca7a-a595-4305-a837-f822e2aef6c4', 'To Tread On', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '4b2eca7a-a595-4305-a837-f822e2aef6c4' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Untuk Menginjak'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('4b2eca7a-a595-4305-a837-f822e2aef6c4', 'Untuk Menginjak', false, true);
  END IF;

  -- [VOCABULARY] 連盟 (Level 36)
  UPDATE item_meanings SET meaning = 'Federasi', primary_meaning = true, accepted_answer = true WHERE id = '19fb0e2a-9406-4147-830a-9cbc765cf52a';
  UPDATE items SET slug = 'federasi' WHERE id = '93cac562-2610-48eb-af14-397d986698db';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '93cac562-2610-48eb-af14-397d986698db' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Liga Persatuan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('93cac562-2610-48eb-af14-397d986698db', 'Liga Persatuan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '93cac562-2610-48eb-af14-397d986698db' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Liga'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('93cac562-2610-48eb-af14-397d986698db', 'Liga', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '93cac562-2610-48eb-af14-397d986698db' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Federation'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('93cac562-2610-48eb-af14-397d986698db', 'Federation', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '93cac562-2610-48eb-af14-397d986698db' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Alliance'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('93cac562-2610-48eb-af14-397d986698db', 'Alliance', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '93cac562-2610-48eb-af14-397d986698db' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Union'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('93cac562-2610-48eb-af14-397d986698db', 'Union', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '93cac562-2610-48eb-af14-397d986698db' AND LOWER(TRIM(meaning)) = LOWER(TRIM('League'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('93cac562-2610-48eb-af14-397d986698db', 'League', false, true);
  END IF;

  -- [VOCABULARY] 遺伝 (Level 36)
  UPDATE item_meanings SET meaning = 'Pewarisan Sifat', primary_meaning = true, accepted_answer = true WHERE id = 'd3ebe230-24f2-4aaf-be57-adb0056058c8';
  UPDATE items SET slug = 'pewarisan-sifat' WHERE id = 'edb2de02-2d39-44bd-8ec9-ab86d5d5c6b9';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'edb2de02-2d39-44bd-8ec9-ab86d5d5c6b9' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Genetika'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('edb2de02-2d39-44bd-8ec9-ab86d5d5c6b9', 'Genetika', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'edb2de02-2d39-44bd-8ec9-ab86d5d5c6b9' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Keturunan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('edb2de02-2d39-44bd-8ec9-ab86d5d5c6b9', 'Keturunan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'edb2de02-2d39-44bd-8ec9-ab86d5d5c6b9' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Heredity'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('edb2de02-2d39-44bd-8ec9-ab86d5d5c6b9', 'Heredity', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'edb2de02-2d39-44bd-8ec9-ab86d5d5c6b9' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Genetics'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('edb2de02-2d39-44bd-8ec9-ab86d5d5c6b9', 'Genetics', false, true);
  END IF;

  -- [VOCABULARY] 遺体 (Level 36)
  UPDATE item_meanings SET meaning = 'Jenazah', primary_meaning = true, accepted_answer = true WHERE id = '170acfef-7f6f-4f8c-8ea3-5e6c1022f5dc';
  UPDATE items SET slug = 'jenazah' WHERE id = 'f1694a97-b7f4-43ec-bf15-1ae286f9e60a';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'f1694a97-b7f4-43ec-bf15-1ae286f9e60a' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Jasad'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('f1694a97-b7f4-43ec-bf15-1ae286f9e60a', 'Jasad', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'f1694a97-b7f4-43ec-bf15-1ae286f9e60a' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Mayat'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('f1694a97-b7f4-43ec-bf15-1ae286f9e60a', 'Mayat', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'f1694a97-b7f4-43ec-bf15-1ae286f9e60a' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Remains'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('f1694a97-b7f4-43ec-bf15-1ae286f9e60a', 'Remains', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'f1694a97-b7f4-43ec-bf15-1ae286f9e60a' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Corpse'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('f1694a97-b7f4-43ec-bf15-1ae286f9e60a', 'Corpse', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'f1694a97-b7f4-43ec-bf15-1ae286f9e60a' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Sisa Manusia'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('f1694a97-b7f4-43ec-bf15-1ae286f9e60a', 'Sisa Manusia', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'f1694a97-b7f4-43ec-bf15-1ae286f9e60a' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Human Remains'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('f1694a97-b7f4-43ec-bf15-1ae286f9e60a', 'Human Remains', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'f1694a97-b7f4-43ec-bf15-1ae286f9e60a' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Dead Body'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('f1694a97-b7f4-43ec-bf15-1ae286f9e60a', 'Dead Body', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'f1694a97-b7f4-43ec-bf15-1ae286f9e60a' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Cadaver'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('f1694a97-b7f4-43ec-bf15-1ae286f9e60a', 'Cadaver', false, true);
  END IF;

  -- [VOCABULARY] 遺失 (Level 36)
  UPDATE item_meanings SET meaning = 'Barang Hilang', primary_meaning = true, accepted_answer = true WHERE id = 'ba17317d-ac93-4969-9482-dca15ca8068a';
  UPDATE items SET slug = 'barang-hilang' WHERE id = '38699e4e-8c2a-4ce2-aa31-1d481f30b1b2';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '38699e4e-8c2a-4ce2-aa31-1d481f30b1b2' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Ketinggalan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('38699e4e-8c2a-4ce2-aa31-1d481f30b1b2', 'Ketinggalan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '38699e4e-8c2a-4ce2-aa31-1d481f30b1b2' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Kehilangan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('38699e4e-8c2a-4ce2-aa31-1d481f30b1b2', 'Kehilangan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '38699e4e-8c2a-4ce2-aa31-1d481f30b1b2' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Loss'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('38699e4e-8c2a-4ce2-aa31-1d481f30b1b2', 'Loss', false, true);
  END IF;

  -- [VOCABULARY] 遺産 (Level 36)
  UPDATE item_meanings SET meaning = 'Harta Warisan', primary_meaning = true, accepted_answer = true WHERE id = 'e3f64b8a-8eea-48d5-9ced-ce2a76d67f04';
  UPDATE items SET slug = 'harta-warisan' WHERE id = '9720b1bd-610c-4ecc-a658-4648a41968e0';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '9720b1bd-610c-4ecc-a658-4648a41968e0' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Warisan Budaya'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('9720b1bd-610c-4ecc-a658-4648a41968e0', 'Warisan Budaya', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '9720b1bd-610c-4ecc-a658-4648a41968e0' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Warisan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('9720b1bd-610c-4ecc-a658-4648a41968e0', 'Warisan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '9720b1bd-610c-4ecc-a658-4648a41968e0' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Heritage'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('9720b1bd-610c-4ecc-a658-4648a41968e0', 'Heritage', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '9720b1bd-610c-4ecc-a658-4648a41968e0' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Inheritance'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('9720b1bd-610c-4ecc-a658-4648a41968e0', 'Inheritance', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '9720b1bd-610c-4ecc-a658-4648a41968e0' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Legacy'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('9720b1bd-610c-4ecc-a658-4648a41968e0', 'Legacy', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '9720b1bd-610c-4ecc-a658-4648a41968e0' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Bequest'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('9720b1bd-610c-4ecc-a658-4648a41968e0', 'Bequest', false, true);
  END IF;

  -- [VOCABULARY] 頼む (Level 36)
  UPDATE item_meanings SET meaning = 'Memohon', primary_meaning = true, accepted_answer = true WHERE id = 'd3c51e66-8230-452f-ab68-e24248acb18e';
  UPDATE items SET slug = 'memohon' WHERE id = '0c63033d-58a8-4dc7-a784-ae8a9ac8bdc2';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '0c63033d-58a8-4dc7-a784-ae8a9ac8bdc2' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Meminta Tolong'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('0c63033d-58a8-4dc7-a784-ae8a9ac8bdc2', 'Meminta Tolong', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '0c63033d-58a8-4dc7-a784-ae8a9ac8bdc2' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Memesan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('0c63033d-58a8-4dc7-a784-ae8a9ac8bdc2', 'Memesan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '0c63033d-58a8-4dc7-a784-ae8a9ac8bdc2' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Untuk Meminta'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('0c63033d-58a8-4dc7-a784-ae8a9ac8bdc2', 'Untuk Meminta', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '0c63033d-58a8-4dc7-a784-ae8a9ac8bdc2' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Request'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('0c63033d-58a8-4dc7-a784-ae8a9ac8bdc2', 'To Request', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '0c63033d-58a8-4dc7-a784-ae8a9ac8bdc2' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Ask For'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('0c63033d-58a8-4dc7-a784-ae8a9ac8bdc2', 'To Ask For', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '0c63033d-58a8-4dc7-a784-ae8a9ac8bdc2' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Entrust'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('0c63033d-58a8-4dc7-a784-ae8a9ac8bdc2', 'To Entrust', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '0c63033d-58a8-4dc7-a784-ae8a9ac8bdc2' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Rely On'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('0c63033d-58a8-4dc7-a784-ae8a9ac8bdc2', 'To Rely On', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '0c63033d-58a8-4dc7-a784-ae8a9ac8bdc2' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Untuk Mengandalkan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('0c63033d-58a8-4dc7-a784-ae8a9ac8bdc2', 'Untuk Mengandalkan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '0c63033d-58a8-4dc7-a784-ae8a9ac8bdc2' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Untuk Mempercayakan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('0c63033d-58a8-4dc7-a784-ae8a9ac8bdc2', 'Untuk Mempercayakan', false, true);
  END IF;

  -- [VOCABULARY] 馬鹿 (Level 36)
  UPDATE item_meanings SET meaning = 'Bodoh', primary_meaning = true, accepted_answer = true WHERE id = '244247f1-7d2a-4e81-9843-4b15ab1e6cf1';
  UPDATE items SET slug = 'bodoh' WHERE id = '7efae14b-3df2-4ae8-ba16-a6ab833b86f0';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '7efae14b-3df2-4ae8-ba16-a6ab833b86f0' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Konyol'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('7efae14b-3df2-4ae8-ba16-a6ab833b86f0', 'Konyol', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '7efae14b-3df2-4ae8-ba16-a6ab833b86f0' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Baka'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('7efae14b-3df2-4ae8-ba16-a6ab833b86f0', 'Baka', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '7efae14b-3df2-4ae8-ba16-a6ab833b86f0' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Idiot'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('7efae14b-3df2-4ae8-ba16-a6ab833b86f0', 'Idiot', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '7efae14b-3df2-4ae8-ba16-a6ab833b86f0' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Fool'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('7efae14b-3df2-4ae8-ba16-a6ab833b86f0', 'Fool', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '7efae14b-3df2-4ae8-ba16-a6ab833b86f0' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Stupid'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('7efae14b-3df2-4ae8-ba16-a6ab833b86f0', 'Stupid', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '7efae14b-3df2-4ae8-ba16-a6ab833b86f0' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Absurd'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('7efae14b-3df2-4ae8-ba16-a6ab833b86f0', 'Absurd', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '7efae14b-3df2-4ae8-ba16-a6ab833b86f0' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Dumb'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('7efae14b-3df2-4ae8-ba16-a6ab833b86f0', 'Dumb', false, true);
  END IF;

END $$;
