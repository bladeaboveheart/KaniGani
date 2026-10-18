-- Migration: Batch 2 Part 5 (Level 25)
-- Total items: 53

DO $$
BEGIN

  -- [KANJI] 候 (Level 25)
  UPDATE item_meanings SET meaning = 'Iklim', primary_meaning = true, accepted_answer = true WHERE id = '89333f40-ba25-49d2-825f-256c4e5dbe07';
  UPDATE items SET slug = 'iklim' WHERE id = 'd134e564-2db6-41b5-add3-e5c7c7b67694';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'd134e564-2db6-41b5-add3-e5c7c7b67694' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Musim'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('d134e564-2db6-41b5-add3-e5c7c7b67694', 'Musim', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'd134e564-2db6-41b5-add3-e5c7c7b67694' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Tanda'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('d134e564-2db6-41b5-add3-e5c7c7b67694', 'Tanda', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'd134e564-2db6-41b5-add3-e5c7c7b67694' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Kandidat'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('d134e564-2db6-41b5-add3-e5c7c7b67694', 'Kandidat', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'd134e564-2db6-41b5-add3-e5c7c7b67694' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Climate'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('d134e564-2db6-41b5-add3-e5c7c7b67694', 'Climate', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'd134e564-2db6-41b5-add3-e5c7c7b67694' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Weather'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('d134e564-2db6-41b5-add3-e5c7c7b67694', 'Weather', false, true);
  END IF;

  -- [KANJI] 居 (Level 25)
  UPDATE item_meanings SET meaning = 'Tinggal', primary_meaning = true, accepted_answer = true WHERE id = '44905700-2e27-40df-b90b-33bbd4b6cb31';
  UPDATE items SET slug = 'tinggal' WHERE id = 'e6ced42c-156e-4265-93b7-9cc5b7ddf317';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'e6ced42c-156e-4265-93b7-9cc5b7ddf317' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Berada'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('e6ced42c-156e-4265-93b7-9cc5b7ddf317', 'Berada', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'e6ced42c-156e-4265-93b7-9cc5b7ddf317' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Menetap'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('e6ced42c-156e-4265-93b7-9cc5b7ddf317', 'Menetap', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'e6ced42c-156e-4265-93b7-9cc5b7ddf317' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Alive'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('e6ced42c-156e-4265-93b7-9cc5b7ddf317', 'Alive', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'e6ced42c-156e-4265-93b7-9cc5b7ddf317' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Reside'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('e6ced42c-156e-4265-93b7-9cc5b7ddf317', 'Reside', false, true);
  END IF;

  -- [KANJI] 属 (Level 25)
  UPDATE item_meanings SET meaning = 'Tergabung', primary_meaning = true, accepted_answer = true WHERE id = 'b66b0c94-789c-41dd-b602-3c201d8f2153';
  UPDATE items SET slug = 'tergabung' WHERE id = '2832212e-f398-4f04-864c-b17ca8932d27';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '2832212e-f398-4f04-864c-b17ca8932d27' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Kelompok'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('2832212e-f398-4f04-864c-b17ca8932d27', 'Kelompok', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '2832212e-f398-4f04-864c-b17ca8932d27' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Afiliasi'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('2832212e-f398-4f04-864c-b17ca8932d27', 'Afiliasi', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '2832212e-f398-4f04-864c-b17ca8932d27' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Belong'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('2832212e-f398-4f04-864c-b17ca8932d27', 'Belong', false, true);
  END IF;

  -- [KANJI] 巻 (Level 25)
  UPDATE item_meanings SET meaning = 'Gulungan', primary_meaning = true, accepted_answer = true WHERE id = 'c5f9f8fe-13f5-4efd-9ce2-6aa71530e6c5';
  UPDATE items SET slug = 'gulungan' WHERE id = '4ccda1e5-03f0-47df-b256-7a40a4bbb86c';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '4ccda1e5-03f0-47df-b256-7a40a4bbb86c' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Jilid'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('4ccda1e5-03f0-47df-b256-7a40a4bbb86c', 'Jilid', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '4ccda1e5-03f0-47df-b256-7a40a4bbb86c' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Buku'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('4ccda1e5-03f0-47df-b256-7a40a4bbb86c', 'Buku', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '4ccda1e5-03f0-47df-b256-7a40a4bbb86c' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Scroll'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('4ccda1e5-03f0-47df-b256-7a40a4bbb86c', 'Scroll', false, true);
  END IF;

  -- [KANJI] 抜 (Level 25)
  UPDATE item_meanings SET meaning = 'Mencabut', primary_meaning = true, accepted_answer = true WHERE id = 'f2eb88aa-ad6a-4129-94b6-5a8451bfa91d';
  UPDATE items SET slug = 'mencabut' WHERE id = 'befebf42-c568-478e-b0c8-279810172c13';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'befebf42-c568-478e-b0c8-279810172c13' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Melewati'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('befebf42-c568-478e-b0c8-279810172c13', 'Melewati', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'befebf42-c568-478e-b0c8-279810172c13' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Menarik Keluar'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('befebf42-c568-478e-b0c8-279810172c13', 'Menarik Keluar', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'befebf42-c568-478e-b0c8-279810172c13' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Pull Out'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('befebf42-c568-478e-b0c8-279810172c13', 'Pull Out', false, true);
  END IF;

  -- [KANJI] 掛 (Level 25)
  UPDATE item_meanings SET meaning = 'Menggantung', primary_meaning = true, accepted_answer = true WHERE id = '106a0564-a619-4139-a0dd-8f1590a56cbf';
  UPDATE items SET slug = 'menggantung' WHERE id = 'a636fb32-9ac4-4c67-bb24-11c33a32fde5';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'a636fb32-9ac4-4c67-bb24-11c33a32fde5' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Memasang'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('a636fb32-9ac4-4c67-bb24-11c33a32fde5', 'Memasang', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'a636fb32-9ac4-4c67-bb24-11c33a32fde5' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Mengaitkan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('a636fb32-9ac4-4c67-bb24-11c33a32fde5', 'Mengaitkan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'a636fb32-9ac4-4c67-bb24-11c33a32fde5' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Hang'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('a636fb32-9ac4-4c67-bb24-11c33a32fde5', 'Hang', false, true);
  END IF;

  -- [KANJI] 栄 (Level 25)
  UPDATE item_meanings SET meaning = 'Makmur', primary_meaning = true, accepted_answer = true WHERE id = '2cec8b8a-c8c9-4902-96d4-5abf92b5cb32';
  UPDATE items SET slug = 'makmur' WHERE id = 'c00c88c4-8233-41a3-915b-cdf00b01f45d';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'c00c88c4-8233-41a3-915b-cdf00b01f45d' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Berjaya'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('c00c88c4-8233-41a3-915b-cdf00b01f45d', 'Berjaya', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'c00c88c4-8233-41a3-915b-cdf00b01f45d' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Kejayaan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('c00c88c4-8233-41a3-915b-cdf00b01f45d', 'Kejayaan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'c00c88c4-8233-41a3-915b-cdf00b01f45d' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Prosper'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('c00c88c4-8233-41a3-915b-cdf00b01f45d', 'Prosper', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'c00c88c4-8233-41a3-915b-cdf00b01f45d' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Flourish'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('c00c88c4-8233-41a3-915b-cdf00b01f45d', 'Flourish', false, true);
  END IF;

  -- [KANJI] 構 (Level 25)
  UPDATE item_meanings SET meaning = 'Struktur', primary_meaning = true, accepted_answer = true WHERE id = 'aebfceae-7d6b-4ba8-a223-6a14fc77a742';
  UPDATE items SET slug = 'struktur' WHERE id = '5991487f-a0a8-4c36-9adb-acbaa2a70566';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '5991487f-a0a8-4c36-9adb-acbaa2a70566' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Rancangan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('5991487f-a0a8-4c36-9adb-acbaa2a70566', 'Rancangan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '5991487f-a0a8-4c36-9adb-acbaa2a70566' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Kerangka'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('5991487f-a0a8-4c36-9adb-acbaa2a70566', 'Kerangka', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '5991487f-a0a8-4c36-9adb-acbaa2a70566' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Set Up'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('5991487f-a0a8-4c36-9adb-acbaa2a70566', 'Set Up', false, true);
  END IF;

  -- [KANJI] 模 (Level 25)
  UPDATE item_meanings SET meaning = 'Pola', primary_meaning = true, accepted_answer = true WHERE id = '81d47056-c43a-44d8-a7d1-6719e9fb3eab';
  UPDATE items SET slug = 'pola' WHERE id = '16b45148-7edd-4c21-ba74-7e93e4a27219';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '16b45148-7edd-4c21-ba74-7e93e4a27219' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Bentuk Tiruan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('16b45148-7edd-4c21-ba74-7e93e4a27219', 'Bentuk Tiruan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '16b45148-7edd-4c21-ba74-7e93e4a27219' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Model'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('16b45148-7edd-4c21-ba74-7e93e4a27219', 'Model', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '16b45148-7edd-4c21-ba74-7e93e4a27219' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Imitation'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('16b45148-7edd-4c21-ba74-7e93e4a27219', 'Imitation', false, true);
  END IF;

  -- [KANJI] 況 (Level 25)
  UPDATE item_meanings SET meaning = 'Kondisi', primary_meaning = true, accepted_answer = true WHERE id = 'b2bcbfe8-90d6-4807-88bc-8770c40fe3a5';
  UPDATE items SET slug = 'kondisi' WHERE id = 'c7de7cea-d374-43c8-903e-b89d6154be57';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'c7de7cea-d374-43c8-903e-b89d6154be57' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Situasi'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('c7de7cea-d374-43c8-903e-b89d6154be57', 'Situasi', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'c7de7cea-d374-43c8-903e-b89d6154be57' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Keadaan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('c7de7cea-d374-43c8-903e-b89d6154be57', 'Keadaan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'c7de7cea-d374-43c8-903e-b89d6154be57' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Condition'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('c7de7cea-d374-43c8-903e-b89d6154be57', 'Condition', false, true);
  END IF;

  -- [KANJI] 渡 (Level 25)
  UPDATE item_meanings SET meaning = 'Menyeberang', primary_meaning = true, accepted_answer = true WHERE id = '6d02d489-0329-4c88-b674-4846eb8ba868';
  UPDATE items SET slug = 'menyeberang' WHERE id = 'f2e5ee63-86f0-4ac5-9ff1-1cc065e7c390';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'f2e5ee63-86f0-4ac5-9ff1-1cc065e7c390' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Menyerahkan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('f2e5ee63-86f0-4ac5-9ff1-1cc065e7c390', 'Menyerahkan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'f2e5ee63-86f0-4ac5-9ff1-1cc065e7c390' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Melintas'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('f2e5ee63-86f0-4ac5-9ff1-1cc065e7c390', 'Melintas', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'f2e5ee63-86f0-4ac5-9ff1-1cc065e7c390' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Transit'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('f2e5ee63-86f0-4ac5-9ff1-1cc065e7c390', 'Transit', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'f2e5ee63-86f0-4ac5-9ff1-1cc065e7c390' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Cross'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('f2e5ee63-86f0-4ac5-9ff1-1cc065e7c390', 'Cross', false, true);
  END IF;

  -- [KANJI] 絞 (Level 25)
  UPDATE item_meanings SET meaning = 'Memeras', primary_meaning = true, accepted_answer = true WHERE id = '266c479b-a8ee-4a26-a6d2-577dea8344f2';
  UPDATE items SET slug = 'memeras' WHERE id = '8d101a3c-4bdf-46a6-9879-bed595340ba4';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '8d101a3c-4bdf-46a6-9879-bed595340ba4' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Mencekik'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('8d101a3c-4bdf-46a6-9879-bed595340ba4', 'Mencekik', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '8d101a3c-4bdf-46a6-9879-bed595340ba4' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Menjepit'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('8d101a3c-4bdf-46a6-9879-bed595340ba4', 'Menjepit', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '8d101a3c-4bdf-46a6-9879-bed595340ba4' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Strangle'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('8d101a3c-4bdf-46a6-9879-bed595340ba4', 'Strangle', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '8d101a3c-4bdf-46a6-9879-bed595340ba4' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Squeeze'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('8d101a3c-4bdf-46a6-9879-bed595340ba4', 'Squeeze', false, true);
  END IF;

  -- [KANJI] 肥 (Level 25)
  UPDATE item_meanings SET meaning = 'Gemuk', primary_meaning = true, accepted_answer = true WHERE id = 'fbed02be-6c62-4c7d-8ba9-3019695d9670';
  UPDATE items SET slug = 'gemuk' WHERE id = '90d237e8-9875-4bb1-aea8-cceba908b5b2';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '90d237e8-9875-4bb1-aea8-cceba908b5b2' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Subur'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('90d237e8-9875-4bb1-aea8-cceba908b5b2', 'Subur', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '90d237e8-9875-4bb1-aea8-cceba908b5b2' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Pupuk'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('90d237e8-9875-4bb1-aea8-cceba908b5b2', 'Pupuk', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '90d237e8-9875-4bb1-aea8-cceba908b5b2' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Obese'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('90d237e8-9875-4bb1-aea8-cceba908b5b2', 'Obese', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '90d237e8-9875-4bb1-aea8-cceba908b5b2' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Fertile'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('90d237e8-9875-4bb1-aea8-cceba908b5b2', 'Fertile', false, true);
  END IF;

  -- [KANJI] 莫 (Level 25)
  UPDATE item_meanings SET meaning = 'Sangat Besar', primary_meaning = true, accepted_answer = true WHERE id = '761aba84-f0ef-44a8-8484-bafdd8365d44';
  UPDATE items SET slug = 'sangat-besar' WHERE id = '6926ec1c-fd20-4fec-8225-6a166151fb11';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '6926ec1c-fd20-4fec-8225-6a166151fb11' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Tak Terhingga'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('6926ec1c-fd20-4fec-8225-6a166151fb11', 'Tak Terhingga', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '6926ec1c-fd20-4fec-8225-6a166151fb11' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Luas Sekali'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('6926ec1c-fd20-4fec-8225-6a166151fb11', 'Luas Sekali', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '6926ec1c-fd20-4fec-8225-6a166151fb11' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Endless'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('6926ec1c-fd20-4fec-8225-6a166151fb11', 'Endless', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '6926ec1c-fd20-4fec-8225-6a166151fb11' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Vast'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('6926ec1c-fd20-4fec-8225-6a166151fb11', 'Vast', false, true);
  END IF;

  -- [KANJI] 補 (Level 25)
  UPDATE item_meanings SET meaning = 'Melengkapi', primary_meaning = true, accepted_answer = true WHERE id = 'e382a99f-39ec-4ecc-97a8-834a14d647e7';
  UPDATE items SET slug = 'melengkapi' WHERE id = '87afda9b-524d-4f6a-b68f-fbefd95462c5';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '87afda9b-524d-4f6a-b68f-fbefd95462c5' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Menambal'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('87afda9b-524d-4f6a-b68f-fbefd95462c5', 'Menambal', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '87afda9b-524d-4f6a-b68f-fbefd95462c5' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Kompensasi'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('87afda9b-524d-4f6a-b68f-fbefd95462c5', 'Kompensasi', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '87afda9b-524d-4f6a-b68f-fbefd95462c5' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Supplement'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('87afda9b-524d-4f6a-b68f-fbefd95462c5', 'Supplement', false, true);
  END IF;

  -- [KANJI] 豊 (Level 25)
  UPDATE item_meanings SET meaning = 'Melimpah', primary_meaning = true, accepted_answer = true WHERE id = '6887417a-56bc-4755-adf0-0495ae0d15e8';
  UPDATE items SET slug = 'melimpah' WHERE id = '190f9c0b-ad8a-47a0-9e11-34526eb41c09';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '190f9c0b-ad8a-47a0-9e11-34526eb41c09' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Makmur'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('190f9c0b-ad8a-47a0-9e11-34526eb41c09', 'Makmur', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '190f9c0b-ad8a-47a0-9e11-34526eb41c09' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Kaya'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('190f9c0b-ad8a-47a0-9e11-34526eb41c09', 'Kaya', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '190f9c0b-ad8a-47a0-9e11-34526eb41c09' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Plentiful'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('190f9c0b-ad8a-47a0-9e11-34526eb41c09', 'Plentiful', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '190f9c0b-ad8a-47a0-9e11-34526eb41c09' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Abundant'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('190f9c0b-ad8a-47a0-9e11-34526eb41c09', 'Abundant', false, true);
  END IF;

  -- [KANJI] 輩 (Level 25)
  UPDATE item_meanings SET meaning = 'Rekan', primary_meaning = true, accepted_answer = true WHERE id = 'cdcd9d50-33a9-4af0-898d-22ec78aff340';
  UPDATE items SET slug = 'rekan' WHERE id = 'c57b6d4f-1bde-4c02-9e5e-6d542717ef60';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'c57b6d4f-1bde-4c02-9e5e-6d542717ef60' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Angkatan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('c57b6d4f-1bde-4c02-9e5e-6d542717ef60', 'Angkatan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'c57b6d4f-1bde-4c02-9e5e-6d542717ef60' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Golongan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('c57b6d4f-1bde-4c02-9e5e-6d542717ef60', 'Golongan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'c57b6d4f-1bde-4c02-9e5e-6d542717ef60' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Comrade'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('c57b6d4f-1bde-4c02-9e5e-6d542717ef60', 'Comrade', false, true);
  END IF;

  -- [KANJI] 鮮 (Level 25)
  UPDATE item_meanings SET meaning = 'Segar', primary_meaning = true, accepted_answer = true WHERE id = '7173764b-b787-4109-aa04-2b5be20639bf';
  UPDATE items SET slug = 'segar' WHERE id = '00cef12e-331a-4a22-9199-23be74456cd8';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '00cef12e-331a-4a22-9199-23be74456cd8' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Cerah'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('00cef12e-331a-4a22-9199-23be74456cd8', 'Cerah', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '00cef12e-331a-4a22-9199-23be74456cd8' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Segar Bugar'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('00cef12e-331a-4a22-9199-23be74456cd8', 'Segar Bugar', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '00cef12e-331a-4a22-9199-23be74456cd8' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Fresh'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('00cef12e-331a-4a22-9199-23be74456cd8', 'Fresh', false, true);
  END IF;

  -- [VOCABULARY] 〜の様に (Level 25)
  UPDATE item_meanings SET meaning = 'Bagaikan', primary_meaning = true, accepted_answer = true WHERE id = '6e09d8a9-6e16-4387-8cc3-e77e97adce86';
  UPDATE items SET slug = 'bagaikan' WHERE id = 'c1c09fda-54e9-4d17-adbd-daefe442839a';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'c1c09fda-54e9-4d17-adbd-daefe442839a' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Seperti Halnya'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('c1c09fda-54e9-4d17-adbd-daefe442839a', 'Seperti Halnya', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'c1c09fda-54e9-4d17-adbd-daefe442839a' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Seolah-olah'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('c1c09fda-54e9-4d17-adbd-daefe442839a', 'Seolah-olah', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'c1c09fda-54e9-4d17-adbd-daefe442839a' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Seperti'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('c1c09fda-54e9-4d17-adbd-daefe442839a', 'Seperti', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'c1c09fda-54e9-4d17-adbd-daefe442839a' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Similarly To'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('c1c09fda-54e9-4d17-adbd-daefe442839a', 'Similarly To', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'c1c09fda-54e9-4d17-adbd-daefe442839a' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Like'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('c1c09fda-54e9-4d17-adbd-daefe442839a', 'Like', false, true);
  END IF;

  -- [VOCABULARY] 〜毎に (Level 25)
  UPDATE item_meanings SET meaning = 'Setiap', primary_meaning = true, accepted_answer = true WHERE id = '0b7af3df-9a81-41fd-a0dc-04567095f164';
  UPDATE items SET slug = 'setiap' WHERE id = '57488146-571a-49e6-ab9e-25b712add695';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '57488146-571a-49e6-ab9e-25b712add695' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Setiap Kali'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('57488146-571a-49e6-ab9e-25b712add695', 'Setiap Kali', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '57488146-571a-49e6-ab9e-25b712add695' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Tiap-tiap'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('57488146-571a-49e6-ab9e-25b712add695', 'Tiap-tiap', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '57488146-571a-49e6-ab9e-25b712add695' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Tiap'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('57488146-571a-49e6-ab9e-25b712add695', 'Tiap', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '57488146-571a-49e6-ab9e-25b712add695' AND LOWER(TRIM(meaning)) = LOWER(TRIM('For Every'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('57488146-571a-49e6-ab9e-25b712add695', 'For Every', false, true);
  END IF;

  -- [VOCABULARY] まぐれ (Level 25)
  UPDATE item_meanings SET meaning = 'Hoki', primary_meaning = true, accepted_answer = true WHERE id = 'e735cbb9-2a28-410c-90ee-fdece211c8ac';
  UPDATE items SET slug = 'hoki' WHERE id = '14980cf4-d0fd-40a5-a9f8-4853a0af7a90';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '14980cf4-d0fd-40a5-a9f8-4853a0af7a90' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Kebetulan Mujur'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('14980cf4-d0fd-40a5-a9f8-4853a0af7a90', 'Kebetulan Mujur', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '14980cf4-d0fd-40a5-a9f8-4853a0af7a90' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Mujur'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('14980cf4-d0fd-40a5-a9f8-4853a0af7a90', 'Mujur', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '14980cf4-d0fd-40a5-a9f8-4853a0af7a90' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Kebetulan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('14980cf4-d0fd-40a5-a9f8-4853a0af7a90', 'Kebetulan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '14980cf4-d0fd-40a5-a9f8-4853a0af7a90' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Fluke'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('14980cf4-d0fd-40a5-a9f8-4853a0af7a90', 'Fluke', false, true);
  END IF;

  -- [VOCABULARY] 不況 (Level 25)
  UPDATE item_meanings SET meaning = 'Resesi', primary_meaning = true, accepted_answer = true WHERE id = '73fbf0ed-0209-445f-a871-e1033fa05fd3';
  UPDATE items SET slug = 'resesi' WHERE id = '75157d08-2753-4658-8df1-0e9afc043a4b';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '75157d08-2753-4658-8df1-0e9afc043a4b' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Kemerosotan Ekonomi'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('75157d08-2753-4658-8df1-0e9afc043a4b', 'Kemerosotan Ekonomi', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '75157d08-2753-4658-8df1-0e9afc043a4b' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Kelesuan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('75157d08-2753-4658-8df1-0e9afc043a4b', 'Kelesuan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '75157d08-2753-4658-8df1-0e9afc043a4b' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Recession'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('75157d08-2753-4658-8df1-0e9afc043a4b', 'Recession', false, true);
  END IF;

  -- [VOCABULARY] 今更 (Level 25)
  UPDATE item_meanings SET meaning = 'Terlambat', primary_meaning = true, accepted_answer = true WHERE id = '7f622761-ee77-42d4-9a38-48a0727deabe';
  UPDATE items SET slug = 'terlambat' WHERE id = 'a5aeda9c-ad94-4cc9-b143-845ab98f07fd';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'a5aeda9c-ad94-4cc9-b143-845ab98f07fd' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Sudah Terlambat'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('a5aeda9c-ad94-4cc9-b143-845ab98f07fd', 'Sudah Terlambat', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'a5aeda9c-ad94-4cc9-b143-845ab98f07fd' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Sekarang Baru'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('a5aeda9c-ad94-4cc9-b143-845ab98f07fd', 'Sekarang Baru', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'a5aeda9c-ad94-4cc9-b143-845ab98f07fd' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Too Late'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('a5aeda9c-ad94-4cc9-b143-845ab98f07fd', 'Too Late', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'a5aeda9c-ad94-4cc9-b143-845ab98f07fd' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Sekarang Baru...'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('a5aeda9c-ad94-4cc9-b143-845ab98f07fd', 'Sekarang Baru...', false, true);
  END IF;

  -- [VOCABULARY] 光栄 (Level 25)
  UPDATE item_meanings SET meaning = 'Kehormatan', primary_meaning = true, accepted_answer = true WHERE id = '42296be9-db32-46b2-a706-2e9495e0c123';
  UPDATE items SET slug = 'kehormatan' WHERE id = 'eb80e7a8-6fcd-4a31-b9f7-d987d3790637';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'eb80e7a8-6fcd-4a31-b9f7-d987d3790637' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Suatu Kehormatan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('eb80e7a8-6fcd-4a31-b9f7-d987d3790637', 'Suatu Kehormatan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'eb80e7a8-6fcd-4a31-b9f7-d987d3790637' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Merasa Terhormat'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('eb80e7a8-6fcd-4a31-b9f7-d987d3790637', 'Merasa Terhormat', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'eb80e7a8-6fcd-4a31-b9f7-d987d3790637' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Honor'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('eb80e7a8-6fcd-4a31-b9f7-d987d3790637', 'Honor', false, true);
  END IF;

  -- [VOCABULARY] 割れる (Level 25)
  UPDATE item_meanings SET meaning = 'Pecah', primary_meaning = true, accepted_answer = true WHERE id = 'f8539a49-6a95-40e2-9bdc-00f6f3a0dcb4';
  UPDATE items SET slug = 'pecah' WHERE id = '9784b8dd-1166-47da-afa9-65339d55e5bf';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '9784b8dd-1166-47da-afa9-65339d55e5bf' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Terbelah'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('9784b8dd-1166-47da-afa9-65339d55e5bf', 'Terbelah', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '9784b8dd-1166-47da-afa9-65339d55e5bf' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Retak'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('9784b8dd-1166-47da-afa9-65339d55e5bf', 'Retak', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '9784b8dd-1166-47da-afa9-65339d55e5bf' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Be Divided'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('9784b8dd-1166-47da-afa9-65339d55e5bf', 'To Be Divided', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '9784b8dd-1166-47da-afa9-65339d55e5bf' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Break'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('9784b8dd-1166-47da-afa9-65339d55e5bf', 'To Break', false, true);
  END IF;

  -- [VOCABULARY] 効く (Level 25)
  UPDATE item_meanings SET meaning = 'Manjur', primary_meaning = true, accepted_answer = true WHERE id = 'c4578689-bafb-4e27-8a2f-1cca8eba245a';
  UPDATE items SET slug = 'manjur' WHERE id = '655b816f-fca4-46d0-82f3-bad65622693c';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '655b816f-fca4-46d0-82f3-bad65622693c' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Berkhasiat'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('655b816f-fca4-46d0-82f3-bad65622693c', 'Berkhasiat', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '655b816f-fca4-46d0-82f3-bad65622693c' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Efektif'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('655b816f-fca4-46d0-82f3-bad65622693c', 'Efektif', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '655b816f-fca4-46d0-82f3-bad65622693c' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Ampuh'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('655b816f-fca4-46d0-82f3-bad65622693c', 'Ampuh', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '655b816f-fca4-46d0-82f3-bad65622693c' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Be Effective'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('655b816f-fca4-46d0-82f3-bad65622693c', 'To Be Effective', false, true);
  END IF;

  -- [VOCABULARY] 反響 (Level 25)
  UPDATE item_meanings SET meaning = 'Gema', primary_meaning = true, accepted_answer = true WHERE id = 'a54673e5-34af-4cb0-aa79-c9243e3ecba1';
  UPDATE items SET slug = 'gema' WHERE id = '2ab9c31a-edc5-49a8-9b44-af7f0c2b2317';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '2ab9c31a-edc5-49a8-9b44-af7f0c2b2317' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Gaung'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('2ab9c31a-edc5-49a8-9b44-af7f0c2b2317', 'Gaung', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '2ab9c31a-edc5-49a8-9b44-af7f0c2b2317' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Reaksi Publik'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('2ab9c31a-edc5-49a8-9b44-af7f0c2b2317', 'Reaksi Publik', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '2ab9c31a-edc5-49a8-9b44-af7f0c2b2317' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Resonansi'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('2ab9c31a-edc5-49a8-9b44-af7f0c2b2317', 'Resonansi', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '2ab9c31a-edc5-49a8-9b44-af7f0c2b2317' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Echo'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('2ab9c31a-edc5-49a8-9b44-af7f0c2b2317', 'Echo', false, true);
  END IF;

  -- [VOCABULARY] 収める (Level 25)
  UPDATE item_meanings SET meaning = 'Menyimpan', primary_meaning = true, accepted_answer = true WHERE id = '9f9163b4-4efd-4587-b2c5-f2c523ca4be9';
  UPDATE items SET slug = 'menyimpan' WHERE id = '5e627237-59b1-4761-bc9a-5dda804c235c';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '5e627237-59b1-4761-bc9a-5dda804c235c' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Meraih'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('5e627237-59b1-4761-bc9a-5dda804c235c', 'Meraih', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '5e627237-59b1-4761-bc9a-5dda804c235c' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Mendapatkan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('5e627237-59b1-4761-bc9a-5dda804c235c', 'Mendapatkan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '5e627237-59b1-4761-bc9a-5dda804c235c' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Store'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('5e627237-59b1-4761-bc9a-5dda804c235c', 'To Store', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '5e627237-59b1-4761-bc9a-5dda804c235c' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Achieve'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('5e627237-59b1-4761-bc9a-5dda804c235c', 'To Achieve', false, true);
  END IF;

  -- [VOCABULARY] 居る (Level 25)
  UPDATE item_meanings SET meaning = 'Ada', primary_meaning = true, accepted_answer = true WHERE id = '931af29e-85bc-4049-8c95-33ab082b72a4';
  UPDATE items SET slug = 'ada' WHERE id = '9d2e0245-4fcd-4adb-a919-38d42554c370';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '9d2e0245-4fcd-4adb-a919-38d42554c370' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Berada'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('9d2e0245-4fcd-4adb-a919-38d42554c370', 'Berada', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '9d2e0245-4fcd-4adb-a919-38d42554c370' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Tinggal'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('9d2e0245-4fcd-4adb-a919-38d42554c370', 'Tinggal', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '9d2e0245-4fcd-4adb-a919-38d42554c370' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Exist'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('9d2e0245-4fcd-4adb-a919-38d42554c370', 'To Exist', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '9d2e0245-4fcd-4adb-a919-38d42554c370' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Be'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('9d2e0245-4fcd-4adb-a919-38d42554c370', 'To Be', false, true);
  END IF;

  -- [VOCABULARY] 巻く (Level 25)
  UPDATE item_meanings SET meaning = 'Menggulung', primary_meaning = true, accepted_answer = true WHERE id = 'ac6c28bd-99a9-4df2-b47d-977eb2633a5e';
  UPDATE items SET slug = 'menggulung' WHERE id = '5273e412-22c4-40f1-8f1d-6eed1de9181a';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '5273e412-22c4-40f1-8f1d-6eed1de9181a' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Membebat'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('5273e412-22c4-40f1-8f1d-6eed1de9181a', 'Membebat', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '5273e412-22c4-40f1-8f1d-6eed1de9181a' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Melilit'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('5273e412-22c4-40f1-8f1d-6eed1de9181a', 'Melilit', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '5273e412-22c4-40f1-8f1d-6eed1de9181a' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Roll'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('5273e412-22c4-40f1-8f1d-6eed1de9181a', 'To Roll', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '5273e412-22c4-40f1-8f1d-6eed1de9181a' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Wind'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('5273e412-22c4-40f1-8f1d-6eed1de9181a', 'To Wind', false, true);
  END IF;

  -- [VOCABULARY] 所属 (Level 25)
  UPDATE item_meanings SET meaning = 'Afiliasi', primary_meaning = true, accepted_answer = true WHERE id = 'dd1e4603-4853-4d95-804e-7fafef4ab747';
  UPDATE items SET slug = 'afiliasi' WHERE id = 'ad994ad3-2d94-43c1-95b2-f3568bc124a7';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'ad994ad3-2d94-43c1-95b2-f3568bc124a7' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Keanggotaan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('ad994ad3-2d94-43c1-95b2-f3568bc124a7', 'Keanggotaan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'ad994ad3-2d94-43c1-95b2-f3568bc124a7' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Naungan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('ad994ad3-2d94-43c1-95b2-f3568bc124a7', 'Naungan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'ad994ad3-2d94-43c1-95b2-f3568bc124a7' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Affiliation'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('ad994ad3-2d94-43c1-95b2-f3568bc124a7', 'Affiliation', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'ad994ad3-2d94-43c1-95b2-f3568bc124a7' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Belong To'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('ad994ad3-2d94-43c1-95b2-f3568bc124a7', 'Belong To', false, true);
  END IF;

  -- [VOCABULARY] 抜く (Level 25)
  UPDATE item_meanings SET meaning = 'Mencabut', primary_meaning = true, accepted_answer = true WHERE id = '12c9e33f-54c4-45ed-8766-236a2cf29b0d';
  UPDATE items SET slug = 'mencabut' WHERE id = 'b79a5622-7a55-4ed6-a67c-6b46a891e44d';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'b79a5622-7a55-4ed6-a67c-6b46a891e44d' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Melepaskan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('b79a5622-7a55-4ed6-a67c-6b46a891e44d', 'Melepaskan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'b79a5622-7a55-4ed6-a67c-6b46a891e44d' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Melewati'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('b79a5622-7a55-4ed6-a67c-6b46a891e44d', 'Melewati', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'b79a5622-7a55-4ed6-a67c-6b46a891e44d' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Pull Out'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('b79a5622-7a55-4ed6-a67c-6b46a891e44d', 'To Pull Out', false, true);
  END IF;

  -- [VOCABULARY] 掛ける (Level 25)
  UPDATE item_meanings SET meaning = 'Menggantungkan', primary_meaning = true, accepted_answer = true WHERE id = '0da61795-045c-43cf-a051-09c8d05af3a3';
  UPDATE items SET slug = 'menggantungkan' WHERE id = '56d52cd9-c17d-4c69-a5f5-d962d324f857';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '56d52cd9-c17d-4c69-a5f5-d962d324f857' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Memasang'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('56d52cd9-c17d-4c69-a5f5-d962d324f857', 'Memasang', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '56d52cd9-c17d-4c69-a5f5-d962d324f857' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Mengalikan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('56d52cd9-c17d-4c69-a5f5-d962d324f857', 'Mengalikan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '56d52cd9-c17d-4c69-a5f5-d962d324f857' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Hang'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('56d52cd9-c17d-4c69-a5f5-d962d324f857', 'To Hang', false, true);
  END IF;

  -- [VOCABULARY] 構う (Level 25)
  UPDATE item_meanings SET meaning = 'Mempedulikan', primary_meaning = true, accepted_answer = true WHERE id = '7102feb0-33b6-4274-8d4c-5c581c5c326a';
  UPDATE items SET slug = 'mempedulikan' WHERE id = '7b57e41c-d824-4033-a642-121e652243ce';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '7b57e41c-d824-4033-a642-121e652243ce' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Menghiraukan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('7b57e41c-d824-4033-a642-121e652243ce', 'Menghiraukan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '7b57e41c-d824-4033-a642-121e652243ce' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Peduli'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('7b57e41c-d824-4033-a642-121e652243ce', 'Peduli', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '7b57e41c-d824-4033-a642-121e652243ce' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Care About'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('7b57e41c-d824-4033-a642-121e652243ce', 'To Care About', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '7b57e41c-d824-4033-a642-121e652243ce' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Mind'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('7b57e41c-d824-4033-a642-121e652243ce', 'To Mind', false, true);
  END IF;

  -- [VOCABULARY] 涼しい (Level 25)
  UPDATE item_meanings SET meaning = 'Sejuk', primary_meaning = true, accepted_answer = true WHERE id = 'e807f4f3-d983-43b9-a8d7-645bbd9f0e7b';
  UPDATE items SET slug = 'sejuk' WHERE id = 'ef2d402b-d807-4d79-954a-5e40701aa4f2';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'ef2d402b-d807-4d79-954a-5e40701aa4f2' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Menyegarkan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('ef2d402b-d807-4d79-954a-5e40701aa4f2', 'Menyegarkan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'ef2d402b-d807-4d79-954a-5e40701aa4f2' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Dingin Nyaman'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('ef2d402b-d807-4d79-954a-5e40701aa4f2', 'Dingin Nyaman', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'ef2d402b-d807-4d79-954a-5e40701aa4f2' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Cool'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('ef2d402b-d807-4d79-954a-5e40701aa4f2', 'Cool', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'ef2d402b-d807-4d79-954a-5e40701aa4f2' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Refreshing'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('ef2d402b-d807-4d79-954a-5e40701aa4f2', 'Refreshing', false, true);
  END IF;

  -- [VOCABULARY] 済ます (Level 25)
  UPDATE item_meanings SET meaning = 'Menuntaskan', primary_meaning = true, accepted_answer = true WHERE id = '4986512a-5e2b-4af1-b2c2-9985488d5b2e';
  UPDATE items SET slug = 'menuntaskan' WHERE id = '44ea5c45-7802-4447-969f-f0ee64b7258c';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '44ea5c45-7802-4447-969f-f0ee64b7258c' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Menyelesaikan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('44ea5c45-7802-4447-969f-f0ee64b7258c', 'Menyelesaikan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '44ea5c45-7802-4447-969f-f0ee64b7258c' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Membereskan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('44ea5c45-7802-4447-969f-f0ee64b7258c', 'Membereskan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '44ea5c45-7802-4447-969f-f0ee64b7258c' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Finish'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('44ea5c45-7802-4447-969f-f0ee64b7258c', 'To Finish', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '44ea5c45-7802-4447-969f-f0ee64b7258c' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Settle'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('44ea5c45-7802-4447-969f-f0ee64b7258c', 'To Settle', false, true);
  END IF;

  -- [VOCABULARY] 渡る (Level 25)
  UPDATE item_meanings SET meaning = 'Menyeberang', primary_meaning = true, accepted_answer = true WHERE id = '96580885-b665-444a-8298-d0e8bdce8d6b';
  UPDATE items SET slug = 'menyeberang' WHERE id = '78707390-3d2c-413c-a56a-ff4993dd139a';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '78707390-3d2c-413c-a56a-ff4993dd139a' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Melintasi'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('78707390-3d2c-413c-a56a-ff4993dd139a', 'Melintasi', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '78707390-3d2c-413c-a56a-ff4993dd139a' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Cross'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('78707390-3d2c-413c-a56a-ff4993dd139a', 'To Cross', false, true);
  END IF;

  -- [VOCABULARY] 満員 (Level 25)
  UPDATE item_meanings SET meaning = 'Penuh', primary_meaning = true, accepted_answer = true WHERE id = '395ad85e-ce93-4a83-b25d-3062e344c353';
  UPDATE items SET slug = 'penuh' WHERE id = '191de33b-b1a2-4c26-ba58-561b139793b6';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '191de33b-b1a2-4c26-ba58-561b139793b6' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Penuh Sesak'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('191de33b-b1a2-4c26-ba58-561b139793b6', 'Penuh Sesak', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '191de33b-b1a2-4c26-ba58-561b139793b6' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Terjual Habis'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('191de33b-b1a2-4c26-ba58-561b139793b6', 'Terjual Habis', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '191de33b-b1a2-4c26-ba58-561b139793b6' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Full House'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('191de33b-b1a2-4c26-ba58-561b139793b6', 'Full House', false, true);
  END IF;

  -- [VOCABULARY] 現す (Level 25)
  UPDATE item_meanings SET meaning = 'Menampakkan', primary_meaning = true, accepted_answer = true WHERE id = 'dc452e15-4d42-47cd-9abc-a2895ac204d0';
  UPDATE items SET slug = 'menampakkan' WHERE id = 'b5526d6d-f42a-4402-80d6-2aafd005e6ef';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'b5526d6d-f42a-4402-80d6-2aafd005e6ef' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Menunjukkan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('b5526d6d-f42a-4402-80d6-2aafd005e6ef', 'Menunjukkan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'b5526d6d-f42a-4402-80d6-2aafd005e6ef' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Memperlihatkan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('b5526d6d-f42a-4402-80d6-2aafd005e6ef', 'Memperlihatkan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'b5526d6d-f42a-4402-80d6-2aafd005e6ef' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Show'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('b5526d6d-f42a-4402-80d6-2aafd005e6ef', 'To Show', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'b5526d6d-f42a-4402-80d6-2aafd005e6ef' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Reveal'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('b5526d6d-f42a-4402-80d6-2aafd005e6ef', 'To Reveal', false, true);
  END IF;

  -- [VOCABULARY] 結構 (Level 25)
  UPDATE item_meanings SET meaning = 'Cukup', primary_meaning = true, accepted_answer = true WHERE id = 'dcc95594-51d0-4306-8cf4-825d7796e8c5';
  UPDATE items SET slug = 'cukup' WHERE id = '390471b2-d157-4924-be8d-c895a7cc83a1';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '390471b2-d157-4924-be8d-c895a7cc83a1' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Lumayan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('390471b2-d157-4924-be8d-c895a7cc83a1', 'Lumayan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '390471b2-d157-4924-be8d-c895a7cc83a1' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Tidak Perlu'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('390471b2-d157-4924-be8d-c895a7cc83a1', 'Tidak Perlu', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '390471b2-d157-4924-be8d-c895a7cc83a1' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Bagus'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('390471b2-d157-4924-be8d-c895a7cc83a1', 'Bagus', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '390471b2-d157-4924-be8d-c895a7cc83a1' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Fine'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('390471b2-d157-4924-be8d-c895a7cc83a1', 'Fine', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '390471b2-d157-4924-be8d-c895a7cc83a1' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Quite'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('390471b2-d157-4924-be8d-c895a7cc83a1', 'Quite', false, true);
  END IF;

  -- [VOCABULARY] 絞める (Level 25)
  UPDATE item_meanings SET meaning = 'Mencekik', primary_meaning = true, accepted_answer = true WHERE id = '32f7a864-5a7e-4ea6-843d-90c9527c31b1';
  UPDATE items SET slug = 'mencekik' WHERE id = '51322b1c-44d1-4f54-bf6c-bffcb1016b78';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '51322b1c-44d1-4f54-bf6c-bffcb1016b78' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Mengencangkan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('51322b1c-44d1-4f54-bf6c-bffcb1016b78', 'Mengencangkan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '51322b1c-44d1-4f54-bf6c-bffcb1016b78' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Strangle'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('51322b1c-44d1-4f54-bf6c-bffcb1016b78', 'To Strangle', false, true);
  END IF;

  -- [VOCABULARY] 絞る (Level 25)
  UPDATE item_meanings SET meaning = 'Memeras', primary_meaning = true, accepted_answer = true WHERE id = 'e86b07db-9bbe-474d-8e39-a6e88991eb43';
  UPDATE items SET slug = 'memeras' WHERE id = 'f579b3aa-b9cb-4d43-808b-bfd2edf1d403';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'f579b3aa-b9cb-4d43-808b-bfd2edf1d403' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Mempersempit'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('f579b3aa-b9cb-4d43-808b-bfd2edf1d403', 'Mempersempit', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'f579b3aa-b9cb-4d43-808b-bfd2edf1d403' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Memeras Otak'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('f579b3aa-b9cb-4d43-808b-bfd2edf1d403', 'Memeras Otak', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'f579b3aa-b9cb-4d43-808b-bfd2edf1d403' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Wring Out'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('f579b3aa-b9cb-4d43-808b-bfd2edf1d403', 'To Wring Out', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'f579b3aa-b9cb-4d43-808b-bfd2edf1d403' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Squeeze'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('f579b3aa-b9cb-4d43-808b-bfd2edf1d403', 'To Squeeze', false, true);
  END IF;

  -- [VOCABULARY] 肥満 (Level 25)
  UPDATE item_meanings SET meaning = 'Obesitas', primary_meaning = true, accepted_answer = true WHERE id = 'a67b9229-18e1-4fbe-b87b-299919971a36';
  UPDATE items SET slug = 'obesitas' WHERE id = '25a8b640-a52a-421e-b1cf-10ea6c5ea39a';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '25a8b640-a52a-421e-b1cf-10ea6c5ea39a' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Kegemukan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('25a8b640-a52a-421e-b1cf-10ea6c5ea39a', 'Kegemukan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '25a8b640-a52a-421e-b1cf-10ea6c5ea39a' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Gemuk Sekali'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('25a8b640-a52a-421e-b1cf-10ea6c5ea39a', 'Gemuk Sekali', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '25a8b640-a52a-421e-b1cf-10ea6c5ea39a' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Obesity'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('25a8b640-a52a-421e-b1cf-10ea6c5ea39a', 'Obesity', false, true);
  END IF;

  -- [VOCABULARY] 草原 (Level 25)
  UPDATE item_meanings SET meaning = 'Padang Rumput', primary_meaning = true, accepted_answer = true WHERE id = '5f8f4ad8-7b94-4cfc-a243-d8d0dd58c462';
  UPDATE items SET slug = 'padang-rumput' WHERE id = '1c7f7e70-f893-49f1-98d4-b807c6af3f33';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '1c7f7e70-f893-49f1-98d4-b807c6af3f33' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Sabana'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('1c7f7e70-f893-49f1-98d4-b807c6af3f33', 'Sabana', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '1c7f7e70-f893-49f1-98d4-b807c6af3f33' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Stepa'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('1c7f7e70-f893-49f1-98d4-b807c6af3f33', 'Stepa', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '1c7f7e70-f893-49f1-98d4-b807c6af3f33' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Grass Field'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('1c7f7e70-f893-49f1-98d4-b807c6af3f33', 'Grass Field', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '1c7f7e70-f893-49f1-98d4-b807c6af3f33' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Meadow'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('1c7f7e70-f893-49f1-98d4-b807c6af3f33', 'Meadow', false, true);
  END IF;

  -- [VOCABULARY] 草食 (Level 25)
  UPDATE item_meanings SET meaning = 'Herbivora', primary_meaning = true, accepted_answer = true WHERE id = '5c48c561-7c01-4e57-9807-efb9445a3ddc';
  UPDATE items SET slug = 'herbivora' WHERE id = 'aac9b832-25c5-43e0-9928-5e63acf410f2';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'aac9b832-25c5-43e0-9928-5e63acf410f2' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Pemakan Tumbuhan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('aac9b832-25c5-43e0-9928-5e63acf410f2', 'Pemakan Tumbuhan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'aac9b832-25c5-43e0-9928-5e63acf410f2' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Herbivorous'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('aac9b832-25c5-43e0-9928-5e63acf410f2', 'Herbivorous', false, true);
  END IF;

  -- [VOCABULARY] 行方 (Level 25)
  UPDATE item_meanings SET meaning = 'Keberadaan', primary_meaning = true, accepted_answer = true WHERE id = '1573ba57-85b4-4954-8fa1-8b381377380c';
  UPDATE items SET slug = 'keberadaan' WHERE id = '98c37c78-1e8e-450b-b0d8-5b9b2b0f8af3';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '98c37c78-1e8e-450b-b0d8-5b9b2b0f8af3' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Jejak'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('98c37c78-1e8e-450b-b0d8-5b9b2b0f8af3', 'Jejak', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '98c37c78-1e8e-450b-b0d8-5b9b2b0f8af3' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Arah Tujuan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('98c37c78-1e8e-450b-b0d8-5b9b2b0f8af3', 'Arah Tujuan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '98c37c78-1e8e-450b-b0d8-5b9b2b0f8af3' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Whereabouts'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('98c37c78-1e8e-450b-b0d8-5b9b2b0f8af3', 'Whereabouts', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '98c37c78-1e8e-450b-b0d8-5b9b2b0f8af3' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Jejak Keberadaan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('98c37c78-1e8e-450b-b0d8-5b9b2b0f8af3', 'Jejak Keberadaan', false, true);
  END IF;

  -- [VOCABULARY] 補う (Level 25)
  UPDATE item_meanings SET meaning = 'Melengkapi', primary_meaning = true, accepted_answer = true WHERE id = 'fb24319f-df98-4b21-bb9a-cab6c2f4af1b';
  UPDATE items SET slug = 'melengkapi' WHERE id = 'c1a45fe9-34e2-48d1-be8a-92e1a026195e';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'c1a45fe9-34e2-48d1-be8a-92e1a026195e' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Menutupi'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('c1a45fe9-34e2-48d1-be8a-92e1a026195e', 'Menutupi', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'c1a45fe9-34e2-48d1-be8a-92e1a026195e' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Menambal'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('c1a45fe9-34e2-48d1-be8a-92e1a026195e', 'Menambal', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'c1a45fe9-34e2-48d1-be8a-92e1a026195e' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Supplement'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('c1a45fe9-34e2-48d1-be8a-92e1a026195e', 'To Supplement', false, true);
  END IF;

  -- [VOCABULARY] 見渡す (Level 25)
  UPDATE item_meanings SET meaning = 'Memandang Jauh', primary_meaning = true, accepted_answer = true WHERE id = '429ecef1-40af-4f60-b12c-3d7ab773c946';
  UPDATE items SET slug = 'memandang-jauh' WHERE id = '98464020-13c9-4b37-bbb2-3280bf89e8f3';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '98464020-13c9-4b37-bbb2-3280bf89e8f3' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Menatap Lepas'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('98464020-13c9-4b37-bbb2-3280bf89e8f3', 'Menatap Lepas', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '98464020-13c9-4b37-bbb2-3280bf89e8f3' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Meninjau'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('98464020-13c9-4b37-bbb2-3280bf89e8f3', 'Meninjau', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '98464020-13c9-4b37-bbb2-3280bf89e8f3' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Look Out Over'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('98464020-13c9-4b37-bbb2-3280bf89e8f3', 'To Look Out Over', false, true);
  END IF;

  -- [VOCABULARY] 豊か (Level 25)
  UPDATE item_meanings SET meaning = 'Melimpah', primary_meaning = true, accepted_answer = true WHERE id = 'bb4af649-f1d8-4610-b725-27ff1d064226';
  UPDATE items SET slug = 'melimpah' WHERE id = '54a3b4fb-8221-484f-a6ed-b0b42839f677';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '54a3b4fb-8221-484f-a6ed-b0b42839f677' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Makmur'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('54a3b4fb-8221-484f-a6ed-b0b42839f677', 'Makmur', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '54a3b4fb-8221-484f-a6ed-b0b42839f677' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Kaya Raya'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('54a3b4fb-8221-484f-a6ed-b0b42839f677', 'Kaya Raya', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '54a3b4fb-8221-484f-a6ed-b0b42839f677' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Rich'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('54a3b4fb-8221-484f-a6ed-b0b42839f677', 'Rich', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '54a3b4fb-8221-484f-a6ed-b0b42839f677' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Plentiful'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('54a3b4fb-8221-484f-a6ed-b0b42839f677', 'Plentiful', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '54a3b4fb-8221-484f-a6ed-b0b42839f677' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Melimpah Ruah'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('54a3b4fb-8221-484f-a6ed-b0b42839f677', 'Melimpah Ruah', false, true);
  END IF;

  -- [VOCABULARY] 降ろす (Level 25)
  UPDATE item_meanings SET meaning = 'Menurunkan', primary_meaning = true, accepted_answer = true WHERE id = 'a1dcebb4-e191-4edf-8742-e08d3e59b16a';
  UPDATE items SET slug = 'menurunkan' WHERE id = '9eed1b23-61e8-4c60-9e0b-0d9cdb063356';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '9eed1b23-61e8-4c60-9e0b-0d9cdb063356' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Mendaratkan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('9eed1b23-61e8-4c60-9e0b-0d9cdb063356', 'Mendaratkan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '9eed1b23-61e8-4c60-9e0b-0d9cdb063356' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Menurunkan Penumpang'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('9eed1b23-61e8-4c60-9e0b-0d9cdb063356', 'Menurunkan Penumpang', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '9eed1b23-61e8-4c60-9e0b-0d9cdb063356' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Take Down'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('9eed1b23-61e8-4c60-9e0b-0d9cdb063356', 'To Take Down', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '9eed1b23-61e8-4c60-9e0b-0d9cdb063356' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Lower'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('9eed1b23-61e8-4c60-9e0b-0d9cdb063356', 'To Lower', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '9eed1b23-61e8-4c60-9e0b-0d9cdb063356' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Menurunkan (Benda'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('9eed1b23-61e8-4c60-9e0b-0d9cdb063356', 'Menurunkan (Benda', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '9eed1b23-61e8-4c60-9e0b-0d9cdb063356' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Penumpang)'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('9eed1b23-61e8-4c60-9e0b-0d9cdb063356', 'Penumpang)', false, true);
  END IF;

  -- [VOCABULARY] 響く (Level 25)
  UPDATE item_meanings SET meaning = 'Bergema', primary_meaning = true, accepted_answer = true WHERE id = 'e15120fb-1832-44ad-aee8-796a60ed892d';
  UPDATE items SET slug = 'bergema' WHERE id = '97650117-d98d-45d0-8587-64fa31fefe91';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '97650117-d98d-45d0-8587-64fa31fefe91' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Terngiang'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('97650117-d98d-45d0-8587-64fa31fefe91', 'Terngiang', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '97650117-d98d-45d0-8587-64fa31fefe91' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Berdampak'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('97650117-d98d-45d0-8587-64fa31fefe91', 'Berdampak', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '97650117-d98d-45d0-8587-64fa31fefe91' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Echo'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('97650117-d98d-45d0-8587-64fa31fefe91', 'To Echo', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '97650117-d98d-45d0-8587-64fa31fefe91' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Reverberate'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('97650117-d98d-45d0-8587-64fa31fefe91', 'To Reverberate', false, true);
  END IF;

  -- [VOCABULARY] 頑張る (Level 25)
  UPDATE item_meanings SET meaning = 'Berjuang', primary_meaning = true, accepted_answer = true WHERE id = '5f53e1ee-ff3d-424b-989e-60c479c094fe';
  UPDATE items SET slug = 'berjuang' WHERE id = '88a0178e-2f4a-4287-8562-89c3bf09df49';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '88a0178e-2f4a-4287-8562-89c3bf09df49' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Berjuang Keras'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('88a0178e-2f4a-4287-8562-89c3bf09df49', 'Berjuang Keras', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '88a0178e-2f4a-4287-8562-89c3bf09df49' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Berusaha'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('88a0178e-2f4a-4287-8562-89c3bf09df49', 'Berusaha', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '88a0178e-2f4a-4287-8562-89c3bf09df49' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Semangat'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('88a0178e-2f4a-4287-8562-89c3bf09df49', 'Semangat', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '88a0178e-2f4a-4287-8562-89c3bf09df49' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Persevere'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('88a0178e-2f4a-4287-8562-89c3bf09df49', 'To Persevere', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '88a0178e-2f4a-4287-8562-89c3bf09df49' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Do One''s Best'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('88a0178e-2f4a-4287-8562-89c3bf09df49', 'Do One''s Best', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '88a0178e-2f4a-4287-8562-89c3bf09df49' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Berusaha Sekuat Tenaga'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('88a0178e-2f4a-4287-8562-89c3bf09df49', 'Berusaha Sekuat Tenaga', false, true);
  END IF;

  -- [VOCABULARY] 鮮やか (Level 25)
  UPDATE item_meanings SET meaning = 'Cemerlang', primary_meaning = true, accepted_answer = true WHERE id = '7806c4c0-6750-4177-a2b1-ba681dd44f77';
  UPDATE items SET slug = 'cemerlang' WHERE id = 'ba16ff81-7cf5-4a13-b72c-b720ffd2bcf8';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'ba16ff81-7cf5-4a13-b72c-b720ffd2bcf8' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Cerah Memikat'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('ba16ff81-7cf5-4a13-b72c-b720ffd2bcf8', 'Cerah Memikat', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'ba16ff81-7cf5-4a13-b72c-b720ffd2bcf8' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Vivid'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('ba16ff81-7cf5-4a13-b72c-b720ffd2bcf8', 'Vivid', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'ba16ff81-7cf5-4a13-b72c-b720ffd2bcf8' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Brilliant'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('ba16ff81-7cf5-4a13-b72c-b720ffd2bcf8', 'Brilliant', false, true);
  END IF;

END $$;
