-- Migration: Batch 3 Part 3 (Level 33)
-- Total items: 101

DO $$
BEGIN

  -- [KANJI] 僅 (Level 33)
  UPDATE item_meanings SET meaning = 'Hanya Sedikit', primary_meaning = true, accepted_answer = true WHERE id = '1aab698d-305b-4144-9416-11cda976fb48';
  UPDATE items SET slug = 'hanya-sedikit' WHERE id = 'a80456ee-05cd-4f08-b403-4774645deda2';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'a80456ee-05cd-4f08-b403-4774645deda2' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Tipis'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('a80456ee-05cd-4f08-b403-4774645deda2', 'Tipis', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'a80456ee-05cd-4f08-b403-4774645deda2' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Slight'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('a80456ee-05cd-4f08-b403-4774645deda2', 'Slight', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'a80456ee-05cd-4f08-b403-4774645deda2' AND LOWER(TRIM(meaning)) = LOWER(TRIM('A Little'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('a80456ee-05cd-4f08-b403-4774645deda2', 'A Little', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'a80456ee-05cd-4f08-b403-4774645deda2' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Sedikit'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('a80456ee-05cd-4f08-b403-4774645deda2', 'Sedikit', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'a80456ee-05cd-4f08-b403-4774645deda2' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Slightly'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('a80456ee-05cd-4f08-b403-4774645deda2', 'Slightly', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'a80456ee-05cd-4f08-b403-4774645deda2' AND LOWER(TRIM(meaning)) = LOWER(TRIM('A Few'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('a80456ee-05cd-4f08-b403-4774645deda2', 'A Few', false, true);
  END IF;

  -- [KANJI] 儲 (Level 33)
  UPDATE item_meanings SET meaning = 'Meraup Keuntungan', primary_meaning = true, accepted_answer = true WHERE id = '55887a9f-33c4-4238-bc4a-5f41a89ac75b';
  UPDATE items SET slug = 'meraup-keuntungan' WHERE id = 'e74fb3a2-1ac0-47d3-99f0-7a0eebdd5137';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'e74fb3a2-1ac0-47d3-99f0-7a0eebdd5137' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Menghasilkan Untung'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('e74fb3a2-1ac0-47d3-99f0-7a0eebdd5137', 'Menghasilkan Untung', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'e74fb3a2-1ac0-47d3-99f0-7a0eebdd5137' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Profit'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('e74fb3a2-1ac0-47d3-99f0-7a0eebdd5137', 'Profit', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'e74fb3a2-1ac0-47d3-99f0-7a0eebdd5137' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Make Money'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('e74fb3a2-1ac0-47d3-99f0-7a0eebdd5137', 'Make Money', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'e74fb3a2-1ac0-47d3-99f0-7a0eebdd5137' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Menghasilkan uang'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('e74fb3a2-1ac0-47d3-99f0-7a0eebdd5137', 'Menghasilkan uang', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'e74fb3a2-1ac0-47d3-99f0-7a0eebdd5137' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Money-Making'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('e74fb3a2-1ac0-47d3-99f0-7a0eebdd5137', 'Money-Making', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'e74fb3a2-1ac0-47d3-99f0-7a0eebdd5137' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Moneymaking'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('e74fb3a2-1ac0-47d3-99f0-7a0eebdd5137', 'Moneymaking', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'e74fb3a2-1ac0-47d3-99f0-7a0eebdd5137' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Profitable'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('e74fb3a2-1ac0-47d3-99f0-7a0eebdd5137', 'Profitable', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'e74fb3a2-1ac0-47d3-99f0-7a0eebdd5137' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Be Profitable'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('e74fb3a2-1ac0-47d3-99f0-7a0eebdd5137', 'Be Profitable', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'e74fb3a2-1ac0-47d3-99f0-7a0eebdd5137' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Yield Profit'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('e74fb3a2-1ac0-47d3-99f0-7a0eebdd5137', 'Yield Profit', false, true);
  END IF;

  -- [KANJI] 否 (Level 33)
  UPDATE item_meanings SET meaning = 'Tidak', primary_meaning = true, accepted_answer = true WHERE id = 'e30cfde4-6b9e-4c72-89f0-56d9f25de3b3';
  UPDATE items SET slug = 'tidak' WHERE id = 'e3249ec7-d15a-45d0-98ad-a6a485d9a756';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'e3249ec7-d15a-45d0-98ad-a6a485d9a756' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Menolak'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('e3249ec7-d15a-45d0-98ad-a6a485d9a756', 'Menolak', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'e3249ec7-d15a-45d0-98ad-a6a485d9a756' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Negatif'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('e3249ec7-d15a-45d0-98ad-a6a485d9a756', 'Negatif', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'e3249ec7-d15a-45d0-98ad-a6a485d9a756' AND LOWER(TRIM(meaning)) = LOWER(TRIM('No'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('e3249ec7-d15a-45d0-98ad-a6a485d9a756', 'No', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'e3249ec7-d15a-45d0-98ad-a6a485d9a756' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Not'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('e3249ec7-d15a-45d0-98ad-a6a485d9a756', 'Not', false, true);
  END IF;

  -- [KANJI] 噂 (Level 33)
  UPDATE item_meanings SET meaning = 'Gosip', primary_meaning = true, accepted_answer = true WHERE id = '09957d8d-18ad-4d78-b831-026687971d35';
  UPDATE items SET slug = 'gosip' WHERE id = '761bfd00-8680-4539-b338-5c6af750948a';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '761bfd00-8680-4539-b338-5c6af750948a' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Desas-desus'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('761bfd00-8680-4539-b338-5c6af750948a', 'Desas-desus', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '761bfd00-8680-4539-b338-5c6af750948a' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Rumor'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('761bfd00-8680-4539-b338-5c6af750948a', 'Rumor', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '761bfd00-8680-4539-b338-5c6af750948a' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Gossip'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('761bfd00-8680-4539-b338-5c6af750948a', 'Gossip', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '761bfd00-8680-4539-b338-5c6af750948a' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Isu'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('761bfd00-8680-4539-b338-5c6af750948a', 'Isu', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '761bfd00-8680-4539-b338-5c6af750948a' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Rumour'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('761bfd00-8680-4539-b338-5c6af750948a', 'Rumour', false, true);
  END IF;

  -- [KANJI] 宣 (Level 33)
  UPDATE item_meanings SET meaning = 'Memproklamasikan', primary_meaning = true, accepted_answer = true WHERE id = 'af213b45-00b6-439b-b850-bd40d26eb9f0';
  UPDATE items SET slug = 'memproklamasikan' WHERE id = '0f648018-76a7-44d8-8929-167986635f81';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '0f648018-76a7-44d8-8929-167986635f81' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Menyatakan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('0f648018-76a7-44d8-8929-167986635f81', 'Menyatakan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '0f648018-76a7-44d8-8929-167986635f81' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Proclaim'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('0f648018-76a7-44d8-8929-167986635f81', 'Proclaim', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '0f648018-76a7-44d8-8929-167986635f81' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Declare'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('0f648018-76a7-44d8-8929-167986635f81', 'Declare', false, true);
  END IF;

  -- [KANJI] 尊 (Level 33)
  UPDATE item_meanings SET meaning = 'Mulia', primary_meaning = true, accepted_answer = true WHERE id = 'f04489f5-059c-4705-86e9-f766074e987b';
  UPDATE items SET slug = 'mulia' WHERE id = '129bac64-0905-4d2f-bb83-6c4e37e0f86f';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '129bac64-0905-4d2f-bb83-6c4e37e0f86f' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Dihormati'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('129bac64-0905-4d2f-bb83-6c4e37e0f86f', 'Dihormati', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '129bac64-0905-4d2f-bb83-6c4e37e0f86f' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Revered'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('129bac64-0905-4d2f-bb83-6c4e37e0f86f', 'Revered', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '129bac64-0905-4d2f-bb83-6c4e37e0f86f' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Precious'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('129bac64-0905-4d2f-bb83-6c4e37e0f86f', 'Precious', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '129bac64-0905-4d2f-bb83-6c4e37e0f86f' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Reverence'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('129bac64-0905-4d2f-bb83-6c4e37e0f86f', 'Reverence', false, true);
  END IF;

  -- [KANJI] 屁 (Level 33)
  UPDATE item_meanings SET meaning = 'Kentut', primary_meaning = true, accepted_answer = true WHERE id = '725290b0-30d8-4dfe-b4be-5ae3accef6f1';
  UPDATE items SET slug = 'kentut' WHERE id = 'f18bcf9e-2a02-460b-8e4b-3d2f76bfd7e6';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'f18bcf9e-2a02-460b-8e4b-3d2f76bfd7e6' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Angin Perut'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('f18bcf9e-2a02-460b-8e4b-3d2f76bfd7e6', 'Angin Perut', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'f18bcf9e-2a02-460b-8e4b-3d2f76bfd7e6' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Fart'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('f18bcf9e-2a02-460b-8e4b-3d2f76bfd7e6', 'Fart', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'f18bcf9e-2a02-460b-8e4b-3d2f76bfd7e6' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Flatulence'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('f18bcf9e-2a02-460b-8e4b-3d2f76bfd7e6', 'Flatulence', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'f18bcf9e-2a02-460b-8e4b-3d2f76bfd7e6' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Perut kembung'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('f18bcf9e-2a02-460b-8e4b-3d2f76bfd7e6', 'Perut kembung', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'f18bcf9e-2a02-460b-8e4b-3d2f76bfd7e6' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Wind'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('f18bcf9e-2a02-460b-8e4b-3d2f76bfd7e6', 'Wind', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'f18bcf9e-2a02-460b-8e4b-3d2f76bfd7e6' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Gas'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('f18bcf9e-2a02-460b-8e4b-3d2f76bfd7e6', 'Gas', false, true);
  END IF;

  -- [KANJI] 忠 (Level 33)
  UPDATE item_meanings SET meaning = 'Setia', primary_meaning = true, accepted_answer = true WHERE id = 'abb494cf-74bb-4b9c-8200-894fd79c26fa';
  UPDATE items SET slug = 'setia' WHERE id = '3e3055ef-190b-47ea-86f4-a58fcc11f178';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '3e3055ef-190b-47ea-86f4-a58fcc11f178' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Loyalitas Luhur'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('3e3055ef-190b-47ea-86f4-a58fcc11f178', 'Loyalitas Luhur', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '3e3055ef-190b-47ea-86f4-a58fcc11f178' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Loyal'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('3e3055ef-190b-47ea-86f4-a58fcc11f178', 'Loyal', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '3e3055ef-190b-47ea-86f4-a58fcc11f178' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Loyalty'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('3e3055ef-190b-47ea-86f4-a58fcc11f178', 'Loyalty', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '3e3055ef-190b-47ea-86f4-a58fcc11f178' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Loyalitas'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('3e3055ef-190b-47ea-86f4-a58fcc11f178', 'Loyalitas', false, true);
  END IF;

  -- [KANJI] 拡 (Level 33)
  UPDATE item_meanings SET meaning = 'Memperluas', primary_meaning = true, accepted_answer = true WHERE id = '7bb3feb7-062d-4850-9301-2749ae9fccb8';
  UPDATE items SET slug = 'memperluas' WHERE id = 'a9ff2e4c-caa9-4c87-84ca-d5aa1b76bc9a';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'a9ff2e4c-caa9-4c87-84ca-d5aa1b76bc9a' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Melebarkan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('a9ff2e4c-caa9-4c87-84ca-d5aa1b76bc9a', 'Melebarkan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'a9ff2e4c-caa9-4c87-84ca-d5aa1b76bc9a' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Expand'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('a9ff2e4c-caa9-4c87-84ca-d5aa1b76bc9a', 'Expand', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'a9ff2e4c-caa9-4c87-84ca-d5aa1b76bc9a' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Extend'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('a9ff2e4c-caa9-4c87-84ca-d5aa1b76bc9a', 'Extend', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'a9ff2e4c-caa9-4c87-84ca-d5aa1b76bc9a' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Memperpanjang'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('a9ff2e4c-caa9-4c87-84ca-d5aa1b76bc9a', 'Memperpanjang', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'a9ff2e4c-caa9-4c87-84ca-d5aa1b76bc9a' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Spread'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('a9ff2e4c-caa9-4c87-84ca-d5aa1b76bc9a', 'Spread', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'a9ff2e4c-caa9-4c87-84ca-d5aa1b76bc9a' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Enlarge'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('a9ff2e4c-caa9-4c87-84ca-d5aa1b76bc9a', 'Enlarge', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'a9ff2e4c-caa9-4c87-84ca-d5aa1b76bc9a' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Extension'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('a9ff2e4c-caa9-4c87-84ca-d5aa1b76bc9a', 'Extension', false, true);
  END IF;

  -- [KANJI] 操 (Level 33)
  UPDATE item_meanings SET meaning = 'Mengoperasikan', primary_meaning = true, accepted_answer = true WHERE id = '90d68072-afd1-4498-92a7-cac8fb9754cb';
  UPDATE items SET slug = 'mengoperasikan' WHERE id = '02add39f-855f-4ae7-aef4-677c1b44b8b9';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '02add39f-855f-4ae7-aef4-677c1b44b8b9' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Mengendalikan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('02add39f-855f-4ae7-aef4-677c1b44b8b9', 'Mengendalikan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '02add39f-855f-4ae7-aef4-677c1b44b8b9' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Kesucian'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('02add39f-855f-4ae7-aef4-677c1b44b8b9', 'Kesucian', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '02add39f-855f-4ae7-aef4-677c1b44b8b9' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Manipulate'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('02add39f-855f-4ae7-aef4-677c1b44b8b9', 'Manipulate', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '02add39f-855f-4ae7-aef4-677c1b44b8b9' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Chastity'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('02add39f-855f-4ae7-aef4-677c1b44b8b9', 'Chastity', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '02add39f-855f-4ae7-aef4-677c1b44b8b9' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Memanipulasi'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('02add39f-855f-4ae7-aef4-677c1b44b8b9', 'Memanipulasi', false, true);
  END IF;

  -- [KANJI] 敬 (Level 33)
  UPDATE item_meanings SET meaning = 'Menghormati', primary_meaning = true, accepted_answer = true WHERE id = '1f5aba06-46a7-4eca-bc84-21a05b8e544c';
  UPDATE items SET slug = 'menghormati' WHERE id = 'b19aeaa1-2430-4f1c-b5ca-bca4b0f6fa20';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'b19aeaa1-2430-4f1c-b5ca-bca4b0f6fa20' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Menaruh Segan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('b19aeaa1-2430-4f1c-b5ca-bca4b0f6fa20', 'Menaruh Segan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'b19aeaa1-2430-4f1c-b5ca-bca4b0f6fa20' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Respect'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('b19aeaa1-2430-4f1c-b5ca-bca4b0f6fa20', 'Respect', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'b19aeaa1-2430-4f1c-b5ca-bca4b0f6fa20' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Honor'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('b19aeaa1-2430-4f1c-b5ca-bca4b0f6fa20', 'Honor', false, true);
  END IF;

  -- [KANJI] 暮 (Level 33)
  UPDATE item_meanings SET meaning = 'Menjalani Hidup', primary_meaning = true, accepted_answer = true WHERE id = '1f222a09-87f1-47ce-8287-e2103040dad4';
  UPDATE items SET slug = 'menjalani-hidup' WHERE id = '0d1bc863-c399-4f45-baf5-b46edfb11b23';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '0d1bc863-c399-4f45-baf5-b46edfb11b23' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Senja Malam'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('0d1bc863-c399-4f45-baf5-b46edfb11b23', 'Senja Malam', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '0d1bc863-c399-4f45-baf5-b46edfb11b23' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Livelihood'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('0d1bc863-c399-4f45-baf5-b46edfb11b23', 'Livelihood', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '0d1bc863-c399-4f45-baf5-b46edfb11b23' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Live'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('0d1bc863-c399-4f45-baf5-b46edfb11b23', 'Live', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '0d1bc863-c399-4f45-baf5-b46edfb11b23' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Mata pencaharian'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('0d1bc863-c399-4f45-baf5-b46edfb11b23', 'Mata pencaharian', false, true);
  END IF;

  -- [KANJI] 蒸 (Level 33)
  UPDATE item_meanings SET meaning = 'Mengukus', primary_meaning = true, accepted_answer = true WHERE id = '93ac031f-e129-4655-8b26-e207ab54cabe';
  UPDATE items SET slug = 'mengukus' WHERE id = '23e87956-4858-437a-a992-eca54d83ff71';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '23e87956-4858-437a-a992-eca54d83ff71' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Uap Panas'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('23e87956-4858-437a-a992-eca54d83ff71', 'Uap Panas', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '23e87956-4858-437a-a992-eca54d83ff71' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Steam'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('23e87956-4858-437a-a992-eca54d83ff71', 'Steam', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '23e87956-4858-437a-a992-eca54d83ff71' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Uap'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('23e87956-4858-437a-a992-eca54d83ff71', 'Uap', false, true);
  END IF;

  -- [KANJI] 熟 (Level 33)
  UPDATE item_meanings SET meaning = 'Matang', primary_meaning = true, accepted_answer = true WHERE id = 'e2b5bf17-be02-4066-953e-517374b2cd93';
  UPDATE items SET slug = 'matang' WHERE id = 'e8f6e460-81b6-4e80-b5e1-a43b00e9ac94';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'e8f6e460-81b6-4e80-b5e1-a43b00e9ac94' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Mahir'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('e8f6e460-81b6-4e80-b5e1-a43b00e9ac94', 'Mahir', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'e8f6e460-81b6-4e80-b5e1-a43b00e9ac94' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Masak'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('e8f6e460-81b6-4e80-b5e1-a43b00e9ac94', 'Masak', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'e8f6e460-81b6-4e80-b5e1-a43b00e9ac94' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Ripen'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('e8f6e460-81b6-4e80-b5e1-a43b00e9ac94', 'Ripen', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'e8f6e460-81b6-4e80-b5e1-a43b00e9ac94' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Mature'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('e8f6e460-81b6-4e80-b5e1-a43b00e9ac94', 'Mature', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'e8f6e460-81b6-4e80-b5e1-a43b00e9ac94' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Mematangkan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('e8f6e460-81b6-4e80-b5e1-a43b00e9ac94', 'Mematangkan', false, true);
  END IF;

  -- [KANJI] 異 (Level 33)
  UPDATE item_meanings SET meaning = 'Berbeda', primary_meaning = true, accepted_answer = true WHERE id = '074b7d82-fd97-429d-9862-955af9efadc8';
  UPDATE items SET slug = 'berbeda' WHERE id = 'e638b593-06be-482e-b21b-729d679d0a28';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'e638b593-06be-482e-b21b-729d679d0a28' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Aneh'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('e638b593-06be-482e-b21b-729d679d0a28', 'Aneh', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'e638b593-06be-482e-b21b-729d679d0a28' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Lain'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('e638b593-06be-482e-b21b-729d679d0a28', 'Lain', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'e638b593-06be-482e-b21b-729d679d0a28' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Differ'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('e638b593-06be-482e-b21b-729d679d0a28', 'Differ', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'e638b593-06be-482e-b21b-729d679d0a28' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Different'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('e638b593-06be-482e-b21b-729d679d0a28', 'Different', false, true);
  END IF;

  -- [KANJI] 盛 (Level 33)
  UPDATE item_meanings SET meaning = 'Melimpah Maju', primary_meaning = true, accepted_answer = true WHERE id = '1c9b8cd9-daa8-4777-b2f1-2021d03b7d08';
  UPDATE items SET slug = 'melimpah-maju' WHERE id = '8a549299-d704-4a6a-b472-d9d6bd8ae69e';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '8a549299-d704-4a6a-b472-d9d6bd8ae69e' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Menumpuk'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('8a549299-d704-4a6a-b472-d9d6bd8ae69e', 'Menumpuk', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '8a549299-d704-4a6a-b472-d9d6bd8ae69e' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Makmur'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('8a549299-d704-4a6a-b472-d9d6bd8ae69e', 'Makmur', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '8a549299-d704-4a6a-b472-d9d6bd8ae69e' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Prosperous'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('8a549299-d704-4a6a-b472-d9d6bd8ae69e', 'Prosperous', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '8a549299-d704-4a6a-b472-d9d6bd8ae69e' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Pile Up'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('8a549299-d704-4a6a-b472-d9d6bd8ae69e', 'Pile Up', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '8a549299-d704-4a6a-b472-d9d6bd8ae69e' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Tumpukan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('8a549299-d704-4a6a-b472-d9d6bd8ae69e', 'Tumpukan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '8a549299-d704-4a6a-b472-d9d6bd8ae69e' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Head Up'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('8a549299-d704-4a6a-b472-d9d6bd8ae69e', 'Head Up', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '8a549299-d704-4a6a-b472-d9d6bd8ae69e' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Heap'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('8a549299-d704-4a6a-b472-d9d6bd8ae69e', 'Heap', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '8a549299-d704-4a6a-b472-d9d6bd8ae69e' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Pile'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('8a549299-d704-4a6a-b472-d9d6bd8ae69e', 'Pile', false, true);
  END IF;

  -- [KANJI] 筋 (Level 33)
  UPDATE item_meanings SET meaning = 'Otot', primary_meaning = true, accepted_answer = true WHERE id = '765d530a-4d3f-444a-8cc0-cb2619b9404c';
  UPDATE items SET slug = 'otot' WHERE id = '3733cda8-ecd6-4c40-88ea-6b914ddcf553';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '3733cda8-ecd6-4c40-88ea-6b914ddcf553' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Jalur Urat'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('3733cda8-ecd6-4c40-88ea-6b914ddcf553', 'Jalur Urat', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '3733cda8-ecd6-4c40-88ea-6b914ddcf553' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Alur Cerita'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('3733cda8-ecd6-4c40-88ea-6b914ddcf553', 'Alur Cerita', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '3733cda8-ecd6-4c40-88ea-6b914ddcf553' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Muscle'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('3733cda8-ecd6-4c40-88ea-6b914ddcf553', 'Muscle', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '3733cda8-ecd6-4c40-88ea-6b914ddcf553' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Tendon'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('3733cda8-ecd6-4c40-88ea-6b914ddcf553', 'Tendon', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '3733cda8-ecd6-4c40-88ea-6b914ddcf553' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Urat daging'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('3733cda8-ecd6-4c40-88ea-6b914ddcf553', 'Urat daging', false, true);
  END IF;

  -- [KANJI] 簡 (Level 33)
  UPDATE item_meanings SET meaning = 'Sederhana', primary_meaning = true, accepted_answer = true WHERE id = 'c9438fcd-acdc-48f3-96b0-07b1a3966922';
  UPDATE items SET slug = 'sederhana' WHERE id = 'e5001663-0e32-4eeb-9bba-cfb20d449d25';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'e5001663-0e32-4eeb-9bba-cfb20d449d25' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Ringkas'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('e5001663-0e32-4eeb-9bba-cfb20d449d25', 'Ringkas', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'e5001663-0e32-4eeb-9bba-cfb20d449d25' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Simple'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('e5001663-0e32-4eeb-9bba-cfb20d449d25', 'Simple', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'e5001663-0e32-4eeb-9bba-cfb20d449d25' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Simplicity'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('e5001663-0e32-4eeb-9bba-cfb20d449d25', 'Simplicity', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'e5001663-0e32-4eeb-9bba-cfb20d449d25' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Kesederhanaan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('e5001663-0e32-4eeb-9bba-cfb20d449d25', 'Kesederhanaan', false, true);
  END IF;

  -- [KANJI] 納 (Level 33)
  UPDATE item_meanings SET meaning = 'Menyerahkan', primary_meaning = true, accepted_answer = true WHERE id = '509a8c0b-a681-4327-8da7-5a3c4508b789';
  UPDATE items SET slug = 'menyerahkan' WHERE id = 'd64b6b5e-cf9a-459d-aba7-dc5551d4a5ad';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'd64b6b5e-cf9a-459d-aba7-dc5551d4a5ad' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Membayar'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('d64b6b5e-cf9a-459d-aba7-dc5551d4a5ad', 'Membayar', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'd64b6b5e-cf9a-459d-aba7-dc5551d4a5ad' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Menyimpan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('d64b6b5e-cf9a-459d-aba7-dc5551d4a5ad', 'Menyimpan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'd64b6b5e-cf9a-459d-aba7-dc5551d4a5ad' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Supply'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('d64b6b5e-cf9a-459d-aba7-dc5551d4a5ad', 'Supply', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'd64b6b5e-cf9a-459d-aba7-dc5551d4a5ad' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Store'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('d64b6b5e-cf9a-459d-aba7-dc5551d4a5ad', 'Store', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'd64b6b5e-cf9a-459d-aba7-dc5551d4a5ad' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Pay'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('d64b6b5e-cf9a-459d-aba7-dc5551d4a5ad', 'Pay', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'd64b6b5e-cf9a-459d-aba7-dc5551d4a5ad' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Memasok'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('d64b6b5e-cf9a-459d-aba7-dc5551d4a5ad', 'Memasok', false, true);
  END IF;

  -- [KANJI] 股 (Level 33)
  UPDATE item_meanings SET meaning = 'Pangkal Paha', primary_meaning = true, accepted_answer = true WHERE id = '7c724bc2-2435-4589-bf9a-7a9f42105d99';
  UPDATE items SET slug = 'pangkal-paha' WHERE id = 'bd3976fc-208e-4289-856a-9148f12568e9';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'bd3976fc-208e-4289-856a-9148f12568e9' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Selangkangan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('bd3976fc-208e-4289-856a-9148f12568e9', 'Selangkangan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'bd3976fc-208e-4289-856a-9148f12568e9' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Crotch'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('bd3976fc-208e-4289-856a-9148f12568e9', 'Crotch', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'bd3976fc-208e-4289-856a-9148f12568e9' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Groin'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('bd3976fc-208e-4289-856a-9148f12568e9', 'Groin', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'bd3976fc-208e-4289-856a-9148f12568e9' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Kunci paha'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('bd3976fc-208e-4289-856a-9148f12568e9', 'Kunci paha', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'bd3976fc-208e-4289-856a-9148f12568e9' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Garpu'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('bd3976fc-208e-4289-856a-9148f12568e9', 'Garpu', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'bd3976fc-208e-4289-856a-9148f12568e9' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Fork'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('bd3976fc-208e-4289-856a-9148f12568e9', 'Fork', false, true);
  END IF;

  -- [KANJI] 著 (Level 33)
  UPDATE item_meanings SET meaning = 'Menulis Karya', primary_meaning = true, accepted_answer = true WHERE id = '123c463f-b47c-4fd6-985d-15342cc5db77';
  UPDATE items SET slug = 'menulis-karya' WHERE id = '278583fa-091c-4d38-be51-fd33a538cc56';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '278583fa-091c-4d38-be51-fd33a538cc56' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Menonjol'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('278583fa-091c-4d38-be51-fd33a538cc56', 'Menonjol', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '278583fa-091c-4d38-be51-fd33a538cc56' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Author'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('278583fa-091c-4d38-be51-fd33a538cc56', 'Author', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '278583fa-091c-4d38-be51-fd33a538cc56' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Renowned'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('278583fa-091c-4d38-be51-fd33a538cc56', 'Renowned', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '278583fa-091c-4d38-be51-fd33a538cc56' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Pengarang'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('278583fa-091c-4d38-be51-fd33a538cc56', 'Pengarang', false, true);
  END IF;

  -- [KANJI] 装 (Level 33)
  UPDATE item_meanings SET meaning = 'Mengenakan', primary_meaning = true, accepted_answer = true WHERE id = 'add857d9-b2c3-4a55-afb6-d3aa8f2ad91d';
  UPDATE items SET slug = 'mengenakan' WHERE id = 'ddc0d502-c427-47bd-9fe9-e877593c7bb8';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'ddc0d502-c427-47bd-9fe9-e877593c7bb8' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Berpakaian'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('ddc0d502-c427-47bd-9fe9-e877593c7bb8', 'Berpakaian', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'ddc0d502-c427-47bd-9fe9-e877593c7bb8' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Perlengkapan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('ddc0d502-c427-47bd-9fe9-e877593c7bb8', 'Perlengkapan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'ddc0d502-c427-47bd-9fe9-e877593c7bb8' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Attire'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('ddc0d502-c427-47bd-9fe9-e877593c7bb8', 'Attire', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'ddc0d502-c427-47bd-9fe9-e877593c7bb8' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Clothing'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('ddc0d502-c427-47bd-9fe9-e877593c7bb8', 'Clothing', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'ddc0d502-c427-47bd-9fe9-e877593c7bb8' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Pakaian'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('ddc0d502-c427-47bd-9fe9-e877593c7bb8', 'Pakaian', false, true);
  END IF;

  -- [KANJI] 裏 (Level 33)
  UPDATE item_meanings SET meaning = 'Bagian Belakang', primary_meaning = true, accepted_answer = true WHERE id = '32737cae-8802-4090-8d85-becc17403277';
  UPDATE items SET slug = 'bagian-belakang' WHERE id = 'c5502ba2-3549-4764-ba5c-d796b7b484e4';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'c5502ba2-3549-4764-ba5c-d796b7b484e4' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Sisi Balik'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('c5502ba2-3549-4764-ba5c-d796b7b484e4', 'Sisi Balik', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'c5502ba2-3549-4764-ba5c-d796b7b484e4' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Back'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('c5502ba2-3549-4764-ba5c-d796b7b484e4', 'Back', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'c5502ba2-3549-4764-ba5c-d796b7b484e4' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Reverse'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('c5502ba2-3549-4764-ba5c-d796b7b484e4', 'Reverse', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'c5502ba2-3549-4764-ba5c-d796b7b484e4' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Belakang'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('c5502ba2-3549-4764-ba5c-d796b7b484e4', 'Belakang', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'c5502ba2-3549-4764-ba5c-d796b7b484e4' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Rear'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('c5502ba2-3549-4764-ba5c-d796b7b484e4', 'Rear', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'c5502ba2-3549-4764-ba5c-d796b7b484e4' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Bawah'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('c5502ba2-3549-4764-ba5c-d796b7b484e4', 'Bawah', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'c5502ba2-3549-4764-ba5c-d796b7b484e4' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Balik'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('c5502ba2-3549-4764-ba5c-d796b7b484e4', 'Balik', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'c5502ba2-3549-4764-ba5c-d796b7b484e4' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Backside'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('c5502ba2-3549-4764-ba5c-d796b7b484e4', 'Backside', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'c5502ba2-3549-4764-ba5c-d796b7b484e4' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Underside'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('c5502ba2-3549-4764-ba5c-d796b7b484e4', 'Underside', false, true);
  END IF;

  -- [KANJI] 誌 (Level 33)
  UPDATE item_meanings SET meaning = 'Majalah', primary_meaning = true, accepted_answer = true WHERE id = 'b3186541-df22-40ca-b48f-ed77ff09c43f';
  UPDATE items SET slug = 'majalah' WHERE id = '4d76ebd6-989d-4fc0-b1f5-37522ddb900e';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '4d76ebd6-989d-4fc0-b1f5-37522ddb900e' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Catatan Tertulis'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('4d76ebd6-989d-4fc0-b1f5-37522ddb900e', 'Catatan Tertulis', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '4d76ebd6-989d-4fc0-b1f5-37522ddb900e' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Magazine'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('4d76ebd6-989d-4fc0-b1f5-37522ddb900e', 'Magazine', false, true);
  END IF;

  -- [KANJI] 諸 (Level 33)
  UPDATE item_meanings SET meaning = 'Berbagai', primary_meaning = true, accepted_answer = true WHERE id = 'db9362a9-8bcf-4894-ba27-21a22b55e228';
  UPDATE items SET slug = 'berbagai' WHERE id = 'eaa951c2-a6c8-4bd7-b211-26c97b16ed2e';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'eaa951c2-a6c8-4bd7-b211-26c97b16ed2e' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Aneka Ragam'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('eaa951c2-a6c8-4bd7-b211-26c97b16ed2e', 'Aneka Ragam', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'eaa951c2-a6c8-4bd7-b211-26c97b16ed2e' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Various'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('eaa951c2-a6c8-4bd7-b211-26c97b16ed2e', 'Various', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'eaa951c2-a6c8-4bd7-b211-26c97b16ed2e' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Bermacam-macam'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('eaa951c2-a6c8-4bd7-b211-26c97b16ed2e', 'Bermacam-macam', false, true);
  END IF;

  -- [KANJI] 賃 (Level 33)
  UPDATE item_meanings SET meaning = 'Upah', primary_meaning = true, accepted_answer = true WHERE id = 'd2db899d-2053-4dca-9f1c-9f29655cc305';
  UPDATE items SET slug = 'upah' WHERE id = 'c32c29ed-40e3-422a-9864-0db860af3405';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'c32c29ed-40e3-422a-9864-0db860af3405' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Ongkos Sewa'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('c32c29ed-40e3-422a-9864-0db860af3405', 'Ongkos Sewa', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'c32c29ed-40e3-422a-9864-0db860af3405' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Rent'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('c32c29ed-40e3-422a-9864-0db860af3405', 'Rent', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'c32c29ed-40e3-422a-9864-0db860af3405' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Fare'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('c32c29ed-40e3-422a-9864-0db860af3405', 'Fare', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'c32c29ed-40e3-422a-9864-0db860af3405' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Menyewa'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('c32c29ed-40e3-422a-9864-0db860af3405', 'Menyewa', false, true);
  END IF;

  -- [VOCABULARY] 不振 (Level 33)
  UPDATE item_meanings SET meaning = 'Lesu', primary_meaning = true, accepted_answer = true WHERE id = '43bfa9a3-9817-475c-b96a-34271d95e891';
  UPDATE items SET slug = 'lesu' WHERE id = '2594d73e-f6c4-4027-861a-0d5e5be2b61c';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '2594d73e-f6c4-4027-861a-0d5e5be2b61c' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Terpuruk'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('2594d73e-f6c4-4027-861a-0d5e5be2b61c', 'Terpuruk', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '2594d73e-f6c4-4027-861a-0d5e5be2b61c' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Kemerosotan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('2594d73e-f6c4-4027-861a-0d5e5be2b61c', 'Kemerosotan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '2594d73e-f6c4-4027-861a-0d5e5be2b61c' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Slump'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('2594d73e-f6c4-4027-861a-0d5e5be2b61c', 'Slump', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '2594d73e-f6c4-4027-861a-0d5e5be2b61c' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Stagnation'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('2594d73e-f6c4-4027-861a-0d5e5be2b61c', 'Stagnation', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '2594d73e-f6c4-4027-861a-0d5e5be2b61c' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Downturn'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('2594d73e-f6c4-4027-861a-0d5e5be2b61c', 'Downturn', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '2594d73e-f6c4-4027-861a-0d5e5be2b61c' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Struggle'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('2594d73e-f6c4-4027-861a-0d5e5be2b61c', 'Struggle', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '2594d73e-f6c4-4027-861a-0d5e5be2b61c' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Poor Performance'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('2594d73e-f6c4-4027-861a-0d5e5be2b61c', 'Poor Performance', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '2594d73e-f6c4-4027-861a-0d5e5be2b61c' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Dullness'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('2594d73e-f6c4-4027-861a-0d5e5be2b61c', 'Dullness', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '2594d73e-f6c4-4027-861a-0d5e5be2b61c' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Dull'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('2594d73e-f6c4-4027-861a-0d5e5be2b61c', 'Dull', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '2594d73e-f6c4-4027-861a-0d5e5be2b61c' AND LOWER(TRIM(meaning)) = LOWER(TRIM('A Slump'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('2594d73e-f6c4-4027-861a-0d5e5be2b61c', 'A Slump', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '2594d73e-f6c4-4027-861a-0d5e5be2b61c' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Sluggish'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('2594d73e-f6c4-4027-861a-0d5e5be2b61c', 'Sluggish', false, true);
  END IF;

  -- [VOCABULARY] 乾かす (Level 33)
  UPDATE item_meanings SET meaning = 'Mengeringkan', primary_meaning = true, accepted_answer = true WHERE id = 'c539caf9-c930-434c-97e7-1ee34a744f65';
  UPDATE items SET slug = 'mengeringkan' WHERE id = 'c3fe6aea-5aa0-4421-9e99-a3fc6314ad7e';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'c3fe6aea-5aa0-4421-9e99-a3fc6314ad7e' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Menjemur'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('c3fe6aea-5aa0-4421-9e99-a3fc6314ad7e', 'Menjemur', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'c3fe6aea-5aa0-4421-9e99-a3fc6314ad7e' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Mengeringkan Pakaian'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('c3fe6aea-5aa0-4421-9e99-a3fc6314ad7e', 'Mengeringkan Pakaian', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'c3fe6aea-5aa0-4421-9e99-a3fc6314ad7e' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Dry'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('c3fe6aea-5aa0-4421-9e99-a3fc6314ad7e', 'To Dry', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'c3fe6aea-5aa0-4421-9e99-a3fc6314ad7e' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Mengeringkan (Pakaian'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('c3fe6aea-5aa0-4421-9e99-a3fc6314ad7e', 'Mengeringkan (Pakaian', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'c3fe6aea-5aa0-4421-9e99-a3fc6314ad7e' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Rambut)'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('c3fe6aea-5aa0-4421-9e99-a3fc6314ad7e', 'Rambut)', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'c3fe6aea-5aa0-4421-9e99-a3fc6314ad7e' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Untuk Mengeringkan Sesuatu'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('c3fe6aea-5aa0-4421-9e99-a3fc6314ad7e', 'Untuk Mengeringkan Sesuatu', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'c3fe6aea-5aa0-4421-9e99-a3fc6314ad7e' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Dry Something'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('c3fe6aea-5aa0-4421-9e99-a3fc6314ad7e', 'To Dry Something', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'c3fe6aea-5aa0-4421-9e99-a3fc6314ad7e' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Untuk Mengeringkan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('c3fe6aea-5aa0-4421-9e99-a3fc6314ad7e', 'Untuk Mengeringkan', false, true);
  END IF;

  -- [VOCABULARY] 体操 (Level 33)
  UPDATE item_meanings SET meaning = 'Senam', primary_meaning = true, accepted_answer = true WHERE id = 'df3fda2a-a302-40f7-9459-83f3577fed9e';
  UPDATE items SET slug = 'senam' WHERE id = 'db7d9095-075b-4c0f-9f8b-3e47dbb3b73a';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'db7d9095-075b-4c0f-9f8b-3e47dbb3b73a' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Kalistenik'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('db7d9095-075b-4c0f-9f8b-3e47dbb3b73a', 'Kalistenik', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'db7d9095-075b-4c0f-9f8b-3e47dbb3b73a' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Gymnastics'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('db7d9095-075b-4c0f-9f8b-3e47dbb3b73a', 'Gymnastics', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'db7d9095-075b-4c0f-9f8b-3e47dbb3b73a' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Calisthenics'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('db7d9095-075b-4c0f-9f8b-3e47dbb3b73a', 'Calisthenics', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'db7d9095-075b-4c0f-9f8b-3e47dbb3b73a' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Olahraga senam'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('db7d9095-075b-4c0f-9f8b-3e47dbb3b73a', 'Olahraga senam', false, true);
  END IF;

  -- [VOCABULARY] 僅差 (Level 33)
  UPDATE item_meanings SET meaning = 'Selisih Tipis', primary_meaning = true, accepted_answer = true WHERE id = '0bc5a349-723f-43ae-a173-370f76d475a5';
  UPDATE items SET slug = 'selisih-tipis' WHERE id = 'e3297804-b1a6-4fc0-bbd8-722bf752dd10';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'e3297804-b1a6-4fc0-bbd8-722bf752dd10' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Perbedaan Tipis'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('e3297804-b1a6-4fc0-bbd8-722bf752dd10', 'Perbedaan Tipis', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'e3297804-b1a6-4fc0-bbd8-722bf752dd10' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Margin Sempit'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('e3297804-b1a6-4fc0-bbd8-722bf752dd10', 'Margin Sempit', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'e3297804-b1a6-4fc0-bbd8-722bf752dd10' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Slim Margin'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('e3297804-b1a6-4fc0-bbd8-722bf752dd10', 'Slim Margin', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'e3297804-b1a6-4fc0-bbd8-722bf752dd10' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Narrow Margin'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('e3297804-b1a6-4fc0-bbd8-722bf752dd10', 'Narrow Margin', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'e3297804-b1a6-4fc0-bbd8-722bf752dd10' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Slim Difference'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('e3297804-b1a6-4fc0-bbd8-722bf752dd10', 'Slim Difference', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'e3297804-b1a6-4fc0-bbd8-722bf752dd10' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Small Difference'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('e3297804-b1a6-4fc0-bbd8-722bf752dd10', 'Small Difference', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'e3297804-b1a6-4fc0-bbd8-722bf752dd10' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Close'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('e3297804-b1a6-4fc0-bbd8-722bf752dd10', 'Close', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'e3297804-b1a6-4fc0-bbd8-722bf752dd10' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Narrow Difference'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('e3297804-b1a6-4fc0-bbd8-722bf752dd10', 'Narrow Difference', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'e3297804-b1a6-4fc0-bbd8-722bf752dd10' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Small Margin'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('e3297804-b1a6-4fc0-bbd8-722bf752dd10', 'Small Margin', false, true);
  END IF;

  -- [VOCABULARY] 儲ける (Level 33)
  UPDATE item_meanings SET meaning = 'Meraup Keuntungan', primary_meaning = true, accepted_answer = true WHERE id = 'fc3a0db9-2dc2-448b-9a1b-1a2161779814';
  UPDATE items SET slug = 'meraup-keuntungan' WHERE id = '87be294d-85d4-4824-a730-3c63b3c24d94';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '87be294d-85d4-4824-a730-3c63b3c24d94' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Mencetak Untung'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('87be294d-85d4-4824-a730-3c63b3c24d94', 'Mencetak Untung', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '87be294d-85d4-4824-a730-3c63b3c24d94' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Untuk Menghasilkan Untung'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('87be294d-85d4-4824-a730-3c63b3c24d94', 'Untuk Menghasilkan Untung', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '87be294d-85d4-4824-a730-3c63b3c24d94' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Make A Profit'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('87be294d-85d4-4824-a730-3c63b3c24d94', 'To Make A Profit', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '87be294d-85d4-4824-a730-3c63b3c24d94' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Earn'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('87be294d-85d4-4824-a730-3c63b3c24d94', 'To Earn', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '87be294d-85d4-4824-a730-3c63b3c24d94' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Untuk Mendapatkan Sesuatu'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('87be294d-85d4-4824-a730-3c63b3c24d94', 'Untuk Mendapatkan Sesuatu', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '87be294d-85d4-4824-a730-3c63b3c24d94' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Gain Something'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('87be294d-85d4-4824-a730-3c63b3c24d94', 'To Gain Something', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '87be294d-85d4-4824-a730-3c63b3c24d94' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Profit'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('87be294d-85d4-4824-a730-3c63b3c24d94', 'To Profit', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '87be294d-85d4-4824-a730-3c63b3c24d94' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Gain'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('87be294d-85d4-4824-a730-3c63b3c24d94', 'To Gain', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '87be294d-85d4-4824-a730-3c63b3c24d94' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Earn Money'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('87be294d-85d4-4824-a730-3c63b3c24d94', 'To Earn Money', false, true);
  END IF;

  -- [VOCABULARY] 収納 (Level 33)
  UPDATE item_meanings SET meaning = 'Penyimpanan Praktis', primary_meaning = true, accepted_answer = true WHERE id = '7a79afeb-cea1-4924-89bc-42de52690809';
  UPDATE items SET slug = 'penyimpanan-praktis' WHERE id = '97b30173-58db-4404-9822-4c4c55e5c6d2';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '97b30173-58db-4404-9822-4c4c55e5c6d2' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Merapikan Barang'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('97b30173-58db-4404-9822-4c4c55e5c6d2', 'Merapikan Barang', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '97b30173-58db-4404-9822-4c4c55e5c6d2' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Penyimpanan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('97b30173-58db-4404-9822-4c4c55e5c6d2', 'Penyimpanan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '97b30173-58db-4404-9822-4c4c55e5c6d2' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Storage'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('97b30173-58db-4404-9822-4c4c55e5c6d2', 'Storage', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '97b30173-58db-4404-9822-4c4c55e5c6d2' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Put Away'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('97b30173-58db-4404-9822-4c4c55e5c6d2', 'Put Away', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '97b30173-58db-4404-9822-4c4c55e5c6d2' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Store'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('97b30173-58db-4404-9822-4c4c55e5c6d2', 'Store', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '97b30173-58db-4404-9822-4c4c55e5c6d2' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Putting Away'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('97b30173-58db-4404-9822-4c4c55e5c6d2', 'Putting Away', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '97b30173-58db-4404-9822-4c4c55e5c6d2' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Put Something Away'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('97b30173-58db-4404-9822-4c4c55e5c6d2', 'Put Something Away', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '97b30173-58db-4404-9822-4c4c55e5c6d2' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Storing Something'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('97b30173-58db-4404-9822-4c4c55e5c6d2', 'Storing Something', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '97b30173-58db-4404-9822-4c4c55e5c6d2' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Storing'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('97b30173-58db-4404-9822-4c4c55e5c6d2', 'Storing', false, true);
  END IF;

  -- [VOCABULARY] 否定 (Level 33)
  UPDATE item_meanings SET meaning = 'Penyangkalan', primary_meaning = true, accepted_answer = true WHERE id = '4214d5a2-e6a6-4fb1-bfe3-c1a1967f78e1';
  UPDATE items SET slug = 'penyangkalan' WHERE id = '24c23a40-9f4f-4e8c-8396-1f754a6eda34';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '24c23a40-9f4f-4e8c-8396-1f754a6eda34' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Membantah'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('24c23a40-9f4f-4e8c-8396-1f754a6eda34', 'Membantah', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '24c23a40-9f4f-4e8c-8396-1f754a6eda34' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Negasi'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('24c23a40-9f4f-4e8c-8396-1f754a6eda34', 'Negasi', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '24c23a40-9f4f-4e8c-8396-1f754a6eda34' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Denial'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('24c23a40-9f4f-4e8c-8396-1f754a6eda34', 'Denial', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '24c23a40-9f4f-4e8c-8396-1f754a6eda34' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Negation'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('24c23a40-9f4f-4e8c-8396-1f754a6eda34', 'Negation', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '24c23a40-9f4f-4e8c-8396-1f754a6eda34' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Denying'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('24c23a40-9f4f-4e8c-8396-1f754a6eda34', 'Denying', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '24c23a40-9f4f-4e8c-8396-1f754a6eda34' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Saying No'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('24c23a40-9f4f-4e8c-8396-1f754a6eda34', 'Saying No', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '24c23a40-9f4f-4e8c-8396-1f754a6eda34' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Negative'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('24c23a40-9f4f-4e8c-8396-1f754a6eda34', 'Negative', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '24c23a40-9f4f-4e8c-8396-1f754a6eda34' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Deny'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('24c23a40-9f4f-4e8c-8396-1f754a6eda34', 'Deny', false, true);
  END IF;

  -- [VOCABULARY] 噂 (Level 33)
  UPDATE item_meanings SET meaning = 'Gosip', primary_meaning = true, accepted_answer = true WHERE id = '343096e7-0e5b-454f-bc39-28f4f498e39f';
  UPDATE items SET slug = 'gosip' WHERE id = '944ac3bd-6a85-46b9-9fec-696d5afc3414';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '944ac3bd-6a85-46b9-9fec-696d5afc3414' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Desas-desus'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('944ac3bd-6a85-46b9-9fec-696d5afc3414', 'Desas-desus', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '944ac3bd-6a85-46b9-9fec-696d5afc3414' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Rumor'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('944ac3bd-6a85-46b9-9fec-696d5afc3414', 'Rumor', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '944ac3bd-6a85-46b9-9fec-696d5afc3414' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Isu'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('944ac3bd-6a85-46b9-9fec-696d5afc3414', 'Isu', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '944ac3bd-6a85-46b9-9fec-696d5afc3414' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Gossip'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('944ac3bd-6a85-46b9-9fec-696d5afc3414', 'Gossip', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '944ac3bd-6a85-46b9-9fec-696d5afc3414' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Rumour'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('944ac3bd-6a85-46b9-9fec-696d5afc3414', 'Rumour', false, true);
  END IF;

  -- [VOCABULARY] 園 (Level 33)
  UPDATE item_meanings SET meaning = 'Kebun', primary_meaning = true, accepted_answer = true WHERE id = '9915a24f-929e-4472-818a-a2a1f20c8c69';
  UPDATE items SET slug = 'kebun' WHERE id = 'e15d6c99-b78b-4ef2-9c29-c2b2f85d381e';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'e15d6c99-b78b-4ef2-9c29-c2b2f85d381e' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Taman'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('e15d6c99-b78b-4ef2-9c29-c2b2f85d381e', 'Taman', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'e15d6c99-b78b-4ef2-9c29-c2b2f85d381e' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Institusi Anak'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('e15d6c99-b78b-4ef2-9c29-c2b2f85d381e', 'Institusi Anak', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'e15d6c99-b78b-4ef2-9c29-c2b2f85d381e' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Garden'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('e15d6c99-b78b-4ef2-9c29-c2b2f85d381e', 'Garden', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'e15d6c99-b78b-4ef2-9c29-c2b2f85d381e' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Kindergarten'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('e15d6c99-b78b-4ef2-9c29-c2b2f85d381e', 'Kindergarten', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'e15d6c99-b78b-4ef2-9c29-c2b2f85d381e' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Park'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('e15d6c99-b78b-4ef2-9c29-c2b2f85d381e', 'Park', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'e15d6c99-b78b-4ef2-9c29-c2b2f85d381e' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Nursery'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('e15d6c99-b78b-4ef2-9c29-c2b2f85d381e', 'Nursery', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'e15d6c99-b78b-4ef2-9c29-c2b2f85d381e' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Orchard'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('e15d6c99-b78b-4ef2-9c29-c2b2f85d381e', 'Orchard', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'e15d6c99-b78b-4ef2-9c29-c2b2f85d381e' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Daycare'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('e15d6c99-b78b-4ef2-9c29-c2b2f85d381e', 'Daycare', false, true);
  END IF;

  -- [VOCABULARY] 変装 (Level 33)
  UPDATE item_meanings SET meaning = 'Menyamar', primary_meaning = true, accepted_answer = true WHERE id = '1edbb498-0757-4d91-b95d-1b8236462167';
  UPDATE items SET slug = 'menyamar' WHERE id = 'ed1f0175-1084-4f72-b1d0-1a1485259e0b';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'ed1f0175-1084-4f72-b1d0-1a1485259e0b' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Mengubah Penampilan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('ed1f0175-1084-4f72-b1d0-1a1485259e0b', 'Mengubah Penampilan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'ed1f0175-1084-4f72-b1d0-1a1485259e0b' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Samaran'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('ed1f0175-1084-4f72-b1d0-1a1485259e0b', 'Samaran', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'ed1f0175-1084-4f72-b1d0-1a1485259e0b' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Disguise'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('ed1f0175-1084-4f72-b1d0-1a1485259e0b', 'Disguise', false, true);
  END IF;

  -- [VOCABULARY] 妨げる (Level 33)
  UPDATE item_meanings SET meaning = 'Merintangi', primary_meaning = true, accepted_answer = true WHERE id = 'a7c13dc8-17be-4506-bdf6-a5c4876f8ad4';
  UPDATE items SET slug = 'merintangi' WHERE id = '264a7277-cf9b-47c3-a9fa-846b95f9cf44';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '264a7277-cf9b-47c3-a9fa-846b95f9cf44' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Menghalangi'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('264a7277-cf9b-47c3-a9fa-846b95f9cf44', 'Menghalangi', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '264a7277-cf9b-47c3-a9fa-846b95f9cf44' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Untuk Menghalangi'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('264a7277-cf9b-47c3-a9fa-846b95f9cf44', 'Untuk Menghalangi', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '264a7277-cf9b-47c3-a9fa-846b95f9cf44' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Obstruct'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('264a7277-cf9b-47c3-a9fa-846b95f9cf44', 'To Obstruct', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '264a7277-cf9b-47c3-a9fa-846b95f9cf44' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Prevent'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('264a7277-cf9b-47c3-a9fa-846b95f9cf44', 'To Prevent', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '264a7277-cf9b-47c3-a9fa-846b95f9cf44' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Untuk Mencegah'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('264a7277-cf9b-47c3-a9fa-846b95f9cf44', 'Untuk Mencegah', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '264a7277-cf9b-47c3-a9fa-846b95f9cf44' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Untuk menghambat'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('264a7277-cf9b-47c3-a9fa-846b95f9cf44', 'Untuk menghambat', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '264a7277-cf9b-47c3-a9fa-846b95f9cf44' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Hamper'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('264a7277-cf9b-47c3-a9fa-846b95f9cf44', 'To Hamper', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '264a7277-cf9b-47c3-a9fa-846b95f9cf44' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Obstruct Something'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('264a7277-cf9b-47c3-a9fa-846b95f9cf44', 'To Obstruct Something', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '264a7277-cf9b-47c3-a9fa-846b95f9cf44' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Prevent Something'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('264a7277-cf9b-47c3-a9fa-846b95f9cf44', 'To Prevent Something', false, true);
  END IF;

  -- [VOCABULARY] 宣伝 (Level 33)
  UPDATE item_meanings SET meaning = 'Iklan Promosi', primary_meaning = true, accepted_answer = true WHERE id = '61a14364-50d9-46f7-81af-7f40405af25c';
  UPDATE items SET slug = 'iklan-promosi' WHERE id = 'e701ae03-7abe-4470-919e-37a9def73936';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'e701ae03-7abe-4470-919e-37a9def73936' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Propaganda'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('e701ae03-7abe-4470-919e-37a9def73936', 'Propaganda', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'e701ae03-7abe-4470-919e-37a9def73936' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Periklanan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('e701ae03-7abe-4470-919e-37a9def73936', 'Periklanan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'e701ae03-7abe-4470-919e-37a9def73936' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Advertising'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('e701ae03-7abe-4470-919e-37a9def73936', 'Advertising', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'e701ae03-7abe-4470-919e-37a9def73936' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Promotion'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('e701ae03-7abe-4470-919e-37a9def73936', 'Promotion', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'e701ae03-7abe-4470-919e-37a9def73936' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Publicity'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('e701ae03-7abe-4470-919e-37a9def73936', 'Publicity', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'e701ae03-7abe-4470-919e-37a9def73936' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Promosi'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('e701ae03-7abe-4470-919e-37a9def73936', 'Promosi', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'e701ae03-7abe-4470-919e-37a9def73936' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Publicizing'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('e701ae03-7abe-4470-919e-37a9def73936', 'Publicizing', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'e701ae03-7abe-4470-919e-37a9def73936' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Promoting'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('e701ae03-7abe-4470-919e-37a9def73936', 'Promoting', false, true);
  END IF;

  -- [VOCABULARY] 宣言 (Level 33)
  UPDATE item_meanings SET meaning = 'Deklarasi', primary_meaning = true, accepted_answer = true WHERE id = 'ee3e9a99-abbf-41f6-bb11-6be3d7fa6d05';
  UPDATE items SET slug = 'deklarasi' WHERE id = 'c706d458-0154-40fa-9adf-97374588fa6c';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'c706d458-0154-40fa-9adf-97374588fa6c' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Proklamasi'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('c706d458-0154-40fa-9adf-97374588fa6c', 'Proklamasi', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'c706d458-0154-40fa-9adf-97374588fa6c' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Pernyataan Resmi'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('c706d458-0154-40fa-9adf-97374588fa6c', 'Pernyataan Resmi', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'c706d458-0154-40fa-9adf-97374588fa6c' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Declaration'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('c706d458-0154-40fa-9adf-97374588fa6c', 'Declaration', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'c706d458-0154-40fa-9adf-97374588fa6c' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Proclamation'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('c706d458-0154-40fa-9adf-97374588fa6c', 'Proclamation', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'c706d458-0154-40fa-9adf-97374588fa6c' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Declaring'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('c706d458-0154-40fa-9adf-97374588fa6c', 'Declaring', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'c706d458-0154-40fa-9adf-97374588fa6c' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Announcing'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('c706d458-0154-40fa-9adf-97374588fa6c', 'Announcing', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'c706d458-0154-40fa-9adf-97374588fa6c' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Pernyataan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('c706d458-0154-40fa-9adf-97374588fa6c', 'Pernyataan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'c706d458-0154-40fa-9adf-97374588fa6c' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Announcement'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('c706d458-0154-40fa-9adf-97374588fa6c', 'Announcement', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'c706d458-0154-40fa-9adf-97374588fa6c' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Proclaim'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('c706d458-0154-40fa-9adf-97374588fa6c', 'Proclaim', false, true);
  END IF;

  -- [VOCABULARY] 家賃 (Level 33)
  UPDATE item_meanings SET meaning = 'Uang Sewa Rumah', primary_meaning = true, accepted_answer = true WHERE id = 'fc26e5c9-bf71-4951-8edd-5c2e8bfef6fc';
  UPDATE items SET slug = 'uang-sewa-rumah' WHERE id = '69d2b08c-0417-4dbe-80c4-e1bc97a6b1dc';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '69d2b08c-0417-4dbe-80c4-e1bc97a6b1dc' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Kontrakan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('69d2b08c-0417-4dbe-80c4-e1bc97a6b1dc', 'Kontrakan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '69d2b08c-0417-4dbe-80c4-e1bc97a6b1dc' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Sewa Rumah'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('69d2b08c-0417-4dbe-80c4-e1bc97a6b1dc', 'Sewa Rumah', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '69d2b08c-0417-4dbe-80c4-e1bc97a6b1dc' AND LOWER(TRIM(meaning)) = LOWER(TRIM('House Rent'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('69d2b08c-0417-4dbe-80c4-e1bc97a6b1dc', 'House Rent', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '69d2b08c-0417-4dbe-80c4-e1bc97a6b1dc' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Rent'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('69d2b08c-0417-4dbe-80c4-e1bc97a6b1dc', 'Rent', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '69d2b08c-0417-4dbe-80c4-e1bc97a6b1dc' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Menyewa'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('69d2b08c-0417-4dbe-80c4-e1bc97a6b1dc', 'Menyewa', false, true);
  END IF;

  -- [VOCABULARY] 尊い (Level 33)
  UPDATE item_meanings SET meaning = 'Sangat Mulia', primary_meaning = true, accepted_answer = true WHERE id = '5a9f66bf-ef98-4c1d-a4c3-ef5ad2e7b180';
  UPDATE items SET slug = 'sangat-mulia' WHERE id = '19826aae-9a2c-4e40-9713-2a825d56e9f2';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '19826aae-9a2c-4e40-9713-2a825d56e9f2' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Berharga Luhur'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('19826aae-9a2c-4e40-9713-2a825d56e9f2', 'Berharga Luhur', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '19826aae-9a2c-4e40-9713-2a825d56e9f2' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Dihormati'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('19826aae-9a2c-4e40-9713-2a825d56e9f2', 'Dihormati', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '19826aae-9a2c-4e40-9713-2a825d56e9f2' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Precious'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('19826aae-9a2c-4e40-9713-2a825d56e9f2', 'Precious', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '19826aae-9a2c-4e40-9713-2a825d56e9f2' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Noble'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('19826aae-9a2c-4e40-9713-2a825d56e9f2', 'Noble', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '19826aae-9a2c-4e40-9713-2a825d56e9f2' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Berharga'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('19826aae-9a2c-4e40-9713-2a825d56e9f2', 'Berharga', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '19826aae-9a2c-4e40-9713-2a825d56e9f2' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Revered'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('19826aae-9a2c-4e40-9713-2a825d56e9f2', 'Revered', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '19826aae-9a2c-4e40-9713-2a825d56e9f2' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Valuable'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('19826aae-9a2c-4e40-9713-2a825d56e9f2', 'Valuable', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '19826aae-9a2c-4e40-9713-2a825d56e9f2' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Bangsawan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('19826aae-9a2c-4e40-9713-2a825d56e9f2', 'Bangsawan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '19826aae-9a2c-4e40-9713-2a825d56e9f2' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Sacred'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('19826aae-9a2c-4e40-9713-2a825d56e9f2', 'Sacred', false, true);
  END IF;

  -- [VOCABULARY] 尊敬 (Level 33)
  UPDATE item_meanings SET meaning = 'Menghormati', primary_meaning = true, accepted_answer = true WHERE id = '80570c2a-ec85-476e-b757-0d4bcf70f549';
  UPDATE items SET slug = 'menghormati' WHERE id = '7aea6829-2ecc-48cc-9027-ab990ea6ccf5';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '7aea6829-2ecc-48cc-9027-ab990ea6ccf5' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Rasa Hormat'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('7aea6829-2ecc-48cc-9027-ab990ea6ccf5', 'Rasa Hormat', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '7aea6829-2ecc-48cc-9027-ab990ea6ccf5' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Respect'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('7aea6829-2ecc-48cc-9027-ab990ea6ccf5', 'Respect', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '7aea6829-2ecc-48cc-9027-ab990ea6ccf5' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Honor'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('7aea6829-2ecc-48cc-9027-ab990ea6ccf5', 'Honor', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '7aea6829-2ecc-48cc-9027-ab990ea6ccf5' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Reverence'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('7aea6829-2ecc-48cc-9027-ab990ea6ccf5', 'Reverence', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '7aea6829-2ecc-48cc-9027-ab990ea6ccf5' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Esteem'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('7aea6829-2ecc-48cc-9027-ab990ea6ccf5', 'Esteem', false, true);
  END IF;

  -- [VOCABULARY] 屁 (Level 33)
  UPDATE item_meanings SET meaning = 'Kentut', primary_meaning = true, accepted_answer = true WHERE id = 'df87dba0-21d4-43d0-bb1a-c7cece7b106f';
  UPDATE items SET slug = 'kentut' WHERE id = '84c21905-9271-4193-95d0-b65edf5fb948';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '84c21905-9271-4193-95d0-b65edf5fb948' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Angin Perut'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('84c21905-9271-4193-95d0-b65edf5fb948', 'Angin Perut', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '84c21905-9271-4193-95d0-b65edf5fb948' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Perut kembung'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('84c21905-9271-4193-95d0-b65edf5fb948', 'Perut kembung', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '84c21905-9271-4193-95d0-b65edf5fb948' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Fart'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('84c21905-9271-4193-95d0-b65edf5fb948', 'Fart', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '84c21905-9271-4193-95d0-b65edf5fb948' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Flatulence'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('84c21905-9271-4193-95d0-b65edf5fb948', 'Flatulence', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '84c21905-9271-4193-95d0-b65edf5fb948' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Wind'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('84c21905-9271-4193-95d0-b65edf5fb948', 'Wind', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '84c21905-9271-4193-95d0-b65edf5fb948' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Gas'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('84c21905-9271-4193-95d0-b65edf5fb948', 'Gas', false, true);
  END IF;

  -- [VOCABULARY] 屁理屈 (Level 33)
  UPDATE item_meanings SET meaning = 'Cari-cari Alasan', primary_meaning = true, accepted_answer = true WHERE id = '5bed78a9-c885-4897-889c-3fe015a6c00f';
  UPDATE items SET slug = 'cari-cari-alasan' WHERE id = 'd7f591e5-ad39-4fd6-99a4-e6f66ccb85b4';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'd7f591e5-ad39-4fd6-99a4-e6f66ccb85b4' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Dalih Mengada-ada'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('d7f591e5-ad39-4fd6-99a4-e6f66ccb85b4', 'Dalih Mengada-ada', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'd7f591e5-ad39-4fd6-99a4-e6f66ccb85b4' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Argumen yang Tidak Logis'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('d7f591e5-ad39-4fd6-99a4-e6f66ccb85b4', 'Argumen yang Tidak Logis', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'd7f591e5-ad39-4fd6-99a4-e6f66ccb85b4' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Quibbling'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('d7f591e5-ad39-4fd6-99a4-e6f66ccb85b4', 'Quibbling', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'd7f591e5-ad39-4fd6-99a4-e6f66ccb85b4' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Lame Excuse'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('d7f591e5-ad39-4fd6-99a4-e6f66ccb85b4', 'Lame Excuse', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'd7f591e5-ad39-4fd6-99a4-e6f66ccb85b4' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Quibble'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('d7f591e5-ad39-4fd6-99a4-e6f66ccb85b4', 'Quibble', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'd7f591e5-ad39-4fd6-99a4-e6f66ccb85b4' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Twisted Logic'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('d7f591e5-ad39-4fd6-99a4-e6f66ccb85b4', 'Twisted Logic', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'd7f591e5-ad39-4fd6-99a4-e6f66ccb85b4' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Alasan yang payah'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('d7f591e5-ad39-4fd6-99a4-e6f66ccb85b4', 'Alasan yang payah', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'd7f591e5-ad39-4fd6-99a4-e6f66ccb85b4' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Illogical Argument'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('d7f591e5-ad39-4fd6-99a4-e6f66ccb85b4', 'Illogical Argument', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'd7f591e5-ad39-4fd6-99a4-e6f66ccb85b4' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Far-Fetched Argument'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('d7f591e5-ad39-4fd6-99a4-e6f66ccb85b4', 'Far-Fetched Argument', false, true);
  END IF;

  -- [VOCABULARY] 居候 (Level 33)
  UPDATE item_meanings SET meaning = 'Numpang Hidup', primary_meaning = true, accepted_answer = true WHERE id = '828a0c2b-45fa-4191-9117-b402b44780e3';
  UPDATE items SET slug = 'numpang-hidup' WHERE id = 'd9157ac9-8ac7-45bf-881f-a00aebf14a05';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'd9157ac9-8ac7-45bf-881f-a00aebf14a05' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Menumpang Tinggal'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('d9157ac9-8ac7-45bf-881f-a00aebf14a05', 'Menumpang Tinggal', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'd9157ac9-8ac7-45bf-881f-a00aebf14a05' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Tukang bonceng'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('d9157ac9-8ac7-45bf-881f-a00aebf14a05', 'Tukang bonceng', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'd9157ac9-8ac7-45bf-881f-a00aebf14a05' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Freeloader'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('d9157ac9-8ac7-45bf-881f-a00aebf14a05', 'Freeloader', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'd9157ac9-8ac7-45bf-881f-a00aebf14a05' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Sponger'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('d9157ac9-8ac7-45bf-881f-a00aebf14a05', 'Sponger', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'd9157ac9-8ac7-45bf-881f-a00aebf14a05' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Lodger Who Pays Nothing'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('d9157ac9-8ac7-45bf-881f-a00aebf14a05', 'Lodger Who Pays Nothing', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'd9157ac9-8ac7-45bf-881f-a00aebf14a05' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Scrounger'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('d9157ac9-8ac7-45bf-881f-a00aebf14a05', 'Scrounger', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'd9157ac9-8ac7-45bf-881f-a00aebf14a05' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Dependent'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('d9157ac9-8ac7-45bf-881f-a00aebf14a05', 'Dependent', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'd9157ac9-8ac7-45bf-881f-a00aebf14a05' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Pemondok yang Tidak Membayar Apa Pun'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('d9157ac9-8ac7-45bf-881f-a00aebf14a05', 'Pemondok yang Tidak Membayar Apa Pun', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'd9157ac9-8ac7-45bf-881f-a00aebf14a05' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Guest'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('d9157ac9-8ac7-45bf-881f-a00aebf14a05', 'Guest', false, true);
  END IF;

  -- [VOCABULARY] 年次 (Level 33)
  UPDATE item_meanings SET meaning = 'Tahunan', primary_meaning = true, accepted_answer = true WHERE id = '9f1933e5-129c-4d56-9fb6-be5f2fe891f2';
  UPDATE items SET slug = 'tahunan' WHERE id = '7208f39a-f460-4011-8e44-a4cbaa3d44e1';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '7208f39a-f460-4011-8e44-a4cbaa3d44e1' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Berdasarkan Tahun'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('7208f39a-f460-4011-8e44-a4cbaa3d44e1', 'Berdasarkan Tahun', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '7208f39a-f460-4011-8e44-a4cbaa3d44e1' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Annual'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('7208f39a-f460-4011-8e44-a4cbaa3d44e1', 'Annual', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '7208f39a-f460-4011-8e44-a4cbaa3d44e1' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Yearly'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('7208f39a-f460-4011-8e44-a4cbaa3d44e1', 'Yearly', false, true);
  END IF;

  -- [VOCABULARY] 忠告 (Level 33)
  UPDATE item_meanings SET meaning = 'Nasihat Peringatan', primary_meaning = true, accepted_answer = true WHERE id = '937c80e3-ed9f-4c07-8893-ded27cb3ff51';
  UPDATE items SET slug = 'nasihat-peringatan' WHERE id = 'b0718c92-041a-4d6f-b6c0-66fe16f01b15';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'b0718c92-041a-4d6f-b6c0-66fe16f01b15' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Petuah'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('b0718c92-041a-4d6f-b6c0-66fe16f01b15', 'Petuah', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'b0718c92-041a-4d6f-b6c0-66fe16f01b15' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Nasihat'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('b0718c92-041a-4d6f-b6c0-66fe16f01b15', 'Nasihat', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'b0718c92-041a-4d6f-b6c0-66fe16f01b15' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Warning'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('b0718c92-041a-4d6f-b6c0-66fe16f01b15', 'Warning', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'b0718c92-041a-4d6f-b6c0-66fe16f01b15' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Advice'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('b0718c92-041a-4d6f-b6c0-66fe16f01b15', 'Advice', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'b0718c92-041a-4d6f-b6c0-66fe16f01b15' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Pengingatan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('b0718c92-041a-4d6f-b6c0-66fe16f01b15', 'Pengingatan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'b0718c92-041a-4d6f-b6c0-66fe16f01b15' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Admonishment'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('b0718c92-041a-4d6f-b6c0-66fe16f01b15', 'Admonishment', false, true);
  END IF;

  -- [VOCABULARY] 成熟 (Level 33)
  UPDATE item_meanings SET meaning = 'Kedewasaan', primary_meaning = true, accepted_answer = true WHERE id = 'e4685aab-bc48-473f-98a4-0ee5af56cba9';
  UPDATE items SET slug = 'kedewasaan' WHERE id = '4feca231-421e-4556-9aef-914f2cb18413';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '4feca231-421e-4556-9aef-914f2cb18413' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Menjadi Matang Sempurna'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('4feca231-421e-4556-9aef-914f2cb18413', 'Menjadi Matang Sempurna', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '4feca231-421e-4556-9aef-914f2cb18413' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Mematangkan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('4feca231-421e-4556-9aef-914f2cb18413', 'Mematangkan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '4feca231-421e-4556-9aef-914f2cb18413' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Maturity'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('4feca231-421e-4556-9aef-914f2cb18413', 'Maturity', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '4feca231-421e-4556-9aef-914f2cb18413' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Ripeness'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('4feca231-421e-4556-9aef-914f2cb18413', 'Ripeness', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '4feca231-421e-4556-9aef-914f2cb18413' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Dewasa'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('4feca231-421e-4556-9aef-914f2cb18413', 'Dewasa', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '4feca231-421e-4556-9aef-914f2cb18413' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Kematangan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('4feca231-421e-4556-9aef-914f2cb18413', 'Kematangan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '4feca231-421e-4556-9aef-914f2cb18413' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Ripen'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('4feca231-421e-4556-9aef-914f2cb18413', 'Ripen', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '4feca231-421e-4556-9aef-914f2cb18413' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Mature'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('4feca231-421e-4556-9aef-914f2cb18413', 'Mature', false, true);
  END IF;

  -- [VOCABULARY] 拡がる (Level 33)
  UPDATE item_meanings SET meaning = 'Meluas', primary_meaning = true, accepted_answer = true WHERE id = '08fcb47d-7f2a-4012-ae98-a53913d28bd4';
  UPDATE items SET slug = 'meluas' WHERE id = 'b754301d-4d8b-417b-8420-31fb9c829309';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'b754301d-4d8b-417b-8420-31fb9c829309' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Membentang Lebar'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('b754301d-4d8b-417b-8420-31fb9c829309', 'Membentang Lebar', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'b754301d-4d8b-417b-8420-31fb9c829309' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Untuk Memperluas'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('b754301d-4d8b-417b-8420-31fb9c829309', 'Untuk Memperluas', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'b754301d-4d8b-417b-8420-31fb9c829309' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Spread'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('b754301d-4d8b-417b-8420-31fb9c829309', 'To Spread', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'b754301d-4d8b-417b-8420-31fb9c829309' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Extend'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('b754301d-4d8b-417b-8420-31fb9c829309', 'To Extend', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'b754301d-4d8b-417b-8420-31fb9c829309' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Stretch'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('b754301d-4d8b-417b-8420-31fb9c829309', 'To Stretch', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'b754301d-4d8b-417b-8420-31fb9c829309' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Untuk Menyebar'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('b754301d-4d8b-417b-8420-31fb9c829309', 'Untuk Menyebar', false, true);
  END IF;

  -- [VOCABULARY] 拡大 (Level 33)
  UPDATE item_meanings SET meaning = 'Pembesaran', primary_meaning = true, accepted_answer = true WHERE id = 'a2007eef-390a-4fdb-81cf-203b1c78cd24';
  UPDATE items SET slug = 'pembesaran' WHERE id = '1ef2bfdd-0ccf-4766-8930-4092e70181b8';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '1ef2bfdd-0ccf-4766-8930-4092e70181b8' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Perluasan Skala'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('1ef2bfdd-0ccf-4766-8930-4092e70181b8', 'Perluasan Skala', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '1ef2bfdd-0ccf-4766-8930-4092e70181b8' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Perbesar'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('1ef2bfdd-0ccf-4766-8930-4092e70181b8', 'Perbesar', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '1ef2bfdd-0ccf-4766-8930-4092e70181b8' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Enlargement'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('1ef2bfdd-0ccf-4766-8930-4092e70181b8', 'Enlargement', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '1ef2bfdd-0ccf-4766-8930-4092e70181b8' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Expansion'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('1ef2bfdd-0ccf-4766-8930-4092e70181b8', 'Expansion', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '1ef2bfdd-0ccf-4766-8930-4092e70181b8' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Zoom'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('1ef2bfdd-0ccf-4766-8930-4092e70181b8', 'Zoom', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '1ef2bfdd-0ccf-4766-8930-4092e70181b8' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Magnification'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('1ef2bfdd-0ccf-4766-8930-4092e70181b8', 'Magnification', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '1ef2bfdd-0ccf-4766-8930-4092e70181b8' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Magnify'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('1ef2bfdd-0ccf-4766-8930-4092e70181b8', 'Magnify', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '1ef2bfdd-0ccf-4766-8930-4092e70181b8' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Enlarge'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('1ef2bfdd-0ccf-4766-8930-4092e70181b8', 'Enlarge', false, true);
  END IF;

  -- [VOCABULARY] 拡張 (Level 33)
  UPDATE item_meanings SET meaning = 'Ekspansi', primary_meaning = true, accepted_answer = true WHERE id = '0dde0b51-fb04-4571-8730-bee7ec6ecbc1';
  UPDATE items SET slug = 'ekspansi' WHERE id = '020f793d-99a8-4cbb-b588-6babbf374d43';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '020f793d-99a8-4cbb-b588-6babbf374d43' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Pelebaran Jangkauan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('020f793d-99a8-4cbb-b588-6babbf374d43', 'Pelebaran Jangkauan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '020f793d-99a8-4cbb-b588-6babbf374d43' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Pembesaran'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('020f793d-99a8-4cbb-b588-6babbf374d43', 'Pembesaran', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '020f793d-99a8-4cbb-b588-6babbf374d43' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Expansion'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('020f793d-99a8-4cbb-b588-6babbf374d43', 'Expansion', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '020f793d-99a8-4cbb-b588-6babbf374d43' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Extension'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('020f793d-99a8-4cbb-b588-6babbf374d43', 'Extension', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '020f793d-99a8-4cbb-b588-6babbf374d43' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Expand'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('020f793d-99a8-4cbb-b588-6babbf374d43', 'Expand', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '020f793d-99a8-4cbb-b588-6babbf374d43' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Enlargement'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('020f793d-99a8-4cbb-b588-6babbf374d43', 'Enlargement', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '020f793d-99a8-4cbb-b588-6babbf374d43' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Perpanjangan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('020f793d-99a8-4cbb-b588-6babbf374d43', 'Perpanjangan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '020f793d-99a8-4cbb-b588-6babbf374d43' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Enlarge'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('020f793d-99a8-4cbb-b588-6babbf374d43', 'Enlarge', false, true);
  END IF;

  -- [VOCABULARY] 拭う (Level 33)
  UPDATE item_meanings SET meaning = 'Menyeka', primary_meaning = true, accepted_answer = true WHERE id = 'c0aeed67-1916-4739-9e0e-a25ba1deb995';
  UPDATE items SET slug = 'menyeka' WHERE id = 'a8c4554b-102a-4e79-9cb0-247f8c1e9fe8';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'a8c4554b-102a-4e79-9cb0-247f8c1e9fe8' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Menghapus Air Mata'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('a8c4554b-102a-4e79-9cb0-247f8c1e9fe8', 'Menghapus Air Mata', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'a8c4554b-102a-4e79-9cb0-247f8c1e9fe8' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Keringat'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('a8c4554b-102a-4e79-9cb0-247f8c1e9fe8', 'Keringat', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'a8c4554b-102a-4e79-9cb0-247f8c1e9fe8' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Untuk Menghapus'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('a8c4554b-102a-4e79-9cb0-247f8c1e9fe8', 'Untuk Menghapus', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'a8c4554b-102a-4e79-9cb0-247f8c1e9fe8' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Wipe Off'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('a8c4554b-102a-4e79-9cb0-247f8c1e9fe8', 'To Wipe Off', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'a8c4554b-102a-4e79-9cb0-247f8c1e9fe8' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Mop'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('a8c4554b-102a-4e79-9cb0-247f8c1e9fe8', 'To Mop', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'a8c4554b-102a-4e79-9cb0-247f8c1e9fe8' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Wipe Something'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('a8c4554b-102a-4e79-9cb0-247f8c1e9fe8', 'To Wipe Something', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'a8c4554b-102a-4e79-9cb0-247f8c1e9fe8' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Untuk Mengepel'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('a8c4554b-102a-4e79-9cb0-247f8c1e9fe8', 'Untuk Mengepel', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'a8c4554b-102a-4e79-9cb0-247f8c1e9fe8' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Wipe'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('a8c4554b-102a-4e79-9cb0-247f8c1e9fe8', 'To Wipe', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'a8c4554b-102a-4e79-9cb0-247f8c1e9fe8' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Mop Up'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('a8c4554b-102a-4e79-9cb0-247f8c1e9fe8', 'To Mop Up', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'a8c4554b-102a-4e79-9cb0-247f8c1e9fe8' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Wipe Up'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('a8c4554b-102a-4e79-9cb0-247f8c1e9fe8', 'To Wipe Up', false, true);
  END IF;

  -- [VOCABULARY] 捕える (Level 33)
  UPDATE item_meanings SET meaning = 'Menangkap', primary_meaning = true, accepted_answer = true WHERE id = '4ee0bf48-59a9-4938-ad71-04cbd652eefa';
  UPDATE items SET slug = 'menangkap' WHERE id = '313baa05-fd8a-423c-91dd-457192893854';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '313baa05-fd8a-423c-91dd-457192893854' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Membekuk'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('313baa05-fd8a-423c-91dd-457192893854', 'Membekuk', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '313baa05-fd8a-423c-91dd-457192893854' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Untuk Menangkap'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('313baa05-fd8a-423c-91dd-457192893854', 'Untuk Menangkap', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '313baa05-fd8a-423c-91dd-457192893854' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Catch'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('313baa05-fd8a-423c-91dd-457192893854', 'To Catch', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '313baa05-fd8a-423c-91dd-457192893854' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Seize'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('313baa05-fd8a-423c-91dd-457192893854', 'To Seize', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '313baa05-fd8a-423c-91dd-457192893854' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Grasp'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('313baa05-fd8a-423c-91dd-457192893854', 'To Grasp', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '313baa05-fd8a-423c-91dd-457192893854' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Grab Someone'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('313baa05-fd8a-423c-91dd-457192893854', 'To Grab Someone', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '313baa05-fd8a-423c-91dd-457192893854' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Grasp Someone'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('313baa05-fd8a-423c-91dd-457192893854', 'To Grasp Someone', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '313baa05-fd8a-423c-91dd-457192893854' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Seize Someone'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('313baa05-fd8a-423c-91dd-457192893854', 'To Seize Someone', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '313baa05-fd8a-423c-91dd-457192893854' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Apprehend Someone'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('313baa05-fd8a-423c-91dd-457192893854', 'To Apprehend Someone', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '313baa05-fd8a-423c-91dd-457192893854' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Capture'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('313baa05-fd8a-423c-91dd-457192893854', 'To Capture', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '313baa05-fd8a-423c-91dd-457192893854' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Apprehend'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('313baa05-fd8a-423c-91dd-457192893854', 'To Apprehend', false, true);
  END IF;

  -- [VOCABULARY] 掃除する (Level 33)
  UPDATE item_meanings SET meaning = 'Membersihkan', primary_meaning = true, accepted_answer = true WHERE id = '27f4d1e0-9931-4f7d-b7b8-cef6a44d6c3d';
  UPDATE items SET slug = 'membersihkan' WHERE id = '929d94c6-f2e3-466d-879c-2db38ecb2962';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '929d94c6-f2e3-466d-879c-2db38ecb2962' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Bersih-bersih'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('929d94c6-f2e3-466d-879c-2db38ecb2962', 'Bersih-bersih', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '929d94c6-f2e3-466d-879c-2db38ecb2962' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Untuk Membersihkan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('929d94c6-f2e3-466d-879c-2db38ecb2962', 'Untuk Membersihkan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '929d94c6-f2e3-466d-879c-2db38ecb2962' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Clean'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('929d94c6-f2e3-466d-879c-2db38ecb2962', 'To Clean', false, true);
  END IF;

  -- [VOCABULARY] 操 (Level 33)
  UPDATE item_meanings SET meaning = 'Kesucian Diri', primary_meaning = true, accepted_answer = true WHERE id = '6a946c13-cfda-4ea9-a8c5-1c52722bc78f';
  UPDATE items SET slug = 'kesucian-diri' WHERE id = 'c0c9f7a4-497c-4946-95d7-9df0b53ef3b3';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'c0c9f7a4-497c-4946-95d7-9df0b53ef3b3' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Kehormatan Wanita'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('c0c9f7a4-497c-4946-95d7-9df0b53ef3b3', 'Kehormatan Wanita', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'c0c9f7a4-497c-4946-95d7-9df0b53ef3b3' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Kesucian'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('c0c9f7a4-497c-4946-95d7-9df0b53ef3b3', 'Kesucian', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'c0c9f7a4-497c-4946-95d7-9df0b53ef3b3' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Chastity'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('c0c9f7a4-497c-4946-95d7-9df0b53ef3b3', 'Chastity', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'c0c9f7a4-497c-4946-95d7-9df0b53ef3b3' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Virginity'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('c0c9f7a4-497c-4946-95d7-9df0b53ef3b3', 'Virginity', false, true);
  END IF;

  -- [VOCABULARY] 操る (Level 33)
  UPDATE item_meanings SET meaning = 'Mengendalikan', primary_meaning = true, accepted_answer = true WHERE id = '24d351fb-c09e-423e-800c-418a912fbe57';
  UPDATE items SET slug = 'mengendalikan' WHERE id = '86c908d8-85ba-4ac8-9421-7efedd9bc15a';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '86c908d8-85ba-4ac8-9421-7efedd9bc15a' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Mengoperasikan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('86c908d8-85ba-4ac8-9421-7efedd9bc15a', 'Mengoperasikan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '86c908d8-85ba-4ac8-9421-7efedd9bc15a' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Memperalat'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('86c908d8-85ba-4ac8-9421-7efedd9bc15a', 'Memperalat', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '86c908d8-85ba-4ac8-9421-7efedd9bc15a' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Untuk Memanipulasi'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('86c908d8-85ba-4ac8-9421-7efedd9bc15a', 'Untuk Memanipulasi', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '86c908d8-85ba-4ac8-9421-7efedd9bc15a' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Manipulate'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('86c908d8-85ba-4ac8-9421-7efedd9bc15a', 'To Manipulate', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '86c908d8-85ba-4ac8-9421-7efedd9bc15a' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Control'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('86c908d8-85ba-4ac8-9421-7efedd9bc15a', 'To Control', false, true);
  END IF;

  -- [VOCABULARY] 操作 (Level 33)
  UPDATE item_meanings SET meaning = 'Pengoperasian Mesin', primary_meaning = true, accepted_answer = true WHERE id = '63e28e4b-535f-4445-a64e-42e95062623b';
  UPDATE items SET slug = 'pengoperasian-mesin' WHERE id = '8ad9b2b2-c9d7-42ae-9d74-dda97f9d6595';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '8ad9b2b2-c9d7-42ae-9d74-dda97f9d6595' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Pengendalian'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('8ad9b2b2-c9d7-42ae-9d74-dda97f9d6595', 'Pengendalian', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '8ad9b2b2-c9d7-42ae-9d74-dda97f9d6595' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Operasi'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('8ad9b2b2-c9d7-42ae-9d74-dda97f9d6595', 'Operasi', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '8ad9b2b2-c9d7-42ae-9d74-dda97f9d6595' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Operation'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('8ad9b2b2-c9d7-42ae-9d74-dda97f9d6595', 'Operation', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '8ad9b2b2-c9d7-42ae-9d74-dda97f9d6595' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Handling'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('8ad9b2b2-c9d7-42ae-9d74-dda97f9d6595', 'Handling', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '8ad9b2b2-c9d7-42ae-9d74-dda97f9d6595' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Penanganan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('8ad9b2b2-c9d7-42ae-9d74-dda97f9d6595', 'Penanganan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '8ad9b2b2-c9d7-42ae-9d74-dda97f9d6595' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Manipulasi'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('8ad9b2b2-c9d7-42ae-9d74-dda97f9d6595', 'Manipulasi', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '8ad9b2b2-c9d7-42ae-9d74-dda97f9d6595' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Manipulation'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('8ad9b2b2-c9d7-42ae-9d74-dda97f9d6595', 'Manipulation', false, true);
  END IF;

  -- [VOCABULARY] 救う (Level 33)
  UPDATE item_meanings SET meaning = 'Menyelamatkan', primary_meaning = true, accepted_answer = true WHERE id = 'bf0466a3-4d64-42ce-a327-1bae8fd7e591';
  UPDATE items SET slug = 'menyelamatkan' WHERE id = '2276b970-dbe1-4a3d-be00-ddfd59de4dd5';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '2276b970-dbe1-4a3d-be00-ddfd59de4dd5' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Menolong Nyawa'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('2276b970-dbe1-4a3d-be00-ddfd59de4dd5', 'Menolong Nyawa', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '2276b970-dbe1-4a3d-be00-ddfd59de4dd5' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Untuk Menyelamatkan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('2276b970-dbe1-4a3d-be00-ddfd59de4dd5', 'Untuk Menyelamatkan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '2276b970-dbe1-4a3d-be00-ddfd59de4dd5' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Save'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('2276b970-dbe1-4a3d-be00-ddfd59de4dd5', 'To Save', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '2276b970-dbe1-4a3d-be00-ddfd59de4dd5' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Rescue'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('2276b970-dbe1-4a3d-be00-ddfd59de4dd5', 'To Rescue', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '2276b970-dbe1-4a3d-be00-ddfd59de4dd5' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Untuk Menyimpan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('2276b970-dbe1-4a3d-be00-ddfd59de4dd5', 'Untuk Menyimpan', false, true);
  END IF;

  -- [VOCABULARY] 散らかす (Level 33)
  UPDATE item_meanings SET meaning = 'Membuat Berantakan', primary_meaning = true, accepted_answer = true WHERE id = '71b5025e-d8f2-4dd2-b789-ad4581a8a72d';
  UPDATE items SET slug = 'membuat-berantakan' WHERE id = '924037b9-2938-4304-856f-348ad0d242c1';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '924037b9-2938-4304-856f-348ad0d242c1' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Menyerakkan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('924037b9-2938-4304-856f-348ad0d242c1', 'Menyerakkan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '924037b9-2938-4304-856f-348ad0d242c1' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Untuk Menyebar'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('924037b9-2938-4304-856f-348ad0d242c1', 'Untuk Menyebar', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '924037b9-2938-4304-856f-348ad0d242c1' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Make A Mess'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('924037b9-2938-4304-856f-348ad0d242c1', 'To Make A Mess', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '924037b9-2938-4304-856f-348ad0d242c1' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Scatter'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('924037b9-2938-4304-856f-348ad0d242c1', 'To Scatter', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '924037b9-2938-4304-856f-348ad0d242c1' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Untuk Membuat Kekacauan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('924037b9-2938-4304-856f-348ad0d242c1', 'Untuk Membuat Kekacauan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '924037b9-2938-4304-856f-348ad0d242c1' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Make A Place Messy'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('924037b9-2938-4304-856f-348ad0d242c1', 'To Make A Place Messy', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '924037b9-2938-4304-856f-348ad0d242c1' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Scatter Around'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('924037b9-2938-4304-856f-348ad0d242c1', 'To Scatter Around', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '924037b9-2938-4304-856f-348ad0d242c1' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Scatter Things Around'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('924037b9-2938-4304-856f-348ad0d242c1', 'To Scatter Things Around', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '924037b9-2938-4304-856f-348ad0d242c1' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Scatter Something'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('924037b9-2938-4304-856f-348ad0d242c1', 'To Scatter Something', false, true);
  END IF;

  -- [VOCABULARY] 暮らす (Level 33)
  UPDATE item_meanings SET meaning = 'Menjalani Kehidupan', primary_meaning = true, accepted_answer = true WHERE id = '4886bd79-e032-49c5-b31c-ccca3d4071ff';
  UPDATE items SET slug = 'menjalani-kehidupan' WHERE id = 'f2e2c797-8231-4a10-8bbc-d7971eb88c0e';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'f2e2c797-8231-4a10-8bbc-d7971eb88c0e' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Bertempat Tinggal'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('f2e2c797-8231-4a10-8bbc-d7971eb88c0e', 'Bertempat Tinggal', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'f2e2c797-8231-4a10-8bbc-d7971eb88c0e' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Untuk Hidup'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('f2e2c797-8231-4a10-8bbc-d7971eb88c0e', 'Untuk Hidup', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'f2e2c797-8231-4a10-8bbc-d7971eb88c0e' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Live'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('f2e2c797-8231-4a10-8bbc-d7971eb88c0e', 'To Live', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'f2e2c797-8231-4a10-8bbc-d7971eb88c0e' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Live One''s Life'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('f2e2c797-8231-4a10-8bbc-d7971eb88c0e', 'To Live One''s Life', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'f2e2c797-8231-4a10-8bbc-d7971eb88c0e' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Untuk Menjalani Hidup Seseorang'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('f2e2c797-8231-4a10-8bbc-d7971eb88c0e', 'Untuk Menjalani Hidup Seseorang', false, true);
  END IF;

  -- [VOCABULARY] 服装 (Level 33)
  UPDATE item_meanings SET meaning = 'Pakaian', primary_meaning = true, accepted_answer = true WHERE id = '86ad2192-368e-4627-b251-04254693dd1f';
  UPDATE items SET slug = 'pakaian' WHERE id = '9094237a-25f4-4b0b-b731-cb0b2cf2e81e';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '9094237a-25f4-4b0b-b731-cb0b2cf2e81e' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Busana yang Dikenakan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('9094237a-25f4-4b0b-b731-cb0b2cf2e81e', 'Busana yang Dikenakan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '9094237a-25f4-4b0b-b731-cb0b2cf2e81e' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Attire'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('9094237a-25f4-4b0b-b731-cb0b2cf2e81e', 'Attire', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '9094237a-25f4-4b0b-b731-cb0b2cf2e81e' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Outfit'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('9094237a-25f4-4b0b-b731-cb0b2cf2e81e', 'Outfit', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '9094237a-25f4-4b0b-b731-cb0b2cf2e81e' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Clothing'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('9094237a-25f4-4b0b-b731-cb0b2cf2e81e', 'Clothing', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '9094237a-25f4-4b0b-b731-cb0b2cf2e81e' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Style'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('9094237a-25f4-4b0b-b731-cb0b2cf2e81e', 'Style', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '9094237a-25f4-4b0b-b731-cb0b2cf2e81e' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Gaun'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('9094237a-25f4-4b0b-b731-cb0b2cf2e81e', 'Gaun', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '9094237a-25f4-4b0b-b731-cb0b2cf2e81e' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Dress'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('9094237a-25f4-4b0b-b731-cb0b2cf2e81e', 'Dress', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '9094237a-25f4-4b0b-b731-cb0b2cf2e81e' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Look'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('9094237a-25f4-4b0b-b731-cb0b2cf2e81e', 'Look', false, true);
  END IF;

  -- [VOCABULARY] 未熟 (Level 33)
  UPDATE item_meanings SET meaning = 'Belum Berpengalaman', primary_meaning = true, accepted_answer = true WHERE id = '2965458d-ff73-41d3-b143-2ddece6c2fb6';
  UPDATE items SET slug = 'belum-berpengalaman' WHERE id = '88bf9610-df50-4af1-9b41-5fcb3de7a3b1';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '88bf9610-df50-4af1-9b41-5fcb3de7a3b1' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Masih Mentah'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('88bf9610-df50-4af1-9b41-5fcb3de7a3b1', 'Masih Mentah', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '88bf9610-df50-4af1-9b41-5fcb3de7a3b1' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Mentah'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('88bf9610-df50-4af1-9b41-5fcb3de7a3b1', 'Mentah', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '88bf9610-df50-4af1-9b41-5fcb3de7a3b1' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Inexperienced'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('88bf9610-df50-4af1-9b41-5fcb3de7a3b1', 'Inexperienced', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '88bf9610-df50-4af1-9b41-5fcb3de7a3b1' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Immature'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('88bf9610-df50-4af1-9b41-5fcb3de7a3b1', 'Immature', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '88bf9610-df50-4af1-9b41-5fcb3de7a3b1' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Not Yet Good At'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('88bf9610-df50-4af1-9b41-5fcb3de7a3b1', 'Not Yet Good At', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '88bf9610-df50-4af1-9b41-5fcb3de7a3b1' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Not Good At'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('88bf9610-df50-4af1-9b41-5fcb3de7a3b1', 'Not Good At', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '88bf9610-df50-4af1-9b41-5fcb3de7a3b1' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Green'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('88bf9610-df50-4af1-9b41-5fcb3de7a3b1', 'Green', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '88bf9610-df50-4af1-9b41-5fcb3de7a3b1' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Unripe'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('88bf9610-df50-4af1-9b41-5fcb3de7a3b1', 'Unripe', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '88bf9610-df50-4af1-9b41-5fcb3de7a3b1' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Unskilled'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('88bf9610-df50-4af1-9b41-5fcb3de7a3b1', 'Unskilled', false, true);
  END IF;

  -- [VOCABULARY] 武装 (Level 33)
  UPDATE item_meanings SET meaning = 'Bersenjata', primary_meaning = true, accepted_answer = true WHERE id = '12a50421-bb26-4033-9dbe-b428eb8e1251';
  UPDATE items SET slug = 'bersenjata' WHERE id = 'ee0f279f-e899-4251-8a3c-2f29e894921c';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'ee0f279f-e899-4251-8a3c-2f29e894921c' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Mempersenjatai Diri'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('ee0f279f-e899-4251-8a3c-2f29e894921c', 'Mempersenjatai Diri', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'ee0f279f-e899-4251-8a3c-2f29e894921c' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Lengan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('ee0f279f-e899-4251-8a3c-2f29e894921c', 'Lengan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'ee0f279f-e899-4251-8a3c-2f29e894921c' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Armed'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('ee0f279f-e899-4251-8a3c-2f29e894921c', 'Armed', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'ee0f279f-e899-4251-8a3c-2f29e894921c' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Arms'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('ee0f279f-e899-4251-8a3c-2f29e894921c', 'Arms', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'ee0f279f-e899-4251-8a3c-2f29e894921c' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Armament'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('ee0f279f-e899-4251-8a3c-2f29e894921c', 'Armament', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'ee0f279f-e899-4251-8a3c-2f29e894921c' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Persenjataan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('ee0f279f-e899-4251-8a3c-2f29e894921c', 'Persenjataan', false, true);
  END IF;

  -- [VOCABULARY] 沢 (Level 33)
  UPDATE item_meanings SET meaning = 'Rawa Pegunungan', primary_meaning = true, accepted_answer = true WHERE id = '7f224e39-17ec-4298-8415-bbbf2c0e4ae7';
  UPDATE items SET slug = 'rawa-pegunungan' WHERE id = 'd42f1143-351c-4521-b051-688d0049a050';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'd42f1143-351c-4521-b051-688d0049a050' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Aliran Lembah'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('d42f1143-351c-4521-b051-688d0049a050', 'Aliran Lembah', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'd42f1143-351c-4521-b051-688d0049a050' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Aliran Gunung'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('d42f1143-351c-4521-b051-688d0049a050', 'Aliran Gunung', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'd42f1143-351c-4521-b051-688d0049a050' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Mountain Stream'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('d42f1143-351c-4521-b051-688d0049a050', 'Mountain Stream', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'd42f1143-351c-4521-b051-688d0049a050' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Swamp'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('d42f1143-351c-4521-b051-688d0049a050', 'Swamp', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'd42f1143-351c-4521-b051-688d0049a050' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Rawa'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('d42f1143-351c-4521-b051-688d0049a050', 'Rawa', false, true);
  END IF;

  -- [VOCABULARY] 泥棒 (Level 33)
  UPDATE item_meanings SET meaning = 'Pencuri', primary_meaning = true, accepted_answer = true WHERE id = 'bc353c47-1920-4d70-a322-deabf2fcc4f7';
  UPDATE items SET slug = 'pencuri' WHERE id = '74088314-620e-4483-a2e6-0831a7f65b08';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '74088314-620e-4483-a2e6-0831a7f65b08' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Maling'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('74088314-620e-4483-a2e6-0831a7f65b08', 'Maling', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '74088314-620e-4483-a2e6-0831a7f65b08' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Perampok'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('74088314-620e-4483-a2e6-0831a7f65b08', 'Perampok', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '74088314-620e-4483-a2e6-0831a7f65b08' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Thief'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('74088314-620e-4483-a2e6-0831a7f65b08', 'Thief', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '74088314-620e-4483-a2e6-0831a7f65b08' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Burglar'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('74088314-620e-4483-a2e6-0831a7f65b08', 'Burglar', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '74088314-620e-4483-a2e6-0831a7f65b08' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Robber'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('74088314-620e-4483-a2e6-0831a7f65b08', 'Robber', false, true);
  END IF;

  -- [VOCABULARY] 泥沼 (Level 33)
  UPDATE item_meanings SET meaning = 'Rawa Berlumpur', primary_meaning = true, accepted_answer = true WHERE id = 'f9f10fd1-ef7a-4d15-aff2-a511f938e0e1';
  UPDATE items SET slug = 'rawa-berlumpur' WHERE id = 'c8254314-236b-4efd-aa00-a13e9035dd93';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'c8254314-236b-4efd-aa00-a13e9035dd93' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Lingkaran Setan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('c8254314-236b-4efd-aa00-a13e9035dd93', 'Lingkaran Setan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'c8254314-236b-4efd-aa00-a13e9035dd93' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Rawa'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('c8254314-236b-4efd-aa00-a13e9035dd93', 'Rawa', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'c8254314-236b-4efd-aa00-a13e9035dd93' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Quagmire'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('c8254314-236b-4efd-aa00-a13e9035dd93', 'Quagmire', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'c8254314-236b-4efd-aa00-a13e9035dd93' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Mire'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('c8254314-236b-4efd-aa00-a13e9035dd93', 'Mire', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'c8254314-236b-4efd-aa00-a13e9035dd93' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Bog'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('c8254314-236b-4efd-aa00-a13e9035dd93', 'Bog', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'c8254314-236b-4efd-aa00-a13e9035dd93' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Morass'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('c8254314-236b-4efd-aa00-a13e9035dd93', 'Morass', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'c8254314-236b-4efd-aa00-a13e9035dd93' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Marsh'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('c8254314-236b-4efd-aa00-a13e9035dd93', 'Marsh', false, true);
  END IF;

  -- [VOCABULARY] 温厚 (Level 33)
  UPDATE item_meanings SET meaning = 'Lemah Lembut', primary_meaning = true, accepted_answer = true WHERE id = 'b555598f-9c39-4097-aef1-e6a2648b7bda';
  UPDATE items SET slug = 'lemah-lembut' WHERE id = 'e861259c-7292-45dc-9a5e-32d32fd51b39';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'e861259c-7292-45dc-9a5e-32d32fd51b39' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Berbudi Pekerti Hangat'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('e861259c-7292-45dc-9a5e-32d32fd51b39', 'Berbudi Pekerti Hangat', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'e861259c-7292-45dc-9a5e-32d32fd51b39' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Sopan santun'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('e861259c-7292-45dc-9a5e-32d32fd51b39', 'Sopan santun', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'e861259c-7292-45dc-9a5e-32d32fd51b39' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Gentle'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('e861259c-7292-45dc-9a5e-32d32fd51b39', 'Gentle', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'e861259c-7292-45dc-9a5e-32d32fd51b39' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Good-Natured'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('e861259c-7292-45dc-9a5e-32d32fd51b39', 'Good-Natured', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'e861259c-7292-45dc-9a5e-32d32fd51b39' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Gentle-Mannered'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('e861259c-7292-45dc-9a5e-32d32fd51b39', 'Gentle-Mannered', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'e861259c-7292-45dc-9a5e-32d32fd51b39' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Lembut'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('e861259c-7292-45dc-9a5e-32d32fd51b39', 'Lembut', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'e861259c-7292-45dc-9a5e-32d32fd51b39' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Baik hati'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('e861259c-7292-45dc-9a5e-32d32fd51b39', 'Baik hati', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'e861259c-7292-45dc-9a5e-32d32fd51b39' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Mild-Mannered'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('e861259c-7292-45dc-9a5e-32d32fd51b39', 'Mild-Mannered', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'e861259c-7292-45dc-9a5e-32d32fd51b39' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Gentle By Nature'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('e861259c-7292-45dc-9a5e-32d32fd51b39', 'Gentle By Nature', false, true);
  END IF;

  -- [VOCABULARY] 灯り (Level 33)
  UPDATE item_meanings SET meaning = 'Lampu Penerang', primary_meaning = true, accepted_answer = true WHERE id = '491681ba-df40-4798-b3ac-63c750130b5a';
  UPDATE items SET slug = 'lampu-penerang' WHERE id = 'c44e81e8-67eb-40e8-90e0-9439fef6c470';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'c44e81e8-67eb-40e8-90e0-9439fef6c470' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Cahaya Lilin'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('c44e81e8-67eb-40e8-90e0-9439fef6c470', 'Cahaya Lilin', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'c44e81e8-67eb-40e8-90e0-9439fef6c470' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Lampu'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('c44e81e8-67eb-40e8-90e0-9439fef6c470', 'Lampu', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'c44e81e8-67eb-40e8-90e0-9439fef6c470' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Light'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('c44e81e8-67eb-40e8-90e0-9439fef6c470', 'Light', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'c44e81e8-67eb-40e8-90e0-9439fef6c470' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Lamp'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('c44e81e8-67eb-40e8-90e0-9439fef6c470', 'Lamp', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'c44e81e8-67eb-40e8-90e0-9439fef6c470' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Source Of Light'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('c44e81e8-67eb-40e8-90e0-9439fef6c470', 'Source Of Light', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'c44e81e8-67eb-40e8-90e0-9439fef6c470' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Torch'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('c44e81e8-67eb-40e8-90e0-9439fef6c470', 'Torch', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'c44e81e8-67eb-40e8-90e0-9439fef6c470' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Light Source'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('c44e81e8-67eb-40e8-90e0-9439fef6c470', 'Light Source', false, true);
  END IF;

  -- [VOCABULARY] 蒸れる (Level 33)
  UPDATE item_meanings SET meaning = 'Pengap Berkeringat', primary_meaning = true, accepted_answer = true WHERE id = 'e54058f4-f7a7-4097-acfa-015d9bb2e62b';
  UPDATE items SET slug = 'pengap-berkeringat' WHERE id = 'e1cba79f-95f5-4838-97f1-307637835edf';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'e1cba79f-95f5-4838-97f1-307637835edf' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Lembap Panas'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('e1cba79f-95f5-4838-97f1-307637835edf', 'Lembap Panas', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'e1cba79f-95f5-4838-97f1-307637835edf' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Menjadi Panas Dan Lengket'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('e1cba79f-95f5-4838-97f1-307637835edf', 'Menjadi Panas Dan Lengket', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'e1cba79f-95f5-4838-97f1-307637835edf' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Get Steamed'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('e1cba79f-95f5-4838-97f1-307637835edf', 'To Get Steamed', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'e1cba79f-95f5-4838-97f1-307637835edf' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Be Sweaty And Sticky'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('e1cba79f-95f5-4838-97f1-307637835edf', 'To Be Sweaty And Sticky', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'e1cba79f-95f5-4838-97f1-307637835edf' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Untuk Dikukus'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('e1cba79f-95f5-4838-97f1-307637835edf', 'Untuk Dikukus', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'e1cba79f-95f5-4838-97f1-307637835edf' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Get Hot And Sticky'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('e1cba79f-95f5-4838-97f1-307637835edf', 'To Get Hot And Sticky', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'e1cba79f-95f5-4838-97f1-307637835edf' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Get Well Steamed'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('e1cba79f-95f5-4838-97f1-307637835edf', 'To Get Well Steamed', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'e1cba79f-95f5-4838-97f1-307637835edf' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Be Well Steamed'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('e1cba79f-95f5-4838-97f1-307637835edf', 'To Be Well Steamed', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'e1cba79f-95f5-4838-97f1-307637835edf' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Be Hot And Sticky'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('e1cba79f-95f5-4838-97f1-307637835edf', 'To Be Hot And Sticky', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'e1cba79f-95f5-4838-97f1-307637835edf' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Be Steamed'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('e1cba79f-95f5-4838-97f1-307637835edf', 'To Be Steamed', false, true);
  END IF;

  -- [VOCABULARY] 蒸気 (Level 33)
  UPDATE item_meanings SET meaning = 'Uap Air Panas', primary_meaning = true, accepted_answer = true WHERE id = 'a18e63c2-185b-4fe1-8ad7-7c6198da7b10';
  UPDATE items SET slug = 'uap-air-panas' WHERE id = '0d8b9611-ff20-4fda-96cc-88a5ff74779c';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '0d8b9611-ff20-4fda-96cc-88a5ff74779c' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Uap'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('0d8b9611-ff20-4fda-96cc-88a5ff74779c', 'Uap', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '0d8b9611-ff20-4fda-96cc-88a5ff74779c' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Steam'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('0d8b9611-ff20-4fda-96cc-88a5ff74779c', 'Steam', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '0d8b9611-ff20-4fda-96cc-88a5ff74779c' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Vapor'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('0d8b9611-ff20-4fda-96cc-88a5ff74779c', 'Vapor', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '0d8b9611-ff20-4fda-96cc-88a5ff74779c' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Menguap'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('0d8b9611-ff20-4fda-96cc-88a5ff74779c', 'Menguap', false, true);
  END IF;

  -- [VOCABULARY] 熟れる (Level 33)
  UPDATE item_meanings SET meaning = 'Matang', primary_meaning = true, accepted_answer = true WHERE id = 'd3e4309e-54b3-47ef-83b0-634d84067528';
  UPDATE items SET slug = 'matang' WHERE id = '714e801b-f397-4717-885d-caf4b12e3ee8';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '714e801b-f397-4717-885d-caf4b12e3ee8' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Menjadi Masak'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('714e801b-f397-4717-885d-caf4b12e3ee8', 'Menjadi Masak', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '714e801b-f397-4717-885d-caf4b12e3ee8' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Ranum'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('714e801b-f397-4717-885d-caf4b12e3ee8', 'Ranum', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '714e801b-f397-4717-885d-caf4b12e3ee8' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Ripen'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('714e801b-f397-4717-885d-caf4b12e3ee8', 'To Ripen', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '714e801b-f397-4717-885d-caf4b12e3ee8' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Untuk matang'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('714e801b-f397-4717-885d-caf4b12e3ee8', 'Untuk matang', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '714e801b-f397-4717-885d-caf4b12e3ee8' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Become Ripe'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('714e801b-f397-4717-885d-caf4b12e3ee8', 'To Become Ripe', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '714e801b-f397-4717-885d-caf4b12e3ee8' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Be Ripe'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('714e801b-f397-4717-885d-caf4b12e3ee8', 'To Be Ripe', false, true);
  END IF;

  -- [VOCABULARY] 異なる (Level 33)
  UPDATE item_meanings SET meaning = 'Berbeda', primary_meaning = true, accepted_answer = true WHERE id = '6a12a7ec-542d-4e82-b894-4a5b53033393';
  UPDATE items SET slug = 'berbeda' WHERE id = '0f4768cc-004f-48cd-a653-922aac5d0fab';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '0f4768cc-004f-48cd-a653-922aac5d0fab' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Berlainan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('0f4768cc-004f-48cd-a653-922aac5d0fab', 'Berlainan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '0f4768cc-004f-48cd-a653-922aac5d0fab' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Untuk Berbeda'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('0f4768cc-004f-48cd-a653-922aac5d0fab', 'Untuk Berbeda', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '0f4768cc-004f-48cd-a653-922aac5d0fab' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Differ'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('0f4768cc-004f-48cd-a653-922aac5d0fab', 'To Differ', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '0f4768cc-004f-48cd-a653-922aac5d0fab' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Be Different'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('0f4768cc-004f-48cd-a653-922aac5d0fab', 'To Be Different', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '0f4768cc-004f-48cd-a653-922aac5d0fab' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Vary'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('0f4768cc-004f-48cd-a653-922aac5d0fab', 'To Vary', false, true);
  END IF;

  -- [VOCABULARY] 異常 (Level 33)
  UPDATE item_meanings SET meaning = 'Abnormal', primary_meaning = true, accepted_answer = true WHERE id = 'e2e8aed7-3c3a-4830-96e2-4e369cd80a6f';
  UPDATE items SET slug = 'abnormal' WHERE id = 'c35a00a7-f771-4c75-8143-c5668bba1d78';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'c35a00a7-f771-4c75-8143-c5668bba1d78' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Luar Biasa'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('c35a00a7-f771-4c75-8143-c5668bba1d78', 'Luar Biasa', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'c35a00a7-f771-4c75-8143-c5668bba1d78' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Tidak Lazim'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('c35a00a7-f771-4c75-8143-c5668bba1d78', 'Tidak Lazim', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'c35a00a7-f771-4c75-8143-c5668bba1d78' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Abnormality'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('c35a00a7-f771-4c75-8143-c5668bba1d78', 'Abnormality', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'c35a00a7-f771-4c75-8143-c5668bba1d78' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Unusual'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('c35a00a7-f771-4c75-8143-c5668bba1d78', 'Unusual', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'c35a00a7-f771-4c75-8143-c5668bba1d78' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Uncommon'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('c35a00a7-f771-4c75-8143-c5668bba1d78', 'Uncommon', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'c35a00a7-f771-4c75-8143-c5668bba1d78' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Strange'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('c35a00a7-f771-4c75-8143-c5668bba1d78', 'Strange', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'c35a00a7-f771-4c75-8143-c5668bba1d78' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Extraordinary'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('c35a00a7-f771-4c75-8143-c5668bba1d78', 'Extraordinary', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'c35a00a7-f771-4c75-8143-c5668bba1d78' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Kelainan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('c35a00a7-f771-4c75-8143-c5668bba1d78', 'Kelainan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'c35a00a7-f771-4c75-8143-c5668bba1d78' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Disorder'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('c35a00a7-f771-4c75-8143-c5668bba1d78', 'Disorder', false, true);
  END IF;

  -- [VOCABULARY] 異状 (Level 33)
  UPDATE item_meanings SET meaning = 'Kelainan', primary_meaning = true, accepted_answer = true WHERE id = '7d4454cc-e30e-48e5-be12-118537713e18';
  UPDATE items SET slug = 'kelainan' WHERE id = 'fb12db8d-ee7b-47e4-a49e-3e2084599b7f';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'fb12db8d-ee7b-47e4-a49e-3e2084599b7f' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Kondisi Ganjil'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('fb12db8d-ee7b-47e4-a49e-3e2084599b7f', 'Kondisi Ganjil', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'fb12db8d-ee7b-47e4-a49e-3e2084599b7f' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Abnormality'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('fb12db8d-ee7b-47e4-a49e-3e2084599b7f', 'Abnormality', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'fb12db8d-ee7b-47e4-a49e-3e2084599b7f' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Something Wrong'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('fb12db8d-ee7b-47e4-a49e-3e2084599b7f', 'Something Wrong', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'fb12db8d-ee7b-47e4-a49e-3e2084599b7f' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Ada masalah'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('fb12db8d-ee7b-47e4-a49e-3e2084599b7f', 'Ada masalah', false, true);
  END IF;

  -- [VOCABULARY] 皇族 (Level 33)
  UPDATE item_meanings SET meaning = 'Bangsawan', primary_meaning = true, accepted_answer = true WHERE id = 'bbc9fd9d-d523-4abe-b745-6b278684ecc7';
  UPDATE items SET slug = 'bangsawan' WHERE id = 'c5ce92f0-f060-4717-a199-6546d4a7513e';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'c5ce92f0-f060-4717-a199-6546d4a7513e' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Anggota Kekaisaran'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('c5ce92f0-f060-4717-a199-6546d4a7513e', 'Anggota Kekaisaran', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'c5ce92f0-f060-4717-a199-6546d4a7513e' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Keluarga Kekaisaran'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('c5ce92f0-f060-4717-a199-6546d4a7513e', 'Keluarga Kekaisaran', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'c5ce92f0-f060-4717-a199-6546d4a7513e' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Imperial Family'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('c5ce92f0-f060-4717-a199-6546d4a7513e', 'Imperial Family', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'c5ce92f0-f060-4717-a199-6546d4a7513e' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Member Of The Imperial Family'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('c5ce92f0-f060-4717-a199-6546d4a7513e', 'Member Of The Imperial Family', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'c5ce92f0-f060-4717-a199-6546d4a7513e' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Anggota Keluarga Kekaisaran'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('c5ce92f0-f060-4717-a199-6546d4a7513e', 'Anggota Keluarga Kekaisaran', false, true);
  END IF;

  -- [VOCABULARY] 盛る (Level 33)
  UPDATE item_meanings SET meaning = 'Menghidangkan', primary_meaning = true, accepted_answer = true WHERE id = '511a7bc5-4b77-4656-9a0e-9575fae43684';
  UPDATE items SET slug = 'menghidangkan' WHERE id = 'f2c5593b-862c-4caa-be61-48b1051733b9';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'f2c5593b-862c-4caa-be61-48b1051733b9' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Menumpuk'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('f2c5593b-862c-4caa-be61-48b1051733b9', 'Menumpuk', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'f2c5593b-862c-4caa-be61-48b1051733b9' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Menyajikan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('f2c5593b-862c-4caa-be61-48b1051733b9', 'Menyajikan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'f2c5593b-862c-4caa-be61-48b1051733b9' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Serve'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('f2c5593b-862c-4caa-be61-48b1051733b9', 'To Serve', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'f2c5593b-862c-4caa-be61-48b1051733b9' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Untuk Menumpuk'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('f2c5593b-862c-4caa-be61-48b1051733b9', 'Untuk Menumpuk', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'f2c5593b-862c-4caa-be61-48b1051733b9' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Serve Food'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('f2c5593b-862c-4caa-be61-48b1051733b9', 'To Serve Food', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'f2c5593b-862c-4caa-be61-48b1051733b9' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Pile Up'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('f2c5593b-862c-4caa-be61-48b1051733b9', 'To Pile Up', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'f2c5593b-862c-4caa-be61-48b1051733b9' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Untuk Menyajikan Makanan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('f2c5593b-862c-4caa-be61-48b1051733b9', 'Untuk Menyajikan Makanan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'f2c5593b-862c-4caa-be61-48b1051733b9' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Serve Something'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('f2c5593b-862c-4caa-be61-48b1051733b9', 'To Serve Something', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'f2c5593b-862c-4caa-be61-48b1051733b9' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Pile Something Up'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('f2c5593b-862c-4caa-be61-48b1051733b9', 'To Pile Something Up', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'f2c5593b-862c-4caa-be61-48b1051733b9' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Heap Something Up'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('f2c5593b-862c-4caa-be61-48b1051733b9', 'To Heap Something Up', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'f2c5593b-862c-4caa-be61-48b1051733b9' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Heap Up'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('f2c5593b-862c-4caa-be61-48b1051733b9', 'To Heap Up', false, true);
  END IF;

  -- [VOCABULARY] 真似 (Level 33)
  UPDATE item_meanings SET meaning = 'Meniru', primary_meaning = true, accepted_answer = true WHERE id = 'b82b2443-43d0-4727-8389-9f12fb1a8890';
  UPDATE items SET slug = 'meniru' WHERE id = '7f3904f2-553a-4aac-9134-607df506c1eb';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '7f3904f2-553a-4aac-9134-607df506c1eb' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Tiruan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('7f3904f2-553a-4aac-9134-607df506c1eb', 'Tiruan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '7f3904f2-553a-4aac-9134-607df506c1eb' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Memperagakan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('7f3904f2-553a-4aac-9134-607df506c1eb', 'Memperagakan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '7f3904f2-553a-4aac-9134-607df506c1eb' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Imitasi'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('7f3904f2-553a-4aac-9134-607df506c1eb', 'Imitasi', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '7f3904f2-553a-4aac-9134-607df506c1eb' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Imitation'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('7f3904f2-553a-4aac-9134-607df506c1eb', 'Imitation', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '7f3904f2-553a-4aac-9134-607df506c1eb' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Mimicry'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('7f3904f2-553a-4aac-9134-607df506c1eb', 'Mimicry', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '7f3904f2-553a-4aac-9134-607df506c1eb' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Impersonation'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('7f3904f2-553a-4aac-9134-607df506c1eb', 'Impersonation', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '7f3904f2-553a-4aac-9134-607df506c1eb' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Peniruan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('7f3904f2-553a-4aac-9134-607df506c1eb', 'Peniruan', false, true);
  END IF;

  -- [VOCABULARY] 窓口 (Level 33)
  UPDATE item_meanings SET meaning = 'Loket Pelayanan', primary_meaning = true, accepted_answer = true WHERE id = '548f20b7-3945-4f09-86bc-e848a8c07729';
  UPDATE items SET slug = 'loket-pelayanan' WHERE id = 'bfc2b1f5-c221-4111-a150-1198d14b64af';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'bfc2b1f5-c221-4111-a150-1198d14b64af' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Layanan Pelanggan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('bfc2b1f5-c221-4111-a150-1198d14b64af', 'Layanan Pelanggan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'bfc2b1f5-c221-4111-a150-1198d14b64af' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Jendela Tiket'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('bfc2b1f5-c221-4111-a150-1198d14b64af', 'Jendela Tiket', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'bfc2b1f5-c221-4111-a150-1198d14b64af' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Ticket Counter'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('bfc2b1f5-c221-4111-a150-1198d14b64af', 'Ticket Counter', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'bfc2b1f5-c221-4111-a150-1198d14b64af' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Customer Service'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('bfc2b1f5-c221-4111-a150-1198d14b64af', 'Customer Service', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'bfc2b1f5-c221-4111-a150-1198d14b64af' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Pelayanan pelanggan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('bfc2b1f5-c221-4111-a150-1198d14b64af', 'Pelayanan pelanggan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'bfc2b1f5-c221-4111-a150-1198d14b64af' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Staf'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('bfc2b1f5-c221-4111-a150-1198d14b64af', 'Staf', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'bfc2b1f5-c221-4111-a150-1198d14b64af' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Konter Tiket'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('bfc2b1f5-c221-4111-a150-1198d14b64af', 'Konter Tiket', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'bfc2b1f5-c221-4111-a150-1198d14b64af' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Clerk'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('bfc2b1f5-c221-4111-a150-1198d14b64af', 'Clerk', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'bfc2b1f5-c221-4111-a150-1198d14b64af' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Ticket Window'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('bfc2b1f5-c221-4111-a150-1198d14b64af', 'Ticket Window', false, true);
  END IF;

  -- [VOCABULARY] 筋 (Level 33)
  UPDATE item_meanings SET meaning = 'Otot Tendon', primary_meaning = true, accepted_answer = true WHERE id = '4f0f1f6f-19a2-40f2-a2f1-9b932af35662';
  UPDATE items SET slug = 'otot-tendon' WHERE id = 'c6fdb96a-2a86-4e50-961f-8ab6b094ca33';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'c6fdb96a-2a86-4e50-961f-8ab6b094ca33' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Alur Cerita'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('c6fdb96a-2a86-4e50-961f-8ab6b094ca33', 'Alur Cerita', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'c6fdb96a-2a86-4e50-961f-8ab6b094ca33' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Serat'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('c6fdb96a-2a86-4e50-961f-8ab6b094ca33', 'Serat', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'c6fdb96a-2a86-4e50-961f-8ab6b094ca33' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Urat daging'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('c6fdb96a-2a86-4e50-961f-8ab6b094ca33', 'Urat daging', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'c6fdb96a-2a86-4e50-961f-8ab6b094ca33' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Muscle'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('c6fdb96a-2a86-4e50-961f-8ab6b094ca33', 'Muscle', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'c6fdb96a-2a86-4e50-961f-8ab6b094ca33' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Tendon'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('c6fdb96a-2a86-4e50-961f-8ab6b094ca33', 'Tendon', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'c6fdb96a-2a86-4e50-961f-8ab6b094ca33' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Otot'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('c6fdb96a-2a86-4e50-961f-8ab6b094ca33', 'Otot', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'c6fdb96a-2a86-4e50-961f-8ab6b094ca33' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Sinew'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('c6fdb96a-2a86-4e50-961f-8ab6b094ca33', 'Sinew', false, true);
  END IF;

  -- [VOCABULARY] 簡易 (Level 33)
  UPDATE item_meanings SET meaning = 'Sederhana Praktis', primary_meaning = true, accepted_answer = true WHERE id = '5156d8ac-8d02-4764-9a26-8a06f84a88cb';
  UPDATE items SET slug = 'sederhana-praktis' WHERE id = '31055c53-08f1-47d3-8563-1fb521a4fb7a';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '31055c53-08f1-47d3-8563-1fb521a4fb7a' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Ringkas'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('31055c53-08f1-47d3-8563-1fb521a4fb7a', 'Ringkas', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '31055c53-08f1-47d3-8563-1fb521a4fb7a' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Sederhana'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('31055c53-08f1-47d3-8563-1fb521a4fb7a', 'Sederhana', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '31055c53-08f1-47d3-8563-1fb521a4fb7a' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Simple'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('31055c53-08f1-47d3-8563-1fb521a4fb7a', 'Simple', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '31055c53-08f1-47d3-8563-1fb521a4fb7a' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Easy'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('31055c53-08f1-47d3-8563-1fb521a4fb7a', 'Easy', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '31055c53-08f1-47d3-8563-1fb521a4fb7a' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Mudah'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('31055c53-08f1-47d3-8563-1fb521a4fb7a', 'Mudah', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '31055c53-08f1-47d3-8563-1fb521a4fb7a' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Ease'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('31055c53-08f1-47d3-8563-1fb521a4fb7a', 'Ease', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '31055c53-08f1-47d3-8563-1fb521a4fb7a' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Simplicity'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('31055c53-08f1-47d3-8563-1fb521a4fb7a', 'Simplicity', false, true);
  END IF;

  -- [VOCABULARY] 納める (Level 33)
  UPDATE item_meanings SET meaning = 'Membayar', primary_meaning = true, accepted_answer = true WHERE id = '32973023-86fc-47b7-bb43-75f2715db896';
  UPDATE items SET slug = 'membayar' WHERE id = 'fe812940-f200-4671-af03-5c1921704204';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'fe812940-f200-4671-af03-5c1921704204' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Menyerahkan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('fe812940-f200-4671-af03-5c1921704204', 'Menyerahkan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'fe812940-f200-4671-af03-5c1921704204' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Menyimpan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('fe812940-f200-4671-af03-5c1921704204', 'Menyimpan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'fe812940-f200-4671-af03-5c1921704204' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Membayar Pajak'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('fe812940-f200-4671-af03-5c1921704204', 'Membayar Pajak', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'fe812940-f200-4671-af03-5c1921704204' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Pay'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('fe812940-f200-4671-af03-5c1921704204', 'To Pay', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'fe812940-f200-4671-af03-5c1921704204' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Settle'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('fe812940-f200-4671-af03-5c1921704204', 'To Settle', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'fe812940-f200-4671-af03-5c1921704204' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Untuk Memasok'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('fe812940-f200-4671-af03-5c1921704204', 'Untuk Memasok', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'fe812940-f200-4671-af03-5c1921704204' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Deliver'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('fe812940-f200-4671-af03-5c1921704204', 'To Deliver', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'fe812940-f200-4671-af03-5c1921704204' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Supply'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('fe812940-f200-4671-af03-5c1921704204', 'To Supply', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'fe812940-f200-4671-af03-5c1921704204' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Untuk Membayar'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('fe812940-f200-4671-af03-5c1921704204', 'Untuk Membayar', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'fe812940-f200-4671-af03-5c1921704204' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Untuk Memberikan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('fe812940-f200-4671-af03-5c1921704204', 'Untuk Memberikan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'fe812940-f200-4671-af03-5c1921704204' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Pay Something'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('fe812940-f200-4671-af03-5c1921704204', 'To Pay Something', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'fe812940-f200-4671-af03-5c1921704204' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Deliver Something'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('fe812940-f200-4671-af03-5c1921704204', 'To Deliver Something', false, true);
  END IF;

  -- [VOCABULARY] 納入 (Level 33)
  UPDATE item_meanings SET meaning = 'Penyetoran Pembayaran', primary_meaning = true, accepted_answer = true WHERE id = 'f3c90b15-35ce-44e4-8e64-64bd45805f94';
  UPDATE items SET slug = 'penyetoran-pembayaran' WHERE id = '2be7aec0-ccb1-463a-bb88-8d6fb7562fa1';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '2be7aec0-ccb1-463a-bb88-8d6fb7562fa1' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Pasokan Barang'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('2be7aec0-ccb1-463a-bb88-8d6fb7562fa1', 'Pasokan Barang', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '2be7aec0-ccb1-463a-bb88-8d6fb7562fa1' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Pembayaran'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('2be7aec0-ccb1-463a-bb88-8d6fb7562fa1', 'Pembayaran', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '2be7aec0-ccb1-463a-bb88-8d6fb7562fa1' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Payment'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('2be7aec0-ccb1-463a-bb88-8d6fb7562fa1', 'Payment', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '2be7aec0-ccb1-463a-bb88-8d6fb7562fa1' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Delivery'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('2be7aec0-ccb1-463a-bb88-8d6fb7562fa1', 'Delivery', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '2be7aec0-ccb1-463a-bb88-8d6fb7562fa1' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Supply'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('2be7aec0-ccb1-463a-bb88-8d6fb7562fa1', 'Supply', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '2be7aec0-ccb1-463a-bb88-8d6fb7562fa1' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Memasok'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('2be7aec0-ccb1-463a-bb88-8d6fb7562fa1', 'Memasok', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '2be7aec0-ccb1-463a-bb88-8d6fb7562fa1' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Pengiriman'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('2be7aec0-ccb1-463a-bb88-8d6fb7562fa1', 'Pengiriman', false, true);
  END IF;

  -- [VOCABULARY] 編集する (Level 33)
  UPDATE item_meanings SET meaning = 'Menyunting', primary_meaning = true, accepted_answer = true WHERE id = 'b86e8f53-1b58-4044-b874-82d0133a53de';
  UPDATE items SET slug = 'menyunting' WHERE id = 'fff8ec71-f04b-430d-b0db-be548e26d014';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'fff8ec71-f04b-430d-b0db-be548e26d014' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Mengedit'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('fff8ec71-f04b-430d-b0db-be548e26d014', 'Mengedit', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'fff8ec71-f04b-430d-b0db-be548e26d014' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Untuk Mengedit'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('fff8ec71-f04b-430d-b0db-be548e26d014', 'Untuk Mengedit', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'fff8ec71-f04b-430d-b0db-be548e26d014' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Edit'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('fff8ec71-f04b-430d-b0db-be548e26d014', 'To Edit', false, true);
  END IF;

  -- [VOCABULARY] 股間 (Level 33)
  UPDATE item_meanings SET meaning = 'Selangkangan', primary_meaning = true, accepted_answer = true WHERE id = 'a2d3fdbf-d3c7-42d4-9ac8-f9e4b431c888';
  UPDATE items SET slug = 'selangkangan' WHERE id = '0f4bdfa8-f017-4f77-aa51-d751eb043ddd';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '0f4bdfa8-f017-4f77-aa51-d751eb043ddd' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Area Kemaluan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('0f4bdfa8-f017-4f77-aa51-d751eb043ddd', 'Area Kemaluan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '0f4bdfa8-f017-4f77-aa51-d751eb043ddd' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Groin'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('0f4bdfa8-f017-4f77-aa51-d751eb043ddd', 'Groin', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '0f4bdfa8-f017-4f77-aa51-d751eb043ddd' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Crotch'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('0f4bdfa8-f017-4f77-aa51-d751eb043ddd', 'Crotch', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '0f4bdfa8-f017-4f77-aa51-d751eb043ddd' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Nether Region'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('0f4bdfa8-f017-4f77-aa51-d751eb043ddd', 'Nether Region', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '0f4bdfa8-f017-4f77-aa51-d751eb043ddd' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Nether Regions'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('0f4bdfa8-f017-4f77-aa51-d751eb043ddd', 'Nether Regions', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '0f4bdfa8-f017-4f77-aa51-d751eb043ddd' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Kunci paha'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('0f4bdfa8-f017-4f77-aa51-d751eb043ddd', 'Kunci paha', false, true);
  END IF;

  -- [VOCABULARY] 股関節 (Level 33)
  UPDATE item_meanings SET meaning = 'Sendi Pinggul', primary_meaning = true, accepted_answer = true WHERE id = '5fc1af19-4c23-4bf7-8c43-1a102eaa6476';
  UPDATE items SET slug = 'sendi-pinggul' WHERE id = '3f2f511d-b323-4272-b1ad-ad2273a2606d';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '3f2f511d-b323-4272-b1ad-ad2273a2606d' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Pangkal Paha'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('3f2f511d-b323-4272-b1ad-ad2273a2606d', 'Pangkal Paha', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '3f2f511d-b323-4272-b1ad-ad2273a2606d' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Hip Joint'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('3f2f511d-b323-4272-b1ad-ad2273a2606d', 'Hip Joint', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '3f2f511d-b323-4272-b1ad-ad2273a2606d' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Panggul'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('3f2f511d-b323-4272-b1ad-ad2273a2606d', 'Panggul', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '3f2f511d-b323-4272-b1ad-ad2273a2606d' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Hip'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('3f2f511d-b323-4272-b1ad-ad2273a2606d', 'Hip', false, true);
  END IF;

  -- [VOCABULARY] 華々しい (Level 33)
  UPDATE item_meanings SET meaning = 'Sangat Gemilang', primary_meaning = true, accepted_answer = true WHERE id = 'c69e1b01-6819-4edb-bb30-795e37925646';
  UPDATE items SET slug = 'sangat-gemilang' WHERE id = '083b4375-66b1-4b39-81e8-aa80694e8fc0';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '083b4375-66b1-4b39-81e8-aa80694e8fc0' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Megah Memukau'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('083b4375-66b1-4b39-81e8-aa80694e8fc0', 'Megah Memukau', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '083b4375-66b1-4b39-81e8-aa80694e8fc0' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Sangat indah'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('083b4375-66b1-4b39-81e8-aa80694e8fc0', 'Sangat indah', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '083b4375-66b1-4b39-81e8-aa80694e8fc0' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Spectacular'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('083b4375-66b1-4b39-81e8-aa80694e8fc0', 'Spectacular', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '083b4375-66b1-4b39-81e8-aa80694e8fc0' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Glorious'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('083b4375-66b1-4b39-81e8-aa80694e8fc0', 'Glorious', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '083b4375-66b1-4b39-81e8-aa80694e8fc0' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Brilliant'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('083b4375-66b1-4b39-81e8-aa80694e8fc0', 'Brilliant', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '083b4375-66b1-4b39-81e8-aa80694e8fc0' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Semarak'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('083b4375-66b1-4b39-81e8-aa80694e8fc0', 'Semarak', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '083b4375-66b1-4b39-81e8-aa80694e8fc0' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Cemerlang'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('083b4375-66b1-4b39-81e8-aa80694e8fc0', 'Cemerlang', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '083b4375-66b1-4b39-81e8-aa80694e8fc0' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Splendid'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('083b4375-66b1-4b39-81e8-aa80694e8fc0', 'Splendid', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '083b4375-66b1-4b39-81e8-aa80694e8fc0' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Luar biasa'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('083b4375-66b1-4b39-81e8-aa80694e8fc0', 'Luar biasa', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '083b4375-66b1-4b39-81e8-aa80694e8fc0' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Gorgeous'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('083b4375-66b1-4b39-81e8-aa80694e8fc0', 'Gorgeous', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '083b4375-66b1-4b39-81e8-aa80694e8fc0' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Flamboyant'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('083b4375-66b1-4b39-81e8-aa80694e8fc0', 'Flamboyant', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '083b4375-66b1-4b39-81e8-aa80694e8fc0' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Remarkable'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('083b4375-66b1-4b39-81e8-aa80694e8fc0', 'Remarkable', false, true);
  END IF;

  -- [VOCABULARY] 著しい (Level 33)
  UPDATE item_meanings SET meaning = 'Sangat Menonjol', primary_meaning = true, accepted_answer = true WHERE id = '17531d7e-55eb-4415-acf3-80e4694cd73c';
  UPDATE items SET slug = 'sangat-menonjol' WHERE id = 'e973f688-ddb8-48ef-831a-9328f238ed91';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'e973f688-ddb8-48ef-831a-9328f238ed91' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Nyata Sekali'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('e973f688-ddb8-48ef-831a-9328f238ed91', 'Nyata Sekali', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'e973f688-ddb8-48ef-831a-9328f238ed91' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Luar biasa'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('e973f688-ddb8-48ef-831a-9328f238ed91', 'Luar biasa', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'e973f688-ddb8-48ef-831a-9328f238ed91' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Remarkable'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('e973f688-ddb8-48ef-831a-9328f238ed91', 'Remarkable', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'e973f688-ddb8-48ef-831a-9328f238ed91' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Marked'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('e973f688-ddb8-48ef-831a-9328f238ed91', 'Marked', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'e973f688-ddb8-48ef-831a-9328f238ed91' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Ditandai'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('e973f688-ddb8-48ef-831a-9328f238ed91', 'Ditandai', false, true);
  END IF;

  -- [VOCABULARY] 著作 (Level 33)
  UPDATE item_meanings SET meaning = 'Karya Tulis', primary_meaning = true, accepted_answer = true WHERE id = '0a8bb7d2-4821-4591-896d-b2349d926c78';
  UPDATE items SET slug = 'karya-tulis' WHERE id = 'b1850e6d-3460-4c10-9a40-d7eb7477bfa9';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'b1850e6d-3460-4c10-9a40-d7eb7477bfa9' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Karangan Buku'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('b1850e6d-3460-4c10-9a40-d7eb7477bfa9', 'Karangan Buku', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'b1850e6d-3460-4c10-9a40-d7eb7477bfa9' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Menulis'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('b1850e6d-3460-4c10-9a40-d7eb7477bfa9', 'Menulis', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'b1850e6d-3460-4c10-9a40-d7eb7477bfa9' AND LOWER(TRIM(meaning)) = LOWER(TRIM('A Work'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('b1850e6d-3460-4c10-9a40-d7eb7477bfa9', 'A Work', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'b1850e6d-3460-4c10-9a40-d7eb7477bfa9' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Writings'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('b1850e6d-3460-4c10-9a40-d7eb7477bfa9', 'Writings', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'b1850e6d-3460-4c10-9a40-d7eb7477bfa9' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Authorship'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('b1850e6d-3460-4c10-9a40-d7eb7477bfa9', 'Authorship', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'b1850e6d-3460-4c10-9a40-d7eb7477bfa9' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Sebuah Karya'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('b1850e6d-3460-4c10-9a40-d7eb7477bfa9', 'Sebuah Karya', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'b1850e6d-3460-4c10-9a40-d7eb7477bfa9' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Kepengarangan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('b1850e6d-3460-4c10-9a40-d7eb7477bfa9', 'Kepengarangan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'b1850e6d-3460-4c10-9a40-d7eb7477bfa9' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Writing'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('b1850e6d-3460-4c10-9a40-d7eb7477bfa9', 'Writing', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'b1850e6d-3460-4c10-9a40-d7eb7477bfa9' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Works'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('b1850e6d-3460-4c10-9a40-d7eb7477bfa9', 'Works', false, true);
  END IF;

  -- [VOCABULARY] 街角 (Level 33)
  UPDATE item_meanings SET meaning = 'Sudut Jalan', primary_meaning = true, accepted_answer = true WHERE id = 'e6832de4-79ee-4bd9-a05a-6f5bbf7b575c';
  UPDATE items SET slug = 'sudut-jalan' WHERE id = '8f9e1852-b5aa-43ea-a7e2-694e7fcde264';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '8f9e1852-b5aa-43ea-a7e2-694e7fcde264' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Pojok Simpang Jalan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('8f9e1852-b5aa-43ea-a7e2-694e7fcde264', 'Pojok Simpang Jalan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '8f9e1852-b5aa-43ea-a7e2-694e7fcde264' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Pojok Jalan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('8f9e1852-b5aa-43ea-a7e2-694e7fcde264', 'Pojok Jalan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '8f9e1852-b5aa-43ea-a7e2-694e7fcde264' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Street Corner'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('8f9e1852-b5aa-43ea-a7e2-694e7fcde264', 'Street Corner', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '8f9e1852-b5aa-43ea-a7e2-694e7fcde264' AND LOWER(TRIM(meaning)) = LOWER(TRIM('The Street'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('8f9e1852-b5aa-43ea-a7e2-694e7fcde264', 'The Street', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '8f9e1852-b5aa-43ea-a7e2-694e7fcde264' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Jalan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('8f9e1852-b5aa-43ea-a7e2-694e7fcde264', 'Jalan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '8f9e1852-b5aa-43ea-a7e2-694e7fcde264' AND LOWER(TRIM(meaning)) = LOWER(TRIM('The Streets'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('8f9e1852-b5aa-43ea-a7e2-694e7fcde264', 'The Streets', false, true);
  END IF;

  -- [VOCABULARY] 装い (Level 33)
  UPDATE item_meanings SET meaning = 'Busana', primary_meaning = true, accepted_answer = true WHERE id = 'ee77ed46-6fc0-4ec2-a1fa-a0b6f9b1ba91';
  UPDATE items SET slug = 'busana' WHERE id = '0f4a6866-eb17-44f6-8d09-4641fe3908e8';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '0f4a6866-eb17-44f6-8d09-4641fe3908e8' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Gaya Berpakaian'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('0f4a6866-eb17-44f6-8d09-4641fe3908e8', 'Gaya Berpakaian', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '0f4a6866-eb17-44f6-8d09-4641fe3908e8' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Pakaian'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('0f4a6866-eb17-44f6-8d09-4641fe3908e8', 'Pakaian', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '0f4a6866-eb17-44f6-8d09-4641fe3908e8' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Attire'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('0f4a6866-eb17-44f6-8d09-4641fe3908e8', 'Attire', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '0f4a6866-eb17-44f6-8d09-4641fe3908e8' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Dress'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('0f4a6866-eb17-44f6-8d09-4641fe3908e8', 'Dress', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '0f4a6866-eb17-44f6-8d09-4641fe3908e8' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Outfit'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('0f4a6866-eb17-44f6-8d09-4641fe3908e8', 'Outfit', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '0f4a6866-eb17-44f6-8d09-4641fe3908e8' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Garb'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('0f4a6866-eb17-44f6-8d09-4641fe3908e8', 'Garb', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '0f4a6866-eb17-44f6-8d09-4641fe3908e8' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Gaun'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('0f4a6866-eb17-44f6-8d09-4641fe3908e8', 'Gaun', false, true);
  END IF;

  -- [VOCABULARY] 装置 (Level 33)
  UPDATE item_meanings SET meaning = 'Perangkat', primary_meaning = true, accepted_answer = true WHERE id = '988248ef-d268-4854-993b-4d5f1300536d';
  UPDATE items SET slug = 'perangkat' WHERE id = 'c99347c3-9eb0-4b28-bd66-8cec1af67806';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'c99347c3-9eb0-4b28-bd66-8cec1af67806' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Peralatan Mesin'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('c99347c3-9eb0-4b28-bd66-8cec1af67806', 'Peralatan Mesin', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'c99347c3-9eb0-4b28-bd66-8cec1af67806' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Instalasi'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('c99347c3-9eb0-4b28-bd66-8cec1af67806', 'Instalasi', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'c99347c3-9eb0-4b28-bd66-8cec1af67806' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Peralatan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('c99347c3-9eb0-4b28-bd66-8cec1af67806', 'Peralatan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'c99347c3-9eb0-4b28-bd66-8cec1af67806' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Equipment'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('c99347c3-9eb0-4b28-bd66-8cec1af67806', 'Equipment', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'c99347c3-9eb0-4b28-bd66-8cec1af67806' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Device'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('c99347c3-9eb0-4b28-bd66-8cec1af67806', 'Device', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'c99347c3-9eb0-4b28-bd66-8cec1af67806' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Apparatus'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('c99347c3-9eb0-4b28-bd66-8cec1af67806', 'Apparatus', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'c99347c3-9eb0-4b28-bd66-8cec1af67806' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Equipping'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('c99347c3-9eb0-4b28-bd66-8cec1af67806', 'Equipping', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'c99347c3-9eb0-4b28-bd66-8cec1af67806' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Installation'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('c99347c3-9eb0-4b28-bd66-8cec1af67806', 'Installation', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'c99347c3-9eb0-4b28-bd66-8cec1af67806' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Installing'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('c99347c3-9eb0-4b28-bd66-8cec1af67806', 'Installing', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'c99347c3-9eb0-4b28-bd66-8cec1af67806' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Equip'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('c99347c3-9eb0-4b28-bd66-8cec1af67806', 'Equip', false, true);
  END IF;

  -- [VOCABULARY] 裏 (Level 33)
  UPDATE item_meanings SET meaning = 'Bagian Belakang', primary_meaning = true, accepted_answer = true WHERE id = '40a3e63e-cb59-47bc-92b7-4940cc96f5cb';
  UPDATE items SET slug = 'bagian-belakang' WHERE id = '25f01996-3e17-48b1-97d7-f4a7fd8252fd';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '25f01996-3e17-48b1-97d7-f4a7fd8252fd' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Sisi Sebaliknya'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('25f01996-3e17-48b1-97d7-f4a7fd8252fd', 'Sisi Sebaliknya', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '25f01996-3e17-48b1-97d7-f4a7fd8252fd' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Belakang'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('25f01996-3e17-48b1-97d7-f4a7fd8252fd', 'Belakang', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '25f01996-3e17-48b1-97d7-f4a7fd8252fd' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Reverse'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('25f01996-3e17-48b1-97d7-f4a7fd8252fd', 'Reverse', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '25f01996-3e17-48b1-97d7-f4a7fd8252fd' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Back'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('25f01996-3e17-48b1-97d7-f4a7fd8252fd', 'Back', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '25f01996-3e17-48b1-97d7-f4a7fd8252fd' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Rear'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('25f01996-3e17-48b1-97d7-f4a7fd8252fd', 'Rear', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '25f01996-3e17-48b1-97d7-f4a7fd8252fd' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Other Side'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('25f01996-3e17-48b1-97d7-f4a7fd8252fd', 'Other Side', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '25f01996-3e17-48b1-97d7-f4a7fd8252fd' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Lining'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('25f01996-3e17-48b1-97d7-f4a7fd8252fd', 'Lining', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '25f01996-3e17-48b1-97d7-f4a7fd8252fd' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Reverse Side'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('25f01996-3e17-48b1-97d7-f4a7fd8252fd', 'Reverse Side', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '25f01996-3e17-48b1-97d7-f4a7fd8252fd' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Wrong Side'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('25f01996-3e17-48b1-97d7-f4a7fd8252fd', 'Wrong Side', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '25f01996-3e17-48b1-97d7-f4a7fd8252fd' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Backside'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('25f01996-3e17-48b1-97d7-f4a7fd8252fd', 'Backside', false, true);
  END IF;

  -- [VOCABULARY] 裏切り (Level 33)
  UPDATE item_meanings SET meaning = 'Pengkhianatan', primary_meaning = true, accepted_answer = true WHERE id = 'af93dd6f-8001-428d-9c94-23ee74f55366';
  UPDATE items SET slug = 'pengkhianatan' WHERE id = '30b6a936-fc0e-4f06-a712-c40b067d852c';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '30b6a936-fc0e-4f06-a712-c40b067d852c' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Pembelotan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('30b6a936-fc0e-4f06-a712-c40b067d852c', 'Pembelotan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '30b6a936-fc0e-4f06-a712-c40b067d852c' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Betrayal'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('30b6a936-fc0e-4f06-a712-c40b067d852c', 'Betrayal', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '30b6a936-fc0e-4f06-a712-c40b067d852c' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Treachery'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('30b6a936-fc0e-4f06-a712-c40b067d852c', 'Treachery', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '30b6a936-fc0e-4f06-a712-c40b067d852c' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Backstab'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('30b6a936-fc0e-4f06-a712-c40b067d852c', 'Backstab', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '30b6a936-fc0e-4f06-a712-c40b067d852c' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Backstabbing'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('30b6a936-fc0e-4f06-a712-c40b067d852c', 'Backstabbing', false, true);
  END IF;

  -- [VOCABULARY] 裏切る (Level 33)
  UPDATE item_meanings SET meaning = 'Mengkhianati', primary_meaning = true, accepted_answer = true WHERE id = '4ad7598a-3c87-41bc-926a-895130e96367';
  UPDATE items SET slug = 'mengkhianati' WHERE id = 'e1a5d16f-c1b3-4927-ad49-a75322fbfe3d';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'e1a5d16f-c1b3-4927-ad49-a75322fbfe3d' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Membelot'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('e1a5d16f-c1b3-4927-ad49-a75322fbfe3d', 'Membelot', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'e1a5d16f-c1b3-4927-ad49-a75322fbfe3d' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Untuk menusuk dari belakang'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('e1a5d16f-c1b3-4927-ad49-a75322fbfe3d', 'Untuk menusuk dari belakang', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'e1a5d16f-c1b3-4927-ad49-a75322fbfe3d' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Betray'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('e1a5d16f-c1b3-4927-ad49-a75322fbfe3d', 'To Betray', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'e1a5d16f-c1b3-4927-ad49-a75322fbfe3d' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Backstab'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('e1a5d16f-c1b3-4927-ad49-a75322fbfe3d', 'To Backstab', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'e1a5d16f-c1b3-4927-ad49-a75322fbfe3d' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Untuk Mengkhianati'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('e1a5d16f-c1b3-4927-ad49-a75322fbfe3d', 'Untuk Mengkhianati', false, true);
  END IF;

  -- [VOCABULARY] 裏通り (Level 33)
  UPDATE item_meanings SET meaning = 'Gang Belakang', primary_meaning = true, accepted_answer = true WHERE id = '98cbeac4-826e-4363-abe1-de7ace38e6fe';
  UPDATE items SET slug = 'gang-belakang' WHERE id = '6ceadc7b-1e19-4a4c-821d-6b0360c99139';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '6ceadc7b-1e19-4a4c-821d-6b0360c99139' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Lorong Sepi'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('6ceadc7b-1e19-4a4c-821d-6b0360c99139', 'Lorong Sepi', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '6ceadc7b-1e19-4a4c-821d-6b0360c99139' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Gang'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('6ceadc7b-1e19-4a4c-821d-6b0360c99139', 'Gang', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '6ceadc7b-1e19-4a4c-821d-6b0360c99139' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Alley'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('6ceadc7b-1e19-4a4c-821d-6b0360c99139', 'Alley', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '6ceadc7b-1e19-4a4c-821d-6b0360c99139' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Back Street'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('6ceadc7b-1e19-4a4c-821d-6b0360c99139', 'Back Street', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '6ceadc7b-1e19-4a4c-821d-6b0360c99139' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Jalan Belakang'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('6ceadc7b-1e19-4a4c-821d-6b0360c99139', 'Jalan Belakang', false, true);
  END IF;

  -- [VOCABULARY] 諸君 (Level 33)
  UPDATE item_meanings SET meaning = 'Rekan-rekan Sekalian', primary_meaning = true, accepted_answer = true WHERE id = 'f376151a-dcfe-4422-98dd-246709495c90';
  UPDATE items SET slug = 'rekan-rekan-sekalian' WHERE id = '4a5692dc-293c-4adb-8e84-66cb2875977b';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '4a5692dc-293c-4adb-8e84-66cb2875977b' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Hadirin Sekalian'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('4a5692dc-293c-4adb-8e84-66cb2875977b', 'Hadirin Sekalian', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '4a5692dc-293c-4adb-8e84-66cb2875977b' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Tuan-tuan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('4a5692dc-293c-4adb-8e84-66cb2875977b', 'Tuan-tuan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '4a5692dc-293c-4adb-8e84-66cb2875977b' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Gentlemen'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('4a5692dc-293c-4adb-8e84-66cb2875977b', 'Gentlemen', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '4a5692dc-293c-4adb-8e84-66cb2875977b' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Ladies And Gentlemen'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('4a5692dc-293c-4adb-8e84-66cb2875977b', 'Ladies And Gentlemen', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '4a5692dc-293c-4adb-8e84-66cb2875977b' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Friends'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('4a5692dc-293c-4adb-8e84-66cb2875977b', 'Friends', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '4a5692dc-293c-4adb-8e84-66cb2875977b' AND LOWER(TRIM(meaning)) = LOWER(TRIM('My Friends'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('4a5692dc-293c-4adb-8e84-66cb2875977b', 'My Friends', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '4a5692dc-293c-4adb-8e84-66cb2875977b' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Teman-teman saya'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('4a5692dc-293c-4adb-8e84-66cb2875977b', 'Teman-teman saya', false, true);
  END IF;

  -- [VOCABULARY] 貯まる (Level 33)
  UPDATE item_meanings SET meaning = 'Terkumpul', primary_meaning = true, accepted_answer = true WHERE id = '14e75f0c-7246-4c72-8d11-8b702d2402d5';
  UPDATE items SET slug = 'terkumpul' WHERE id = '4938c893-0068-47a1-95d7-7f70f4114af0';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '4938c893-0068-47a1-95d7-7f70f4114af0' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Tertabung'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('4938c893-0068-47a1-95d7-7f70f4114af0', 'Tertabung', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '4938c893-0068-47a1-95d7-7f70f4114af0' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Tersimpan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('4938c893-0068-47a1-95d7-7f70f4114af0', 'Tersimpan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '4938c893-0068-47a1-95d7-7f70f4114af0' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Accumulate'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('4938c893-0068-47a1-95d7-7f70f4114af0', 'To Accumulate', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '4938c893-0068-47a1-95d7-7f70f4114af0' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Tertabung (Uang'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('4938c893-0068-47a1-95d7-7f70f4114af0', 'Tertabung (Uang', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '4938c893-0068-47a1-95d7-7f70f4114af0' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Harta)'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('4938c893-0068-47a1-95d7-7f70f4114af0', 'Harta)', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '4938c893-0068-47a1-95d7-7f70f4114af0' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Untuk Diselamatkan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('4938c893-0068-47a1-95d7-7f70f4114af0', 'Untuk Diselamatkan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '4938c893-0068-47a1-95d7-7f70f4114af0' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Get Saved Up'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('4938c893-0068-47a1-95d7-7f70f4114af0', 'To Get Saved Up', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '4938c893-0068-47a1-95d7-7f70f4114af0' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Get Stored Up'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('4938c893-0068-47a1-95d7-7f70f4114af0', 'To Get Stored Up', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '4938c893-0068-47a1-95d7-7f70f4114af0' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Amass'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('4938c893-0068-47a1-95d7-7f70f4114af0', 'To Amass', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '4938c893-0068-47a1-95d7-7f70f4114af0' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Add Up'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('4938c893-0068-47a1-95d7-7f70f4114af0', 'To Add Up', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '4938c893-0068-47a1-95d7-7f70f4114af0' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Be Saved Up'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('4938c893-0068-47a1-95d7-7f70f4114af0', 'To Be Saved Up', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '4938c893-0068-47a1-95d7-7f70f4114af0' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Untuk Akumulasi'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('4938c893-0068-47a1-95d7-7f70f4114af0', 'Untuk Akumulasi', false, true);
  END IF;

  -- [VOCABULARY] 賃貸 (Level 33)
  UPDATE item_meanings SET meaning = 'Sewa-menyewa', primary_meaning = true, accepted_answer = true WHERE id = 'f34d6a1a-934b-4a0e-b607-d723d239def3';
  UPDATE items SET slug = 'sewa-menyewa' WHERE id = 'fb718500-3c2c-40f1-b54f-88b084830a9f';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'fb718500-3c2c-40f1-b54f-88b084830a9f' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Rental'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('fb718500-3c2c-40f1-b54f-88b084830a9f', 'Rental', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'fb718500-3c2c-40f1-b54f-88b084830a9f' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Persewaan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('fb718500-3c2c-40f1-b54f-88b084830a9f', 'Persewaan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'fb718500-3c2c-40f1-b54f-88b084830a9f' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Rent'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('fb718500-3c2c-40f1-b54f-88b084830a9f', 'Rent', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'fb718500-3c2c-40f1-b54f-88b084830a9f' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Renting'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('fb718500-3c2c-40f1-b54f-88b084830a9f', 'Renting', false, true);
  END IF;

  -- [VOCABULARY] 野暮 (Level 33)
  UPDATE item_meanings SET meaning = 'Kuno', primary_meaning = true, accepted_answer = true WHERE id = 'd02174d3-3032-4c8e-b1ab-0a335a58a473';
  UPDATE items SET slug = 'kuno' WHERE id = '8fd53c16-6d07-4670-a2e6-cd868f6f3b3c';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '8fd53c16-6d07-4670-a2e6-cd868f6f3b3c' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Kampungan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('8fd53c16-6d07-4670-a2e6-cd868f6f3b3c', 'Kampungan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '8fd53c16-6d07-4670-a2e6-cd868f6f3b3c' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Tidak Peka'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('8fd53c16-6d07-4670-a2e6-cd868f6f3b3c', 'Tidak Peka', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '8fd53c16-6d07-4670-a2e6-cd868f6f3b3c' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Mentah'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('8fd53c16-6d07-4670-a2e6-cd868f6f3b3c', 'Mentah', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '8fd53c16-6d07-4670-a2e6-cd868f6f3b3c' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Rustic'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('8fd53c16-6d07-4670-a2e6-cd868f6f3b3c', 'Rustic', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '8fd53c16-6d07-4670-a2e6-cd868f6f3b3c' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Unrefined'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('8fd53c16-6d07-4670-a2e6-cd868f6f3b3c', 'Unrefined', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '8fd53c16-6d07-4670-a2e6-cd868f6f3b3c' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Awkward'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('8fd53c16-6d07-4670-a2e6-cd868f6f3b3c', 'Awkward', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '8fd53c16-6d07-4670-a2e6-cd868f6f3b3c' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Stupid'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('8fd53c16-6d07-4670-a2e6-cd868f6f3b3c', 'Stupid', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '8fd53c16-6d07-4670-a2e6-cd868f6f3b3c' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Pedesaan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('8fd53c16-6d07-4670-a2e6-cd868f6f3b3c', 'Pedesaan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '8fd53c16-6d07-4670-a2e6-cd868f6f3b3c' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Bodoh'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('8fd53c16-6d07-4670-a2e6-cd868f6f3b3c', 'Bodoh', false, true);
  END IF;

  -- [VOCABULARY] 離す (Level 33)
  UPDATE item_meanings SET meaning = 'Melepaskan', primary_meaning = true, accepted_answer = true WHERE id = 'a5e1e05a-ea74-481c-bbc7-01780bd87f7b';
  UPDATE items SET slug = 'melepaskan' WHERE id = '2fe1a41b-2977-4324-a387-78207333a7ab';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '2fe1a41b-2977-4324-a387-78207333a7ab' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Menjauhkan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('2fe1a41b-2977-4324-a387-78207333a7ab', 'Menjauhkan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '2fe1a41b-2977-4324-a387-78207333a7ab' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Memisahkan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('2fe1a41b-2977-4324-a387-78207333a7ab', 'Memisahkan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '2fe1a41b-2977-4324-a387-78207333a7ab' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Untuk Memisahkan Sesuatu'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('2fe1a41b-2977-4324-a387-78207333a7ab', 'Untuk Memisahkan Sesuatu', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '2fe1a41b-2977-4324-a387-78207333a7ab' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Detach'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('2fe1a41b-2977-4324-a387-78207333a7ab', 'To Detach', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '2fe1a41b-2977-4324-a387-78207333a7ab' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Separate'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('2fe1a41b-2977-4324-a387-78207333a7ab', 'To Separate', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '2fe1a41b-2977-4324-a387-78207333a7ab' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Put Away'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('2fe1a41b-2977-4324-a387-78207333a7ab', 'To Put Away', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '2fe1a41b-2977-4324-a387-78207333a7ab' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Detach Something'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('2fe1a41b-2977-4324-a387-78207333a7ab', 'To Detach Something', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '2fe1a41b-2977-4324-a387-78207333a7ab' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Keep Separate'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('2fe1a41b-2977-4324-a387-78207333a7ab', 'To Keep Separate', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '2fe1a41b-2977-4324-a387-78207333a7ab' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Part'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('2fe1a41b-2977-4324-a387-78207333a7ab', 'To Part', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '2fe1a41b-2977-4324-a387-78207333a7ab' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Keep Apart'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('2fe1a41b-2977-4324-a387-78207333a7ab', 'To Keep Apart', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '2fe1a41b-2977-4324-a387-78207333a7ab' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Separate Something'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('2fe1a41b-2977-4324-a387-78207333a7ab', 'To Separate Something', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '2fe1a41b-2977-4324-a387-78207333a7ab' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Let Go'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('2fe1a41b-2977-4324-a387-78207333a7ab', 'To Let Go', false, true);
  END IF;

  -- [VOCABULARY] 驚かす (Level 33)
  UPDATE item_meanings SET meaning = 'Mengejutkan', primary_meaning = true, accepted_answer = true WHERE id = '289fdca9-9480-4679-8878-5f138a99d480';
  UPDATE items SET slug = 'mengejutkan' WHERE id = '376be762-abc3-4fef-83fe-0d1b4d6708b6';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '376be762-abc3-4fef-83fe-0d1b4d6708b6' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Mengagetkan Seseorang'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('376be762-abc3-4fef-83fe-0d1b4d6708b6', 'Mengagetkan Seseorang', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '376be762-abc3-4fef-83fe-0d1b4d6708b6' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Surprise'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('376be762-abc3-4fef-83fe-0d1b4d6708b6', 'To Surprise', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '376be762-abc3-4fef-83fe-0d1b4d6708b6' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Startle'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('376be762-abc3-4fef-83fe-0d1b4d6708b6', 'To Startle', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '376be762-abc3-4fef-83fe-0d1b4d6708b6' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Shock'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('376be762-abc3-4fef-83fe-0d1b4d6708b6', 'To Shock', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '376be762-abc3-4fef-83fe-0d1b4d6708b6' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Sangat mengherankan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('376be762-abc3-4fef-83fe-0d1b4d6708b6', 'Sangat mengherankan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '376be762-abc3-4fef-83fe-0d1b4d6708b6' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Shock Someone'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('376be762-abc3-4fef-83fe-0d1b4d6708b6', 'To Shock Someone', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '376be762-abc3-4fef-83fe-0d1b4d6708b6' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Surprise Someone'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('376be762-abc3-4fef-83fe-0d1b4d6708b6', 'To Surprise Someone', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '376be762-abc3-4fef-83fe-0d1b4d6708b6' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Astonish'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('376be762-abc3-4fef-83fe-0d1b4d6708b6', 'To Astonish', false, true);
  END IF;

END $$;
