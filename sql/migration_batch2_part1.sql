-- Migration: Batch 2 Part 1 (Level 21)
-- Total items: 40

DO $$
BEGIN

  -- [KANJI] 件 (Level 21)
  UPDATE item_meanings SET meaning = 'Kasus', primary_meaning = true, accepted_answer = true WHERE id = '69de70b7-6a74-4697-91d1-b426d93ab2ae';
  UPDATE items SET slug = 'kasus' WHERE id = '6fceb0c3-2a36-4640-bc4f-e238cb3f0a65';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '6fceb0c3-2a36-4640-bc4f-e238cb3f0a65' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Perkara'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('6fceb0c3-2a36-4640-bc4f-e238cb3f0a65', 'Perkara', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '6fceb0c3-2a36-4640-bc4f-e238cb3f0a65' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Masalah'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('6fceb0c3-2a36-4640-bc4f-e238cb3f0a65', 'Masalah', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '6fceb0c3-2a36-4640-bc4f-e238cb3f0a65' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Urusan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('6fceb0c3-2a36-4640-bc4f-e238cb3f0a65', 'Urusan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '6fceb0c3-2a36-4640-bc4f-e238cb3f0a65' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Matter'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('6fceb0c3-2a36-4640-bc4f-e238cb3f0a65', 'Matter', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '6fceb0c3-2a36-4640-bc4f-e238cb3f0a65' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Affair'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('6fceb0c3-2a36-4640-bc4f-e238cb3f0a65', 'Affair', false, true);
  END IF;

  -- [KANJI] 任 (Level 21)
  UPDATE item_meanings SET meaning = 'Tanggung Jawab', primary_meaning = true, accepted_answer = true WHERE id = 'f199d1d7-c7da-4199-8351-478c0f728fe7';
  UPDATE items SET slug = 'tanggung-jawab' WHERE id = '3c730925-ca09-4475-9502-3141e1eb4415';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '3c730925-ca09-4475-9502-3141e1eb4415' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Tugas'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('3c730925-ca09-4475-9502-3141e1eb4415', 'Tugas', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '3c730925-ca09-4475-9502-3141e1eb4415' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Kewajiban'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('3c730925-ca09-4475-9502-3141e1eb4415', 'Kewajiban', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '3c730925-ca09-4475-9502-3141e1eb4415' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Amanah'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('3c730925-ca09-4475-9502-3141e1eb4415', 'Amanah', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '3c730925-ca09-4475-9502-3141e1eb4415' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Duty'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('3c730925-ca09-4475-9502-3141e1eb4415', 'Duty', false, true);
  END IF;

  -- [KANJI] 判 (Level 21)
  UPDATE item_meanings SET meaning = 'Menilai', primary_meaning = true, accepted_answer = true WHERE id = '945ddf14-60e1-4a7e-a668-08598d122bec';
  UPDATE items SET slug = 'menilai' WHERE id = '2be33a96-51fc-4ec9-8a7f-fe491fb3d13b';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '2be33a96-51fc-4ec9-8a7f-fe491fb3d13b' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Cap'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('2be33a96-51fc-4ec9-8a7f-fe491fb3d13b', 'Cap', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '2be33a96-51fc-4ec9-8a7f-fe491fb3d13b' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Menghakimi'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('2be33a96-51fc-4ec9-8a7f-fe491fb3d13b', 'Menghakimi', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '2be33a96-51fc-4ec9-8a7f-fe491fb3d13b' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Cap Segel'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('2be33a96-51fc-4ec9-8a7f-fe491fb3d13b', 'Cap Segel', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '2be33a96-51fc-4ec9-8a7f-fe491fb3d13b' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Judge'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('2be33a96-51fc-4ec9-8a7f-fe491fb3d13b', 'Judge', false, true);
  END IF;

  -- [KANJI] 断 (Level 21)
  UPDATE item_meanings SET meaning = 'Memutus', primary_meaning = true, accepted_answer = true WHERE id = '0fcd4ee5-f279-47dd-ad24-b3e1d3b5b92e';
  UPDATE items SET slug = 'memutus' WHERE id = '63655e03-9d08-4361-8401-21a98d2ee867';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '63655e03-9d08-4361-8401-21a98d2ee867' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Menolak'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('63655e03-9d08-4361-8401-21a98d2ee867', 'Menolak', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '63655e03-9d08-4361-8401-21a98d2ee867' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Memutuskan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('63655e03-9d08-4361-8401-21a98d2ee867', 'Memutuskan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '63655e03-9d08-4361-8401-21a98d2ee867' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Memotong'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('63655e03-9d08-4361-8401-21a98d2ee867', 'Memotong', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '63655e03-9d08-4361-8401-21a98d2ee867' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Cut Off'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('63655e03-9d08-4361-8401-21a98d2ee867', 'Cut Off', false, true);
  END IF;

  -- [KANJI] 条 (Level 21)
  UPDATE item_meanings SET meaning = 'Pasal', primary_meaning = true, accepted_answer = true WHERE id = 'f895759f-45df-452d-9f58-67cec01410da';
  UPDATE items SET slug = 'pasal' WHERE id = '6db3859c-6fd8-4929-a350-731b48d5cf4e';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '6db3859c-6fd8-4929-a350-731b48d5cf4e' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Klausul'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('6db3859c-6fd8-4929-a350-731b48d5cf4e', 'Klausul', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '6db3859c-6fd8-4929-a350-731b48d5cf4e' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Syarat'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('6db3859c-6fd8-4929-a350-731b48d5cf4e', 'Syarat', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '6db3859c-6fd8-4929-a350-731b48d5cf4e' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Ayat'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('6db3859c-6fd8-4929-a350-731b48d5cf4e', 'Ayat', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '6db3859c-6fd8-4929-a350-731b48d5cf4e' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Clause'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('6db3859c-6fd8-4929-a350-731b48d5cf4e', 'Clause', false, true);
  END IF;

  -- [KANJI] 派 (Level 21)
  UPDATE item_meanings SET meaning = 'Fraksi', primary_meaning = true, accepted_answer = true WHERE id = '6f6716fb-d518-4004-8626-5b7655a8e780';
  UPDATE items SET slug = 'fraksi' WHERE id = 'aea0c704-4f98-4af2-81ca-2e1f1bbdf4e8';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'aea0c704-4f98-4af2-81ca-2e1f1bbdf4e8' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Aliran'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('aea0c704-4f98-4af2-81ca-2e1f1bbdf4e8', 'Aliran', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'aea0c704-4f98-4af2-81ca-2e1f1bbdf4e8' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Sekte'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('aea0c704-4f98-4af2-81ca-2e1f1bbdf4e8', 'Sekte', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'aea0c704-4f98-4af2-81ca-2e1f1bbdf4e8' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Kelompok'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('aea0c704-4f98-4af2-81ca-2e1f1bbdf4e8', 'Kelompok', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'aea0c704-4f98-4af2-81ca-2e1f1bbdf4e8' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Sect'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('aea0c704-4f98-4af2-81ca-2e1f1bbdf4e8', 'Sect', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'aea0c704-4f98-4af2-81ca-2e1f1bbdf4e8' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Faction'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('aea0c704-4f98-4af2-81ca-2e1f1bbdf4e8', 'Faction', false, true);
  END IF;

  -- [KANJI] 済 (Level 21)
  UPDATE item_meanings SET meaning = 'Selesai', primary_meaning = true, accepted_answer = true WHERE id = '5d5f6b42-3b60-4261-a646-022230c8ac7e';
  UPDATE items SET slug = 'selesai' WHERE id = '271927cd-c15c-44b1-8272-92cd64a0da78';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '271927cd-c15c-44b1-8272-92cd64a0da78' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Lunas'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('271927cd-c15c-44b1-8272-92cd64a0da78', 'Lunas', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '271927cd-c15c-44b1-8272-92cd64a0da78' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Beres'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('271927cd-c15c-44b1-8272-92cd64a0da78', 'Beres', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '271927cd-c15c-44b1-8272-92cd64a0da78' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Tamat'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('271927cd-c15c-44b1-8272-92cd64a0da78', 'Tamat', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '271927cd-c15c-44b1-8272-92cd64a0da78' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Come To An End'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('271927cd-c15c-44b1-8272-92cd64a0da78', 'Come To An End', false, true);
  END IF;

  -- [KANJI] 省 (Level 21)
  UPDATE item_meanings SET meaning = 'Kementerian', primary_meaning = true, accepted_answer = true WHERE id = 'dbb89b9d-b351-489a-be9d-4c30df2d5efa';
  UPDATE items SET slug = 'kementerian' WHERE id = '13ee4d29-739e-4237-93ea-0a0df60d0f89';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '13ee4d29-739e-4237-93ea-0a0df60d0f89' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Introspeksi'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('13ee4d29-739e-4237-93ea-0a0df60d0f89', 'Introspeksi', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '13ee4d29-739e-4237-93ea-0a0df60d0f89' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Departemen'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('13ee4d29-739e-4237-93ea-0a0df60d0f89', 'Departemen', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '13ee4d29-739e-4237-93ea-0a0df60d0f89' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Menghemat'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('13ee4d29-739e-4237-93ea-0a0df60d0f89', 'Menghemat', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '13ee4d29-739e-4237-93ea-0a0df60d0f89' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Conserve'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('13ee4d29-739e-4237-93ea-0a0df60d0f89', 'Conserve', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '13ee4d29-739e-4237-93ea-0a0df60d0f89' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Ministry'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('13ee4d29-739e-4237-93ea-0a0df60d0f89', 'Ministry', false, true);
  END IF;

  -- [KANJI] 素 (Level 21)
  UPDATE item_meanings SET meaning = 'Unsur', primary_meaning = true, accepted_answer = true WHERE id = 'ec9d34ed-b4ef-46e0-9341-3387f2c4736b';
  UPDATE items SET slug = 'unsur' WHERE id = '8c3646ca-360b-452e-8d5e-fd15d32d16d8';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '8c3646ca-360b-452e-8d5e-fd15d32d16d8' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Elemen'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('8c3646ca-360b-452e-8d5e-fd15d32d16d8', 'Elemen', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '8c3646ca-360b-452e-8d5e-fd15d32d16d8' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Bahan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('8c3646ca-360b-452e-8d5e-fd15d32d16d8', 'Bahan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '8c3646ca-360b-452e-8d5e-fd15d32d16d8' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Polos'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('8c3646ca-360b-452e-8d5e-fd15d32d16d8', 'Polos', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '8c3646ca-360b-452e-8d5e-fd15d32d16d8' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Element'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('8c3646ca-360b-452e-8d5e-fd15d32d16d8', 'Element', false, true);
  END IF;

  -- [KANJI] 総 (Level 21)
  UPDATE item_meanings SET meaning = 'Total', primary_meaning = true, accepted_answer = true WHERE id = 'ce44bd5e-bc3f-4aed-8d16-1f14e5507ef3';
  UPDATE items SET slug = 'total' WHERE id = '4bdd520e-4780-41cd-bf5d-00a00cea95fc';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '4bdd520e-4780-41cd-bf5d-00a00cea95fc' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Keseluruhan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('4bdd520e-4780-41cd-bf5d-00a00cea95fc', 'Keseluruhan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '4bdd520e-4780-41cd-bf5d-00a00cea95fc' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Semua'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('4bdd520e-4780-41cd-bf5d-00a00cea95fc', 'Semua', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '4bdd520e-4780-41cd-bf5d-00a00cea95fc' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Umum'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('4bdd520e-4780-41cd-bf5d-00a00cea95fc', 'Umum', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '4bdd520e-4780-41cd-bf5d-00a00cea95fc' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Whole'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('4bdd520e-4780-41cd-bf5d-00a00cea95fc', 'Whole', false, true);
  END IF;

  -- [KANJI] 責 (Level 21)
  UPDATE item_meanings SET meaning = 'Menyalahkan', primary_meaning = true, accepted_answer = true WHERE id = 'bb3640a2-3f2c-43c4-9eba-3a1aaf3a9799';
  UPDATE items SET slug = 'menyalahkan' WHERE id = 'dd3c3598-3875-4815-99c7-144a218a3498';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'dd3c3598-3875-4815-99c7-144a218a3498' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Tanggung Jawab'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('dd3c3598-3875-4815-99c7-144a218a3498', 'Tanggung Jawab', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'dd3c3598-3875-4815-99c7-144a218a3498' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Menuntut'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('dd3c3598-3875-4815-99c7-144a218a3498', 'Menuntut', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'dd3c3598-3875-4815-99c7-144a218a3498' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Blame'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('dd3c3598-3875-4815-99c7-144a218a3498', 'Blame', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'dd3c3598-3875-4815-99c7-144a218a3498' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Responsibility'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('dd3c3598-3875-4815-99c7-144a218a3498', 'Responsibility', false, true);
  END IF;

  -- [KANJI] 資 (Level 21)
  UPDATE item_meanings SET meaning = 'Modal', primary_meaning = true, accepted_answer = true WHERE id = '32bc8e64-a114-4e6b-826e-172704fff1ac';
  UPDATE items SET slug = 'modal' WHERE id = 'cf806ee5-1bd3-454c-aafc-8401978a7e95';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'cf806ee5-1bd3-454c-aafc-8401978a7e95' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Sumber Daya'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('cf806ee5-1bd3-454c-aafc-8401978a7e95', 'Sumber Daya', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'cf806ee5-1bd3-454c-aafc-8401978a7e95' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Dana'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('cf806ee5-1bd3-454c-aafc-8401978a7e95', 'Dana', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'cf806ee5-1bd3-454c-aafc-8401978a7e95' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Aset'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('cf806ee5-1bd3-454c-aafc-8401978a7e95', 'Aset', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'cf806ee5-1bd3-454c-aafc-8401978a7e95' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Resources'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('cf806ee5-1bd3-454c-aafc-8401978a7e95', 'Resources', false, true);
  END IF;

  -- [KANJI] 餌 (Level 21)
  UPDATE item_meanings SET meaning = 'Pakan', primary_meaning = true, accepted_answer = true WHERE id = 'f66231f8-c7c4-406f-a264-a9e192910ce9';
  UPDATE items SET slug = 'pakan' WHERE id = '82dfdb60-de1c-470d-88de-83bc4a489e7b';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '82dfdb60-de1c-470d-88de-83bc4a489e7b' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Umpan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('82dfdb60-de1c-470d-88de-83bc4a489e7b', 'Umpan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '82dfdb60-de1c-470d-88de-83bc4a489e7b' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Pakan Hewan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('82dfdb60-de1c-470d-88de-83bc4a489e7b', 'Pakan Hewan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '82dfdb60-de1c-470d-88de-83bc4a489e7b' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Makanan Hewan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('82dfdb60-de1c-470d-88de-83bc4a489e7b', 'Makanan Hewan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '82dfdb60-de1c-470d-88de-83bc4a489e7b' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Feed'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('82dfdb60-de1c-470d-88de-83bc4a489e7b', 'Feed', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '82dfdb60-de1c-470d-88de-83bc4a489e7b' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Bait'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('82dfdb60-de1c-470d-88de-83bc4a489e7b', 'Bait', false, true);
  END IF;

  -- [VOCABULARY] いい加減にしろ (Level 21)
  UPDATE item_meanings SET meaning = 'Hentikan', primary_meaning = true, accepted_answer = true WHERE id = 'a0021ab9-8898-40dc-a7c4-27b4e8466e8b';
  UPDATE items SET slug = 'hentikan' WHERE id = '9483d5d6-db36-4e2a-8542-7caac65bab31';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '9483d5d6-db36-4e2a-8542-7caac65bab31' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Cukup'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('9483d5d6-db36-4e2a-8542-7caac65bab31', 'Cukup', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '9483d5d6-db36-4e2a-8542-7caac65bab31' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Jangan Keterlaluan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('9483d5d6-db36-4e2a-8542-7caac65bab31', 'Jangan Keterlaluan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '9483d5d6-db36-4e2a-8542-7caac65bab31' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Sudahi'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('9483d5d6-db36-4e2a-8542-7caac65bab31', 'Sudahi', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '9483d5d6-db36-4e2a-8542-7caac65bab31' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Cut It Out'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('9483d5d6-db36-4e2a-8542-7caac65bab31', 'Cut It Out', false, true);
  END IF;

  -- [VOCABULARY] 乱す (Level 21)
  UPDATE item_meanings SET meaning = 'Mengacaukan', primary_meaning = true, accepted_answer = true WHERE id = 'b68446db-0fe6-4537-b0c8-717e8e4df85d';
  UPDATE items SET slug = 'mengacaukan' WHERE id = '5652412c-ad74-4338-a5f3-ee5164a42a0f';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '5652412c-ad74-4338-a5f3-ee5164a42a0f' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Merusak Ketertiban'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('5652412c-ad74-4338-a5f3-ee5164a42a0f', 'Merusak Ketertiban', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '5652412c-ad74-4338-a5f3-ee5164a42a0f' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Membuat Kacau'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('5652412c-ad74-4338-a5f3-ee5164a42a0f', 'Membuat Kacau', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '5652412c-ad74-4338-a5f3-ee5164a42a0f' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Put In Disorder'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('5652412c-ad74-4338-a5f3-ee5164a42a0f', 'To Put In Disorder', false, true);
  END IF;

  -- [VOCABULARY] 事件 (Level 21)
  UPDATE item_meanings SET meaning = 'Peristiwa', primary_meaning = true, accepted_answer = true WHERE id = '76439734-bf30-475c-ade6-5c929790796e';
  UPDATE items SET slug = 'peristiwa' WHERE id = 'a86656bd-c853-472e-9612-90233a695d60';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'a86656bd-c853-472e-9612-90233a695d60' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Kasus'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('a86656bd-c853-472e-9612-90233a695d60', 'Kasus', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'a86656bd-c853-472e-9612-90233a695d60' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Insiden'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('a86656bd-c853-472e-9612-90233a695d60', 'Insiden', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'a86656bd-c853-472e-9612-90233a695d60' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Kejadian'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('a86656bd-c853-472e-9612-90233a695d60', 'Kejadian', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'a86656bd-c853-472e-9612-90233a695d60' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Incident'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('a86656bd-c853-472e-9612-90233a695d60', 'Incident', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'a86656bd-c853-472e-9612-90233a695d60' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Case'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('a86656bd-c853-472e-9612-90233a695d60', 'Case', false, true);
  END IF;

  -- [VOCABULARY] 企てる (Level 21)
  UPDATE item_meanings SET meaning = 'Merencanakan', primary_meaning = true, accepted_answer = true WHERE id = '54e00d71-e2b8-4631-8cfc-b70741c04708';
  UPDATE items SET slug = 'merencanakan' WHERE id = 'fc02bd75-b443-4eee-84a4-1e2c0a08fe7f';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'fc02bd75-b443-4eee-84a4-1e2c0a08fe7f' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Merancang'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('fc02bd75-b443-4eee-84a4-1e2c0a08fe7f', 'Merancang', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'fc02bd75-b443-4eee-84a4-1e2c0a08fe7f' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Berniat'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('fc02bd75-b443-4eee-84a4-1e2c0a08fe7f', 'Berniat', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'fc02bd75-b443-4eee-84a4-1e2c0a08fe7f' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Plan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('fc02bd75-b443-4eee-84a4-1e2c0a08fe7f', 'To Plan', false, true);
  END IF;

  -- [VOCABULARY] 務める (Level 21)
  UPDATE item_meanings SET meaning = 'Bertugas Sebagai', primary_meaning = true, accepted_answer = true WHERE id = '57902a1f-de6a-44a3-8f32-21c2e26b425a';
  UPDATE items SET slug = 'bertugas-sebagai' WHERE id = 'ae2ca001-4bd8-47cf-85f5-5624b205addf';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'ae2ca001-4bd8-47cf-85f5-5624b205addf' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Menjabat'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('ae2ca001-4bd8-47cf-85f5-5624b205addf', 'Menjabat', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'ae2ca001-4bd8-47cf-85f5-5624b205addf' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Bekerja Sebagai'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('ae2ca001-4bd8-47cf-85f5-5624b205addf', 'Bekerja Sebagai', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'ae2ca001-4bd8-47cf-85f5-5624b205addf' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Menjabat Sebagai'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('ae2ca001-4bd8-47cf-85f5-5624b205addf', 'Menjabat Sebagai', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'ae2ca001-4bd8-47cf-85f5-5624b205addf' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Work As'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('ae2ca001-4bd8-47cf-85f5-5624b205addf', 'To Work As', false, true);
  END IF;

  -- [VOCABULARY] 埋め合わせる (Level 21)
  UPDATE item_meanings SET meaning = 'Menebus', primary_meaning = true, accepted_answer = true WHERE id = 'bcb6c9ef-e208-41ef-89c5-d68b8b5ca04d';
  UPDATE items SET slug = 'menebus' WHERE id = '1aaa733f-57cc-4e59-bfac-320369489cc5';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '1aaa733f-57cc-4e59-bfac-320369489cc5' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Mengganti Rugi'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('1aaa733f-57cc-4e59-bfac-320369489cc5', 'Mengganti Rugi', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '1aaa733f-57cc-4e59-bfac-320369489cc5' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Menambal'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('1aaa733f-57cc-4e59-bfac-320369489cc5', 'Menambal', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '1aaa733f-57cc-4e59-bfac-320369489cc5' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Kompensasi'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('1aaa733f-57cc-4e59-bfac-320369489cc5', 'Kompensasi', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '1aaa733f-57cc-4e59-bfac-320369489cc5' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Compensate For'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('1aaa733f-57cc-4e59-bfac-320369489cc5', 'To Compensate For', false, true);
  END IF;

  -- [VOCABULARY] 増える (Level 21)
  UPDATE item_meanings SET meaning = 'Bertambah', primary_meaning = true, accepted_answer = true WHERE id = 'c5b15c70-dbdd-4dae-8bfe-cacf865554de';
  UPDATE items SET slug = 'bertambah' WHERE id = '09c21080-d680-4174-b8a0-57332a696046';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '09c21080-d680-4174-b8a0-57332a696046' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Meningkat'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('09c21080-d680-4174-b8a0-57332a696046', 'Meningkat', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '09c21080-d680-4174-b8a0-57332a696046' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Membanyak'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('09c21080-d680-4174-b8a0-57332a696046', 'Membanyak', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '09c21080-d680-4174-b8a0-57332a696046' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Increase'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('09c21080-d680-4174-b8a0-57332a696046', 'To Increase', false, true);
  END IF;

  -- [VOCABULARY] 増加 (Level 21)
  UPDATE item_meanings SET meaning = 'Peningkatan', primary_meaning = true, accepted_answer = true WHERE id = '1baa920d-8c06-4981-9dd4-00d71dc334ad';
  UPDATE items SET slug = 'peningkatan' WHERE id = 'e6cd1b03-0ec7-44ff-be76-7a7ecb9843f6';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'e6cd1b03-0ec7-44ff-be76-7a7ecb9843f6' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Pertambahan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('e6cd1b03-0ec7-44ff-be76-7a7ecb9843f6', 'Pertambahan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'e6cd1b03-0ec7-44ff-be76-7a7ecb9843f6' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Kenaikan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('e6cd1b03-0ec7-44ff-be76-7a7ecb9843f6', 'Kenaikan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'e6cd1b03-0ec7-44ff-be76-7a7ecb9843f6' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Increase'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('e6cd1b03-0ec7-44ff-be76-7a7ecb9843f6', 'Increase', false, true);
  END IF;

  -- [VOCABULARY] 外れ (Level 21)
  UPDATE item_meanings SET meaning = 'Meleset', primary_meaning = true, accepted_answer = true WHERE id = '21d633dc-ca90-4979-9998-ed86fd1f5c6b';
  UPDATE items SET slug = 'meleset' WHERE id = '8327d187-9106-496a-8681-e4d637b5325e';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '8327d187-9106-496a-8681-e4d637b5325e' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Zonk'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('8327d187-9106-496a-8681-e4d637b5325e', 'Zonk', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '8327d187-9106-496a-8681-e4d637b5325e' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Tidak Kena'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('8327d187-9106-496a-8681-e4d637b5325e', 'Tidak Kena', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '8327d187-9106-496a-8681-e4d637b5325e' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Pinggiran'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('8327d187-9106-496a-8681-e4d637b5325e', 'Pinggiran', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '8327d187-9106-496a-8681-e4d637b5325e' AND LOWER(TRIM(meaning)) = LOWER(TRIM('A Miss'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('8327d187-9106-496a-8681-e4d637b5325e', 'A Miss', false, true);
  END IF;

  -- [VOCABULARY] 強制 (Level 21)
  UPDATE item_meanings SET meaning = 'Pemaksaan', primary_meaning = true, accepted_answer = true WHERE id = 'cc73e58b-3688-4b0f-80ca-48c8ca847143';
  UPDATE items SET slug = 'pemaksaan' WHERE id = '457bcf8b-e72d-41ad-8f32-d3e595f9497c';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '457bcf8b-e72d-41ad-8f32-d3e595f9497c' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Wajib'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('457bcf8b-e72d-41ad-8f32-d3e595f9497c', 'Wajib', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '457bcf8b-e72d-41ad-8f32-d3e595f9497c' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Paksaan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('457bcf8b-e72d-41ad-8f32-d3e595f9497c', 'Paksaan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '457bcf8b-e72d-41ad-8f32-d3e595f9497c' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Komparasi'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('457bcf8b-e72d-41ad-8f32-d3e595f9497c', 'Komparasi', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '457bcf8b-e72d-41ad-8f32-d3e595f9497c' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Forcing'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('457bcf8b-e72d-41ad-8f32-d3e595f9497c', 'Forcing', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '457bcf8b-e72d-41ad-8f32-d3e595f9497c' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Compulsion'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('457bcf8b-e72d-41ad-8f32-d3e595f9497c', 'Compulsion', false, true);
  END IF;

  -- [VOCABULARY] 挙がる (Level 21)
  UPDATE item_meanings SET meaning = 'Terangkat', primary_meaning = true, accepted_answer = true WHERE id = 'cf6e26df-aa6f-4906-8403-7cf3abcf3e25';
  UPDATE items SET slug = 'terangkat' WHERE id = '62553b78-c117-49c4-ad13-c335b9bc1f94';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '62553b78-c117-49c4-ad13-c335b9bc1f94' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Disebutkan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('62553b78-c117-49c4-ad13-c335b9bc1f94', 'Disebutkan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '62553b78-c117-49c4-ad13-c335b9bc1f94' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Dicalonkan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('62553b78-c117-49c4-ad13-c335b9bc1f94', 'Dicalonkan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '62553b78-c117-49c4-ad13-c335b9bc1f94' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Be Raised'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('62553b78-c117-49c4-ad13-c335b9bc1f94', 'To Be Raised', false, true);
  END IF;

  -- [VOCABULARY] 検問する (Level 21)
  UPDATE item_meanings SET meaning = 'Memeriksa', primary_meaning = true, accepted_answer = true WHERE id = 'c499b14b-5986-46de-9718-00e98f1a9a5c';
  UPDATE items SET slug = 'memeriksa' WHERE id = '599cb22e-888c-4c16-9975-156450fa8dc4';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '599cb22e-888c-4c16-9975-156450fa8dc4' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Merazia'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('599cb22e-888c-4c16-9975-156450fa8dc4', 'Merazia', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '599cb22e-888c-4c16-9975-156450fa8dc4' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Mengecek'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('599cb22e-888c-4c16-9975-156450fa8dc4', 'Mengecek', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '599cb22e-888c-4c16-9975-156450fa8dc4' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Inspect'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('599cb22e-888c-4c16-9975-156450fa8dc4', 'To Inspect', false, true);
  END IF;

  -- [VOCABULARY] 混乱する (Level 21)
  UPDATE item_meanings SET meaning = 'Kacau', primary_meaning = true, accepted_answer = true WHERE id = '292f6a4f-bc0d-45b5-839b-f17b4a1a51e1';
  UPDATE items SET slug = 'kacau' WHERE id = '830f7247-abc7-4739-a7bd-f07a089b44ce';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '830f7247-abc7-4739-a7bd-f07a089b44ce' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Panik'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('830f7247-abc7-4739-a7bd-f07a089b44ce', 'Panik', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '830f7247-abc7-4739-a7bd-f07a089b44ce' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Bingung'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('830f7247-abc7-4739-a7bd-f07a089b44ce', 'Bingung', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '830f7247-abc7-4739-a7bd-f07a089b44ce' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Kebingungan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('830f7247-abc7-4739-a7bd-f07a089b44ce', 'Kebingungan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '830f7247-abc7-4739-a7bd-f07a089b44ce' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Be Confused'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('830f7247-abc7-4739-a7bd-f07a089b44ce', 'To Be Confused', false, true);
  END IF;

  -- [VOCABULARY] 目覚める (Level 21)
  UPDATE item_meanings SET meaning = 'Terbangun', primary_meaning = true, accepted_answer = true WHERE id = '38ac7473-7044-429e-bd1a-b3c8b114286b';
  UPDATE items SET slug = 'terbangun' WHERE id = '5e2ad8db-c201-4777-be51-73e7d5c88cf4';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '5e2ad8db-c201-4777-be51-73e7d5c88cf4' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Sadar'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('5e2ad8db-c201-4777-be51-73e7d5c88cf4', 'Sadar', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '5e2ad8db-c201-4777-be51-73e7d5c88cf4' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Bangun'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('5e2ad8db-c201-4777-be51-73e7d5c88cf4', 'Bangun', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '5e2ad8db-c201-4777-be51-73e7d5c88cf4' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Terjaga'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('5e2ad8db-c201-4777-be51-73e7d5c88cf4', 'Terjaga', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '5e2ad8db-c201-4777-be51-73e7d5c88cf4' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Wake Up'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('5e2ad8db-c201-4777-be51-73e7d5c88cf4', 'To Wake Up', false, true);
  END IF;

  -- [VOCABULARY] 省く (Level 21)
  UPDATE item_meanings SET meaning = 'Memangkas', primary_meaning = true, accepted_answer = true WHERE id = 'fffaa2ec-2e38-4df6-8e8b-d0d4fd46385b';
  UPDATE items SET slug = 'memangkas' WHERE id = '014578dc-f36e-4d0e-92ff-23c45e96d9e7';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '014578dc-f36e-4d0e-92ff-23c45e96d9e7' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Melewatkan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('014578dc-f36e-4d0e-92ff-23c45e96d9e7', 'Melewatkan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '014578dc-f36e-4d0e-92ff-23c45e96d9e7' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Menghilangkan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('014578dc-f36e-4d0e-92ff-23c45e96d9e7', 'Menghilangkan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '014578dc-f36e-4d0e-92ff-23c45e96d9e7' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Menghapus'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('014578dc-f36e-4d0e-92ff-23c45e96d9e7', 'Menghapus', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '014578dc-f36e-4d0e-92ff-23c45e96d9e7' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Omit'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('014578dc-f36e-4d0e-92ff-23c45e96d9e7', 'To Omit', false, true);
  END IF;

  -- [VOCABULARY] 立ち去る (Level 21)
  UPDATE item_meanings SET meaning = 'Pergi', primary_meaning = true, accepted_answer = true WHERE id = 'ba34f786-f0d3-44f6-914b-c9ee19d8d721';
  UPDATE items SET slug = 'pergi' WHERE id = 'fd029978-bdb6-4085-bda9-1892f5272822';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'fd029978-bdb6-4085-bda9-1892f5272822' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Meninggalkan Tempat'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('fd029978-bdb6-4085-bda9-1892f5272822', 'Meninggalkan Tempat', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'fd029978-bdb6-4085-bda9-1892f5272822' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Berlalu'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('fd029978-bdb6-4085-bda9-1892f5272822', 'Berlalu', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'fd029978-bdb6-4085-bda9-1892f5272822' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Leave'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('fd029978-bdb6-4085-bda9-1892f5272822', 'To Leave', false, true);
  END IF;

  -- [VOCABULARY] 結ぶ (Level 21)
  UPDATE item_meanings SET meaning = 'Mengikat', primary_meaning = true, accepted_answer = true WHERE id = '7b51a8f0-7aa2-4647-b68a-92c260faa6d4';
  UPDATE items SET slug = 'mengikat' WHERE id = '19144278-bc55-4d7e-82a3-37f2b61bbf15';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '19144278-bc55-4d7e-82a3-37f2b61bbf15' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Menjalin'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('19144278-bc55-4d7e-82a3-37f2b61bbf15', 'Menjalin', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '19144278-bc55-4d7e-82a3-37f2b61bbf15' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Menyambung'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('19144278-bc55-4d7e-82a3-37f2b61bbf15', 'Menyambung', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '19144278-bc55-4d7e-82a3-37f2b61bbf15' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Tie'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('19144278-bc55-4d7e-82a3-37f2b61bbf15', 'To Tie', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '19144278-bc55-4d7e-82a3-37f2b61bbf15' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Connect'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('19144278-bc55-4d7e-82a3-37f2b61bbf15', 'To Connect', false, true);
  END IF;

  -- [VOCABULARY] 羨む (Level 21)
  UPDATE item_meanings SET meaning = 'Iri', primary_meaning = true, accepted_answer = true WHERE id = '8bd83d60-0a30-4c1a-ab7e-c1c0bfa2559b';
  UPDATE items SET slug = 'iri' WHERE id = 'e75ff531-d4ae-42a0-9c3c-0f4da45c69fe';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'e75ff531-d4ae-42a0-9c3c-0f4da45c69fe' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Cemburu'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('e75ff531-d4ae-42a0-9c3c-0f4da45c69fe', 'Cemburu', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'e75ff531-d4ae-42a0-9c3c-0f4da45c69fe' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Iri Hati'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('e75ff531-d4ae-42a0-9c3c-0f4da45c69fe', 'Iri Hati', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'e75ff531-d4ae-42a0-9c3c-0f4da45c69fe' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Dengki'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('e75ff531-d4ae-42a0-9c3c-0f4da45c69fe', 'Dengki', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'e75ff531-d4ae-42a0-9c3c-0f4da45c69fe' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Envy'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('e75ff531-d4ae-42a0-9c3c-0f4da45c69fe', 'To Envy', false, true);
  END IF;

  -- [VOCABULARY] 設ける (Level 21)
  UPDATE item_meanings SET meaning = 'Mendirikan', primary_meaning = true, accepted_answer = true WHERE id = 'd0194b4a-9add-46c5-8400-6d6b0848cde4';
  UPDATE items SET slug = 'mendirikan' WHERE id = '955c935f-8ce6-4b26-8e1c-cc831be38819';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '955c935f-8ce6-4b26-8e1c-cc831be38819' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Menyediakan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('955c935f-8ce6-4b26-8e1c-cc831be38819', 'Menyediakan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '955c935f-8ce6-4b26-8e1c-cc831be38819' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Membangun'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('955c935f-8ce6-4b26-8e1c-cc831be38819', 'Membangun', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '955c935f-8ce6-4b26-8e1c-cc831be38819' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Menyiapkan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('955c935f-8ce6-4b26-8e1c-cc831be38819', 'Menyiapkan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '955c935f-8ce6-4b26-8e1c-cc831be38819' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Establish'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('955c935f-8ce6-4b26-8e1c-cc831be38819', 'To Establish', false, true);
  END IF;

  -- [VOCABULARY] 設定する (Level 21)
  UPDATE item_meanings SET meaning = 'Mengatur', primary_meaning = true, accepted_answer = true WHERE id = 'bd3b502e-81c7-4c82-97d4-0e2d59f446fe';
  UPDATE items SET slug = 'mengatur' WHERE id = '178c52dd-bd9c-40f8-9523-650488a7cade';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '178c52dd-bd9c-40f8-9523-650488a7cade' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Menyetel'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('178c52dd-bd9c-40f8-9523-650488a7cade', 'Menyetel', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '178c52dd-bd9c-40f8-9523-650488a7cade' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Menetapkan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('178c52dd-bd9c-40f8-9523-650488a7cade', 'Menetapkan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '178c52dd-bd9c-40f8-9523-650488a7cade' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Setting'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('178c52dd-bd9c-40f8-9523-650488a7cade', 'Setting', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '178c52dd-bd9c-40f8-9523-650488a7cade' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Set'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('178c52dd-bd9c-40f8-9523-650488a7cade', 'To Set', false, true);
  END IF;

  -- [VOCABULARY] 認める (Level 21)
  UPDATE item_meanings SET meaning = 'Mengakui', primary_meaning = true, accepted_answer = true WHERE id = 'ca83ca0c-2b92-4bfa-9fe0-433f17b76a4b';
  UPDATE items SET slug = 'mengakui' WHERE id = '3adea327-9d51-4672-b59e-541030b3f4de';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '3adea327-9d51-4672-b59e-541030b3f4de' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Menyetujui'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('3adea327-9d51-4672-b59e-541030b3f4de', 'Menyetujui', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '3adea327-9d51-4672-b59e-541030b3f4de' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Mengizinkan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('3adea327-9d51-4672-b59e-541030b3f4de', 'Mengizinkan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '3adea327-9d51-4672-b59e-541030b3f4de' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Acknowledge'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('3adea327-9d51-4672-b59e-541030b3f4de', 'To Acknowledge', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '3adea327-9d51-4672-b59e-541030b3f4de' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Admit'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('3adea327-9d51-4672-b59e-541030b3f4de', 'To Admit', false, true);
  END IF;

  -- [VOCABULARY] 説得する (Level 21)
  UPDATE item_meanings SET meaning = 'Membujuk', primary_meaning = true, accepted_answer = true WHERE id = '0555e82e-66d2-4d07-9b36-0048d0e30c13';
  UPDATE items SET slug = 'membujuk' WHERE id = '25a5d733-827d-4dec-8c96-5daeff2a68e1';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '25a5d733-827d-4dec-8c96-5daeff2a68e1' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Meyakinkan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('25a5d733-827d-4dec-8c96-5daeff2a68e1', 'Meyakinkan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '25a5d733-827d-4dec-8c96-5daeff2a68e1' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Persuasi'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('25a5d733-827d-4dec-8c96-5daeff2a68e1', 'Persuasi', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '25a5d733-827d-4dec-8c96-5daeff2a68e1' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Persuade'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('25a5d733-827d-4dec-8c96-5daeff2a68e1', 'To Persuade', false, true);
  END IF;

  -- [VOCABULARY] 責める (Level 21)
  UPDATE item_meanings SET meaning = 'Menyalahkan', primary_meaning = true, accepted_answer = true WHERE id = 'ceb2f8dc-817b-4c04-b92a-275418db3390';
  UPDATE items SET slug = 'menyalahkan' WHERE id = 'f988a4d4-9c8e-4189-ad36-75f304396bc7';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'f988a4d4-9c8e-4189-ad36-75f304396bc7' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Menuntut'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('f988a4d4-9c8e-4189-ad36-75f304396bc7', 'Menuntut', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'f988a4d4-9c8e-4189-ad36-75f304396bc7' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Mengkritik'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('f988a4d4-9c8e-4189-ad36-75f304396bc7', 'Mengkritik', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'f988a4d4-9c8e-4189-ad36-75f304396bc7' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Menegur'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('f988a4d4-9c8e-4189-ad36-75f304396bc7', 'Menegur', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'f988a4d4-9c8e-4189-ad36-75f304396bc7' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Blame'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('f988a4d4-9c8e-4189-ad36-75f304396bc7', 'To Blame', false, true);
  END IF;

  -- [VOCABULARY] 貰う (Level 21)
  UPDATE item_meanings SET meaning = 'Menerima', primary_meaning = true, accepted_answer = true WHERE id = '37d506f3-40ab-468c-9ae7-b417f1fbb4b6';
  UPDATE items SET slug = 'menerima' WHERE id = 'a272c202-feb2-4504-b88e-21494c623968';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'a272c202-feb2-4504-b88e-21494c623968' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Mendapatkan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('a272c202-feb2-4504-b88e-21494c623968', 'Mendapatkan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'a272c202-feb2-4504-b88e-21494c623968' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Diberi'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('a272c202-feb2-4504-b88e-21494c623968', 'Diberi', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'a272c202-feb2-4504-b88e-21494c623968' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Receive'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('a272c202-feb2-4504-b88e-21494c623968', 'To Receive', false, true);
  END IF;

  -- [VOCABULARY] 資料 (Level 21)
  UPDATE item_meanings SET meaning = 'Dokumen', primary_meaning = true, accepted_answer = true WHERE id = '536632b4-d370-48df-89e5-5552a0a1d345';
  UPDATE items SET slug = 'dokumen' WHERE id = 'e97f3a7f-6e72-40c4-b3b6-8593cc12cbf3';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'e97f3a7f-6e72-40c4-b3b6-8593cc12cbf3' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Bahan Data'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('e97f3a7f-6e72-40c4-b3b6-8593cc12cbf3', 'Bahan Data', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'e97f3a7f-6e72-40c4-b3b6-8593cc12cbf3' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Data'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('e97f3a7f-6e72-40c4-b3b6-8593cc12cbf3', 'Data', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'e97f3a7f-6e72-40c4-b3b6-8593cc12cbf3' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Materi'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('e97f3a7f-6e72-40c4-b3b6-8593cc12cbf3', 'Materi', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'e97f3a7f-6e72-40c4-b3b6-8593cc12cbf3' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Bahan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('e97f3a7f-6e72-40c4-b3b6-8593cc12cbf3', 'Bahan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'e97f3a7f-6e72-40c4-b3b6-8593cc12cbf3' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Material'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('e97f3a7f-6e72-40c4-b3b6-8593cc12cbf3', 'Material', false, true);
  END IF;

  -- [VOCABULARY] 返済 (Level 21)
  UPDATE item_meanings SET meaning = 'Pelunasan', primary_meaning = true, accepted_answer = true WHERE id = '5e53e90f-85f9-45a2-a651-0a0848fd5212';
  UPDATE items SET slug = 'pelunasan' WHERE id = '88f576e9-9496-4983-8944-9070d60892f1';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '88f576e9-9496-4983-8944-9070d60892f1' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Pembayaran Kembali'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('88f576e9-9496-4983-8944-9070d60892f1', 'Pembayaran Kembali', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '88f576e9-9496-4983-8944-9070d60892f1' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Cicilan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('88f576e9-9496-4983-8944-9070d60892f1', 'Cicilan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '88f576e9-9496-4983-8944-9070d60892f1' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Pengembalian'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('88f576e9-9496-4983-8944-9070d60892f1', 'Pengembalian', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '88f576e9-9496-4983-8944-9070d60892f1' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Repayment'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('88f576e9-9496-4983-8944-9070d60892f1', 'Repayment', false, true);
  END IF;

  -- [VOCABULARY] 餌 (Level 21)
  UPDATE item_meanings SET meaning = 'Pakan', primary_meaning = true, accepted_answer = true WHERE id = '2291efd0-7c0a-42dd-ae67-e5281cee053e';
  UPDATE items SET slug = 'pakan' WHERE id = '79b2865a-f284-4708-8ccd-143d2a8330ee';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '79b2865a-f284-4708-8ccd-143d2a8330ee' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Umpan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('79b2865a-f284-4708-8ccd-143d2a8330ee', 'Umpan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '79b2865a-f284-4708-8ccd-143d2a8330ee' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Pakan Hewan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('79b2865a-f284-4708-8ccd-143d2a8330ee', 'Pakan Hewan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '79b2865a-f284-4708-8ccd-143d2a8330ee' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Makanan Hewan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('79b2865a-f284-4708-8ccd-143d2a8330ee', 'Makanan Hewan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '79b2865a-f284-4708-8ccd-143d2a8330ee' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Feed'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('79b2865a-f284-4708-8ccd-143d2a8330ee', 'Feed', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '79b2865a-f284-4708-8ccd-143d2a8330ee' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Bait'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('79b2865a-f284-4708-8ccd-143d2a8330ee', 'Bait', false, true);
  END IF;

END $$;
