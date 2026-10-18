-- Migration: Batch 2 Part 3 (Level 23)
-- Total items: 46

DO $$
BEGIN

  -- [KANJI] 割 (Level 23)
  UPDATE item_meanings SET meaning = 'Membagi', primary_meaning = true, accepted_answer = true WHERE id = 'eb2b8d8c-1678-439b-b897-c5480a1b17dc';
  UPDATE items SET slug = 'membagi' WHERE id = '531883f8-6603-4b14-b7f5-56d678310241';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '531883f8-6603-4b14-b7f5-56d678310241' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Membelah'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('531883f8-6603-4b14-b7f5-56d678310241', 'Membelah', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '531883f8-6603-4b14-b7f5-56d678310241' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Porsi'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('531883f8-6603-4b14-b7f5-56d678310241', 'Porsi', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '531883f8-6603-4b14-b7f5-56d678310241' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Divide'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('531883f8-6603-4b14-b7f5-56d678310241', 'Divide', false, true);
  END IF;

  -- [KANJI] 呼 (Level 23)
  UPDATE item_meanings SET meaning = 'Memanggil', primary_meaning = true, accepted_answer = true WHERE id = 'fb8796b8-dfd9-46cd-ac6e-963368abcb74';
  UPDATE items SET slug = 'memanggil' WHERE id = '293224a8-ee46-4134-ba05-41d676df41bb';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '293224a8-ee46-4134-ba05-41d676df41bb' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Mengundang'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('293224a8-ee46-4134-ba05-41d676df41bb', 'Mengundang', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '293224a8-ee46-4134-ba05-41d676df41bb' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Menyapa'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('293224a8-ee46-4134-ba05-41d676df41bb', 'Menyapa', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '293224a8-ee46-4134-ba05-41d676df41bb' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Call'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('293224a8-ee46-4134-ba05-41d676df41bb', 'Call', false, true);
  END IF;

  -- [KANJI] 張 (Level 23)
  UPDATE item_meanings SET meaning = 'Membentangkan', primary_meaning = true, accepted_answer = true WHERE id = '523e3fb7-3873-4f6d-8b4f-b54a0f68c2a6';
  UPDATE items SET slug = 'membentangkan' WHERE id = 'cb04f3f4-abf9-449c-b547-f4d9e02b6ad3';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'cb04f3f4-abf9-449c-b547-f4d9e02b6ad3' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Meregangkan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('cb04f3f4-abf9-449c-b547-f4d9e02b6ad3', 'Meregangkan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'cb04f3f4-abf9-449c-b547-f4d9e02b6ad3' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Memasang'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('cb04f3f4-abf9-449c-b547-f4d9e02b6ad3', 'Memasang', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'cb04f3f4-abf9-449c-b547-f4d9e02b6ad3' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Stretch'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('cb04f3f4-abf9-449c-b547-f4d9e02b6ad3', 'Stretch', false, true);
  END IF;

  -- [KANJI] 演 (Level 23)
  UPDATE item_meanings SET meaning = 'Melakonkan', primary_meaning = true, accepted_answer = true WHERE id = '4e7af1fd-a400-4030-b083-b975c2741aa0';
  UPDATE items SET slug = 'melakonkan' WHERE id = 'e4b2f3d0-7c8f-4936-baa8-2ef27058d7b8';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'e4b2f3d0-7c8f-4936-baa8-2ef27058d7b8' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Memperagakan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('e4b2f3d0-7c8f-4936-baa8-2ef27058d7b8', 'Memperagakan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'e4b2f3d0-7c8f-4936-baa8-2ef27058d7b8' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Pentas'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('e4b2f3d0-7c8f-4936-baa8-2ef27058d7b8', 'Pentas', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'e4b2f3d0-7c8f-4936-baa8-2ef27058d7b8' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Acting'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('e4b2f3d0-7c8f-4936-baa8-2ef27058d7b8', 'Acting', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'e4b2f3d0-7c8f-4936-baa8-2ef27058d7b8' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Perform'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('e4b2f3d0-7c8f-4936-baa8-2ef27058d7b8', 'Perform', false, true);
  END IF;

  -- [KANJI] 現 (Level 23)
  UPDATE item_meanings SET meaning = 'Masa Kini', primary_meaning = true, accepted_answer = true WHERE id = '903384ee-f0ee-4b52-948e-dcba43dc1952';
  UPDATE items SET slug = 'masa-kini' WHERE id = '12f8cfac-5221-4dd5-affe-82228f923dc1';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '12f8cfac-5221-4dd5-affe-82228f923dc1' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Menampakkan Diri'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('12f8cfac-5221-4dd5-affe-82228f923dc1', 'Menampakkan Diri', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '12f8cfac-5221-4dd5-affe-82228f923dc1' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Muncul'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('12f8cfac-5221-4dd5-affe-82228f923dc1', 'Muncul', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '12f8cfac-5221-4dd5-affe-82228f923dc1' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Sekarang'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('12f8cfac-5221-4dd5-affe-82228f923dc1', 'Sekarang', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '12f8cfac-5221-4dd5-affe-82228f923dc1' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Present Time'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('12f8cfac-5221-4dd5-affe-82228f923dc1', 'Present Time', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '12f8cfac-5221-4dd5-affe-82228f923dc1' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Appear'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('12f8cfac-5221-4dd5-affe-82228f923dc1', 'Appear', false, true);
  END IF;

  -- [KANJI] 看 (Level 23)
  UPDATE item_meanings SET meaning = 'Merawat', primary_meaning = true, accepted_answer = true WHERE id = '68ccee60-2e64-42e3-81a3-9827bdb139b7';
  UPDATE items SET slug = 'merawat' WHERE id = '84245215-b8bf-449d-af52-1ff54d5b4775';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '84245215-b8bf-449d-af52-1ff54d5b4775' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Mengawasi'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('84245215-b8bf-449d-af52-1ff54d5b4775', 'Mengawasi', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '84245215-b8bf-449d-af52-1ff54d5b4775' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Melihat'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('84245215-b8bf-449d-af52-1ff54d5b4775', 'Melihat', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '84245215-b8bf-449d-af52-1ff54d5b4775' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Watch Over'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('84245215-b8bf-449d-af52-1ff54d5b4775', 'Watch Over', false, true);
  END IF;

  -- [KANJI] 突 (Level 23)
  UPDATE item_meanings SET meaning = 'Menusuk', primary_meaning = true, accepted_answer = true WHERE id = '258894a6-d71e-4bbc-beaf-77fd96cf4117';
  UPDATE items SET slug = 'menusuk' WHERE id = 'ef91e4ba-3f8e-4c01-a3fc-4f6fe34963ac';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'ef91e4ba-3f8e-4c01-a3fc-4f6fe34963ac' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Tiba-tiba'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('ef91e4ba-3f8e-4c01-a3fc-4f6fe34963ac', 'Tiba-tiba', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'ef91e4ba-3f8e-4c01-a3fc-4f6fe34963ac' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Menerjang'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('ef91e4ba-3f8e-4c01-a3fc-4f6fe34963ac', 'Menerjang', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'ef91e4ba-3f8e-4c01-a3fc-4f6fe34963ac' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Stab'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('ef91e4ba-3f8e-4c01-a3fc-4f6fe34963ac', 'Stab', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'ef91e4ba-3f8e-4c01-a3fc-4f6fe34963ac' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Sudden'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('ef91e4ba-3f8e-4c01-a3fc-4f6fe34963ac', 'Sudden', false, true);
  END IF;

  -- [KANJI] 裁 (Level 23)
  UPDATE item_meanings SET meaning = 'Mengadili', primary_meaning = true, accepted_answer = true WHERE id = '033628d3-4a70-41f1-a4a4-25a6fed572f6';
  UPDATE items SET slug = 'mengadili' WHERE id = '291eda8d-6551-423c-a289-7220c2ef01a1';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '291eda8d-6551-423c-a289-7220c2ef01a1' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Menilai'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('291eda8d-6551-423c-a289-7220c2ef01a1', 'Menilai', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '291eda8d-6551-423c-a289-7220c2ef01a1' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Memotong'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('291eda8d-6551-423c-a289-7220c2ef01a1', 'Memotong', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '291eda8d-6551-423c-a289-7220c2ef01a1' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Judge'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('291eda8d-6551-423c-a289-7220c2ef01a1', 'Judge', false, true);
  END IF;

  -- [KANJI] 鬼 (Level 23)
  UPDATE item_meanings SET meaning = 'Oni', primary_meaning = true, accepted_answer = true WHERE id = '35256484-7bc8-4815-8b2c-b708d7f9c3d8';
  UPDATE items SET slug = 'oni' WHERE id = 'a2c0f8f9-bcd9-4512-a597-648b689b0c1c';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'a2c0f8f9-bcd9-4512-a597-648b689b0c1c' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Iblis'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('a2c0f8f9-bcd9-4512-a597-648b689b0c1c', 'Iblis', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'a2c0f8f9-bcd9-4512-a597-648b689b0c1c' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Iblis Jepang'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('a2c0f8f9-bcd9-4512-a597-648b689b0c1c', 'Iblis Jepang', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'a2c0f8f9-bcd9-4512-a597-648b689b0c1c' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Demon'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('a2c0f8f9-bcd9-4512-a597-648b689b0c1c', 'Demon', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'a2c0f8f9-bcd9-4512-a597-648b689b0c1c' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Ogre'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('a2c0f8f9-bcd9-4512-a597-648b689b0c1c', 'Ogre', false, true);
  END IF;

  -- [RADICAL] 交 (Level 23)
  UPDATE item_meanings SET meaning = 'Campur', primary_meaning = true, accepted_answer = true WHERE id = '0f447723-25e6-4112-b7c6-c8505675388a';
  UPDATE items SET slug = 'campur' WHERE id = 'd64b0e6a-9dd0-449f-912d-d68ead2336a0';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'd64b0e6a-9dd0-449f-912d-d68ead2336a0' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Persimpangan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('d64b0e6a-9dd0-449f-912d-d68ead2336a0', 'Persimpangan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'd64b0e6a-9dd0-449f-912d-d68ead2336a0' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Mix'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('d64b0e6a-9dd0-449f-912d-d68ead2336a0', 'Mix', false, true);
  END IF;

  -- [RADICAL] 鬼 (Level 23)
  UPDATE item_meanings SET meaning = 'Oni', primary_meaning = true, accepted_answer = true WHERE id = 'b61bb7b6-9508-4988-b91d-1610efd54d5c';
  UPDATE items SET slug = 'oni' WHERE id = '0323f81a-6dbd-41a2-a413-be38490e7d28';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '0323f81a-6dbd-41a2-a413-be38490e7d28' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Iblis'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('0323f81a-6dbd-41a2-a413-be38490e7d28', 'Iblis', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '0323f81a-6dbd-41a2-a413-be38490e7d28' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Iblis Jepang'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('0323f81a-6dbd-41a2-a413-be38490e7d28', 'Iblis Jepang', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '0323f81a-6dbd-41a2-a413-be38490e7d28' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Demon'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('0323f81a-6dbd-41a2-a413-be38490e7d28', 'Demon', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '0323f81a-6dbd-41a2-a413-be38490e7d28' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Ogre'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('0323f81a-6dbd-41a2-a413-be38490e7d28', 'Ogre', false, true);
  END IF;

  -- [VOCABULARY] 〜宅 (Level 23)
  UPDATE item_meanings SET meaning = 'Kediaman', primary_meaning = true, accepted_answer = true WHERE id = '64b21e24-7e54-448b-bc4e-921671e9207d';
  UPDATE items SET slug = 'kediaman' WHERE id = '21e67e74-30ed-45c8-a212-9304f13a9947';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '21e67e74-30ed-45c8-a212-9304f13a9947' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Rumah'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('21e67e74-30ed-45c8-a212-9304f13a9947', 'Rumah', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '21e67e74-30ed-45c8-a212-9304f13a9947' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Rumah Tinggal'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('21e67e74-30ed-45c8-a212-9304f13a9947', 'Rumah Tinggal', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '21e67e74-30ed-45c8-a212-9304f13a9947' AND LOWER(TRIM(meaning)) = LOWER(TRIM('House'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('21e67e74-30ed-45c8-a212-9304f13a9947', 'House', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '21e67e74-30ed-45c8-a212-9304f13a9947' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Home'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('21e67e74-30ed-45c8-a212-9304f13a9947', 'Home', false, true);
  END IF;

  -- [VOCABULARY] 作用 (Level 23)
  UPDATE item_meanings SET meaning = 'Efek', primary_meaning = true, accepted_answer = true WHERE id = '8cd58915-600f-427d-bd56-1f4d4b574cf3';
  UPDATE items SET slug = 'efek' WHERE id = '118cbec1-14b6-4993-8764-2f52b683f7a9';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '118cbec1-14b6-4993-8764-2f52b683f7a9' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Cara Kerja'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('118cbec1-14b6-4993-8764-2f52b683f7a9', 'Cara Kerja', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '118cbec1-14b6-4993-8764-2f52b683f7a9' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Reaksi'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('118cbec1-14b6-4993-8764-2f52b683f7a9', 'Reaksi', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '118cbec1-14b6-4993-8764-2f52b683f7a9' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Pengaruh'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('118cbec1-14b6-4993-8764-2f52b683f7a9', 'Pengaruh', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '118cbec1-14b6-4993-8764-2f52b683f7a9' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Action'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('118cbec1-14b6-4993-8764-2f52b683f7a9', 'Action', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '118cbec1-14b6-4993-8764-2f52b683f7a9' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Operation'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('118cbec1-14b6-4993-8764-2f52b683f7a9', 'Operation', false, true);
  END IF;

  -- [VOCABULARY] 保護する (Level 23)
  UPDATE item_meanings SET meaning = 'Melindungi', primary_meaning = true, accepted_answer = true WHERE id = 'd6988bc3-709d-4700-aa10-505f32767a61';
  UPDATE items SET slug = 'melindungi' WHERE id = '3111b922-c0b3-46cd-abea-00fcc46b8977';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '3111b922-c0b3-46cd-abea-00fcc46b8977' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Melestarikan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('3111b922-c0b3-46cd-abea-00fcc46b8977', 'Melestarikan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '3111b922-c0b3-46cd-abea-00fcc46b8977' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Menjaga'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('3111b922-c0b3-46cd-abea-00fcc46b8977', 'Menjaga', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '3111b922-c0b3-46cd-abea-00fcc46b8977' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Conserve'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('3111b922-c0b3-46cd-abea-00fcc46b8977', 'To Conserve', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '3111b922-c0b3-46cd-abea-00fcc46b8977' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Protect'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('3111b922-c0b3-46cd-abea-00fcc46b8977', 'To Protect', false, true);
  END IF;

  -- [VOCABULARY] 公社 (Level 23)
  UPDATE item_meanings SET meaning = 'Perum', primary_meaning = true, accepted_answer = true WHERE id = '7fec001a-ea89-42dd-a313-3cba85970767';
  UPDATE items SET slug = 'perum' WHERE id = '03aa0998-ec97-429f-b7a1-1d42b3216a68';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '03aa0998-ec97-429f-b7a1-1d42b3216a68' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Badan Usaha Publik'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('03aa0998-ec97-429f-b7a1-1d42b3216a68', 'Badan Usaha Publik', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '03aa0998-ec97-429f-b7a1-1d42b3216a68' AND LOWER(TRIM(meaning)) = LOWER(TRIM('BUMN'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('03aa0998-ec97-429f-b7a1-1d42b3216a68', 'BUMN', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '03aa0998-ec97-429f-b7a1-1d42b3216a68' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Perusahaan Negara'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('03aa0998-ec97-429f-b7a1-1d42b3216a68', 'Perusahaan Negara', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '03aa0998-ec97-429f-b7a1-1d42b3216a68' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Government-Run Company'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('03aa0998-ec97-429f-b7a1-1d42b3216a68', 'Government-Run Company', false, true);
  END IF;

  -- [VOCABULARY] 割る (Level 23)
  UPDATE item_meanings SET meaning = 'Membelah', primary_meaning = true, accepted_answer = true WHERE id = '91a83c96-8e5b-41e1-809e-5de1af5dc649';
  UPDATE items SET slug = 'membelah' WHERE id = '0601059c-c55e-4462-b020-9544ff2359b7';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '0601059c-c55e-4462-b020-9544ff2359b7' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Memecahkan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('0601059c-c55e-4462-b020-9544ff2359b7', 'Memecahkan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '0601059c-c55e-4462-b020-9544ff2359b7' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Membagi'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('0601059c-c55e-4462-b020-9544ff2359b7', 'Membagi', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '0601059c-c55e-4462-b020-9544ff2359b7' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Divide'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('0601059c-c55e-4462-b020-9544ff2359b7', 'To Divide', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '0601059c-c55e-4462-b020-9544ff2359b7' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Split'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('0601059c-c55e-4462-b020-9544ff2359b7', 'To Split', false, true);
  END IF;

  -- [VOCABULARY] 加わる (Level 23)
  UPDATE item_meanings SET meaning = 'Bertambah', primary_meaning = true, accepted_answer = true WHERE id = 'a768de55-e38d-4c39-bd48-e7c479b76f74';
  UPDATE items SET slug = 'bertambah' WHERE id = 'a3c47cc9-6631-4f20-ab5f-0241037e2793';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'a3c47cc9-6631-4f20-ab5f-0241037e2793' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Ikut Bergabung'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('a3c47cc9-6631-4f20-ab5f-0241037e2793', 'Ikut Bergabung', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'a3c47cc9-6631-4f20-ab5f-0241037e2793' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Masuk'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('a3c47cc9-6631-4f20-ab5f-0241037e2793', 'Masuk', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'a3c47cc9-6631-4f20-ab5f-0241037e2793' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Be Added To'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('a3c47cc9-6631-4f20-ab5f-0241037e2793', 'To Be Added To', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'a3c47cc9-6631-4f20-ab5f-0241037e2793' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Join In'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('a3c47cc9-6631-4f20-ab5f-0241037e2793', 'To Join In', false, true);
  END IF;

  -- [VOCABULARY] 効果 (Level 23)
  UPDATE item_meanings SET meaning = 'Khasiat', primary_meaning = true, accepted_answer = true WHERE id = '88dfa7e1-aea0-43ba-8ac7-fd6985b51579';
  UPDATE items SET slug = 'khasiat' WHERE id = '8bac5938-60e9-46fa-90b8-ed1c1a9298c6';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '8bac5938-60e9-46fa-90b8-ed1c1a9298c6' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Efek'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('8bac5938-60e9-46fa-90b8-ed1c1a9298c6', 'Efek', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '8bac5938-60e9-46fa-90b8-ed1c1a9298c6' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Hasil'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('8bac5938-60e9-46fa-90b8-ed1c1a9298c6', 'Hasil', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '8bac5938-60e9-46fa-90b8-ed1c1a9298c6' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Dampak'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('8bac5938-60e9-46fa-90b8-ed1c1a9298c6', 'Dampak', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '8bac5938-60e9-46fa-90b8-ed1c1a9298c6' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Effect'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('8bac5938-60e9-46fa-90b8-ed1c1a9298c6', 'Effect', false, true);
  END IF;

  -- [VOCABULARY] 反則 (Level 23)
  UPDATE item_meanings SET meaning = 'Pelanggaran', primary_meaning = true, accepted_answer = true WHERE id = 'b8eccb83-d6c6-403a-a685-fbb66561498c';
  UPDATE items SET slug = 'pelanggaran' WHERE id = '09331f7b-b0ec-40ba-aa94-b673a4d47ab0';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '09331f7b-b0ec-40ba-aa94-b673a4d47ab0' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Kecurangan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('09331f7b-b0ec-40ba-aa94-b673a4d47ab0', 'Kecurangan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '09331f7b-b0ec-40ba-aa94-b673a4d47ab0' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Foul'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('09331f7b-b0ec-40ba-aa94-b673a4d47ab0', 'Foul', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '09331f7b-b0ec-40ba-aa94-b673a4d47ab0' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Violation'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('09331f7b-b0ec-40ba-aa94-b673a4d47ab0', 'Violation', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '09331f7b-b0ec-40ba-aa94-b673a4d47ab0' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Pelanggaran (Aturan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('09331f7b-b0ec-40ba-aa94-b673a4d47ab0', 'Pelanggaran (Aturan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '09331f7b-b0ec-40ba-aa94-b673a4d47ab0' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Olahraga)'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('09331f7b-b0ec-40ba-aa94-b673a4d47ab0', 'Olahraga)', false, true);
  END IF;

  -- [VOCABULARY] 収まる (Level 23)
  UPDATE item_meanings SET meaning = 'Masuk Pas', primary_meaning = true, accepted_answer = true WHERE id = 'c5081774-256b-48ac-b9e8-5f17ca75dcbb';
  UPDATE items SET slug = 'masuk-pas' WHERE id = '71223e81-2be0-49be-a954-84918cd39aff';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '71223e81-2be0-49be-a954-84918cd39aff' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Muat'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('71223e81-2be0-49be-a954-84918cd39aff', 'Muat', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '71223e81-2be0-49be-a954-84918cd39aff' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Mereda'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('71223e81-2be0-49be-a954-84918cd39aff', 'Mereda', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '71223e81-2be0-49be-a954-84918cd39aff' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Tersimpan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('71223e81-2be0-49be-a954-84918cd39aff', 'Tersimpan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '71223e81-2be0-49be-a954-84918cd39aff' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Fit Inside'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('71223e81-2be0-49be-a954-84918cd39aff', 'To Fit Inside', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '71223e81-2be0-49be-a954-84918cd39aff' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Settle Down'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('71223e81-2be0-49be-a954-84918cd39aff', 'To Settle Down', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '71223e81-2be0-49be-a954-84918cd39aff' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Pas'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('71223e81-2be0-49be-a954-84918cd39aff', 'Pas', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '71223e81-2be0-49be-a954-84918cd39aff' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Masuk Muat'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('71223e81-2be0-49be-a954-84918cd39aff', 'Masuk Muat', false, true);
  END IF;

  -- [VOCABULARY] 台詞 (Level 23)
  UPDATE item_meanings SET meaning = 'Dialog', primary_meaning = true, accepted_answer = true WHERE id = '454bf269-e140-4612-8ad1-ad2830dcc3c5';
  UPDATE items SET slug = 'dialog' WHERE id = '8f8b2b55-bc8f-44b1-b170-da3a5c221294';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '8f8b2b55-bc8f-44b1-b170-da3a5c221294' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Naskah Dialog'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('8f8b2b55-bc8f-44b1-b170-da3a5c221294', 'Naskah Dialog', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '8f8b2b55-bc8f-44b1-b170-da3a5c221294' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Kalimat'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('8f8b2b55-bc8f-44b1-b170-da3a5c221294', 'Kalimat', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '8f8b2b55-bc8f-44b1-b170-da3a5c221294' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Lines'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('8f8b2b55-bc8f-44b1-b170-da3a5c221294', 'Lines', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '8f8b2b55-bc8f-44b1-b170-da3a5c221294' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Remarks'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('8f8b2b55-bc8f-44b1-b170-da3a5c221294', 'Remarks', false, true);
  END IF;

  -- [VOCABULARY] 叶える (Level 23)
  UPDATE item_meanings SET meaning = 'Mengabulkan', primary_meaning = true, accepted_answer = true WHERE id = 'f96b2096-538e-46b6-88cc-5b62e9bec8f8';
  UPDATE items SET slug = 'mengabulkan' WHERE id = 'cc9b4b4d-c8a5-4a39-b7dd-8853a435c64d';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'cc9b4b4d-c8a5-4a39-b7dd-8853a435c64d' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Mewujudkan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('cc9b4b4d-c8a5-4a39-b7dd-8853a435c64d', 'Mewujudkan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'cc9b4b4d-c8a5-4a39-b7dd-8853a435c64d' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Memenuhi'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('cc9b4b4d-c8a5-4a39-b7dd-8853a435c64d', 'Memenuhi', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'cc9b4b4d-c8a5-4a39-b7dd-8853a435c64d' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Grant'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('cc9b4b4d-c8a5-4a39-b7dd-8853a435c64d', 'To Grant', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'cc9b4b4d-c8a5-4a39-b7dd-8853a435c64d' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Fulfill'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('cc9b4b4d-c8a5-4a39-b7dd-8853a435c64d', 'To Fulfill', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'cc9b4b4d-c8a5-4a39-b7dd-8853a435c64d' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Mengabulkan (Harapan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('cc9b4b4d-c8a5-4a39-b7dd-8853a435c64d', 'Mengabulkan (Harapan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'cc9b4b4d-c8a5-4a39-b7dd-8853a435c64d' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Doa)'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('cc9b4b4d-c8a5-4a39-b7dd-8853a435c64d', 'Doa)', false, true);
  END IF;

  -- [VOCABULARY] 吸血鬼 (Level 23)
  UPDATE item_meanings SET meaning = 'Vampir', primary_meaning = true, accepted_answer = true WHERE id = 'd6e506fc-5c3c-4d46-91a0-21415fa0df98';
  UPDATE items SET slug = 'vampir' WHERE id = 'ee8a06a0-8c36-477a-90be-5a37a8467ea5';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'ee8a06a0-8c36-477a-90be-5a37a8467ea5' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Drakula'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('ee8a06a0-8c36-477a-90be-5a37a8467ea5', 'Drakula', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'ee8a06a0-8c36-477a-90be-5a37a8467ea5' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Penghisap Darah'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('ee8a06a0-8c36-477a-90be-5a37a8467ea5', 'Penghisap Darah', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'ee8a06a0-8c36-477a-90be-5a37a8467ea5' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Vampire'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('ee8a06a0-8c36-477a-90be-5a37a8467ea5', 'Vampire', false, true);
  END IF;

  -- [VOCABULARY] 呼ぶ (Level 23)
  UPDATE item_meanings SET meaning = 'Memanggil', primary_meaning = true, accepted_answer = true WHERE id = '5673aa9f-3f88-4e3d-bbe8-626e2986a70a';
  UPDATE items SET slug = 'memanggil' WHERE id = '3fb74e40-4712-49e5-9e87-fd89c12cfec1';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '3fb74e40-4712-49e5-9e87-fd89c12cfec1' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Mengundang'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('3fb74e40-4712-49e5-9e87-fd89c12cfec1', 'Mengundang', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '3fb74e40-4712-49e5-9e87-fd89c12cfec1' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Call'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('3fb74e40-4712-49e5-9e87-fd89c12cfec1', 'To Call', false, true);
  END IF;

  -- [VOCABULARY] 埋まる (Level 23)
  UPDATE item_meanings SET meaning = 'Terkubur', primary_meaning = true, accepted_answer = true WHERE id = '5b202f2a-f31c-4c18-828c-3a3504b44346';
  UPDATE items SET slug = 'terkubur' WHERE id = '70d4ec94-c8d4-4149-8ced-0869d2a3358b';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '70d4ec94-c8d4-4149-8ced-0869d2a3358b' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Tertimbun'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('70d4ec94-c8d4-4149-8ced-0869d2a3358b', 'Tertimbun', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '70d4ec94-c8d4-4149-8ced-0869d2a3358b' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Terisi'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('70d4ec94-c8d4-4149-8ced-0869d2a3358b', 'Terisi', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '70d4ec94-c8d4-4149-8ced-0869d2a3358b' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Penuh'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('70d4ec94-c8d4-4149-8ced-0869d2a3358b', 'Penuh', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '70d4ec94-c8d4-4149-8ced-0869d2a3358b' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Be Buried'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('70d4ec94-c8d4-4149-8ced-0869d2a3358b', 'To Be Buried', false, true);
  END IF;

  -- [VOCABULARY] 増やす (Level 23)
  UPDATE item_meanings SET meaning = 'Menambah', primary_meaning = true, accepted_answer = true WHERE id = 'cfaf48ad-888d-43e2-a8c6-61fecd271eeb';
  UPDATE items SET slug = 'menambah' WHERE id = 'ff13e691-b3f6-47d3-aa1a-8f3fa9b489ef';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'ff13e691-b3f6-47d3-aa1a-8f3fa9b489ef' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Memperbanyak'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('ff13e691-b3f6-47d3-aa1a-8f3fa9b489ef', 'Memperbanyak', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'ff13e691-b3f6-47d3-aa1a-8f3fa9b489ef' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Meningkatkan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('ff13e691-b3f6-47d3-aa1a-8f3fa9b489ef', 'Meningkatkan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'ff13e691-b3f6-47d3-aa1a-8f3fa9b489ef' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Increase'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('ff13e691-b3f6-47d3-aa1a-8f3fa9b489ef', 'To Increase', false, true);
  END IF;

  -- [VOCABULARY] 導く (Level 23)
  UPDATE item_meanings SET meaning = 'Membimbing', primary_meaning = true, accepted_answer = true WHERE id = '73a989ef-379d-40ff-8aeb-9f8cccc931d3';
  UPDATE items SET slug = 'membimbing' WHERE id = '66b3d006-8298-47ea-853c-6c4c6dbc8da9';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '66b3d006-8298-47ea-853c-6c4c6dbc8da9' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Menuntun'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('66b3d006-8298-47ea-853c-6c4c6dbc8da9', 'Menuntun', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '66b3d006-8298-47ea-853c-6c4c6dbc8da9' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Mengarahkan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('66b3d006-8298-47ea-853c-6c4c6dbc8da9', 'Mengarahkan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '66b3d006-8298-47ea-853c-6c4c6dbc8da9' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Lead'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('66b3d006-8298-47ea-853c-6c4c6dbc8da9', 'To Lead', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '66b3d006-8298-47ea-853c-6c4c6dbc8da9' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Guide'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('66b3d006-8298-47ea-853c-6c4c6dbc8da9', 'To Guide', false, true);
  END IF;

  -- [VOCABULARY] 張る (Level 23)
  UPDATE item_meanings SET meaning = 'Membentangkan', primary_meaning = true, accepted_answer = true WHERE id = '61d2ffe0-4651-4126-8880-8f016e3e577b';
  UPDATE items SET slug = 'membentangkan' WHERE id = 'a805cfc2-0f96-4c1b-8c9e-1ef083844037';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'a805cfc2-0f96-4c1b-8c9e-1ef083844037' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Memasang'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('a805cfc2-0f96-4c1b-8c9e-1ef083844037', 'Memasang', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'a805cfc2-0f96-4c1b-8c9e-1ef083844037' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Meregangkan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('a805cfc2-0f96-4c1b-8c9e-1ef083844037', 'Meregangkan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'a805cfc2-0f96-4c1b-8c9e-1ef083844037' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Stretch'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('a805cfc2-0f96-4c1b-8c9e-1ef083844037', 'To Stretch', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'a805cfc2-0f96-4c1b-8c9e-1ef083844037' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Spread'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('a805cfc2-0f96-4c1b-8c9e-1ef083844037', 'To Spread', false, true);
  END IF;

  -- [VOCABULARY] 心得る (Level 23)
  UPDATE item_meanings SET meaning = 'Memahami', primary_meaning = true, accepted_answer = true WHERE id = 'ef1ca9df-0275-407f-8260-e58e38c8f569';
  UPDATE items SET slug = 'memahami' WHERE id = 'f2df23f8-ddf9-4d02-975b-e30537cb578f';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'f2df23f8-ddf9-4d02-975b-e30537cb578f' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Menginsafi'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('f2df23f8-ddf9-4d02-975b-e30537cb578f', 'Menginsafi', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'f2df23f8-ddf9-4d02-975b-e30537cb578f' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Menyadari'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('f2df23f8-ddf9-4d02-975b-e30537cb578f', 'Menyadari', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'f2df23f8-ddf9-4d02-975b-e30537cb578f' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Know'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('f2df23f8-ddf9-4d02-975b-e30537cb578f', 'To Know', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'f2df23f8-ddf9-4d02-975b-e30537cb578f' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Understand'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('f2df23f8-ddf9-4d02-975b-e30537cb578f', 'To Understand', false, true);
  END IF;

  -- [VOCABULARY] 挙げる (Level 23)
  UPDATE item_meanings SET meaning = 'Mengangkat', primary_meaning = true, accepted_answer = true WHERE id = '5b7a62dd-fd43-4662-a89f-1c606218c331';
  UPDATE items SET slug = 'mengangkat' WHERE id = '3e678406-4c11-4916-baa4-45648d9c9ac0';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '3e678406-4c11-4916-baa4-45648d9c9ac0' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Memberi Contoh'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('3e678406-4c11-4916-baa4-45648d9c9ac0', 'Memberi Contoh', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '3e678406-4c11-4916-baa4-45648d9c9ac0' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Menyebutkan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('3e678406-4c11-4916-baa4-45648d9c9ac0', 'Menyebutkan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '3e678406-4c11-4916-baa4-45648d9c9ac0' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Raise'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('3e678406-4c11-4916-baa4-45648d9c9ac0', 'To Raise', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '3e678406-4c11-4916-baa4-45648d9c9ac0' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Cite'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('3e678406-4c11-4916-baa4-45648d9c9ac0', 'To Cite', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '3e678406-4c11-4916-baa4-45648d9c9ac0' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Memberi'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('3e678406-4c11-4916-baa4-45648d9c9ac0', 'Memberi', false, true);
  END IF;

  -- [VOCABULARY] 断つ (Level 23)
  UPDATE item_meanings SET meaning = 'Memutus', primary_meaning = true, accepted_answer = true WHERE id = 'd51948e8-a389-4cbf-8633-1c50a7940bc5';
  UPDATE items SET slug = 'memutus' WHERE id = '513e0706-5903-4e1a-b038-a49c09c890a2';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '513e0706-5903-4e1a-b038-a49c09c890a2' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Menghentikan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('513e0706-5903-4e1a-b038-a49c09c890a2', 'Menghentikan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '513e0706-5903-4e1a-b038-a49c09c890a2' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Menyudahi'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('513e0706-5903-4e1a-b038-a49c09c890a2', 'Menyudahi', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '513e0706-5903-4e1a-b038-a49c09c890a2' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Cut Off'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('513e0706-5903-4e1a-b038-a49c09c890a2', 'To Cut Off', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '513e0706-5903-4e1a-b038-a49c09c890a2' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Quit'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('513e0706-5903-4e1a-b038-a49c09c890a2', 'To Quit', false, true);
  END IF;

  -- [VOCABULARY] 有職 (Level 23)
  UPDATE item_meanings SET meaning = 'Bekerja', primary_meaning = true, accepted_answer = true WHERE id = '146fa216-ea72-45ea-86ab-58e6de0c97fc';
  UPDATE items SET slug = 'bekerja' WHERE id = '02b16417-19be-4250-8f80-1356720bf2c3';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '02b16417-19be-4250-8f80-1356720bf2c3' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Berpenghasilan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('02b16417-19be-4250-8f80-1356720bf2c3', 'Berpenghasilan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '02b16417-19be-4250-8f80-1356720bf2c3' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Memiliki Pekerjaan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('02b16417-19be-4250-8f80-1356720bf2c3', 'Memiliki Pekerjaan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '02b16417-19be-4250-8f80-1356720bf2c3' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Employed'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('02b16417-19be-4250-8f80-1356720bf2c3', 'Employed', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '02b16417-19be-4250-8f80-1356720bf2c3' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Having A Job'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('02b16417-19be-4250-8f80-1356720bf2c3', 'Having A Job', false, true);
  END IF;

  -- [VOCABULARY] 法則 (Level 23)
  UPDATE item_meanings SET meaning = 'Hukum Alam', primary_meaning = true, accepted_answer = true WHERE id = '648f9cf1-b8ad-4b34-b09f-1bcd7d81f5cd';
  UPDATE items SET slug = 'hukum-alam' WHERE id = '84d56ff4-59c5-4293-8845-0ce5daf29b7b';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '84d56ff4-59c5-4293-8845-0ce5daf29b7b' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Kaidah'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('84d56ff4-59c5-4293-8845-0ce5daf29b7b', 'Kaidah', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '84d56ff4-59c5-4293-8845-0ce5daf29b7b' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Prinsip'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('84d56ff4-59c5-4293-8845-0ce5daf29b7b', 'Prinsip', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '84d56ff4-59c5-4293-8845-0ce5daf29b7b' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Physical Law'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('84d56ff4-59c5-4293-8845-0ce5daf29b7b', 'Physical Law', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '84d56ff4-59c5-4293-8845-0ce5daf29b7b' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Law'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('84d56ff4-59c5-4293-8845-0ce5daf29b7b', 'Law', false, true);
  END IF;

  -- [VOCABULARY] 混じる (Level 23)
  UPDATE item_meanings SET meaning = 'Bercampur', primary_meaning = true, accepted_answer = true WHERE id = '46ea6ff4-d30e-4fb6-9f48-03fa6546d025';
  UPDATE items SET slug = 'bercampur' WHERE id = '70ec55ad-f397-4c20-aa2b-4a7bf45a9e3c';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '70ec55ad-f397-4c20-aa2b-4a7bf45a9e3c' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Terbaur'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('70ec55ad-f397-4c20-aa2b-4a7bf45a9e3c', 'Terbaur', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '70ec55ad-f397-4c20-aa2b-4a7bf45a9e3c' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Tercampur'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('70ec55ad-f397-4c20-aa2b-4a7bf45a9e3c', 'Tercampur', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '70ec55ad-f397-4c20-aa2b-4a7bf45a9e3c' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Be Mixed In'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('70ec55ad-f397-4c20-aa2b-4a7bf45a9e3c', 'To Be Mixed In', false, true);
  END IF;

  -- [VOCABULARY] 済む (Level 23)
  UPDATE item_meanings SET meaning = 'Selesai', primary_meaning = true, accepted_answer = true WHERE id = 'aeb05067-9374-4c47-bb18-a0877032273f';
  UPDATE items SET slug = 'selesai' WHERE id = '366973ab-88fb-4a0e-a83b-e111a55b3481';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '366973ab-88fb-4a0e-a83b-e111a55b3481' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Beres'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('366973ab-88fb-4a0e-a83b-e111a55b3481', 'Beres', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '366973ab-88fb-4a0e-a83b-e111a55b3481' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Tuntas'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('366973ab-88fb-4a0e-a83b-e111a55b3481', 'Tuntas', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '366973ab-88fb-4a0e-a83b-e111a55b3481' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Be Finished'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('366973ab-88fb-4a0e-a83b-e111a55b3481', 'To Be Finished', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '366973ab-88fb-4a0e-a83b-e111a55b3481' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Be Done'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('366973ab-88fb-4a0e-a83b-e111a55b3481', 'To Be Done', false, true);
  END IF;

  -- [VOCABULARY] 演ずる (Level 23)
  UPDATE item_meanings SET meaning = 'Memerankan', primary_meaning = true, accepted_answer = true WHERE id = '5ec8e1c6-8129-4cd5-9ae1-efac10e3ba3a';
  UPDATE items SET slug = 'memerankan' WHERE id = '1505e7f5-8c4b-4bea-8832-85098c0c5eb4';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '1505e7f5-8c4b-4bea-8832-85098c0c5eb4' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Melakonkan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('1505e7f5-8c4b-4bea-8832-85098c0c5eb4', 'Melakonkan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '1505e7f5-8c4b-4bea-8832-85098c0c5eb4' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Mementaskan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('1505e7f5-8c4b-4bea-8832-85098c0c5eb4', 'Mementaskan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '1505e7f5-8c4b-4bea-8832-85098c0c5eb4' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Perform'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('1505e7f5-8c4b-4bea-8832-85098c0c5eb4', 'To Perform', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '1505e7f5-8c4b-4bea-8832-85098c0c5eb4' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Play'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('1505e7f5-8c4b-4bea-8832-85098c0c5eb4', 'To Play', false, true);
  END IF;

  -- [VOCABULARY] 現在 (Level 23)
  UPDATE item_meanings SET meaning = 'Masa Kini', primary_meaning = true, accepted_answer = true WHERE id = '99b0982a-6b3c-43a4-9cef-a1fa5fbbb4d2';
  UPDATE items SET slug = 'masa-kini' WHERE id = '4c666ee4-901e-4c4f-8e75-ac7360b8403f';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '4c666ee4-901e-4c4f-8e75-ac7360b8403f' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Sekarang'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('4c666ee4-901e-4c4f-8e75-ac7360b8403f', 'Sekarang', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '4c666ee4-901e-4c4f-8e75-ac7360b8403f' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Saat Ini'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('4c666ee4-901e-4c4f-8e75-ac7360b8403f', 'Saat Ini', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '4c666ee4-901e-4c4f-8e75-ac7360b8403f' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Present'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('4c666ee4-901e-4c4f-8e75-ac7360b8403f', 'Present', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '4c666ee4-901e-4c4f-8e75-ac7360b8403f' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Current'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('4c666ee4-901e-4c4f-8e75-ac7360b8403f', 'Current', false, true);
  END IF;

  -- [VOCABULARY] 現場 (Level 23)
  UPDATE item_meanings SET meaning = 'Lokasi Kejadian', primary_meaning = true, accepted_answer = true WHERE id = '92948a76-2fdd-4a2d-b0e8-a768218d58b3';
  UPDATE items SET slug = 'lokasi-kejadian' WHERE id = 'b14b9791-0560-441b-b923-b0900117084c';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'b14b9791-0560-441b-b923-b0900117084c' AND LOWER(TRIM(meaning)) = LOWER(TRIM('TKP'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('b14b9791-0560-441b-b923-b0900117084c', 'TKP', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'b14b9791-0560-441b-b923-b0900117084c' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Lokasi Proyek'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('b14b9791-0560-441b-b923-b0900117084c', 'Lokasi Proyek', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'b14b9791-0560-441b-b923-b0900117084c' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Tempat Kerja'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('b14b9791-0560-441b-b923-b0900117084c', 'Tempat Kerja', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'b14b9791-0560-441b-b923-b0900117084c' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Scene'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('b14b9791-0560-441b-b923-b0900117084c', 'Scene', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'b14b9791-0560-441b-b923-b0900117084c' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Workplace'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('b14b9791-0560-441b-b923-b0900117084c', 'Workplace', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'b14b9791-0560-441b-b923-b0900117084c' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Tempat Kejadian'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('b14b9791-0560-441b-b923-b0900117084c', 'Tempat Kejadian', false, true);
  END IF;

  -- [VOCABULARY] 町外れ (Level 23)
  UPDATE item_meanings SET meaning = 'Pinggiran Kota', primary_meaning = true, accepted_answer = true WHERE id = '96cf306c-15a5-48ef-a0b0-6507bea5eede';
  UPDATE items SET slug = 'pinggiran-kota' WHERE id = '73efb26e-55ae-4b73-8ca0-457b44b4ace8';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '73efb26e-55ae-4b73-8ca0-457b44b4ace8' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Ujung Kota'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('73efb26e-55ae-4b73-8ca0-457b44b4ace8', 'Ujung Kota', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '73efb26e-55ae-4b73-8ca0-457b44b4ace8' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Pinggiran'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('73efb26e-55ae-4b73-8ca0-457b44b4ace8', 'Pinggiran', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '73efb26e-55ae-4b73-8ca0-457b44b4ace8' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Outskirts'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('73efb26e-55ae-4b73-8ca0-457b44b4ace8', 'Outskirts', false, true);
  END IF;

  -- [VOCABULARY] 皮革 (Level 23)
  UPDATE item_meanings SET meaning = 'Kulit Olahan', primary_meaning = true, accepted_answer = true WHERE id = '29ad75a8-d90c-448e-868c-50dd6d15fe7c';
  UPDATE items SET slug = 'kulit-olahan' WHERE id = 'cade81c0-f426-4a33-a881-47770a71f470';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'cade81c0-f426-4a33-a881-47770a71f470' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Kulit Samakan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('cade81c0-f426-4a33-a881-47770a71f470', 'Kulit Samakan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'cade81c0-f426-4a33-a881-47770a71f470' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Kulit'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('cade81c0-f426-4a33-a881-47770a71f470', 'Kulit', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'cade81c0-f426-4a33-a881-47770a71f470' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Leather'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('cade81c0-f426-4a33-a881-47770a71f470', 'Leather', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'cade81c0-f426-4a33-a881-47770a71f470' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Hides'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('cade81c0-f426-4a33-a881-47770a71f470', 'Hides', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'cade81c0-f426-4a33-a881-47770a71f470' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Olahan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('cade81c0-f426-4a33-a881-47770a71f470', 'Olahan', false, true);
  END IF;

  -- [VOCABULARY] 秀でる (Level 23)
  UPDATE item_meanings SET meaning = 'Unggul', primary_meaning = true, accepted_answer = true WHERE id = '86bef536-ed62-424a-ba14-c9f0b19a776f';
  UPDATE items SET slug = 'unggul' WHERE id = '85e15e50-cba1-4dd5-8f5d-3458c7eedbed';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '85e15e50-cba1-4dd5-8f5d-3458c7eedbed' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Menonjol'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('85e15e50-cba1-4dd5-8f5d-3458c7eedbed', 'Menonjol', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '85e15e50-cba1-4dd5-8f5d-3458c7eedbed' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Istimewa'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('85e15e50-cba1-4dd5-8f5d-3458c7eedbed', 'Istimewa', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '85e15e50-cba1-4dd5-8f5d-3458c7eedbed' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Excel'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('85e15e50-cba1-4dd5-8f5d-3458c7eedbed', 'To Excel', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '85e15e50-cba1-4dd5-8f5d-3458c7eedbed' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Surpass'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('85e15e50-cba1-4dd5-8f5d-3458c7eedbed', 'To Surpass', false, true);
  END IF;

  -- [VOCABULARY] 自ら (Level 23)
  UPDATE item_meanings SET meaning = 'Diri Sendiri', primary_meaning = true, accepted_answer = true WHERE id = 'c25b4990-4b25-49d8-86a5-77868932671a';
  UPDATE items SET slug = 'diri-sendiri' WHERE id = 'c97a805d-a53a-42a7-9238-13eec8c1d19c';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'c97a805d-a53a-42a7-9238-13eec8c1d19c' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Secara Pribadi'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('c97a805d-a53a-42a7-9238-13eec8c1d19c', 'Secara Pribadi', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'c97a805d-a53a-42a7-9238-13eec8c1d19c' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Sendiri'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('c97a805d-a53a-42a7-9238-13eec8c1d19c', 'Sendiri', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'c97a805d-a53a-42a7-9238-13eec8c1d19c' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Oneself'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('c97a805d-a53a-42a7-9238-13eec8c1d19c', 'Oneself', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'c97a805d-a53a-42a7-9238-13eec8c1d19c' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Personally'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('c97a805d-a53a-42a7-9238-13eec8c1d19c', 'Personally', false, true);
  END IF;

  -- [VOCABULARY] 自宅 (Level 23)
  UPDATE item_meanings SET meaning = 'Rumah Sendiri', primary_meaning = true, accepted_answer = true WHERE id = '8dee99d1-f004-4ac8-a494-922533c31a8a';
  UPDATE items SET slug = 'rumah-sendiri' WHERE id = '5fd108a9-247e-400f-bae2-621389dac78f';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '5fd108a9-247e-400f-bae2-621389dac78f' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Kediaman Pribadi'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('5fd108a9-247e-400f-bae2-621389dac78f', 'Kediaman Pribadi', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '5fd108a9-247e-400f-bae2-621389dac78f' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Rumah Pribadi'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('5fd108a9-247e-400f-bae2-621389dac78f', 'Rumah Pribadi', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '5fd108a9-247e-400f-bae2-621389dac78f' AND LOWER(TRIM(meaning)) = LOWER(TRIM('One''s Home'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('5fd108a9-247e-400f-bae2-621389dac78f', 'One''s Home', false, true);
  END IF;

  -- [VOCABULARY] 裁く (Level 23)
  UPDATE item_meanings SET meaning = 'Mengadili', primary_meaning = true, accepted_answer = true WHERE id = '3028e9c4-d80a-4ee4-a1f2-2037d96be1ca';
  UPDATE items SET slug = 'mengadili' WHERE id = '4aa14055-944e-4b20-b95a-8f127590a78b';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '4aa14055-944e-4b20-b95a-8f127590a78b' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Menghakimi'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('4aa14055-944e-4b20-b95a-8f127590a78b', 'Menghakimi', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '4aa14055-944e-4b20-b95a-8f127590a78b' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Memutuskan Perkara'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('4aa14055-944e-4b20-b95a-8f127590a78b', 'Memutuskan Perkara', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '4aa14055-944e-4b20-b95a-8f127590a78b' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Judge'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('4aa14055-944e-4b20-b95a-8f127590a78b', 'To Judge', false, true);
  END IF;

  -- [VOCABULARY] 裁判 (Level 23)
  UPDATE item_meanings SET meaning = 'Pengadilan', primary_meaning = true, accepted_answer = true WHERE id = '40f23de6-1603-488d-8033-bf93fb122cab';
  UPDATE items SET slug = 'pengadilan' WHERE id = 'bbdc7f65-67f6-4206-a1aa-27c0234ada0f';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'bbdc7f65-67f6-4206-a1aa-27c0234ada0f' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Sidang Pengadilan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('bbdc7f65-67f6-4206-a1aa-27c0234ada0f', 'Sidang Pengadilan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'bbdc7f65-67f6-4206-a1aa-27c0234ada0f' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Peradilan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('bbdc7f65-67f6-4206-a1aa-27c0234ada0f', 'Peradilan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'bbdc7f65-67f6-4206-a1aa-27c0234ada0f' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Trial'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('bbdc7f65-67f6-4206-a1aa-27c0234ada0f', 'Trial', false, true);
  END IF;

  -- [VOCABULARY] 鬼 (Level 23)
  UPDATE item_meanings SET meaning = 'Oni', primary_meaning = true, accepted_answer = true WHERE id = 'f938e3f5-5d65-49be-9bd5-0c703bd329de';
  UPDATE items SET slug = 'oni' WHERE id = '000b698e-dee6-4974-9f32-57fea1141ca9';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '000b698e-dee6-4974-9f32-57fea1141ca9' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Iblis'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('000b698e-dee6-4974-9f32-57fea1141ca9', 'Iblis', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '000b698e-dee6-4974-9f32-57fea1141ca9' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Iblis Jepang'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('000b698e-dee6-4974-9f32-57fea1141ca9', 'Iblis Jepang', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '000b698e-dee6-4974-9f32-57fea1141ca9' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Demon'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('000b698e-dee6-4974-9f32-57fea1141ca9', 'Demon', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '000b698e-dee6-4974-9f32-57fea1141ca9' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Ogre'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('000b698e-dee6-4974-9f32-57fea1141ca9', 'Ogre', false, true);
  END IF;

END $$;
