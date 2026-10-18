-- Migration: Batch 3 Part 1 (Level 31)
-- Total items: 99

DO $$
BEGIN

  -- [KANJI] 似 (Level 31)
  UPDATE item_meanings SET meaning = 'Mirip', primary_meaning = true, accepted_answer = true WHERE id = '286eea2b-a8c4-449a-bf92-52c9aac647bd';
  UPDATE items SET slug = 'mirip' WHERE id = '02b0201b-a034-4a40-9495-d174d081f6cd';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '02b0201b-a034-4a40-9495-d174d081f6cd' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Menyerupai'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('02b0201b-a034-4a40-9495-d174d081f6cd', 'Menyerupai', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '02b0201b-a034-4a40-9495-d174d081f6cd' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Resemble'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('02b0201b-a034-4a40-9495-d174d081f6cd', 'Resemble', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '02b0201b-a034-4a40-9495-d174d081f6cd' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Similar'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('02b0201b-a034-4a40-9495-d174d081f6cd', 'Similar', false, true);
  END IF;

  -- [KANJI] 偵 (Level 31)
  UPDATE item_meanings SET meaning = 'Mengintai', primary_meaning = true, accepted_answer = true WHERE id = 'bba0bacc-ff86-439b-8e45-8a37b3019f68';
  UPDATE items SET slug = 'mengintai' WHERE id = '17fed75e-f6b1-42a8-9767-620b165a72d9';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '17fed75e-f6b1-42a8-9767-620b165a72d9' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Memata-matai'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('17fed75e-f6b1-42a8-9767-620b165a72d9', 'Memata-matai', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '17fed75e-f6b1-42a8-9767-620b165a72d9' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Spy'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('17fed75e-f6b1-42a8-9767-620b165a72d9', 'Spy', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '17fed75e-f6b1-42a8-9767-620b165a72d9' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Investigate'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('17fed75e-f6b1-42a8-9767-620b165a72d9', 'Investigate', false, true);
  END IF;

  -- [KANJI] 嘆 (Level 31)
  UPDATE item_meanings SET meaning = 'Menghela Napas', primary_meaning = true, accepted_answer = true WHERE id = 'f4833caf-b836-40e0-bd2a-73466ba491e6';
  UPDATE items SET slug = 'menghela-napas' WHERE id = 'e42dadad-15ef-4bbe-a099-b556f64986e5';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'e42dadad-15ef-4bbe-a099-b556f64986e5' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Meratapi'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('e42dadad-15ef-4bbe-a099-b556f64986e5', 'Meratapi', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'e42dadad-15ef-4bbe-a099-b556f64986e5' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Sigh'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('e42dadad-15ef-4bbe-a099-b556f64986e5', 'Sigh', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'e42dadad-15ef-4bbe-a099-b556f64986e5' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Mendesah'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('e42dadad-15ef-4bbe-a099-b556f64986e5', 'Mendesah', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'e42dadad-15ef-4bbe-a099-b556f64986e5' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Lament'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('e42dadad-15ef-4bbe-a099-b556f64986e5', 'Lament', false, true);
  END IF;

  -- [KANJI] 均 (Level 31)
  UPDATE item_meanings SET meaning = 'Rata', primary_meaning = true, accepted_answer = true WHERE id = '6ab7077a-7d37-4445-bcf3-04fac37781eb';
  UPDATE items SET slug = 'rata' WHERE id = '90426acb-43bf-4b04-9ed2-16b2852b963f';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '90426acb-43bf-4b04-9ed2-16b2852b963f' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Seimbang'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('90426acb-43bf-4b04-9ed2-16b2852b963f', 'Seimbang', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '90426acb-43bf-4b04-9ed2-16b2852b963f' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Setara'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('90426acb-43bf-4b04-9ed2-16b2852b963f', 'Setara', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '90426acb-43bf-4b04-9ed2-16b2852b963f' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Equal'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('90426acb-43bf-4b04-9ed2-16b2852b963f', 'Equal', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '90426acb-43bf-4b04-9ed2-16b2852b963f' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Even'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('90426acb-43bf-4b04-9ed2-16b2852b963f', 'Even', false, true);
  END IF;

  -- [KANJI] 尋 (Level 31)
  UPDATE item_meanings SET meaning = 'Bertanya', primary_meaning = true, accepted_answer = true WHERE id = '32cd8cff-4f96-4606-892c-7ceeb20566cd';
  UPDATE items SET slug = 'bertanya' WHERE id = '4d273541-6055-434c-81f3-6bfe0ccaeca2';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '4d273541-6055-434c-81f3-6bfe0ccaeca2' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Menanyakan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('4d273541-6055-434c-81f3-6bfe0ccaeca2', 'Menanyakan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '4d273541-6055-434c-81f3-6bfe0ccaeca2' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Inquire'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('4d273541-6055-434c-81f3-6bfe0ccaeca2', 'Inquire', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '4d273541-6055-434c-81f3-6bfe0ccaeca2' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Ask'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('4d273541-6055-434c-81f3-6bfe0ccaeca2', 'Ask', false, true);
  END IF;

  -- [KANJI] 帯 (Level 31)
  UPDATE item_meanings SET meaning = 'Sabuk', primary_meaning = true, accepted_answer = true WHERE id = '910651f8-337e-4759-b3ba-f2dabf482ed1';
  UPDATE items SET slug = 'sabuk' WHERE id = 'c7dbc511-524e-4a09-a1a0-52b5e57d61dc';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'c7dbc511-524e-4a09-a1a0-52b5e57d61dc' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Sabuk Kimono'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('c7dbc511-524e-4a09-a1a0-52b5e57d61dc', 'Sabuk Kimono', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'c7dbc511-524e-4a09-a1a0-52b5e57d61dc' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Wilayah'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('c7dbc511-524e-4a09-a1a0-52b5e57d61dc', 'Wilayah', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'c7dbc511-524e-4a09-a1a0-52b5e57d61dc' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Belt'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('c7dbc511-524e-4a09-a1a0-52b5e57d61dc', 'Belt', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'c7dbc511-524e-4a09-a1a0-52b5e57d61dc' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Zone'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('c7dbc511-524e-4a09-a1a0-52b5e57d61dc', 'Zone', false, true);
  END IF;

  -- [KANJI] 幾 (Level 31)
  UPDATE item_meanings SET meaning = 'Berapa Banyak', primary_meaning = true, accepted_answer = true WHERE id = 'b9d7be77-4812-45f0-99bb-54e54533b8ba';
  UPDATE items SET slug = 'berapa-banyak' WHERE id = '9ed1c58d-0f55-4ff9-8bab-cec8c57bbc3c';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '9ed1c58d-0f55-4ff9-8bab-cec8c57bbc3c' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Berapa'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('9ed1c58d-0f55-4ff9-8bab-cec8c57bbc3c', 'Berapa', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '9ed1c58d-0f55-4ff9-8bab-cec8c57bbc3c' AND LOWER(TRIM(meaning)) = LOWER(TRIM('How Much'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('9ed1c58d-0f55-4ff9-8bab-cec8c57bbc3c', 'How Much', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '9ed1c58d-0f55-4ff9-8bab-cec8c57bbc3c' AND LOWER(TRIM(meaning)) = LOWER(TRIM('How Many'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('9ed1c58d-0f55-4ff9-8bab-cec8c57bbc3c', 'How Many', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '9ed1c58d-0f55-4ff9-8bab-cec8c57bbc3c' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Berapa harganya'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('9ed1c58d-0f55-4ff9-8bab-cec8c57bbc3c', 'Berapa harganya', false, true);
  END IF;

  -- [KANJI] 廊 (Level 31)
  UPDATE item_meanings SET meaning = 'Lorong', primary_meaning = true, accepted_answer = true WHERE id = '37f13ffc-e6ea-4f04-a8cc-f513e6b10040';
  UPDATE items SET slug = 'lorong' WHERE id = 'e1ac5467-d6af-43ee-a8a1-c365dfe7c9a2';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'e1ac5467-d6af-43ee-a8a1-c365dfe7c9a2' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Selasar'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('e1ac5467-d6af-43ee-a8a1-c365dfe7c9a2', 'Selasar', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'e1ac5467-d6af-43ee-a8a1-c365dfe7c9a2' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Corridor'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('e1ac5467-d6af-43ee-a8a1-c365dfe7c9a2', 'Corridor', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'e1ac5467-d6af-43ee-a8a1-c365dfe7c9a2' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Koridor'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('e1ac5467-d6af-43ee-a8a1-c365dfe7c9a2', 'Koridor', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'e1ac5467-d6af-43ee-a8a1-c365dfe7c9a2' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Hallway'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('e1ac5467-d6af-43ee-a8a1-c365dfe7c9a2', 'Hallway', false, true);
  END IF;

  -- [KANJI] 径 (Level 31)
  UPDATE item_meanings SET meaning = 'Garis Tengah', primary_meaning = true, accepted_answer = true WHERE id = '7de218cd-f441-4142-baff-42f8c560de8d';
  UPDATE items SET slug = 'garis-tengah' WHERE id = 'fe7a7ef0-9a16-4dcc-ab15-31f937bf9655';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'fe7a7ef0-9a16-4dcc-ab15-31f937bf9655' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Diameter'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('fe7a7ef0-9a16-4dcc-ab15-31f937bf9655', 'Diameter', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'fe7a7ef0-9a16-4dcc-ab15-31f937bf9655' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Jalur'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('fe7a7ef0-9a16-4dcc-ab15-31f937bf9655', 'Jalur', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'fe7a7ef0-9a16-4dcc-ab15-31f937bf9655' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Path'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('fe7a7ef0-9a16-4dcc-ab15-31f937bf9655', 'Path', false, true);
  END IF;

  -- [KANJI] 徳 (Level 31)
  UPDATE item_meanings SET meaning = 'Kebajikan', primary_meaning = true, accepted_answer = true WHERE id = '137555cb-702d-47ad-b22d-4a1ee0e2cf18';
  UPDATE items SET slug = 'kebajikan' WHERE id = '3dee9138-a78a-4be3-9c78-eb8bd82b5c7b';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '3dee9138-a78a-4be3-9c78-eb8bd82b5c7b' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Budi Pekerti'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('3dee9138-a78a-4be3-9c78-eb8bd82b5c7b', 'Budi Pekerti', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '3dee9138-a78a-4be3-9c78-eb8bd82b5c7b' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Virtue'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('3dee9138-a78a-4be3-9c78-eb8bd82b5c7b', 'Virtue', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '3dee9138-a78a-4be3-9c78-eb8bd82b5c7b' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Goodness'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('3dee9138-a78a-4be3-9c78-eb8bd82b5c7b', 'Goodness', false, true);
  END IF;

  -- [KANJI] 掃 (Level 31)
  UPDATE item_meanings SET meaning = 'Menyapu', primary_meaning = true, accepted_answer = true WHERE id = '83141ccc-d69d-404f-968f-3ecfcd891bf6';
  UPDATE items SET slug = 'menyapu' WHERE id = '89bae33e-dfe1-460a-8183-b49474af3bd9';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '89bae33e-dfe1-460a-8183-b49474af3bd9' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Membersihkan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('89bae33e-dfe1-460a-8183-b49474af3bd9', 'Membersihkan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '89bae33e-dfe1-460a-8183-b49474af3bd9' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Sweep'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('89bae33e-dfe1-460a-8183-b49474af3bd9', 'Sweep', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '89bae33e-dfe1-460a-8183-b49474af3bd9' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Clean'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('89bae33e-dfe1-460a-8183-b49474af3bd9', 'Clean', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '89bae33e-dfe1-460a-8183-b49474af3bd9' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Sweeping'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('89bae33e-dfe1-460a-8183-b49474af3bd9', 'Sweeping', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '89bae33e-dfe1-460a-8183-b49474af3bd9' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Cleaning'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('89bae33e-dfe1-460a-8183-b49474af3bd9', 'Cleaning', false, true);
  END IF;

  -- [KANJI] 救 (Level 31)
  UPDATE item_meanings SET meaning = 'Menyelamatkan', primary_meaning = true, accepted_answer = true WHERE id = '0dc91ac5-4367-4abf-ba56-d3627d82f5d5';
  UPDATE items SET slug = 'menyelamatkan' WHERE id = 'd065ce8f-3d73-4fdf-8387-d854e6cc81b3';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'd065ce8f-3d73-4fdf-8387-d854e6cc81b3' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Menolong'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('d065ce8f-3d73-4fdf-8387-d854e6cc81b3', 'Menolong', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'd065ce8f-3d73-4fdf-8387-d854e6cc81b3' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Rescue'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('d065ce8f-3d73-4fdf-8387-d854e6cc81b3', 'Rescue', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'd065ce8f-3d73-4fdf-8387-d854e6cc81b3' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Save'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('d065ce8f-3d73-4fdf-8387-d854e6cc81b3', 'Save', false, true);
  END IF;

  -- [KANJI] 散 (Level 31)
  UPDATE item_meanings SET meaning = 'Menyebar', primary_meaning = true, accepted_answer = true WHERE id = 'de09587f-c251-44f3-b064-ae3a41ed9c8e';
  UPDATE items SET slug = 'menyebar' WHERE id = '92b5f5bc-2f8f-4fd3-a8ad-9161c09a2640';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '92b5f5bc-2f8f-4fd3-a8ad-9161c09a2640' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Berhamburan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('92b5f5bc-2f8f-4fd3-a8ad-9161c09a2640', 'Berhamburan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '92b5f5bc-2f8f-4fd3-a8ad-9161c09a2640' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Scatter'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('92b5f5bc-2f8f-4fd3-a8ad-9161c09a2640', 'Scatter', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '92b5f5bc-2f8f-4fd3-a8ad-9161c09a2640' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Menyebarkan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('92b5f5bc-2f8f-4fd3-a8ad-9161c09a2640', 'Menyebarkan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '92b5f5bc-2f8f-4fd3-a8ad-9161c09a2640' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Disperse'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('92b5f5bc-2f8f-4fd3-a8ad-9161c09a2640', 'Disperse', false, true);
  END IF;

  -- [KANJI] 既 (Level 31)
  UPDATE item_meanings SET meaning = 'Sudah', primary_meaning = true, accepted_answer = true WHERE id = '6cc7578a-f968-47ae-a7c3-593bbe834ac3';
  UPDATE items SET slug = 'sudah' WHERE id = '28c0df44-98ab-4e11-8f70-94b72a89b511';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '28c0df44-98ab-4e11-8f70-94b72a89b511' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Telah Lalu'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('28c0df44-98ab-4e11-8f70-94b72a89b511', 'Telah Lalu', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '28c0df44-98ab-4e11-8f70-94b72a89b511' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Already'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('28c0df44-98ab-4e11-8f70-94b72a89b511', 'Already', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '28c0df44-98ab-4e11-8f70-94b72a89b511' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Previously'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('28c0df44-98ab-4e11-8f70-94b72a89b511', 'Previously', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '28c0df44-98ab-4e11-8f70-94b72a89b511' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Sebelumnya'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('28c0df44-98ab-4e11-8f70-94b72a89b511', 'Sebelumnya', false, true);
  END IF;

  -- [KANJI] 普 (Level 31)
  UPDATE item_meanings SET meaning = 'Umum', primary_meaning = true, accepted_answer = true WHERE id = '3020cc41-6f47-48c7-b6e4-864903d912cd';
  UPDATE items SET slug = 'umum' WHERE id = '3274a01e-a62b-43c2-b552-1266a0c5c626';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '3274a01e-a62b-43c2-b552-1266a0c5c626' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Biasa'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('3274a01e-a62b-43c2-b552-1266a0c5c626', 'Biasa', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '3274a01e-a62b-43c2-b552-1266a0c5c626' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Normal'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('3274a01e-a62b-43c2-b552-1266a0c5c626', 'Normal', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '3274a01e-a62b-43c2-b552-1266a0c5c626' AND LOWER(TRIM(meaning)) = LOWER(TRIM('General'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('3274a01e-a62b-43c2-b552-1266a0c5c626', 'General', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '3274a01e-a62b-43c2-b552-1266a0c5c626' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Common'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('3274a01e-a62b-43c2-b552-1266a0c5c626', 'Common', false, true);
  END IF;

  -- [KANJI] 棒 (Level 31)
  UPDATE item_meanings SET meaning = 'Tongkat', primary_meaning = true, accepted_answer = true WHERE id = 'd51e4bae-56d9-4d15-816f-e90ba405b368';
  UPDATE items SET slug = 'tongkat' WHERE id = 'bc91bc2e-6043-458d-b051-bd3cc37c9c8d';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'bc91bc2e-6043-458d-b051-bd3cc37c9c8d' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Batang Kayu'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('bc91bc2e-6043-458d-b051-bd3cc37c9c8d', 'Batang Kayu', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'bc91bc2e-6043-458d-b051-bd3cc37c9c8d' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Pole'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('bc91bc2e-6043-458d-b051-bd3cc37c9c8d', 'Pole', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'bc91bc2e-6043-458d-b051-bd3cc37c9c8d' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Stick'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('bc91bc2e-6043-458d-b051-bd3cc37c9c8d', 'Stick', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'bc91bc2e-6043-458d-b051-bd3cc37c9c8d' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Tiang'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('bc91bc2e-6043-458d-b051-bd3cc37c9c8d', 'Tiang', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'bc91bc2e-6043-458d-b051-bd3cc37c9c8d' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Batang'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('bc91bc2e-6043-458d-b051-bd3cc37c9c8d', 'Batang', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'bc91bc2e-6043-458d-b051-bd3cc37c9c8d' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Wooden Pole'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('bc91bc2e-6043-458d-b051-bd3cc37c9c8d', 'Wooden Pole', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'bc91bc2e-6043-458d-b051-bd3cc37c9c8d' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Rod'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('bc91bc2e-6043-458d-b051-bd3cc37c9c8d', 'Rod', false, true);
  END IF;

  -- [KANJI] 粉 (Level 31)
  UPDATE item_meanings SET meaning = 'Bubuk', primary_meaning = true, accepted_answer = true WHERE id = 'cad0ac7b-9f6f-47ca-9d0a-72458763fd38';
  UPDATE items SET slug = 'bubuk' WHERE id = 'f2c9f0b2-13e5-403e-aa6b-76ef2612f0b6';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'f2c9f0b2-13e5-403e-aa6b-76ef2612f0b6' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Serbuk'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('f2c9f0b2-13e5-403e-aa6b-76ef2612f0b6', 'Serbuk', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'f2c9f0b2-13e5-403e-aa6b-76ef2612f0b6' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Tepung'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('f2c9f0b2-13e5-403e-aa6b-76ef2612f0b6', 'Tepung', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'f2c9f0b2-13e5-403e-aa6b-76ef2612f0b6' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Powder'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('f2c9f0b2-13e5-403e-aa6b-76ef2612f0b6', 'Powder', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'f2c9f0b2-13e5-403e-aa6b-76ef2612f0b6' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Flour'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('f2c9f0b2-13e5-403e-aa6b-76ef2612f0b6', 'Flour', false, true);
  END IF;

  -- [KANJI] 編 (Level 31)
  UPDATE item_meanings SET meaning = 'Merajut', primary_meaning = true, accepted_answer = true WHERE id = 'dbb66e20-31fc-4588-8287-8c11ca402af0';
  UPDATE items SET slug = 'merajut' WHERE id = 'ad993e5f-accd-40f1-b36b-efa74038de23';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'ad993e5f-accd-40f1-b36b-efa74038de23' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Menyusun'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('ad993e5f-accd-40f1-b36b-efa74038de23', 'Menyusun', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'ad993e5f-accd-40f1-b36b-efa74038de23' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Mengedit'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('ad993e5f-accd-40f1-b36b-efa74038de23', 'Mengedit', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'ad993e5f-accd-40f1-b36b-efa74038de23' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Knit'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('ad993e5f-accd-40f1-b36b-efa74038de23', 'Knit', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'ad993e5f-accd-40f1-b36b-efa74038de23' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Compile'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('ad993e5f-accd-40f1-b36b-efa74038de23', 'Compile', false, true);
  END IF;

  -- [KANJI] 胃 (Level 31)
  UPDATE item_meanings SET meaning = 'Lambung', primary_meaning = true, accepted_answer = true WHERE id = '760ee6f3-5466-4c06-bde4-ed5534fe52c4';
  UPDATE items SET slug = 'lambung' WHERE id = '9390c666-09e8-40b5-9918-5147b94951db';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '9390c666-09e8-40b5-9918-5147b94951db' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Perut'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('9390c666-09e8-40b5-9918-5147b94951db', 'Perut', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '9390c666-09e8-40b5-9918-5147b94951db' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Stomach'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('9390c666-09e8-40b5-9918-5147b94951db', 'Stomach', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '9390c666-09e8-40b5-9918-5147b94951db' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Gastric'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('9390c666-09e8-40b5-9918-5147b94951db', 'Gastric', false, true);
  END IF;

  -- [KANJI] 脈 (Level 31)
  UPDATE item_meanings SET meaning = 'Denyut Nadi', primary_meaning = true, accepted_answer = true WHERE id = '92690041-5f24-48ff-8e00-c20cdcf424ec';
  UPDATE items SET slug = 'denyut-nadi' WHERE id = '35b99857-b6d6-44cd-8518-884085eca62a';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '35b99857-b6d6-44cd-8518-884085eca62a' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Jalur Urat'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('35b99857-b6d6-44cd-8518-884085eca62a', 'Jalur Urat', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '35b99857-b6d6-44cd-8518-884085eca62a' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Vein'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('35b99857-b6d6-44cd-8518-884085eca62a', 'Vein', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '35b99857-b6d6-44cd-8518-884085eca62a' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Pulse'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('35b99857-b6d6-44cd-8518-884085eca62a', 'Pulse', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '35b99857-b6d6-44cd-8518-884085eca62a' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Pembuluh darah'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('35b99857-b6d6-44cd-8518-884085eca62a', 'Pembuluh darah', false, true);
  END IF;

  -- [KANJI] 華 (Level 31)
  UPDATE item_meanings SET meaning = 'Megah', primary_meaning = true, accepted_answer = true WHERE id = 'bbddd4e3-e814-4936-a44a-cba1459f3474';
  UPDATE items SET slug = 'megah' WHERE id = 'fca81df6-bbf2-498b-84e3-2b2148dec6b5';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'fca81df6-bbf2-498b-84e3-2b2148dec6b5' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Semarak'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('fca81df6-bbf2-498b-84e3-2b2148dec6b5', 'Semarak', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'fca81df6-bbf2-498b-84e3-2b2148dec6b5' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Bunga'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('fca81df6-bbf2-498b-84e3-2b2148dec6b5', 'Bunga', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'fca81df6-bbf2-498b-84e3-2b2148dec6b5' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Gorgeous'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('fca81df6-bbf2-498b-84e3-2b2148dec6b5', 'Gorgeous', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'fca81df6-bbf2-498b-84e3-2b2148dec6b5' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Showy'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('fca81df6-bbf2-498b-84e3-2b2148dec6b5', 'Showy', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'fca81df6-bbf2-498b-84e3-2b2148dec6b5' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Flower'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('fca81df6-bbf2-498b-84e3-2b2148dec6b5', 'Flower', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'fca81df6-bbf2-498b-84e3-2b2148dec6b5' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Menyolok'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('fca81df6-bbf2-498b-84e3-2b2148dec6b5', 'Menyolok', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'fca81df6-bbf2-498b-84e3-2b2148dec6b5' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Sangat indah'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('fca81df6-bbf2-498b-84e3-2b2148dec6b5', 'Sangat indah', false, true);
  END IF;

  -- [KANJI] 融 (Level 31)
  UPDATE item_meanings SET meaning = 'Melebur', primary_meaning = true, accepted_answer = true WHERE id = '1ebb5c0c-7c55-4a28-9f9b-05baa6ffc783';
  UPDATE items SET slug = 'melebur' WHERE id = 'a54537db-ba1a-407c-9470-cba80fd03561';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'a54537db-ba1a-407c-9470-cba80fd03561' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Mencairkan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('a54537db-ba1a-407c-9470-cba80fd03561', 'Mencairkan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'a54537db-ba1a-407c-9470-cba80fd03561' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Finansial'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('a54537db-ba1a-407c-9470-cba80fd03561', 'Finansial', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'a54537db-ba1a-407c-9470-cba80fd03561' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Dissolve'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('a54537db-ba1a-407c-9470-cba80fd03561', 'Dissolve', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'a54537db-ba1a-407c-9470-cba80fd03561' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Melt'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('a54537db-ba1a-407c-9470-cba80fd03561', 'Melt', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'a54537db-ba1a-407c-9470-cba80fd03561' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Finance'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('a54537db-ba1a-407c-9470-cba80fd03561', 'Finance', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'a54537db-ba1a-407c-9470-cba80fd03561' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Larut'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('a54537db-ba1a-407c-9470-cba80fd03561', 'Larut', false, true);
  END IF;

  -- [KANJI] 豪 (Level 31)
  UPDATE item_meanings SET meaning = 'Hebat', primary_meaning = true, accepted_answer = true WHERE id = '1ba74b43-0b4b-4176-8bdd-a29fde76db78';
  UPDATE items SET slug = 'hebat' WHERE id = '1f681c84-d6e7-4b19-bd5f-de0dadb1debf';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '1f681c84-d6e7-4b19-bd5f-de0dadb1debf' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Megah'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('1f681c84-d6e7-4b19-bd5f-de0dadb1debf', 'Megah', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '1f681c84-d6e7-4b19-bd5f-de0dadb1debf' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Gagah'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('1f681c84-d6e7-4b19-bd5f-de0dadb1debf', 'Gagah', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '1f681c84-d6e7-4b19-bd5f-de0dadb1debf' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Exceptional'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('1f681c84-d6e7-4b19-bd5f-de0dadb1debf', 'Exceptional', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '1f681c84-d6e7-4b19-bd5f-de0dadb1debf' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Overpowering'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('1f681c84-d6e7-4b19-bd5f-de0dadb1debf', 'Overpowering', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '1f681c84-d6e7-4b19-bd5f-de0dadb1debf' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Luar biasa'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('1f681c84-d6e7-4b19-bd5f-de0dadb1debf', 'Luar biasa', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '1f681c84-d6e7-4b19-bd5f-de0dadb1debf' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Excelling'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('1f681c84-d6e7-4b19-bd5f-de0dadb1debf', 'Excelling', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '1f681c84-d6e7-4b19-bd5f-de0dadb1debf' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Tremendous'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('1f681c84-d6e7-4b19-bd5f-de0dadb1debf', 'Tremendous', false, true);
  END IF;

  -- [KANJI] 貨 (Level 31)
  UPDATE item_meanings SET meaning = 'Muatan Barang', primary_meaning = true, accepted_answer = true WHERE id = 'afdd9e12-268b-49f4-9cb1-a7335144058b';
  UPDATE items SET slug = 'muatan-barang' WHERE id = 'df37396e-8d9b-46f2-abe9-c0b8263b5a0c';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'df37396e-8d9b-46f2-abe9-c0b8263b5a0c' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Uang'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('df37396e-8d9b-46f2-abe9-c0b8263b5a0c', 'Uang', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'df37396e-8d9b-46f2-abe9-c0b8263b5a0c' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Freight'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('df37396e-8d9b-46f2-abe9-c0b8263b5a0c', 'Freight', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'df37396e-8d9b-46f2-abe9-c0b8263b5a0c' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Goods'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('df37396e-8d9b-46f2-abe9-c0b8263b5a0c', 'Goods', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'df37396e-8d9b-46f2-abe9-c0b8263b5a0c' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Kargo'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('df37396e-8d9b-46f2-abe9-c0b8263b5a0c', 'Kargo', false, true);
  END IF;

  -- [KANJI] 鑑 (Level 31)
  UPDATE item_meanings SET meaning = 'Menilai', primary_meaning = true, accepted_answer = true WHERE id = '2f6e2955-b2fa-4700-9ccb-3f2dbf849625';
  UPDATE items SET slug = 'menilai' WHERE id = '6ed0fc42-9419-4107-8dfb-8d9a8c0e14b7';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '6ed0fc42-9419-4107-8dfb-8d9a8c0e14b7' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Pedoman'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('6ed0fc42-9419-4107-8dfb-8d9a8c0e14b7', 'Pedoman', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '6ed0fc42-9419-4107-8dfb-8d9a8c0e14b7' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Teladan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('6ed0fc42-9419-4107-8dfb-8d9a8c0e14b7', 'Teladan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '6ed0fc42-9419-4107-8dfb-8d9a8c0e14b7' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Exemplar'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('6ed0fc42-9419-4107-8dfb-8d9a8c0e14b7', 'Exemplar', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '6ed0fc42-9419-4107-8dfb-8d9a8c0e14b7' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Model'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('6ed0fc42-9419-4107-8dfb-8d9a8c0e14b7', 'Model', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '6ed0fc42-9419-4107-8dfb-8d9a8c0e14b7' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Assess'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('6ed0fc42-9419-4107-8dfb-8d9a8c0e14b7', 'Assess', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '6ed0fc42-9419-4107-8dfb-8d9a8c0e14b7' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Appraise'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('6ed0fc42-9419-4107-8dfb-8d9a8c0e14b7', 'Appraise', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '6ed0fc42-9419-4107-8dfb-8d9a8c0e14b7' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Memperhitungkan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('6ed0fc42-9419-4107-8dfb-8d9a8c0e14b7', 'Memperhitungkan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '6ed0fc42-9419-4107-8dfb-8d9a8c0e14b7' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Take Into Account'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('6ed0fc42-9419-4107-8dfb-8d9a8c0e14b7', 'Take Into Account', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '6ed0fc42-9419-4107-8dfb-8d9a8c0e14b7' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Paragon'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('6ed0fc42-9419-4107-8dfb-8d9a8c0e14b7', 'Paragon', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '6ed0fc42-9419-4107-8dfb-8d9a8c0e14b7' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Learn From'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('6ed0fc42-9419-4107-8dfb-8d9a8c0e14b7', 'Learn From', false, true);
  END IF;

  -- [KANJI] 除 (Level 31)
  UPDATE item_meanings SET meaning = 'Mengecualikan', primary_meaning = true, accepted_answer = true WHERE id = '148275cc-b7bf-4da0-a1e3-2b11de266ab1';
  UPDATE items SET slug = 'mengecualikan' WHERE id = 'f9280312-d06d-402a-af73-ebe9682039e7';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'f9280312-d06d-402a-af73-ebe9682039e7' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Menghilangkan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('f9280312-d06d-402a-af73-ebe9682039e7', 'Menghilangkan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'f9280312-d06d-402a-af73-ebe9682039e7' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Exclude'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('f9280312-d06d-402a-af73-ebe9682039e7', 'Exclude', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'f9280312-d06d-402a-af73-ebe9682039e7' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Remove'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('f9280312-d06d-402a-af73-ebe9682039e7', 'Remove', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'f9280312-d06d-402a-af73-ebe9682039e7' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Menghapus'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('f9280312-d06d-402a-af73-ebe9682039e7', 'Menghapus', false, true);
  END IF;

  -- [KANJI] 陸 (Level 31)
  UPDATE item_meanings SET meaning = 'Daratan', primary_meaning = true, accepted_answer = true WHERE id = '02ef20d2-0899-4ffa-aca3-85487ed6efe2';
  UPDATE items SET slug = 'daratan' WHERE id = '1227d4e7-179a-40d3-b658-f4fec339a55c';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '1227d4e7-179a-40d3-b658-f4fec339a55c' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Tanah'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('1227d4e7-179a-40d3-b658-f4fec339a55c', 'Tanah', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '1227d4e7-179a-40d3-b658-f4fec339a55c' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Land'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('1227d4e7-179a-40d3-b658-f4fec339a55c', 'Land', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '1227d4e7-179a-40d3-b658-f4fec339a55c' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Shore'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('1227d4e7-179a-40d3-b658-f4fec339a55c', 'Shore', false, true);
  END IF;

  -- [KANJI] 離 (Level 31)
  UPDATE item_meanings SET meaning = 'Berpisah', primary_meaning = true, accepted_answer = true WHERE id = '186e492c-4798-4f09-b75a-faafecd5cf94';
  UPDATE items SET slug = 'berpisah' WHERE id = '441866be-c442-4e49-81c9-d3597ae9a222';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '441866be-c442-4e49-81c9-d3597ae9a222' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Menjauh'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('441866be-c442-4e49-81c9-d3597ae9a222', 'Menjauh', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '441866be-c442-4e49-81c9-d3597ae9a222' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Lepas'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('441866be-c442-4e49-81c9-d3597ae9a222', 'Lepas', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '441866be-c442-4e49-81c9-d3597ae9a222' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Detach'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('441866be-c442-4e49-81c9-d3597ae9a222', 'Detach', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '441866be-c442-4e49-81c9-d3597ae9a222' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Separate'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('441866be-c442-4e49-81c9-d3597ae9a222', 'Separate', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '441866be-c442-4e49-81c9-d3597ae9a222' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Melepaskan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('441866be-c442-4e49-81c9-d3597ae9a222', 'Melepaskan', false, true);
  END IF;

  -- [KANJI] 驚 (Level 31)
  UPDATE item_meanings SET meaning = 'Terkejut', primary_meaning = true, accepted_answer = true WHERE id = '40d38c41-b33a-41a1-b1ff-918f1117a3d2';
  UPDATE items SET slug = 'terkejut' WHERE id = 'cc781976-dc67-4509-a993-e279c3ad3166';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'cc781976-dc67-4509-a993-e279c3ad3166' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Takjub'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('cc781976-dc67-4509-a993-e279c3ad3166', 'Takjub', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'cc781976-dc67-4509-a993-e279c3ad3166' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Surprised'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('cc781976-dc67-4509-a993-e279c3ad3166', 'Surprised', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'cc781976-dc67-4509-a993-e279c3ad3166' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Shocked'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('cc781976-dc67-4509-a993-e279c3ad3166', 'Shocked', false, true);
  END IF;

  -- [RADICAL] 扁 (Level 31)
  UPDATE item_meanings SET meaning = 'Papan Nama', primary_meaning = true, accepted_answer = true WHERE id = '96d664dc-69d5-4b92-8637-3ef6b700f601';
  UPDATE items SET slug = 'papan-nama' WHERE id = '2452c5ec-0f8a-429d-aecd-3d22bc3ab0fc';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '2452c5ec-0f8a-429d-aecd-3d22bc3ab0fc' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Lemari Buku'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('2452c5ec-0f8a-429d-aecd-3d22bc3ab0fc', 'Lemari Buku', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '2452c5ec-0f8a-429d-aecd-3d22bc3ab0fc' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Nameplate'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('2452c5ec-0f8a-429d-aecd-3d22bc3ab0fc', 'Nameplate', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '2452c5ec-0f8a-429d-aecd-3d22bc3ab0fc' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Bookshelf'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('2452c5ec-0f8a-429d-aecd-3d22bc3ab0fc', 'Bookshelf', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '2452c5ec-0f8a-429d-aecd-3d22bc3ab0fc' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Library'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('2452c5ec-0f8a-429d-aecd-3d22bc3ab0fc', 'Library', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '2452c5ec-0f8a-429d-aecd-3d22bc3ab0fc' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Perpustakaan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('2452c5ec-0f8a-429d-aecd-3d22bc3ab0fc', 'Perpustakaan', false, true);
  END IF;

  -- [VOCABULARY] 中華 (Level 31)
  UPDATE item_meanings SET meaning = 'Masakan Tionghoa', primary_meaning = true, accepted_answer = true WHERE id = '73891755-1f29-40fe-945d-31eb19f8f013';
  UPDATE items SET slug = 'masakan-tionghoa' WHERE id = '0227d1be-e655-4d5e-b5a3-ba67ae0674dc';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '0227d1be-e655-4d5e-b5a3-ba67ae0674dc' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Tiongkok'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('0227d1be-e655-4d5e-b5a3-ba67ae0674dc', 'Tiongkok', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '0227d1be-e655-4d5e-b5a3-ba67ae0674dc' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Chinese'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('0227d1be-e655-4d5e-b5a3-ba67ae0674dc', 'Chinese', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '0227d1be-e655-4d5e-b5a3-ba67ae0674dc' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Cina'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('0227d1be-e655-4d5e-b5a3-ba67ae0674dc', 'Cina', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '0227d1be-e655-4d5e-b5a3-ba67ae0674dc' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Chinese Food'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('0227d1be-e655-4d5e-b5a3-ba67ae0674dc', 'Chinese Food', false, true);
  END IF;

  -- [VOCABULARY] 主催する (Level 31)
  UPDATE item_meanings SET meaning = 'Menyelenggarakan', primary_meaning = true, accepted_answer = true WHERE id = '960260d3-169e-4440-8697-eb246be268a8';
  UPDATE items SET slug = 'menyelenggarakan' WHERE id = 'f5bd0573-c98d-4445-9e00-05951a6696c3';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'f5bd0573-c98d-4445-9e00-05951a6696c3' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Menjadi Tuan Rumah'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('f5bd0573-c98d-4445-9e00-05951a6696c3', 'Menjadi Tuan Rumah', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'f5bd0573-c98d-4445-9e00-05951a6696c3' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Host'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('f5bd0573-c98d-4445-9e00-05951a6696c3', 'To Host', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'f5bd0573-c98d-4445-9e00-05951a6696c3' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Organize'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('f5bd0573-c98d-4445-9e00-05951a6696c3', 'To Organize', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'f5bd0573-c98d-4445-9e00-05951a6696c3' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Untuk mensponsori'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('f5bd0573-c98d-4445-9e00-05951a6696c3', 'Untuk mensponsori', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'f5bd0573-c98d-4445-9e00-05951a6696c3' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Sponsor'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('f5bd0573-c98d-4445-9e00-05951a6696c3', 'To Sponsor', false, true);
  END IF;

  -- [VOCABULARY] 似る (Level 31)
  UPDATE item_meanings SET meaning = 'Mirip', primary_meaning = true, accepted_answer = true WHERE id = '0f9b52fe-d1af-442f-be5b-e3408dc5dd30';
  UPDATE items SET slug = 'mirip' WHERE id = '9a304a4f-21d8-4a7e-9c11-bbefe83e80e5';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '9a304a4f-21d8-4a7e-9c11-bbefe83e80e5' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Menyerupai'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('9a304a4f-21d8-4a7e-9c11-bbefe83e80e5', 'Menyerupai', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '9a304a4f-21d8-4a7e-9c11-bbefe83e80e5' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Look Like'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('9a304a4f-21d8-4a7e-9c11-bbefe83e80e5', 'To Look Like', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '9a304a4f-21d8-4a7e-9c11-bbefe83e80e5' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Resemble'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('9a304a4f-21d8-4a7e-9c11-bbefe83e80e5', 'To Resemble', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '9a304a4f-21d8-4a7e-9c11-bbefe83e80e5' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Agar Terlihat Seperti'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('9a304a4f-21d8-4a7e-9c11-bbefe83e80e5', 'Agar Terlihat Seperti', false, true);
  END IF;

  -- [VOCABULARY] 催促する (Level 31)
  UPDATE item_meanings SET meaning = 'Menagih', primary_meaning = true, accepted_answer = true WHERE id = 'dfbe63ec-5873-4665-9512-e6937f99d4f2';
  UPDATE items SET slug = 'menagih' WHERE id = '145c95af-ef89-49dc-839b-291210580ee8';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '145c95af-ef89-49dc-839b-291210580ee8' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Mendesak'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('145c95af-ef89-49dc-839b-291210580ee8', 'Mendesak', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '145c95af-ef89-49dc-839b-291210580ee8' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Untuk Mendesak'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('145c95af-ef89-49dc-839b-291210580ee8', 'Untuk Mendesak', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '145c95af-ef89-49dc-839b-291210580ee8' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Urge'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('145c95af-ef89-49dc-839b-291210580ee8', 'To Urge', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '145c95af-ef89-49dc-839b-291210580ee8' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Demand'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('145c95af-ef89-49dc-839b-291210580ee8', 'To Demand', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '145c95af-ef89-49dc-839b-291210580ee8' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Untuk Menuntut'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('145c95af-ef89-49dc-839b-291210580ee8', 'Untuk Menuntut', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '145c95af-ef89-49dc-839b-291210580ee8' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Untuk Menekan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('145c95af-ef89-49dc-839b-291210580ee8', 'Untuk Menekan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '145c95af-ef89-49dc-839b-291210580ee8' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Press For'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('145c95af-ef89-49dc-839b-291210580ee8', 'To Press For', false, true);
  END IF;

  -- [VOCABULARY] 内偵 (Level 31)
  UPDATE item_meanings SET meaning = 'Penyelidikan Rahasia', primary_meaning = true, accepted_answer = true WHERE id = 'bc709514-2018-452e-9517-18be9049be44';
  UPDATE items SET slug = 'penyelidikan-rahasia' WHERE id = '29219754-a0a0-4290-bfaf-bd224dd60769';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '29219754-a0a0-4290-bfaf-bd224dd60769' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Pengintaian Diam-diam'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('29219754-a0a0-4290-bfaf-bd224dd60769', 'Pengintaian Diam-diam', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '29219754-a0a0-4290-bfaf-bd224dd60769' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Investigasi Rahasia'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('29219754-a0a0-4290-bfaf-bd224dd60769', 'Investigasi Rahasia', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '29219754-a0a0-4290-bfaf-bd224dd60769' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Pengintaian Rahasia'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('29219754-a0a0-4290-bfaf-bd224dd60769', 'Pengintaian Rahasia', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '29219754-a0a0-4290-bfaf-bd224dd60769' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Secret Investigation'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('29219754-a0a0-4290-bfaf-bd224dd60769', 'Secret Investigation', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '29219754-a0a0-4290-bfaf-bd224dd60769' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Undercover Investigation'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('29219754-a0a0-4290-bfaf-bd224dd60769', 'Undercover Investigation', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '29219754-a0a0-4290-bfaf-bd224dd60769' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Investigating Secretly'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('29219754-a0a0-4290-bfaf-bd224dd60769', 'Investigating Secretly', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '29219754-a0a0-4290-bfaf-bd224dd60769' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Investigating In Secrete'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('29219754-a0a0-4290-bfaf-bd224dd60769', 'Investigating In Secrete', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '29219754-a0a0-4290-bfaf-bd224dd60769' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Investigate Secretly'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('29219754-a0a0-4290-bfaf-bd224dd60769', 'Investigate Secretly', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '29219754-a0a0-4290-bfaf-bd224dd60769' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Investigasi Menyamar'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('29219754-a0a0-4290-bfaf-bd224dd60769', 'Investigasi Menyamar', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '29219754-a0a0-4290-bfaf-bd224dd60769' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Investigate In Secrete'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('29219754-a0a0-4290-bfaf-bd224dd60769', 'Investigate In Secrete', false, true);
  END IF;

  -- [VOCABULARY] 分離 (Level 31)
  UPDATE item_meanings SET meaning = 'Pemisahan', primary_meaning = true, accepted_answer = true WHERE id = '6e0dfc81-ee93-4909-bf4f-2a60a3084200';
  UPDATE items SET slug = 'pemisahan' WHERE id = '49ea69ca-521b-44b4-976a-d592f382197b';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '49ea69ca-521b-44b4-976a-d592f382197b' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Pemisahan Diri'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('49ea69ca-521b-44b4-976a-d592f382197b', 'Pemisahan Diri', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '49ea69ca-521b-44b4-976a-d592f382197b' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Separation'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('49ea69ca-521b-44b4-976a-d592f382197b', 'Separation', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '49ea69ca-521b-44b4-976a-d592f382197b' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Detachment'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('49ea69ca-521b-44b4-976a-d592f382197b', 'Detachment', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '49ea69ca-521b-44b4-976a-d592f382197b' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Partition'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('49ea69ca-521b-44b4-976a-d592f382197b', 'Partition', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '49ea69ca-521b-44b4-976a-d592f382197b' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Parting'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('49ea69ca-521b-44b4-976a-d592f382197b', 'Parting', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '49ea69ca-521b-44b4-976a-d592f382197b' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Detach'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('49ea69ca-521b-44b4-976a-d592f382197b', 'Detach', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '49ea69ca-521b-44b4-976a-d592f382197b' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Detaching'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('49ea69ca-521b-44b4-976a-d592f382197b', 'Detaching', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '49ea69ca-521b-44b4-976a-d592f382197b' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Segregation'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('49ea69ca-521b-44b4-976a-d592f382197b', 'Segregation', false, true);
  END IF;

  -- [VOCABULARY] 嘆く (Level 31)
  UPDATE item_meanings SET meaning = 'Meratapi', primary_meaning = true, accepted_answer = true WHERE id = 'aef2660f-8ddb-48d9-b19f-f01180443b7f';
  UPDATE items SET slug = 'meratapi' WHERE id = '9f411444-c068-44c2-b3f6-5b60262e7ede';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '9f411444-c068-44c2-b3f6-5b60262e7ede' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Berduka Cita'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('9f411444-c068-44c2-b3f6-5b60262e7ede', 'Berduka Cita', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '9f411444-c068-44c2-b3f6-5b60262e7ede' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Untuk meratap'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('9f411444-c068-44c2-b3f6-5b60262e7ede', 'Untuk meratap', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '9f411444-c068-44c2-b3f6-5b60262e7ede' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Lament'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('9f411444-c068-44c2-b3f6-5b60262e7ede', 'To Lament', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '9f411444-c068-44c2-b3f6-5b60262e7ede' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Grieve'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('9f411444-c068-44c2-b3f6-5b60262e7ede', 'To Grieve', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '9f411444-c068-44c2-b3f6-5b60262e7ede' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Meratap'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('9f411444-c068-44c2-b3f6-5b60262e7ede', 'Meratap', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '9f411444-c068-44c2-b3f6-5b60262e7ede' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Untuk berduka'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('9f411444-c068-44c2-b3f6-5b60262e7ede', 'Untuk berduka', false, true);
  END IF;

  -- [VOCABULARY] 地帯 (Level 31)
  UPDATE item_meanings SET meaning = 'Zona', primary_meaning = true, accepted_answer = true WHERE id = '49638e57-1084-47f9-9580-ed189f410c28';
  UPDATE items SET slug = 'zona' WHERE id = 'a5ff3df0-3adf-45a8-b8a3-741b07a4acc9';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'a5ff3df0-3adf-45a8-b8a3-741b07a4acc9' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Wilayah Khusus'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('a5ff3df0-3adf-45a8-b8a3-741b07a4acc9', 'Wilayah Khusus', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'a5ff3df0-3adf-45a8-b8a3-741b07a4acc9' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Daerah'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('a5ff3df0-3adf-45a8-b8a3-741b07a4acc9', 'Daerah', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'a5ff3df0-3adf-45a8-b8a3-741b07a4acc9' AND LOWER(TRIM(meaning)) = LOWER(TRIM('District'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('a5ff3df0-3adf-45a8-b8a3-741b07a4acc9', 'District', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'a5ff3df0-3adf-45a8-b8a3-741b07a4acc9' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Zone'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('a5ff3df0-3adf-45a8-b8a3-741b07a4acc9', 'Zone', false, true);
  END IF;

  -- [VOCABULARY] 均整 (Level 31)
  UPDATE item_meanings SET meaning = 'Keseimbangan', primary_meaning = true, accepted_answer = true WHERE id = 'a1e4eae9-d9d9-49c1-b29f-a9c629a75e9b';
  UPDATE items SET slug = 'keseimbangan' WHERE id = 'a1417192-2eb6-4fa2-979f-df5f61952afb';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'a1417192-2eb6-4fa2-979f-df5f61952afb' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Kesimetrisan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('a1417192-2eb6-4fa2-979f-df5f61952afb', 'Kesimetrisan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'a1417192-2eb6-4fa2-979f-df5f61952afb' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Simetri'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('a1417192-2eb6-4fa2-979f-df5f61952afb', 'Simetri', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'a1417192-2eb6-4fa2-979f-df5f61952afb' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Symmetry'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('a1417192-2eb6-4fa2-979f-df5f61952afb', 'Symmetry', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'a1417192-2eb6-4fa2-979f-df5f61952afb' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Balance'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('a1417192-2eb6-4fa2-979f-df5f61952afb', 'Balance', false, true);
  END IF;

  -- [VOCABULARY] 均等 (Level 31)
  UPDATE item_meanings SET meaning = 'Merata', primary_meaning = true, accepted_answer = true WHERE id = '1bf28943-a135-49ff-b989-e34de9c5acbc';
  UPDATE items SET slug = 'merata' WHERE id = '9258eba6-b0b9-4d1d-8e51-9329bfaaaba5';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '9258eba6-b0b9-4d1d-8e51-9329bfaaaba5' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Sama Rata'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('9258eba6-b0b9-4d1d-8e51-9329bfaaaba5', 'Sama Rata', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '9258eba6-b0b9-4d1d-8e51-9329bfaaaba5' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Persamaan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('9258eba6-b0b9-4d1d-8e51-9329bfaaaba5', 'Persamaan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '9258eba6-b0b9-4d1d-8e51-9329bfaaaba5' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Equality'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('9258eba6-b0b9-4d1d-8e51-9329bfaaaba5', 'Equality', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '9258eba6-b0b9-4d1d-8e51-9329bfaaaba5' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Evenness'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('9258eba6-b0b9-4d1d-8e51-9329bfaaaba5', 'Evenness', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '9258eba6-b0b9-4d1d-8e51-9329bfaaaba5' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Uniformity'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('9258eba6-b0b9-4d1d-8e51-9329bfaaaba5', 'Uniformity', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '9258eba6-b0b9-4d1d-8e51-9329bfaaaba5' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Keseragaman'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('9258eba6-b0b9-4d1d-8e51-9329bfaaaba5', 'Keseragaman', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '9258eba6-b0b9-4d1d-8e51-9329bfaaaba5' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Keserasian'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('9258eba6-b0b9-4d1d-8e51-9329bfaaaba5', 'Keserasian', false, true);
  END IF;

  -- [VOCABULARY] 壊れる (Level 31)
  UPDATE item_meanings SET meaning = 'Rusak', primary_meaning = true, accepted_answer = true WHERE id = '41f63675-58dc-447a-96f7-bb05576bbdfb';
  UPDATE items SET slug = 'rusak' WHERE id = 'd738f84a-fc4f-4793-939d-e5a92ba9485f';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'd738f84a-fc4f-4793-939d-e5a92ba9485f' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Hancur'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('d738f84a-fc4f-4793-939d-e5a92ba9485f', 'Hancur', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'd738f84a-fc4f-4793-939d-e5a92ba9485f' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Menjadi Rusak'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('d738f84a-fc4f-4793-939d-e5a92ba9485f', 'Menjadi Rusak', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'd738f84a-fc4f-4793-939d-e5a92ba9485f' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Break'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('d738f84a-fc4f-4793-939d-e5a92ba9485f', 'To Break', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'd738f84a-fc4f-4793-939d-e5a92ba9485f' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Break Down'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('d738f84a-fc4f-4793-939d-e5a92ba9485f', 'To Break Down', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'd738f84a-fc4f-4793-939d-e5a92ba9485f' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Get Broken'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('d738f84a-fc4f-4793-939d-e5a92ba9485f', 'To Get Broken', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'd738f84a-fc4f-4793-939d-e5a92ba9485f' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Be Broken'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('d738f84a-fc4f-4793-939d-e5a92ba9485f', 'To Be Broken', false, true);
  END IF;

  -- [VOCABULARY] 壊れ物 (Level 31)
  UPDATE item_meanings SET meaning = 'Barang Pecah Belah', primary_meaning = true, accepted_answer = true WHERE id = '61124bf4-4287-4939-a949-6ae245f896ea';
  UPDATE items SET slug = 'barang-pecah-belah' WHERE id = '77f14aa9-54f0-4094-bb79-4cfca4bf0bc4';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '77f14aa9-54f0-4094-bb79-4cfca4bf0bc4' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Barang Rapuh'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('77f14aa9-54f0-4094-bb79-4cfca4bf0bc4', 'Barang Rapuh', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '77f14aa9-54f0-4094-bb79-4cfca4bf0bc4' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Hal yang Rapuh'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('77f14aa9-54f0-4094-bb79-4cfca4bf0bc4', 'Hal yang Rapuh', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '77f14aa9-54f0-4094-bb79-4cfca4bf0bc4' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Fragile Item'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('77f14aa9-54f0-4094-bb79-4cfca4bf0bc4', 'Fragile Item', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '77f14aa9-54f0-4094-bb79-4cfca4bf0bc4' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Breakables'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('77f14aa9-54f0-4094-bb79-4cfca4bf0bc4', 'Breakables', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '77f14aa9-54f0-4094-bb79-4cfca4bf0bc4' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Fragile Thing'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('77f14aa9-54f0-4094-bb79-4cfca4bf0bc4', 'Fragile Thing', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '77f14aa9-54f0-4094-bb79-4cfca4bf0bc4' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Fragile Article'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('77f14aa9-54f0-4094-bb79-4cfca4bf0bc4', 'Fragile Article', false, true);
  END IF;

  -- [VOCABULARY] 妨害 (Level 31)
  UPDATE item_meanings SET meaning = 'Gangguan', primary_meaning = true, accepted_answer = true WHERE id = '34980891-c1ae-48e3-a425-f09886788517';
  UPDATE items SET slug = 'gangguan' WHERE id = 'fd63ca16-161e-401f-895b-09e3a20f11f8';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'fd63ca16-161e-401f-895b-09e3a20f11f8' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Rintangan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('fd63ca16-161e-401f-895b-09e3a20f11f8', 'Rintangan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'fd63ca16-161e-401f-895b-09e3a20f11f8' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Hambatan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('fd63ca16-161e-401f-895b-09e3a20f11f8', 'Hambatan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'fd63ca16-161e-401f-895b-09e3a20f11f8' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Halangan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('fd63ca16-161e-401f-895b-09e3a20f11f8', 'Halangan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'fd63ca16-161e-401f-895b-09e3a20f11f8' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Interference'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('fd63ca16-161e-401f-895b-09e3a20f11f8', 'Interference', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'fd63ca16-161e-401f-895b-09e3a20f11f8' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Obstruction'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('fd63ca16-161e-401f-895b-09e3a20f11f8', 'Obstruction', false, true);
  END IF;

  -- [VOCABULARY] 富 (Level 31)
  UPDATE item_meanings SET meaning = 'Kekayaan', primary_meaning = true, accepted_answer = true WHERE id = '3ecfae40-062f-44f0-a332-4776150b67c8';
  UPDATE items SET slug = 'kekayaan' WHERE id = 'b7362db0-bd43-40a4-baba-0c2c10a8793c';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'b7362db0-bd43-40a4-baba-0c2c10a8793c' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Harta Melimpah'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('b7362db0-bd43-40a4-baba-0c2c10a8793c', 'Harta Melimpah', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'b7362db0-bd43-40a4-baba-0c2c10a8793c' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Wealth'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('b7362db0-bd43-40a4-baba-0c2c10a8793c', 'Wealth', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'b7362db0-bd43-40a4-baba-0c2c10a8793c' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Riches'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('b7362db0-bd43-40a4-baba-0c2c10a8793c', 'Riches', false, true);
  END IF;

  -- [VOCABULARY] 富む (Level 31)
  UPDATE item_meanings SET meaning = 'Kaya Akan', primary_meaning = true, accepted_answer = true WHERE id = '7cbe8240-8575-422f-a3c3-e5ffb6924efd';
  UPDATE items SET slug = 'kaya-akan' WHERE id = 'b1cf2018-7c0b-4af9-bbdf-8324336dcb51';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'b1cf2018-7c0b-4af9-bbdf-8324336dcb51' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Berlimpah'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('b1cf2018-7c0b-4af9-bbdf-8324336dcb51', 'Berlimpah', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'b1cf2018-7c0b-4af9-bbdf-8324336dcb51' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Menjadi Kaya'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('b1cf2018-7c0b-4af9-bbdf-8324336dcb51', 'Menjadi Kaya', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'b1cf2018-7c0b-4af9-bbdf-8324336dcb51' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Be Rich In'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('b1cf2018-7c0b-4af9-bbdf-8324336dcb51', 'To Be Rich In', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'b1cf2018-7c0b-4af9-bbdf-8324336dcb51' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Abound In'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('b1cf2018-7c0b-4af9-bbdf-8324336dcb51', 'To Abound In', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'b1cf2018-7c0b-4af9-bbdf-8324336dcb51' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Be Full Of'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('b1cf2018-7c0b-4af9-bbdf-8324336dcb51', 'To Be Full Of', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'b1cf2018-7c0b-4af9-bbdf-8324336dcb51' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Abound'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('b1cf2018-7c0b-4af9-bbdf-8324336dcb51', 'To Abound', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'b1cf2018-7c0b-4af9-bbdf-8324336dcb51' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Be Abundant'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('b1cf2018-7c0b-4af9-bbdf-8324336dcb51', 'To Be Abundant', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'b1cf2018-7c0b-4af9-bbdf-8324336dcb51' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Menjadi Berlimpah Dalam'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('b1cf2018-7c0b-4af9-bbdf-8324336dcb51', 'Menjadi Berlimpah Dalam', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'b1cf2018-7c0b-4af9-bbdf-8324336dcb51' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Be Rich'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('b1cf2018-7c0b-4af9-bbdf-8324336dcb51', 'To Be Rich', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'b1cf2018-7c0b-4af9-bbdf-8324336dcb51' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Be Abundant In'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('b1cf2018-7c0b-4af9-bbdf-8324336dcb51', 'To Be Abundant In', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'b1cf2018-7c0b-4af9-bbdf-8324336dcb51' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Be Wealthy'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('b1cf2018-7c0b-4af9-bbdf-8324336dcb51', 'To Be Wealthy', false, true);
  END IF;

  -- [VOCABULARY] 富裕 (Level 31)
  UPDATE item_meanings SET meaning = 'Kaya Raya', primary_meaning = true, accepted_answer = true WHERE id = 'a8042007-9ebe-40a6-b678-27b5781517a2';
  UPDATE items SET slug = 'kaya-raya' WHERE id = 'b2e38cb7-c19a-4c45-98ba-4b8b4cfd1d41';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'b2e38cb7-c19a-4c45-98ba-4b8b4cfd1d41' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Makmur'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('b2e38cb7-c19a-4c45-98ba-4b8b4cfd1d41', 'Makmur', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'b2e38cb7-c19a-4c45-98ba-4b8b4cfd1d41' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Kaya'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('b2e38cb7-c19a-4c45-98ba-4b8b4cfd1d41', 'Kaya', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'b2e38cb7-c19a-4c45-98ba-4b8b4cfd1d41' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Affluent'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('b2e38cb7-c19a-4c45-98ba-4b8b4cfd1d41', 'Affluent', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'b2e38cb7-c19a-4c45-98ba-4b8b4cfd1d41' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Wealthy'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('b2e38cb7-c19a-4c45-98ba-4b8b4cfd1d41', 'Wealthy', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'b2e38cb7-c19a-4c45-98ba-4b8b4cfd1d41' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Rich'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('b2e38cb7-c19a-4c45-98ba-4b8b4cfd1d41', 'Rich', false, true);
  END IF;

  -- [VOCABULARY] 尋ねる (Level 31)
  UPDATE item_meanings SET meaning = 'Bertanya', primary_meaning = true, accepted_answer = true WHERE id = 'e53aed09-1a2e-4221-a69b-422568b64a6f';
  UPDATE items SET slug = 'bertanya' WHERE id = 'd849a35c-277c-4ded-b782-42081de13ccc';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'd849a35c-277c-4ded-b782-42081de13ccc' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Menanyakan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('d849a35c-277c-4ded-b782-42081de13ccc', 'Menanyakan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'd849a35c-277c-4ded-b782-42081de13ccc' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Untuk Bertanya'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('d849a35c-277c-4ded-b782-42081de13ccc', 'Untuk Bertanya', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'd849a35c-277c-4ded-b782-42081de13ccc' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Inquire'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('d849a35c-277c-4ded-b782-42081de13ccc', 'To Inquire', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'd849a35c-277c-4ded-b782-42081de13ccc' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Ask'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('d849a35c-277c-4ded-b782-42081de13ccc', 'To Ask', false, true);
  END IF;

  -- [VOCABULARY] 尋問 (Level 31)
  UPDATE item_meanings SET meaning = 'Interogasi', primary_meaning = true, accepted_answer = true WHERE id = 'f8850d5d-b4e6-4625-bfcb-e60f521013fb';
  UPDATE items SET slug = 'interogasi' WHERE id = 'ac3f2761-9884-4bc6-9a18-499c3acb8681';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'ac3f2761-9884-4bc6-9a18-499c3acb8681' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Pemeriksaan Formal'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('ac3f2761-9884-4bc6-9a18-499c3acb8681', 'Pemeriksaan Formal', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'ac3f2761-9884-4bc6-9a18-499c3acb8681' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Questioning'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('ac3f2761-9884-4bc6-9a18-499c3acb8681', 'Questioning', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'ac3f2761-9884-4bc6-9a18-499c3acb8681' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Interrogation'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('ac3f2761-9884-4bc6-9a18-499c3acb8681', 'Interrogation', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'ac3f2761-9884-4bc6-9a18-499c3acb8681' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Examination'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('ac3f2761-9884-4bc6-9a18-499c3acb8681', 'Examination', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'ac3f2761-9884-4bc6-9a18-499c3acb8681' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Question'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('ac3f2761-9884-4bc6-9a18-499c3acb8681', 'Question', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'ac3f2761-9884-4bc6-9a18-499c3acb8681' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Examine'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('ac3f2761-9884-4bc6-9a18-499c3acb8681', 'Examine', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'ac3f2761-9884-4bc6-9a18-499c3acb8681' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Interrogate'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('ac3f2761-9884-4bc6-9a18-499c3acb8681', 'Interrogate', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'ac3f2761-9884-4bc6-9a18-499c3acb8681' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Mempertanyakan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('ac3f2761-9884-4bc6-9a18-499c3acb8681', 'Mempertanyakan', false, true);
  END IF;

  -- [VOCABULARY] 山脈 (Level 31)
  UPDATE item_meanings SET meaning = 'Pegunungan', primary_meaning = true, accepted_answer = true WHERE id = '37adccbe-732b-4ae0-8ee2-8deddca84288';
  UPDATE items SET slug = 'pegunungan' WHERE id = '97706d6f-7b71-4a8d-93f7-3a37129491a7';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '97706d6f-7b71-4a8d-93f7-3a37129491a7' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Barisan Pegunungan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('97706d6f-7b71-4a8d-93f7-3a37129491a7', 'Barisan Pegunungan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '97706d6f-7b71-4a8d-93f7-3a37129491a7' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Mountain Range'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('97706d6f-7b71-4a8d-93f7-3a37129491a7', 'Mountain Range', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '97706d6f-7b71-4a8d-93f7-3a37129491a7' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Mountain Chain'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('97706d6f-7b71-4a8d-93f7-3a37129491a7', 'Mountain Chain', false, true);
  END IF;

  -- [VOCABULARY] 巣立ち (Level 31)
  UPDATE item_meanings SET meaning = 'Merantau Mandiri', primary_meaning = true, accepted_answer = true WHERE id = '846a2c40-5112-4fa1-9be4-90ad575b81e3';
  UPDATE items SET slug = 'merantau-mandiri' WHERE id = 'b59d2804-c573-437e-ac47-bf66dc400bc0';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'b59d2804-c573-437e-ac47-bf66dc400bc0' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Lepas dari Sangkar'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('b59d2804-c573-437e-ac47-bf66dc400bc0', 'Lepas dari Sangkar', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'b59d2804-c573-437e-ac47-bf66dc400bc0' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Tinggalkan Sarang'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('b59d2804-c573-437e-ac47-bf66dc400bc0', 'Tinggalkan Sarang', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'b59d2804-c573-437e-ac47-bf66dc400bc0' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Leaving The Nest'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('b59d2804-c573-437e-ac47-bf66dc400bc0', 'Leaving The Nest', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'b59d2804-c573-437e-ac47-bf66dc400bc0' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Become Independent'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('b59d2804-c573-437e-ac47-bf66dc400bc0', 'Become Independent', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'b59d2804-c573-437e-ac47-bf66dc400bc0' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Becoming Independent'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('b59d2804-c573-437e-ac47-bf66dc400bc0', 'Becoming Independent', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'b59d2804-c573-437e-ac47-bf66dc400bc0' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Menjadi Mandiri'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('b59d2804-c573-437e-ac47-bf66dc400bc0', 'Menjadi Mandiri', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'b59d2804-c573-437e-ac47-bf66dc400bc0' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Leave The Nest'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('b59d2804-c573-437e-ac47-bf66dc400bc0', 'Leave The Nest', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'b59d2804-c573-437e-ac47-bf66dc400bc0' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Fly The Nest'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('b59d2804-c573-437e-ac47-bf66dc400bc0', 'Fly The Nest', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'b59d2804-c573-437e-ac47-bf66dc400bc0' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Flying The Nest'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('b59d2804-c573-437e-ac47-bf66dc400bc0', 'Flying The Nest', false, true);
  END IF;

  -- [VOCABULARY] 幾つ (Level 31)
  UPDATE item_meanings SET meaning = 'Berapa Banyak', primary_meaning = true, accepted_answer = true WHERE id = '00cf9f51-6de8-4368-a4e5-898aefa4b7e0';
  UPDATE items SET slug = 'berapa-banyak' WHERE id = 'e3fd6632-bcd3-4e68-9d03-66bb8585629f';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'e3fd6632-bcd3-4e68-9d03-66bb8585629f' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Berapa Buah'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('e3fd6632-bcd3-4e68-9d03-66bb8585629f', 'Berapa Buah', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'e3fd6632-bcd3-4e68-9d03-66bb8585629f' AND LOWER(TRIM(meaning)) = LOWER(TRIM('How Many'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('e3fd6632-bcd3-4e68-9d03-66bb8585629f', 'How Many', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'e3fd6632-bcd3-4e68-9d03-66bb8585629f' AND LOWER(TRIM(meaning)) = LOWER(TRIM('How Old'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('e3fd6632-bcd3-4e68-9d03-66bb8585629f', 'How Old', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'e3fd6632-bcd3-4e68-9d03-66bb8585629f' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Berapa umur'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('e3fd6632-bcd3-4e68-9d03-66bb8585629f', 'Berapa umur', false, true);
  END IF;

  -- [VOCABULARY] 幾ら (Level 31)
  UPDATE item_meanings SET meaning = 'Berapa Harganya', primary_meaning = true, accepted_answer = true WHERE id = '31b086cc-5911-495e-a364-efb4c140cb29';
  UPDATE items SET slug = 'berapa-harganya' WHERE id = '573d6358-8b6e-4788-95e0-8aa183e690c3';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '573d6358-8b6e-4788-95e0-8aa183e690c3' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Berapa'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('573d6358-8b6e-4788-95e0-8aa183e690c3', 'Berapa', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '573d6358-8b6e-4788-95e0-8aa183e690c3' AND LOWER(TRIM(meaning)) = LOWER(TRIM('How Much'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('573d6358-8b6e-4788-95e0-8aa183e690c3', 'How Much', false, true);
  END IF;

  -- [VOCABULARY] 幾度 (Level 31)
  UPDATE item_meanings SET meaning = 'Berapa Kali', primary_meaning = true, accepted_answer = true WHERE id = 'dc69034a-453c-4880-a35a-c4be855f5fbb';
  UPDATE items SET slug = 'berapa-kali' WHERE id = '610db7ff-639f-4fa3-bdc1-46def504940c';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '610db7ff-639f-4fa3-bdc1-46def504940c' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Kerap Kali'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('610db7ff-639f-4fa3-bdc1-46def504940c', 'Kerap Kali', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '610db7ff-639f-4fa3-bdc1-46def504940c' AND LOWER(TRIM(meaning)) = LOWER(TRIM('How Many Times'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('610db7ff-639f-4fa3-bdc1-46def504940c', 'How Many Times', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '610db7ff-639f-4fa3-bdc1-46def504940c' AND LOWER(TRIM(meaning)) = LOWER(TRIM('How Often'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('610db7ff-639f-4fa3-bdc1-46def504940c', 'How Often', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '610db7ff-639f-4fa3-bdc1-46def504940c' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Seberapa sering'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('610db7ff-639f-4fa3-bdc1-46def504940c', 'Seberapa sering', false, true);
  END IF;

  -- [VOCABULARY] 廊下 (Level 31)
  UPDATE item_meanings SET meaning = 'Lorong', primary_meaning = true, accepted_answer = true WHERE id = '3adbabf0-f1fd-4b43-9ddf-434c08303a95';
  UPDATE items SET slug = 'lorong' WHERE id = '305117ab-62b5-42d8-9caf-3bbd757e009e';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '305117ab-62b5-42d8-9caf-3bbd757e009e' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Koridor'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('305117ab-62b5-42d8-9caf-3bbd757e009e', 'Koridor', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '305117ab-62b5-42d8-9caf-3bbd757e009e' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Hallway'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('305117ab-62b5-42d8-9caf-3bbd757e009e', 'Hallway', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '305117ab-62b5-42d8-9caf-3bbd757e009e' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Corridor'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('305117ab-62b5-42d8-9caf-3bbd757e009e', 'Corridor', false, true);
  END IF;

  -- [VOCABULARY] 延びる (Level 31)
  UPDATE item_meanings SET meaning = 'Memanjang', primary_meaning = true, accepted_answer = true WHERE id = 'd2ac6b47-2740-4462-b92a-bb0d4c91a002';
  UPDATE items SET slug = 'memanjang' WHERE id = 'efdd46d1-7531-4d18-9edf-f9ebc2737006';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'efdd46d1-7531-4d18-9edf-f9ebc2737006' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Molor'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('efdd46d1-7531-4d18-9edf-f9ebc2737006', 'Molor', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'efdd46d1-7531-4d18-9edf-f9ebc2737006' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Tertunda'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('efdd46d1-7531-4d18-9edf-f9ebc2737006', 'Tertunda', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'efdd46d1-7531-4d18-9edf-f9ebc2737006' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Untuk Diperpanjang'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('efdd46d1-7531-4d18-9edf-f9ebc2737006', 'Untuk Diperpanjang', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'efdd46d1-7531-4d18-9edf-f9ebc2737006' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Be Prolonged'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('efdd46d1-7531-4d18-9edf-f9ebc2737006', 'To Be Prolonged', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'efdd46d1-7531-4d18-9edf-f9ebc2737006' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Be Extended'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('efdd46d1-7531-4d18-9edf-f9ebc2737006', 'To Be Extended', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'efdd46d1-7531-4d18-9edf-f9ebc2737006' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Extend'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('efdd46d1-7531-4d18-9edf-f9ebc2737006', 'To Extend', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'efdd46d1-7531-4d18-9edf-f9ebc2737006' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Get Prolonged'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('efdd46d1-7531-4d18-9edf-f9ebc2737006', 'To Get Prolonged', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'efdd46d1-7531-4d18-9edf-f9ebc2737006' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Akan Tertunda'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('efdd46d1-7531-4d18-9edf-f9ebc2737006', 'Akan Tertunda', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'efdd46d1-7531-4d18-9edf-f9ebc2737006' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Akan Diperpanjang'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('efdd46d1-7531-4d18-9edf-f9ebc2737006', 'Akan Diperpanjang', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'efdd46d1-7531-4d18-9edf-f9ebc2737006' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Stretch'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('efdd46d1-7531-4d18-9edf-f9ebc2737006', 'To Stretch', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'efdd46d1-7531-4d18-9edf-f9ebc2737006' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Be Delayed'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('efdd46d1-7531-4d18-9edf-f9ebc2737006', 'To Be Delayed', false, true);
  END IF;

  -- [VOCABULARY] 思い詰める (Level 31)
  UPDATE item_meanings SET meaning = 'Terlalu Memikirkan', primary_meaning = true, accepted_answer = true WHERE id = '17fffe58-fd35-48dd-803e-e7cea3655acd';
  UPDATE items SET slug = 'terlalu-memikirkan' WHERE id = '1ee648a2-c574-4590-aed1-389c598e3de8';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '1ee648a2-c574-4590-aed1-389c598e3de8' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Terbebani Pikiran'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('1ee648a2-c574-4590-aed1-389c598e3de8', 'Terbebani Pikiran', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '1ee648a2-c574-4590-aed1-389c598e3de8' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Untuk merenung'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('1ee648a2-c574-4590-aed1-389c598e3de8', 'Untuk merenung', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '1ee648a2-c574-4590-aed1-389c598e3de8' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Brood Over'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('1ee648a2-c574-4590-aed1-389c598e3de8', 'To Brood Over', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '1ee648a2-c574-4590-aed1-389c598e3de8' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Worry'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('1ee648a2-c574-4590-aed1-389c598e3de8', 'To Worry', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '1ee648a2-c574-4590-aed1-389c598e3de8' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Take To Heart'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('1ee648a2-c574-4590-aed1-389c598e3de8', 'To Take To Heart', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '1ee648a2-c574-4590-aed1-389c598e3de8' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Untuk Mengambil Sesuatu Dalam Hati'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('1ee648a2-c574-4590-aed1-389c598e3de8', 'Untuk Mengambil Sesuatu Dalam Hati', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '1ee648a2-c574-4590-aed1-389c598e3de8' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Take Something Hard'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('1ee648a2-c574-4590-aed1-389c598e3de8', 'To Take Something Hard', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '1ee648a2-c574-4590-aed1-389c598e3de8' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Take Something Seriously'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('1ee648a2-c574-4590-aed1-389c598e3de8', 'To Take Something Seriously', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '1ee648a2-c574-4590-aed1-389c598e3de8' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Think Hard'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('1ee648a2-c574-4590-aed1-389c598e3de8', 'To Think Hard', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '1ee648a2-c574-4590-aed1-389c598e3de8' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Brood'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('1ee648a2-c574-4590-aed1-389c598e3de8', 'To Brood', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '1ee648a2-c574-4590-aed1-389c598e3de8' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Dwell On'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('1ee648a2-c574-4590-aed1-389c598e3de8', 'To Dwell On', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '1ee648a2-c574-4590-aed1-389c598e3de8' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Take Something To Heart'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('1ee648a2-c574-4590-aed1-389c598e3de8', 'To Take Something To Heart', false, true);
  END IF;

  -- [VOCABULARY] 恐らく (Level 31)
  UPDATE item_meanings SET meaning = 'Kemungkinan Besar', primary_meaning = true, accepted_answer = true WHERE id = 'f4b749f8-6380-4056-8929-09a6e8a28de9';
  UPDATE items SET slug = 'kemungkinan-besar' WHERE id = '152514ed-5eb6-4f27-93f3-3d074b49de3a';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '152514ed-5eb6-4f27-93f3-3d074b49de3a' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Barangkali'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('152514ed-5eb6-4f27-93f3-3d074b49de3a', 'Barangkali', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '152514ed-5eb6-4f27-93f3-3d074b49de3a' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Mungkin'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('152514ed-5eb6-4f27-93f3-3d074b49de3a', 'Mungkin', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '152514ed-5eb6-4f27-93f3-3d074b49de3a' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Probably'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('152514ed-5eb6-4f27-93f3-3d074b49de3a', 'Probably', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '152514ed-5eb6-4f27-93f3-3d074b49de3a' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Likely'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('152514ed-5eb6-4f27-93f3-3d074b49de3a', 'Likely', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '152514ed-5eb6-4f27-93f3-3d074b49de3a' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Perhaps'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('152514ed-5eb6-4f27-93f3-3d074b49de3a', 'Perhaps', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '152514ed-5eb6-4f27-93f3-3d074b49de3a' AND LOWER(TRIM(meaning)) = LOWER(TRIM('I Dare Say'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('152514ed-5eb6-4f27-93f3-3d074b49de3a', 'I Dare Say', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '152514ed-5eb6-4f27-93f3-3d074b49de3a' AND LOWER(TRIM(meaning)) = LOWER(TRIM('As Likely As Not'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('152514ed-5eb6-4f27-93f3-3d074b49de3a', 'As Likely As Not', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '152514ed-5eb6-4f27-93f3-3d074b49de3a' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Maybe'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('152514ed-5eb6-4f27-93f3-3d074b49de3a', 'Maybe', false, true);
  END IF;

  -- [VOCABULARY] 恐れ (Level 31)
  UPDATE item_meanings SET meaning = 'Rasa Takut', primary_meaning = true, accepted_answer = true WHERE id = '7ee08a87-633f-429d-8f49-11716308b30a';
  UPDATE items SET slug = 'rasa-takut' WHERE id = '64ef1d1b-f5f9-4e32-b5b9-31555afefaa2';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '64ef1d1b-f5f9-4e32-b5b9-31555afefaa2' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Kekhawatiran'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('64ef1d1b-f5f9-4e32-b5b9-31555afefaa2', 'Kekhawatiran', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '64ef1d1b-f5f9-4e32-b5b9-31555afefaa2' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Takut'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('64ef1d1b-f5f9-4e32-b5b9-31555afefaa2', 'Takut', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '64ef1d1b-f5f9-4e32-b5b9-31555afefaa2' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Fear'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('64ef1d1b-f5f9-4e32-b5b9-31555afefaa2', 'Fear', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '64ef1d1b-f5f9-4e32-b5b9-31555afefaa2' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Dread'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('64ef1d1b-f5f9-4e32-b5b9-31555afefaa2', 'Dread', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '64ef1d1b-f5f9-4e32-b5b9-31555afefaa2' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Anxiety'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('64ef1d1b-f5f9-4e32-b5b9-31555afefaa2', 'Anxiety', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '64ef1d1b-f5f9-4e32-b5b9-31555afefaa2' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Horror'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('64ef1d1b-f5f9-4e32-b5b9-31555afefaa2', 'Horror', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '64ef1d1b-f5f9-4e32-b5b9-31555afefaa2' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Uneasiness'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('64ef1d1b-f5f9-4e32-b5b9-31555afefaa2', 'Uneasiness', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '64ef1d1b-f5f9-4e32-b5b9-31555afefaa2' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Kengerian'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('64ef1d1b-f5f9-4e32-b5b9-31555afefaa2', 'Kengerian', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '64ef1d1b-f5f9-4e32-b5b9-31555afefaa2' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Kecemasan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('64ef1d1b-f5f9-4e32-b5b9-31555afefaa2', 'Kecemasan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '64ef1d1b-f5f9-4e32-b5b9-31555afefaa2' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Concern'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('64ef1d1b-f5f9-4e32-b5b9-31555afefaa2', 'Concern', false, true);
  END IF;

  -- [VOCABULARY] 恐れる (Level 31)
  UPDATE item_meanings SET meaning = 'Takut Pada', primary_meaning = true, accepted_answer = true WHERE id = 'd2da2764-4c08-4f55-8261-7c945faa7d0e';
  UPDATE items SET slug = 'takut-pada' WHERE id = '2bced91d-407b-4a0a-a1f3-8210ed95743e';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '2bced91d-407b-4a0a-a1f3-8210ed95743e' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Mengkhawatirkan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('2bced91d-407b-4a0a-a1f3-8210ed95743e', 'Mengkhawatirkan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '2bced91d-407b-4a0a-a1f3-8210ed95743e' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Takut'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('2bced91d-407b-4a0a-a1f3-8210ed95743e', 'Takut', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '2bced91d-407b-4a0a-a1f3-8210ed95743e' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Fear'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('2bced91d-407b-4a0a-a1f3-8210ed95743e', 'To Fear', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '2bced91d-407b-4a0a-a1f3-8210ed95743e' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Be Afraid Of'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('2bced91d-407b-4a0a-a1f3-8210ed95743e', 'To Be Afraid Of', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '2bced91d-407b-4a0a-a1f3-8210ed95743e' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Be Afraid'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('2bced91d-407b-4a0a-a1f3-8210ed95743e', 'To Be Afraid', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '2bced91d-407b-4a0a-a1f3-8210ed95743e' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Be Afraid Of Something'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('2bced91d-407b-4a0a-a1f3-8210ed95743e', 'To Be Afraid Of Something', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '2bced91d-407b-4a0a-a1f3-8210ed95743e' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Dread Something'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('2bced91d-407b-4a0a-a1f3-8210ed95743e', 'To Dread Something', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '2bced91d-407b-4a0a-a1f3-8210ed95743e' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Fear Something'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('2bced91d-407b-4a0a-a1f3-8210ed95743e', 'To Fear Something', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '2bced91d-407b-4a0a-a1f3-8210ed95743e' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Dread'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('2bced91d-407b-4a0a-a1f3-8210ed95743e', 'To Dread', false, true);
  END IF;

  -- [VOCABULARY] 我が国 (Level 31)
  UPDATE item_meanings SET meaning = 'Negara Kita', primary_meaning = true, accepted_answer = true WHERE id = 'fa3519c5-58d5-4226-9892-e0399478f085';
  UPDATE items SET slug = 'negara-kita' WHERE id = '2bf0e7ff-d648-4020-9184-250ca0404de2';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '2bf0e7ff-d648-4020-9184-250ca0404de2' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Tanah Air Kita'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('2bf0e7ff-d648-4020-9184-250ca0404de2', 'Tanah Air Kita', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '2bf0e7ff-d648-4020-9184-250ca0404de2' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Our Country'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('2bf0e7ff-d648-4020-9184-250ca0404de2', 'Our Country', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '2bf0e7ff-d648-4020-9184-250ca0404de2' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Our Nation'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('2bf0e7ff-d648-4020-9184-250ca0404de2', 'Our Nation', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '2bf0e7ff-d648-4020-9184-250ca0404de2' AND LOWER(TRIM(meaning)) = LOWER(TRIM('My Nation'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('2bf0e7ff-d648-4020-9184-250ca0404de2', 'My Nation', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '2bf0e7ff-d648-4020-9184-250ca0404de2' AND LOWER(TRIM(meaning)) = LOWER(TRIM('My Country'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('2bf0e7ff-d648-4020-9184-250ca0404de2', 'My Country', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '2bf0e7ff-d648-4020-9184-250ca0404de2' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Our Land'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('2bf0e7ff-d648-4020-9184-250ca0404de2', 'Our Land', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '2bf0e7ff-d648-4020-9184-250ca0404de2' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Japan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('2bf0e7ff-d648-4020-9184-250ca0404de2', 'Japan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '2bf0e7ff-d648-4020-9184-250ca0404de2' AND LOWER(TRIM(meaning)) = LOWER(TRIM('This Country'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('2bf0e7ff-d648-4020-9184-250ca0404de2', 'This Country', false, true);
  END IF;

  -- [VOCABULARY] 掃除 (Level 31)
  UPDATE item_meanings SET meaning = 'Bersih-bersih', primary_meaning = true, accepted_answer = true WHERE id = '07649fc3-4d2b-4480-8a1c-331e808b01b7';
  UPDATE items SET slug = 'bersih-bersih' WHERE id = '8746d3c6-054c-4cb3-90cf-211ee3940658';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '8746d3c6-054c-4cb3-90cf-211ee3940658' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Menyapu'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('8746d3c6-054c-4cb3-90cf-211ee3940658', 'Menyapu', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '8746d3c6-054c-4cb3-90cf-211ee3940658' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Pembersihan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('8746d3c6-054c-4cb3-90cf-211ee3940658', 'Pembersihan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '8746d3c6-054c-4cb3-90cf-211ee3940658' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Cleaning'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('8746d3c6-054c-4cb3-90cf-211ee3940658', 'Cleaning', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '8746d3c6-054c-4cb3-90cf-211ee3940658' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Cleanup'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('8746d3c6-054c-4cb3-90cf-211ee3940658', 'Cleanup', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '8746d3c6-054c-4cb3-90cf-211ee3940658' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Cleaning Up'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('8746d3c6-054c-4cb3-90cf-211ee3940658', 'Cleaning Up', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '8746d3c6-054c-4cb3-90cf-211ee3940658' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Tidy Up'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('8746d3c6-054c-4cb3-90cf-211ee3940658', 'Tidy Up', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '8746d3c6-054c-4cb3-90cf-211ee3940658' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Tidying Up'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('8746d3c6-054c-4cb3-90cf-211ee3940658', 'Tidying Up', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '8746d3c6-054c-4cb3-90cf-211ee3940658' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Clean'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('8746d3c6-054c-4cb3-90cf-211ee3940658', 'Clean', false, true);
  END IF;

  -- [VOCABULARY] 探す (Level 31)
  UPDATE item_meanings SET meaning = 'Mencari', primary_meaning = true, accepted_answer = true WHERE id = '37b2f386-b197-4ec7-9434-3de0265e16e6';
  UPDATE items SET slug = 'mencari' WHERE id = 'b52217c2-b919-43bf-90c2-26560d5819a0';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'b52217c2-b919-43bf-90c2-26560d5819a0' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Menelusuri'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('b52217c2-b919-43bf-90c2-26560d5819a0', 'Menelusuri', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'b52217c2-b919-43bf-90c2-26560d5819a0' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Yang Harus Diperhatikan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('b52217c2-b919-43bf-90c2-26560d5819a0', 'Yang Harus Diperhatikan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'b52217c2-b919-43bf-90c2-26560d5819a0' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Search For'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('b52217c2-b919-43bf-90c2-26560d5819a0', 'To Search For', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'b52217c2-b919-43bf-90c2-26560d5819a0' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Look For'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('b52217c2-b919-43bf-90c2-26560d5819a0', 'To Look For', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'b52217c2-b919-43bf-90c2-26560d5819a0' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Untuk Mencari'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('b52217c2-b919-43bf-90c2-26560d5819a0', 'Untuk Mencari', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'b52217c2-b919-43bf-90c2-26560d5819a0' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Search'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('b52217c2-b919-43bf-90c2-26560d5819a0', 'To Search', false, true);
  END IF;

  -- [VOCABULARY] 探究 (Level 31)
  UPDATE item_meanings SET meaning = 'Penyelidikan Mendalam', primary_meaning = true, accepted_answer = true WHERE id = '96122eb1-4060-439c-af6d-c0b3c115b786';
  UPDATE items SET slug = 'penyelidikan-mendalam' WHERE id = 'a1979331-9a6e-4950-a0f4-e717eafb8f90';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'a1979331-9a6e-4950-a0f4-e717eafb8f90' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Kajian Ilmiah'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('a1979331-9a6e-4950-a0f4-e717eafb8f90', 'Kajian Ilmiah', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'a1979331-9a6e-4950-a0f4-e717eafb8f90' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Penyelidikan Akademik'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('a1979331-9a6e-4950-a0f4-e717eafb8f90', 'Penyelidikan Akademik', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'a1979331-9a6e-4950-a0f4-e717eafb8f90' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Academic Inquiry'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('a1979331-9a6e-4950-a0f4-e717eafb8f90', 'Academic Inquiry', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'a1979331-9a6e-4950-a0f4-e717eafb8f90' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Research'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('a1979331-9a6e-4950-a0f4-e717eafb8f90', 'Research', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'a1979331-9a6e-4950-a0f4-e717eafb8f90' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Riset'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('a1979331-9a6e-4950-a0f4-e717eafb8f90', 'Riset', false, true);
  END IF;

  -- [VOCABULARY] 救済 (Level 31)
  UPDATE item_meanings SET meaning = 'Bantuan Penyelamatan', primary_meaning = true, accepted_answer = true WHERE id = '4356d795-1842-4338-a3ad-8f7593f2b23e';
  UPDATE items SET slug = 'bantuan-penyelamatan' WHERE id = 'e3db8fdf-c46f-4ebf-aaba-7a06d8da81b2';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'e3db8fdf-c46f-4ebf-aaba-7a06d8da81b2' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Pertolongan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('e3db8fdf-c46f-4ebf-aaba-7a06d8da81b2', 'Pertolongan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'e3db8fdf-c46f-4ebf-aaba-7a06d8da81b2' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Lega'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('e3db8fdf-c46f-4ebf-aaba-7a06d8da81b2', 'Lega', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'e3db8fdf-c46f-4ebf-aaba-7a06d8da81b2' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Relief'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('e3db8fdf-c46f-4ebf-aaba-7a06d8da81b2', 'Relief', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'e3db8fdf-c46f-4ebf-aaba-7a06d8da81b2' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Salvation'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('e3db8fdf-c46f-4ebf-aaba-7a06d8da81b2', 'Salvation', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'e3db8fdf-c46f-4ebf-aaba-7a06d8da81b2' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Aid'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('e3db8fdf-c46f-4ebf-aaba-7a06d8da81b2', 'Aid', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'e3db8fdf-c46f-4ebf-aaba-7a06d8da81b2' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Penyelamatan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('e3db8fdf-c46f-4ebf-aaba-7a06d8da81b2', 'Penyelamatan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'e3db8fdf-c46f-4ebf-aaba-7a06d8da81b2' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Saving'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('e3db8fdf-c46f-4ebf-aaba-7a06d8da81b2', 'Saving', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'e3db8fdf-c46f-4ebf-aaba-7a06d8da81b2' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Save'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('e3db8fdf-c46f-4ebf-aaba-7a06d8da81b2', 'Save', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'e3db8fdf-c46f-4ebf-aaba-7a06d8da81b2' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Aiding'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('e3db8fdf-c46f-4ebf-aaba-7a06d8da81b2', 'Aiding', false, true);
  END IF;

  -- [VOCABULARY] 散る (Level 31)
  UPDATE item_meanings SET meaning = 'Gugur', primary_meaning = true, accepted_answer = true WHERE id = '8c444450-0c3f-4116-88cd-17db25f5700c';
  UPDATE items SET slug = 'gugur' WHERE id = 'b9fb41b4-6c79-425a-89c0-dc4aa92b72ea';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'b9fb41b4-6c79-425a-89c0-dc4aa92b72ea' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Berhamburan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('b9fb41b4-6c79-425a-89c0-dc4aa92b72ea', 'Berhamburan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'b9fb41b4-6c79-425a-89c0-dc4aa92b72ea' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Rontok'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('b9fb41b4-6c79-425a-89c0-dc4aa92b72ea', 'Rontok', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'b9fb41b4-6c79-425a-89c0-dc4aa92b72ea' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Menjadi Tersebar'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('b9fb41b4-6c79-425a-89c0-dc4aa92b72ea', 'Menjadi Tersebar', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'b9fb41b4-6c79-425a-89c0-dc4aa92b72ea' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Scatter'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('b9fb41b4-6c79-425a-89c0-dc4aa92b72ea', 'To Scatter', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'b9fb41b4-6c79-425a-89c0-dc4aa92b72ea' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Fall'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('b9fb41b4-6c79-425a-89c0-dc4aa92b72ea', 'To Fall', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'b9fb41b4-6c79-425a-89c0-dc4aa92b72ea' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Get Scattered'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('b9fb41b4-6c79-425a-89c0-dc4aa92b72ea', 'To Get Scattered', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'b9fb41b4-6c79-425a-89c0-dc4aa92b72ea' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Untuk Tersebar'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('b9fb41b4-6c79-425a-89c0-dc4aa92b72ea', 'Untuk Tersebar', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'b9fb41b4-6c79-425a-89c0-dc4aa92b72ea' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Untuk Menyebar'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('b9fb41b4-6c79-425a-89c0-dc4aa92b72ea', 'Untuk Menyebar', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'b9fb41b4-6c79-425a-89c0-dc4aa92b72ea' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Be Scattered'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('b9fb41b4-6c79-425a-89c0-dc4aa92b72ea', 'To Be Scattered', false, true);
  END IF;

  -- [VOCABULARY] 既存 (Level 31)
  UPDATE item_meanings SET meaning = 'Yang Sudah Ada', primary_meaning = true, accepted_answer = true WHERE id = 'c41ba175-e6a2-4e4b-8f60-5e1929d1421f';
  UPDATE items SET slug = 'yang-sudah-ada' WHERE id = 'edb16c80-e49d-4041-804e-d2102f938035';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'edb16c80-e49d-4041-804e-d2102f938035' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Eksisting'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('edb16c80-e49d-4041-804e-d2102f938035', 'Eksisting', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'edb16c80-e49d-4041-804e-d2102f938035' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Yang ada'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('edb16c80-e49d-4041-804e-d2102f938035', 'Yang ada', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'edb16c80-e49d-4041-804e-d2102f938035' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Existing'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('edb16c80-e49d-4041-804e-d2102f938035', 'Existing', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'edb16c80-e49d-4041-804e-d2102f938035' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Pre-Existing'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('edb16c80-e49d-4041-804e-d2102f938035', 'Pre-Existing', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'edb16c80-e49d-4041-804e-d2102f938035' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Existent'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('edb16c80-e49d-4041-804e-d2102f938035', 'Existent', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'edb16c80-e49d-4041-804e-d2102f938035' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Already Existing'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('edb16c80-e49d-4041-804e-d2102f938035', 'Already Existing', false, true);
  END IF;

  -- [VOCABULARY] 既決 (Level 31)
  UPDATE item_meanings SET meaning = 'Sudah Diputuskan', primary_meaning = true, accepted_answer = true WHERE id = 'f0ab27b2-9c9b-4a20-9c36-ea2496f385b2';
  UPDATE items SET slug = 'sudah-diputuskan' WHERE id = 'c48701ba-ab8f-482a-8b65-49c38cd62fc2';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'c48701ba-ab8f-482a-8b65-49c38cd62fc2' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Sudah Ditetapkan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('c48701ba-ab8f-482a-8b65-49c38cd62fc2', 'Sudah Ditetapkan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'c48701ba-ab8f-482a-8b65-49c38cd62fc2' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Diputuskan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('c48701ba-ab8f-482a-8b65-49c38cd62fc2', 'Diputuskan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'c48701ba-ab8f-482a-8b65-49c38cd62fc2' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Already Decided'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('c48701ba-ab8f-482a-8b65-49c38cd62fc2', 'Already Decided', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'c48701ba-ab8f-482a-8b65-49c38cd62fc2' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Settled'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('c48701ba-ab8f-482a-8b65-49c38cd62fc2', 'Settled', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'c48701ba-ab8f-482a-8b65-49c38cd62fc2' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Already Determined'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('c48701ba-ab8f-482a-8b65-49c38cd62fc2', 'Already Determined', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'c48701ba-ab8f-482a-8b65-49c38cd62fc2' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Mapan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('c48701ba-ab8f-482a-8b65-49c38cd62fc2', 'Mapan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'c48701ba-ab8f-482a-8b65-49c38cd62fc2' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Already Settled'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('c48701ba-ab8f-482a-8b65-49c38cd62fc2', 'Already Settled', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'c48701ba-ab8f-482a-8b65-49c38cd62fc2' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Determined'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('c48701ba-ab8f-482a-8b65-49c38cd62fc2', 'Determined', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'c48701ba-ab8f-482a-8b65-49c38cd62fc2' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Decided'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('c48701ba-ab8f-482a-8b65-49c38cd62fc2', 'Decided', false, true);
  END IF;

  -- [VOCABULARY] 普段 (Level 31)
  UPDATE item_meanings SET meaning = 'Biasanya', primary_meaning = true, accepted_answer = true WHERE id = '182e8004-166c-46d4-8da0-05d8cbcb2edf';
  UPDATE items SET slug = 'biasanya' WHERE id = '552474b3-5204-4b4d-9d97-97a40ec2b140';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '552474b3-5204-4b4d-9d97-97a40ec2b140' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Sehari-hari'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('552474b3-5204-4b4d-9d97-97a40ec2b140', 'Sehari-hari', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '552474b3-5204-4b4d-9d97-97a40ec2b140' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Biasa'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('552474b3-5204-4b4d-9d97-97a40ec2b140', 'Biasa', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '552474b3-5204-4b4d-9d97-97a40ec2b140' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Usually'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('552474b3-5204-4b4d-9d97-97a40ec2b140', 'Usually', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '552474b3-5204-4b4d-9d97-97a40ec2b140' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Everyday'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('552474b3-5204-4b4d-9d97-97a40ec2b140', 'Everyday', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '552474b3-5204-4b4d-9d97-97a40ec2b140' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Normally'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('552474b3-5204-4b4d-9d97-97a40ec2b140', 'Normally', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '552474b3-5204-4b4d-9d97-97a40ec2b140' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Ordinary'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('552474b3-5204-4b4d-9d97-97a40ec2b140', 'Ordinary', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '552474b3-5204-4b4d-9d97-97a40ec2b140' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Always'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('552474b3-5204-4b4d-9d97-97a40ec2b140', 'Always', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '552474b3-5204-4b4d-9d97-97a40ec2b140' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Usual'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('552474b3-5204-4b4d-9d97-97a40ec2b140', 'Usual', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '552474b3-5204-4b4d-9d97-97a40ec2b140' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Selalu'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('552474b3-5204-4b4d-9d97-97a40ec2b140', 'Selalu', false, true);
  END IF;

  -- [VOCABULARY] 普通 (Level 31)
  UPDATE item_meanings SET meaning = 'Biasa', primary_meaning = true, accepted_answer = true WHERE id = 'd603efb4-ca37-422b-9e52-c92eaff16cb8';
  UPDATE items SET slug = 'biasa' WHERE id = '5b601bd1-c28f-4ebf-84b7-b44055330361';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '5b601bd1-c28f-4ebf-84b7-b44055330361' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Normal'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('5b601bd1-c28f-4ebf-84b7-b44055330361', 'Normal', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '5b601bd1-c28f-4ebf-84b7-b44055330361' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Standar'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('5b601bd1-c28f-4ebf-84b7-b44055330361', 'Standar', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '5b601bd1-c28f-4ebf-84b7-b44055330361' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Ordinary'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('5b601bd1-c28f-4ebf-84b7-b44055330361', 'Ordinary', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '5b601bd1-c28f-4ebf-84b7-b44055330361' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Regular'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('5b601bd1-c28f-4ebf-84b7-b44055330361', 'Regular', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '5b601bd1-c28f-4ebf-84b7-b44055330361' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Usual'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('5b601bd1-c28f-4ebf-84b7-b44055330361', 'Usual', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '5b601bd1-c28f-4ebf-84b7-b44055330361' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Usually'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('5b601bd1-c28f-4ebf-84b7-b44055330361', 'Usually', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '5b601bd1-c28f-4ebf-84b7-b44055330361' AND LOWER(TRIM(meaning)) = LOWER(TRIM('General'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('5b601bd1-c28f-4ebf-84b7-b44055330361', 'General', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '5b601bd1-c28f-4ebf-84b7-b44055330361' AND LOWER(TRIM(meaning)) = LOWER(TRIM('In General'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('5b601bd1-c28f-4ebf-84b7-b44055330361', 'In General', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '5b601bd1-c28f-4ebf-84b7-b44055330361' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Ordinarily'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('5b601bd1-c28f-4ebf-84b7-b44055330361', 'Ordinarily', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '5b601bd1-c28f-4ebf-84b7-b44055330361' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Normally'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('5b601bd1-c28f-4ebf-84b7-b44055330361', 'Normally', false, true);
  END IF;

  -- [VOCABULARY] 照らす (Level 31)
  UPDATE item_meanings SET meaning = 'Menyinari', primary_meaning = true, accepted_answer = true WHERE id = '643d6d34-dc15-4d9e-a927-a39dd7bd94ec';
  UPDATE items SET slug = 'menyinari' WHERE id = '85bdcc8c-3b9e-4220-b9c8-1216a2a5d7c1';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '85bdcc8c-3b9e-4220-b9c8-1216a2a5d7c1' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Menerangi'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('85bdcc8c-3b9e-4220-b9c8-1216a2a5d7c1', 'Menerangi', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '85bdcc8c-3b9e-4220-b9c8-1216a2a5d7c1' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Untuk Menerangi'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('85bdcc8c-3b9e-4220-b9c8-1216a2a5d7c1', 'Untuk Menerangi', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '85bdcc8c-3b9e-4220-b9c8-1216a2a5d7c1' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Illuminate'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('85bdcc8c-3b9e-4220-b9c8-1216a2a5d7c1', 'To Illuminate', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '85bdcc8c-3b9e-4220-b9c8-1216a2a5d7c1' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Shine Light On'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('85bdcc8c-3b9e-4220-b9c8-1216a2a5d7c1', 'To Shine Light On', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '85bdcc8c-3b9e-4220-b9c8-1216a2a5d7c1' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Light Something Up'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('85bdcc8c-3b9e-4220-b9c8-1216a2a5d7c1', 'To Light Something Up', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '85bdcc8c-3b9e-4220-b9c8-1216a2a5d7c1' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Shine Light Over Something'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('85bdcc8c-3b9e-4220-b9c8-1216a2a5d7c1', 'To Shine Light Over Something', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '85bdcc8c-3b9e-4220-b9c8-1216a2a5d7c1' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Shine Light Over'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('85bdcc8c-3b9e-4220-b9c8-1216a2a5d7c1', 'To Shine Light Over', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '85bdcc8c-3b9e-4220-b9c8-1216a2a5d7c1' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Shine Light On Something'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('85bdcc8c-3b9e-4220-b9c8-1216a2a5d7c1', 'To Shine Light On Something', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '85bdcc8c-3b9e-4220-b9c8-1216a2a5d7c1' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Illuminate Something'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('85bdcc8c-3b9e-4220-b9c8-1216a2a5d7c1', 'To Illuminate Something', false, true);
  END IF;

  -- [VOCABULARY] 用心棒 (Level 31)
  UPDATE item_meanings SET meaning = 'Pengawal Pribadi', primary_meaning = true, accepted_answer = true WHERE id = 'de80a59d-3b7c-47d7-95d7-2228635f0174';
  UPDATE items SET slug = 'pengawal-pribadi' WHERE id = 'f996d905-d99a-4eb6-83b0-8fe47af60f9e';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'f996d905-d99a-4eb6-83b0-8fe47af60f9e' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Bodyguard'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('f996d905-d99a-4eb6-83b0-8fe47af60f9e', 'Bodyguard', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'f996d905-d99a-4eb6-83b0-8fe47af60f9e' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Pengawal'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('f996d905-d99a-4eb6-83b0-8fe47af60f9e', 'Pengawal', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'f996d905-d99a-4eb6-83b0-8fe47af60f9e' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Bouncer'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('f996d905-d99a-4eb6-83b0-8fe47af60f9e', 'Bouncer', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'f996d905-d99a-4eb6-83b0-8fe47af60f9e' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Penjaga'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('f996d905-d99a-4eb6-83b0-8fe47af60f9e', 'Penjaga', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'f996d905-d99a-4eb6-83b0-8fe47af60f9e' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Tukang pukul'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('f996d905-d99a-4eb6-83b0-8fe47af60f9e', 'Tukang pukul', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'f996d905-d99a-4eb6-83b0-8fe47af60f9e' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Guard'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('f996d905-d99a-4eb6-83b0-8fe47af60f9e', 'Guard', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'f996d905-d99a-4eb6-83b0-8fe47af60f9e' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Hired Protector'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('f996d905-d99a-4eb6-83b0-8fe47af60f9e', 'Hired Protector', false, true);
  END IF;

  -- [VOCABULARY] 盗撮 (Level 31)
  UPDATE item_meanings SET meaning = 'Memotret Diam-diam', primary_meaning = true, accepted_answer = true WHERE id = 'c4a185da-2634-4cc9-bbe2-ed10a41a455f';
  UPDATE items SET slug = 'memotret-diam-diam' WHERE id = '9fd81db2-2386-471c-965f-3029cb18d578';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '9fd81db2-2386-471c-965f-3029cb18d578' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Merekam Diam-diam'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('9fd81db2-2386-471c-965f-3029cb18d578', 'Merekam Diam-diam', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '9fd81db2-2386-471c-965f-3029cb18d578' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Candid Ilegal'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('9fd81db2-2386-471c-965f-3029cb18d578', 'Candid Ilegal', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '9fd81db2-2386-471c-965f-3029cb18d578' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Sneak Shot'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('9fd81db2-2386-471c-965f-3029cb18d578', 'Sneak Shot', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '9fd81db2-2386-471c-965f-3029cb18d578' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Secret Photography'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('9fd81db2-2386-471c-965f-3029cb18d578', 'Secret Photography', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '9fd81db2-2386-471c-965f-3029cb18d578' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Memotret'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('9fd81db2-2386-471c-965f-3029cb18d578', 'Memotret', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '9fd81db2-2386-471c-965f-3029cb18d578' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Fotografi Rahasia'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('9fd81db2-2386-471c-965f-3029cb18d578', 'Fotografi Rahasia', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '9fd81db2-2386-471c-965f-3029cb18d578' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Voyeur Photography'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('9fd81db2-2386-471c-965f-3029cb18d578', 'Voyeur Photography', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '9fd81db2-2386-471c-965f-3029cb18d578' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Secretly Taking A Video'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('9fd81db2-2386-471c-965f-3029cb18d578', 'Secretly Taking A Video', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '9fd81db2-2386-471c-965f-3029cb18d578' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Taking A Video Secretly'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('9fd81db2-2386-471c-965f-3029cb18d578', 'Taking A Video Secretly', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '9fd81db2-2386-471c-965f-3029cb18d578' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Secretly Taking Videos'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('9fd81db2-2386-471c-965f-3029cb18d578', 'Secretly Taking Videos', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '9fd81db2-2386-471c-965f-3029cb18d578' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Taking Videos Secretly'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('9fd81db2-2386-471c-965f-3029cb18d578', 'Taking Videos Secretly', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '9fd81db2-2386-471c-965f-3029cb18d578' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Non-Consensual Photography'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('9fd81db2-2386-471c-965f-3029cb18d578', 'Non-Consensual Photography', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '9fd81db2-2386-471c-965f-3029cb18d578' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Secret Filming'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('9fd81db2-2386-471c-965f-3029cb18d578', 'Secret Filming', false, true);
  END IF;

  -- [VOCABULARY] 積む (Level 31)
  UPDATE item_meanings SET meaning = 'Menumpuk', primary_meaning = true, accepted_answer = true WHERE id = '0fe1218f-cb9e-4c9b-b640-076c80696a66';
  UPDATE items SET slug = 'menumpuk' WHERE id = 'fde62184-6e87-4dba-ba1b-265005db273d';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'fde62184-6e87-4dba-ba1b-265005db273d' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Memuat'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('fde62184-6e87-4dba-ba1b-265005db273d', 'Memuat', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'fde62184-6e87-4dba-ba1b-265005db273d' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Menumpuk Barang'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('fde62184-6e87-4dba-ba1b-265005db273d', 'Menumpuk Barang', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'fde62184-6e87-4dba-ba1b-265005db273d' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Memuat Pengalaman'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('fde62184-6e87-4dba-ba1b-265005db273d', 'Memuat Pengalaman', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'fde62184-6e87-4dba-ba1b-265005db273d' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Pile Up'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('fde62184-6e87-4dba-ba1b-265005db273d', 'To Pile Up', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'fde62184-6e87-4dba-ba1b-265005db273d' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Stack'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('fde62184-6e87-4dba-ba1b-265005db273d', 'To Stack', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'fde62184-6e87-4dba-ba1b-265005db273d' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Memuat (Barang'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('fde62184-6e87-4dba-ba1b-265005db273d', 'Memuat (Barang', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'fde62184-6e87-4dba-ba1b-265005db273d' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Pengalaman)'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('fde62184-6e87-4dba-ba1b-265005db273d', 'Pengalaman)', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'fde62184-6e87-4dba-ba1b-265005db273d' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Untuk Menumpuk Sesuatu'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('fde62184-6e87-4dba-ba1b-265005db273d', 'Untuk Menumpuk Sesuatu', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'fde62184-6e87-4dba-ba1b-265005db273d' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Load'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('fde62184-6e87-4dba-ba1b-265005db273d', 'To Load', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'fde62184-6e87-4dba-ba1b-265005db273d' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Untuk Memuat'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('fde62184-6e87-4dba-ba1b-265005db273d', 'Untuk Memuat', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'fde62184-6e87-4dba-ba1b-265005db273d' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Load Something Up'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('fde62184-6e87-4dba-ba1b-265005db273d', 'To Load Something Up', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'fde62184-6e87-4dba-ba1b-265005db273d' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Load Up Something'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('fde62184-6e87-4dba-ba1b-265005db273d', 'To Load Up Something', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'fde62184-6e87-4dba-ba1b-265005db273d' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Load Things Up'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('fde62184-6e87-4dba-ba1b-265005db273d', 'To Load Things Up', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'fde62184-6e87-4dba-ba1b-265005db273d' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Pile Something Up'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('fde62184-6e87-4dba-ba1b-265005db273d', 'To Pile Something Up', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'fde62184-6e87-4dba-ba1b-265005db273d' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Stack Up'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('fde62184-6e87-4dba-ba1b-265005db273d', 'To Stack Up', false, true);
  END IF;

  -- [VOCABULARY] 粉状 (Level 31)
  UPDATE item_meanings SET meaning = 'Berbentuk Serbuk', primary_meaning = true, accepted_answer = true WHERE id = '8bb510fb-cf2c-4d68-a919-b78f71a5d660';
  UPDATE items SET slug = 'berbentuk-serbuk' WHERE id = '8fd11cac-88e0-456a-9e32-515b18d0efe1';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '8fd11cac-88e0-456a-9e32-515b18d0efe1' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Bubuk'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('8fd11cac-88e0-456a-9e32-515b18d0efe1', 'Bubuk', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '8fd11cac-88e0-456a-9e32-515b18d0efe1' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Powdered'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('8fd11cac-88e0-456a-9e32-515b18d0efe1', 'Powdered', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '8fd11cac-88e0-456a-9e32-515b18d0efe1' AND LOWER(TRIM(meaning)) = LOWER(TRIM('In Powder Form'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('8fd11cac-88e0-456a-9e32-515b18d0efe1', 'In Powder Form', false, true);
  END IF;

  -- [VOCABULARY] 絶やす (Level 31)
  UPDATE item_meanings SET meaning = 'Memadamkan', primary_meaning = true, accepted_answer = true WHERE id = '9b7430c0-9e8e-491f-a94f-71ac95cbcda4';
  UPDATE items SET slug = 'memadamkan' WHERE id = '1dff259b-2a5d-4ebf-bff0-15097b707f5c';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '1dff259b-2a5d-4ebf-bff0-15097b707f5c' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Memusnahkan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('1dff259b-2a5d-4ebf-bff0-15097b707f5c', 'Memusnahkan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '1dff259b-2a5d-4ebf-bff0-15097b707f5c' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Menghabisi'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('1dff259b-2a5d-4ebf-bff0-15097b707f5c', 'Menghabisi', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '1dff259b-2a5d-4ebf-bff0-15097b707f5c' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Membiarkan Sesuatu Padam'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('1dff259b-2a5d-4ebf-bff0-15097b707f5c', 'Membiarkan Sesuatu Padam', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '1dff259b-2a5d-4ebf-bff0-15097b707f5c' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Exterminate'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('1dff259b-2a5d-4ebf-bff0-15097b707f5c', 'To Exterminate', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '1dff259b-2a5d-4ebf-bff0-15097b707f5c' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Eradicate'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('1dff259b-2a5d-4ebf-bff0-15097b707f5c', 'To Eradicate', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '1dff259b-2a5d-4ebf-bff0-15097b707f5c' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Let Die Out'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('1dff259b-2a5d-4ebf-bff0-15097b707f5c', 'To Let Die Out', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '1dff259b-2a5d-4ebf-bff0-15097b707f5c' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Kill Something Off'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('1dff259b-2a5d-4ebf-bff0-15097b707f5c', 'To Kill Something Off', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '1dff259b-2a5d-4ebf-bff0-15097b707f5c' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Let Something Die'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('1dff259b-2a5d-4ebf-bff0-15097b707f5c', 'To Let Something Die', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '1dff259b-2a5d-4ebf-bff0-15097b707f5c' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Exterminate Something'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('1dff259b-2a5d-4ebf-bff0-15097b707f5c', 'To Exterminate Something', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '1dff259b-2a5d-4ebf-bff0-15097b707f5c' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Let End'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('1dff259b-2a5d-4ebf-bff0-15097b707f5c', 'To Let End', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '1dff259b-2a5d-4ebf-bff0-15097b707f5c' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Let Something Die Out'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('1dff259b-2a5d-4ebf-bff0-15097b707f5c', 'To Let Something Die Out', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '1dff259b-2a5d-4ebf-bff0-15097b707f5c' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Put An End To Something'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('1dff259b-2a5d-4ebf-bff0-15097b707f5c', 'To Put An End To Something', false, true);
  END IF;

  -- [VOCABULARY] 緊張する (Level 31)
  UPDATE item_meanings SET meaning = 'Gugup', primary_meaning = true, accepted_answer = true WHERE id = '1be7ad0f-f68f-45e1-a7a1-9c08b85d9936';
  UPDATE items SET slug = 'gugup' WHERE id = '564afccb-1e08-4fb3-a10c-509ec2ced8ff';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '564afccb-1e08-4fb3-a10c-509ec2ced8ff' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Merasa Tegang'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('564afccb-1e08-4fb3-a10c-509ec2ced8ff', 'Merasa Tegang', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '564afccb-1e08-4fb3-a10c-509ec2ced8ff' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Merasa Gugup'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('564afccb-1e08-4fb3-a10c-509ec2ced8ff', 'Merasa Gugup', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '564afccb-1e08-4fb3-a10c-509ec2ced8ff' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Get Nervous'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('564afccb-1e08-4fb3-a10c-509ec2ced8ff', 'To Get Nervous', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '564afccb-1e08-4fb3-a10c-509ec2ced8ff' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Be Tense'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('564afccb-1e08-4fb3-a10c-509ec2ced8ff', 'To Be Tense', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '564afccb-1e08-4fb3-a10c-509ec2ced8ff' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Strain'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('564afccb-1e08-4fb3-a10c-509ec2ced8ff', 'To Strain', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '564afccb-1e08-4fb3-a10c-509ec2ced8ff' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Tense Up'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('564afccb-1e08-4fb3-a10c-509ec2ced8ff', 'To Tense Up', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '564afccb-1e08-4fb3-a10c-509ec2ced8ff' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Get Stage Fright'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('564afccb-1e08-4fb3-a10c-509ec2ced8ff', 'To Get Stage Fright', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '564afccb-1e08-4fb3-a10c-509ec2ced8ff' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Feel Tense'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('564afccb-1e08-4fb3-a10c-509ec2ced8ff', 'To Feel Tense', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '564afccb-1e08-4fb3-a10c-509ec2ced8ff' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Be Self-Conscious'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('564afccb-1e08-4fb3-a10c-509ec2ced8ff', 'To Be Self-Conscious', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '564afccb-1e08-4fb3-a10c-509ec2ced8ff' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Feel Nervous'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('564afccb-1e08-4fb3-a10c-509ec2ced8ff', 'To Feel Nervous', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '564afccb-1e08-4fb3-a10c-509ec2ced8ff' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Get Tense'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('564afccb-1e08-4fb3-a10c-509ec2ced8ff', 'To Get Tense', false, true);
  END IF;

  -- [VOCABULARY] 編む (Level 31)
  UPDATE item_meanings SET meaning = 'Merajut', primary_meaning = true, accepted_answer = true WHERE id = '08b475a9-28f0-4a29-96ea-005b469c6acc';
  UPDATE items SET slug = 'merajut' WHERE id = 'dea623e9-c52f-4f55-9ab7-0fbf7c404125';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'dea623e9-c52f-4f55-9ab7-0fbf7c404125' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Menganyam'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('dea623e9-c52f-4f55-9ab7-0fbf7c404125', 'Menganyam', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'dea623e9-c52f-4f55-9ab7-0fbf7c404125' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Untuk Merajut'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('dea623e9-c52f-4f55-9ab7-0fbf7c404125', 'Untuk Merajut', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'dea623e9-c52f-4f55-9ab7-0fbf7c404125' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Knit'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('dea623e9-c52f-4f55-9ab7-0fbf7c404125', 'To Knit', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'dea623e9-c52f-4f55-9ab7-0fbf7c404125' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Braid'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('dea623e9-c52f-4f55-9ab7-0fbf7c404125', 'To Braid', false, true);
  END IF;

  -- [VOCABULARY] 編集 (Level 31)
  UPDATE item_meanings SET meaning = 'Menyunting', primary_meaning = true, accepted_answer = true WHERE id = 'acb7a59b-16e3-416a-8a25-da7495927690';
  UPDATE items SET slug = 'menyunting' WHERE id = 'e86d3e60-7a3b-4360-bb16-c9d56d938299';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'e86d3e60-7a3b-4360-bb16-c9d56d938299' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Mengedit'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('e86d3e60-7a3b-4360-bb16-c9d56d938299', 'Mengedit', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'e86d3e60-7a3b-4360-bb16-c9d56d938299' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Sunting'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('e86d3e60-7a3b-4360-bb16-c9d56d938299', 'Sunting', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'e86d3e60-7a3b-4360-bb16-c9d56d938299' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Edit'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('e86d3e60-7a3b-4360-bb16-c9d56d938299', 'Edit', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'e86d3e60-7a3b-4360-bb16-c9d56d938299' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Compilation'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('e86d3e60-7a3b-4360-bb16-c9d56d938299', 'Compilation', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'e86d3e60-7a3b-4360-bb16-c9d56d938299' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Editing'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('e86d3e60-7a3b-4360-bb16-c9d56d938299', 'Editing', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'e86d3e60-7a3b-4360-bb16-c9d56d938299' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Compile'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('e86d3e60-7a3b-4360-bb16-c9d56d938299', 'Compile', false, true);
  END IF;

  -- [VOCABULARY] 胃痛 (Level 31)
  UPDATE item_meanings SET meaning = 'Sakit Lambung', primary_meaning = true, accepted_answer = true WHERE id = '035c3d09-1d49-4aed-977d-45d8df9305bc';
  UPDATE items SET slug = 'sakit-lambung' WHERE id = '309a7ab5-072e-4a89-b164-48b6c2e986e5';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '309a7ab5-072e-4a89-b164-48b6c2e986e5' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Maag'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('309a7ab5-072e-4a89-b164-48b6c2e986e5', 'Maag', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '309a7ab5-072e-4a89-b164-48b6c2e986e5' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Sakit perut'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('309a7ab5-072e-4a89-b164-48b6c2e986e5', 'Sakit perut', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '309a7ab5-072e-4a89-b164-48b6c2e986e5' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Stomachache'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('309a7ab5-072e-4a89-b164-48b6c2e986e5', 'Stomachache', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '309a7ab5-072e-4a89-b164-48b6c2e986e5' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Stomach Pain'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('309a7ab5-072e-4a89-b164-48b6c2e986e5', 'Stomach Pain', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '309a7ab5-072e-4a89-b164-48b6c2e986e5' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Stomach Ache'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('309a7ab5-072e-4a89-b164-48b6c2e986e5', 'Stomach Ache', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '309a7ab5-072e-4a89-b164-48b6c2e986e5' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Stomach Pains'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('309a7ab5-072e-4a89-b164-48b6c2e986e5', 'Stomach Pains', false, true);
  END IF;

  -- [VOCABULARY] 菜食 (Level 31)
  UPDATE item_meanings SET meaning = 'Vegetarian', primary_meaning = true, accepted_answer = true WHERE id = 'b9a8f998-3175-4756-ab69-f8c4edc0fbca';
  UPDATE items SET slug = 'vegetarian' WHERE id = '0f3e8901-cb1f-42d0-b3b5-0d97241f1fc8';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '0f3e8901-cb1f-42d0-b3b5-0d97241f1fc8' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Pola Makan Sayur'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('0f3e8901-cb1f-42d0-b3b5-0d97241f1fc8', 'Pola Makan Sayur', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '0f3e8901-cb1f-42d0-b3b5-0d97241f1fc8' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Pola Makan Vegetarian'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('0f3e8901-cb1f-42d0-b3b5-0d97241f1fc8', 'Pola Makan Vegetarian', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '0f3e8901-cb1f-42d0-b3b5-0d97241f1fc8' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Vegetarian Diet'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('0f3e8901-cb1f-42d0-b3b5-0d97241f1fc8', 'Vegetarian Diet', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '0f3e8901-cb1f-42d0-b3b5-0d97241f1fc8' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Vegetable Diet'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('0f3e8901-cb1f-42d0-b3b5-0d97241f1fc8', 'Vegetable Diet', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '0f3e8901-cb1f-42d0-b3b5-0d97241f1fc8' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Veggie Diet'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('0f3e8901-cb1f-42d0-b3b5-0d97241f1fc8', 'Veggie Diet', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '0f3e8901-cb1f-42d0-b3b5-0d97241f1fc8' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Vegetarianism'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('0f3e8901-cb1f-42d0-b3b5-0d97241f1fc8', 'Vegetarianism', false, true);
  END IF;

  -- [VOCABULARY] 華やか (Level 31)
  UPDATE item_meanings SET meaning = 'Semarak', primary_meaning = true, accepted_answer = true WHERE id = '47a75ea3-102d-42ef-b07c-f7790e9000d4';
  UPDATE items SET slug = 'semarak' WHERE id = '28109d78-3f1b-4d39-928b-085f9298f0fb';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '28109d78-3f1b-4d39-928b-085f9298f0fb' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Megah Memukau'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('28109d78-3f1b-4d39-928b-085f9298f0fb', 'Megah Memukau', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '28109d78-3f1b-4d39-928b-085f9298f0fb' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Cerah Dan Mencolok'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('28109d78-3f1b-4d39-928b-085f9298f0fb', 'Cerah Dan Mencolok', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '28109d78-3f1b-4d39-928b-085f9298f0fb' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Gorgeous'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('28109d78-3f1b-4d39-928b-085f9298f0fb', 'Gorgeous', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '28109d78-3f1b-4d39-928b-085f9298f0fb' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Glamorous'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('28109d78-3f1b-4d39-928b-085f9298f0fb', 'Glamorous', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '28109d78-3f1b-4d39-928b-085f9298f0fb' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Showy'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('28109d78-3f1b-4d39-928b-085f9298f0fb', 'Showy', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '28109d78-3f1b-4d39-928b-085f9298f0fb' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Meriah'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('28109d78-3f1b-4d39-928b-085f9298f0fb', 'Meriah', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '28109d78-3f1b-4d39-928b-085f9298f0fb' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Bright And Showy'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('28109d78-3f1b-4d39-928b-085f9298f0fb', 'Bright And Showy', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '28109d78-3f1b-4d39-928b-085f9298f0fb' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Sangat indah'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('28109d78-3f1b-4d39-928b-085f9298f0fb', 'Sangat indah', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '28109d78-3f1b-4d39-928b-085f9298f0fb' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Vibrant'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('28109d78-3f1b-4d39-928b-085f9298f0fb', 'Vibrant', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '28109d78-3f1b-4d39-928b-085f9298f0fb' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Festive'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('28109d78-3f1b-4d39-928b-085f9298f0fb', 'Festive', false, true);
  END IF;

  -- [VOCABULARY] 華美 (Level 31)
  UPDATE item_meanings SET meaning = 'Mewah Berlebihan', primary_meaning = true, accepted_answer = true WHERE id = '855e71d4-0526-485e-b693-560a6cc81769';
  UPDATE items SET slug = 'mewah-berlebihan' WHERE id = '30e18df8-4d0c-4f51-8788-e1b2a34921fe';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '30e18df8-4d0c-4f51-8788-e1b2a34921fe' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Glamor Mencolok'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('30e18df8-4d0c-4f51-8788-e1b2a34921fe', 'Glamor Mencolok', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '30e18df8-4d0c-4f51-8788-e1b2a34921fe' AND LOWER(TRIM(meaning)) = LOWER(TRIM('mencolok'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('30e18df8-4d0c-4f51-8788-e1b2a34921fe', 'mencolok', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '30e18df8-4d0c-4f51-8788-e1b2a34921fe' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Showy'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('30e18df8-4d0c-4f51-8788-e1b2a34921fe', 'Showy', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '30e18df8-4d0c-4f51-8788-e1b2a34921fe' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Gaudy'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('30e18df8-4d0c-4f51-8788-e1b2a34921fe', 'Gaudy', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '30e18df8-4d0c-4f51-8788-e1b2a34921fe' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Opulent'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('30e18df8-4d0c-4f51-8788-e1b2a34921fe', 'Opulent', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '30e18df8-4d0c-4f51-8788-e1b2a34921fe' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Lavish'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('30e18df8-4d0c-4f51-8788-e1b2a34921fe', 'Lavish', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '30e18df8-4d0c-4f51-8788-e1b2a34921fe' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Showy Beauty'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('30e18df8-4d0c-4f51-8788-e1b2a34921fe', 'Showy Beauty', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '30e18df8-4d0c-4f51-8788-e1b2a34921fe' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Splendour'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('30e18df8-4d0c-4f51-8788-e1b2a34921fe', 'Splendour', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '30e18df8-4d0c-4f51-8788-e1b2a34921fe' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Gorgeousness'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('30e18df8-4d0c-4f51-8788-e1b2a34921fe', 'Gorgeousness', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '30e18df8-4d0c-4f51-8788-e1b2a34921fe' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Ostentation'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('30e18df8-4d0c-4f51-8788-e1b2a34921fe', 'Ostentation', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '30e18df8-4d0c-4f51-8788-e1b2a34921fe' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Splendor'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('30e18df8-4d0c-4f51-8788-e1b2a34921fe', 'Splendor', false, true);
  END IF;

  -- [VOCABULARY] 融合 (Level 31)
  UPDATE item_meanings SET meaning = 'Peleburan', primary_meaning = true, accepted_answer = true WHERE id = 'abc0db13-ddaa-4c27-864b-0c26215a55b9';
  UPDATE items SET slug = 'peleburan' WHERE id = 'c4476f66-578b-4553-9d62-4691c54704ff';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'c4476f66-578b-4553-9d62-4691c54704ff' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Fusi'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('c4476f66-578b-4553-9d62-4691c54704ff', 'Fusi', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'c4476f66-578b-4553-9d62-4691c54704ff' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Integrasi'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('c4476f66-578b-4553-9d62-4691c54704ff', 'Integrasi', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'c4476f66-578b-4553-9d62-4691c54704ff' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Fusion'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('c4476f66-578b-4553-9d62-4691c54704ff', 'Fusion', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'c4476f66-578b-4553-9d62-4691c54704ff' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Blend'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('c4476f66-578b-4553-9d62-4691c54704ff', 'Blend', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'c4476f66-578b-4553-9d62-4691c54704ff' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Integration'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('c4476f66-578b-4553-9d62-4691c54704ff', 'Integration', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'c4476f66-578b-4553-9d62-4691c54704ff' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Integrating'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('c4476f66-578b-4553-9d62-4691c54704ff', 'Integrating', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'c4476f66-578b-4553-9d62-4691c54704ff' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Integrate'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('c4476f66-578b-4553-9d62-4691c54704ff', 'Integrate', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'c4476f66-578b-4553-9d62-4691c54704ff' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Blending'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('c4476f66-578b-4553-9d62-4691c54704ff', 'Blending', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'c4476f66-578b-4553-9d62-4691c54704ff' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Fusing'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('c4476f66-578b-4553-9d62-4691c54704ff', 'Fusing', false, true);
  END IF;

  -- [VOCABULARY] 融資 (Level 31)
  UPDATE item_meanings SET meaning = 'Pendanaan', primary_meaning = true, accepted_answer = true WHERE id = '8729d903-269f-40e0-84aa-f76827c6b573';
  UPDATE items SET slug = 'pendanaan' WHERE id = '61cdf1e5-7567-47fd-b06f-7c6e768adf9c';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '61cdf1e5-7567-47fd-b06f-7c6e768adf9c' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Pembiayaan Pinjaman'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('61cdf1e5-7567-47fd-b06f-7c6e768adf9c', 'Pembiayaan Pinjaman', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '61cdf1e5-7567-47fd-b06f-7c6e768adf9c' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Pembiayaan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('61cdf1e5-7567-47fd-b06f-7c6e768adf9c', 'Pembiayaan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '61cdf1e5-7567-47fd-b06f-7c6e768adf9c' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Financing'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('61cdf1e5-7567-47fd-b06f-7c6e768adf9c', 'Financing', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '61cdf1e5-7567-47fd-b06f-7c6e768adf9c' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Loan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('61cdf1e5-7567-47fd-b06f-7c6e768adf9c', 'Loan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '61cdf1e5-7567-47fd-b06f-7c6e768adf9c' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Meminjamkan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('61cdf1e5-7567-47fd-b06f-7c6e768adf9c', 'Meminjamkan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '61cdf1e5-7567-47fd-b06f-7c6e768adf9c' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Lending Money'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('61cdf1e5-7567-47fd-b06f-7c6e768adf9c', 'Lending Money', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '61cdf1e5-7567-47fd-b06f-7c6e768adf9c' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Loaning'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('61cdf1e5-7567-47fd-b06f-7c6e768adf9c', 'Loaning', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '61cdf1e5-7567-47fd-b06f-7c6e768adf9c' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Loan Money'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('61cdf1e5-7567-47fd-b06f-7c6e768adf9c', 'Loan Money', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '61cdf1e5-7567-47fd-b06f-7c6e768adf9c' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Loaning Money'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('61cdf1e5-7567-47fd-b06f-7c6e768adf9c', 'Loaning Money', false, true);
  END IF;

  -- [VOCABULARY] 街 (Level 31)
  UPDATE item_meanings SET meaning = 'Pusat Kota', primary_meaning = true, accepted_answer = true WHERE id = '0d63c8d6-9772-449c-9688-7b2531e107aa';
  UPDATE items SET slug = 'pusat-kota' WHERE id = '774c2db4-43bc-4c12-809f-cea79f24b61e';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '774c2db4-43bc-4c12-809f-cea79f24b61e' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Kawasan Pertokoan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('774c2db4-43bc-4c12-809f-cea79f24b61e', 'Kawasan Pertokoan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '774c2db4-43bc-4c12-809f-cea79f24b61e' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Kota'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('774c2db4-43bc-4c12-809f-cea79f24b61e', 'Kota', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '774c2db4-43bc-4c12-809f-cea79f24b61e' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Downtown'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('774c2db4-43bc-4c12-809f-cea79f24b61e', 'Downtown', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '774c2db4-43bc-4c12-809f-cea79f24b61e' AND LOWER(TRIM(meaning)) = LOWER(TRIM('City Streets'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('774c2db4-43bc-4c12-809f-cea79f24b61e', 'City Streets', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '774c2db4-43bc-4c12-809f-cea79f24b61e' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Urban Area'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('774c2db4-43bc-4c12-809f-cea79f24b61e', 'Urban Area', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '774c2db4-43bc-4c12-809f-cea79f24b61e' AND LOWER(TRIM(meaning)) = LOWER(TRIM('City'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('774c2db4-43bc-4c12-809f-cea79f24b61e', 'City', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '774c2db4-43bc-4c12-809f-cea79f24b61e' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Jalan Kota'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('774c2db4-43bc-4c12-809f-cea79f24b61e', 'Jalan Kota', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '774c2db4-43bc-4c12-809f-cea79f24b61e' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Daerah Perkotaan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('774c2db4-43bc-4c12-809f-cea79f24b61e', 'Daerah Perkotaan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '774c2db4-43bc-4c12-809f-cea79f24b61e' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Downtown Area'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('774c2db4-43bc-4c12-809f-cea79f24b61e', 'Downtown Area', false, true);
  END IF;

  -- [VOCABULARY] 街並み (Level 31)
  UPDATE item_meanings SET meaning = 'Pemandangan Jalan Kota', primary_meaning = true, accepted_answer = true WHERE id = '10adc96f-58b4-45a9-96c0-3c66dbac2ad5';
  UPDATE items SET slug = 'pemandangan-jalan-kota' WHERE id = 'c5b2d819-319d-4984-882e-dce8d6137ffa';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'c5b2d819-319d-4984-882e-dce8d6137ffa' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Suasana Deretan Toko'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('c5b2d819-319d-4984-882e-dce8d6137ffa', 'Suasana Deretan Toko', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'c5b2d819-319d-4984-882e-dce8d6137ffa' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Pemandangan kota'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('c5b2d819-319d-4984-882e-dce8d6137ffa', 'Pemandangan kota', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'c5b2d819-319d-4984-882e-dce8d6137ffa' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Streetscape'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('c5b2d819-319d-4984-882e-dce8d6137ffa', 'Streetscape', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'c5b2d819-319d-4984-882e-dce8d6137ffa' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Cityscape'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('c5b2d819-319d-4984-882e-dce8d6137ffa', 'Cityscape', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'c5b2d819-319d-4984-882e-dce8d6137ffa' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Pemandangan jalanan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('c5b2d819-319d-4984-882e-dce8d6137ffa', 'Pemandangan jalanan', false, true);
  END IF;

  -- [VOCABULARY] 見詰める (Level 31)
  UPDATE item_meanings SET meaning = 'Menatap Tajam', primary_meaning = true, accepted_answer = true WHERE id = '9ba928bf-0d2a-4696-91b5-aa6e62aab854';
  UPDATE items SET slug = 'menatap-tajam' WHERE id = '1b9251bb-ec0f-4272-9edd-2170261ce1e7';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '1b9251bb-ec0f-4272-9edd-2170261ce1e7' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Memandang Lekat-lekat'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('1b9251bb-ec0f-4272-9edd-2170261ce1e7', 'Memandang Lekat-lekat', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '1b9251bb-ec0f-4272-9edd-2170261ce1e7' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Untuk Menatap'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('1b9251bb-ec0f-4272-9edd-2170261ce1e7', 'Untuk Menatap', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '1b9251bb-ec0f-4272-9edd-2170261ce1e7' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Stare At'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('1b9251bb-ec0f-4272-9edd-2170261ce1e7', 'To Stare At', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '1b9251bb-ec0f-4272-9edd-2170261ce1e7' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Gaze At'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('1b9251bb-ec0f-4272-9edd-2170261ce1e7', 'To Gaze At', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '1b9251bb-ec0f-4272-9edd-2170261ce1e7' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Fix One''s Eyes On'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('1b9251bb-ec0f-4272-9edd-2170261ce1e7', 'To Fix One''s Eyes On', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '1b9251bb-ec0f-4272-9edd-2170261ce1e7' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Look At Intensely'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('1b9251bb-ec0f-4272-9edd-2170261ce1e7', 'To Look At Intensely', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '1b9251bb-ec0f-4272-9edd-2170261ce1e7' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Stare Intensely At'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('1b9251bb-ec0f-4272-9edd-2170261ce1e7', 'To Stare Intensely At', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '1b9251bb-ec0f-4272-9edd-2170261ce1e7' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Gaze Into'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('1b9251bb-ec0f-4272-9edd-2170261ce1e7', 'To Gaze Into', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '1b9251bb-ec0f-4272-9edd-2170261ce1e7' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Gaze'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('1b9251bb-ec0f-4272-9edd-2170261ce1e7', 'To Gaze', false, true);
  END IF;

  -- [VOCABULARY] 解散 (Level 31)
  UPDATE item_meanings SET meaning = 'Pembubaran', primary_meaning = true, accepted_answer = true WHERE id = '314b2803-4c78-4868-b446-f4b855231c8c';
  UPDATE items SET slug = 'pembubaran' WHERE id = '6030ec32-7f79-4373-a95f-bee8df0ded50';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '6030ec32-7f79-4373-a95f-bee8df0ded50' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Bubar'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('6030ec32-7f79-4373-a95f-bee8df0ded50', 'Bubar', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '6030ec32-7f79-4373-a95f-bee8df0ded50' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Dissolution'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('6030ec32-7f79-4373-a95f-bee8df0ded50', 'Dissolution', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '6030ec32-7f79-4373-a95f-bee8df0ded50' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Disband'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('6030ec32-7f79-4373-a95f-bee8df0ded50', 'Disband', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '6030ec32-7f79-4373-a95f-bee8df0ded50' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Breakup'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('6030ec32-7f79-4373-a95f-bee8df0ded50', 'Breakup', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '6030ec32-7f79-4373-a95f-bee8df0ded50' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Putus'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('6030ec32-7f79-4373-a95f-bee8df0ded50', 'Putus', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '6030ec32-7f79-4373-a95f-bee8df0ded50' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Disperse'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('6030ec32-7f79-4373-a95f-bee8df0ded50', 'Disperse', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '6030ec32-7f79-4373-a95f-bee8df0ded50' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Breaking Up'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('6030ec32-7f79-4373-a95f-bee8df0ded50', 'Breaking Up', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '6030ec32-7f79-4373-a95f-bee8df0ded50' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Dissolving'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('6030ec32-7f79-4373-a95f-bee8df0ded50', 'Dissolving', false, true);
  END IF;

  -- [VOCABULARY] 豊富 (Level 31)
  UPDATE item_meanings SET meaning = 'Melimpah Ruah', primary_meaning = true, accepted_answer = true WHERE id = 'd42e67d1-e26c-4383-9a35-81001affbba3';
  UPDATE items SET slug = 'melimpah-ruah' WHERE id = 'fff29dac-55f5-4632-b5b8-785ce5f9e963';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'fff29dac-55f5-4632-b5b8-785ce5f9e963' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Sangat Kaya'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('fff29dac-55f5-4632-b5b8-785ce5f9e963', 'Sangat Kaya', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'fff29dac-55f5-4632-b5b8-785ce5f9e963' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Melimpah'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('fff29dac-55f5-4632-b5b8-785ce5f9e963', 'Melimpah', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'fff29dac-55f5-4632-b5b8-785ce5f9e963' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Abundant'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('fff29dac-55f5-4632-b5b8-785ce5f9e963', 'Abundant', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'fff29dac-55f5-4632-b5b8-785ce5f9e963' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Plentiful'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('fff29dac-55f5-4632-b5b8-785ce5f9e963', 'Plentiful', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'fff29dac-55f5-4632-b5b8-785ce5f9e963' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Rich'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('fff29dac-55f5-4632-b5b8-785ce5f9e963', 'Rich', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'fff29dac-55f5-4632-b5b8-785ce5f9e963' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Wide'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('fff29dac-55f5-4632-b5b8-785ce5f9e963', 'Wide', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'fff29dac-55f5-4632-b5b8-785ce5f9e963' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Kaya'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('fff29dac-55f5-4632-b5b8-785ce5f9e963', 'Kaya', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'fff29dac-55f5-4632-b5b8-785ce5f9e963' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Banyak'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('fff29dac-55f5-4632-b5b8-785ce5f9e963', 'Banyak', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'fff29dac-55f5-4632-b5b8-785ce5f9e963' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Abundance'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('fff29dac-55f5-4632-b5b8-785ce5f9e963', 'Abundance', false, true);
  END IF;

  -- [VOCABULARY] 豪華 (Level 31)
  UPDATE item_meanings SET meaning = 'Mewah Megah', primary_meaning = true, accepted_answer = true WHERE id = '0abc9142-7096-4a9e-92be-249f161b32b5';
  UPDATE items SET slug = 'mewah-megah' WHERE id = 'f4463430-b1fc-4349-873d-cfbfdce38f3a';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'f4463430-b1fc-4349-873d-cfbfdce38f3a' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Elegan Mewah'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('f4463430-b1fc-4349-873d-cfbfdce38f3a', 'Elegan Mewah', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'f4463430-b1fc-4349-873d-cfbfdce38f3a' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Mewah'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('f4463430-b1fc-4349-873d-cfbfdce38f3a', 'Mewah', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'f4463430-b1fc-4349-873d-cfbfdce38f3a' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Gorgeous'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('f4463430-b1fc-4349-873d-cfbfdce38f3a', 'Gorgeous', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'f4463430-b1fc-4349-873d-cfbfdce38f3a' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Deluxe'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('f4463430-b1fc-4349-873d-cfbfdce38f3a', 'Deluxe', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'f4463430-b1fc-4349-873d-cfbfdce38f3a' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Luxurious'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('f4463430-b1fc-4349-873d-cfbfdce38f3a', 'Luxurious', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'f4463430-b1fc-4349-873d-cfbfdce38f3a' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Splendid'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('f4463430-b1fc-4349-873d-cfbfdce38f3a', 'Splendid', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'f4463430-b1fc-4349-873d-cfbfdce38f3a' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Bagus sekali'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('f4463430-b1fc-4349-873d-cfbfdce38f3a', 'Bagus sekali', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'f4463430-b1fc-4349-873d-cfbfdce38f3a' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Posh'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('f4463430-b1fc-4349-873d-cfbfdce38f3a', 'Posh', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'f4463430-b1fc-4349-873d-cfbfdce38f3a' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Kemewahan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('f4463430-b1fc-4349-873d-cfbfdce38f3a', 'Kemewahan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'f4463430-b1fc-4349-873d-cfbfdce38f3a' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Luxury'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('f4463430-b1fc-4349-873d-cfbfdce38f3a', 'Luxury', false, true);
  END IF;

  -- [VOCABULARY] 貯める (Level 31)
  UPDATE item_meanings SET meaning = 'Menabung', primary_meaning = true, accepted_answer = true WHERE id = 'ab9219e9-a9a1-4332-adef-3880a950aec5';
  UPDATE items SET slug = 'menabung' WHERE id = '3f6faa62-4b8a-4637-bee3-e792b949cbed';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '3f6faa62-4b8a-4637-bee3-e792b949cbed' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Mengumpulkan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('3f6faa62-4b8a-4637-bee3-e792b949cbed', 'Mengumpulkan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '3f6faa62-4b8a-4637-bee3-e792b949cbed' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Menyimpan Uang'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('3f6faa62-4b8a-4637-bee3-e792b949cbed', 'Menyimpan Uang', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '3f6faa62-4b8a-4637-bee3-e792b949cbed' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Mengumpulkan Harta'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('3f6faa62-4b8a-4637-bee3-e792b949cbed', 'Mengumpulkan Harta', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '3f6faa62-4b8a-4637-bee3-e792b949cbed' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Save Money'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('3f6faa62-4b8a-4637-bee3-e792b949cbed', 'To Save Money', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '3f6faa62-4b8a-4637-bee3-e792b949cbed' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Mengumpulkan (Uang'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('3f6faa62-4b8a-4637-bee3-e792b949cbed', 'Mengumpulkan (Uang', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '3f6faa62-4b8a-4637-bee3-e792b949cbed' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Harta)'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('3f6faa62-4b8a-4637-bee3-e792b949cbed', 'Harta)', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '3f6faa62-4b8a-4637-bee3-e792b949cbed' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Untuk Menghemat'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('3f6faa62-4b8a-4637-bee3-e792b949cbed', 'Untuk Menghemat', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '3f6faa62-4b8a-4637-bee3-e792b949cbed' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Save Up'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('3f6faa62-4b8a-4637-bee3-e792b949cbed', 'To Save Up', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '3f6faa62-4b8a-4637-bee3-e792b949cbed' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Accumulate'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('3f6faa62-4b8a-4637-bee3-e792b949cbed', 'To Accumulate', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '3f6faa62-4b8a-4637-bee3-e792b949cbed' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Untuk Mengumpulkan Sesuatu'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('3f6faa62-4b8a-4637-bee3-e792b949cbed', 'Untuk Mengumpulkan Sesuatu', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '3f6faa62-4b8a-4637-bee3-e792b949cbed' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Save Up Something'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('3f6faa62-4b8a-4637-bee3-e792b949cbed', 'To Save Up Something', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '3f6faa62-4b8a-4637-bee3-e792b949cbed' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Save Something'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('3f6faa62-4b8a-4637-bee3-e792b949cbed', 'To Save Something', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '3f6faa62-4b8a-4637-bee3-e792b949cbed' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Save'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('3f6faa62-4b8a-4637-bee3-e792b949cbed', 'To Save', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '3f6faa62-4b8a-4637-bee3-e792b949cbed' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Collect'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('3f6faa62-4b8a-4637-bee3-e792b949cbed', 'To Collect', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '3f6faa62-4b8a-4637-bee3-e792b949cbed' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Store'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('3f6faa62-4b8a-4637-bee3-e792b949cbed', 'To Store', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '3f6faa62-4b8a-4637-bee3-e792b949cbed' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Accumulate Something'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('3f6faa62-4b8a-4637-bee3-e792b949cbed', 'To Accumulate Something', false, true);
  END IF;

  -- [VOCABULARY] 迷わす (Level 31)
  UPDATE item_meanings SET meaning = 'Menyesatkan', primary_meaning = true, accepted_answer = true WHERE id = '67581200-1f65-418d-8b6d-8d7fb713b246';
  UPDATE items SET slug = 'menyesatkan' WHERE id = '6640dd45-70d5-425c-b6ec-dcba80a3bbef';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '6640dd45-70d5-425c-b6ec-dcba80a3bbef' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Membingungkan Pikiran'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('6640dd45-70d5-425c-b6ec-dcba80a3bbef', 'Membingungkan Pikiran', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '6640dd45-70d5-425c-b6ec-dcba80a3bbef' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Untuk Memimpin Seseorang Tersesat'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('6640dd45-70d5-425c-b6ec-dcba80a3bbef', 'Untuk Memimpin Seseorang Tersesat', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '6640dd45-70d5-425c-b6ec-dcba80a3bbef' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Mislead'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('6640dd45-70d5-425c-b6ec-dcba80a3bbef', 'To Mislead', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '6640dd45-70d5-425c-b6ec-dcba80a3bbef' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Confuse'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('6640dd45-70d5-425c-b6ec-dcba80a3bbef', 'To Confuse', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '6640dd45-70d5-425c-b6ec-dcba80a3bbef' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Untuk Membingungkan Seseorang'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('6640dd45-70d5-425c-b6ec-dcba80a3bbef', 'Untuk Membingungkan Seseorang', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '6640dd45-70d5-425c-b6ec-dcba80a3bbef' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Untuk Menyesatkan Seseorang'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('6640dd45-70d5-425c-b6ec-dcba80a3bbef', 'Untuk Menyesatkan Seseorang', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '6640dd45-70d5-425c-b6ec-dcba80a3bbef' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Lead Someone Astray'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('6640dd45-70d5-425c-b6ec-dcba80a3bbef', 'To Lead Someone Astray', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '6640dd45-70d5-425c-b6ec-dcba80a3bbef' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Mislead Someone'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('6640dd45-70d5-425c-b6ec-dcba80a3bbef', 'To Mislead Someone', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '6640dd45-70d5-425c-b6ec-dcba80a3bbef' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Perplex Someone'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('6640dd45-70d5-425c-b6ec-dcba80a3bbef', 'To Perplex Someone', false, true);
  END IF;

  -- [VOCABULARY] 鑑定 (Level 31)
  UPDATE item_meanings SET meaning = 'Penilaian Ahli', primary_meaning = true, accepted_answer = true WHERE id = '5af5ee78-8456-4cfd-a464-42be8911b713';
  UPDATE items SET slug = 'penilaian-ahli' WHERE id = '03d2381f-cbe8-4193-8177-fbea49b0da24';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '03d2381f-cbe8-4193-8177-fbea49b0da24' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Autentikasi'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('03d2381f-cbe8-4193-8177-fbea49b0da24', 'Autentikasi', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '03d2381f-cbe8-4193-8177-fbea49b0da24' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Taksiran'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('03d2381f-cbe8-4193-8177-fbea49b0da24', 'Taksiran', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '03d2381f-cbe8-4193-8177-fbea49b0da24' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Penilaian'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('03d2381f-cbe8-4193-8177-fbea49b0da24', 'Penilaian', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '03d2381f-cbe8-4193-8177-fbea49b0da24' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Appraisal'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('03d2381f-cbe8-4193-8177-fbea49b0da24', 'Appraisal', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '03d2381f-cbe8-4193-8177-fbea49b0da24' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Expert Judgment'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('03d2381f-cbe8-4193-8177-fbea49b0da24', 'Expert Judgment', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '03d2381f-cbe8-4193-8177-fbea49b0da24' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Assessment'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('03d2381f-cbe8-4193-8177-fbea49b0da24', 'Assessment', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '03d2381f-cbe8-4193-8177-fbea49b0da24' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Assessing'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('03d2381f-cbe8-4193-8177-fbea49b0da24', 'Assessing', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '03d2381f-cbe8-4193-8177-fbea49b0da24' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Assess'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('03d2381f-cbe8-4193-8177-fbea49b0da24', 'Assess', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '03d2381f-cbe8-4193-8177-fbea49b0da24' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Evaluation'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('03d2381f-cbe8-4193-8177-fbea49b0da24', 'Evaluation', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '03d2381f-cbe8-4193-8177-fbea49b0da24' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Evaluating'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('03d2381f-cbe8-4193-8177-fbea49b0da24', 'Evaluating', false, true);
  END IF;

  -- [VOCABULARY] 除く (Level 31)
  UPDATE item_meanings SET meaning = 'Mengecualikan', primary_meaning = true, accepted_answer = true WHERE id = 'e25d3a59-478b-4393-8065-a574f613ec7a';
  UPDATE items SET slug = 'mengecualikan' WHERE id = '36dd0c4e-2302-4ec9-a243-f7b2a96db26b';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '36dd0c4e-2302-4ec9-a243-f7b2a96db26b' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Menghilangkan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('36dd0c4e-2302-4ec9-a243-f7b2a96db26b', 'Menghilangkan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '36dd0c4e-2302-4ec9-a243-f7b2a96db26b' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Untuk Mengecualikan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('36dd0c4e-2302-4ec9-a243-f7b2a96db26b', 'Untuk Mengecualikan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '36dd0c4e-2302-4ec9-a243-f7b2a96db26b' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Exclude'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('36dd0c4e-2302-4ec9-a243-f7b2a96db26b', 'To Exclude', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '36dd0c4e-2302-4ec9-a243-f7b2a96db26b' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Remove'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('36dd0c4e-2302-4ec9-a243-f7b2a96db26b', 'To Remove', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '36dd0c4e-2302-4ec9-a243-f7b2a96db26b' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Untuk Menghapus'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('36dd0c4e-2302-4ec9-a243-f7b2a96db26b', 'Untuk Menghapus', false, true);
  END IF;

  -- [VOCABULARY] 除外 (Level 31)
  UPDATE item_meanings SET meaning = 'Pengecualian', primary_meaning = true, accepted_answer = true WHERE id = 'f911c1ce-ca95-4c1a-8c73-fc0bf4d23de9';
  UPDATE items SET slug = 'pengecualian' WHERE id = '236393cb-3cc6-4b49-af0d-ccbcd55c5853';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '236393cb-3cc6-4b49-af0d-ccbcd55c5853' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Mengesampingkan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('236393cb-3cc6-4b49-af0d-ccbcd55c5853', 'Mengesampingkan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '236393cb-3cc6-4b49-af0d-ccbcd55c5853' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Exclusion'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('236393cb-3cc6-4b49-af0d-ccbcd55c5853', 'Exclusion', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '236393cb-3cc6-4b49-af0d-ccbcd55c5853' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Exception'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('236393cb-3cc6-4b49-af0d-ccbcd55c5853', 'Exception', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '236393cb-3cc6-4b49-af0d-ccbcd55c5853' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Omit'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('236393cb-3cc6-4b49-af0d-ccbcd55c5853', 'Omit', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '236393cb-3cc6-4b49-af0d-ccbcd55c5853' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Except'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('236393cb-3cc6-4b49-af0d-ccbcd55c5853', 'Except', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '236393cb-3cc6-4b49-af0d-ccbcd55c5853' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Exclude'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('236393cb-3cc6-4b49-af0d-ccbcd55c5853', 'Exclude', false, true);
  END IF;

  -- [VOCABULARY] 離れる (Level 31)
  UPDATE item_meanings SET meaning = 'Menjauh', primary_meaning = true, accepted_answer = true WHERE id = 'cc084428-616d-4c62-9236-9c8f13f68a3f';
  UPDATE items SET slug = 'menjauh' WHERE id = 'ea17428b-ce68-4aac-8cc4-99bda9833cb3';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'ea17428b-ce68-4aac-8cc4-99bda9833cb3' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Terpisah'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('ea17428b-ce68-4aac-8cc4-99bda9833cb3', 'Terpisah', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'ea17428b-ce68-4aac-8cc4-99bda9833cb3' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Menjadi Terpisah'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('ea17428b-ce68-4aac-8cc4-99bda9833cb3', 'Menjadi Terpisah', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'ea17428b-ce68-4aac-8cc4-99bda9833cb3' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Separate From'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('ea17428b-ce68-4aac-8cc4-99bda9833cb3', 'To Separate From', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'ea17428b-ce68-4aac-8cc4-99bda9833cb3' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Move Away'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('ea17428b-ce68-4aac-8cc4-99bda9833cb3', 'To Move Away', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'ea17428b-ce68-4aac-8cc4-99bda9833cb3' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Untuk Memisahkan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('ea17428b-ce68-4aac-8cc4-99bda9833cb3', 'Untuk Memisahkan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'ea17428b-ce68-4aac-8cc4-99bda9833cb3' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Be Far Away From'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('ea17428b-ce68-4aac-8cc4-99bda9833cb3', 'To Be Far Away From', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'ea17428b-ce68-4aac-8cc4-99bda9833cb3' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Be Away'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('ea17428b-ce68-4aac-8cc4-99bda9833cb3', 'To Be Away', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'ea17428b-ce68-4aac-8cc4-99bda9833cb3' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Be Far Away'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('ea17428b-ce68-4aac-8cc4-99bda9833cb3', 'To Be Far Away', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'ea17428b-ce68-4aac-8cc4-99bda9833cb3' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Draw Away From'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('ea17428b-ce68-4aac-8cc4-99bda9833cb3', 'To Draw Away From', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'ea17428b-ce68-4aac-8cc4-99bda9833cb3' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Become Separated'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('ea17428b-ce68-4aac-8cc4-99bda9833cb3', 'To Become Separated', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'ea17428b-ce68-4aac-8cc4-99bda9833cb3' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Separate'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('ea17428b-ce68-4aac-8cc4-99bda9833cb3', 'To Separate', false, true);
  END IF;

  -- [VOCABULARY] 離婚 (Level 31)
  UPDATE item_meanings SET meaning = 'Perceraian', primary_meaning = true, accepted_answer = true WHERE id = '2ae3c23d-f922-4df2-bc3e-d61d07253767';
  UPDATE items SET slug = 'perceraian' WHERE id = '21ad3a43-3a5b-46da-b27b-91f989d52f9f';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '21ad3a43-3a5b-46da-b27b-91f989d52f9f' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Bercerai'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('21ad3a43-3a5b-46da-b27b-91f989d52f9f', 'Bercerai', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '21ad3a43-3a5b-46da-b27b-91f989d52f9f' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Divorce'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('21ad3a43-3a5b-46da-b27b-91f989d52f9f', 'Divorce', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '21ad3a43-3a5b-46da-b27b-91f989d52f9f' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Get Divorced'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('21ad3a43-3a5b-46da-b27b-91f989d52f9f', 'Get Divorced', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '21ad3a43-3a5b-46da-b27b-91f989d52f9f' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Mendapatkan Perceraian'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('21ad3a43-3a5b-46da-b27b-91f989d52f9f', 'Mendapatkan Perceraian', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '21ad3a43-3a5b-46da-b27b-91f989d52f9f' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Getting A Divorce'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('21ad3a43-3a5b-46da-b27b-91f989d52f9f', 'Getting A Divorce', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '21ad3a43-3a5b-46da-b27b-91f989d52f9f' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Get A Divorce'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('21ad3a43-3a5b-46da-b27b-91f989d52f9f', 'Get A Divorce', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '21ad3a43-3a5b-46da-b27b-91f989d52f9f' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Divorcing'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('21ad3a43-3a5b-46da-b27b-91f989d52f9f', 'Divorcing', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '21ad3a43-3a5b-46da-b27b-91f989d52f9f' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Be Divorced'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('21ad3a43-3a5b-46da-b27b-91f989d52f9f', 'Be Divorced', false, true);
  END IF;

  -- [VOCABULARY] 驚く (Level 31)
  UPDATE item_meanings SET meaning = 'Kaget', primary_meaning = true, accepted_answer = true WHERE id = '38607dd7-1ebc-4978-bc05-660a76f2c64c';
  UPDATE items SET slug = 'kaget' WHERE id = '0e1c1756-6bf4-469a-8f96-ab4d0488ed7f';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '0e1c1756-6bf4-469a-8f96-ab4d0488ed7f' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Terkejut'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('0e1c1756-6bf4-469a-8f96-ab4d0488ed7f', 'Terkejut', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '0e1c1756-6bf4-469a-8f96-ab4d0488ed7f' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Be Surprised'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('0e1c1756-6bf4-469a-8f96-ab4d0488ed7f', 'To Be Surprised', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '0e1c1756-6bf4-469a-8f96-ab4d0488ed7f' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Be Shocked'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('0e1c1756-6bf4-469a-8f96-ab4d0488ed7f', 'To Be Shocked', false, true);
  END IF;

  -- [VOCABULARY] 驚嘆 (Level 31)
  UPDATE item_meanings SET meaning = 'Kagum Takjub', primary_meaning = true, accepted_answer = true WHERE id = '9e0e324f-0e27-463e-aeec-03d10878a6c2';
  UPDATE items SET slug = 'kagum-takjub' WHERE id = 'd8b5a5a3-cd61-428b-8243-ba51136e4825';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'd8b5a5a3-cd61-428b-8243-ba51136e4825' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Terpana Heran'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('d8b5a5a3-cd61-428b-8243-ba51136e4825', 'Terpana Heran', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'd8b5a5a3-cd61-428b-8243-ba51136e4825' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Keheranan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('d8b5a5a3-cd61-428b-8243-ba51136e4825', 'Keheranan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'd8b5a5a3-cd61-428b-8243-ba51136e4825' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Wonder'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('d8b5a5a3-cd61-428b-8243-ba51136e4825', 'Wonder', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'd8b5a5a3-cd61-428b-8243-ba51136e4825' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Admiration'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('d8b5a5a3-cd61-428b-8243-ba51136e4825', 'Admiration', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'd8b5a5a3-cd61-428b-8243-ba51136e4825' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Astonishment'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('d8b5a5a3-cd61-428b-8243-ba51136e4825', 'Astonishment', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'd8b5a5a3-cd61-428b-8243-ba51136e4825' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Marvel'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('d8b5a5a3-cd61-428b-8243-ba51136e4825', 'Marvel', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'd8b5a5a3-cd61-428b-8243-ba51136e4825' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Kekaguman'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('d8b5a5a3-cd61-428b-8243-ba51136e4825', 'Kekaguman', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'd8b5a5a3-cd61-428b-8243-ba51136e4825' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Amazement'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('d8b5a5a3-cd61-428b-8243-ba51136e4825', 'Amazement', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'd8b5a5a3-cd61-428b-8243-ba51136e4825' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Being Struck With Wonder'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('d8b5a5a3-cd61-428b-8243-ba51136e4825', 'Being Struck With Wonder', false, true);
  END IF;

END $$;
