-- Migration: Batch 2 Part 9 (Level 29)
-- Total items: 28

DO $$
BEGIN

  -- [KANJI] 促 (Level 29)
  UPDATE item_meanings SET meaning = 'Mendorong', primary_meaning = true, accepted_answer = true WHERE id = 'd0065caf-9556-46f4-ba4e-4ea47e1629f4';
  UPDATE items SET slug = 'mendorong' WHERE id = '7093ea45-4c19-40bb-bf51-b721ffb89ba7';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '7093ea45-4c19-40bb-bf51-b721ffb89ba7' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Mendesak'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('7093ea45-4c19-40bb-bf51-b721ffb89ba7', 'Mendesak', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '7093ea45-4c19-40bb-bf51-b721ffb89ba7' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Memicu'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('7093ea45-4c19-40bb-bf51-b721ffb89ba7', 'Memicu', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '7093ea45-4c19-40bb-bf51-b721ffb89ba7' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Urge'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('7093ea45-4c19-40bb-bf51-b721ffb89ba7', 'Urge', false, true);
  END IF;

  -- [KANJI] 催 (Level 29)
  UPDATE item_meanings SET meaning = 'Menyelenggarakan', primary_meaning = true, accepted_answer = true WHERE id = 'a8557599-911f-4b13-903e-8183297b5c54';
  UPDATE items SET slug = 'menyelenggarakan' WHERE id = '659ec929-dc1a-459e-b221-b8d107f50266';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '659ec929-dc1a-459e-b221-b8d107f50266' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Mengadakan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('659ec929-dc1a-459e-b221-b8d107f50266', 'Mengadakan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '659ec929-dc1a-459e-b221-b8d107f50266' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Sponsor'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('659ec929-dc1a-459e-b221-b8d107f50266', 'Sponsor', false, true);
  END IF;

  -- [KANJI] 杯 (Level 29)
  UPDATE item_meanings SET meaning = 'Cangkir', primary_meaning = true, accepted_answer = true WHERE id = '40fa4240-085b-4912-accc-bf8cff085134';
  UPDATE items SET slug = 'cangkir' WHERE id = '0918eb21-44ce-4258-9f70-27d537ca8a37';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '0918eb21-44ce-4258-9f70-27d537ca8a37' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Gelas'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('0918eb21-44ce-4258-9f70-27d537ca8a37', 'Gelas', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '0918eb21-44ce-4258-9f70-27d537ca8a37' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Takaran Minuman'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('0918eb21-44ce-4258-9f70-27d537ca8a37', 'Takaran Minuman', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '0918eb21-44ce-4258-9f70-27d537ca8a37' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Cup Of Liquid'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('0918eb21-44ce-4258-9f70-27d537ca8a37', 'Cup Of Liquid', false, true);
  END IF;

  -- [KANJI] 江 (Level 29)
  UPDATE item_meanings SET meaning = 'Muara', primary_meaning = true, accepted_answer = true WHERE id = '0a86e7ac-da1f-48aa-86ee-b56a1569c0fa';
  UPDATE items SET slug = 'muara' WHERE id = '2ec07eb5-3bd0-4a45-8e97-0f08e946983e';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '2ec07eb5-3bd0-4a45-8e97-0f08e946983e' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Teluk Kecil'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('2ec07eb5-3bd0-4a45-8e97-0f08e946983e', 'Teluk Kecil', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '2ec07eb5-3bd0-4a45-8e97-0f08e946983e' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Ceruk'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('2ec07eb5-3bd0-4a45-8e97-0f08e946983e', 'Ceruk', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '2ec07eb5-3bd0-4a45-8e97-0f08e946983e' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Inlet'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('2ec07eb5-3bd0-4a45-8e97-0f08e946983e', 'Inlet', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '2ec07eb5-3bd0-4a45-8e97-0f08e946983e' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Bay'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('2ec07eb5-3bd0-4a45-8e97-0f08e946983e', 'Bay', false, true);
  END IF;

  -- [KANJI] 督 (Level 29)
  UPDATE item_meanings SET meaning = 'Mengawasi', primary_meaning = true, accepted_answer = true WHERE id = '067fbe8f-4782-4603-8232-0577f45b9529';
  UPDATE items SET slug = 'mengawasi' WHERE id = '6c906768-7f18-496f-a675-8bbc742a48b3';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '6c906768-7f18-496f-a675-8bbc742a48b3' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Memimpin'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('6c906768-7f18-496f-a675-8bbc742a48b3', 'Memimpin', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '6c906768-7f18-496f-a675-8bbc742a48b3' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Mengarahkan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('6c906768-7f18-496f-a675-8bbc742a48b3', 'Mengarahkan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '6c906768-7f18-496f-a675-8bbc742a48b3' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Direct'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('6c906768-7f18-496f-a675-8bbc742a48b3', 'Direct', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '6c906768-7f18-496f-a675-8bbc742a48b3' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Supervise'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('6c906768-7f18-496f-a675-8bbc742a48b3', 'Supervise', false, true);
  END IF;

  -- [KANJI] 臣 (Level 29)
  UPDATE item_meanings SET meaning = 'Menteri', primary_meaning = true, accepted_answer = true WHERE id = 'c887c4ca-991b-4511-ab61-b9fba0a50633';
  UPDATE items SET slug = 'menteri' WHERE id = '69e0c510-817c-47d0-8a57-b0558be51b11';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '69e0c510-817c-47d0-8a57-b0558be51b11' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Abdi Negara'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('69e0c510-817c-47d0-8a57-b0558be51b11', 'Abdi Negara', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '69e0c510-817c-47d0-8a57-b0558be51b11' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Pelayan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('69e0c510-817c-47d0-8a57-b0558be51b11', 'Pelayan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '69e0c510-817c-47d0-8a57-b0558be51b11' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Servant'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('69e0c510-817c-47d0-8a57-b0558be51b11', 'Servant', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '69e0c510-817c-47d0-8a57-b0558be51b11' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Retainer'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('69e0c510-817c-47d0-8a57-b0558be51b11', 'Retainer', false, true);
  END IF;

  -- [KANJI] 詰 (Level 29)
  UPDATE item_meanings SET meaning = 'Menjejalkan', primary_meaning = true, accepted_answer = true WHERE id = '8030a26a-2b82-45a3-a619-cb96bce235a1';
  UPDATE items SET slug = 'menjejalkan' WHERE id = '589a5d77-81cf-417e-b088-25d64888792e';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '589a5d77-81cf-417e-b088-25d64888792e' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Mengisi Penuh'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('589a5d77-81cf-417e-b088-25d64888792e', 'Mengisi Penuh', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '589a5d77-81cf-417e-b088-25d64888792e' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Mengemas'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('589a5d77-81cf-417e-b088-25d64888792e', 'Mengemas', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '589a5d77-81cf-417e-b088-25d64888792e' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Stuffed'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('589a5d77-81cf-417e-b088-25d64888792e', 'Stuffed', false, true);
  END IF;

  -- [KANJI] 請 (Level 29)
  UPDATE item_meanings SET meaning = 'Memohon', primary_meaning = true, accepted_answer = true WHERE id = 'f88312ac-0cd4-4ca4-b3a0-0d8f2a90d905';
  UPDATE items SET slug = 'memohon' WHERE id = 'c1276933-c6ce-4316-906a-9e483ded9583';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'c1276933-c6ce-4316-906a-9e483ded9583' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Meminta'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('c1276933-c6ce-4316-906a-9e483ded9583', 'Meminta', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'c1276933-c6ce-4316-906a-9e483ded9583' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Mengajukan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('c1276933-c6ce-4316-906a-9e483ded9583', 'Mengajukan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'c1276933-c6ce-4316-906a-9e483ded9583' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Request'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('c1276933-c6ce-4316-906a-9e483ded9583', 'Request', false, true);
  END IF;

  -- [KANJI] 雄 (Level 29)
  UPDATE item_meanings SET meaning = 'Jantan', primary_meaning = true, accepted_answer = true WHERE id = '718c8ce9-c4c3-46d7-9105-d379ade76682';
  UPDATE items SET slug = 'jantan' WHERE id = '30bbe701-8a0f-4380-906c-8b6c2d3996f6';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '30bbe701-8a0f-4380-906c-8b6c2d3996f6' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Perkasa'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('30bbe701-8a0f-4380-906c-8b6c2d3996f6', 'Perkasa', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '30bbe701-8a0f-4380-906c-8b6c2d3996f6' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Gagah'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('30bbe701-8a0f-4380-906c-8b6c2d3996f6', 'Gagah', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '30bbe701-8a0f-4380-906c-8b6c2d3996f6' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Male'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('30bbe701-8a0f-4380-906c-8b6c2d3996f6', 'Male', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '30bbe701-8a0f-4380-906c-8b6c2d3996f6' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Brave'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('30bbe701-8a0f-4380-906c-8b6c2d3996f6', 'Brave', false, true);
  END IF;

  -- [RADICAL] 玄 (Level 29)
  UPDATE item_meanings SET meaning = 'Misterius', primary_meaning = true, accepted_answer = true WHERE id = 'b7dd28a0-6eb5-497e-b3b3-05416df59d63';
  UPDATE items SET slug = 'misterius' WHERE id = '85d11c15-7477-4643-81b5-9dfe8dc432e9';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '85d11c15-7477-4643-81b5-9dfe8dc432e9' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Gelap'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('85d11c15-7477-4643-81b5-9dfe8dc432e9', 'Gelap', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '85d11c15-7477-4643-81b5-9dfe8dc432e9' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Mysterious'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('85d11c15-7477-4643-81b5-9dfe8dc432e9', 'Mysterious', false, true);
  END IF;

  -- [VOCABULARY] 一杯 (Level 29)
  UPDATE item_meanings SET meaning = 'Secangkir', primary_meaning = true, accepted_answer = true WHERE id = 'b459e86b-9fcb-482d-a24d-9f25c2383859';
  UPDATE items SET slug = 'secangkir' WHERE id = '33681130-3480-41d2-b5f6-97a6ba432e10';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '33681130-3480-41d2-b5f6-97a6ba432e10' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Satu Cangkir'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('33681130-3480-41d2-b5f6-97a6ba432e10', 'Satu Cangkir', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '33681130-3480-41d2-b5f6-97a6ba432e10' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Penuh'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('33681130-3480-41d2-b5f6-97a6ba432e10', 'Penuh', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '33681130-3480-41d2-b5f6-97a6ba432e10' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Banyak'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('33681130-3480-41d2-b5f6-97a6ba432e10', 'Banyak', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '33681130-3480-41d2-b5f6-97a6ba432e10' AND LOWER(TRIM(meaning)) = LOWER(TRIM('One Cup'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('33681130-3480-41d2-b5f6-97a6ba432e10', 'One Cup', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '33681130-3480-41d2-b5f6-97a6ba432e10' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Full'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('33681130-3480-41d2-b5f6-97a6ba432e10', 'Full', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '33681130-3480-41d2-b5f6-97a6ba432e10' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Gelas'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('33681130-3480-41d2-b5f6-97a6ba432e10', 'Gelas', false, true);
  END IF;

  -- [VOCABULARY] 三杯 (Level 29)
  UPDATE item_meanings SET meaning = 'Tiga Cangkir', primary_meaning = true, accepted_answer = true WHERE id = '05550a3c-afd7-48c8-a55f-6ace65c24d1a';
  UPDATE items SET slug = 'tiga-cangkir' WHERE id = '5f86ff89-8729-4229-a6b6-1a2a9d0b00e3';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '5f86ff89-8729-4229-a6b6-1a2a9d0b00e3' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Tiga Gelas'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('5f86ff89-8729-4229-a6b6-1a2a9d0b00e3', 'Tiga Gelas', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '5f86ff89-8729-4229-a6b6-1a2a9d0b00e3' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Three Cups'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('5f86ff89-8729-4229-a6b6-1a2a9d0b00e3', 'Three Cups', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '5f86ff89-8729-4229-a6b6-1a2a9d0b00e3' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Gelas'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('5f86ff89-8729-4229-a6b6-1a2a9d0b00e3', 'Gelas', false, true);
  END IF;

  -- [VOCABULARY] 主催 (Level 29)
  UPDATE item_meanings SET meaning = 'Penyelenggara', primary_meaning = true, accepted_answer = true WHERE id = 'eecfd823-8c7a-456e-8c95-94f2d524ec60';
  UPDATE items SET slug = 'penyelenggara' WHERE id = '6a817734-ab2e-4f21-9db3-a2ecaa71b4e9';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '6a817734-ab2e-4f21-9db3-a2ecaa71b4e9' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Tuan Rumah Acara'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('6a817734-ab2e-4f21-9db3-a2ecaa71b4e9', 'Tuan Rumah Acara', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '6a817734-ab2e-4f21-9db3-a2ecaa71b4e9' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Penyelenggaraan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('6a817734-ab2e-4f21-9db3-a2ecaa71b4e9', 'Penyelenggaraan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '6a817734-ab2e-4f21-9db3-a2ecaa71b4e9' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Host'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('6a817734-ab2e-4f21-9db3-a2ecaa71b4e9', 'Host', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '6a817734-ab2e-4f21-9db3-a2ecaa71b4e9' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Sponsor'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('6a817734-ab2e-4f21-9db3-a2ecaa71b4e9', 'Sponsor', false, true);
  END IF;

  -- [VOCABULARY] 二杯 (Level 29)
  UPDATE item_meanings SET meaning = 'Dua Cangkir', primary_meaning = true, accepted_answer = true WHERE id = '41aeed87-5321-41b7-98d0-33b5eaa2c789';
  UPDATE items SET slug = 'dua-cangkir' WHERE id = '5542a0ec-00b7-467a-935e-129fdaea0132';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '5542a0ec-00b7-467a-935e-129fdaea0132' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Dua Gelas'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('5542a0ec-00b7-467a-935e-129fdaea0132', 'Dua Gelas', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '5542a0ec-00b7-467a-935e-129fdaea0132' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Two Cups'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('5542a0ec-00b7-467a-935e-129fdaea0132', 'Two Cups', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '5542a0ec-00b7-467a-935e-129fdaea0132' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Gelas'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('5542a0ec-00b7-467a-935e-129fdaea0132', 'Gelas', false, true);
  END IF;

  -- [VOCABULARY] 促す (Level 29)
  UPDATE item_meanings SET meaning = 'Mendorong', primary_meaning = true, accepted_answer = true WHERE id = 'd884a9de-9e5d-4f50-b39d-8a433ed56b85';
  UPDATE items SET slug = 'mendorong' WHERE id = 'b8403a3a-ada4-43fe-8cb1-b7717bf00647';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'b8403a3a-ada4-43fe-8cb1-b7717bf00647' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Mengingatkan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('b8403a3a-ada4-43fe-8cb1-b7717bf00647', 'Mengingatkan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'b8403a3a-ada4-43fe-8cb1-b7717bf00647' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Merangsang'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('b8403a3a-ada4-43fe-8cb1-b7717bf00647', 'Merangsang', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'b8403a3a-ada4-43fe-8cb1-b7717bf00647' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Menganjurkan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('b8403a3a-ada4-43fe-8cb1-b7717bf00647', 'Menganjurkan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'b8403a3a-ada4-43fe-8cb1-b7717bf00647' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Urge'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('b8403a3a-ada4-43fe-8cb1-b7717bf00647', 'To Urge', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'b8403a3a-ada4-43fe-8cb1-b7717bf00647' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Prompt'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('b8403a3a-ada4-43fe-8cb1-b7717bf00647', 'To Prompt', false, true);
  END IF;

  -- [VOCABULARY] 催促 (Level 29)
  UPDATE item_meanings SET meaning = 'Tagihan', primary_meaning = true, accepted_answer = true WHERE id = 'ea0d19b0-60f2-4edd-8a40-0fd01baaae03';
  UPDATE items SET slug = 'tagihan' WHERE id = '207422ec-eef4-465e-9990-d9dd939d8c37';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '207422ec-eef4-465e-9990-d9dd939d8c37' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Menagih'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('207422ec-eef4-465e-9990-d9dd939d8c37', 'Menagih', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '207422ec-eef4-465e-9990-d9dd939d8c37' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Mendesak'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('207422ec-eef4-465e-9990-d9dd939d8c37', 'Mendesak', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '207422ec-eef4-465e-9990-d9dd939d8c37' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Mengingatkan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('207422ec-eef4-465e-9990-d9dd939d8c37', 'Mengingatkan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '207422ec-eef4-465e-9990-d9dd939d8c37' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Urge'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('207422ec-eef4-465e-9990-d9dd939d8c37', 'Urge', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '207422ec-eef4-465e-9990-d9dd939d8c37' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Demand'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('207422ec-eef4-465e-9990-d9dd939d8c37', 'Demand', false, true);
  END IF;

  -- [VOCABULARY] 催告 (Level 29)
  UPDATE item_meanings SET meaning = 'Somasi', primary_meaning = true, accepted_answer = true WHERE id = 'b13b4cd6-9c99-4365-b88c-1145348895c2';
  UPDATE items SET slug = 'somasi' WHERE id = '060b9fd4-c6b3-4156-a1dc-97f4ad6d6ccf';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '060b9fd4-c6b3-4156-a1dc-97f4ad6d6ccf' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Surat Teguran'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('060b9fd4-c6b3-4156-a1dc-97f4ad6d6ccf', 'Surat Teguran', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '060b9fd4-c6b3-4156-a1dc-97f4ad6d6ccf' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Pemberitahuan Resmi'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('060b9fd4-c6b3-4156-a1dc-97f4ad6d6ccf', 'Pemberitahuan Resmi', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '060b9fd4-c6b3-4156-a1dc-97f4ad6d6ccf' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Notice'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('060b9fd4-c6b3-4156-a1dc-97f4ad6d6ccf', 'Notice', false, true);
  END IF;

  -- [VOCABULARY] 入り江 (Level 29)
  UPDATE item_meanings SET meaning = 'Teluk Kecil', primary_meaning = true, accepted_answer = true WHERE id = '304325eb-4725-4ca1-b79f-c1d9dc13a725';
  UPDATE items SET slug = 'teluk-kecil' WHERE id = '7a4c5699-dd77-4ad1-b669-c92189ee1c5d';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '7a4c5699-dd77-4ad1-b669-c92189ee1c5d' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Ceruk Pantai'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('7a4c5699-dd77-4ad1-b669-c92189ee1c5d', 'Ceruk Pantai', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '7a4c5699-dd77-4ad1-b669-c92189ee1c5d' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Inlet'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('7a4c5699-dd77-4ad1-b669-c92189ee1c5d', 'Inlet', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '7a4c5699-dd77-4ad1-b669-c92189ee1c5d' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Cove'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('7a4c5699-dd77-4ad1-b669-c92189ee1c5d', 'Cove', false, true);
  END IF;

  -- [VOCABULARY] 申請 (Level 29)
  UPDATE item_meanings SET meaning = 'Permohonan', primary_meaning = true, accepted_answer = true WHERE id = '61ddd9b4-02dd-46cb-9eb4-cfbb6c36c7d7';
  UPDATE items SET slug = 'permohonan' WHERE id = 'd2aed6b3-b207-4cfc-96f9-92f5a056db35';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'd2aed6b3-b207-4cfc-96f9-92f5a056db35' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Pengajuan Permohonan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('d2aed6b3-b207-4cfc-96f9-92f5a056db35', 'Pengajuan Permohonan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'd2aed6b3-b207-4cfc-96f9-92f5a056db35' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Pendaftaran'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('d2aed6b3-b207-4cfc-96f9-92f5a056db35', 'Pendaftaran', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'd2aed6b3-b207-4cfc-96f9-92f5a056db35' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Aplikasi'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('d2aed6b3-b207-4cfc-96f9-92f5a056db35', 'Aplikasi', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'd2aed6b3-b207-4cfc-96f9-92f5a056db35' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Application'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('d2aed6b3-b207-4cfc-96f9-92f5a056db35', 'Application', false, true);
  END IF;

  -- [VOCABULARY] 監督 (Level 29)
  UPDATE item_meanings SET meaning = 'Sutradara', primary_meaning = true, accepted_answer = true WHERE id = '78a46938-2382-4779-bff0-e7d94fd6160f';
  UPDATE items SET slug = 'sutradara' WHERE id = 'a41ebf1e-2a99-4d87-86ad-61f701ec89c0';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'a41ebf1e-2a99-4d87-86ad-61f701ec89c0' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Manajer'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('a41ebf1e-2a99-4d87-86ad-61f701ec89c0', 'Manajer', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'a41ebf1e-2a99-4d87-86ad-61f701ec89c0' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Pelatih Kepala'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('a41ebf1e-2a99-4d87-86ad-61f701ec89c0', 'Pelatih Kepala', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'a41ebf1e-2a99-4d87-86ad-61f701ec89c0' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Pengawas'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('a41ebf1e-2a99-4d87-86ad-61f701ec89c0', 'Pengawas', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'a41ebf1e-2a99-4d87-86ad-61f701ec89c0' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Director'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('a41ebf1e-2a99-4d87-86ad-61f701ec89c0', 'Director', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'a41ebf1e-2a99-4d87-86ad-61f701ec89c0' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Supervision'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('a41ebf1e-2a99-4d87-86ad-61f701ec89c0', 'Supervision', false, true);
  END IF;

  -- [VOCABULARY] 直航 (Level 29)
  UPDATE item_meanings SET meaning = 'Penerbangan Langsung', primary_meaning = true, accepted_answer = true WHERE id = 'ab0dd2bf-809a-4119-843f-4179fbdf38bf';
  UPDATE items SET slug = 'penerbangan-langsung' WHERE id = 'f9b95ba2-6057-42f2-89ec-86bcb1942529';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'f9b95ba2-6057-42f2-89ec-86bcb1942529' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Pelayaran Langsung'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('f9b95ba2-6057-42f2-89ec-86bcb1942529', 'Pelayaran Langsung', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'f9b95ba2-6057-42f2-89ec-86bcb1942529' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Langsung'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('f9b95ba2-6057-42f2-89ec-86bcb1942529', 'Langsung', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'f9b95ba2-6057-42f2-89ec-86bcb1942529' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Nonstop Flight'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('f9b95ba2-6057-42f2-89ec-86bcb1942529', 'Nonstop Flight', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'f9b95ba2-6057-42f2-89ec-86bcb1942529' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Direct Voyage'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('f9b95ba2-6057-42f2-89ec-86bcb1942529', 'Direct Voyage', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'f9b95ba2-6057-42f2-89ec-86bcb1942529' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Pelayaran'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('f9b95ba2-6057-42f2-89ec-86bcb1942529', 'Pelayaran', false, true);
  END IF;

  -- [VOCABULARY] 腹が立つ (Level 29)
  UPDATE item_meanings SET meaning = 'Marah', primary_meaning = true, accepted_answer = true WHERE id = '67ce3697-11d5-456c-8511-3948fbc63b71';
  UPDATE items SET slug = 'marah' WHERE id = '17e8feb3-0a6c-4b88-90bf-639c0461dd60';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '17e8feb3-0a6c-4b88-90bf-639c0461dd60' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Kesal'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('17e8feb3-0a6c-4b88-90bf-639c0461dd60', 'Kesal', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '17e8feb3-0a6c-4b88-90bf-639c0461dd60' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Naik Darah'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('17e8feb3-0a6c-4b88-90bf-639c0461dd60', 'Naik Darah', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '17e8feb3-0a6c-4b88-90bf-639c0461dd60' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Dongkol'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('17e8feb3-0a6c-4b88-90bf-639c0461dd60', 'Dongkol', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '17e8feb3-0a6c-4b88-90bf-639c0461dd60' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Get Angry'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('17e8feb3-0a6c-4b88-90bf-639c0461dd60', 'To Get Angry', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '17e8feb3-0a6c-4b88-90bf-639c0461dd60' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Get Mad'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('17e8feb3-0a6c-4b88-90bf-639c0461dd60', 'To Get Mad', false, true);
  END IF;

  -- [VOCABULARY] 英雄 (Level 29)
  UPDATE item_meanings SET meaning = 'Pahlawan', primary_meaning = true, accepted_answer = true WHERE id = 'c2e1e2f0-62f1-49b4-8909-1958997d467c';
  UPDATE items SET slug = 'pahlawan' WHERE id = '3277d2b0-c2d0-4677-984e-fc5611db0943';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '3277d2b0-c2d0-4677-984e-fc5611db0943' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Ksatria'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('3277d2b0-c2d0-4677-984e-fc5611db0943', 'Ksatria', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '3277d2b0-c2d0-4677-984e-fc5611db0943' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Hero'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('3277d2b0-c2d0-4677-984e-fc5611db0943', 'Hero', false, true);
  END IF;

  -- [VOCABULARY] 見極める (Level 29)
  UPDATE item_meanings SET meaning = 'Memastikan', primary_meaning = true, accepted_answer = true WHERE id = 'e6554221-f336-4b0f-ac0a-8a44990b8e3c';
  UPDATE items SET slug = 'memastikan' WHERE id = '8640e998-91a4-4d4a-8b23-6d14b1d73d0c';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '8640e998-91a4-4d4a-8b23-6d14b1d73d0c' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Memastikan Kebenaran'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('8640e998-91a4-4d4a-8b23-6d14b1d73d0c', 'Memastikan Kebenaran', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '8640e998-91a4-4d4a-8b23-6d14b1d73d0c' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Menilai Tepat'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('8640e998-91a4-4d4a-8b23-6d14b1d73d0c', 'Menilai Tepat', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '8640e998-91a4-4d4a-8b23-6d14b1d73d0c' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Get To The Bottom Of'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('8640e998-91a4-4d4a-8b23-6d14b1d73d0c', 'To Get To The Bottom Of', false, true);
  END IF;

  -- [VOCABULARY] 診る (Level 29)
  UPDATE item_meanings SET meaning = 'Memeriksa Pasien', primary_meaning = true, accepted_answer = true WHERE id = '83a1afa4-90e6-4153-88f6-0acf8e38d973';
  UPDATE items SET slug = 'memeriksa-pasien' WHERE id = '04f4ac8f-2ab0-4636-81f9-0dcecca8786c';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '04f4ac8f-2ab0-4636-81f9-0dcecca8786c' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Memeriksa'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('04f4ac8f-2ab0-4636-81f9-0dcecca8786c', 'Memeriksa', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '04f4ac8f-2ab0-4636-81f9-0dcecca8786c' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Mendiagnosis'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('04f4ac8f-2ab0-4636-81f9-0dcecca8786c', 'Mendiagnosis', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '04f4ac8f-2ab0-4636-81f9-0dcecca8786c' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Examine A Patient'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('04f4ac8f-2ab0-4636-81f9-0dcecca8786c', 'To Examine A Patient', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '04f4ac8f-2ab0-4636-81f9-0dcecca8786c' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Memeriksa (Pasien'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('04f4ac8f-2ab0-4636-81f9-0dcecca8786c', 'Memeriksa (Pasien', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '04f4ac8f-2ab0-4636-81f9-0dcecca8786c' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Medis)'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('04f4ac8f-2ab0-4636-81f9-0dcecca8786c', 'Medis)', false, true);
  END IF;

  -- [VOCABULARY] 詰める (Level 29)
  UPDATE item_meanings SET meaning = 'Menjejalkan', primary_meaning = true, accepted_answer = true WHERE id = '65898e34-6281-4c7a-b277-49177bcade02';
  UPDATE items SET slug = 'menjejalkan' WHERE id = '68503b1c-857c-45db-b7c6-9dcfc81f5b29';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '68503b1c-857c-45db-b7c6-9dcfc81f5b29' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Mengemas'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('68503b1c-857c-45db-b7c6-9dcfc81f5b29', 'Mengemas', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '68503b1c-857c-45db-b7c6-9dcfc81f5b29' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Bekerja Terus'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('68503b1c-857c-45db-b7c6-9dcfc81f5b29', 'Bekerja Terus', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '68503b1c-857c-45db-b7c6-9dcfc81f5b29' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Stuff In'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('68503b1c-857c-45db-b7c6-9dcfc81f5b29', 'To Stuff In', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '68503b1c-857c-45db-b7c6-9dcfc81f5b29' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Pack'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('68503b1c-857c-45db-b7c6-9dcfc81f5b29', 'To Pack', false, true);
  END IF;

  -- [VOCABULARY] 請ける (Level 29)
  UPDATE item_meanings SET meaning = 'Menyanggupi', primary_meaning = true, accepted_answer = true WHERE id = '284d80c3-fdb2-42b5-8cb2-2117a0acd232';
  UPDATE items SET slug = 'menyanggupi' WHERE id = '225dd10b-7c5e-4cae-b579-da60b36f7254';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '225dd10b-7c5e-4cae-b579-da60b36f7254' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Menerima Tugas'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('225dd10b-7c5e-4cae-b579-da60b36f7254', 'Menerima Tugas', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '225dd10b-7c5e-4cae-b579-da60b36f7254' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Mengambil Tugas'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('225dd10b-7c5e-4cae-b579-da60b36f7254', 'Mengambil Tugas', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '225dd10b-7c5e-4cae-b579-da60b36f7254' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Take On'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('225dd10b-7c5e-4cae-b579-da60b36f7254', 'To Take On', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '225dd10b-7c5e-4cae-b579-da60b36f7254' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Undertake'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('225dd10b-7c5e-4cae-b579-da60b36f7254', 'To Undertake', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '225dd10b-7c5e-4cae-b579-da60b36f7254' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Menerima'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('225dd10b-7c5e-4cae-b579-da60b36f7254', 'Menerima', false, true);
  END IF;

  -- [VOCABULARY] 請求 (Level 29)
  UPDATE item_meanings SET meaning = 'Penagihan', primary_meaning = true, accepted_answer = true WHERE id = '8f598905-3057-4ec0-9fa4-b876780463a9';
  UPDATE items SET slug = 'penagihan' WHERE id = '3498c426-a68e-4b58-a231-6524057129f8';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '3498c426-a68e-4b58-a231-6524057129f8' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Klaim Pembayaran'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('3498c426-a68e-4b58-a231-6524057129f8', 'Klaim Pembayaran', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '3498c426-a68e-4b58-a231-6524057129f8' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Tagihan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('3498c426-a68e-4b58-a231-6524057129f8', 'Tagihan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '3498c426-a68e-4b58-a231-6524057129f8' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Request'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('3498c426-a68e-4b58-a231-6524057129f8', 'Request', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '3498c426-a68e-4b58-a231-6524057129f8' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Claim'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('3498c426-a68e-4b58-a231-6524057129f8', 'Claim', false, true);
  END IF;

END $$;
