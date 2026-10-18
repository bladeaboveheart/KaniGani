-- Migration: Batch 1 Part 2 (Items 41-80)
-- Total items: 40

DO $$
BEGIN

  -- [KANJI] 留 (Level 16)
  UPDATE item_meanings SET meaning = 'Menahan', primary_meaning = true, accepted_answer = true WHERE id = '9278e73e-0e08-43a2-9132-075d91c2f4ad';
  UPDATE items SET slug = 'menahan' WHERE id = '842f66bd-37df-429f-8315-83c470a6f467';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '842f66bd-37df-429f-8315-83c470a6f467' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Tinggal'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('842f66bd-37df-429f-8315-83c470a6f467', 'Tinggal', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '842f66bd-37df-429f-8315-83c470a6f467' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Menetap'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('842f66bd-37df-429f-8315-83c470a6f467', 'Menetap', false, true);
  END IF;

  -- [KANJI] 辞 (Level 16)
  UPDATE item_meanings SET meaning = 'Mengundurkan Diri', primary_meaning = true, accepted_answer = true WHERE id = '7ed8cc9c-e832-47af-a02f-6483b659fca8';
  UPDATE items SET slug = 'mengundurkan-diri' WHERE id = 'adc7862a-af6f-4167-9104-441ca888fa8d';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'adc7862a-af6f-4167-9104-441ca888fa8d' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Kata'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('adc7862a-af6f-4167-9104-441ca888fa8d', 'Kata', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'adc7862a-af6f-4167-9104-441ca888fa8d' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Berhenti'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('adc7862a-af6f-4167-9104-441ca888fa8d', 'Berhenti', false, true);
  END IF;

  -- [KANJI] 面 (Level 16)
  UPDATE item_meanings SET meaning = 'Permukaan', primary_meaning = true, accepted_answer = true WHERE id = 'a228e56a-dbd7-407f-a449-a9aeb646d4e2';
  UPDATE items SET slug = 'permukaan' WHERE id = '506a2500-73aa-4c55-bf4f-9ee188f21b3f';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '506a2500-73aa-4c55-bf4f-9ee188f21b3f' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Muka'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('506a2500-73aa-4c55-bf4f-9ee188f21b3f', 'Muka', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '506a2500-73aa-4c55-bf4f-9ee188f21b3f' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Wajah'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('506a2500-73aa-4c55-bf4f-9ee188f21b3f', 'Wajah', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '506a2500-73aa-4c55-bf4f-9ee188f21b3f' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Sisi'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('506a2500-73aa-4c55-bf4f-9ee188f21b3f', 'Sisi', false, true);
  END IF;

  -- [VOCABULARY] 急 (Level 16)
  UPDATE item_meanings SET meaning = 'Mendadak', primary_meaning = true, accepted_answer = true WHERE id = '6a25279b-5663-4b09-98c2-e00bf4d8f4ee';
  UPDATE items SET slug = 'mendadak' WHERE id = 'b94315ba-14ed-4681-9d86-34df158e4911';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'b94315ba-14ed-4681-9d86-34df158e4911' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Tiba-tiba'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('b94315ba-14ed-4681-9d86-34df158e4911', 'Tiba-tiba', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'b94315ba-14ed-4681-9d86-34df158e4911' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Genting'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('b94315ba-14ed-4681-9d86-34df158e4911', 'Genting', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'b94315ba-14ed-4681-9d86-34df158e4911' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Cepat'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('b94315ba-14ed-4681-9d86-34df158e4911', 'Cepat', false, true);
  END IF;

  -- [VOCABULARY] 留守 (Level 16)
  UPDATE item_meanings SET meaning = 'Tidak Di Rumah', primary_meaning = true, accepted_answer = true WHERE id = '0db166b9-8b7d-45ad-81f2-0a627af8d0f6';
  UPDATE items SET slug = 'tidak-di-rumah' WHERE id = 'b0e968d9-2733-42b6-9078-e5b2e9925aec';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'b0e968d9-2733-42b6-9078-e5b2e9925aec' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Sedang Keluar'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('b0e968d9-2733-42b6-9078-e5b2e9925aec', 'Sedang Keluar', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'b0e968d9-2733-42b6-9078-e5b2e9925aec' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Absen'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('b0e968d9-2733-42b6-9078-e5b2e9925aec', 'Absen', false, true);
  END IF;

  -- [VOCABULARY] 面 (Level 16)
  UPDATE item_meanings SET meaning = 'Permukaan', primary_meaning = true, accepted_answer = true WHERE id = '2876dc7e-28ff-4184-b721-30b64964b747';
  UPDATE items SET slug = 'permukaan' WHERE id = '4628a5db-3872-4021-8331-1d0cf2fa8b7a';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '4628a5db-3872-4021-8331-1d0cf2fa8b7a' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Muka'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('4628a5db-3872-4021-8331-1d0cf2fa8b7a', 'Muka', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '4628a5db-3872-4021-8331-1d0cf2fa8b7a' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Topeng'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('4628a5db-3872-4021-8331-1d0cf2fa8b7a', 'Topeng', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '4628a5db-3872-4021-8331-1d0cf2fa8b7a' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Wajah'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('4628a5db-3872-4021-8331-1d0cf2fa8b7a', 'Wajah', false, true);
  END IF;

  -- [KANJI] 察 (Level 17)
  UPDATE item_meanings SET meaning = 'Menebak', primary_meaning = true, accepted_answer = true WHERE id = '20e107d7-0f66-4de9-875c-c6408a727a88';
  UPDATE items SET slug = 'menebak' WHERE id = '962b91c0-46ae-444f-b0c6-ab115f9413ad';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '962b91c0-46ae-444f-b0c6-ab115f9413ad' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Menilai'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('962b91c0-46ae-444f-b0c6-ab115f9413ad', 'Menilai', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '962b91c0-46ae-444f-b0c6-ab115f9413ad' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Menduga'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('962b91c0-46ae-444f-b0c6-ab115f9413ad', 'Menduga', false, true);
  END IF;

  -- [KANJI] 常 (Level 17)
  UPDATE item_meanings SET meaning = 'Biasa', primary_meaning = true, accepted_answer = true WHERE id = '6b570c1e-a5a3-4a05-8bcf-8e672d24e308';
  UPDATE items SET slug = 'biasa' WHERE id = '510a3a44-709f-42b4-ad25-7af3b4e15bf4';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '510a3a44-709f-42b4-ad25-7af3b4e15bf4' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Selalu'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('510a3a44-709f-42b4-ad25-7af3b4e15bf4', 'Selalu', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '510a3a44-709f-42b4-ad25-7af3b4e15bf4' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Normal'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('510a3a44-709f-42b4-ad25-7af3b4e15bf4', 'Normal', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '510a3a44-709f-42b4-ad25-7af3b4e15bf4' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Rutin'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('510a3a44-709f-42b4-ad25-7af3b4e15bf4', 'Rutin', false, true);
  END IF;

  -- [KANJI] 是 (Level 17)
  UPDATE item_meanings SET meaning = 'Kebenaran', primary_meaning = true, accepted_answer = true WHERE id = 'a2102ef5-ad46-46cf-91ac-f2c19cb4ba9e';
  UPDATE items SET slug = 'kebenaran' WHERE id = '5c30ebcd-00a4-48d4-a44f-3db302deea2b';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '5c30ebcd-00a4-48d4-a44f-3db302deea2b' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Mutlak'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('5c30ebcd-00a4-48d4-a44f-3db302deea2b', 'Mutlak', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '5c30ebcd-00a4-48d4-a44f-3db302deea2b' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Benar'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('5c30ebcd-00a4-48d4-a44f-3db302deea2b', 'Benar', false, true);
  END IF;

  -- [KANJI] 非 (Level 17)
  UPDATE item_meanings SET meaning = 'Kesalahan', primary_meaning = true, accepted_answer = true WHERE id = '29394d81-364d-4a45-b8dd-d8b912ee1c48';
  UPDATE items SET slug = 'kesalahan' WHERE id = '4425e8f5-bc8c-4129-8d65-bafc7fcf1693';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '4425e8f5-bc8c-4129-8d65-bafc7fcf1693' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Bukan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('4425e8f5-bc8c-4129-8d65-bafc7fcf1693', 'Bukan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '4425e8f5-bc8c-4129-8d65-bafc7fcf1693' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Non-'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('4425e8f5-bc8c-4129-8d65-bafc7fcf1693', 'Non-', false, true);
  END IF;

  -- [VOCABULARY] ペラペラ (Level 17)
  UPDATE item_meanings SET meaning = 'Fasih', primary_meaning = true, accepted_answer = true WHERE id = '29e2fc38-fb65-4b8c-b8cc-7df95139d3ef';
  UPDATE items SET slug = 'fasih' WHERE id = '334f2559-975d-498b-b96c-ece41963b061';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '334f2559-975d-498b-b96c-ece41963b061' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Lancar'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('334f2559-975d-498b-b96c-ece41963b061', 'Lancar', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '334f2559-975d-498b-b96c-ece41963b061' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Cerewet'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('334f2559-975d-498b-b96c-ece41963b061', 'Cerewet', false, true);
  END IF;

  -- [VOCABULARY] 非常 (Level 17)
  UPDATE item_meanings SET meaning = 'Darurat', primary_meaning = true, accepted_answer = true WHERE id = 'b3672c1d-4d04-4ee3-acda-8039b1167c40';
  UPDATE items SET slug = 'darurat' WHERE id = 'ef06667b-c00d-4067-9024-50e01efe0c18';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'ef06667b-c00d-4067-9024-50e01efe0c18' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Sangat'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('ef06667b-c00d-4067-9024-50e01efe0c18', 'Sangat', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'ef06667b-c00d-4067-9024-50e01efe0c18' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Luar Biasa'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('ef06667b-c00d-4067-9024-50e01efe0c18', 'Luar Biasa', false, true);
  END IF;

  -- [KANJI] 喫 (Level 18)
  UPDATE item_meanings SET meaning = 'Menghisap', primary_meaning = true, accepted_answer = true WHERE id = 'e4c57339-fa79-4ef6-8fef-326f9a8d3c51';
  UPDATE items SET slug = 'menghisap' WHERE id = '9cb09d56-21ed-463c-98fe-f5f716cd6c8a';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '9cb09d56-21ed-463c-98fe-f5f716cd6c8a' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Mengonsumsi'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('9cb09d56-21ed-463c-98fe-f5f716cd6c8a', 'Mengonsumsi', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '9cb09d56-21ed-463c-98fe-f5f716cd6c8a' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Menelan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('9cb09d56-21ed-463c-98fe-f5f716cd6c8a', 'Menelan', false, true);
  END IF;

  -- [KANJI] 座 (Level 18)
  UPDATE item_meanings SET meaning = 'Duduk', primary_meaning = true, accepted_answer = true WHERE id = '2a3e3d5c-9cb1-498e-a4b5-905f4b8fa065';
  UPDATE items SET slug = 'duduk' WHERE id = '75fc242f-09b2-406c-bac6-7616f053ed06';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '75fc242f-09b2-406c-bac6-7616f053ed06' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Tempat Duduk'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('75fc242f-09b2-406c-bac6-7616f053ed06', 'Tempat Duduk', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '75fc242f-09b2-406c-bac6-7616f053ed06' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Kursi'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('75fc242f-09b2-406c-bac6-7616f053ed06', 'Kursi', false, true);
  END IF;

  -- [KANJI] 種 (Level 18)
  UPDATE item_meanings SET meaning = 'Benih', primary_meaning = true, accepted_answer = true WHERE id = '7698e217-bf58-488a-b99a-d78afae06a8c';
  UPDATE items SET slug = 'benih' WHERE id = '6ce4e056-81f9-44a9-a5ae-e22b407750cf';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '6ce4e056-81f9-44a9-a5ae-e22b407750cf' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Jenis'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('6ce4e056-81f9-44a9-a5ae-e22b407750cf', 'Jenis', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '6ce4e056-81f9-44a9-a5ae-e22b407750cf' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Macam'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('6ce4e056-81f9-44a9-a5ae-e22b407750cf', 'Macam', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '6ce4e056-81f9-44a9-a5ae-e22b407750cf' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Spesies'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('6ce4e056-81f9-44a9-a5ae-e22b407750cf', 'Spesies', false, true);
  END IF;

  -- [KANJI] 乱 (Level 19)
  UPDATE item_meanings SET meaning = 'Kekacauan', primary_meaning = true, accepted_answer = true WHERE id = '3a16674e-8765-4861-b7a2-b4159826281c';
  UPDATE items SET slug = 'kekacauan' WHERE id = '7e6d6c86-a24e-48cd-b45b-3ec5d5987f84';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '7e6d6c86-a24e-48cd-b45b-3ec5d5987f84' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Kerusuhan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('7e6d6c86-a24e-48cd-b45b-3ec5d5987f84', 'Kerusuhan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '7e6d6c86-a24e-48cd-b45b-3ec5d5987f84' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Kekacauan Besar'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('7e6d6c86-a24e-48cd-b45b-3ec5d5987f84', 'Kekacauan Besar', false, true);
  END IF;

  -- [KANJI] 善 (Level 19)
  UPDATE item_meanings SET meaning = 'Kebajikan', primary_meaning = true, accepted_answer = true WHERE id = '2f132c0e-f8c9-45e3-8734-7257c9fadc57';
  UPDATE items SET slug = 'kebajikan' WHERE id = 'a74c2867-83fe-466a-9f46-1aff3d15d09d';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'a74c2867-83fe-466a-9f46-1aff3d15d09d' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Kebaikan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('a74c2867-83fe-466a-9f46-1aff3d15d09d', 'Kebaikan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'a74c2867-83fe-466a-9f46-1aff3d15d09d' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Budi Baik'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('a74c2867-83fe-466a-9f46-1aff3d15d09d', 'Budi Baik', false, true);
  END IF;

  -- [KANJI] 容 (Level 19)
  UPDATE item_meanings SET meaning = 'Isi', primary_meaning = true, accepted_answer = true WHERE id = '4182c707-6998-4a09-bce3-3e78a6eb2394';
  UPDATE items SET slug = 'isi' WHERE id = '0b2ff24c-5ea4-4f29-aa59-bc1b0616f569';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '0b2ff24c-5ea4-4f29-aa59-bc1b0616f569' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Rupa'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('0b2ff24c-5ea4-4f29-aa59-bc1b0616f569', 'Rupa', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '0b2ff24c-5ea4-4f29-aa59-bc1b0616f569' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Wajah'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('0b2ff24c-5ea4-4f29-aa59-bc1b0616f569', 'Wajah', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '0b2ff24c-5ea4-4f29-aa59-bc1b0616f569' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Bentuk'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('0b2ff24c-5ea4-4f29-aa59-bc1b0616f569', 'Bentuk', false, true);
  END IF;

  -- [KANJI] 徒 (Level 19)
  UPDATE item_meanings SET meaning = 'Murid', primary_meaning = true, accepted_answer = true WHERE id = '72f10a85-3a1d-44db-b683-27cdabf32915';
  UPDATE items SET slug = 'murid' WHERE id = '58531af7-1782-4811-ab79-7cf35a6c4012';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '58531af7-1782-4811-ab79-7cf35a6c4012' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Pengikut'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('58531af7-1782-4811-ab79-7cf35a6c4012', 'Pengikut', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '58531af7-1782-4811-ab79-7cf35a6c4012' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Siswa'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('58531af7-1782-4811-ab79-7cf35a6c4012', 'Siswa', false, true);
  END IF;

  -- [KANJI] 得 (Level 19)
  UPDATE item_meanings SET meaning = 'Memperoleh', primary_meaning = true, accepted_answer = true WHERE id = 'f016850e-ee70-4d7f-bcc7-44aac3c9da6a';
  UPDATE items SET slug = 'memperoleh' WHERE id = 'e64f02af-497c-4d06-8507-146c46892c92';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'e64f02af-497c-4d06-8507-146c46892c92' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Untung'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('e64f02af-497c-4d06-8507-146c46892c92', 'Untung', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'e64f02af-497c-4d06-8507-146c46892c92' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Mendapat'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('e64f02af-497c-4d06-8507-146c46892c92', 'Mendapat', false, true);
  END IF;

  -- [KANJI] 改 (Level 19)
  UPDATE item_meanings SET meaning = 'Memperbaiki', primary_meaning = true, accepted_answer = true WHERE id = '84afff24-2533-40fd-b2bd-cb73912c3cf3';
  UPDATE items SET slug = 'memperbaiki' WHERE id = 'd82bdb48-9dcd-4ff7-a8ec-4bcfd17f79be';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'd82bdb48-9dcd-4ff7-a8ec-4bcfd17f79be' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Merombak'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('d82bdb48-9dcd-4ff7-a8ec-4bcfd17f79be', 'Merombak', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'd82bdb48-9dcd-4ff7-a8ec-4bcfd17f79be' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Memperbarui'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('d82bdb48-9dcd-4ff7-a8ec-4bcfd17f79be', 'Memperbarui', false, true);
  END IF;

  -- [KANJI] 易 (Level 19)
  UPDATE item_meanings SET meaning = 'Mudah', primary_meaning = true, accepted_answer = true WHERE id = '16f26bfe-5a01-4bae-96ac-5104a37cc940';
  UPDATE items SET slug = 'mudah' WHERE id = 'bf347e17-f18c-4be8-b56b-7e673131d44b';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'bf347e17-f18c-4be8-b56b-7e673131d44b' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Sederhana'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('bf347e17-f18c-4be8-b56b-7e673131d44b', 'Sederhana', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'bf347e17-f18c-4be8-b56b-7e673131d44b' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Gampang'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('bf347e17-f18c-4be8-b56b-7e673131d44b', 'Gampang', false, true);
  END IF;

  -- [KANJI] 暴 (Level 19)
  UPDATE item_meanings SET meaning = 'Kekerasan', primary_meaning = true, accepted_answer = true WHERE id = '6d04f738-65d8-4a07-b2b9-48c0a508e80f';
  UPDATE items SET slug = 'kekerasan' WHERE id = '555b146f-c75b-4819-971a-43c6175bb2e1';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '555b146f-c75b-4819-971a-43c6175bb2e1' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Mengamuk'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('555b146f-c75b-4819-971a-43c6175bb2e1', 'Mengamuk', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '555b146f-c75b-4819-971a-43c6175bb2e1' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Amukan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('555b146f-c75b-4819-971a-43c6175bb2e1', 'Amukan', false, true);
  END IF;

  -- [KANJI] 節 (Level 19)
  UPDATE item_meanings SET meaning = 'Ruas', primary_meaning = true, accepted_answer = true WHERE id = '96caa0d7-d555-453d-80cd-4846d3552e59';
  UPDATE items SET slug = 'ruas' WHERE id = '9f1b6218-4867-4e95-95f0-d58118e018ba';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '9f1b6218-4867-4e95-95f0-d58118e018ba' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Sendi'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('9f1b6218-4867-4e95-95f0-d58118e018ba', 'Sendi', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '9f1b6218-4867-4e95-95f0-d58118e018ba' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Musim'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('9f1b6218-4867-4e95-95f0-d58118e018ba', 'Musim', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '9f1b6218-4867-4e95-95f0-d58118e018ba' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Buku'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('9f1b6218-4867-4e95-95f0-d58118e018ba', 'Buku', false, true);
  END IF;

  -- [KANJI] 詞 (Level 19)
  UPDATE item_meanings SET meaning = 'Kelas Kata', primary_meaning = true, accepted_answer = true WHERE id = 'ae8bac3f-2792-48c1-82c5-0b16ce5bf4ff';
  UPDATE items SET slug = 'kelas-kata' WHERE id = '19a5c9d7-4282-4bb3-8628-db1e5f145cff';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '19a5c9d7-4282-4bb3-8628-db1e5f145cff' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Lirik'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('19a5c9d7-4282-4bb3-8628-db1e5f145cff', 'Lirik', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '19a5c9d7-4282-4bb3-8628-db1e5f145cff' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Kata'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('19a5c9d7-4282-4bb3-8628-db1e5f145cff', 'Kata', false, true);
  END IF;

  -- [KANJI] 閥 (Level 19)
  UPDATE item_meanings SET meaning = 'Faksi', primary_meaning = true, accepted_answer = true WHERE id = '69225bde-02cd-454c-bbda-fda4c6273ab3';
  UPDATE items SET slug = 'faksi' WHERE id = 'b31aa61b-d0dd-4a70-a733-0bf7cf996afe';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'b31aa61b-d0dd-4a70-a733-0bf7cf996afe' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Klik'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('b31aa61b-d0dd-4a70-a733-0bf7cf996afe', 'Klik', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'b31aa61b-d0dd-4a70-a733-0bf7cf996afe' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Kelompok'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('b31aa61b-d0dd-4a70-a733-0bf7cf996afe', 'Kelompok', false, true);
  END IF;

  -- [VOCABULARY] いい加減 (Level 19)
  UPDATE item_meanings SET meaning = 'Asal-asalan', primary_meaning = true, accepted_answer = true WHERE id = '61c31f11-689b-4174-985b-bc12f4b574e3';
  UPDATE items SET slug = 'asal-asalan' WHERE id = '594e273f-ffcd-4360-9342-b535a452f953';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '594e273f-ffcd-4360-9342-b535a452f953' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Ceroboh'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('594e273f-ffcd-4360-9342-b535a452f953', 'Ceroboh', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '594e273f-ffcd-4360-9342-b535a452f953' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Sembarangan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('594e273f-ffcd-4360-9342-b535a452f953', 'Sembarangan', false, true);
  END IF;

  -- [VOCABULARY] 一冊 (Level 19)
  UPDATE item_meanings SET meaning = 'Satu Jilid', primary_meaning = true, accepted_answer = true WHERE id = '35de2564-98ed-4f9a-acbd-edd692a16702';
  UPDATE items SET slug = 'satu-jilid' WHERE id = 'dda1c1a5-cbe4-47e2-84be-0df36770e478';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'dda1c1a5-cbe4-47e2-84be-0df36770e478' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Satu Buku'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('dda1c1a5-cbe4-47e2-84be-0df36770e478', 'Satu Buku', false, true);
  END IF;

  -- [VOCABULARY] 三冊 (Level 19)
  UPDATE item_meanings SET meaning = 'Tiga Jilid', primary_meaning = true, accepted_answer = true WHERE id = '56c6995a-34f3-4c90-b707-eff7fbfb5807';
  UPDATE items SET slug = 'tiga-jilid' WHERE id = '9c39d591-8f08-414d-b536-2d8acc16b4c3';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '9c39d591-8f08-414d-b536-2d8acc16b4c3' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Tiga Buku'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('9c39d591-8f08-414d-b536-2d8acc16b4c3', 'Tiga Buku', false, true);
  END IF;

  -- [VOCABULARY] 乱れる (Level 19)
  UPDATE item_meanings SET meaning = 'Kacau', primary_meaning = true, accepted_answer = true WHERE id = '3a728379-56e8-4fa0-9009-eb326d1e1dd6';
  UPDATE items SET slug = 'kacau' WHERE id = '592f498d-8fa1-410f-acfa-8ea483235162';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '592f498d-8fa1-410f-acfa-8ea483235162' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Berantakan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('592f498d-8fa1-410f-acfa-8ea483235162', 'Berantakan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '592f498d-8fa1-410f-acfa-8ea483235162' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Kusut'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('592f498d-8fa1-410f-acfa-8ea483235162', 'Kusut', false, true);
  END IF;

  -- [VOCABULARY] 仲直り (Level 19)
  UPDATE item_meanings SET meaning = 'Berdamai', primary_meaning = true, accepted_answer = true WHERE id = '6a679ce6-b04b-488d-8aa2-7acc071606a1';
  UPDATE items SET slug = 'berdamai' WHERE id = 'aaaa4dac-a342-4994-b359-67ff48e9600a';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'aaaa4dac-a342-4994-b359-67ff48e9600a' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Rujuk'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('aaaa4dac-a342-4994-b359-67ff48e9600a', 'Rujuk', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'aaaa4dac-a342-4994-b359-67ff48e9600a' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Baikan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('aaaa4dac-a342-4994-b359-67ff48e9600a', 'Baikan', false, true);
  END IF;

  -- [VOCABULARY] 信徒 (Level 19)
  UPDATE item_meanings SET meaning = 'Penganut', primary_meaning = true, accepted_answer = true WHERE id = 'd5f39632-1d24-44a6-b96a-e67ba756dd7c';
  UPDATE items SET slug = 'penganut' WHERE id = '6cb1db15-6c4a-4043-9ff6-f4aecf9d6f8c';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '6cb1db15-6c4a-4043-9ff6-f4aecf9d6f8c' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Jemaat'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('6cb1db15-6c4a-4043-9ff6-f4aecf9d6f8c', 'Jemaat', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '6cb1db15-6c4a-4043-9ff6-f4aecf9d6f8c' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Pengikut'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('6cb1db15-6c4a-4043-9ff6-f4aecf9d6f8c', 'Pengikut', false, true);
  END IF;

  -- [VOCABULARY] 八冊 (Level 19)
  UPDATE item_meanings SET meaning = 'Delapan Jilid', primary_meaning = true, accepted_answer = true WHERE id = '0c60020b-e29b-4092-8004-592b1b369135';
  UPDATE items SET slug = 'delapan-jilid' WHERE id = '392b0ac8-9866-49d1-b843-9895b9a1040e';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '392b0ac8-9866-49d1-b843-9895b9a1040e' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Delapan Buku'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('392b0ac8-9866-49d1-b843-9895b9a1040e', 'Delapan Buku', false, true);
  END IF;

  -- [VOCABULARY] 内容 (Level 19)
  UPDATE item_meanings SET meaning = 'Isi', primary_meaning = true, accepted_answer = true WHERE id = '869d684e-5649-431b-ba3d-cde90f2ed531';
  UPDATE items SET slug = 'isi' WHERE id = 'edaeacec-77d1-4b79-bec9-3881e864fdeb';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'edaeacec-77d1-4b79-bec9-3881e864fdeb' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Konten'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('edaeacec-77d1-4b79-bec9-3881e864fdeb', 'Konten', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'edaeacec-77d1-4b79-bec9-3881e864fdeb' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Muatan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('edaeacec-77d1-4b79-bec9-3881e864fdeb', 'Muatan', false, true);
  END IF;

  -- [VOCABULARY] 外れる (Level 19)
  UPDATE item_meanings SET meaning = 'Terlepas', primary_meaning = true, accepted_answer = true WHERE id = 'f6ad2ae6-8e16-4182-9a5a-0db1e841a71a';
  UPDATE items SET slug = 'terlepas' WHERE id = 'aee15530-7f84-4c45-b7f7-1d4d882e0bd4';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'aee15530-7f84-4c45-b7f7-1d4d882e0bd4' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Meleset'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('aee15530-7f84-4c45-b7f7-1d4d882e0bd4', 'Meleset', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'aee15530-7f84-4c45-b7f7-1d4d882e0bd4' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Copot'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('aee15530-7f84-4c45-b7f7-1d4d882e0bd4', 'Copot', false, true);
  END IF;

  -- [VOCABULARY] 宇宙 (Level 19)
  UPDATE item_meanings SET meaning = 'Alam Semesta', primary_meaning = true, accepted_answer = true WHERE id = '0b8de532-9564-4c2d-bb64-0203baa25237';
  UPDATE items SET slug = 'alam-semesta' WHERE id = '9d978ad5-342f-48e7-8980-3d15fd3d76d9';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '9d978ad5-342f-48e7-8980-3d15fd3d76d9' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Luar Angkasa'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('9d978ad5-342f-48e7-8980-3d15fd3d76d9', 'Luar Angkasa', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '9d978ad5-342f-48e7-8980-3d15fd3d76d9' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Kosmos'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('9d978ad5-342f-48e7-8980-3d15fd3d76d9', 'Kosmos', false, true);
  END IF;

  -- [VOCABULARY] 宙 (Level 19)
  UPDATE item_meanings SET meaning = 'Luar Angkasa', primary_meaning = true, accepted_answer = true WHERE id = '4bd1c5f1-dc3a-41f3-b2c1-6c784e321388';
  UPDATE items SET slug = 'luar-angkasa' WHERE id = '3161b579-5d59-44fc-9a31-4240eccfc7c2';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '3161b579-5d59-44fc-9a31-4240eccfc7c2' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Melayang Di Udara'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('3161b579-5d59-44fc-9a31-4240eccfc7c2', 'Melayang Di Udara', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '3161b579-5d59-44fc-9a31-4240eccfc7c2' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Angkasa'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('3161b579-5d59-44fc-9a31-4240eccfc7c2', 'Angkasa', false, true);
  END IF;

  -- [VOCABULARY] 暴走 (Level 19)
  UPDATE item_meanings SET meaning = 'Mengamuk', primary_meaning = true, accepted_answer = true WHERE id = '0af18d16-483a-46b7-af08-5503991e369c';
  UPDATE items SET slug = 'mengamuk' WHERE id = 'c5692855-164b-4c4b-a002-7397ef1c597b';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'c5692855-164b-4c4b-a002-7397ef1c597b' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Ugal-ugalan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('c5692855-164b-4c4b-a002-7397ef1c597b', 'Ugal-ugalan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'c5692855-164b-4c4b-a002-7397ef1c597b' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Lepas Kendali'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('c5692855-164b-4c4b-a002-7397ef1c597b', 'Lepas Kendali', false, true);
  END IF;

  -- [VOCABULARY] 生徒 (Level 19)
  UPDATE item_meanings SET meaning = 'Murid', primary_meaning = true, accepted_answer = true WHERE id = '5d3ef567-33ae-4e2d-b95b-09d52758edeb';
  UPDATE items SET slug = 'murid' WHERE id = '6feac216-aaa0-4f7c-a2c6-4399238f5934';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '6feac216-aaa0-4f7c-a2c6-4399238f5934' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Siswa'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('6feac216-aaa0-4f7c-a2c6-4399238f5934', 'Siswa', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '6feac216-aaa0-4f7c-a2c6-4399238f5934' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Pelajar'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('6feac216-aaa0-4f7c-a2c6-4399238f5934', 'Pelajar', false, true);
  END IF;

  -- [VOCABULARY] 続く (Level 19)
  UPDATE item_meanings SET meaning = 'Berlanjut', primary_meaning = true, accepted_answer = true WHERE id = '3c6ff74a-5246-4fae-975e-c06e2c7420be';
  UPDATE items SET slug = 'berlanjut' WHERE id = '86d9ffe4-8298-48c4-9c31-9cca96796e1b';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '86d9ffe4-8298-48c4-9c31-9cca96796e1b' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Bersambung'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('86d9ffe4-8298-48c4-9c31-9cca96796e1b', 'Bersambung', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '86d9ffe4-8298-48c4-9c31-9cca96796e1b' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Menerus'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('86d9ffe4-8298-48c4-9c31-9cca96796e1b', 'Menerus', false, true);
  END IF;

END $$;
