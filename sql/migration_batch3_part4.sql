-- Migration: Batch 3 Part 4 (Level 34)
-- Total items: 95

DO $$
BEGIN

  -- [KANJI] 丼 (Level 34)
  UPDATE item_meanings SET meaning = 'Mangkuk Donburi', primary_meaning = true, accepted_answer = true WHERE id = 'd917bf64-a69f-4039-8eab-6738053e0c37';
  UPDATE items SET slug = 'mangkuk-donburi' WHERE id = '0acb88bd-68d4-4829-b222-057012742d36';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '0acb88bd-68d4-4829-b222-057012742d36' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Nasi Mangkuk'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('0acb88bd-68d4-4829-b222-057012742d36', 'Nasi Mangkuk', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '0acb88bd-68d4-4829-b222-057012742d36' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Rice Bowl'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('0acb88bd-68d4-4829-b222-057012742d36', 'Rice Bowl', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '0acb88bd-68d4-4829-b222-057012742d36' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Donburi'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('0acb88bd-68d4-4829-b222-057012742d36', 'Donburi', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '0acb88bd-68d4-4829-b222-057012742d36' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Tempat nasi'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('0acb88bd-68d4-4829-b222-057012742d36', 'Tempat nasi', false, true);
  END IF;

  -- [KANJI] 刻 (Level 34)
  UPDATE item_meanings SET meaning = 'Mengukir', primary_meaning = true, accepted_answer = true WHERE id = '764884ef-0735-494c-896e-9fd2dd835f69';
  UPDATE items SET slug = 'mengukir' WHERE id = 'de1ad983-a159-4ccc-9809-f06d354da5bd';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'de1ad983-a159-4ccc-9809-f06d354da5bd' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Memahat'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('de1ad983-a159-4ccc-9809-f06d354da5bd', 'Memahat', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'de1ad983-a159-4ccc-9809-f06d354da5bd' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Waktu'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('de1ad983-a159-4ccc-9809-f06d354da5bd', 'Waktu', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'de1ad983-a159-4ccc-9809-f06d354da5bd' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Carve'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('de1ad983-a159-4ccc-9809-f06d354da5bd', 'Carve', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'de1ad983-a159-4ccc-9809-f06d354da5bd' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Engrave'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('de1ad983-a159-4ccc-9809-f06d354da5bd', 'Engrave', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'de1ad983-a159-4ccc-9809-f06d354da5bd' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Time'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('de1ad983-a159-4ccc-9809-f06d354da5bd', 'Time', false, true);
  END IF;

  -- [KANJI] 勤 (Level 34)
  UPDATE item_meanings SET meaning = 'Bekerja', primary_meaning = true, accepted_answer = true WHERE id = '4124aef2-79de-4848-b93f-756e0c3ae1a6';
  UPDATE items SET slug = 'bekerja' WHERE id = 'c7261110-f8b0-417f-9f71-d4c556525ba5';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'c7261110-f8b0-417f-9f71-d4c556525ba5' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Mengabdi'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('c7261110-f8b0-417f-9f71-d4c556525ba5', 'Mengabdi', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'c7261110-f8b0-417f-9f71-d4c556525ba5' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Work'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('c7261110-f8b0-417f-9f71-d4c556525ba5', 'Work', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'c7261110-f8b0-417f-9f71-d4c556525ba5' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Serve'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('c7261110-f8b0-417f-9f71-d4c556525ba5', 'Serve', false, true);
  END IF;

  -- [KANJI] 吐 (Level 34)
  UPDATE item_meanings SET meaning = 'Memuntahkan', primary_meaning = true, accepted_answer = true WHERE id = 'bf6b2e7e-398a-449b-bac2-2df24f437cf9';
  UPDATE items SET slug = 'memuntahkan' WHERE id = '661be658-f0cd-4114-b302-d9c9d65b568d';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '661be658-f0cd-4114-b302-d9c9d65b568d' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Meludahkan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('661be658-f0cd-4114-b302-d9c9d65b568d', 'Meludahkan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '661be658-f0cd-4114-b302-d9c9d65b568d' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Vomit'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('661be658-f0cd-4114-b302-d9c9d65b568d', 'Vomit', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '661be658-f0cd-4114-b302-d9c9d65b568d' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Throw Up'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('661be658-f0cd-4114-b302-d9c9d65b568d', 'Throw Up', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '661be658-f0cd-4114-b302-d9c9d65b568d' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Spit'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('661be658-f0cd-4114-b302-d9c9d65b568d', 'Spit', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '661be658-f0cd-4114-b302-d9c9d65b568d' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Muntah'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('661be658-f0cd-4114-b302-d9c9d65b568d', 'Muntah', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '661be658-f0cd-4114-b302-d9c9d65b568d' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Meludah'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('661be658-f0cd-4114-b302-d9c9d65b568d', 'Meludah', false, true);
  END IF;

  -- [KANJI] 奴 (Level 34)
  UPDATE item_meanings SET meaning = 'Orang Itu', primary_meaning = true, accepted_answer = true WHERE id = 'b1e63ed3-07fb-4eb8-8713-120635ae51bc';
  UPDATE items SET slug = 'orang-itu' WHERE id = '9b316429-2e3a-499d-bcbc-a6d9e28837f7';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '9b316429-2e3a-499d-bcbc-a6d9e28837f7' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Si Kawan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('9b316429-2e3a-499d-bcbc-a6d9e28837f7', 'Si Kawan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '9b316429-2e3a-499d-bcbc-a6d9e28837f7' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Budak'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('9b316429-2e3a-499d-bcbc-a6d9e28837f7', 'Budak', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '9b316429-2e3a-499d-bcbc-a6d9e28837f7' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Guy'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('9b316429-2e3a-499d-bcbc-a6d9e28837f7', 'Guy', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '9b316429-2e3a-499d-bcbc-a6d9e28837f7' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Dude'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('9b316429-2e3a-499d-bcbc-a6d9e28837f7', 'Dude', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '9b316429-2e3a-499d-bcbc-a6d9e28837f7' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Slave'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('9b316429-2e3a-499d-bcbc-a6d9e28837f7', 'Slave', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '9b316429-2e3a-499d-bcbc-a6d9e28837f7' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Bung'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('9b316429-2e3a-499d-bcbc-a6d9e28837f7', 'Bung', false, true);
  END IF;

  -- [KANJI] 射 (Level 34)
  UPDATE item_meanings SET meaning = 'Menembak', primary_meaning = true, accepted_answer = true WHERE id = 'd64b5601-4fed-4787-bc7f-32278b7af56a';
  UPDATE items SET slug = 'menembak' WHERE id = '0eb183ef-aeb4-46e6-9fff-eeff2f7db9be';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '0eb183ef-aeb4-46e6-9fff-eeff2f7db9be' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Memancar'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('0eb183ef-aeb4-46e6-9fff-eeff2f7db9be', 'Memancar', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '0eb183ef-aeb4-46e6-9fff-eeff2f7db9be' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Shoot'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('0eb183ef-aeb4-46e6-9fff-eeff2f7db9be', 'Shoot', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '0eb183ef-aeb4-46e6-9fff-eeff2f7db9be' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Radiate'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('0eb183ef-aeb4-46e6-9fff-eeff2f7db9be', 'Radiate', false, true);
  END IF;

  -- [KANJI] 幕 (Level 34)
  UPDATE item_meanings SET meaning = 'Tirai', primary_meaning = true, accepted_answer = true WHERE id = '410ecc3b-d5bf-4514-9204-fc27641646f8';
  UPDATE items SET slug = 'tirai' WHERE id = 'cc747e4c-b9ec-48a0-ae07-6c32d63e7d4f';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'cc747e4c-b9ec-48a0-ae07-6c32d63e7d4f' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Babak Panggung'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('cc747e4c-b9ec-48a0-ae07-6c32d63e7d4f', 'Babak Panggung', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'cc747e4c-b9ec-48a0-ae07-6c32d63e7d4f' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Bakufu'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('cc747e4c-b9ec-48a0-ae07-6c32d63e7d4f', 'Bakufu', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'cc747e4c-b9ec-48a0-ae07-6c32d63e7d4f' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Curtain'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('cc747e4c-b9ec-48a0-ae07-6c32d63e7d4f', 'Curtain', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'cc747e4c-b9ec-48a0-ae07-6c32d63e7d4f' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Act'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('cc747e4c-b9ec-48a0-ae07-6c32d63e7d4f', 'Act', false, true);
  END IF;

  -- [KANJI] 承 (Level 34)
  UPDATE item_meanings SET meaning = 'Menyetujui', primary_meaning = true, accepted_answer = true WHERE id = '22ccd188-a0ce-4ecd-b957-053c623774fc';
  UPDATE items SET slug = 'menyetujui' WHERE id = 'a507ff10-046e-4d41-be8e-23a8cfd3739e';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'a507ff10-046e-4d41-be8e-23a8cfd3739e' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Menerima'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('a507ff10-046e-4d41-be8e-23a8cfd3739e', 'Menerima', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'a507ff10-046e-4d41-be8e-23a8cfd3739e' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Mengetahui'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('a507ff10-046e-4d41-be8e-23a8cfd3739e', 'Mengetahui', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'a507ff10-046e-4d41-be8e-23a8cfd3739e' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Consent'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('a507ff10-046e-4d41-be8e-23a8cfd3739e', 'Consent', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'a507ff10-046e-4d41-be8e-23a8cfd3739e' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Acquiesce'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('a507ff10-046e-4d41-be8e-23a8cfd3739e', 'Acquiesce', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'a507ff10-046e-4d41-be8e-23a8cfd3739e' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Receive'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('a507ff10-046e-4d41-be8e-23a8cfd3739e', 'Receive', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'a507ff10-046e-4d41-be8e-23a8cfd3739e' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Izin'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('a507ff10-046e-4d41-be8e-23a8cfd3739e', 'Izin', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'a507ff10-046e-4d41-be8e-23a8cfd3739e' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Acquiescence'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('a507ff10-046e-4d41-be8e-23a8cfd3739e', 'Acquiescence', false, true);
  END IF;

  -- [KANJI] 拝 (Level 34)
  UPDATE item_meanings SET meaning = 'Menyembah', primary_meaning = true, accepted_answer = true WHERE id = '426cc9c0-07dc-4328-9827-84038841b623';
  UPDATE items SET slug = 'menyembah' WHERE id = 'f12cf1ec-c55f-4758-91a2-6a4868660d20';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'f12cf1ec-c55f-4758-91a2-6a4868660d20' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Menghormat Takzim'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('f12cf1ec-c55f-4758-91a2-6a4868660d20', 'Menghormat Takzim', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'f12cf1ec-c55f-4758-91a2-6a4868660d20' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Worship'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('f12cf1ec-c55f-4758-91a2-6a4868660d20', 'Worship', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'f12cf1ec-c55f-4758-91a2-6a4868660d20' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Pray'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('f12cf1ec-c55f-4758-91a2-6a4868660d20', 'Pray', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'f12cf1ec-c55f-4758-91a2-6a4868660d20' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Memuja'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('f12cf1ec-c55f-4758-91a2-6a4868660d20', 'Memuja', false, true);
  END IF;

  -- [KANJI] 推 (Level 34)
  UPDATE item_meanings SET meaning = 'Menyimpulkan', primary_meaning = true, accepted_answer = true WHERE id = '00faba51-6e68-43ad-9a48-5b262b4da91d';
  UPDATE items SET slug = 'menyimpulkan' WHERE id = 'ebe2a90f-3ad5-493c-ae9e-c9e9feac2a75';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'ebe2a90f-3ad5-493c-ae9e-c9e9feac2a75' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Mendorong'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('ebe2a90f-3ad5-493c-ae9e-c9e9feac2a75', 'Mendorong', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'ebe2a90f-3ad5-493c-ae9e-c9e9feac2a75' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Menyarankan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('ebe2a90f-3ad5-493c-ae9e-c9e9feac2a75', 'Menyarankan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'ebe2a90f-3ad5-493c-ae9e-c9e9feac2a75' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Infer'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('ebe2a90f-3ad5-493c-ae9e-c9e9feac2a75', 'Infer', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'ebe2a90f-3ad5-493c-ae9e-c9e9feac2a75' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Guess'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('ebe2a90f-3ad5-493c-ae9e-c9e9feac2a75', 'Guess', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'ebe2a90f-3ad5-493c-ae9e-c9e9feac2a75' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Recommend'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('ebe2a90f-3ad5-493c-ae9e-c9e9feac2a75', 'Recommend', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'ebe2a90f-3ad5-493c-ae9e-c9e9feac2a75' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Inference'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('ebe2a90f-3ad5-493c-ae9e-c9e9feac2a75', 'Inference', false, true);
  END IF;

  -- [KANJI] 揮 (Level 34)
  UPDATE item_meanings SET meaning = 'Mengayunkan', primary_meaning = true, accepted_answer = true WHERE id = 'c10f707a-135b-4cc3-adbe-f8ec44804dca';
  UPDATE items SET slug = 'mengayunkan' WHERE id = 'c497a673-2abd-440d-9ae1-b35280008962';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'c497a673-2abd-440d-9ae1-b35280008962' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Mengomandoi'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('c497a673-2abd-440d-9ae1-b35280008962', 'Mengomandoi', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'c497a673-2abd-440d-9ae1-b35280008962' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Brandish'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('c497a673-2abd-440d-9ae1-b35280008962', 'Brandish', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'c497a673-2abd-440d-9ae1-b35280008962' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Wave'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('c497a673-2abd-440d-9ae1-b35280008962', 'Wave', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'c497a673-2abd-440d-9ae1-b35280008962' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Command'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('c497a673-2abd-440d-9ae1-b35280008962', 'Command', false, true);
  END IF;

  -- [KANJI] 損 (Level 34)
  UPDATE item_meanings SET meaning = 'Rugi', primary_meaning = true, accepted_answer = true WHERE id = '0beece6b-f470-44fb-a202-82ee4eb5df5b';
  UPDATE items SET slug = 'rugi' WHERE id = 'ff4ea084-0e28-4b9f-993e-9ba8710cd9f7';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'ff4ea084-0e28-4b9f-993e-9ba8710cd9f7' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Kerugian'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('ff4ea084-0e28-4b9f-993e-9ba8710cd9f7', 'Kerugian', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'ff4ea084-0e28-4b9f-993e-9ba8710cd9f7' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Kerusakan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('ff4ea084-0e28-4b9f-993e-9ba8710cd9f7', 'Kerusakan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'ff4ea084-0e28-4b9f-993e-9ba8710cd9f7' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Loss'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('ff4ea084-0e28-4b9f-993e-9ba8710cd9f7', 'Loss', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'ff4ea084-0e28-4b9f-993e-9ba8710cd9f7' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Damage'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('ff4ea084-0e28-4b9f-993e-9ba8710cd9f7', 'Damage', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'ff4ea084-0e28-4b9f-993e-9ba8710cd9f7' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Kehilangan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('ff4ea084-0e28-4b9f-993e-9ba8710cd9f7', 'Kehilangan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'ff4ea084-0e28-4b9f-993e-9ba8710cd9f7' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Break'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('ff4ea084-0e28-4b9f-993e-9ba8710cd9f7', 'Break', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'ff4ea084-0e28-4b9f-993e-9ba8710cd9f7' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Hurt'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('ff4ea084-0e28-4b9f-993e-9ba8710cd9f7', 'Hurt', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'ff4ea084-0e28-4b9f-993e-9ba8710cd9f7' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Terluka'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('ff4ea084-0e28-4b9f-993e-9ba8710cd9f7', 'Terluka', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'ff4ea084-0e28-4b9f-993e-9ba8710cd9f7' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Injure'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('ff4ea084-0e28-4b9f-993e-9ba8710cd9f7', 'Injure', false, true);
  END IF;

  -- [KANJI] 枝 (Level 34)
  UPDATE item_meanings SET meaning = 'Ranting', primary_meaning = true, accepted_answer = true WHERE id = '7eb9ce70-ae25-4934-820a-50fa2b25e0f0';
  UPDATE items SET slug = 'ranting' WHERE id = 'c88526fe-5011-493a-9785-25b9d5468282';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'c88526fe-5011-493a-9785-25b9d5468282' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Cabang Dahan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('c88526fe-5011-493a-9785-25b9d5468282', 'Cabang Dahan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'c88526fe-5011-493a-9785-25b9d5468282' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Branch'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('c88526fe-5011-493a-9785-25b9d5468282', 'Branch', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'c88526fe-5011-493a-9785-25b9d5468282' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Twig'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('c88526fe-5011-493a-9785-25b9d5468282', 'Twig', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'c88526fe-5011-493a-9785-25b9d5468282' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Cabang'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('c88526fe-5011-493a-9785-25b9d5468282', 'Cabang', false, true);
  END IF;

  -- [KANJI] 歓 (Level 34)
  UPDATE item_meanings SET meaning = 'Sukacita', primary_meaning = true, accepted_answer = true WHERE id = '701bf461-fca6-433b-bdf4-0330d3c6b86f';
  UPDATE items SET slug = 'sukacita' WHERE id = '234b0e90-1ad6-47e8-83da-b6df6aad50de';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '234b0e90-1ad6-47e8-83da-b6df6aad50de' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Kegembiraan Menyambut'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('234b0e90-1ad6-47e8-83da-b6df6aad50de', 'Kegembiraan Menyambut', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '234b0e90-1ad6-47e8-83da-b6df6aad50de' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Joy'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('234b0e90-1ad6-47e8-83da-b6df6aad50de', 'Joy', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '234b0e90-1ad6-47e8-83da-b6df6aad50de' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Delight'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('234b0e90-1ad6-47e8-83da-b6df6aad50de', 'Delight', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '234b0e90-1ad6-47e8-83da-b6df6aad50de' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Welcome'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('234b0e90-1ad6-47e8-83da-b6df6aad50de', 'Welcome', false, true);
  END IF;

  -- [KANJI] 沿 (Level 34)
  UPDATE item_meanings SET meaning = 'Menyusuri', primary_meaning = true, accepted_answer = true WHERE id = '4c6ba88c-a1a8-46d7-bbfc-850faf5520e8';
  UPDATE items SET slug = 'menyusuri' WHERE id = '2d5715b9-54ea-41ed-a1c5-c8710cc4c579';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '2d5715b9-54ea-41ed-a1c5-c8710cc4c579' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Sepanjang'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('2d5715b9-54ea-41ed-a1c5-c8710cc4c579', 'Sepanjang', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '2d5715b9-54ea-41ed-a1c5-c8710cc4c579' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Run Alongside'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('2d5715b9-54ea-41ed-a1c5-c8710cc4c579', 'Run Alongside', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '2d5715b9-54ea-41ed-a1c5-c8710cc4c579' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Along'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('2d5715b9-54ea-41ed-a1c5-c8710cc4c579', 'Along', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '2d5715b9-54ea-41ed-a1c5-c8710cc4c579' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Jalankan Bersamaan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('2d5715b9-54ea-41ed-a1c5-c8710cc4c579', 'Jalankan Bersamaan', false, true);
  END IF;

  -- [KANJI] 源 (Level 34)
  UPDATE item_meanings SET meaning = 'Mata Air', primary_meaning = true, accepted_answer = true WHERE id = 'b92616a0-6144-4f9d-a6f1-f73b6af4d409';
  UPDATE items SET slug = 'mata-air' WHERE id = '4072b24e-d60a-4246-9d17-50fc1dab4b47';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '4072b24e-d60a-4246-9d17-50fc1dab4b47' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Asal Mula'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('4072b24e-d60a-4246-9d17-50fc1dab4b47', 'Asal Mula', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '4072b24e-d60a-4246-9d17-50fc1dab4b47' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Sumber'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('4072b24e-d60a-4246-9d17-50fc1dab4b47', 'Sumber', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '4072b24e-d60a-4246-9d17-50fc1dab4b47' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Origin'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('4072b24e-d60a-4246-9d17-50fc1dab4b47', 'Origin', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '4072b24e-d60a-4246-9d17-50fc1dab4b47' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Source'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('4072b24e-d60a-4246-9d17-50fc1dab4b47', 'Source', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '4072b24e-d60a-4246-9d17-50fc1dab4b47' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Asal'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('4072b24e-d60a-4246-9d17-50fc1dab4b47', 'Asal', false, true);
  END IF;

  -- [KANJI] 爪 (Level 34)
  UPDATE item_meanings SET meaning = 'Kuku', primary_meaning = true, accepted_answer = true WHERE id = '729b128a-63e2-4eb0-9970-f99c76aba0d4';
  UPDATE items SET slug = 'kuku' WHERE id = '646745b6-86b0-48c7-ac85-c501a9d9d7f8';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '646745b6-86b0-48c7-ac85-c501a9d9d7f8' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Cakar'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('646745b6-86b0-48c7-ac85-c501a9d9d7f8', 'Cakar', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '646745b6-86b0-48c7-ac85-c501a9d9d7f8' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Nail'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('646745b6-86b0-48c7-ac85-c501a9d9d7f8', 'Nail', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '646745b6-86b0-48c7-ac85-c501a9d9d7f8' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Claw'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('646745b6-86b0-48c7-ac85-c501a9d9d7f8', 'Claw', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '646745b6-86b0-48c7-ac85-c501a9d9d7f8' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Paku'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('646745b6-86b0-48c7-ac85-c501a9d9d7f8', 'Paku', false, true);
  END IF;

  -- [KANJI] 痩 (Level 34)
  UPDATE item_meanings SET meaning = 'Kurus', primary_meaning = true, accepted_answer = true WHERE id = '14f893e5-544d-4947-b1f0-3fcb04d2cf80';
  UPDATE items SET slug = 'kurus' WHERE id = '3550bbb2-9b96-4969-bf44-230667df1ead';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '3550bbb2-9b96-4969-bf44-230667df1ead' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Menjadi Kurus'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('3550bbb2-9b96-4969-bf44-230667df1ead', 'Menjadi Kurus', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '3550bbb2-9b96-4969-bf44-230667df1ead' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Thin'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('3550bbb2-9b96-4969-bf44-230667df1ead', 'Thin', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '3550bbb2-9b96-4969-bf44-230667df1ead' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Lose Weight'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('3550bbb2-9b96-4969-bf44-230667df1ead', 'Lose Weight', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '3550bbb2-9b96-4969-bf44-230667df1ead' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Slim'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('3550bbb2-9b96-4969-bf44-230667df1ead', 'Slim', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '3550bbb2-9b96-4969-bf44-230667df1ead' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Tipis'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('3550bbb2-9b96-4969-bf44-230667df1ead', 'Tipis', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '3550bbb2-9b96-4969-bf44-230667df1ead' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Skinny'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('3550bbb2-9b96-4969-bf44-230667df1ead', 'Skinny', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '3550bbb2-9b96-4969-bf44-230667df1ead' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Slender'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('3550bbb2-9b96-4969-bf44-230667df1ead', 'Slender', false, true);
  END IF;

  -- [KANJI] 磁 (Level 34)
  UPDATE item_meanings SET meaning = 'Magnet', primary_meaning = true, accepted_answer = true WHERE id = '168bc843-7cad-4dd8-bf60-b6445514cc2a';
  UPDATE items SET slug = 'magnet' WHERE id = '64aefd88-fb5f-4626-8c65-93d530a133de';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '64aefd88-fb5f-4626-8c65-93d530a133de' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Kemagnetan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('64aefd88-fb5f-4626-8c65-93d530a133de', 'Kemagnetan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '64aefd88-fb5f-4626-8c65-93d530a133de' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Magnetic'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('64aefd88-fb5f-4626-8c65-93d530a133de', 'Magnetic', false, true);
  END IF;

  -- [KANJI] 粋 (Level 34)
  UPDATE item_meanings SET meaning = 'Elegan', primary_meaning = true, accepted_answer = true WHERE id = '63aca4b3-fa56-4eb7-bc4c-0755bc543d13';
  UPDATE items SET slug = 'elegan' WHERE id = '53058c61-199f-4d4c-8e96-b69d7832b972';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '53058c61-199f-4d4c-8e96-b69d7832b972' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Berkelas'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('53058c61-199f-4d4c-8e96-b69d7832b972', 'Berkelas', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '53058c61-199f-4d4c-8e96-b69d7832b972' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Murni'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('53058c61-199f-4d4c-8e96-b69d7832b972', 'Murni', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '53058c61-199f-4d4c-8e96-b69d7832b972' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Chic'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('53058c61-199f-4d4c-8e96-b69d7832b972', 'Chic', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '53058c61-199f-4d4c-8e96-b69d7832b972' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Stylish'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('53058c61-199f-4d4c-8e96-b69d7832b972', 'Stylish', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '53058c61-199f-4d4c-8e96-b69d7832b972' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Pure'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('53058c61-199f-4d4c-8e96-b69d7832b972', 'Pure', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '53058c61-199f-4d4c-8e96-b69d7832b972' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Bergaya'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('53058c61-199f-4d4c-8e96-b69d7832b972', 'Bergaya', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '53058c61-199f-4d4c-8e96-b69d7832b972' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Classy'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('53058c61-199f-4d4c-8e96-b69d7832b972', 'Classy', false, true);
  END IF;

  -- [KANJI] 紅 (Level 34)
  UPDATE item_meanings SET meaning = 'Merah Merona', primary_meaning = true, accepted_answer = true WHERE id = 'be21bbc3-2773-458f-9669-5170ff82dad2';
  UPDATE items SET slug = 'merah-merona' WHERE id = '6387800a-42f3-4f51-bb2c-80684da3fe4a';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '6387800a-42f3-4f51-bb2c-80684da3fe4a' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Merah Tua'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('6387800a-42f3-4f51-bb2c-80684da3fe4a', 'Merah Tua', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '6387800a-42f3-4f51-bb2c-80684da3fe4a' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Crimson'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('6387800a-42f3-4f51-bb2c-80684da3fe4a', 'Crimson', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '6387800a-42f3-4f51-bb2c-80684da3fe4a' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Deep Red'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('6387800a-42f3-4f51-bb2c-80684da3fe4a', 'Deep Red', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '6387800a-42f3-4f51-bb2c-80684da3fe4a' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Crimson Colour'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('6387800a-42f3-4f51-bb2c-80684da3fe4a', 'Crimson Colour', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '6387800a-42f3-4f51-bb2c-80684da3fe4a' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Color Dark Red'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('6387800a-42f3-4f51-bb2c-80684da3fe4a', 'Color Dark Red', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '6387800a-42f3-4f51-bb2c-80684da3fe4a' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Rouge'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('6387800a-42f3-4f51-bb2c-80684da3fe4a', 'Rouge', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '6387800a-42f3-4f51-bb2c-80684da3fe4a' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Colour Crimson'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('6387800a-42f3-4f51-bb2c-80684da3fe4a', 'Colour Crimson', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '6387800a-42f3-4f51-bb2c-80684da3fe4a' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Colour Dark Red'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('6387800a-42f3-4f51-bb2c-80684da3fe4a', 'Colour Dark Red', false, true);
  END IF;

  -- [KANJI] 純 (Level 34)
  UPDATE item_meanings SET meaning = 'Murni', primary_meaning = true, accepted_answer = true WHERE id = '29ff03e5-96b2-4360-b3aa-cdaaa7c9aee7';
  UPDATE items SET slug = 'murni' WHERE id = 'ee27905f-f0bb-424a-a8fc-fa7f995d0961';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'ee27905f-f0bb-424a-a8fc-fa7f995d0961' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Polos'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('ee27905f-f0bb-424a-a8fc-fa7f995d0961', 'Polos', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'ee27905f-f0bb-424a-a8fc-fa7f995d0961' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Tulen'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('ee27905f-f0bb-424a-a8fc-fa7f995d0961', 'Tulen', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'ee27905f-f0bb-424a-a8fc-fa7f995d0961' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Pure'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('ee27905f-f0bb-424a-a8fc-fa7f995d0961', 'Pure', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'ee27905f-f0bb-424a-a8fc-fa7f995d0961' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Genuine'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('ee27905f-f0bb-424a-a8fc-fa7f995d0961', 'Genuine', false, true);
  END IF;

  -- [KANJI] 縦 (Level 34)
  UPDATE item_meanings SET meaning = 'Vertikal', primary_meaning = true, accepted_answer = true WHERE id = '47094298-1c40-4c13-8acd-b1c1ae1a4144';
  UPDATE items SET slug = 'vertikal' WHERE id = '14471a78-1f44-4eb8-a9fb-285ed7100fb0';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '14471a78-1f44-4eb8-a9fb-285ed7100fb0' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Membujur'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('14471a78-1f44-4eb8-a9fb-285ed7100fb0', 'Membujur', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '14471a78-1f44-4eb8-a9fb-285ed7100fb0' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Vertical'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('14471a78-1f44-4eb8-a9fb-285ed7100fb0', 'Vertical', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '14471a78-1f44-4eb8-a9fb-285ed7100fb0' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Lengthwise'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('14471a78-1f44-4eb8-a9fb-285ed7100fb0', 'Lengthwise', false, true);
  END IF;

  -- [KANJI] 縮 (Level 34)
  UPDATE item_meanings SET meaning = 'Menyusut', primary_meaning = true, accepted_answer = true WHERE id = '7d49b918-7a49-4b42-8bcf-8fc226ad554f';
  UPDATE items SET slug = 'menyusut' WHERE id = '10de5e06-b585-41fa-a499-6c9986e8823c';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '10de5e06-b585-41fa-a499-6c9986e8823c' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Meringkas'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('10de5e06-b585-41fa-a499-6c9986e8823c', 'Meringkas', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '10de5e06-b585-41fa-a499-6c9986e8823c' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Shrink'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('10de5e06-b585-41fa-a499-6c9986e8823c', 'Shrink', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '10de5e06-b585-41fa-a499-6c9986e8823c' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Shorten'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('10de5e06-b585-41fa-a499-6c9986e8823c', 'Shorten', false, true);
  END IF;

  -- [KANJI] 聖 (Level 34)
  UPDATE item_meanings SET meaning = 'Suci', primary_meaning = true, accepted_answer = true WHERE id = 'bd8d42d1-e0dd-42ab-a487-5a82078cb048';
  UPDATE items SET slug = 'suci' WHERE id = '3f051cee-68b9-41bf-abf2-a7cd1d26df7b';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '3f051cee-68b9-41bf-abf2-a7cd1d26df7b' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Kudus'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('3f051cee-68b9-41bf-abf2-a7cd1d26df7b', 'Kudus', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '3f051cee-68b9-41bf-abf2-a7cd1d26df7b' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Holy'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('3f051cee-68b9-41bf-abf2-a7cd1d26df7b', 'Holy', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '3f051cee-68b9-41bf-abf2-a7cd1d26df7b' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Sacred'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('3f051cee-68b9-41bf-abf2-a7cd1d26df7b', 'Sacred', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '3f051cee-68b9-41bf-abf2-a7cd1d26df7b' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Saint'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('3f051cee-68b9-41bf-abf2-a7cd1d26df7b', 'Saint', false, true);
  END IF;

  -- [KANJI] 腐 (Level 34)
  UPDATE item_meanings SET meaning = 'Membusuk', primary_meaning = true, accepted_answer = true WHERE id = '5871e95a-c43d-4b51-ad3b-de23cf92c71b';
  UPDATE items SET slug = 'membusuk' WHERE id = 'fe244957-d73a-40c9-a4ef-8c4f207c13b4';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'fe244957-d73a-40c9-a4ef-8c4f207c13b4' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Lapuk'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('fe244957-d73a-40c9-a4ef-8c4f207c13b4', 'Lapuk', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'fe244957-d73a-40c9-a4ef-8c4f207c13b4' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Rot'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('fe244957-d73a-40c9-a4ef-8c4f207c13b4', 'Rot', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'fe244957-d73a-40c9-a4ef-8c4f207c13b4' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Decay'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('fe244957-d73a-40c9-a4ef-8c4f207c13b4', 'Decay', false, true);
  END IF;

  -- [KANJI] 薦 (Level 34)
  UPDATE item_meanings SET meaning = 'Menyarankan', primary_meaning = true, accepted_answer = true WHERE id = '8798b5f2-3e96-416d-bc13-d0c1c7f3ed31';
  UPDATE items SET slug = 'menyarankan' WHERE id = '06545af9-3882-45d0-b6a8-30ba84c31ac3';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '06545af9-3882-45d0-b6a8-30ba84c31ac3' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Merekomendasikan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('06545af9-3882-45d0-b6a8-30ba84c31ac3', 'Merekomendasikan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '06545af9-3882-45d0-b6a8-30ba84c31ac3' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Recommend'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('06545af9-3882-45d0-b6a8-30ba84c31ac3', 'Recommend', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '06545af9-3882-45d0-b6a8-30ba84c31ac3' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Recommendation'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('06545af9-3882-45d0-b6a8-30ba84c31ac3', 'Recommendation', false, true);
  END IF;

  -- [KANJI] 誤 (Level 34)
  UPDATE item_meanings SET meaning = 'Kesalahan', primary_meaning = true, accepted_answer = true WHERE id = '6a9b4942-7a66-4a27-8827-d34f33abd2e0';
  UPDATE items SET slug = 'kesalahan' WHERE id = 'a88532a5-880a-4e67-876f-6e863350c984';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'a88532a5-880a-4e67-876f-6e863350c984' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Keliru'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('a88532a5-880a-4e67-876f-6e863350c984', 'Keliru', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'a88532a5-880a-4e67-876f-6e863350c984' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Mistake'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('a88532a5-880a-4e67-876f-6e863350c984', 'Mistake', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'a88532a5-880a-4e67-876f-6e863350c984' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Error'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('a88532a5-880a-4e67-876f-6e863350c984', 'Error', false, true);
  END IF;

  -- [KANJI] 豆 (Level 34)
  UPDATE item_meanings SET meaning = 'Kacang', primary_meaning = true, accepted_answer = true WHERE id = 'bdadb018-077b-40e4-a8a0-bd3552c8779b';
  UPDATE items SET slug = 'kacang' WHERE id = '427921df-4c04-4845-ad16-21666a4a5f17';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '427921df-4c04-4845-ad16-21666a4a5f17' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Kedelai'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('427921df-4c04-4845-ad16-21666a4a5f17', 'Kedelai', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '427921df-4c04-4845-ad16-21666a4a5f17' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Beans'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('427921df-4c04-4845-ad16-21666a4a5f17', 'Beans', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '427921df-4c04-4845-ad16-21666a4a5f17' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Pea'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('427921df-4c04-4845-ad16-21666a4a5f17', 'Pea', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '427921df-4c04-4845-ad16-21666a4a5f17' AND LOWER(TRIM(meaning)) = LOWER(TRIM('kacang polong'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('427921df-4c04-4845-ad16-21666a4a5f17', 'kacang polong', false, true);
  END IF;

  -- [KANJI] 貴 (Level 34)
  UPDATE item_meanings SET meaning = 'Mulia', primary_meaning = true, accepted_answer = true WHERE id = 'fd708a3a-9bd7-4319-a35a-8a24c5225ed7';
  UPDATE items SET slug = 'mulia' WHERE id = '4078134a-ef43-408e-a351-a19e2dcd9b1a';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '4078134a-ef43-408e-a351-a19e2dcd9b1a' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Berharga'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('4078134a-ef43-408e-a351-a19e2dcd9b1a', 'Berharga', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '4078134a-ef43-408e-a351-a19e2dcd9b1a' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Bangsawan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('4078134a-ef43-408e-a351-a19e2dcd9b1a', 'Bangsawan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '4078134a-ef43-408e-a351-a19e2dcd9b1a' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Precious'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('4078134a-ef43-408e-a351-a19e2dcd9b1a', 'Precious', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '4078134a-ef43-408e-a351-a19e2dcd9b1a' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Noble'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('4078134a-ef43-408e-a351-a19e2dcd9b1a', 'Noble', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '4078134a-ef43-408e-a351-a19e2dcd9b1a' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Valuable'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('4078134a-ef43-408e-a351-a19e2dcd9b1a', 'Valuable', false, true);
  END IF;

  -- [KANJI] 隷 (Level 34)
  UPDATE item_meanings SET meaning = 'Budak', primary_meaning = true, accepted_answer = true WHERE id = '890d38ab-6b1d-45f3-8714-d2cdad803057';
  UPDATE items SET slug = 'budak' WHERE id = '0b1be327-fe3b-40ba-ac06-d0c690413d64';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '0b1be327-fe3b-40ba-ac06-d0c690413d64' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Diperbudak'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('0b1be327-fe3b-40ba-ac06-d0c690413d64', 'Diperbudak', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '0b1be327-fe3b-40ba-ac06-d0c690413d64' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Slave'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('0b1be327-fe3b-40ba-ac06-d0c690413d64', 'Slave', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '0b1be327-fe3b-40ba-ac06-d0c690413d64' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Servant'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('0b1be327-fe3b-40ba-ac06-d0c690413d64', 'Servant', false, true);
  END IF;

  -- [VOCABULARY] 不純 (Level 34)
  UPDATE item_meanings SET meaning = 'Tidak Murni', primary_meaning = true, accepted_answer = true WHERE id = '9e32d0c8-2044-4091-ba82-a29844d30fe4';
  UPDATE items SET slug = 'tidak-murni' WHERE id = '2e2990d3-7429-4c9d-81d2-c23a6f709028';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '2e2990d3-7429-4c9d-81d2-c23a6f709028' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Tercemar'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('2e2990d3-7429-4c9d-81d2-c23a6f709028', 'Tercemar', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '2e2990d3-7429-4c9d-81d2-c23a6f709028' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Keruh'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('2e2990d3-7429-4c9d-81d2-c23a6f709028', 'Keruh', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '2e2990d3-7429-4c9d-81d2-c23a6f709028' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Najis'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('2e2990d3-7429-4c9d-81d2-c23a6f709028', 'Najis', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '2e2990d3-7429-4c9d-81d2-c23a6f709028' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Impure'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('2e2990d3-7429-4c9d-81d2-c23a6f709028', 'Impure', false, true);
  END IF;

  -- [VOCABULARY] 丼 (Level 34)
  UPDATE item_meanings SET meaning = 'Mangkuk Donburi', primary_meaning = true, accepted_answer = true WHERE id = '0067ad98-9da1-46e7-b310-eeadb0e88583';
  UPDATE items SET slug = 'mangkuk-donburi' WHERE id = '7ce25b76-9c1d-4cb8-bded-81914ebb1823';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '7ce25b76-9c1d-4cb8-bded-81914ebb1823' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Nasi Mangkuk'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('7ce25b76-9c1d-4cb8-bded-81914ebb1823', 'Nasi Mangkuk', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '7ce25b76-9c1d-4cb8-bded-81914ebb1823' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Tempat nasi'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('7ce25b76-9c1d-4cb8-bded-81914ebb1823', 'Tempat nasi', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '7ce25b76-9c1d-4cb8-bded-81914ebb1823' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Donburi'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('7ce25b76-9c1d-4cb8-bded-81914ebb1823', 'Donburi', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '7ce25b76-9c1d-4cb8-bded-81914ebb1823' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Rice Bowl'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('7ce25b76-9c1d-4cb8-bded-81914ebb1823', 'Rice Bowl', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '7ce25b76-9c1d-4cb8-bded-81914ebb1823' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Donburi Bowl'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('7ce25b76-9c1d-4cb8-bded-81914ebb1823', 'Donburi Bowl', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '7ce25b76-9c1d-4cb8-bded-81914ebb1823' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Bowl'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('7ce25b76-9c1d-4cb8-bded-81914ebb1823', 'Bowl', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '7ce25b76-9c1d-4cb8-bded-81914ebb1823' AND LOWER(TRIM(meaning)) = LOWER(TRIM('China Bowl'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('7ce25b76-9c1d-4cb8-bded-81914ebb1823', 'China Bowl', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '7ce25b76-9c1d-4cb8-bded-81914ebb1823' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Chinaware Bowl'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('7ce25b76-9c1d-4cb8-bded-81914ebb1823', 'Chinaware Bowl', false, true);
  END IF;

  -- [VOCABULARY] 人込み (Level 34)
  UPDATE item_meanings SET meaning = 'Kerumunan Orang', primary_meaning = true, accepted_answer = true WHERE id = '6999bae2-0e3a-4d37-8532-7cd90f70fb9b';
  UPDATE items SET slug = 'kerumunan-orang' WHERE id = 'bf3425b0-9776-48da-a7d1-de90e4cc3b46';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'bf3425b0-9776-48da-a7d1-de90e4cc3b46' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Sesak Ramai'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('bf3425b0-9776-48da-a7d1-de90e4cc3b46', 'Sesak Ramai', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'bf3425b0-9776-48da-a7d1-de90e4cc3b46' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Crowd'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('bf3425b0-9776-48da-a7d1-de90e4cc3b46', 'Crowd', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'bf3425b0-9776-48da-a7d1-de90e4cc3b46' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Crowded'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('bf3425b0-9776-48da-a7d1-de90e4cc3b46', 'Crowded', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'bf3425b0-9776-48da-a7d1-de90e4cc3b46' AND LOWER(TRIM(meaning)) = LOWER(TRIM('A Crowd Of People'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('bf3425b0-9776-48da-a7d1-de90e4cc3b46', 'A Crowd Of People', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'bf3425b0-9776-48da-a7d1-de90e4cc3b46' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Crowded With People'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('bf3425b0-9776-48da-a7d1-de90e4cc3b46', 'Crowded With People', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'bf3425b0-9776-48da-a7d1-de90e4cc3b46' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Crowd Of People'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('bf3425b0-9776-48da-a7d1-de90e4cc3b46', 'Crowd Of People', false, true);
  END IF;

  -- [VOCABULARY] 傷つける (Level 34)
  UPDATE item_meanings SET meaning = 'Melukai', primary_meaning = true, accepted_answer = true WHERE id = 'f4c2f794-5ed1-467b-a14c-fbf04de3af49';
  UPDATE items SET slug = 'melukai' WHERE id = '1df4e67b-9119-4e03-9b0d-645aead3edb2';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '1df4e67b-9119-4e03-9b0d-645aead3edb2' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Menyakiti'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('1df4e67b-9119-4e03-9b0d-645aead3edb2', 'Menyakiti', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '1df4e67b-9119-4e03-9b0d-645aead3edb2' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Melukai Hati'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('1df4e67b-9119-4e03-9b0d-645aead3edb2', 'Melukai Hati', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '1df4e67b-9119-4e03-9b0d-645aead3edb2' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Wound'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('1df4e67b-9119-4e03-9b0d-645aead3edb2', 'To Wound', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '1df4e67b-9119-4e03-9b0d-645aead3edb2' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Hurt'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('1df4e67b-9119-4e03-9b0d-645aead3edb2', 'To Hurt', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '1df4e67b-9119-4e03-9b0d-645aead3edb2' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Menyakiti (Hati'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('1df4e67b-9119-4e03-9b0d-645aead3edb2', 'Menyakiti (Hati', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '1df4e67b-9119-4e03-9b0d-645aead3edb2' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Fisik)'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('1df4e67b-9119-4e03-9b0d-645aead3edb2', 'Fisik)', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '1df4e67b-9119-4e03-9b0d-645aead3edb2' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Untuk Menyakiti Seseorang'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('1df4e67b-9119-4e03-9b0d-645aead3edb2', 'Untuk Menyakiti Seseorang', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '1df4e67b-9119-4e03-9b0d-645aead3edb2' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Damage'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('1df4e67b-9119-4e03-9b0d-645aead3edb2', 'To Damage', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '1df4e67b-9119-4e03-9b0d-645aead3edb2' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Scratch Something'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('1df4e67b-9119-4e03-9b0d-645aead3edb2', 'To Scratch Something', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '1df4e67b-9119-4e03-9b0d-645aead3edb2' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Untuk Menggaruk'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('1df4e67b-9119-4e03-9b0d-645aead3edb2', 'Untuk Menggaruk', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '1df4e67b-9119-4e03-9b0d-645aead3edb2' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Untuk Merusak'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('1df4e67b-9119-4e03-9b0d-645aead3edb2', 'Untuk Merusak', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '1df4e67b-9119-4e03-9b0d-645aead3edb2' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Hurt Someone'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('1df4e67b-9119-4e03-9b0d-645aead3edb2', 'To Hurt Someone', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '1df4e67b-9119-4e03-9b0d-645aead3edb2' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Scratch'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('1df4e67b-9119-4e03-9b0d-645aead3edb2', 'To Scratch', false, true);
  END IF;

  -- [VOCABULARY] 傷む (Level 34)
  UPDATE item_meanings SET meaning = 'Rusak', primary_meaning = true, accepted_answer = true WHERE id = 'b1582d84-1a85-4441-b5a9-045b984f4efa';
  UPDATE items SET slug = 'rusak' WHERE id = 'd44aa1d8-900e-4fd2-84b7-d3eea3cd0b62';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'd44aa1d8-900e-4fd2-84b7-d3eea3cd0b62' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Membusuk'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('d44aa1d8-900e-4fd2-84b7-d3eea3cd0b62', 'Membusuk', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'd44aa1d8-900e-4fd2-84b7-d3eea3cd0b62' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Cacat'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('d44aa1d8-900e-4fd2-84b7-d3eea3cd0b62', 'Cacat', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'd44aa1d8-900e-4fd2-84b7-d3eea3cd0b62' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Be Damaged'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('d44aa1d8-900e-4fd2-84b7-d3eea3cd0b62', 'To Be Damaged', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'd44aa1d8-900e-4fd2-84b7-d3eea3cd0b62' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Menjadi Rusak'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('d44aa1d8-900e-4fd2-84b7-d3eea3cd0b62', 'Menjadi Rusak', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'd44aa1d8-900e-4fd2-84b7-d3eea3cd0b62' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Spoil'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('d44aa1d8-900e-4fd2-84b7-d3eea3cd0b62', 'To Spoil', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'd44aa1d8-900e-4fd2-84b7-d3eea3cd0b62' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Get Damaged'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('d44aa1d8-900e-4fd2-84b7-d3eea3cd0b62', 'To Get Damaged', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'd44aa1d8-900e-4fd2-84b7-d3eea3cd0b62' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Menjadi Buruk'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('d44aa1d8-900e-4fd2-84b7-d3eea3cd0b62', 'Menjadi Buruk', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'd44aa1d8-900e-4fd2-84b7-d3eea3cd0b62' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Untuk Merusak'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('d44aa1d8-900e-4fd2-84b7-d3eea3cd0b62', 'Untuk Merusak', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'd44aa1d8-900e-4fd2-84b7-d3eea3cd0b62' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Go Bad'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('d44aa1d8-900e-4fd2-84b7-d3eea3cd0b62', 'To Go Bad', false, true);
  END IF;

  -- [VOCABULARY] 兄貴 (Level 34)
  UPDATE item_meanings SET meaning = 'Abang', primary_meaning = true, accepted_answer = true WHERE id = '48521c15-ef40-4262-b153-48a6aa752d8b';
  UPDATE items SET slug = 'abang' WHERE id = 'f7da0e2e-f299-47fa-8a6c-f4cb7186af67';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'f7da0e2e-f299-47fa-8a6c-f4cb7186af67' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Kakak Laki-laki'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('f7da0e2e-f299-47fa-8a6c-f4cb7186af67', 'Kakak Laki-laki', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'f7da0e2e-f299-47fa-8a6c-f4cb7186af67' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Bro'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('f7da0e2e-f299-47fa-8a6c-f4cb7186af67', 'Bro', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'f7da0e2e-f299-47fa-8a6c-f4cb7186af67' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Kakak'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('f7da0e2e-f299-47fa-8a6c-f4cb7186af67', 'Kakak', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'f7da0e2e-f299-47fa-8a6c-f4cb7186af67' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Big Brother'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('f7da0e2e-f299-47fa-8a6c-f4cb7186af67', 'Big Brother', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'f7da0e2e-f299-47fa-8a6c-f4cb7186af67' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Older Brother'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('f7da0e2e-f299-47fa-8a6c-f4cb7186af67', 'Older Brother', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'f7da0e2e-f299-47fa-8a6c-f4cb7186af67' AND LOWER(TRIM(meaning)) = LOWER(TRIM('One''s Elder'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('f7da0e2e-f299-47fa-8a6c-f4cb7186af67', 'One''s Elder', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'f7da0e2e-f299-47fa-8a6c-f4cb7186af67' AND LOWER(TRIM(meaning)) = LOWER(TRIM('One''s Senior'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('f7da0e2e-f299-47fa-8a6c-f4cb7186af67', 'One''s Senior', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'f7da0e2e-f299-47fa-8a6c-f4cb7186af67' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Senior seseorang'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('f7da0e2e-f299-47fa-8a6c-f4cb7186af67', 'Senior seseorang', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'f7da0e2e-f299-47fa-8a6c-f4cb7186af67' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Brother'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('f7da0e2e-f299-47fa-8a6c-f4cb7186af67', 'Brother', false, true);
  END IF;

  -- [VOCABULARY] 刻む (Level 34)
  UPDATE item_meanings SET meaning = 'Mengiris Halus', primary_meaning = true, accepted_answer = true WHERE id = '41e665d2-3672-46bf-9735-de98ee78f408';
  UPDATE items SET slug = 'mengiris-halus' WHERE id = '88130306-246d-46d6-92e4-c7d9d85b182b';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '88130306-246d-46d6-92e4-c7d9d85b182b' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Mengukir'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('88130306-246d-46d6-92e4-c7d9d85b182b', 'Mengukir', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '88130306-246d-46d6-92e4-c7d9d85b182b' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Memahat'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('88130306-246d-46d6-92e4-c7d9d85b182b', 'Memahat', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '88130306-246d-46d6-92e4-c7d9d85b182b' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Untuk Mengukir'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('88130306-246d-46d6-92e4-c7d9d85b182b', 'Untuk Mengukir', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '88130306-246d-46d6-92e4-c7d9d85b182b' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Chop'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('88130306-246d-46d6-92e4-c7d9d85b182b', 'To Chop', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '88130306-246d-46d6-92e4-c7d9d85b182b' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Mince'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('88130306-246d-46d6-92e4-c7d9d85b182b', 'To Mince', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '88130306-246d-46d6-92e4-c7d9d85b182b' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Carve'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('88130306-246d-46d6-92e4-c7d9d85b182b', 'To Carve', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '88130306-246d-46d6-92e4-c7d9d85b182b' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Cut Up'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('88130306-246d-46d6-92e4-c7d9d85b182b', 'To Cut Up', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '88130306-246d-46d6-92e4-c7d9d85b182b' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Untuk Memotong'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('88130306-246d-46d6-92e4-c7d9d85b182b', 'Untuk Memotong', false, true);
  END IF;

  -- [VOCABULARY] 勤める (Level 34)
  UPDATE item_meanings SET meaning = 'Bekerja Di', primary_meaning = true, accepted_answer = true WHERE id = 'c9ed8550-4c01-4e57-b12e-3a4c89238b34';
  UPDATE items SET slug = 'bekerja-di' WHERE id = '1e1b221c-4bed-4a4d-a7d0-576511b458d0';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '1e1b221c-4bed-4a4d-a7d0-576511b458d0' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Mengabdi pada'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('1e1b221c-4bed-4a4d-a7d0-576511b458d0', 'Mengabdi pada', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '1e1b221c-4bed-4a4d-a7d0-576511b458d0' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Untuk Dipekerjakan Di'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('1e1b221c-4bed-4a4d-a7d0-576511b458d0', 'Untuk Dipekerjakan Di', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '1e1b221c-4bed-4a4d-a7d0-576511b458d0' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Work For'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('1e1b221c-4bed-4a4d-a7d0-576511b458d0', 'To Work For', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '1e1b221c-4bed-4a4d-a7d0-576511b458d0' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Be Employed At'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('1e1b221c-4bed-4a4d-a7d0-576511b458d0', 'To Be Employed At', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '1e1b221c-4bed-4a4d-a7d0-576511b458d0' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Untuk Bekerja'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('1e1b221c-4bed-4a4d-a7d0-576511b458d0', 'Untuk Bekerja', false, true);
  END IF;

  -- [VOCABULARY] 単純 (Level 34)
  UPDATE item_meanings SET meaning = 'Sederhana', primary_meaning = true, accepted_answer = true WHERE id = '60c762fe-0260-4741-8d02-0777dba737c0';
  UPDATE items SET slug = 'sederhana' WHERE id = 'a358fbbb-10dd-4b3e-9eac-07ec61d91363';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'a358fbbb-10dd-4b3e-9eac-07ec61d91363' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Polos'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('a358fbbb-10dd-4b3e-9eac-07ec61d91363', 'Polos', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'a358fbbb-10dd-4b3e-9eac-07ec61d91363' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Simpel'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('a358fbbb-10dd-4b3e-9eac-07ec61d91363', 'Simpel', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'a358fbbb-10dd-4b3e-9eac-07ec61d91363' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Simple'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('a358fbbb-10dd-4b3e-9eac-07ec61d91363', 'Simple', false, true);
  END IF;

  -- [VOCABULARY] 反射 (Level 34)
  UPDATE item_meanings SET meaning = 'Pantulan', primary_meaning = true, accepted_answer = true WHERE id = 'a41621cd-2a91-47d6-b1b5-55bd088f567e';
  UPDATE items SET slug = 'pantulan' WHERE id = 'f86fad8c-a39f-484d-80aa-37d27bfdc6b4';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'f86fad8c-a39f-484d-80aa-37d27bfdc6b4' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Refleksi'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('f86fad8c-a39f-484d-80aa-37d27bfdc6b4', 'Refleksi', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'f86fad8c-a39f-484d-80aa-37d27bfdc6b4' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Gerak Refleks'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('f86fad8c-a39f-484d-80aa-37d27bfdc6b4', 'Gerak Refleks', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'f86fad8c-a39f-484d-80aa-37d27bfdc6b4' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Cerminan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('f86fad8c-a39f-484d-80aa-37d27bfdc6b4', 'Cerminan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'f86fad8c-a39f-484d-80aa-37d27bfdc6b4' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Reflection'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('f86fad8c-a39f-484d-80aa-37d27bfdc6b4', 'Reflection', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'f86fad8c-a39f-484d-80aa-37d27bfdc6b4' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Reflex'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('f86fad8c-a39f-484d-80aa-37d27bfdc6b4', 'Reflex', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'f86fad8c-a39f-484d-80aa-37d27bfdc6b4' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Reflect'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('f86fad8c-a39f-484d-80aa-37d27bfdc6b4', 'Reflect', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'f86fad8c-a39f-484d-80aa-37d27bfdc6b4' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Reflecting'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('f86fad8c-a39f-484d-80aa-37d27bfdc6b4', 'Reflecting', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'f86fad8c-a39f-484d-80aa-37d27bfdc6b4' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Refleks'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('f86fad8c-a39f-484d-80aa-37d27bfdc6b4', 'Refleks', false, true);
  END IF;

  -- [VOCABULARY] 吐く (Level 34)
  UPDATE item_meanings SET meaning = 'Muntah', primary_meaning = true, accepted_answer = true WHERE id = 'aa9d27d5-64f7-44a4-b171-16fe572a4bb8';
  UPDATE items SET slug = 'muntah' WHERE id = 'dbf362ac-1f2f-48c3-840b-636a1b71507d';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'dbf362ac-1f2f-48c3-840b-636a1b71507d' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Meludah'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('dbf362ac-1f2f-48c3-840b-636a1b71507d', 'Meludah', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'dbf362ac-1f2f-48c3-840b-636a1b71507d' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Untuk Muntah'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('dbf362ac-1f2f-48c3-840b-636a1b71507d', 'Untuk Muntah', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'dbf362ac-1f2f-48c3-840b-636a1b71507d' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Vomit'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('dbf362ac-1f2f-48c3-840b-636a1b71507d', 'To Vomit', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'dbf362ac-1f2f-48c3-840b-636a1b71507d' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Spit'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('dbf362ac-1f2f-48c3-840b-636a1b71507d', 'To Spit', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'dbf362ac-1f2f-48c3-840b-636a1b71507d' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Puke'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('dbf362ac-1f2f-48c3-840b-636a1b71507d', 'To Puke', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'dbf362ac-1f2f-48c3-840b-636a1b71507d' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Spit Out'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('dbf362ac-1f2f-48c3-840b-636a1b71507d', 'To Spit Out', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'dbf362ac-1f2f-48c3-840b-636a1b71507d' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Barf'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('dbf362ac-1f2f-48c3-840b-636a1b71507d', 'To Barf', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'dbf362ac-1f2f-48c3-840b-636a1b71507d' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Untuk meludah'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('dbf362ac-1f2f-48c3-840b-636a1b71507d', 'Untuk meludah', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'dbf362ac-1f2f-48c3-840b-636a1b71507d' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Throw Up'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('dbf362ac-1f2f-48c3-840b-636a1b71507d', 'To Throw Up', false, true);
  END IF;

  -- [VOCABULARY] 大損 (Level 34)
  UPDATE item_meanings SET meaning = 'Kerugian Besar', primary_meaning = true, accepted_answer = true WHERE id = '4c54d97f-83e4-4b8a-9063-e6a59ae1d1ed';
  UPDATE items SET slug = 'kerugian-besar' WHERE id = 'a33311df-896c-425e-a91f-d7cf924196be';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'a33311df-896c-425e-a91f-d7cf924196be' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Rugi Bandar'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('a33311df-896c-425e-a91f-d7cf924196be', 'Rugi Bandar', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'a33311df-896c-425e-a91f-d7cf924196be' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Huge Loss'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('a33311df-896c-425e-a91f-d7cf924196be', 'Huge Loss', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'a33311df-896c-425e-a91f-d7cf924196be' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Big Loss'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('a33311df-896c-425e-a91f-d7cf924196be', 'Big Loss', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'a33311df-896c-425e-a91f-d7cf924196be' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Heavy Loss'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('a33311df-896c-425e-a91f-d7cf924196be', 'Heavy Loss', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'a33311df-896c-425e-a91f-d7cf924196be' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Great Loss'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('a33311df-896c-425e-a91f-d7cf924196be', 'Great Loss', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'a33311df-896c-425e-a91f-d7cf924196be' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Major Loss'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('a33311df-896c-425e-a91f-d7cf924196be', 'Major Loss', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'a33311df-896c-425e-a91f-d7cf924196be' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Enormous Loss'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('a33311df-896c-425e-a91f-d7cf924196be', 'Enormous Loss', false, true);
  END IF;

  -- [VOCABULARY] 奴 (Level 34)
  UPDATE item_meanings SET meaning = 'Orang Itu', primary_meaning = true, accepted_answer = true WHERE id = 'f5a66699-d9ab-4c7d-876c-6c5ca9f4da3e';
  UPDATE items SET slug = 'orang-itu' WHERE id = 'd35a6842-8a89-4bf3-a0f8-4baa5d9b571a';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'd35a6842-8a89-4bf3-a0f8-4baa5d9b571a' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Si Brengsek'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('d35a6842-8a89-4bf3-a0f8-4baa5d9b571a', 'Si Brengsek', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'd35a6842-8a89-4bf3-a0f8-4baa5d9b571a' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Bung'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('d35a6842-8a89-4bf3-a0f8-4baa5d9b571a', 'Bung', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'd35a6842-8a89-4bf3-a0f8-4baa5d9b571a' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Dude'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('d35a6842-8a89-4bf3-a0f8-4baa5d9b571a', 'Dude', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'd35a6842-8a89-4bf3-a0f8-4baa5d9b571a' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Guy'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('d35a6842-8a89-4bf3-a0f8-4baa5d9b571a', 'Guy', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'd35a6842-8a89-4bf3-a0f8-4baa5d9b571a' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Pria'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('d35a6842-8a89-4bf3-a0f8-4baa5d9b571a', 'Pria', false, true);
  END IF;

  -- [VOCABULARY] 承る (Level 34)
  UPDATE item_meanings SET meaning = 'Menerima', primary_meaning = true, accepted_answer = true WHERE id = 'c7163804-d6bc-45e0-96ab-d4d27dd1a59b';
  UPDATE items SET slug = 'menerima' WHERE id = '5f79fdec-0aa2-4d98-8055-8cd04b154f5d';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '5f79fdec-0aa2-4d98-8055-8cd04b154f5d' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Mendengarkan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('5f79fdec-0aa2-4d98-8055-8cd04b154f5d', 'Mendengarkan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '5f79fdec-0aa2-4d98-8055-8cd04b154f5d' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Memahami'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('5f79fdec-0aa2-4d98-8055-8cd04b154f5d', 'Memahami', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '5f79fdec-0aa2-4d98-8055-8cd04b154f5d' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Hear'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('5f79fdec-0aa2-4d98-8055-8cd04b154f5d', 'To Hear', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '5f79fdec-0aa2-4d98-8055-8cd04b154f5d' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Receive'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('5f79fdec-0aa2-4d98-8055-8cd04b154f5d', 'To Receive', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '5f79fdec-0aa2-4d98-8055-8cd04b154f5d' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Untuk Dengan Rendah Hati Mendengar'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('5f79fdec-0aa2-4d98-8055-8cd04b154f5d', 'Untuk Dengan Rendah Hati Mendengar', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '5f79fdec-0aa2-4d98-8055-8cd04b154f5d' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Humbly Hear'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('5f79fdec-0aa2-4d98-8055-8cd04b154f5d', 'To Humbly Hear', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '5f79fdec-0aa2-4d98-8055-8cd04b154f5d' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Accept'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('5f79fdec-0aa2-4d98-8055-8cd04b154f5d', 'To Accept', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '5f79fdec-0aa2-4d98-8055-8cd04b154f5d' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Consent'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('5f79fdec-0aa2-4d98-8055-8cd04b154f5d', 'To Consent', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '5f79fdec-0aa2-4d98-8055-8cd04b154f5d' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Untuk Menerima'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('5f79fdec-0aa2-4d98-8055-8cd04b154f5d', 'Untuk Menerima', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '5f79fdec-0aa2-4d98-8055-8cd04b154f5d' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Understand'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('5f79fdec-0aa2-4d98-8055-8cd04b154f5d', 'To Understand', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '5f79fdec-0aa2-4d98-8055-8cd04b154f5d' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Listen To'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('5f79fdec-0aa2-4d98-8055-8cd04b154f5d', 'To Listen To', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '5f79fdec-0aa2-4d98-8055-8cd04b154f5d' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Be Informed'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('5f79fdec-0aa2-4d98-8055-8cd04b154f5d', 'To Be Informed', false, true);
  END IF;

  -- [VOCABULARY] 承知 (Level 34)
  UPDATE item_meanings SET meaning = 'Mengerti', primary_meaning = true, accepted_answer = true WHERE id = '8e592ef0-294d-4e0c-b26a-95363121059f';
  UPDATE items SET slug = 'mengerti' WHERE id = '048480fb-76b0-4b8e-842e-449253161721';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '048480fb-76b0-4b8e-842e-449253161721' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Memahami'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('048480fb-76b0-4b8e-842e-449253161721', 'Memahami', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '048480fb-76b0-4b8e-842e-449253161721' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Menyetujui'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('048480fb-76b0-4b8e-842e-449253161721', 'Menyetujui', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '048480fb-76b0-4b8e-842e-449253161721' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Izin'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('048480fb-76b0-4b8e-842e-449253161721', 'Izin', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '048480fb-76b0-4b8e-842e-449253161721' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Consent'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('048480fb-76b0-4b8e-842e-449253161721', 'Consent', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '048480fb-76b0-4b8e-842e-449253161721' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Understand'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('048480fb-76b0-4b8e-842e-449253161721', 'Understand', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '048480fb-76b0-4b8e-842e-449253161721' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Aware'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('048480fb-76b0-4b8e-842e-449253161721', 'Aware', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '048480fb-76b0-4b8e-842e-449253161721' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Menyadari'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('048480fb-76b0-4b8e-842e-449253161721', 'Menyadari', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '048480fb-76b0-4b8e-842e-449253161721' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Know'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('048480fb-76b0-4b8e-842e-449253161721', 'Know', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '048480fb-76b0-4b8e-842e-449253161721' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Knowing'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('048480fb-76b0-4b8e-842e-449253161721', 'Knowing', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '048480fb-76b0-4b8e-842e-449253161721' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Consenting'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('048480fb-76b0-4b8e-842e-449253161721', 'Consenting', false, true);
  END IF;

  -- [VOCABULARY] 承認 (Level 34)
  UPDATE item_meanings SET meaning = 'Persetujuan Resmi', primary_meaning = true, accepted_answer = true WHERE id = '9d9a7c6f-6cc6-4c08-889d-ecf7f2c147f9';
  UPDATE items SET slug = 'persetujuan-resmi' WHERE id = 'b81ab5bc-57fd-4977-9dac-4f9f5d17d1a2';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'b81ab5bc-57fd-4977-9dac-4f9f5d17d1a2' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Pengesahan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('b81ab5bc-57fd-4977-9dac-4f9f5d17d1a2', 'Pengesahan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'b81ab5bc-57fd-4977-9dac-4f9f5d17d1a2' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Persetujuan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('b81ab5bc-57fd-4977-9dac-4f9f5d17d1a2', 'Persetujuan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'b81ab5bc-57fd-4977-9dac-4f9f5d17d1a2' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Approval'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('b81ab5bc-57fd-4977-9dac-4f9f5d17d1a2', 'Approval', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'b81ab5bc-57fd-4977-9dac-4f9f5d17d1a2' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Recognition'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('b81ab5bc-57fd-4977-9dac-4f9f5d17d1a2', 'Recognition', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'b81ab5bc-57fd-4977-9dac-4f9f5d17d1a2' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Consent'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('b81ab5bc-57fd-4977-9dac-4f9f5d17d1a2', 'Consent', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'b81ab5bc-57fd-4977-9dac-4f9f5d17d1a2' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Perjanjian'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('b81ab5bc-57fd-4977-9dac-4f9f5d17d1a2', 'Perjanjian', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'b81ab5bc-57fd-4977-9dac-4f9f5d17d1a2' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Agreement'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('b81ab5bc-57fd-4977-9dac-4f9f5d17d1a2', 'Agreement', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'b81ab5bc-57fd-4977-9dac-4f9f5d17d1a2' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Acknowledgement'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('b81ab5bc-57fd-4977-9dac-4f9f5d17d1a2', 'Acknowledgement', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'b81ab5bc-57fd-4977-9dac-4f9f5d17d1a2' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Pengakuan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('b81ab5bc-57fd-4977-9dac-4f9f5d17d1a2', 'Pengakuan', false, true);
  END IF;

  -- [VOCABULARY] 投げ捨てる (Level 34)
  UPDATE item_meanings SET meaning = 'Membuang Sembarangan', primary_meaning = true, accepted_answer = true WHERE id = '2ffb9cc8-83c8-43a6-bb80-3507f0399bac';
  UPDATE items SET slug = 'membuang-sembarangan' WHERE id = 'eefd72df-970d-46b4-9214-50e6b395d036';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'eefd72df-970d-46b4-9214-50e6b395d036' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Mencampakkan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('eefd72df-970d-46b4-9214-50e6b395d036', 'Mencampakkan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'eefd72df-970d-46b4-9214-50e6b395d036' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Untuk Membuang'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('eefd72df-970d-46b4-9214-50e6b395d036', 'Untuk Membuang', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'eefd72df-970d-46b4-9214-50e6b395d036' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Throw Away'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('eefd72df-970d-46b4-9214-50e6b395d036', 'To Throw Away', false, true);
  END IF;

  -- [VOCABULARY] 拝む (Level 34)
  UPDATE item_meanings SET meaning = 'Menyembah', primary_meaning = true, accepted_answer = true WHERE id = '71b9eada-4367-49a8-843d-60a99afefbf0';
  UPDATE items SET slug = 'menyembah' WHERE id = '2a3d3ae8-4122-47ab-902e-6b7e1a8cde04';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '2a3d3ae8-4122-47ab-902e-6b7e1a8cde04' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Berdoa Menyembah'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('2a3d3ae8-4122-47ab-902e-6b7e1a8cde04', 'Berdoa Menyembah', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '2a3d3ae8-4122-47ab-902e-6b7e1a8cde04' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Untuk Menyembah'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('2a3d3ae8-4122-47ab-902e-6b7e1a8cde04', 'Untuk Menyembah', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '2a3d3ae8-4122-47ab-902e-6b7e1a8cde04' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Worship'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('2a3d3ae8-4122-47ab-902e-6b7e1a8cde04', 'To Worship', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '2a3d3ae8-4122-47ab-902e-6b7e1a8cde04' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Pray To'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('2a3d3ae8-4122-47ab-902e-6b7e1a8cde04', 'To Pray To', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '2a3d3ae8-4122-47ab-902e-6b7e1a8cde04' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Untuk Berdoa Kepada'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('2a3d3ae8-4122-47ab-902e-6b7e1a8cde04', 'Untuk Berdoa Kepada', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '2a3d3ae8-4122-47ab-902e-6b7e1a8cde04' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Untuk Melihat'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('2a3d3ae8-4122-47ab-902e-6b7e1a8cde04', 'Untuk Melihat', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '2a3d3ae8-4122-47ab-902e-6b7e1a8cde04' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To See'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('2a3d3ae8-4122-47ab-902e-6b7e1a8cde04', 'To See', false, true);
  END IF;

  -- [VOCABULARY] 拝見する (Level 34)
  UPDATE item_meanings SET meaning = 'Melihat', primary_meaning = true, accepted_answer = true WHERE id = 'f31784ae-72e2-4c90-a690-3202a0afcb1a';
  UPDATE items SET slug = 'melihat' WHERE id = '0bfef757-4ac3-434a-845f-569cec395905';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '0bfef757-4ac3-434a-845f-569cec395905' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Menelaah'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('0bfef757-4ac3-434a-845f-569cec395905', 'Menelaah', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '0bfef757-4ac3-434a-845f-569cec395905' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Menonton'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('0bfef757-4ac3-434a-845f-569cec395905', 'Menonton', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '0bfef757-4ac3-434a-845f-569cec395905' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Look At'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('0bfef757-4ac3-434a-845f-569cec395905', 'To Look At', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '0bfef757-4ac3-434a-845f-569cec395905' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Untuk Dilihat'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('0bfef757-4ac3-434a-845f-569cec395905', 'Untuk Dilihat', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '0bfef757-4ac3-434a-845f-569cec395905' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To See'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('0bfef757-4ac3-434a-845f-569cec395905', 'To See', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '0bfef757-4ac3-434a-845f-569cec395905' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Untuk Melihat'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('0bfef757-4ac3-434a-845f-569cec395905', 'Untuk Melihat', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '0bfef757-4ac3-434a-845f-569cec395905' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Have A Look At'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('0bfef757-4ac3-434a-845f-569cec395905', 'To Have A Look At', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '0bfef757-4ac3-434a-845f-569cec395905' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Look At Something'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('0bfef757-4ac3-434a-845f-569cec395905', 'To Look At Something', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '0bfef757-4ac3-434a-845f-569cec395905' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To See Something'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('0bfef757-4ac3-434a-845f-569cec395905', 'To See Something', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '0bfef757-4ac3-434a-845f-569cec395905' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Have A Look At Something'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('0bfef757-4ac3-434a-845f-569cec395905', 'To Have A Look At Something', false, true);
  END IF;

  -- [VOCABULARY] 指揮 (Level 34)
  UPDATE item_meanings SET meaning = 'Memimpin', primary_meaning = true, accepted_answer = true WHERE id = '67347471-3538-406f-9af4-0b41e67d459b';
  UPDATE items SET slug = 'memimpin' WHERE id = 'e5800ea4-439a-4cec-8838-243c9a92c8db';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'e5800ea4-439a-4cec-8838-243c9a92c8db' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Mengomando'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('e5800ea4-439a-4cec-8838-243c9a92c8db', 'Mengomando', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'e5800ea4-439a-4cec-8838-243c9a92c8db' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Dirigen'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('e5800ea4-439a-4cec-8838-243c9a92c8db', 'Dirigen', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'e5800ea4-439a-4cec-8838-243c9a92c8db' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Memerintah'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('e5800ea4-439a-4cec-8838-243c9a92c8db', 'Memerintah', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'e5800ea4-439a-4cec-8838-243c9a92c8db' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Command'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('e5800ea4-439a-4cec-8838-243c9a92c8db', 'Command', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'e5800ea4-439a-4cec-8838-243c9a92c8db' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Direction'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('e5800ea4-439a-4cec-8838-243c9a92c8db', 'Direction', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'e5800ea4-439a-4cec-8838-243c9a92c8db' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Lead'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('e5800ea4-439a-4cec-8838-243c9a92c8db', 'Lead', false, true);
  END IF;

  -- [VOCABULARY] 推定 (Level 34)
  UPDATE item_meanings SET meaning = 'Perkiraan', primary_meaning = true, accepted_answer = true WHERE id = 'bc94c438-1f5e-467d-8386-7958aee906b5';
  UPDATE items SET slug = 'perkiraan' WHERE id = '78ab68d5-e15d-48dd-a08c-2b9cd32a100b';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '78ab68d5-e15d-48dd-a08c-2b9cd32a100b' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Estimasi'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('78ab68d5-e15d-48dd-a08c-2b9cd32a100b', 'Estimasi', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '78ab68d5-e15d-48dd-a08c-2b9cd32a100b' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Dugaan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('78ab68d5-e15d-48dd-a08c-2b9cd32a100b', 'Dugaan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '78ab68d5-e15d-48dd-a08c-2b9cd32a100b' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Estimate'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('78ab68d5-e15d-48dd-a08c-2b9cd32a100b', 'Estimate', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '78ab68d5-e15d-48dd-a08c-2b9cd32a100b' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Estimation'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('78ab68d5-e15d-48dd-a08c-2b9cd32a100b', 'Estimation', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '78ab68d5-e15d-48dd-a08c-2b9cd32a100b' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Supposing'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('78ab68d5-e15d-48dd-a08c-2b9cd32a100b', 'Supposing', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '78ab68d5-e15d-48dd-a08c-2b9cd32a100b' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Memperkirakan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('78ab68d5-e15d-48dd-a08c-2b9cd32a100b', 'Memperkirakan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '78ab68d5-e15d-48dd-a08c-2b9cd32a100b' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Estimating'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('78ab68d5-e15d-48dd-a08c-2b9cd32a100b', 'Estimating', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '78ab68d5-e15d-48dd-a08c-2b9cd32a100b' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Assume'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('78ab68d5-e15d-48dd-a08c-2b9cd32a100b', 'Assume', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '78ab68d5-e15d-48dd-a08c-2b9cd32a100b' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Assuming'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('78ab68d5-e15d-48dd-a08c-2b9cd32a100b', 'Assuming', false, true);
  END IF;

  -- [VOCABULARY] 推理 (Level 34)
  UPDATE item_meanings SET meaning = 'Penalaran', primary_meaning = true, accepted_answer = true WHERE id = '5239b412-e4d9-4f7b-876a-682017f0b66e';
  UPDATE items SET slug = 'penalaran' WHERE id = '933b4e61-1924-4273-89f6-ae40d0367b08';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '933b4e61-1924-4273-89f6-ae40d0367b08' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Deduksi'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('933b4e61-1924-4273-89f6-ae40d0367b08', 'Deduksi', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '933b4e61-1924-4273-89f6-ae40d0367b08' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Cerita Misteri'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('933b4e61-1924-4273-89f6-ae40d0367b08', 'Cerita Misteri', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '933b4e61-1924-4273-89f6-ae40d0367b08' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Pemikiran'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('933b4e61-1924-4273-89f6-ae40d0367b08', 'Pemikiran', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '933b4e61-1924-4273-89f6-ae40d0367b08' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Deduction'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('933b4e61-1924-4273-89f6-ae40d0367b08', 'Deduction', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '933b4e61-1924-4273-89f6-ae40d0367b08' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Reasoning'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('933b4e61-1924-4273-89f6-ae40d0367b08', 'Reasoning', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '933b4e61-1924-4273-89f6-ae40d0367b08' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Inference'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('933b4e61-1924-4273-89f6-ae40d0367b08', 'Inference', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '933b4e61-1924-4273-89f6-ae40d0367b08' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Deduce'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('933b4e61-1924-4273-89f6-ae40d0367b08', 'Deduce', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '933b4e61-1924-4273-89f6-ae40d0367b08' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Kesimpulan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('933b4e61-1924-4273-89f6-ae40d0367b08', 'Kesimpulan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '933b4e61-1924-4273-89f6-ae40d0367b08' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Reason'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('933b4e61-1924-4273-89f6-ae40d0367b08', 'Reason', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '933b4e61-1924-4273-89f6-ae40d0367b08' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Infer'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('933b4e61-1924-4273-89f6-ae40d0367b08', 'Infer', false, true);
  END IF;

  -- [VOCABULARY] 損 (Level 34)
  UPDATE item_meanings SET meaning = 'Rugi', primary_meaning = true, accepted_answer = true WHERE id = '678b7f6f-3b6f-4ea1-8eba-3c3f0da9bcd5';
  UPDATE items SET slug = 'rugi' WHERE id = 'ecc183ed-9fe0-4581-9d02-b4990914f9bf';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'ecc183ed-9fe0-4581-9d02-b4990914f9bf' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Kerugian'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('ecc183ed-9fe0-4581-9d02-b4990914f9bf', 'Kerugian', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'ecc183ed-9fe0-4581-9d02-b4990914f9bf' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Merugikan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('ecc183ed-9fe0-4581-9d02-b4990914f9bf', 'Merugikan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'ecc183ed-9fe0-4581-9d02-b4990914f9bf' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Loss'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('ecc183ed-9fe0-4581-9d02-b4990914f9bf', 'Loss', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'ecc183ed-9fe0-4581-9d02-b4990914f9bf' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Disadvantage'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('ecc183ed-9fe0-4581-9d02-b4990914f9bf', 'Disadvantage', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'ecc183ed-9fe0-4581-9d02-b4990914f9bf' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Unprofitable'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('ecc183ed-9fe0-4581-9d02-b4990914f9bf', 'Unprofitable', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'ecc183ed-9fe0-4581-9d02-b4990914f9bf' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Lose Money'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('ecc183ed-9fe0-4581-9d02-b4990914f9bf', 'Lose Money', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'ecc183ed-9fe0-4581-9d02-b4990914f9bf' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Losing'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('ecc183ed-9fe0-4581-9d02-b4990914f9bf', 'Losing', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'ecc183ed-9fe0-4581-9d02-b4990914f9bf' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Making A Loss'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('ecc183ed-9fe0-4581-9d02-b4990914f9bf', 'Making A Loss', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'ecc183ed-9fe0-4581-9d02-b4990914f9bf' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Handicap'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('ecc183ed-9fe0-4581-9d02-b4990914f9bf', 'Handicap', false, true);
  END IF;

  -- [VOCABULARY] 損なう (Level 34)
  UPDATE item_meanings SET meaning = 'Merusak', primary_meaning = true, accepted_answer = true WHERE id = 'cbab0bca-4f76-4cdf-8449-65f049f765b1';
  UPDATE items SET slug = 'merusak' WHERE id = '34dd86b3-b8d4-4e54-a9fa-400854effdfe';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '34dd86b3-b8d4-4e54-a9fa-400854effdfe' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Mencederai'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('34dd86b3-b8d4-4e54-a9fa-400854effdfe', 'Mencederai', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '34dd86b3-b8d4-4e54-a9fa-400854effdfe' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Merugikan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('34dd86b3-b8d4-4e54-a9fa-400854effdfe', 'Merugikan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '34dd86b3-b8d4-4e54-a9fa-400854effdfe' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Membahayakan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('34dd86b3-b8d4-4e54-a9fa-400854effdfe', 'Membahayakan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '34dd86b3-b8d4-4e54-a9fa-400854effdfe' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Damage'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('34dd86b3-b8d4-4e54-a9fa-400854effdfe', 'To Damage', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '34dd86b3-b8d4-4e54-a9fa-400854effdfe' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Harm'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('34dd86b3-b8d4-4e54-a9fa-400854effdfe', 'To Harm', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '34dd86b3-b8d4-4e54-a9fa-400854effdfe' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Ruin'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('34dd86b3-b8d4-4e54-a9fa-400854effdfe', 'To Ruin', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '34dd86b3-b8d4-4e54-a9fa-400854effdfe' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Spoil'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('34dd86b3-b8d4-4e54-a9fa-400854effdfe', 'To Spoil', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '34dd86b3-b8d4-4e54-a9fa-400854effdfe' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Ruin Something'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('34dd86b3-b8d4-4e54-a9fa-400854effdfe', 'To Ruin Something', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '34dd86b3-b8d4-4e54-a9fa-400854effdfe' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Damage Something'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('34dd86b3-b8d4-4e54-a9fa-400854effdfe', 'To Damage Something', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '34dd86b3-b8d4-4e54-a9fa-400854effdfe' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Injure Something'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('34dd86b3-b8d4-4e54-a9fa-400854effdfe', 'To Injure Something', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '34dd86b3-b8d4-4e54-a9fa-400854effdfe' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Injure'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('34dd86b3-b8d4-4e54-a9fa-400854effdfe', 'To Injure', false, true);
  END IF;

  -- [VOCABULARY] 損害 (Level 34)
  UPDATE item_meanings SET meaning = 'Kerugian Materiil', primary_meaning = true, accepted_answer = true WHERE id = 'decf9177-f5a6-4bf7-8226-52063ecd944f';
  UPDATE items SET slug = 'kerugian-materiil' WHERE id = '99738502-cd6a-4970-9425-1ad216e5031c';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '99738502-cd6a-4970-9425-1ad216e5031c' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Kerusakan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('99738502-cd6a-4970-9425-1ad216e5031c', 'Kerusakan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '99738502-cd6a-4970-9425-1ad216e5031c' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Damage'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('99738502-cd6a-4970-9425-1ad216e5031c', 'Damage', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '99738502-cd6a-4970-9425-1ad216e5031c' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Loss'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('99738502-cd6a-4970-9425-1ad216e5031c', 'Loss', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '99738502-cd6a-4970-9425-1ad216e5031c' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Injury'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('99738502-cd6a-4970-9425-1ad216e5031c', 'Injury', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '99738502-cd6a-4970-9425-1ad216e5031c' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Cedera'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('99738502-cd6a-4970-9425-1ad216e5031c', 'Cedera', false, true);
  END IF;

  -- [VOCABULARY] 放射 (Level 34)
  UPDATE item_meanings SET meaning = 'Pancaran Radiasi', primary_meaning = true, accepted_answer = true WHERE id = '79ea280d-31b2-41f7-af5c-d0cf8f37eb64';
  UPDATE items SET slug = 'pancaran-radiasi' WHERE id = '4235381f-8afa-47fa-8a13-6a6ddedee300';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '4235381f-8afa-47fa-8a13-6a6ddedee300' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Emisi'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('4235381f-8afa-47fa-8a13-6a6ddedee300', 'Emisi', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '4235381f-8afa-47fa-8a13-6a6ddedee300' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Radiasi'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('4235381f-8afa-47fa-8a13-6a6ddedee300', 'Radiasi', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '4235381f-8afa-47fa-8a13-6a6ddedee300' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Radiation'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('4235381f-8afa-47fa-8a13-6a6ddedee300', 'Radiation', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '4235381f-8afa-47fa-8a13-6a6ddedee300' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Emission'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('4235381f-8afa-47fa-8a13-6a6ddedee300', 'Emission', false, true);
  END IF;

  -- [VOCABULARY] 書き込む (Level 34)
  UPDATE item_meanings SET meaning = 'Menuliskan', primary_meaning = true, accepted_answer = true WHERE id = 'f0c0e5a4-98b4-492a-90c7-4f57469fadd8';
  UPDATE items SET slug = 'menuliskan' WHERE id = 'f0d0ce62-b58e-431c-bf6c-48d8c30abb0f';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'f0d0ce62-b58e-431c-bf6c-48d8c30abb0f' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Mengisi Formulir'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('f0d0ce62-b58e-431c-bf6c-48d8c30abb0f', 'Mengisi Formulir', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'f0d0ce62-b58e-431c-bf6c-48d8c30abb0f' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Untuk Menulis'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('f0d0ce62-b58e-431c-bf6c-48d8c30abb0f', 'Untuk Menulis', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'f0d0ce62-b58e-431c-bf6c-48d8c30abb0f' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Fill In'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('f0d0ce62-b58e-431c-bf6c-48d8c30abb0f', 'To Fill In', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'f0d0ce62-b58e-431c-bf6c-48d8c30abb0f' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Write In'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('f0d0ce62-b58e-431c-bf6c-48d8c30abb0f', 'To Write In', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'f0d0ce62-b58e-431c-bf6c-48d8c30abb0f' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Type In'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('f0d0ce62-b58e-431c-bf6c-48d8c30abb0f', 'To Type In', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'f0d0ce62-b58e-431c-bf6c-48d8c30abb0f' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Write'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('f0d0ce62-b58e-431c-bf6c-48d8c30abb0f', 'To Write', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'f0d0ce62-b58e-431c-bf6c-48d8c30abb0f' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Untuk Mengisi'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('f0d0ce62-b58e-431c-bf6c-48d8c30abb0f', 'Untuk Mengisi', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'f0d0ce62-b58e-431c-bf6c-48d8c30abb0f' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Jot Down In'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('f0d0ce62-b58e-431c-bf6c-48d8c30abb0f', 'To Jot Down In', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'f0d0ce62-b58e-431c-bf6c-48d8c30abb0f' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Fill Out'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('f0d0ce62-b58e-431c-bf6c-48d8c30abb0f', 'To Fill Out', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'f0d0ce62-b58e-431c-bf6c-48d8c30abb0f' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Jot Down'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('f0d0ce62-b58e-431c-bf6c-48d8c30abb0f', 'To Jot Down', false, true);
  END IF;

  -- [VOCABULARY] 染まる (Level 34)
  UPDATE item_meanings SET meaning = 'Tercelup Warna', primary_meaning = true, accepted_answer = true WHERE id = '557d320b-319e-4e1b-9613-421a685aed6b';
  UPDATE items SET slug = 'tercelup-warna' WHERE id = '087f2aaa-dd10-43e2-8273-15e829e026f9';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '087f2aaa-dd10-43e2-8273-15e829e026f9' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Terwarnai'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('087f2aaa-dd10-43e2-8273-15e829e026f9', 'Terwarnai', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '087f2aaa-dd10-43e2-8273-15e829e026f9' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Terpengaruh'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('087f2aaa-dd10-43e2-8273-15e829e026f9', 'Terpengaruh', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '087f2aaa-dd10-43e2-8273-15e829e026f9' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Untuk Dicelup'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('087f2aaa-dd10-43e2-8273-15e829e026f9', 'Untuk Dicelup', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '087f2aaa-dd10-43e2-8273-15e829e026f9' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Be Dyed'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('087f2aaa-dd10-43e2-8273-15e829e026f9', 'To Be Dyed', false, true);
  END IF;

  -- [VOCABULARY] 歓迎 (Level 34)
  UPDATE item_meanings SET meaning = 'Penyambutan Hangat', primary_meaning = true, accepted_answer = true WHERE id = '5a62e207-77cc-4732-a764-bfc11dd2b2dd';
  UPDATE items SET slug = 'penyambutan-hangat' WHERE id = '05ec44f7-a0f1-4bfe-b791-c9df090b5a1f';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '05ec44f7-a0f1-4bfe-b791-c9df090b5a1f' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Sambutan Selamat Datang'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('05ec44f7-a0f1-4bfe-b791-c9df090b5a1f', 'Sambutan Selamat Datang', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '05ec44f7-a0f1-4bfe-b791-c9df090b5a1f' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Selamat datang'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('05ec44f7-a0f1-4bfe-b791-c9df090b5a1f', 'Selamat datang', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '05ec44f7-a0f1-4bfe-b791-c9df090b5a1f' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Welcome'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('05ec44f7-a0f1-4bfe-b791-c9df090b5a1f', 'Welcome', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '05ec44f7-a0f1-4bfe-b791-c9df090b5a1f' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Welcoming'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('05ec44f7-a0f1-4bfe-b791-c9df090b5a1f', 'Welcoming', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '05ec44f7-a0f1-4bfe-b791-c9df090b5a1f' AND LOWER(TRIM(meaning)) = LOWER(TRIM('A Welcome'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('05ec44f7-a0f1-4bfe-b791-c9df090b5a1f', 'A Welcome', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '05ec44f7-a0f1-4bfe-b791-c9df090b5a1f' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Menyambut'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('05ec44f7-a0f1-4bfe-b791-c9df090b5a1f', 'Menyambut', false, true);
  END IF;

  -- [VOCABULARY] 汚す (Level 34)
  UPDATE item_meanings SET meaning = 'Mengotori', primary_meaning = true, accepted_answer = true WHERE id = 'b82a899e-31cf-4e93-96cb-58ee15a777ca';
  UPDATE items SET slug = 'mengotori' WHERE id = '54aeba41-60b8-4825-9b50-021df1663a2f';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '54aeba41-60b8-4825-9b50-021df1663a2f' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Menodai'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('54aeba41-60b8-4825-9b50-021df1663a2f', 'Menodai', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '54aeba41-60b8-4825-9b50-021df1663a2f' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Pollute'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('54aeba41-60b8-4825-9b50-021df1663a2f', 'To Pollute', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '54aeba41-60b8-4825-9b50-021df1663a2f' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Dirty'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('54aeba41-60b8-4825-9b50-021df1663a2f', 'To Dirty', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '54aeba41-60b8-4825-9b50-021df1663a2f' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Menodai (Nama Baik'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('54aeba41-60b8-4825-9b50-021df1663a2f', 'Menodai (Nama Baik', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '54aeba41-60b8-4825-9b50-021df1663a2f' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Benda)'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('54aeba41-60b8-4825-9b50-021df1663a2f', 'Benda)', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '54aeba41-60b8-4825-9b50-021df1663a2f' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Untuk Membuat Kotor'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('54aeba41-60b8-4825-9b50-021df1663a2f', 'Untuk Membuat Kotor', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '54aeba41-60b8-4825-9b50-021df1663a2f' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Defile'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('54aeba41-60b8-4825-9b50-021df1663a2f', 'To Defile', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '54aeba41-60b8-4825-9b50-021df1663a2f' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Disgrace'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('54aeba41-60b8-4825-9b50-021df1663a2f', 'To Disgrace', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '54aeba41-60b8-4825-9b50-021df1663a2f' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Make Something Dirty'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('54aeba41-60b8-4825-9b50-021df1663a2f', 'To Make Something Dirty', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '54aeba41-60b8-4825-9b50-021df1663a2f' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Make Dirty'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('54aeba41-60b8-4825-9b50-021df1663a2f', 'To Make Dirty', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '54aeba41-60b8-4825-9b50-021df1663a2f' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Untuk Membuat Sesuatu Kotor'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('54aeba41-60b8-4825-9b50-021df1663a2f', 'Untuk Membuat Sesuatu Kotor', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '54aeba41-60b8-4825-9b50-021df1663a2f' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Sully'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('54aeba41-60b8-4825-9b50-021df1663a2f', 'To Sully', false, true);
  END IF;

  -- [VOCABULARY] 沿う (Level 34)
  UPDATE item_meanings SET meaning = 'Menyusuri', primary_meaning = true, accepted_answer = true WHERE id = '936507a7-31cf-4c88-b80c-fb8d39946345';
  UPDATE items SET slug = 'menyusuri' WHERE id = 'd505fae8-2e77-4fca-b220-cf7bce9c92f8';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'd505fae8-2e77-4fca-b220-cf7bce9c92f8' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Mengikuti Sepanjang'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('d505fae8-2e77-4fca-b220-cf7bce9c92f8', 'Mengikuti Sepanjang', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'd505fae8-2e77-4fca-b220-cf7bce9c92f8' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Untuk Berlari Bersamaan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('d505fae8-2e77-4fca-b220-cf7bce9c92f8', 'Untuk Berlari Bersamaan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'd505fae8-2e77-4fca-b220-cf7bce9c92f8' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Run Along'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('d505fae8-2e77-4fca-b220-cf7bce9c92f8', 'To Run Along', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'd505fae8-2e77-4fca-b220-cf7bce9c92f8' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Follow'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('d505fae8-2e77-4fca-b220-cf7bce9c92f8', 'To Follow', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'd505fae8-2e77-4fca-b220-cf7bce9c92f8' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Run Alongside'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('d505fae8-2e77-4fca-b220-cf7bce9c92f8', 'To Run Alongside', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'd505fae8-2e77-4fca-b220-cf7bce9c92f8' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Untuk Menjalankan Paralel Ke'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('d505fae8-2e77-4fca-b220-cf7bce9c92f8', 'Untuk Menjalankan Paralel Ke', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'd505fae8-2e77-4fca-b220-cf7bce9c92f8' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Run Parallel To'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('d505fae8-2e77-4fca-b220-cf7bce9c92f8', 'To Run Parallel To', false, true);
  END IF;

  -- [VOCABULARY] 沿岸 (Level 34)
  UPDATE item_meanings SET meaning = 'Pesisir Pantai', primary_meaning = true, accepted_answer = true WHERE id = '0fa67842-cc84-484a-921c-3064ca871cf3';
  UPDATE items SET slug = 'pesisir-pantai' WHERE id = '3d3f81b2-1a67-42bc-b8e1-911637014598';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '3d3f81b2-1a67-42bc-b8e1-911637014598' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Garis Pantai'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('3d3f81b2-1a67-42bc-b8e1-911637014598', 'Garis Pantai', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '3d3f81b2-1a67-42bc-b8e1-911637014598' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Pesisir'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('3d3f81b2-1a67-42bc-b8e1-911637014598', 'Pesisir', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '3d3f81b2-1a67-42bc-b8e1-911637014598' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Coast'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('3d3f81b2-1a67-42bc-b8e1-911637014598', 'Coast', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '3d3f81b2-1a67-42bc-b8e1-911637014598' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Shore'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('3d3f81b2-1a67-42bc-b8e1-911637014598', 'Shore', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '3d3f81b2-1a67-42bc-b8e1-911637014598' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Pantai'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('3d3f81b2-1a67-42bc-b8e1-911637014598', 'Pantai', false, true);
  END IF;

  -- [VOCABULARY] 注射 (Level 34)
  UPDATE item_meanings SET meaning = 'Suntikan', primary_meaning = true, accepted_answer = true WHERE id = 'a482bec7-3413-4c9c-bd35-7fabc8afa0e4';
  UPDATE items SET slug = 'suntikan' WHERE id = 'f3569c3e-6c8e-44c7-964f-0f9c71458c1c';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'f3569c3e-6c8e-44c7-964f-0f9c71458c1c' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Injeksi Medis'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('f3569c3e-6c8e-44c7-964f-0f9c71458c1c', 'Injeksi Medis', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'f3569c3e-6c8e-44c7-964f-0f9c71458c1c' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Tembakan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('f3569c3e-6c8e-44c7-964f-0f9c71458c1c', 'Tembakan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'f3569c3e-6c8e-44c7-964f-0f9c71458c1c' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Injection'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('f3569c3e-6c8e-44c7-964f-0f9c71458c1c', 'Injection', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'f3569c3e-6c8e-44c7-964f-0f9c71458c1c' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Shot'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('f3569c3e-6c8e-44c7-964f-0f9c71458c1c', 'Shot', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'f3569c3e-6c8e-44c7-964f-0f9c71458c1c' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Injeksi'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('f3569c3e-6c8e-44c7-964f-0f9c71458c1c', 'Injeksi', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'f3569c3e-6c8e-44c7-964f-0f9c71458c1c' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Jab'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('f3569c3e-6c8e-44c7-964f-0f9c71458c1c', 'Jab', false, true);
  END IF;

  -- [VOCABULARY] 深刻 (Level 34)
  UPDATE item_meanings SET meaning = 'Genting', primary_meaning = true, accepted_answer = true WHERE id = '97de0409-3a82-4bfa-b3df-193582e99cf9';
  UPDATE items SET slug = 'genting' WHERE id = '98b12a95-2f5c-455e-8814-4b951bca5722';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '98b12a95-2f5c-455e-8814-4b951bca5722' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Sangat Serius'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('98b12a95-2f5c-455e-8814-4b951bca5722', 'Sangat Serius', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '98b12a95-2f5c-455e-8814-4b951bca5722' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Serius'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('98b12a95-2f5c-455e-8814-4b951bca5722', 'Serius', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '98b12a95-2f5c-455e-8814-4b951bca5722' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Serious'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('98b12a95-2f5c-455e-8814-4b951bca5722', 'Serious', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '98b12a95-2f5c-455e-8814-4b951bca5722' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Grave'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('98b12a95-2f5c-455e-8814-4b951bca5722', 'Grave', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '98b12a95-2f5c-455e-8814-4b951bca5722' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Kuburan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('98b12a95-2f5c-455e-8814-4b951bca5722', 'Kuburan', false, true);
  END IF;

  -- [VOCABULARY] 爪 (Level 34)
  UPDATE item_meanings SET meaning = 'Kuku', primary_meaning = true, accepted_answer = true WHERE id = '9d216755-8611-4251-a70c-f24a6aad89e9';
  UPDATE items SET slug = 'kuku' WHERE id = '0e809041-9da0-4158-a40b-dee3bb6cf4d5';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '0e809041-9da0-4158-a40b-dee3bb6cf4d5' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Cakar'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('0e809041-9da0-4158-a40b-dee3bb6cf4d5', 'Cakar', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '0e809041-9da0-4158-a40b-dee3bb6cf4d5' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Claw'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('0e809041-9da0-4158-a40b-dee3bb6cf4d5', 'Claw', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '0e809041-9da0-4158-a40b-dee3bb6cf4d5' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Nail'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('0e809041-9da0-4158-a40b-dee3bb6cf4d5', 'Nail', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '0e809041-9da0-4158-a40b-dee3bb6cf4d5' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Menerjang'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('0e809041-9da0-4158-a40b-dee3bb6cf4d5', 'Menerjang', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '0e809041-9da0-4158-a40b-dee3bb6cf4d5' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Talon'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('0e809041-9da0-4158-a40b-dee3bb6cf4d5', 'Talon', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '0e809041-9da0-4158-a40b-dee3bb6cf4d5' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Paku'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('0e809041-9da0-4158-a40b-dee3bb6cf4d5', 'Paku', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '0e809041-9da0-4158-a40b-dee3bb6cf4d5' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Hoof'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('0e809041-9da0-4158-a40b-dee3bb6cf4d5', 'Hoof', false, true);
  END IF;

  -- [VOCABULARY] 物真似 (Level 34)
  UPDATE item_meanings SET meaning = 'Peniruan Tokoh', primary_meaning = true, accepted_answer = true WHERE id = 'ab4e70b4-fae2-4bc5-9cd0-70c4646d3254';
  UPDATE items SET slug = 'peniruan-tokoh' WHERE id = '753e5c65-5f78-4365-9a1b-f8f88a5e56cd';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '753e5c65-5f78-4365-9a1b-f8f88a5e56cd' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Impersonasi'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('753e5c65-5f78-4365-9a1b-f8f88a5e56cd', 'Impersonasi', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '753e5c65-5f78-4365-9a1b-f8f88a5e56cd' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Peniruan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('753e5c65-5f78-4365-9a1b-f8f88a5e56cd', 'Peniruan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '753e5c65-5f78-4365-9a1b-f8f88a5e56cd' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Impersonation'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('753e5c65-5f78-4365-9a1b-f8f88a5e56cd', 'Impersonation', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '753e5c65-5f78-4365-9a1b-f8f88a5e56cd' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Imitation'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('753e5c65-5f78-4365-9a1b-f8f88a5e56cd', 'Imitation', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '753e5c65-5f78-4365-9a1b-f8f88a5e56cd' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Impression'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('753e5c65-5f78-4365-9a1b-f8f88a5e56cd', 'Impression', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '753e5c65-5f78-4365-9a1b-f8f88a5e56cd' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Imitasi'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('753e5c65-5f78-4365-9a1b-f8f88a5e56cd', 'Imitasi', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '753e5c65-5f78-4365-9a1b-f8f88a5e56cd' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Mimicry'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('753e5c65-5f78-4365-9a1b-f8f88a5e56cd', 'Mimicry', false, true);
  END IF;

  -- [VOCABULARY] 申し込む (Level 34)
  UPDATE item_meanings SET meaning = 'Mendaftar', primary_meaning = true, accepted_answer = true WHERE id = 'c128414d-35ae-489f-9a9d-2e1a437f24d2';
  UPDATE items SET slug = 'mendaftar' WHERE id = '722a6e6a-61f4-49c9-85d5-2c0d2951cfad';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '722a6e6a-61f4-49c9-85d5-2c0d2951cfad' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Mengajukan Lamaran'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('722a6e6a-61f4-49c9-85d5-2c0d2951cfad', 'Mengajukan Lamaran', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '722a6e6a-61f4-49c9-85d5-2c0d2951cfad' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Untuk Melamar'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('722a6e6a-61f4-49c9-85d5-2c0d2951cfad', 'Untuk Melamar', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '722a6e6a-61f4-49c9-85d5-2c0d2951cfad' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Apply For'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('722a6e6a-61f4-49c9-85d5-2c0d2951cfad', 'To Apply For', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '722a6e6a-61f4-49c9-85d5-2c0d2951cfad' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Propose'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('722a6e6a-61f4-49c9-85d5-2c0d2951cfad', 'To Propose', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '722a6e6a-61f4-49c9-85d5-2c0d2951cfad' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Apply To'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('722a6e6a-61f4-49c9-85d5-2c0d2951cfad', 'To Apply To', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '722a6e6a-61f4-49c9-85d5-2c0d2951cfad' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Offer Something'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('722a6e6a-61f4-49c9-85d5-2c0d2951cfad', 'To Offer Something', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '722a6e6a-61f4-49c9-85d5-2c0d2951cfad' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Propose Something'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('722a6e6a-61f4-49c9-85d5-2c0d2951cfad', 'To Propose Something', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '722a6e6a-61f4-49c9-85d5-2c0d2951cfad' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Offer'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('722a6e6a-61f4-49c9-85d5-2c0d2951cfad', 'To Offer', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '722a6e6a-61f4-49c9-85d5-2c0d2951cfad' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Untuk Mengirimkan Lamaran'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('722a6e6a-61f4-49c9-85d5-2c0d2951cfad', 'Untuk Mengirimkan Lamaran', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '722a6e6a-61f4-49c9-85d5-2c0d2951cfad' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Apply'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('722a6e6a-61f4-49c9-85d5-2c0d2951cfad', 'To Apply', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '722a6e6a-61f4-49c9-85d5-2c0d2951cfad' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Submit An Application'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('722a6e6a-61f4-49c9-85d5-2c0d2951cfad', 'To Submit An Application', false, true);
  END IF;

  -- [VOCABULARY] 痩せる (Level 34)
  UPDATE item_meanings SET meaning = 'Menjadi Kurus', primary_meaning = true, accepted_answer = true WHERE id = 'd140bcab-4372-4488-b15a-f1a94b494032';
  UPDATE items SET slug = 'menjadi-kurus' WHERE id = '64740fa7-4c42-4398-871e-6b456d30b9ad';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '64740fa7-4c42-4398-871e-6b456d30b9ad' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Menurunkan Berat Badan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('64740fa7-4c42-4398-871e-6b456d30b9ad', 'Menurunkan Berat Badan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '64740fa7-4c42-4398-871e-6b456d30b9ad' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Lose Weight'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('64740fa7-4c42-4398-871e-6b456d30b9ad', 'To Lose Weight', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '64740fa7-4c42-4398-871e-6b456d30b9ad' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Get Thin'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('64740fa7-4c42-4398-871e-6b456d30b9ad', 'To Get Thin', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '64740fa7-4c42-4398-871e-6b456d30b9ad' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Untuk Menurunkan Berat Badan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('64740fa7-4c42-4398-871e-6b456d30b9ad', 'Untuk Menurunkan Berat Badan', false, true);
  END IF;

  -- [VOCABULARY] 痩身 (Level 34)
  UPDATE item_meanings SET meaning = 'Tubuh Ramping', primary_meaning = true, accepted_answer = true WHERE id = 'd4d27173-183a-4783-b83a-f7811b47f495';
  UPDATE items SET slug = 'tubuh-ramping' WHERE id = '891ce7dd-7b9f-4899-887e-375c86487aac';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '891ce7dd-7b9f-4899-887e-375c86487aac' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Melangsingkan Badan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('891ce7dd-7b9f-4899-887e-375c86487aac', 'Melangsingkan Badan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '891ce7dd-7b9f-4899-887e-375c86487aac' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Bersandar'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('891ce7dd-7b9f-4899-887e-375c86487aac', 'Bersandar', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '891ce7dd-7b9f-4899-887e-375c86487aac' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Slimming Down'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('891ce7dd-7b9f-4899-887e-375c86487aac', 'Slimming Down', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '891ce7dd-7b9f-4899-887e-375c86487aac' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Slender'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('891ce7dd-7b9f-4899-887e-375c86487aac', 'Slender', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '891ce7dd-7b9f-4899-887e-375c86487aac' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Yg melangsingkan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('891ce7dd-7b9f-4899-887e-375c86487aac', 'Yg melangsingkan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '891ce7dd-7b9f-4899-887e-375c86487aac' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Thin'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('891ce7dd-7b9f-4899-887e-375c86487aac', 'Thin', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '891ce7dd-7b9f-4899-887e-375c86487aac' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Slim Down'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('891ce7dd-7b9f-4899-887e-375c86487aac', 'Slim Down', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '891ce7dd-7b9f-4899-887e-375c86487aac' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Slimming'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('891ce7dd-7b9f-4899-887e-375c86487aac', 'Slimming', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '891ce7dd-7b9f-4899-887e-375c86487aac' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Langsing'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('891ce7dd-7b9f-4899-887e-375c86487aac', 'Langsing', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '891ce7dd-7b9f-4899-887e-375c86487aac' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Lean'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('891ce7dd-7b9f-4899-887e-375c86487aac', 'Lean', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '891ce7dd-7b9f-4899-887e-375c86487aac' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Slim'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('891ce7dd-7b9f-4899-887e-375c86487aac', 'Slim', false, true);
  END IF;

  -- [VOCABULARY] 発射する (Level 34)
  UPDATE item_meanings SET meaning = 'Meluncurkan', primary_meaning = true, accepted_answer = true WHERE id = '83ea9a03-798d-47da-a4c4-15c6e30d7e25';
  UPDATE items SET slug = 'meluncurkan' WHERE id = '9e30cd8d-2d7f-45ec-9ac5-61fb5d74f0e0';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '9e30cd8d-2d7f-45ec-9ac5-61fb5d74f0e0' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Menembakkan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('9e30cd8d-2d7f-45ec-9ac5-61fb5d74f0e0', 'Menembakkan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '9e30cd8d-2d7f-45ec-9ac5-61fb5d74f0e0' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Launch'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('9e30cd8d-2d7f-45ec-9ac5-61fb5d74f0e0', 'To Launch', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '9e30cd8d-2d7f-45ec-9ac5-61fb5d74f0e0' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Fire'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('9e30cd8d-2d7f-45ec-9ac5-61fb5d74f0e0', 'To Fire', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '9e30cd8d-2d7f-45ec-9ac5-61fb5d74f0e0' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Menembakkan (Roket'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('9e30cd8d-2d7f-45ec-9ac5-61fb5d74f0e0', 'Menembakkan (Roket', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '9e30cd8d-2d7f-45ec-9ac5-61fb5d74f0e0' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Peluru)'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('9e30cd8d-2d7f-45ec-9ac5-61fb5d74f0e0', 'Peluru)', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '9e30cd8d-2d7f-45ec-9ac5-61fb5d74f0e0' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Untuk Meluncurkan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('9e30cd8d-2d7f-45ec-9ac5-61fb5d74f0e0', 'Untuk Meluncurkan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '9e30cd8d-2d7f-45ec-9ac5-61fb5d74f0e0' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Discharge'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('9e30cd8d-2d7f-45ec-9ac5-61fb5d74f0e0', 'To Discharge', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '9e30cd8d-2d7f-45ec-9ac5-61fb5d74f0e0' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Shoot'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('9e30cd8d-2d7f-45ec-9ac5-61fb5d74f0e0', 'To Shoot', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '9e30cd8d-2d7f-45ec-9ac5-61fb5d74f0e0' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Untuk Menembak'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('9e30cd8d-2d7f-45ec-9ac5-61fb5d74f0e0', 'Untuk Menembak', false, true);
  END IF;

  -- [VOCABULARY] 発揮する (Level 34)
  UPDATE item_meanings SET meaning = 'Mengerahkan', primary_meaning = true, accepted_answer = true WHERE id = '92e833f1-0a1b-4295-ad1b-2350d7bff851';
  UPDATE items SET slug = 'mengerahkan' WHERE id = 'eaec3201-eeb9-4566-81c5-6112679d18f4';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'eaec3201-eeb9-4566-81c5-6112679d18f4' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Menunjukkan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('eaec3201-eeb9-4566-81c5-6112679d18f4', 'Menunjukkan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'eaec3201-eeb9-4566-81c5-6112679d18f4' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Menampilkan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('eaec3201-eeb9-4566-81c5-6112679d18f4', 'Menampilkan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'eaec3201-eeb9-4566-81c5-6112679d18f4' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Display'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('eaec3201-eeb9-4566-81c5-6112679d18f4', 'To Display', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'eaec3201-eeb9-4566-81c5-6112679d18f4' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Exhibit'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('eaec3201-eeb9-4566-81c5-6112679d18f4', 'To Exhibit', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'eaec3201-eeb9-4566-81c5-6112679d18f4' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Untuk Memamerkan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('eaec3201-eeb9-4566-81c5-6112679d18f4', 'Untuk Memamerkan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'eaec3201-eeb9-4566-81c5-6112679d18f4' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Demonstrate'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('eaec3201-eeb9-4566-81c5-6112679d18f4', 'To Demonstrate', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'eaec3201-eeb9-4566-81c5-6112679d18f4' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Showcase'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('eaec3201-eeb9-4566-81c5-6112679d18f4', 'To Showcase', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'eaec3201-eeb9-4566-81c5-6112679d18f4' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Show'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('eaec3201-eeb9-4566-81c5-6112679d18f4', 'To Show', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'eaec3201-eeb9-4566-81c5-6112679d18f4' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Bring Out'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('eaec3201-eeb9-4566-81c5-6112679d18f4', 'To Bring Out', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'eaec3201-eeb9-4566-81c5-6112679d18f4' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Untuk Membawa Keluar'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('eaec3201-eeb9-4566-81c5-6112679d18f4', 'Untuk Membawa Keluar', false, true);
  END IF;

  -- [VOCABULARY] 磁気 (Level 34)
  UPDATE item_meanings SET meaning = 'Daya Magnet', primary_meaning = true, accepted_answer = true WHERE id = '779fcdc5-c375-4e53-904e-bcf67d43c211';
  UPDATE items SET slug = 'daya-magnet' WHERE id = '5c27f39a-ecaa-46d8-b05c-6ea2e2d1616e';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '5c27f39a-ecaa-46d8-b05c-6ea2e2d1616e' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Kemagnetan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('5c27f39a-ecaa-46d8-b05c-6ea2e2d1616e', 'Kemagnetan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '5c27f39a-ecaa-46d8-b05c-6ea2e2d1616e' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Daya tarik'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('5c27f39a-ecaa-46d8-b05c-6ea2e2d1616e', 'Daya tarik', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '5c27f39a-ecaa-46d8-b05c-6ea2e2d1616e' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Magnetism'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('5c27f39a-ecaa-46d8-b05c-6ea2e2d1616e', 'Magnetism', false, true);
  END IF;

  -- [VOCABULARY] 磁石 (Level 34)
  UPDATE item_meanings SET meaning = 'Batu Magnet', primary_meaning = true, accepted_answer = true WHERE id = 'c7790441-6e88-4384-b229-aff74ea73078';
  UPDATE items SET slug = 'batu-magnet' WHERE id = 'ef66cd16-66f0-4f30-b287-ecbc48f48f0e';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'ef66cd16-66f0-4f30-b287-ecbc48f48f0e' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Magnet'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('ef66cd16-66f0-4f30-b287-ecbc48f48f0e', 'Magnet', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'ef66cd16-66f0-4f30-b287-ecbc48f48f0e' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Sebuah Magnet'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('ef66cd16-66f0-4f30-b287-ecbc48f48f0e', 'Sebuah Magnet', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'ef66cd16-66f0-4f30-b287-ecbc48f48f0e' AND LOWER(TRIM(meaning)) = LOWER(TRIM('A Magnet'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('ef66cd16-66f0-4f30-b287-ecbc48f48f0e', 'A Magnet', false, true);
  END IF;

  -- [VOCABULARY] 神聖 (Level 34)
  UPDATE item_meanings SET meaning = 'Kekudusan', primary_meaning = true, accepted_answer = true WHERE id = '57caefae-9431-490c-ace7-16985264c711';
  UPDATE items SET slug = 'kekudusan' WHERE id = 'e71201a6-3ba7-4698-bf9f-d0891f2eab13';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'e71201a6-3ba7-4698-bf9f-d0891f2eab13' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Sangat Suci'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('e71201a6-3ba7-4698-bf9f-d0891f2eab13', 'Sangat Suci', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'e71201a6-3ba7-4698-bf9f-d0891f2eab13' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Holiness'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('e71201a6-3ba7-4698-bf9f-d0891f2eab13', 'Holiness', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'e71201a6-3ba7-4698-bf9f-d0891f2eab13' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Sacred'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('e71201a6-3ba7-4698-bf9f-d0891f2eab13', 'Sacred', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'e71201a6-3ba7-4698-bf9f-d0891f2eab13' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Suci'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('e71201a6-3ba7-4698-bf9f-d0891f2eab13', 'Suci', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'e71201a6-3ba7-4698-bf9f-d0891f2eab13' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Holy'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('e71201a6-3ba7-4698-bf9f-d0891f2eab13', 'Holy', false, true);
  END IF;

  -- [VOCABULARY] 粋 (Level 34)
  UPDATE item_meanings SET meaning = 'Elegan Modis', primary_meaning = true, accepted_answer = true WHERE id = '3cfa03d3-3d47-4528-97cf-b699612573a6';
  UPDATE items SET slug = 'elegan-modis' WHERE id = 'cce8c411-c7f7-48aa-ad65-866005a05710';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'cce8c411-c7f7-48aa-ad65-866005a05710' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Berjiwa Berkelas'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('cce8c411-c7f7-48aa-ad65-866005a05710', 'Berjiwa Berkelas', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'cce8c411-c7f7-48aa-ad65-866005a05710' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Bergaya'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('cce8c411-c7f7-48aa-ad65-866005a05710', 'Bergaya', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'cce8c411-c7f7-48aa-ad65-866005a05710' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Chic'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('cce8c411-c7f7-48aa-ad65-866005a05710', 'Chic', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'cce8c411-c7f7-48aa-ad65-866005a05710' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Stylish'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('cce8c411-c7f7-48aa-ad65-866005a05710', 'Stylish', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'cce8c411-c7f7-48aa-ad65-866005a05710' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Refined'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('cce8c411-c7f7-48aa-ad65-866005a05710', 'Refined', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'cce8c411-c7f7-48aa-ad65-866005a05710' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Berkelas'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('cce8c411-c7f7-48aa-ad65-866005a05710', 'Berkelas', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'cce8c411-c7f7-48aa-ad65-866005a05710' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Slick'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('cce8c411-c7f7-48aa-ad65-866005a05710', 'Slick', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'cce8c411-c7f7-48aa-ad65-866005a05710' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Cool And Refined'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('cce8c411-c7f7-48aa-ad65-866005a05710', 'Cool And Refined', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'cce8c411-c7f7-48aa-ad65-866005a05710' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Elegance'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('cce8c411-c7f7-48aa-ad65-866005a05710', 'Elegance', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'cce8c411-c7f7-48aa-ad65-866005a05710' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Tasteful'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('cce8c411-c7f7-48aa-ad65-866005a05710', 'Tasteful', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'cce8c411-c7f7-48aa-ad65-866005a05710' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Classy'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('cce8c411-c7f7-48aa-ad65-866005a05710', 'Classy', false, true);
  END IF;

  -- [VOCABULARY] 純粋 (Level 34)
  UPDATE item_meanings SET meaning = 'Murni', primary_meaning = true, accepted_answer = true WHERE id = '9c3ce2a0-5758-4f21-b038-94f8b43ed70f';
  UPDATE items SET slug = 'murni' WHERE id = '4fe433b9-c060-4b7a-b770-185d5d532f02';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '4fe433b9-c060-4b7a-b770-185d5d532f02' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Tulus'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('4fe433b9-c060-4b7a-b770-185d5d532f02', 'Tulus', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '4fe433b9-c060-4b7a-b770-185d5d532f02' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Tulen'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('4fe433b9-c060-4b7a-b770-185d5d532f02', 'Tulen', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '4fe433b9-c060-4b7a-b770-185d5d532f02' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Pure'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('4fe433b9-c060-4b7a-b770-185d5d532f02', 'Pure', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '4fe433b9-c060-4b7a-b770-185d5d532f02' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Genuine'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('4fe433b9-c060-4b7a-b770-185d5d532f02', 'Genuine', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '4fe433b9-c060-4b7a-b770-185d5d532f02' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Asli'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('4fe433b9-c060-4b7a-b770-185d5d532f02', 'Asli', false, true);
  END IF;

  -- [VOCABULARY] 縦横 (Level 34)
  UPDATE item_meanings SET meaning = 'Panjang Lebar', primary_meaning = true, accepted_answer = true WHERE id = '4a444063-ac0c-4ae1-a1e3-d5218dad5c5e';
  UPDATE items SET slug = 'panjang-lebar' WHERE id = 'bb4d2e6d-3fc5-48a8-8cf1-b6ac56c29779';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'bb4d2e6d-3fc5-48a8-8cf1-b6ac56c29779' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Membujur Melintang'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('bb4d2e6d-3fc5-48a8-8cf1-b6ac56c29779', 'Membujur Melintang', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'bb4d2e6d-3fc5-48a8-8cf1-b6ac56c29779' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Length And Width'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('bb4d2e6d-3fc5-48a8-8cf1-b6ac56c29779', 'Length And Width', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'bb4d2e6d-3fc5-48a8-8cf1-b6ac56c29779' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Vertical And Horizontal'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('bb4d2e6d-3fc5-48a8-8cf1-b6ac56c29779', 'Vertical And Horizontal', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'bb4d2e6d-3fc5-48a8-8cf1-b6ac56c29779' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Breadth and Length'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('bb4d2e6d-3fc5-48a8-8cf1-b6ac56c29779', 'Breadth and Length', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'bb4d2e6d-3fc5-48a8-8cf1-b6ac56c29779' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Lengthwise and Crosswise'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('bb4d2e6d-3fc5-48a8-8cf1-b6ac56c29779', 'Lengthwise and Crosswise', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'bb4d2e6d-3fc5-48a8-8cf1-b6ac56c29779' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Horizontal And Vertical'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('bb4d2e6d-3fc5-48a8-8cf1-b6ac56c29779', 'Horizontal And Vertical', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'bb4d2e6d-3fc5-48a8-8cf1-b6ac56c29779' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Vertikal Dan Horisontal'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('bb4d2e6d-3fc5-48a8-8cf1-b6ac56c29779', 'Vertikal Dan Horisontal', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'bb4d2e6d-3fc5-48a8-8cf1-b6ac56c29779' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Length and Breadth'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('bb4d2e6d-3fc5-48a8-8cf1-b6ac56c29779', 'Length and Breadth', false, true);
  END IF;

  -- [VOCABULARY] 縮まる (Level 34)
  UPDATE item_meanings SET meaning = 'Menyusut', primary_meaning = true, accepted_answer = true WHERE id = '47877882-c7a9-440a-837d-46ec230b5b19';
  UPDATE items SET slug = 'menyusut' WHERE id = '3d316757-8fff-4dfd-941a-22fd6f04ae4e';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '3d316757-8fff-4dfd-941a-22fd6f04ae4e' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Memendek'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('3d316757-8fff-4dfd-941a-22fd6f04ae4e', 'Memendek', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '3d316757-8fff-4dfd-941a-22fd6f04ae4e' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Untuk Menyusut'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('3d316757-8fff-4dfd-941a-22fd6f04ae4e', 'Untuk Menyusut', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '3d316757-8fff-4dfd-941a-22fd6f04ae4e' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Shrink'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('3d316757-8fff-4dfd-941a-22fd6f04ae4e', 'To Shrink', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '3d316757-8fff-4dfd-941a-22fd6f04ae4e' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Contract'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('3d316757-8fff-4dfd-941a-22fd6f04ae4e', 'To Contract', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '3d316757-8fff-4dfd-941a-22fd6f04ae4e' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Untuk Mengontrak'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('3d316757-8fff-4dfd-941a-22fd6f04ae4e', 'Untuk Mengontrak', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '3d316757-8fff-4dfd-941a-22fd6f04ae4e' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Be Shortened'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('3d316757-8fff-4dfd-941a-22fd6f04ae4e', 'To Be Shortened', false, true);
  END IF;

  -- [VOCABULARY] 縮小 (Level 34)
  UPDATE item_meanings SET meaning = 'Pengecilan', primary_meaning = true, accepted_answer = true WHERE id = 'bebc1e7c-6f40-48f8-8ccf-21104d694a57';
  UPDATE items SET slug = 'pengecilan' WHERE id = '7d39ef14-bfd4-470b-9ef4-ec97fb133126';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '7d39ef14-bfd4-470b-9ef4-ec97fb133126' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Pengurangan Skala'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('7d39ef14-bfd4-470b-9ef4-ec97fb133126', 'Pengurangan Skala', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '7d39ef14-bfd4-470b-9ef4-ec97fb133126' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Pengurangan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('7d39ef14-bfd4-470b-9ef4-ec97fb133126', 'Pengurangan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '7d39ef14-bfd4-470b-9ef4-ec97fb133126' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Reduction'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('7d39ef14-bfd4-470b-9ef4-ec97fb133126', 'Reduction', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '7d39ef14-bfd4-470b-9ef4-ec97fb133126' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Downsizing'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('7d39ef14-bfd4-470b-9ef4-ec97fb133126', 'Downsizing', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '7d39ef14-bfd4-470b-9ef4-ec97fb133126' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Cut'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('7d39ef14-bfd4-470b-9ef4-ec97fb133126', 'Cut', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '7d39ef14-bfd4-470b-9ef4-ec97fb133126' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Memotong'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('7d39ef14-bfd4-470b-9ef4-ec97fb133126', 'Memotong', false, true);
  END IF;

  -- [VOCABULARY] 腐る (Level 34)
  UPDATE item_meanings SET meaning = 'Membusuk', primary_meaning = true, accepted_answer = true WHERE id = '1ba8bc7d-f2f5-4586-8afa-96cfaebab752';
  UPDATE items SET slug = 'membusuk' WHERE id = '694c549e-7eda-41b9-8ab5-097c191320cc';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '694c549e-7eda-41b9-8ab5-097c191320cc' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Basi'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('694c549e-7eda-41b9-8ab5-097c191320cc', 'Basi', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '694c549e-7eda-41b9-8ab5-097c191320cc' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Rot'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('694c549e-7eda-41b9-8ab5-097c191320cc', 'To Rot', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '694c549e-7eda-41b9-8ab5-097c191320cc' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Go Bad'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('694c549e-7eda-41b9-8ab5-097c191320cc', 'To Go Bad', false, true);
  END IF;

  -- [VOCABULARY] 腐敗 (Level 34)
  UPDATE item_meanings SET meaning = 'Pembusukan', primary_meaning = true, accepted_answer = true WHERE id = 'b017e3ac-2883-47df-a0dd-7cbae730bf9e';
  UPDATE items SET slug = 'pembusukan' WHERE id = '30706e10-69cc-458c-9785-07af952786ec';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '30706e10-69cc-458c-9785-07af952786ec' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Korupsi Moral'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('30706e10-69cc-458c-9785-07af952786ec', 'Korupsi Moral', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '30706e10-69cc-458c-9785-07af952786ec' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Penguraian'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('30706e10-69cc-458c-9785-07af952786ec', 'Penguraian', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '30706e10-69cc-458c-9785-07af952786ec' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Corruption'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('30706e10-69cc-458c-9785-07af952786ec', 'Corruption', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '30706e10-69cc-458c-9785-07af952786ec' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Decay'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('30706e10-69cc-458c-9785-07af952786ec', 'Decay', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '30706e10-69cc-458c-9785-07af952786ec' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Decomposition'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('30706e10-69cc-458c-9785-07af952786ec', 'Decomposition', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '30706e10-69cc-458c-9785-07af952786ec' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Decaying'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('30706e10-69cc-458c-9785-07af952786ec', 'Decaying', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '30706e10-69cc-458c-9785-07af952786ec' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Decomposing'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('30706e10-69cc-458c-9785-07af952786ec', 'Decomposing', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '30706e10-69cc-458c-9785-07af952786ec' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Rotting'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('30706e10-69cc-458c-9785-07af952786ec', 'Rotting', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '30706e10-69cc-458c-9785-07af952786ec' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Korupsi'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('30706e10-69cc-458c-9785-07af952786ec', 'Korupsi', false, true);
  END IF;

  -- [VOCABULARY] 腐食 (Level 34)
  UPDATE item_meanings SET meaning = 'Korosi', primary_meaning = true, accepted_answer = true WHERE id = 'a38e43e5-41f0-4fcc-8852-2dd312e6c350';
  UPDATE items SET slug = 'korosi' WHERE id = '8759e70d-00d1-46dd-8f73-ca47699502d8';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '8759e70d-00d1-46dd-8f73-ca47699502d8' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Karat Mengikis'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('8759e70d-00d1-46dd-8f73-ca47699502d8', 'Karat Mengikis', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '8759e70d-00d1-46dd-8f73-ca47699502d8' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Corrosion'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('8759e70d-00d1-46dd-8f73-ca47699502d8', 'Corrosion', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '8759e70d-00d1-46dd-8f73-ca47699502d8' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Erosion'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('8759e70d-00d1-46dd-8f73-ca47699502d8', 'Erosion', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '8759e70d-00d1-46dd-8f73-ca47699502d8' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Eroding'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('8759e70d-00d1-46dd-8f73-ca47699502d8', 'Eroding', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '8759e70d-00d1-46dd-8f73-ca47699502d8' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Erode'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('8759e70d-00d1-46dd-8f73-ca47699502d8', 'Erode', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '8759e70d-00d1-46dd-8f73-ca47699502d8' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Corroding'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('8759e70d-00d1-46dd-8f73-ca47699502d8', 'Corroding', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '8759e70d-00d1-46dd-8f73-ca47699502d8' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Corrode'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('8759e70d-00d1-46dd-8f73-ca47699502d8', 'Corrode', false, true);
  END IF;

  -- [VOCABULARY] 自薦 (Level 34)
  UPDATE item_meanings SET meaning = 'Pencalonan Diri', primary_meaning = true, accepted_answer = true WHERE id = '80214e06-7dc8-4669-aa1c-50177f454715';
  UPDATE items SET slug = 'pencalonan-diri' WHERE id = '5a476498-d229-4591-9cb4-20ffb7a7ae16';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '5a476498-d229-4591-9cb4-20ffb7a7ae16' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Rekomendasi Sendiri'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('5a476498-d229-4591-9cb4-20ffb7a7ae16', 'Rekomendasi Sendiri', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '5a476498-d229-4591-9cb4-20ffb7a7ae16' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Rekomendasi Mandiri'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('5a476498-d229-4591-9cb4-20ffb7a7ae16', 'Rekomendasi Mandiri', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '5a476498-d229-4591-9cb4-20ffb7a7ae16' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Self-Nomination'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('5a476498-d229-4591-9cb4-20ffb7a7ae16', 'Self-Nomination', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '5a476498-d229-4591-9cb4-20ffb7a7ae16' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Self-Recommendation'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('5a476498-d229-4591-9cb4-20ffb7a7ae16', 'Self-Recommendation', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '5a476498-d229-4591-9cb4-20ffb7a7ae16' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Nominasi Diri'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('5a476498-d229-4591-9cb4-20ffb7a7ae16', 'Nominasi Diri', false, true);
  END IF;

  -- [VOCABULARY] 興味がない (Level 34)
  UPDATE item_meanings SET meaning = 'Tidak Tertarik', primary_meaning = true, accepted_answer = true WHERE id = 'b6862e1a-85cd-4168-b30c-124dda7a7597';
  UPDATE items SET slug = 'tidak-tertarik' WHERE id = 'f9dfc4fd-c63b-4cd6-a21e-cd5d27bbbf55';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'f9dfc4fd-c63b-4cd6-a21e-cd5d27bbbf55' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Tidak Ada Minat'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('f9dfc4fd-c63b-4cd6-a21e-cd5d27bbbf55', 'Tidak Ada Minat', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'f9dfc4fd-c63b-4cd6-a21e-cd5d27bbbf55' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Tidak Ada Bunga'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('f9dfc4fd-c63b-4cd6-a21e-cd5d27bbbf55', 'Tidak Ada Bunga', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'f9dfc4fd-c63b-4cd6-a21e-cd5d27bbbf55' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Not Interested'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('f9dfc4fd-c63b-4cd6-a21e-cd5d27bbbf55', 'Not Interested', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'f9dfc4fd-c63b-4cd6-a21e-cd5d27bbbf55' AND LOWER(TRIM(meaning)) = LOWER(TRIM('No Interest'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('f9dfc4fd-c63b-4cd6-a21e-cd5d27bbbf55', 'No Interest', false, true);
  END IF;

  -- [VOCABULARY] 薦める (Level 34)
  UPDATE item_meanings SET meaning = 'Menyarankan', primary_meaning = true, accepted_answer = true WHERE id = '1eed1482-e802-457d-9b08-7567efa33317';
  UPDATE items SET slug = 'menyarankan' WHERE id = '1ded08e8-ea14-42dc-a5cf-15564f6a942f';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '1ded08e8-ea14-42dc-a5cf-15564f6a942f' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Merekomendasikan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('1ded08e8-ea14-42dc-a5cf-15564f6a942f', 'Merekomendasikan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '1ded08e8-ea14-42dc-a5cf-15564f6a942f' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Untuk Merekomendasikan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('1ded08e8-ea14-42dc-a5cf-15564f6a942f', 'Untuk Merekomendasikan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '1ded08e8-ea14-42dc-a5cf-15564f6a942f' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Recommend'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('1ded08e8-ea14-42dc-a5cf-15564f6a942f', 'To Recommend', false, true);
  END IF;

  -- [VOCABULARY] 言い訳 (Level 34)
  UPDATE item_meanings SET meaning = 'Alasan', primary_meaning = true, accepted_answer = true WHERE id = '8ea68273-301d-419f-ac18-cdc667a84328';
  UPDATE items SET slug = 'alasan' WHERE id = '5d0141fc-7ec0-4afa-970b-3576f024bc66';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '5d0141fc-7ec0-4afa-970b-3576f024bc66' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Dalih'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('5d0141fc-7ec0-4afa-970b-3576f024bc66', 'Dalih', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '5d0141fc-7ec0-4afa-970b-3576f024bc66' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Pembelaan Diri'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('5d0141fc-7ec0-4afa-970b-3576f024bc66', 'Pembelaan Diri', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '5d0141fc-7ec0-4afa-970b-3576f024bc66' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Mengizinkan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('5d0141fc-7ec0-4afa-970b-3576f024bc66', 'Mengizinkan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '5d0141fc-7ec0-4afa-970b-3576f024bc66' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Excuse'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('5d0141fc-7ec0-4afa-970b-3576f024bc66', 'Excuse', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '5d0141fc-7ec0-4afa-970b-3576f024bc66' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Explanation'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('5d0141fc-7ec0-4afa-970b-3576f024bc66', 'Explanation', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '5d0141fc-7ec0-4afa-970b-3576f024bc66' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Penjelasan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('5d0141fc-7ec0-4afa-970b-3576f024bc66', 'Penjelasan', false, true);
  END IF;

  -- [VOCABULARY] 詰め込む (Level 34)
  UPDATE item_meanings SET meaning = 'Menjejalkan', primary_meaning = true, accepted_answer = true WHERE id = '473e5f54-dfec-4404-9047-7c682892970b';
  UPDATE items SET slug = 'menjejalkan' WHERE id = 'f9c31258-02a1-4e30-b1f7-955eb3d42c02';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'f9c31258-02a1-4e30-b1f7-955eb3d42c02' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Menjejali Penuh'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('f9c31258-02a1-4e30-b1f7-955eb3d42c02', 'Menjejali Penuh', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'f9c31258-02a1-4e30-b1f7-955eb3d42c02' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Untuk Mengisi'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('f9c31258-02a1-4e30-b1f7-955eb3d42c02', 'Untuk Mengisi', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'f9c31258-02a1-4e30-b1f7-955eb3d42c02' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Cram'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('f9c31258-02a1-4e30-b1f7-955eb3d42c02', 'To Cram', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'f9c31258-02a1-4e30-b1f7-955eb3d42c02' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Stuff'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('f9c31258-02a1-4e30-b1f7-955eb3d42c02', 'To Stuff', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'f9c31258-02a1-4e30-b1f7-955eb3d42c02' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Jam'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('f9c31258-02a1-4e30-b1f7-955eb3d42c02', 'To Jam', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'f9c31258-02a1-4e30-b1f7-955eb3d42c02' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Cram Into'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('f9c31258-02a1-4e30-b1f7-955eb3d42c02', 'To Cram Into', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'f9c31258-02a1-4e30-b1f7-955eb3d42c02' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Stuff Into'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('f9c31258-02a1-4e30-b1f7-955eb3d42c02', 'To Stuff Into', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'f9c31258-02a1-4e30-b1f7-955eb3d42c02' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Crowd'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('f9c31258-02a1-4e30-b1f7-955eb3d42c02', 'To Crowd', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'f9c31258-02a1-4e30-b1f7-955eb3d42c02' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Untuk menjejalkan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('f9c31258-02a1-4e30-b1f7-955eb3d42c02', 'Untuk menjejalkan', false, true);
  END IF;

  -- [VOCABULARY] 込める (Level 34)
  UPDATE item_meanings SET meaning = 'Memasukkan', primary_meaning = true, accepted_answer = true WHERE id = '1c82191b-75fd-4732-81bb-0ec0ce1d0ee2';
  UPDATE items SET slug = 'memasukkan' WHERE id = '73ea4ec1-ac3a-4ebc-b5d4-cffface61695';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '73ea4ec1-ac3a-4ebc-b5d4-cffface61695' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Mengisi Penuh'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('73ea4ec1-ac3a-4ebc-b5d4-cffface61695', 'Mengisi Penuh', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '73ea4ec1-ac3a-4ebc-b5d4-cffface61695' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Menaruh Perasaan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('73ea4ec1-ac3a-4ebc-b5d4-cffface61695', 'Menaruh Perasaan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '73ea4ec1-ac3a-4ebc-b5d4-cffface61695' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Include'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('73ea4ec1-ac3a-4ebc-b5d4-cffface61695', 'To Include', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '73ea4ec1-ac3a-4ebc-b5d4-cffface61695' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Put Into'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('73ea4ec1-ac3a-4ebc-b5d4-cffface61695', 'To Put Into', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '73ea4ec1-ac3a-4ebc-b5d4-cffface61695' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Untuk Dimasukkan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('73ea4ec1-ac3a-4ebc-b5d4-cffface61695', 'Untuk Dimasukkan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '73ea4ec1-ac3a-4ebc-b5d4-cffface61695' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Put In'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('73ea4ec1-ac3a-4ebc-b5d4-cffface61695', 'To Put In', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '73ea4ec1-ac3a-4ebc-b5d4-cffface61695' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Load'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('73ea4ec1-ac3a-4ebc-b5d4-cffface61695', 'To Load', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '73ea4ec1-ac3a-4ebc-b5d4-cffface61695' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Put Something In'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('73ea4ec1-ac3a-4ebc-b5d4-cffface61695', 'To Put Something In', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '73ea4ec1-ac3a-4ebc-b5d4-cffface61695' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Untuk Memuat Sesuatu'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('73ea4ec1-ac3a-4ebc-b5d4-cffface61695', 'Untuk Memuat Sesuatu', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '73ea4ec1-ac3a-4ebc-b5d4-cffface61695' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Charge'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('73ea4ec1-ac3a-4ebc-b5d4-cffface61695', 'To Charge', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '73ea4ec1-ac3a-4ebc-b5d4-cffface61695' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Load Something'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('73ea4ec1-ac3a-4ebc-b5d4-cffface61695', 'To Load Something', false, true);
  END IF;

  -- [VOCABULARY] 迎え (Level 34)
  UPDATE item_meanings SET meaning = 'Penjemputan', primary_meaning = true, accepted_answer = true WHERE id = 'ec2616ee-59f3-404c-9df3-6f81e381e7d1';
  UPDATE items SET slug = 'penjemputan' WHERE id = 'e5656ac1-3eb3-4ad7-b364-d893ecbcda11';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'e5656ac1-3eb3-4ad7-b364-d893ecbcda11' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Penyambutan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('e5656ac1-3eb3-4ad7-b364-d893ecbcda11', 'Penyambutan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'e5656ac1-3eb3-4ad7-b364-d893ecbcda11' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Pertemuan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('e5656ac1-3eb3-4ad7-b364-d893ecbcda11', 'Pertemuan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'e5656ac1-3eb3-4ad7-b364-d893ecbcda11' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Welcome'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('e5656ac1-3eb3-4ad7-b364-d893ecbcda11', 'Welcome', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'e5656ac1-3eb3-4ad7-b364-d893ecbcda11' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Meeting'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('e5656ac1-3eb3-4ad7-b364-d893ecbcda11', 'Meeting', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'e5656ac1-3eb3-4ad7-b364-d893ecbcda11' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Reception'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('e5656ac1-3eb3-4ad7-b364-d893ecbcda11', 'Reception', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'e5656ac1-3eb3-4ad7-b364-d893ecbcda11' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Greeting'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('e5656ac1-3eb3-4ad7-b364-d893ecbcda11', 'Greeting', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'e5656ac1-3eb3-4ad7-b364-d893ecbcda11' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Salam'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('e5656ac1-3eb3-4ad7-b364-d893ecbcda11', 'Salam', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'e5656ac1-3eb3-4ad7-b364-d893ecbcda11' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Selamat datang'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('e5656ac1-3eb3-4ad7-b364-d893ecbcda11', 'Selamat datang', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'e5656ac1-3eb3-4ad7-b364-d893ecbcda11' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Penerimaan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('e5656ac1-3eb3-4ad7-b364-d893ecbcda11', 'Penerimaan', false, true);
  END IF;

  -- [VOCABULARY] 追い越す (Level 34)
  UPDATE item_meanings SET meaning = 'Menyalip', primary_meaning = true, accepted_answer = true WHERE id = '1e29475e-a0c2-4e16-a357-fd7f55759654';
  UPDATE items SET slug = 'menyalip' WHERE id = 'f2662e94-a328-407a-a039-ca00d38907e3';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'f2662e94-a328-407a-a039-ca00d38907e3' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Mendahului'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('f2662e94-a328-407a-a039-ca00d38907e3', 'Mendahului', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'f2662e94-a328-407a-a039-ca00d38907e3' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Untuk Menyalip'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('f2662e94-a328-407a-a039-ca00d38907e3', 'Untuk Menyalip', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'f2662e94-a328-407a-a039-ca00d38907e3' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Overtake'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('f2662e94-a328-407a-a039-ca00d38907e3', 'To Overtake', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'f2662e94-a328-407a-a039-ca00d38907e3' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Pass'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('f2662e94-a328-407a-a039-ca00d38907e3', 'To Pass', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'f2662e94-a328-407a-a039-ca00d38907e3' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Untuk Menarik Ke Depan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('f2662e94-a328-407a-a039-ca00d38907e3', 'Untuk Menarik Ke Depan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'f2662e94-a328-407a-a039-ca00d38907e3' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Untuk Melampaui'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('f2662e94-a328-407a-a039-ca00d38907e3', 'Untuk Melampaui', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'f2662e94-a328-407a-a039-ca00d38907e3' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Pull Ahead'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('f2662e94-a328-407a-a039-ca00d38907e3', 'To Pull Ahead', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'f2662e94-a328-407a-a039-ca00d38907e3' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Surpass'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('f2662e94-a328-407a-a039-ca00d38907e3', 'To Surpass', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'f2662e94-a328-407a-a039-ca00d38907e3' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Untuk Lulus'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('f2662e94-a328-407a-a039-ca00d38907e3', 'Untuk Lulus', false, true);
  END IF;

  -- [VOCABULARY] 金儲け (Level 34)
  UPDATE item_meanings SET meaning = 'Meraup Uang', primary_meaning = true, accepted_answer = true WHERE id = 'd9b667c1-078a-4a7c-b5c4-71cb0f5cdaf8';
  UPDATE items SET slug = 'meraup-uang' WHERE id = '1d47071e-9c9c-4e30-94a2-7ef35ad89c50';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '1d47071e-9c9c-4e30-94a2-7ef35ad89c50' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Mencari Cuan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('1d47071e-9c9c-4e30-94a2-7ef35ad89c50', 'Mencari Cuan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '1d47071e-9c9c-4e30-94a2-7ef35ad89c50' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Mencari uang'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('1d47071e-9c9c-4e30-94a2-7ef35ad89c50', 'Mencari uang', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '1d47071e-9c9c-4e30-94a2-7ef35ad89c50' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Making Money'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('1d47071e-9c9c-4e30-94a2-7ef35ad89c50', 'Making Money', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '1d47071e-9c9c-4e30-94a2-7ef35ad89c50' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Earning Money'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('1d47071e-9c9c-4e30-94a2-7ef35ad89c50', 'Earning Money', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '1d47071e-9c9c-4e30-94a2-7ef35ad89c50' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Menghasilkan Uang'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('1d47071e-9c9c-4e30-94a2-7ef35ad89c50', 'Menghasilkan Uang', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '1d47071e-9c9c-4e30-94a2-7ef35ad89c50' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Profit'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('1d47071e-9c9c-4e30-94a2-7ef35ad89c50', 'Profit', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '1d47071e-9c9c-4e30-94a2-7ef35ad89c50' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Money-Making'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('1d47071e-9c9c-4e30-94a2-7ef35ad89c50', 'Money-Making', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '1d47071e-9c9c-4e30-94a2-7ef35ad89c50' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Make A Profit'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('1d47071e-9c9c-4e30-94a2-7ef35ad89c50', 'Make A Profit', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '1d47071e-9c9c-4e30-94a2-7ef35ad89c50' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Making A Profit'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('1d47071e-9c9c-4e30-94a2-7ef35ad89c50', 'Making A Profit', false, true);
  END IF;

  -- [VOCABULARY] 飛び込み (Level 34)
  UPDATE item_meanings SET meaning = 'Terjun Menyelam', primary_meaning = true, accepted_answer = true WHERE id = '91b8ff8b-63de-4523-b8b3-9d901188deb2';
  UPDATE items SET slug = 'terjun-menyelam' WHERE id = '7a1dac21-e09c-410c-80ef-1446ca9a533c';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '7a1dac21-e09c-410c-80ef-1446ca9a533c' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Berkunjung Tanpa Janji'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('7a1dac21-e09c-410c-80ef-1446ca9a533c', 'Berkunjung Tanpa Janji', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '7a1dac21-e09c-410c-80ef-1446ca9a533c' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Menyelam'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('7a1dac21-e09c-410c-80ef-1446ca9a533c', 'Menyelam', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '7a1dac21-e09c-410c-80ef-1446ca9a533c' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Diving'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('7a1dac21-e09c-410c-80ef-1446ca9a533c', 'Diving', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '7a1dac21-e09c-410c-80ef-1446ca9a533c' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Cold Call'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('7a1dac21-e09c-410c-80ef-1446ca9a533c', 'Cold Call', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '7a1dac21-e09c-410c-80ef-1446ca9a533c' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Diving In'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('7a1dac21-e09c-410c-80ef-1446ca9a533c', 'Diving In', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '7a1dac21-e09c-410c-80ef-1446ca9a533c' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Mampir'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('7a1dac21-e09c-410c-80ef-1446ca9a533c', 'Mampir', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '7a1dac21-e09c-410c-80ef-1446ca9a533c' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Cold Calling'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('7a1dac21-e09c-410c-80ef-1446ca9a533c', 'Cold Calling', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '7a1dac21-e09c-410c-80ef-1446ca9a533c' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Unsolicited Visit'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('7a1dac21-e09c-410c-80ef-1446ca9a533c', 'Unsolicited Visit', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '7a1dac21-e09c-410c-80ef-1446ca9a533c' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Dropping By Unexpectedly'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('7a1dac21-e09c-410c-80ef-1446ca9a533c', 'Dropping By Unexpectedly', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '7a1dac21-e09c-410c-80ef-1446ca9a533c' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Dropping By'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('7a1dac21-e09c-410c-80ef-1446ca9a533c', 'Dropping By', false, true);
  END IF;

  -- [VOCABULARY] 騙る (Level 34)
  UPDATE item_meanings SET meaning = 'Mengaku Palsu', primary_meaning = true, accepted_answer = true WHERE id = '8fec895f-03bd-4e3f-958a-ee0446b1ffbb';
  UPDATE items SET slug = 'mengaku-palsu' WHERE id = 'b7953460-ab0c-470a-a269-2f4ad5798314';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'b7953460-ab0c-470a-a269-2f4ad5798314' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Menipu Identitas'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('b7953460-ab0c-470a-a269-2f4ad5798314', 'Menipu Identitas', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'b7953460-ab0c-470a-a269-2f4ad5798314' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Untuk Meniru Identitas Secara Palsu'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('b7953460-ab0c-470a-a269-2f4ad5798314', 'Untuk Meniru Identitas Secara Palsu', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'b7953460-ab0c-470a-a269-2f4ad5798314' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Impersonate'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('b7953460-ab0c-470a-a269-2f4ad5798314', 'To Impersonate', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'b7953460-ab0c-470a-a269-2f4ad5798314' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Swindle'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('b7953460-ab0c-470a-a269-2f4ad5798314', 'To Swindle', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'b7953460-ab0c-470a-a269-2f4ad5798314' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Assume The Identity Of'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('b7953460-ab0c-470a-a269-2f4ad5798314', 'To Assume The Identity Of', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'b7953460-ab0c-470a-a269-2f4ad5798314' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Misrepresent Oneself'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('b7953460-ab0c-470a-a269-2f4ad5798314', 'To Misrepresent Oneself', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'b7953460-ab0c-470a-a269-2f4ad5798314' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Misrepresent Yourself'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('b7953460-ab0c-470a-a269-2f4ad5798314', 'To Misrepresent Yourself', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'b7953460-ab0c-470a-a269-2f4ad5798314' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Masquerade As'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('b7953460-ab0c-470a-a269-2f4ad5798314', 'To Masquerade As', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'b7953460-ab0c-470a-a269-2f4ad5798314' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Claim To Be'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('b7953460-ab0c-470a-a269-2f4ad5798314', 'To Claim To Be', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'b7953460-ab0c-470a-a269-2f4ad5798314' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Falsely Impersonate'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('b7953460-ab0c-470a-a269-2f4ad5798314', 'To Falsely Impersonate', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'b7953460-ab0c-470a-a269-2f4ad5798314' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Pose As'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('b7953460-ab0c-470a-a269-2f4ad5798314', 'To Pose As', false, true);
  END IF;

  -- [VOCABULARY] 黒幕 (Level 34)
  UPDATE item_meanings SET meaning = 'Dalang', primary_meaning = true, accepted_answer = true WHERE id = '0a4d38f6-f404-451b-9a54-0f8b58814555';
  UPDATE items SET slug = 'dalang' WHERE id = 'd8670097-3ef6-4b33-8264-be29d318d97c';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'd8670097-3ef6-4b33-8264-be29d318d97c' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Tokoh di Balik Layar'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('d8670097-3ef6-4b33-8264-be29d318d97c', 'Tokoh di Balik Layar', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'd8670097-3ef6-4b33-8264-be29d318d97c' AND LOWER(TRIM(meaning)) = LOWER(TRIM('penarik kawat'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('d8670097-3ef6-4b33-8264-be29d318d97c', 'penarik kawat', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'd8670097-3ef6-4b33-8264-be29d318d97c' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Mastermind'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('d8670097-3ef6-4b33-8264-be29d318d97c', 'Mastermind', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'd8670097-3ef6-4b33-8264-be29d318d97c' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Wirepuller'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('d8670097-3ef6-4b33-8264-be29d318d97c', 'Wirepuller', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'd8670097-3ef6-4b33-8264-be29d318d97c' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Black Curtain'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('d8670097-3ef6-4b33-8264-be29d318d97c', 'Black Curtain', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'd8670097-3ef6-4b33-8264-be29d318d97c' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Tirai Hitam'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('d8670097-3ef6-4b33-8264-be29d318d97c', 'Tirai Hitam', false, true);
  END IF;

END $$;
