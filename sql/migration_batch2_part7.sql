-- Migration: Batch 2 Part 7 (Level 27)
-- Total items: 70

DO $$
BEGIN

  -- [KANJI] 就 (Level 27)
  UPDATE item_meanings SET meaning = 'Menjabat', primary_meaning = true, accepted_answer = true WHERE id = '84b0e11b-9d09-42de-b061-c5708cde9692';
  UPDATE items SET slug = 'menjabat' WHERE id = '30478e08-1db3-4034-956c-fdeecf04039c';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '30478e08-1db3-4034-956c-fdeecf04039c' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Mulai Bekerja'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('30478e08-1db3-4034-956c-fdeecf04039c', 'Mulai Bekerja', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '30478e08-1db3-4034-956c-fdeecf04039c' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Bekerja'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('30478e08-1db3-4034-956c-fdeecf04039c', 'Bekerja', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '30478e08-1db3-4034-956c-fdeecf04039c' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Get A Position'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('30478e08-1db3-4034-956c-fdeecf04039c', 'Get A Position', false, true);
  END IF;

  -- [KANJI] 屈 (Level 27)
  UPDATE item_meanings SET meaning = 'Tunduk', primary_meaning = true, accepted_answer = true WHERE id = 'c95912e2-1847-4175-934a-dc39bb771fcb';
  UPDATE items SET slug = 'tunduk' WHERE id = 'eb93e8dc-1201-4cf7-a095-be1203dad63e';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'eb93e8dc-1201-4cf7-a095-be1203dad63e' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Membungkuk'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('eb93e8dc-1201-4cf7-a095-be1203dad63e', 'Membungkuk', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'eb93e8dc-1201-4cf7-a095-be1203dad63e' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Menyerah'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('eb93e8dc-1201-4cf7-a095-be1203dad63e', 'Menyerah', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'eb93e8dc-1201-4cf7-a095-be1203dad63e' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Yield'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('eb93e8dc-1201-4cf7-a095-be1203dad63e', 'Yield', false, true);
  END IF;

  -- [KANJI] 康 (Level 27)
  UPDATE item_meanings SET meaning = 'Sehat', primary_meaning = true, accepted_answer = true WHERE id = '56bfe9fa-4a51-48b5-81ed-9f917e874028';
  UPDATE items SET slug = 'sehat' WHERE id = 'b0dfec07-20a7-4b60-aec1-e0df52bc46c9';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'b0dfec07-20a7-4b60-aec1-e0df52bc46c9' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Damai'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('b0dfec07-20a7-4b60-aec1-e0df52bc46c9', 'Damai', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'b0dfec07-20a7-4b60-aec1-e0df52bc46c9' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Kebugaran'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('b0dfec07-20a7-4b60-aec1-e0df52bc46c9', 'Kebugaran', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'b0dfec07-20a7-4b60-aec1-e0df52bc46c9' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Ease'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('b0dfec07-20a7-4b60-aec1-e0df52bc46c9', 'Ease', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'b0dfec07-20a7-4b60-aec1-e0df52bc46c9' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Peace'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('b0dfec07-20a7-4b60-aec1-e0df52bc46c9', 'Peace', false, true);
  END IF;

  -- [KANJI] 憧 (Level 27)
  UPDATE item_meanings SET meaning = 'Mengagumi', primary_meaning = true, accepted_answer = true WHERE id = 'd51cc9e0-51d8-429c-a63b-7452fa5a6869';
  UPDATE items SET slug = 'mengagumi' WHERE id = '4255adbf-db4a-4a1a-bf55-71a66b57cc9f';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '4255adbf-db4a-4a1a-bf55-71a66b57cc9f' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Mendambakan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('4255adbf-db4a-4a1a-bf55-71a66b57cc9f', 'Mendambakan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '4255adbf-db4a-4a1a-bf55-71a66b57cc9f' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Merindukan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('4255adbf-db4a-4a1a-bf55-71a66b57cc9f', 'Merindukan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '4255adbf-db4a-4a1a-bf55-71a66b57cc9f' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Long For'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('4255adbf-db4a-4a1a-bf55-71a66b57cc9f', 'Long For', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '4255adbf-db4a-4a1a-bf55-71a66b57cc9f' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Yearn'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('4255adbf-db4a-4a1a-bf55-71a66b57cc9f', 'Yearn', false, true);
  END IF;

  -- [KANJI] 招 (Level 27)
  UPDATE item_meanings SET meaning = 'Mengundang', primary_meaning = true, accepted_answer = true WHERE id = 'c9754e17-b051-447c-8f50-0097ad4e2194';
  UPDATE items SET slug = 'mengundang' WHERE id = '47dd440e-7b70-4915-bcea-a2747068c221';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '47dd440e-7b70-4915-bcea-a2747068c221' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Mengisyaratkan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('47dd440e-7b70-4915-bcea-a2747068c221', 'Mengisyaratkan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '47dd440e-7b70-4915-bcea-a2747068c221' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Memanggil'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('47dd440e-7b70-4915-bcea-a2747068c221', 'Memanggil', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '47dd440e-7b70-4915-bcea-a2747068c221' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Beckon'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('47dd440e-7b70-4915-bcea-a2747068c221', 'Beckon', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '47dd440e-7b70-4915-bcea-a2747068c221' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Invite'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('47dd440e-7b70-4915-bcea-a2747068c221', 'Invite', false, true);
  END IF;

  -- [KANJI] 昇 (Level 27)
  UPDATE item_meanings SET meaning = 'Naik', primary_meaning = true, accepted_answer = true WHERE id = '5eb0dfbd-2cc7-4575-b49c-8c2319ac667d';
  UPDATE items SET slug = 'naik' WHERE id = '169bcbe8-5bf9-45b4-b8d1-765b39eb7755';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '169bcbe8-5bf9-45b4-b8d1-765b39eb7755' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Meningkat'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('169bcbe8-5bf9-45b4-b8d1-765b39eb7755', 'Meningkat', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '169bcbe8-5bf9-45b4-b8d1-765b39eb7755' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Terbit'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('169bcbe8-5bf9-45b4-b8d1-765b39eb7755', 'Terbit', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '169bcbe8-5bf9-45b4-b8d1-765b39eb7755' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Ascend'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('169bcbe8-5bf9-45b4-b8d1-765b39eb7755', 'Ascend', false, true);
  END IF;

  -- [KANJI] 極 (Level 27)
  UPDATE item_meanings SET meaning = 'Kutub', primary_meaning = true, accepted_answer = true WHERE id = '8b20046c-3933-42e1-afaf-9179a693ea25';
  UPDATE items SET slug = 'kutub' WHERE id = '473fdedf-0f49-4c89-a35b-d24af97894f6';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '473fdedf-0f49-4c89-a35b-d24af97894f6' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Titik Puncak'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('473fdedf-0f49-4c89-a35b-d24af97894f6', 'Titik Puncak', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '473fdedf-0f49-4c89-a35b-d24af97894f6' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Ekstrem'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('473fdedf-0f49-4c89-a35b-d24af97894f6', 'Ekstrem', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '473fdedf-0f49-4c89-a35b-d24af97894f6' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Puncak'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('473fdedf-0f49-4c89-a35b-d24af97894f6', 'Puncak', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '473fdedf-0f49-4c89-a35b-d24af97894f6' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Extreme'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('473fdedf-0f49-4c89-a35b-d24af97894f6', 'Extreme', false, true);
  END IF;

  -- [KANJI] 段 (Level 27)
  UPDATE item_meanings SET meaning = 'Tingkatan', primary_meaning = true, accepted_answer = true WHERE id = 'ea55ffae-503a-4cb4-ab26-906e59962efd';
  UPDATE items SET slug = 'tingkatan' WHERE id = '44989f84-0ae6-4457-85ce-f77756eb870e';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '44989f84-0ae6-4457-85ce-f77756eb870e' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Anak Tangga'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('44989f84-0ae6-4457-85ce-f77756eb870e', 'Anak Tangga', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '44989f84-0ae6-4457-85ce-f77756eb870e' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Langkah'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('44989f84-0ae6-4457-85ce-f77756eb870e', 'Langkah', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '44989f84-0ae6-4457-85ce-f77756eb870e' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Steps'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('44989f84-0ae6-4457-85ce-f77756eb870e', 'Steps', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '44989f84-0ae6-4457-85ce-f77756eb870e' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Stairs'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('44989f84-0ae6-4457-85ce-f77756eb870e', 'Stairs', false, true);
  END IF;

  -- [KANJI] 濃 (Level 27)
  UPDATE item_meanings SET meaning = 'Pekat', primary_meaning = true, accepted_answer = true WHERE id = '9763cabf-9697-4cd1-b6f5-b70d64540b42';
  UPDATE items SET slug = 'pekat' WHERE id = '97332930-459e-4f06-a14f-458538666056';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '97332930-459e-4f06-a14f-458538666056' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Kental'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('97332930-459e-4f06-a14f-458538666056', 'Kental', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '97332930-459e-4f06-a14f-458538666056' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Tebal'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('97332930-459e-4f06-a14f-458538666056', 'Tebal', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '97332930-459e-4f06-a14f-458538666056' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Dense'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('97332930-459e-4f06-a14f-458538666056', 'Dense', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '97332930-459e-4f06-a14f-458538666056' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Thick'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('97332930-459e-4f06-a14f-458538666056', 'Thick', false, true);
  END IF;

  -- [KANJI] 眠 (Level 27)
  UPDATE item_meanings SET meaning = 'Tidur', primary_meaning = true, accepted_answer = true WHERE id = 'b789337b-7669-4883-9daa-83c9ee31a3bc';
  UPDATE items SET slug = 'tidur' WHERE id = 'b723ac42-b5f6-4475-9cf2-04b350d1787b';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'b723ac42-b5f6-4475-9cf2-04b350d1787b' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Mengantuk'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('b723ac42-b5f6-4475-9cf2-04b350d1787b', 'Mengantuk', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'b723ac42-b5f6-4475-9cf2-04b350d1787b' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Terlelap'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('b723ac42-b5f6-4475-9cf2-04b350d1787b', 'Terlelap', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'b723ac42-b5f6-4475-9cf2-04b350d1787b' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Sleep'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('b723ac42-b5f6-4475-9cf2-04b350d1787b', 'Sleep', false, true);
  END IF;

  -- [KANJI] 睡 (Level 27)
  UPDATE item_meanings SET meaning = 'Mengantuk', primary_meaning = true, accepted_answer = true WHERE id = '4f2d585f-3f9d-4fe1-9e69-f24780700dfe';
  UPDATE items SET slug = 'mengantuk' WHERE id = 'bf4e8f23-422c-4202-aa31-c61d354a6ee3';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'bf4e8f23-422c-4202-aa31-c61d354a6ee3' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Tidur'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('bf4e8f23-422c-4202-aa31-c61d354a6ee3', 'Tidur', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'bf4e8f23-422c-4202-aa31-c61d354a6ee3' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Terlelap'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('bf4e8f23-422c-4202-aa31-c61d354a6ee3', 'Terlelap', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'bf4e8f23-422c-4202-aa31-c61d354a6ee3' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Drowsy'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('bf4e8f23-422c-4202-aa31-c61d354a6ee3', 'Drowsy', false, true);
  END IF;

  -- [KANJI] 端 (Level 27)
  UPDATE item_meanings SET meaning = 'Ujung', primary_meaning = true, accepted_answer = true WHERE id = 'eefbab88-cc9a-40e8-9435-781e6c23273d';
  UPDATE items SET slug = 'ujung' WHERE id = 'f4a35f7b-a2b9-4298-a3d6-fb92abac172b';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'f4a35f7b-a2b9-4298-a3d6-fb92abac172b' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Tepian'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('f4a35f7b-a2b9-4298-a3d6-fb92abac172b', 'Tepian', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'f4a35f7b-a2b9-4298-a3d6-fb92abac172b' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Pinggir'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('f4a35f7b-a2b9-4298-a3d6-fb92abac172b', 'Pinggir', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'f4a35f7b-a2b9-4298-a3d6-fb92abac172b' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Edge'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('f4a35f7b-a2b9-4298-a3d6-fb92abac172b', 'Edge', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'f4a35f7b-a2b9-4298-a3d6-fb92abac172b' AND LOWER(TRIM(meaning)) = LOWER(TRIM('End'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('f4a35f7b-a2b9-4298-a3d6-fb92abac172b', 'End', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'f4a35f7b-a2b9-4298-a3d6-fb92abac172b' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Tepi'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('f4a35f7b-a2b9-4298-a3d6-fb92abac172b', 'Tepi', false, true);
  END IF;

  -- [KANJI] 締 (Level 27)
  UPDATE item_meanings SET meaning = 'Mengencangkan', primary_meaning = true, accepted_answer = true WHERE id = '01ee19df-ce12-4d20-9ef8-a3d65a31c132';
  UPDATE items SET slug = 'mengencangkan' WHERE id = '69543a9e-8ade-4b70-a288-f1e9c5fb64a3';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '69543a9e-8ade-4b70-a288-f1e9c5fb64a3' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Menyimpulkan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('69543a9e-8ade-4b70-a288-f1e9c5fb64a3', 'Menyimpulkan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '69543a9e-8ade-4b70-a288-f1e9c5fb64a3' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Mengikat'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('69543a9e-8ade-4b70-a288-f1e9c5fb64a3', 'Mengikat', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '69543a9e-8ade-4b70-a288-f1e9c5fb64a3' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Tighten'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('69543a9e-8ade-4b70-a288-f1e9c5fb64a3', 'Tighten', false, true);
  END IF;

  -- [KANJI] 訪 (Level 27)
  UPDATE item_meanings SET meaning = 'Mengunjungi', primary_meaning = true, accepted_answer = true WHERE id = 'dd8d02c4-75a9-4279-b687-57ee12d1d5d3';
  UPDATE items SET slug = 'mengunjungi' WHERE id = 'a4724930-3561-4796-8b16-5813dd09f1dd';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'a4724930-3561-4796-8b16-5813dd09f1dd' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Bertamu'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('a4724930-3561-4796-8b16-5813dd09f1dd', 'Bertamu', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'a4724930-3561-4796-8b16-5813dd09f1dd' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Menjenguk'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('a4724930-3561-4796-8b16-5813dd09f1dd', 'Menjenguk', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'a4724930-3561-4796-8b16-5813dd09f1dd' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Visit'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('a4724930-3561-4796-8b16-5813dd09f1dd', 'Visit', false, true);
  END IF;

  -- [KANJI] 誘 (Level 27)
  UPDATE item_meanings SET meaning = 'Mengajak', primary_meaning = true, accepted_answer = true WHERE id = '46c50340-7d7d-4e4b-a148-969edff733c7';
  UPDATE items SET slug = 'mengajak' WHERE id = 'c75d79bc-aae7-4371-b9b7-b2ac79030c2e';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'c75d79bc-aae7-4371-b9b7-b2ac79030c2e' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Menggoda'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('c75d79bc-aae7-4371-b9b7-b2ac79030c2e', 'Menggoda', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'c75d79bc-aae7-4371-b9b7-b2ac79030c2e' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Membujuk'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('c75d79bc-aae7-4371-b9b7-b2ac79030c2e', 'Membujuk', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'c75d79bc-aae7-4371-b9b7-b2ac79030c2e' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Invite'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('c75d79bc-aae7-4371-b9b7-b2ac79030c2e', 'Invite', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'c75d79bc-aae7-4371-b9b7-b2ac79030c2e' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Lure'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('c75d79bc-aae7-4371-b9b7-b2ac79030c2e', 'Lure', false, true);
  END IF;

  -- [KANJI] 迫 (Level 27)
  UPDATE item_meanings SET meaning = 'Mendesak', primary_meaning = true, accepted_answer = true WHERE id = '130c25cb-76cc-4ca2-adf8-a766b921d291';
  UPDATE items SET slug = 'mendesak' WHERE id = '80018c2f-6652-47f7-822f-164fb5413998';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '80018c2f-6652-47f7-822f-164fb5413998' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Mendekati'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('80018c2f-6652-47f7-822f-164fb5413998', 'Mendekati', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '80018c2f-6652-47f7-822f-164fb5413998' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Menekan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('80018c2f-6652-47f7-822f-164fb5413998', 'Menekan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '80018c2f-6652-47f7-822f-164fb5413998' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Urge'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('80018c2f-6652-47f7-822f-164fb5413998', 'Urge', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '80018c2f-6652-47f7-822f-164fb5413998' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Coerce'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('80018c2f-6652-47f7-822f-164fb5413998', 'Coerce', false, true);
  END IF;

  -- [KANJI] 迷 (Level 27)
  UPDATE item_meanings SET meaning = 'Tersesat', primary_meaning = true, accepted_answer = true WHERE id = 'f940f792-340f-4abb-9456-c01cff3b19bb';
  UPDATE items SET slug = 'tersesat' WHERE id = '045c05a0-8dbc-48cb-8dbb-a7c764a9895f';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '045c05a0-8dbc-48cb-8dbb-a7c764a9895f' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Ragu-ragu'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('045c05a0-8dbc-48cb-8dbb-a7c764a9895f', 'Ragu-ragu', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '045c05a0-8dbc-48cb-8dbb-a7c764a9895f' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Bimbang'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('045c05a0-8dbc-48cb-8dbb-a7c764a9895f', 'Bimbang', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '045c05a0-8dbc-48cb-8dbb-a7c764a9895f' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Astray'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('045c05a0-8dbc-48cb-8dbb-a7c764a9895f', 'Astray', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '045c05a0-8dbc-48cb-8dbb-a7c764a9895f' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Lost'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('045c05a0-8dbc-48cb-8dbb-a7c764a9895f', 'Lost', false, true);
  END IF;

  -- [KANJI] 途 (Level 27)
  UPDATE item_meanings SET meaning = 'Rute', primary_meaning = true, accepted_answer = true WHERE id = 'aa72edc9-924f-47f0-bcbe-e15f631adb6d';
  UPDATE items SET slug = 'rute' WHERE id = '8ba9b273-96d8-422d-8616-af6b3bf72c8d';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '8ba9b273-96d8-422d-8616-af6b3bf72c8d' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Jalan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('8ba9b273-96d8-422d-8616-af6b3bf72c8d', 'Jalan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '8ba9b273-96d8-422d-8616-af6b3bf72c8d' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Tengah Jalan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('8ba9b273-96d8-422d-8616-af6b3bf72c8d', 'Tengah Jalan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '8ba9b273-96d8-422d-8616-af6b3bf72c8d' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Perjalanan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('8ba9b273-96d8-422d-8616-af6b3bf72c8d', 'Perjalanan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '8ba9b273-96d8-422d-8616-af6b3bf72c8d' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Route'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('8ba9b273-96d8-422d-8616-af6b3bf72c8d', 'Route', false, true);
  END IF;

  -- [VOCABULARY] お任せ (Level 27)
  UPDATE item_meanings SET meaning = 'Omakase', primary_meaning = true, accepted_answer = true WHERE id = '3f30000d-f5f5-49fc-a785-c579ea1a9343';
  UPDATE items SET slug = 'omakase' WHERE id = '56b4a9b0-e5f6-4536-97c2-42042580906a';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '56b4a9b0-e5f6-4536-97c2-42042580906a' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Pasrah Rekomendasi Koki'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('56b4a9b0-e5f6-4536-97c2-42042580906a', 'Pasrah Rekomendasi Koki', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '56b4a9b0-e5f6-4536-97c2-42042580906a' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Pilihan Koki'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('56b4a9b0-e5f6-4536-97c2-42042580906a', 'Pilihan Koki', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '56b4a9b0-e5f6-4536-97c2-42042580906a' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Serahkan Kepada Koki'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('56b4a9b0-e5f6-4536-97c2-42042580906a', 'Serahkan Kepada Koki', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '56b4a9b0-e5f6-4536-97c2-42042580906a' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Chef''s Choice'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('56b4a9b0-e5f6-4536-97c2-42042580906a', 'Chef''s Choice', false, true);
  END IF;

  -- [VOCABULARY] お構いなく (Level 27)
  UPDATE item_meanings SET meaning = 'Jangan Repot-repot', primary_meaning = true, accepted_answer = true WHERE id = '7eb91804-a432-4da7-9996-d095a8d989fe';
  UPDATE items SET slug = 'jangan-repot-repot' WHERE id = '4cff1bb9-633b-461a-b8ae-ce7bff2dc5e6';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '4cff1bb9-633b-461a-b8ae-ce7bff2dc5e6' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Jangan Hiraukan Saya'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('4cff1bb9-633b-461a-b8ae-ce7bff2dc5e6', 'Jangan Hiraukan Saya', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '4cff1bb9-633b-461a-b8ae-ce7bff2dc5e6' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Jangan Khawatir'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('4cff1bb9-633b-461a-b8ae-ce7bff2dc5e6', 'Jangan Khawatir', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '4cff1bb9-633b-461a-b8ae-ce7bff2dc5e6' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Don''t Mind Me'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('4cff1bb9-633b-461a-b8ae-ce7bff2dc5e6', 'Don''t Mind Me', false, true);
  END IF;

  -- [VOCABULARY] お腹が空く (Level 27)
  UPDATE item_meanings SET meaning = 'Lapar', primary_meaning = true, accepted_answer = true WHERE id = '59fece5f-9a47-41c4-afb1-2c8e8f506507';
  UPDATE items SET slug = 'lapar' WHERE id = 'aaceec61-a4e6-4299-9a2a-3e7eed8d8649';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'aaceec61-a4e6-4299-9a2a-3e7eed8d8649' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Perut Kosong'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('aaceec61-a4e6-4299-9a2a-3e7eed8d8649', 'Perut Kosong', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'aaceec61-a4e6-4299-9a2a-3e7eed8d8649' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Kelaparan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('aaceec61-a4e6-4299-9a2a-3e7eed8d8649', 'Kelaparan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'aaceec61-a4e6-4299-9a2a-3e7eed8d8649' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Get Hungry'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('aaceec61-a4e6-4299-9a2a-3e7eed8d8649', 'To Get Hungry', false, true);
  END IF;

  -- [VOCABULARY] 不眠症 (Level 27)
  UPDATE item_meanings SET meaning = 'Insomnia', primary_meaning = true, accepted_answer = true WHERE id = '3f390699-1745-4ecf-9830-5f773e5c9ebb';
  UPDATE items SET slug = 'insomnia' WHERE id = '7e41f8dd-d629-4122-8ba1-4a433236094f';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '7e41f8dd-d629-4122-8ba1-4a433236094f' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Susah Tidur'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('7e41f8dd-d629-4122-8ba1-4a433236094f', 'Susah Tidur', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '7e41f8dd-d629-4122-8ba1-4a433236094f' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Gangguan Tidur'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('7e41f8dd-d629-4122-8ba1-4a433236094f', 'Gangguan Tidur', false, true);
  END IF;

  -- [VOCABULARY] 与える (Level 27)
  UPDATE item_meanings SET meaning = 'Memberikan', primary_meaning = true, accepted_answer = true WHERE id = '1b7eb484-4761-4249-bf27-49dd323346f5';
  UPDATE items SET slug = 'memberikan' WHERE id = 'b0d7bcf3-37c4-4bd5-958b-6f42371abf29';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'b0d7bcf3-37c4-4bd5-958b-6f42371abf29' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Menganugerahkan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('b0d7bcf3-37c4-4bd5-958b-6f42371abf29', 'Menganugerahkan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'b0d7bcf3-37c4-4bd5-958b-6f42371abf29' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Menghadiahkan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('b0d7bcf3-37c4-4bd5-958b-6f42371abf29', 'Menghadiahkan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'b0d7bcf3-37c4-4bd5-958b-6f42371abf29' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Give'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('b0d7bcf3-37c4-4bd5-958b-6f42371abf29', 'To Give', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'b0d7bcf3-37c4-4bd5-958b-6f42371abf29' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Grant'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('b0d7bcf3-37c4-4bd5-958b-6f42371abf29', 'To Grant', false, true);
  END IF;

  -- [VOCABULARY] 中途半端 (Level 27)
  UPDATE item_meanings SET meaning = 'Setengah-setengah', primary_meaning = true, accepted_answer = true WHERE id = '18fb68f0-f0e1-4f03-9ef1-cc35dcf85142';
  UPDATE items SET slug = 'setengah-setengah' WHERE id = '1c82700f-62b2-4081-9ae3-70062bf9c115';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '1c82700f-62b2-4081-9ae3-70062bf9c115' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Nanggung'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('1c82700f-62b2-4081-9ae3-70062bf9c115', 'Nanggung', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '1c82700f-62b2-4081-9ae3-70062bf9c115' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Belum Tuntas'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('1c82700f-62b2-4081-9ae3-70062bf9c115', 'Belum Tuntas', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '1c82700f-62b2-4081-9ae3-70062bf9c115' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Half Finished'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('1c82700f-62b2-4081-9ae3-70062bf9c115', 'Half Finished', false, true);
  END IF;

  -- [VOCABULARY] 先端 (Level 27)
  UPDATE item_meanings SET meaning = 'Ujung Terdepan', primary_meaning = true, accepted_answer = true WHERE id = '4ca27561-b028-494e-91a3-1085ab1fcec3';
  UPDATE items SET slug = 'ujung-terdepan' WHERE id = 'ad373847-6b37-437d-b9ae-0bb4cc11912d';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'ad373847-6b37-437d-b9ae-0bb4cc11912d' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Mutakhir'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('ad373847-6b37-437d-b9ae-0bb4cc11912d', 'Mutakhir', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'ad373847-6b37-437d-b9ae-0bb4cc11912d' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Canggih'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('ad373847-6b37-437d-b9ae-0bb4cc11912d', 'Canggih', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'ad373847-6b37-437d-b9ae-0bb4cc11912d' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Cutting Edge'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('ad373847-6b37-437d-b9ae-0bb4cc11912d', 'Cutting Edge', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'ad373847-6b37-437d-b9ae-0bb4cc11912d' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Tip'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('ad373847-6b37-437d-b9ae-0bb4cc11912d', 'Tip', false, true);
  END IF;

  -- [VOCABULARY] 分解 (Level 27)
  UPDATE item_meanings SET meaning = 'Pembongkaran', primary_meaning = true, accepted_answer = true WHERE id = '867a35d4-51ad-4a02-a0ba-752ee1611a47';
  UPDATE items SET slug = 'pembongkaran' WHERE id = 'e168af26-b45e-4aab-a404-6d7a059c0e58';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'e168af26-b45e-4aab-a404-6d7a059c0e58' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Penguraian'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('e168af26-b45e-4aab-a404-6d7a059c0e58', 'Penguraian', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'e168af26-b45e-4aab-a404-6d7a059c0e58' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Dekomposisi'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('e168af26-b45e-4aab-a404-6d7a059c0e58', 'Dekomposisi', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'e168af26-b45e-4aab-a404-6d7a059c0e58' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Disassembling'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('e168af26-b45e-4aab-a404-6d7a059c0e58', 'Disassembling', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'e168af26-b45e-4aab-a404-6d7a059c0e58' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Breakdown'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('e168af26-b45e-4aab-a404-6d7a059c0e58', 'Breakdown', false, true);
  END IF;

  -- [VOCABULARY] 切迫 (Level 27)
  UPDATE item_meanings SET meaning = 'Genting', primary_meaning = true, accepted_answer = true WHERE id = 'f472522f-48c7-4f2e-9f91-bd598ca059a7';
  UPDATE items SET slug = 'genting' WHERE id = 'da613e67-9c99-4343-bf72-1d1a9c1e4552';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'da613e67-9c99-4343-bf72-1d1a9c1e4552' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Mendesak'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('da613e67-9c99-4343-bf72-1d1a9c1e4552', 'Mendesak', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'da613e67-9c99-4343-bf72-1d1a9c1e4552' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Darurat'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('da613e67-9c99-4343-bf72-1d1a9c1e4552', 'Darurat', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'da613e67-9c99-4343-bf72-1d1a9c1e4552' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Urgency'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('da613e67-9c99-4343-bf72-1d1a9c1e4552', 'Urgency', false, true);
  END IF;

  -- [VOCABULARY] 取り替える (Level 27)
  UPDATE item_meanings SET meaning = 'Mengganti', primary_meaning = true, accepted_answer = true WHERE id = '0b568a51-10df-4dbd-bfee-ba4153413a87';
  UPDATE items SET slug = 'mengganti' WHERE id = 'b3742ddf-ecf4-4922-a766-af680a871e59';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'b3742ddf-ecf4-4922-a766-af680a871e59' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Menukar'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('b3742ddf-ecf4-4922-a766-af680a871e59', 'Menukar', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'b3742ddf-ecf4-4922-a766-af680a871e59' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Menggantikan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('b3742ddf-ecf4-4922-a766-af680a871e59', 'Menggantikan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'b3742ddf-ecf4-4922-a766-af680a871e59' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Replace'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('b3742ddf-ecf4-4922-a766-af680a871e59', 'To Replace', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'b3742ddf-ecf4-4922-a766-af680a871e59' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Exchange'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('b3742ddf-ecf4-4922-a766-af680a871e59', 'To Exchange', false, true);
  END IF;

  -- [VOCABULARY] 図る (Level 27)
  UPDATE item_meanings SET meaning = 'Mengupayakan', primary_meaning = true, accepted_answer = true WHERE id = '78ef7b83-8802-4826-8371-56b602e93d33';
  UPDATE items SET slug = 'mengupayakan' WHERE id = 'f8ac88a7-3f53-486e-8fcc-9396f1d472fd';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'f8ac88a7-3f53-486e-8fcc-9396f1d472fd' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Merencanakan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('f8ac88a7-3f53-486e-8fcc-9396f1d472fd', 'Merencanakan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'f8ac88a7-3f53-486e-8fcc-9396f1d472fd' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Mencoba'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('f8ac88a7-3f53-486e-8fcc-9396f1d472fd', 'Mencoba', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'f8ac88a7-3f53-486e-8fcc-9396f1d472fd' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Work Toward'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('f8ac88a7-3f53-486e-8fcc-9396f1d472fd', 'To Work Toward', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'f8ac88a7-3f53-486e-8fcc-9396f1d472fd' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Plan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('f8ac88a7-3f53-486e-8fcc-9396f1d472fd', 'To Plan', false, true);
  END IF;

  -- [VOCABULARY] 就業 (Level 27)
  UPDATE item_meanings SET meaning = 'Jam Kerja', primary_meaning = true, accepted_answer = true WHERE id = 'c23f3576-cca4-4312-b688-0e7bd66da8e1';
  UPDATE items SET slug = 'jam-kerja' WHERE id = 'e6512f09-8daa-4f55-bbaa-cdd6f851e7b6';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'e6512f09-8daa-4f55-bbaa-cdd6f851e7b6' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Menjalani Pekerjaan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('e6512f09-8daa-4f55-bbaa-cdd6f851e7b6', 'Menjalani Pekerjaan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'e6512f09-8daa-4f55-bbaa-cdd6f851e7b6' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Bekerja'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('e6512f09-8daa-4f55-bbaa-cdd6f851e7b6', 'Bekerja', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'e6512f09-8daa-4f55-bbaa-cdd6f851e7b6' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Working'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('e6512f09-8daa-4f55-bbaa-cdd6f851e7b6', 'Working', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'e6512f09-8daa-4f55-bbaa-cdd6f851e7b6' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Employment'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('e6512f09-8daa-4f55-bbaa-cdd6f851e7b6', 'Employment', false, true);
  END IF;

  -- [VOCABULARY] 就職 (Level 27)
  UPDATE item_meanings SET meaning = 'Mendapatkan Pekerjaan', primary_meaning = true, accepted_answer = true WHERE id = 'e421dd61-dd0d-4dbd-9c9b-8b529c4ed037';
  UPDATE items SET slug = 'mendapatkan-pekerjaan' WHERE id = '4479eb3f-51c2-4dc8-800d-83723467df0c';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '4479eb3f-51c2-4dc8-800d-83723467df0c' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Mulai Bekerja'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('4479eb3f-51c2-4dc8-800d-83723467df0c', 'Mulai Bekerja', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '4479eb3f-51c2-4dc8-800d-83723467df0c' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Masuk Kerja'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('4479eb3f-51c2-4dc8-800d-83723467df0c', 'Masuk Kerja', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '4479eb3f-51c2-4dc8-800d-83723467df0c' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Finding Employment'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('4479eb3f-51c2-4dc8-800d-83723467df0c', 'Finding Employment', false, true);
  END IF;

  -- [VOCABULARY] 屈む (Level 27)
  UPDATE item_meanings SET meaning = 'Membungkuk', primary_meaning = true, accepted_answer = true WHERE id = '26840c10-4f27-4cc6-8538-44ba31ad9750';
  UPDATE items SET slug = 'membungkuk' WHERE id = '2387804b-bdc9-4bba-832d-502bf83035f9';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '2387804b-bdc9-4bba-832d-502bf83035f9' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Berjongkok'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('2387804b-bdc9-4bba-832d-502bf83035f9', 'Berjongkok', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '2387804b-bdc9-4bba-832d-502bf83035f9' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Menunduk'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('2387804b-bdc9-4bba-832d-502bf83035f9', 'Menunduk', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '2387804b-bdc9-4bba-832d-502bf83035f9' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Bend Down'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('2387804b-bdc9-4bba-832d-502bf83035f9', 'To Bend Down', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '2387804b-bdc9-4bba-832d-502bf83035f9' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Squat'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('2387804b-bdc9-4bba-832d-502bf83035f9', 'To Squat', false, true);
  END IF;

  -- [VOCABULARY] 履歴書 (Level 27)
  UPDATE item_meanings SET meaning = 'Curriculum Vitae', primary_meaning = true, accepted_answer = true WHERE id = 'af211f1b-adeb-4d9a-83c8-94ba742e2aa1';
  UPDATE items SET slug = 'curriculum-vitae' WHERE id = '2965a084-e192-46c9-95c0-1808a6bb44cd';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '2965a084-e192-46c9-95c0-1808a6bb44cd' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Riwayat Hidup'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('2965a084-e192-46c9-95c0-1808a6bb44cd', 'Riwayat Hidup', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '2965a084-e192-46c9-95c0-1808a6bb44cd' AND LOWER(TRIM(meaning)) = LOWER(TRIM('CV'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('2965a084-e192-46c9-95c0-1808a6bb44cd', 'CV', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '2965a084-e192-46c9-95c0-1808a6bb44cd' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Resume'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('2965a084-e192-46c9-95c0-1808a6bb44cd', 'Resume', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '2965a084-e192-46c9-95c0-1808a6bb44cd' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Daftar Riwayat Hidup'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('2965a084-e192-46c9-95c0-1808a6bb44cd', 'Daftar Riwayat Hidup', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '2965a084-e192-46c9-95c0-1808a6bb44cd' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Riwayat Hidup (CV'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('2965a084-e192-46c9-95c0-1808a6bb44cd', 'Riwayat Hidup (CV', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '2965a084-e192-46c9-95c0-1808a6bb44cd' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Resume)'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('2965a084-e192-46c9-95c0-1808a6bb44cd', 'Resume)', false, true);
  END IF;

  -- [VOCABULARY] 建前 (Level 27)
  UPDATE item_meanings SET meaning = 'Tatemae', primary_meaning = true, accepted_answer = true WHERE id = 'cc4a7d93-cc92-4dce-87b8-9f105861e14a';
  UPDATE items SET slug = 'tatemae' WHERE id = '2cf636d5-d028-4d3b-8863-0cb3b567eeba';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '2cf636d5-d028-4d3b-8863-0cb3b567eeba' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Basa-basi'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('2cf636d5-d028-4d3b-8863-0cb3b567eeba', 'Basa-basi', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '2cf636d5-d028-4d3b-8863-0cb3b567eeba' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Sikap Publik'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('2cf636d5-d028-4d3b-8863-0cb3b567eeba', 'Sikap Publik', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '2cf636d5-d028-4d3b-8863-0cb3b567eeba' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Etika Sosial'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('2cf636d5-d028-4d3b-8863-0cb3b567eeba', 'Etika Sosial', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '2cf636d5-d028-4d3b-8863-0cb3b567eeba' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Public Behavior'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('2cf636d5-d028-4d3b-8863-0cb3b567eeba', 'Public Behavior', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '2cf636d5-d028-4d3b-8863-0cb3b567eeba' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Tatemae (Basa-basi'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('2cf636d5-d028-4d3b-8863-0cb3b567eeba', 'Tatemae (Basa-basi', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '2cf636d5-d028-4d3b-8863-0cb3b567eeba' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Sikap Publik)'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('2cf636d5-d028-4d3b-8863-0cb3b567eeba', 'Sikap Publik)', false, true);
  END IF;

  -- [VOCABULARY] 従える (Level 27)
  UPDATE item_meanings SET meaning = 'Membawa Serta', primary_meaning = true, accepted_answer = true WHERE id = 'c31c1a18-815e-4486-886e-822b4792899c';
  UPDATE items SET slug = 'membawa-serta' WHERE id = '0ae6f56f-6c7a-48cb-83a2-910dba309152';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '0ae6f56f-6c7a-48cb-83a2-910dba309152' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Memimpin'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('0ae6f56f-6c7a-48cb-83a2-910dba309152', 'Memimpin', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '0ae6f56f-6c7a-48cb-83a2-910dba309152' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Membawa Bawahan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('0ae6f56f-6c7a-48cb-83a2-910dba309152', 'Membawa Bawahan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '0ae6f56f-6c7a-48cb-83a2-910dba309152' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Be Accompanied By'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('0ae6f56f-6c7a-48cb-83a2-910dba309152', 'To Be Accompanied By', false, true);
  END IF;

  -- [VOCABULARY] 応える (Level 27)
  UPDATE item_meanings SET meaning = 'Memenuhi', primary_meaning = true, accepted_answer = true WHERE id = '3ee37a3c-464a-4c24-accc-b76cd01a7018';
  UPDATE items SET slug = 'memenuhi' WHERE id = 'e211ef87-8a16-46be-b18c-d5bef565984b';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'e211ef87-8a16-46be-b18c-d5bef565984b' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Membalas'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('e211ef87-8a16-46be-b18c-d5bef565984b', 'Membalas', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'e211ef87-8a16-46be-b18c-d5bef565984b' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Menjawab Harapan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('e211ef87-8a16-46be-b18c-d5bef565984b', 'Menjawab Harapan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'e211ef87-8a16-46be-b18c-d5bef565984b' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Respond To'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('e211ef87-8a16-46be-b18c-d5bef565984b', 'To Respond To', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'e211ef87-8a16-46be-b18c-d5bef565984b' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Live Up To'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('e211ef87-8a16-46be-b18c-d5bef565984b', 'To Live Up To', false, true);
  END IF;

  -- [VOCABULARY] 怒鳴る (Level 27)
  UPDATE item_meanings SET meaning = 'Membentak', primary_meaning = true, accepted_answer = true WHERE id = 'a9ee4a4b-0e4d-42d5-8724-47f0499345ce';
  UPDATE items SET slug = 'membentak' WHERE id = 'ed480b8f-e46f-4867-8efd-51ded2b4b0e2';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'ed480b8f-e46f-4867-8efd-51ded2b4b0e2' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Berteriak Marah'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('ed480b8f-e46f-4867-8efd-51ded2b4b0e2', 'Berteriak Marah', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'ed480b8f-e46f-4867-8efd-51ded2b4b0e2' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Menghardik'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('ed480b8f-e46f-4867-8efd-51ded2b4b0e2', 'Menghardik', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'ed480b8f-e46f-4867-8efd-51ded2b4b0e2' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Yell'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('ed480b8f-e46f-4867-8efd-51ded2b4b0e2', 'To Yell', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'ed480b8f-e46f-4867-8efd-51ded2b4b0e2' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Shout'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('ed480b8f-e46f-4867-8efd-51ded2b4b0e2', 'To Shout', false, true);
  END IF;

  -- [VOCABULARY] 憧れる (Level 27)
  UPDATE item_meanings SET meaning = 'Mengagumi', primary_meaning = true, accepted_answer = true WHERE id = '3727f06e-9ff9-4a20-b679-b9b6f6b487d6';
  UPDATE items SET slug = 'mengagumi' WHERE id = '99b3b371-8564-4f1a-8083-1fb342d13cef';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '99b3b371-8564-4f1a-8083-1fb342d13cef' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Mendambakan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('99b3b371-8564-4f1a-8083-1fb342d13cef', 'Mendambakan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '99b3b371-8564-4f1a-8083-1fb342d13cef' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Mengidolakan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('99b3b371-8564-4f1a-8083-1fb342d13cef', 'Mengidolakan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '99b3b371-8564-4f1a-8083-1fb342d13cef' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Long For'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('99b3b371-8564-4f1a-8083-1fb342d13cef', 'To Long For', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '99b3b371-8564-4f1a-8083-1fb342d13cef' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Admire'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('99b3b371-8564-4f1a-8083-1fb342d13cef', 'To Admire', false, true);
  END IF;

  -- [VOCABULARY] 抜き出す (Level 27)
  UPDATE item_meanings SET meaning = 'Mencabut Keluar', primary_meaning = true, accepted_answer = true WHERE id = '4c82b351-18de-4832-a2a7-300e7b2d66cb';
  UPDATE items SET slug = 'mencabut-keluar' WHERE id = 'aefad1ed-ea4b-4cfe-855a-447a7e890664';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'aefad1ed-ea4b-4cfe-855a-447a7e890664' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Memilah'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('aefad1ed-ea4b-4cfe-855a-447a7e890664', 'Memilah', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'aefad1ed-ea4b-4cfe-855a-447a7e890664' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Mengekstrak'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('aefad1ed-ea4b-4cfe-855a-447a7e890664', 'Mengekstrak', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'aefad1ed-ea4b-4cfe-855a-447a7e890664' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Pull Out'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('aefad1ed-ea4b-4cfe-855a-447a7e890664', 'To Pull Out', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'aefad1ed-ea4b-4cfe-855a-447a7e890664' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Extract'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('aefad1ed-ea4b-4cfe-855a-447a7e890664', 'To Extract', false, true);
  END IF;

  -- [VOCABULARY] 抜ける (Level 27)
  UPDATE item_meanings SET meaning = 'Terlepas', primary_meaning = true, accepted_answer = true WHERE id = 'b5f6252e-b684-4c81-acb2-f41a3e0f5323';
  UPDATE items SET slug = 'terlepas' WHERE id = 'e4efa52c-0f3b-4aee-aab0-79415cf1e83b';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'e4efa52c-0f3b-4aee-aab0-79415cf1e83b' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Lepas'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('e4efa52c-0f3b-4aee-aab0-79415cf1e83b', 'Lepas', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'e4efa52c-0f3b-4aee-aab0-79415cf1e83b' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Keluar'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('e4efa52c-0f3b-4aee-aab0-79415cf1e83b', 'Keluar', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'e4efa52c-0f3b-4aee-aab0-79415cf1e83b' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Rontok'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('e4efa52c-0f3b-4aee-aab0-79415cf1e83b', 'Rontok', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'e4efa52c-0f3b-4aee-aab0-79415cf1e83b' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Come Out'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('e4efa52c-0f3b-4aee-aab0-79415cf1e83b', 'To Come Out', false, true);
  END IF;

  -- [VOCABULARY] 捕まえる (Level 27)
  UPDATE item_meanings SET meaning = 'Menangkap', primary_meaning = true, accepted_answer = true WHERE id = 'f61ab359-3590-46e9-a7b2-13ba52bba008';
  UPDATE items SET slug = 'menangkap' WHERE id = '70988368-3402-4b1b-ba92-a9dde3bdafdb';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '70988368-3402-4b1b-ba92-a9dde3bdafdb' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Memegang Erat'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('70988368-3402-4b1b-ba92-a9dde3bdafdb', 'Memegang Erat', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '70988368-3402-4b1b-ba92-a9dde3bdafdb' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Membekuk'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('70988368-3402-4b1b-ba92-a9dde3bdafdb', 'Membekuk', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '70988368-3402-4b1b-ba92-a9dde3bdafdb' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Catch'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('70988368-3402-4b1b-ba92-a9dde3bdafdb', 'To Catch', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '70988368-3402-4b1b-ba92-a9dde3bdafdb' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Grab'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('70988368-3402-4b1b-ba92-a9dde3bdafdb', 'To Grab', false, true);
  END IF;

  -- [VOCABULARY] 掛かる (Level 27)
  UPDATE item_meanings SET meaning = 'Tergantung', primary_meaning = true, accepted_answer = true WHERE id = 'b6b996d7-3141-4ba7-89b1-d864017337fe';
  UPDATE items SET slug = 'tergantung' WHERE id = '52872eed-07df-4b83-8c17-a6fab0588b30';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '52872eed-07df-4b83-8c17-a6fab0588b30' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Membutuhkan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('52872eed-07df-4b83-8c17-a6fab0588b30', 'Membutuhkan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '52872eed-07df-4b83-8c17-a6fab0588b30' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Memakan Waktu'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('52872eed-07df-4b83-8c17-a6fab0588b30', 'Memakan Waktu', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '52872eed-07df-4b83-8c17-a6fab0588b30' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Be Hung'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('52872eed-07df-4b83-8c17-a6fab0588b30', 'To Be Hung', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '52872eed-07df-4b83-8c17-a6fab0588b30' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Take (Time)'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('52872eed-07df-4b83-8c17-a6fab0588b30', 'To Take (Time)', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '52872eed-07df-4b83-8c17-a6fab0588b30' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Membutuhkan (Waktu'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('52872eed-07df-4b83-8c17-a6fab0588b30', 'Membutuhkan (Waktu', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '52872eed-07df-4b83-8c17-a6fab0588b30' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Biaya)'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('52872eed-07df-4b83-8c17-a6fab0588b30', 'Biaya)', false, true);
  END IF;

  -- [VOCABULARY] 昇進 (Level 27)
  UPDATE item_meanings SET meaning = 'Promosi', primary_meaning = true, accepted_answer = true WHERE id = '3e43899a-d42f-475f-a29b-d487d90fceed';
  UPDATE items SET slug = 'promosi' WHERE id = '3414cdd4-ddda-4902-ace2-a2f9f1286ccd';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '3414cdd4-ddda-4902-ace2-a2f9f1286ccd' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Kenaikan Pangkat'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('3414cdd4-ddda-4902-ace2-a2f9f1286ccd', 'Kenaikan Pangkat', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '3414cdd4-ddda-4902-ace2-a2f9f1286ccd' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Promosi Jabatan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('3414cdd4-ddda-4902-ace2-a2f9f1286ccd', 'Promosi Jabatan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '3414cdd4-ddda-4902-ace2-a2f9f1286ccd' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Promotion'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('3414cdd4-ddda-4902-ace2-a2f9f1286ccd', 'Promotion', false, true);
  END IF;

  -- [VOCABULARY] 更ける (Level 27)
  UPDATE item_meanings SET meaning = 'Larut Malam', primary_meaning = true, accepted_answer = true WHERE id = 'ab6502d2-0f36-4db9-ae20-242b31040ab5';
  UPDATE items SET slug = 'larut-malam' WHERE id = 'd83a69b5-67ea-4962-9d50-e5caaeb9a766';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'd83a69b5-67ea-4962-9d50-e5caaeb9a766' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Malam Kian Larut'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('d83a69b5-67ea-4962-9d50-e5caaeb9a766', 'Malam Kian Larut', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'd83a69b5-67ea-4962-9d50-e5caaeb9a766' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Malam Larut'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('d83a69b5-67ea-4962-9d50-e5caaeb9a766', 'Malam Larut', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'd83a69b5-67ea-4962-9d50-e5caaeb9a766' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Grow Late'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('d83a69b5-67ea-4962-9d50-e5caaeb9a766', 'To Grow Late', false, true);
  END IF;

  -- [VOCABULARY] 極端 (Level 27)
  UPDATE item_meanings SET meaning = 'Ekstrem', primary_meaning = true, accepted_answer = true WHERE id = '6a3353f0-c57b-42b4-aeca-1c4507b390d2';
  UPDATE items SET slug = 'ekstrem' WHERE id = '490d3eb4-51cd-4e77-baaf-c8b100c62eb1';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '490d3eb4-51cd-4e77-baaf-c8b100c62eb1' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Berlebih-lebihan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('490d3eb4-51cd-4e77-baaf-c8b100c62eb1', 'Berlebih-lebihan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '490d3eb4-51cd-4e77-baaf-c8b100c62eb1' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Terlalu'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('490d3eb4-51cd-4e77-baaf-c8b100c62eb1', 'Terlalu', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '490d3eb4-51cd-4e77-baaf-c8b100c62eb1' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Extreme'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('490d3eb4-51cd-4e77-baaf-c8b100c62eb1', 'Extreme', false, true);
  END IF;

  -- [VOCABULARY] 段々 (Level 27)
  UPDATE item_meanings SET meaning = 'Bertahap', primary_meaning = true, accepted_answer = true WHERE id = 'ea163054-cad3-40e7-9991-daf371222101';
  UPDATE items SET slug = 'bertahap' WHERE id = '0e8ca6ae-5b15-4270-9e5e-1a7873ee51d6';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '0e8ca6ae-5b15-4270-9e5e-1a7873ee51d6' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Secara Bertahap'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('0e8ca6ae-5b15-4270-9e5e-1a7873ee51d6', 'Secara Bertahap', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '0e8ca6ae-5b15-4270-9e5e-1a7873ee51d6' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Berangsur-angsur'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('0e8ca6ae-5b15-4270-9e5e-1a7873ee51d6', 'Berangsur-angsur', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '0e8ca6ae-5b15-4270-9e5e-1a7873ee51d6' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Perlahan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('0e8ca6ae-5b15-4270-9e5e-1a7873ee51d6', 'Perlahan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '0e8ca6ae-5b15-4270-9e5e-1a7873ee51d6' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Gradually'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('0e8ca6ae-5b15-4270-9e5e-1a7873ee51d6', 'Gradually', false, true);
  END IF;

  -- [VOCABULARY] 段階 (Level 27)
  UPDATE item_meanings SET meaning = 'Tahapan', primary_meaning = true, accepted_answer = true WHERE id = '4a630533-a49a-4853-b6f0-c3590e9b5d02';
  UPDATE items SET slug = 'tahapan' WHERE id = 'ca98ebb5-be05-43e9-9d62-f341f7863cd4';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'ca98ebb5-be05-43e9-9d62-f341f7863cd4' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Fase'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('ca98ebb5-be05-43e9-9d62-f341f7863cd4', 'Fase', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'ca98ebb5-be05-43e9-9d62-f341f7863cd4' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Tingkat'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('ca98ebb5-be05-43e9-9d62-f341f7863cd4', 'Tingkat', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'ca98ebb5-be05-43e9-9d62-f341f7863cd4' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Stage'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('ca98ebb5-be05-43e9-9d62-f341f7863cd4', 'Stage', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'ca98ebb5-be05-43e9-9d62-f341f7863cd4' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Phase'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('ca98ebb5-be05-43e9-9d62-f341f7863cd4', 'Phase', false, true);
  END IF;

  -- [VOCABULARY] 濃い (Level 27)
  UPDATE item_meanings SET meaning = 'Pekat', primary_meaning = true, accepted_answer = true WHERE id = '3d5468db-a351-4397-9dc8-c0b04ab11bc8';
  UPDATE items SET slug = 'pekat' WHERE id = 'dbaf020f-0d9f-44d3-9a7b-074e58e4ca81';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'dbaf020f-0d9f-44d3-9a7b-074e58e4ca81' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Kental'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('dbaf020f-0d9f-44d3-9a7b-074e58e4ca81', 'Kental', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'dbaf020f-0d9f-44d3-9a7b-074e58e4ca81' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Tajam'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('dbaf020f-0d9f-44d3-9a7b-074e58e4ca81', 'Tajam', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'dbaf020f-0d9f-44d3-9a7b-074e58e4ca81' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Dense'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('dbaf020f-0d9f-44d3-9a7b-074e58e4ca81', 'Dense', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'dbaf020f-0d9f-44d3-9a7b-074e58e4ca81' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Thick'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('dbaf020f-0d9f-44d3-9a7b-074e58e4ca81', 'Thick', false, true);
  END IF;

  -- [VOCABULARY] 究極 (Level 27)
  UPDATE item_meanings SET meaning = 'Pamungkas', primary_meaning = true, accepted_answer = true WHERE id = '89bb0c27-d0b0-4d03-a00a-3aef5bdd07de';
  UPDATE items SET slug = 'pamungkas' WHERE id = '66a87dec-da19-405d-90a5-8f68995c8050';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '66a87dec-da19-405d-90a5-8f68995c8050' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Paling Utama'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('66a87dec-da19-405d-90a5-8f68995c8050', 'Paling Utama', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '66a87dec-da19-405d-90a5-8f68995c8050' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Tertinggi'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('66a87dec-da19-405d-90a5-8f68995c8050', 'Tertinggi', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '66a87dec-da19-405d-90a5-8f68995c8050' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Ultimate'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('66a87dec-da19-405d-90a5-8f68995c8050', 'Ultimate', false, true);
  END IF;

  -- [VOCABULARY] 端 (Level 27)
  UPDATE item_meanings SET meaning = 'Ujung', primary_meaning = true, accepted_answer = true WHERE id = 'fb543dc3-44f7-4440-a092-293449d972c0';
  UPDATE items SET slug = 'ujung' WHERE id = '2654e068-776e-4ad5-b6de-a0eb0cb99787';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '2654e068-776e-4ad5-b6de-a0eb0cb99787' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Tepian'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('2654e068-776e-4ad5-b6de-a0eb0cb99787', 'Tepian', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '2654e068-776e-4ad5-b6de-a0eb0cb99787' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Pinggir'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('2654e068-776e-4ad5-b6de-a0eb0cb99787', 'Pinggir', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '2654e068-776e-4ad5-b6de-a0eb0cb99787' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Edge'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('2654e068-776e-4ad5-b6de-a0eb0cb99787', 'Edge', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '2654e068-776e-4ad5-b6de-a0eb0cb99787' AND LOWER(TRIM(meaning)) = LOWER(TRIM('End'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('2654e068-776e-4ad5-b6de-a0eb0cb99787', 'End', false, true);
  END IF;

  -- [VOCABULARY] 結構です (Level 27)
  UPDATE item_meanings SET meaning = 'Tidak Usah', primary_meaning = true, accepted_answer = true WHERE id = '22823c35-2d48-4a5b-bd4a-a104d84542b1';
  UPDATE items SET slug = 'tidak-usah' WHERE id = 'b5ea6526-41d4-4276-97bb-f9370557008b';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'b5ea6526-41d4-4276-97bb-f9370557008b' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Terima Kasih'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('b5ea6526-41d4-4276-97bb-f9370557008b', 'Terima Kasih', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'b5ea6526-41d4-4276-97bb-f9370557008b' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Sudah Cukup'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('b5ea6526-41d4-4276-97bb-f9370557008b', 'Sudah Cukup', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'b5ea6526-41d4-4276-97bb-f9370557008b' AND LOWER(TRIM(meaning)) = LOWER(TRIM('No Thank You'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('b5ea6526-41d4-4276-97bb-f9370557008b', 'No Thank You', false, true);
  END IF;

  -- [VOCABULARY] 締める (Level 27)
  UPDATE item_meanings SET meaning = 'Mengencangkan', primary_meaning = true, accepted_answer = true WHERE id = 'e05ccfbb-0f42-499c-9f37-36fda8c10ff9';
  UPDATE items SET slug = 'mengencangkan' WHERE id = '4a3619f1-5cc3-4326-9bd6-0f660158c19e';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '4a3619f1-5cc3-4326-9bd6-0f660158c19e' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Memakai Dasi'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('4a3619f1-5cc3-4326-9bd6-0f660158c19e', 'Memakai Dasi', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '4a3619f1-5cc3-4326-9bd6-0f660158c19e' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Mengikat'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('4a3619f1-5cc3-4326-9bd6-0f660158c19e', 'Mengikat', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '4a3619f1-5cc3-4326-9bd6-0f660158c19e' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Tighten'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('4a3619f1-5cc3-4326-9bd6-0f660158c19e', 'To Tighten', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '4a3619f1-5cc3-4326-9bd6-0f660158c19e' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Tie'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('4a3619f1-5cc3-4326-9bd6-0f660158c19e', 'To Tie', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '4a3619f1-5cc3-4326-9bd6-0f660158c19e' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Memakai (Dasi'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('4a3619f1-5cc3-4326-9bd6-0f660158c19e', 'Memakai (Dasi', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '4a3619f1-5cc3-4326-9bd6-0f660158c19e' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Sabuk)'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('4a3619f1-5cc3-4326-9bd6-0f660158c19e', 'Sabuk)', false, true);
  END IF;

  -- [VOCABULARY] 締結する (Level 27)
  UPDATE item_meanings SET meaning = 'Menyepakati', primary_meaning = true, accepted_answer = true WHERE id = '298d2d78-6b5b-4e0c-89bd-b0abba873604';
  UPDATE items SET slug = 'menyepakati' WHERE id = '5eda5ff3-e767-4e70-88e7-e78245872b5e';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '5eda5ff3-e767-4e70-88e7-e78245872b5e' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Menandatangani'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('5eda5ff3-e767-4e70-88e7-e78245872b5e', 'Menandatangani', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '5eda5ff3-e767-4e70-88e7-e78245872b5e' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Mengikat Perjanjian'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('5eda5ff3-e767-4e70-88e7-e78245872b5e', 'Mengikat Perjanjian', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '5eda5ff3-e767-4e70-88e7-e78245872b5e' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Conclude'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('5eda5ff3-e767-4e70-88e7-e78245872b5e', 'To Conclude', false, true);
  END IF;

  -- [VOCABULARY] 腰抜け (Level 27)
  UPDATE item_meanings SET meaning = 'Pengecut', primary_meaning = true, accepted_answer = true WHERE id = '593d60bb-b478-4a33-8314-fd880c43da2d';
  UPDATE items SET slug = 'pengecut' WHERE id = '6397c391-addd-417f-9f07-c7ec4d4faf42';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '6397c391-addd-417f-9f07-c7ec4d4faf42' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Lemah Nyali'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('6397c391-addd-417f-9f07-c7ec4d4faf42', 'Lemah Nyali', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '6397c391-addd-417f-9f07-c7ec4d4faf42' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Penakut'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('6397c391-addd-417f-9f07-c7ec4d4faf42', 'Penakut', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '6397c391-addd-417f-9f07-c7ec4d4faf42' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Coward'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('6397c391-addd-417f-9f07-c7ec4d4faf42', 'Coward', false, true);
  END IF;

  -- [VOCABULARY] 見抜く (Level 27)
  UPDATE item_meanings SET meaning = 'Melihat Tembus', primary_meaning = true, accepted_answer = true WHERE id = '1200b678-de28-46f3-8518-bd07b2b99bef';
  UPDATE items SET slug = 'melihat-tembus' WHERE id = '92409c45-bf7a-40b1-8cf9-bff1dfd8a243';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '92409c45-bf7a-40b1-8cf9-bff1dfd8a243' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Mengetahui Gelagat'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('92409c45-bf7a-40b1-8cf9-bff1dfd8a243', 'Mengetahui Gelagat', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '92409c45-bf7a-40b1-8cf9-bff1dfd8a243' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Menebak Tepat'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('92409c45-bf7a-40b1-8cf9-bff1dfd8a243', 'Menebak Tepat', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '92409c45-bf7a-40b1-8cf9-bff1dfd8a243' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To See Through'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('92409c45-bf7a-40b1-8cf9-bff1dfd8a243', 'To See Through', false, true);
  END IF;

  -- [VOCABULARY] 訪ねる (Level 27)
  UPDATE item_meanings SET meaning = 'Mengunjungi', primary_meaning = true, accepted_answer = true WHERE id = '39c9c4fc-c157-472e-bc01-40629437dfff';
  UPDATE items SET slug = 'mengunjungi' WHERE id = 'a6d0d618-b458-49c2-86db-04b2752ec31a';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'a6d0d618-b458-49c2-86db-04b2752ec31a' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Bertamu'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('a6d0d618-b458-49c2-86db-04b2752ec31a', 'Bertamu', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'a6d0d618-b458-49c2-86db-04b2752ec31a' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Menjenguk'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('a6d0d618-b458-49c2-86db-04b2752ec31a', 'Menjenguk', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'a6d0d618-b458-49c2-86db-04b2752ec31a' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Visit'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('a6d0d618-b458-49c2-86db-04b2752ec31a', 'To Visit', false, true);
  END IF;

  -- [VOCABULARY] 訪問 (Level 27)
  UPDATE item_meanings SET meaning = 'Kunjungan', primary_meaning = true, accepted_answer = true WHERE id = '09a7ba3c-c7ca-4b00-a86a-391e6254041c';
  UPDATE items SET slug = 'kunjungan' WHERE id = 'e87e2e00-85ce-469f-93d2-62490cc26eab';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'e87e2e00-85ce-469f-93d2-62490cc26eab' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Bertamu'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('e87e2e00-85ce-469f-93d2-62490cc26eab', 'Bertamu', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'e87e2e00-85ce-469f-93d2-62490cc26eab' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Sowan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('e87e2e00-85ce-469f-93d2-62490cc26eab', 'Sowan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'e87e2e00-85ce-469f-93d2-62490cc26eab' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Visit'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('e87e2e00-85ce-469f-93d2-62490cc26eab', 'Visit', false, true);
  END IF;

  -- [VOCABULARY] 誘惑 (Level 27)
  UPDATE item_meanings SET meaning = 'Godaan', primary_meaning = true, accepted_answer = true WHERE id = 'e9184eb8-39db-432d-88dc-4e92105cfdc5';
  UPDATE items SET slug = 'godaan' WHERE id = '1fb95d7d-fff5-4615-8400-25f48df9bfe0';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '1fb95d7d-fff5-4615-8400-25f48df9bfe0' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Bujukan Rayu'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('1fb95d7d-fff5-4615-8400-25f48df9bfe0', 'Bujukan Rayu', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '1fb95d7d-fff5-4615-8400-25f48df9bfe0' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Pikat'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('1fb95d7d-fff5-4615-8400-25f48df9bfe0', 'Pikat', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '1fb95d7d-fff5-4615-8400-25f48df9bfe0' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Temptation'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('1fb95d7d-fff5-4615-8400-25f48df9bfe0', 'Temptation', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '1fb95d7d-fff5-4615-8400-25f48df9bfe0' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Seduction'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('1fb95d7d-fff5-4615-8400-25f48df9bfe0', 'Seduction', false, true);
  END IF;

  -- [VOCABULARY] 貸し切り (Level 27)
  UPDATE item_meanings SET meaning = 'Carter', primary_meaning = true, accepted_answer = true WHERE id = '2adf7b0f-0574-47f2-94fb-c56344c4db70';
  UPDATE items SET slug = 'carter' WHERE id = 'd54bf5db-00d4-484d-b32b-181d2feb3cfa';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'd54bf5db-00d4-484d-b32b-181d2feb3cfa' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Sewa Khusus'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('d54bf5db-00d4-484d-b32b-181d2feb3cfa', 'Sewa Khusus', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'd54bf5db-00d4-484d-b32b-181d2feb3cfa' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Booking Penuh'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('d54bf5db-00d4-484d-b32b-181d2feb3cfa', 'Booking Penuh', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'd54bf5db-00d4-484d-b32b-181d2feb3cfa' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Charter'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('d54bf5db-00d4-484d-b32b-181d2feb3cfa', 'Charter', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'd54bf5db-00d4-484d-b32b-181d2feb3cfa' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Private Reservation'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('d54bf5db-00d4-484d-b32b-181d2feb3cfa', 'Private Reservation', false, true);
  END IF;

  -- [VOCABULARY] 貸す (Level 27)
  UPDATE item_meanings SET meaning = 'Meminjamkan', primary_meaning = true, accepted_answer = true WHERE id = '64bc6a7c-435e-4c76-94c5-c81f2dde8e40';
  UPDATE items SET slug = 'meminjamkan' WHERE id = '78533123-a43a-477e-ac2c-8a8e81295611';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '78533123-a43a-477e-ac2c-8a8e81295611' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Menyewakan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('78533123-a43a-477e-ac2c-8a8e81295611', 'Menyewakan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '78533123-a43a-477e-ac2c-8a8e81295611' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Lend'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('78533123-a43a-477e-ac2c-8a8e81295611', 'To Lend', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '78533123-a43a-477e-ac2c-8a8e81295611' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Rent Out'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('78533123-a43a-477e-ac2c-8a8e81295611', 'To Rent Out', false, true);
  END IF;

  -- [VOCABULARY] 費やす (Level 27)
  UPDATE item_meanings SET meaning = 'Menghabiskan', primary_meaning = true, accepted_answer = true WHERE id = '089fa702-b2e6-4c65-a6a5-a7983babf637';
  UPDATE items SET slug = 'menghabiskan' WHERE id = '630ea1a5-9544-4186-8321-f5793d121bfb';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '630ea1a5-9544-4186-8321-f5793d121bfb' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Menghabiskan Waktu'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('630ea1a5-9544-4186-8321-f5793d121bfb', 'Menghabiskan Waktu', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '630ea1a5-9544-4186-8321-f5793d121bfb' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Menghabiskan Uang'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('630ea1a5-9544-4186-8321-f5793d121bfb', 'Menghabiskan Uang', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '630ea1a5-9544-4186-8321-f5793d121bfb' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Mengeluarkan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('630ea1a5-9544-4186-8321-f5793d121bfb', 'Mengeluarkan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '630ea1a5-9544-4186-8321-f5793d121bfb' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Spend'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('630ea1a5-9544-4186-8321-f5793d121bfb', 'To Spend', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '630ea1a5-9544-4186-8321-f5793d121bfb' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Menghabiskan (Waktu'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('630ea1a5-9544-4186-8321-f5793d121bfb', 'Menghabiskan (Waktu', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '630ea1a5-9544-4186-8321-f5793d121bfb' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Uang)'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('630ea1a5-9544-4186-8321-f5793d121bfb', 'Uang)', false, true);
  END IF;

  -- [VOCABULARY] 迫る (Level 27)
  UPDATE item_meanings SET meaning = 'Mendesak', primary_meaning = true, accepted_answer = true WHERE id = '47f34b54-57b5-4e5e-b457-38dc809189d8';
  UPDATE items SET slug = 'mendesak' WHERE id = 'c5e64a7b-9b39-469c-ab94-bb0be1da5ade';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'c5e64a7b-9b39-469c-ab94-bb0be1da5ade' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Mendekat Cepat'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('c5e64a7b-9b39-469c-ab94-bb0be1da5ade', 'Mendekat Cepat', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'c5e64a7b-9b39-469c-ab94-bb0be1da5ade' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Mengepung'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('c5e64a7b-9b39-469c-ab94-bb0be1da5ade', 'Mengepung', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'c5e64a7b-9b39-469c-ab94-bb0be1da5ade' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Urge'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('c5e64a7b-9b39-469c-ab94-bb0be1da5ade', 'To Urge', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'c5e64a7b-9b39-469c-ab94-bb0be1da5ade' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Approach'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('c5e64a7b-9b39-469c-ab94-bb0be1da5ade', 'To Approach', false, true);
  END IF;

  -- [VOCABULARY] 迷う (Level 27)
  UPDATE item_meanings SET meaning = 'Tersesat', primary_meaning = true, accepted_answer = true WHERE id = '2e701a47-ada4-4bf8-a2f7-2ba58311d52a';
  UPDATE items SET slug = 'tersesat' WHERE id = 'c0adb107-9cc3-4b0c-aa04-87c7354925bd';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'c0adb107-9cc3-4b0c-aa04-87c7354925bd' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Bimbang'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('c0adb107-9cc3-4b0c-aa04-87c7354925bd', 'Bimbang', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'c0adb107-9cc3-4b0c-aa04-87c7354925bd' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Ragu'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('c0adb107-9cc3-4b0c-aa04-87c7354925bd', 'Ragu', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'c0adb107-9cc3-4b0c-aa04-87c7354925bd' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Get Lost'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('c0adb107-9cc3-4b0c-aa04-87c7354925bd', 'To Get Lost', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'c0adb107-9cc3-4b0c-aa04-87c7354925bd' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Waver'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('c0adb107-9cc3-4b0c-aa04-87c7354925bd', 'To Waver', false, true);
  END IF;

  -- [VOCABULARY] 迷子 (Level 27)
  UPDATE item_meanings SET meaning = 'Anak Hilang', primary_meaning = true, accepted_answer = true WHERE id = 'd3b6c27e-613a-40d9-9ab5-de22c11200ab';
  UPDATE items SET slug = 'anak-hilang' WHERE id = '333884f4-51bd-4e4a-953c-a168f89d259f';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '333884f4-51bd-4e4a-953c-a168f89d259f' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Tersesat'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('333884f4-51bd-4e4a-953c-a168f89d259f', 'Tersesat', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '333884f4-51bd-4e4a-953c-a168f89d259f' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Anak Tersesat'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('333884f4-51bd-4e4a-953c-a168f89d259f', 'Anak Tersesat', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '333884f4-51bd-4e4a-953c-a168f89d259f' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Lost Child'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('333884f4-51bd-4e4a-953c-a168f89d259f', 'Lost Child', false, true);
  END IF;

  -- [VOCABULARY] 迷惑 (Level 27)
  UPDATE item_meanings SET meaning = 'Gangguan', primary_meaning = true, accepted_answer = true WHERE id = 'a0d694c0-bd1c-4460-b574-170b19135fd1';
  UPDATE items SET slug = 'gangguan' WHERE id = 'ee3d00cd-b43b-4cd4-a14b-41348257e673';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'ee3d00cd-b43b-4cd4-a14b-41348257e673' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Merepotkan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('ee3d00cd-b43b-4cd4-a14b-41348257e673', 'Merepotkan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'ee3d00cd-b43b-4cd4-a14b-41348257e673' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Mengganggu'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('ee3d00cd-b43b-4cd4-a14b-41348257e673', 'Mengganggu', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'ee3d00cd-b43b-4cd4-a14b-41348257e673' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Kerepotan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('ee3d00cd-b43b-4cd4-a14b-41348257e673', 'Kerepotan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'ee3d00cd-b43b-4cd4-a14b-41348257e673' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Trouble'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('ee3d00cd-b43b-4cd4-a14b-41348257e673', 'Trouble', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'ee3d00cd-b43b-4cd4-a14b-41348257e673' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Nuisance'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('ee3d00cd-b43b-4cd4-a14b-41348257e673', 'Nuisance', false, true);
  END IF;

  -- [VOCABULARY] 退屈 (Level 27)
  UPDATE item_meanings SET meaning = 'Membosankan', primary_meaning = true, accepted_answer = true WHERE id = 'd6eb2972-31d4-4d9a-b6e9-2bf13e414bef';
  UPDATE items SET slug = 'membosankan' WHERE id = 'c7dced0b-2fc8-4fcf-ab00-7507b23b25a4';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'c7dced0b-2fc8-4fcf-ab00-7507b23b25a4' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Menjemukan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('c7dced0b-2fc8-4fcf-ab00-7507b23b25a4', 'Menjemukan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'c7dced0b-2fc8-4fcf-ab00-7507b23b25a4' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Bosan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('c7dced0b-2fc8-4fcf-ab00-7507b23b25a4', 'Bosan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'c7dced0b-2fc8-4fcf-ab00-7507b23b25a4' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Boring'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('c7dced0b-2fc8-4fcf-ab00-7507b23b25a4', 'Boring', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'c7dced0b-2fc8-4fcf-ab00-7507b23b25a4' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Boredom'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('c7dced0b-2fc8-4fcf-ab00-7507b23b25a4', 'Boredom', false, true);
  END IF;

  -- [VOCABULARY] 途中 (Level 27)
  UPDATE item_meanings SET meaning = 'Di Tengah Jalan', primary_meaning = true, accepted_answer = true WHERE id = '9154fb19-637c-41da-ae39-07d50df67c0f';
  UPDATE items SET slug = 'di-tengah-jalan' WHERE id = 'f5e4767c-0c05-41cd-b0d7-66c5bafce71b';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'f5e4767c-0c05-41cd-b0d7-66c5bafce71b' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Saat Perjalanan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('f5e4767c-0c05-41cd-b0d7-66c5bafce71b', 'Saat Perjalanan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'f5e4767c-0c05-41cd-b0d7-66c5bafce71b' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Dalam Perjalanan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('f5e4767c-0c05-41cd-b0d7-66c5bafce71b', 'Dalam Perjalanan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'f5e4767c-0c05-41cd-b0d7-66c5bafce71b' AND LOWER(TRIM(meaning)) = LOWER(TRIM('On The Way'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('f5e4767c-0c05-41cd-b0d7-66c5bafce71b', 'On The Way', false, true);
  END IF;

  -- [VOCABULARY] 間抜け (Level 27)
  UPDATE item_meanings SET meaning = 'Konyol', primary_meaning = true, accepted_answer = true WHERE id = 'b2da2889-e705-484e-9a57-449a7ac6e9b3';
  UPDATE items SET slug = 'konyol' WHERE id = '10f548c1-394f-4c24-9199-7233f84072ad';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '10f548c1-394f-4c24-9199-7233f84072ad' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Bodoh'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('10f548c1-394f-4c24-9199-7233f84072ad', 'Bodoh', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '10f548c1-394f-4c24-9199-7233f84072ad' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Teledor'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('10f548c1-394f-4c24-9199-7233f84072ad', 'Teledor', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '10f548c1-394f-4c24-9199-7233f84072ad' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Idiot'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('10f548c1-394f-4c24-9199-7233f84072ad', 'Idiot', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '10f548c1-394f-4c24-9199-7233f84072ad' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Dumb'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('10f548c1-394f-4c24-9199-7233f84072ad', 'Dumb', false, true);
  END IF;

  -- [VOCABULARY] 隠居する (Level 27)
  UPDATE item_meanings SET meaning = 'Pensiun', primary_meaning = true, accepted_answer = true WHERE id = '2c2c7331-6f84-43c4-a7a1-813084f18d46';
  UPDATE items SET slug = 'pensiun' WHERE id = '0eabba7e-7006-47ad-a43d-ded36b4c5d1a';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '0eabba7e-7006-47ad-a43d-ded36b4c5d1a' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Mengasingkan Diri'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('0eabba7e-7006-47ad-a43d-ded36b4c5d1a', 'Mengasingkan Diri', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '0eabba7e-7006-47ad-a43d-ded36b4c5d1a' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Mundur dari Dunia'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('0eabba7e-7006-47ad-a43d-ded36b4c5d1a', 'Mundur dari Dunia', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '0eabba7e-7006-47ad-a43d-ded36b4c5d1a' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Retire'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('0eabba7e-7006-47ad-a43d-ded36b4c5d1a', 'To Retire', false, true);
  END IF;

  -- [VOCABULARY] 頑張れ (Level 27)
  UPDATE item_meanings SET meaning = 'Semangat', primary_meaning = true, accepted_answer = true WHERE id = 'a0afe3ec-60dc-4670-b25b-ae162a7eb8a6';
  UPDATE items SET slug = 'semangat' WHERE id = '0d351abb-54cf-47c7-9365-3aeb058e1bb8';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '0d351abb-54cf-47c7-9365-3aeb058e1bb8' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Berjuanglah'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('0d351abb-54cf-47c7-9365-3aeb058e1bb8', 'Berjuanglah', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '0d351abb-54cf-47c7-9365-3aeb058e1bb8' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Semangat!'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('0d351abb-54cf-47c7-9365-3aeb058e1bb8', 'Semangat!', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '0d351abb-54cf-47c7-9365-3aeb058e1bb8' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Do Your Best'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('0d351abb-54cf-47c7-9365-3aeb058e1bb8', 'Do Your Best', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '0d351abb-54cf-47c7-9365-3aeb058e1bb8' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Hang In There'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('0d351abb-54cf-47c7-9365-3aeb058e1bb8', 'Hang In There', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '0d351abb-54cf-47c7-9365-3aeb058e1bb8' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Berjuanglah!'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('0d351abb-54cf-47c7-9365-3aeb058e1bb8', 'Berjuanglah!', false, true);
  END IF;

END $$;
