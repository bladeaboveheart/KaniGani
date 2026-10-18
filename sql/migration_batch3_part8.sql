-- Migration: Batch 3 Part 8 (Level 38)
-- Total items: 91

DO $$
BEGIN

  -- [KANJI] 伴 (Level 38)
  UPDATE item_meanings SET meaning = 'Menemani', primary_meaning = true, accepted_answer = true WHERE id = '65f4244a-3f3b-4761-b323-2fc0c6396a6c';
  UPDATE items SET slug = 'menemani' WHERE id = 'ca99e3f0-3462-40fd-9e7f-20e9b1e5cd4c';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'ca99e3f0-3462-40fd-9e7f-20e9b1e5cd4c' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Mengiringi'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('ca99e3f0-3462-40fd-9e7f-20e9b1e5cd4c', 'Mengiringi', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'ca99e3f0-3462-40fd-9e7f-20e9b1e5cd4c' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Bersamaan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('ca99e3f0-3462-40fd-9e7f-20e9b1e5cd4c', 'Bersamaan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'ca99e3f0-3462-40fd-9e7f-20e9b1e5cd4c' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Accompany'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('ca99e3f0-3462-40fd-9e7f-20e9b1e5cd4c', 'Accompany', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'ca99e3f0-3462-40fd-9e7f-20e9b1e5cd4c' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Companion'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('ca99e3f0-3462-40fd-9e7f-20e9b1e5cd4c', 'Companion', false, true);
  END IF;

  -- [KANJI] 併 (Level 38)
  UPDATE item_meanings SET meaning = 'Menggabungkan', primary_meaning = true, accepted_answer = true WHERE id = '776cad56-4354-4c63-a173-d6a3a0bf2c61';
  UPDATE items SET slug = 'menggabungkan' WHERE id = '1de2fbc3-a26f-4181-822d-ca71b8e52bba';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '1de2fbc3-a26f-4181-822d-ca71b8e52bba' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Bersamaan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('1de2fbc3-a26f-4181-822d-ca71b8e52bba', 'Bersamaan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '1de2fbc3-a26f-4181-822d-ca71b8e52bba' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Join'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('1de2fbc3-a26f-4181-822d-ca71b8e52bba', 'Join', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '1de2fbc3-a26f-4181-822d-ca71b8e52bba' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Combine'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('1de2fbc3-a26f-4181-822d-ca71b8e52bba', 'Combine', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '1de2fbc3-a26f-4181-822d-ca71b8e52bba' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Bergabung'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('1de2fbc3-a26f-4181-822d-ca71b8e52bba', 'Bergabung', false, true);
  END IF;

  -- [KANJI] 傾 (Level 38)
  UPDATE item_meanings SET meaning = 'Miring', primary_meaning = true, accepted_answer = true WHERE id = 'b16066a9-0200-41f8-8204-d4ebe2fe06c3';
  UPDATE items SET slug = 'miring' WHERE id = '19047c1a-6649-40f7-b8aa-93708c5d3e86';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '19047c1a-6649-40f7-b8aa-93708c5d3e86' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Condong'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('19047c1a-6649-40f7-b8aa-93708c5d3e86', 'Condong', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '19047c1a-6649-40f7-b8aa-93708c5d3e86' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Tumpah'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('19047c1a-6649-40f7-b8aa-93708c5d3e86', 'Tumpah', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '19047c1a-6649-40f7-b8aa-93708c5d3e86' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Lean'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('19047c1a-6649-40f7-b8aa-93708c5d3e86', 'Lean', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '19047c1a-6649-40f7-b8aa-93708c5d3e86' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Incline'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('19047c1a-6649-40f7-b8aa-93708c5d3e86', 'Incline', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '19047c1a-6649-40f7-b8aa-93708c5d3e86' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Bersandar'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('19047c1a-6649-40f7-b8aa-93708c5d3e86', 'Bersandar', false, true);
  END IF;

  -- [KANJI] 刊 (Level 38)
  UPDATE item_meanings SET meaning = 'Penerbitan', primary_meaning = true, accepted_answer = true WHERE id = 'fdcc7f8c-c0b8-48aa-84f5-3b990d28e1a8';
  UPDATE items SET slug = 'penerbitan' WHERE id = '7411ef92-9719-4db0-846b-a51d6bec944d';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '7411ef92-9719-4db0-846b-a51d6bec944d' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Edisi Cetak'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('7411ef92-9719-4db0-846b-a51d6bec944d', 'Edisi Cetak', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '7411ef92-9719-4db0-846b-a51d6bec944d' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Publish'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('7411ef92-9719-4db0-846b-a51d6bec944d', 'Publish', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '7411ef92-9719-4db0-846b-a51d6bec944d' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Edition'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('7411ef92-9719-4db0-846b-a51d6bec944d', 'Edition', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '7411ef92-9719-4db0-846b-a51d6bec944d' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Edisi'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('7411ef92-9719-4db0-846b-a51d6bec944d', 'Edisi', false, true);
  END IF;

  -- [KANJI] 却 (Level 38)
  UPDATE item_meanings SET meaning = 'Sebaliknya', primary_meaning = true, accepted_answer = true WHERE id = '48d5a18f-c85d-4d2e-86a2-cc32da77b235';
  UPDATE items SET slug = 'sebaliknya' WHERE id = '11926b2f-b85e-40a2-ad81-7313954ddccf';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '11926b2f-b85e-40a2-ad81-7313954ddccf' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Menolak'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('11926b2f-b85e-40a2-ad81-7313954ddccf', 'Menolak', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '11926b2f-b85e-40a2-ad81-7313954ddccf' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Menyingkirkan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('11926b2f-b85e-40a2-ad81-7313954ddccf', 'Menyingkirkan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '11926b2f-b85e-40a2-ad81-7313954ddccf' AND LOWER(TRIM(meaning)) = LOWER(TRIM('On The Contrary'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('11926b2f-b85e-40a2-ad81-7313954ddccf', 'On The Contrary', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '11926b2f-b85e-40a2-ad81-7313954ddccf' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Reject'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('11926b2f-b85e-40a2-ad81-7313954ddccf', 'Reject', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '11926b2f-b85e-40a2-ad81-7313954ddccf' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Contrary'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('11926b2f-b85e-40a2-ad81-7313954ddccf', 'Contrary', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '11926b2f-b85e-40a2-ad81-7313954ddccf' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Return'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('11926b2f-b85e-40a2-ad81-7313954ddccf', 'Return', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '11926b2f-b85e-40a2-ad81-7313954ddccf' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Retreat'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('11926b2f-b85e-40a2-ad81-7313954ddccf', 'Retreat', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '11926b2f-b85e-40a2-ad81-7313954ddccf' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Instead'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('11926b2f-b85e-40a2-ad81-7313954ddccf', 'Instead', false, true);
  END IF;

  -- [KANJI] 噛 (Level 38)
  UPDATE item_meanings SET meaning = 'Menggigit', primary_meaning = true, accepted_answer = true WHERE id = '4bba336c-abca-4c10-b79b-57291a267ffe';
  UPDATE items SET slug = 'menggigit' WHERE id = '0f7cf16a-093b-49b5-9b8f-4b16a968faf5';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '0f7cf16a-093b-49b5-9b8f-4b16a968faf5' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Mengunyah'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('0f7cf16a-093b-49b5-9b8f-4b16a968faf5', 'Mengunyah', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '0f7cf16a-093b-49b5-9b8f-4b16a968faf5' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Bite'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('0f7cf16a-093b-49b5-9b8f-4b16a968faf5', 'Bite', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '0f7cf16a-093b-49b5-9b8f-4b16a968faf5' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Chew'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('0f7cf16a-093b-49b5-9b8f-4b16a968faf5', 'Chew', false, true);
  END IF;

  -- [KANJI] 奏 (Level 38)
  UPDATE item_meanings SET meaning = 'Memainkan Alat Musik', primary_meaning = true, accepted_answer = true WHERE id = '9e21777b-5c75-41e3-a184-0efac4fd67ca';
  UPDATE items SET slug = 'memainkan-alat-musik' WHERE id = 'bb998e25-cdcd-4b05-b1bf-b332b69c74dd';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'bb998e25-cdcd-4b05-b1bf-b332b69c74dd' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Melantunkan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('bb998e25-cdcd-4b05-b1bf-b332b69c74dd', 'Melantunkan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'bb998e25-cdcd-4b05-b1bf-b332b69c74dd' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Play Music'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('bb998e25-cdcd-4b05-b1bf-b332b69c74dd', 'Play Music', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'bb998e25-cdcd-4b05-b1bf-b332b69c74dd' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Perform'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('bb998e25-cdcd-4b05-b1bf-b332b69c74dd', 'Perform', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'bb998e25-cdcd-4b05-b1bf-b332b69c74dd' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Putar Musik'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('bb998e25-cdcd-4b05-b1bf-b332b69c74dd', 'Putar Musik', false, true);
  END IF;

  -- [KANJI] 奥 (Level 38)
  UPDATE item_meanings SET meaning = 'Bagian Terdalam', primary_meaning = true, accepted_answer = true WHERE id = '3a8dc984-d9b2-4300-a364-7c65e2b16539';
  UPDATE items SET slug = 'bagian-terdalam' WHERE id = 'b13ae770-35c2-417d-b368-230eadac8164';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'b13ae770-35c2-417d-b368-230eadac8164' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Ruang Belakang'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('b13ae770-35c2-417d-b368-230eadac8164', 'Ruang Belakang', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'b13ae770-35c2-417d-b368-230eadac8164' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Interior'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('b13ae770-35c2-417d-b368-230eadac8164', 'Interior', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'b13ae770-35c2-417d-b368-230eadac8164' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Inside'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('b13ae770-35c2-417d-b368-230eadac8164', 'Inside', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'b13ae770-35c2-417d-b368-230eadac8164' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Deep'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('b13ae770-35c2-417d-b368-230eadac8164', 'Deep', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'b13ae770-35c2-417d-b368-230eadac8164' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Pedalaman'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('b13ae770-35c2-417d-b368-230eadac8164', 'Pedalaman', false, true);
  END IF;

  -- [KANJI] 妊 (Level 38)
  UPDATE item_meanings SET meaning = 'Mengandung', primary_meaning = true, accepted_answer = true WHERE id = 'de8c01e4-8383-4f04-803b-62c1107fd3cd';
  UPDATE items SET slug = 'mengandung' WHERE id = '409af3ff-33aa-4e10-8504-c2d8fa81fd9b';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '409af3ff-33aa-4e10-8504-c2d8fa81fd9b' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Kehamilan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('409af3ff-33aa-4e10-8504-c2d8fa81fd9b', 'Kehamilan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '409af3ff-33aa-4e10-8504-c2d8fa81fd9b' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Pregnant'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('409af3ff-33aa-4e10-8504-c2d8fa81fd9b', 'Pregnant', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '409af3ff-33aa-4e10-8504-c2d8fa81fd9b' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Hamil'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('409af3ff-33aa-4e10-8504-c2d8fa81fd9b', 'Hamil', false, true);
  END IF;

  -- [KANJI] 娠 (Level 38)
  UPDATE item_meanings SET meaning = 'Hamil', primary_meaning = true, accepted_answer = true WHERE id = 'ea766786-17bd-4dc2-8030-0c7fe577c1a9';
  UPDATE items SET slug = 'hamil' WHERE id = '0ba7c8e2-df01-4b24-9091-c15cba9912b1';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '0ba7c8e2-df01-4b24-9091-c15cba9912b1' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Mengandung Janin'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('0ba7c8e2-df01-4b24-9091-c15cba9912b1', 'Mengandung Janin', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '0ba7c8e2-df01-4b24-9091-c15cba9912b1' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Pregnant'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('0ba7c8e2-df01-4b24-9091-c15cba9912b1', 'Pregnant', false, true);
  END IF;

  -- [KANJI] 宜 (Level 38)
  UPDATE item_meanings SET meaning = 'Tepat', primary_meaning = true, accepted_answer = true WHERE id = 'a739435e-13c1-45a2-b9c7-5e8804a283f6';
  UPDATE items SET slug = 'tepat' WHERE id = '3316ad19-1ea7-479d-81a0-04f9899169e0';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '3316ad19-1ea7-479d-81a0-04f9899169e0' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Sepatutnya'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('3316ad19-1ea7-479d-81a0-04f9899169e0', 'Sepatutnya', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '3316ad19-1ea7-479d-81a0-04f9899169e0' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Salam Sejahtera'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('3316ad19-1ea7-479d-81a0-04f9899169e0', 'Salam Sejahtera', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '3316ad19-1ea7-479d-81a0-04f9899169e0' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Best Regards'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('3316ad19-1ea7-479d-81a0-04f9899169e0', 'Best Regards', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '3316ad19-1ea7-479d-81a0-04f9899169e0' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Good'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('3316ad19-1ea7-479d-81a0-04f9899169e0', 'Good', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '3316ad19-1ea7-479d-81a0-04f9899169e0' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Salam'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('3316ad19-1ea7-479d-81a0-04f9899169e0', 'Salam', false, true);
  END IF;

  -- [KANJI] 慮 (Level 38)
  UPDATE item_meanings SET meaning = 'Mempertimbangkan', primary_meaning = true, accepted_answer = true WHERE id = '604caddd-309b-47f6-882c-a8e9fb79f978';
  UPDATE items SET slug = 'mempertimbangkan' WHERE id = '6e569d10-7ecf-4fe9-988b-108c50b79bd8';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '6e569d10-7ecf-4fe9-988b-108c50b79bd8' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Pikiran Matang'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('6e569d10-7ecf-4fe9-988b-108c50b79bd8', 'Pikiran Matang', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '6e569d10-7ecf-4fe9-988b-108c50b79bd8' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Consider'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('6e569d10-7ecf-4fe9-988b-108c50b79bd8', 'Consider', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '6e569d10-7ecf-4fe9-988b-108c50b79bd8' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Thought'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('6e569d10-7ecf-4fe9-988b-108c50b79bd8', 'Thought', false, true);
  END IF;

  -- [KANJI] 懸 (Level 38)
  UPDATE item_meanings SET meaning = 'Menggantung', primary_meaning = true, accepted_answer = true WHERE id = 'ec7ed198-999a-4444-a3d7-7bf35cea3d5a';
  UPDATE items SET slug = 'menggantung' WHERE id = '06d0cc30-d9ec-4800-957e-d6c19e3d50d4';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '06d0cc30-d9ec-4800-957e-d6c19e3d50d4' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Mempertaruhkan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('06d0cc30-d9ec-4800-957e-d6c19e3d50d4', 'Mempertaruhkan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '06d0cc30-d9ec-4800-957e-d6c19e3d50d4' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Khawatir'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('06d0cc30-d9ec-4800-957e-d6c19e3d50d4', 'Khawatir', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '06d0cc30-d9ec-4800-957e-d6c19e3d50d4' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Hang'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('06d0cc30-d9ec-4800-957e-d6c19e3d50d4', 'Hang', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '06d0cc30-d9ec-4800-957e-d6c19e3d50d4' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Suspend'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('06d0cc30-d9ec-4800-957e-d6c19e3d50d4', 'Suspend', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '06d0cc30-d9ec-4800-957e-d6c19e3d50d4' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Risk'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('06d0cc30-d9ec-4800-957e-d6c19e3d50d4', 'Risk', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '06d0cc30-d9ec-4800-957e-d6c19e3d50d4' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Menskors'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('06d0cc30-d9ec-4800-957e-d6c19e3d50d4', 'Menskors', false, true);
  END IF;

  -- [KANJI] 房 (Level 38)
  UPDATE item_meanings SET meaning = 'Tandan', primary_meaning = true, accepted_answer = true WHERE id = '39fae1a0-2268-4cde-88a5-8d1f52f8166f';
  UPDATE items SET slug = 'tandan' WHERE id = '41508fca-36b5-4f32-8d52-3f2e9be2827f';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '41508fca-36b5-4f32-8d52-3f2e9be2827f' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Ruang Kamar'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('41508fca-36b5-4f32-8d52-3f2e9be2827f', 'Ruang Kamar', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '41508fca-36b5-4f32-8d52-3f2e9be2827f' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Rumbai'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('41508fca-36b5-4f32-8d52-3f2e9be2827f', 'Rumbai', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '41508fca-36b5-4f32-8d52-3f2e9be2827f' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Cluster'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('41508fca-36b5-4f32-8d52-3f2e9be2827f', 'Cluster', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '41508fca-36b5-4f32-8d52-3f2e9be2827f' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Bunch'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('41508fca-36b5-4f32-8d52-3f2e9be2827f', 'Bunch', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '41508fca-36b5-4f32-8d52-3f2e9be2827f' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Room'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('41508fca-36b5-4f32-8d52-3f2e9be2827f', 'Room', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '41508fca-36b5-4f32-8d52-3f2e9be2827f' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Gugus'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('41508fca-36b5-4f32-8d52-3f2e9be2827f', 'Gugus', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '41508fca-36b5-4f32-8d52-3f2e9be2827f' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Tuft'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('41508fca-36b5-4f32-8d52-3f2e9be2827f', 'Tuft', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '41508fca-36b5-4f32-8d52-3f2e9be2827f' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Tassel'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('41508fca-36b5-4f32-8d52-3f2e9be2827f', 'Tassel', false, true);
  END IF;

  -- [KANJI] 扱 (Level 38)
  UPDATE item_meanings SET meaning = 'Menangani', primary_meaning = true, accepted_answer = true WHERE id = 'c561451f-2800-4af1-84f8-2386f5870b51';
  UPDATE items SET slug = 'menangani' WHERE id = 'a7302e8b-9b37-4205-90fe-1dc93e087030';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'a7302e8b-9b37-4205-90fe-1dc93e087030' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Memperlakukan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('a7302e8b-9b37-4205-90fe-1dc93e087030', 'Memperlakukan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'a7302e8b-9b37-4205-90fe-1dc93e087030' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Handle'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('a7302e8b-9b37-4205-90fe-1dc93e087030', 'Handle', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'a7302e8b-9b37-4205-90fe-1dc93e087030' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Treat'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('a7302e8b-9b37-4205-90fe-1dc93e087030', 'Treat', false, true);
  END IF;

  -- [KANJI] 抑 (Level 38)
  UPDATE item_meanings SET meaning = 'Menahan Diri', primary_meaning = true, accepted_answer = true WHERE id = '81f029a2-abe2-4a31-8f0e-ffa11f1828c3';
  UPDATE items SET slug = 'menahan-diri' WHERE id = '29579f60-5a0b-446b-a271-1724525706fe';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '29579f60-5a0b-446b-a271-1724525706fe' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Menekan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('29579f60-5a0b-446b-a271-1724525706fe', 'Menekan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '29579f60-5a0b-446b-a271-1724525706fe' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Meredam'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('29579f60-5a0b-446b-a271-1724525706fe', 'Meredam', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '29579f60-5a0b-446b-a271-1724525706fe' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Suppress'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('29579f60-5a0b-446b-a271-1724525706fe', 'Suppress', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '29579f60-5a0b-446b-a271-1724525706fe' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Restrain'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('29579f60-5a0b-446b-a271-1724525706fe', 'Restrain', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '29579f60-5a0b-446b-a271-1724525706fe' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Oppress'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('29579f60-5a0b-446b-a271-1724525706fe', 'Oppress', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '29579f60-5a0b-446b-a271-1724525706fe' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Oppression'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('29579f60-5a0b-446b-a271-1724525706fe', 'Oppression', false, true);
  END IF;

  -- [KANJI] 択 (Level 38)
  UPDATE item_meanings SET meaning = 'Memilih', primary_meaning = true, accepted_answer = true WHERE id = '9b88a9fc-d54d-4f50-86da-f8a0f08de861';
  UPDATE items SET slug = 'memilih' WHERE id = 'e9cdcabc-f3aa-431c-a7d9-ffb494302486';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'e9cdcabc-f3aa-431c-a7d9-ffb494302486' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Menyeleksi'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('e9cdcabc-f3aa-431c-a7d9-ffb494302486', 'Menyeleksi', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'e9cdcabc-f3aa-431c-a7d9-ffb494302486' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Select'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('e9cdcabc-f3aa-431c-a7d9-ffb494302486', 'Select', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'e9cdcabc-f3aa-431c-a7d9-ffb494302486' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Choose'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('e9cdcabc-f3aa-431c-a7d9-ffb494302486', 'Choose', false, true);
  END IF;

  -- [KANJI] 描 (Level 38)
  UPDATE item_meanings SET meaning = 'Menggambar', primary_meaning = true, accepted_answer = true WHERE id = '291564f0-c5ef-4b3c-bb66-dd6fc24aaea4';
  UPDATE items SET slug = 'menggambar' WHERE id = '8c22c9b3-2848-4a31-ba90-770dbd4dbdc4';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '8c22c9b3-2848-4a31-ba90-770dbd4dbdc4' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Melukiskan Kisah'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('8c22c9b3-2848-4a31-ba90-770dbd4dbdc4', 'Melukiskan Kisah', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '8c22c9b3-2848-4a31-ba90-770dbd4dbdc4' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Draw'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('8c22c9b3-2848-4a31-ba90-770dbd4dbdc4', 'Draw', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '8c22c9b3-2848-4a31-ba90-770dbd4dbdc4' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Paint'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('8c22c9b3-2848-4a31-ba90-770dbd4dbdc4', 'Paint', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '8c22c9b3-2848-4a31-ba90-770dbd4dbdc4' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Depict'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('8c22c9b3-2848-4a31-ba90-770dbd4dbdc4', 'Depict', false, true);
  END IF;

  -- [KANJI] 璧 (Level 38)
  UPDATE item_meanings SET meaning = 'Cakram Giok', primary_meaning = true, accepted_answer = true WHERE id = '6aca2907-89cf-4439-85ad-2d717586b14d';
  UPDATE items SET slug = 'cakram-giok' WHERE id = '63b2c347-af77-4c4c-8722-692c9408af88';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '63b2c347-af77-4c4c-8722-692c9408af88' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Sempurna'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('63b2c347-af77-4c4c-8722-692c9408af88', 'Sempurna', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '63b2c347-af77-4c4c-8722-692c9408af88' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Jade Disc'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('63b2c347-af77-4c4c-8722-692c9408af88', 'Jade Disc', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '63b2c347-af77-4c4c-8722-692c9408af88' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Flawless'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('63b2c347-af77-4c4c-8722-692c9408af88', 'Flawless', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '63b2c347-af77-4c4c-8722-692c9408af88' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Cakram'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('63b2c347-af77-4c4c-8722-692c9408af88', 'Cakram', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '63b2c347-af77-4c4c-8722-692c9408af88' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Disc'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('63b2c347-af77-4c4c-8722-692c9408af88', 'Disc', false, true);
  END IF;

  -- [KANJI] 盤 (Level 38)
  UPDATE item_meanings SET meaning = 'Papan Permainan', primary_meaning = true, accepted_answer = true WHERE id = '353221f6-3dfc-4512-896e-afb1dde65ad6';
  UPDATE items SET slug = 'papan-permainan' WHERE id = '4cfa654e-65bb-4298-9e14-330f60552e74';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '4cfa654e-65bb-4298-9e14-330f60552e74' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Piringan Cakram'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('4cfa654e-65bb-4298-9e14-330f60552e74', 'Piringan Cakram', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '4cfa654e-65bb-4298-9e14-330f60552e74' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Board'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('4cfa654e-65bb-4298-9e14-330f60552e74', 'Board', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '4cfa654e-65bb-4298-9e14-330f60552e74' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Tray'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('4cfa654e-65bb-4298-9e14-330f60552e74', 'Tray', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '4cfa654e-65bb-4298-9e14-330f60552e74' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Platter'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('4cfa654e-65bb-4298-9e14-330f60552e74', 'Platter', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '4cfa654e-65bb-4298-9e14-330f60552e74' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Baki'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('4cfa654e-65bb-4298-9e14-330f60552e74', 'Baki', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '4cfa654e-65bb-4298-9e14-330f60552e74' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Piring'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('4cfa654e-65bb-4298-9e14-330f60552e74', 'Piring', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '4cfa654e-65bb-4298-9e14-330f60552e74' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Papan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('4cfa654e-65bb-4298-9e14-330f60552e74', 'Papan', false, true);
  END IF;

  -- [KANJI] 称 (Level 38)
  UPDATE item_meanings SET meaning = 'Sebutan', primary_meaning = true, accepted_answer = true WHERE id = 'a44c22bb-f506-48a7-a247-57b05e7bd046';
  UPDATE items SET slug = 'sebutan' WHERE id = '9c0ae218-07db-4f40-908e-51ca9c4b7430';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '9c0ae218-07db-4f40-908e-51ca9c4b7430' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Julukan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('9c0ae218-07db-4f40-908e-51ca9c4b7430', 'Julukan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '9c0ae218-07db-4f40-908e-51ca9c4b7430' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Menyebut'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('9c0ae218-07db-4f40-908e-51ca9c4b7430', 'Menyebut', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '9c0ae218-07db-4f40-908e-51ca9c4b7430' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Title'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('9c0ae218-07db-4f40-908e-51ca9c4b7430', 'Title', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '9c0ae218-07db-4f40-908e-51ca9c4b7430' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Name'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('9c0ae218-07db-4f40-908e-51ca9c4b7430', 'Name', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '9c0ae218-07db-4f40-908e-51ca9c4b7430' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Praise'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('9c0ae218-07db-4f40-908e-51ca9c4b7430', 'Praise', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '9c0ae218-07db-4f40-908e-51ca9c4b7430' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Judul'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('9c0ae218-07db-4f40-908e-51ca9c4b7430', 'Judul', false, true);
  END IF;

  -- [KANJI] 緒 (Level 38)
  UPDATE item_meanings SET meaning = 'Tali Ikatan', primary_meaning = true, accepted_answer = true WHERE id = '0ab36992-8b19-4011-947d-5677b9526905';
  UPDATE items SET slug = 'tali-ikatan' WHERE id = '3aa86e84-1099-4e35-95fd-a1986af6f154';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '3aa86e84-1099-4e35-95fd-a1986af6f154' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Pangkal Awal'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('3aa86e84-1099-4e35-95fd-a1986af6f154', 'Pangkal Awal', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '3aa86e84-1099-4e35-95fd-a1986af6f154' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Bersama'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('3aa86e84-1099-4e35-95fd-a1986af6f154', 'Bersama', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '3aa86e84-1099-4e35-95fd-a1986af6f154' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Beginning'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('3aa86e84-1099-4e35-95fd-a1986af6f154', 'Beginning', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '3aa86e84-1099-4e35-95fd-a1986af6f154' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Cord'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('3aa86e84-1099-4e35-95fd-a1986af6f154', 'Cord', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '3aa86e84-1099-4e35-95fd-a1986af6f154' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Together'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('3aa86e84-1099-4e35-95fd-a1986af6f154', 'Together', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '3aa86e84-1099-4e35-95fd-a1986af6f154' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Tali'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('3aa86e84-1099-4e35-95fd-a1986af6f154', 'Tali', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '3aa86e84-1099-4e35-95fd-a1986af6f154' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Suasana hati'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('3aa86e84-1099-4e35-95fd-a1986af6f154', 'Suasana hati', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '3aa86e84-1099-4e35-95fd-a1986af6f154' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Feeling'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('3aa86e84-1099-4e35-95fd-a1986af6f154', 'Feeling', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '3aa86e84-1099-4e35-95fd-a1986af6f154' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Continuity'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('3aa86e84-1099-4e35-95fd-a1986af6f154', 'Continuity', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '3aa86e84-1099-4e35-95fd-a1986af6f154' AND LOWER(TRIM(meaning)) = LOWER(TRIM('String'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('3aa86e84-1099-4e35-95fd-a1986af6f154', 'String', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '3aa86e84-1099-4e35-95fd-a1986af6f154' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Connection'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('3aa86e84-1099-4e35-95fd-a1986af6f154', 'Connection', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '3aa86e84-1099-4e35-95fd-a1986af6f154' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Mood'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('3aa86e84-1099-4e35-95fd-a1986af6f154', 'Mood', false, true);
  END IF;

  -- [KANJI] 緩 (Level 38)
  UPDATE item_meanings SET meaning = 'Longgar', primary_meaning = true, accepted_answer = true WHERE id = '9206ca79-bb80-4ec7-8c08-d56783413eae';
  UPDATE items SET slug = 'longgar' WHERE id = '92eef683-cf8d-45de-9e36-ce3fe445cab7';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '92eef683-cf8d-45de-9e36-ce3fe445cab7' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Kendur'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('92eef683-cf8d-45de-9e36-ce3fe445cab7', 'Kendur', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '92eef683-cf8d-45de-9e36-ce3fe445cab7' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Melonggarkan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('92eef683-cf8d-45de-9e36-ce3fe445cab7', 'Melonggarkan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '92eef683-cf8d-45de-9e36-ce3fe445cab7' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Loose'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('92eef683-cf8d-45de-9e36-ce3fe445cab7', 'Loose', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '92eef683-cf8d-45de-9e36-ce3fe445cab7' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Slack'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('92eef683-cf8d-45de-9e36-ce3fe445cab7', 'Slack', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '92eef683-cf8d-45de-9e36-ce3fe445cab7' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Relax'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('92eef683-cf8d-45de-9e36-ce3fe445cab7', 'Relax', false, true);
  END IF;

  -- [KANJI] 繰 (Level 38)
  UPDATE item_meanings SET meaning = 'Mengulur Tali', primary_meaning = true, accepted_answer = true WHERE id = '91594741-5ad0-4342-b61c-d08d7b80368e';
  UPDATE items SET slug = 'mengulur-tali' WHERE id = 'b1c4ae88-318f-4230-a83b-2c276cbd765d';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'b1c4ae88-318f-4230-a83b-2c276cbd765d' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Memutar Balik'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('b1c4ae88-318f-4230-a83b-2c276cbd765d', 'Memutar Balik', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'b1c4ae88-318f-4230-a83b-2c276cbd765d' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Reel'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('b1c4ae88-318f-4230-a83b-2c276cbd765d', 'Reel', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'b1c4ae88-318f-4230-a83b-2c276cbd765d' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Spin'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('b1c4ae88-318f-4230-a83b-2c276cbd765d', 'Spin', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'b1c4ae88-318f-4230-a83b-2c276cbd765d' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Turn Over'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('b1c4ae88-318f-4230-a83b-2c276cbd765d', 'Turn Over', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'b1c4ae88-318f-4230-a83b-2c276cbd765d' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Putaran'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('b1c4ae88-318f-4230-a83b-2c276cbd765d', 'Putaran', false, true);
  END IF;

  -- [KANJI] 致 (Level 38)
  UPDATE item_meanings SET meaning = 'Menyebabkan', primary_meaning = true, accepted_answer = true WHERE id = '01862042-710c-4b07-be07-8622d3d550c3';
  UPDATE items SET slug = 'menyebabkan' WHERE id = '2b652cb3-9d57-455b-bc5c-cb5dbe73d693';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '2b652cb3-9d57-455b-bc5c-cb5dbe73d693' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Melakukan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('2b652cb3-9d57-455b-bc5c-cb5dbe73d693', 'Melakukan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '2b652cb3-9d57-455b-bc5c-cb5dbe73d693' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Do'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('2b652cb3-9d57-455b-bc5c-cb5dbe73d693', 'Do', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '2b652cb3-9d57-455b-bc5c-cb5dbe73d693' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Cause'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('2b652cb3-9d57-455b-bc5c-cb5dbe73d693', 'Cause', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '2b652cb3-9d57-455b-bc5c-cb5dbe73d693' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Exert'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('2b652cb3-9d57-455b-bc5c-cb5dbe73d693', 'Exert', false, true);
  END IF;

  -- [KANJI] 覗 (Level 38)
  UPDATE item_meanings SET meaning = 'Mengintip', primary_meaning = true, accepted_answer = true WHERE id = '6464674f-9b2b-43a2-a74d-6684b72757c9';
  UPDATE items SET slug = 'mengintip' WHERE id = '4419c52a-d9fd-4acc-8f37-20383200e7cf';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '4419c52a-d9fd-4acc-8f37-20383200e7cf' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Mengintai Diam-diam'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('4419c52a-d9fd-4acc-8f37-20383200e7cf', 'Mengintai Diam-diam', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '4419c52a-d9fd-4acc-8f37-20383200e7cf' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Peep'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('4419c52a-d9fd-4acc-8f37-20383200e7cf', 'Peep', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '4419c52a-d9fd-4acc-8f37-20383200e7cf' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Peek'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('4419c52a-d9fd-4acc-8f37-20383200e7cf', 'Peek', false, true);
  END IF;

  -- [KANJI] 託 (Level 38)
  UPDATE item_meanings SET meaning = 'Menitipkan', primary_meaning = true, accepted_answer = true WHERE id = '96ea9f67-719d-4f7b-a5f6-c7db0cea55ae';
  UPDATE items SET slug = 'menitipkan' WHERE id = 'b6df9c1a-29e7-47b6-8ebe-659085459845';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'b6df9c1a-29e7-47b6-8ebe-659085459845' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Mempercayakan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('b6df9c1a-29e7-47b6-8ebe-659085459845', 'Mempercayakan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'b6df9c1a-29e7-47b6-8ebe-659085459845' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Consign'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('b6df9c1a-29e7-47b6-8ebe-659085459845', 'Consign', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'b6df9c1a-29e7-47b6-8ebe-659085459845' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Entrust'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('b6df9c1a-29e7-47b6-8ebe-659085459845', 'Entrust', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'b6df9c1a-29e7-47b6-8ebe-659085459845' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Memperuntukkan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('b6df9c1a-29e7-47b6-8ebe-659085459845', 'Memperuntukkan', false, true);
  END IF;

  -- [KANJI] 賂 (Level 38)
  UPDATE item_meanings SET meaning = 'Suap', primary_meaning = true, accepted_answer = true WHERE id = '7fcbc19a-e397-427c-a9a9-56d6560c2055';
  UPDATE items SET slug = 'suap' WHERE id = '9f626ed0-228c-4a54-9474-0081dd9cd6e4';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '9f626ed0-228c-4a54-9474-0081dd9cd6e4' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Uang Sogok'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('9f626ed0-228c-4a54-9474-0081dd9cd6e4', 'Uang Sogok', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '9f626ed0-228c-4a54-9474-0081dd9cd6e4' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Bribe'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('9f626ed0-228c-4a54-9474-0081dd9cd6e4', 'Bribe', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '9f626ed0-228c-4a54-9474-0081dd9cd6e4' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Bribery'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('9f626ed0-228c-4a54-9474-0081dd9cd6e4', 'Bribery', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '9f626ed0-228c-4a54-9474-0081dd9cd6e4' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Menyuap'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('9f626ed0-228c-4a54-9474-0081dd9cd6e4', 'Menyuap', false, true);
  END IF;

  -- [KANJI] 賄 (Level 38)
  UPDATE item_meanings SET meaning = 'Menyuap', primary_meaning = true, accepted_answer = true WHERE id = '2181edb6-1ecb-491a-b425-e2c73e519f6b';
  UPDATE items SET slug = 'menyuap' WHERE id = 'e7c77e76-e375-474a-9d10-e5c1fd5b16ec';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'e7c77e76-e375-474a-9d10-e5c1fd5b16ec' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Membiayai Makanan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('e7c77e76-e375-474a-9d10-e5c1fd5b16ec', 'Membiayai Makanan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'e7c77e76-e375-474a-9d10-e5c1fd5b16ec' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Bribe'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('e7c77e76-e375-474a-9d10-e5c1fd5b16ec', 'Bribe', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'e7c77e76-e375-474a-9d10-e5c1fd5b16ec' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Supply'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('e7c77e76-e375-474a-9d10-e5c1fd5b16ec', 'Supply', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'e7c77e76-e375-474a-9d10-e5c1fd5b16ec' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Cover'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('e7c77e76-e375-474a-9d10-e5c1fd5b16ec', 'Cover', false, true);
  END IF;

  -- [KANJI] 避 (Level 38)
  UPDATE item_meanings SET meaning = 'Menghindar', primary_meaning = true, accepted_answer = true WHERE id = 'c5804bd1-2a45-4a4d-9f52-8e09c16faee1';
  UPDATE items SET slug = 'menghindar' WHERE id = 'dbfa6217-fb84-4f06-8233-537c7dc2222b';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'dbfa6217-fb84-4f06-8233-537c7dc2222b' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Mengungsi'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('dbfa6217-fb84-4f06-8233-537c7dc2222b', 'Mengungsi', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'dbfa6217-fb84-4f06-8233-537c7dc2222b' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Avoid'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('dbfa6217-fb84-4f06-8233-537c7dc2222b', 'Avoid', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'dbfa6217-fb84-4f06-8233-537c7dc2222b' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Evade'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('dbfa6217-fb84-4f06-8233-537c7dc2222b', 'Evade', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'dbfa6217-fb84-4f06-8233-537c7dc2222b' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Escape'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('dbfa6217-fb84-4f06-8233-537c7dc2222b', 'Escape', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'dbfa6217-fb84-4f06-8233-537c7dc2222b' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Menghindari'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('dbfa6217-fb84-4f06-8233-537c7dc2222b', 'Menghindari', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'dbfa6217-fb84-4f06-8233-537c7dc2222b' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Dodge'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('dbfa6217-fb84-4f06-8233-537c7dc2222b', 'Dodge', false, true);
  END IF;

  -- [KANJI] 還 (Level 38)
  UPDATE item_meanings SET meaning = 'Kembali Pulang', primary_meaning = true, accepted_answer = true WHERE id = 'c733500a-bca8-48a5-8294-4affe4b53f24';
  UPDATE items SET slug = 'kembali-pulang' WHERE id = '2fb1990d-960e-480a-a40a-796c165bd249';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '2fb1990d-960e-480a-a40a-796c165bd249' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Mengembalikan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('2fb1990d-960e-480a-a40a-796c165bd249', 'Mengembalikan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '2fb1990d-960e-480a-a40a-796c165bd249' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Send Back'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('2fb1990d-960e-480a-a40a-796c165bd249', 'Send Back', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '2fb1990d-960e-480a-a40a-796c165bd249' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Return'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('2fb1990d-960e-480a-a40a-796c165bd249', 'Return', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '2fb1990d-960e-480a-a40a-796c165bd249' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Restore'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('2fb1990d-960e-480a-a40a-796c165bd249', 'Restore', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '2fb1990d-960e-480a-a40a-796c165bd249' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Kirim Kembali'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('2fb1990d-960e-480a-a40a-796c165bd249', 'Kirim Kembali', false, true);
  END IF;

  -- [KANJI] 需 (Level 38)
  UPDATE item_meanings SET meaning = 'Permintaan Pasar', primary_meaning = true, accepted_answer = true WHERE id = '43a428f7-9afd-400f-94fe-90ed192aebe3';
  UPDATE items SET slug = 'permintaan-pasar' WHERE id = '7a6f4aa2-8d70-439b-b7bd-9328af498869';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '7a6f4aa2-8d70-439b-b7bd-9328af498869' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Kebutuhan Pokok'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('7a6f4aa2-8d70-439b-b7bd-9328af498869', 'Kebutuhan Pokok', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '7a6f4aa2-8d70-439b-b7bd-9328af498869' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Demand'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('7a6f4aa2-8d70-439b-b7bd-9328af498869', 'Demand', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '7a6f4aa2-8d70-439b-b7bd-9328af498869' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Need'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('7a6f4aa2-8d70-439b-b7bd-9328af498869', 'Need', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '7a6f4aa2-8d70-439b-b7bd-9328af498869' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Tuntutan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('7a6f4aa2-8d70-439b-b7bd-9328af498869', 'Tuntutan', false, true);
  END IF;

  -- [KANJI] 鞄 (Level 38)
  UPDATE item_meanings SET meaning = 'Tas Jinjing', primary_meaning = true, accepted_answer = true WHERE id = 'f8c31880-7349-458a-8b9f-d40af31a7459';
  UPDATE items SET slug = 'tas-jinjing' WHERE id = 'a3b55b06-427e-4a0d-8d85-5f1927c3529f';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'a3b55b06-427e-4a0d-8d85-5f1927c3529f' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Koper'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('a3b55b06-427e-4a0d-8d85-5f1927c3529f', 'Koper', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'a3b55b06-427e-4a0d-8d85-5f1927c3529f' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Bag'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('a3b55b06-427e-4a0d-8d85-5f1927c3529f', 'Bag', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'a3b55b06-427e-4a0d-8d85-5f1927c3529f' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Briefcase'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('a3b55b06-427e-4a0d-8d85-5f1927c3529f', 'Briefcase', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'a3b55b06-427e-4a0d-8d85-5f1927c3529f' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Tas'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('a3b55b06-427e-4a0d-8d85-5f1927c3529f', 'Tas', false, true);
  END IF;

  -- [KANJI] 齢 (Level 38)
  UPDATE item_meanings SET meaning = 'Usia', primary_meaning = true, accepted_answer = true WHERE id = '883d8dea-ca94-4c7c-aac4-3b723d3f0db8';
  UPDATE items SET slug = 'usia' WHERE id = 'b3a01c62-aa14-455d-8457-fb2ae983ee6d';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'b3a01c62-aa14-455d-8457-fb2ae983ee6d' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Umur'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('b3a01c62-aa14-455d-8457-fb2ae983ee6d', 'Umur', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'b3a01c62-aa14-455d-8457-fb2ae983ee6d' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Age'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('b3a01c62-aa14-455d-8457-fb2ae983ee6d', 'Age', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'b3a01c62-aa14-455d-8457-fb2ae983ee6d' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Years'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('b3a01c62-aa14-455d-8457-fb2ae983ee6d', 'Years', false, true);
  END IF;

  -- [VOCABULARY] お見舞い (Level 38)
  UPDATE item_meanings SET meaning = 'Menjenguk Orang Sakit', primary_meaning = true, accepted_answer = true WHERE id = 'ade36d0a-21a1-42a8-95f1-a0ec3b98046f';
  UPDATE items SET slug = 'menjenguk-orang-sakit' WHERE id = '790c8f32-debf-422b-855b-5bd2d3edb9c4';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '790c8f32-debf-422b-855b-5bd2d3edb9c4' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Menengok'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('790c8f32-debf-422b-855b-5bd2d3edb9c4', 'Menengok', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '790c8f32-debf-422b-855b-5bd2d3edb9c4' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Kunjungan Simpati'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('790c8f32-debf-422b-855b-5bd2d3edb9c4', 'Kunjungan Simpati', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '790c8f32-debf-422b-855b-5bd2d3edb9c4' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Sympathy Visit'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('790c8f32-debf-422b-855b-5bd2d3edb9c4', 'Sympathy Visit', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '790c8f32-debf-422b-855b-5bd2d3edb9c4' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Get Well Visit'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('790c8f32-debf-422b-855b-5bd2d3edb9c4', 'Get Well Visit', false, true);
  END IF;

  -- [VOCABULARY] 一致する (Level 38)
  UPDATE item_meanings SET meaning = 'Cocok Sesuai', primary_meaning = true, accepted_answer = true WHERE id = '6d4638c0-f3d3-45ab-876a-26ad178871e5';
  UPDATE items SET slug = 'cocok-sesuai' WHERE id = 'cf5669d5-1248-46e5-b1f9-6b885e9f43cd';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'cf5669d5-1248-46e5-b1f9-6b885e9f43cd' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Selaras'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('cf5669d5-1248-46e5-b1f9-6b885e9f43cd', 'Selaras', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'cf5669d5-1248-46e5-b1f9-6b885e9f43cd' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Sepakat'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('cf5669d5-1248-46e5-b1f9-6b885e9f43cd', 'Sepakat', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'cf5669d5-1248-46e5-b1f9-6b885e9f43cd' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Untuk Mencocokkan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('cf5669d5-1248-46e5-b1f9-6b885e9f43cd', 'Untuk Mencocokkan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'cf5669d5-1248-46e5-b1f9-6b885e9f43cd' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Match'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('cf5669d5-1248-46e5-b1f9-6b885e9f43cd', 'To Match', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'cf5669d5-1248-46e5-b1f9-6b885e9f43cd' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Agree'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('cf5669d5-1248-46e5-b1f9-6b885e9f43cd', 'To Agree', false, true);
  END IF;

  -- [VOCABULARY] 乗り換える (Level 38)
  UPDATE item_meanings SET meaning = 'Ganti Kereta', primary_meaning = true, accepted_answer = true WHERE id = '5aded2b6-4bae-4e09-95d9-042caac4df92';
  UPDATE items SET slug = 'ganti-kereta' WHERE id = 'fd203856-04b4-4652-a8de-02788a5a4596';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'fd203856-04b4-4652-a8de-02788a5a4596' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Pindah Kendaraan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('fd203856-04b4-4652-a8de-02788a5a4596', 'Pindah Kendaraan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'fd203856-04b4-4652-a8de-02788a5a4596' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Untuk Mentransfer'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('fd203856-04b4-4652-a8de-02788a5a4596', 'Untuk Mentransfer', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'fd203856-04b4-4652-a8de-02788a5a4596' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Transfer Trains'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('fd203856-04b4-4652-a8de-02788a5a4596', 'To Transfer Trains', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'fd203856-04b4-4652-a8de-02788a5a4596' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Change Trains'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('fd203856-04b4-4652-a8de-02788a5a4596', 'To Change Trains', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'fd203856-04b4-4652-a8de-02788a5a4596' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Change Something'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('fd203856-04b4-4652-a8de-02788a5a4596', 'To Change Something', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'fd203856-04b4-4652-a8de-02788a5a4596' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Transfer Something'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('fd203856-04b4-4652-a8de-02788a5a4596', 'To Transfer Something', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'fd203856-04b4-4652-a8de-02788a5a4596' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Untuk Mengganti Kereta'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('fd203856-04b4-4652-a8de-02788a5a4596', 'Untuk Mengganti Kereta', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'fd203856-04b4-4652-a8de-02788a5a4596' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Transfer'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('fd203856-04b4-4652-a8de-02788a5a4596', 'To Transfer', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'fd203856-04b4-4652-a8de-02788a5a4596' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Change'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('fd203856-04b4-4652-a8de-02788a5a4596', 'To Change', false, true);
  END IF;

  -- [VOCABULARY] 仮称 (Level 38)
  UPDATE item_meanings SET meaning = 'Nama Sementara', primary_meaning = true, accepted_answer = true WHERE id = '1719ddc3-84a1-4630-a92c-3537a833ba61';
  UPDATE items SET slug = 'nama-sementara' WHERE id = 'eadf6e81-82c1-4427-819d-4f132477e1f2';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'eadf6e81-82c1-4427-819d-4f132477e1f2' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Sebutan Sementara'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('eadf6e81-82c1-4427-819d-4f132477e1f2', 'Sebutan Sementara', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'eadf6e81-82c1-4427-819d-4f132477e1f2' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Nama Kerja'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('eadf6e81-82c1-4427-819d-4f132477e1f2', 'Nama Kerja', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'eadf6e81-82c1-4427-819d-4f132477e1f2' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Provisional Name'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('eadf6e81-82c1-4427-819d-4f132477e1f2', 'Provisional Name', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'eadf6e81-82c1-4427-819d-4f132477e1f2' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Working Title'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('eadf6e81-82c1-4427-819d-4f132477e1f2', 'Working Title', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'eadf6e81-82c1-4427-819d-4f132477e1f2' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Name Tentatively'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('eadf6e81-82c1-4427-819d-4f132477e1f2', 'Name Tentatively', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'eadf6e81-82c1-4427-819d-4f132477e1f2' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Name Temporarily'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('eadf6e81-82c1-4427-819d-4f132477e1f2', 'Name Temporarily', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'eadf6e81-82c1-4427-819d-4f132477e1f2' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Temporary Name'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('eadf6e81-82c1-4427-819d-4f132477e1f2', 'Temporary Name', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'eadf6e81-82c1-4427-819d-4f132477e1f2' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Tentative Title'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('eadf6e81-82c1-4427-819d-4f132477e1f2', 'Tentative Title', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'eadf6e81-82c1-4427-819d-4f132477e1f2' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Working Name'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('eadf6e81-82c1-4427-819d-4f132477e1f2', 'Working Name', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'eadf6e81-82c1-4427-819d-4f132477e1f2' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Tentative Name'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('eadf6e81-82c1-4427-819d-4f132477e1f2', 'Tentative Name', false, true);
  END IF;

  -- [VOCABULARY] 伴う (Level 38)
  UPDATE item_meanings SET meaning = 'Menyertai', primary_meaning = true, accepted_answer = true WHERE id = 'bb979d61-a3c8-4acd-bf02-810d60f5d327';
  UPDATE items SET slug = 'menyertai' WHERE id = '00a82803-5064-4ffc-9fc1-1acb69f32258';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '00a82803-5064-4ffc-9fc1-1acb69f32258' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Mengiringi Bersamaan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('00a82803-5064-4ffc-9fc1-1acb69f32258', 'Mengiringi Bersamaan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '00a82803-5064-4ffc-9fc1-1acb69f32258' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Untuk Menemani'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('00a82803-5064-4ffc-9fc1-1acb69f32258', 'Untuk Menemani', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '00a82803-5064-4ffc-9fc1-1acb69f32258' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Accompany'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('00a82803-5064-4ffc-9fc1-1acb69f32258', 'To Accompany', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '00a82803-5064-4ffc-9fc1-1acb69f32258' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Go Hand In Hand'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('00a82803-5064-4ffc-9fc1-1acb69f32258', 'To Go Hand In Hand', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '00a82803-5064-4ffc-9fc1-1acb69f32258' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Bring With'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('00a82803-5064-4ffc-9fc1-1acb69f32258', 'To Bring With', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '00a82803-5064-4ffc-9fc1-1acb69f32258' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Be Consequent Upon'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('00a82803-5064-4ffc-9fc1-1acb69f32258', 'To Be Consequent Upon', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '00a82803-5064-4ffc-9fc1-1acb69f32258' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Go With'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('00a82803-5064-4ffc-9fc1-1acb69f32258', 'To Go With', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '00a82803-5064-4ffc-9fc1-1acb69f32258' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Come With'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('00a82803-5064-4ffc-9fc1-1acb69f32258', 'To Come With', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '00a82803-5064-4ffc-9fc1-1acb69f32258' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Be Accompanied With'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('00a82803-5064-4ffc-9fc1-1acb69f32258', 'To Be Accompanied With', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '00a82803-5064-4ffc-9fc1-1acb69f32258' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Be Accompanied By'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('00a82803-5064-4ffc-9fc1-1acb69f32258', 'To Be Accompanied By', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '00a82803-5064-4ffc-9fc1-1acb69f32258' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Go Hand In Hand With'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('00a82803-5064-4ffc-9fc1-1acb69f32258', 'To Go Hand In Hand With', false, true);
  END IF;

  -- [VOCABULARY] 併合 (Level 38)
  UPDATE item_meanings SET meaning = 'Pencaplokan Wilayah', primary_meaning = true, accepted_answer = true WHERE id = 'e89d1f23-1f22-42b8-bfef-276254e438af';
  UPDATE items SET slug = 'pencaplokan-wilayah' WHERE id = '15dc04d4-f7cb-4475-b935-7ab82705eedc';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '15dc04d4-f7cb-4475-b935-7ab82705eedc' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Penggabungan Usaha'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('15dc04d4-f7cb-4475-b935-7ab82705eedc', 'Penggabungan Usaha', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '15dc04d4-f7cb-4475-b935-7ab82705eedc' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Aneksasi'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('15dc04d4-f7cb-4475-b935-7ab82705eedc', 'Aneksasi', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '15dc04d4-f7cb-4475-b935-7ab82705eedc' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Annexation'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('15dc04d4-f7cb-4475-b935-7ab82705eedc', 'Annexation', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '15dc04d4-f7cb-4475-b935-7ab82705eedc' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Merger'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('15dc04d4-f7cb-4475-b935-7ab82705eedc', 'Merger', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '15dc04d4-f7cb-4475-b935-7ab82705eedc' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Merging'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('15dc04d4-f7cb-4475-b935-7ab82705eedc', 'Merging', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '15dc04d4-f7cb-4475-b935-7ab82705eedc' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Absorbing'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('15dc04d4-f7cb-4475-b935-7ab82705eedc', 'Absorbing', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '15dc04d4-f7cb-4475-b935-7ab82705eedc' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Absorb'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('15dc04d4-f7cb-4475-b935-7ab82705eedc', 'Absorb', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '15dc04d4-f7cb-4475-b935-7ab82705eedc' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Penggabungan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('15dc04d4-f7cb-4475-b935-7ab82705eedc', 'Penggabungan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '15dc04d4-f7cb-4475-b935-7ab82705eedc' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Absorption'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('15dc04d4-f7cb-4475-b935-7ab82705eedc', 'Absorption', false, true);
  END IF;

  -- [VOCABULARY] 信託 (Level 38)
  UPDATE item_meanings SET meaning = 'Amanat Kepercayaan', primary_meaning = true, accepted_answer = true WHERE id = '62a3b3c1-55bc-4519-a1b0-1b1aa812e477';
  UPDATE items SET slug = 'amanat-kepercayaan' WHERE id = '9fab5374-c0e5-440c-8dfe-05ec642d257f';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '9fab5374-c0e5-440c-8dfe-05ec642d257f' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Perusahaan Trust'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('9fab5374-c0e5-440c-8dfe-05ec642d257f', 'Perusahaan Trust', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '9fab5374-c0e5-440c-8dfe-05ec642d257f' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Memercayai'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('9fab5374-c0e5-440c-8dfe-05ec642d257f', 'Memercayai', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '9fab5374-c0e5-440c-8dfe-05ec642d257f' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Trust'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('9fab5374-c0e5-440c-8dfe-05ec642d257f', 'Trust', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '9fab5374-c0e5-440c-8dfe-05ec642d257f' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Entrusting'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('9fab5374-c0e5-440c-8dfe-05ec642d257f', 'Entrusting', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '9fab5374-c0e5-440c-8dfe-05ec642d257f' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Mempercayakan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('9fab5374-c0e5-440c-8dfe-05ec642d257f', 'Mempercayakan', false, true);
  END IF;

  -- [VOCABULARY] 傾く (Level 38)
  UPDATE item_meanings SET meaning = 'Miring', primary_meaning = true, accepted_answer = true WHERE id = 'fb981abe-9d44-4e44-a69d-c90f2abb1e05';
  UPDATE items SET slug = 'miring' WHERE id = 'b3ba55c2-390a-4dea-94fa-37603082a6c5';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'b3ba55c2-390a-4dea-94fa-37603082a6c5' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Condong'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('b3ba55c2-390a-4dea-94fa-37603082a6c5', 'Condong', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'b3ba55c2-390a-4dea-94fa-37603082a6c5' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Goyah Menurun'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('b3ba55c2-390a-4dea-94fa-37603082a6c5', 'Goyah Menurun', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'b3ba55c2-390a-4dea-94fa-37603082a6c5' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Menjadi Condong'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('b3ba55c2-390a-4dea-94fa-37603082a6c5', 'Menjadi Condong', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'b3ba55c2-390a-4dea-94fa-37603082a6c5' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Lean'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('b3ba55c2-390a-4dea-94fa-37603082a6c5', 'To Lean', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'b3ba55c2-390a-4dea-94fa-37603082a6c5' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Tilt'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('b3ba55c2-390a-4dea-94fa-37603082a6c5', 'To Tilt', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'b3ba55c2-390a-4dea-94fa-37603082a6c5' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Lean Toward'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('b3ba55c2-390a-4dea-94fa-37603082a6c5', 'To Lean Toward', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'b3ba55c2-390a-4dea-94fa-37603082a6c5' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Menjadi Miring'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('b3ba55c2-390a-4dea-94fa-37603082a6c5', 'Menjadi Miring', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'b3ba55c2-390a-4dea-94fa-37603082a6c5' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Be Tilted'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('b3ba55c2-390a-4dea-94fa-37603082a6c5', 'To Be Tilted', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'b3ba55c2-390a-4dea-94fa-37603082a6c5' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Be Leaned'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('b3ba55c2-390a-4dea-94fa-37603082a6c5', 'To Be Leaned', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'b3ba55c2-390a-4dea-94fa-37603082a6c5' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Be Inclined'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('b3ba55c2-390a-4dea-94fa-37603082a6c5', 'To Be Inclined', false, true);
  END IF;

  -- [VOCABULARY] 出所 (Level 38)
  UPDATE item_meanings SET meaning = 'Bebas Penjara', primary_meaning = true, accepted_answer = true WHERE id = '2da05532-ea16-4d9e-bb33-b15e77312e01';
  UPDATE items SET slug = 'bebas-penjara' WHERE id = 'ef37b282-1bbd-4636-bd3d-fcd5e874a295';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'ef37b282-1bbd-4636-bd3d-fcd5e874a295' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Asal Sumber Informasi'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('ef37b282-1bbd-4636-bd3d-fcd5e874a295', 'Asal Sumber Informasi', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'ef37b282-1bbd-4636-bd3d-fcd5e874a295' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Bebaskan Dari Penjara'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('ef37b282-1bbd-4636-bd3d-fcd5e874a295', 'Bebaskan Dari Penjara', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'ef37b282-1bbd-4636-bd3d-fcd5e874a295' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Release From Prison'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('ef37b282-1bbd-4636-bd3d-fcd5e874a295', 'Release From Prison', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'ef37b282-1bbd-4636-bd3d-fcd5e874a295' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Source'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('ef37b282-1bbd-4636-bd3d-fcd5e874a295', 'Source', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'ef37b282-1bbd-4636-bd3d-fcd5e874a295' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Origin'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('ef37b282-1bbd-4636-bd3d-fcd5e874a295', 'Origin', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'ef37b282-1bbd-4636-bd3d-fcd5e874a295' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Release From Jail'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('ef37b282-1bbd-4636-bd3d-fcd5e874a295', 'Release From Jail', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'ef37b282-1bbd-4636-bd3d-fcd5e874a295' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Discharge From Prison'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('ef37b282-1bbd-4636-bd3d-fcd5e874a295', 'Discharge From Prison', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'ef37b282-1bbd-4636-bd3d-fcd5e874a295' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Discharging From Jail'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('ef37b282-1bbd-4636-bd3d-fcd5e874a295', 'Discharging From Jail', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'ef37b282-1bbd-4636-bd3d-fcd5e874a295' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Asal'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('ef37b282-1bbd-4636-bd3d-fcd5e874a295', 'Asal', false, true);
  END IF;

  -- [VOCABULARY] 刊行する (Level 38)
  UPDATE item_meanings SET meaning = 'Menerbitkan', primary_meaning = true, accepted_answer = true WHERE id = 'fd7b9f0a-e314-4790-a7cc-a13468650625';
  UPDATE items SET slug = 'menerbitkan' WHERE id = '749b50ad-62b3-4c62-baa2-9de3352e14be';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '749b50ad-62b3-4c62-baa2-9de3352e14be' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Mencetak'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('749b50ad-62b3-4c62-baa2-9de3352e14be', 'Mencetak', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '749b50ad-62b3-4c62-baa2-9de3352e14be' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Publish'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('749b50ad-62b3-4c62-baa2-9de3352e14be', 'To Publish', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '749b50ad-62b3-4c62-baa2-9de3352e14be' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Menerbitkan (Buku'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('749b50ad-62b3-4c62-baa2-9de3352e14be', 'Menerbitkan (Buku', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '749b50ad-62b3-4c62-baa2-9de3352e14be' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Majalah Cetak)'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('749b50ad-62b3-4c62-baa2-9de3352e14be', 'Majalah Cetak)', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '749b50ad-62b3-4c62-baa2-9de3352e14be' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Untuk Menerbitkan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('749b50ad-62b3-4c62-baa2-9de3352e14be', 'Untuk Menerbitkan', false, true);
  END IF;

  -- [VOCABULARY] 却って (Level 38)
  UPDATE item_meanings SET meaning = 'Justru Sebaliknya', primary_meaning = true, accepted_answer = true WHERE id = 'fe893fbe-a894-4dce-a8a4-4751ed740f2f';
  UPDATE items SET slug = 'justru-sebaliknya' WHERE id = '7b64197b-5c59-43ec-8eb5-1d6759feec67';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '7b64197b-5c59-43ec-8eb5-1d6759feec67' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Malah'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('7b64197b-5c59-43ec-8eb5-1d6759feec67', 'Malah', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '7b64197b-5c59-43ec-8eb5-1d6759feec67' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Sebaliknya'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('7b64197b-5c59-43ec-8eb5-1d6759feec67', 'Sebaliknya', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '7b64197b-5c59-43ec-8eb5-1d6759feec67' AND LOWER(TRIM(meaning)) = LOWER(TRIM('On The Contrary'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('7b64197b-5c59-43ec-8eb5-1d6759feec67', 'On The Contrary', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '7b64197b-5c59-43ec-8eb5-1d6759feec67' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Instead'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('7b64197b-5c59-43ec-8eb5-1d6759feec67', 'Instead', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '7b64197b-5c59-43ec-8eb5-1d6759feec67' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Rather'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('7b64197b-5c59-43ec-8eb5-1d6759feec67', 'Rather', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '7b64197b-5c59-43ec-8eb5-1d6759feec67' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Alih-alih'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('7b64197b-5c59-43ec-8eb5-1d6759feec67', 'Alih-alih', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '7b64197b-5c59-43ec-8eb5-1d6759feec67' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Lebih tepatnya'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('7b64197b-5c59-43ec-8eb5-1d6759feec67', 'Lebih tepatnya', false, true);
  END IF;

  -- [VOCABULARY] 却下 (Level 38)
  UPDATE item_meanings SET meaning = 'Penolakan Resmi', primary_meaning = true, accepted_answer = true WHERE id = '446da779-8554-496b-bd56-1f0b18e085d9';
  UPDATE items SET slug = 'penolakan-resmi' WHERE id = '3768ce93-c041-4a77-a2b1-bb50f87e250c';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '3768ce93-c041-4a77-a2b1-bb50f87e250c' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Pengguguran Gugatan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('3768ce93-c041-4a77-a2b1-bb50f87e250c', 'Pengguguran Gugatan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '3768ce93-c041-4a77-a2b1-bb50f87e250c' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Penolakan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('3768ce93-c041-4a77-a2b1-bb50f87e250c', 'Penolakan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '3768ce93-c041-4a77-a2b1-bb50f87e250c' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Rejection'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('3768ce93-c041-4a77-a2b1-bb50f87e250c', 'Rejection', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '3768ce93-c041-4a77-a2b1-bb50f87e250c' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Dismissal'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('3768ce93-c041-4a77-a2b1-bb50f87e250c', 'Dismissal', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '3768ce93-c041-4a77-a2b1-bb50f87e250c' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Pemecatan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('3768ce93-c041-4a77-a2b1-bb50f87e250c', 'Pemecatan', false, true);
  END IF;

  -- [VOCABULARY] 及び (Level 38)
  UPDATE item_meanings SET meaning = 'Serta', primary_meaning = true, accepted_answer = true WHERE id = '1be77fd5-2ae1-4efd-a472-084c44c9eb13';
  UPDATE items SET slug = 'serta' WHERE id = '1d98f810-64a3-4cff-83cf-e2cc3896e50c';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '1d98f810-64a3-4cff-83cf-e2cc3896e50c' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Dan Juga'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('1d98f810-64a3-4cff-83cf-e2cc3896e50c', 'Dan Juga', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '1d98f810-64a3-4cff-83cf-e2cc3896e50c' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Maupun'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('1d98f810-64a3-4cff-83cf-e2cc3896e50c', 'Maupun', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '1d98f810-64a3-4cff-83cf-e2cc3896e50c' AND LOWER(TRIM(meaning)) = LOWER(TRIM('And'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('1d98f810-64a3-4cff-83cf-e2cc3896e50c', 'And', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '1d98f810-64a3-4cff-83cf-e2cc3896e50c' AND LOWER(TRIM(meaning)) = LOWER(TRIM('As Well As'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('1d98f810-64a3-4cff-83cf-e2cc3896e50c', 'As Well As', false, true);
  END IF;

  -- [VOCABULARY] 及ぼす (Level 38)
  UPDATE item_meanings SET meaning = 'Menimbulkan Dampak', primary_meaning = true, accepted_answer = true WHERE id = 'c508e77e-8118-42cd-99f7-3686f6b1349e';
  UPDATE items SET slug = 'menimbulkan-dampak' WHERE id = '96b5cf27-63f4-4f5e-a4d6-1b8a4eb9f281';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '96b5cf27-63f4-4f5e-a4d6-1b8a4eb9f281' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Berpengaruh Pada'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('96b5cf27-63f4-4f5e-a4d6-1b8a4eb9f281', 'Berpengaruh Pada', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '96b5cf27-63f4-4f5e-a4d6-1b8a4eb9f281' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Untuk Berusaha'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('96b5cf27-63f4-4f5e-a4d6-1b8a4eb9f281', 'Untuk Berusaha', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '96b5cf27-63f4-4f5e-a4d6-1b8a4eb9f281' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Exert'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('96b5cf27-63f4-4f5e-a4d6-1b8a4eb9f281', 'To Exert', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '96b5cf27-63f4-4f5e-a4d6-1b8a4eb9f281' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Cause'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('96b5cf27-63f4-4f5e-a4d6-1b8a4eb9f281', 'To Cause', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '96b5cf27-63f4-4f5e-a4d6-1b8a4eb9f281' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Untuk Menyebabkan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('96b5cf27-63f4-4f5e-a4d6-1b8a4eb9f281', 'Untuk Menyebabkan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '96b5cf27-63f4-4f5e-a4d6-1b8a4eb9f281' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Exert Something'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('96b5cf27-63f4-4f5e-a4d6-1b8a4eb9f281', 'To Exert Something', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '96b5cf27-63f4-4f5e-a4d6-1b8a4eb9f281' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Reach To'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('96b5cf27-63f4-4f5e-a4d6-1b8a4eb9f281', 'To Reach To', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '96b5cf27-63f4-4f5e-a4d6-1b8a4eb9f281' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Cause Something'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('96b5cf27-63f4-4f5e-a4d6-1b8a4eb9f281', 'To Cause Something', false, true);
  END IF;

  -- [VOCABULARY] 受託 (Level 38)
  UPDATE item_meanings SET meaning = 'Menerima Amanah', primary_meaning = true, accepted_answer = true WHERE id = 'ec37682e-acf2-48aa-bcc4-afc0f93fdb1b';
  UPDATE items SET slug = 'menerima-amanah' WHERE id = 'ceeb9c0e-efaf-4620-a0b1-bcffe61ed1b5';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'ceeb9c0e-efaf-4620-a0b1-bcffe61ed1b5' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Menerima Konsinyasi'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('ceeb9c0e-efaf-4620-a0b1-bcffe61ed1b5', 'Menerima Konsinyasi', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'ceeb9c0e-efaf-4620-a0b1-bcffe61ed1b5' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Dipercayakan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('ceeb9c0e-efaf-4620-a0b1-bcffe61ed1b5', 'Dipercayakan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'ceeb9c0e-efaf-4620-a0b1-bcffe61ed1b5' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Being Entrusted'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('ceeb9c0e-efaf-4620-a0b1-bcffe61ed1b5', 'Being Entrusted', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'ceeb9c0e-efaf-4620-a0b1-bcffe61ed1b5' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Undertaking'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('ceeb9c0e-efaf-4620-a0b1-bcffe61ed1b5', 'Undertaking', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'ceeb9c0e-efaf-4620-a0b1-bcffe61ed1b5' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Be Entrusted With'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('ceeb9c0e-efaf-4620-a0b1-bcffe61ed1b5', 'Be Entrusted With', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'ceeb9c0e-efaf-4620-a0b1-bcffe61ed1b5' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Melakukan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('ceeb9c0e-efaf-4620-a0b1-bcffe61ed1b5', 'Melakukan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'ceeb9c0e-efaf-4620-a0b1-bcffe61ed1b5' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Being Entrusted With'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('ceeb9c0e-efaf-4620-a0b1-bcffe61ed1b5', 'Being Entrusted With', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'ceeb9c0e-efaf-4620-a0b1-bcffe61ed1b5' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Undertake'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('ceeb9c0e-efaf-4620-a0b1-bcffe61ed1b5', 'Undertake', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'ceeb9c0e-efaf-4620-a0b1-bcffe61ed1b5' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Entrusted'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('ceeb9c0e-efaf-4620-a0b1-bcffe61ed1b5', 'Entrusted', false, true);
  END IF;

  -- [VOCABULARY] 同伴する (Level 38)
  UPDATE item_meanings SET meaning = 'Mendampingi', primary_meaning = true, accepted_answer = true WHERE id = 'bb6b52f6-5b4b-4cb3-bcff-1a790ec5d416';
  UPDATE items SET slug = 'mendampingi' WHERE id = '317ad1d9-4b75-4bbf-a8e0-97531f78c72d';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '317ad1d9-4b75-4bbf-a8e0-97531f78c72d' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Menemani Bersama'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('317ad1d9-4b75-4bbf-a8e0-97531f78c72d', 'Menemani Bersama', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '317ad1d9-4b75-4bbf-a8e0-97531f78c72d' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Untuk Menemani'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('317ad1d9-4b75-4bbf-a8e0-97531f78c72d', 'Untuk Menemani', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '317ad1d9-4b75-4bbf-a8e0-97531f78c72d' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Accompany'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('317ad1d9-4b75-4bbf-a8e0-97531f78c72d', 'To Accompany', false, true);
  END IF;

  -- [VOCABULARY] 噛む (Level 38)
  UPDATE item_meanings SET meaning = 'Menggigit', primary_meaning = true, accepted_answer = true WHERE id = 'feb9e806-f1f0-40e1-bd62-5360011fb3c2';
  UPDATE items SET slug = 'menggigit' WHERE id = 'd9515daf-4229-4b45-8f26-eeefcd4e3f84';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'd9515daf-4229-4b45-8f26-eeefcd4e3f84' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Mengunyah'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('d9515daf-4229-4b45-8f26-eeefcd4e3f84', 'Mengunyah', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'd9515daf-4229-4b45-8f26-eeefcd4e3f84' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Untuk Menggigit'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('d9515daf-4229-4b45-8f26-eeefcd4e3f84', 'Untuk Menggigit', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'd9515daf-4229-4b45-8f26-eeefcd4e3f84' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Bite'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('d9515daf-4229-4b45-8f26-eeefcd4e3f84', 'To Bite', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'd9515daf-4229-4b45-8f26-eeefcd4e3f84' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Chew'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('d9515daf-4229-4b45-8f26-eeefcd4e3f84', 'To Chew', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'd9515daf-4229-4b45-8f26-eeefcd4e3f84' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Chew Something'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('d9515daf-4229-4b45-8f26-eeefcd4e3f84', 'To Chew Something', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'd9515daf-4229-4b45-8f26-eeefcd4e3f84' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Bite Something'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('d9515daf-4229-4b45-8f26-eeefcd4e3f84', 'To Bite Something', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'd9515daf-4229-4b45-8f26-eeefcd4e3f84' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Untuk Mengunyah'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('d9515daf-4229-4b45-8f26-eeefcd4e3f84', 'Untuk Mengunyah', false, true);
  END IF;

  -- [VOCABULARY] 基盤 (Level 38)
  UPDATE item_meanings SET meaning = 'Landasan Fondasi', primary_meaning = true, accepted_answer = true WHERE id = '382dfa37-5b00-438e-94b5-a701c68336d1';
  UPDATE items SET slug = 'landasan-fondasi' WHERE id = 'b191e7f8-443d-4bdc-8ae6-5773648ee162';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'b191e7f8-443d-4bdc-8ae6-5773648ee162' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Basis Infrastruktur'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('b191e7f8-443d-4bdc-8ae6-5773648ee162', 'Basis Infrastruktur', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'b191e7f8-443d-4bdc-8ae6-5773648ee162' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Basis'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('b191e7f8-443d-4bdc-8ae6-5773648ee162', 'Basis', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'b191e7f8-443d-4bdc-8ae6-5773648ee162' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Foundation'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('b191e7f8-443d-4bdc-8ae6-5773648ee162', 'Foundation', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'b191e7f8-443d-4bdc-8ae6-5773648ee162' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Infrastructure'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('b191e7f8-443d-4bdc-8ae6-5773648ee162', 'Infrastructure', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'b191e7f8-443d-4bdc-8ae6-5773648ee162' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Dasar'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('b191e7f8-443d-4bdc-8ae6-5773648ee162', 'Dasar', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'b191e7f8-443d-4bdc-8ae6-5773648ee162' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Base'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('b191e7f8-443d-4bdc-8ae6-5773648ee162', 'Base', false, true);
  END IF;

  -- [VOCABULARY] 奥 (Level 38)
  UPDATE item_meanings SET meaning = 'Bagian Terdalam', primary_meaning = true, accepted_answer = true WHERE id = '3ec02be9-c9f1-4611-9c66-d980545ff633';
  UPDATE items SET slug = 'bagian-terdalam' WHERE id = 'e5108e80-4138-4f2b-a474-e47ab3ff3fdb';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'e5108e80-4138-4f2b-a474-e47ab3ff3fdb' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Ruang Belakang'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('e5108e80-4138-4f2b-a474-e47ab3ff3fdb', 'Ruang Belakang', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'e5108e80-4138-4f2b-a474-e47ab3ff3fdb' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Jauh Kembali'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('e5108e80-4138-4f2b-a474-e47ab3ff3fdb', 'Jauh Kembali', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'e5108e80-4138-4f2b-a474-e47ab3ff3fdb' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Interior'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('e5108e80-4138-4f2b-a474-e47ab3ff3fdb', 'Interior', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'e5108e80-4138-4f2b-a474-e47ab3ff3fdb' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Deep'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('e5108e80-4138-4f2b-a474-e47ab3ff3fdb', 'Deep', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'e5108e80-4138-4f2b-a474-e47ab3ff3fdb' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Depths'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('e5108e80-4138-4f2b-a474-e47ab3ff3fdb', 'Depths', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'e5108e80-4138-4f2b-a474-e47ab3ff3fdb' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Far Back'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('e5108e80-4138-4f2b-a474-e47ab3ff3fdb', 'Far Back', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'e5108e80-4138-4f2b-a474-e47ab3ff3fdb' AND LOWER(TRIM(meaning)) = LOWER(TRIM('In The Back'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('e5108e80-4138-4f2b-a474-e47ab3ff3fdb', 'In The Back', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'e5108e80-4138-4f2b-a474-e47ab3ff3fdb' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Di Belakang'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('e5108e80-4138-4f2b-a474-e47ab3ff3fdb', 'Di Belakang', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'e5108e80-4138-4f2b-a474-e47ab3ff3fdb' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Recesses'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('e5108e80-4138-4f2b-a474-e47ab3ff3fdb', 'Recesses', false, true);
  END IF;

  -- [VOCABULARY] 奥さん (Level 38)
  UPDATE item_meanings SET meaning = 'Istri Orang', primary_meaning = true, accepted_answer = true WHERE id = 'aada35a7-8690-4c1f-ade3-0bf85d1470ea';
  UPDATE items SET slug = 'istri-orang' WHERE id = 'd8204c57-2475-405f-8fb9-c57dac723bde';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'd8204c57-2475-405f-8fb9-c57dac723bde' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Nyonya'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('d8204c57-2475-405f-8fb9-c57dac723bde', 'Nyonya', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'd8204c57-2475-405f-8fb9-c57dac723bde' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Istri Orang Lain'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('d8204c57-2475-405f-8fb9-c57dac723bde', 'Istri Orang Lain', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'd8204c57-2475-405f-8fb9-c57dac723bde' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Wife'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('d8204c57-2475-405f-8fb9-c57dac723bde', 'Wife', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'd8204c57-2475-405f-8fb9-c57dac723bde' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Istri'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('d8204c57-2475-405f-8fb9-c57dac723bde', 'Istri', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'd8204c57-2475-405f-8fb9-c57dac723bde' AND LOWER(TRIM(meaning)) = LOWER(TRIM('One''s Wife'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('d8204c57-2475-405f-8fb9-c57dac723bde', 'One''s Wife', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'd8204c57-2475-405f-8fb9-c57dac723bde' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Your Wife'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('d8204c57-2475-405f-8fb9-c57dac723bde', 'Your Wife', false, true);
  END IF;

  -- [VOCABULARY] 奥底 (Level 38)
  UPDATE item_meanings SET meaning = 'Lubuk Hati Terdalam', primary_meaning = true, accepted_answer = true WHERE id = '149060a8-e8cf-4757-bac9-c4e34e3c898b';
  UPDATE items SET slug = 'lubuk-hati-terdalam' WHERE id = 'f1acf1ab-bc5d-4b5b-8d84-9c683a375608';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'f1acf1ab-bc5d-4b5b-8d84-9c683a375608' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Dasar Paling Dalam'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('f1acf1ab-bc5d-4b5b-8d84-9c683a375608', 'Dasar Paling Dalam', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'f1acf1ab-bc5d-4b5b-8d84-9c683a375608' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Kedalaman'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('f1acf1ab-bc5d-4b5b-8d84-9c683a375608', 'Kedalaman', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'f1acf1ab-bc5d-4b5b-8d84-9c683a375608' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Depths'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('f1acf1ab-bc5d-4b5b-8d84-9c683a375608', 'Depths', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'f1acf1ab-bc5d-4b5b-8d84-9c683a375608' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Bottom'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('f1acf1ab-bc5d-4b5b-8d84-9c683a375608', 'Bottom', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'f1acf1ab-bc5d-4b5b-8d84-9c683a375608' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Dasar'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('f1acf1ab-bc5d-4b5b-8d84-9c683a375608', 'Dasar', false, true);
  END IF;

  -- [VOCABULARY] 奥深い (Level 38)
  UPDATE item_meanings SET meaning = 'Sangat Dalam', primary_meaning = true, accepted_answer = true WHERE id = '302568fe-28e6-4875-923c-590395882681';
  UPDATE items SET slug = 'sangat-dalam' WHERE id = '28a3de6c-315a-45d8-ad4b-b2db8233dc05';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '28a3de6c-315a-45d8-ad4b-b2db8233dc05' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Penuh Makna Mendalam'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('28a3de6c-315a-45d8-ad4b-b2db8233dc05', 'Penuh Makna Mendalam', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '28a3de6c-315a-45d8-ad4b-b2db8233dc05' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Menonjol'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('28a3de6c-315a-45d8-ad4b-b2db8233dc05', 'Menonjol', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '28a3de6c-315a-45d8-ad4b-b2db8233dc05' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Profound'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('28a3de6c-315a-45d8-ad4b-b2db8233dc05', 'Profound', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '28a3de6c-315a-45d8-ad4b-b2db8233dc05' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Deep'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('28a3de6c-315a-45d8-ad4b-b2db8233dc05', 'Deep', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '28a3de6c-315a-45d8-ad4b-b2db8233dc05' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Dalam'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('28a3de6c-315a-45d8-ad4b-b2db8233dc05', 'Dalam', false, true);
  END IF;

  -- [VOCABULARY] 宜しい (Level 38)
  UPDATE item_meanings SET meaning = 'Baiklah', primary_meaning = true, accepted_answer = true WHERE id = '80befd24-ec81-445c-8f1a-8b28bf072404';
  UPDATE items SET slug = 'baiklah' WHERE id = '34ad8212-5217-424e-9145-e91e67a3b931';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '34ad8212-5217-424e-9145-e91e67a3b931' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Boleh'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('34ad8212-5217-424e-9145-e91e67a3b931', 'Boleh', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '34ad8212-5217-424e-9145-e91e67a3b931' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Silakan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('34ad8212-5217-424e-9145-e91e67a3b931', 'Silakan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '34ad8212-5217-424e-9145-e91e67a3b931' AND LOWER(TRIM(meaning)) = LOWER(TRIM('All Right'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('34ad8212-5217-424e-9145-e91e67a3b931', 'All Right', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '34ad8212-5217-424e-9145-e91e67a3b931' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Good'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('34ad8212-5217-424e-9145-e91e67a3b931', 'Good', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '34ad8212-5217-424e-9145-e91e67a3b931' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Bagus'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('34ad8212-5217-424e-9145-e91e67a3b931', 'Bagus', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '34ad8212-5217-424e-9145-e91e67a3b931' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Okay'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('34ad8212-5217-424e-9145-e91e67a3b931', 'Okay', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '34ad8212-5217-424e-9145-e91e67a3b931' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Fine'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('34ad8212-5217-424e-9145-e91e67a3b931', 'Fine', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '34ad8212-5217-424e-9145-e91e67a3b931' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Alright'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('34ad8212-5217-424e-9145-e91e67a3b931', 'Alright', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '34ad8212-5217-424e-9145-e91e67a3b931' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Oke'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('34ad8212-5217-424e-9145-e91e67a3b931', 'Oke', false, true);
  END IF;

  -- [VOCABULARY] 対外 (Level 38)
  UPDATE item_meanings SET meaning = 'Hubungan Luar Negeri', primary_meaning = true, accepted_answer = true WHERE id = '8cd43727-edea-42e3-a060-139d3828fd15';
  UPDATE items SET slug = 'hubungan-luar-negeri' WHERE id = 'c9f92a0d-5492-4271-88e2-29ccb722b756';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'c9f92a0d-5492-4271-88e2-29ccb722b756' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Eksternal'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('c9f92a0d-5492-4271-88e2-29ccb722b756', 'Eksternal', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'c9f92a0d-5492-4271-88e2-29ccb722b756' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Luar negeri'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('c9f92a0d-5492-4271-88e2-29ccb722b756', 'Luar negeri', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'c9f92a0d-5492-4271-88e2-29ccb722b756' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Foreign'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('c9f92a0d-5492-4271-88e2-29ccb722b756', 'Foreign', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'c9f92a0d-5492-4271-88e2-29ccb722b756' AND LOWER(TRIM(meaning)) = LOWER(TRIM('External'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('c9f92a0d-5492-4271-88e2-29ccb722b756', 'External', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'c9f92a0d-5492-4271-88e2-29ccb722b756' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Luar'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('c9f92a0d-5492-4271-88e2-29ccb722b756', 'Luar', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'c9f92a0d-5492-4271-88e2-29ccb722b756' AND LOWER(TRIM(meaning)) = LOWER(TRIM('International'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('c9f92a0d-5492-4271-88e2-29ccb722b756', 'International', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'c9f92a0d-5492-4271-88e2-29ccb722b756' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Overseas'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('c9f92a0d-5492-4271-88e2-29ccb722b756', 'Overseas', false, true);
  END IF;

  -- [VOCABULARY] 年齢 (Level 38)
  UPDATE item_meanings SET meaning = 'Usia', primary_meaning = true, accepted_answer = true WHERE id = 'c4d4d8e9-6a24-4e15-b3d6-4b95c21b72e0';
  UPDATE items SET slug = 'usia' WHERE id = 'f541c464-e333-475b-b910-9ff12983c15a';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'f541c464-e333-475b-b910-9ff12983c15a' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Umur'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('f541c464-e333-475b-b910-9ff12983c15a', 'Umur', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'f541c464-e333-475b-b910-9ff12983c15a' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Bertahun-tahun'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('f541c464-e333-475b-b910-9ff12983c15a', 'Bertahun-tahun', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'f541c464-e333-475b-b910-9ff12983c15a' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Age'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('f541c464-e333-475b-b910-9ff12983c15a', 'Age', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'f541c464-e333-475b-b910-9ff12983c15a' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Years Old'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('f541c464-e333-475b-b910-9ff12983c15a', 'Years Old', false, true);
  END IF;

  -- [VOCABULARY] 懸ける (Level 38)
  UPDATE item_meanings SET meaning = 'Mempertaruhkan', primary_meaning = true, accepted_answer = true WHERE id = '218a9134-c184-42f7-b7ba-337acc6dce63';
  UPDATE items SET slug = 'mempertaruhkan' WHERE id = '9d657088-c16c-4257-af4b-f727e2da8411';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '9d657088-c16c-4257-af4b-f727e2da8411' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Memasang Taruhan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('9d657088-c16c-4257-af4b-f727e2da8411', 'Memasang Taruhan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '9d657088-c16c-4257-af4b-f727e2da8411' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Risk'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('9d657088-c16c-4257-af4b-f727e2da8411', 'To Risk', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '9d657088-c16c-4257-af4b-f727e2da8411' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Stake'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('9d657088-c16c-4257-af4b-f727e2da8411', 'To Stake', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '9d657088-c16c-4257-af4b-f727e2da8411' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Mempertaruhkan (Nyawa'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('9d657088-c16c-4257-af4b-f727e2da8411', 'Mempertaruhkan (Nyawa', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '9d657088-c16c-4257-af4b-f727e2da8411' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Karier)'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('9d657088-c16c-4257-af4b-f727e2da8411', 'Karier)', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '9d657088-c16c-4257-af4b-f727e2da8411' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Untuk Mempertaruhkan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('9d657088-c16c-4257-af4b-f727e2da8411', 'Untuk Mempertaruhkan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '9d657088-c16c-4257-af4b-f727e2da8411' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Hang'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('9d657088-c16c-4257-af4b-f727e2da8411', 'To Hang', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '9d657088-c16c-4257-af4b-f727e2da8411' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Untuk Mengambil Risiko'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('9d657088-c16c-4257-af4b-f727e2da8411', 'Untuk Mengambil Risiko', false, true);
  END IF;

  -- [VOCABULARY] 懸命 (Level 38)
  UPDATE item_meanings SET meaning = 'Bersungguh-sungguh', primary_meaning = true, accepted_answer = true WHERE id = '86301cc1-7acb-44ea-b916-2f80b5e977a7';
  UPDATE items SET slug = 'bersungguh-sungguh' WHERE id = '4c01a20d-7bf7-4fce-a2df-73a3c8148347';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '4c01a20d-7bf7-4fce-a2df-73a3c8148347' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Sekuat Tenaga'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('4c01a20d-7bf7-4fce-a2df-73a3c8148347', 'Sekuat Tenaga', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '4c01a20d-7bf7-4fce-a2df-73a3c8148347' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Ingin sekali'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('4c01a20d-7bf7-4fce-a2df-73a3c8148347', 'Ingin sekali', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '4c01a20d-7bf7-4fce-a2df-73a3c8148347' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Eager'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('4c01a20d-7bf7-4fce-a2df-73a3c8148347', 'Eager', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '4c01a20d-7bf7-4fce-a2df-73a3c8148347' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Desperate'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('4c01a20d-7bf7-4fce-a2df-73a3c8148347', 'Desperate', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '4c01a20d-7bf7-4fce-a2df-73a3c8148347' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Keinginan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('4c01a20d-7bf7-4fce-a2df-73a3c8148347', 'Keinginan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '4c01a20d-7bf7-4fce-a2df-73a3c8148347' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Eagerness'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('4c01a20d-7bf7-4fce-a2df-73a3c8148347', 'Eagerness', false, true);
  END IF;

  -- [VOCABULARY] 房 (Level 38)
  UPDATE item_meanings SET meaning = 'Tandan Buah', primary_meaning = true, accepted_answer = true WHERE id = '1d50116d-29d2-49ad-a43c-ea4d11bc7650';
  UPDATE items SET slug = 'tandan-buah' WHERE id = '1599391e-99a0-43d0-a352-96e9d3361b93';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '1599391e-99a0-43d0-a352-96e9d3361b93' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Kuncir Rumbai'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('1599391e-99a0-43d0-a352-96e9d3361b93', 'Kuncir Rumbai', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '1599391e-99a0-43d0-a352-96e9d3361b93' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Gugus'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('1599391e-99a0-43d0-a352-96e9d3361b93', 'Gugus', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '1599391e-99a0-43d0-a352-96e9d3361b93' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Cluster'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('1599391e-99a0-43d0-a352-96e9d3361b93', 'Cluster', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '1599391e-99a0-43d0-a352-96e9d3361b93' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Bunch'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('1599391e-99a0-43d0-a352-96e9d3361b93', 'Bunch', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '1599391e-99a0-43d0-a352-96e9d3361b93' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Tassel'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('1599391e-99a0-43d0-a352-96e9d3361b93', 'Tassel', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '1599391e-99a0-43d0-a352-96e9d3361b93' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Kuncung'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('1599391e-99a0-43d0-a352-96e9d3361b93', 'Kuncung', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '1599391e-99a0-43d0-a352-96e9d3361b93' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Tuft'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('1599391e-99a0-43d0-a352-96e9d3361b93', 'Tuft', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '1599391e-99a0-43d0-a352-96e9d3361b93' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Fringe'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('1599391e-99a0-43d0-a352-96e9d3361b93', 'Fringe', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '1599391e-99a0-43d0-a352-96e9d3361b93' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Kelompok'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('1599391e-99a0-43d0-a352-96e9d3361b93', 'Kelompok', false, true);
  END IF;

  -- [VOCABULARY] 扱う (Level 38)
  UPDATE item_meanings SET meaning = 'Menangani', primary_meaning = true, accepted_answer = true WHERE id = 'aa582705-e0cc-46ff-af42-2192e077947a';
  UPDATE items SET slug = 'menangani' WHERE id = 'a5420f70-3416-4bc9-bbf1-f7f815471c97';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'a5420f70-3416-4bc9-bbf1-f7f815471c97' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Memperlakukan Barang'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('a5420f70-3416-4bc9-bbf1-f7f815471c97', 'Memperlakukan Barang', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'a5420f70-3416-4bc9-bbf1-f7f815471c97' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Orang'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('a5420f70-3416-4bc9-bbf1-f7f815471c97', 'Orang', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'a5420f70-3416-4bc9-bbf1-f7f815471c97' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Untuk Menangani'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('a5420f70-3416-4bc9-bbf1-f7f815471c97', 'Untuk Menangani', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'a5420f70-3416-4bc9-bbf1-f7f815471c97' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Handle'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('a5420f70-3416-4bc9-bbf1-f7f815471c97', 'To Handle', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'a5420f70-3416-4bc9-bbf1-f7f815471c97' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Treat'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('a5420f70-3416-4bc9-bbf1-f7f815471c97', 'To Treat', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'a5420f70-3416-4bc9-bbf1-f7f815471c97' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Untuk Mengobati'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('a5420f70-3416-4bc9-bbf1-f7f815471c97', 'Untuk Mengobati', false, true);
  END IF;

  -- [VOCABULARY] 抑制 (Level 38)
  UPDATE item_meanings SET meaning = 'Pengendalian Diri', primary_meaning = true, accepted_answer = true WHERE id = 'c236d92a-c4d6-48fc-9ff7-e0497b3dc009';
  UPDATE items SET slug = 'pengendalian-diri' WHERE id = 'e8b9d850-657a-447b-a6ca-0e63f8bb5e36';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'e8b9d850-657a-447b-a6ca-0e63f8bb5e36' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Menahan Laju'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('e8b9d850-657a-447b-a6ca-0e63f8bb5e36', 'Menahan Laju', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'e8b9d850-657a-447b-a6ca-0e63f8bb5e36' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Kontrol'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('e8b9d850-657a-447b-a6ca-0e63f8bb5e36', 'Kontrol', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'e8b9d850-657a-447b-a6ca-0e63f8bb5e36' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Control'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('e8b9d850-657a-447b-a6ca-0e63f8bb5e36', 'Control', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'e8b9d850-657a-447b-a6ca-0e63f8bb5e36' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Suppression'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('e8b9d850-657a-447b-a6ca-0e63f8bb5e36', 'Suppression', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'e8b9d850-657a-447b-a6ca-0e63f8bb5e36' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Restraining'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('e8b9d850-657a-447b-a6ca-0e63f8bb5e36', 'Restraining', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'e8b9d850-657a-447b-a6ca-0e63f8bb5e36' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Restrain'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('e8b9d850-657a-447b-a6ca-0e63f8bb5e36', 'Restrain', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'e8b9d850-657a-447b-a6ca-0e63f8bb5e36' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Restraint'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('e8b9d850-657a-447b-a6ca-0e63f8bb5e36', 'Restraint', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'e8b9d850-657a-447b-a6ca-0e63f8bb5e36' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Pengekangan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('e8b9d850-657a-447b-a6ca-0e63f8bb5e36', 'Pengekangan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'e8b9d850-657a-447b-a6ca-0e63f8bb5e36' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Suppress'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('e8b9d850-657a-447b-a6ca-0e63f8bb5e36', 'Suppress', false, true);
  END IF;

  -- [VOCABULARY] 抑圧 (Level 38)
  UPDATE item_meanings SET meaning = 'Penindasan', primary_meaning = true, accepted_answer = true WHERE id = '265991a1-56b2-4d19-ac13-ed9b66db524c';
  UPDATE items SET slug = 'penindasan' WHERE id = 'c75fb7ec-661e-4b26-874d-9f566aa83fe9';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'c75fb7ec-661e-4b26-874d-9f566aa83fe9' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Pengekangan Emosi'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('c75fb7ec-661e-4b26-874d-9f566aa83fe9', 'Pengekangan Emosi', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'c75fb7ec-661e-4b26-874d-9f566aa83fe9' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Oppression'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('c75fb7ec-661e-4b26-874d-9f566aa83fe9', 'Oppression', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'c75fb7ec-661e-4b26-874d-9f566aa83fe9' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Repression'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('c75fb7ec-661e-4b26-874d-9f566aa83fe9', 'Repression', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'c75fb7ec-661e-4b26-874d-9f566aa83fe9' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Repress'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('c75fb7ec-661e-4b26-874d-9f566aa83fe9', 'Repress', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'c75fb7ec-661e-4b26-874d-9f566aa83fe9' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Suppression'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('c75fb7ec-661e-4b26-874d-9f566aa83fe9', 'Suppression', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'c75fb7ec-661e-4b26-874d-9f566aa83fe9' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Suppress'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('c75fb7ec-661e-4b26-874d-9f566aa83fe9', 'Suppress', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'c75fb7ec-661e-4b26-874d-9f566aa83fe9' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Oppress'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('c75fb7ec-661e-4b26-874d-9f566aa83fe9', 'Oppress', false, true);
  END IF;

  -- [VOCABULARY] 抑止 (Level 38)
  UPDATE item_meanings SET meaning = 'Daya Tangkal', primary_meaning = true, accepted_answer = true WHERE id = '984f6ec5-37c0-4f49-a336-d930d4189e32';
  UPDATE items SET slug = 'daya-tangkal' WHERE id = '5cec3f45-1ba1-43fa-bd91-7be98fecd2bf';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '5cec3f45-1ba1-43fa-bd91-7be98fecd2bf' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Pencegahan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('5cec3f45-1ba1-43fa-bd91-7be98fecd2bf', 'Pencegahan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '5cec3f45-1ba1-43fa-bd91-7be98fecd2bf' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Deterrent'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('5cec3f45-1ba1-43fa-bd91-7be98fecd2bf', 'Deterrent', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '5cec3f45-1ba1-43fa-bd91-7be98fecd2bf' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Deterrence'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('5cec3f45-1ba1-43fa-bd91-7be98fecd2bf', 'Deterrence', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '5cec3f45-1ba1-43fa-bd91-7be98fecd2bf' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Pencegah'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('5cec3f45-1ba1-43fa-bd91-7be98fecd2bf', 'Pencegah', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '5cec3f45-1ba1-43fa-bd91-7be98fecd2bf' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Deter'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('5cec3f45-1ba1-43fa-bd91-7be98fecd2bf', 'Deter', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '5cec3f45-1ba1-43fa-bd91-7be98fecd2bf' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Stave Off'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('5cec3f45-1ba1-43fa-bd91-7be98fecd2bf', 'Stave Off', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '5cec3f45-1ba1-43fa-bd91-7be98fecd2bf' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Mencegah'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('5cec3f45-1ba1-43fa-bd91-7be98fecd2bf', 'Mencegah', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '5cec3f45-1ba1-43fa-bd91-7be98fecd2bf' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Menghalangi'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('5cec3f45-1ba1-43fa-bd91-7be98fecd2bf', 'Menghalangi', false, true);
  END IF;

  -- [VOCABULARY] 描写 (Level 38)
  UPDATE item_meanings SET meaning = 'Penggambaran Rinci', primary_meaning = true, accepted_answer = true WHERE id = '8069fa26-635c-40ca-9536-4c1d1a040789';
  UPDATE items SET slug = 'penggambaran-rinci' WHERE id = 'b828595c-858f-4bab-bee6-5a7daebd1981';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'b828595c-858f-4bab-bee6-5a7daebd1981' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Deskripsi'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('b828595c-858f-4bab-bee6-5a7daebd1981', 'Deskripsi', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'b828595c-858f-4bab-bee6-5a7daebd1981' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Penggambaran'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('b828595c-858f-4bab-bee6-5a7daebd1981', 'Penggambaran', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'b828595c-858f-4bab-bee6-5a7daebd1981' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Depiction'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('b828595c-858f-4bab-bee6-5a7daebd1981', 'Depiction', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'b828595c-858f-4bab-bee6-5a7daebd1981' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Description'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('b828595c-858f-4bab-bee6-5a7daebd1981', 'Description', false, true);
  END IF;

  -- [VOCABULARY] 生還 (Level 38)
  UPDATE item_meanings SET meaning = 'Selamat Kembali Hidup', primary_meaning = true, accepted_answer = true WHERE id = 'c052a67f-b6f6-43d5-a067-ba1ca390e2cb';
  UPDATE items SET slug = 'selamat-kembali-hidup' WHERE id = 'f5781d24-bd8b-47f1-a8d7-51c79549cdc3';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'f5781d24-bd8b-47f1-a8d7-51c79549cdc3' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Pulang Hidup-hidup'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('f5781d24-bd8b-47f1-a8d7-51c79549cdc3', 'Pulang Hidup-hidup', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'f5781d24-bd8b-47f1-a8d7-51c79549cdc3' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Mencapai Home Plate'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('f5781d24-bd8b-47f1-a8d7-51c79549cdc3', 'Mencapai Home Plate', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'f5781d24-bd8b-47f1-a8d7-51c79549cdc3' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Return Alive'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('f5781d24-bd8b-47f1-a8d7-51c79549cdc3', 'Return Alive', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'f5781d24-bd8b-47f1-a8d7-51c79549cdc3' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Survive'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('f5781d24-bd8b-47f1-a8d7-51c79549cdc3', 'Survive', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'f5781d24-bd8b-47f1-a8d7-51c79549cdc3' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Returning To Home Plate'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('f5781d24-bd8b-47f1-a8d7-51c79549cdc3', 'Returning To Home Plate', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'f5781d24-bd8b-47f1-a8d7-51c79549cdc3' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Reach Home Plate'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('f5781d24-bd8b-47f1-a8d7-51c79549cdc3', 'Reach Home Plate', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'f5781d24-bd8b-47f1-a8d7-51c79549cdc3' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Return To Home Plate'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('f5781d24-bd8b-47f1-a8d7-51c79549cdc3', 'Return To Home Plate', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'f5781d24-bd8b-47f1-a8d7-51c79549cdc3' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Returning Safely'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('f5781d24-bd8b-47f1-a8d7-51c79549cdc3', 'Returning Safely', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'f5781d24-bd8b-47f1-a8d7-51c79549cdc3' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Returning Alive'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('f5781d24-bd8b-47f1-a8d7-51c79549cdc3', 'Returning Alive', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'f5781d24-bd8b-47f1-a8d7-51c79549cdc3' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Reaching Home Plate'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('f5781d24-bd8b-47f1-a8d7-51c79549cdc3', 'Reaching Home Plate', false, true);
  END IF;

  -- [VOCABULARY] 由緒 (Level 38)
  UPDATE item_meanings SET meaning = 'Asal-usul Sejarah', primary_meaning = true, accepted_answer = true WHERE id = '93d8e834-bbf0-481c-9e75-3fc611acf352';
  UPDATE items SET slug = 'asal-usul-sejarah' WHERE id = 'e4673e21-b78b-4bf8-8eb5-ec9789fb1a65';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'e4673e21-b78b-4bf8-8eb5-ec9789fb1a65' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Silsilah Terhormat'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('e4673e21-b78b-4bf8-8eb5-ec9789fb1a65', 'Silsilah Terhormat', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'e4673e21-b78b-4bf8-8eb5-ec9789fb1a65' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Garis keturunan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('e4673e21-b78b-4bf8-8eb5-ec9789fb1a65', 'Garis keturunan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'e4673e21-b78b-4bf8-8eb5-ec9789fb1a65' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Lineage'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('e4673e21-b78b-4bf8-8eb5-ec9789fb1a65', 'Lineage', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'e4673e21-b78b-4bf8-8eb5-ec9789fb1a65' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Pedigree'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('e4673e21-b78b-4bf8-8eb5-ec9789fb1a65', 'Pedigree', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'e4673e21-b78b-4bf8-8eb5-ec9789fb1a65' AND LOWER(TRIM(meaning)) = LOWER(TRIM('History'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('e4673e21-b78b-4bf8-8eb5-ec9789fb1a65', 'History', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'e4673e21-b78b-4bf8-8eb5-ec9789fb1a65' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Venerability'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('e4673e21-b78b-4bf8-8eb5-ec9789fb1a65', 'Venerability', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'e4673e21-b78b-4bf8-8eb5-ec9789fb1a65' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Sejarah'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('e4673e21-b78b-4bf8-8eb5-ec9789fb1a65', 'Sejarah', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'e4673e21-b78b-4bf8-8eb5-ec9789fb1a65' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Birth'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('e4673e21-b78b-4bf8-8eb5-ec9789fb1a65', 'Birth', false, true);
  END IF;

  -- [VOCABULARY] 盗聴 (Level 38)
  UPDATE item_meanings SET meaning = 'Penyadapan Suara', primary_meaning = true, accepted_answer = true WHERE id = '461f3c17-2a33-4106-95b0-98e61c22fc70';
  UPDATE items SET slug = 'penyadapan-suara' WHERE id = '38c5582e-3211-497b-9b20-e4b1c08ec76b';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '38c5582e-3211-497b-9b20-e4b1c08ec76b' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Penyadapan Telepon'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('38c5582e-3211-497b-9b20-e4b1c08ec76b', 'Penyadapan Telepon', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '38c5582e-3211-497b-9b20-e4b1c08ec76b' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Penyadapan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('38c5582e-3211-497b-9b20-e4b1c08ec76b', 'Penyadapan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '38c5582e-3211-497b-9b20-e4b1c08ec76b' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Wiretapping'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('38c5582e-3211-497b-9b20-e4b1c08ec76b', 'Wiretapping', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '38c5582e-3211-497b-9b20-e4b1c08ec76b' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Bugging'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('38c5582e-3211-497b-9b20-e4b1c08ec76b', 'Bugging', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '38c5582e-3211-497b-9b20-e4b1c08ec76b' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Listening In'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('38c5582e-3211-497b-9b20-e4b1c08ec76b', 'Listening In', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '38c5582e-3211-497b-9b20-e4b1c08ec76b' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Bug'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('38c5582e-3211-497b-9b20-e4b1c08ec76b', 'Bug', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '38c5582e-3211-497b-9b20-e4b1c08ec76b' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Listen In'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('38c5582e-3211-497b-9b20-e4b1c08ec76b', 'Listen In', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '38c5582e-3211-497b-9b20-e4b1c08ec76b' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Telephone Tapping'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('38c5582e-3211-497b-9b20-e4b1c08ec76b', 'Telephone Tapping', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '38c5582e-3211-497b-9b20-e4b1c08ec76b' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Telephone Tap'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('38c5582e-3211-497b-9b20-e4b1c08ec76b', 'Telephone Tap', false, true);
  END IF;

  -- [VOCABULARY] 第一弾 (Level 38)
  UPDATE item_meanings SET meaning = 'Gelombang Pertama', primary_meaning = true, accepted_answer = true WHERE id = '543128ec-8275-4308-8a7f-968b4cde6d54';
  UPDATE items SET slug = 'gelombang-pertama' WHERE id = '04c370a4-dc5b-4985-8caf-adcd9bf7d7fb';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '04c370a4-dc5b-4985-8caf-adcd9bf7d7fb' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Tahap Awal'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('04c370a4-dc5b-4985-8caf-adcd9bf7d7fb', 'Tahap Awal', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '04c370a4-dc5b-4985-8caf-adcd9bf7d7fb' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Angsuran Pertama'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('04c370a4-dc5b-4985-8caf-adcd9bf7d7fb', 'Angsuran Pertama', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '04c370a4-dc5b-4985-8caf-adcd9bf7d7fb' AND LOWER(TRIM(meaning)) = LOWER(TRIM('First Installment'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('04c370a4-dc5b-4985-8caf-adcd9bf7d7fb', 'First Installment', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '04c370a4-dc5b-4985-8caf-adcd9bf7d7fb' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Part One'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('04c370a4-dc5b-4985-8caf-adcd9bf7d7fb', 'Part One', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '04c370a4-dc5b-4985-8caf-adcd9bf7d7fb' AND LOWER(TRIM(meaning)) = LOWER(TRIM('First Step'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('04c370a4-dc5b-4985-8caf-adcd9bf7d7fb', 'First Step', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '04c370a4-dc5b-4985-8caf-adcd9bf7d7fb' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Putaran Pertama'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('04c370a4-dc5b-4985-8caf-adcd9bf7d7fb', 'Putaran Pertama', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '04c370a4-dc5b-4985-8caf-adcd9bf7d7fb' AND LOWER(TRIM(meaning)) = LOWER(TRIM('First Round'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('04c370a4-dc5b-4985-8caf-adcd9bf7d7fb', 'First Round', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '04c370a4-dc5b-4985-8caf-adcd9bf7d7fb' AND LOWER(TRIM(meaning)) = LOWER(TRIM('First Wave'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('04c370a4-dc5b-4985-8caf-adcd9bf7d7fb', 'First Wave', false, true);
  END IF;

  -- [VOCABULARY] 緩やか (Level 38)
  UPDATE item_meanings SET meaning = 'Landai', primary_meaning = true, accepted_answer = true WHERE id = '17975df9-1a73-464e-a15c-70c5dc750334';
  UPDATE items SET slug = 'landai' WHERE id = '9f506f14-601a-416d-968b-fdb101db21d0';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '9f506f14-601a-416d-968b-fdb101db21d0' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Longgar Lembut'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('9f506f14-601a-416d-968b-fdb101db21d0', 'Longgar Lembut', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '9f506f14-601a-416d-968b-fdb101db21d0' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Bertahap'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('9f506f14-601a-416d-968b-fdb101db21d0', 'Bertahap', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '9f506f14-601a-416d-968b-fdb101db21d0' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Longgar'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('9f506f14-601a-416d-968b-fdb101db21d0', 'Longgar', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '9f506f14-601a-416d-968b-fdb101db21d0' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Gentle'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('9f506f14-601a-416d-968b-fdb101db21d0', 'Gentle', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '9f506f14-601a-416d-968b-fdb101db21d0' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Mild'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('9f506f14-601a-416d-968b-fdb101db21d0', 'Mild', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '9f506f14-601a-416d-968b-fdb101db21d0' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Loose'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('9f506f14-601a-416d-968b-fdb101db21d0', 'Loose', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '9f506f14-601a-416d-968b-fdb101db21d0' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Lembut'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('9f506f14-601a-416d-968b-fdb101db21d0', 'Lembut', false, true);
  END IF;

  -- [VOCABULARY] 縄張り (Level 38)
  UPDATE item_meanings SET meaning = 'Wilayah Kekuasaan', primary_meaning = true, accepted_answer = true WHERE id = 'e302e6e4-a909-455d-8b71-e1036903e35b';
  UPDATE items SET slug = 'wilayah-kekuasaan' WHERE id = 'ca68428f-ab8b-46a8-b744-46c35fe49525';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'ca68428f-ab8b-46a8-b744-46c35fe49525' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Teritori'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('ca68428f-ab8b-46a8-b744-46c35fe49525', 'Teritori', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'ca68428f-ab8b-46a8-b744-46c35fe49525' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Turf'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('ca68428f-ab8b-46a8-b744-46c35fe49525', 'Turf', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'ca68428f-ab8b-46a8-b744-46c35fe49525' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Tali Lepas'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('ca68428f-ab8b-46a8-b744-46c35fe49525', 'Tali Lepas', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'ca68428f-ab8b-46a8-b744-46c35fe49525' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Territory'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('ca68428f-ab8b-46a8-b744-46c35fe49525', 'Territory', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'ca68428f-ab8b-46a8-b744-46c35fe49525' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Rope Off'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('ca68428f-ab8b-46a8-b744-46c35fe49525', 'Rope Off', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'ca68428f-ab8b-46a8-b744-46c35fe49525' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Domain'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('ca68428f-ab8b-46a8-b744-46c35fe49525', 'Domain', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'ca68428f-ab8b-46a8-b744-46c35fe49525' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Wilayah'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('ca68428f-ab8b-46a8-b744-46c35fe49525', 'Wilayah', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'ca68428f-ab8b-46a8-b744-46c35fe49525' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Gambut'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('ca68428f-ab8b-46a8-b744-46c35fe49525', 'Gambut', false, true);
  END IF;

  -- [VOCABULARY] 繰る (Level 38)
  UPDATE item_meanings SET meaning = 'Membalik Halaman', primary_meaning = true, accepted_answer = true WHERE id = 'b0ec14fe-37ea-4ad6-95b3-c244ac51f11f';
  UPDATE items SET slug = 'membalik-halaman' WHERE id = '21ffbd1b-1450-45fd-a1e4-247801e5167e';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '21ffbd1b-1450-45fd-a1e4-247801e5167e' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Mengulur'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('21ffbd1b-1450-45fd-a1e4-247801e5167e', 'Mengulur', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '21ffbd1b-1450-45fd-a1e4-247801e5167e' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Turn (Pages)'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('21ffbd1b-1450-45fd-a1e4-247801e5167e', 'To Turn (Pages)', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '21ffbd1b-1450-45fd-a1e4-247801e5167e' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Membalik'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('21ffbd1b-1450-45fd-a1e4-247801e5167e', 'Membalik', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '21ffbd1b-1450-45fd-a1e4-247801e5167e' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Mengulur Gulungan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('21ffbd1b-1450-45fd-a1e4-247801e5167e', 'Mengulur Gulungan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '21ffbd1b-1450-45fd-a1e4-247801e5167e' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Untuk Memutar'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('21ffbd1b-1450-45fd-a1e4-247801e5167e', 'Untuk Memutar', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '21ffbd1b-1450-45fd-a1e4-247801e5167e' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Turn Over'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('21ffbd1b-1450-45fd-a1e4-247801e5167e', 'To Turn Over', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '21ffbd1b-1450-45fd-a1e4-247801e5167e' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Spin'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('21ffbd1b-1450-45fd-a1e4-247801e5167e', 'To Spin', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '21ffbd1b-1450-45fd-a1e4-247801e5167e' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Untuk Mengacak'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('21ffbd1b-1450-45fd-a1e4-247801e5167e', 'Untuk Mengacak', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '21ffbd1b-1450-45fd-a1e4-247801e5167e' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Shuffle'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('21ffbd1b-1450-45fd-a1e4-247801e5167e', 'To Shuffle', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '21ffbd1b-1450-45fd-a1e4-247801e5167e' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Untuk Masuk'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('21ffbd1b-1450-45fd-a1e4-247801e5167e', 'Untuk Masuk', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '21ffbd1b-1450-45fd-a1e4-247801e5167e' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Untuk Menyerahkan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('21ffbd1b-1450-45fd-a1e4-247801e5167e', 'Untuk Menyerahkan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '21ffbd1b-1450-45fd-a1e4-247801e5167e' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Reel In'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('21ffbd1b-1450-45fd-a1e4-247801e5167e', 'To Reel In', false, true);
  END IF;

  -- [VOCABULARY] 老齢 (Level 38)
  UPDATE item_meanings SET meaning = 'Usia Senja', primary_meaning = true, accepted_answer = true WHERE id = '8b90465b-cde2-4c82-9220-1d3c4cbfad9f';
  UPDATE items SET slug = 'usia-senja' WHERE id = '0e3bbe9e-4c71-4302-960d-3b3d05561e88';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '0e3bbe9e-4c71-4302-960d-3b3d05561e88' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Lanjut Usia'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('0e3bbe9e-4c71-4302-960d-3b3d05561e88', 'Lanjut Usia', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '0e3bbe9e-4c71-4302-960d-3b3d05561e88' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Usia Tua'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('0e3bbe9e-4c71-4302-960d-3b3d05561e88', 'Usia Tua', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '0e3bbe9e-4c71-4302-960d-3b3d05561e88' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Old Age'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('0e3bbe9e-4c71-4302-960d-3b3d05561e88', 'Old Age', false, true);
  END IF;

  -- [VOCABULARY] 舞踏会 (Level 38)
  UPDATE item_meanings SET meaning = 'Pesta Dansa', primary_meaning = true, accepted_answer = true WHERE id = '2a230214-615e-4e34-acbc-a84fe66427a5';
  UPDATE items SET slug = 'pesta-dansa' WHERE id = '883fff26-fb20-45a4-8223-556ef9cd18ea';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '883fff26-fb20-45a4-8223-556ef9cd18ea' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Pesta Balet'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('883fff26-fb20-45a4-8223-556ef9cd18ea', 'Pesta Balet', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '883fff26-fb20-45a4-8223-556ef9cd18ea' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Bola'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('883fff26-fb20-45a4-8223-556ef9cd18ea', 'Bola', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '883fff26-fb20-45a4-8223-556ef9cd18ea' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Ball'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('883fff26-fb20-45a4-8223-556ef9cd18ea', 'Ball', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '883fff26-fb20-45a4-8223-556ef9cd18ea' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Dance'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('883fff26-fb20-45a4-8223-556ef9cd18ea', 'Dance', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '883fff26-fb20-45a4-8223-556ef9cd18ea' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Menari'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('883fff26-fb20-45a4-8223-556ef9cd18ea', 'Menari', false, true);
  END IF;

  -- [VOCABULARY] 覗く (Level 38)
  UPDATE item_meanings SET meaning = 'Mengintip', primary_meaning = true, accepted_answer = true WHERE id = '59b34d30-39a2-4133-9657-4ae2e54b798f';
  UPDATE items SET slug = 'mengintip' WHERE id = '5e48e8e4-5261-4bea-b35b-734cdf9118bd';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '5e48e8e4-5261-4bea-b35b-734cdf9118bd' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Melongok ke Dalam'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('5e48e8e4-5261-4bea-b35b-734cdf9118bd', 'Melongok ke Dalam', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '5e48e8e4-5261-4bea-b35b-734cdf9118bd' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Untuk Mengintip'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('5e48e8e4-5261-4bea-b35b-734cdf9118bd', 'Untuk Mengintip', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '5e48e8e4-5261-4bea-b35b-734cdf9118bd' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Peek'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('5e48e8e4-5261-4bea-b35b-734cdf9118bd', 'To Peek', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '5e48e8e4-5261-4bea-b35b-734cdf9118bd' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Peep'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('5e48e8e4-5261-4bea-b35b-734cdf9118bd', 'To Peep', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '5e48e8e4-5261-4bea-b35b-734cdf9118bd' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Peek At Someone'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('5e48e8e4-5261-4bea-b35b-734cdf9118bd', 'To Peek At Someone', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '5e48e8e4-5261-4bea-b35b-734cdf9118bd' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Peep At'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('5e48e8e4-5261-4bea-b35b-734cdf9118bd', 'To Peep At', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '5e48e8e4-5261-4bea-b35b-734cdf9118bd' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Peer Into'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('5e48e8e4-5261-4bea-b35b-734cdf9118bd', 'To Peer Into', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '5e48e8e4-5261-4bea-b35b-734cdf9118bd' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Look Down Into'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('5e48e8e4-5261-4bea-b35b-734cdf9118bd', 'To Look Down Into', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '5e48e8e4-5261-4bea-b35b-734cdf9118bd' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Peek Into'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('5e48e8e4-5261-4bea-b35b-734cdf9118bd', 'To Peek Into', false, true);
  END IF;

  -- [VOCABULARY] 賄う (Level 38)
  UPDATE item_meanings SET meaning = 'Menutup Biaya', primary_meaning = true, accepted_answer = true WHERE id = 'b750c656-8d15-4a61-b209-df85d97bc58e';
  UPDATE items SET slug = 'menutup-biaya' WHERE id = '0dd1f5c3-0d8a-4994-bfa3-7c1a03cac39d';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '0dd1f5c3-0d8a-4994-bfa3-7c1a03cac39d' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Membiayai'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('0dd1f5c3-0d8a-4994-bfa3-7c1a03cac39d', 'Membiayai', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '0dd1f5c3-0d8a-4994-bfa3-7c1a03cac39d' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Menyediakan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('0dd1f5c3-0d8a-4994-bfa3-7c1a03cac39d', 'Menyediakan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '0dd1f5c3-0d8a-4994-bfa3-7c1a03cac39d' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Untuk Membayar'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('0dd1f5c3-0d8a-4994-bfa3-7c1a03cac39d', 'Untuk Membayar', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '0dd1f5c3-0d8a-4994-bfa3-7c1a03cac39d' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Cover'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('0dd1f5c3-0d8a-4994-bfa3-7c1a03cac39d', 'To Cover', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '0dd1f5c3-0d8a-4994-bfa3-7c1a03cac39d' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Pay'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('0dd1f5c3-0d8a-4994-bfa3-7c1a03cac39d', 'To Pay', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '0dd1f5c3-0d8a-4994-bfa3-7c1a03cac39d' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Untuk Menutupi'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('0dd1f5c3-0d8a-4994-bfa3-7c1a03cac39d', 'Untuk Menutupi', false, true);
  END IF;

  -- [VOCABULARY] 賄賂 (Level 38)
  UPDATE item_meanings SET meaning = 'Uang Suap', primary_meaning = true, accepted_answer = true WHERE id = '07e2c728-a674-45db-9574-b09fcf378963';
  UPDATE items SET slug = 'uang-suap' WHERE id = '663f6229-17bb-462b-be4b-22bff58de774';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '663f6229-17bb-462b-be4b-22bff58de774' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Sogokan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('663f6229-17bb-462b-be4b-22bff58de774', 'Sogokan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '663f6229-17bb-462b-be4b-22bff58de774' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Menyuap'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('663f6229-17bb-462b-be4b-22bff58de774', 'Menyuap', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '663f6229-17bb-462b-be4b-22bff58de774' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Bribe'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('663f6229-17bb-462b-be4b-22bff58de774', 'Bribe', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '663f6229-17bb-462b-be4b-22bff58de774' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Bribery'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('663f6229-17bb-462b-be4b-22bff58de774', 'Bribery', false, true);
  END IF;

  -- [VOCABULARY] 贈る (Level 38)
  UPDATE item_meanings SET meaning = 'Memberikan Hadiah', primary_meaning = true, accepted_answer = true WHERE id = '9450b3c2-f62b-4522-b9dd-4637db9c9746';
  UPDATE items SET slug = 'memberikan-hadiah' WHERE id = '05130896-d7f7-455d-93ba-fff8b35da54c';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '05130896-d7f7-455d-93ba-fff8b35da54c' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Menghadiahkan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('05130896-d7f7-455d-93ba-fff8b35da54c', 'Menghadiahkan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '05130896-d7f7-455d-93ba-fff8b35da54c' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Untuk Memberikan Hadiah'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('05130896-d7f7-455d-93ba-fff8b35da54c', 'Untuk Memberikan Hadiah', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '05130896-d7f7-455d-93ba-fff8b35da54c' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Give A Gift'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('05130896-d7f7-455d-93ba-fff8b35da54c', 'To Give A Gift', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '05130896-d7f7-455d-93ba-fff8b35da54c' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Gift'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('05130896-d7f7-455d-93ba-fff8b35da54c', 'To Gift', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '05130896-d7f7-455d-93ba-fff8b35da54c' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Untuk Hadiah'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('05130896-d7f7-455d-93ba-fff8b35da54c', 'Untuk Hadiah', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '05130896-d7f7-455d-93ba-fff8b35da54c' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Give A Present'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('05130896-d7f7-455d-93ba-fff8b35da54c', 'To Give A Present', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '05130896-d7f7-455d-93ba-fff8b35da54c' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Bestow'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('05130896-d7f7-455d-93ba-fff8b35da54c', 'To Bestow', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '05130896-d7f7-455d-93ba-fff8b35da54c' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Grant'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('05130896-d7f7-455d-93ba-fff8b35da54c', 'To Grant', false, true);
  END IF;

  -- [VOCABULARY] 踏み込む (Level 38)
  UPDATE item_meanings SET meaning = 'Melangkah Masuk', primary_meaning = true, accepted_answer = true WHERE id = 'a7418b81-f231-46f8-91ca-2a6045fe64bb';
  UPDATE items SET slug = 'melangkah-masuk' WHERE id = 'ac9560f4-9f88-4f0a-88f8-de33dcd71dd8';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'ac9560f4-9f88-4f0a-88f8-de33dcd71dd8' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Menggerebek'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('ac9560f4-9f88-4f0a-88f8-de33dcd71dd8', 'Menggerebek', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'ac9560f4-9f88-4f0a-88f8-de33dcd71dd8' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Menginjak Dalam'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('ac9560f4-9f88-4f0a-88f8-de33dcd71dd8', 'Menginjak Dalam', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'ac9560f4-9f88-4f0a-88f8-de33dcd71dd8' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Untuk Melangkah'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('ac9560f4-9f88-4f0a-88f8-de33dcd71dd8', 'Untuk Melangkah', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'ac9560f4-9f88-4f0a-88f8-de33dcd71dd8' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Step Into'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('ac9560f4-9f88-4f0a-88f8-de33dcd71dd8', 'To Step Into', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'ac9560f4-9f88-4f0a-88f8-de33dcd71dd8' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Delve Into'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('ac9560f4-9f88-4f0a-88f8-de33dcd71dd8', 'To Delve Into', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'ac9560f4-9f88-4f0a-88f8-de33dcd71dd8' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Step Hard On'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('ac9560f4-9f88-4f0a-88f8-de33dcd71dd8', 'To Step Hard On', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'ac9560f4-9f88-4f0a-88f8-de33dcd71dd8' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Intrude'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('ac9560f4-9f88-4f0a-88f8-de33dcd71dd8', 'To Intrude', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'ac9560f4-9f88-4f0a-88f8-de33dcd71dd8' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Untuk Mengganggu'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('ac9560f4-9f88-4f0a-88f8-de33dcd71dd8', 'Untuk Mengganggu', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'ac9560f4-9f88-4f0a-88f8-de33dcd71dd8' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Untuk Melangkah Keras'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('ac9560f4-9f88-4f0a-88f8-de33dcd71dd8', 'Untuk Melangkah Keras', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'ac9560f4-9f88-4f0a-88f8-de33dcd71dd8' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Rush Into'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('ac9560f4-9f88-4f0a-88f8-de33dcd71dd8', 'To Rush Into', false, true);
  END IF;

  -- [VOCABULARY] 辛抱 (Level 38)
  UPDATE item_meanings SET meaning = 'Kesabaran Tabah', primary_meaning = true, accepted_answer = true WHERE id = '9999911e-690c-4fd8-ad85-2e27247797dc';
  UPDATE items SET slug = 'kesabaran-tabah' WHERE id = '6953ba9e-c5f3-4434-bb14-2601b5e15b04';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '6953ba9e-c5f3-4434-bb14-2601b5e15b04' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Bertahan Gigih'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('6953ba9e-c5f3-4434-bb14-2601b5e15b04', 'Bertahan Gigih', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '6953ba9e-c5f3-4434-bb14-2601b5e15b04' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Kesabaran'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('6953ba9e-c5f3-4434-bb14-2601b5e15b04', 'Kesabaran', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '6953ba9e-c5f3-4434-bb14-2601b5e15b04' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Patience'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('6953ba9e-c5f3-4434-bb14-2601b5e15b04', 'Patience', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '6953ba9e-c5f3-4434-bb14-2601b5e15b04' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Endurance'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('6953ba9e-c5f3-4434-bb14-2601b5e15b04', 'Endurance', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '6953ba9e-c5f3-4434-bb14-2601b5e15b04' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Ketahanan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('6953ba9e-c5f3-4434-bb14-2601b5e15b04', 'Ketahanan', false, true);
  END IF;

  -- [VOCABULARY] 返還 (Level 38)
  UPDATE item_meanings SET meaning = 'Pengembalian', primary_meaning = true, accepted_answer = true WHERE id = '5294dbb3-6550-4dd5-93ae-c6284d641d6b';
  UPDATE items SET slug = 'pengembalian' WHERE id = 'ed564bf7-7f89-431e-97a5-6d4f72b1c5b8';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'ed564bf7-7f89-431e-97a5-6d4f72b1c5b8' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Restitusi'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('ed564bf7-7f89-431e-97a5-6d4f72b1c5b8', 'Restitusi', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'ed564bf7-7f89-431e-97a5-6d4f72b1c5b8' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Pemulihan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('ed564bf7-7f89-431e-97a5-6d4f72b1c5b8', 'Pemulihan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'ed564bf7-7f89-431e-97a5-6d4f72b1c5b8' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Return'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('ed564bf7-7f89-431e-97a5-6d4f72b1c5b8', 'Return', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'ed564bf7-7f89-431e-97a5-6d4f72b1c5b8' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Restitution'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('ed564bf7-7f89-431e-97a5-6d4f72b1c5b8', 'Restitution', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'ed564bf7-7f89-431e-97a5-6d4f72b1c5b8' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Pengembalian (Wilayah'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('ed564bf7-7f89-431e-97a5-6d4f72b1c5b8', 'Pengembalian (Wilayah', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'ed564bf7-7f89-431e-97a5-6d4f72b1c5b8' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Hak)'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('ed564bf7-7f89-431e-97a5-6d4f72b1c5b8', 'Hak)', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'ed564bf7-7f89-431e-97a5-6d4f72b1c5b8' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Kembali'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('ed564bf7-7f89-431e-97a5-6d4f72b1c5b8', 'Kembali', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'ed564bf7-7f89-431e-97a5-6d4f72b1c5b8' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Restoration'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('ed564bf7-7f89-431e-97a5-6d4f72b1c5b8', 'Restoration', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'ed564bf7-7f89-431e-97a5-6d4f72b1c5b8' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Returning'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('ed564bf7-7f89-431e-97a5-6d4f72b1c5b8', 'Returning', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'ed564bf7-7f89-431e-97a5-6d4f72b1c5b8' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Restore'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('ed564bf7-7f89-431e-97a5-6d4f72b1c5b8', 'Restore', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'ed564bf7-7f89-431e-97a5-6d4f72b1c5b8' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Restoring'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('ed564bf7-7f89-431e-97a5-6d4f72b1c5b8', 'Restoring', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'ed564bf7-7f89-431e-97a5-6d4f72b1c5b8' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Restorasi'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('ed564bf7-7f89-431e-97a5-6d4f72b1c5b8', 'Restorasi', false, true);
  END IF;

  -- [VOCABULARY] 遠慮 (Level 38)
  UPDATE item_meanings SET meaning = 'Sungkan', primary_meaning = true, accepted_answer = true WHERE id = '52effb8d-c0d5-498a-8b10-dcebcf804d3c';
  UPDATE items SET slug = 'sungkan' WHERE id = '8ca6cfd1-1189-45bc-8aac-ced99b7c502c';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '8ca6cfd1-1189-45bc-8aac-ced99b7c502c' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Menahan Diri'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('8ca6cfd1-1189-45bc-8aac-ced99b7c502c', 'Menahan Diri', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '8ca6cfd1-1189-45bc-8aac-ced99b7c502c' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Menolak Halus'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('8ca6cfd1-1189-45bc-8aac-ced99b7c502c', 'Menolak Halus', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '8ca6cfd1-1189-45bc-8aac-ced99b7c502c' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Pengekangan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('8ca6cfd1-1189-45bc-8aac-ced99b7c502c', 'Pengekangan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '8ca6cfd1-1189-45bc-8aac-ced99b7c502c' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Holding Back'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('8ca6cfd1-1189-45bc-8aac-ced99b7c502c', 'Holding Back', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '8ca6cfd1-1189-45bc-8aac-ced99b7c502c' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Restraint'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('8ca6cfd1-1189-45bc-8aac-ced99b7c502c', 'Restraint', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '8ca6cfd1-1189-45bc-8aac-ced99b7c502c' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Hesitation'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('8ca6cfd1-1189-45bc-8aac-ced99b7c502c', 'Hesitation', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '8ca6cfd1-1189-45bc-8aac-ced99b7c502c' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Declining'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('8ca6cfd1-1189-45bc-8aac-ced99b7c502c', 'Declining', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '8ca6cfd1-1189-45bc-8aac-ced99b7c502c' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Refrain'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('8ca6cfd1-1189-45bc-8aac-ced99b7c502c', 'Refrain', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '8ca6cfd1-1189-45bc-8aac-ced99b7c502c' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Refraining'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('8ca6cfd1-1189-45bc-8aac-ced99b7c502c', 'Refraining', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '8ca6cfd1-1189-45bc-8aac-ced99b7c502c' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Hesitating'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('8ca6cfd1-1189-45bc-8aac-ced99b7c502c', 'Hesitating', false, true);
  END IF;

  -- [VOCABULARY] 避妊 (Level 38)
  UPDATE item_meanings SET meaning = 'Kontrasepsi', primary_meaning = true, accepted_answer = true WHERE id = 'a1dc34af-e2b1-4933-8255-58d069366b52';
  UPDATE items SET slug = 'kontrasepsi' WHERE id = '31158e30-b696-487c-9d68-3faf8d5918c1';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '31158e30-b696-487c-9d68-3faf8d5918c1' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Pencegahan Kehamilan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('31158e30-b696-487c-9d68-3faf8d5918c1', 'Pencegahan Kehamilan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '31158e30-b696-487c-9d68-3faf8d5918c1' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Pengendalian kelahiran'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('31158e30-b696-487c-9d68-3faf8d5918c1', 'Pengendalian kelahiran', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '31158e30-b696-487c-9d68-3faf8d5918c1' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Birth Control'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('31158e30-b696-487c-9d68-3faf8d5918c1', 'Birth Control', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '31158e30-b696-487c-9d68-3faf8d5918c1' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Contraception'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('31158e30-b696-487c-9d68-3faf8d5918c1', 'Contraception', false, true);
  END IF;

  -- [VOCABULARY] 避難 (Level 38)
  UPDATE item_meanings SET meaning = 'Evakuasi', primary_meaning = true, accepted_answer = true WHERE id = 'dd00e24a-1643-4d14-841c-a7c7946d631d';
  UPDATE items SET slug = 'evakuasi' WHERE id = 'fc7a2d42-593e-42eb-ace4-749f2a933929';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'fc7a2d42-593e-42eb-ace4-749f2a933929' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Mengungsi Menyelamatkan Diri'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('fc7a2d42-593e-42eb-ace4-749f2a933929', 'Mengungsi Menyelamatkan Diri', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'fc7a2d42-593e-42eb-ace4-749f2a933929' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Pengungsian'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('fc7a2d42-593e-42eb-ace4-749f2a933929', 'Pengungsian', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'fc7a2d42-593e-42eb-ace4-749f2a933929' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Evacuation'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('fc7a2d42-593e-42eb-ace4-749f2a933929', 'Evacuation', false, true);
  END IF;

  -- [VOCABULARY] 還元 (Level 38)
  UPDATE item_meanings SET meaning = 'Restorasi', primary_meaning = true, accepted_answer = true WHERE id = '95cf83b1-58f2-4c45-9364-9d58d6dfab9b';
  UPDATE items SET slug = 'restorasi' WHERE id = 'f70e56c5-f633-4164-aa58-eda2a58c0700';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'f70e56c5-f633-4164-aa58-eda2a58c0700' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Mengembalikan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('f70e56c5-f633-4164-aa58-eda2a58c0700', 'Mengembalikan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'f70e56c5-f633-4164-aa58-eda2a58c0700' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Reduksi'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('f70e56c5-f633-4164-aa58-eda2a58c0700', 'Reduksi', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'f70e56c5-f633-4164-aa58-eda2a58c0700' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Return'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('f70e56c5-f633-4164-aa58-eda2a58c0700', 'Return', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'f70e56c5-f633-4164-aa58-eda2a58c0700' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Restoration'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('f70e56c5-f633-4164-aa58-eda2a58c0700', 'Restoration', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'f70e56c5-f633-4164-aa58-eda2a58c0700' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Mengembalikan (Ke Asal'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('f70e56c5-f633-4164-aa58-eda2a58c0700', 'Mengembalikan (Ke Asal', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'f70e56c5-f633-4164-aa58-eda2a58c0700' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Untung ke Pembeli)'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('f70e56c5-f633-4164-aa58-eda2a58c0700', 'Untung ke Pembeli)', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'f70e56c5-f633-4164-aa58-eda2a58c0700' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Berikan Sesuatu Kembali'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('f70e56c5-f633-4164-aa58-eda2a58c0700', 'Berikan Sesuatu Kembali', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'f70e56c5-f633-4164-aa58-eda2a58c0700' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Give Back'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('f70e56c5-f633-4164-aa58-eda2a58c0700', 'Give Back', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'f70e56c5-f633-4164-aa58-eda2a58c0700' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Reduction'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('f70e56c5-f633-4164-aa58-eda2a58c0700', 'Reduction', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'f70e56c5-f633-4164-aa58-eda2a58c0700' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Return Something To Its Origins'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('f70e56c5-f633-4164-aa58-eda2a58c0700', 'Return Something To Its Origins', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'f70e56c5-f633-4164-aa58-eda2a58c0700' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Giving Back'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('f70e56c5-f633-4164-aa58-eda2a58c0700', 'Giving Back', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'f70e56c5-f633-4164-aa58-eda2a58c0700' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Returning To The Origin'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('f70e56c5-f633-4164-aa58-eda2a58c0700', 'Returning To The Origin', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'f70e56c5-f633-4164-aa58-eda2a58c0700' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Return To The Origin'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('f70e56c5-f633-4164-aa58-eda2a58c0700', 'Return To The Origin', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'f70e56c5-f633-4164-aa58-eda2a58c0700' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Give Something Back'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('f70e56c5-f633-4164-aa58-eda2a58c0700', 'Give Something Back', false, true);
  END IF;

  -- [VOCABULARY] 配慮 (Level 38)
  UPDATE item_meanings SET meaning = 'Tenggang Rasa', primary_meaning = true, accepted_answer = true WHERE id = '29d8a270-1f21-4573-932e-45a6fe0aa6a9';
  UPDATE items SET slug = 'tenggang-rasa' WHERE id = '3f355ea0-f9cf-490a-9b36-9589f1315096';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '3f355ea0-f9cf-490a-9b36-9589f1315096' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Pertimbangan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('3f355ea0-f9cf-490a-9b36-9589f1315096', 'Pertimbangan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '3f355ea0-f9cf-490a-9b36-9589f1315096' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Kepedulian'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('3f355ea0-f9cf-490a-9b36-9589f1315096', 'Kepedulian', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '3f355ea0-f9cf-490a-9b36-9589f1315096' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Perhatian'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('3f355ea0-f9cf-490a-9b36-9589f1315096', 'Perhatian', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '3f355ea0-f9cf-490a-9b36-9589f1315096' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Consideration'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('3f355ea0-f9cf-490a-9b36-9589f1315096', 'Consideration', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '3f355ea0-f9cf-490a-9b36-9589f1315096' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Pertimbangan Tenggang Rasa'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('3f355ea0-f9cf-490a-9b36-9589f1315096', 'Pertimbangan Tenggang Rasa', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '3f355ea0-f9cf-490a-9b36-9589f1315096' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Care'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('3f355ea0-f9cf-490a-9b36-9589f1315096', 'Care', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '3f355ea0-f9cf-490a-9b36-9589f1315096' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Peduli'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('3f355ea0-f9cf-490a-9b36-9589f1315096', 'Peduli', false, true);
  END IF;

  -- [VOCABULARY] 食う (Level 38)
  UPDATE item_meanings SET meaning = 'Makan', primary_meaning = true, accepted_answer = true WHERE id = 'a073e638-9c71-4293-b56d-a9d970151de9';
  UPDATE items SET slug = 'makan' WHERE id = '55c35bef-b4a5-41fc-a637-33e78ac54d29';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '55c35bef-b4a5-41fc-a637-33e78ac54d29' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Menggigit'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('55c35bef-b4a5-41fc-a637-33e78ac54d29', 'Menggigit', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '55c35bef-b4a5-41fc-a637-33e78ac54d29' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Santap'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('55c35bef-b4a5-41fc-a637-33e78ac54d29', 'Santap', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '55c35bef-b4a5-41fc-a637-33e78ac54d29' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Eat'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('55c35bef-b4a5-41fc-a637-33e78ac54d29', 'To Eat', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '55c35bef-b4a5-41fc-a637-33e78ac54d29' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Bite'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('55c35bef-b4a5-41fc-a637-33e78ac54d29', 'To Bite', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '55c35bef-b4a5-41fc-a637-33e78ac54d29' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Makan (Bahasa Kasar'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('55c35bef-b4a5-41fc-a637-33e78ac54d29', 'Makan (Bahasa Kasar', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '55c35bef-b4a5-41fc-a637-33e78ac54d29' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Informal)'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('55c35bef-b4a5-41fc-a637-33e78ac54d29', 'Informal)', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '55c35bef-b4a5-41fc-a637-33e78ac54d29' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Untuk makan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('55c35bef-b4a5-41fc-a637-33e78ac54d29', 'Untuk makan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '55c35bef-b4a5-41fc-a637-33e78ac54d29' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Untuk Mengkonsumsi'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('55c35bef-b4a5-41fc-a637-33e78ac54d29', 'Untuk Mengkonsumsi', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '55c35bef-b4a5-41fc-a637-33e78ac54d29' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Consume'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('55c35bef-b4a5-41fc-a637-33e78ac54d29', 'To Consume', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '55c35bef-b4a5-41fc-a637-33e78ac54d29' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Sting'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('55c35bef-b4a5-41fc-a637-33e78ac54d29', 'To Sting', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '55c35bef-b4a5-41fc-a637-33e78ac54d29' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Eat Into'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('55c35bef-b4a5-41fc-a637-33e78ac54d29', 'To Eat Into', false, true);
  END IF;

  -- [VOCABULARY] 馬鹿らしい (Level 38)
  UPDATE item_meanings SET meaning = 'Konyol Sekali', primary_meaning = true, accepted_answer = true WHERE id = 'c8ca758c-27c6-46ea-9055-0c93a50a0515';
  UPDATE items SET slug = 'konyol-sekali' WHERE id = '223efc16-23d8-4933-9e4f-7ec73bc81ea4';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '223efc16-23d8-4933-9e4f-7ec73bc81ea4' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Tidak Masuk Akal'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('223efc16-23d8-4933-9e4f-7ec73bc81ea4', 'Tidak Masuk Akal', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '223efc16-23d8-4933-9e4f-7ec73bc81ea4' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Absurd'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('223efc16-23d8-4933-9e4f-7ec73bc81ea4', 'Absurd', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '223efc16-23d8-4933-9e4f-7ec73bc81ea4' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Ridiculous'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('223efc16-23d8-4933-9e4f-7ec73bc81ea4', 'Ridiculous', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '223efc16-23d8-4933-9e4f-7ec73bc81ea4' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Foolish'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('223efc16-23d8-4933-9e4f-7ec73bc81ea4', 'Foolish', false, true);
  END IF;

  -- [VOCABULARY] 馬鹿馬鹿しい (Level 38)
  UPDATE item_meanings SET meaning = 'Sangat Konyol', primary_meaning = true, accepted_answer = true WHERE id = '91b793b6-7319-448d-9cee-0c1ef2fc9fc5';
  UPDATE items SET slug = 'sangat-konyol' WHERE id = '6230aa26-f452-4b0d-812e-329eb8c1f81b';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '6230aa26-f452-4b0d-812e-329eb8c1f81b' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Buang-buang Waktu'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('6230aa26-f452-4b0d-812e-329eb8c1f81b', 'Buang-buang Waktu', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '6230aa26-f452-4b0d-812e-329eb8c1f81b' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Absurd'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('6230aa26-f452-4b0d-812e-329eb8c1f81b', 'Absurd', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '6230aa26-f452-4b0d-812e-329eb8c1f81b' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Ridiculous'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('6230aa26-f452-4b0d-812e-329eb8c1f81b', 'Ridiculous', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '6230aa26-f452-4b0d-812e-329eb8c1f81b' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Silly'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('6230aa26-f452-4b0d-812e-329eb8c1f81b', 'Silly', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '6230aa26-f452-4b0d-812e-329eb8c1f81b' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Konyol'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('6230aa26-f452-4b0d-812e-329eb8c1f81b', 'Konyol', false, true);
  END IF;

END $$;
