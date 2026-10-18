-- Migration: Batch 1 Part 3 (Items 81-112)
-- Total items: 32

DO $$
BEGIN

  -- [VOCABULARY] 連れる (Level 19)
  UPDATE item_meanings SET meaning = 'Membawa Serta', primary_meaning = true, accepted_answer = true WHERE id = 'c5cb70d0-13f5-451f-9175-9ab9624c8995';
  UPDATE items SET slug = 'membawa-serta' WHERE id = '33030572-e8b3-4c04-b054-64a60aa98dbc';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '33030572-e8b3-4c04-b054-64a60aa98dbc' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Mengajak'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('33030572-e8b3-4c04-b054-64a60aa98dbc', 'Mengajak', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '33030572-e8b3-4c04-b054-64a60aa98dbc' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Membawa Bersama'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('33030572-e8b3-4c04-b054-64a60aa98dbc', 'Membawa Bersama', false, true);
  END IF;

  -- [VOCABULARY] 連中 (Level 19)
  UPDATE item_meanings SET meaning = 'Gerombolan', primary_meaning = true, accepted_answer = true WHERE id = 'e40f4e04-2fb2-4aa1-a4d8-47331e2eecd6';
  UPDATE items SET slug = 'gerombolan' WHERE id = '1c1eb091-8d12-4442-97cb-f1bf9a8c464e';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '1c1eb091-8d12-4442-97cb-f1bf9a8c464e' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Kawan-kawan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('1c1eb091-8d12-4442-97cb-f1bf9a8c464e', 'Kawan-kawan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '1c1eb091-8d12-4442-97cb-f1bf9a8c464e' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Rombongan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('1c1eb091-8d12-4442-97cb-f1bf9a8c464e', 'Rombongan', false, true);
  END IF;

  -- [VOCABULARY] 順番 (Level 19)
  UPDATE item_meanings SET meaning = 'Urutan', primary_meaning = true, accepted_answer = true WHERE id = '5baf0f53-15ae-4a3f-9e68-9f4f118982c0';
  UPDATE items SET slug = 'urutan' WHERE id = '343b2e48-160d-4d32-9be5-a293ffaeefe3';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '343b2e48-160d-4d32-9be5-a293ffaeefe3' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Giliran'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('343b2e48-160d-4d32-9be5-a293ffaeefe3', 'Giliran', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '343b2e48-160d-4d32-9be5-a293ffaeefe3' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Antrean'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('343b2e48-160d-4d32-9be5-a293ffaeefe3', 'Antrean', false, true);
  END IF;

  -- [KANJI] 倒 (Level 20)
  UPDATE item_meanings SET meaning = 'Tumbang', primary_meaning = true, accepted_answer = true WHERE id = '89f48a1e-14d2-4e84-ae6b-440e5f3bfc42';
  UPDATE items SET slug = 'tumbang' WHERE id = 'b6595695-cd50-4929-a25f-3f38ed51039b';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'b6595695-cd50-4929-a25f-3f38ed51039b' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Menggulingkan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('b6595695-cd50-4929-a25f-3f38ed51039b', 'Menggulingkan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'b6595695-cd50-4929-a25f-3f38ed51039b' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Jatuh'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('b6595695-cd50-4929-a25f-3f38ed51039b', 'Jatuh', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'b6595695-cd50-4929-a25f-3f38ed51039b' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Roboh'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('b6595695-cd50-4929-a25f-3f38ed51039b', 'Roboh', false, true);
  END IF;

  -- [KANJI] 嫌 (Level 20)
  UPDATE item_meanings SET meaning = 'Tidak Suka', primary_meaning = true, accepted_answer = true WHERE id = '7cb517c3-de6c-4754-80ad-12dca8964464';
  UPDATE items SET slug = 'tidak-suka' WHERE id = '008348ed-1551-4b0a-98c9-cc308e872f1b';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '008348ed-1551-4b0a-98c9-cc308e872f1b' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Benci'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('008348ed-1551-4b0a-98c9-cc308e872f1b', 'Benci', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '008348ed-1551-4b0a-98c9-cc308e872f1b' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Enggan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('008348ed-1551-4b0a-98c9-cc308e872f1b', 'Enggan', false, true);
  END IF;

  -- [KANJI] 害 (Level 20)
  UPDATE item_meanings SET meaning = 'Bahaya', primary_meaning = true, accepted_answer = true WHERE id = '105ece16-c14d-45be-b554-adbfedb7cd98';
  UPDATE items SET slug = 'bahaya' WHERE id = '748eac7a-7ad2-4b26-b9b5-e1e9312fe763';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '748eac7a-7ad2-4b26-b9b5-e1e9312fe763' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Kerusakan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('748eac7a-7ad2-4b26-b9b5-e1e9312fe763', 'Kerusakan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '748eac7a-7ad2-4b26-b9b5-e1e9312fe763' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Dampak Buruk'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('748eac7a-7ad2-4b26-b9b5-e1e9312fe763', 'Dampak Buruk', false, true);
  END IF;

  -- [KANJI] 率 (Level 20)
  UPDATE item_meanings SET meaning = 'Rasio', primary_meaning = true, accepted_answer = true WHERE id = '3953effc-0ac3-4e5b-9054-c701eb4821ec';
  UPDATE items SET slug = 'rasio' WHERE id = 'b8766466-07d5-40d4-82db-be4205be61f2';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'b8766466-07d5-40d4-82db-be4205be61f2' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Persentase'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('b8766466-07d5-40d4-82db-be4205be61f2', 'Persentase', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'b8766466-07d5-40d4-82db-be4205be61f2' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Tingkat'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('b8766466-07d5-40d4-82db-be4205be61f2', 'Tingkat', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'b8766466-07d5-40d4-82db-be4205be61f2' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Tarif'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('b8766466-07d5-40d4-82db-be4205be61f2', 'Tarif', false, true);
  END IF;

  -- [KANJI] 産 (Level 20)
  UPDATE item_meanings SET meaning = 'Melahirkan', primary_meaning = true, accepted_answer = true WHERE id = 'dd2b1b48-e9b0-4652-acb4-0277e6811a20';
  UPDATE items SET slug = 'melahirkan' WHERE id = 'eb518e88-f18f-402e-84b8-97de7496c642';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'eb518e88-f18f-402e-84b8-97de7496c642' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Produksi'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('eb518e88-f18f-402e-84b8-97de7496c642', 'Produksi', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'eb518e88-f18f-402e-84b8-97de7496c642' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Menghasilkan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('eb518e88-f18f-402e-84b8-97de7496c642', 'Menghasilkan', false, true);
  END IF;

  -- [KANJI] 経 (Level 20)
  UPDATE item_meanings SET meaning = 'Melewati', primary_meaning = true, accepted_answer = true WHERE id = '827c5712-b7ba-4e15-8e76-5fb022651aa6';
  UPDATE items SET slug = 'melewati' WHERE id = 'cff13843-027a-41e8-b5b6-cb0f1a765db0';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'cff13843-027a-41e8-b5b6-cb0f1a765db0' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Garis Bujur'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('cff13843-027a-41e8-b5b6-cb0f1a765db0', 'Garis Bujur', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'cff13843-027a-41e8-b5b6-cb0f1a765db0' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Melalui'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('cff13843-027a-41e8-b5b6-cb0f1a765db0', 'Melalui', false, true);
  END IF;

  -- [KANJI] 被 (Level 20)
  UPDATE item_meanings SET meaning = 'Tertimpa', primary_meaning = true, accepted_answer = true WHERE id = 'ffcc45c0-fabb-4bd6-b0ee-929977b5d051';
  UPDATE items SET slug = 'tertimpa' WHERE id = '95b83ab2-6e73-42d8-a4e3-643938147787';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '95b83ab2-6e73-42d8-a4e3-643938147787' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Menderita'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('95b83ab2-6e73-42d8-a4e3-643938147787', 'Menderita', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '95b83ab2-6e73-42d8-a4e3-643938147787' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Terkena'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('95b83ab2-6e73-42d8-a4e3-643938147787', 'Terkena', false, true);
  END IF;

  -- [KANJI] 論 (Level 20)
  UPDATE item_meanings SET meaning = 'Teori', primary_meaning = true, accepted_answer = true WHERE id = '6f92ce1f-eefd-4b59-96b9-b542e3ff6cda';
  UPDATE items SET slug = 'teori' WHERE id = '92c3936f-eede-493c-aab9-1f0dffb3e66d';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '92c3936f-eede-493c-aab9-1f0dffb3e66d' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Argumen'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('92c3936f-eede-493c-aab9-1f0dffb3e66d', 'Argumen', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '92c3936f-eede-493c-aab9-1f0dffb3e66d' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Perdebatan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('92c3936f-eede-493c-aab9-1f0dffb3e66d', 'Perdebatan', false, true);
  END IF;

  -- [VOCABULARY] 一個 (Level 20)
  UPDATE item_meanings SET meaning = 'Satu Buah', primary_meaning = true, accepted_answer = true WHERE id = '44c33196-43b6-434c-a4b7-78d5c46a04ed';
  UPDATE items SET slug = 'satu-buah' WHERE id = 'e9268410-014c-486b-bca6-436ca48c5565';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'e9268410-014c-486b-bca6-436ca48c5565' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Satu Butir'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('e9268410-014c-486b-bca6-436ca48c5565', 'Satu Butir', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'e9268410-014c-486b-bca6-436ca48c5565' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Satu Biji'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('e9268410-014c-486b-bca6-436ca48c5565', 'Satu Biji', false, true);
  END IF;

  -- [VOCABULARY] 三個 (Level 20)
  UPDATE item_meanings SET meaning = 'Tiga Buah', primary_meaning = true, accepted_answer = true WHERE id = '3435eee0-3c38-49e0-9503-c2752de8dac0';
  UPDATE items SET slug = 'tiga-buah' WHERE id = 'a3ef8da4-c16e-4d49-af8b-3e906e3b8fb0';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'a3ef8da4-c16e-4d49-af8b-3e906e3b8fb0' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Tiga Butir'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('a3ef8da4-c16e-4d49-af8b-3e906e3b8fb0', 'Tiga Butir', false, true);
  END IF;

  -- [VOCABULARY] 不思議 (Level 20)
  UPDATE item_meanings SET meaning = 'Ajaib', primary_meaning = true, accepted_answer = true WHERE id = 'd79a4c0a-c421-4973-92dc-bffd26e17dae';
  UPDATE items SET slug = 'ajaib' WHERE id = 'b4de419a-0a71-4dd5-ac38-424f0f66db2c';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'b4de419a-0a71-4dd5-ac38-424f0f66db2c' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Misterius'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('b4de419a-0a71-4dd5-ac38-424f0f66db2c', 'Misterius', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'b4de419a-0a71-4dd5-ac38-424f0f66db2c' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Aneh'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('b4de419a-0a71-4dd5-ac38-424f0f66db2c', 'Aneh', false, true);
  END IF;

  -- [VOCABULARY] 倒す (Level 20)
  UPDATE item_meanings SET meaning = 'Menumbangkan', primary_meaning = true, accepted_answer = true WHERE id = 'a9c02f79-bb32-4b3d-863f-2842e8a0e91f';
  UPDATE items SET slug = 'menumbangkan' WHERE id = 'a0886c7f-8b88-4b69-b0ef-24fdbb91bf22';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'a0886c7f-8b88-4b69-b0ef-24fdbb91bf22' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Mengalahkan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('a0886c7f-8b88-4b69-b0ef-24fdbb91bf22', 'Mengalahkan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'a0886c7f-8b88-4b69-b0ef-24fdbb91bf22' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Merobohkan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('a0886c7f-8b88-4b69-b0ef-24fdbb91bf22', 'Merobohkan', false, true);
  END IF;

  -- [VOCABULARY] 同感 (Level 20)
  UPDATE item_meanings SET meaning = 'Sependapat', primary_meaning = true, accepted_answer = true WHERE id = '7529dbc7-6aca-4425-b3de-c992ff419686';
  UPDATE items SET slug = 'sependapat' WHERE id = '2d052a50-97c8-4cc4-82f2-c20ef6108ba1';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '2d052a50-97c8-4cc4-82f2-c20ef6108ba1' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Sepemikiran'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('2d052a50-97c8-4cc4-82f2-c20ef6108ba1', 'Sepemikiran', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '2d052a50-97c8-4cc4-82f2-c20ef6108ba1' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Setuju'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('2d052a50-97c8-4cc4-82f2-c20ef6108ba1', 'Setuju', false, true);
  END IF;

  -- [VOCABULARY] 困る (Level 20)
  UPDATE item_meanings SET meaning = 'Mengalami Kesulitan', primary_meaning = true, accepted_answer = true WHERE id = '36d0906a-7340-45e6-9210-aea2805bdd31';
  UPDATE items SET slug = 'mengalami-kesulitan' WHERE id = '749eee4f-719f-41bb-8445-8b052f85da62';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '749eee4f-719f-41bb-8445-8b052f85da62' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Bingung'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('749eee4f-719f-41bb-8445-8b052f85da62', 'Bingung', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '749eee4f-719f-41bb-8445-8b052f85da62' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Susah'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('749eee4f-719f-41bb-8445-8b052f85da62', 'Susah', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '749eee4f-719f-41bb-8445-8b052f85da62' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Repot'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('749eee4f-719f-41bb-8445-8b052f85da62', 'Repot', false, true);
  END IF;

  -- [VOCABULARY] 嫌 (Level 20)
  UPDATE item_meanings SET meaning = 'Tidak Suka', primary_meaning = true, accepted_answer = true WHERE id = '7da36430-579b-4382-9164-66fcbd16775e';
  UPDATE items SET slug = 'tidak-suka' WHERE id = 'c9d19ac5-7cf0-4df6-bf23-d0562f7dbd18';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'c9d19ac5-7cf0-4df6-bf23-d0562f7dbd18' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Enggan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('c9d19ac5-7cf0-4df6-bf23-d0562f7dbd18', 'Enggan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'c9d19ac5-7cf0-4df6-bf23-d0562f7dbd18' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Benci'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('c9d19ac5-7cf0-4df6-bf23-d0562f7dbd18', 'Benci', false, true);
  END IF;

  -- [VOCABULARY] 嫌悪 (Level 20)
  UPDATE item_meanings SET meaning = 'Kebencian', primary_meaning = true, accepted_answer = true WHERE id = '561a2a31-f637-46c5-be8b-00d01391eee4';
  UPDATE items SET slug = 'kebencian' WHERE id = 'b077ea41-08cd-4255-a515-74f33475cf5b';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'b077ea41-08cd-4255-a515-74f33475cf5b' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Rasa Muak'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('b077ea41-08cd-4255-a515-74f33475cf5b', 'Rasa Muak', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'b077ea41-08cd-4255-a515-74f33475cf5b' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Muak'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('b077ea41-08cd-4255-a515-74f33475cf5b', 'Muak', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'b077ea41-08cd-4255-a515-74f33475cf5b' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Benci'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('b077ea41-08cd-4255-a515-74f33475cf5b', 'Benci', false, true);
  END IF;

  -- [VOCABULARY] 実る (Level 20)
  UPDATE item_meanings SET meaning = 'Berbuah', primary_meaning = true, accepted_answer = true WHERE id = '580ab00d-ff00-4769-b495-e61214202778';
  UPDATE items SET slug = 'berbuah' WHERE id = 'a7dea0b9-9cd4-43e1-923e-25bbd2f4aa15';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'a7dea0b9-9cd4-43e1-923e-25bbd2f4aa15' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Membuahkan Hasil'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('a7dea0b9-9cd4-43e1-923e-25bbd2f4aa15', 'Membuahkan Hasil', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'a7dea0b9-9cd4-43e1-923e-25bbd2f4aa15' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Matang'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('a7dea0b9-9cd4-43e1-923e-25bbd2f4aa15', 'Matang', false, true);
  END IF;

  -- [VOCABULARY] 岩石 (Level 20)
  UPDATE item_meanings SET meaning = 'Batuan', primary_meaning = true, accepted_answer = true WHERE id = '2abbcda6-ee59-48ab-99aa-3bcdeab0c0c1';
  UPDATE items SET slug = 'batuan' WHERE id = '4846cccd-a32f-4779-95fc-c6145f018803';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '4846cccd-a32f-4779-95fc-c6145f018803' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Batu'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('4846cccd-a32f-4779-95fc-c6145f018803', 'Batu', false, true);
  END IF;

  -- [VOCABULARY] 手洗い (Level 20)
  UPDATE item_meanings SET meaning = 'Toilet', primary_meaning = true, accepted_answer = true WHERE id = 'cc8c920e-5fc0-453c-9895-06cf456e8e09';
  UPDATE items SET slug = 'toilet' WHERE id = 'b570e991-2201-4891-a0f1-1b4aaef1c9ba';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'b570e991-2201-4891-a0f1-1b4aaef1c9ba' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Cuci Tangan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('b570e991-2201-4891-a0f1-1b4aaef1c9ba', 'Cuci Tangan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'b570e991-2201-4891-a0f1-1b4aaef1c9ba' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Kamar Kecil'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('b570e991-2201-4891-a0f1-1b4aaef1c9ba', 'Kamar Kecil', false, true);
  END IF;

  -- [VOCABULARY] 無くなる (Level 20)
  UPDATE item_meanings SET meaning = 'Habis', primary_meaning = true, accepted_answer = true WHERE id = '3cd3950b-9ece-48fe-812a-98a46e7db5d2';
  UPDATE items SET slug = 'habis' WHERE id = 'a7180685-18af-4e47-98fc-f4723293609d';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'a7180685-18af-4e47-98fc-f4723293609d' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Hilang'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('a7180685-18af-4e47-98fc-f4723293609d', 'Hilang', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'a7180685-18af-4e47-98fc-f4723293609d' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Lenyap'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('a7180685-18af-4e47-98fc-f4723293609d', 'Lenyap', false, true);
  END IF;

  -- [VOCABULARY] 焼ける (Level 20)
  UPDATE item_meanings SET meaning = 'Terbakar', primary_meaning = true, accepted_answer = true WHERE id = '1da8e6a6-7ace-4902-bba4-1259e412a2b4';
  UPDATE items SET slug = 'terbakar' WHERE id = '4a95f6c9-640f-4bca-9535-307f00544db1';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '4a95f6c9-640f-4bca-9535-307f00544db1' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Terpanggang'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('4a95f6c9-640f-4bca-9535-307f00544db1', 'Terpanggang', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '4a95f6c9-640f-4bca-9535-307f00544db1' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Hangus'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('4a95f6c9-640f-4bca-9535-307f00544db1', 'Hangus', false, true);
  END IF;

  -- [VOCABULARY] 産まれる (Level 20)
  UPDATE item_meanings SET meaning = 'Dilahirkan', primary_meaning = true, accepted_answer = true WHERE id = '9aaebfbc-b66d-4936-8d81-a630cea682b4';
  UPDATE items SET slug = 'dilahirkan' WHERE id = '63973b66-3ef7-449a-9844-9bd72d73fefb';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '63973b66-3ef7-449a-9844-9bd72d73fefb' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Lahir'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('63973b66-3ef7-449a-9844-9bd72d73fefb', 'Lahir', false, true);
  END IF;

  -- [VOCABULARY] 確率 (Level 20)
  UPDATE item_meanings SET meaning = 'Probabilitas', primary_meaning = true, accepted_answer = true WHERE id = '976f3a0d-9df3-4891-9a26-4c1515b38e4d';
  UPDATE items SET slug = 'probabilitas' WHERE id = '556148eb-39c4-4a10-bd20-946cbeaa9472';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '556148eb-39c4-4a10-bd20-946cbeaa9472' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Kemungkinan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('556148eb-39c4-4a10-bd20-946cbeaa9472', 'Kemungkinan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '556148eb-39c4-4a10-bd20-946cbeaa9472' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Peluang'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('556148eb-39c4-4a10-bd20-946cbeaa9472', 'Peluang', false, true);
  END IF;

  -- [VOCABULARY] 胸焼け (Level 20)
  UPDATE item_meanings SET meaning = 'Nyeri Ulu Hati', primary_meaning = true, accepted_answer = true WHERE id = '05aa45eb-c42c-40f4-92d8-900d8fb7ebf0';
  UPDATE items SET slug = 'nyeri-ulu-hati' WHERE id = 'f35b81b6-93cc-44c0-a90c-647d2f8e3954';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'f35b81b6-93cc-44c0-a90c-647d2f8e3954' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Mulas'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('f35b81b6-93cc-44c0-a90c-647d2f8e3954', 'Mulas', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'f35b81b6-93cc-44c0-a90c-647d2f8e3954' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Sakit Ulu Hati'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('f35b81b6-93cc-44c0-a90c-647d2f8e3954', 'Sakit Ulu Hati', false, true);
  END IF;

  -- [VOCABULARY] 自在 (Level 20)
  UPDATE item_meanings SET meaning = 'Leluasa', primary_meaning = true, accepted_answer = true WHERE id = '1176d3fa-9e50-43ff-9508-e475ededdda3';
  UPDATE items SET slug = 'leluasa' WHERE id = 'ca6a962b-e70e-4264-b955-02730aa545bc';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'ca6a962b-e70e-4264-b955-02730aa545bc' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Bebas'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('ca6a962b-e70e-4264-b955-02730aa545bc', 'Bebas', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'ca6a962b-e70e-4264-b955-02730aa545bc' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Suka Hati'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('ca6a962b-e70e-4264-b955-02730aa545bc', 'Suka Hati', false, true);
  END IF;

  -- [VOCABULARY] 被害 (Level 20)
  UPDATE item_meanings SET meaning = 'Kerusakan', primary_meaning = true, accepted_answer = true WHERE id = '7f8306ba-c8eb-41ca-ae3f-fdf82cb63288';
  UPDATE items SET slug = 'kerusakan' WHERE id = 'b838fd82-b7e8-4a15-8001-4f082d9a63d9';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'b838fd82-b7e8-4a15-8001-4f082d9a63d9' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Dampak Buruk'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('b838fd82-b7e8-4a15-8001-4f082d9a63d9', 'Dampak Buruk', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'b838fd82-b7e8-4a15-8001-4f082d9a63d9' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Kerugian'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('b838fd82-b7e8-4a15-8001-4f082d9a63d9', 'Kerugian', false, true);
  END IF;

  -- [VOCABULARY] 議会 (Level 20)
  UPDATE item_meanings SET meaning = 'Parlemen', primary_meaning = true, accepted_answer = true WHERE id = '49561aa6-f16f-4207-b2d8-144d508388ef';
  UPDATE items SET slug = 'parlemen' WHERE id = 'a165c29a-8c24-4feb-adef-8cebb7a23a63';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'a165c29a-8c24-4feb-adef-8cebb7a23a63' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Dewan Perwakilan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('a165c29a-8c24-4feb-adef-8cebb7a23a63', 'Dewan Perwakilan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'a165c29a-8c24-4feb-adef-8cebb7a23a63' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Kongres'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('a165c29a-8c24-4feb-adef-8cebb7a23a63', 'Kongres', false, true);
  END IF;

  -- [VOCABULARY] 議員 (Level 20)
  UPDATE item_meanings SET meaning = 'Anggota Parlemen', primary_meaning = true, accepted_answer = true WHERE id = '52c6cd9f-4965-4fd7-b830-245944844fa9';
  UPDATE items SET slug = 'anggota-parlemen' WHERE id = 'b0760c5d-a669-40fa-b496-e93e7c297a4a';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'b0760c5d-a669-40fa-b496-e93e7c297a4a' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Anggota Dewan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('b0760c5d-a669-40fa-b496-e93e7c297a4a', 'Anggota Dewan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'b0760c5d-a669-40fa-b496-e93e7c297a4a' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Wakil Rakyat'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('b0760c5d-a669-40fa-b496-e93e7c297a4a', 'Wakil Rakyat', false, true);
  END IF;

  -- [VOCABULARY] 面倒 (Level 20)
  UPDATE item_meanings SET meaning = 'Merepotkan', primary_meaning = true, accepted_answer = true WHERE id = '4d607661-c503-4c6d-b86a-aad046574691';
  UPDATE items SET slug = 'merepotkan' WHERE id = '5e50bf9d-eb84-4b81-8a68-6a2ba5983b5e';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '5e50bf9d-eb84-4b81-8a68-6a2ba5983b5e' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Rumit'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('5e50bf9d-eb84-4b81-8a68-6a2ba5983b5e', 'Rumit', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '5e50bf9d-eb84-4b81-8a68-6a2ba5983b5e' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Susah'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('5e50bf9d-eb84-4b81-8a68-6a2ba5983b5e', 'Susah', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '5e50bf9d-eb84-4b81-8a68-6a2ba5983b5e' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Repot'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('5e50bf9d-eb84-4b81-8a68-6a2ba5983b5e', 'Repot', false, true);
  END IF;

END $$;
